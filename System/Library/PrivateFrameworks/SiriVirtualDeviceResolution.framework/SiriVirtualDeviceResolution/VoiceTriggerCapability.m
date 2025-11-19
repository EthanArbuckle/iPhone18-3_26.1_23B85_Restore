@interface VoiceTriggerCapability
+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)a3;
- (BOOL)matchesWithDescriptions:(id)a3;
- (NSString)key;
- (int64_t)supportsVoiceTrigger;
- (void)encodeWithCoder:(id)a3;
- (void)setKey:(id)a3;
@end

@implementation VoiceTriggerCapability

- (NSString)key
{
  sub_2698CFF2C();
  v2 = sub_2699038FC();

  return v2;
}

- (void)setKey:(id)a3
{
  v4 = sub_26990390C();
  v6 = v5;
  v7 = self;
  sub_2698CFFF4(v4, v6);
}

- (int64_t)supportsVoiceTrigger
{
  v2 = self;
  v3 = sub_2698D0BEC();

  return v3;
}

+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)a3
{
  v3 = sub_2698D0D90(a3);

  return v3;
}

- (BOOL)matchesWithDescriptions:(id)a3
{
  type metadata accessor for CapabilityDescription();
  v4 = sub_269903A0C();
  v5 = self;
  sub_2698D0E08(v4);
  v7 = v6;

  return v7 & 1;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2698D1774(v4);
}

@end