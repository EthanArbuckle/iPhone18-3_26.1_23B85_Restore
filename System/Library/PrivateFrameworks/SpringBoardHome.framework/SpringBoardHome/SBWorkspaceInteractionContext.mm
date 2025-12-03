@interface SBWorkspaceInteractionContext
- (SBWorkspaceInteractionContext)initWithGestureRecognizer:(id)recognizer;
- (SBWorkspaceInteractionContext)initWithInteractionProgress:(id)progress;
@end

@implementation SBWorkspaceInteractionContext

- (SBWorkspaceInteractionContext)initWithInteractionProgress:(id)progress
{
  progressCopy = progress;
  v9.receiver = self;
  v9.super_class = SBWorkspaceInteractionContext;
  v6 = [(SBWorkspaceInteractionContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_interactionProgress, progress);
  }

  return v7;
}

- (SBWorkspaceInteractionContext)initWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  v9.receiver = self;
  v9.super_class = SBWorkspaceInteractionContext;
  v6 = [(SBWorkspaceInteractionContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_gestureRecognizer, recognizer);
  }

  return v7;
}

@end