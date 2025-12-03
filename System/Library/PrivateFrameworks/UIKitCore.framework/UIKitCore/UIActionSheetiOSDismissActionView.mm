@interface UIActionSheetiOSDismissActionView
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)title;
- (UIActionSheetiOSDismissActionView)initWithContinuousCornerRadius:(double)radius;
- (double)_heightForTraitCollection:(id)collection;
- (void)_setupDismissButton;
- (void)setTitle:(id)title;
- (void)setUsesShortCompactVerticalLayout:(BOOL)layout;
@end

@implementation UIActionSheetiOSDismissActionView

- (UIActionSheetiOSDismissActionView)initWithContinuousCornerRadius:(double)radius
{
  v7.receiver = self;
  v7.super_class = UIActionSheetiOSDismissActionView;
  v4 = [(UIView *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(UIActionSheetiOSDismissActionView *)v4 _setupDismissButton];
    [(_UIAlertControlleriOSActionSheetCancelBackgroundView *)v5 _setContinuousCornerRadius:radius];
  }

  return v5;
}

- (void)_setupDismissButton
{
  v3 = [UIButton buttonWithType:1];
  [(UIActionSheetiOSDismissActionView *)self setDismissButton:v3];

  dismissButton = [(UIActionSheetiOSDismissActionView *)self dismissButton];
  [(UIView *)self addSubview:dismissButton];

  [(UIView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  dismissButton2 = [(UIActionSheetiOSDismissActionView *)self dismissButton];
  [dismissButton2 setFrame:{v6, v8, v10, v12}];

  dismissButton3 = [(UIActionSheetiOSDismissActionView *)self dismissButton];
  [dismissButton3 setAutoresizingMask:18];
}

- (NSString)title
{
  dismissButton = [(UIActionSheetiOSDismissActionView *)self dismissButton];
  v3 = [dismissButton attributedTitleForState:0];

  string = [v3 string];

  return string;
}

- (void)setTitle:(id)title
{
  v4 = MEMORY[0x1E696AD40];
  titleCopy = title;
  v10 = [[v4 alloc] initWithString:titleCopy];
  v6 = *off_1E70EC918;
  v7 = [off_1E70ECC18 boldSystemFontOfSize:20.0];
  v8 = [titleCopy length];

  [v10 addAttribute:v6 value:v7 range:{0, v8}];
  dismissButton = [(UIActionSheetiOSDismissActionView *)self dismissButton];
  [dismissButton setAttributedTitle:v10 forState:0];
}

- (void)setUsesShortCompactVerticalLayout:(BOOL)layout
{
  if (self->_usesShortCompactVerticalLayout != layout)
  {
    self->_usesShortCompactVerticalLayout = layout;
    [(UIView *)self setNeedsLayout];
  }
}

- (double)_heightForTraitCollection:(id)collection
{
  if (!self->_usesShortCompactVerticalLayout)
  {
    return 57.0;
  }

  verticalSizeClass = [collection verticalSizeClass];
  result = 57.0;
  if (verticalSizeClass == 1)
  {
    return 44.0;
  }

  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  dismissButton = [(UIActionSheetiOSDismissActionView *)self dismissButton];
  [dismissButton sizeThatFits:{width, height}];
  v8 = v7;

  traitCollection = [(UIView *)self traitCollection];
  [(UIActionSheetiOSDismissActionView *)self _heightForTraitCollection:traitCollection];
  v11 = v10;

  v12 = v8;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

@end