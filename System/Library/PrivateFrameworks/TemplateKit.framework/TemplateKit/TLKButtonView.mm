@interface TLKButtonView
+ (UIEdgeInsets)defaultLayoutMargins;
- (id)setupContentView;
- (void)observedPropertiesChanged;
- (void)setTitle:(id)a3;
@end

@implementation TLKButtonView

+ (UIEdgeInsets)defaultLayoutMargins
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___TLKButtonView;
  objc_msgSendSuper2(&v6, sel_defaultLayoutMargins);
  v4 = 15.79;
  v5 = 15.9;
  result.right = v3;
  result.bottom = v5;
  result.left = v2;
  result.top = v4;
  return result;
}

- (id)setupContentView
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [TLKFontUtilities cachedFontForTextStyle:*MEMORY[0x1E69DDD40] isShort:0 isBold:0];
  [v3 setFont:v4];

  [v3 setTextAlignment:1];
  [(TLKButtonView *)self setTitleLabel:v3];
  v5 = [TLKStackView alloc];
  v9[0] = v3;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v7 = [(NUIContainerStackView *)v5 initWithArrangedSubviews:v6];

  [(TLKStackView *)v7 setAxis:1];
  [(TLKStackView *)v7 setAlignment:3];
  [(TLKButtonView *)self setStackView:v7];

  return v7;
}

- (void)setTitle:(id)a3
{
  v10 = a3;
  if (self->_title != v10)
  {
    objc_storeStrong(&self->_title, a3);
    v5 = [(TLKView *)self observer];
    if (v5)
    {
      v6 = v5;
      v7 = [(TLKView *)self observer];
      v8 = [v7 batchUpdateCount];

      if (!v8)
      {
        v9 = [(TLKView *)self observer];
        [v9 propertiesDidChange];
      }
    }
  }
}

- (void)observedPropertiesChanged
{
  v4 = [(TLKButtonView *)self title];
  v3 = [(TLKButtonView *)self titleLabel];
  [v3 setText:v4];
}

@end