@interface SVDSpeakerCapability
+ (id)capabilityDescriptionMatchingQualityScoreRangeWithLowerBound:(int64_t)bound upperBound:(int64_t)upperBound;
+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)status;
+ (id)newWithBuilder:(id)builder;
- (SVDSpeakerCapability)initWithCoder:(id)coder;
- (SVDSpeakerCapability)initWithStatus:(int64_t)status qualityScore:(int64_t)score;
@end

@implementation SVDSpeakerCapability

- (SVDSpeakerCapability)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SVDSpeakerCapability;
  v5 = [(SVDSpeakerCapability *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVDSpeakerCapabilityBackingKey"];
    backing = v5->_backing;
    v5->_backing = v6;
  }

  return v5;
}

- (SVDSpeakerCapability)initWithStatus:(int64_t)status qualityScore:(int64_t)score
{
  v10.receiver = self;
  v10.super_class = SVDSpeakerCapability;
  v6 = [(SVDSpeakerCapability *)&v10 init];
  if (v6)
  {
    v7 = [[_TtC27SiriVirtualDeviceResolution17SpeakerCapability alloc] initWithStatus:status qualityScore:score];
    backing = v6->_backing;
    v6->_backing = v7;
  }

  return v6;
}

+ (id)capabilityDescriptionMatchingQualityScoreRangeWithLowerBound:(int64_t)bound upperBound:(int64_t)upperBound
{
  v4 = [_TtC27SiriVirtualDeviceResolution17SpeakerCapability capabilityDescriptionMatchingQualityScoreRangeWithLowerBound:bound upperBound:upperBound];
  v5 = [[SVDCapabilityDescription alloc] initWithBacking:v4];

  return v5;
}

+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)status
{
  v3 = [_TtC27SiriVirtualDeviceResolution17SpeakerCapability capabilityDescriptionMatchingSupportStatus:status];
  v4 = [[SVDCapabilityDescription alloc] initWithBacking:v3];

  return v4;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = objc_alloc_init(_SVDMutableSpeakerCapability);
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v4);
  }

  v5 = [[SVDSpeakerCapability alloc] initWithStatus:[(_SVDMutableSpeakerCapability *)v4 status] qualityScore:[(_SVDMutableSpeakerCapability *)v4 qualityScore]];

  return v5;
}

@end