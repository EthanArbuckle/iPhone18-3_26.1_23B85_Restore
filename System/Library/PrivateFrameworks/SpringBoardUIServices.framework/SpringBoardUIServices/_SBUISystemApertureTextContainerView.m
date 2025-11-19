@interface _SBUISystemApertureTextContainerView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (double)setTransitionSize:(double)a3;
- (double)transitionSize;
- (id)initWithContentLabel:(id *)a1;
- (uint64_t)contentLabel;
- (void)layoutSubviews;
@end

@implementation _SBUISystemApertureTextContainerView

- (void)layoutSubviews
{
  v2 = self;
  v13.receiver = self;
  v13.super_class = _SBUISystemApertureTextContainerView;
  [(_SBUISystemApertureTextContainerView *)&v13 layoutSubviews];
  [(_SBUISystemApertureTextContainerView *)v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (!v2 || (width = v2->_transitionSize.width, height = v2->_transitionSize.height, v2 = v2->_contentLabel, width == 0.0) && height == 0.0)
  {
    [(_SBUISystemApertureTextContainerView *)v2 setBounds:v4, v6, v8, v10];
  }

  UIRectGetCenter();
  [(_SBUISystemApertureTextContainerView *)v2 setCenter:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  if (self)
  {
    if (self->_transitionSize.width != 0.0 || self->_transitionSize.height != 0.0)
    {
      width = self->_transitionSize.width;
      height = self->_transitionSize.height;
      goto LABEL_7;
    }

    self = self->_contentLabel;
  }

  [(_SBUISystemApertureTextContainerView *)self sizeThatFits:a3.width, a3.height];
LABEL_7:
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)intrinsicContentSize
{
  if (!self)
  {
    goto LABEL_5;
  }

  width = self->_transitionSize.width;
  height = self->_transitionSize.height;
  if (width == 0.0 && height == 0.0)
  {
    self = self->_contentLabel;
LABEL_5:
    [(_SBUISystemApertureTextContainerView *)self intrinsicContentSize];
  }

  result.height = height;
  result.width = width;
  return result;
}

- (id)initWithContentLabel:(id *)a1
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    [v4 bounds];
    v8.receiver = a1;
    v8.super_class = _SBUISystemApertureTextContainerView;
    v6 = objc_msgSendSuper2(&v8, sel_initWithFrame_);
    a1 = v6;
    if (v6)
    {
      objc_storeStrong(v6 + 51, a2);
      [a1 addSubview:v5];
    }
  }

  return a1;
}

- (double)setTransitionSize:(double)a3
{
  if (result)
  {
    if (result[52] != a2 || result[53] != a3)
    {
      return OUTLINED_FUNCTION_0(result, result + 52, a2, a3);
    }
  }

  return result;
}

- (double)transitionSize
{
  if (a1)
  {
    return *(a1 + 416);
  }

  else
  {
    return 0.0;
  }
}

- (uint64_t)contentLabel
{
  if (result)
  {
    return *(result + 408);
  }

  return result;
}

@end