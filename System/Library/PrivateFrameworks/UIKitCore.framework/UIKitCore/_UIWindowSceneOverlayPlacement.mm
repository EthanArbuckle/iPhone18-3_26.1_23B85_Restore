@interface _UIWindowSceneOverlayPlacement
+ (id)placementOverlayingWindowScene:(id)a3;
- (BOOL)isEqual:(id)a3;
- (_UIWindowSceneOverlayPlacement)initWithTargetSceneIdentity:(id)a3;
- (id)_createConfigurationWithError:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
@end

@implementation _UIWindowSceneOverlayPlacement

- (_UIWindowSceneOverlayPlacement)initWithTargetSceneIdentity:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _UIWindowSceneOverlayPlacement;
  v6 = [(UIWindowScenePlacement *)&v9 _init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 1, a3);
  }

  return v7;
}

+ (id)placementOverlayingWindowScene:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v4 _FBSScene];

  v7 = [v6 identityToken];
  v8 = [v5 initWithTargetSceneIdentity:v7];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = _UIWindowSceneOverlayPlacement;
  v4 = [(UIWindowScenePlacement *)&v8 copyWithZone:a3];
  v5 = [(_UIWindowSceneOverlayPlacement *)self targetSceneIdentity];
  v6 = [v5 copy];
  [v4 setTargetSceneIdentity:v6];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UIWindowSceneOverlayPlacement;
  if ([(UIWindowScenePlacement *)&v9 isEqual:v4])
  {
    v5 = [v4 targetSceneIdentity];
    v6 = [(_UIWindowSceneOverlayPlacement *)self targetSceneIdentity];
    v7 = [v6 isEqual:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_createConfigurationWithError:(id *)a3
{
  v4 = objc_alloc(MEMORY[0x1E69DEC30]);
  v5 = [(_UIWindowSceneOverlayPlacement *)self targetSceneIdentity];
  v6 = [v4 initWithTargetSceneIdentity:v5];

  return v6;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v12.receiver = self;
  v12.super_class = _UIWindowSceneOverlayPlacement;
  v4 = a3;
  v5 = [(UIWindowScenePlacement *)&v12 descriptionBuilderWithMultilinePrefix:v4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72___UIWindowSceneOverlayPlacement_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E70F35B8;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:&stru_1EFB14550 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

@end