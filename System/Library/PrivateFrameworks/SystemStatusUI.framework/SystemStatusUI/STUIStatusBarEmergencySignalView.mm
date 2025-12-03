@interface STUIStatusBarEmergencySignalView
+ (double)_fontSizeForIconSize:(int64_t)size;
+ (double)_interspaceForIconSize:(int64_t)size;
- (CGSize)intrinsicContentSize;
- (STUIStatusBarEmergencySignalView)initWithCoder:(id)coder;
- (STUIStatusBarEmergencySignalView)initWithFrame:(CGRect)frame;
- (UIAccessibilityHUDItem)accessibilityHUDRepresentation;
- (UIEdgeInsets)alignmentRectInsets;
- (void)_commonInit;
- (void)_iconSizeDidChange;
- (void)applyStyleAttributes:(id)attributes;
@end

@implementation STUIStatusBarEmergencySignalView

- (void)_commonInit
{
  v23[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D755E8]);
  sosView = self->_sosView;
  self->_sosView = v3;

  [(UIImageView *)self->_sosView setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = objc_alloc_init(STUIStatusBarCellularFlatSignalView);
  signalView = self->_signalView;
  self->_signalView = &v5->super.super;

  [(STUIStatusBarCellularSignalView *)self->_signalView setTranslatesAutoresizingMaskIntoConstraints:0];
  self->_iconSize = -1;
  [(STUIStatusBarEmergencySignalView *)self addSubview:self->_sosView];
  [(STUIStatusBarEmergencySignalView *)self addSubview:self->_signalView];
  topAnchor = [(UIImageView *)self->_sosView topAnchor];
  topAnchor2 = [(STUIStatusBarEmergencySignalView *)self topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
  topConstraint = self->_topConstraint;
  self->_topConstraint = v9;

  [(NSLayoutConstraint *)self->_topConstraint setIdentifier:@"sosCellularTopConstraint"];
  topAnchor3 = [(STUIStatusBarCellularSignalView *)self->_signalView topAnchor];
  lastBaselineAnchor = [(UIImageView *)self->_sosView lastBaselineAnchor];
  v13 = [topAnchor3 constraintEqualToAnchor:lastBaselineAnchor constant:0.0];
  verticalInterspaceConstraint = self->_verticalInterspaceConstraint;
  self->_verticalInterspaceConstraint = v13;

  [(NSLayoutConstraint *)self->_verticalInterspaceConstraint setIdentifier:@"sosCellularSeparationConstraint"];
  v23[0] = self->_topConstraint;
  centerXAnchor = [(UIImageView *)self->_sosView centerXAnchor];
  centerXAnchor2 = [(STUIStatusBarEmergencySignalView *)self centerXAnchor];
  v17 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v18 = self->_verticalInterspaceConstraint;
  v23[1] = v17;
  v23[2] = v18;
  centerXAnchor3 = [(STUIStatusBarCellularSignalView *)self->_signalView centerXAnchor];
  centerXAnchor4 = [(STUIStatusBarEmergencySignalView *)self centerXAnchor];
  v21 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v23[3] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];

  [MEMORY[0x277CCAAD0] activateConstraints:v22];
}

- (void)_iconSizeDidChange
{
  v3 = MEMORY[0x277D755D0];
  [objc_opt_class() _fontSizeForIconSize:self->_iconSize];
  v12 = [v3 configurationWithPointSize:?];
  v4 = [MEMORY[0x277D755B8] _systemImageNamed:@"sos" withConfiguration:v12];
  [(UIImageView *)self->_sosView setImage:v4];

  [(STUIStatusBarSignalView *)self->_signalView setRounded:self->_rounded];
  [(STUIStatusBarSignalView *)self->_signalView setIconSize:self->_iconSize];
  [(STUIStatusBarCellularSignalView *)self->_signalView _iconSizeDidChange];
  [objc_opt_class() _interspaceForIconSize:self->_iconSize];
  v6 = v5;
  [(NSLayoutConstraint *)self->_verticalInterspaceConstraint setConstant:?];
  [objc_opt_class() _fontSizeForIconSize:self->_iconSize];
  v8 = v6 + v7;
  [(STUIStatusBarCellularSignalView *)self->_signalView intrinsicContentSize];
  v10 = v8 + v9;
  [(STUIStatusBarEmergencySignalView *)self intrinsicContentSize];
  [(NSLayoutConstraint *)self->_topConstraint setConstant:(v11 - v10) * 0.5];
}

