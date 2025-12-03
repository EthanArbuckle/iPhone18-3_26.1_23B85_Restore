@interface SBUIContinuitySessionTransitionContext
- (BOOL)isEqual:(id)equal;
- (SBUIContinuitySessionTransitionContext)init;
- (SBUIContinuitySessionTransitionContext)initWithBSXPCCoder:(id)coder;
- (id)_initWithBSSettings:(id)settings;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)appendDescriptionToStream:(id)stream;
- (void)dealloc;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation SBUIContinuitySessionTransitionContext

- (SBUIContinuitySessionTransitionContext)init
{
  v3 = objc_alloc_init(MEMORY[0x1E698E768]);
  v4 = [(SBUIContinuitySessionTransitionContext *)self _initWithBSSettings:v3];

  return v4;
}

- (id)_initWithBSSettings:(id)settings
{
  settingsCopy = settings;
  if (!settingsCopy)
  {
    [(SBUIContinuitySessionTransitionContext *)a2 _initWithBSSettings:?];
  }

  v10.receiver = self;
  v10.super_class = SBUIContinuitySessionTransitionContext;
  v6 = [(SBUIContinuitySessionTransitionContext *)&v10 init];
  if (v6)
  {
    v7 = [settingsCopy mutableCopy];
    mutableSettings = v6->_mutableSettings;
    v6->_mutableSettings = v7;

    [(BSMutableSettings *)v6->_mutableSettings setDescriptionProvider:v6];
  }

  return v6;
}

- (void)dealloc
{
  [(BSMutableSettings *)self->_mutableSettings setDescriptionProvider:0];
  v3.receiver = self;
  v3.super_class = SBUIContinuitySessionTransitionContext;
  [(SBUIContinuitySessionTransitionContext *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
    animationSettings = [(SBUIContinuitySessionTransitionContext *)self animationSettings];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __50__SBUIContinuitySessionTransitionContext_isEqual___block_invoke;
    v10[3] = &unk_1E789FB20;
    v11 = equalCopy;
    v7 = [v5 appendObject:animationSettings counterpart:v10];

    v8 = [v5 isEqual];
  }

  return v8;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  animationSettings = [(SBUIContinuitySessionTransitionContext *)self animationSettings];
  v5 = [builder appendObject:animationSettings];

  v6 = [builder hash];
  return v6;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  mutableSettings = self->_mutableSettings;
  coderCopy = coder;
  v5 = [(BSMutableSettings *)mutableSettings copy];
  [coderCopy encodeObject:v5 forKey:@"settings"];
}

- (SBUIContinuitySessionTransitionContext)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"settings"];

  if (!v6)
  {
    [(SBUIContinuitySessionTransitionContext *)a2 initWithBSXPCCoder:?];
  }

  v7 = [(SBUIContinuitySessionTransitionContext *)self _initWithBSSettings:v6];

  return v7;
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting == 1)
  {
    return @"animationSettings";
  }

  else
  {
    return 0;
  }
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  succinctStyle = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:succinctStyle];

  return v5;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__SBUIContinuitySessionTransitionContext_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E789DD98;
  v7 = streamCopy;
  selfCopy = self;
  v5 = streamCopy;
  [v5 appendProem:self block:v6];
}

void __68__SBUIContinuitySessionTransitionContext_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) animationSettings];
  v2 = [v1 appendObject:v3 withName:@"animationSettings" skipIfNil:1];
}

- (void)_initWithBSSettings:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUIContinuitySessionAppearanceSettings.m" lineNumber:182 description:{@"Invalid parameter not satisfying: %@", @"settings"}];
}

- (void)initWithBSXPCCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUIContinuitySessionAppearanceSettings.m" lineNumber:240 description:@"Unable to decode settings"];
}

@end