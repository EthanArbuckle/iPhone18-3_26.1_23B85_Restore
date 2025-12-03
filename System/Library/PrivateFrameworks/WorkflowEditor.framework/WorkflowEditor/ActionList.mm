@interface ActionList
- (void)workflowConnectorStateDidChange:(id)change;
@end

@implementation ActionList

- (void)workflowConnectorStateDidChange:(id)change
{
  changeCopy = change;

  sub_27451EF40();
}

@end