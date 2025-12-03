@interface WFWorkflowActionTree.ActionObserver
- (void)action:(id)action parameterStateDidChangeForKey:(id)key;
@end

@implementation WFWorkflowActionTree.ActionObserver

- (void)action:(id)action parameterStateDidChangeForKey:(id)key
{
  sub_1CA94C3A8();
  actionCopy = action;
  selfCopy = self;
  sub_1CA6AC510();
}

@end