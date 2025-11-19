@interface DeviceContext
- (BOOL)isEqual:(id)a3;
- (DeviceContext)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5;
- (NSString)description;
@end

@implementation DeviceContext

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_268B380E4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = DeviceContext.isEqual(_:)(v8);

  sub_2688C058C(v8, &byte_2802A6450, &byte_268B3BE10);
  return v6 & 1;
}

- (NSString)description
{
  v2 = self;
  DeviceContext.description.getter();

  v3 = sub_268B37BC4();

  return v3;
}

- (DeviceContext)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5
{
  if (a3)
  {
    sub_268B37BF4();
  }

  sub_268B37BF4();
  if (a5)
  {
    sub_268B37BF4();
  }

  return DeviceContext.init(identifier:display:pronunciationHint:)();
}

@end