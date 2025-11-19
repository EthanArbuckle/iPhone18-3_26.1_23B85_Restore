@interface UISSceneRequestOptions
- (BOOL)isKindOfClass:(Class)a3;
- (UISSceneRequestOptions)initWithBSXPCCoder:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation UISSceneRequestOptions

- (void)encodeWithBSXPCCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = UISSceneRequestOptions;
  v4 = a3;
  [(FBSWorkspaceSceneRequestOptions *)&v10 encodeWithBSXPCCoder:v4];
  v5 = [(FBSWorkspaceSceneRequestOptions *)self identifier:v10.receiver];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(UISSceneRequestOptions *)self sourceIdentifier];
  [v4 encodeObject:v6 forKey:@"sourceIdentifier"];

  v7 = [(UISSceneRequestOptions *)self interactionIdentifier];
  [v4 encodeObject:v7 forKey:@"interactionIdentifier"];

  v8 = [(UISSceneRequestOptions *)self actions];
  [v4 encodeCollection:v8 forKey:@"actions"];

  [v4 encodeInt64:-[UISSceneRequestOptions sceneRequestIntent](self forKey:{"sceneRequestIntent"), @"sceneRequestIntent"}];
  v9 = [(UISSceneRequestOptions *)self scenePlacementConfiguration];
  [v4 encodeObject:v9 forKey:@"placementConfiguration"];

  [v4 encodeBool:-[UISSceneRequestOptions requestFullscreen](self forKey:{"requestFullscreen"), @"requestFullscreen"}];
  [v4 encodeBool:-[UISSceneRequestOptions requestBackground](self forKey:{"requestBackground"), @"requestBackground"}];
  [v4 encodeBool:-[UISSceneRequestOptions requestCenterSlot](self forKey:{"requestCenterSlot"), @"requestCenterSlot"}];
  [v4 encodeBool:-[UISSceneRequestOptions preserveLayout](self forKey:{"preserveLayout"), @"preserveLayout"}];
  [v4 encodeBool:-[UISSceneRequestOptions requestQuickLookScene](self forKey:{"requestQuickLookScene"), @"requestQuickLookScene"}];
}

- (UISSceneRequestOptions)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = UISSceneRequestOptions;
  v5 = [(FBSWorkspaceSceneRequestOptions *)&v13 initWithBSXPCCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeStringForKey:@"identifier"];
    [(FBSWorkspaceSceneRequestOptions *)v5 setIdentifier:v6];

    v7 = [v4 decodeStringForKey:@"sourceIdentifier"];
    [(UISSceneRequestOptions *)v5 setSourceIdentifier:v7];

    v8 = [v4 decodeStringForKey:@"interactionIdentifier"];
    [(UISSceneRequestOptions *)v5 setInteractionIdentifier:v8];

    v9 = objc_opt_class();
    v10 = [v4 decodeCollectionOfClass:v9 containingClass:objc_opt_class() forKey:@"actions"];
    [(UISSceneRequestOptions *)v5 setActions:v10];

    -[UISSceneRequestOptions setSceneRequestIntent:](v5, "setSceneRequestIntent:", [v4 decodeInt64ForKey:@"sceneRequestIntent"]);
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"placementConfiguration"];
    [(UISSceneRequestOptions *)v5 setScenePlacementConfiguration:v11];

    -[UISSceneRequestOptions setRequestFullscreen:](v5, "setRequestFullscreen:", [v4 decodeBoolForKey:@"requestFullscreen"]);
    -[UISSceneRequestOptions setRequestBackground:](v5, "setRequestBackground:", [v4 decodeBoolForKey:@"requestBackground"]);
    -[UISSceneRequestOptions setRequestCenterSlot:](v5, "setRequestCenterSlot:", [v4 decodeBoolForKey:@"requestCenterSlot"]);
    -[UISSceneRequestOptions setPreserveLayout:](v5, "setPreserveLayout:", [v4 decodeBoolForKey:@"preserveLayout"]);
    -[UISSceneRequestOptions setRequestQuickLookScene:](v5, "setRequestQuickLookScene:", [v4 decodeBoolForKey:@"requestQuickLookScene"]);
  }

  return v5;
}

- (BOOL)isKindOfClass:(Class)a3
{
  v5.receiver = self;
  v5.super_class = UISSceneRequestOptions;
  if ([(UISSceneRequestOptions *)&v5 isKindOfClass:?])
  {
    return 1;
  }

  else
  {
    return [(objc_class *)a3 isSubclassOfClass:objc_opt_class()];
  }
}

@end