@interface PXUIFlattenedAssetBadgeView
- (void)drawRect:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)setNeedsLayout;
@end

@implementation PXUIFlattenedAssetBadgeView

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(PXUIFlattenedAssetBadgeView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  CurrentContext = UIGraphicsGetCurrentContext();
  v21.origin.x = v9;
  v21.origin.y = v11;
  v21.size.width = v13;
  v21.size.height = v15;
  CGContextClearRect(CurrentContext, v21);
  [(UIImage *)self->_backgroundImage drawInRect:v9, v11, v13, v15];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__PXUIFlattenedAssetBadgeView_drawRect___block_invoke;
  aBlock[3] = &__block_descriptor_64_e34_v16__0___PXUIAssetBadgeImageView_8l;
  *&aBlock[4] = x;
  *&aBlock[5] = y;
  *&aBlock[6] = width;
  *&aBlock[7] = height;
  v17 = _Block_copy(aBlock);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __40__PXUIFlattenedAssetBadgeView_drawRect___block_invoke_2;
  v19[3] = &__block_descriptor_64_e17_v16__0__UILabel_8l;
  *&v19[4] = x;
  *&v19[5] = y;
  *&v19[6] = width;
  *&v19[7] = height;
  v18 = _Block_copy(v19);
  v17[2](v17, self->super._bottomLeadingImageView);
  v17[2](v17, self->super._bottomTrailingImageView);
  v18[2](v18, self->super._bottomLabel);
}

void __40__PXUIFlattenedAssetBadgeView_drawRect___block_invoke(CGRect *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v13 = v3;
    v5 = [v3 isHidden];
    v4 = v13;
    if ((v5 & 1) == 0)
    {
      [v13 frame];
      x = v15.origin.x;
      y = v15.origin.y;
      width = v15.size.width;
      height = v15.size.height;
      v10 = CGRectIntersectsRect(v15, a1[1]);
      v4 = v13;
      if (v10)
      {
        v11 = [v13 image];
        [v13 alpha];
        [v11 drawInRect:0 blendMode:x alpha:{y, width, height, v12}];

        v4 = v13;
      }
    }
  }
}

void __40__PXUIFlattenedAssetBadgeView_drawRect___block_invoke_2(CGRect *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v11 = v3;
    v5 = [v3 isHidden];
    v4 = v11;
    if ((v5 & 1) == 0)
    {
      [v11 frame];
      x = v13.origin.x;
      y = v13.origin.y;
      width = v13.size.width;
      height = v13.size.height;
      v10 = CGRectIntersectsRect(v13, a1[1]);
      v4 = v11;
      if (v10)
      {
        [v11 drawTextInRect:{x, y, width, height}];
        v4 = v11;
      }
    }
  }
}

- (void)setNeedsLayout
{
  v3.receiver = self;
  v3.super_class = PXUIFlattenedAssetBadgeView;
  [(PXUIFlattenedAssetBadgeView *)&v3 setNeedsLayout];
  [(PXUIFlattenedAssetBadgeView *)self setNeedsDisplay];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(PXUIFlattenedAssetBadgeView *)self frame];
  v14.origin.x = v8;
  v14.origin.y = v9;
  v14.size.width = v10;
  v14.size.height = v11;
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  if (!CGRectEqualToRect(v13, v14))
  {
    v12.receiver = self;
    v12.super_class = PXUIFlattenedAssetBadgeView;
    [(PXUIAssetBadgeView *)&v12 setFrame:x, y, width, height];
    [(PXUIFlattenedAssetBadgeView *)self setNeedsDisplay];
  }
}

@end