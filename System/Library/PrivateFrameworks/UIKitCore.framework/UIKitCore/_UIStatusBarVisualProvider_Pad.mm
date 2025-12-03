@interface _UIStatusBarVisualProvider_Pad
+ (Class)visualProviderSubclassForScreen:(id)screen visualProviderInfo:(id)info;
+ (NSDirectionalEdgeInsets)edgeInsets;
+ (UIEdgeInsets)regionCursorInsets;
- (BOOL)_updateDateAndTimePlacements;
- (CGRect)clockBoundsForLayoutItem:(id)item;
- (CGSize)expandedPillSize;
- (CGSize)pillSize;
- (CGSize)smallPillSize;
- (NSDirectionalEdgeInsets)expandedEdgeInsets;
- (UIFont)clockFont;
- (_UIStatusBarVisualProvider_Pad)init;
- (double)airplaneShouldFadeForAnimationType:(int64_t)type;
- (double)airplaneSpeedForAnimationType:(int64_t)type;
- (double)airplaneTravelOffsetInProposedPartWithIdentifier:(id *)identifier animationType:(int64_t)type;
- (id)displayItemIdentifiersForPartWithIdentifier:(id)identifier;
- (id)expandedFont;
- (id)expandedPillFont;
- (id)normalFont;
- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)identifier;
- (id)overriddenStyleAttributesForDisplayItemWithIdentifier:(id)identifier;
- (id)pillFont;
- (id)pillSmallFont;
- (id)regionIdentifiersForPartWithIdentifier:(id)identifier;
- (id)setupInContainerView:(id)view;
- (id)styleAttributesForStyle:(int64_t)style;
- (void)_dateTimePreferencesUpdated;
- (void)_updateConstraintsForAvoidanceFrame:(CGRect)frame;
- (void)actionable:(id)actionable highlighted:(BOOL)highlighted initialPress:(BOOL)press;
- (void)avoidanceFrameUpdatedFromFrame:(CGRect)frame withAnimationSettings:(id)settings options:(unint64_t)options;
- (void)dealloc;
- (void)itemCreated:(id)created;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)sizeUpdatedFromSize:(CGSize)size;
- (void)statusBarEnabledPartsUpdated;
@end

@implementation _UIStatusBarVisualProvider_Pad

+ (Class)visualProviderSubclassForScreen:(id)screen visualProviderInfo:(id)info
{
  screenCopy = screen;
  if ([screenCopy _isMainLikeScreen])
  {
    _isEmbeddedScreen = [screenCopy _isEmbeddedScreen];
    [screenCopy _displayCornerRadius];
    if ((_isEmbeddedScreen & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    [screenCopy _displayCornerRadius];
  }

  if (v7 > 0.0)
  {
LABEL_6:
    v8 = objc_opt_class();
    selfCopy = _UIStatusBarGetVisualProviderSubclassForScreenWithVisualProviderInfo(v8, screenCopy, 0);
    goto LABEL_8;
  }

  selfCopy = self;
LABEL_8:
  v10 = selfCopy;

  return v10;
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

- (CGSize)pillSize
{
  v2 = 44.0;
  v3 = 16.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)smallPillSize
{
  v2 = 16.0;
  v3 = 16.0;
  result.height = v3;
  result.width = v2;
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

- (id)normalFont
{
  v2 = _AXSEnhanceTextLegibilityEnabled() != 0;
  v3 = qword_1ED499028;
  if (qword_1ED499028)
  {
    v4 = _MergedGlobals_13_5 == v2;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    _MergedGlobals_13_5 = v2;
    v5 = [off_1E70ECC18 systemFontOfSize:12.0 weight:*off_1E70ECD20];
    v6 = qword_1ED499028;
    qword_1ED499028 = v5;

    v3 = qword_1ED499028;
  }

  return v3;
}

- (id)expandedFont
{
  v2 = _AXSEnhanceTextLegibilityEnabled() != 0;
  v3 = unk_1ED499030;
  if (unk_1ED499030)
  {
    v4 = byte_1ED499021 == v2;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    byte_1ED499021 = v2;
    v5 = [off_1E70ECC18 systemFontOfSize:15.0 weight:*off_1E70ECD20];
    v6 = unk_1ED499030;
    unk_1ED499030 = v5;

    v3 = unk_1ED499030;
  }

  return v3;
}

- (id)pillFont
{
  v2 = _AXSEnhanceTextLegibilityEnabled() != 0;
  v3 = unk_1ED499038;
  if (unk_1ED499038)
  {
    v4 = byte_1ED499022 == v2;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    byte_1ED499022 = v2;
    v5 = [off_1E70ECC18 systemFontOfSize:11.0 weight:*off_1E70ECD30];
    v6 = unk_1ED499038;
    unk_1ED499038 = v5;

    v3 = unk_1ED499038;
  }

  return v3;
}

- (id)pillSmallFont
{
  v2 = _AXSEnhanceTextLegibilityEnabled() != 0;
  v3 = unk_1ED499040;
  if (unk_1ED499040)
  {
    v4 = byte_1ED499023 == v2;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    byte_1ED499023 = v2;
    v5 = [off_1E70ECC18 systemFontOfSize:10.0 weight:*off_1E70ECD08];
    v6 = unk_1ED499040;
    unk_1ED499040 = v5;

    v3 = unk_1ED499040;
  }

  return v3;
}

- (id)expandedPillFont
{
  v2 = _AXSEnhanceTextLegibilityEnabled() != 0;
  v3 = unk_1ED499048;
  if (unk_1ED499048)
  {
    v4 = byte_1ED499024 == v2;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    byte_1ED499024 = v2;
    v5 = [off_1E70ECC18 systemFontOfSize:11.0 weight:*off_1E70ECD20];
    v6 = unk_1ED499048;
    unk_1ED499048 = v5;

    v3 = unk_1ED499048;
  }

  return v3;
}

- (UIFont)clockFont
{
  if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_StatusBarHasBoldTime, @"StatusBarHasBoldTime") & 1) != 0 || !byte_1EA95E6A4)
  {
    normalFont = [(_UIStatusBarVisualProvider_Pad *)self normalFont];
  }

  else
  {
    normalFont2 = [(_UIStatusBarVisualProvider_Pad *)self normalFont];
    [normalFont2 pointSize];
    normalFont = [off_1E70ECC18 systemFontOfSize:? weight:?];
  }

  return normalFont;
}

- (_UIStatusBarVisualProvider_Pad)init
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarVisualProvider_Pad;
  v2 = [(_UIStatusBarVisualProvider_iOS *)&v5 init];
  v3 = _UIKitUserDefaults();
  [v3 addObserver:v2 forKeyPath:@"StatusBarHidesDate" options:0 context:0];
  [v3 addObserver:v2 forKeyPath:@"StatusBarHidesAMPM" options:0 context:0];

  return v2;
}

