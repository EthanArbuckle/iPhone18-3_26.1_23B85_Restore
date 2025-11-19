@interface STUIStatusBarVisualProvider_Pad
+ (Class)visualProviderSubclassForScreen:(id)a3 visualProviderInfo:(id)a4;
+ (NSDirectionalEdgeInsets)edgeInsets;
+ (UIEdgeInsets)regionCursorInsets;
+ (double)baseFontSize;
+ (double)baselineOffset;
+ (double)expandedBaselineOffset;
+ (double)height;
+ (double)menuBarHeight;
+ (double)pillFontSize;
- (BOOL)_updateDateAndTimePlacements;
- (BOOL)_updateToShowMenuBarFromMode:(int64_t)a3 toMode:(int64_t)a4;
- (BOOL)_updateToShowShowBackgroundFromMode:(int64_t)a3 toMode:(int64_t)a4;
- (CGRect)clockBoundsForLayoutItem:(id)a3;
- (CGSize)expandedPillSize;
- (CGSize)pillSize;
- (CGSize)smallPillSize;
- (NSDirectionalEdgeInsets)expandedEdgeInsets;
- (STUIStatusBarVisualProvider_Pad)init;
- (UIFont)clockFont;
- (double)airplaneShouldFadeForAnimationType:(int64_t)a3;
- (double)airplaneSpeedForAnimationType:(int64_t)a3;
- (double)airplaneTravelOffsetInProposedPartWithIdentifier:(id *)a3 animationType:(int64_t)a4;
- (double)maximumPossibleMenuBarWidth;
- (id)displayItemIdentifiersForPartWithIdentifier:(id)a3;
- (id)emphasizedFont;
- (id)expandedFont;
- (id)expandedPillFont;
- (id)normalFont;
- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)a3;
- (id)overriddenStyleAttributesForDisplayItemWithIdentifier:(id)a3;
- (id)pillFont;
- (id)pillSmallFont;
- (id)regionIdentifiersForBackgroundLumaView:(id)a3;
- (id)regionIdentifiersForPartWithIdentifier:(id)a3;
- (id)setupInContainerView:(id)a3;
- (id)styleAttributesForStyle:(int64_t)a3;
- (void)_dateTimePreferencesUpdated;
- (void)_updateConstraintsForAvoidanceFrame:(CGRect)a3;
- (void)actionable:(id)a3 highlighted:(BOOL)a4 initialPress:(BOOL)a5;
- (void)avoidanceFrameUpdatedFromFrame:(CGRect)a3 withAnimationSettings:(id)a4 options:(unint64_t)a5;
- (void)dealloc;
- (void)itemCreated:(id)a3;
- (void)modeUpdatedFromMode:(int64_t)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)sizeUpdatedFromSize:(CGSize)a3;
- (void)statusBarEnabledPartsUpdated;
@end

@implementation STUIStatusBarVisualProvider_Pad

