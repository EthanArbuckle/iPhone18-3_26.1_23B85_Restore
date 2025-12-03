@interface STUIStatusBarDualCellularSignalView
+ (double)_interspaceForIconSize:(int64_t)size;
- (CGSize)intrinsicContentSize;
- (STUIStatusBarDualCellularSignalView)initWithCoder:(id)coder;
- (STUIStatusBarDualCellularSignalView)initWithFrame:(CGRect)frame;
- (UIAccessibilityHUDItem)accessibilityHUDRepresentation;
- (UIEdgeInsets)alignmentRectInsets;
- (id)viewForLastBaselineLayout;
- (void)_commonInit;
- (void)_iconSizeDidChange;
- (void)applyStyleAttributes:(id)attributes;
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
  topAnchor = [(STUIStatusBarCellularSignalView *)self->_topSignalView topAnchor];
  topAnchor2 = [(STUIStatusBarDualCellularSignalView *)self topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
  topConstraint = self->_topConstraint;
  self->_topConstraint = v9;

  [(NSLayoutConstraint *)self->_topConstraint setIdentifier:@"dualCellularTopBarConstraint"];
  topAnchor3 = [(STUIStatusBarCellularSignalView *)self->_bottomSignalView topAnchor];
  bottomAnchor = [(STUIStatusBarCellularSignalView *)self->_topSignalView bottomAnchor];
  v13 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:0.0];
  verticalInterspaceConstraint = self->_verticalInterspaceConstraint;
  self->_verticalInterspaceConstraint = v13;

  [(NSLayoutConstraint *)self->_verticalInterspaceConstraint setIdentifier:@"dualCellularBarSeparationConstraint"];
  v23[0] = self->_topConstraint;
  centerXAnchor = [(STUIStatusBarCellularSignalView *)self->_topSignalView centerXAnchor];
  centerXAnchor2 = [(STUIStatusBarDualCellularSignalView *)self centerXAnchor];
  v17 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v18 = self->_verticalInterspaceConstraint;
  v23[1] = v17;
  v23[2] = v18;
  centerXAnchor3 = [(STUIStatusBarCellularSignalView *)self->_bottomSignalView centerXAnchor];
  centerXAnchor4 = [(STUIStatusBarDualCellularSignalView *)self centerXAnchor];
  v21 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v23[3] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];

  [MEMORY[0x277CCAAD0] activateConstraints:v22];
}

+ (double)_interspaceForIconSize:(int64_t)size
{
  result = 0.0;
  if ((size - 1) <= 0x10)
  {
    return dbl_26C581E30[size - 1];
  }

  return result;
}

- (STUIStatusBarDualCellularSignalView)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = STUIStatusBarDualCellularSignalView;
  v3 = [(STUIStatusBarDualCellularSignalView *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(STUIStatusBarDualCellularSignalView *)v3 _commonInit];
  return v3;
}

- (STUIStatusBarDualCellularSignalView)initWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STUIStatusBarDualCellularSignalView;
  v3 = [(STUIStatusBarDualCellularSignalView *)&v5 initWithCoder:coder];
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
  itemSettings = [v3 itemSettings];
  secondarySIMUnderBaseline = [itemSettings secondarySIMUnderBaseline];

  if (secondarySIMUnderBaseline)
  {
    self = self->_topSignalView;
  }

  return self;
}

- (void)applyStyleAttributes:(id)attributes
{
  attributesCopy = attributes;
  -[STUIStatusBarCellularSignalView setNeedsLargerScale:](self->_topSignalView, "setNeedsLargerScale:", [attributesCopy isScaledFixedWidthBar]);
  -[STUIStatusBarCellularSignalView setNeedsLargerScale:](self->_bottomSignalView, "setNeedsLargerScale:", [attributesCopy isScaledFixedWidthBar]);
  isRounded = [attributesCopy isRounded];
  if (self->_iconSize != [attributesCopy iconSize])
  {
    -[STUIStatusBarDualCellularSignalView setRounded:](self, "setRounded:", [attributesCopy isRounded]);
    -[STUIStatusBarDualCellularSignalView setIconSize:](self, "setIconSize:", [attributesCopy iconSize]);
    goto LABEL_5;
  }

  rounded = self->_rounded;
  -[STUIStatusBarDualCellularSignalView setRounded:](self, "setRounded:", [attributesCopy isRounded]);
  -[STUIStatusBarDualCellularSignalView setIconSize:](self, "setIconSize:", [attributesCopy iconSize]);
  if (rounded != isRounded)
  {
LABEL_5:
    [(STUIStatusBarDualCellularSignalView *)self _iconSizeDidChange];
  }
}

- (CGSize)intrinsicContentSize
{
  numberOfBars = [(STUIStatusBarSignalView *)self->_topSignalView numberOfBars];
  iconSize = [(STUIStatusBarDualCellularSignalView *)self iconSize];

  [STUIStatusBarCellularSignalView _intrinsicContentSizeForNumberOfBars:numberOfBars iconSize:iconSize];
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
  topSignalView = [(STUIStatusBarDualCellularSignalView *)self topSignalView];
  if ([topSignalView signalMode] == 2)
  {
    topSignalView2 = [(STUIStatusBarDualCellularSignalView *)self topSignalView];
    v6 = [v3 stringWithFormat:@"AXHUD_Cellular_%d", objc_msgSend(topSignalView2, "numberOfActiveBars")];
  }

  else
  {
    v6 = [v3 stringWithFormat:@"AXHUD_Cellular_%d", 0];
  }

  v7 = MEMORY[0x277CCACA8];
  bottomSignalView = [(STUIStatusBarDualCellularSignalView *)self bottomSignalView];
  if ([bottomSignalView signalMode] == 2)
  {
    bottomSignalView2 = [(STUIStatusBarDualCellularSignalView *)self bottomSignalView];
    v10 = [v7 stringWithFormat:@"AXHUD_Cellular_%d", objc_msgSend(bottomSignalView2, "numberOfActiveBars")];
  }

  else
  {
    v10 = [v7 stringWithFormat:@"AXHUD_Cellular_%d", 0];
  }

  _screen = [(STUIStatusBarDualCellularSignalView *)self _screen];
  [_screen scale];
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