@interface _UIWindowSceneReplacePlacement
+ (id)placementToReplaceSceneSession:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_createConfigurationWithError:(id *)a3;
- (id)_initWithTargetSceneSession:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
@end

@implementation _UIWindowSceneReplacePlacement

+ (id)placementToReplaceSceneSession:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithTargetSceneSession:v4];

  return v5;
}

- (id)_initWithTargetSceneSession:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UIWindowSceneReplacePlacement;
  v5 = [(UIWindowScenePlacement *)&v9 _init];
  if (v5)
  {
    v6 = [v4 persistentIdentifier];
    v7 = v5[1];
    v5[1] = v6;
  }

  return v5;
}

- (id)_createConfigurationWithError:(id *)a3
{
  v3 = [objc_alloc(MEMORY[0x1E69DEC50]) initWithTargetSceneSessionPersistentIdentifier:self->_targetSceneSessionPersistentIdentifier];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _UIWindowSceneReplacePlacement;
  v4 = [(UIWindowScenePlacement *)&v6 copyWithZone:a3];
  [v4 setTargetSceneSessionPersistentIdentifier:self->_targetSceneSessionPersistentIdentifier];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIWindowSceneReplacePlacement;
  if ([(UIWindowScenePlacement *)&v8 isEqual:v4])
  {
    v5 = [v4 targetSceneSessionPersistentIdentifier];
    v6 = [v5 isEqual:self->_targetSceneSessionPersistentIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v12.receiver = self;
  v12.super_class = _UIWindowSceneReplacePlacement;
  v4 = a3;
  v5 = [(UIWindowScenePlacement *)&v12 descriptionBuilderWithMultilinePrefix:v4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72___UIWindowSceneReplacePlacement_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E70F35B8;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:&stru_1EFB14550 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

@end