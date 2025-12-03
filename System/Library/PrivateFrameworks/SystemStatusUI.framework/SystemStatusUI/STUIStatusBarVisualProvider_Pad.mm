@interface STUIStatusBarVisualProvider_Pad
+ (Class)visualProviderSubclassForScreen:(id)screen visualProviderInfo:(id)info;
+ (NSDirectionalEdgeInsets)edgeInsets;
+ (UIEdgeInsets)regionCursorInsets;
+ (double)baseFontSize;
+ (double)baselineOffset;
+ (double)expandedBaselineOffset;
+ (double)height;
+ (double)menuBarHeight;
+ (double)pillFontSize;
- (BOOL)_updateDateAndTimePlacements;
- (BOOL)_updateToShowMenuBarFromMode:(int64_t)mode toMode:(int64_t)toMode;
- (BOOL)_updateToShowShowBackgroundFromMode:(int64_t)mode toMode:(int64_t)toMode;
- (CGRect)clockBoundsForLayoutItem:(id)item;
- (CGSize)expandedPillSize;
- (CGSize)pillSize;
- (CGSize)smallPillSize;
- (NSDirectionalEdgeInsets)expandedEdgeInsets;
- (STUIStatusBarVisualProvider_Pad)init;
- (UIFont)clockFont;
- (double)airplaneShouldFadeForAnimationType:(int64_t)type;
- (double)airplaneSpeedForAnimationType:(int64_t)type;
- (double)airplaneTravelOffsetInProposedPartWithIdentifier:(id *)identifier animationType:(int64_t)type;
- (double)maximumPossibleMenuBarWidth;
- (id)displayItemIdentifiersForPartWithIdentifier:(id)identifier;
- (id)emphasizedFont;
- (id)expandedFont;
- (id)expandedPillFont;
- (id)normalFont;
- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)identifier;
- (id)overriddenStyleAttributesForDisplayItemWithIdentifier:(id)identifier;
- (id)pillFont;
- (id)pillSmallFont;
- (id)regionIdentifiersForBackgroundLumaView:(id)view;
- (id)regionIdentifiersForPartWithIdentifier:(id)identifier;
- (id)setupInContainerView:(id)view;
- (id)styleAttributesForStyle:(int64_t)style;
- (void)_dateTimePreferencesUpdated;
- (void)_updateConstraintsForAvoidanceFrame:(CGRect)frame;
- (void)actionable:(id)actionable highlighted:(BOOL)highlighted initialPress:(BOOL)press;
- (void)avoidanceFrameUpdatedFromFrame:(CGRect)frame withAnimationSettings:(id)settings options:(unint64_t)options;
- (void)dealloc;
- (void)itemCreated:(id)created;
- (void)modeUpdatedFromMode:(int64_t)mode;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)sizeUpdatedFromSize:(CGSize)size;
- (void)statusBarEnabledPartsUpdated;
@end

@implementation STUIStatusBarVisualProvider_Pad

