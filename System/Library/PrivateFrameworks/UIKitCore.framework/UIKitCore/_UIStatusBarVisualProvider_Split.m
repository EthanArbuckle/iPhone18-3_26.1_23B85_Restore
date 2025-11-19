@interface _UIStatusBarVisualProvider_Split
+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)a3;
+ (Class)visualProviderSubclassForScreen:(id)a3 visualProviderInfo:(id)a4;
- (BOOL)_shouldShowSystemUpdateForDisplayItemWithIdentifier:(id)a3;
- (BOOL)_updateLowerRegionsWithData:(id)a3;
- (BOOL)canFixupDisplayItemAttributes;
- (BOOL)hasCustomAnimationForDisplayItemWithIdentifier:(id)a3 removal:(BOOL)a4;
- (CGAffineTransform)_collapseChargingBoltTransformForDisplayItem:(SEL)a3;
- (CGAffineTransform)_expandedChargingBoltTransformForDisplayItem:(SEL)a3;
- (CGSize)smallPillSize;
- (NSDirectionalEdgeInsets)expandedEdgeInsets;
- (UIFont)emphasizedFont;
- (UIFont)expandedFont;
- (UIFont)normalFont;
- (UIFont)smallFont;
- (UIFont)systemUpdateFont;
- (UIFont)voiceControlFont;
- (double)airplaneObstacleFadeOutDuration;
- (double)airplaneShouldFadeForAnimationType:(int64_t)a3;
- (double)airplaneSpeedForAnimationType:(int64_t)a3;
- (double)airplaneTravelOffsetInProposedPartWithIdentifier:(id *)a3 animationType:(int64_t)a4;
- (double)animatedTypeDisplayItemSpacingFactorForCellularType:(int64_t)a3;
- (double)condensedPointSizeForCellularType:(int64_t)a3 defaultPointSize:(double)a4 baselineOffset:(double *)a5;
- (double)cornerRadius;
- (id)_additionAnimationForBatteryCharging;
- (id)_orderedDisplayItemPlacements;
- (id)_removalAnimationForBatteryCharging;
- (id)_systemUpdateAnimationForDisplayItemWithIdentifier:(id)a3;
- (id)_systemUpdateDelayedDataIdentifiers;
- (id)additionAnimationForDisplayItemWithIdentifier:(id)a3 itemAnimation:(id)a4;
- (id)animationForAirplaneMode;
- (id)animationForProminentLocation;
- (id)condensedFontForCellularType:(int64_t)a3 defaultFont:(id)a4 baselineOffset:(double *)a5;
- (id)defaultAnimationForDisplayItemWithIdentifier:(id)a3;
- (id)displayItemIdentifiersForPartWithIdentifier:(id)a3;
- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)a3;
- (id)overriddenStyleAttributesForDisplayItemWithIdentifier:(id)a3;
- (id)regionIdentifiersForPartWithIdentifier:(id)a3;
- (id)removalAnimationForDisplayItemWithIdentifier:(id)a3 itemAnimation:(id)a4;
- (id)stringForCellularType:(int64_t)a3 condensed:(BOOL)a4;
- (id)styleAttributesForStyle:(int64_t)a3;
- (id)willUpdateWithData:(id)a3;
- (int64_t)expandedIconSize;
- (int64_t)normalIconSize;
- (void)_collapseBattery;
- (void)_delaySystemUpdateData;
- (void)_disableSystemUpdates;
- (void)_resetBattery;
- (void)_resumeSystemUpdateData;
- (void)_setupExpandedRegionsInContainerView:(id)a3 sensorHeight:(double)a4 constraints:(id *)a5 regions:(id *)a6;
- (void)_stopBatteryCollapseTimer;
- (void)_updateDataForBatteryCharging:(id)a3;
- (void)_updateDataForSystemUpdates:(id)a3;
- (void)_updateExpandedTrailingRegion;
- (void)dealloc;
- (void)itemCreated:(id)a3;
- (void)setExpanded:(BOOL)a3;
- (void)updateDataForService:(id)a3;
@end

@implementation _UIStatusBarVisualProvider_Split

+ (Class)visualProviderSubclassForScreen:(id)a3 visualProviderInfo:(id)a4
{
  v27[9] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  [v5 _nativeDisplayBounds];
  Width = CGRectGetWidth(v29);
  v8 = [v5 _exclusionArea];
  [v8 rect];
  v10 = v9;
  v12 = v11;
  v27[0] = objc_opt_class();
  v27[1] = objc_opt_class();
  v27[2] = objc_opt_class();
  v27[3] = objc_opt_class();
  v27[4] = objc_opt_class();
  v27[5] = objc_opt_class();
  v27[6] = objc_opt_class();
  v27[7] = objc_opt_class();
  v27[8] = objc_opt_class();
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:9];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v26 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __87___UIStatusBarVisualProvider_Split_visualProviderSubclassForScreen_visualProviderInfo___block_invoke;
  v17[3] = &unk_1E7120E30;
  v20 = Width;
  v14 = v5;
  v21 = v10;
  v22 = v12;
  v18 = v14;
  v19 = &v23;
  [v13 enumerateObjectsUsingBlock:v17];
  v15 = v24[3];

  _Block_object_dispose(&v23, 8);

  return v15;
}

