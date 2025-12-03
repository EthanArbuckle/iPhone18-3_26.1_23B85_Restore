@interface UISSceneRequestOptions
- (BOOL)isKindOfClass:(Class)class;
- (UISSceneRequestOptions)initWithBSXPCCoder:(id)coder;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation UISSceneRequestOptions

- (void)encodeWithBSXPCCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = UISSceneRequestOptions;
  coderCopy = coder;
  [(FBSWorkspaceSceneRequestOptions *)&v10 encodeWithBSXPCCoder:coderCopy];
  v5 = [(FBSWorkspaceSceneRequestOptions *)self identifier:v10.receiver];
  [coderCopy encodeObject:v5 forKey:@"identifier"];

  sourceIdentifier = [(UISSceneRequestOptions *)self sourceIdentifier];
  [coderCopy encodeObject:sourceIdentifier forKey:@"sourceIdentifier"];

  interactionIdentifier = [(UISSceneRequestOptions *)self interactionIdentifier];
  [coderCopy encodeObject:interactionIdentifier forKey:@"interactionIdentifier"];

  actions = [(UISSceneRequestOptions *)self actions];
  [coderCopy encodeCollection:actions forKey:@"actions"];

  [coderCopy encodeInt64:-[UISSceneRequestOptions sceneRequestIntent](self forKey:{"sceneRequestIntent"), @"sceneRequestIntent"}];
  scenePlacementConfiguration = [(UISSceneRequestOptions *)self scenePlacementConfiguration];
  [coderCopy encodeObject:scenePlacementConfiguration forKey:@"placementConfiguration"];

  [coderCopy encodeBool:-[UISSceneRequestOptions requestFullscreen](self forKey:{"requestFullscreen"), @"requestFullscreen"}];
  [coderCopy encodeBool:-[UISSceneRequestOptions requestBackground](self forKey:{"requestBackground"), @"requestBackground"}];
  [coderCopy encodeBool:-[UISSceneRequestOptions requestCenterSlot](self forKey:{"requestCenterSlot"), @"requestCenterSlot"}];
  [coderCopy encodeBool:-[UISSceneRequestOptions preserveLayout](self forKey:{"preserveLayout"), @"preserveLayout"}];
  [coderCopy encodeBool:-[UISSceneRequestOptions requestQuickLookScene](self forKey:{"requestQuickLookScene"), @"requestQuickLookScene"}];
}

- (UISSceneRequestOptions)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = UISSceneRequestOptions;
  v5 = [(FBSWorkspaceSceneRequestOptions *)&v13 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeStringForKey:@"identifier"];
    [(FBSWorkspaceSceneRequestOptions *)v5 setIdentifier:v6];

    v7 = [coderCopy decodeStringForKey:@"sourceIdentifier"];
    [(UISSceneRequestOptions *)v5 setSourceIdentifier:v7];

    v8 = [coderCopy decodeStringForKey:@"interactionIdentifier"];
    [(UISSceneRequestOptions *)v5 setInteractionIdentifier:v8];

    v9 = objc_opt_class();
    v10 = [coderCopy decodeCollectionOfClass:v9 containingClass:objc_opt_class() forKey:@"actions"];
    [(UISSceneRequestOptions *)v5 setActions:v10];

    -[UISSceneRequestOptions setSceneRequestIntent:](v5, "setSceneRequestIntent:", [coderCopy decodeInt64ForKey:@"sceneRequestIntent"]);
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"placementConfiguration"];
    [(UISSceneRequestOptions *)v5 setScenePlacementConfiguration:v11];

    -[UISSceneRequestOptions setRequestFullscreen:](v5, "setRequestFullscreen:", [coderCopy decodeBoolForKey:@"requestFullscreen"]);
    -[UISSceneRequestOptions setRequestBackground:](v5, "setRequestBackground:", [coderCopy decodeBoolForKey:@"requestBackground"]);
    -[UISSceneRequestOptions setRequestCenterSlot:](v5, "setRequestCenterSlot:", [coderCopy decodeBoolForKey:@"requestCenterSlot"]);
    -[UISSceneRequestOptions setPreserveLayout:](v5, "setPreserveLayout:", [coderCopy decodeBoolForKey:@"preserveLayout"]);
    -[UISSceneRequestOptions setRequestQuickLookScene:](v5, "setRequestQuickLookScene:", [coderCopy decodeBoolForKey:@"requestQuickLookScene"]);
  }

  return v5;
}

- (BOOL)isKindOfClass:(Class)class
{
  v5.receiver = self;
  v5.super_class = UISSceneRequestOptions;
  if ([(UISSceneRequestOptions *)&v5 isKindOfClass:?])
  {
    return 1;
  }

  else
  {
    return [(objc_class *)class isSubclassOfClass:objc_opt_class()];
  }
}

@end