@interface DeviceQuery
- (DeviceQuery)initWithIdentifier:(id)identifier displayString:(id)string pronunciationHint:(id)hint;
@end

@implementation DeviceQuery

- (DeviceQuery)initWithIdentifier:(id)identifier displayString:(id)string pronunciationHint:(id)hint
{
  if (identifier)
  {
    sub_268B37BF4();
  }

  sub_268B37BF4();
  if (hint)
  {
    sub_268B37BF4();
  }

  return DeviceQuery.init(identifier:display:pronunciationHint:)();
}

@end