+ (Class)visualProviderSubclassForScreen:(id)a3 visualProviderInfo:(id)a4
{
  v5 = a3;
  if ([v5 _isMainLikeScreen])
  {
    v6 = [v5 _isEmbeddedScreen] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  [v5 _displayCornerRadius];
  v8 = v7;
  [v5 _displayCornerRadiusIgnoringZoom];
  if (v6 || v8 > 0.0)
  {
    v9 = objc_opt_class();
    v10 = STUIStatusBarGetVisualProviderSubclassForScreenWithVisualProviderInfo(v9, v5, 0);
  }

  else
  {
    v10 = a1;
  }

  v11 = v10;

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

  [a1 baselineOffset];
  return result;
}

- (double)maximumPossibleMenuBarWidth
{
  [objc_opt_class() edgeInsets];
  v4 = v3;
  v6 = v5;
  v7 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  v8 = [v7 containerView];
  [v8 bounds];
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
  v4 = [v3 visualProviderSettings];
  v5 = [v4 hasBoldTime];

  if (v5)
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

- (id)setupInContainerView:(id)a3
{
  v181[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v175 = [MEMORY[0x277CBEB18] array];
  v178 = [MEMORY[0x277CBEB18] array];
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
  v22 = [(STUIStatusBarVisualProvider_Pad *)self normalFont];
  [v22 capHeight];
  v24 = v23;

  v25 = [(STUIStatusBarVisualProvider_Pad *)self expandedFont];
  [v25 capHeight];
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
    v32 = [(STUIStatusBarRegion *)v28 layoutItem];
    v33 = [v32 leadingAnchor];
    v34 = [v4 leadingAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];
    [v175 addObject:v35];

    v36 = [v32 trailingAnchor];
    v37 = [v4 trailingAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];
    [v175 addObject:v38];

    v39 = [v32 topAnchor];
    v40 = [v4 topAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];
    [v175 addObject:v41];

    v42 = [v32 heightAnchor];
    v43 = [v42 constraintEqualToConstant:v9];
    [v175 addObject:v43];

    [v4 _ui_addSubLayoutItem:v32];
    [v178 addObject:v28];
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
  v50 = [(STUIStatusBarRegion *)v44 layoutItem];
  v51 = [v50 bottomAnchor];
  v52 = [v4 topAnchor];
  v53 = [v51 constraintEqualToAnchor:v52 constant:v6];
  leadingRegionBaselineConstraint = self->_leadingRegionBaselineConstraint;
  self->_leadingRegionBaselineConstraint = v53;

  [v175 addObject:self->_leadingRegionBaselineConstraint];
  v55 = [v50 leadingAnchor];
  v56 = [v4 leadingAnchor];
  v57 = [v55 constraintEqualToAnchor:v56 constant:v11];
  [v175 addObject:v57];

  v58 = [v50 heightAnchor];
  v59 = [v58 constraintEqualToConstant:v24];
  [v175 addObject:v59];

  v177 = v50;
  [v4 _ui_addSubLayoutItem:v50];

  [v178 addObject:v44];
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

  v65 = v4;
  UIRoundToViewScale();
  [(STUIStatusBarRegion *)v60 setExtendedHoverInsets:-v66, 0.0, 0.0, -v13];
  v67 = [(STUIStatusBarRegion *)v60 layoutItem];
  v68 = [v67 bottomAnchor];
  v69 = [v65 topAnchor];
  v70 = [v68 constraintEqualToAnchor:v69 constant:v6];
  trailingRegionBaselineConstraint = self->_trailingRegionBaselineConstraint;
  self->_trailingRegionBaselineConstraint = v70;

  [v175 addObject:self->_trailingRegionBaselineConstraint];
  v72 = [v67 trailingAnchor];
  v73 = [v65 trailingAnchor];
  v74 = [v72 constraintEqualToAnchor:v73 constant:-v13];
  [v175 addObject:v74];

  v75 = [v67 heightAnchor];
  v76 = [v75 constraintEqualToConstant:v24];
  [v175 addObject:v76];

  v176 = v67;
  [v65 _ui_addSubLayoutItem:v67];

  [v178 addObject:v60];
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

  v82 = [(STUIStatusBarRegion *)v77 layoutItem];
  v83 = [v82 centerXAnchor];
  v84 = [v81 centerXAnchor];
  v85 = [v83 constraintEqualToAnchor:v84];
  LODWORD(v86) = 1132068864;
  [v85 _ui_constraintWithPriority:v86];
  v87 = v179 = v81;
  [v175 addObject:v87];

  v88 = [v82 widthAnchor];
  v89 = [v88 constraintEqualToConstant:0.0];
  LODWORD(v90) = 1132003328;
  v91 = [v89 _ui_constraintWithPriority:v90];
  [v175 addObject:v91];

  v92 = [v82 bottomAnchor];
  v93 = [v179 topAnchor];
  v94 = [v92 constraintEqualToAnchor:v93 constant:v6];
  centerRegionBaselineConstraint = self->_centerRegionBaselineConstraint;
  self->_centerRegionBaselineConstraint = v94;

  [v175 addObject:self->_centerRegionBaselineConstraint];
  v96 = [v82 heightAnchor];
  v97 = [v96 constraintEqualToConstant:v24];
  [v175 addObject:v97];

  v98 = [v82 leadingAnchor];
  v99 = [v177 trailingAnchor];
  v100 = [v98 constraintGreaterThanOrEqualToAnchor:v99 constant:v21];
  [v175 addObject:v100];

  v101 = [v176 leadingAnchor];
  v102 = [v82 trailingAnchor];
  v103 = [v101 constraintGreaterThanOrEqualToAnchor:v102 constant:v21];
  [v175 addObject:v103];

  v104 = [v82 leadingAnchor];
  v105 = [v177 trailingAnchor];
  v106 = [v104 constraintEqualToAnchor:v105 constant:v21];
  LODWORD(v107) = 1132003328;
  v108 = [v106 _ui_constraintWithPriority:v107];
  [v175 addObject:v108];

  v109 = [v176 leadingAnchor];
  v110 = [v82 trailingAnchor];
  v111 = [v109 constraintEqualToAnchor:v110 constant:v21];
  LODWORD(v112) = 1132003328;
  v113 = [v111 _ui_constraintWithPriority:v112];
  [v175 addObject:v113];

  v114 = [v179 centerXAnchor];
  v115 = [v177 trailingAnchor];
  v116 = [v114 constraintGreaterThanOrEqualToAnchor:v115 constant:0.0];
  leadingRegionTrailingAnchorConstraint = self->_leadingRegionTrailingAnchorConstraint;
  self->_leadingRegionTrailingAnchorConstraint = v116;

  [v175 addObject:self->_leadingRegionTrailingAnchorConstraint];
  v118 = [v176 leadingAnchor];
  v119 = [v179 centerXAnchor];
  v120 = [v118 constraintGreaterThanOrEqualToAnchor:v119 constant:0.0];
  trailingRegionLeadingAnchorConstraint = self->_trailingRegionLeadingAnchorConstraint;
  self->_trailingRegionLeadingAnchorConstraint = v120;

  [v175 addObject:self->_trailingRegionLeadingAnchorConstraint];
  v168 = v82;
  [v179 _ui_addSubLayoutItem:v82];

  [v178 addObject:v77];
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
  v127 = [(STUIStatusBarRegion *)v122 layoutItem];
  v128 = [v127 leadingAnchor];
  v129 = [v179 leadingAnchor];
  v130 = [v128 constraintEqualToAnchor:v129 constant:v169];
  [v175 addObject:v130];

  v131 = [v127 bottomAnchor];
  v132 = [v179 topAnchor];
  v133 = [v131 constraintEqualToAnchor:v132 constant:v173];
  [v175 addObject:v133];

  v134 = [v127 heightAnchor];
  v135 = [v134 constraintEqualToConstant:v172];
  [v175 addObject:v135];

  [v179 _ui_addSubLayoutItem:v127];
  [v178 addObject:v122];

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
  v141 = [(STUIStatusBarRegion *)v136 layoutItem];
  v142 = [v141 leadingAnchor];
  v143 = [v127 trailingAnchor];
  v144 = [v142 constraintEqualToAnchor:v143 constant:v21];
  [v175 addObject:v144];

  v145 = [v141 widthAnchor];
  v170 = v127;
  v146 = [v127 widthAnchor];
  v147 = [v145 constraintEqualToAnchor:v146];
  LODWORD(v148) = 1131741184;
  v149 = [v147 _ui_constraintWithPriority:v148];
  [v175 addObject:v149];

  v150 = [v141 trailingAnchor];
  v151 = [v179 trailingAnchor];
  v152 = [v150 constraintEqualToAnchor:v151 constant:-v171];
  [v175 addObject:v152];

  v153 = [v141 bottomAnchor];
  v154 = [v179 topAnchor];
  v155 = [v153 constraintEqualToAnchor:v154 constant:v173];
  [v175 addObject:v155];

  v156 = [v141 heightAnchor];
  v157 = [v156 constraintEqualToConstant:v172];
  [v175 addObject:v157];

  [v179 _ui_addSubLayoutItem:v141];
  [v178 addObject:v136];

  v158 = STUIStatusBarAddLumaView(v179, v175, v177, 1, v174);
  [(STUIStatusBarVisualProvider_Pad *)self setLeadingBackgroundLumaView:v158];

  v159 = STUIStatusBarAddLumaView(v179, v175, v176, 2, v174);
  [(STUIStatusBarVisualProvider_Pad *)self setTrailingBackgroundLumaView:v159];

  if (_UIEnhancedMainMenuEnabled())
  {
    v160 = v168;
    v161 = STUIStatusBarAddLumaView(v179, v175, v168, 0, v174);
    [(STUIStatusBarVisualProvider_Pad *)self setCenterBackgroundLumaView:v161];

    v162 = [(STUIStatusBarVisualProvider_Pad *)self leadingBackgroundLumaView];
    v180[0] = v162;
    v163 = [(STUIStatusBarVisualProvider_Pad *)self centerBackgroundLumaView];
    v180[1] = v163;
    v164 = [(STUIStatusBarVisualProvider_Pad *)self trailingBackgroundLumaView];
    v180[2] = v164;
    v165 = [MEMORY[0x277CBEA60] arrayWithObjects:v180 count:3];
  }

  else
  {
    v162 = [(STUIStatusBarVisualProvider_Pad *)self leadingBackgroundLumaView];
    v181[0] = v162;
    v163 = [(STUIStatusBarVisualProvider_Pad *)self trailingBackgroundLumaView];
    v181[1] = v163;
    v165 = [MEMORY[0x277CBEA60] arrayWithObjects:v181 count:2];
    v160 = v168;
  }

  v166 = [objc_alloc(MEMORY[0x277D760C8]) initWithTransitionBoundaries:self minimumDifference:v165 delegate:0.4 views:{0.7, 0.5}];
  [(STUIStatusBarVisualProvider_iOS *)self setLumaTrackingGroup:v166];

  [MEMORY[0x277CCAAD0] activateConstraints:v175];

  return v178;
}

- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)a3
{
  v109[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  orderedDisplayItemPlacements = self->_orderedDisplayItemPlacements;
  if (!orderedDisplayItemPlacements)
  {
    v86 = v4;
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
    v32 = [v31 visualProviderSettings];
    LODWORD(v26) = [v32 showsDateBeforeTime];

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
    v39 = [MEMORY[0x277CBEB18] array];
    v40 = +[(STUIStatusBarItem *)STUIStatusBarSensorActivityItem];
    v89 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v40 priority:3720];

    v88 = [STUIStatusBarIndicatorLocationItem groupWithPriority:3710];
    v41 = +[STUIStatusBarPillBackgroundActivityItem pillCombinedDisplayIdentifier];
    v42 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v41 priority:3700];

    v43 = +[(STUIStatusBarItem *)STUIStatusBarVoiceControlPillItem];
    v87 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v43 priority:3680];

    v44 = [v38 unstablePlacements];
    [v39 addObjectsFromArray:v44];

    [(STUIStatusBarVisualProvider_iOS *)v35 itemSpacing];
    v92 = v38;
    v82 = +[STUIStatusBarDisplayItemPlacement spacerPlacementWithSize:priority:](STUIStatusBarDisplayItemPlacement, "spacerPlacementWithSize:priority:", [v38 minimumPriority] - 2, v45 * -2.0 + 8.0, 0.0);
    v101 = v42;
    v46 = [MEMORY[0x277CBEA60] arrayWithObjects:&v101 count:1];
    v47 = [v82 requiringAllPlacements:v46];
    v48 = [v38 unstablePlacements];
    v49 = [v47 requiringAnyPlacements:v48];
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
    [v39 addObjectsFromArray:v54];

    v55 = [v88 placements];
    [v39 addObjectsFromArray:v55];

    v99[0] = v87;
    v56 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorAirplaneModeItem];
    v57 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v56 priority:3600];
    v58 = [v90 cellularGroup];
    v59 = [v58 placementsAffectedByAirplaneMode];
    v60 = [v57 excludingPlacements:v59];
    v99[1] = v60;
    v61 = [MEMORY[0x277CBEA60] arrayWithObjects:v99 count:2];
    [v39 addObjectsFromArray:v61];

    v62 = [v90 placements];
    [v39 addObjectsFromArray:v62];

    v63 = [v92 stablePlacements];
    [v39 addObjectsFromArray:v63];

    v64 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorDisplayWarningItem];
    v65 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v64 priority:3730];
    [v39 addObject:v65];

    v66 = [v91 placements];
    v67 = v39;
    [v39 addObjectsFromArray:v66];

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
    v76 = [(STUIStatusBarVisualProvider_iOS *)v83 expandedLeadingPlacements];
    v95[3] = v76;
    v94[4] = @"expandedTrailing";
    v77 = [(STUIStatusBarVisualProvider_iOS *)v83 expandedTrailingPlacements];
    v94[5] = @"background";
    v95[4] = v77;
    v95[5] = v73;
    v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:v94 count:6];
    v79 = v83->_orderedDisplayItemPlacements;
    v83->_orderedDisplayItemPlacements = v78;

    orderedDisplayItemPlacements = v83->_orderedDisplayItemPlacements;
    v4 = v86;
  }

  v80 = [(NSDictionary *)orderedDisplayItemPlacements objectForKeyedSubscript:v4];

  return v80;
}

- (id)regionIdentifiersForPartWithIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqual:@"leadingPartIdentifier"])
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

  if ([v3 isEqual:@"trailingPartIdentifier"])
  {
    [MEMORY[0x277CBEB98] setWithObjects:{@"trailing", @"expandedTrailing", 0, v11, v12}];
    v6 = LABEL_14:;
    goto LABEL_15;
  }

  if ([v3 isEqual:@"centerPartIdentifier"])
  {
    [MEMORY[0x277CBEB98] setWithObjects:{@"center", @"background", 0, v11, v12}];
    goto LABEL_14;
  }

  if ([v3 isEqual:@"normalPartIdentifier"])
  {
    v4 = MEMORY[0x277CBEB98];
    v11 = @"background";
    v12 = 0;
    v9 = @"trailing";
    v10 = @"center";
    goto LABEL_3;
  }

  if (([v3 isEqual:@"expandedPartIdentifier"] & 1) != 0 || objc_msgSend(v3, "isEqual:", @"visibleExpandedPartIdentifier"))
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

- (id)displayItemIdentifiersForPartWithIdentifier:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isEqual:@"fittingLeadingPartIdentifier"])
  {
    v5 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
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
    v9 = [v5 displayItemIdentifiersInRegionsWithIdentifiers:v8];
    goto LABEL_12;
  }

  if ([v4 isEqual:@"fittingTrailingPartIdentifier"])
  {
    v5 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
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

  if ([v4 isEqual:@"clockPartIdentifier"])
  {
    v7 = MEMORY[0x277CBEB98];
    v5 = +[STUIStatusBarTimeItem shortTimeDisplayIdentifier];
    v8 = +[STUIStatusBarTimeItem timeDisplayIdentifier];
    v9 = [v7 setWithObjects:{v5, v8, 0}];
LABEL_12:
    v10 = v9;

    goto LABEL_13;
  }

  v12.receiver = self;
  v12.super_class = STUIStatusBarVisualProvider_Pad;
  v10 = [(STUIStatusBarVisualProvider_iOS *)&v12 displayItemIdentifiersForPartWithIdentifier:v4];
LABEL_13:

  return v10;
}

