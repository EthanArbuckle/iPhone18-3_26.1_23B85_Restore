@interface ProfileSwitchingCapability
+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)status;
- (BOOL)matchesWithDescriptions:(id)descriptions;
- (NSString)key;
- (int64_t)supportsProfileSwitching;
- (void)encodeWithCoder:(id)coder;
- (void)setKey:(id)key;
@end

@implementation ProfileSwitchingCapability

- (NSString)key
{
  sub_2698D40E0();
  v2 = sub_2699038FC();

  return v2;
}

- (void)setKey:(id)key
{
  v4 = sub_26990390C();
  v6 = v5;
  selfCopy = self;
  sub_2698D41A8(v4, v6);
}

- (int64_t)supportsProfileSwitching
{
  selfCopy = self;
  v3 = sub_2698D44C4();

  return v3;
}

+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)status
{
  v3 = sub_2698D4568(status);

  return v3;
}

- (BOOL)matchesWithDescriptions:(id)descriptions
{
  type metadata accessor for CapabilityDescription();
  v4 = sub_269903A0C();
  selfCopy = self;
  sub_2698D45E0(v4);
  v7 = v6;

  return v7 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_2698D48B0(coderCopy);
}

@end