- (void)dealloc
{
  v3 = _UIKitUserDefaults();
  [v3 removeObserver:self forKeyPath:@"StatusBarHidesDate"];
  [v3 removeObserver:self forKeyPath:@"StatusBarHidesAMPM"];

  v4.receiver = self;
  v4.super_class = _UIStatusBarVisualProvider_Pad;
  [(_UIStatusBarVisualProvider_Pad *)&v4 dealloc];
}

- (id)setupInContainerView:(id)view
{
  v4 = MEMORY[0x1E695DF70];
  viewCopy = view;
  array = [v4 array];
  array2 = [MEMORY[0x1E695DF70] array];
  [objc_opt_class() baselineOffset];
  v9 = v8;
  [objc_opt_class() edgeInsets];
  v11 = v10;
  v13 = v12;
  [(_UIStatusBarVisualProvider_Pad *)self expandedEdgeInsets];
  v139 = v14;
  v141 = v15;
  [(_UIStatusBarVisualProvider_iOS *)self itemSpacing];
  v17 = v16;
  [(_UIStatusBarVisualProvider_iOS *)self expandedItemSpacing];
  v19 = v18;
  [(_UIStatusBarVisualProvider_Pad *)self regionSpacing];
  v21 = v20;
  normalFont = [(_UIStatusBarVisualProvider_Pad *)self normalFont];
  [normalFont capHeight];
  v24 = v23;

  expandedFont = [(_UIStatusBarVisualProvider_Pad *)self expandedFont];
  [expandedFont capHeight];
  v140 = v26;

  v27 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"leading"];
  v28 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v29 = objc_alloc_init(_UIStatusBarRegionAxisStackingLayout);
  [(_UIStatusBarRegionAxisStackingLayout *)v29 setAlignment:3];
  [(_UIStatusBarRegionAxisStackingLayout *)v29 setInterspace:10.0];
  [(_UIStatusBarRegionAxesLayout *)v28 setHorizontalLayout:v29];

  v30 = [_UIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:6];
  [(_UIStatusBarRegionAxesLayout *)v28 setVerticalLayout:v30];

  [(_UIStatusBarRegion *)v27 setLayout:v28];
  [(_UIStatusBarRegion *)v27 setOffsetable:1];
  [(_UIStatusBarRegion *)v27 setActionInsets:-20.0, -20.0, -20.0, -20.0];
  v31 = +[_UIStatusBarHoverRegionAction leadingHoverAction];
  [(_UIStatusBarRegion *)v27 setHoverAction:v31];

  UIRoundToViewScale(viewCopy);
  [(_UIStatusBarRegion *)v27 setExtendedHoverInsets:-v32, -v11, 0.0, 0.0];
  layoutItem = [(_UIStatusBarRegion *)v27 layoutItem];
  bottomAnchor = [layoutItem bottomAnchor];
  topAnchor = [viewCopy topAnchor];
  v36 = [bottomAnchor constraintEqualToAnchor:topAnchor constant:v9];
  [array addObject:v36];

  leadingAnchor = [layoutItem leadingAnchor];
  leadingAnchor2 = [viewCopy leadingAnchor];
  v39 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v11];
  [array addObject:v39];

  v144 = layoutItem;
  heightAnchor = [layoutItem heightAnchor];
  v41 = [heightAnchor constraintEqualToConstant:v24];
  [array addObject:v41];

  [viewCopy _ui_addSubLayoutItem:layoutItem];
  v42 = array2;
  v142 = array2;
  [array2 addObject:v27];

  v43 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"trailing"];
  v44 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v45 = objc_alloc_init(_UIStatusBarRegionAxisStackingLayout);
  [(_UIStatusBarRegionAxisStackingLayout *)v45 setAlignment:4];
  [(_UIStatusBarRegionAxisStackingLayout *)v45 setInterspace:v17];
  [(_UIStatusBarRegionAxesLayout *)v44 setHorizontalLayout:v45];

  v46 = [_UIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:6];
  [(_UIStatusBarRegionAxesLayout *)v44 setVerticalLayout:v46];

  [(_UIStatusBarRegion *)v43 setLayout:v44];
  [(_UIStatusBarRegion *)v43 setOffsetable:1];
  [(_UIStatusBarRegion *)v43 setActionInsets:-20.0, -20.0, -20.0, -20.0];
  v47 = +[_UIStatusBarHoverRegionAction trailingHoverAction];
  [(_UIStatusBarRegion *)v43 setHoverAction:v47];

  UIRoundToViewScale(viewCopy);
  [(_UIStatusBarRegion *)v43 setExtendedHoverInsets:-v48, 0.0, 0.0, -v13];
  layoutItem2 = [(_UIStatusBarRegion *)v43 layoutItem];
  bottomAnchor2 = [layoutItem2 bottomAnchor];
  topAnchor2 = [viewCopy topAnchor];
  v52 = [bottomAnchor2 constraintEqualToAnchor:topAnchor2 constant:v9];
  [array addObject:v52];

  trailingAnchor = [layoutItem2 trailingAnchor];
  trailingAnchor2 = [viewCopy trailingAnchor];
  v55 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v13];
  [array addObject:v55];

  v143 = layoutItem2;
  heightAnchor2 = [layoutItem2 heightAnchor];
  v57 = [heightAnchor2 constraintEqualToConstant:v24];
  [array addObject:v57];

  [viewCopy _ui_addSubLayoutItem:layoutItem2];
  [v42 addObject:v43];

  v58 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"center"];
  v138 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v59 = objc_alloc_init(_UIStatusBarRegionAxisCenteringLayout);
  [(_UIStatusBarRegionAxisCenteringLayout *)v59 setInterspace:v17];
  [(_UIStatusBarRegionAxesLayout *)v138 setHorizontalLayout:v59];

  v60 = [_UIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:6];
  [(_UIStatusBarRegionAxesLayout *)v138 setVerticalLayout:v60];

  v137 = v58;
  [(_UIStatusBarRegion *)v58 setLayout:v138];
  [(_UIStatusBarRegion *)v58 setOffsetable:1];
  layoutItem3 = [(_UIStatusBarRegion *)v58 layoutItem];
  centerXAnchor = [layoutItem3 centerXAnchor];
  centerXAnchor2 = [viewCopy centerXAnchor];
  v64 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  LODWORD(v65) = 1132068864;
  v66 = [v64 _ui_constraintWithPriority:v65];
  [array addObject:v66];

  widthAnchor = [layoutItem3 widthAnchor];
  v68 = [widthAnchor constraintEqualToConstant:0.0];
  LODWORD(v69) = 1132003328;
  v70 = [v68 _ui_constraintWithPriority:v69];
  [array addObject:v70];

  bottomAnchor3 = [layoutItem3 bottomAnchor];
  topAnchor3 = [viewCopy topAnchor];
  v73 = [bottomAnchor3 constraintEqualToAnchor:topAnchor3 constant:v9];
  [array addObject:v73];

  heightAnchor3 = [layoutItem3 heightAnchor];
  v75 = [heightAnchor3 constraintEqualToConstant:v24];
  [array addObject:v75];

  leadingAnchor3 = [layoutItem3 leadingAnchor];
  trailingAnchor3 = [v144 trailingAnchor];
  v78 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor3 constant:v21];
  [array addObject:v78];

  leadingAnchor4 = [v143 leadingAnchor];
  trailingAnchor4 = [layoutItem3 trailingAnchor];
  v81 = [leadingAnchor4 constraintGreaterThanOrEqualToAnchor:trailingAnchor4 constant:v21];
  [array addObject:v81];

  leadingAnchor5 = [layoutItem3 leadingAnchor];
  trailingAnchor5 = [v144 trailingAnchor];
  v84 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor5 constant:v21];
  LODWORD(v85) = 1132003328;
  v86 = [v84 _ui_constraintWithPriority:v85];
  [array addObject:v86];

  leadingAnchor6 = [v143 leadingAnchor];
  trailingAnchor6 = [layoutItem3 trailingAnchor];
  v89 = [leadingAnchor6 constraintEqualToAnchor:trailingAnchor6 constant:v21];
  LODWORD(v90) = 1132003328;
  v91 = [v89 _ui_constraintWithPriority:v90];
  [array addObject:v91];

  centerXAnchor3 = [viewCopy centerXAnchor];
  trailingAnchor7 = [v144 trailingAnchor];
  v94 = [centerXAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor7 constant:0.0];
  leadingRegionTrailingAnchorConstraint = self->_leadingRegionTrailingAnchorConstraint;
  self->_leadingRegionTrailingAnchorConstraint = v94;

  [array addObject:self->_leadingRegionTrailingAnchorConstraint];
  leadingAnchor7 = [v143 leadingAnchor];
  centerXAnchor4 = [viewCopy centerXAnchor];
  v98 = [leadingAnchor7 constraintGreaterThanOrEqualToAnchor:centerXAnchor4 constant:0.0];
  trailingRegionLeadingAnchorConstraint = self->_trailingRegionLeadingAnchorConstraint;
  self->_trailingRegionLeadingAnchorConstraint = v98;

  [array addObject:self->_trailingRegionLeadingAnchorConstraint];
  [viewCopy _ui_addSubLayoutItem:layoutItem3];

  [v142 addObject:v137];
  v100 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"expandedLeading"];
  v101 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v102 = objc_alloc_init(_UIStatusBarRegionAxisStackingLayout);
  [(_UIStatusBarRegionAxisStackingLayout *)v102 setAlignment:3];
  [(_UIStatusBarRegionAxisStackingLayout *)v102 setInterspace:v19];
  [(_UIStatusBarRegionAxesLayout *)v101 setHorizontalLayout:v102];

  v103 = [_UIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:6];
  [(_UIStatusBarRegionAxesLayout *)v101 setVerticalLayout:v103];

  [(_UIStatusBarRegion *)v100 setLayout:v101];
  v104 = objc_alloc_init(UIView);
  [(_UIStatusBarRegion *)v100 setContentView:v104];

  [(_UIStatusBarRegion *)v100 setOffsetable:1];
  [(_UIStatusBarRegion *)v100 disableWithToken:10];
  layoutItem4 = [(_UIStatusBarRegion *)v100 layoutItem];
  leadingAnchor8 = [layoutItem4 leadingAnchor];
  leadingAnchor9 = [viewCopy leadingAnchor];
  v108 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9 constant:v139];
  [array addObject:v108];

  bottomAnchor4 = [layoutItem4 bottomAnchor];
  topAnchor4 = [viewCopy topAnchor];
  v111 = [bottomAnchor4 constraintEqualToAnchor:topAnchor4 constant:v9];
  [array addObject:v111];

  heightAnchor4 = [layoutItem4 heightAnchor];
  v113 = [heightAnchor4 constraintEqualToConstant:v140];
  [array addObject:v113];

  [viewCopy _ui_addSubLayoutItem:layoutItem4];
  [v142 addObject:v100];

  v114 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"expandedTrailing"];
  v115 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v116 = objc_alloc_init(_UIStatusBarRegionAxisStackingLayout);
  [(_UIStatusBarRegionAxisStackingLayout *)v116 setAlignment:4];
  [(_UIStatusBarRegionAxisStackingLayout *)v116 setInterspace:v19];
  [(_UIStatusBarRegionAxesLayout *)v115 setHorizontalLayout:v116];

  v117 = [_UIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:6];
  [(_UIStatusBarRegionAxesLayout *)v115 setVerticalLayout:v117];

  [(_UIStatusBarRegion *)v114 setLayout:v115];
  v118 = objc_alloc_init(UIView);
  [(_UIStatusBarRegion *)v114 setContentView:v118];

  [(_UIStatusBarRegion *)v114 setOffsetable:1];
  [(_UIStatusBarRegion *)v114 disableWithToken:10];
  layoutItem5 = [(_UIStatusBarRegion *)v114 layoutItem];
  leadingAnchor10 = [layoutItem5 leadingAnchor];
  trailingAnchor8 = [layoutItem4 trailingAnchor];
  v122 = [leadingAnchor10 constraintEqualToAnchor:trailingAnchor8 constant:v21];
  [array addObject:v122];

  widthAnchor2 = [layoutItem5 widthAnchor];
  widthAnchor3 = [layoutItem4 widthAnchor];
  v125 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3];
  LODWORD(v126) = 1131741184;
  v127 = [v125 _ui_constraintWithPriority:v126];
  [array addObject:v127];

  trailingAnchor9 = [layoutItem5 trailingAnchor];
  trailingAnchor10 = [viewCopy trailingAnchor];
  v130 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10 constant:-v141];
  [array addObject:v130];

  bottomAnchor5 = [layoutItem5 bottomAnchor];
  topAnchor5 = [viewCopy topAnchor];
  v133 = [bottomAnchor5 constraintEqualToAnchor:topAnchor5 constant:v9];
  [array addObject:v133];

  heightAnchor5 = [layoutItem5 heightAnchor];
  v135 = [heightAnchor5 constraintEqualToConstant:v140];
  [array addObject:v135];

  [viewCopy _ui_addSubLayoutItem:layoutItem5];
  [v142 addObject:v114];

  [MEMORY[0x1E69977A0] activateConstraints:array];

  return v142;
}

- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)identifier
{
  v100[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  orderedDisplayItemPlacements = self->_orderedDisplayItemPlacements;
  if (!orderedDisplayItemPlacements)
  {
    v78 = identifierCopy;
    v6 = +[(_UIStatusBarCellularItem *)_UIStatusBarCellularExpandedItem];
    v7 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v6 priority:1003];

    v8 = +[_UIStatusBarTimeItem shortTimeDisplayIdentifier];
    v9 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v8 priority:1200];
    v100[0] = v7;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v100 count:1];
    v11 = [v9 excludingPlacements:v10];

    v12 = +[_UIStatusBarTimeItem timeDisplayIdentifier];
    v13 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v12 priority:1201];
    v99[0] = v7;
    v99[1] = v11;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v99 count:2];
    v15 = [v13 excludingPlacements:v14];
    timePlacement = self->_timePlacement;
    self->_timePlacement = v15;

    v17 = +[_UIStatusBarTimeItem dateDisplayIdentifier];
    v18 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v17 priority:700];
    v98[0] = self->_timePlacement;
    v98[1] = v11;
    v86 = v11;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:2];
    v20 = [v18 requiringAnyPlacements:v19];
    datePlacement = self->_datePlacement;
    self->_datePlacement = v20;

    selfCopy = self;
    [(_UIStatusBarVisualProvider_Pad *)self _updateDateAndTimePlacements];
    array = [MEMORY[0x1E695DF70] array];
    v23 = +[(_UIStatusBarItem *)_UIStatusBarNavigationItem];
    v24 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v23 priority:1103];
    v97[0] = v24;
    v25 = +[(_UIStatusBarItem *)_UIStatusBarPersonNameItem];
    v26 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v25 priority:1102];
    v96 = v7;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v96 count:1];
    v28 = [v26 excludingPlacements:v27];
    v97[1] = v28;
    v97[2] = v7;
    v77 = v7;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:3];
    [array addObjectsFromArray:v29];

    if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_StatusBarShowsDateBeforeTime, @"StatusBarShowsDateBeforeTime") & 1) != 0 || !byte_1EA95E69C)
    {
      v94[0] = selfCopy->_timePlacement;
      v94[1] = v86;
      v30 = selfCopy;
      v94[2] = selfCopy->_datePlacement;
      v32 = v94;
    }

    else
    {
      v30 = selfCopy;
      v31 = selfCopy->_timePlacement;
      v95[0] = selfCopy->_datePlacement;
      v95[1] = v31;
      v95[2] = v86;
      v32 = v95;
    }

    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];
    [array addObjectsFromArray:v33];

    v34 = objc_opt_class();
    v79 = [_UIStatusBarDisplayItemPlacementNetworkGroup groupWithHighPriority:3500 lowPriority:3200 cellularItemClass:v34 wifiItemClass:objc_opt_class() includeCellularName:0];
    [(_UIStatusBarVisualProvider_iOS *)v30 bluetoothPaddingInset];
    v35 = [_UIStatusBarDisplayItemPlacementIndicatorsGroup groupWithHighPriority:3400 lowPriority:3100 bluetoothPaddingInset:?];
    v84 = +[_UIStatusBarDisplayItemPlacementBatteryGroup groupWithHighPriority:lowPriority:](_UIStatusBarDisplayItemPlacementBatteryGroup, "groupWithHighPriority:lowPriority:", [v79 maximumPriority] + 1, objc_msgSend(v35, "minimumPriority") - 5);
    array2 = [MEMORY[0x1E695DF70] array];
    v36 = +[(_UIStatusBarItem *)_UIStatusBarSensorActivityItem];
    v81 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v36 priority:3720];

    v83 = [_UIStatusBarIndicatorLocationItem groupWithPriority:3710];
    v37 = +[_UIStatusBarPillBackgroundActivityItem pillCombinedDisplayIdentifier];
    v38 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v37 priority:3700];

    v39 = +[(_UIStatusBarItem *)_UIStatusBarVoiceControlPillItem];
    v82 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v39 priority:3680];

    unstablePlacements = [v35 unstablePlacements];
    [array2 addObjectsFromArray:unstablePlacements];

    [(_UIStatusBarVisualProvider_iOS *)v30 itemSpacing];
    v80 = v35;
    v42 = +[_UIStatusBarDisplayItemPlacement spacerPlacementWithSize:priority:](_UIStatusBarDisplayItemPlacement, "spacerPlacementWithSize:priority:", [v35 minimumPriority] - 2, 8.0 - (v41 + v41), 0.0);
    v92 = v38;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v92 count:1];
    v44 = [v42 requiringAllPlacements:v43];
    unstablePlacements2 = [v35 unstablePlacements];
    v46 = [v44 requiringAnyPlacements:unstablePlacements2];
    v93[0] = v46;
    v93[1] = v38;
    [(_UIStatusBarVisualProvider_iOS *)v30 itemSpacing];
    v76 = v38;
    v48 = +[_UIStatusBarDisplayItemPlacement spacerPlacementWithSize:priority:](_UIStatusBarDisplayItemPlacement, "spacerPlacementWithSize:priority:", [v38 priority] - 1, 8.0 - (v47 + v47), 0.0);
    v91 = v76;
    v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v91 count:1];
    v50 = [v48 requiringAllPlacements:v49];
    v93[2] = v50;
    v93[3] = v81;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:4];
    [array2 addObjectsFromArray:v51];

    placements = [v83 placements];
    [array2 addObjectsFromArray:placements];

    v90[0] = v82;
    v53 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorAirplaneModeItem];
    v54 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v53 priority:3600];
    cellularGroup = [v79 cellularGroup];
    placementsAffectedByAirplaneMode = [cellularGroup placementsAffectedByAirplaneMode];
    v57 = [v54 excludingPlacements:placementsAffectedByAirplaneMode];
    v90[1] = v57;
    v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:2];
    [array2 addObjectsFromArray:v58];

    placements2 = [v79 placements];
    [array2 addObjectsFromArray:placements2];

    stablePlacements = [v80 stablePlacements];
    [array2 addObjectsFromArray:stablePlacements];

    v61 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorDisplayWarningItem];
    v62 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v61 priority:3730];
    [array2 addObject:v62];

    placements3 = [v84 placements];
    [array2 addObjectsFromArray:placements3];

    v88[0] = @"leading";
    v88[1] = @"trailing";
    v89[0] = array;
    v89[1] = array2;
    v88[2] = @"center";
    v64 = +[(_UIStatusBarItem *)_UIStatusBarLockItem];
    v65 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v64 priority:2000];
    v87[0] = v65;
    v66 = +[_UIStatusBarLockItem textDisplayIdentifier];
    v67 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v66 priority:1999];
    v87[1] = v67;
    v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:2];
    v89[2] = v68;
    v88[3] = @"expandedLeading";
    expandedLeadingPlacements = [(_UIStatusBarVisualProvider_iOS *)selfCopy expandedLeadingPlacements];
    v89[3] = expandedLeadingPlacements;
    v88[4] = @"expandedTrailing";
    expandedTrailingPlacements = [(_UIStatusBarVisualProvider_iOS *)selfCopy expandedTrailingPlacements];
    v89[4] = expandedTrailingPlacements;
    v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:v88 count:5];
    v72 = selfCopy->_orderedDisplayItemPlacements;
    selfCopy->_orderedDisplayItemPlacements = v71;

    orderedDisplayItemPlacements = selfCopy->_orderedDisplayItemPlacements;
    identifierCopy = v78;
  }

  v73 = [(NSDictionary *)orderedDisplayItemPlacements objectForKeyedSubscript:identifierCopy];

  return v73;
}

