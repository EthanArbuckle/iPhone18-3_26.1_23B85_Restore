@interface FocusConfigurationActionViewModel
- (void)action:(id)a3 parameterStateDidChangeForKey:(id)a4;
- (void)parameterAttributesDidChange:(id)a3;
@end

@implementation FocusConfigurationActionViewModel

- (void)action:(id)a3 parameterStateDidChangeForKey:(id)a4
{
  v6 = sub_10001DD14();
  v8 = v7;
  v9 = a3;
  v10 = self;
  sub_1000126A4(v9, v6, v8);
}

- (void)parameterAttributesDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100012A0C(v4);
}

@end