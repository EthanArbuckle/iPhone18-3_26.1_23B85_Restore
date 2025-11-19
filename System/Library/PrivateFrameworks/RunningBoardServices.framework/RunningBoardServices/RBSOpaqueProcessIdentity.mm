@interface RBSOpaqueProcessIdentity
- (RBSOpaqueProcessIdentity)initWithDecodeFromJob:(id)a3 uuid:(id)a4;
- (RBSOpaqueProcessIdentity)initWithRBSXPCCoder:(id)a3;
- (id)_initOpaqueWithPid:(int)a3 auid:(unsigned int)a4 description:(id)a5;
- (id)encodeForJob;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSOpaqueProcessIdentity

- (id)_initOpaqueWithPid:(int)a3 auid:(unsigned int)a4 description:(id)a5
{
  v7 = a5;
  v14.receiver = self;
  v14.super_class = RBSOpaqueProcessIdentity;
  v8 = [(RBSProcessIdentity *)&v14 _init];
  v9 = v8;
  if (v8)
  {
    v8[2] = a3;
    v10 = [v7 copy];
    v11 = *(v9 + 2);
    *(v9 + 2) = v10;

    *(v9 + 3) = v9[2];
    v12 = v9;
  }

  return v9;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  pid = self->super._pid;
  v5 = a3;
  [v5 encodeInt64:pid forKey:@"_pid"];
  [v5 encodeObject:self->super._description forKey:@"_description"];
}

- (RBSOpaqueProcessIdentity)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"_pid"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_description"];

  v7 = [(RBSOpaqueProcessIdentity *)self _initOpaqueWithPid:v5 auid:0 description:v6];
  return v7;
}

- (id)encodeForJob
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_int64(empty, "TYPE", 7);
  xpc_dictionary_set_int64(empty, "p", self->super._pid);
  v4 = [(NSString *)self->super._description UTF8String];
  if (v4)
  {
    xpc_dictionary_set_string(empty, "d", v4);
  }

  return empty;
}

- (RBSOpaqueProcessIdentity)initWithDecodeFromJob:(id)a3 uuid:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = rbs_general_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [RBSOpaqueProcessIdentity initWithDecodeFromJob:v7 uuid:v8];
    }
  }

  int64 = xpc_dictionary_get_int64(v6, "p");
  string = xpc_dictionary_get_string(v6, "d");
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