- (CGRect)clockBoundsForLayoutItem:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = +[STUIStatusBarTimeItem timeDisplayIdentifier];

  v7 = [v4 view];

  if (v5 == v6)
  {
    v16 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    v17 = [v16 currentAggregatedData];
    v18 = [v17 shortTimeEntry];
    v19 = [v18 stringValue];

    _StatusBar_UITimeSizeForLabel();
    v13 = v20;
    v15 = v21;
    v9 = 0.0;

    v11 = 0.0;
  }

  else
  {
    [v7 bounds];
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

- (id)styleAttributesForStyle:(int64_t)a3
{
  v20.receiver = self;
  v20.super_class = STUIStatusBarVisualProvider_Pad;
  v4 = [(STUIStatusBarVisualProvider_iOS *)&v20 styleAttributesForStyle:a3];
  v5 = [v4 mode];
  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        goto LABEL_11;
      }

      [v4 setIconScale:1.16];
      v10 = [v4 traitCollection];
      [v10 displayScale];
      [v4 setIconSize:15];

      v11 = [(STUIStatusBarVisualProvider_Pad *)self expandedFont];
      goto LABEL_9;
    }
  }

  else if ((v5 - 2) >= 3)
  {
    if (v5 != 5)
    {
      goto LABEL_11;
    }

    [v4 setIconScale:1.0];
    v6 = [v4 traitCollection];
    [v6 displayScale];
    [v4 setIconSize:14];

    v7 = [(STUIStatusBarVisualProvider_Pad *)self normalFont];
    [v4 setFont:v7];

    v8 = [MEMORY[0x277D75348] whiteColor];
    [v4 setTextColor:v8];

    v9 = [MEMORY[0x277D75348] whiteColor];
    [v4 setImageTintColor:v9];
    goto LABEL_10;
  }

  [v4 setIconScale:1.0];
  v12 = [v4 traitCollection];
  [v12 displayScale];
  [v4 setIconSize:14];

  v11 = [(STUIStatusBarVisualProvider_Pad *)self normalFont];
