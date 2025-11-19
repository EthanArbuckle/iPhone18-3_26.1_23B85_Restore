@interface STUIStatusBarDualCellularSignalView
+ (double)_interspaceForIconSize:(int64_t)a3;
- (CGSize)intrinsicContentSize;
- (STUIStatusBarDualCellularSignalView)initWithCoder:(id)a3;
- (STUIStatusBarDualCellularSignalView)initWithFrame:(CGRect)a3;
- (UIAccessibilityHUDItem)accessibilityHUDRepresentation;
- (UIEdgeInsets)alignmentRectInsets;
- (id)viewForLastBaselineLayout;
- (void)_commonInit;
- (void)_iconSizeDidChange;
- (void)applyStyleAttributes:(id)a3;
@end

@implementation STUIStatusBarDualCellularSignalView

- (void)_commonInit
{
  v23[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(STUIStatusBarCellularSmallSignalView);
  topSignalView = self->_topSignalView;
  self->_topSignalView = &v3->super;

  [(STUIStatusBarCellularSignalView *)self->_topSignalView setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = objc_alloc_init(STUIStatusBarCellularFlatSignalView);
  bottomSignalView = self->_bottomSignalView;
  self->_bottomSignalView = &v5->super.super;

  [(STUIStatusBarCellularSignalView *)self->_bottomSignalView setTranslatesAutoresizingMaskIntoConstraints:0];
  self->_iconSize = -1;
  [(STUIStatusBarDualCellularSignalView *)self addSubview:self->_topSignalView];
  [(STUIStatusBarDualCellularSignalView *)self addSubview:self->_bottomSignalView];
  v7 = [(STUIStatusBarCellularSignalView *)self->_topSignalView topAnchor];
  v8 = [(STUIStatusBarDualCellularSignalView *)self topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:0.0];
  topConstraint = self->_topConstraint;
  self->_topConstraint = v9;

  [(NSLayoutConstraint *)self->_topConstraint setIdentifier:@"dualCellularTopBarConstraint"];
  v11 = [(STUIStatusBarCellularSignalView *)self->_bottomSignalView topAnchor];
  v12 = [(STUIStatusBarCellularSignalView *)self->_topSignalView bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:0.0];
  verticalInterspaceConstraint = self->_verticalInterspaceConstraint;
  self->_verticalInterspaceConstraint = v13;

  [(NSLayoutConstraint *)self->_verticalInterspaceConstraint setIdentifier:@"dualCellularBarSeparationConstraint"];
  v23[0] = self->_topConstraint;
  v15 = [(STUIStatusBarCellularSignalView *)self->_topSignalView centerXAnchor];
  v16 = [(STUIStatusBarDualCellularSignalView *)self centerXAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  v18 = self->_verticalInterspaceConstraint;
  v23[1] = v17;
  v23[2] = v18;
  v19 = [(STUIStatusBarCellularSignalView *)self->_bottomSignalView centerXAnchor];
  v20 = [(STUIStatusBarDualCellularSignalView *)self centerXAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  v23[3] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];

  [MEMORY[0x277CCAAD0] activateConstraints:v22];
}

+ (double)_interspaceForIconSize:(int64_t)a3
{
  result = 0.0;
  if ((a3 - 1) <= 0x10)
  {
    return dbl_26C581E30[a3 - 1];
  }

  return result;
}

- (STUIStatusBarDualCellularSignalView)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = STUIStatusBarDualCellularSignalView;
  v3 = [(STUIStatusBarDualCellularSignalView *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(STUIStatusBarDualCellularSignalView *)v3 _commonInit];
  return v3;
}

- (STUIStatusBarDualCellularSignalView)initWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STUIStatusBarDualCellularSignalView;
  v3 = [(STUIStatusBarDualCellularSignalView *)&v5 initWithCoder:a3];
  [(STUIStatusBarDualCellularSignalView *)v3 _commonInit];
  return v3;
}

- (void)_iconSizeDidChange
{
  [(STUIStatusBarSignalView *)self->_topSignalView setRounded:self->_rounded];
  [(STUIStatusBarSignalView *)self->_bottomSignalView setRounded:self->_rounded];
  [(STUIStatusBarSignalView *)self->_topSignalView setIconSize:self->_iconSize];
  [(STUIStatusBarSignalView *)self->_bottomSignalView setIconSize:self->_iconSize];
  [(STUIStatusBarCellularSignalView *)self->_topSignalView _iconSizeDidChange];
  [(STUIStatusBarCellularSignalView *)self->_bottomSignalView _iconSizeDidChange];
  [objc_opt_class() _interspaceForIconSize:self->_iconSize];
  v4 = v3;
  [(NSLayoutConstraint *)self->_verticalInterspaceConstraint setConstant:?];
  [(STUIStatusBarCellularSignalView *)self->_topSignalView intrinsicContentSize];
  v6 = v4 + v5;
  [(STUIStatusBarCellularSignalView *)self->_bottomSignalView intrinsicContentSize];
  v8 = v6 + v7;
  [(STUIStatusBarDualCellularSignalView *)self intrinsicContentSize];
  topConstraint = self->_topConstraint;

  [(NSLayoutConstraint *)topConstraint setConstant:(v9 - v8) * 0.5];
}

- (id)viewForLastBaselineLayout
{
  v3 = +[STUIStatusBarSettingsDomain rootSettings];
  v4 = [v3 itemSettings];
  v5 = [v4 secondarySIMUnderBaseline];

  if (v5)
  {
    self = self->_topSignalView;
  }

  return self;
}

- (void)applyStyleAttributes:(id)a3
{
  v6 = a3;
  -[STUIStatusBarCellularSignalView setNeedsLargerScale:](self->_topSignalView, "setNeedsLargerScale:", [v6 isScaledFixedWidthBar]);
  -[STUIStatusBarCellularSignalView setNeedsLargerScale:](self->_bottomSignalView, "setNeedsLargerScale:", [v6 isScaledFixedWidthBar]);
  v4 = [v6 isRounded];
  if (self->_iconSize != [v6 iconSize])
  {
    -[STUIStatusBarDualCellularSignalView setRounded:](self, "setRounded:", [v6 isRounded]);
    -[STUIStatusBarDualCellularSignalView setIconSize:](self, "setIconSize:", [v6 iconSize]);
    goto LABEL_5;
  }

  rounded = self->_rounded;
  -[STUIStatusBarDualCellularSignalView setRounded:](self, "setRounded:", [v6 isRounded]);
  -[STUIStatusBarDualCellularSignalView setIconSize:](self, "setIconSize:", [v6 iconSize]);
  if (rounded != v4)
  {
LABEL_5:
    [(STUIStatusBarDualCellularSignalView *)self _iconSizeDidChange];
  }
}

- (CGSize)intrinsicContentSize
{
  v3 = [(STUIStatusBarSignalView *)self->_topSignalView numberOfBars];
  v4 = [(STUIStatusBarDualCellularSignalView *)self iconSize];

  [STUIStatusBarCellularSignalView _intrinsicContentSizeForNumberOfBars:v3 iconSize:v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (UIAccessibilityHUDItem)accessibilityHUDRepresentation
{
  if (qword_2804A47C8 != -1)
  {
    dispatch_once(&qword_2804A47C8, &__block_literal_global_6);
  }

  v3 = MEMORY[0x277CCACA8];
  v4 = [(STUIStatusBarDualCellularSignalView *)self topSignalView];
  if ([v4 signalMode] == 2)
  {
    v5 = [(STUIStatusBarDualCellularSignalView *)self topSignalView];
    v6 = [v3 stringWithFormat:@"AXHUD_Cellular_%d", objc_msgSend(v5, "numberOfActiveBars")];
  }

  else
  {
    v6 = [v3 stringWithFormat:@"AXHUD_Cellular_%d", 0];
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = [(STUIStatusBarDualCellularSignalView *)self bottomSignalView];
  if ([v8 signalMode] == 2)
  {
    v9 = [(STUIStatusBarDualCellularSignalView *)self bottomSignalView];
    v10 = [v7 stringWithFormat:@"AXHUD_Cellular_%d", objc_msgSend(v9, "numberOfActiveBars")];
  }

  else
  {
    v10 = [v7 stringWithFormat:@"AXHUD_Cellular_%d", 0];
  }

  v11 = [(STUIStatusBarDualCellularSignalView *)self _screen];
  [v11 scale];
  v13 = v12;

  v14 = [v6 stringByAppendingString:v10];
  v15 = [v14 stringByAppendingFormat:@"@%.1f", *&v13];

  v16 = [_MergedGlobals_1 objectForKey:v15];
  if (!v16)
  {
    v17 = [MEMORY[0x277D755B8] kitImageNamed:v6];
    v18 = [MEMORY[0x277D755B8] kitImageNamed:v10];
    v16 = UIStatusBarCreateHUDDualSignalView(v17, v18, 1.0, 1.0, v13);
    if (v16)
    {
      [_MergedGlobals_1 setObject:v16 forKey:v15];
    }
  }

  v19 = objc_alloc(MEMORY[0x277D750B0]);
  v20 = [v19 initWithTitle:0 image:v16 imageInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  [v20 setScaleImage:1];

  return v20;
}

uint64_t __69__STUIStatusBarDualCellularSignalView_accessibilityHUDRepresentation__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v1 = _MergedGlobals_1;
  _MergedGlobals_1 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
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