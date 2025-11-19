@interface PREditingCloseBoxButton
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIEdgeInsets)backgroundInsets;
- (UIEdgeInsets)hitTestPadding;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
@end

@implementation PREditingCloseBoxButton

- (UIEdgeInsets)backgroundInsets
{
  v2 = 1.0;
  v3 = 1.0;
  v4 = 1.0;
  v5 = 1.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = 26.0;
  v4 = 26.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = 26.0;
  v3 = 26.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (UIEdgeInsets)hitTestPadding
{
  v2 = -9.0;
  v3 = -9.0;
  v4 = -9.0;
  v5 = -9.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(PREditingCloseBoxButton *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(PREditingCloseBoxButton *)self hitTestPadding];
  v16 = v10 + v15;
  v19 = v12 - (v17 + v18);
  v21 = v14 - (v15 + v20);
  v22 = v8 + v17;
  v23 = v16;
  v24 = v19;
  v25 = x;
  v26 = y;

  return CGRectContainsPoint(*&v22, *&v25);
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = objc_alloc_init(MEMORY[0x1E69DCE28]);
  v6 = MEMORY[0x1E69DC728];
  [(PREditingCloseBoxButton *)self bounds];
  v15 = CGRectInset(v14, 1.0, 1.0);
  v7 = [v6 bezierPathWithOvalInRect:{v15.origin.x, v15.origin.y, v15.size.width, v15.size.height}];
  [v5 setShadowPath:v7];
  v8 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:self parameters:v5];
  v9 = [MEMORY[0x1E69DCDB8] effectWithPreview:v8];
  v10 = [MEMORY[0x1E69DCDC8] shapeWithPath:v7];
  v11 = [MEMORY[0x1E69DCDD0] styleWithEffect:v9 shape:v10];

  return v11;
}

@end