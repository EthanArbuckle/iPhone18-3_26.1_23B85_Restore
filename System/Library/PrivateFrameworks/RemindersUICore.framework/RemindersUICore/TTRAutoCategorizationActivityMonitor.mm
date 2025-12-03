@interface TTRAutoCategorizationActivityMonitor
- (void)autoCategorizationActivityDidChange:(id)change;
@end

@implementation TTRAutoCategorizationActivityMonitor

- (void)autoCategorizationActivityDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_21DBF908C();
}

@end