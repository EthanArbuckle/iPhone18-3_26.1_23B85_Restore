@interface _SBUISystemApertureAspectFittingView
- (CGSize)explicitIntrinsicSize;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)contentContainer;
- (id)initWithContentView:(id *)view;
- (id)setContentContainer:(id *)result;
- (uint64_t)contentView;
- (void)layoutSubviews;
@end

@implementation _SBUISystemApertureAspectFittingView

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  if (fits.width != 0.0 && fits.height != 0.0)
  {
    [(_SBUISystemApertureAspectFittingView *)self explicitIntrinsicSize];
    v8 = v7;
    v9 = v6;
    if (v7 == 0.0 && v6 == 0.0)
    {
      if (self)
      {
        contentView = self->_contentView;
      }

      else
      {
        contentView = 0;
      }

      [(UIView *)contentView sizeThatFits:width, height];
      v8 = v11;
      v9 = v12;
    }

    if (!BSSizeLessThanSize() || v8 == 0.0 && v9 == 0.0)
    {
      height = v9;
      width = v8;
    }

    else
    {
      v13 = v8 / width;
      if (v8 / width < v9 / height)
      {
        v13 = v9 / height;
      }

      v14 = 1.0 / v13;
      width = v8 * v14;
      height = v9 * v14;
    }
  }

  v15 = width;
  v16 = height;
  result.height = v16;
  result.width = v15;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(_SBUISystemApertureAspectFittingView *)self explicitIntrinsicSize];
  if (v3 == 0.0 && v4 == 0.0)
  {
    if (self)
    {
      contentView = self->_contentView;
    }

    else
    {
      contentView = 0;
    }

    [(UIView *)contentView intrinsicContentSize];
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)explicitIntrinsicSize
{
  width = self->_explicitIntrinsicSize.width;
  height = self->_explicitIntrinsicSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)initWithContentView:(id *)view
{
  v4 = a2;
  v5 = v4;
  if (view)
  {
    [v4 bounds];
    v8.receiver = view;
    v8.super_class = _SBUISystemApertureAspectFittingView;
    v6 = objc_msgSendSuper2(&v8, sel_initWithFrame_);
    view = v6;
    if (v6)
    {
      objc_storeStrong(v6 + 51, a2);
      [view addSubview:v5];
    }
  }

  return view;
}

- (id)setContentContainer:(id *)result
{
  if (result)
  {
    return objc_storeWeak(result + 52, a2);
  }

  return result;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = _SBUISystemApertureAspectFittingView;
  [(_SBUISystemApertureAspectFittingView *)&v7 layoutSubviews];
  [(_SBUISystemApertureAspectFittingView *)self bounds];
  if (self)
  {
    contentView = self->_contentView;
  }

  else
  {
    contentView = 0;
  }

  v4 = contentView;
  v5 = OUTLINED_FUNCTION_0_2();
  [v6 setBounds:v5];
  OUTLINED_FUNCTION_0_2();
  UIRectGetCenter();
  [(UIView *)v4 setCenter:?];
}

- (uint64_t)contentView
{
  if (result)
  {
    return *(result + 408);
  }

  return result;
}

- (id)contentContainer
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 52);
    v1 = vars8;
  }

  return WeakRetained;
}

@end