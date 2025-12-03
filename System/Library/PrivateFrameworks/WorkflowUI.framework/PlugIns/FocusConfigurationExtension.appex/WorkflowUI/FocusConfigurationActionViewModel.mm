@interface FocusConfigurationActionViewModel
- (void)action:(id)action parameterStateDidChangeForKey:(id)key;
- (void)parameterAttributesDidChange:(id)change;
@end

@implementation FocusConfigurationActionViewModel

- (void)action:(id)action parameterStateDidChangeForKey:(id)key
{
  v6 = sub_10001DD14();
  v8 = v7;
  actionCopy = action;
  selfCopy = self;
  sub_1000126A4(actionCopy, v6, v8);
}

- (void)parameterAttributesDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100012A0C(changeCopy);
}

@end