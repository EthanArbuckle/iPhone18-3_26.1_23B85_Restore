@interface SBWorkspaceTransientOverlayTransitionContext
- (SBWindowScene)windowScene;
- (SBWorkspaceTransientOverlayTransitionContext)init;
- (id)compactDescriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation SBWorkspaceTransientOverlayTransitionContext

- (SBWorkspaceTransientOverlayTransitionContext)init
{
  v3.receiver = self;
  v3.super_class = SBWorkspaceTransientOverlayTransitionContext;
  result = [(SBWorkspaceTransitionContext *)&v3 init];
  if (result)
  {
    result->_animated = 1;
    result->_shouldDismissSiriUponPresentation = 1;
  }

  return result;
}

- (id)compactDescriptionBuilderWithMultilinePrefix:(id)prefix
{
  v11.receiver = self;
  v11.super_class = SBWorkspaceTransientOverlayTransitionContext;
  v4 = [(SBWorkspaceTransitionContext *)&v11 compactDescriptionBuilderWithMultilinePrefix:prefix];
  v5 = [v4 appendObject:self->_transientOverlay withName:@"transientOverlay" skipIfNil:1];
  transitionType = self->_transitionType;
  v7 = @"dismissal";
  if (transitionType != 1)
  {
    v7 = 0;
  }

  if (transitionType)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"presentation";
  }

  v9 = [v4 appendObject:v8 withName:@"transitionType" skipIfNil:1];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v12.receiver = self;
  v12.super_class = SBWorkspaceTransientOverlayTransitionContext;
  prefixCopy = prefix;
  v5 = [(SBWorkspaceTransitionContext *)&v12 descriptionBuilderWithMultilinePrefix:prefixCopy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __86__SBWorkspaceTransientOverlayTransitionContext_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = v5;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

id __86__SBWorkspaceTransientOverlayTransitionContext_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 88) withName:@"transientOverlay" skipIfNil:1];
  v3 = *(*(a1 + 40) + 96);
  v4 = @"dismissal";
  if (v3 != 1)
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"presentation";
  }

  return [*(a1 + 32) appendObject:v5 withName:@"transitionType" skipIfNil:1];
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

@end