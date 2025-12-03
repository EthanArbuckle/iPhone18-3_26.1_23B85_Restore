@interface RBSDextProcessIdentity
- (BOOL)_matchesIdentity:(id)identity;
- (RBSDextProcessIdentity)initWithDecodeFromJob:(id)job uuid:(id)uuid;
- (RBSDextProcessIdentity)initWithRBSXPCCoder:(id)coder;
- (id)_initDextWithServerName:(id)name label:(id)label containingAppBundleID:(id)d;
- (id)_initDextWithServerName:(id)name tagString:(id)string containingAppBundleID:(id)d;
- (id)encodeForJob;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSDextProcessIdentity

- (id)_initDextWithServerName:(id)name label:(id)label containingAppBundleID:(id)d
{
  nameCopy = name;
  labelCopy = label;
  dCopy = d;
  v23.receiver = self;
  v23.super_class = RBSDextProcessIdentity;
  _init = [(RBSProcessIdentity *)&v23 _init];
  if (_init)
  {
    v12 = [nameCopy copy];
    v13 = *(_init + 7);
    *(_init + 7) = v12;

    v14 = [labelCopy copy];
    v15 = *(_init + 8);
    *(_init + 8) = v14;

    v16 = [dCopy copy];
    v17 = *(_init + 9);
    *(_init + 9) = v16;

    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"dext<%@>", *(_init + 8)];
    v19 = *(_init + 2);
    *(_init + 2) = v18;

    v20 = [*(_init + 2) hash];
    *(_init + 3) = [*(_init + 9) hash] ^ v20;
    v21 = _init;
  }

  return _init;
}

- (id)_initDextWithServerName:(id)name tagString:(id)string containingAppBundleID:(id)d
{
  v8 = MEMORY[0x1E696AEC0];
  dCopy = d;
  nameCopy = name;
  string = [v8 stringWithFormat:@"%@-%@", nameCopy, string];
  v12 = [(RBSDextProcessIdentity *)self _initDextWithServerName:nameCopy label:string containingAppBundleID:dCopy];

  return v12;
}

- (BOOL)_matchesIdentity:(id)identity
{
  identityCopy = identity;
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_2;
  }

  label = self->_label;
  v9 = identityCopy[8];
  if (label != v9)
  {
    v10 = !label || v9 == 0;
    if (v10 || ![(NSString *)label isEqual:?])
    {
      goto LABEL_2;
    }
  }

  bundleID = self->_bundleID;
  v12 = identityCopy[9];
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

- (void)encodeWithRBSXPCCoder:(id)coder
{
  serverName = self->_serverName;
  coderCopy = coder;
  [coderCopy encodeObject:serverName forKey:@"_serverName"];
  [coderCopy encodeObject:self->_label forKey:@"_label"];
  [coderCopy encodeObject:self->_bundleID forKey:@"_bundleID"];
}

- (RBSDextProcessIdentity)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_serverName"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_label"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_bundleID"];

  v8 = [(RBSDextProcessIdentity *)self _initDextWithServerName:v5 label:v6 containingAppBundleID:v7];
  return v8;
}

- (id)encodeForJob
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_int64(empty, "TYPE", 5);
  uTF8String = [(NSString *)self->_serverName UTF8String];
  if (uTF8String)
  {
    xpc_dictionary_set_string(empty, "DSER", uTF8String);
  }

  uTF8String2 = [(NSString *)self->_label UTF8String];
  if (uTF8String2)
  {
    xpc_dictionary_set_string(empty, "DLAB", uTF8String2);
  }

  uTF8String3 = [(NSString *)self->_bundleID UTF8String];
  if (uTF8String3)
  {
    xpc_dictionary_set_string(empty, "EAI", uTF8String3);
  }

  return empty;
}

- (RBSDextProcessIdentity)initWithDecodeFromJob:(id)job uuid:(id)uuid
{
  jobCopy = job;
  uuidCopy = uuid;
  if (uuidCopy)
  {
    v8 = rbs_general_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [RBSDextProcessIdentity initWithDecodeFromJob:uuidCopy uuid:v8];
    }
  }

  string = xpc_dictionary_get_string(jobCopy, "DSER");
  if (string)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
  }

  else
  {
    v10 = 0;
  }

  v11 = xpc_dictionary_get_string(jobCopy, "DLAB");
  if (v11)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
  }

  else
  {
    v12 = 0;
  }

  v13 = xpc_dictionary_get_string(jobCopy, "EAI");
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