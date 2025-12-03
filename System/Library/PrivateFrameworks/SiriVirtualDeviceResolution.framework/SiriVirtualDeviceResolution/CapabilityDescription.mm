@interface CapabilityDescription
- (NSNumber)valueRangeLowerBound;
- (NSNumber)valueRangeUpperBound;
- (NSSet)valueSet;
- (NSString)capabilityKey;
- (NSString)description;
- (NSString)key;
- (_TtC27SiriVirtualDeviceResolution21CapabilityDescription)initWithKey:(id)key lowerbound:(double)lowerbound upperbound:(double)upperbound;
- (_TtC27SiriVirtualDeviceResolution21CapabilityDescription)initWithKey:(id)key valueSet:(id)set;
- (id)copyWithZone:(void *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CapabilityDescription

- (NSString)key
{
  CapabilityDescription.key.getter();
  v2 = sub_2699038FC();

  return v2;
}

- (NSSet)valueSet
{
  if (CapabilityDescription.valueSet.getter())
  {
    sub_2698D23FC(0, &qword_28131C3F0, 0x277D82BB8);
    sub_2698E47B8();
    v2 = sub_269903A9C();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (NSString)capabilityKey
{
  selfCopy = self;
  CapabilityDescription.capabilityKey.getter();
  v4 = v3;

  if (v4)
  {
    v5 = sub_2699038FC();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSNumber)valueRangeLowerBound
{
  selfCopy = self;
  v3 = CapabilityDescription.valueRangeLowerBound.getter();

  return v3;
}

- (NSNumber)valueRangeUpperBound
{
  selfCopy = self;
  v3 = CapabilityDescription.valueRangeUpperBound.getter();

  return v3;
}

- (_TtC27SiriVirtualDeviceResolution21CapabilityDescription)initWithKey:(id)key valueSet:(id)set
{
  sub_26990390C();
  sub_2698D23FC(0, &qword_28131C3F0, 0x277D82BB8);
  sub_2698E47B8();
  sub_269903AAC();
  return CapabilityDescription.init(key:valueSet:)();
}

- (_TtC27SiriVirtualDeviceResolution21CapabilityDescription)initWithKey:(id)key lowerbound:(double)lowerbound upperbound:(double)upperbound
{
  sub_26990390C();
  CapabilityDescription.init(key:lowerbound:upperbound:)(lowerbound, upperbound);
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  CapabilityDescription.encode(with:)(coderCopy);
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  CapabilityDescription.copy(with:)(v6);

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = sub_269903F9C();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

- (NSString)description
{
  selfCopy = self;
  CapabilityDescription.description.getter();

  v3 = sub_2699038FC();

  return v3;
}

@end