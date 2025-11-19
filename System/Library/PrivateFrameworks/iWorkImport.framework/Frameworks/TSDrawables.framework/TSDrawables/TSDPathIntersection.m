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
    result->mSegment = a3;
    result->mT = a4;
    result->mPoint.x = x;
    result->mPoint.y = y;
    result->mSegmentB = a5;
    result->mTB = a6;
  }

  return result;
}

- (int64_t)compareSegmentAndT:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_segment(self, v5, v6);
  v10 = objc_msgSend_segment(v4, v8, v9);
  if (v7 >= v10)
  {
    if (v7 <= v10)
    {
      v12 = objc_msgSend_compareT_(self, v11, v4);
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

- (int64_t)compareT:(id)a3
{
  v4 = a3;
  objc_msgSend_t(self, v5, v6);
  v8 = v7;
  objc_msgSend_t(v4, v9, v10);
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