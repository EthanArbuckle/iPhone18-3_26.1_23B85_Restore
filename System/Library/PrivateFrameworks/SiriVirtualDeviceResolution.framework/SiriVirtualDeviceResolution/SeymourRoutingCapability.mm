@interface SeymourRoutingCapability
+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)status;
- (BOOL)matchesWithDescriptions:(id)descriptions;
- (NSString)key;
- (int64_t)supportsSeymourRouting;
- (void)encodeWithCoder:(id)coder;
- (void)setKey:(id)key;
@end

@implementation SeymourRoutingCapability

- (NSString)key
{
  sub_269900000();
  v2 = sub_2699038FC();

  return v2;
}

- (void)setKey:(id)key
{
  v4 = sub_26990390C();
  v6 = v5;
  selfCopy = self;
  sub_2699000C8(v4, v6);
}

- (int64_t)supportsSeymourRouting
{
  selfCopy = self;
  v3 = sub_2699003B0();

  return v3;
}

+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)status
{
  v3 = sub_269900454(status);

  return v3;
}

- (BOOL)matchesWithDescriptions:(id)descriptions
{
  type metadata accessor for CapabilityDescription();
  v4 = sub_269903A0C();
  selfCopy = self;
  sub_2699004CC(v4);
  v7 = v6;

  return v7 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_26990079C(coderCopy);
}

@end