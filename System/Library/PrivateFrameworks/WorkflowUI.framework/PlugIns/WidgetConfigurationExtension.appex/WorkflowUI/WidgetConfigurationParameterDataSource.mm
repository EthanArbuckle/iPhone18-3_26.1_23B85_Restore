@interface WidgetConfigurationParameterDataSource
- (void)action:(id)a3 parameterStateDidChangeForKey:(id)a4;
- (void)parameterAttributesDidChange:(id)a3;
@end

@implementation WidgetConfigurationParameterDataSource

- (void)action:(id)a3 parameterStateDidChangeForKey:(id)a4
{
  sub_10001B8E4();
  v6 = a3;
  v7 = self;
  sub_10000C118();
}

- (void)parameterAttributesDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000C5B8();
}

@end