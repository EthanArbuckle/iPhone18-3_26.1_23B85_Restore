@interface SBUIWorkspaceAnimationController
- (SBUIWorkspaceAnimationController)initWithTransitionContextProvider:(id)a3;
- (SBUIWorkspaceAnimationController)initWithWorkspaceTransitionRequest:(id)a3;
@end

@implementation SBUIWorkspaceAnimationController

- (SBUIWorkspaceAnimationController)initWithWorkspaceTransitionRequest:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBUIWorkspaceAnimationController;
  return [(SBUIAnimationController *)&v4 initWithTransitionContextProvider:a3];
}

- (SBUIWorkspaceAnimationController)initWithTransitionContextProvider:(id)a3
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE648];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v4 raise:v5 format:{@"%s is not a valid initializer. You must call -[%@ initWithWorkspaceTransitionRequest:].", "-[SBUIWorkspaceAnimationController initWithTransitionContextProvider:]", v7}];

  return [(SBUIWorkspaceAnimationController *)self initWithWorkspaceTransitionRequest:0];
}

@end