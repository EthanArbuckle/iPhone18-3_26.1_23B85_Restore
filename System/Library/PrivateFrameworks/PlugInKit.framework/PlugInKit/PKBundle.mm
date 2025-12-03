@interface PKBundle
- (NSDictionary)infoDictionary;
- (NSString)bundleIdentifier;
- (NSString)executablePath;
- (NSString)path;
- (NSString)plugInsPath;
- (NSString)supportPath;
- (NSURL)url;
- (PKBundle)initWithExecutablePath:(id)path;
- (PKBundle)initWithExecutableURL:(id)l;
- (PKBundle)initWithPath:(id)path;
- (PKBundle)initWithURL:(id)l;
- (PKBundle)initWithXPCBundle:(id)bundle;
- (id)bundleDirectory:(id)directory;
- (id)initForMainBundle;
- (id)stringProperty:(int)property;
@end

@implementation PKBundle

- (NSString)executablePath
{
  v3 = [(PKBundle *)self stringProperty:3];
  if (!v3)
  {
    v3 = [(PKBundle *)self stringProperty:2];
  }

  return v3;
}

- (id)initForMainBundle
{
  main = xpc_bundle_create_main();
  v4 = [(PKBundle *)self initWithXPCBundle:main];

  return v4;
}

- (PKBundle)initWithURL:(id)l
{
  path = [l path];
  v5 = [(PKBundle *)self initWithPath:path];

  return v5;
}

- (PKBundle)initWithPath:(id)path
{
  pathCopy = path;
  [pathCopy UTF8String];
  v5 = xpc_bundle_create();
  if (xpc_bundle_get_property())
  {
    self = [(PKBundle *)self initWithXPCBundle:v5];
    selfCopy = self;
  }

  else
  {
    xpc_bundle_get_error();
    v7 = pklog_handle_for_category(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B722C();
    }

    lastPathComponent = [pathCopy lastPathComponent];
    pathExtension = [lastPathComponent pathExtension];
    v10 = [pathExtension isEqualToString:@"appex"];

    if (v10)
    {
      v11 = objc_alloc(MEMORY[0x1E69635D0]);
      v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy isDirectory:1];
      v17 = 0;
      v13 = [v11 initWithURL:v12 error:&v17];
      v14 = v17;

      if (v13)
      {
        v15 = pklog_handle_for_category(1);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_1C68B72BC(v13);
        }
      }
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (PKBundle)initWithExecutableURL:(id)l
{
  path = [l path];
  v5 = [(PKBundle *)self initWithExecutablePath:path];

  return v5;
}

- (PKBundle)initWithExecutablePath:(id)path
{
  pathCopy = path;
  [pathCopy UTF8String];
  v5 = xpc_bundle_create();
  if (xpc_bundle_get_property())
  {
    v6 = [(PKBundle *)self initWithXPCBundle:v5];
  }

  else
  {
    v6 = [(PKBundle *)self initWithPath:pathCopy];
  }

  v7 = v6;

  return v7;
}

- (PKBundle)initWithXPCBundle:(id)bundle
{
  bundleCopy = bundle;
  v8.receiver = self;
  v8.super_class = PKBundle;
  v5 = [(PKBundle *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PKBundle *)v5 set_bundle:bundleCopy];
  }

  return v6;
}

- (id)stringProperty:(int)property
{
  _bundle = [(PKBundle *)self _bundle];
  property = xpc_bundle_get_property();

  if (property)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:property];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSDictionary)infoDictionary
{
  _bundle = [(PKBundle *)self _bundle];
  v4 = xpc_bundle_get_info_dictionary();

  if (!v4)
  {
    v5 = pklog_handle_for_category(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B735C(self);
    }
  }

  v6 = _CFXPCCreateCFObjectFromXPCObject();
  if (!v6)
  {
    v7 = pklog_handle_for_category(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B7410(self);
    }
  }

  return v6;
}

- (NSString)bundleIdentifier
{
  _bundle = [(PKBundle *)self _bundle];
  v3 = xpc_bundle_get_info_dictionary();

  if (v3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{xpc_dictionary_get_string(v3, "CFBundleIdentifier")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSURL)url
{
  v2 = MEMORY[0x1E695DFF8];
  path = [(PKBundle *)self path];
  v4 = [v2 fileURLWithPath:path];

  return v4;
}

- (NSString)path
{
  v2 = [(PKBundle *)self stringProperty:2];

  return v2;
}

- (NSString)supportPath
{
  if (!self->_supportPath)
  {
    _bundle = [(PKBundle *)self _bundle];
    property = xpc_bundle_get_property();

    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:property];
    supportPath = self->_supportPath;
    self->_supportPath = v5;

    free(property);
  }

  v7 = self->_supportPath;

  return v7;
}

- (id)bundleDirectory:(id)directory
{
  directoryCopy = directory;
  supportPath = [(PKBundle *)self supportPath];
  v6 = [supportPath stringByAppendingPathComponent:directoryCopy];

  return v6;
}

- (NSString)plugInsPath
{
  v2 = [(PKBundle *)self bundleDirectory:@"PlugIns"];

  return v2;
}

@end