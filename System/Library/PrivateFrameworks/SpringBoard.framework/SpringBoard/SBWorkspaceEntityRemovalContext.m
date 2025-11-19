@interface SBWorkspaceEntityRemovalContext
- (SBWorkspaceEntityRemovalContext)initWithAnimationStyle:(unint64_t)a3 removalActionType:(unint64_t)a4;
@end

@implementation SBWorkspaceEntityRemovalContext

- (SBWorkspaceEntityRemovalContext)initWithAnimationStyle:(unint64_t)a3 removalActionType:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = SBWorkspaceEntityRemovalContext;
  result = [(SBWorkspaceEntityRemovalContext *)&v7 init];
  if (result)
  {
    result->_animationStyle = a3;
    result->_removalActionType = a4;
  }

  return result;
}

@end