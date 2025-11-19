@interface GQDConnectionPath
- (CGPath)createBezierPath;
- (CGPoint)point;
- (CGSize)size;
@end

@implementation GQDConnectionPath

- (CGPoint)point
{
  x = self->mPoint.x;
  y = self->mPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)size
{
  width = self->mSize.width;
  height = self->mSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPath)createBezierPath
{
  Mutable = CGPathCreateMutable();
  y = CGPointZero.y;
  width = self->mSize.width;
  height = self->mSize.height;
  v34 = width;
  x = self->mPoint.x;
  v8 = self->mPoint.y;
  v9 = sub_4F9A8(CGPointZero.x, y, 0.25);
  v10 = sub_4F99C(x, v8, v9);
  v12 = v11;
  v13 = sub_4F9A8(width, height, 0.25);
  v14 = sub_4F99C(v10, v12, v13);
  v16 = sub_4F9A8(v14, v15, 2.0);
  v18 = v17;
  v19 = sub_4F9A8(CGPointZero.x, y, 0.33333);
  v21 = v20;
  v22 = sub_4F9A8(v16, v18, 0.66667);
  v23 = sub_4CF38(v19, v21, v22);
  v25 = v24;
  v26 = sub_4F9A8(v16, v18, 0.66667);
  v28 = v27;
  v29 = sub_4F9A8(v34, height, 0.33333);
  v30 = sub_4CF38(v26, v28, v29);
  v32 = v31;
  CGPathMoveToPoint(Mutable, 0, CGPointZero.x, y);
  CGPathAddCurveToPoint(Mutable, 0, v23, v25, v30, v32, v34, height);
  return Mutable;
}

@end