- (id)regionIdentifiersForPartWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqual:@"leadingPartIdentifier"])
  {
    v4 = MEMORY[0x1E695DFD8];
    v9 = @"expandedLeading";
    v10 = 0;
LABEL_3:
    v5 = @"leading";
LABEL_6:
    [v4 setWithObjects:{v5, v9, v10, v11}];
    v6 = LABEL_7:;
    goto LABEL_8;
  }

  if ([identifierCopy isEqual:@"trailingPartIdentifier"])
  {
    v4 = MEMORY[0x1E695DFD8];
    v9 = @"expandedTrailing";
    v10 = 0;
    v5 = @"trailing";
    goto LABEL_6;
  }

  if ([identifierCopy isEqual:@"centerPartIdentifier"])
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObject:@"center"];
  }

  else
  {
    if ([identifierCopy isEqual:0x1EFB9C3D0])
    {
      v4 = MEMORY[0x1E695DFD8];
      v10 = @"center";
      v11 = 0;
      v9 = @"trailing";
      goto LABEL_3;
    }

    if (([identifierCopy isEqual:0x1EFB9C3F0] & 1) != 0 || objc_msgSend(identifierCopy, "isEqual:", @"visibleExpandedPartIdentifier"))
    {
      [MEMORY[0x1E695DFD8] setWithObjects:{@"expandedLeading", @"expandedTrailing", 0, v11}];
      goto LABEL_7;
    }

    v6 = [MEMORY[0x1E695DFD8] set];
  }