+ (Class)visualProviderSubclassForScreen:(id)screen visualProviderInfo:(id)info
{
  screenCopy = screen;
  if ([screenCopy _isMainLikeScreen])
  {
    v6 = [screenCopy _isEmbeddedScreen] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  [screenCopy _displayCornerRadius];
  v8 = v7;
  [screenCopy _displayCornerRadiusIgnoringZoom];
  if (v6 || v8 > 0.0)
  {
    v9 = objc_opt_class();
    selfCopy = STUIStatusBarGetVisualProviderSubclassForScreenWithVisualProviderInfo(v9, screenCopy, 0);
  }

  else
  {
    selfCopy = self;
  }

  v11 = selfCopy;

  return v11;
}

+ (double)height
{
  v2 = _UIEnhancedMainMenuEnabled();
  result = 32.0;
  if (!v2)
  {
    return 20.0;
  }

  return result;
}

+ (double)menuBarHeight
{
  v2 = _UIEnhancedMainMenuEnabled();
  result = 0.0;
  if (v2)
  {
    return 22.0;
  }

  return result;
}

+ (NSDirectionalEdgeInsets)edgeInsets
{
  v2 = 0.0;
  v3 = 6.0;
  v4 = 0.0;
  v5 = 5.0;
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (NSDirectionalEdgeInsets)expandedEdgeInsets
{
  v2 = 0.0;
  v3 = 6.0;
  v4 = 0.0;
  v5 = 5.0;
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

+ (double)baselineOffset
{
  v2 = _UIEnhancedMainMenuEnabled();
  result = 14.0;
  if (v2)
  {
    return 21.0;
  }

  return result;
}

+ (double)expandedBaselineOffset
{
  if (_UIEnhancedMainMenuEnabled())
  {
    return 14.0;
  }

  [self baselineOffset];
  return result;
}

- (double)maximumPossibleMenuBarWidth
{
  [objc_opt_class() edgeInsets];
  v4 = v3;
  v6 = v5;
  statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  containerView = [statusBar containerView];
  [containerView bounds];
  v10 = v9 - v4 - v6;
  [(STUIStatusBarVisualProvider_Pad *)self regionSpacing];
  v12 = v10 + v11 * -2.0;

  return v12;
}

- (CGSize)pillSize
{
  v2 = _UIEnhancedMainMenuEnabled();
  v3 = 44.0;
  if (v2)
  {
    v3 = 48.0;
  }

  v4 = 16.0;
  if (v2)
  {
    v4 = 18.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)smallPillSize
{
  v2 = _UIEnhancedMainMenuEnabled();
  v3 = 16.0;
  if (v2)
  {
    v3 = 18.0;
  }

  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)expandedPillSize
{
  v2 = 44.0;
  v3 = 16.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (UIEdgeInsets)regionCursorInsets
{
  v2 = -1.0;
  v3 = -3.0;
  v4 = -1.0;
  v5 = -3.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

+ (double)baseFontSize
{
  v2 = _UIEnhancedMainMenuEnabled();
  result = 12.0;
  if (v2)
  {
    return 14.0;
  }

  return result;
}

+ (double)pillFontSize
{
  v2 = _UIEnhancedMainMenuEnabled();
  result = 11.0;
  if (v2)
  {
    return 12.0;
  }

  return result;
}

- (id)normalFont
{
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v3 = qword_280C1E738;
  if (qword_280C1E738)
  {
    v4 = _MergedGlobals_3 == IsBoldTextEnabled;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    _MergedGlobals_3 = IsBoldTextEnabled;
    v5 = MEMORY[0x277D74300];
    [objc_opt_class() baseFontSize];
    v6 = [v5 systemFontOfSize:? weight:?];
    v7 = qword_280C1E738;
    qword_280C1E738 = v6;

    v3 = qword_280C1E738;
  }

  return v3;
}

- (id)emphasizedFont
{
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v3 = unk_280C1E740;
  if (unk_280C1E740)
  {
    v4 = byte_280C1E721 == IsBoldTextEnabled;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    byte_280C1E721 = IsBoldTextEnabled;
    v5 = MEMORY[0x277D74300];
    [objc_opt_class() baseFontSize];
    v6 = [v5 systemFontOfSize:? weight:?];
    v7 = unk_280C1E740;
    unk_280C1E740 = v6;

    v3 = unk_280C1E740;
  }

  return v3;
}

- (id)expandedFont
{
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v3 = unk_280C1E748;
  if (unk_280C1E748)
  {
    v4 = byte_280C1E722 == IsBoldTextEnabled;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    byte_280C1E722 = IsBoldTextEnabled;
    v5 = MEMORY[0x277D74300];
    [objc_opt_class() expandedFontSize];
    v6 = [v5 systemFontOfSize:? weight:?];
    v7 = unk_280C1E748;
    unk_280C1E748 = v6;

    v3 = unk_280C1E748;
  }

  return v3;
}

- (id)pillFont
{
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v3 = unk_280C1E750;
  if (unk_280C1E750)
  {
    v4 = byte_280C1E723 == IsBoldTextEnabled;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    byte_280C1E723 = IsBoldTextEnabled;
    v5 = MEMORY[0x277D74300];
    [objc_opt_class() pillFontSize];
    v6 = [v5 systemFontOfSize:? weight:?];
    v7 = unk_280C1E750;
    unk_280C1E750 = v6;

    v3 = unk_280C1E750;
  }

  return v3;
}

- (id)pillSmallFont
{
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v3 = unk_280C1E758;
  if (unk_280C1E758)
  {
    v4 = byte_280C1E724 == IsBoldTextEnabled;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    byte_280C1E724 = IsBoldTextEnabled;
    v5 = MEMORY[0x277D74300];
    [objc_opt_class() pillFontSize];
    v7 = [v5 systemFontOfSize:v6 + -1.0 weight:*MEMORY[0x277D743F8]];
    v8 = unk_280C1E758;
    unk_280C1E758 = v7;

    v3 = unk_280C1E758;
  }

  return v3;
}

- (id)expandedPillFont
{
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v3 = unk_280C1E760;
  if (unk_280C1E760)
  {
    v4 = byte_280C1E725 == IsBoldTextEnabled;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    byte_280C1E725 = IsBoldTextEnabled;
    v5 = [MEMORY[0x277D74300] systemFontOfSize:11.0 weight:*MEMORY[0x277D74410]];
    v6 = unk_280C1E760;
    unk_280C1E760 = v5;

    v3 = unk_280C1E760;
  }

  return v3;
}

- (UIFont)clockFont
{
  v3 = +[STUIStatusBarSettingsDomain rootSettings];
  visualProviderSettings = [v3 visualProviderSettings];
  hasBoldTime = [visualProviderSettings hasBoldTime];

  if (hasBoldTime)
  {
    [(STUIStatusBarVisualProvider_Pad *)self emphasizedFont];
  }

  else
  {
    [(STUIStatusBarVisualProvider_Pad *)self normalFont];
  }
  v6 = ;

  return v6;
}

- (STUIStatusBarVisualProvider_Pad)init
{
  v5.receiver = self;
  v5.super_class = STUIStatusBarVisualProvider_Pad;
  v2 = [(STUIStatusBarVisualProvider_iOS *)&v5 init];
  v3 = __UIKitUserDefaults();
  [v3 addObserver:v2 forKeyPath:@"StatusBarHidesDate" options:0 context:0];
  [v3 addObserver:v2 forKeyPath:@"StatusBarHidesAMPM" options:0 context:0];

  return v2;
}

- (void)dealloc
{
  v3 = __UIKitUserDefaults();
  [v3 removeObserver:self forKeyPath:@"StatusBarHidesDate"];
  [v3 removeObserver:self forKeyPath:@"StatusBarHidesAMPM"];

  v4.receiver = self;
  v4.super_class = STUIStatusBarVisualProvider_Pad;
  [(STUIStatusBarVisualProvider_Pad *)&v4 dealloc];
}

- (id)setupInContainerView:(id)view
{
  v181[2] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  [objc_opt_class() baselineOffset];
  v6 = v5;
  [objc_opt_class() expandedBaselineOffset];
  v173 = v7;
  [objc_opt_class() menuBarHeight];
  v9 = v8;
  [objc_opt_class() edgeInsets];
  v11 = v10;
  v13 = v12;
  [(STUIStatusBarVisualProvider_Pad *)self expandedEdgeInsets];
  v169 = v14;
  v171 = v15;
  [(STUIStatusBarVisualProvider_iOS *)self itemSpacing];
  v17 = v16;
  [(STUIStatusBarVisualProvider_iOS *)self expandedItemSpacing];
  v19 = v18;
  [(STUIStatusBarVisualProvider_Pad *)self regionSpacing];
  v21 = v20;
  normalFont = [(STUIStatusBarVisualProvider_Pad *)self normalFont];
  [normalFont capHeight];
  v24 = v23;

  expandedFont = [(STUIStatusBarVisualProvider_Pad *)self expandedFont];
  [expandedFont capHeight];
  v172 = v26;

  [(STUIStatusBarVisualProvider_Pad *)self pillSize];
  v174 = v27;
  if (_UIEnhancedMainMenuEnabled())
  {
    v28 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"background"];
    v29 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
    v30 = +[STUIStatusBarRegionAxisFillingLayout fillingLayout];
    [(STUIStatusBarRegionAxesLayout *)v29 setHorizontalLayout:v30];

    v31 = +[STUIStatusBarRegionAxisFillingLayout fillingLayout];
    [(STUIStatusBarRegionAxesLayout *)v29 setVerticalLayout:v31];

    [(STUIStatusBarRegion *)v28 setLayout:v29];
    [(STUIStatusBarRegion *)v28 disableWithToken:21];
    layoutItem = [(STUIStatusBarRegion *)v28 layoutItem];
    leadingAnchor = [layoutItem leadingAnchor];
    leadingAnchor2 = [viewCopy leadingAnchor];
    v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [array addObject:v35];

    trailingAnchor = [layoutItem trailingAnchor];
    trailingAnchor2 = [viewCopy trailingAnchor];
    v38 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [array addObject:v38];

    topAnchor = [layoutItem topAnchor];
    topAnchor2 = [viewCopy topAnchor];
    v41 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v41];

    heightAnchor = [layoutItem heightAnchor];
    v43 = [heightAnchor constraintEqualToConstant:v9];
    [array addObject:v43];

    [viewCopy _ui_addSubLayoutItem:layoutItem];
    [array2 addObject:v28];
  }

  v44 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"leading"];
  v45 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v46 = objc_alloc_init(STUIStatusBarRegionAxisStackingLayout);
  [(STUIStatusBarRegionAxisStackingLayout *)v46 setAlignment:3];
  [(STUIStatusBarRegionAxisStackingLayout *)v46 setInterspace:10.0];
  [(STUIStatusBarRegionAxesLayout *)v45 setHorizontalLayout:v46];

  v47 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:6];
  [(STUIStatusBarRegionAxesLayout *)v45 setVerticalLayout:v47];

  [(STUIStatusBarRegion *)v44 setLayout:v45];
  [(STUIStatusBarRegion *)v44 setOffsetable:1];
  [(STUIStatusBarRegion *)v44 setActionInsets:-20.0, -20.0, -20.0, -20.0];
  v48 = +[STUIStatusBarHoverRegionAction leadingHoverAction];
  [(STUIStatusBarRegion *)v44 setHoverAction:v48];

  UIRoundToViewScale();
  [(STUIStatusBarRegion *)v44 setExtendedHoverInsets:-v49, -v11, 0.0, 0.0];
  layoutItem2 = [(STUIStatusBarRegion *)v44 layoutItem];
  bottomAnchor = [layoutItem2 bottomAnchor];
  topAnchor3 = [viewCopy topAnchor];
  v53 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:v6];
  leadingRegionBaselineConstraint = self->_leadingRegionBaselineConstraint;
  self->_leadingRegionBaselineConstraint = v53;

  [array addObject:self->_leadingRegionBaselineConstraint];
  leadingAnchor3 = [layoutItem2 leadingAnchor];
  leadingAnchor4 = [viewCopy leadingAnchor];
  v57 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v11];
  [array addObject:v57];

  heightAnchor2 = [layoutItem2 heightAnchor];
  v59 = [heightAnchor2 constraintEqualToConstant:v24];
  [array addObject:v59];

  v177 = layoutItem2;
  [viewCopy _ui_addSubLayoutItem:layoutItem2];

  [array2 addObject:v44];
  v60 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"trailing"];
  v61 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v62 = objc_alloc_init(STUIStatusBarRegionAxisStackingLayout);
  [(STUIStatusBarRegionAxisStackingLayout *)v62 setAlignment:4];
  [(STUIStatusBarRegionAxisStackingLayout *)v62 setInterspace:v17];
  [(STUIStatusBarRegionAxesLayout *)v61 setHorizontalLayout:v62];

  v63 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:6];
  [(STUIStatusBarRegionAxesLayout *)v61 setVerticalLayout:v63];

  [(STUIStatusBarRegion *)v60 setLayout:v61];
  [(STUIStatusBarRegion *)v60 setOffsetable:1];
  [(STUIStatusBarRegion *)v60 setActionInsets:-20.0, -20.0, -20.0, -20.0];
  v64 = +[STUIStatusBarHoverRegionAction trailingHoverAction];
  [(STUIStatusBarRegion *)v60 setHoverAction:v64];

  v65 = viewCopy;
  UIRoundToViewScale();
  [(STUIStatusBarRegion *)v60 setExtendedHoverInsets:-v66, 0.0, 0.0, -v13];
  layoutItem3 = [(STUIStatusBarRegion *)v60 layoutItem];
  bottomAnchor2 = [layoutItem3 bottomAnchor];
  topAnchor4 = [v65 topAnchor];
  v70 = [bottomAnchor2 constraintEqualToAnchor:topAnchor4 constant:v6];
  trailingRegionBaselineConstraint = self->_trailingRegionBaselineConstraint;
  self->_trailingRegionBaselineConstraint = v70;

  [array addObject:self->_trailingRegionBaselineConstraint];
  trailingAnchor3 = [layoutItem3 trailingAnchor];
  trailingAnchor4 = [v65 trailingAnchor];
  v74 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-v13];
  [array addObject:v74];

  heightAnchor3 = [layoutItem3 heightAnchor];
  v76 = [heightAnchor3 constraintEqualToConstant:v24];
  [array addObject:v76];

  v176 = layoutItem3;
  [v65 _ui_addSubLayoutItem:layoutItem3];

  [array2 addObject:v60];
  v77 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"center"];
  v78 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v79 = objc_alloc_init(STUIStatusBarRegionAxisCenteringLayout);
  [(STUIStatusBarRegionAxisCenteringLayout *)v79 setInterspace:v17];
  [(STUIStatusBarRegionAxesLayout *)v78 setHorizontalLayout:v79];

  v80 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:6];
  [(STUIStatusBarRegionAxesLayout *)v78 setVerticalLayout:v80];

  [(STUIStatusBarRegion *)v77 setLayout:v78];
  [(STUIStatusBarRegion *)v77 setOffsetable:1];
  v81 = v65;
  if (_UIEnhancedMainMenuEnabled())
  {
    [(STUIStatusBarRegion *)v77 disableWithToken:20];
    [(STUIStatusBarRegion *)v77 setActionInsets:-20.0, -20.0, -20.0, -20.0];
  }

  layoutItem4 = [(STUIStatusBarRegion *)v77 layoutItem];
  centerXAnchor = [layoutItem4 centerXAnchor];
  centerXAnchor2 = [v81 centerXAnchor];
  v85 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  LODWORD(v86) = 1132068864;
  [v85 _ui_constraintWithPriority:v86];
  v87 = v179 = v81;
  [array addObject:v87];

  widthAnchor = [layoutItem4 widthAnchor];
  v89 = [widthAnchor constraintEqualToConstant:0.0];
  LODWORD(v90) = 1132003328;
  v91 = [v89 _ui_constraintWithPriority:v90];
  [array addObject:v91];

  bottomAnchor3 = [layoutItem4 bottomAnchor];
  topAnchor5 = [v179 topAnchor];
  v94 = [bottomAnchor3 constraintEqualToAnchor:topAnchor5 constant:v6];
  centerRegionBaselineConstraint = self->_centerRegionBaselineConstraint;
  self->_centerRegionBaselineConstraint = v94;

  [array addObject:self->_centerRegionBaselineConstraint];
  heightAnchor4 = [layoutItem4 heightAnchor];
  v97 = [heightAnchor4 constraintEqualToConstant:v24];
  [array addObject:v97];

  leadingAnchor5 = [layoutItem4 leadingAnchor];
  trailingAnchor5 = [v177 trailingAnchor];
  v100 = [leadingAnchor5 constraintGreaterThanOrEqualToAnchor:trailingAnchor5 constant:v21];
  [array addObject:v100];

  leadingAnchor6 = [v176 leadingAnchor];
  trailingAnchor6 = [layoutItem4 trailingAnchor];
  v103 = [leadingAnchor6 constraintGreaterThanOrEqualToAnchor:trailingAnchor6 constant:v21];
  [array addObject:v103];

  leadingAnchor7 = [layoutItem4 leadingAnchor];
  trailingAnchor7 = [v177 trailingAnchor];
  v106 = [leadingAnchor7 constraintEqualToAnchor:trailingAnchor7 constant:v21];
  LODWORD(v107) = 1132003328;
  v108 = [v106 _ui_constraintWithPriority:v107];
  [array addObject:v108];

  leadingAnchor8 = [v176 leadingAnchor];
  trailingAnchor8 = [layoutItem4 trailingAnchor];
  v111 = [leadingAnchor8 constraintEqualToAnchor:trailingAnchor8 constant:v21];
  LODWORD(v112) = 1132003328;
  v113 = [v111 _ui_constraintWithPriority:v112];
  [array addObject:v113];

  centerXAnchor3 = [v179 centerXAnchor];
  trailingAnchor9 = [v177 trailingAnchor];
  v116 = [centerXAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor9 constant:0.0];
  leadingRegionTrailingAnchorConstraint = self->_leadingRegionTrailingAnchorConstraint;
  self->_leadingRegionTrailingAnchorConstraint = v116;

  [array addObject:self->_leadingRegionTrailingAnchorConstraint];
  leadingAnchor9 = [v176 leadingAnchor];
  centerXAnchor4 = [v179 centerXAnchor];
  v120 = [leadingAnchor9 constraintGreaterThanOrEqualToAnchor:centerXAnchor4 constant:0.0];
  trailingRegionLeadingAnchorConstraint = self->_trailingRegionLeadingAnchorConstraint;
  self->_trailingRegionLeadingAnchorConstraint = v120;

  [array addObject:self->_trailingRegionLeadingAnchorConstraint];
  v168 = layoutItem4;
  [v179 _ui_addSubLayoutItem:layoutItem4];

  [array2 addObject:v77];
  v122 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"expandedLeading"];
  v123 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v124 = objc_alloc_init(STUIStatusBarRegionAxisStackingLayout);
  [(STUIStatusBarRegionAxisStackingLayout *)v124 setAlignment:3];
  [(STUIStatusBarRegionAxisStackingLayout *)v124 setInterspace:v19];
  [(STUIStatusBarRegionAxesLayout *)v123 setHorizontalLayout:v124];

  v125 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:6];
  [(STUIStatusBarRegionAxesLayout *)v123 setVerticalLayout:v125];

  [(STUIStatusBarRegion *)v122 setLayout:v123];
  v126 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(STUIStatusBarRegion *)v122 setContentView:v126];

  [(STUIStatusBarRegion *)v122 setOffsetable:1];
  [(STUIStatusBarRegion *)v122 disableWithToken:10];
  layoutItem5 = [(STUIStatusBarRegion *)v122 layoutItem];
  leadingAnchor10 = [layoutItem5 leadingAnchor];
  leadingAnchor11 = [v179 leadingAnchor];
  v130 = [leadingAnchor10 constraintEqualToAnchor:leadingAnchor11 constant:v169];
  [array addObject:v130];

  bottomAnchor4 = [layoutItem5 bottomAnchor];
  topAnchor6 = [v179 topAnchor];
  v133 = [bottomAnchor4 constraintEqualToAnchor:topAnchor6 constant:v173];
  [array addObject:v133];

  heightAnchor5 = [layoutItem5 heightAnchor];
  v135 = [heightAnchor5 constraintEqualToConstant:v172];
  [array addObject:v135];

  [v179 _ui_addSubLayoutItem:layoutItem5];
  [array2 addObject:v122];

  v136 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"expandedTrailing"];
  v137 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v138 = objc_alloc_init(STUIStatusBarRegionAxisStackingLayout);
  [(STUIStatusBarRegionAxisStackingLayout *)v138 setAlignment:4];
  [(STUIStatusBarRegionAxisStackingLayout *)v138 setInterspace:v19];
  [(STUIStatusBarRegionAxesLayout *)v137 setHorizontalLayout:v138];

  v139 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:6];
  [(STUIStatusBarRegionAxesLayout *)v137 setVerticalLayout:v139];

  [(STUIStatusBarRegion *)v136 setLayout:v137];
  v140 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(STUIStatusBarRegion *)v136 setContentView:v140];

  [(STUIStatusBarRegion *)v136 setOffsetable:1];
  [(STUIStatusBarRegion *)v136 disableWithToken:10];
  layoutItem6 = [(STUIStatusBarRegion *)v136 layoutItem];
  leadingAnchor12 = [layoutItem6 leadingAnchor];
  trailingAnchor10 = [layoutItem5 trailingAnchor];
  v144 = [leadingAnchor12 constraintEqualToAnchor:trailingAnchor10 constant:v21];
  [array addObject:v144];

  widthAnchor2 = [layoutItem6 widthAnchor];
  v170 = layoutItem5;
  widthAnchor3 = [layoutItem5 widthAnchor];
  v147 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3];
  LODWORD(v148) = 1131741184;
  v149 = [v147 _ui_constraintWithPriority:v148];
  [array addObject:v149];

  trailingAnchor11 = [layoutItem6 trailingAnchor];
  trailingAnchor12 = [v179 trailingAnchor];
  v152 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12 constant:-v171];
  [array addObject:v152];

  bottomAnchor5 = [layoutItem6 bottomAnchor];
  topAnchor7 = [v179 topAnchor];
  v155 = [bottomAnchor5 constraintEqualToAnchor:topAnchor7 constant:v173];
  [array addObject:v155];

  heightAnchor6 = [layoutItem6 heightAnchor];
  v157 = [heightAnchor6 constraintEqualToConstant:v172];
  [array addObject:v157];

  [v179 _ui_addSubLayoutItem:layoutItem6];
  [array2 addObject:v136];

  v158 = STUIStatusBarAddLumaView(v179, array, v177, 1, v174);
  [(STUIStatusBarVisualProvider_Pad *)self setLeadingBackgroundLumaView:v158];

  v159 = STUIStatusBarAddLumaView(v179, array, v176, 2, v174);
  [(STUIStatusBarVisualProvider_Pad *)self setTrailingBackgroundLumaView:v159];

  if (_UIEnhancedMainMenuEnabled())
  {
    v160 = v168;
    v161 = STUIStatusBarAddLumaView(v179, array, v168, 0, v174);
    [(STUIStatusBarVisualProvider_Pad *)self setCenterBackgroundLumaView:v161];

    leadingBackgroundLumaView = [(STUIStatusBarVisualProvider_Pad *)self leadingBackgroundLumaView];
    v180[0] = leadingBackgroundLumaView;
    centerBackgroundLumaView = [(STUIStatusBarVisualProvider_Pad *)self centerBackgroundLumaView];
    v180[1] = centerBackgroundLumaView;
    trailingBackgroundLumaView = [(STUIStatusBarVisualProvider_Pad *)self trailingBackgroundLumaView];
    v180[2] = trailingBackgroundLumaView;
    v165 = [MEMORY[0x277CBEA60] arrayWithObjects:v180 count:3];
  }

  else
  {
    leadingBackgroundLumaView = [(STUIStatusBarVisualProvider_Pad *)self leadingBackgroundLumaView];
    v181[0] = leadingBackgroundLumaView;
    centerBackgroundLumaView = [(STUIStatusBarVisualProvider_Pad *)self trailingBackgroundLumaView];
    v181[1] = centerBackgroundLumaView;
    v165 = [MEMORY[0x277CBEA60] arrayWithObjects:v181 count:2];
    v160 = v168;
  }

  v166 = [objc_alloc(MEMORY[0x277D760C8]) initWithTransitionBoundaries:self minimumDifference:v165 delegate:0.4 views:{0.7, 0.5}];
  [(STUIStatusBarVisualProvider_iOS *)self setLumaTrackingGroup:v166];

  [MEMORY[0x277CCAAD0] activateConstraints:array];

  return array2;
}

- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)identifier
{
  v109[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  orderedDisplayItemPlacements = self->_orderedDisplayItemPlacements;
  if (!orderedDisplayItemPlacements)
  {
    v86 = identifierCopy;
    v6 = +[(STUIStatusBarCellularItem *)STUIStatusBarCellularExpandedItem];
    v7 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v6 priority:1003];

    v8 = +[STUIStatusBarTimeItem shortTimeDisplayIdentifier];
    v9 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v8 priority:1200];
    v109[0] = v7;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v109 count:1];
    v11 = [v9 excludingPlacements:v10];

    v12 = +[STUIStatusBarTimeItem timeDisplayIdentifier];
    v13 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v12 priority:1201];
    v108[0] = v7;
    v108[1] = v11;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v108 count:2];
    v15 = [v13 excludingPlacements:v14];
    timePlacement = self->_timePlacement;
    self->_timePlacement = v15;

    v17 = +[STUIStatusBarTimeItem dateDisplayIdentifier];
    v18 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v17 priority:700];
    v107[0] = self->_timePlacement;
    v107[1] = v11;
    v93 = v11;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v107 count:2];
    v20 = [v18 requiringAnyPlacements:v19];
    datePlacement = self->_datePlacement;
    self->_datePlacement = v20;

    [(STUIStatusBarVisualProvider_Pad *)self _updateDateAndTimePlacements];
    [MEMORY[0x277CBEB18] array];
    v23 = v22 = self;
    v24 = +[(STUIStatusBarItem *)STUIStatusBarNavigationItem];
    v25 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v24 priority:1103];
    v106[0] = v25;
    v26 = +[(STUIStatusBarItem *)STUIStatusBarPersonNameItem];
    v27 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v26 priority:1102];
    v105 = v7;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v105 count:1];
    v29 = [v27 excludingPlacements:v28];
    v106[1] = v29;
    v106[2] = v7;
    v85 = v7;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v106 count:3];
    [v23 addObjectsFromArray:v30];

    v31 = +[STUIStatusBarSettingsDomain rootSettings];
    visualProviderSettings = [v31 visualProviderSettings];
    LODWORD(v26) = [visualProviderSettings showsDateBeforeTime];

    if (v26)
    {
      v33 = v22->_timePlacement;
      v104[0] = v22->_datePlacement;
      v104[1] = v33;
      v104[2] = v93;
      v34 = v104;
    }

    else
    {
      v103[0] = v22->_timePlacement;
      v103[1] = v93;
      v103[2] = v22->_datePlacement;
      v34 = v103;
    }

    v35 = v22;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:3];
    [v23 addObjectsFromArray:v36];

    v37 = objc_opt_class();
    v90 = [STUIStatusBarDisplayItemPlacementNetworkGroup groupWithHighPriority:3500 lowPriority:3200 cellularItemClass:v37 wifiItemClass:objc_opt_class() includeCellularName:0];
    [(STUIStatusBarVisualProvider_iOS *)v22 bluetoothPaddingInset];
    v38 = [STUIStatusBarDisplayItemPlacementIndicatorsGroup groupWithHighPriority:3400 lowPriority:3100 bluetoothPaddingInset:?];
    v91 = +[STUIStatusBarDisplayItemPlacementBatteryGroup groupWithHighPriority:lowPriority:](STUIStatusBarDisplayItemPlacementBatteryGroup, "groupWithHighPriority:lowPriority:", [v90 maximumPriority] + 1, objc_msgSend(v38, "minimumPriority") - 5);
    array = [MEMORY[0x277CBEB18] array];
    v40 = +[(STUIStatusBarItem *)STUIStatusBarSensorActivityItem];
    v89 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v40 priority:3720];

    v88 = [STUIStatusBarIndicatorLocationItem groupWithPriority:3710];
    v41 = +[STUIStatusBarPillBackgroundActivityItem pillCombinedDisplayIdentifier];
    v42 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v41 priority:3700];

    v43 = +[(STUIStatusBarItem *)STUIStatusBarVoiceControlPillItem];
    v87 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v43 priority:3680];

    unstablePlacements = [v38 unstablePlacements];
    [array addObjectsFromArray:unstablePlacements];

    [(STUIStatusBarVisualProvider_iOS *)v35 itemSpacing];
    v92 = v38;
    v82 = +[STUIStatusBarDisplayItemPlacement spacerPlacementWithSize:priority:](STUIStatusBarDisplayItemPlacement, "spacerPlacementWithSize:priority:", [v38 minimumPriority] - 2, v45 * -2.0 + 8.0, 0.0);
    v101 = v42;
    v46 = [MEMORY[0x277CBEA60] arrayWithObjects:&v101 count:1];
    v47 = [v82 requiringAllPlacements:v46];
    unstablePlacements2 = [v38 unstablePlacements];
    v49 = [v47 requiringAnyPlacements:unstablePlacements2];
    v102[0] = v49;
    v102[1] = v42;
    v83 = v35;
    [(STUIStatusBarVisualProvider_iOS *)v35 itemSpacing];
    v51 = +[STUIStatusBarDisplayItemPlacement spacerPlacementWithSize:priority:](STUIStatusBarDisplayItemPlacement, "spacerPlacementWithSize:priority:", [v42 priority] - 1, v50 * -2.0 + 8.0, 0.0);
    v84 = v42;
    v100 = v42;
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:&v100 count:1];
    v53 = [v51 requiringAllPlacements:v52];
    v102[2] = v53;
    v102[3] = v89;
    v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v102 count:4];
    [array addObjectsFromArray:v54];

    placements = [v88 placements];
    [array addObjectsFromArray:placements];

    v99[0] = v87;
    v56 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorAirplaneModeItem];
    v57 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v56 priority:3600];
    cellularGroup = [v90 cellularGroup];
    placementsAffectedByAirplaneMode = [cellularGroup placementsAffectedByAirplaneMode];
    v60 = [v57 excludingPlacements:placementsAffectedByAirplaneMode];
    v99[1] = v60;
    v61 = [MEMORY[0x277CBEA60] arrayWithObjects:v99 count:2];
    [array addObjectsFromArray:v61];

    placements2 = [v90 placements];
    [array addObjectsFromArray:placements2];

    stablePlacements = [v92 stablePlacements];
    [array addObjectsFromArray:stablePlacements];

    v64 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorDisplayWarningItem];
    v65 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v64 priority:3730];
    [array addObject:v65];

    placements3 = [v91 placements];
    v67 = array;
    [array addObjectsFromArray:placements3];

    if (_UIEnhancedMainMenuEnabled())
    {
      v68 = +[(STUIStatusBarItem *)STUIStatusBarMenuBarItem];
      v69 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v68 priority:2000];
      v98 = v69;
      v70 = [MEMORY[0x277CBEA60] arrayWithObjects:&v98 count:1];

      v71 = +[STUIStatusBarMenuBarItem backgroundDisplayIdentifier];
      v72 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v71 priority:2001];
      v97 = v72;
      v73 = [MEMORY[0x277CBEA60] arrayWithObjects:&v97 count:1];
    }

    else
    {
      v71 = +[(STUIStatusBarItem *)STUIStatusBarLockItem];
      v72 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v71 priority:2000];
      v96[0] = v72;
      v74 = +[STUIStatusBarLockItem textDisplayIdentifier];
      v75 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v74 priority:1999];
      v96[1] = v75;
      v70 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:2];

      v73 = MEMORY[0x277CBEBF8];
    }

    v94[0] = @"leading";
    v94[1] = @"trailing";
    v95[0] = v23;
    v95[1] = v67;
    v95[2] = v70;
    v94[2] = @"center";
    v94[3] = @"expandedLeading";
    expandedLeadingPlacements = [(STUIStatusBarVisualProvider_iOS *)v83 expandedLeadingPlacements];
    v95[3] = expandedLeadingPlacements;
    v94[4] = @"expandedTrailing";
    expandedTrailingPlacements = [(STUIStatusBarVisualProvider_iOS *)v83 expandedTrailingPlacements];
    v94[5] = @"background";
    v95[4] = expandedTrailingPlacements;
    v95[5] = v73;
    v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:v94 count:6];
    v79 = v83->_orderedDisplayItemPlacements;
    v83->_orderedDisplayItemPlacements = v78;

    orderedDisplayItemPlacements = v83->_orderedDisplayItemPlacements;
    identifierCopy = v86;
  }

  v80 = [(NSDictionary *)orderedDisplayItemPlacements objectForKeyedSubscript:identifierCopy];

  return v80;
}