- (CGSize)smallPillSize
{
  v2 = 20.0;
  v3 = 20.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (UIFont)normalFont
{
  v2 = _AXSEnhanceTextLegibilityEnabled() != 0;
  v3 = qword_1ED491D38;
  if (qword_1ED491D38)
  {
    v4 = _MergedGlobals_22_0 == v2;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    _MergedGlobals_22_0 = v2;
    [objc_opt_class() baseFontSize];
    v5 = [off_1E70ECC18 systemFontOfSize:? weight:?];
    v6 = qword_1ED491D38;
    qword_1ED491D38 = v5;

    v3 = qword_1ED491D38;
  }

  return v3;
}

- (UIFont)expandedFont
{
  v2 = _AXSEnhanceTextLegibilityEnabled() != 0;
  v3 = unk_1ED491D40;
  if (unk_1ED491D40)
  {
    v4 = byte_1ED491D29 == v2;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    byte_1ED491D29 = v2;
    [objc_opt_class() expandedFontSize];
    v5 = [off_1E70ECC18 systemFontOfSize:? weight:?];
    v6 = unk_1ED491D40;
    unk_1ED491D40 = v5;

    v3 = unk_1ED491D40;
  }

  return v3;
}

- (UIFont)emphasizedFont
{
  v2 = _AXSEnhanceTextLegibilityEnabled() != 0;
  v3 = unk_1ED491D48;
  if (unk_1ED491D48)
  {
    v4 = byte_1ED491D2A == v2;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    byte_1ED491D2A = v2;
    [objc_opt_class() baseFontSize];
    v6 = [off_1E70ECC18 systemFontOfSize:v5 + 2.0 weight:*off_1E70ECD30];
    v7 = unk_1ED491D48;
    unk_1ED491D48 = v6;

    v3 = unk_1ED491D48;
  }

  return v3;
}

- (UIFont)smallFont
{
  v2 = _AXSEnhanceTextLegibilityEnabled() != 0;
  v3 = unk_1ED491D50;
  if (unk_1ED491D50)
  {
    v4 = byte_1ED491D2B == v2;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    byte_1ED491D2B = v2;
    v5 = [off_1E70ECC18 systemFontOfSize:11.0 weight:*off_1E70ECD20];
    v6 = unk_1ED491D50;
    unk_1ED491D50 = v5;

    v3 = unk_1ED491D50;
  }

  return v3;
}

- (UIFont)voiceControlFont
{
  v2 = _AXSEnhanceTextLegibilityEnabled() != 0;
  v3 = unk_1ED491D58;
  if (unk_1ED491D58)
  {
    v4 = byte_1ED491D2C == v2;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    byte_1ED491D2C = v2;
    v5 = [off_1E70ECC18 systemFontOfSize:13.0 weight:*off_1E70ECD20];
    v6 = unk_1ED491D58;
    unk_1ED491D58 = v5;

    v3 = unk_1ED491D58;
  }

  return v3;
}

- (UIFont)systemUpdateFont
{
  v2 = _AXSEnhanceTextLegibilityEnabled() != 0;
  v3 = unk_1ED491D60;
  if (unk_1ED491D60)
  {
    v4 = byte_1ED491D2D == v2;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    byte_1ED491D2D = v2;
    [objc_opt_class() baseFontSize];
    v6 = [off_1E70ECC18 systemFontOfSize:v5 + 2.0 weight:*off_1E70ECD20];
    v7 = unk_1ED491D60;
    unk_1ED491D60 = v6;

    v3 = unk_1ED491D60;
  }

  return v3;
}

- (int64_t)normalIconSize
{
  [(_UIStatusBarVisualProvider_Split *)self normalIconScale];
  v4 = v3;
  v5 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  v6 = [v5 _effectiveTargetScreen];
  [v6 _scale];
  if (v7 <= 2.5)
  {
    if (v4 == 1.07)
    {
      v8 = 5;
    }

    else if (v4 == 1.16)
    {
      v8 = 9;
    }

    else if (v4 == 1.2412)
    {
      v8 = 11;
    }

    else
    {
      v8 = 1;
    }
  }

  else if (v4 == 1.08)
  {
    v8 = 6;
  }

  else if (v4 == 1.06)
  {
    v8 = 4;
  }

  else if (v4 == 1.12)
  {
    v8 = 7;
  }

  else if (v4 == 1.26)
  {
    v8 = 8;
  }

  else if (v4 == 1.16)
  {
    v8 = 10;
  }

  else if (v4 == 1.2412)
  {
    v8 = 12;
  }

  else if (v4 == 1.2992)
  {
    v8 = 13;
  }

  else
  {
    v8 = 2;
  }

  return v8;
}

- (int64_t)expandedIconSize
{
  [(_UIStatusBarVisualProvider_Split *)self expandedIconScale];
  v4 = v3;
  v5 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  v6 = [v5 _effectiveTargetScreen];
  [v6 _scale];
  if (v7 <= 2.5)
  {
    if (v4 == 1.07)
    {
      v8 = 5;
    }

    else if (v4 == 1.16)
    {
      v8 = 9;
    }

    else if (v4 == 1.2412)
    {
      v8 = 11;
    }

    else
    {
      v8 = 1;
    }
  }

  else if (v4 == 1.08)
  {
    v8 = 6;
  }

  else if (v4 == 1.06)
  {
    v8 = 4;
  }

  else if (v4 == 1.12)
  {
    v8 = 7;
  }

  else if (v4 == 1.26)
  {
    v8 = 8;
  }

  else if (v4 == 1.16)
  {
    v8 = 10;
  }

  else if (v4 == 1.2412)
  {
    v8 = 12;
  }

  else if (v4 == 1.2992)
  {
    v8 = 13;
  }

  else
  {
    v8 = 2;
  }

  return v8;
}

- (NSDirectionalEdgeInsets)expandedEdgeInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (double)cornerRadius
{
  v2 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  v3 = [v2 _effectiveTargetScreen];

  [v3 _displayCornerRadius];
  v5 = v4;
  [v3 _nativeScale];
  v7 = v5 * v6;
  [v3 _scale];
  v9 = v7 / v8;

  return v9;
}

- (void)_setupExpandedRegionsInContainerView:(id)a3 sensorHeight:(double)a4 constraints:(id *)a5 regions:(id *)a6
{
  v9 = *a5;
  v118 = *a6;
  v119 = v9;
  v10 = a3;
  [(_UIStatusBarVisualProvider_iOS *)self expandedItemSpacing];
  v12 = v11;
  [(_UIStatusBarVisualProvider_Split *)self baselineBottomInset];
  v14 = v13;
  [(_UIStatusBarVisualProvider_Split *)self expandedEdgeInsets];
  v16 = v15;
  v18 = v17;
  v19 = [(_UIStatusBarVisualProvider_Split *)self expandedFont];
  [v19 capHeight];
  v21 = v20;

  v22 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"expandedLeading"];
  v23 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v24 = objc_alloc_init(_UIStatusBarRegionAxisStackingLayout);
  [(_UIStatusBarRegionAxisStackingLayout *)v24 setAlignment:3];
  [(_UIStatusBarRegionAxisStackingLayout *)v24 setInterspace:v12];
  [(_UIStatusBarRegionAxesLayout *)v23 setHorizontalLayout:v24];

  v25 = [_UIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:6];
  [(_UIStatusBarRegionAxesLayout *)v23 setVerticalLayout:v25];

  [(_UIStatusBarRegion *)v22 setLayout:v23];
  v26 = objc_alloc_init(UIView);
  [(_UIStatusBarRegion *)v22 setContentView:v26];

  [(_UIStatusBarRegion *)v22 setOffsetable:1];
  [(_UIStatusBarRegion *)v22 disableWithToken:10];
  v27 = [(_UIStatusBarRegion *)v22 layoutItem];
  v28 = [v27 leadingAnchor];
  v29 = [v10 leadingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:v16];
  [v119 addObject:v30];

  v31 = [v27 bottomAnchor];
  v32 = [v10 topAnchor];
  v33 = a4 - v14;
  v34 = [v31 constraintEqualToAnchor:v32 constant:v33];
  LODWORD(v35) = 1147207680;
  v36 = [v34 _ui_constraintWithPriority:v35];
  [v119 addObject:v36];

  v117 = v27;
  v37 = [v27 heightAnchor];
  v38 = [v37 constraintEqualToConstant:v21];
  [v119 addObject:v38];

  [v10 _ui_addSubLayoutItem:v27];
  [v118 addObject:v22];

  v39 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"expandedTrailing"];
  v40 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v41 = objc_alloc_init(_UIStatusBarRegionAxisStackingLayout);
  [(_UIStatusBarRegionAxisStackingLayout *)v41 setAlignment:4];
  [(_UIStatusBarRegionAxisStackingLayout *)v41 setInterspace:v12];
  [(_UIStatusBarRegionAxesLayout *)v40 setHorizontalLayout:v41];

  v42 = [_UIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:6];
  [(_UIStatusBarRegionAxesLayout *)v40 setVerticalLayout:v42];

  [(_UIStatusBarRegion *)v39 setLayout:v40];
  v43 = objc_alloc_init(UIView);
  [(_UIStatusBarRegion *)v39 setContentView:v43];

  [(_UIStatusBarRegion *)v39 setOffsetable:1];
  [(_UIStatusBarRegion *)v39 disableWithToken:10];
  v44 = [(_UIStatusBarRegion *)v39 layoutItem];
  v45 = [v44 trailingAnchor];
  v46 = [v10 trailingAnchor];
  v47 = [v45 constraintEqualToAnchor:v46 constant:-v18];
  [v119 addObject:v47];

  v48 = [v44 bottomAnchor];
  v49 = [v10 topAnchor];
  v50 = [v48 constraintEqualToAnchor:v49 constant:v33];
  LODWORD(v51) = 1147207680;
  v52 = [v50 _ui_constraintWithPriority:v51];
  [v119 addObject:v52];

  v53 = [v44 heightAnchor];
  v54 = [v53 constraintEqualToConstant:v21];
  [v119 addObject:v54];

  v55 = [v44 leadingAnchor];
  v56 = [v117 trailingAnchor];
  v57 = [v55 constraintEqualToAnchor:v56 constant:v12];
  [v119 addObject:v57];

  v58 = [v44 widthAnchor];
  v59 = [v117 widthAnchor];
  v60 = [v58 constraintEqualToAnchor:v59];
  LODWORD(v61) = 1131741184;
  v62 = [v60 _ui_constraintWithPriority:v61];
  [v119 addObject:v62];

  [v10 _ui_addSubLayoutItem:v44];
  [v118 addObject:v39];

  [(_UIStatusBarVisualProvider_Split *)self lowerExpandedBaselineOffset];
  v64 = v63;
  v65 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"expandedLowerLeading"];
  v66 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v67 = objc_alloc_init(_UIStatusBarRegionAxisStackingLayout);
  [(_UIStatusBarRegionAxisStackingLayout *)v67 setAlignment:3];
  [(_UIStatusBarRegionAxisStackingLayout *)v67 setInterspace:v12];
  [(_UIStatusBarRegionAxesLayout *)v66 setHorizontalLayout:v67];

  v68 = [_UIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:6];
  [(_UIStatusBarRegionAxesLayout *)v66 setVerticalLayout:v68];

  [(_UIStatusBarRegion *)v65 setLayout:v66];
  v69 = objc_alloc_init(UIView);
  [(_UIStatusBarRegion *)v65 setContentView:v69];

  [(_UIStatusBarRegion *)v65 setOffsetable:1];
  [(_UIStatusBarRegion *)v65 disableWithToken:10];
  v70 = [(_UIStatusBarRegion *)v65 layoutItem];
  v71 = [v70 bottomAnchor];
  v72 = [v10 topAnchor];
  v73 = [v71 constraintEqualToAnchor:v72 constant:v33];
  expandedLeadingLowerTopConstraint = self->_expandedLeadingLowerTopConstraint;
  self->_expandedLeadingLowerTopConstraint = v73;

  v75 = [v70 leadingAnchor];
  v76 = [v10 leadingAnchor];
  v77 = [v75 constraintEqualToAnchor:v76 constant:v16];
  [v119 addObject:v77];

  v78 = [v70 bottomAnchor];
  v79 = [v117 bottomAnchor];
  v80 = [v78 constraintEqualToAnchor:v79 constant:v64];
  [v119 addObject:v80];

  v81 = [v70 heightAnchor];
  v82 = [v81 constraintEqualToConstant:v21];
  [v119 addObject:v82];

  [v119 addObject:self->_expandedLeadingLowerTopConstraint];
  v115 = v10;
  [v10 _ui_addSubLayoutItem:v70];

  [v118 addObject:v65];
  v83 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"expandedLowerTrailing"];
  v84 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v85 = objc_alloc_init(_UIStatusBarRegionAxisStackingLayout);
  [(_UIStatusBarRegionAxisStackingLayout *)v85 setAlignment:4];
  [(_UIStatusBarRegionAxisStackingLayout *)v85 setInterspace:v12];
  [(_UIStatusBarRegionAxesLayout *)v84 setHorizontalLayout:v85];

  v86 = [_UIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:6];
  [(_UIStatusBarRegionAxesLayout *)v84 setVerticalLayout:v86];

  [(_UIStatusBarRegion *)v83 setLayout:v84];
  v87 = objc_alloc_init(UIView);
  [(_UIStatusBarRegion *)v83 setContentView:v87];

  [(_UIStatusBarRegion *)v83 setOffsetable:1];
  [(_UIStatusBarRegion *)v83 disableWithToken:10];
  v88 = [(_UIStatusBarRegion *)v83 layoutItem];
  v89 = [v88 trailingAnchor];
  v90 = [v10 trailingAnchor];
  v91 = [v89 constraintEqualToAnchor:v90 constant:-v18];
  [v119 addObject:v91];

  v92 = [(_UIStatusBarRegion *)v83 layoutItem];
  v93 = [v92 heightAnchor];
  v94 = [v93 constraintEqualToConstant:v21];
  [v119 addObject:v94];

  v95 = [(_UIStatusBarRegion *)v83 layoutItem];
  v96 = [v95 bottomAnchor];
  v97 = [v70 bottomAnchor];
  v98 = [v96 constraintEqualToAnchor:v97];
  [v119 addObject:v98];

  v99 = [(_UIStatusBarRegion *)v83 layoutItem];
  v100 = [v99 bottomAnchor];
  v101 = [v44 bottomAnchor];
  v102 = [v100 constraintEqualToAnchor:v101 constant:v64];
  expandedTrailingBottomConstraint = self->_expandedTrailingBottomConstraint;
  self->_expandedTrailingBottomConstraint = v102;

  [v119 addObject:self->_expandedTrailingBottomConstraint];
  v104 = [(_UIStatusBarRegion *)v83 layoutItem];
  v105 = [v104 leadingAnchor];
  v106 = [v70 trailingAnchor];
  v107 = [v105 constraintEqualToAnchor:v106 constant:v12];
  [v119 addObject:v107];

  v108 = [(_UIStatusBarRegion *)v83 layoutItem];
  v109 = [v108 widthAnchor];
  v110 = [v70 widthAnchor];
  v111 = [v109 constraintEqualToAnchor:v110];
  LODWORD(v112) = 1131741184;
  v113 = [v111 _ui_constraintWithPriority:v112];
  [v119 addObject:v113];

  v114 = [(_UIStatusBarRegion *)v83 layoutItem];
  [v115 _ui_addSubLayoutItem:v114];

  [v118 addObject:v83];
}

