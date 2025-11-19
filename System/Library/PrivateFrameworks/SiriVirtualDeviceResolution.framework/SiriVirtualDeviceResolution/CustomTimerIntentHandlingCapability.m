@interface CustomTimerIntentHandlingCapability
+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)a3;
- (BOOL)matchesWithDescriptions:(id)a3;
- (NSString)key;
- (int64_t)supportsCustomTimerIntentHandling;
- (void)encodeWithCoder:(id)a3;
- (void)setKey:(id)a3;
@end

@implementation CustomTimerIntentHandlingCapability

- (NSString)key
{
  sub_2698FC828();
  v2 = sub_2699038FC();

  return v2;
}

- (void)setKey:(id)a3
{
  v4 = sub_26990390C();
  v6 = v5;
  v7 = self;
  sub_2698FC8F0(v4, v6);
}

- (int64_t)supportsCustomTimerIntentHandling
{
  v2 = self;
  v3 = sub_2698FCBD8();

  return v3;
}

+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)a3
{
  v3 = sub_2698FCC7C(a3);

  return v3;
}

- (BOOL)matchesWithDescriptions:(id)a3
{
  type metadata accessor for CapabilityDescription();
  v4 = sub_269903A0C();
  v5 = self;
  sub_2698FCCF4(v4);
  v7 = v6;

  return v7 & 1;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2698FCFC4(v4);
}

@end