- (id)regionIdentifiersForPartWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqual:@"leadingPartIdentifier"])
  {
    v4 = MEMORY[0x277CBEB98];
    v9 = @"expandedLeading";
    v10 = 0;
LABEL_3:
    v5 = @"leading";
LABEL_13:
    [v4 setWithObjects:{v5, v9, v10, v11, v12}];
    goto LABEL_14;
  }

  if ([identifierCopy isEqual:@"trailingPartIdentifier"])
  {
    [MEMORY[0x277CBEB98] setWithObjects:{@"trailing", @"expandedTrailing", 0, v11, v12}];
    v6 = LABEL_14:;
    goto LABEL_15;
  }

  if ([identifierCopy isEqual:@"centerPartIdentifier"])
  {
    [MEMORY[0x277CBEB98] setWithObjects:{@"center", @"background", 0, v11, v12}];
    goto LABEL_14;
  }

  if ([identifierCopy isEqual:@"normalPartIdentifier"])
  {
    v4 = MEMORY[0x277CBEB98];
    v11 = @"background";
    v12 = 0;
    v9 = @"trailing";
    v10 = @"center";
    goto LABEL_3;
  }

  if (([identifierCopy isEqual:@"expandedPartIdentifier"] & 1) != 0 || objc_msgSend(identifierCopy, "isEqual:", @"visibleExpandedPartIdentifier"))
  {
    v4 = MEMORY[0x277CBEB98];
    v9 = @"expandedTrailing";
    v10 = 0;
    v5 = @"expandedLeading";
    goto LABEL_13;
  }

  v6 = [MEMORY[0x277CBEB98] set];
