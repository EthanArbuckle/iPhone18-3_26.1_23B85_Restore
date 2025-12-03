@interface TLKButtonView
+ (UIEdgeInsets)defaultLayoutMargins;
- (id)setupContentView;
- (void)observedPropertiesChanged;
- (void)setTitle:(id)title;
@end

@implementation TLKButtonView

+ (UIEdgeInsets)defaultLayoutMargins
{
  v6.receiver = self;
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

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (self->_title != titleCopy)
  {
    objc_storeStrong(&self->_title, title);
    observer = [(TLKView *)self observer];
    if (observer)
    {
      v6 = observer;
      observer2 = [(TLKView *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKView *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (void)observedPropertiesChanged
{
  title = [(TLKButtonView *)self title];
  titleLabel = [(TLKButtonView *)self titleLabel];
  [titleLabel setText:title];
}

@end