@interface CROutputRegionTranscriptComponent
- (BOOL)isEqual:(id)equal;
- (CROutputRegionTranscriptComponent)initWithOutputRegion:(id)region range:(_NSRange)range;
- (_NSRange)representedRange;
- (id)copyWithZone:(_NSZone *)zone;
- (id)crCodableDataRepresentation;
@end

@implementation CROutputRegionTranscriptComponent

- (CROutputRegionTranscriptComponent)initWithOutputRegion:(id)region range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  regionCopy = region;
  v12.receiver = self;
  v12.super_class = CROutputRegionTranscriptComponent;
  v9 = [(CROutputRegionTranscriptComponent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_outputRegion, region);
    v10->_representedRange.location = location;
    v10->_representedRange.length = length;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    outputRegion = [(CROutputRegionTranscriptComponent *)self outputRegion];
    outputRegion2 = [(CROutputRegionTranscriptComponent *)equalCopy outputRegion];
    if ([outputRegion isEqual:outputRegion2])
    {
      representedRange = [(CROutputRegionTranscriptComponent *)self representedRange];
      v9 = v8;
      v12 = representedRange == [(CROutputRegionTranscriptComponent *)equalCopy representedRange]&& v9 == v10;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CROutputRegionTranscriptComponent allocWithZone:zone];
  outputRegion = [(CROutputRegionTranscriptComponent *)self outputRegion];
  representedRange = [(CROutputRegionTranscriptComponent *)self representedRange];
  v8 = [(CROutputRegionTranscriptComponent *)v4 initWithOutputRegion:outputRegion range:representedRange, v7];

  return v8;
}

- (id)crCodableDataRepresentation
{
  v3 = objc_opt_new();
  [CRCodingUtilities appendInteger:11 toData:v3];
  outputRegion = [(CROutputRegionTranscriptComponent *)self outputRegion];
  [CRCodingUtilities appendCodable:outputRegion toData:v3];

  representedRange = [(CROutputRegionTranscriptComponent *)self representedRange];
  [CRCodingUtilities appendRange:representedRange toData:v6, v3];

  return v3;
}

- (_NSRange)representedRange
{
  objc_copyStruct(v4, &self->_representedRange, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.length = v3;
  result.location = v2;
  return result;
}

@end