@interface PKBorderedButton
+ (id)borderedButtonWithConfiguration:(id)configuration primaryAction:(id)action;
- (void)_updateForConfigurationChange;
- (void)layoutSubviews;
- (void)setBorderConfiguration:(id)configuration;
@end

@implementation PKBorderedButton

+ (id)borderedButtonWithConfiguration:(id)configuration primaryAction:(id)action
{
  v4 = [self buttonWithConfiguration:configuration primaryAction:action];
  [v4 _updateForConfigurationChange];

  return v4;
}

- (void)setBorderConfiguration:(id)configuration
{
  [(PKBorderedButton *)self setConfiguration:configuration];

  [(PKBorderedButton *)self _updateForConfigurationChange];
}

- (void)_updateForConfigurationChange
{
  borderConfiguration = [(PKBorderedButton *)self borderConfiguration];
  if (borderConfiguration)
  {
    v22 = borderConfiguration;
    border = [borderConfiguration border];
    borderColor = [v22 borderColor];
    topBorder = self->_topBorder;
    if (border)
    {
      if (!topBorder)
      {
        v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
        v9 = self->_topBorder;
        self->_topBorder = v8;

        [(UIView *)self->_topBorder setBackgroundColor:borderColor];
        [(PKBorderedButton *)self addSubview:self->_topBorder];
      }
    }

    else
    {
      [(UIView *)topBorder removeFromSuperview];
      v7 = self->_topBorder;
      self->_topBorder = 0;
    }

    bottomBorder = self->_bottomBorder;
    if ((border & 2) != 0)
    {
      if (!bottomBorder)
      {
        v12 = objc_alloc_init(MEMORY[0x1E69DD250]);
        v13 = self->_bottomBorder;
        self->_bottomBorder = v12;

        [(UIView *)self->_bottomBorder setBackgroundColor:borderColor];
        [(PKBorderedButton *)self addSubview:self->_bottomBorder];
      }
    }

    else
    {
      [(UIView *)bottomBorder removeFromSuperview];
      v11 = self->_bottomBorder;
      self->_bottomBorder = 0;
    }

    trailingBorder = self->_trailingBorder;
    if ((border & 4) != 0)
    {
      if (!trailingBorder)
      {
        v16 = objc_alloc_init(MEMORY[0x1E69DD250]);
        v17 = self->_trailingBorder;
        self->_trailingBorder = v16;

        [(UIView *)self->_trailingBorder setBackgroundColor:borderColor];
        [(PKBorderedButton *)self addSubview:self->_trailingBorder];
      }
    }

    else
    {
      [(UIView *)trailingBorder removeFromSuperview];
      v15 = self->_trailingBorder;
      self->_trailingBorder = 0;
    }

    leadingBorder = self->_leadingBorder;
    if ((border & 8) != 0)
    {
      if (!leadingBorder)
      {
        v20 = objc_alloc_init(MEMORY[0x1E69DD250]);
        v21 = self->_leadingBorder;
        self->_leadingBorder = v20;

        [(UIView *)self->_leadingBorder setBackgroundColor:borderColor];
        [(PKBorderedButton *)self addSubview:self->_leadingBorder];
      }
    }

    else
    {
      [(UIView *)leadingBorder removeFromSuperview];
      v19 = self->_leadingBorder;
      self->_leadingBorder = 0;
    }

    borderConfiguration = v22;
  }
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = PKBorderedButton;
  [(PKBorderedButton *)&v10 layoutSubviews];
  [(PKBorderedButton *)self bounds];
  v4 = v3;
  v6 = v5;
  borderConfiguration = [(PKBorderedButton *)self borderConfiguration];
  [borderConfiguration borderWidth];
  v9 = v8;

  [(UIView *)self->_topBorder setFrame:0.0, 0.0, v4, v9];
  [(UIView *)self->_bottomBorder setFrame:0.0, v6 - v9, v4, v9];
  [(UIView *)self->_trailingBorder setFrame:v4 - v9, 0.0, v9, v6];
  [(UIView *)self->_leadingBorder setFrame:0.0, 0.0, v9, v6];
}

@end