@interface TSDPathCut
- (TSDPathCut)initWithSegment:(int64_t)segment atT:(double)t withSkew:(double)skew;
@end

@implementation TSDPathCut

- (TSDPathCut)initWithSegment:(int64_t)segment atT:(double)t withSkew:(double)skew
{
  v9.receiver = self;
  v9.super_class = TSDPathCut;
  result = [(TSDPathCut *)&v9 init];
  if (result)
  {
    result->mSegment = segment;
    result->mT = t;
    result->mSkew = skew;
  }

  return result;
}

@end