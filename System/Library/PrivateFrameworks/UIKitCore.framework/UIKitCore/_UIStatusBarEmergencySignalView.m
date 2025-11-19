@interface _UIStatusBarEmergencySignalView
+ (double)_fontSizeForIconSize:(int64_t)a3;
+ (double)_interspaceForIconSize:(int64_t)a3;
- (CGSize)intrinsicContentSize;
- (UIAccessibilityHUDItem)accessibilityHUDRepresentation;
- (UIEdgeInsets)alignmentRectInsets;
- (_UIStatusBarEmergencySignalView)initWithCoder:(id)a3;
- (_UIStatusBarEmergencySignalView)initWithFrame:(CGRect)a3;
- (void)_commonInit;
- (void)_iconSizeDidChange;
- (void)applyStyleAttributes:(id)a3;
@end

@implementation _UIStatusBarEmergencySignalView

+ (double)_fontSizeForIconSize:(int64_t)a3
{
  result = 0.0;
  if ((a3 - 1) <= 0x10)
  {
    return dbl_18A682058[a3 - 1];
  }

  return result;
}

+ (double)_interspaceForIconSize:(int64_t)a3
{
  result = 0.0;
  if ((a3 - 1) <= 0x10)
  {
    return dbl_18A6820E0[a3 - 1];
  }

  return result;
}