- (id)_orderedDisplayItemPlacements
{
  v132[1] = *MEMORY[0x1E69E9840];
  v111 = [MEMORY[0x1E695DF70] array];
  v2 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorSatelliteItem];
  v110 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v2 priority:1101];

  v3 = +[(_UIStatusBarCellularItem *)_UIStatusBarCellularCondensedItem];
  v4 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v3 priority:1104];

  v5 = +[_UIStatusBarCellularCondensedItem dualSignalStrengthDisplayIdentifier];
  v6 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v5 priority:1105];
  v132[0] = v4;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v132 count:1];
  v8 = [v6 excludingPlacements:v7];

  v9 = +[_UIStatusBarCellularCondensedItem sosSignalStrengthDisplayIdentifier];
  v10 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v9 priority:1109];
  v131[0] = v4;
  v131[1] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v131 count:2];
  v12 = [v10 excludingPlacements:v11];

  v13 = +[(_UIStatusBarCellularItem *)_UIStatusBarCellularCondensedItem];
  v14 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v13 priority:1106];
  v130 = v4;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v130 count:1];
  v16 = [v14 excludingPlacements:v15];

  if ([(_UIStatusBarVisualProvider_Split *)self supportsAnimatedCellularNetworkType])
  {
    v17 = +[_UIStatusBarCellularCondensedItem animatedTypeDisplayIdentifier];
    v18 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v17 priority:1102];
    v129 = v110;
    v19 = &v129;
  }

  else
  {
    v17 = +[(_UIStatusBarCellularItem *)_UIStatusBarCellularCondensedItem];
    v18 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v17 priority:1102];
    v128 = v110;
    v19 = &v128;
  }

  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v21 = [v18 excludingPlacements:v20];

  v107 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorAirplaneModeItem];
  v100 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v107 priority:1200];
  v126[0] = v4;
  v126[1] = v8;
  v126[2] = v12;
  v126[3] = v16;
  v126[4] = v21;
  v98 = [MEMORY[0x1E695DEC8] arrayWithObjects:v126 count:5];
  v96 = [v100 excludingPlacements:v98];
  v127[0] = v96;
  v127[1] = v4;
  v105 = v8;
  v106 = v4;
  v127[2] = v8;
  v127[3] = v12;
  v103 = v16;
  v104 = v12;
  v127[4] = v16;
  v94 = +[_UIStatusBarWifiItem signalStrengthDisplayIdentifier];
  v92 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v94 priority:1107];
  v125[0] = v21;
  v125[1] = v110;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v125 count:2];
  v23 = [v92 excludingPlacements:v22];
  v127[5] = v23;
  v127[6] = v21;
  v24 = +[_UIStatusBarWifiItem iconDisplayIdentifier];
  v25 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v24 priority:1103];
  v102 = v21;
  v124[0] = v21;
  v124[1] = v110;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v124 count:2];
  v27 = [v25 excludingPlacements:v26];
  v127[7] = v27;
  v127[8] = v110;
  v28 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorLiquidDetectionItem];
  v29 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v28 priority:1108];
  v127[9] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v127 count:10];
  [v111 addObjectsFromArray:v30];

  v31 = +[_UIStatusBarBatteryItem iconDisplayIdentifier];
  v32 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v31 priority:1111];
  [v111 addObject:v32];

  if ([objc_opt_class() showsLargeBatteryChargingAnimation])
  {
    v33 = +[_UIStatusBarBatteryItem chargingDisplayIdentifier];
    v34 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v33 priority:1300];
    v35 = [v111 subarrayWithRange:{0, objc_msgSend(v111, "count") - 1}];
    v36 = [v34 excludingPlacements:v35];
    v37 = [v36 disabledPlacement];
    [(_UIStatusBarVisualProvider_Split *)self setBatteryChargingPlacement:v37];

    v38 = [(_UIStatusBarVisualProvider_Split *)self batteryChargingPlacement];
    [v111 addObject:v38];
  }

  v39 = objc_opt_class();
  v40 = [_UIStatusBarDisplayItemPlacementNetworkGroup groupWithHighPriority:2500 lowPriority:2200 cellularItemClass:v39 wifiItemClass:objc_opt_class() includeCellularName:1];
  v41 = [v40 wifiGroup];
  [(_UIStatusBarVisualProvider_Split *)self setLowerWifiGroup:v41];

  v42 = [MEMORY[0x1E695DF70] array];
  v43 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorAirplaneModeItem];
  v44 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v43 priority:5000];
  v45 = [(_UIStatusBarVisualProvider_iOS *)self expandedCellularPlacementsAffectedByAirplaneMode];
  v46 = [v40 cellularGroup];
  v47 = [v46 placementsAffectedByAirplaneMode];
  v48 = [v45 arrayByAddingObjectsFromArray:v47];
  v49 = [v44 excludingPlacements:v48];
  [v42 addObject:v49];

  v101 = v40;
  v50 = [v40 placements];
  v108 = v42;
  [v42 addObjectsFromArray:v50];

  v51 = [MEMORY[0x1E695DF70] array];
  v52 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorLocationItem];
  v53 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v52 priority:2450];
  [v51 addObject:v53];

  [(_UIStatusBarVisualProvider_iOS *)self bluetoothPaddingInset];
  v54 = [_UIStatusBarDisplayItemPlacementIndicatorsGroup groupWithHighPriority:2400 lowPriority:200 bluetoothPaddingInset:?];
  v55 = [v54 placements];
  [v51 addObjectsFromArray:v55];

  v88 = MEMORY[0x1E695DF90];
  v123[0] = v111;
  v122[0] = @"trailing";
  v122[1] = @"systemUpdates";
  v56 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_SplitStatusBarShowVPNDisconnect, @"SplitStatusBarShowVPNDisconnect", _UIInternalPreferenceUpdateBool);
  if (byte_1EA95E6C4)
  {
    v57 = v56;
  }

  else
  {
    v57 = 1;
  }

  v99 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorVPNItem];
  v58 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:"placementWithIdentifier:priority:" priority:?];
  v90 = v57;
  v97 = v58;
  if (v57)
  {
    v115 = @"trailing";
    v95 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v115 count:1];
    v93 = [v58 excludingAllPlacementsInRegions:?];
    v91 = [v93 disabledPlacement];
    v116[0] = v91;
    v89 = +[(_UIStatusBarItem *)_UIStatusBarThermalItem];
    v59 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:"placementWithIdentifier:priority:" priority:?];
    v114 = @"trailing";
    v86 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v114 count:1];
    v87 = v59;
    v85 = [v59 excludingAllPlacementsInRegions:v86];
    v84 = [v85 disabledPlacement];
    v116[1] = v84;
    v83 = +[_UIStatusBarActivityItem_Split syncStartDisplayIdentifier];
    v60 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:"placementWithIdentifier:priority:" priority:?];
    v113 = @"trailing";
    v81 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v113 count:1];
    v82 = v60;
    v80 = [v60 excludingAllPlacementsInRegions:v81];
    v61 = [v80 disabledPlacement];
    v116[2] = v61;
    v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v116 count:3];
  }

  else
  {
    v120 = @"trailing";
    v95 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v120 count:1];
    v93 = [v58 excludingAllPlacementsInRegions:?];
    v91 = [v93 disabledPlacement];
    v121[0] = v91;
    v89 = +[(_UIStatusBarItem *)_UIStatusBarVPNDisconnectItem];
    v63 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:"placementWithIdentifier:priority:" priority:?];
    v119 = @"trailing";
    v86 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v119 count:1];
    v87 = v63;
    v85 = [v63 excludingAllPlacementsInRegions:v86];
    v84 = [v85 disabledPlacement];
    v121[1] = v84;
    v83 = +[(_UIStatusBarItem *)_UIStatusBarThermalItem];
    v64 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:"placementWithIdentifier:priority:" priority:?];
    v118 = @"trailing";
    v81 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v118 count:1];
    v82 = v64;
    v80 = [v64 excludingAllPlacementsInRegions:v81];
    v61 = [v80 disabledPlacement];
    v121[2] = v61;
    v79 = +[_UIStatusBarActivityItem_Split syncStartDisplayIdentifier];
    v65 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:"placementWithIdentifier:priority:" priority:?];
    v117 = @"trailing";
    v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v117 count:1];
    v78 = v65;
    v76 = [v65 excludingAllPlacementsInRegions:v77];
    v75 = [v76 disabledPlacement];
    v121[3] = v75;
    v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v121 count:4];
  }

  v123[1] = v62;
  v122[2] = @"expandedLeading";
  v66 = [(_UIStatusBarVisualProvider_iOS *)self expandedLeadingPlacements];
  v123[2] = v66;
  v123[3] = v108;
  v122[3] = @"expandedLowerLeading";
  v122[4] = @"expandedLowerTrailing";
  v67 = v51;
  v123[4] = v51;
  v122[5] = @"expandedTrailing";
  v68 = [(_UIStatusBarVisualProvider_iOS *)self expandedTrailingPlacements];
  v123[5] = v68;
  v122[6] = @"bottomLeading";
  v69 = +[(_UIStatusBarItem *)_UIStatusBarNavigationItem];
  v70 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v69 priority:40];
  v112 = v70;
  v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v112 count:1];
  v123[6] = v71;
  v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v123 forKeys:v122 count:7];
  v73 = [v88 dictionaryWithDictionary:v72];

  if ((v90 & 1) == 0)
  {

    v62 = v79;
  }

  return v73;
}

- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(_UIStatusBarVisualProvider_Split *)self orderedDisplayItemPlacements];

  if (!v5)
  {
    v6 = [(_UIStatusBarVisualProvider_Split *)self _orderedDisplayItemPlacements];
    [(_UIStatusBarVisualProvider_Split *)self setOrderedDisplayItemPlacements:v6];
  }

  v7 = [(_UIStatusBarVisualProvider_Split *)self orderedDisplayItemPlacements];
  v8 = [v7 objectForKeyedSubscript:v4];

  return v8;
}

+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)a3
{
  if ((a3 - 1) >= 2)
  {
    v5 = *MEMORY[0x1E695F060];
    v6 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS____UIStatusBarVisualProvider_Split;
    objc_msgSendSuper2(&v7, sel_intrinsicContentSizeForOrientation_);
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (id)styleAttributesForStyle:(int64_t)a3
{
  v13.receiver = self;
  v13.super_class = _UIStatusBarVisualProvider_Split;
  v4 = [(_UIStatusBarVisualProvider_iOS *)&v13 styleAttributesForStyle:a3];
  v5 = [v4 mode];
  if (v5 != 2)
  {
    if (v5 == 1)
    {
      [(_UIStatusBarVisualProvider_Split *)self expandedIconScale];
      [v4 setIconScale:?];
      [v4 setIconSize:{-[_UIStatusBarVisualProvider_Split expandedIconSize](self, "expandedIconSize")}];
      v9 = [(_UIStatusBarVisualProvider_Split *)self expandedFont];
      [v4 setFont:v9];

      v10 = [(_UIStatusBarVisualProvider_Split *)self expandedFont];
      [v4 setEmphasizedFont:v10];

      v8 = [(_UIStatusBarVisualProvider_Split *)self expandedFont];
      goto LABEL_6;
    }

    if (v5)
    {
      goto LABEL_7;
    }
  }

  [(_UIStatusBarVisualProvider_Split *)self normalIconScale];
  [v4 setIconScale:?];
  [v4 setIconSize:{-[_UIStatusBarVisualProvider_Split normalIconSize](self, "normalIconSize")}];
  v6 = [(_UIStatusBarVisualProvider_Split *)self normalFont];
  [v4 setFont:v6];

  v7 = [(_UIStatusBarVisualProvider_Split *)self emphasizedFont];
  [v4 setEmphasizedFont:v7];

  v8 = [(_UIStatusBarVisualProvider_Split *)self smallFont];
LABEL_6:
  v11 = v8;
  [v4 setSmallFont:v8];

LABEL_7:
  [v4 setImageNamePrefixes:&unk_1EFE2D768];

  return v4;
}

- (double)condensedPointSizeForCellularType:(int64_t)a3 defaultPointSize:(double)a4 baselineOffset:(double *)a5
{
  if ((a3 - 8) < 2)
  {
    *a5 = 1.0;
    v9 = objc_opt_class();

    [v9 LTEAPlusFontSize];
  }

  else if ((a3 - 2) > 1)
  {
    *a5 = 0.666666667;
    return a4 + -1.0;
  }

  else
  {
    v6 = [objc_opt_class() shrinksSingleCharacterTypes];
    v7 = 0.0;
    if (v6)
    {
      v7 = 1.0;
    }

    return a4 - v7;
  }

  return result;
}

- (id)stringForCellularType:(int64_t)a3 condensed:(BOOL)a4
{
  v4 = @"􀛳";
  if (a3 != 9)
  {
    v4 = 0;
  }

  if (a3 == 8)
  {
    v4 = @"􀛲";
  }

  if (a4)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (id)condensedFontForCellularType:(int64_t)a3 defaultFont:(id)a4 baselineOffset:(double *)a5
{
  v8 = a4;
  [v8 pointSize];
  v10 = v9;
  [(_UIStatusBarVisualProvider_Split *)self condensedPointSizeForCellularType:a3 defaultPointSize:a5 baselineOffset:?];
  v12 = v11;
  if (a3 <= 0xD && ((1 << a3) & 0x38C0) != 0)
  {
    v13 = [v8 fontDescriptor];
    v14 = [v13 fontDescriptorWithSymbolicTraits:64];

    if (v12 == v10)
    {
      v15 = off_1E70ECC18;
      v17 = 0.0;
      v16 = v14;
      goto LABEL_6;
    }

LABEL_4:
    v15 = off_1E70ECC18;
    v16 = v14;
    v17 = v12;
LABEL_6:
    v18 = [v15 fontWithDescriptor:v16 size:v17];

    goto LABEL_7;
  }

  v18 = v8;
  if (v11 != v10)
  {
    v14 = [v8 fontDescriptor];
    goto LABEL_4;
  }

LABEL_7:

  return v18;
}

- (double)animatedTypeDisplayItemSpacingFactorForCellularType:(int64_t)a3
{
  result = 1.0;
  if ((a3 - 6) <= 7)
  {
    return dbl_18A682370[a3 - 6];
  }

  return result;
}

- (id)overriddenStyleAttributesForDisplayItemWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[(_UIStatusBarItem *)_UIStatusBarNavigationItem];

  if (v5 == v4)
  {
    v10 = +[_UIStatusBarStyleAttributes overriddenStyleAttributes];
    v11 = [(_UIStatusBarVisualProvider_Split *)self smallFont];
    goto LABEL_9;
  }

  v6 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorLocationItem];
  v7 = v6;
  if (v6 == v4)
  {

    goto LABEL_8;
  }

  v8 = +[_UIStatusBarIndicatorLocationItem prominentDisplayIdentifier];

  if (v8 == v4)
  {
LABEL_8:
    v10 = +[_UIStatusBarStyleAttributes overriddenStyleAttributes];
    v11 = [(_UIStatusBarVisualProvider_Split *)self emphasizedFont];
    goto LABEL_9;
  }

  v9 = +[(_UIStatusBarItem *)_UIStatusBarVoiceControlItem];

  if (v9 != v4)
  {
    v10 = 0;
    goto LABEL_10;
  }

  v10 = +[_UIStatusBarStyleAttributes overriddenStyleAttributes];
  [v10 setSymbolScale:1];
  v11 = [(_UIStatusBarVisualProvider_Split *)self voiceControlFont];
LABEL_9:
  v12 = v11;
  [v10 setFont:v11];

LABEL_10:

  return v10;
}

- (void)itemCreated:(id)a3
{
  v10 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setTypeStringProvider:self];
    goto LABEL_15;
  }

  v4 = [v10 identifier];
  v5 = +[(_UIStatusBarItem *)_UIStatusBarVoiceControlPillItem];

  if (v4 == v5)
  {
    v8 = v10;
    [(_UIStatusBarVisualProvider_Split *)self smallPillSize];
    [v8 setPillSize:?];
  }

  else
  {
    v6 = [v10 identifier];
    v7 = +[(_UIStatusBarItem *)_UIStatusBarBatteryItem];

    if (v6 != v7)
    {
      goto LABEL_15;
    }

    v8 = v10;
    if ((_UIInternalPreferenceUsesDefault(&dword_1ED48B520, @"SplitStatusBarBatteryPercentageEnabled", _UIInternalPreferenceUpdateBool) & 1) != 0 || byte_1ED48B524)
    {
      v9 = (_UIInternalPreferenceUsesDefault(&dword_1ED48B528, @"SplitStatusBarBatteryPercentageAlwaysEnabled", _UIInternalPreferenceUpdateBool) & 1) == 0 && byte_1ED48B52C || [(_UIStatusBarVisualProvider_Split *)self supportsCondensedBatteryPercentage];
    }

    else
    {
      v9 = 0;
    }

    [v8 setUsesCondensedPercentageDisplay:v9];
  }