LABEL_8:
  v7 = v6;

  return v7;
}

- (id)displayItemIdentifiersForPartWithIdentifier:(id)identifier
{
  v16[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if ([identifierCopy isEqual:@"fittingLeadingPartIdentifier"])
  {
    statusBar = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    if ([(_UIStatusBarVisualProvider_iOS *)self expanded])
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
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    v9 = [statusBar displayItemIdentifiersInRegionsWithIdentifiers:v8];
    goto LABEL_12;
  }

  if ([identifierCopy isEqual:@"fittingTrailingPartIdentifier"])
  {
    statusBar = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    if ([(_UIStatusBarVisualProvider_iOS *)self expanded])
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
    v7 = MEMORY[0x1E695DFD8];
    statusBar = +[_UIStatusBarTimeItem shortTimeDisplayIdentifier];
    v8 = +[_UIStatusBarTimeItem timeDisplayIdentifier];
    v9 = [v7 setWithObjects:{statusBar, v8, 0}];
LABEL_12:
    v10 = v9;

    goto LABEL_13;
  }

  v12.receiver = self;
  v12.super_class = _UIStatusBarVisualProvider_Pad;
  v10 = [(_UIStatusBarVisualProvider_iOS *)&v12 displayItemIdentifiersForPartWithIdentifier:identifierCopy];
LABEL_13:

  return v10;
}

- (CGRect)clockBoundsForLayoutItem:(id)item
{
  itemCopy = item;
  identifier = [itemCopy identifier];
  v6 = +[_UIStatusBarTimeItem timeDisplayIdentifier];

  view = [itemCopy view];

  if (identifier == v6)
  {
    statusBar = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    currentAggregatedData = [statusBar currentAggregatedData];
    shortTimeEntry = [currentAggregatedData shortTimeEntry];
    stringValue = [shortTimeEntry stringValue];

    [view bounds];
    v13 = _UIComputedSizeForLabel(view, stringValue, 0, 1uLL, 0, 0, 0, v20, v21);
    v15 = v22;
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

  v23 = v9;
  v24 = v11;
  v25 = v13;
  v26 = v15;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (id)styleAttributesForStyle:(int64_t)style
{
  v13.receiver = self;
  v13.super_class = _UIStatusBarVisualProvider_Pad;
  v4 = [(_UIStatusBarVisualProvider_iOS *)&v13 styleAttributesForStyle:style];
  mode = [v4 mode];
  switch(mode)
  {
    case 2:
      goto LABEL_4;
    case 1:
      [v4 setIconScale:1.16];
      traitCollection = [v4 traitCollection];
      [traitCollection displayScale];
      [v4 setIconSize:15];

      expandedFont = [(_UIStatusBarVisualProvider_Pad *)self expandedFont];
      goto LABEL_6;
    case 0:
LABEL_4:
      [v4 setIconScale:1.0];
      traitCollection2 = [v4 traitCollection];
      [traitCollection2 displayScale];
      [v4 setIconSize:14];

      expandedFont = [(_UIStatusBarVisualProvider_Pad *)self normalFont];
LABEL_6:
      v9 = expandedFont;
      [v4 setFont:expandedFont];

      break;
  }

  if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_StatusBarHasBoldTime, @"StatusBarHasBoldTime") & 1) != 0 || !byte_1EA95E6A4)
  {
    font = [v4 font];
    [v4 setEmphasizedFont:font];
  }

  else
  {
    font = [(_UIStatusBarVisualProvider_Pad *)self normalFont];
    [font pointSize];
    v11 = [off_1E70ECC18 systemFontOfSize:? weight:?];
    [v4 setEmphasizedFont:v11];
  }

  [v4 setImageNamePrefixes:&unk_1EFE2D738];

  return v4;
}

- (id)overriddenStyleAttributesForDisplayItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[_UIStatusBarPillBackgroundActivityItem pillCombinedDisplayIdentifier];

  if (v5 == identifierCopy)
  {
    v7 = +[_UIStatusBarStyleAttributes overriddenStyleAttributes];
    pillFont = [(_UIStatusBarVisualProvider_Pad *)self pillFont];
    [v7 setFont:pillFont];

    pillSmallFont = [(_UIStatusBarVisualProvider_Pad *)self pillSmallFont];
    [v7 setSmallFont:pillSmallFont];

    [(_UIStatusBarVisualProvider_Pad *)self pillSize];
  }

  else
  {
    v6 = +[(_UIStatusBarPillBackgroundActivityItem *)_UIStatusBarExpandedPillBackgroundActivityItem];

    if (v6 != identifierCopy)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v7 = +[_UIStatusBarStyleAttributes overriddenStyleAttributes];
    expandedPillFont = [(_UIStatusBarVisualProvider_Pad *)self expandedPillFont];
    [v7 setFont:expandedPillFont];

    expandedPillFont2 = [(_UIStatusBarVisualProvider_Pad *)self expandedPillFont];
    [v7 setSmallFont:expandedPillFont2];

    [(_UIStatusBarVisualProvider_Pad *)self expandedPillSize];
  }

  [v7 setIconScale:v10 / 21.3333333];
  [v7 setSymbolScale:2];
