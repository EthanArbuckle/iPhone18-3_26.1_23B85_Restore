@interface SBIconAddAccessoryView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGPoint)accessoryCenterForIconBounds:(CGRect)bounds;
- (CGSize)intrinsicContentSize;
- (SBIconAddAccessoryView)init;
- (UIEdgeInsets)_hitTestPadding;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)layoutSubviews;
@end

@implementation SBIconAddAccessoryView

- (SBIconAddAccessoryView)init
{
  v16[2] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = SBIconAddAccessoryView;
  v2 = [(SBIconAddAccessoryView *)&v15 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DCAD8] configurationWithScale:2];
    v4 = MEMORY[0x1E69DCAD8];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    v16[0] = whiteColor;
    systemGreenColor = [MEMORY[0x1E69DC888] systemGreenColor];
    v16[1] = systemGreenColor;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v8 = [v4 configurationWithPaletteColors:v7];

    v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus.circle.fill" withConfiguration:v3];
    v10 = [v9 imageWithConfiguration:v8];

    v11 = [v10 imageWithRenderingMode:2];

    v12 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v11];
    addImageView = v2->_addImageView;
    v2->_addImageView = v12;

    [(UIImageView *)v2->_addImageView setContentMode:1];
    [(SBIconAddAccessoryView *)v2 addSubview:v2->_addImageView];
  }

  return v2;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SBIconAddAccessoryView;
  [(SBIconAddAccessoryView *)&v4 layoutSubviews];
  addImageView = self->_addImageView;
  [(SBIconAddAccessoryView *)self bounds];
  UIRectInset();
  [(UIImageView *)addImageView setFrame:?];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(SBIconAddAccessoryView *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(SBIconAddAccessoryView *)self _hitTestPadding];
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

- (CGSize)intrinsicContentSize
{
  listLayout = [(SBIconAddAccessoryView *)self listLayout];
  v3 = SBHIconListLayoutIconAccessorySize(listLayout);
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGPoint)accessoryCenterForIconBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  listLayout = [(SBIconAddAccessoryView *)self listLayout];
  v9 = SBHIconListLayoutIconAccessoryOffset(listLayout);
  v11 = v10;

  listLayout2 = [(SBIconAddAccessoryView *)self listLayout];
  v13 = SBHIconListLayoutIconAccessorySize(listLayout2);
  v15 = v14;

  v16 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1;

  v17 = SBIconBadgeViewCalculateAccessoryCenter(v16, x, y, width, height, v13 + 2.0 + 2.0, v15 + 2.0 + 2.0, v9, v11);
  result.y = v18;
  result.x = v17;
  return result;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v5 = objc_alloc_init(MEMORY[0x1E69DCE28]);
  v6 = MEMORY[0x1E69DC728];
  [(SBIconAddAccessoryView *)self bounds];
  v15 = CGRectInset(v14, 1.0, 1.0);
  v7 = [v6 bezierPathWithOvalInRect:{v15.origin.x, v15.origin.y, v15.size.width, v15.size.height}];
  [v5 setShadowPath:v7];
  v8 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:self parameters:v5];
  v9 = [MEMORY[0x1E69DCDB8] effectWithPreview:v8];
  v10 = [MEMORY[0x1E69DCDC8] shapeWithPath:v7];
  v11 = [MEMORY[0x1E69DCDD0] styleWithEffect:v9 shape:v10];

  return v11;
}

- (UIEdgeInsets)_hitTestPadding
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

@end