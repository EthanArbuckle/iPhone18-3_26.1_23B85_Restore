@interface _UIWindowSceneStackRecord
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation _UIWindowSceneStackRecord

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_UIWindowSceneStackRecord *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%s: %p>", class_getName(v4), self->_windowScene];
  v6 = [v3 appendObject:v5 withName:@"windowScene"];
  v7 = _NSStringFromUIKeyWindowEvaluationStrategy(self->_evaluationStrategy);
  v8 = [v3 appendObject:v7 withName:@"evaluationStrategy"];

  v9 = [v3 appendUInt64:self->_lastPushedTime withName:@"lastPushedTime"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIWindowSceneStackRecord *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIWindowSceneStackRecord *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v5 setActiveMultilinePrefix:prefix];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67___UIWindowSceneStackRecord_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v6 = v5;
  v11 = v6;
  selfCopy = self;
  v7 = [v6 modifyBody:v10];
  v8 = v6;

  return v6;
}

@end