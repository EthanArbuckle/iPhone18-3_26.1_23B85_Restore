@interface WFToolKitDynamicEnumerationDefinition
- (NSString)actionIdentifier;
- (NSString)parameterKey;
- (WFToolKitDynamicEnumerationDefinition)initWithActionIdentifier:(id)a3 parameterKey:(id)a4;
- (void)setActionIdentifier:(id)a3;
- (void)setParameterKey:(id)a3;
@end

@implementation WFToolKitDynamicEnumerationDefinition

- (NSString)actionIdentifier
{
  v2 = ToolKitHelper.DynamicEnumerationDefinition.actionIdentifier.getter();

  return v2;
}

- (void)setActionIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  ToolKitHelper.DynamicEnumerationDefinition.actionIdentifier.setter(v4);
}

- (NSString)parameterKey
{
  v2 = ToolKitHelper.DynamicEnumerationDefinition.parameterKey.getter();

  return v2;
}

- (void)setParameterKey:(id)a3
{
  v4 = a3;
  v5 = self;
  ToolKitHelper.DynamicEnumerationDefinition.parameterKey.setter(v4);
}

- (WFToolKitDynamicEnumerationDefinition)initWithActionIdentifier:(id)a3 parameterKey:(id)a4
{
  sub_10008A268();
  sub_10008A268();
  return ToolKitHelper.DynamicEnumerationDefinition.init(actionIdentifier:parameterKey:)();
}

@end