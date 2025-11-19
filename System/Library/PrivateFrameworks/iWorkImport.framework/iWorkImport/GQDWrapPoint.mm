@interface GQDWrapPoint
- (GQDWrapPoint)initWithX:(float)a3 y:(float)a4 flowType:(int)a5 drawable:(id)a6;
- (int64_t)comparePoint:(id)a3;
@end

@implementation GQDWrapPoint

- (GQDWrapPoint)initWithX:(float)a3 y:(float)a4 flowType:(int)a5 drawable:(id)a6
{
  v15.receiver = self;
  v15.super_class = GQDWrapPoint;
  v10 = [(GQDWrapPoint *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->mPoint.x = a3;
    v10->mPoint.y = a4;
    v10->mDistance = 0.0;
    v10->mFlowType = a5;
    v10->mDrawable = a6;
    v12 = [a6 hasPagesOrder];
    v13 = 0;
    if (v12)
    {
      v13 = [a6 pagesOrder];
    }

    v11->mZIndex = v13;
  }

  return v11;
}

- (int64_t)comparePoint:(id)a3
{
  v3 = *(a3 + 2);
  y = self->mPoint.y;
  if (v3 > y)
  {
    return -1;
  }

  if (v3 < y)
  {
    return 1;
  }

  v6 = *(a3 + 1);
  x = self->mPoint.x;
  if (v6 > x)
  {
    return -1;
  }

  if (v6 < x)
  {
    return 1;
  }

  v8 = *(a3 + 10);
  mFlowType = self->mFlowType;
  v12 = __OFSUB__(v8, mFlowType);
  v10 = v8 == mFlowType;
  v11 = v8 - mFlowType < 0;
  v13 = v8 < mFlowType;
  if (v11 ^ v12 | v10)
  {
    return v13;
  }

  else
  {
    return -1;
  }
}

@end