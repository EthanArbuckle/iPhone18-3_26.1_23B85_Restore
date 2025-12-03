@interface CollationElement
+ (id)scopeToString:(int64_t)string;
- (CollationElement)initWithBundle:(id)bundle version:(id)version atPath:(id)path withScope:(int64_t)scope withCommand:(id)command withCommandArgs:(id)args withEnv:(id)env;
- (CollationElement)initWithXPC:(id)c;
- (id)description;
- (id)package;
@end

@implementation CollationElement

+ (id)scopeToString:(int64_t)string
{
  v3 = @"SCOPE_UNK";
  if (string == 2)
  {
    v3 = @"SCOPE_USER";
  }

  if (string == 1)
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

- (CollationElement)initWithBundle:(id)bundle version:(id)version atPath:(id)path withScope:(int64_t)scope withCommand:(id)command withCommandArgs:(id)args withEnv:(id)env
{
  bundleCopy = bundle;
  versionCopy = version;
  pathCopy = path;
  commandCopy = command;
  argsCopy = args;
  envCopy = env;
  v25.receiver = self;
  v25.super_class = CollationElement;
  v18 = [(CollationElement *)&v25 init];
  v19 = v18;
  if (v18)
  {
    v18->_cle_scope = scope;
    objc_storeStrong(&v18->_cle_mnt_path, path);
    objc_storeStrong(&v19->_cle_bundle_id, bundle);
    objc_storeStrong(&v19->_cle_bundle_version, version);
    objc_storeStrong(&v19->_cle_command, command);
    objc_storeStrong(&v19->_cle_env, env);
    objc_storeStrong(&v19->_cle_command_args, args);
  }

  return v19;
}

- (CollationElement)initWithXPC:(id)c
{
  cCopy = c;
  v22.receiver = self;
  v22.super_class = CollationElement;
  v5 = [(CollationElement *)&v22 init];
  if (v5)
  {
    string = xpc_dictionary_get_string(cCopy, "cmd");
    v5->_cle_scope = xpc_dictionary_get_int64(cCopy, "scope");
    v7 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:{xpc_dictionary_get_string(cCopy, "mntpath")}];
    cle_mnt_path = v5->_cle_mnt_path;
    v5->_cle_mnt_path = v7;

    v9 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:{xpc_dictionary_get_string(cCopy, "cryptex_bundleid")}];
    cle_bundle_id = v5->_cle_bundle_id;
    v5->_cle_bundle_id = v9;

    v11 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:{xpc_dictionary_get_string(cCopy, "version")}];
    cle_bundle_version = v5->_cle_bundle_version;
    v5->_cle_bundle_version = v11;

    if (string)
    {
      v13 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:string];
      cle_command = v5->_cle_command;
      v5->_cle_command = v13;
    }

    v15 = xpc_dictionary_get_dictionary(cCopy, "env");
    if (v15)
    {
      v16 = _CFXPCCreateCFObjectFromXPCObject();
      cle_env = v5->_cle_env;
      v5->_cle_env = v16;
    }

    v18 = xpc_dictionary_get_array(cCopy, "cmd_arg");

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

  cle_bundle_id = [(CollationElement *)self cle_bundle_id];
  xpc_dictionary_set_string(empty, "cryptex_bundleid", [cle_bundle_id UTF8String]);

  cle_mnt_path = [(CollationElement *)self cle_mnt_path];
  xpc_dictionary_set_string(empty, "mntpath", [cle_mnt_path UTF8String]);

  cle_bundle_version = [(CollationElement *)self cle_bundle_version];
  xpc_dictionary_set_string(empty, "version", [cle_bundle_version UTF8String]);

  cle_command = [(CollationElement *)self cle_command];

  if (cle_command)
  {
    cle_command2 = [(CollationElement *)self cle_command];
    xpc_dictionary_set_string(empty, "command", [cle_command2 UTF8String]);
  }

  cle_env = [(CollationElement *)self cle_env];

  if (cle_env)
  {
    cle_env2 = [(CollationElement *)self cle_env];
    v12 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(empty, "env", v12);
  }

  cle_command_args = [(CollationElement *)self cle_command_args];

  if (cle_command_args)
  {
    cle_command_args2 = [(CollationElement *)self cle_command_args];
    v15 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(empty, "cmd_arg", v15);
  }

  return empty;
}

@end