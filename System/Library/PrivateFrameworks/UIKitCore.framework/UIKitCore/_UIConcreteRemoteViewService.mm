@interface _UIConcreteRemoteViewService
- (BOOL)multipleInstances;
- (_UIConcreteRemoteViewService)initWithExtension:(id)a3 andContextToken:(id)a4;
- (id)identifier;
- (id)multipleInstanceUUID;
- (id)viewControllerClassName;
- (id)xpcServiceNameRoot;
- (int)processIdentifier;
- (void)beginUsing:(id)a3;
- (void)endUsing:(id)a3;
- (void)setPlugin:(id)a3;
- (void)updateOverridesHostAppearance;
@end

@implementation _UIConcreteRemoteViewService

- (_UIConcreteRemoteViewService)initWithExtension:(id)a3 andContextToken:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = _UIConcreteRemoteViewService;
  v9 = [(_UIRemoteViewService *)&v14 _init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 3, a3);
    v11 = [v8 copy];
    contextToken = v10->_contextToken;
    v10->_contextToken = v11;

    [(_UIConcreteRemoteViewService *)v10 updateOverridesHostAppearance];
  }

  return v10;
}

- (void)updateOverridesHostAppearance
{
  v6 = [(_UIConcreteRemoteViewService *)self plugin];
  v3 = [v6 bundleInfoDictionary];
  v4 = [v3 objectForKeyedSubscript:@"NSExtension"];
  v5 = [v4 objectForKeyedSubscript:@"NSExtensionOverridesHostUIAppearance"];
  self->_overridesHostAppearance = [v5 BOOLValue];
}

- (void)setPlugin:(id)a3
{
  [(NSExtension *)self->_extension _setPlugIn:a3];

  [(_UIConcreteRemoteViewService *)self updateOverridesHostAppearance];
}

- (id)identifier
{
  v2 = [(_UIConcreteRemoteViewService *)self plugin];
  v3 = [v2 identifier];

  return v3;
}

- (id)xpcServiceNameRoot
{
  v3 = [(_UIConcreteRemoteViewService *)self extension];
  v4 = [v3 _extensionBundle];
  v5 = [v4 bundleIdentifier];

  if (!v5)
  {
    v6 = [(_UIConcreteRemoteViewService *)self plugin];
    v5 = [v6 identifier];
  }

  return v5;
}

- (BOOL)multipleInstances
{
  v2 = [(_UIConcreteRemoteViewService *)self plugin];
  v3 = [v2 bundleInfoDictionary];
  v4 = [v3 objectForKeyedSubscript:@"XPCService"];
  v5 = [v4 objectForKeyedSubscript:@"_MultipleInstances"];
  v6 = [v5 BOOLValue];

  return v6;
}

- (id)multipleInstanceUUID
{
  v2 = [(_UIConcreteRemoteViewService *)self plugin];
  v3 = [v2 multipleInstanceUUID];

  return v3;
}

- (int)processIdentifier
{
  v3 = [(_UIConcreteRemoteViewService *)self extension];
  v4 = [(_UIConcreteRemoteViewService *)self contextToken];
  v5 = [v3 pidForRequestIdentifier:v4];

  return v5;
}

- (id)viewControllerClassName
{
  v3 = [(_UIConcreteRemoteViewService *)self plugin];
  v4 = [v3 bundleInfoDictionary];
  v5 = [v4 objectForKeyedSubscript:@"NSExtension"];
  v6 = [v5 objectForKeyedSubscript:@"NSExtensionPrincipalClass"];
  v7 = [v6 copy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [(_UIConcreteRemoteViewService *)self plugin];
    v11 = [v10 bundleInfoDictionary];
    v12 = [v11 objectForKeyedSubscript:@"NSExtensionPrincipalClass"];
    v9 = [v12 copy];
  }

  return v9;
}

- (void)beginUsing:(id)a3
{
  v4 = a3;
  v5 = [(_UIConcreteRemoteViewService *)self extension];
  [v5 _safelyBeginUsing:v4];
}

- (void)endUsing:(id)a3
{
  v4 = a3;
  v5 = [(_UIConcreteRemoteViewService *)self extension];
  [v5 _safelyEndUsing:v4];
}

@end