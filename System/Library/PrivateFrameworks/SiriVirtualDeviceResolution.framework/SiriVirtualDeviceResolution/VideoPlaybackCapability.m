@interface VideoPlaybackCapability
+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)a3;
- (BOOL)matchesWithDescriptions:(id)a3;
- (NSString)key;
- (int64_t)supportsVideoPlayback;
- (void)encodeWithCoder:(id)a3;
- (void)setKey:(id)a3;
@end

@implementation VideoPlaybackCapability

- (NSString)key
{
  sub_2698FD494();
  v2 = sub_2699038FC();

  return v2;
}

- (void)setKey:(id)a3
{
  v4 = sub_26990390C();
  v6 = v5;
  v7 = self;
  sub_2698FD55C(v4, v6);
}

- (int64_t)supportsVideoPlayback
{
  v2 = self;
  v3 = sub_2698FD844();

  return v3;
}

+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)a3
{
  v3 = sub_2698FD8E8(a3);

  return v3;
}

- (BOOL)matchesWithDescriptions:(id)a3
{
  type metadata accessor for CapabilityDescription();
  v4 = sub_269903A0C();
  v5 = self;
  sub_2698FD960(v4);
  v7 = v6;

  return v7 & 1;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2698FDD48(v4);
}

@end