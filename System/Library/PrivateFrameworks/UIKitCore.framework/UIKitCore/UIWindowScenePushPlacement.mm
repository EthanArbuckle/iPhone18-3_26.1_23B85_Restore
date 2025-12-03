@interface UIWindowScenePushPlacement
+ (id)placementTargetingSceneSession:(id)session;
- (BOOL)isEqual:(id)equal;
- (id)_createConfigurationWithError:(id *)error;
- (id)_initWithTargetSceneSession:(id)session;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation UIWindowScenePushPlacement

+ (id)placementTargetingSceneSession:(id)session
{
  sessionCopy = session;
  v5 = [[self alloc] _initWithTargetSceneSession:sessionCopy];

  return v5;
}

- (id)_initWithTargetSceneSession:(id)session
{
  sessionCopy = session;
  v10.receiver = self;
  v10.super_class = UIWindowScenePushPlacement;
  _init = [(UIWindowScenePlacement *)&v10 _init];
  if (_init)
  {
    persistentIdentifier = [sessionCopy persistentIdentifier];
    v7 = [persistentIdentifier copy];
    v8 = _init[1];
    _init[1] = v7;
  }

  return _init;
}

- (id)_createConfigurationWithError:(id *)error
{
  v3 = [objc_alloc(MEMORY[0x1E69DEC48]) initWithTargetSceneSessionPersistentIdentifier:self->_targetSceneSessionPersistentIdentifier];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = UIWindowScenePushPlacement;
  v4 = [(UIWindowScenePlacement *)&v9 copyWithZone:zone];
  _targetSceneSessionPersistentIdentifier = [(UIWindowScenePushPlacement *)self _targetSceneSessionPersistentIdentifier];
  v6 = [_targetSceneSessionPersistentIdentifier copy];
  v7 = v4[1];
  v4[1] = v6;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = UIWindowScenePushPlacement;
  if ([(UIWindowScenePlacement *)&v8 isEqual:equalCopy])
  {
    _targetSceneSessionPersistentIdentifier = [equalCopy _targetSceneSessionPersistentIdentifier];
    v6 = [_targetSceneSessionPersistentIdentifier isEqual:self->_targetSceneSessionPersistentIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v12.receiver = self;
  v12.super_class = UIWindowScenePushPlacement;
  prefixCopy = prefix;
  v5 = [(UIWindowScenePlacement *)&v12 descriptionBuilderWithMultilinePrefix:prefixCopy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__UIWindowScenePushPlacement_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E70F35B8;
  v6 = v5;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:&stru_1EFB14550 multilinePrefix:prefixCopy block:v9];

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