@interface WFToolKitDynamicEnumerationDefinition
- (NSString)actionIdentifier;
- (NSString)parameterKey;
- (WFToolKitDynamicEnumerationDefinition)initWithActionIdentifier:(id)identifier parameterKey:(id)key;
- (void)setActionIdentifier:(id)identifier;
- (void)setParameterKey:(id)key;
@end

@implementation WFToolKitDynamicEnumerationDefinition

- (NSString)actionIdentifier
{
  v2 = ToolKitHelper.DynamicEnumerationDefinition.actionIdentifier.getter();

  return v2;
}

- (void)setActionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  ToolKitHelper.DynamicEnumerationDefinition.actionIdentifier.setter(identifierCopy);
}

- (NSString)parameterKey
{
  v2 = ToolKitHelper.DynamicEnumerationDefinition.parameterKey.getter();

  return v2;
}

- (void)setParameterKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  ToolKitHelper.DynamicEnumerationDefinition.parameterKey.setter(keyCopy);
}

- (WFToolKitDynamicEnumerationDefinition)initWithActionIdentifier:(id)identifier parameterKey:(id)key
{
  sub_10008A268();
  sub_10008A268();
  return ToolKitHelper.DynamicEnumerationDefinition.init(actionIdentifier:parameterKey:)();
}

@end