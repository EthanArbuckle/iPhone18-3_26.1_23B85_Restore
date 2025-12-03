@interface CustomTimerIntentHandlingCapability
+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)status;
- (BOOL)matchesWithDescriptions:(id)descriptions;
- (NSString)key;
- (int64_t)supportsCustomTimerIntentHandling;
- (void)encodeWithCoder:(id)coder;
- (void)setKey:(id)key;
@end

@implementation CustomTimerIntentHandlingCapability

- (NSString)key
{
  sub_2698FC828();
  v2 = sub_2699038FC();

  return v2;
}

- (void)setKey:(id)key
{
  v4 = sub_26990390C();
  v6 = v5;
  selfCopy = self;
  sub_2698FC8F0(v4, v6);
}

- (int64_t)supportsCustomTimerIntentHandling
{
  selfCopy = self;
  v3 = sub_2698FCBD8();

  return v3;
}

+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)status
{
  v3 = sub_2698FCC7C(status);

  return v3;
}

- (BOOL)matchesWithDescriptions:(id)descriptions
{
  type metadata accessor for CapabilityDescription();
  v4 = sub_269903A0C();
  selfCopy = self;
  sub_2698FCCF4(v4);
  v7 = v6;

  return v7 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_2698FCFC4(coderCopy);
}

@end