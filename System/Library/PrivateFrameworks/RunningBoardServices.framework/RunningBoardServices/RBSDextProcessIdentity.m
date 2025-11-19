@interface RBSDextProcessIdentity
- (BOOL)_matchesIdentity:(id)a3;
- (RBSDextProcessIdentity)initWithDecodeFromJob:(id)a3 uuid:(id)a4;
- (RBSDextProcessIdentity)initWithRBSXPCCoder:(id)a3;
- (id)_initDextWithServerName:(id)a3 label:(id)a4 containingAppBundleID:(id)a5;
- (id)_initDextWithServerName:(id)a3 tagString:(id)a4 containingAppBundleID:(id)a5;
- (id)encodeForJob;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSDextProcessIdentity

- (id)_initDextWithServerName:(id)a3 label:(id)a4 containingAppBundleID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = RBSDextProcessIdentity;
  v11 = [(RBSProcessIdentity *)&v23 _init];
  if (v11)
  {
    v12 = [v8 copy];
    v13 = *(v11 + 7);
    *(v11 + 7) = v12;

    v14 = [v9 copy];
    v15 = *(v11 + 8);
    *(v11 + 8) = v14;

    v16 = [v10 copy];
    v17 = *(v11 + 9);
    *(v11 + 9) = v16;

    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"dext<%@>", *(v11 + 8)];
    v19 = *(v11 + 2);
    *(v11 + 2) = v18;

    v20 = [*(v11 + 2) hash];
    *(v11 + 3) = [*(v11 + 9) hash] ^ v20;
    v21 = v11;
  }

  return v11;
}

- (id)_initDextWithServerName:(id)a3 tagString:(id)a4 containingAppBundleID:(id)a5
{
  v8 = MEMORY[0x1E696AEC0];
  v9 = a5;
  v10 = a3;
  v11 = [v8 stringWithFormat:@"%@-%@", v10, a4];
  v12 = [(RBSDextProcessIdentity *)self _initDextWithServerName:v10 label:v11 containingAppBundleID:v9];

  return v12;
}

- (BOOL)_matchesIdentity:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_2;
  }

  label = self->_label;
  v9 = v4[8];
  if (label != v9)
  {
    v10 = !label || v9 == 0;
    if (v10 || ![(NSString *)label isEqual:?])
    {
      goto LABEL_2;
    }
  }

  bundleID = self->_bundleID;
  v12 = v4[9];
  if (bundleID == v12)
  {
    v6 = 1;
    goto LABEL_3;
  }

  if (bundleID && v12 != 0)
  {
    v6 = [(NSString *)bundleID isEqual:?];
  }

  else
  {
LABEL_2:
    v6 = 0;
  }

LABEL_3:

  return v6;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  serverName = self->_serverName;
  v5 = a3;
  [v5 encodeObject:serverName forKey:@"_serverName"];
  [v5 encodeObject:self->_label forKey:@"_label"];
  [v5 encodeObject:self->_bundleID forKey:@"_bundleID"];
}

- (RBSDextProcessIdentity)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_serverName"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_label"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_bundleID"];

  v8 = [(RBSDextProcessIdentity *)self _initDextWithServerName:v5 label:v6 containingAppBundleID:v7];
  return v8;
}

- (id)encodeForJob
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_int64(empty, "TYPE", 5);
  v4 = [(NSString *)self->_serverName UTF8String];
  if (v4)
  {
    xpc_dictionary_set_string(empty, "DSER", v4);
  }

  v5 = [(NSString *)self->_label UTF8String];
  if (v5)
  {
    xpc_dictionary_set_string(empty, "DLAB", v5);
  }

  v6 = [(NSString *)self->_bundleID UTF8String];
  if (v6)
  {
    xpc_dictionary_set_string(empty, "EAI", v6);
  }

  return empty;
}

- (RBSDextProcessIdentity)initWithDecodeFromJob:(id)a3 uuid:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = rbs_general_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [RBSDextProcessIdentity initWithDecodeFromJob:v7 uuid:v8];
    }
  }

  string = xpc_dictionary_get_string(v6, "DSER");
  if (string)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
  }

  else
  {
    v10 = 0;
  }

  v11 = xpc_dictionary_get_string(v6, "DLAB");
  if (v11)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
  }

  else
  {
    v12 = 0;
  }

  v13 = xpc_dictionary_get_string(v6, "EAI");
  if (v13)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v13];
  }

  else
  {
    v14 = 0;
  }

  v15 = [(RBSDextProcessIdentity *)self _initDextWithServerName:v10 label:v12 containingAppBundleID:v14];

  return v15;
}

- (void)initWithDecodeFromJob:(uint64_t)a1 uuid:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_18E8AD000, a2, OS_LOG_TYPE_FAULT, "There is no reason an dext identity should have a UUID: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end