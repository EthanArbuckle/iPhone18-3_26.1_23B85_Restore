@interface AppLaunchCapability
+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)status;
- (BOOL)matchesWithDescriptions:(id)descriptions;
- (NSString)key;
- (int64_t)supportsAppLaunch;
- (void)encodeWithCoder:(id)coder;
- (void)setKey:(id)key;
@end

@implementation AppLaunchCapability

- (NSString)key
{
  sub_2698FBBBC();
  v2 = sub_2699038FC();

  return v2;
}

- (void)setKey:(id)key
{
  v4 = sub_26990390C();
  v6 = v5;
  selfCopy = self;
  sub_2698FBC84(v4, v6);
}

- (int64_t)supportsAppLaunch
{
  selfCopy = self;
  v3 = sub_2698FBF6C();

  return v3;
}

+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)status
{
  v3 = sub_2698FC010(status);

  return v3;
}

- (BOOL)matchesWithDescriptions:(id)descriptions
{
  type metadata accessor for CapabilityDescription();
  v4 = sub_269903A0C();
  selfCopy = self;
  sub_2698FC088(v4);
  v7 = v6;

  return v7 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_2698FC358(coderCopy);
}

@end