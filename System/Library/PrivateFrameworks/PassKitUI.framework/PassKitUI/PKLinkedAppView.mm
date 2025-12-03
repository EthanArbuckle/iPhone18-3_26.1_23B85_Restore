@interface PKLinkedAppView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKLinkedAppView)initWithCoder:(id)coder;
- (PKLinkedAppView)initWithLinkedApplication:(id)application reuseIdentifier:(id)identifier;
- (PKLinkedAppView)initWithStoreIDs:(id)ds systemAppBundleIdentifiers:(id)identifiers appLaunchURL:(id)l reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)setButtonBackgroundColor:(id)color;
- (void)setButtonTintColor:(id)color;
- (void)setMainLabelColor:(id)color;
- (void)setSubTextLabelColor:(id)color;
@end

@implementation PKLinkedAppView

- (PKLinkedAppView)initWithCoder:(id)coder
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"This class is not NSCoding compliant"];

  return [(PKLinkedAppView *)self init];
}

- (PKLinkedAppView)initWithStoreIDs:(id)ds systemAppBundleIdentifiers:(id)identifiers appLaunchURL:(id)l reuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  lCopy = l;
  identifiersCopy = identifiers;
  dsCopy = ds;
  v14 = [[PKLinkedApplication alloc] initWithStoreIDs:dsCopy systemAppBundleIdentifiers:identifiersCopy defaultLaunchURL:lCopy];

  v15 = [(PKLinkedAppView *)self initWithLinkedApplication:v14 reuseIdentifier:identifierCopy];
  return v15;
}

- (PKLinkedAppView)initWithLinkedApplication:(id)application reuseIdentifier:(id)identifier
{
  applicationCopy = application;
  v20.receiver = self;
  v20.super_class = PKLinkedAppView;
  v7 = [(PKLinkedAppView *)&v20 initWithStyle:0 reuseIdentifier:identifier];
  if (v7)
  {
    v8 = [[PKLinkedAppContentView alloc] initWithLinkedApplication:applicationCopy];
    linkedAppView = v7->_linkedAppView;
    v7->_linkedAppView = v8;

    contentView = [(PKLinkedAppView *)v7 contentView];
    [contentView addSubview:v7->_linkedAppView];

    [(PKLinkedAppView *)v7 setSelectionStyle:0];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    mainLabelColor = v7->_mainLabelColor;
    v7->_mainLabelColor = labelColor;

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    subTextLabelColor = v7->_subTextLabelColor;
    v7->_subTextLabelColor = secondaryLabelColor;

    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    buttonTintColor = v7->_buttonTintColor;
    v7->_buttonTintColor = systemBlueColor;

    tertiarySystemFillColor = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
    buttonBackgroundColor = v7->_buttonBackgroundColor;
    v7->_buttonBackgroundColor = tertiarySystemFillColor;
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKLinkedAppContentView *)self->_linkedAppView sizeThatFits:fits.width, fits.height];
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

- (void)setMainLabelColor:(id)color
{
  colorCopy = color;
  if (self->_mainLabelColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_mainLabelColor, color);
    colorCopy = v6;
  }
}

- (void)setSubTextLabelColor:(id)color
{
  colorCopy = color;
  if (self->_subTextLabelColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_subTextLabelColor, color);
    colorCopy = v6;
  }
}

- (void)setButtonBackgroundColor:(id)color
{
  colorCopy = color;
  if (self->_buttonBackgroundColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_buttonBackgroundColor, color);
    colorCopy = v6;
  }
}

- (void)setButtonTintColor:(id)color
{
  colorCopy = color;
  if (self->_buttonTintColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_buttonTintColor, color);
    colorCopy = v6;
  }
}

@end