LABEL_15:
  v7 = v6;

  return v7;
}

- (id)displayItemIdentifiersForPartWithIdentifier:(id)identifier
{
  v16[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if ([identifierCopy isEqual:@"fittingLeadingPartIdentifier"])
  {
    statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    if ([(STUIStatusBarVisualProvider_iOS *)self expanded])
    {
      v16[0] = @"expandedLeading";
      v6 = v16;
    }

    else
    {
      v15 = @"leading";
      v6 = &v15;
    }

LABEL_11:
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
    v9 = [statusBar displayItemIdentifiersInRegionsWithIdentifiers:v8];
    goto LABEL_12;
  }

  if ([identifierCopy isEqual:@"fittingTrailingPartIdentifier"])
  {
    statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    if ([(STUIStatusBarVisualProvider_iOS *)self expanded])
    {
      v14 = @"expandedTrailing";
      v6 = &v14;
    }

    else
    {
      v13 = @"trailing";
      v6 = &v13;
    }

    goto LABEL_11;
  }

  if ([identifierCopy isEqual:@"clockPartIdentifier"])
  {
    v7 = MEMORY[0x277CBEB98];
    statusBar = +[STUIStatusBarTimeItem shortTimeDisplayIdentifier];
    v8 = +[STUIStatusBarTimeItem timeDisplayIdentifier];
    v9 = [v7 setWithObjects:{statusBar, v8, 0}];
LABEL_12:
    v10 = v9;

    goto LABEL_13;
  }

  v12.receiver = self;
  v12.super_class = STUIStatusBarVisualProvider_Pad;
  v10 = [(STUIStatusBarVisualProvider_iOS *)&v12 displayItemIdentifiersForPartWithIdentifier:identifierCopy];
LABEL_13:

  return v10;
}

- (CGRect)clockBoundsForLayoutItem:(id)item
{
  itemCopy = item;
  identifier = [itemCopy identifier];
  v6 = +[STUIStatusBarTimeItem timeDisplayIdentifier];

  view = [itemCopy view];

  if (identifier == v6)
  {
    statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    currentAggregatedData = [statusBar currentAggregatedData];
    shortTimeEntry = [currentAggregatedData shortTimeEntry];
    stringValue = [shortTimeEntry stringValue];

    _StatusBar_UITimeSizeForLabel();
    v13 = v20;
    v15 = v21;
    v9 = 0.0;

    v11 = 0.0;
  }

  else
  {
    [view bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  v22 = v9;
  v23 = v11;
  v24 = v13;
  v25 = v15;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (id)styleAttributesForStyle:(int64_t)style
{
  v20.receiver = self;
  v20.super_class = STUIStatusBarVisualProvider_Pad;
  v4 = [(STUIStatusBarVisualProvider_iOS *)&v20 styleAttributesForStyle:style];
  mode = [v4 mode];
  if (mode <= 1)
  {
    if (mode)
    {
      if (mode != 1)
      {
        goto LABEL_11;
      }

      [v4 setIconScale:1.16];
      traitCollection = [v4 traitCollection];
      [traitCollection displayScale];
      [v4 setIconSize:15];

      expandedFont = [(STUIStatusBarVisualProvider_Pad *)self expandedFont];
      goto LABEL_9;
    }
  }

  else if ((mode - 2) >= 3)
  {
    if (mode != 5)
    {
      goto LABEL_11;
    }

    [v4 setIconScale:1.0];
    traitCollection2 = [v4 traitCollection];
    [traitCollection2 displayScale];
    [v4 setIconSize:14];

    normalFont = [(STUIStatusBarVisualProvider_Pad *)self normalFont];
    [v4 setFont:normalFont];

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [v4 setTextColor:whiteColor];

    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    [v4 setImageTintColor:whiteColor2];
    goto LABEL_10;
  }

  [v4 setIconScale:1.0];
  traitCollection3 = [v4 traitCollection];
  [traitCollection3 displayScale];
  [v4 setIconSize:14];

  expandedFont = [(STUIStatusBarVisualProvider_Pad *)self normalFont];
LABEL_9:
  whiteColor2 = expandedFont;
  [v4 setFont:expandedFont];
LABEL_10:

LABEL_11:
  v13 = +[STUIStatusBarSettingsDomain rootSettings];
  visualProviderSettings = [v13 visualProviderSettings];
  hasBoldTime = [visualProviderSettings hasBoldTime];

  if (hasBoldTime)
  {
    v16 = MEMORY[0x277D74300];
    normalFont2 = [(STUIStatusBarVisualProvider_Pad *)self normalFont];
    [normalFont2 pointSize];
    v18 = [v16 systemFontOfSize:? weight:?];
    [v4 setEmphasizedFont:v18];
  }

  else
  {
    normalFont2 = [v4 font];
    [v4 setEmphasizedFont:normalFont2];
  }

  [v4 setImageNamePrefixes:&unk_287D1AE28];

  return v4;
}

- (id)overriddenStyleAttributesForDisplayItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[STUIStatusBarPillBackgroundActivityItem pillCombinedDisplayIdentifier];

  if (v5 == identifierCopy)
  {
    v8 = +[STUIStatusBarStyleAttributes overriddenStyleAttributes];
    pillFont = [(STUIStatusBarVisualProvider_Pad *)self pillFont];
    [v8 setFont:pillFont];

    pillSmallFont = [(STUIStatusBarVisualProvider_Pad *)self pillSmallFont];
    [v8 setSmallFont:pillSmallFont];

    [(STUIStatusBarVisualProvider_Pad *)self pillSize];
LABEL_7:
    [v8 setIconScale:v11 / 21.3333333];
    [v8 setSymbolScale:2];
    goto LABEL_8;
  }

  v6 = +[(STUIStatusBarPillBackgroundActivityItem *)STUIStatusBarExpandedPillBackgroundActivityItem];

  if (v6 == identifierCopy)
  {
    v8 = +[STUIStatusBarStyleAttributes overriddenStyleAttributes];
    expandedPillFont = [(STUIStatusBarVisualProvider_Pad *)self expandedPillFont];
    [v8 setFont:expandedPillFont];

    expandedPillFont2 = [(STUIStatusBarVisualProvider_Pad *)self expandedPillFont];
    [v8 setSmallFont:expandedPillFont2];

    [(STUIStatusBarVisualProvider_Pad *)self expandedPillSize];
    goto LABEL_7;
  }

  v7 = +[(STUIStatusBarItem *)STUIStatusBarMenuBarItem];

  if (v7 == identifierCopy)
  {
    v8 = +[STUIStatusBarStyleAttributes overriddenStyleAttributes];
    emphasizedFont = [(STUIStatusBarVisualProvider_Pad *)self emphasizedFont];
    [v8 setEmphasizedFont:emphasizedFont];
  }

  else
  {
    v8 = 0;
  }

LABEL_8:

  return v8;
}

- (void)actionable:(id)actionable highlighted:(BOOL)highlighted initialPress:(BOOL)press
{
  pressCopy = press;
  highlightedCopy = highlighted;
  v19[1] = *MEMORY[0x277D85DE8];
  actionableCopy = actionable;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = 0;
LABEL_8:
    v16.receiver = self;
    v16.super_class = STUIStatusBarVisualProvider_Pad;
    [(STUIStatusBarVisualProvider_iOS *)&v16 actionable:actionableCopy highlighted:highlightedCopy initialPress:pressCopy];
    goto LABEL_9;
  }

  v9 = actionableCopy;
  v10 = v9;
  if (!v9)
  {
    goto LABEL_8;
  }

  identifier = [v9 identifier];
  v12 = +[STUIStatusBarPillBackgroundActivityItem pillCombinedDisplayIdentifier];

  if (identifier != v12)
  {
    goto LABEL_8;
  }

  highlightView = [v10 highlightView];
  if (!highlightView)
  {
    highlightView = objc_alloc_init(STUIStatusBarRoundedCornerView);
    [v10 setHighlightView:highlightView];
  }

  v14 = MEMORY[0x277D75220];
  v19[0] = highlightView;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __71__STUIStatusBarVisualProvider_Pad_actionable_highlighted_initialPress___block_invoke;
  v17[3] = &__block_descriptor_33_e16_v16__0__UIView_8l;
  v18 = highlightedCopy;
  [v14 _setVisuallyHighlighted:highlightedCopy forViews:v15 initialPress:pressCopy highlightBlock:v17];

LABEL_9:
}

- (void)statusBarEnabledPartsUpdated
{
  v46[1] = *MEMORY[0x277D85DE8];
  statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  v4 = [statusBar regionWithIdentifier:@"leading"];

  statusBar2 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  v6 = [statusBar2 regionWithIdentifier:@"trailing"];

  statusBar3 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  containerView = [statusBar3 containerView];
  centerXAnchor = [containerView centerXAnchor];

  statusBar4 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  containerView2 = [statusBar4 containerView];
  centerXAnchor2 = [containerView2 centerXAnchor];

  statusBar5 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  v14 = [statusBar5 regionWithIdentifier:@"center"];
  isEnabled = [v14 isEnabled];

  if ((isEnabled & 1) == 0)
  {
    if ([v4 isEnabled])
    {
      if ([v6 isEnabled])
      {
        goto LABEL_7;
      }

      statusBar6 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
      containerView3 = [statusBar6 containerView];
      trailingAnchor = [containerView3 trailingAnchor];
      v19 = centerXAnchor;
      centerXAnchor = trailingAnchor;
    }

    else
    {
      statusBar6 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
      containerView3 = [statusBar6 containerView];
      leadingAnchor = [containerView3 leadingAnchor];
      v19 = centerXAnchor2;
      centerXAnchor2 = leadingAnchor;
    }
  }

LABEL_7:
  v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  firstAnchor = [(NSLayoutConstraint *)self->_leadingRegionTrailingAnchorConstraint firstAnchor];

  if (centerXAnchor != firstAnchor)
  {
    [v21 addObject:self->_leadingRegionTrailingAnchorConstraint];
    v24 = MEMORY[0x277CCAAD0];
    v46[0] = self->_leadingRegionTrailingAnchorConstraint;
    [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
    v26 = v25 = v6;
    [v24 deactivateConstraints:v26];

    layoutItem = [v4 layoutItem];
    trailingAnchor2 = [layoutItem trailingAnchor];
    [(NSLayoutConstraint *)self->_leadingRegionTrailingAnchorConstraint constant];
    v29 = [centerXAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2 constant:?];
    leadingRegionTrailingAnchorConstraint = self->_leadingRegionTrailingAnchorConstraint;
    self->_leadingRegionTrailingAnchorConstraint = v29;

    v6 = v25;
    [v22 addObject:self->_leadingRegionTrailingAnchorConstraint];
  }

  secondAnchor = [(NSLayoutConstraint *)self->_trailingRegionLeadingAnchorConstraint secondAnchor];

  if (centerXAnchor2 != secondAnchor)
  {
    [v21 addObject:self->_trailingRegionLeadingAnchorConstraint];
    layoutItem2 = [v6 layoutItem];
    [layoutItem2 leadingAnchor];
    v34 = v33 = v6;
    [(NSLayoutConstraint *)self->_trailingRegionLeadingAnchorConstraint constant];
    v35 = [v34 constraintGreaterThanOrEqualToAnchor:centerXAnchor2 constant:?];
    trailingRegionLeadingAnchorConstraint = self->_trailingRegionLeadingAnchorConstraint;
    self->_trailingRegionLeadingAnchorConstraint = v35;

    v6 = v33;
    [v22 addObject:self->_trailingRegionLeadingAnchorConstraint];
  }

  if ([v21 count])
  {
    [MEMORY[0x277CCAAD0] deactivateConstraints:v21];
    [MEMORY[0x277CCAAD0] activateConstraints:v22];
    statusBar7 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    [statusBar7 avoidanceFrame];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;

    v47.origin.x = v39;
    v47.origin.y = v41;
    v47.size.width = v43;
    v47.size.height = v45;
    if (!CGRectIsEmpty(v47))
    {
      [(STUIStatusBarVisualProvider_Pad *)self _updateConstraintsForAvoidanceFrame:v39, v41, v43, v45];
    }
  }
}

- (void)_updateConstraintsForAvoidanceFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  [statusBar bounds];
  r1.origin.x = v9;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v53.origin.x = x;
  v53.origin.y = y;
  v53.size.width = width;
  v53.size.height = height;
  v16 = 0.0;
  if (CGRectIsEmpty(v53))
  {
    v17 = 0.0;
    goto LABEL_16;
  }

  v54.origin.x = r1.origin.x;
  v54.origin.y = v11;
  v54.size.width = v13;
  v54.size.height = v15;
  v62.origin.x = x;
  v62.origin.y = y;
  v62.size.width = width;
  v62.size.height = height;
  v55 = CGRectIntersection(v54, v62);
  IsEmpty = CGRectIsEmpty(v55);
  v19 = v15;
  v17 = 0.0;
  if (!IsEmpty)
  {
    v20 = r1.origin.x;
    v21 = v11;
    v22 = v13;
    v23 = v19;
    MidX = CGRectGetMidX(*(&v19 - 3));
    v56.origin.x = x;
    v56.origin.y = y;
    v56.size.width = width;
    v56.size.height = height;
    v49 = fmax(MidX - CGRectGetMinX(v56), 0.0);
    v57.origin.x = x;
    v57.origin.y = y;
    v57.size.width = width;
    v57.size.height = height;
    MaxX = CGRectGetMaxX(v57);
    v58.origin.x = r1.origin.x;
    v48 = v13;
    v58.origin.y = v11;
    v58.size.width = v13;
    v58.size.height = v23;
    v26 = fmax(MaxX - CGRectGetMidX(v58), 0.0);
    statusBar2 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    v28 = [statusBar2 regionWithIdentifier:@"center"];
    isEnabled = [v28 isEnabled];

    if ((isEnabled & 1) == 0)
    {
      statusBar3 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
      v31 = [statusBar3 regionWithIdentifier:@"leading"];
      isEnabled2 = [v31 isEnabled];

      if (isEnabled2)
      {
        statusBar4 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
        v34 = [statusBar4 regionWithIdentifier:@"trailing"];
        isEnabled3 = [v34 isEnabled];

        v36 = v11;
        v37 = v48;
        if ((isEnabled3 & 1) == 0)
        {
          v38 = r1.origin.x;
          v39 = v23;
          v40 = CGRectGetMaxX(*(&v36 - 1));
          v59.origin.x = x;
          v59.origin.y = y;
          v59.size.width = width;
          v59.size.height = height;
          v41 = fmax(v40 - CGRectGetMinX(v59), 0.0);
LABEL_10:
          statusBar5 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
          _shouldReverseLayoutDirection = [statusBar5 _shouldReverseLayoutDirection];

          if (_shouldReverseLayoutDirection)
          {
            v16 = v41;
          }

          else
          {
            v16 = v26;
          }

          if (_shouldReverseLayoutDirection)
          {
            v17 = v26;
          }

          else
          {
            v17 = v41;
          }

          goto LABEL_16;
        }
      }

      else
      {
        v60.origin.x = x;
        v60.origin.y = y;
        v60.size.width = width;
        v60.size.height = height;
        v42 = CGRectGetMaxX(v60);
        v61.origin.x = r1.origin.x;
        v61.origin.y = v11;
        v61.size.width = v48;
        v61.size.height = v23;
        v26 = fmax(v42 - CGRectGetMinX(v61), 0.0);
      }
    }

    v41 = v49;
    goto LABEL_10;
  }

LABEL_16:
  [(NSLayoutConstraint *)self->_leadingRegionTrailingAnchorConstraint constant];
  v46 = v45;
  if (v17 != v45)
  {
    [(NSLayoutConstraint *)self->_leadingRegionTrailingAnchorConstraint setConstant:v17];
  }

  [(NSLayoutConstraint *)self->_trailingRegionLeadingAnchorConstraint constant];
  if (v16 == v47)
  {
    if (v17 == v46)
    {
      return;
    }
  }

  else
  {
    [(NSLayoutConstraint *)self->_trailingRegionLeadingAnchorConstraint setConstant:v16];
  }

  *&r1.origin.y = MEMORY[0x277D85DD0];
  *&r1.size.width = 3221225472;
  *&r1.size.height = __71__STUIStatusBarVisualProvider_Pad__updateConstraintsForAvoidanceFrame___block_invoke;
  v51 = &unk_279D37F00;
  selfCopy = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:&r1.origin.y];
}

- (void)avoidanceFrameUpdatedFromFrame:(CGRect)frame withAnimationSettings:(id)settings options:(unint64_t)options
{
  v6 = [(STUIStatusBarVisualProvider_iOS *)self statusBar:settings];
  [v6 avoidanceFrame];
  [(STUIStatusBarVisualProvider_Pad *)self _updateConstraintsForAvoidanceFrame:?];
}

- (void)sizeUpdatedFromSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  [statusBar avoidanceFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v21.origin.x = v8;
  v21.origin.y = v10;
  v21.size.width = v12;
  v21.size.height = v14;
  if (!CGRectIsEmpty(v21))
  {
    statusBar2 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    [statusBar2 bounds];
    v17 = v16;
    v19 = v18;

    if (width != v17 || height != v19)
    {

      [(STUIStatusBarVisualProvider_Pad *)self _updateConstraintsForAvoidanceFrame:v8, v10, v12, v14];
    }
  }
}

- (void)itemCreated:(id)created
{
  createdCopy = created;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [createdCopy setShowsDisabledSignalBars:0];
    goto LABEL_10;
  }

  identifier = [createdCopy identifier];
  v5 = +[(STUIStatusBarItem *)STUIStatusBarPillBackgroundActivityItem];

  if (identifier == v5)
  {
    v10 = createdCopy;
    [(STUIStatusBarVisualProvider_Pad *)self pillSize];
  }

  else
  {
    identifier2 = [createdCopy identifier];
    v7 = +[(STUIStatusBarItem *)STUIStatusBarVoiceControlPillItem];

    if (identifier2 == v7)
    {
      v10 = createdCopy;
      [(STUIStatusBarVisualProvider_Pad *)self smallPillSize];
    }

    else
    {
      identifier3 = [createdCopy identifier];
      v9 = +[(STUIStatusBarItem *)STUIStatusBarExpandedPillBackgroundActivityItem];

      if (identifier3 != v9)
      {
        goto LABEL_10;
      }

      v10 = createdCopy;
      [(STUIStatusBarVisualProvider_Pad *)self expandedPillSize];
    }
  }

  [v10 setPillSize:?];

LABEL_10:
}