LABEL_7:

  return v7;
}

- (void)actionable:(id)actionable highlighted:(BOOL)highlighted initialPress:(BOOL)press
{
  pressCopy = press;
  highlightedCopy = highlighted;
  v18[1] = *MEMORY[0x1E69E9840];
  actionableCopy = actionable;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = 0;
LABEL_8:
    v15.receiver = self;
    v15.super_class = _UIStatusBarVisualProvider_Pad;
    [(_UIStatusBarVisualProvider_iOS *)&v15 actionable:actionableCopy highlighted:highlightedCopy initialPress:pressCopy];
    goto LABEL_9;
  }

  v9 = actionableCopy;
  v10 = v9;
  if (!v9)
  {
    goto LABEL_8;
  }

  identifier = [v9 identifier];
  v12 = +[_UIStatusBarPillBackgroundActivityItem pillCombinedDisplayIdentifier];

  if (identifier != v12)
  {
    goto LABEL_8;
  }

  highlightView = [v10 highlightView];
  if (!highlightView)
  {
    highlightView = objc_alloc_init(_UIStatusBarRoundedCornerView);
    [v10 setHighlightView:highlightView];
  }

  v18[0] = highlightView;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __70___UIStatusBarVisualProvider_Pad_actionable_highlighted_initialPress___block_invoke;
  v16[3] = &__block_descriptor_33_e16_v16__0__UIView_8l;
  v17 = highlightedCopy;
  [UIButton _setVisuallyHighlighted:highlightedCopy forViews:v14 initialPress:pressCopy highlightBlock:v16];

LABEL_9:
}

- (void)statusBarEnabledPartsUpdated
{
  v46[1] = *MEMORY[0x1E69E9840];
  statusBar = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  v4 = [statusBar regionWithIdentifier:@"leading"];

  statusBar2 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  v6 = [statusBar2 regionWithIdentifier:@"trailing"];

  statusBar3 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  containerView = [statusBar3 containerView];
  centerXAnchor = [containerView centerXAnchor];

  statusBar4 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  containerView2 = [statusBar4 containerView];
  centerXAnchor2 = [containerView2 centerXAnchor];

  statusBar5 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
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

      statusBar6 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
      containerView3 = [statusBar6 containerView];
      trailingAnchor = [containerView3 trailingAnchor];
      v19 = centerXAnchor;
      centerXAnchor = trailingAnchor;
    }

    else
    {
      statusBar6 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
      containerView3 = [statusBar6 containerView];
      leadingAnchor = [containerView3 leadingAnchor];
      v19 = centerXAnchor2;
      centerXAnchor2 = leadingAnchor;
    }
  }

LABEL_7:
  v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
  v22 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
  firstAnchor = [(NSLayoutConstraint *)self->_leadingRegionTrailingAnchorConstraint firstAnchor];

  if (centerXAnchor != firstAnchor)
  {
    [v21 addObject:self->_leadingRegionTrailingAnchorConstraint];
    v24 = MEMORY[0x1E69977A0];
    v46[0] = self->_leadingRegionTrailingAnchorConstraint;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:1];
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
    [MEMORY[0x1E69977A0] deactivateConstraints:v21];
    [MEMORY[0x1E69977A0] activateConstraints:v22];
    statusBar7 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
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
      [(_UIStatusBarVisualProvider_Pad *)self _updateConstraintsForAvoidanceFrame:v39, v41, v43, v45];
    }
  }
}

- (void)_updateConstraintsForAvoidanceFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  statusBar = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
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
    statusBar2 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    v28 = [statusBar2 regionWithIdentifier:@"center"];
    isEnabled = [v28 isEnabled];

    if ((isEnabled & 1) == 0)
    {
      statusBar3 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
      v31 = [statusBar3 regionWithIdentifier:@"leading"];
      isEnabled2 = [v31 isEnabled];

      if (isEnabled2)
      {
        statusBar4 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
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
          statusBar5 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
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

  *&r1.origin.y = MEMORY[0x1E69E9820];
  *&r1.size.width = 3221225472;
  *&r1.size.height = __70___UIStatusBarVisualProvider_Pad__updateConstraintsForAvoidanceFrame___block_invoke;
  v51 = &unk_1E70F3590;
  selfCopy = self;
  [UIView performWithoutAnimation:&r1.origin.y];
}

- (void)avoidanceFrameUpdatedFromFrame:(CGRect)frame withAnimationSettings:(id)settings options:(unint64_t)options
{
  v6 = [(_UIStatusBarVisualProvider_iOS *)self statusBar:settings];
  [v6 avoidanceFrame];
  [(_UIStatusBarVisualProvider_Pad *)self _updateConstraintsForAvoidanceFrame:?];
}

- (void)sizeUpdatedFromSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  statusBar = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
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
    statusBar2 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    [statusBar2 bounds];
    v17 = v16;
    v19 = v18;

    if (width != v17 || height != v19)
    {

      [(_UIStatusBarVisualProvider_Pad *)self _updateConstraintsForAvoidanceFrame:v8, v10, v12, v14];
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
  v5 = +[(_UIStatusBarItem *)_UIStatusBarPillBackgroundActivityItem];

  if (identifier == v5)
  {
    v10 = createdCopy;
    [(_UIStatusBarVisualProvider_Pad *)self pillSize];
  }

  else
  {
    identifier2 = [createdCopy identifier];
    v7 = +[(_UIStatusBarItem *)_UIStatusBarVoiceControlPillItem];

    if (identifier2 == v7)
    {
      v10 = createdCopy;
      [(_UIStatusBarVisualProvider_Pad *)self smallPillSize];
    }

    else
    {
      identifier3 = [createdCopy identifier];
      v9 = +[(_UIStatusBarItem *)_UIStatusBarExpandedPillBackgroundActivityItem];

      if (identifier3 != v9)
      {
        goto LABEL_10;
      }

      v10 = createdCopy;
      [(_UIStatusBarVisualProvider_Pad *)self expandedPillSize];
    }
  }

  [v10 setPillSize:?];

LABEL_10:
}

- (BOOL)_updateDateAndTimePlacements
{
  v3 = _UIKitUserDefaults();
  v4 = [v3 BOOLForKey:@"StatusBarHidesDate"];
  v5 = [v3 BOOLForKey:@"StatusBarHidesAMPM"];
  v6 = v4 ^ [(_UIStatusBarDisplayItemPlacement *)self->_datePlacement isEnabled];
  if ((v6 & 1) == 0)
  {
    [(_UIStatusBarDisplayItemPlacement *)self->_datePlacement setEnabled:v4 ^ 1u];
  }

  if (v5 == [(_UIStatusBarDisplayItemPlacement *)self->_timePlacement isEnabled])
  {
    [(_UIStatusBarDisplayItemPlacement *)self->_timePlacement setEnabled:v5 ^ 1u];
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
  if ([(_UIStatusBarVisualProvider_Pad *)self _updateDateAndTimePlacements])
  {
    statusBar = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    [statusBar updateWithAnimations:MEMORY[0x1E695E0F0]];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = _UIKitUserDefaults();

  if (v13 == objectCopy)
  {
    [(_UIStatusBarVisualProvider_Pad *)self _dateTimePreferencesUpdated];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = _UIStatusBarVisualProvider_Pad;
    [(_UIStatusBarVisualProvider_Pad *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (double)airplaneTravelOffsetInProposedPartWithIdentifier:(id *)identifier animationType:(int64_t)type
{
  if ([(_UIStatusBarVisualProvider_iOS *)self expanded]&& [(_UIStatusBarVisualProvider_iOS *)self wantsExpandedLeadingPlacements])
  {
    v37.receiver = self;
    v37.super_class = _UIStatusBarVisualProvider_Pad;
    [(_UIStatusBarVisualProvider_iOS *)&v37 airplaneTravelOffsetInProposedPartWithIdentifier:identifier animationType:type];
    return v7;
  }

  else
  {
    v9 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorAirplaneModeItem];
    statusBar = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    [statusBar frameForDisplayItemWithIdentifier:v9];
    v12 = v11;
    v35 = v13;
    v36 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v34 = v17;

    statusBar2 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
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

    v32 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorAirplaneModeItem];
    *identifier = [v32 stringRepresentation];
  }

  return v8;
}

- (double)airplaneSpeedForAnimationType:(int64_t)type
{
  if (![(_UIStatusBarVisualProvider_iOS *)self expanded]|| ![(_UIStatusBarVisualProvider_iOS *)self wantsExpandedLeadingPlacements])
  {
    return 160.0;
  }

  v6.receiver = self;
  v6.super_class = _UIStatusBarVisualProvider_Pad;
  [(_UIStatusBarVisualProvider_iOS *)&v6 airplaneSpeedForAnimationType:type];
  return result;
}

- (double)airplaneShouldFadeForAnimationType:(int64_t)type
{
  expanded = [(_UIStatusBarVisualProvider_iOS *)self expanded];
  result = 1.0;
  if (expanded)
  {
    v7.receiver = self;
    v7.super_class = _UIStatusBarVisualProvider_Pad;
    [(_UIStatusBarVisualProvider_iOS *)&v7 airplaneShouldFadeForAnimationType:type, 1.0];
  }

  return result;
}

@end