LABEL_15:
}

- (id)willUpdateWithData:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UIStatusBarVisualProvider_Split;
  v4 = a3;
  v5 = [(_UIStatusBarVisualProvider_Phone *)&v7 willUpdateWithData:v4];
  [(_UIStatusBarVisualProvider_Split *)self _updateDataForBatteryCharging:v4, v7.receiver, v7.super_class];
  [(_UIStatusBarVisualProvider_Split *)self _updateDataForSystemUpdates:v4];

  return v5;
}

- (id)displayItemIdentifiersForPartWithIdentifier:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isEqual:@"batteryPartIdentifier"])
  {
    v5 = [(_UIStatusBarVisualProvider_iOS *)self expanded];
    v6 = MEMORY[0x1E695DFD8];
    if (v5)
    {
      +[_UIStatusBarBatteryItem staticIconDisplayIdentifier];
    }

    else
    {
      +[_UIStatusBarBatteryItem iconDisplayIdentifier];
    }
    v7 = ;
    v9 = [v6 setWithObject:v7];
  }

  else
  {
    if ([v4 isEqual:@"fittingLeadingPartIdentifier"])
    {
      v7 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
      if ([(_UIStatusBarVisualProvider_iOS *)self expanded])
      {
        v16[0] = @"expandedLeading";
        v8 = v16;
      }

      else
      {
        v15 = @"leading";
        v8 = &v15;
      }
    }

    else
    {
      if (![v4 isEqual:@"fittingTrailingPartIdentifier"])
      {
        v12.receiver = self;
        v12.super_class = _UIStatusBarVisualProvider_Split;
        v9 = [(_UIStatusBarVisualProvider_iOS *)&v12 displayItemIdentifiersForPartWithIdentifier:v4];
        goto LABEL_17;
      }

      v7 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
      if ([(_UIStatusBarVisualProvider_iOS *)self expanded])
      {
        v14 = @"expandedTrailing";
        v8 = &v14;
      }

      else
      {
        v13 = @"trailing";
        v8 = &v13;
      }
    }

    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    v9 = [v7 displayItemIdentifiersInRegionsWithIdentifiers:v10];
  }

LABEL_17:

  return v9;
}

- (id)_systemUpdateDelayedDataIdentifiers
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [(_UIStatusBarVisualProvider_Split *)self orderedDisplayItemPlacementsInRegionWithIdentifier:@"systemUpdates"];
  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
        v10 = [v8 identifier];
        v11 = [_UIStatusBarItem itemIdentifierForDisplayItemIdentifier:v10];
        v12 = [v9 itemWithIdentifier:v11];

        v13 = [v12 dependentEntryKeys];
        [v3 unionSet:v13];
      }

      v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  return v3;
}

- (void)_delaySystemUpdateData
{
  if ((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_SplitStatusBarShowVPNDisconnect, @"SplitStatusBarShowVPNDisconnect", _UIInternalPreferenceUpdateBool) & 1) == 0 && byte_1EA95E6C4 && ![(_UIStatusBarVisualProvider_Split *)self delayedSystemUpdateData])
  {
    [(_UIStatusBarVisualProvider_Split *)self setDelayedSystemUpdateData:1];
    v5 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    v3 = [v5 dataAggregator];
    v4 = [(_UIStatusBarVisualProvider_Split *)self _systemUpdateDelayedDataIdentifiers];
    [v3 beginDelayingUpdatesForEntryKeys:v4];
  }
}

- (void)_resumeSystemUpdateData
{
  if ((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_SplitStatusBarShowVPNDisconnect, @"SplitStatusBarShowVPNDisconnect", _UIInternalPreferenceUpdateBool) & 1) == 0 && byte_1EA95E6C4 && [(_UIStatusBarVisualProvider_Split *)self delayedSystemUpdateData])
  {
    v3 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    v4 = [v3 dataAggregator];
    v5 = [(_UIStatusBarVisualProvider_Split *)self _systemUpdateDelayedDataIdentifiers];
    [v4 endDelayingUpdatesForEntryKeys:v5];

    [(_UIStatusBarVisualProvider_Split *)self setDelayedSystemUpdateData:0];
  }
}

- (void)dealloc
{
  [(_UIStatusBarVisualProvider_Split *)self _resumeSystemUpdateData];
  v3.receiver = self;
  v3.super_class = _UIStatusBarVisualProvider_Split;
  [(_UIStatusBarVisualProvider_Split *)&v3 dealloc];
}

- (BOOL)hasCustomAnimationForDisplayItemWithIdentifier:(id)a3 removal:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v10.receiver = self;
  v10.super_class = _UIStatusBarVisualProvider_Split;
  if ([(_UIStatusBarVisualProvider_iOS *)&v10 hasCustomAnimationForDisplayItemWithIdentifier:v6 removal:v4])
  {
    v7 = 1;
  }

  else
  {
    v8 = +[_UIStatusBarBatteryItem chargingDisplayIdentifier];
    v7 = v8 == v6 || [(_UIStatusBarVisualProvider_Split *)self _shouldShowSystemUpdateForDisplayItemWithIdentifier:v6];
  }

  return v7;
}

- (id)additionAnimationForDisplayItemWithIdentifier:(id)a3 itemAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[_UIStatusBarBatteryItem chargingDisplayIdentifier];

  if (v8 == v6)
  {
    v9 = [(_UIStatusBarVisualProvider_Split *)self _additionAnimationForBatteryCharging];
  }

  else if ([(_UIStatusBarVisualProvider_Split *)self _shouldShowSystemUpdateForDisplayItemWithIdentifier:v6])
  {
    v9 = [(_UIStatusBarVisualProvider_Split *)self _systemUpdateAnimationForDisplayItemWithIdentifier:v6];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = _UIStatusBarVisualProvider_Split;
    v9 = [(_UIStatusBarVisualProvider_Phone *)&v12 additionAnimationForDisplayItemWithIdentifier:v6 itemAnimation:v7];
  }

  v10 = v9;

  return v10;
}

- (id)removalAnimationForDisplayItemWithIdentifier:(id)a3 itemAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[_UIStatusBarBatteryItem chargingDisplayIdentifier];

  if (v8 == v6)
  {
    v9 = [(_UIStatusBarVisualProvider_Split *)self _removalAnimationForBatteryCharging];
  }

  else if ([(_UIStatusBarVisualProvider_Split *)self _shouldShowSystemUpdateForDisplayItemWithIdentifier:v6])
  {
    v9 = [(_UIStatusBarVisualProvider_Split *)self _systemUpdateAnimationForDisplayItemWithIdentifier:v6];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = _UIStatusBarVisualProvider_Split;
    v9 = [(_UIStatusBarVisualProvider_Phone *)&v12 removalAnimationForDisplayItemWithIdentifier:v6 itemAnimation:v7];
  }

  v10 = v9;

  return v10;
}

- (BOOL)canFixupDisplayItemAttributes
{
  batteryChargingPlacement = self->_batteryChargingPlacement;
  if (batteryChargingPlacement)
  {
    LOBYTE(batteryChargingPlacement) = ![(_UIStatusBarDisplayItemPlacement *)batteryChargingPlacement isEnabled];
  }

  return batteryChargingPlacement;
}

- (id)regionIdentifiersForPartWithIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 isEqual:@"batteryPartIdentifier"])
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = @"trailing";
LABEL_5:
    v7 = [v5 setWithObject:v6];
    goto LABEL_19;
  }

  if ([v4 isEqual:@"clockPartIdentifier"])
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = @"leading";
    goto LABEL_5;
  }

  if ([v4 isEqual:@"leadingPartIdentifier"])
  {
    v8 = MEMORY[0x1E695DFD8];
    v21 = @"expandedLowerLeading";
    v9 = @"expandedLeading";
    v10 = @"bottomLeading";
LABEL_8:
    [v8 setWithObjects:{@"leading", v10, v9, v21, 0}];
    v7 = LABEL_18:;
    goto LABEL_19;
  }

  if ([v4 isEqual:@"trailingPartIdentifier"])
  {
    [MEMORY[0x1E695DFD8] setWithObjects:{@"trailing", @"systemUpdates", @"expandedTrailing", @"expandedLowerTrailing", 0}];
    goto LABEL_18;
  }

  if ([v4 isEqual:0x1EFB9C3D0])
  {
    v8 = MEMORY[0x1E695DFD8];
    v21 = @"bottomLeading";
    v9 = @"systemUpdates";
    v10 = @"trailing";
    goto LABEL_8;
  }

  if ([v4 isEqual:0x1EFB9C3F0])
  {
    goto LABEL_14;
  }

  if ([v4 isEqual:0x1EFB9C410])
  {
LABEL_16:
    v11 = MEMORY[0x1E695DFD8];
    v19 = 0;
    goto LABEL_17;
  }

  if ([v4 isEqual:0x1EFB9C430])
  {
    [MEMORY[0x1E695DFD8] setWithObjects:{@"expandedLowerLeading", @"expandedLowerTrailing", 0, v20, v22}];
    goto LABEL_18;
  }

  if ([v4 isEqual:@"visibleExpandedPartIdentifier"])
  {
    v14 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    v15 = [v14 currentData];
    v16 = [v15 secondaryCellularEntry];
    if ([v16 isEnabled])
    {
      v17 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
      v18 = [v17 orientation] - 1;

      if (v18 <= 1)
      {
LABEL_14:
        v11 = MEMORY[0x1E695DFD8];
        v20 = @"expandedLowerTrailing";
        v22 = 0;
        v19 = @"expandedLowerLeading";
LABEL_17:
        [v11 setWithObjects:{@"expandedLeading", @"expandedTrailing", v19, v20, v22}];
        goto LABEL_18;
      }
    }

    else
    {
    }

    goto LABEL_16;
  }

  v7 = [MEMORY[0x1E695DFD8] set];
LABEL_19:
  v12 = v7;

  return v12;
}

- (void)updateDataForService:(id)a3
{
  v10.receiver = self;
  v10.super_class = _UIStatusBarVisualProvider_Split;
  v4 = a3;
  [(_UIStatusBarVisualProvider_iOS *)&v10 updateDataForService:v4];
  v5 = [v4 cellularEntry];
  v6 = [v4 secondaryCellularEntry];

  if (v6)
  {
    -[_UIStatusBarDisplayItemPlacementGroup setEnabled:](self->_lowerWifiGroup, "setEnabled:", [v6 type] != 0);
    if (v5)
    {
      goto LABEL_7;
    }

    v7 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    v8 = [v7 currentAggregatedData];
    v5 = [v8 cellularEntry];
  }

  else
  {
    if (!v5)
    {
      return;
    }

    v7 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    v8 = [v7 currentAggregatedData];
    v6 = [v8 secondaryCellularEntry];
  }

LABEL_7:
  if ([v5 status] == 5 || (objc_msgSend(v5, "wifiCallingEnabled") & 1) != 0 || objc_msgSend(v6, "status") == 5)
  {
    v9 = 1;
  }

  else
  {
    v9 = [v6 wifiCallingEnabled];
  }

  [(_UIStatusBarDisplayItemPlacement *)self->_serviceNamePlacement setEnabled:v9];
}

- (double)airplaneTravelOffsetInProposedPartWithIdentifier:(id *)a3 animationType:(int64_t)a4
{
  v7 = [(_UIStatusBarVisualProvider_iOS *)self expanded];
  result = 20.0;
  if (v7)
  {
    v9.receiver = self;
    v9.super_class = _UIStatusBarVisualProvider_Split;
    [(_UIStatusBarVisualProvider_iOS *)&v9 airplaneTravelOffsetInProposedPartWithIdentifier:a3 animationType:a4, 20.0];
  }

  return result;
}

- (double)airplaneSpeedForAnimationType:(int64_t)a3
{
  if ([(_UIStatusBarVisualProvider_iOS *)self expanded])
  {
    v6.receiver = self;
    v6.super_class = _UIStatusBarVisualProvider_Split;
    [(_UIStatusBarVisualProvider_iOS *)&v6 airplaneSpeedForAnimationType:a3];
  }

  else
  {
    result = 60.0;
    if (a3 == 2)
    {
      return 100.0;
    }
  }

  return result;
}

- (double)airplaneShouldFadeForAnimationType:(int64_t)a3
{
  v5 = [(_UIStatusBarVisualProvider_iOS *)self expanded];
  result = 0.0;
  if (v5)
  {
    v7.receiver = self;
    v7.super_class = _UIStatusBarVisualProvider_Split;
    [(_UIStatusBarVisualProvider_iOS *)&v7 airplaneShouldFadeForAnimationType:a3, 0.0];
  }

  return result;
}

- (double)airplaneObstacleFadeOutDuration
{
  if (![(_UIStatusBarVisualProvider_iOS *)self expanded])
  {
    return 0.15;
  }

  v4.receiver = self;
  v4.super_class = _UIStatusBarVisualProvider_Split;
  [(_UIStatusBarVisualProvider_iOS *)&v4 airplaneObstacleFadeOutDuration];
  return result;
}

- (id)animationForAirplaneMode
{
  v19 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = _UIStatusBarVisualProvider_Split;
  v3 = [(_UIStatusBarVisualProvider_iOS *)&v17 animationForAirplaneMode];
  [v3 setExclusivityGroupIdentifier:@"trailing"];
  v4 = [MEMORY[0x1E695DFA8] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(_UIStatusBarVisualProvider_Split *)self orderedDisplayItemPlacementsInRegionWithIdentifier:@"systemUpdates", 0];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) identifier];
        v11 = [_UIStatusBarItem itemIdentifierForDisplayItemIdentifier:v10];
        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v7);
  }

  [v3 setDelayedItemIdentifiers:v4];

  return v3;
}

