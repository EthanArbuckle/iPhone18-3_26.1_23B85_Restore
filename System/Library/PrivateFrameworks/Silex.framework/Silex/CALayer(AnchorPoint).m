@interface CALayer(AnchorPoint)
- (uint64_t)setAnchorPointWithoutChangingPosition:()AnchorPoint;
@end

@implementation CALayer(AnchorPoint)

- (uint64_t)setAnchorPointWithoutChangingPosition:()AnchorPoint
{
  [a1 bounds];
  v7 = a2 * v6;
  [a1 bounds];
  v9 = a3 * v8;
  [a1 bounds];
  v11 = v10;
  [a1 anchorPoint];
  v13 = v11 * v12;
  [a1 bounds];
  v15 = v14;
  [a1 anchorPoint];
  v17 = v15 * v16;
  [a1 transform];
  CATransform3DGetAffineTransform(&v26, &v25);
  v18 = v26.tx + v9 * v26.c + v26.a * v7;
  v19 = v26.ty + v9 * v26.d + v26.b * v7;
  [a1 transform];
  CATransform3DGetAffineTransform(&v26, &v25);
  v20 = v26.tx + v17 * v26.c + v26.a * v13;
  v21 = v26.ty + v17 * v26.d + v26.b * v13;
  [a1 position];
  [a1 setPosition:{v18 + v22 - v20, v19 + v23 - v21}];
  return [a1 setAnchorPoint:{a2, a3}];
}

@end