@interface _UIWindowSceneOverlayPlacement
+ (id)placementOverlayingWindowScene:(id)scene;
- (BOOL)isEqual:(id)equal;
- (_UIWindowSceneOverlayPlacement)initWithTargetSceneIdentity:(id)identity;
- (id)_createConfigurationWithError:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation _UIWindowSceneOverlayPlacement

- (_UIWindowSceneOverlayPlacement)initWithTargetSceneIdentity:(id)identity
{
  identityCopy = identity;
  v9.receiver = self;
  v9.super_class = _UIWindowSceneOverlayPlacement;
  _init = [(UIWindowScenePlacement *)&v9 _init];
  v7 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, identity);
  }

  return v7;
}

+ (id)placementOverlayingWindowScene:(id)scene
{
  sceneCopy = scene;
  v5 = [self alloc];
  _FBSScene = [sceneCopy _FBSScene];

  identityToken = [_FBSScene identityToken];
  v8 = [v5 initWithTargetSceneIdentity:identityToken];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = _UIWindowSceneOverlayPlacement;
  v4 = [(UIWindowScenePlacement *)&v8 copyWithZone:zone];
  targetSceneIdentity = [(_UIWindowSceneOverlayPlacement *)self targetSceneIdentity];
  v6 = [targetSceneIdentity copy];
  [v4 setTargetSceneIdentity:v6];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = _UIWindowSceneOverlayPlacement;
  if ([(UIWindowScenePlacement *)&v9 isEqual:equalCopy])
  {
    targetSceneIdentity = [equalCopy targetSceneIdentity];
    targetSceneIdentity2 = [(_UIWindowSceneOverlayPlacement *)self targetSceneIdentity];
    v7 = [targetSceneIdentity2 isEqual:targetSceneIdentity];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_createConfigurationWithError:(id *)error
{
  v4 = objc_alloc(MEMORY[0x1E69DEC30]);
  targetSceneIdentity = [(_UIWindowSceneOverlayPlacement *)self targetSceneIdentity];
  v6 = [v4 initWithTargetSceneIdentity:targetSceneIdentity];

  return v6;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v12.receiver = self;
  v12.super_class = _UIWindowSceneOverlayPlacement;
  prefixCopy = prefix;
  v5 = [(UIWindowScenePlacement *)&v12 descriptionBuilderWithMultilinePrefix:prefixCopy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72___UIWindowSceneOverlayPlacement_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E70F35B8;
  v6 = v5;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:&stru_1EFB14550 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

@end