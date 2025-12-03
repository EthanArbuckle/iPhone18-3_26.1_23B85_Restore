@interface _UIConcreteRemoteViewService
- (BOOL)multipleInstances;
- (_UIConcreteRemoteViewService)initWithExtension:(id)extension andContextToken:(id)token;
- (id)identifier;
- (id)multipleInstanceUUID;
- (id)viewControllerClassName;
- (id)xpcServiceNameRoot;
- (int)processIdentifier;
- (void)beginUsing:(id)using;
- (void)endUsing:(id)using;
- (void)setPlugin:(id)plugin;
- (void)updateOverridesHostAppearance;
@end

@implementation _UIConcreteRemoteViewService

- (_UIConcreteRemoteViewService)initWithExtension:(id)extension andContextToken:(id)token
{
  extensionCopy = extension;
  tokenCopy = token;
  v14.receiver = self;
  v14.super_class = _UIConcreteRemoteViewService;
  _init = [(_UIRemoteViewService *)&v14 _init];
  v10 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 3, extension);
    v11 = [tokenCopy copy];
    contextToken = v10->_contextToken;
    v10->_contextToken = v11;

    [(_UIConcreteRemoteViewService *)v10 updateOverridesHostAppearance];
  }

  return v10;
}

- (void)updateOverridesHostAppearance
{
  plugin = [(_UIConcreteRemoteViewService *)self plugin];
  bundleInfoDictionary = [plugin bundleInfoDictionary];
  v4 = [bundleInfoDictionary objectForKeyedSubscript:@"NSExtension"];
  v5 = [v4 objectForKeyedSubscript:@"NSExtensionOverridesHostUIAppearance"];
  self->_overridesHostAppearance = [v5 BOOLValue];
}

- (void)setPlugin:(id)plugin
{
  [(NSExtension *)self->_extension _setPlugIn:plugin];

  [(_UIConcreteRemoteViewService *)self updateOverridesHostAppearance];
}

- (id)identifier
{
  plugin = [(_UIConcreteRemoteViewService *)self plugin];
  identifier = [plugin identifier];

  return identifier;
}

- (id)xpcServiceNameRoot
{
  extension = [(_UIConcreteRemoteViewService *)self extension];
  _extensionBundle = [extension _extensionBundle];
  bundleIdentifier = [_extensionBundle bundleIdentifier];

  if (!bundleIdentifier)
  {
    plugin = [(_UIConcreteRemoteViewService *)self plugin];
    bundleIdentifier = [plugin identifier];
  }

  return bundleIdentifier;
}

- (BOOL)multipleInstances
{
  plugin = [(_UIConcreteRemoteViewService *)self plugin];
  bundleInfoDictionary = [plugin bundleInfoDictionary];
  v4 = [bundleInfoDictionary objectForKeyedSubscript:@"XPCService"];
  v5 = [v4 objectForKeyedSubscript:@"_MultipleInstances"];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (id)multipleInstanceUUID
{
  plugin = [(_UIConcreteRemoteViewService *)self plugin];
  multipleInstanceUUID = [plugin multipleInstanceUUID];

  return multipleInstanceUUID;
}

- (int)processIdentifier
{
  extension = [(_UIConcreteRemoteViewService *)self extension];
  contextToken = [(_UIConcreteRemoteViewService *)self contextToken];
  v5 = [extension pidForRequestIdentifier:contextToken];

  return v5;
}

- (id)viewControllerClassName
{
  plugin = [(_UIConcreteRemoteViewService *)self plugin];
  bundleInfoDictionary = [plugin bundleInfoDictionary];
  v5 = [bundleInfoDictionary objectForKeyedSubscript:@"NSExtension"];
  v6 = [v5 objectForKeyedSubscript:@"NSExtensionPrincipalClass"];
  v7 = [v6 copy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    plugin2 = [(_UIConcreteRemoteViewService *)self plugin];
    bundleInfoDictionary2 = [plugin2 bundleInfoDictionary];
    v12 = [bundleInfoDictionary2 objectForKeyedSubscript:@"NSExtensionPrincipalClass"];
    v9 = [v12 copy];
  }

  return v9;
}

- (void)beginUsing:(id)using
{
  usingCopy = using;
  extension = [(_UIConcreteRemoteViewService *)self extension];
  [extension _safelyBeginUsing:usingCopy];
}

- (void)endUsing:(id)using
{
  usingCopy = using;
  extension = [(_UIConcreteRemoteViewService *)self extension];
  [extension _safelyEndUsing:usingCopy];
}

@end