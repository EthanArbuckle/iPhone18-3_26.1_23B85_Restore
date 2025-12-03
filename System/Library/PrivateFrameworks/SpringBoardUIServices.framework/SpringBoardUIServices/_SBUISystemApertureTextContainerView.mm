@interface _SBUISystemApertureTextContainerView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (double)setTransitionSize:(double)size;
- (double)transitionSize;
- (id)initWithContentLabel:(id *)label;
- (uint64_t)contentLabel;
- (void)layoutSubviews;
@end

@implementation _SBUISystemApertureTextContainerView

- (void)layoutSubviews
{
  selfCopy = self;
  v13.receiver = self;
  v13.super_class = _SBUISystemApertureTextContainerView;
  [(_SBUISystemApertureTextContainerView *)&v13 layoutSubviews];
  [(_SBUISystemApertureTextContainerView *)selfCopy bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (!selfCopy || (width = selfCopy->_transitionSize.width, height = selfCopy->_transitionSize.height, selfCopy = selfCopy->_contentLabel, width == 0.0) && height == 0.0)
  {
    [(_SBUISystemApertureTextContainerView *)selfCopy setBounds:v4, v6, v8, v10];
  }

  UIRectGetCenter();
  [(_SBUISystemApertureTextContainerView *)selfCopy setCenter:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
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

  [(_SBUISystemApertureTextContainerView *)self sizeThatFits:fits.width, fits.height];
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

- (id)initWithContentLabel:(id *)label
{
  v4 = a2;
  v5 = v4;
  if (label)
  {
    [v4 bounds];
    v8.receiver = label;
    v8.super_class = _SBUISystemApertureTextContainerView;
    v6 = objc_msgSendSuper2(&v8, sel_initWithFrame_);
    label = v6;
    if (v6)
    {
      objc_storeStrong(v6 + 51, a2);
      [label addSubview:v5];
    }
  }

  return label;
}

- (double)setTransitionSize:(double)size
{
  if (result)
  {
    if (result[52] != a2 || result[53] != size)
    {
      return OUTLINED_FUNCTION_0(result, result + 52, a2, size);
    }
  }

  return result;
}

- (double)transitionSize
{
  if (self)
  {
    return *(self + 416);
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