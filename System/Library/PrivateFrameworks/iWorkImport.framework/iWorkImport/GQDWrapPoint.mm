@interface GQDWrapPoint
- (GQDWrapPoint)initWithX:(float)x y:(float)y flowType:(int)type drawable:(id)drawable;
- (int64_t)comparePoint:(id)point;
@end

@implementation GQDWrapPoint

- (GQDWrapPoint)initWithX:(float)x y:(float)y flowType:(int)type drawable:(id)drawable
{
  v15.receiver = self;
  v15.super_class = GQDWrapPoint;
  v10 = [(GQDWrapPoint *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->mPoint.x = x;
    v10->mPoint.y = y;
    v10->mDistance = 0.0;
    v10->mFlowType = type;
    v10->mDrawable = drawable;
    hasPagesOrder = [drawable hasPagesOrder];
    pagesOrder = 0;
    if (hasPagesOrder)
    {
      pagesOrder = [drawable pagesOrder];
    }

    v11->mZIndex = pagesOrder;
  }

  return v11;
}

- (int64_t)comparePoint:(id)point
{
  v3 = *(point + 2);
  y = self->mPoint.y;
  if (v3 > y)
  {
    return -1;
  }

  if (v3 < y)
  {
    return 1;
  }

  v6 = *(point + 1);
  x = self->mPoint.x;
  if (v6 > x)
  {
    return -1;
  }

  if (v6 < x)
  {
    return 1;
  }

  v8 = *(point + 10);
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