LABEL_9:
  v9 = v11;
  [v4 setFont:v11];
LABEL_10:

LABEL_11:
  v13 = +[STUIStatusBarSettingsDomain rootSettings];
  v14 = [v13 visualProviderSettings];
  v15 = [v14 hasBoldTime];

  if (v15)
  {
    v16 = MEMORY[0x277D74300];
    v17 = [(STUIStatusBarVisualProvider_Pad *)self normalFont];
    [v17 pointSize];
    v18 = [v16 systemFontOfSize:? weight:?];
    [v4 setEmphasizedFont:v18];
  }

  else
  {
    v17 = [v4 font];
    [v4 setEmphasizedFont:v17];
  }

  [v4 setImageNamePrefixes:&unk_287D1AE28];

  return v4;
}

- (id)overriddenStyleAttributesForDisplayItemWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[STUIStatusBarPillBackgroundActivityItem pillCombinedDisplayIdentifier];

  if (v5 == v4)
  {
    v8 = +[STUIStatusBarStyleAttributes overriddenStyleAttributes];
    v9 = [(STUIStatusBarVisualProvider_Pad *)self pillFont];
    [v8 setFont:v9];

    v10 = [(STUIStatusBarVisualProvider_Pad *)self pillSmallFont];
    [v8 setSmallFont:v10];

    [(STUIStatusBarVisualProvider_Pad *)self pillSize];
LABEL_7:
    [v8 setIconScale:v11 / 21.3333333];
    [v8 setSymbolScale:2];
    goto LABEL_8;
  }

  v6 = +[(STUIStatusBarPillBackgroundActivityItem *)STUIStatusBarExpandedPillBackgroundActivityItem];

  if (v6 == v4)
  {
    v8 = +[STUIStatusBarStyleAttributes overriddenStyleAttributes];
    v12 = [(STUIStatusBarVisualProvider_Pad *)self expandedPillFont];
    [v8 setFont:v12];

    v13 = [(STUIStatusBarVisualProvider_Pad *)self expandedPillFont];
    [v8 setSmallFont:v13];

    [(STUIStatusBarVisualProvider_Pad *)self expandedPillSize];
    goto LABEL_7;
  }

  v7 = +[(STUIStatusBarItem *)STUIStatusBarMenuBarItem];

  if (v7 == v4)
  {
    v8 = +[STUIStatusBarStyleAttributes overriddenStyleAttributes];
    v15 = [(STUIStatusBarVisualProvider_Pad *)self emphasizedFont];
    [v8 setEmphasizedFont:v15];
  }

  else
  {
    v8 = 0;
  }

