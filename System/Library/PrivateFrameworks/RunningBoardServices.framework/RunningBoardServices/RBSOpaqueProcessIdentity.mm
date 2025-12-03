@interface RBSOpaqueProcessIdentity
- (RBSOpaqueProcessIdentity)initWithDecodeFromJob:(id)job uuid:(id)uuid;
- (RBSOpaqueProcessIdentity)initWithRBSXPCCoder:(id)coder;
- (id)_initOpaqueWithPid:(int)pid auid:(unsigned int)auid description:(id)description;
- (id)encodeForJob;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSOpaqueProcessIdentity

- (id)_initOpaqueWithPid:(int)pid auid:(unsigned int)auid description:(id)description
{
  descriptionCopy = description;
  v14.receiver = self;
  v14.super_class = RBSOpaqueProcessIdentity;
  _init = [(RBSProcessIdentity *)&v14 _init];
  v9 = _init;
  if (_init)
  {
    _init[2] = pid;
    v10 = [descriptionCopy copy];
    v11 = *(v9 + 2);
    *(v9 + 2) = v10;

    *(v9 + 3) = v9[2];
    v12 = v9;
  }

  return v9;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  pid = self->super._pid;
  coderCopy = coder;
  [coderCopy encodeInt64:pid forKey:@"_pid"];
  [coderCopy encodeObject:self->super._description forKey:@"_description"];
}

- (RBSOpaqueProcessIdentity)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt64ForKey:@"_pid"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_description"];

  v7 = [(RBSOpaqueProcessIdentity *)self _initOpaqueWithPid:v5 auid:0 description:v6];
  return v7;
}

- (id)encodeForJob
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_int64(empty, "TYPE", 7);
  xpc_dictionary_set_int64(empty, "p", self->super._pid);
  uTF8String = [(NSString *)self->super._description UTF8String];
  if (uTF8String)
  {
    xpc_dictionary_set_string(empty, "d", uTF8String);
  }

  return empty;
}

- (RBSOpaqueProcessIdentity)initWithDecodeFromJob:(id)job uuid:(id)uuid
{
  jobCopy = job;
  uuidCopy = uuid;
  if (uuidCopy)
  {
    v8 = rbs_general_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [RBSOpaqueProcessIdentity initWithDecodeFromJob:uuidCopy uuid:v8];
    }
  }

  int64 = xpc_dictionary_get_int64(jobCopy, "p");
  string = xpc_dictionary_get_string(jobCopy, "d");
  if (string)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(RBSOpaqueProcessIdentity *)self _initOpaqueWithPid:int64 auid:0 description:v11];

  return v12;
}

- (void)initWithDecodeFromJob:(uint64_t)a1 uuid:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_18E8AD000, a2, OS_LOG_TYPE_FAULT, "There is no reason an opaque identity should have a UUID %@:", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end