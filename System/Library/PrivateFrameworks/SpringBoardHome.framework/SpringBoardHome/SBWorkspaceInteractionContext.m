@interface SBWorkspaceInteractionContext
- (SBWorkspaceInteractionContext)initWithGestureRecognizer:(id)a3;
- (SBWorkspaceInteractionContext)initWithInteractionProgress:(id)a3;
@end

@implementation SBWorkspaceInteractionContext

- (SBWorkspaceInteractionContext)initWithInteractionProgress:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBWorkspaceInteractionContext;
  v6 = [(SBWorkspaceInteractionContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_interactionProgress, a3);
  }

  return v7;
}

- (SBWorkspaceInteractionContext)initWithGestureRecognizer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBWorkspaceInteractionContext;
  v6 = [(SBWorkspaceInteractionContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_gestureRecognizer, a3);
  }

  return v7;
}

@end