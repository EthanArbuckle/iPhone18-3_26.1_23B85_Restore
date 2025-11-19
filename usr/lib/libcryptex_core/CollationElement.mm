@interface CollationElement
+ (id)scopeToString:(int64_t)a3;
- (CollationElement)initWithBundle:(id)a3 version:(id)a4 atPath:(id)a5 withScope:(int64_t)a6 withCommand:(id)a7 withCommandArgs:(id)a8 withEnv:(id)a9;
- (CollationElement)initWithXPC:(id)a3;
- (id)description;
- (id)package;
@end

@implementation CollationElement

+ (id)scopeToString:(int64_t)a3
{
  v3 = @"SCOPE_UNK";
  if (a3 == 2)
  {
    v3 = @"SCOPE_USER";
  }

  if (a3 == 1)
  {
    return @"SCOPE_SYSTEM";
  }

  else
  {
    return v3;
  }
}

- (id)description
{
  v3 = MEMORY[0x29EDBA0F8];
  cle_bundle_id = self->_cle_bundle_id;
  v5 = [CollationElement scopeToString:[(CollationElement *)self cle_scope]];
  v6 = [v3 stringWithFormat:@"[bundle: %@, scope: %@, mount: %@, cmd: %@, env: %@]", cle_bundle_id, v5, self->_cle_mnt_path, self->_cle_command, self->_cle_env];

  return v6;
}

- (CollationElement)initWithBundle:(id)a3 version:(id)a4 atPath:(id)a5 withScope:(int64_t)a6 withCommand:(id)a7 withCommandArgs:(id)a8 withEnv:(id)a9
{
  v24 = a3;
  v23 = a4;
  v22 = a5;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v25.receiver = self;
  v25.super_class = CollationElement;
  v18 = [(CollationElement *)&v25 init];
  v19 = v18;
  if (v18)
  {
    v18->_cle_scope = a6;
    objc_storeStrong(&v18->_cle_mnt_path, a5);
    objc_storeStrong(&v19->_cle_bundle_id, a3);
    objc_storeStrong(&v19->_cle_bundle_version, a4);
    objc_storeStrong(&v19->_cle_command, a7);
    objc_storeStrong(&v19->_cle_env, a9);
    objc_storeStrong(&v19->_cle_command_args, a8);
  }

  return v19;
}

- (CollationElement)initWithXPC:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = CollationElement;
  v5 = [(CollationElement *)&v22 init];
  if (v5)
  {
    string = xpc_dictionary_get_string(v4, "cmd");
    v5->_cle_scope = xpc_dictionary_get_int64(v4, "scope");
    v7 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:{xpc_dictionary_get_string(v4, "mntpath")}];
    cle_mnt_path = v5->_cle_mnt_path;
    v5->_cle_mnt_path = v7;

    v9 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:{xpc_dictionary_get_string(v4, "cryptex_bundleid")}];
    cle_bundle_id = v5->_cle_bundle_id;
    v5->_cle_bundle_id = v9;

    v11 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:{xpc_dictionary_get_string(v4, "version")}];
    cle_bundle_version = v5->_cle_bundle_version;
    v5->_cle_bundle_version = v11;

    if (string)
    {
      v13 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:string];
      cle_command = v5->_cle_command;
      v5->_cle_command = v13;
    }

    v15 = xpc_dictionary_get_dictionary(v4, "env");
    if (v15)
    {
      v16 = _CFXPCCreateCFObjectFromXPCObject();
      cle_env = v5->_cle_env;
      v5->_cle_env = v16;
    }

    v18 = xpc_dictionary_get_array(v4, "cmd_arg");

    if (v18)
    {
      v19 = _CFXPCCreateCFObjectFromXPCObject();
      cle_command_args = v5->_cle_command_args;
      v5->_cle_command_args = v19;
    }
  }

  return v5;
}

- (id)package
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_int64(empty, "scope", [(CollationElement *)self cle_scope]);
  v4 = [CollationElement scopeToString:[(CollationElement *)self cle_scope]];
  xpc_dictionary_set_string(empty, "scope_string", [v4 UTF8String]);

  v5 = [(CollationElement *)self cle_bundle_id];
  xpc_dictionary_set_string(empty, "cryptex_bundleid", [v5 UTF8String]);

  v6 = [(CollationElement *)self cle_mnt_path];
  xpc_dictionary_set_string(empty, "mntpath", [v6 UTF8String]);

  v7 = [(CollationElement *)self cle_bundle_version];
  xpc_dictionary_set_string(empty, "version", [v7 UTF8String]);

  v8 = [(CollationElement *)self cle_command];

  if (v8)
  {
    v9 = [(CollationElement *)self cle_command];
    xpc_dictionary_set_string(empty, "command", [v9 UTF8String]);
  }

  v10 = [(CollationElement *)self cle_env];

  if (v10)
  {
    v11 = [(CollationElement *)self cle_env];
    v12 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(empty, "env", v12);
  }

  v13 = [(CollationElement *)self cle_command_args];

  if (v13)
  {
    v14 = [(CollationElement *)self cle_command_args];
    v15 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(empty, "cmd_arg", v15);
  }

  return empty;
}

@end