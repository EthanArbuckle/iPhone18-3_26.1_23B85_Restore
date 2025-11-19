@interface _UIMirrorNinePatchView
- (_UIMirrorNinePatchView)initWithFrame:(CGRect)a3;
- (void)_updateResizableImageAndViews;
- (void)layoutSubviews;
- (void)setImage:(id)a3 withResizableCornerSize:(CGSize)a4;
@end

@implementation _UIMirrorNinePatchView

- (_UIMirrorNinePatchView)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = _UIMirrorNinePatchView;
  v3 = [(UIView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setUserInteractionEnabled:0];
    for (i = 0; i != 4; ++i)
    {
      v6 = objc_alloc_init(UIImageView);
      [(UIImageView *)v6 setContentMode:0];
      [(UIView *)v6 setClipsToBounds:1];
      memset(&v11, 0, sizeof(v11));
      if (i)
      {
        v7 = -1.0;
      }

      else
      {
        v7 = 1.0;
      }

      if (i >= 2)
      {
        v8 = -1.0;
      }

      else
      {
        v8 = 1.0;
      }

      CGAffineTransformMakeScale(&v11, v7, v8);
      v10 = v11;
      [(UIView *)v6 setTransform:&v10];
      [(UIView *)v4 addSubview:v6];
      v4->_imageViews[i] = v6;
    }
  }

  return v4;
}

- (void)setImage:(id)a3 withResizableCornerSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  objc_storeStrong(&self->_originalImage, a3);
  v8 = a3;
  [v8 size];
  v10 = v9;
  v12 = v11;

  self->_insets.top = v12 - height;
  self->_insets.left = v10 - width;
  self->_insets.bottom = 0.0;
  self->_insets.right = 0.0;
  [(_UIMirrorNinePatchView *)self _updateResizableImageAndViews];

  [(UIView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v2 = self;
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  *&v5 = v5 * 0.5;
  v9 = floorf(*&v5);
  *&v3 = v7 * 0.5;
  v10 = floorf(*&v3);
  v20 = v4 + 0.0;
  v21 = v11;
  v12 = v11 + 0.0;
  v19 = v6 - (v9 + 0.0);
  v13 = v7 - (v10 + 0.0);
  v2 = (v2 + 448);
  [(objc_class *)v2->super.super.super.isa setFrame:?];
  v14 = v4 + v6 - v9;
  v15 = v6 - (v6 - v9 + 0.0);
  [*&v2->super.super._responderFlags setFrame:{v14, v12, v15, v13}];
  v16 = v21 + v8 - v10;
  v17 = v8 - (v8 - v10 + 0.0);
  [(NSMutableArray *)v2->super._constraintsExceptingSubviewAutoresizingConstraints setFrame:v20, v16, v19, v17];
  cachedTraitCollection = v2->super._cachedTraitCollection;

  [(UITraitCollection *)cachedTraitCollection setFrame:v14, v16, v15, v17];
}

- (void)_updateResizableImageAndViews
{
  v3 = [(UIImage *)self->_originalImage imageAsset];
  v4 = [(UIView *)self traitCollection];
  v5 = [v3 imageWithTraitCollection:v4];
  originalImage = v5;
  if (!v5)
  {
    originalImage = self->_originalImage;
  }

  v10 = originalImage;

  v7 = [(UIImage *)v10 resizableImageWithCapInsets:self->_insets.top, self->_insets.left, self->_insets.bottom, self->_insets.right];
  v8 = 0;
  imageViews = self->_imageViews;
  do
  {
    [(UIImageView *)imageViews[v8++] setImage:v7];
  }

  while (v8 != 4);
}

@end