@interface SBBaseStartupTransition
- (SBBaseStartupTransition)initWithDestination:(unint64_t)destination context:(id)context;
- (void)_begin;
- (void)performTransitionWithCompletionBlock:(id)block;
@end

@implementation SBBaseStartupTransition

- (SBBaseStartupTransition)initWithDestination:(unint64_t)destination context:(id)context
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = SBBaseStartupTransition;
  v8 = [(SBTransaction *)&v12 init];
  if (v8)
  {
    v9 = +[SBWorkspace mainWorkspace];
    mainWorkspace = v8->_mainWorkspace;
    v8->_mainWorkspace = v9;

    v8->_destination = destination;
    objc_storeStrong(&v8->_context, context);
  }

  return v8;
}

- (void)performTransitionWithCompletionBlock:(id)block
{
  if (block)
  {
    (*(block + 2))(block);
  }
}

- (void)_begin
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [(SBBaseStartupTransition *)self addMilestone:v4];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__SBBaseStartupTransition__begin__block_invoke;
  v7[3] = &unk_2783A92D8;
  v7[4] = self;
  v8 = v4;
  v5 = v4;
  [(SBBaseStartupTransition *)self performTransitionWithCompletionBlock:v7];
  v6.receiver = self;
  v6.super_class = SBBaseStartupTransition;
  [(SBBaseStartupTransition *)&v6 _begin];
}

@end