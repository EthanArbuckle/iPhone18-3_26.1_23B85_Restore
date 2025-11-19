@interface SVDSpeakerCapability
+ (id)capabilityDescriptionMatchingQualityScoreRangeWithLowerBound:(int64_t)a3 upperBound:(int64_t)a4;
+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)a3;
+ (id)newWithBuilder:(id)a3;
- (SVDSpeakerCapability)initWithCoder:(id)a3;
- (SVDSpeakerCapability)initWithStatus:(int64_t)a3 qualityScore:(int64_t)a4;
@end

@implementation SVDSpeakerCapability

- (SVDSpeakerCapability)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SVDSpeakerCapability;
  v5 = [(SVDSpeakerCapability *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVDSpeakerCapabilityBackingKey"];
    backing = v5->_backing;
    v5->_backing = v6;
  }

  return v5;
}

- (SVDSpeakerCapability)initWithStatus:(int64_t)a3 qualityScore:(int64_t)a4
{
  v10.receiver = self;
  v10.super_class = SVDSpeakerCapability;
  v6 = [(SVDSpeakerCapability *)&v10 init];
  if (v6)
  {
    v7 = [[_TtC27SiriVirtualDeviceResolution17SpeakerCapability alloc] initWithStatus:a3 qualityScore:a4];
    backing = v6->_backing;
    v6->_backing = v7;
  }

  return v6;
}

+ (id)capabilityDescriptionMatchingQualityScoreRangeWithLowerBound:(int64_t)a3 upperBound:(int64_t)a4
{
  v4 = [_TtC27SiriVirtualDeviceResolution17SpeakerCapability capabilityDescriptionMatchingQualityScoreRangeWithLowerBound:a3 upperBound:a4];
  v5 = [[SVDCapabilityDescription alloc] initWithBacking:v4];

  return v5;
}

+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)a3
{
  v3 = [_TtC27SiriVirtualDeviceResolution17SpeakerCapability capabilityDescriptionMatchingSupportStatus:a3];
  v4 = [[SVDCapabilityDescription alloc] initWithBacking:v3];

  return v4;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_SVDMutableSpeakerCapability);
  if (v3)
  {
    v3[2](v3, v4);
  }

  v5 = [[SVDSpeakerCapability alloc] initWithStatus:[(_SVDMutableSpeakerCapability *)v4 status] qualityScore:[(_SVDMutableSpeakerCapability *)v4 qualityScore]];

  return v5;
}

@end