@interface _UIPageIndicatorImageView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (CGSize)sizeForImage:(id)a3 traits:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_UIPageIndicatorImageView)initWithCoder:(id)a3;
- (_UIPageIndicatorImageView)initWithFrame:(CGRect)a3;
- (void)_updateSymbolConfiguration;
- (void)invalidateIntrinsicContentSize;
- (void)prepare;
- (void)setImage:(id)a3;
@end

@implementation _UIPageIndicatorImageView

- (void)_updateSymbolConfiguration
{
  v3 = [(UIView *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];

  switch(v4)
  {
    case 8:
      goto LABEL_4;
    case 5:
      v5 = 8.0;
      goto LABEL_6;
    case 2:
LABEL_4:
      v5 = 12.0;
LABEL_6:
      v6 = [UIImageSymbolConfiguration configurationWithPointSize:v5];
      goto LABEL_8;
  }

  v6 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleFootnote" scale:1];
LABEL_8:
  v7 = v6;
  [(UIImageView *)self setPreferredSymbolConfiguration:v6];
}

- (void)prepare
{
  v13[1] = *MEMORY[0x1E69E9840];
  __asm { FMOV            V0.2D, #-1.0 }

  self->_cachedSize = _Q0;
  [(_UIPageIndicatorImageView *)self _updateSymbolConfiguration];
  v13[0] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v9 = [(UIView *)self registerForTraitChanges:v8 withAction:sel__updateSymbolConfiguration];

  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v11 = [(UIView *)self registerForTraitChanges:v10 withAction:sel_invalidateIntrinsicContentSize, v12[0]];
}

- (void)invalidateIntrinsicContentSize
{
  __asm { FMOV            V0.2D, #-1.0 }

  self->_cachedSize = _Q0;
  v7.receiver = self;
  v7.super_class = _UIPageIndicatorImageView;
  [(UIView *)&v7 invalidateIntrinsicContentSize];
}

- (_UIPageIndicatorImageView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _UIPageIndicatorImageView;
  v3 = [(UIImageView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_UIPageIndicatorImageView *)v3 prepare];
  }

  return v4;
}

- (_UIPageIndicatorImageView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UIPageIndicatorImageView;
  v3 = [(UIImageView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(_UIPageIndicatorImageView *)v3 prepare];
  }

  return v4;
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v5 = [(UIImageView *)self image];
  v6 = [v4 isEqual:v5];

  if ((v6 & 1) == 0)
  {
    __asm { FMOV            V0.2D, #-1.0 }

    self->_cachedSize = _Q0;
    if (([v4 isSymbolImage] & 1) == 0)
    {
      v12 = v4;
      [v12 size];
      if (v13 > 42.0 || v14 > 42.0)
      {
        v16 = v13 <= v14;
        v17 = v13 * 42.0 / v14;
        v18 = v14 * 42.0 / 42.0;
        if (v16)
        {
          v18 = 42.0;
        }

        else
        {
          v17 = 42.0;
        }

        v15 = [v12 imageByPreparingThumbnailOfSize:{v17, v18}];
      }

      else
      {
        v15 = v12;
      }

      v19 = v15;

      v4 = [v19 imageWithRenderingMode:2];
    }

    v21.receiver = self;
    v21.super_class = _UIPageIndicatorImageView;
    [(UIImageView *)&v21 setImage:v4];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __38___UIPageIndicatorImageView_setImage___block_invoke;
    v20[3] = &unk_1E70F3590;
    v20[4] = self;
    [UIView performWithoutAnimation:v20];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v4 = [(UIImageView *)self image:a3.width];
  [(_UIPageIndicatorImageView *)self sizeForImage:v4 traits:0];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)sizeForImage:(id)a3 traits:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIImageView *)self image];
  v9 = [v8 isEqual:v6];
  if (!v9)
  {

LABEL_12:
    if (v7)
    {
      v12 = [(UIView *)self _contentSizeCategoryLimitedTraitCollection:v7];
    }

    else
    {
      v16 = [(UIView *)self traitCollection];
      v12 = [(UIView *)self _contentSizeCategoryLimitedTraitCollection:v16];
    }

    goto LABEL_15;
  }

  if (!v7)
  {

LABEL_7:
    width = self->_cachedSize.width;
    height = self->_cachedSize.height;
    if (width != -1.0 || height != -1.0)
    {
      goto LABEL_27;
    }

    goto LABEL_12;
  }

  v10 = [(UIView *)self traitCollection];
  v11 = [v10 isEqual:v7];

  if (v11)
  {
    goto LABEL_7;
  }

  v12 = [(UIView *)self _contentSizeCategoryLimitedTraitCollection:v7];
  v9 = 0;
LABEL_15:
  v17 = [(UIImageView *)self _symbolConfigurationForImage:v6];
  v18 = [v17 configurationWithTraitCollection:v12];

  if (([v6 isSymbolImage] & 1) == 0)
  {
    v19 = v6;
    [v19 size];
    if (v20 > 42.0 || v21 > 42.0)
    {
      v23 = v20 <= v21;
      v24 = v20 * 42.0 / v21;
      v25 = v21 * 42.0 / 42.0;
      if (v23)
      {
        v25 = 42.0;
      }

      else
      {
        v24 = 42.0;
      }

      v22 = [v19 imageByPreparingThumbnailOfSize:{v24, v25}];
    }

    else
    {
      v22 = v19;
    }

    v6 = v22;
  }

  v26 = [v6 imageWithConfiguration:v18];
  [v26 size];
  width = v27;
  height = v28;

  if (v9)
  {
    self->_cachedSize.width = width;
    self->_cachedSize.height = height;
  }

LABEL_27:
  v29 = width;
  v30 = height;
  result.height = v30;
  result.width = v29;
  return result;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"filters.vibrantColorMatrix.inputColorMatrix"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _UIPageIndicatorImageView;
    v5 = [(UIImageView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

@end