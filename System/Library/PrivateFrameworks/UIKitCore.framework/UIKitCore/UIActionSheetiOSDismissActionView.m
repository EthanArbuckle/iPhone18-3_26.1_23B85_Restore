@interface UIActionSheetiOSDismissActionView
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)title;
- (UIActionSheetiOSDismissActionView)initWithContinuousCornerRadius:(double)a3;
- (double)_heightForTraitCollection:(id)a3;
- (void)_setupDismissButton;
- (void)setTitle:(id)a3;
- (void)setUsesShortCompactVerticalLayout:(BOOL)a3;
@end

@implementation UIActionSheetiOSDismissActionView

- (UIActionSheetiOSDismissActionView)initWithContinuousCornerRadius:(double)a3
{
  v7.receiver = self;
  v7.super_class = UIActionSheetiOSDismissActionView;
  v4 = [(UIView *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(UIActionSheetiOSDismissActionView *)v4 _setupDismissButton];
    [(_UIAlertControlleriOSActionSheetCancelBackgroundView *)v5 _setContinuousCornerRadius:a3];
  }

  return v5;
}

- (void)_setupDismissButton
{
  v3 = [UIButton buttonWithType:1];
  [(UIActionSheetiOSDismissActionView *)self setDismissButton:v3];

  v4 = [(UIActionSheetiOSDismissActionView *)self dismissButton];
  [(UIView *)self addSubview:v4];

  [(UIView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(UIActionSheetiOSDismissActionView *)self dismissButton];
  [v13 setFrame:{v6, v8, v10, v12}];

  v14 = [(UIActionSheetiOSDismissActionView *)self dismissButton];
  [v14 setAutoresizingMask:18];
}

- (NSString)title
{
  v2 = [(UIActionSheetiOSDismissActionView *)self dismissButton];
  v3 = [v2 attributedTitleForState:0];

  v4 = [v3 string];

  return v4;
}

- (void)setTitle:(id)a3
{
  v4 = MEMORY[0x1E696AD40];
  v5 = a3;
  v10 = [[v4 alloc] initWithString:v5];
  v6 = *off_1E70EC918;
  v7 = [off_1E70ECC18 boldSystemFontOfSize:20.0];
  v8 = [v5 length];

  [v10 addAttribute:v6 value:v7 range:{0, v8}];
  v9 = [(UIActionSheetiOSDismissActionView *)self dismissButton];
  [v9 setAttributedTitle:v10 forState:0];
}

- (void)setUsesShortCompactVerticalLayout:(BOOL)a3
{
  if (self->_usesShortCompactVerticalLayout != a3)
  {
    self->_usesShortCompactVerticalLayout = a3;
    [(UIView *)self setNeedsLayout];
  }
}

- (double)_heightForTraitCollection:(id)a3
{
  if (!self->_usesShortCompactVerticalLayout)
  {
    return 57.0;
  }

  v3 = [a3 verticalSizeClass];
  result = 57.0;
  if (v3 == 1)
  {
    return 44.0;
  }

  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(UIActionSheetiOSDismissActionView *)self dismissButton];
  [v6 sizeThatFits:{width, height}];
  v8 = v7;

  v9 = [(UIView *)self traitCollection];
  [(UIActionSheetiOSDismissActionView *)self _heightForTraitCollection:v9];
  v11 = v10;

  v12 = v8;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

@end