- (void)_commonInit
{
  v23[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(UIImageView);
  sosView = self->_sosView;
  self->_sosView = v3;

  [(UIImageView *)self->_sosView setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = objc_alloc_init(_UIStatusBarCellularFlatSignalView);
  signalView = self->_signalView;
  self->_signalView = &v5->super.super;

  [(UIView *)self->_signalView setTranslatesAutoresizingMaskIntoConstraints:0];
  self->_iconSize = -1;
  [(UIView *)self addSubview:self->_sosView];
  [(UIView *)self addSubview:self->_signalView];
  v7 = [(UIView *)self->_sosView topAnchor];
  v8 = [(UIView *)self topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:0.0];
  topConstraint = self->_topConstraint;
  self->_topConstraint = v9;

  [(NSLayoutConstraint *)self->_topConstraint setIdentifier:@"sosCellularTopConstraint"];
  v11 = [(UIView *)self->_signalView topAnchor];
  v12 = [(UIView *)self->_sosView lastBaselineAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:0.0];
  verticalInterspaceConstraint = self->_verticalInterspaceConstraint;
  self->_verticalInterspaceConstraint = v13;

  [(NSLayoutConstraint *)self->_verticalInterspaceConstraint setIdentifier:@"sosCellularSeparationConstraint"];
  v23[0] = self->_topConstraint;
  v15 = [(UIView *)self->_sosView centerXAnchor];
  v16 = [(UIView *)self centerXAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  v18 = self->_verticalInterspaceConstraint;
  v23[1] = v17;
  v23[2] = v18;
  v19 = [(UIView *)self->_signalView centerXAnchor];
  v20 = [(UIView *)self centerXAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  v23[3] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];

  [MEMORY[0x1E69977A0] activateConstraints:v22];
}

- (_UIStatusBarEmergencySignalView)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarEmergencySignalView;
  v3 = [(UIView *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(_UIStatusBarEmergencySignalView *)v3 _commonInit];
  return v3;
}

- (_UIStatusBarEmergencySignalView)initWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarEmergencySignalView;
  v3 = [(UIView *)&v5 initWithCoder:a3];
  [(_UIStatusBarEmergencySignalView *)v3 _commonInit];
  return v3;
}

- (void)_iconSizeDidChange
{
  [objc_opt_class() _fontSizeForIconSize:self->_iconSize];
  v11 = [UIImageSymbolConfiguration configurationWithPointSize:?];
  v3 = [UIImage _systemImageNamed:@"sos" withConfiguration:v11];
  [(UIImageView *)self->_sosView setImage:v3];

  [(_UIStatusBarSignalView *)self->_signalView setRounded:self->_rounded];
  [(_UIStatusBarSignalView *)self->_signalView setIconSize:self->_iconSize];
  [(_UIStatusBarCellularSignalView *)self->_signalView _iconSizeDidChange];
  [objc_opt_class() _interspaceForIconSize:self->_iconSize];
  v5 = v4;
  [(NSLayoutConstraint *)self->_verticalInterspaceConstraint setConstant:?];
  [objc_opt_class() _fontSizeForIconSize:self->_iconSize];
  v7 = v5 + v6;
  [(_UIStatusBarCellularSignalView *)self->_signalView intrinsicContentSize];
  v9 = v7 + v8;
  [(_UIStatusBarEmergencySignalView *)self intrinsicContentSize];
  [(NSLayoutConstraint *)self->_topConstraint setConstant:(v10 - v9) * 0.5];
}

- (void)applyStyleAttributes:(id)a3
{
  v7 = a3;
  -[_UIStatusBarCellularSignalView setNeedsLargerScale:](self->_signalView, "setNeedsLargerScale:", [v7 isScaledFixedWidthBar]);
  v4 = [v7 isRounded];
  v5 = self->_iconSize != [v7 iconSize] || self->_rounded != v4;
  -[_UIStatusBarEmergencySignalView setRounded:](self, "setRounded:", [v7 isRounded]);
  -[_UIStatusBarEmergencySignalView setIconSize:](self, "setIconSize:", [v7 iconSize]);
  v6 = [v7 imageTintColor];
  [(UIView *)self->_sosView setTintColor:v6];

  if (v5)
  {
    [(_UIStatusBarEmergencySignalView *)self _iconSizeDidChange];
  }
}

- (CGSize)intrinsicContentSize
{
  v3 = [(_UIStatusBarSignalView *)self->_signalView numberOfBars];
  v4 = [(_UIStatusBarEmergencySignalView *)self iconSize];

  [_UIStatusBarCellularSignalView _intrinsicContentSizeForNumberOfBars:v3 iconSize:v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (UIAccessibilityHUDItem)accessibilityHUDRepresentation
{
  if (qword_1ED499F20 != -1)
  {
    dispatch_once(&qword_1ED499F20, &__block_literal_global_235_2);
  }

  v3 = MEMORY[0x1E696AEC0];
  v4 = [(_UIStatusBarEmergencySignalView *)self signalView];
  if ([v4 signalMode] == 2)
  {
    v5 = [(_UIStatusBarEmergencySignalView *)self signalView];
    v6 = [v3 stringWithFormat:@"AXHUD_Cellular_%d", objc_msgSend(v5, "numberOfActiveBars")];
  }

  else
  {
    v6 = [v3 stringWithFormat:@"AXHUD_Cellular_%d", 0];
  }

  v7 = [(UIView *)self _screen];
  [v7 scale];
  v9 = v8;

  [(UIView *)self->_sosView alpha];
  v11 = [v6 stringByAppendingFormat:@"-%.1f@%.1f", v10, *&v9];
  v12 = [qword_1ED499F18 objectForKey:v11];
  if (!v12)
  {
    v13 = [UIImage kitImageNamed:@"Split_SOS"];
    v14 = [UIImage kitImageNamed:v6];
    [(UIView *)self->_sosView alpha];
    v12 = UIStatusBarCreateHUDDualSignalView(v13, v14, v15, v9);
    if (v12)
    {
      [qword_1ED499F18 setObject:v12 forKey:v11];
    }
  }

  v16 = [[UIAccessibilityHUDItem alloc] initWithTitle:0 image:v12 imageInsets:0.0, 0.0, 0.0, 0.0];
  [(UIAccessibilityHUDItem *)v16 setScaleImage:1];

  return v16;
}

- (UIEdgeInsets)alignmentRectInsets
{
  top = self->_alignmentRectInsets.top;
  left = self->_alignmentRectInsets.left;
  bottom = self->_alignmentRectInsets.bottom;
  right = self->_alignmentRectInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end