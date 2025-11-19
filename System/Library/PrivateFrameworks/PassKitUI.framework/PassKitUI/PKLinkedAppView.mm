@interface PKLinkedAppView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKLinkedAppView)initWithCoder:(id)a3;
- (PKLinkedAppView)initWithLinkedApplication:(id)a3 reuseIdentifier:(id)a4;
- (PKLinkedAppView)initWithStoreIDs:(id)a3 systemAppBundleIdentifiers:(id)a4 appLaunchURL:(id)a5 reuseIdentifier:(id)a6;
- (void)layoutSubviews;
- (void)setButtonBackgroundColor:(id)a3;
- (void)setButtonTintColor:(id)a3;
- (void)setMainLabelColor:(id)a3;
- (void)setSubTextLabelColor:(id)a3;
@end

@implementation PKLinkedAppView

- (PKLinkedAppView)initWithCoder:(id)a3
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"This class is not NSCoding compliant"];

  return [(PKLinkedAppView *)self init];
}

- (PKLinkedAppView)initWithStoreIDs:(id)a3 systemAppBundleIdentifiers:(id)a4 appLaunchURL:(id)a5 reuseIdentifier:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[PKLinkedApplication alloc] initWithStoreIDs:v13 systemAppBundleIdentifiers:v12 defaultLaunchURL:v11];

  v15 = [(PKLinkedAppView *)self initWithLinkedApplication:v14 reuseIdentifier:v10];
  return v15;
}

- (PKLinkedAppView)initWithLinkedApplication:(id)a3 reuseIdentifier:(id)a4
{
  v6 = a3;
  v20.receiver = self;
  v20.super_class = PKLinkedAppView;
  v7 = [(PKLinkedAppView *)&v20 initWithStyle:0 reuseIdentifier:a4];
  if (v7)
  {
    v8 = [[PKLinkedAppContentView alloc] initWithLinkedApplication:v6];
    linkedAppView = v7->_linkedAppView;
    v7->_linkedAppView = v8;

    v10 = [(PKLinkedAppView *)v7 contentView];
    [v10 addSubview:v7->_linkedAppView];

    [(PKLinkedAppView *)v7 setSelectionStyle:0];
    v11 = [MEMORY[0x1E69DC888] labelColor];
    mainLabelColor = v7->_mainLabelColor;
    v7->_mainLabelColor = v11;

    v13 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    subTextLabelColor = v7->_subTextLabelColor;
    v7->_subTextLabelColor = v13;

    v15 = [MEMORY[0x1E69DC888] systemBlueColor];
    buttonTintColor = v7->_buttonTintColor;
    v7->_buttonTintColor = v15;

    v17 = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
    buttonBackgroundColor = v7->_buttonBackgroundColor;
    v7->_buttonBackgroundColor = v17;
  }

  return v7;
}

- (CGSize)intrinsicContentSize
{
  [(PKLinkedAppContentView *)self->_linkedAppView intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKLinkedAppContentView *)self->_linkedAppView sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKLinkedAppView;
  [(PKLinkedAppView *)&v4 layoutSubviews];
  linkedAppView = self->_linkedAppView;
  [(PKLinkedAppView *)self bounds];
  [(PKLinkedAppContentView *)linkedAppView setFrame:?];
}

- (void)setMainLabelColor:(id)a3
{
  v5 = a3;
  if (self->_mainLabelColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_mainLabelColor, a3);
    v5 = v6;
  }
}

- (void)setSubTextLabelColor:(id)a3
{
  v5 = a3;
  if (self->_subTextLabelColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_subTextLabelColor, a3);
    v5 = v6;
  }
}

- (void)setButtonBackgroundColor:(id)a3
{
  v5 = a3;
  if (self->_buttonBackgroundColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_buttonBackgroundColor, a3);
    v5 = v6;
  }
}

- (void)setButtonTintColor:(id)a3
{
  v5 = a3;
  if (self->_buttonTintColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_buttonTintColor, a3);
    v5 = v6;
  }
}

@end