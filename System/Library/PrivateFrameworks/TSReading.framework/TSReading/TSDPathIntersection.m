@interface TSDPathIntersection
- (CGPoint)point;
- (TSDPathIntersection)initWithSegment:(int64_t)a3 atT:(double)a4 onSegmentB:(int64_t)a5 atT:(double)a6 atPoint:(CGPoint)a7;
- (int64_t)compareSegmentAndT:(id)a3;
- (int64_t)compareT:(id)a3;
@end

@implementation TSDPathIntersection

- (TSDPathIntersection)initWithSegment:(int64_t)a3 atT:(double)a4 onSegmentB:(int64_t)a5 atT:(double)a6 atPoint:(CGPoint)a7
{
  y = a7.y;
  x = a7.x;
  v14.receiver = self;
  v14.super_class = TSDPathIntersection;
  result = [(TSDPathIntersection *)&v14 init];
  if (result)
  {
    result->mPoint.x = x;
    result->mPoint.y = y;
    result->mSegment = a3;
    result->mSegmentB = a5;
    result->mT = a4;
    result->mTB = a6;
  }

  return result;
}

- (int64_t)compareSegmentAndT:(id)a3
{
  v5 = [(TSDPathIntersection *)self segment];
  v6 = [a3 segment];
  if (v5 < v6)
  {
    return -1;
  }

  if (v5 > v6)
  {
    return 1;
  }

  return [(TSDPathIntersection *)self compareT:a3];
}

- (int64_t)compareT:(id)a3
{
  [(TSDPathIntersection *)self t];
  v5 = v4;
  [a3 t];
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