- (id)animationForProminentLocation
{
  v12.receiver = self;
  v12.super_class = _UIStatusBarVisualProvider_Split;
  v2 = [(_UIStatusBarVisualProvider_iOS *)&v12 animationForProminentLocation];
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x4010000000;
  v9[3] = "";
  v3 = *(MEMORY[0x1E695F058] + 16);
  v10 = *MEMORY[0x1E695F058];
  v11 = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65___UIStatusBarVisualProvider_Split_animationForProminentLocation__block_invoke;
  v8[3] = &unk_1E7120F58;
  v8[4] = v9;
  v4 = [_UIStatusBarAnimation animationWithBlock:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65___UIStatusBarVisualProvider_Split_animationForProminentLocation__block_invoke_4;
  v7[3] = &unk_1E711CD00;
  v7[4] = v9;
  [v4 setPrepareBlock:v7];
  [v4 setPriority:-300];
  v5 = +[_UIStatusBarTimeItem shortTimeDisplayIdentifier];
  [v2 addSubAnimation:v4 forDisplayItemWithIdentifier:v5];

  _Block_object_dispose(v9, 8);

  return v2;
}

- (void)_updateDataForBatteryCharging:(id)a3
{
  v17 = a3;
  v4 = [objc_opt_class() showsLargeBatteryChargingAnimation];
  v5 = v17;
  if (v4)
  {
    v6 = [v17 mainBatteryEntry];
    v7 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    v8 = [v7 currentAggregatedData];
    v9 = [v8 mainBatteryEntry];

    if (!v6 || !v9 || [(_UIStatusBarVisualProvider_iOS *)self expanded])
    {
      goto LABEL_14;
    }

    if (![v9 state] && objc_msgSend(v6, "state") == 1 && !-[_UIStatusBarDisplayItemPlacement isEnabled](self->_batteryChargingPlacement, "isEnabled"))
    {
      v10 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
      if ([v10 areAnimationsEnabled])
      {
        v11 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
        v12 = +[_UIStatusBarBatteryItem iconDisplayIdentifier];
        v13 = [v11 displayItemWithIdentifier:v12];
        v14 = [v13 isEnabled];

        if (v14)
        {
          [(_UIStatusBarDisplayItemPlacement *)self->_batteryChargingPlacement setEnabled:1];
LABEL_14:

          v5 = v17;
          goto LABEL_15;
        }
      }

      else
      {
      }
    }

    v15 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    v16 = [v15 areAnimationsEnabled];

    if ((v16 & 1) == 0)
    {
      [(_UIStatusBarVisualProvider_Split *)self _collapseBattery];
    }

    goto LABEL_14;
  }

LABEL_15:
}

- (CGAffineTransform)_collapseChargingBoltTransformForDisplayItem:(SEL)a3
{
  v5 = [a4 view];
  if ([v5 _shouldReverseLayoutDirection])
  {
    v6 = -12.0;
  }

  else
  {
    v6 = 12.0;
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  CGAffineTransformMakeTranslation(retstr, v6, 0.666666667);
  v7 = *&retstr->c;
  *&v10.a = *&retstr->a;
  *&v10.c = v7;
  *&v10.tx = *&retstr->tx;
  result = CGAffineTransformScale(&v11, &v10, 0.1, 0.1);
  v9 = *&v11.c;
  *&retstr->a = *&v11.a;
  *&retstr->c = v9;
  *&retstr->tx = *&v11.tx;
  return result;
}

- (CGAffineTransform)_expandedChargingBoltTransformForDisplayItem:(SEL)a3
{
  v5 = [a4 view];
  if ([v5 _shouldReverseLayoutDirection])
  {
    v6 = 7.0;
  }

  else
  {
    v6 = -7.0;
  }

  return CGAffineTransformMakeTranslation(retstr, v6, -1.66666667);
}

- (id)_additionAnimationForBatteryCharging
{
  v30 = *MEMORY[0x1E69E9840];
  if ([(_UIStatusBarVisualProvider_iOS *)self expanded])
  {
    v20 = 0;
  }

  else
  {
    [(_UIStatusBarVisualProvider_Split *)self _stopBatteryCollapseTimer];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __72___UIStatusBarVisualProvider_Split__additionAnimationForBatteryCharging__block_invoke;
    v28[3] = &unk_1E711F828;
    v18 = self;
    v28[4] = self;
    v20 = [_UIStatusBarAnimation animationWithBlock:v28];
    [v20 setPriority:200];
    [v20 setExclusivityGroupIdentifier:@"trailing"];
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x3010000000;
    v27[4] = 0;
    v27[5] = 0;
    v27[3] = "";
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __72___UIStatusBarVisualProvider_Split__additionAnimationForBatteryCharging__block_invoke_6;
    v26[3] = &unk_1E7120F58;
    v26[4] = v27;
    v3 = [_UIStatusBarAnimation animationWithBlock:v26];
    [v3 setPriority:200];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __72___UIStatusBarVisualProvider_Split__additionAnimationForBatteryCharging__block_invoke_8;
    v25[3] = &unk_1E711CD00;
    v25[4] = v27;
    [v3 setPrepareBlock:v25];
    v4 = +[_UIStatusBarBatteryItem iconDisplayIdentifier];
    [v20 addSubAnimation:v3 forDisplayItemWithIdentifier:v4];
    v17 = v3;

    v19 = [_UIStatusBarAnimation animationWithBlock:&__block_literal_global_526];
    [v19 setPriority:150];
    [v19 setPrepareBlock:&__block_literal_global_130_1];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = [(_UIStatusBarVisualProvider_Split *)v18 orderedDisplayItemPlacementsInRegionWithIdentifier:@"trailing"];
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v6)
    {
      v7 = *v22;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [*(*(&v21 + 1) + 8 * i) identifier];
          v10 = [_UIStatusBarItem itemIdentifierForDisplayItemIdentifier:v9];
          v11 = +[(_UIStatusBarItem *)_UIStatusBarBatteryItem];
          v12 = [v10 isEqual:v11];

          if ((v12 & 1) == 0)
          {
            [v20 addSubAnimation:v19 forDisplayItemWithIdentifier:v9];
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v6);
    }

    [v20 setDelaysDependentItems:1];
    v13 = MEMORY[0x1E695DFD8];
    v14 = [(_UIStatusBarVisualProvider_Split *)v18 orderedDisplayItemPlacementsInRegionWithIdentifier:@"systemUpdates"];
    v15 = [v13 setWithArray:v14];
    [v20 setDelayedDisplayItemPlacements:v15];

    _Block_object_dispose(v27, 8);
  }

  return v20;
}

- (id)_removalAnimationForBatteryCharging
{
  v36 = *MEMORY[0x1E69E9840];
  if ([(_UIStatusBarVisualProvider_iOS *)self expanded])
  {
    v22 = 0;
  }

  else
  {
    [(_UIStatusBarVisualProvider_Split *)self _stopBatteryCollapseTimer];
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x4010000000;
    v32[3] = "";
    v3 = *(MEMORY[0x1E695F058] + 16);
    v33 = *MEMORY[0x1E695F058];
    v34 = v3;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __71___UIStatusBarVisualProvider_Split__removalAnimationForBatteryCharging__block_invoke;
    v31[3] = &unk_1E7120EA0;
    v31[4] = self;
    v31[5] = v32;
    v20 = self;
    v4 = [_UIStatusBarAnimation animationWithBlock:v31];
    [v4 setPriority:200];
    [v4 setExclusivityGroupIdentifier:@"trailing"];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __71___UIStatusBarVisualProvider_Split__removalAnimationForBatteryCharging__block_invoke_5;
    v30[3] = &unk_1E711CD00;
    v30[4] = v32;
    [v4 setPrepareBlock:v30];
    v22 = v4;
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x3010000000;
    v29[4] = 0;
    v29[5] = 0;
    v29[3] = "";
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __71___UIStatusBarVisualProvider_Split__removalAnimationForBatteryCharging__block_invoke_6;
    v28[3] = &unk_1E7120EA0;
    v28[5] = v29;
    v28[4] = self;
    v5 = [_UIStatusBarAnimation animationWithBlock:v28];
    [v5 setPriority:200];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __71___UIStatusBarVisualProvider_Split__removalAnimationForBatteryCharging__block_invoke_9;
    v27[3] = &unk_1E711CD00;
    v27[4] = v29;
    [v5 setPrepareBlock:v27];
    v6 = +[_UIStatusBarBatteryItem iconDisplayIdentifier];
    [v4 addSubAnimation:v5 forDisplayItemWithIdentifier:v6];
    v19 = v5;

    v21 = [_UIStatusBarAnimation animationWithBlock:&__block_literal_global_134_0];
    [v21 setPriority:150];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = [(_UIStatusBarVisualProvider_Split *)v20 orderedDisplayItemPlacementsInRegionWithIdentifier:@"trailing"];
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v35 count:16];
    if (v8)
    {
      v9 = *v24;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = [*(*(&v23 + 1) + 8 * i) identifier];
          v12 = [_UIStatusBarItem itemIdentifierForDisplayItemIdentifier:v11];
          v13 = +[(_UIStatusBarItem *)_UIStatusBarBatteryItem];
          v14 = [v12 isEqual:v13];

          if ((v14 & 1) == 0)
          {
            [v4 addSubAnimation:v21 forDisplayItemWithIdentifier:v11];
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v23 objects:v35 count:16];
      }

      while (v8);
    }

    [v4 setDelaysDependentItems:1];
    v15 = MEMORY[0x1E695DFD8];
    v16 = [(_UIStatusBarVisualProvider_Split *)v20 orderedDisplayItemPlacementsInRegionWithIdentifier:@"systemUpdates"];
    v17 = [v15 setWithArray:v16];
    [v4 setDelayedDisplayItemPlacements:v17];

    _Block_object_dispose(v29, 8);
    _Block_object_dispose(v32, 8);
  }

  return v22;
}

- (void)_stopBatteryCollapseTimer
{
  batteryExpansionTimer = self->_batteryExpansionTimer;
  if (batteryExpansionTimer)
  {
    [(NSTimer *)batteryExpansionTimer invalidate];

    [(_UIStatusBarVisualProvider_Split *)self setBatteryExpansionTimer:0];
  }
}

- (void)_collapseBattery
{
  if ([(_UIStatusBarDisplayItemPlacement *)self->_batteryChargingPlacement isEnabled])
  {
    [(_UIStatusBarDisplayItemPlacement *)self->_batteryChargingPlacement setEnabled:0];
    v3 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    [v3 updateWithAnimations:MEMORY[0x1E695E0F0]];

    v4 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    v5 = [v4 areAnimationsEnabled];

    if ((v5 & 1) == 0)
    {

      [(_UIStatusBarVisualProvider_Split *)self _resetBattery];
    }
  }
}

