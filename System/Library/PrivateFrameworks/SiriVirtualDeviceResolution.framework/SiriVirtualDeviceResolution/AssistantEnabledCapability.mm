@interface AssistantEnabledCapability
+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)status;
- (BOOL)matchesWithDescriptions:(id)descriptions;
- (NSString)key;
- (int64_t)supportsAssistantEnabled;
- (void)encodeWithCoder:(id)coder;
- (void)setKey:(id)key;
@end

@implementation AssistantEnabledCapability

- (NSString)key
{
  sub_2698FA308();
  v2 = sub_2699038FC();

  return v2;
}

- (void)setKey:(id)key
{
  v4 = sub_26990390C();
  v6 = v5;
  selfCopy = self;
  sub_2698FA3D0(v4, v6);
}

- (int64_t)supportsAssistantEnabled
{
  selfCopy = self;
  v3 = sub_2698FA6B8();

  return v3;
}

+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)status
{
  v3 = sub_2698FA75C(status);

  return v3;
}

- (BOOL)matchesWithDescriptions:(id)descriptions
{
  type metadata accessor for CapabilityDescription();
  v4 = sub_269903A0C();
  selfCopy = self;
  v6 = sub_2698FA7D4(v4);

  return v6 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_2698FAB94(coderCopy);
}

@end