- (CGSize)intrinsicContentSize
{
  numberOfBars = [(STUIStatusBarSignalView *)self->_signalView numberOfBars];
  iconSize = [(STUIStatusBarEmergencySignalView *)self iconSize];

  [STUIStatusBarCellularSignalView _intrinsicContentSizeForNumberOfBars:numberOfBars iconSize:iconSize];
  result.height = v6;
  result.width = v5;
  return result;
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

+ (double)_fontSizeForIconSize:(int64_t)size
{
  result = 0.0;
  if ((size - 1) <= 0x10)
  {
    return dbl_26C581EB8[size - 1];
  }

  return result;
}

+ (double)_interspaceForIconSize:(int64_t)size
{
  result = 0.0;
  if ((size - 1) <= 0x10)
  {
    return dbl_26C581F40[size - 1];
  }

  return result;
}

- (STUIStatusBarEmergencySignalView)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = STUIStatusBarEmergencySignalView;
  v3 = [(STUIStatusBarEmergencySignalView *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(STUIStatusBarEmergencySignalView *)v3 _commonInit];
  return v3;
}

- (STUIStatusBarEmergencySignalView)initWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STUIStatusBarEmergencySignalView;
  v3 = [(STUIStatusBarEmergencySignalView *)&v5 initWithCoder:coder];
  [(STUIStatusBarEmergencySignalView *)v3 _commonInit];
  return v3;
}

- (void)applyStyleAttributes:(id)attributes
{
  attributesCopy = attributes;
  -[STUIStatusBarCellularSignalView setNeedsLargerScale:](self->_signalView, "setNeedsLargerScale:", [attributesCopy isScaledFixedWidthBar]);
  isRounded = [attributesCopy isRounded];
  v5 = self->_iconSize != [attributesCopy iconSize] || self->_rounded != isRounded;
  -[STUIStatusBarEmergencySignalView setRounded:](self, "setRounded:", [attributesCopy isRounded]);
  -[STUIStatusBarEmergencySignalView setIconSize:](self, "setIconSize:", [attributesCopy iconSize]);
  imageTintColor = [attributesCopy imageTintColor];
  [(UIImageView *)self->_sosView setTintColor:imageTintColor];

  if (v5)
  {
    [(STUIStatusBarEmergencySignalView *)self _iconSizeDidChange];
  }
}

- (UIAccessibilityHUDItem)accessibilityHUDRepresentation
{
  if (qword_2804A47D8 != -1)
  {
    dispatch_once(&qword_2804A47D8, &__block_literal_global_226_0);
  }

  v3 = MEMORY[0x277CCACA8];
  signalView = [(STUIStatusBarEmergencySignalView *)self signalView];
  if ([signalView signalMode] == 2)
  {
    signalView2 = [(STUIStatusBarEmergencySignalView *)self signalView];
    v6 = [v3 stringWithFormat:@"AXHUD_Cellular_%d", objc_msgSend(signalView2, "numberOfActiveBars")];
  }

  else
  {
    v6 = [v3 stringWithFormat:@"AXHUD_Cellular_%d", 0];
  }

  _screen = [(STUIStatusBarEmergencySignalView *)self _screen];
  [_screen scale];
  v9 = v8;

  [(UIImageView *)self->_sosView alpha];
  v11 = [v6 stringByAppendingFormat:@"-%.1f@%.1f", v10, *&v9];
  v12 = [qword_2804A47D0 objectForKey:v11];
  if (!v12)
  {
    v13 = [MEMORY[0x277D755B8] kitImageNamed:@"Split_SOS"];
    v14 = [MEMORY[0x277D755B8] kitImageNamed:v6];
    [(UIImageView *)self->_sosView alpha];
    v12 = UIStatusBarCreateHUDDualSignalView(v13, v14, v15, 1.0, v9);
    if (v12)
    {
      [qword_2804A47D0 setObject:v12 forKey:v11];
    }
  }

  v16 = objc_alloc(MEMORY[0x277D750B0]);
  v17 = [v16 initWithTitle:0 image:v12 imageInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  [v17 setScaleImage:1];

  return v17;
}

uint64_t __66__STUIStatusBarEmergencySignalView_accessibilityHUDRepresentation__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v1 = qword_2804A47D0;
  qword_2804A47D0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end