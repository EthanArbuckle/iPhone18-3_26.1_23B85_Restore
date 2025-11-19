@interface SBUIContinuitySessionTransitionContext
- (BOOL)isEqual:(id)a3;
- (SBUIContinuitySessionTransitionContext)init;
- (SBUIContinuitySessionTransitionContext)initWithBSXPCCoder:(id)a3;
- (id)_initWithBSSettings:(id)a3;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)appendDescriptionToStream:(id)a3;
- (void)dealloc;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation SBUIContinuitySessionTransitionContext

- (SBUIContinuitySessionTransitionContext)init
{
  v3 = objc_alloc_init(MEMORY[0x1E698E768]);
  v4 = [(SBUIContinuitySessionTransitionContext *)self _initWithBSSettings:v3];

  return v4;
}

- (id)_initWithBSSettings:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(SBUIContinuitySessionTransitionContext *)a2 _initWithBSSettings:?];
  }

  v10.receiver = self;
  v10.super_class = SBUIContinuitySessionTransitionContext;
  v6 = [(SBUIContinuitySessionTransitionContext *)&v10 init];
  if (v6)
  {
    v7 = [v5 mutableCopy];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
    v6 = [(SBUIContinuitySessionTransitionContext *)self animationSettings];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __50__SBUIContinuitySessionTransitionContext_isEqual___block_invoke;
    v10[3] = &unk_1E789FB20;
    v11 = v4;
    v7 = [v5 appendObject:v6 counterpart:v10];

    v8 = [v5 isEqual];
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(SBUIContinuitySessionTransitionContext *)self animationSettings];
  v5 = [v3 appendObject:v4];

  v6 = [v3 hash];
  return v6;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  mutableSettings = self->_mutableSettings;
  v4 = a3;
  v5 = [(BSMutableSettings *)mutableSettings copy];
  [v4 encodeObject:v5 forKey:@"settings"];
}

- (SBUIContinuitySessionTransitionContext)initWithBSXPCCoder:(id)a3
{
  v5 = a3;
  v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"settings"];

  if (!v6)
  {
    [(SBUIContinuitySessionTransitionContext *)a2 initWithBSXPCCoder:?];
  }

  v7 = [(SBUIContinuitySessionTransitionContext *)self _initWithBSSettings:v6];

  return v7;
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 == 1)
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
  v4 = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__SBUIContinuitySessionTransitionContext_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E789DD98;
  v7 = v4;
  v8 = self;
  v5 = v4;
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