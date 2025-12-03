@interface _UIStatusBarEmergencySignalView
+ (double)_fontSizeForIconSize:(int64_t)size;
+ (double)_interspaceForIconSize:(int64_t)size;
- (CGSize)intrinsicContentSize;
- (UIAccessibilityHUDItem)accessibilityHUDRepresentation;
- (UIEdgeInsets)alignmentRectInsets;
- (_UIStatusBarEmergencySignalView)initWithCoder:(id)coder;
- (_UIStatusBarEmergencySignalView)initWithFrame:(CGRect)frame;
- (void)_commonInit;
- (void)_iconSizeDidChange;
- (void)applyStyleAttributes:(id)attributes;
@end

@implementation _UIStatusBarEmergencySignalView

+ (double)_fontSizeForIconSize:(int64_t)size
{
  result = 0.0;
  if ((size - 1) <= 0x10)
  {
    return dbl_18A682058[size - 1];
  }

  return result;
}

+ (double)_interspaceForIconSize:(int64_t)size
{
  result = 0.0;
  if ((size - 1) <= 0x10)
  {
    return dbl_18A6820E0[size - 1];
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
  topAnchor = [(UIView *)self->_sosView topAnchor];
  topAnchor2 = [(UIView *)self topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
  topConstraint = self->_topConstraint;
  self->_topConstraint = v9;

  [(NSLayoutConstraint *)self->_topConstraint setIdentifier:@"sosCellularTopConstraint"];
  topAnchor3 = [(UIView *)self->_signalView topAnchor];
  lastBaselineAnchor = [(UIView *)self->_sosView lastBaselineAnchor];
  v13 = [topAnchor3 constraintEqualToAnchor:lastBaselineAnchor constant:0.0];
  verticalInterspaceConstraint = self->_verticalInterspaceConstraint;
  self->_verticalInterspaceConstraint = v13;

  [(NSLayoutConstraint *)self->_verticalInterspaceConstraint setIdentifier:@"sosCellularSeparationConstraint"];
  v23[0] = self->_topConstraint;
  centerXAnchor = [(UIView *)self->_sosView centerXAnchor];
  centerXAnchor2 = [(UIView *)self centerXAnchor];
  v17 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v18 = self->_verticalInterspaceConstraint;
  v23[1] = v17;
  v23[2] = v18;
  centerXAnchor3 = [(UIView *)self->_signalView centerXAnchor];
  centerXAnchor4 = [(UIView *)self centerXAnchor];
  v21 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v23[3] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];

  [MEMORY[0x1E69977A0] activateConstraints:v22];
}

- (_UIStatusBarEmergencySignalView)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarEmergencySignalView;
  v3 = [(UIView *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(_UIStatusBarEmergencySignalView *)v3 _commonInit];
  return v3;
}

- (_UIStatusBarEmergencySignalView)initWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarEmergencySignalView;
  v3 = [(UIView *)&v5 initWithCoder:coder];
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

- (void)applyStyleAttributes:(id)attributes
{
  attributesCopy = attributes;
  -[_UIStatusBarCellularSignalView setNeedsLargerScale:](self->_signalView, "setNeedsLargerScale:", [attributesCopy isScaledFixedWidthBar]);
  isRounded = [attributesCopy isRounded];
  v5 = self->_iconSize != [attributesCopy iconSize] || self->_rounded != isRounded;
  -[_UIStatusBarEmergencySignalView setRounded:](self, "setRounded:", [attributesCopy isRounded]);
  -[_UIStatusBarEmergencySignalView setIconSize:](self, "setIconSize:", [attributesCopy iconSize]);
  imageTintColor = [attributesCopy imageTintColor];
  [(UIView *)self->_sosView setTintColor:imageTintColor];

  if (v5)
  {
    [(_UIStatusBarEmergencySignalView *)self _iconSizeDidChange];
  }
}

- (CGSize)intrinsicContentSize
{
  numberOfBars = [(_UIStatusBarSignalView *)self->_signalView numberOfBars];
  iconSize = [(_UIStatusBarEmergencySignalView *)self iconSize];

  [_UIStatusBarCellularSignalView _intrinsicContentSizeForNumberOfBars:numberOfBars iconSize:iconSize];
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
  signalView = [(_UIStatusBarEmergencySignalView *)self signalView];
  if ([signalView signalMode] == 2)
  {
    signalView2 = [(_UIStatusBarEmergencySignalView *)self signalView];
    v6 = [v3 stringWithFormat:@"AXHUD_Cellular_%d", objc_msgSend(signalView2, "numberOfActiveBars")];
  }

  else
  {
    v6 = [v3 stringWithFormat:@"AXHUD_Cellular_%d", 0];
  }

  _screen = [(UIView *)self _screen];
  [_screen scale];
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