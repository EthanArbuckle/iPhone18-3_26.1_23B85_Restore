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
    result->mSegment = segment;
    result->mT = t;
    result->mPoint.x = x;
    result->mPoint.y = y;
    result->mSegmentB = b;
    result->mTB = atT;
  }

  return result;
}

- (int64_t)compareSegmentAndT:(id)t
{
  tCopy = t;
  v7 = objc_msgSend_segment(self, v5, v6);
  v10 = objc_msgSend_segment(tCopy, v8, v9);
  if (v7 >= v10)
  {
    if (v7 <= v10)
    {
      v12 = objc_msgSend_compareT_(self, v11, tCopy);
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = -1;
  }

  return v12;
}

- (int64_t)compareT:(id)t
{
  tCopy = t;
  objc_msgSend_t(self, v5, v6);
  v8 = v7;
  objc_msgSend_t(tCopy, v9, v10);
  v12 = v11;

  if (v8 < v12)
  {
    return -1;
  }

  else
  {
    return v8 > v12;
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