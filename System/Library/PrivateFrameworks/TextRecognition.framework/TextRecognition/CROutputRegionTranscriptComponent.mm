@interface CROutputRegionTranscriptComponent
- (BOOL)isEqual:(id)a3;
- (CROutputRegionTranscriptComponent)initWithOutputRegion:(id)a3 range:(_NSRange)a4;
- (_NSRange)representedRange;
- (id)copyWithZone:(_NSZone *)a3;
- (id)crCodableDataRepresentation;
@end

@implementation CROutputRegionTranscriptComponent

- (CROutputRegionTranscriptComponent)initWithOutputRegion:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v8 = a3;
  v12.receiver = self;
  v12.super_class = CROutputRegionTranscriptComponent;
  v9 = [(CROutputRegionTranscriptComponent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_outputRegion, a3);
    v10->_representedRange.location = location;
    v10->_representedRange.length = length;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    v5 = [(CROutputRegionTranscriptComponent *)self outputRegion];
    v6 = [(CROutputRegionTranscriptComponent *)v4 outputRegion];
    if ([v5 isEqual:v6])
    {
      v7 = [(CROutputRegionTranscriptComponent *)self representedRange];
      v9 = v8;
      v12 = v7 == [(CROutputRegionTranscriptComponent *)v4 representedRange]&& v9 == v10;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CROutputRegionTranscriptComponent allocWithZone:a3];
  v5 = [(CROutputRegionTranscriptComponent *)self outputRegion];
  v6 = [(CROutputRegionTranscriptComponent *)self representedRange];
  v8 = [(CROutputRegionTranscriptComponent *)v4 initWithOutputRegion:v5 range:v6, v7];

  return v8;
}

- (id)crCodableDataRepresentation
{
  v3 = objc_opt_new();
  [CRCodingUtilities appendInteger:11 toData:v3];
  v4 = [(CROutputRegionTranscriptComponent *)self outputRegion];
  [CRCodingUtilities appendCodable:v4 toData:v3];

  v5 = [(CROutputRegionTranscriptComponent *)self representedRange];
  [CRCodingUtilities appendRange:v5 toData:v6, v3];

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