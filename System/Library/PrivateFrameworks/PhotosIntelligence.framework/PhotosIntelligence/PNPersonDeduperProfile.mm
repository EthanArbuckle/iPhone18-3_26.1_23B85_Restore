@interface PNPersonDeduperProfile
- (id)copyWithZone:(_NSZone *)zone;
- (id)initForDetectionType:(signed __int16)type;
@end

@implementation PNPersonDeduperProfile

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  [(PNPersonDeduperProfile *)self strictMaximumDistance];
  [v4 setStrictMaximumDistance:?];
  [(PNPersonDeduperProfile *)self normalMaximumDistance];
  [v4 setNormalMaximumDistance:?];
  [(PNPersonDeduperProfile *)self fuzzyMaximumDistance];
  [v4 setFuzzyMaximumDistance:?];
  [v4 setShouldRelaxThreshold:{-[PNPersonDeduperProfile shouldRelaxThreshold](self, "shouldRelaxThreshold")}];
  [v4 setFaceProcessingVersion:{-[PNPersonDeduperProfile faceProcessingVersion](self, "faceProcessingVersion")}];
  return v4;
}

- (id)initForDetectionType:(signed __int16)type
{
  typeCopy = type;
  v8.receiver = self;
  v8.super_class = PNPersonDeduperProfile;
  result = [(PNPersonDeduperProfile *)&v8 init];
  v5 = 0.215;
  if (typeCopy != 1)
  {
    v5 = 0.125;
  }

  v6 = vdup_n_s32(typeCopy == 1);
  v7.i64[0] = v6.u32[0];
  v7.i64[1] = v6.u32[1];
  *(result + 1) = vbslq_s8(vcltzq_s64(vshlq_n_s64(v7, 0x3FuLL)), xmmword_1C7592FE0, xmmword_1C7592FD0);
  *(result + 4) = v5;
  *(result + 8) = 0;
  *(result + 5) = 15;
  return result;
}

@end