LABEL_8:

  return v8;
}

- (void)actionable:(id)a3 highlighted:(BOOL)a4 initialPress:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v19[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = 0;
LABEL_8:
    v16.receiver = self;
    v16.super_class = STUIStatusBarVisualProvider_Pad;
    [(STUIStatusBarVisualProvider_iOS *)&v16 actionable:v8 highlighted:v6 initialPress:v5];
    goto LABEL_9;
  }

  v9 = v8;
  v10 = v9;
  if (!v9)
  {
    goto LABEL_8;
  }

  v11 = [v9 identifier];
  v12 = +[STUIStatusBarPillBackgroundActivityItem pillCombinedDisplayIdentifier];

  if (v11 != v12)
  {
    goto LABEL_8;
  }

  v13 = [v10 highlightView];
  if (!v13)
  {
    v13 = objc_alloc_init(STUIStatusBarRoundedCornerView);
    [v10 setHighlightView:v13];
  }

  v14 = MEMORY[0x277D75220];
  v19[0] = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __71__STUIStatusBarVisualProvider_Pad_actionable_highlighted_initialPress___block_invoke;
  v17[3] = &__block_descriptor_33_e16_v16__0__UIView_8l;
  v18 = v6;
  [v14 _setVisuallyHighlighted:v6 forViews:v15 initialPress:v5 highlightBlock:v17];

LABEL_9:
}

