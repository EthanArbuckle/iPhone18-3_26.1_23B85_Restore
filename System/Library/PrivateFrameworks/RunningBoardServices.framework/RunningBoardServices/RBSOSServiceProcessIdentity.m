@interface RBSOSServiceProcessIdentity
- (BOOL)_matchesIdentity:(id)a3;
- (BOOL)treatedAsAnAppByFrontBoard:(id *)a3;
- (RBSOSServiceProcessIdentity)initWithDecodeFromJob:(id)a3 uuid:(id)a4;
- (RBSOSServiceProcessIdentity)initWithRBSXPCCoder:(id)a3;
- (id)angelJobLabel;
- (id)consistentLaunchdJobLabel;
- (id)daemonJobLabel;
- (id)debugDescription;
- (id)encodeForJob;
- (void)encodeForJob;
- (void)encodeWithRBSXPCCoder:(id)a3;
- (void)setOsServiceType:(unsigned __int8)a3;
@end

@implementation RBSOSServiceProcessIdentity

- (id)consistentLaunchdJobLabel
{
  v2 = [(NSString *)self->_jobLabel copy];

  return v2;
}

- (id)encodeForJob
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_type <= 1u)
  {
    [(RBSOSServiceProcessIdentity *)&v8 encodeForJob];
  }

  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_int64(empty, "TYPE", 6);
  jobLabel = self->_jobLabel;
  if (jobLabel)
  {
    v5 = [(NSString *)jobLabel UTF8String];
    if (v5)
    {
      xpc_dictionary_set_string(empty, "l", v5);
    }
  }

  xpc_dictionary_set_int64(empty, "p", self->super._pid);
  xpc_dictionary_set_int64(empty, "t", self->_type);
  v6 = *MEMORY[0x1E69E9840];

  return empty;
}

- (BOOL)_matchesIdentity:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v5 == objc_opt_class() && ((jobLabel = self->_jobLabel, v9 = v4[7], jobLabel == v9) || (jobLabel ? (v10 = v9 == 0) : (v10 = 1), !v10 && [(NSString *)jobLabel isEqual:?])) && self->super._pid == *(v4 + 2);

  return v6;
}

- (id)debugDescription
{
  v3 = self->_jobLabel;
  v4 = [(RBSProcessIdentity *)self auid];
  v5 = v4;
  v6 = MEMORY[0x1E696AEC0];
  pid = self->super._pid;
  if (pid <= 0)
  {
    v8 = &stru_1F01CD8F0;
  }

  else
  {
    v8 = @" pid=";
  }

  if (pid < 1)
  {
    v9 = &stru_1F01CD8F0;
    if (v4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:pid];
    if (v5)
    {
LABEL_6:
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
      v11 = [v6 stringWithFormat:@"<type=%@ identifier=%@%@%@%@%@>", @"daemon", v3, v8, v9, @" AUID=", v10];

      goto LABEL_9;
    }
  }

  v11 = [v6 stringWithFormat:@"<type=%@ identifier=%@%@%@%@%@>", @"daemon", v3, v8, v9, &stru_1F01CD8F0, &stru_1F01CD8F0];
LABEL_9:
  if (pid >= 1)
  {
  }

  return v11;
}

- (RBSOSServiceProcessIdentity)initWithDecodeFromJob:(id)a3 uuid:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = rbs_general_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [RBSOSServiceProcessIdentity initWithDecodeFromJob:v7 uuid:v8];
    }
  }

  int64 = xpc_dictionary_get_int64(v6, "p");
  string = xpc_dictionary_get_string(v6, "l");
  if (string)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(RBSOSServiceProcessIdentity *)self _initServiceWithJobLabel:v11 pid:int64 auid:0 type:xpc_dictionary_get_int64(v6, "t")];

  return v12;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  jobLabel = self->_jobLabel;
  v5 = a3;
  [v5 encodeObject:jobLabel forKey:@"_jobLabel"];
  [v5 encodeInt64:self->super._pid forKey:@"_pid"];
  [v5 encodeInt64:self->_type forKey:@"_type"];
}

- (RBSOSServiceProcessIdentity)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"_pid"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_jobLabel"];
  v7 = [v4 decodeInt64ForKey:@"_type"];

  v8 = [(RBSOSServiceProcessIdentity *)self _initServiceWithJobLabel:v6 pid:v5 auid:0 type:v7];
  return v8;
}

- (id)daemonJobLabel
{
  v2 = [(NSString *)self->_jobLabel copy];

  return v2;
}

- (id)angelJobLabel
{
  v2 = [(NSString *)self->_jobLabel copy];

  return v2;
}

- (void)setOsServiceType:(unsigned __int8)a3
{
  if (self->_type == 1)
  {
    self->_type = a3;
  }
}

- (BOOL)treatedAsAnAppByFrontBoard:(id *)a3
{
  type = self->_type;
  if (type == 2)
  {
    return 0;
  }

  if (type == 3)
  {
    return 1;
  }

  v7 = +[RBSConnection sharedInstance];
  LOBYTE(a3) = [v7 isIdentityAnAngel:self withError:a3];

  return a3;
}

- (void)encodeForJob
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v6 = *a3;
  _os_log_send_and_compose_impl();
  v5 = *a1;
  _os_crash_msg();
  __break(1u);
}

- (void)initWithDecodeFromJob:(uint64_t)a1 uuid:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_18E8AD000, a2, OS_LOG_TYPE_FAULT, "There is no reason a daemon should have a UUID: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end