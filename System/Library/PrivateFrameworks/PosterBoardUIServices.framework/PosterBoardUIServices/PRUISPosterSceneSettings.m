@interface PRUISPosterSceneSettings
- (CGRect)canvasBounds;
- (PRUISPosterSceneSettings)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)applyToMutableSceneSettings:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRUISPosterSceneSettings

- (void)applyToMutableSceneSettings:(id)a3
{
  v23 = a3;
  [(PRUISPosterSceneSettings *)self canvasBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(PRUISPosterSceneSettings *)self sceneSettings];
  v13 = [(PRUISPosterSceneSettings *)self interfaceOrientation];
  v14 = [(PRUISPosterSceneSettings *)self deviceOrientation];
  v15 = [(PRUISPosterSceneSettings *)self displayConfiguration];
  v16 = [(PRUISPosterSceneSettings *)self traitCollection];
  v17 = [(PRUISPosterSceneSettings *)self titleStyleConfiguration];
  v18 = [(PRUISPosterSceneSettings *)self ambientConfiguration];
  v19 = [(PRUISPosterSceneSettings *)self path];
  [v23 setDisplayConfiguration:v15];
  v25.origin.x = v5;
  v25.origin.y = v7;
  v25.size.width = v9;
  v25.size.height = v11;
  if (!CGRectIsEmpty(v25))
  {
    [v23 setFrame:{v5, v7, v9, v11}];
  }

  if (v17)
  {
    [v23 pr_setPosterTitleStyleConfiguration:v17];
  }

  v20 = v23;
  if (v18)
  {
    [v23 pr_setPosterAmbientConfiguration:v18];
    v20 = v23;
  }

  if (v19)
  {
    [v23 pui_setPosterContents:v19];
    v20 = v23;
  }

  if ([v20 isUISubclass] && v16)
  {
    [v23 setAccessibilityContrast:{objc_msgSend(v16, "accessibilityContrast")}];
  }

  v21 = [v19 role];
  [v12 applyToMutableSceneSettings:v23 role:v21];

  v22 = [v19 role];
  if ([v22 isEqualToString:*MEMORY[0x1E69C53C0]] && !PUIDynamicRotationIsActive())
  {
    v14 = 1;
  }

  [v23 pui_setDeviceOrientation:v14];
  [v23 setInterfaceOrientation:v13];
  if (v16)
  {
    [v23 pui_setUserInterfaceStyle:{objc_msgSend(v16, "userInterfaceStyle")}];
  }
}

- (PRUISPosterSceneSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PRUISPosterSceneSettings;
  v5 = [(PRUISPosterSceneSettings *)&v21 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"displayConfiguration"];
    [(PRUISPosterSceneSettings *)v5 setDisplayConfiguration:v7];

    -[PRUISPosterSceneSettings setInterfaceOrientation:](v5, "setInterfaceOrientation:", [v4 decodeIntegerForKey:@"interfaceOrientation"]);
    v8 = objc_opt_self();
    v9 = [v4 decodeObjectOfClass:v8 forKey:@"sceneSettings"];
    [(PRUISPosterSceneSettings *)v5 setSceneSettings:v9];

    v10 = objc_opt_self();
    v11 = [v4 decodeObjectOfClass:v10 forKey:@"serverPosterPath"];
    if (v11)
    {
      [(PRUISPosterSceneSettings *)v5 setPath:v11];
    }

    else
    {
      v12 = objc_opt_self();
      v13 = [v4 decodeObjectOfClass:v12 forKey:@"path"];
      [(PRUISPosterSceneSettings *)v5 setPath:v13];
    }

    v14 = objc_opt_self();
    v15 = [v4 decodeObjectOfClass:v14 forKey:@"titleStyleConfiguration"];
    [(PRUISPosterSceneSettings *)v5 setTitleStyleConfiguration:v15];

    v16 = objc_opt_self();
    v17 = [v4 decodeObjectOfClass:v16 forKey:@"ambientConfiguration"];
    [(PRUISPosterSceneSettings *)v5 setAmbientConfiguration:v17];

    v18 = objc_opt_self();
    v19 = [v4 decodeObjectOfClass:v18 forKey:@"traitCollection"];
    [(PRUISPosterSceneSettings *)v5 setTraitCollection:v19];

    -[PRUISPosterSceneSettings setSnapshotOptions:](v5, "setSnapshotOptions:", [v4 decodeIntegerForKey:@"snapshotOptions"]);
    [v4 decodeCGRectForKey:@"canvasBounds"];
    [(PRUISPosterSceneSettings *)v5 setCanvasBounds:?];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v12 = a3;
  v4 = [(PRUISPosterSceneSettings *)self displayConfiguration];
  [v12 encodeObject:v4 forKey:@"displayConfiguration"];

  [v12 encodeInteger:-[PRUISPosterSceneSettings interfaceOrientation](self forKey:{"interfaceOrientation"), @"interfaceOrientation"}];
  v5 = [(PRUISPosterSceneSettings *)self sceneSettings];
  [v12 encodeObject:v5 forKey:@"sceneSettings"];

  v6 = [(PRUISPosterSceneSettings *)self path];
  v7 = [(PRUISPosterSceneSettings *)self path];
  if ([v7 isServerPosterPath])
  {
    v8 = @"serverPosterPath";
  }

  else
  {
    v8 = @"path";
  }

  [v12 encodeObject:v6 forKey:v8];

  v9 = [(PRUISPosterSceneSettings *)self traitCollection];
  [v12 encodeObject:v9 forKey:@"traitCollection"];

  v10 = [(PRUISPosterSceneSettings *)self titleStyleConfiguration];
  [v12 encodeObject:v10 forKey:@"titleStyleConfiguration"];

  v11 = [(PRUISPosterSceneSettings *)self ambientConfiguration];
  [v12 encodeObject:v11 forKey:@"ambientConfiguration"];

  [v12 encodeInteger:-[PRUISPosterSceneSettings snapshotOptions](self forKey:{"snapshotOptions"), @"snapshotOptions"}];
  [(PRUISPosterSceneSettings *)self canvasBounds];
  [v12 encodeCGRect:@"canvasBounds" forKey:?];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[PRUISPosterSceneSettings allocWithZone:?]];
  v5 = [(PRUISPosterSceneSettings *)self sceneSettings];
  [(PRUISPosterSceneSettings *)v4 setSceneSettings:v5];

  v6 = [(PRUISPosterSceneSettings *)self displayConfiguration];
  [(PRUISPosterSceneSettings *)v4 setDisplayConfiguration:v6];

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