- (BOOL)_updateDateAndTimePlacements
{
  v3 = __UIKitUserDefaults();
  v4 = [v3 BOOLForKey:@"StatusBarHidesDate"];
  v5 = [v3 BOOLForKey:@"StatusBarHidesAMPM"];
  v6 = v4 ^ [(STUIStatusBarDisplayItemPlacement *)self->_datePlacement isEnabled];
  if ((v6 & 1) == 0)
  {
    [(STUIStatusBarDisplayItemPlacement *)self->_datePlacement setEnabled:v4 ^ 1u];
  }

  if (v5 == [(STUIStatusBarDisplayItemPlacement *)self->_timePlacement isEnabled])
  {
    [(STUIStatusBarDisplayItemPlacement *)self->_timePlacement setEnabled:v5 ^ 1u];
    v7 = 1;
  }

  else
  {
    v7 = v6 ^ 1;
  }

  return v7;
}

- (void)_dateTimePreferencesUpdated
{
  if ([(STUIStatusBarVisualProvider_Pad *)self _updateDateAndTimePlacements])
  {
    statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    [statusBar updateWithAnimations:MEMORY[0x277CBEBF8]];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = __UIKitUserDefaults();

  if (v13 == objectCopy)
  {
    [(STUIStatusBarVisualProvider_Pad *)self _dateTimePreferencesUpdated];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = STUIStatusBarVisualProvider_Pad;
    [(STUIStatusBarVisualProvider_Pad *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (double)airplaneTravelOffsetInProposedPartWithIdentifier:(id *)identifier animationType:(int64_t)type
{
  if ([(STUIStatusBarVisualProvider_iOS *)self expanded]&& [(STUIStatusBarVisualProvider_iOS *)self wantsExpandedLeadingPlacements])
  {
    v37.receiver = self;
    v37.super_class = STUIStatusBarVisualProvider_Pad;
    [(STUIStatusBarVisualProvider_iOS *)&v37 airplaneTravelOffsetInProposedPartWithIdentifier:identifier animationType:type];
    return v7;
  }

  else
  {
    v9 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorAirplaneModeItem];
    statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    [statusBar frameForDisplayItemWithIdentifier:v9];
    v12 = v11;
    v35 = v13;
    v36 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v34 = v17;

    statusBar2 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    [statusBar2 frameForPartWithIdentifier:*identifier includeInternalItems:1];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v38.origin.x = v12;
    v38.origin.y = v14;
    v38.size.width = v16;
    v38.size.height = v18;
    MinX = CGRectGetMinX(v38);
    v39.origin.x = v21;
    v39.origin.y = v23;
    v39.size.width = v25;
    v39.size.height = v27;
    v29 = MinX - CGRectGetMinX(v39);
    v40.origin.x = v21;
    v40.origin.y = v23;
    v40.size.width = v25;
    v40.size.height = v27;
    MaxX = CGRectGetMaxX(v40);
    v41.origin.x = v36;
    v41.origin.y = v35;
    v41.size.width = v16;
    v41.size.height = v34;
    v31 = MaxX - CGRectGetMaxX(v41);
    if (v29 <= v31)
    {
      v8 = v29;
    }

    else
    {
      v8 = v31;
    }

    if (type == 1)
    {
      v42.origin.x = v36;
      v42.origin.y = v35;
      v42.size.width = v16;
      v42.size.height = v34;
      v8 = v8 - CGRectGetWidth(v42);
    }

    v32 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorAirplaneModeItem];
    *identifier = [v32 stringRepresentation];
  }

  return v8;
}

- (double)airplaneSpeedForAnimationType:(int64_t)type
{
  if (![(STUIStatusBarVisualProvider_iOS *)self expanded]|| ![(STUIStatusBarVisualProvider_iOS *)self wantsExpandedLeadingPlacements])
  {
    return 160.0;
  }

  v6.receiver = self;
  v6.super_class = STUIStatusBarVisualProvider_Pad;
  [(STUIStatusBarVisualProvider_iOS *)&v6 airplaneSpeedForAnimationType:type];
  return result;
}

- (double)airplaneShouldFadeForAnimationType:(int64_t)type
{
  expanded = [(STUIStatusBarVisualProvider_iOS *)self expanded];
  result = 1.0;
  if (expanded)
  {
    v7.receiver = self;
    v7.super_class = STUIStatusBarVisualProvider_Pad;
    [(STUIStatusBarVisualProvider_iOS *)&v7 airplaneShouldFadeForAnimationType:type, 1.0];
  }

  return result;
}

- (id)regionIdentifiersForBackgroundLumaView:(id)view
{
  viewCopy = view;
  leadingBackgroundLumaView = [(STUIStatusBarVisualProvider_Pad *)self leadingBackgroundLumaView];

  if (leadingBackgroundLumaView == viewCopy)
  {
    [MEMORY[0x277CBEB98] setWithObjects:{@"leading", 0}];
  }

  else
  {
    trailingBackgroundLumaView = [(STUIStatusBarVisualProvider_Pad *)self trailingBackgroundLumaView];

    if (trailingBackgroundLumaView == viewCopy)
    {
      [MEMORY[0x277CBEB98] setWithObjects:{@"trailing", 0}];
    }

    else
    {
      centerBackgroundLumaView = [(STUIStatusBarVisualProvider_Pad *)self centerBackgroundLumaView];

      if (centerBackgroundLumaView != viewCopy)
      {
        v8 = [MEMORY[0x277CBEB98] set];
        goto LABEL_9;
      }

      [MEMORY[0x277CBEB98] setWithObjects:{@"center", 0}];
    }
  }
  v8 = ;
LABEL_9:
  v9 = v8;

  return v9;
}

- (void)modeUpdatedFromMode:(int64_t)mode
{
  v9.receiver = self;
  v9.super_class = STUIStatusBarVisualProvider_Pad;
  [(STUIStatusBarVisualProvider_iOS *)&v9 modeUpdatedFromMode:?];
  statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  mode = [statusBar mode];

  v7 = [(STUIStatusBarVisualProvider_Pad *)self _updateToShowShowBackgroundFromMode:mode toMode:mode];
  if ([(STUIStatusBarVisualProvider_Pad *)self _updateToShowMenuBarFromMode:mode toMode:mode]|| v7)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__STUIStatusBarVisualProvider_Pad_modeUpdatedFromMode___block_invoke;
    v8[3] = &unk_279D37F00;
    v8[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v8];
  }
}

- (BOOL)_updateToShowShowBackgroundFromMode:(int64_t)mode toMode:(int64_t)toMode
{
  v4 = (mode != 5) ^ (toMode == 5);
  if ((mode != 5) == (toMode == 5))
  {
    v7 = objc_opt_class();
    if (toMode == 5)
    {
      [v7 overlayMenuBaselineOffset];
    }

    else
    {
      [v7 baselineOffset];
    }

    v9 = v8;
    [(NSLayoutConstraint *)self->_leadingRegionBaselineConstraint setConstant:?];
    [(NSLayoutConstraint *)self->_centerRegionBaselineConstraint setConstant:v9];
    [(NSLayoutConstraint *)self->_trailingRegionBaselineConstraint setConstant:v9];
    statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    v11 = [statusBar regionWithIdentifier:@"background"];

    if (toMode == 5)
    {
      [v11 enableWithToken:21];
    }

    else
    {
      [v11 disableWithToken:21];
    }
  }

  return v4 ^ 1;
}

- (BOOL)_updateToShowMenuBarFromMode:(int64_t)mode toMode:(int64_t)toMode
{
  v4 = toMode & 0xFFFFFFFFFFFFFFFELL;
  v5 = ((mode & 0xFFFFFFFFFFFFFFFELL) != 4) ^ ((toMode & 0xFFFFFFFFFFFFFFFELL) == 4);
  if (((mode & 0xFFFFFFFFFFFFFFFELL) != 4) == ((toMode & 0xFFFFFFFFFFFFFFFELL) == 4))
  {
    statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    v7 = [statusBar regionWithIdentifier:@"center"];
    v8 = v7;
    if (v4 == 4)
    {
      [v7 enableWithToken:20];
      contentView = [v8 contentView];
      [contentView _setTouchInsets:{-20.0, -20.0, -20.0, -20.0}];

      contentView2 = [statusBar regionWithIdentifier:@"leading"];
      v11 = [statusBar regionWithIdentifier:@"trailing"];
      layout = [contentView2 layout];
      v13 = objc_opt_class();
      v14 = layout;
      if (v13)
      {
        if (objc_opt_isKindOfClass())
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      horizontalLayout = [v16 horizontalLayout];

      v18 = objc_opt_class();
      v19 = horizontalLayout;
      if (v18)
      {
        if (objc_opt_isKindOfClass())
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;

      [v21 setConstrainDisplayItemsToRegionBounds:1];
      layout2 = [v11 layout];
      v23 = objc_opt_class();
      v24 = layout2;
      if (v23)
      {
        if (objc_opt_isKindOfClass())
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = 0;
      }

      v26 = v25;

      horizontalLayout2 = [v26 horizontalLayout];

      v28 = objc_opt_class();
      v29 = horizontalLayout2;
      if (v28)
      {
        if (objc_opt_isKindOfClass())
        {
          v30 = v29;
        }

        else
        {
          v30 = 0;
        }
      }

      else
      {
        v30 = 0;
      }

      v31 = v30;

      [v31 setConstrainDisplayItemsToRegionBounds:1];
    }

    else
    {
      [v7 disableWithToken:20];
      contentView2 = [v8 contentView];
      [contentView2 _setTouchInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
    }
  }

  return v5 ^ 1;
}

@end