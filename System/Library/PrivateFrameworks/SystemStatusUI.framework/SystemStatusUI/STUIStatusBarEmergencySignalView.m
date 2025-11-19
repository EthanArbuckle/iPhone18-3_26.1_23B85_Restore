@interface STUIStatusBarEmergencySignalView
+ (double)_fontSizeForIconSize:(int64_t)a3;
+ (double)_interspaceForIconSize:(int64_t)a3;
- (CGSize)intrinsicContentSize;
- (STUIStatusBarEmergencySignalView)initWithCoder:(id)a3;
- (STUIStatusBarEmergencySignalView)initWithFrame:(CGRect)a3;
- (UIAccessibilityHUDItem)accessibilityHUDRepresentation;
- (UIEdgeInsets)alignmentRectInsets;
- (void)_commonInit;
- (void)_iconSizeDidChange;
- (void)applyStyleAttributes:(id)a3;
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
  v7 = [(UIImageView *)self->_sosView topAnchor];
  v8 = [(STUIStatusBarEmergencySignalView *)self topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:0.0];
  topConstraint = self->_topConstraint;
  self->_topConstraint = v9;

  [(NSLayoutConstraint *)self->_topConstraint setIdentifier:@"sosCellularTopConstraint"];
  v11 = [(STUIStatusBarCellularSignalView *)self->_signalView topAnchor];
  v12 = [(UIImageView *)self->_sosView lastBaselineAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:0.0];
  verticalInterspaceConstraint = self->_verticalInterspaceConstraint;
  self->_verticalInterspaceConstraint = v13;

  [(NSLayoutConstraint *)self->_verticalInterspaceConstraint setIdentifier:@"sosCellularSeparationConstraint"];
  v23[0] = self->_topConstraint;
  v15 = [(UIImageView *)self->_sosView centerXAnchor];
  v16 = [(STUIStatusBarEmergencySignalView *)self centerXAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  v18 = self->_verticalInterspaceConstraint;
  v23[1] = v17;
  v23[2] = v18;
  v19 = [(STUIStatusBarCellularSignalView *)self->_signalView centerXAnchor];
  v20 = [(STUIStatusBarEmergencySignalView *)self centerXAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
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
  v3 = [(STUIStatusBarSignalView *)self->_signalView numberOfBars];
  v4 = [(STUIStatusBarEmergencySignalView *)self iconSize];

  [STUIStatusBarCellularSignalView _intrinsicContentSizeForNumberOfBars:v3 iconSize:v4];
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

+ (double)_fontSizeForIconSize:(int64_t)a3
{
  result = 0.0;
  if ((a3 - 1) <= 0x10)
  {
    return dbl_26C581EB8[a3 - 1];
  }

  return result;
}

+ (double)_interspaceForIconSize:(int64_t)a3
{
  result = 0.0;
  if ((a3 - 1) <= 0x10)
  {
    return dbl_26C581F40[a3 - 1];
  }

  return result;
}

- (STUIStatusBarEmergencySignalView)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = STUIStatusBarEmergencySignalView;
  v3 = [(STUIStatusBarEmergencySignalView *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(STUIStatusBarEmergencySignalView *)v3 _commonInit];
  return v3;
}

- (STUIStatusBarEmergencySignalView)initWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STUIStatusBarEmergencySignalView;
  v3 = [(STUIStatusBarEmergencySignalView *)&v5 initWithCoder:a3];
  [(STUIStatusBarEmergencySignalView *)v3 _commonInit];
  return v3;
}

- (void)applyStyleAttributes:(id)a3
{
  v7 = a3;
  -[STUIStatusBarCellularSignalView setNeedsLargerScale:](self->_signalView, "setNeedsLargerScale:", [v7 isScaledFixedWidthBar]);
  v4 = [v7 isRounded];
  v5 = self->_iconSize != [v7 iconSize] || self->_rounded != v4;
  -[STUIStatusBarEmergencySignalView setRounded:](self, "setRounded:", [v7 isRounded]);
  -[STUIStatusBarEmergencySignalView setIconSize:](self, "setIconSize:", [v7 iconSize]);
  v6 = [v7 imageTintColor];
  [(UIImageView *)self->_sosView setTintColor:v6];

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
  v4 = [(STUIStatusBarEmergencySignalView *)self signalView];
  if ([v4 signalMode] == 2)
  {
    v5 = [(STUIStatusBarEmergencySignalView *)self signalView];
    v6 = [v3 stringWithFormat:@"AXHUD_Cellular_%d", objc_msgSend(v5, "numberOfActiveBars")];
  }

  else
  {
    v6 = [v3 stringWithFormat:@"AXHUD_Cellular_%d", 0];
  }

  v7 = [(STUIStatusBarEmergencySignalView *)self _screen];
  [v7 scale];
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