@interface SBWorkspaceEntityRemovalContext
- (SBWorkspaceEntityRemovalContext)initWithAnimationStyle:(unint64_t)style removalActionType:(unint64_t)type;
@end

@implementation SBWorkspaceEntityRemovalContext

- (SBWorkspaceEntityRemovalContext)initWithAnimationStyle:(unint64_t)style removalActionType:(unint64_t)type
{
  v7.receiver = self;
  v7.super_class = SBWorkspaceEntityRemovalContext;
  result = [(SBWorkspaceEntityRemovalContext *)&v7 init];
  if (result)
  {
    result->_animationStyle = style;
    result->_removalActionType = type;
  }

  return result;
}

@end