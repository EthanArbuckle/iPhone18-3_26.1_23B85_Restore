@interface SpeakerCapability
+ (id)capabilityDescriptionMatchingQualityScoreRangeWithLowerBound:(int64_t)bound upperBound:(int64_t)upperBound;
+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)status;
- (BOOL)matchesWithDescriptions:(id)descriptions;
- (NSString)key;
- (int64_t)qualityScore;
- (int64_t)supportStatus;
- (void)encodeWithCoder:(id)coder;
- (void)setKey:(id)key;
@end

@implementation SpeakerCapability

- (NSString)key
{
  sub_2698D313C();
  v2 = sub_2699038FC();

  return v2;
}

- (void)setKey:(id)key
{
  v4 = sub_26990390C();
  v6 = v5;
  selfCopy = self;
  sub_2698D3204(v4, v6);
}

- (int64_t)supportStatus
{
  selfCopy = self;
  v3 = sub_2698D3580();

  return v3;
}

- (int64_t)qualityScore
{
  selfCopy = self;
  v3 = sub_2698D3658();

  return v3;
}

+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)status
{
  v3 = sub_2698D3764(status);

  return v3;
}

+ (id)capabilityDescriptionMatchingQualityScoreRangeWithLowerBound:(int64_t)bound upperBound:(int64_t)upperBound
{
  sub_2698D37DC(bound, upperBound);

  return v4;
}

- (BOOL)matchesWithDescriptions:(id)descriptions
{
  type metadata accessor for CapabilityDescription();
  v4 = sub_269903A0C();
  selfCopy = self;
  v6 = sub_2698D3864(v4);

  return v6 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_2698D3B74(coderCopy);
}

@end