- (void)_resetBattery
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  v4 = +[_UIStatusBarBatteryItem chargingDisplayIdentifier];
  v5 = [v3 displayItemWithIdentifier:v4];

  v6 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  v7 = +[_UIStatusBarBatteryItem iconDisplayIdentifier];
  v8 = [v6 displayItemWithIdentifier:v7];

  v22 = *(MEMORY[0x1E695EFD0] + 16);
  v29 = *MEMORY[0x1E695EFD0];
  v23 = v29;
  v30 = v22;
  v31 = *(MEMORY[0x1E695EFD0] + 32);
  v21 = v31;
  v24 = v5;
  [v5 setTransform:&v29];
  v29 = v23;
  v30 = v22;
  v31 = v21;
  [v8 setTransform:&v29];
  v9 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  v10 = +[(_UIStatusBarItem *)_UIStatusBarBatteryItem];
  v11 = [v9 itemWithIdentifier:v10];

  [v11 setHighlighted:0];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = [(_UIStatusBarVisualProvider_Split *)self orderedDisplayItemPlacementsInRegionWithIdentifier:@"trailing"];
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      v16 = 0;
      do
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v25 + 1) + 8 * v16);
        v18 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
        v19 = [v17 identifier];
        v20 = [v18 displayItemWithIdentifier:v19];

        [v20 setAlpha:1.0];
        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v14);
  }
}

- (void)_updateDataForSystemUpdates:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v33 = a3;
  v4 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  if (![v4 areAnimationsEnabled])
  {

    goto LABEL_29;
  }

  v5 = [(_UIStatusBarVisualProvider_iOS *)self expanded];

  if (v5)
  {
LABEL_29:
    [(_UIStatusBarVisualProvider_Split *)self _disableSystemUpdates];
    goto LABEL_30;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = [(_UIStatusBarVisualProvider_Split *)self orderedDisplayItemPlacementsInRegionWithIdentifier:@"systemUpdates"];
  v30 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v30)
  {
    v6 = self;
    v29 = *v39;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v39 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v38 + 1) + 8 * i);
        v9 = [(_UIStatusBarVisualProvider_iOS *)v6 statusBar];
        v10 = [v8 identifier];
        v11 = [_UIStatusBarItem itemIdentifierForDisplayItemIdentifier:v10];
        v12 = [v9 itemWithIdentifier:v11];

        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v13 = [v12 dependentEntryKeys];
        v14 = [v13 countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v35;
          v31 = v12;
          v32 = i;
          while (2)
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v35 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v34 + 1) + 8 * j);
              v19 = [v33 valueForKey:v18];
              if (!v19)
              {
                goto LABEL_24;
              }

              v20 = v19;
              v21 = v6;
              v22 = [(_UIStatusBarVisualProvider_iOS *)v6 statusBar];
              v23 = [v22 currentAggregatedData];
              v24 = [v23 valueForKey:v18];

              v25 = [v8 identifier];
              v26 = +[(_UIStatusBarItem *)_UIStatusBarVPNDisconnectItem];

              v27 = [v20 isEnabled];
              if (v25 == v26)
              {
                if ((v27 & 1) != 0 || ([v24 isEnabled] & 1) == 0)
                {
LABEL_23:

                  v6 = v21;
LABEL_24:

                  v12 = v31;
                  i = v32;
                  goto LABEL_25;
                }
              }

              else if (!v27 || [v24 isEnabled])
              {
                goto LABEL_23;
              }

              v6 = v21;
            }

            v15 = [v13 countByEnumeratingWithState:&v34 objects:v42 count:16];
            v12 = v31;
            i = v32;
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        [v8 setEnabled:1];
LABEL_25:
      }

      v30 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v30);
  }

LABEL_30:
}

- (BOOL)_shouldShowSystemUpdateForDisplayItemWithIdentifier:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_UIStatusBarVisualProvider_iOS *)self expanded])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [(_UIStatusBarVisualProvider_Split *)self orderedDisplayItemPlacementsInRegionWithIdentifier:@"systemUpdates", 0];
    v5 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v6);
          }

          v9 = [*(*(&v11 + 1) + 8 * i) identifier];

          if (v9 == v4)
          {
            LOBYTE(v5) = 1;
            goto LABEL_13;
          }
        }

        v5 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v5;
}

- (id)_systemUpdateAnimationForDisplayItemWithIdentifier:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  v6 = [v5 _shouldReverseLayoutDirection];

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __87___UIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke;
  v39[3] = &unk_1E7120EC8;
  v39[4] = self;
  v41 = v6;
  v7 = v4;
  v40 = v7;
  v8 = [_UIStatusBarAnimation animationWithBlock:v39];
  [v8 setPriority:300];
  [v8 setExclusivityGroupIdentifier:@"trailing"];
  [v8 setPrepareBlock:&__block_literal_global_136_0];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __87___UIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_9;
  v37[3] = &unk_1E711F828;
  v9 = v7;
  v38 = v9;
  v10 = [_UIStatusBarAnimation animationWithBlock:v37];
  [v10 setPriority:300];
  [v10 setIdentifier:@"systemUpdateItem"];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __87___UIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_11;
  v35[3] = &unk_1E7120EF0;
  v26 = v9;
  v36 = v26;
  [v10 setPrepareBlock:v35];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = [(_UIStatusBarVisualProvider_Split *)self orderedDisplayItemPlacementsInRegionWithIdentifier:@"trailing"];
  v12 = [v11 countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v32;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v31 + 1) + 8 * i) identifier];
        [v8 addSubAnimation:v10 forDisplayItemWithIdentifier:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v13);
  }

  v17 = [MEMORY[0x1E695DFA8] set];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v18 = [(_UIStatusBarVisualProvider_Split *)self orderedDisplayItemPlacementsInRegionWithIdentifier:@"systemUpdates"];
  v19 = [v18 countByEnumeratingWithState:&v27 objects:v42 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v27 + 1) + 8 * j) identifier];
        v24 = [_UIStatusBarItem itemIdentifierForDisplayItemIdentifier:v23];
        [v17 addObject:v24];
      }

      v20 = [v18 countByEnumeratingWithState:&v27 objects:v42 count:16];
    }

    while (v20);
  }

  [v8 setDelayedItemIdentifiers:v17];
  [v8 setDelaysDependentItems:1];

  return v8;
}

- (void)_disableSystemUpdates
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(_UIStatusBarVisualProvider_Split *)self orderedDisplayItemPlacementsInRegionWithIdentifier:@"systemUpdates", 0];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) setEnabled:0];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (BOOL)_updateLowerRegionsWithData:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v5 = [v4 secondaryCellularEntry];
  if (v5)
  {
    v6 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    if ([v5 isEnabled])
    {
      v7 = ([v6 orientation] - 1) < 2;
    }

    else
    {
      v7 = 0;
    }

    v8 = [(_UIStatusBarVisualProvider_Split *)self regionIdentifiersForPartWithIdentifier:0x1EFB9C430];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __64___UIStatusBarVisualProvider_Split__updateLowerRegionsWithData___block_invoke;
    v12[3] = &unk_1E7120AE8;
    v9 = v6;
    v15 = v7;
    v13 = v9;
    v14 = &v16;
    [v8 enumerateObjectsUsingBlock:v12];

    [(NSLayoutConstraint *)self->_expandedLeadingLowerTopConstraint setActive:v7];
  }

  v10 = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v10;
}

- (void)_updateExpandedTrailingRegion
{
  if ([(_UIStatusBarVisualProvider_iOS *)self expanded])
  {
    v3 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    v4 = UIApp;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __65___UIStatusBarVisualProvider_Split__updateExpandedTrailingRegion__block_invoke;
    v6[3] = &unk_1E70F35B8;
    v7 = v3;
    v8 = self;
    v5 = v3;
    [v4 _performBlockAfterCATransactionCommits:v6];
  }
}

- (void)setExpanded:(BOOL)a3
{
  v3 = a3;
  if ([(_UIStatusBarVisualProvider_iOS *)self expanded]!= a3)
  {
    [(_UIStatusBarVisualProvider_Split *)self _stopBatteryCollapseTimer];
    if ([(_UIStatusBarVisualProvider_iOS *)self expanded])
    {
      v5 = [(_UIStatusBarVisualProvider_Phone *)self pillRegionCoordinator];
      v6 = [v5 pillIconPlacement];
      [v6 setEnabled:1];

      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __48___UIStatusBarVisualProvider_Split_setExpanded___block_invoke;
      v9[3] = &unk_1E70F3590;
      v9[4] = self;
      [UIView performWithoutAnimation:v9];
    }

    v7 = [(_UIStatusBarVisualProvider_Phone *)self pillRegionCoordinator];
    [v7 updatePill];

    v8.receiver = self;
    v8.super_class = _UIStatusBarVisualProvider_Split;
    [(_UIStatusBarVisualProvider_iOS *)&v8 setExpanded:v3];
  }
}

- (id)defaultAnimationForDisplayItemWithIdentifier:(id)a3
{
  v9.receiver = self;
  v9.super_class = _UIStatusBarVisualProvider_Split;
  v4 = [(_UIStatusBarVisualProvider_iOS *)&v9 defaultAnimationForDisplayItemWithIdentifier:a3];
  v5 = MEMORY[0x1E695DFD8];
  v6 = [(_UIStatusBarVisualProvider_Split *)self orderedDisplayItemPlacementsInRegionWithIdentifier:@"systemUpdates"];
  v7 = [v5 setWithArray:v6];
  [v4 setDelayedDisplayItemPlacements:v7];

  return v4;
}

@end