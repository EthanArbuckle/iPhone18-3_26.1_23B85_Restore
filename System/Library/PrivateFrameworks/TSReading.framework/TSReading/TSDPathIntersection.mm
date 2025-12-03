@interface TSDPathIntersection
- (CGPoint)point;
- (TSDPathIntersection)initWithSegment:(int64_t)segment atT:(double)t onSegmentB:(int64_t)b atT:(double)atT atPoint:(CGPoint)point;
- (int64_t)compareSegmentAndT:(id)t;
- (int64_t)compareT:(id)t;
@end

@implementation TSDPathIntersection

- (TSDPathIntersection)initWithSegment:(int64_t)segment atT:(double)t onSegmentB:(int64_t)b atT:(double)atT atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v14.receiver = self;
  v14.super_class = TSDPathIntersection;
  result = [(TSDPathIntersection *)&v14 init];
  if (result)
  {
    result->mPoint.x = x;
    result->mPoint.y = y;
    result->mSegment = segment;
    result->mSegmentB = b;
    result->mT = t;
    result->mTB = atT;
  }

  return result;
}

- (int64_t)compareSegmentAndT:(id)t
{
  segment = [(TSDPathIntersection *)self segment];
  segment2 = [t segment];
  if (segment < segment2)
  {
    return -1;
  }

  if (segment > segment2)
  {
    return 1;
  }

  return [(TSDPathIntersection *)self compareT:t];
}

- (int64_t)compareT:(id)t
{
  [(TSDPathIntersection *)self t];
  v5 = v4;
  [t t];
  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

- (CGPoint)point
{
  x = self->mPoint.x;
  y = self->mPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end