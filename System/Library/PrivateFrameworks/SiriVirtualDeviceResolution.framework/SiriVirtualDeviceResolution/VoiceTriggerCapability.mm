@interface VoiceTriggerCapability
+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)status;
- (BOOL)matchesWithDescriptions:(id)descriptions;
- (NSString)key;
- (int64_t)supportsVoiceTrigger;
- (void)encodeWithCoder:(id)coder;
- (void)setKey:(id)key;
@end

@implementation VoiceTriggerCapability

- (NSString)key
{
  sub_2698CFF2C();
  v2 = sub_2699038FC();

  return v2;
}

- (void)setKey:(id)key
{
  v4 = sub_26990390C();
  v6 = v5;
  selfCopy = self;
  sub_2698CFFF4(v4, v6);
}

- (int64_t)supportsVoiceTrigger
{
  selfCopy = self;
  v3 = sub_2698D0BEC();

  return v3;
}

+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)status
{
  v3 = sub_2698D0D90(status);

  return v3;
}

- (BOOL)matchesWithDescriptions:(id)descriptions
{
  type metadata accessor for CapabilityDescription();
  v4 = sub_269903A0C();
  selfCopy = self;
  sub_2698D0E08(v4);
  v7 = v6;

  return v7 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_2698D1774(coderCopy);
}

@end