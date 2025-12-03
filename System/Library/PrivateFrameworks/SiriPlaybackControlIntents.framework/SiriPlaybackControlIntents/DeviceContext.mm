@interface DeviceContext
- (BOOL)isEqual:(id)equal;
- (DeviceContext)initWithIdentifier:(id)identifier displayString:(id)string pronunciationHint:(id)hint;
- (NSString)description;
@end

@implementation DeviceContext

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_268B380E4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = DeviceContext.isEqual(_:)(v8);

  sub_2688C058C(v8, &byte_2802A6450, &byte_268B3BE10);
  return v6 & 1;
}

- (NSString)description
{
  selfCopy = self;
  DeviceContext.description.getter();

  v3 = sub_268B37BC4();

  return v3;
}

- (DeviceContext)initWithIdentifier:(id)identifier displayString:(id)string pronunciationHint:(id)hint
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

  return DeviceContext.init(identifier:display:pronunciationHint:)();
}

@end