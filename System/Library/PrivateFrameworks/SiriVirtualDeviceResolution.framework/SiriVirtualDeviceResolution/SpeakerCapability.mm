@interface SpeakerCapability
+ (id)capabilityDescriptionMatchingQualityScoreRangeWithLowerBound:(int64_t)a3 upperBound:(int64_t)a4;
+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)a3;
- (BOOL)matchesWithDescriptions:(id)a3;
- (NSString)key;
- (int64_t)qualityScore;
- (int64_t)supportStatus;
- (void)encodeWithCoder:(id)a3;
- (void)setKey:(id)a3;
@end

@implementation SpeakerCapability

- (NSString)key
{
  sub_2698D313C();
  v2 = sub_2699038FC();

  return v2;
}

- (void)setKey:(id)a3
{
  v4 = sub_26990390C();
  v6 = v5;
  v7 = self;
  sub_2698D3204(v4, v6);
}

- (int64_t)supportStatus
{
  v2 = self;
  v3 = sub_2698D3580();

  return v3;
}

- (int64_t)qualityScore
{
  v2 = self;
  v3 = sub_2698D3658();

  return v3;
}

+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)a3
{
  v3 = sub_2698D3764(a3);

  return v3;
}

+ (id)capabilityDescriptionMatchingQualityScoreRangeWithLowerBound:(int64_t)a3 upperBound:(int64_t)a4
{
  sub_2698D37DC(a3, a4);

  return v4;
}

- (BOOL)matchesWithDescriptions:(id)a3
{
  type metadata accessor for CapabilityDescription();
  v4 = sub_269903A0C();
  v5 = self;
  v6 = sub_2698D3864(v4);

  return v6 & 1;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2698D3B74(v4);
}

@end