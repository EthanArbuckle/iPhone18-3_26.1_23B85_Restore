@interface UIWindowScenePushPlacement
+ (id)placementTargetingSceneSession:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_createConfigurationWithError:(id *)a3;
- (id)_initWithTargetSceneSession:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
@end

@implementation UIWindowScenePushPlacement

+ (id)placementTargetingSceneSession:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithTargetSceneSession:v4];

  return v5;
}

- (id)_initWithTargetSceneSession:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = UIWindowScenePushPlacement;
  v5 = [(UIWindowScenePlacement *)&v10 _init];
  if (v5)
  {
    v6 = [v4 persistentIdentifier];
    v7 = [v6 copy];
    v8 = v5[1];
    v5[1] = v7;
  }

  return v5;
}

- (id)_createConfigurationWithError:(id *)a3
{
  v3 = [objc_alloc(MEMORY[0x1E69DEC48]) initWithTargetSceneSessionPersistentIdentifier:self->_targetSceneSessionPersistentIdentifier];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = UIWindowScenePushPlacement;
  v4 = [(UIWindowScenePlacement *)&v9 copyWithZone:a3];
  v5 = [(UIWindowScenePushPlacement *)self _targetSceneSessionPersistentIdentifier];
  v6 = [v5 copy];
  v7 = v4[1];
  v4[1] = v6;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UIWindowScenePushPlacement;
  if ([(UIWindowScenePlacement *)&v8 isEqual:v4])
  {
    v5 = [v4 _targetSceneSessionPersistentIdentifier];
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
  v12.super_class = UIWindowScenePushPlacement;
  v4 = a3;
  v5 = [(UIWindowScenePlacement *)&v12 descriptionBuilderWithMultilinePrefix:v4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__UIWindowScenePushPlacement_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E70F35B8;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:&stru_1EFB14550 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

void __68__UIWindowScenePushPlacement_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) _targetSceneSessionPersistentIdentifier];
  [v1 appendString:v2 withName:@"targetScenePersistentIdentifier"];
}

@end