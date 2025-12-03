@interface _SBStatusBarTapApplicationDestination
- (BOOL)isEqual:(id)equal;
- (NSString)bundleIdentifier;
- (SBWindowScene)windowScene;
- (_SBStatusBarTapApplicationDestination)initWithApplication:(id)application sceneIdentifier:(id)identifier windowScene:(id)scene;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation _SBStatusBarTapApplicationDestination

- (NSString)bundleIdentifier
{
  bundleIdentifier = [(SBApplication *)self->_application bundleIdentifier];
  v3 = [bundleIdentifier copy];

  return v3;
}

- (_SBStatusBarTapApplicationDestination)initWithApplication:(id)application sceneIdentifier:(id)identifier windowScene:(id)scene
{
  applicationCopy = application;
  identifierCopy = identifier;
  sceneCopy = scene;
  v17.receiver = self;
  v17.super_class = _SBStatusBarTapApplicationDestination;
  v12 = [(_SBStatusBarTapApplicationDestination *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_application, application);
    v14 = [identifierCopy copy];
    sceneIdentifier = v13->_sceneIdentifier;
    v13->_sceneIdentifier = v14;

    objc_storeWeak(&v13->_windowScene, sceneCopy);
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  application = self->_application;
  sceneIdentifier = self->_sceneIdentifier;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v8 = [v4 initWithApplication:application sceneIdentifier:sceneIdentifier windowScene:WeakRetained];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    application = self->_application;
    application = [equalCopy application];
    if ([(SBApplication *)application isEqual:application])
    {
      sceneIdentifier = [equalCopy sceneIdentifier];
      if (BSEqualObjects())
      {
        WeakRetained = objc_loadWeakRetained(&self->_windowScene);
        windowScene = [equalCopy windowScene];
        v10 = [WeakRetained isEqual:windowScene];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(SBApplication *)self->_application hash];
  v4 = [(NSString *)self->_sceneIdentifier hash]^ v3;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v6 = [WeakRetained hash];

  return v4 ^ v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  bundleIdentifier = [(_SBStatusBarTapApplicationDestination *)self bundleIdentifier];
  sceneIdentifier = self->_sceneIdentifier;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  _sceneIdentifier = [WeakRetained _sceneIdentifier];
  v9 = [v3 stringWithFormat:@"<%@:%p application:%@, sceneID:%@, windowScene:%@>", v4, self, bundleIdentifier, sceneIdentifier, _sceneIdentifier];

  return v9;
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

@end