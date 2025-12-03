@interface _UIWindowSceneReplacePlacement
+ (id)placementToReplaceSceneSession:(id)session;
- (BOOL)isEqual:(id)equal;
- (id)_createConfigurationWithError:(id *)error;
- (id)_initWithTargetSceneSession:(id)session;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation _UIWindowSceneReplacePlacement

+ (id)placementToReplaceSceneSession:(id)session
{
  sessionCopy = session;
  v5 = [[self alloc] _initWithTargetSceneSession:sessionCopy];

  return v5;
}

- (id)_initWithTargetSceneSession:(id)session
{
  sessionCopy = session;
  v9.receiver = self;
  v9.super_class = _UIWindowSceneReplacePlacement;
  _init = [(UIWindowScenePlacement *)&v9 _init];
  if (_init)
  {
    persistentIdentifier = [sessionCopy persistentIdentifier];
    v7 = _init[1];
    _init[1] = persistentIdentifier;
  }

  return _init;
}

- (id)_createConfigurationWithError:(id *)error
{
  v3 = [objc_alloc(MEMORY[0x1E69DEC50]) initWithTargetSceneSessionPersistentIdentifier:self->_targetSceneSessionPersistentIdentifier];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _UIWindowSceneReplacePlacement;
  v4 = [(UIWindowScenePlacement *)&v6 copyWithZone:zone];
  [v4 setTargetSceneSessionPersistentIdentifier:self->_targetSceneSessionPersistentIdentifier];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = _UIWindowSceneReplacePlacement;
  if ([(UIWindowScenePlacement *)&v8 isEqual:equalCopy])
  {
    targetSceneSessionPersistentIdentifier = [equalCopy targetSceneSessionPersistentIdentifier];
    v6 = [targetSceneSessionPersistentIdentifier isEqual:self->_targetSceneSessionPersistentIdentifier];
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
  v12.super_class = _UIWindowSceneReplacePlacement;
  prefixCopy = prefix;
  v5 = [(UIWindowScenePlacement *)&v12 descriptionBuilderWithMultilinePrefix:prefixCopy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72___UIWindowSceneReplacePlacement_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E70F35B8;
  v6 = v5;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:&stru_1EFB14550 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

@end