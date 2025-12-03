@interface PRUISPosterSceneSettings
- (CGRect)canvasBounds;
- (PRUISPosterSceneSettings)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)applyToMutableSceneSettings:(id)settings;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRUISPosterSceneSettings

- (void)applyToMutableSceneSettings:(id)settings
{
  settingsCopy = settings;
  [(PRUISPosterSceneSettings *)self canvasBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sceneSettings = [(PRUISPosterSceneSettings *)self sceneSettings];
  interfaceOrientation = [(PRUISPosterSceneSettings *)self interfaceOrientation];
  deviceOrientation = [(PRUISPosterSceneSettings *)self deviceOrientation];
  displayConfiguration = [(PRUISPosterSceneSettings *)self displayConfiguration];
  traitCollection = [(PRUISPosterSceneSettings *)self traitCollection];
  titleStyleConfiguration = [(PRUISPosterSceneSettings *)self titleStyleConfiguration];
  ambientConfiguration = [(PRUISPosterSceneSettings *)self ambientConfiguration];
  path = [(PRUISPosterSceneSettings *)self path];
  [settingsCopy setDisplayConfiguration:displayConfiguration];
  v25.origin.x = v5;
  v25.origin.y = v7;
  v25.size.width = v9;
  v25.size.height = v11;
  if (!CGRectIsEmpty(v25))
  {
    [settingsCopy setFrame:{v5, v7, v9, v11}];
  }

  if (titleStyleConfiguration)
  {
    [settingsCopy pr_setPosterTitleStyleConfiguration:titleStyleConfiguration];
  }

  v20 = settingsCopy;
  if (ambientConfiguration)
  {
    [settingsCopy pr_setPosterAmbientConfiguration:ambientConfiguration];
    v20 = settingsCopy;
  }

  if (path)
  {
    [settingsCopy pui_setPosterContents:path];
    v20 = settingsCopy;
  }

  if ([v20 isUISubclass] && traitCollection)
  {
    [settingsCopy setAccessibilityContrast:{objc_msgSend(traitCollection, "accessibilityContrast")}];
  }

  role = [path role];
  [sceneSettings applyToMutableSceneSettings:settingsCopy role:role];

  role2 = [path role];
  if ([role2 isEqualToString:*MEMORY[0x1E69C53C0]] && !PUIDynamicRotationIsActive())
  {
    deviceOrientation = 1;
  }

  [settingsCopy pui_setDeviceOrientation:deviceOrientation];
  [settingsCopy setInterfaceOrientation:interfaceOrientation];
  if (traitCollection)
  {
    [settingsCopy pui_setUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];
  }
}

- (PRUISPosterSceneSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = PRUISPosterSceneSettings;
  v5 = [(PRUISPosterSceneSettings *)&v21 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"displayConfiguration"];
    [(PRUISPosterSceneSettings *)v5 setDisplayConfiguration:v7];

    -[PRUISPosterSceneSettings setInterfaceOrientation:](v5, "setInterfaceOrientation:", [coderCopy decodeIntegerForKey:@"interfaceOrientation"]);
    v8 = objc_opt_self();
    v9 = [coderCopy decodeObjectOfClass:v8 forKey:@"sceneSettings"];
    [(PRUISPosterSceneSettings *)v5 setSceneSettings:v9];

    v10 = objc_opt_self();
    v11 = [coderCopy decodeObjectOfClass:v10 forKey:@"serverPosterPath"];
    if (v11)
    {
      [(PRUISPosterSceneSettings *)v5 setPath:v11];
    }

    else
    {
      v12 = objc_opt_self();
      v13 = [coderCopy decodeObjectOfClass:v12 forKey:@"path"];
      [(PRUISPosterSceneSettings *)v5 setPath:v13];
    }

    v14 = objc_opt_self();
    v15 = [coderCopy decodeObjectOfClass:v14 forKey:@"titleStyleConfiguration"];
    [(PRUISPosterSceneSettings *)v5 setTitleStyleConfiguration:v15];

    v16 = objc_opt_self();
    v17 = [coderCopy decodeObjectOfClass:v16 forKey:@"ambientConfiguration"];
    [(PRUISPosterSceneSettings *)v5 setAmbientConfiguration:v17];

    v18 = objc_opt_self();
    v19 = [coderCopy decodeObjectOfClass:v18 forKey:@"traitCollection"];
    [(PRUISPosterSceneSettings *)v5 setTraitCollection:v19];

    -[PRUISPosterSceneSettings setSnapshotOptions:](v5, "setSnapshotOptions:", [coderCopy decodeIntegerForKey:@"snapshotOptions"]);
    [coderCopy decodeCGRectForKey:@"canvasBounds"];
    [(PRUISPosterSceneSettings *)v5 setCanvasBounds:?];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  displayConfiguration = [(PRUISPosterSceneSettings *)self displayConfiguration];
  [coderCopy encodeObject:displayConfiguration forKey:@"displayConfiguration"];

  [coderCopy encodeInteger:-[PRUISPosterSceneSettings interfaceOrientation](self forKey:{"interfaceOrientation"), @"interfaceOrientation"}];
  sceneSettings = [(PRUISPosterSceneSettings *)self sceneSettings];
  [coderCopy encodeObject:sceneSettings forKey:@"sceneSettings"];

  path = [(PRUISPosterSceneSettings *)self path];
  path2 = [(PRUISPosterSceneSettings *)self path];
  if ([path2 isServerPosterPath])
  {
    v8 = @"serverPosterPath";
  }

  else
  {
    v8 = @"path";
  }

  [coderCopy encodeObject:path forKey:v8];

  traitCollection = [(PRUISPosterSceneSettings *)self traitCollection];
  [coderCopy encodeObject:traitCollection forKey:@"traitCollection"];

  titleStyleConfiguration = [(PRUISPosterSceneSettings *)self titleStyleConfiguration];
  [coderCopy encodeObject:titleStyleConfiguration forKey:@"titleStyleConfiguration"];

  ambientConfiguration = [(PRUISPosterSceneSettings *)self ambientConfiguration];
  [coderCopy encodeObject:ambientConfiguration forKey:@"ambientConfiguration"];

  [coderCopy encodeInteger:-[PRUISPosterSceneSettings snapshotOptions](self forKey:{"snapshotOptions"), @"snapshotOptions"}];
  [(PRUISPosterSceneSettings *)self canvasBounds];
  [coderCopy encodeCGRect:@"canvasBounds" forKey:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[PRUISPosterSceneSettings allocWithZone:?]];
  sceneSettings = [(PRUISPosterSceneSettings *)self sceneSettings];
  [(PRUISPosterSceneSettings *)v4 setSceneSettings:sceneSettings];

  displayConfiguration = [(PRUISPosterSceneSettings *)self displayConfiguration];
  [(PRUISPosterSceneSettings *)v4 setDisplayConfiguration:displayConfiguration];

  [(PRUISPosterSceneSettings *)v4 setInterfaceOrientation:[(PRUISPosterSceneSettings *)self interfaceOrientation]];
  [(PRUISPosterSceneSettings *)v4 setSnapshotOptions:[(PRUISPosterSceneSettings *)self snapshotOptions]];
  [(PRUISPosterSceneSettings *)self canvasBounds];
  [(PRUISPosterSceneSettings *)v4 setCanvasBounds:?];
  return v4;
}

- (CGRect)canvasBounds
{
  x = self->_canvasBounds.origin.x;
  y = self->_canvasBounds.origin.y;
  width = self->_canvasBounds.size.width;
  height = self->_canvasBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end