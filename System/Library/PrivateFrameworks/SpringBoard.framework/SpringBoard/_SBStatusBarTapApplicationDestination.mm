@interface _SBStatusBarTapApplicationDestination
- (BOOL)isEqual:(id)a3;
- (NSString)bundleIdentifier;
- (SBWindowScene)windowScene;
- (_SBStatusBarTapApplicationDestination)initWithApplication:(id)a3 sceneIdentifier:(id)a4 windowScene:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation _SBStatusBarTapApplicationDestination

- (NSString)bundleIdentifier
{
  v2 = [(SBApplication *)self->_application bundleIdentifier];
  v3 = [v2 copy];

  return v3;
}

- (_SBStatusBarTapApplicationDestination)initWithApplication:(id)a3 sceneIdentifier:(id)a4 windowScene:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = _SBStatusBarTapApplicationDestination;
  v12 = [(_SBStatusBarTapApplicationDestination *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_application, a3);
    v14 = [v10 copy];
    sceneIdentifier = v13->_sceneIdentifier;
    v13->_sceneIdentifier = v14;

    objc_storeWeak(&v13->_windowScene, v11);
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  application = self->_application;
  sceneIdentifier = self->_sceneIdentifier;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v8 = [v4 initWithApplication:application sceneIdentifier:sceneIdentifier windowScene:WeakRetained];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    application = self->_application;
    v6 = [v4 application];
    if ([(SBApplication *)application isEqual:v6])
    {
      v7 = [v4 sceneIdentifier];
      if (BSEqualObjects())
      {
        WeakRetained = objc_loadWeakRetained(&self->_windowScene);
        v9 = [v4 windowScene];
        v10 = [WeakRetained isEqual:v9];
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
  v5 = [(_SBStatusBarTapApplicationDestination *)self bundleIdentifier];
  sceneIdentifier = self->_sceneIdentifier;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v8 = [WeakRetained _sceneIdentifier];
  v9 = [v3 stringWithFormat:@"<%@:%p application:%@, sceneID:%@, windowScene:%@>", v4, self, v5, sceneIdentifier, v8];

  return v9;
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

@end