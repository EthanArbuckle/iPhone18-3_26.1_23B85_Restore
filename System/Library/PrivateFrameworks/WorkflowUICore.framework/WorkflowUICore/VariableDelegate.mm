@interface VariableDelegate
- (void)variableDidChange:(id)change;
@end

@implementation VariableDelegate

- (void)variableDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_274B69628();
}

@end