- (void)statusBarEnabledPartsUpdated
{
  v46[1] = *MEMORY[0x277D85DE8];
  v3 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  v4 = [v3 regionWithIdentifier:@"leading"];

  v5 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  v6 = [v5 regionWithIdentifier:@"trailing"];

  v7 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  v8 = [v7 containerView];
  v9 = [v8 centerXAnchor];

  v10 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  v11 = [v10 containerView];
  v12 = [v11 centerXAnchor];

  v13 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  v14 = [v13 regionWithIdentifier:@"center"];
  v15 = [v14 isEnabled];

  if ((v15 & 1) == 0)
  {
    if ([v4 isEnabled])
    {
      if ([v6 isEnabled])
      {
        goto LABEL_7;
      }

      v16 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
      v17 = [v16 containerView];
      v18 = [v17 trailingAnchor];
      v19 = v9;
      v9 = v18;
    }

    else
    {
      v16 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
      v17 = [v16 containerView];
      v20 = [v17 leadingAnchor];
      v19 = v12;
      v12 = v20;
    }
  }

LABEL_7:
  v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v23 = [(NSLayoutConstraint *)self->_leadingRegionTrailingAnchorConstraint firstAnchor];

  if (v9 != v23)
  {
    [v21 addObject:self->_leadingRegionTrailingAnchorConstraint];
    v24 = MEMORY[0x277CCAAD0];
    v46[0] = self->_leadingRegionTrailingAnchorConstraint;
    [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
    v26 = v25 = v6;
    [v24 deactivateConstraints:v26];

    v27 = [v4 layoutItem];
    v28 = [v27 trailingAnchor];
    [(NSLayoutConstraint *)self->_leadingRegionTrailingAnchorConstraint constant];
    v29 = [v9 constraintGreaterThanOrEqualToAnchor:v28 constant:?];
    leadingRegionTrailingAnchorConstraint = self->_leadingRegionTrailingAnchorConstraint;
    self->_leadingRegionTrailingAnchorConstraint = v29;

    v6 = v25;
    [v22 addObject:self->_leadingRegionTrailingAnchorConstraint];
  }

  v31 = [(NSLayoutConstraint *)self->_trailingRegionLeadingAnchorConstraint secondAnchor];

  if (v12 != v31)
  {
    [v21 addObject:self->_trailingRegionLeadingAnchorConstraint];
    v32 = [v6 layoutItem];
    [v32 leadingAnchor];
    v34 = v33 = v6;
    [(NSLayoutConstraint *)self->_trailingRegionLeadingAnchorConstraint constant];
    v35 = [v34 constraintGreaterThanOrEqualToAnchor:v12 constant:?];
    trailingRegionLeadingAnchorConstraint = self->_trailingRegionLeadingAnchorConstraint;
    self->_trailingRegionLeadingAnchorConstraint = v35;

    v6 = v33;
    [v22 addObject:self->_trailingRegionLeadingAnchorConstraint];
  }

  if ([v21 count])
  {
    [MEMORY[0x277CCAAD0] deactivateConstraints:v21];
    [MEMORY[0x277CCAAD0] activateConstraints:v22];
    v37 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    [v37 avoidanceFrame];
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

- (void)_updateConstraintsForAvoidanceFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  [v8 bounds];
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
    v27 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    v28 = [v27 regionWithIdentifier:@"center"];
    v29 = [v28 isEnabled];

    if ((v29 & 1) == 0)
    {
      v30 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
      v31 = [v30 regionWithIdentifier:@"leading"];
      v32 = [v31 isEnabled];

      if (v32)
      {
        v33 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
        v34 = [v33 regionWithIdentifier:@"trailing"];
        v35 = [v34 isEnabled];

        v36 = v11;
        v37 = v48;
        if ((v35 & 1) == 0)
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
          v43 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
          v44 = [v43 _shouldReverseLayoutDirection];

          if (v44)
          {
            v16 = v41;
          }

          else
          {
            v16 = v26;
          }

          if (v44)
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
  v52 = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:&r1.origin.y];
}

- (void)avoidanceFrameUpdatedFromFrame:(CGRect)a3 withAnimationSettings:(id)a4 options:(unint64_t)a5
{
  v6 = [(STUIStatusBarVisualProvider_iOS *)self statusBar:a4];
  [v6 avoidanceFrame];
  [(STUIStatusBarVisualProvider_Pad *)self _updateConstraintsForAvoidanceFrame:?];
}

- (void)sizeUpdatedFromSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  [v6 avoidanceFrame];
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
    v15 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    [v15 bounds];
    v17 = v16;
    v19 = v18;

    if (width != v17 || height != v19)
    {

      [(STUIStatusBarVisualProvider_Pad *)self _updateConstraintsForAvoidanceFrame:v8, v10, v12, v14];
    }
  }
}

- (void)itemCreated:(id)a3
{
  v11 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v11 setShowsDisabledSignalBars:0];
    goto LABEL_10;
  }

  v4 = [v11 identifier];
  v5 = +[(STUIStatusBarItem *)STUIStatusBarPillBackgroundActivityItem];

  if (v4 == v5)
  {
    v10 = v11;
    [(STUIStatusBarVisualProvider_Pad *)self pillSize];
  }

  else
  {
    v6 = [v11 identifier];
    v7 = +[(STUIStatusBarItem *)STUIStatusBarVoiceControlPillItem];

    if (v6 == v7)
    {
      v10 = v11;
      [(STUIStatusBarVisualProvider_Pad *)self smallPillSize];
    }

    else
    {
      v8 = [v11 identifier];
      v9 = +[(STUIStatusBarItem *)STUIStatusBarExpandedPillBackgroundActivityItem];

      if (v8 != v9)
      {
        goto LABEL_10;
      }

      v10 = v11;
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
    v3 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    [v3 updateWithAnimations:MEMORY[0x277CBEBF8]];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = __UIKitUserDefaults();

  if (v13 == v11)
  {
    [(STUIStatusBarVisualProvider_Pad *)self _dateTimePreferencesUpdated];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = STUIStatusBarVisualProvider_Pad;
    [(STUIStatusBarVisualProvider_Pad *)&v14 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (double)airplaneTravelOffsetInProposedPartWithIdentifier:(id *)a3 animationType:(int64_t)a4
{
  if ([(STUIStatusBarVisualProvider_iOS *)self expanded]&& [(STUIStatusBarVisualProvider_iOS *)self wantsExpandedLeadingPlacements])
  {
    v37.receiver = self;
    v37.super_class = STUIStatusBarVisualProvider_Pad;
    [(STUIStatusBarVisualProvider_iOS *)&v37 airplaneTravelOffsetInProposedPartWithIdentifier:a3 animationType:a4];
    return v7;
  }

  else
  {
    v9 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorAirplaneModeItem];
    v10 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    [v10 frameForDisplayItemWithIdentifier:v9];
    v12 = v11;
    v35 = v13;
    v36 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v34 = v17;

    v19 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    [v19 frameForPartWithIdentifier:*a3 includeInternalItems:1];
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

    if (a4 == 1)
    {
      v42.origin.x = v36;
      v42.origin.y = v35;
      v42.size.width = v16;
      v42.size.height = v34;
      v8 = v8 - CGRectGetWidth(v42);
    }

    v32 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorAirplaneModeItem];
    *a3 = [v32 stringRepresentation];
  }

  return v8;
}

- (double)airplaneSpeedForAnimationType:(int64_t)a3
{
  if (![(STUIStatusBarVisualProvider_iOS *)self expanded]|| ![(STUIStatusBarVisualProvider_iOS *)self wantsExpandedLeadingPlacements])
  {
    return 160.0;
  }

  v6.receiver = self;
  v6.super_class = STUIStatusBarVisualProvider_Pad;
  [(STUIStatusBarVisualProvider_iOS *)&v6 airplaneSpeedForAnimationType:a3];
  return result;
}

- (double)airplaneShouldFadeForAnimationType:(int64_t)a3
{
  v5 = [(STUIStatusBarVisualProvider_iOS *)self expanded];
  result = 1.0;
  if (v5)
  {
    v7.receiver = self;
    v7.super_class = STUIStatusBarVisualProvider_Pad;
    [(STUIStatusBarVisualProvider_iOS *)&v7 airplaneShouldFadeForAnimationType:a3, 1.0];
  }

  return result;
}

- (id)regionIdentifiersForBackgroundLumaView:(id)a3
{
  v4 = a3;
  v5 = [(STUIStatusBarVisualProvider_Pad *)self leadingBackgroundLumaView];

  if (v5 == v4)
  {
    [MEMORY[0x277CBEB98] setWithObjects:{@"leading", 0}];
  }

  else
  {
    v6 = [(STUIStatusBarVisualProvider_Pad *)self trailingBackgroundLumaView];

    if (v6 == v4)
    {
      [MEMORY[0x277CBEB98] setWithObjects:{@"trailing", 0}];
    }

    else
    {
      v7 = [(STUIStatusBarVisualProvider_Pad *)self centerBackgroundLumaView];

      if (v7 != v4)
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

- (void)modeUpdatedFromMode:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = STUIStatusBarVisualProvider_Pad;
  [(STUIStatusBarVisualProvider_iOS *)&v9 modeUpdatedFromMode:?];
  v5 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  v6 = [v5 mode];

  v7 = [(STUIStatusBarVisualProvider_Pad *)self _updateToShowShowBackgroundFromMode:a3 toMode:v6];
  if ([(STUIStatusBarVisualProvider_Pad *)self _updateToShowMenuBarFromMode:a3 toMode:v6]|| v7)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__STUIStatusBarVisualProvider_Pad_modeUpdatedFromMode___block_invoke;
    v8[3] = &unk_279D37F00;
    v8[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v8];
  }
}

- (BOOL)_updateToShowShowBackgroundFromMode:(int64_t)a3 toMode:(int64_t)a4
{
  v4 = (a3 != 5) ^ (a4 == 5);
  if ((a3 != 5) == (a4 == 5))
  {
    v7 = objc_opt_class();
    if (a4 == 5)
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
    v10 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    v11 = [v10 regionWithIdentifier:@"background"];

    if (a4 == 5)
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

- (BOOL)_updateToShowMenuBarFromMode:(int64_t)a3 toMode:(int64_t)a4
{
  v4 = a4 & 0xFFFFFFFFFFFFFFFELL;
  v5 = ((a3 & 0xFFFFFFFFFFFFFFFELL) != 4) ^ ((a4 & 0xFFFFFFFFFFFFFFFELL) == 4);
  if (((a3 & 0xFFFFFFFFFFFFFFFELL) != 4) == ((a4 & 0xFFFFFFFFFFFFFFFELL) == 4))
  {
    v6 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    v7 = [v6 regionWithIdentifier:@"center"];
    v8 = v7;
    if (v4 == 4)
    {
      [v7 enableWithToken:20];
      v9 = [v8 contentView];
      [v9 _setTouchInsets:{-20.0, -20.0, -20.0, -20.0}];

      v10 = [v6 regionWithIdentifier:@"leading"];
      v11 = [v6 regionWithIdentifier:@"trailing"];
      v12 = [v10 layout];
      v13 = objc_opt_class();
      v14 = v12;
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

      v17 = [v16 horizontalLayout];

      v18 = objc_opt_class();
      v19 = v17;
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
      v22 = [v11 layout];
      v23 = objc_opt_class();
      v24 = v22;
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

      v27 = [v26 horizontalLayout];

      v28 = objc_opt_class();
      v29 = v27;
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
      v10 = [v8 contentView];
      [v10 _setTouchInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
    }
  }

  return v5 ^ 1;
}

@end