@interface STUIStatusBarVisualProvider_Split
+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)orientation;
+ (Class)visualProviderSubclassForScreen:(id)screen visualProviderInfo:(id)info;
- (BOOL)_updateLowerRegionsWithData:(id)data;
- (BOOL)canFixupDisplayItemAttributes;
- (BOOL)hasCustomAnimationForDisplayItemWithIdentifier:(id)identifier removal:(BOOL)removal;
- (CGAffineTransform)_collapseChargingBoltTransformForDisplayItem:(void *)item;
- (CGSize)smallPillSize;
- (NSDirectionalEdgeInsets)expandedEdgeInsets;
- (UIFont)emphasizedFont;
- (UIFont)expandedFont;
- (UIFont)normalFont;
- (UIFont)smallFont;
- (UIFont)systemUpdateFont;
- (UIFont)voiceControlFont;
- (double)airplaneObstacleFadeOutDuration;
- (double)airplaneShouldFadeForAnimationType:(int64_t)type;
- (double)airplaneSpeedForAnimationType:(int64_t)type;
- (double)airplaneTravelOffsetInProposedPartWithIdentifier:(id *)identifier animationType:(int64_t)type;
- (double)animatedTypeDisplayItemSpacingFactorForCellularType:(int64_t)type;
- (double)condensedPointSizeForCellularType:(int64_t)type defaultPointSize:(double)size baselineOffset:(double *)offset;
- (double)cornerRadius;
- (id)_controlCenterGrabberAnimation;
- (id)_orderedDisplayItemPlacements;
- (id)_systemUpdateAnimationForDisplayItemWithIdentifier:(void *)identifier;
- (id)additionAnimationForDisplayItemWithIdentifier:(id)identifier itemAnimation:(id)animation;
- (id)animationForAirplaneMode;
- (id)animationForProminentLocation;
- (id)condensedFontForCellularType:(int64_t)type defaultFont:(id)font baselineOffset:(double *)offset;
- (id)defaultAnimationForDisplayItemWithIdentifier:(id)identifier;
- (id)displayItemIdentifiersForPartWithIdentifier:(id)identifier;
- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)identifier;
- (id)overriddenStyleAttributesForDisplayItemWithIdentifier:(id)identifier;
- (id)regionIdentifiersForBackgroundLumaView:(id)view;
- (id)regionIdentifiersForPartWithIdentifier:(id)identifier;
- (id)removalAnimationForDisplayItemWithIdentifier:(id)identifier itemAnimation:(id)animation;
- (id)stringForCellularType:(int64_t)type condensed:(BOOL)condensed;
- (id)styleAttributesForStyle:(int64_t)style;
- (id)willUpdateWithData:(id)data;
- (int64_t)expandedIconSize;
- (int64_t)normalIconSize;
- (uint64_t)_shouldShowSystemUpdateForDisplayItemWithIdentifier:(void *)identifier;
- (void)_collapseBattery;
- (void)_disableSystemUpdates;
- (void)_resetBattery;
- (void)_resumeSystemUpdateData;
- (void)_setupExpandedRegionsInContainerView:(id)view sensorHeight:(double)height constraints:(id *)constraints regions:(id *)regions;
- (void)_updateExpandedConstraintsForAvoidanceFrame:(CGRect)frame;
- (void)dealloc;
- (void)itemCreated:(id)created;
- (void)setExpanded:(BOOL)expanded;
- (void)statusBarRegionsUpdated;
- (void)updateDataForService:(id)service;
@end

@implementation STUIStatusBarVisualProvider_Split

- (UIFont)normalFont
{
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v3 = qword_280C1E7D0;
  if (qword_280C1E7D0)
  {
    v4 = _MergedGlobals_10 == IsBoldTextEnabled;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    _MergedGlobals_10 = IsBoldTextEnabled;
    v5 = MEMORY[0x277D74300];
    [objc_opt_class() baseFontSize];
    v6 = [v5 systemFontOfSize:? weight:?];
    v7 = qword_280C1E7D0;
    qword_280C1E7D0 = v6;

    v3 = qword_280C1E7D0;
  }

  return v3;
}

- (UIFont)emphasizedFont
{
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v3 = unk_280C1E7E0;
  if (unk_280C1E7E0)
  {
    v4 = byte_280C1E7C2 == IsBoldTextEnabled;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    byte_280C1E7C2 = IsBoldTextEnabled;
    v5 = MEMORY[0x277D74300];
    [objc_opt_class() baseFontSize];
    v7 = [v5 systemFontOfSize:v6 + 2.0 weight:*MEMORY[0x277D74420]];
    v8 = unk_280C1E7E0;
    unk_280C1E7E0 = v7;

    v3 = unk_280C1E7E0;
  }

  return v3;
}

- (UIFont)systemUpdateFont
{
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v3 = unk_280C1E7F8;
  if (unk_280C1E7F8)
  {
    v4 = byte_280C1E7C5 == IsBoldTextEnabled;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    byte_280C1E7C5 = IsBoldTextEnabled;
    v5 = MEMORY[0x277D74300];
    [objc_opt_class() baseFontSize];
    v7 = [v5 systemFontOfSize:v6 + 2.0 weight:*MEMORY[0x277D74410]];
    v8 = unk_280C1E7F8;
    unk_280C1E7F8 = v7;

    v3 = unk_280C1E7F8;
  }

  return v3;
}

- (UIFont)expandedFont
{
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v3 = unk_280C1E7D8;
  if (unk_280C1E7D8)
  {
    v4 = byte_280C1E7C1 == IsBoldTextEnabled;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    byte_280C1E7C1 = IsBoldTextEnabled;
    v5 = MEMORY[0x277D74300];
    [objc_opt_class() expandedFontSize];
    v6 = [v5 systemFontOfSize:? weight:?];
    v7 = unk_280C1E7D8;
    unk_280C1E7D8 = v6;

    v3 = unk_280C1E7D8;
  }

  return v3;
}

- (id)_orderedDisplayItemPlacements
{
  v218[3] = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v3 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorRingerSilenceItem];
  v167 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v3 priority:996];

  v4 = +[STUIStatusBarIndicatorQuietModeItem emphasizedQuietModeIdentifier];
  v5 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v4 priority:997];

  v6 = [STUIStatusBarIndicatorLocationItem groupWithPriority:1000];
  v7 = +[(STUIStatusBarCellularItem *)STUIStatusBarCellularCondensedItem];
  v8 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v7 priority:1010];
  prominentPlacement = [v6 prominentPlacement];
  v218[0] = prominentPlacement;
  regularPlacement = [v6 regularPlacement];
  v218[1] = regularPlacement;
  v218[2] = v5;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v218 count:3];
  v12 = [v8 excludingPlacements:v11];
  [(STUIStatusBarVisualProvider_Split *)self setServiceNamePlacement:v12];

  v13 = +[STUIStatusBarCellularCondensedItem dualNameDisplayIdentifier];
  v14 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v13 priority:1011];
  prominentPlacement2 = [v6 prominentPlacement];
  v217[0] = prominentPlacement2;
  regularPlacement2 = [v6 regularPlacement];
  v217[1] = regularPlacement2;
  v217[2] = v5;
  serviceNamePlacement = [(STUIStatusBarVisualProvider_Split *)self serviceNamePlacement];
  v217[3] = serviceNamePlacement;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v217 count:4];
  v19 = [v14 excludingPlacements:v18];
  [(STUIStatusBarVisualProvider_Split *)self setDualServiceNamePlacement:v19];

  v20 = +[STUIStatusBarTimeItem shortTimeDisplayIdentifier];
  v21 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v20 priority:1012];
  serviceNamePlacement2 = [(STUIStatusBarVisualProvider_Split *)self serviceNamePlacement];
  v216[0] = serviceNamePlacement2;
  dualServiceNamePlacement = [(STUIStatusBarVisualProvider_Split *)self dualServiceNamePlacement];
  v216[1] = dualServiceNamePlacement;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v216 count:2];
  v25 = [v21 excludingPlacements:v24];

  v26 = +[(STUIStatusBarItem *)STUIStatusBarVoiceControlPillItem];
  v27 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v26 priority:1014];
  prominentPlacement3 = [v6 prominentPlacement];
  v215[0] = prominentPlacement3;
  v178 = v6;
  selfCopy = self;
  regularPlacement3 = [v6 regularPlacement];
  v215[1] = regularPlacement3;
  v215[2] = v5;
  v179 = v5;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v215 count:3];
  v31 = [v27 excludingPlacements:v30];
  [(STUIStatusBarVisualProvider_Split *)self setVoiceControlPillPlacement:v31];

  v177 = v25;
  v214[0] = v25;
  serviceNamePlacement3 = [(STUIStatusBarVisualProvider_Split *)self serviceNamePlacement];
  v214[1] = serviceNamePlacement3;
  dualServiceNamePlacement2 = [(STUIStatusBarVisualProvider_Split *)self dualServiceNamePlacement];
  v214[2] = dualServiceNamePlacement2;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v214 count:3];
  [array addObjectsFromArray:v34];

  if ([objc_opt_class() supportsDisplayingRingerStatus])
  {
    [array addObject:v167];
    v213 = v167;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v213 count:1];
    v36 = [v35 arrayByAddingObjectsFromArray:MEMORY[0x277CBEBF8]];
  }

  else
  {
    v36 = MEMORY[0x277CBEBF8];
  }

  v37 = [v36 arrayByAddingObject:v5];
  v166 = v36;
  v182 = [v5 excludingPlacements:v36];
  v211 = v25;
  v175 = [MEMORY[0x277CBEA60] arrayWithObjects:&v211 count:1];
  v173 = [v182 requiringAllPlacements:v175];
  v212[0] = v173;
  regularPlacement4 = [v6 regularPlacement];
  v38 = [regularPlacement4 excludingPlacements:v37];
  v210 = v25;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v210 count:1];
  v40 = [v38 requiringAllPlacements:v39];
  v212[1] = v40;
  prominentPlacement4 = [v6 prominentPlacement];
  v165 = v37;
  v42 = [prominentPlacement4 excludingPlacements:v37];
  v209 = v177;
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v209 count:1];
  v44 = [v42 requiringAllPlacements:v43];
  v212[2] = v44;
  voiceControlPillPlacement = [(STUIStatusBarVisualProvider_Split *)selfCopy voiceControlPillPlacement];
  v212[3] = voiceControlPillPlacement;
  v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v212 count:4];
  [array addObjectsFromArray:v46];

  array2 = [MEMORY[0x277CBEB18] array];
  v47 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorSatelliteItem];
  v48 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v47 priority:1101];

  v49 = +[(STUIStatusBarCellularItem *)STUIStatusBarCellularCondensedItem];
  v50 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v49 priority:1104];

  v51 = +[STUIStatusBarCellularCondensedItem dualSignalStrengthDisplayIdentifier];
  v52 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v51 priority:1105];
  v208 = v50;
  v53 = [MEMORY[0x277CBEA60] arrayWithObjects:&v208 count:1];
  v54 = [v52 excludingPlacements:v53];

  v55 = +[(STUIStatusBarCellularItem *)STUIStatusBarCellularCondensedItem];
  v56 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v55 priority:1100];

  v57 = +[STUIStatusBarCellularCondensedItem sosSignalStrengthDisplayIdentifier];
  v58 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v57 priority:1109];
  v207[0] = v50;
  v207[1] = v54;
  v207[2] = v56;
  v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v207 count:3];
  v176 = [v58 excludingPlacements:v59];

  v60 = +[(STUIStatusBarCellularItem *)STUIStatusBarCellularCondensedItem];
  v61 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v60 priority:1106];
  v206 = v50;
  v62 = [MEMORY[0x277CBEA60] arrayWithObjects:&v206 count:1];
  v174 = [v61 excludingPlacements:v62];

  if ([(STUIStatusBarVisualProvider_Split *)selfCopy supportsAnimatedCellularNetworkType])
  {
    v63 = +[STUIStatusBarCellularCondensedItem animatedTypeDisplayIdentifier];
    v64 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v63 priority:1102];
    v205 = v48;
    v65 = &v205;
  }

  else
  {
    v63 = +[(STUIStatusBarCellularItem *)STUIStatusBarCellularCondensedItem];
    v64 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v63 priority:1102];
    v204 = v48;
    v65 = &v204;
  }

  v66 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:1];
  v67 = [v64 excludingPlacements:v66];

  v171 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorAirplaneModeItem];
  v168 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v171 priority:1200];
  v202[0] = v50;
  v202[1] = v54;
  v202[2] = v176;
  v202[3] = v174;
  v202[4] = v56;
  v202[5] = v67;
  v158 = [MEMORY[0x277CBEA60] arrayWithObjects:v202 count:6];
  v156 = [v168 excludingPlacements:v158];
  v203[0] = v156;
  v162 = v54;
  v163 = v50;
  v203[1] = v50;
  v203[2] = v54;
  v203[3] = v176;
  v203[4] = v174;
  v161 = v56;
  v203[5] = v56;
  v154 = +[STUIStatusBarWifiItem signalStrengthDisplayIdentifier];
  v68 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v154 priority:1107];
  v201[0] = v67;
  v201[1] = v48;
  [MEMORY[0x277CBEA60] arrayWithObjects:v201 count:2];
  v70 = v69 = v48;
  v71 = [v68 excludingPlacements:v70];
  v203[6] = v71;
  v203[7] = v67;
  v72 = +[STUIStatusBarWifiItem iconDisplayIdentifier];
  v73 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v72 priority:1103];
  v160 = v67;
  v200[0] = v67;
  v200[1] = v69;
  v74 = [MEMORY[0x277CBEA60] arrayWithObjects:v200 count:2];
  v75 = [v73 excludingPlacements:v74];
  v203[8] = v75;
  v164 = v69;
  v203[9] = v69;
  v76 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorLiquidDetectionItem];
  v77 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v76 priority:1108];
  v203[10] = v77;
  v78 = [MEMORY[0x277CBEA60] arrayWithObjects:v203 count:11];
  [array2 addObjectsFromArray:v78];

  if ([objc_opt_class() showsLargeBatteryChargingAnimation])
  {
    v79 = +[STUIStatusBarBatteryItem iconDisplayIdentifier];
    v80 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v79 priority:1111];
    [array2 addObject:v80];

    v81 = +[STUIStatusBarBatteryItem chargingDisplayIdentifier];
    v82 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v81 priority:1300];
    v83 = [array2 subarrayWithRange:{0, objc_msgSend(array2, "count") - 1}];
    v84 = [v82 excludingPlacements:v83];
    disabledPlacement = [v84 disabledPlacement];
    [(STUIStatusBarVisualProvider_Split *)selfCopy setBatteryChargingPlacement:disabledPlacement];

    batteryChargingPlacement = [(STUIStatusBarVisualProvider_Split *)selfCopy batteryChargingPlacement];
    [array2 addObject:batteryChargingPlacement];
  }

  else
  {
    batteryChargingPlacement = +[STUIStatusBarBatteryItem staticIconDisplayIdentifier];
    v87 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:batteryChargingPlacement priority:1111];
    [array2 addObject:v87];
  }

  v88 = objc_opt_class();
  v89 = [STUIStatusBarDisplayItemPlacementNetworkGroup groupWithHighPriority:2500 lowPriority:2200 cellularItemClass:v88 wifiItemClass:objc_opt_class() includeCellularName:1];
  wifiGroup = [v89 wifiGroup];
  [(STUIStatusBarVisualProvider_Split *)selfCopy setLowerWifiGroup:wifiGroup];

  array3 = [MEMORY[0x277CBEB18] array];
  v92 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorAirplaneModeItem];
  v93 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v92 priority:5000];
  expandedCellularPlacementsAffectedByAirplaneMode = [(STUIStatusBarVisualProvider_iOS *)selfCopy expandedCellularPlacementsAffectedByAirplaneMode];
  cellularGroup = [v89 cellularGroup];
  placementsAffectedByAirplaneMode = [cellularGroup placementsAffectedByAirplaneMode];
  v97 = [expandedCellularPlacementsAffectedByAirplaneMode arrayByAddingObjectsFromArray:placementsAffectedByAirplaneMode];
  v98 = [v93 excludingPlacements:v97];
  [array3 addObject:v98];

  v159 = v89;
  placements = [v89 placements];
  v172 = array3;
  [array3 addObjectsFromArray:placements];

  array4 = [MEMORY[0x277CBEB18] array];
  v101 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorLocationItem];
  v102 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v101 priority:2450];
  [array4 addObject:v102];

  [(STUIStatusBarVisualProvider_iOS *)selfCopy bluetoothPaddingInset];
  v103 = [STUIStatusBarDisplayItemPlacementIndicatorsGroup groupWithHighPriority:2400 lowPriority:200 bluetoothPaddingInset:?];
  placements2 = [v103 placements];
  v169 = array4;
  [array4 addObjectsFromArray:placements2];

  v105 = +[(STUIStatusBarItem *)STUIStatusBarControlCenterItem];
  v106 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v105 priority:1996];
  v199 = @"trailing";
  v107 = [MEMORY[0x277CBEA60] arrayWithObjects:&v199 count:1];
  v108 = [v106 excludingAllPlacementsInRegions:v107];
  disabledPlacement2 = [v108 disabledPlacement];

  v144 = MEMORY[0x277CBEB38];
  v197[0] = @"leading";
  v197[1] = @"trailing";
  v198[0] = array;
  v198[1] = array2;
  v197[2] = @"systemUpdates";
  v155 = +[STUIStatusBarSettingsDomain rootSettings];
  visualProviderSettings = [v155 visualProviderSettings];
  LODWORD(v107) = [visualProviderSettings showVPNDisconnect];
  v152 = +[(STUIStatusBarItem *)STUIStatusBarVPNItem];
  v110 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:"placementWithIdentifier:priority:" priority:?];
  v147 = v107;
  v151 = v110;
  if (v107)
  {
    v195 = @"trailing";
    v150 = [MEMORY[0x277CBEA60] arrayWithObjects:&v195 count:1];
    v149 = [v110 excludingAllPlacementsInRegions:?];
    disabledPlacement3 = [v149 disabledPlacement];
    v196[0] = disabledPlacement3;
    v146 = +[(STUIStatusBarItem *)STUIStatusBarVPNDisconnectItem];
    v111 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:"placementWithIdentifier:priority:" priority:?];
    v194 = @"trailing";
    [MEMORY[0x277CBEA60] arrayWithObjects:&v194 count:1];
    v143 = v145 = v111;
    v142 = [v111 excludingAllPlacementsInRegions:?];
    disabledPlacement4 = [v142 disabledPlacement];
    v196[1] = disabledPlacement4;
    v140 = +[(STUIStatusBarItem *)STUIStatusBarThermalItem];
    v112 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:"placementWithIdentifier:priority:" priority:?];
    v193 = @"trailing";
    v138 = [MEMORY[0x277CBEA60] arrayWithObjects:&v193 count:1];
    v139 = v112;
    v137 = [v112 excludingAllPlacementsInRegions:v138];
    disabledPlacement5 = [v137 disabledPlacement];
    v196[2] = disabledPlacement5;
    v133 = +[STUIStatusBarActivityItem_Split syncStartDisplayIdentifier];
    v113 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:"placementWithIdentifier:priority:" priority:?];
    v192 = @"trailing";
    v131 = [MEMORY[0x277CBEA60] arrayWithObjects:&v192 count:1];
    v132 = v113;
    v130 = [v113 excludingAllPlacementsInRegions:v131];
    disabledPlacement6 = [v130 disabledPlacement];
    v196[3] = disabledPlacement6;
    v196[4] = disabledPlacement2;
    v114 = [MEMORY[0x277CBEA60] arrayWithObjects:v196 count:5];
  }

  else
  {
    v190 = @"trailing";
    v150 = [MEMORY[0x277CBEA60] arrayWithObjects:&v190 count:1];
    v149 = [v110 excludingAllPlacementsInRegions:?];
    disabledPlacement3 = [v149 disabledPlacement];
    v191[0] = disabledPlacement3;
    v146 = +[(STUIStatusBarItem *)STUIStatusBarThermalItem];
    v115 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:"placementWithIdentifier:priority:" priority:?];
    v189 = @"trailing";
    [MEMORY[0x277CBEA60] arrayWithObjects:&v189 count:1];
    v143 = v145 = v115;
    v142 = [v115 excludingAllPlacementsInRegions:?];
    disabledPlacement4 = [v142 disabledPlacement];
    v191[1] = disabledPlacement4;
    v140 = +[STUIStatusBarActivityItem_Split syncStartDisplayIdentifier];
    v116 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:"placementWithIdentifier:priority:" priority:?];
    v188 = @"trailing";
    v138 = [MEMORY[0x277CBEA60] arrayWithObjects:&v188 count:1];
    v139 = v116;
    v137 = [v116 excludingAllPlacementsInRegions:v138];
    disabledPlacement5 = [v137 disabledPlacement];
    v191[2] = disabledPlacement5;
    v191[3] = disabledPlacement2;
    v114 = [MEMORY[0x277CBEA60] arrayWithObjects:v191 count:4];
  }

  v135 = v114;
  v198[2] = v114;
  v197[3] = @"controlCenter";
  v134 = +[STUIStatusBarControlCenterItem grabberIdentifier];
  v117 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v134 priority:1995];
  v157 = disabledPlacement2;
  v186 = disabledPlacement2;
  v118 = [MEMORY[0x277CBEA60] arrayWithObjects:&v186 count:1];
  v119 = [v117 requiringAllPlacements:v118];
  v187 = v119;
  v120 = [MEMORY[0x277CBEA60] arrayWithObjects:&v187 count:1];
  v198[3] = v120;
  v197[4] = @"expandedLeading";
  expandedLeadingPlacements = [(STUIStatusBarVisualProvider_iOS *)selfCopy expandedLeadingPlacements];
  v198[4] = expandedLeadingPlacements;
  v198[5] = array3;
  v197[5] = @"expandedLowerLeading";
  v197[6] = @"expandedLowerTrailing";
  v198[6] = v169;
  v197[7] = @"expandedTrailing";
  expandedTrailingPlacements = [(STUIStatusBarVisualProvider_iOS *)selfCopy expandedTrailingPlacements];
  v198[7] = expandedTrailingPlacements;
  v197[8] = @"bottomLeading";
  v123 = +[(STUIStatusBarItem *)STUIStatusBarNavigationItem];
  v124 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v123 priority:40];
  v185 = v124;
  v125 = [MEMORY[0x277CBEA60] arrayWithObjects:&v185 count:1];
  v198[8] = v125;
  v126 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v198 forKeys:v197 count:9];
  v181 = [v144 dictionaryWithDictionary:v126];

  v127 = v135;
  if (v147)
  {

    v127 = v133;
  }

  return v181;
}

- (int64_t)normalIconSize
{
  [(STUIStatusBarVisualProvider_Split *)self normalIconScale];
  v4 = v3;
  statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  _effectiveTargetScreen = [statusBar _effectiveTargetScreen];
  [_effectiveTargetScreen _scale];
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

- (UIFont)smallFont
{
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v3 = unk_280C1E7E8;
  if (unk_280C1E7E8)
  {
    v4 = byte_280C1E7C3 == IsBoldTextEnabled;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    byte_280C1E7C3 = IsBoldTextEnabled;
    v5 = [MEMORY[0x277D74300] systemFontOfSize:11.0 weight:*MEMORY[0x277D74410]];
    v6 = unk_280C1E7E8;
    unk_280C1E7E8 = v5;

    v3 = unk_280C1E7E8;
  }

  return v3;
}

- (BOOL)canFixupDisplayItemAttributes
{
  batteryChargingPlacement = self->_batteryChargingPlacement;
  if (batteryChargingPlacement)
  {
    LOBYTE(batteryChargingPlacement) = ![(STUIStatusBarDisplayItemPlacement *)batteryChargingPlacement isEnabled];
  }

  return batteryChargingPlacement;
}

- (void)_disableSystemUpdates
{
  v11 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v1 = [self orderedDisplayItemPlacementsInRegionWithIdentifier:{@"systemUpdates", 0}];
    v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v7;
      do
      {
        v5 = 0;
        do
        {
          if (*v7 != v4)
          {
            objc_enumerationMutation(v1);
          }

          [*(*(&v6 + 1) + 8 * v5++) setEnabled:0];
        }

        while (v3 != v5);
        v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      }

      while (v3);
    }
  }
}

- (void)statusBarRegionsUpdated
{
  if (self)
  {
    if ([(STUIStatusBarVisualProvider_iOS *)self expanded])
    {
      statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
      v4 = *MEMORY[0x277D76620];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __66__STUIStatusBarVisualProvider_Split__updateExpandedTrailingRegion__block_invoke;
      v6[3] = &unk_279D38150;
      v7 = statusBar;
      selfCopy = self;
      v5 = statusBar;
      [v4 _performBlockAfterCATransactionCommits:v6];
    }
  }
}

- (void)_resumeSystemUpdateData
{
  if (self)
  {
    delayedSystemUpdateDataToken = [self delayedSystemUpdateDataToken];

    if (delayedSystemUpdateDataToken)
    {
      statusBar = [self statusBar];
      dataAggregator = [statusBar dataAggregator];
      delayedSystemUpdateDataToken2 = [self delayedSystemUpdateDataToken];
      [dataAggregator endDelayingUpdates:delayedSystemUpdateDataToken2];

      [self setDelayedSystemUpdateDataToken:0];
    }
  }
}

- (void)dealloc
{
  [(STUIStatusBarVisualProvider_Split *)self _resumeSystemUpdateData];
  v3.receiver = self;
  v3.super_class = STUIStatusBarVisualProvider_Split;
  [(STUIStatusBarVisualProvider_Split *)&v3 dealloc];
}

- (void)_collapseBattery
{
  if (self)
  {
    if ([self[18] isEnabled])
    {
      [self[18] setEnabled:0];
      statusBar = [self statusBar];
      [statusBar updateWithAnimations:MEMORY[0x277CBEBF8]];

      statusBar2 = [self statusBar];
      areAnimationsEnabled = [statusBar2 areAnimationsEnabled];

      if ((areAnimationsEnabled & 1) == 0)
      {

        [(STUIStatusBarVisualProvider_Split *)self _resetBattery];
      }
    }
  }
}

+ (Class)visualProviderSubclassForScreen:(id)screen visualProviderInfo:(id)info
{
  v27[9] = *MEMORY[0x277D85DE8];
  screenCopy = screen;
  infoCopy = info;
  [screenCopy _nativeDisplayBounds];
  Width = CGRectGetWidth(v29);
  _exclusionArea = [screenCopy _exclusionArea];
  [_exclusionArea rect];
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
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:9];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v26 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __88__STUIStatusBarVisualProvider_Split_visualProviderSubclassForScreen_visualProviderInfo___block_invoke;
  v17[3] = &unk_279D390B8;
  v20 = Width;
  v14 = screenCopy;
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

- (UIFont)voiceControlFont
{
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v3 = unk_280C1E7F0;
  if (unk_280C1E7F0)
  {
    v4 = byte_280C1E7C4 == IsBoldTextEnabled;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    byte_280C1E7C4 = IsBoldTextEnabled;
    v5 = [MEMORY[0x277D74300] systemFontOfSize:13.0 weight:*MEMORY[0x277D74410]];
    v6 = unk_280C1E7F0;
    unk_280C1E7F0 = v5;

    v3 = unk_280C1E7F0;
  }

  return v3;
}

- (int64_t)expandedIconSize
{
  [(STUIStatusBarVisualProvider_Split *)self expandedIconScale];
  v4 = v3;
  statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  _effectiveTargetScreen = [statusBar _effectiveTargetScreen];
  [_effectiveTargetScreen _scale];
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
  v2 = *MEMORY[0x277D75060];
  v3 = *(MEMORY[0x277D75060] + 8);
  v4 = *(MEMORY[0x277D75060] + 16);
  v5 = *(MEMORY[0x277D75060] + 24);
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (double)cornerRadius
{
  statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  _effectiveTargetScreen = [statusBar _effectiveTargetScreen];

  [_effectiveTargetScreen _displayCornerRadius];
  v5 = v4;
  [_effectiveTargetScreen _nativeScale];
  v7 = v5 * v6;
  [_effectiveTargetScreen _scale];
  v9 = v7 / v8;

  return v9;
}

- (void)_setupExpandedRegionsInContainerView:(id)view sensorHeight:(double)height constraints:(id *)constraints regions:(id *)regions
{
  v9 = *constraints;
  v125 = *regions;
  v126 = v9;
  viewCopy = view;
  [(STUIStatusBarVisualProvider_iOS *)self expandedItemSpacing];
  v12 = v11;
  [(STUIStatusBarVisualProvider_Split *)self baselineBottomInset];
  v14 = v13;
  [(STUIStatusBarVisualProvider_Split *)self expandedEdgeInsets];
  v16 = v15;
  v18 = v17;
  expandedFont = [(STUIStatusBarVisualProvider_Split *)self expandedFont];
  [expandedFont capHeight];
  v21 = v20;

  v22 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"expandedLeading"];
  v23 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v24 = objc_alloc_init(STUIStatusBarRegionAxisStackingLayout);
  [(STUIStatusBarRegionAxisStackingLayout *)v24 setAlignment:3];
  [(STUIStatusBarRegionAxisStackingLayout *)v24 setInterspace:v12];
  [(STUIStatusBarRegionAxesLayout *)v23 setHorizontalLayout:v24];

  v25 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:6];
  [(STUIStatusBarRegionAxesLayout *)v23 setVerticalLayout:v25];

  [(STUIStatusBarRegion *)v22 setLayout:v23];
  v26 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(STUIStatusBarRegion *)v22 setContentView:v26];

  [(STUIStatusBarRegion *)v22 setOffsetable:1];
  [(STUIStatusBarRegion *)v22 disableWithToken:10];
  layoutItem = [(STUIStatusBarRegion *)v22 layoutItem];
  trailingAnchor = [layoutItem trailingAnchor];
  centerXAnchor = [viewCopy centerXAnchor];
  v30 = [trailingAnchor constraintEqualToAnchor:centerXAnchor constant:0.0];
  expandedLeadingBannerConstraint = self->_expandedLeadingBannerConstraint;
  self->_expandedLeadingBannerConstraint = v30;

  leadingAnchor = [layoutItem leadingAnchor];
  leadingAnchor2 = [viewCopy leadingAnchor];
  v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v16];
  [v126 addObject:v34];

  bottomAnchor = [layoutItem bottomAnchor];
  topAnchor = [viewCopy topAnchor];
  v37 = height - v14;
  v38 = [bottomAnchor constraintEqualToAnchor:topAnchor constant:v37];
  LODWORD(v39) = 1147207680;
  v40 = [v38 _ui_constraintWithPriority:v39];
  [v126 addObject:v40];

  heightAnchor = [layoutItem heightAnchor];
  v42 = [heightAnchor constraintEqualToConstant:v21];
  [v126 addObject:v42];

  v124 = layoutItem;
  [viewCopy _ui_addSubLayoutItem:layoutItem];

  [v125 addObject:v22];
  v43 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"expandedTrailing"];
  v44 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v45 = objc_alloc_init(STUIStatusBarRegionAxisStackingLayout);
  [(STUIStatusBarRegionAxisStackingLayout *)v45 setAlignment:4];
  [(STUIStatusBarRegionAxisStackingLayout *)v45 setInterspace:v12];
  [(STUIStatusBarRegionAxesLayout *)v44 setHorizontalLayout:v45];

  v46 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:6];
  [(STUIStatusBarRegionAxesLayout *)v44 setVerticalLayout:v46];

  [(STUIStatusBarRegion *)v43 setLayout:v44];
  v47 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(STUIStatusBarRegion *)v43 setContentView:v47];

  [(STUIStatusBarRegion *)v43 setOffsetable:1];
  [(STUIStatusBarRegion *)v43 disableWithToken:10];
  layoutItem2 = [(STUIStatusBarRegion *)v43 layoutItem];
  leadingAnchor3 = [layoutItem2 leadingAnchor];
  trailingAnchor2 = [layoutItem trailingAnchor];
  v51 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor2 constant:v12];
  expandedTopMiddleConstraint = self->_expandedTopMiddleConstraint;
  self->_expandedTopMiddleConstraint = v51;

  leadingAnchor4 = [layoutItem2 leadingAnchor];
  centerXAnchor2 = [viewCopy centerXAnchor];
  v55 = [leadingAnchor4 constraintEqualToAnchor:centerXAnchor2 constant:0.0];
  expandedTrailingBannerConstraint = self->_expandedTrailingBannerConstraint;
  self->_expandedTrailingBannerConstraint = v55;

  trailingAnchor3 = [layoutItem2 trailingAnchor];
  trailingAnchor4 = [viewCopy trailingAnchor];
  v59 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-v18];
  [v126 addObject:v59];

  bottomAnchor2 = [layoutItem2 bottomAnchor];
  topAnchor2 = [viewCopy topAnchor];
  v62 = [bottomAnchor2 constraintEqualToAnchor:topAnchor2 constant:v37];
  LODWORD(v63) = 1147207680;
  v64 = [v62 _ui_constraintWithPriority:v63];
  [v126 addObject:v64];

  heightAnchor2 = [layoutItem2 heightAnchor];
  v66 = [heightAnchor2 constraintEqualToConstant:v21];
  [v126 addObject:v66];

  [v126 addObject:self->_expandedTopMiddleConstraint];
  widthAnchor = [layoutItem2 widthAnchor];
  widthAnchor2 = [v124 widthAnchor];
  v69 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  LODWORD(v70) = 1131741184;
  v71 = [v69 _ui_constraintWithPriority:v70];
  [v126 addObject:v71];

  [viewCopy _ui_addSubLayoutItem:layoutItem2];
  [v125 addObject:v43];

  [(STUIStatusBarVisualProvider_Split *)self lowerExpandedBaselineOffset];
  v73 = v72;
  v74 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"expandedLowerLeading"];
  v75 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v76 = objc_alloc_init(STUIStatusBarRegionAxisStackingLayout);
  [(STUIStatusBarRegionAxisStackingLayout *)v76 setAlignment:3];
  [(STUIStatusBarRegionAxisStackingLayout *)v76 setInterspace:v12];
  [(STUIStatusBarRegionAxesLayout *)v75 setHorizontalLayout:v76];

  v77 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:6];
  [(STUIStatusBarRegionAxesLayout *)v75 setVerticalLayout:v77];

  [(STUIStatusBarRegion *)v74 setLayout:v75];
  v78 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(STUIStatusBarRegion *)v74 setContentView:v78];

  [(STUIStatusBarRegion *)v74 setOffsetable:1];
  [(STUIStatusBarRegion *)v74 disableWithToken:10];
  layoutItem3 = [(STUIStatusBarRegion *)v74 layoutItem];
  bottomAnchor3 = [layoutItem3 bottomAnchor];
  topAnchor3 = [viewCopy topAnchor];
  v82 = [bottomAnchor3 constraintEqualToAnchor:topAnchor3 constant:v37];
  expandedLeadingLowerTopConstraint = self->_expandedLeadingLowerTopConstraint;
  self->_expandedLeadingLowerTopConstraint = v82;

  leadingAnchor5 = [layoutItem3 leadingAnchor];
  leadingAnchor6 = [viewCopy leadingAnchor];
  v86 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:v16];
  [v126 addObject:v86];

  bottomAnchor4 = [layoutItem3 bottomAnchor];
  bottomAnchor5 = [v124 bottomAnchor];
  v89 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:v73];
  [v126 addObject:v89];

  heightAnchor3 = [layoutItem3 heightAnchor];
  v91 = [heightAnchor3 constraintEqualToConstant:v21];
  [v126 addObject:v91];

  [v126 addObject:self->_expandedLeadingLowerTopConstraint];
  [viewCopy _ui_addSubLayoutItem:layoutItem3];

  [v125 addObject:v74];
  v92 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"expandedLowerTrailing"];
  v93 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v94 = objc_alloc_init(STUIStatusBarRegionAxisStackingLayout);
  [(STUIStatusBarRegionAxisStackingLayout *)v94 setAlignment:4];
  [(STUIStatusBarRegionAxisStackingLayout *)v94 setInterspace:v12];
  [(STUIStatusBarRegionAxesLayout *)v93 setHorizontalLayout:v94];

  v95 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:6];
  [(STUIStatusBarRegionAxesLayout *)v93 setVerticalLayout:v95];

  [(STUIStatusBarRegion *)v92 setLayout:v93];
  v96 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(STUIStatusBarRegion *)v92 setContentView:v96];

  [(STUIStatusBarRegion *)v92 setOffsetable:1];
  [(STUIStatusBarRegion *)v92 disableWithToken:10];
  layoutItem4 = [(STUIStatusBarRegion *)v92 layoutItem];
  trailingAnchor5 = [layoutItem4 trailingAnchor];
  trailingAnchor6 = [viewCopy trailingAnchor];
  v100 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-v18];
  [v126 addObject:v100];

  layoutItem5 = [(STUIStatusBarRegion *)v92 layoutItem];
  heightAnchor4 = [layoutItem5 heightAnchor];
  v103 = [heightAnchor4 constraintEqualToConstant:v21];
  [v126 addObject:v103];

  layoutItem6 = [(STUIStatusBarRegion *)v92 layoutItem];
  bottomAnchor6 = [layoutItem6 bottomAnchor];
  bottomAnchor7 = [layoutItem3 bottomAnchor];
  v107 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
  [v126 addObject:v107];

  layoutItem7 = [(STUIStatusBarRegion *)v92 layoutItem];
  bottomAnchor8 = [layoutItem7 bottomAnchor];
  bottomAnchor9 = [layoutItem2 bottomAnchor];
  v111 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9 constant:v73];
  expandedTrailingBottomConstraint = self->_expandedTrailingBottomConstraint;
  self->_expandedTrailingBottomConstraint = v111;

  [v126 addObject:self->_expandedTrailingBottomConstraint];
  layoutItem8 = [(STUIStatusBarRegion *)v92 layoutItem];
  leadingAnchor7 = [layoutItem8 leadingAnchor];
  trailingAnchor7 = [layoutItem3 trailingAnchor];
  v116 = [leadingAnchor7 constraintEqualToAnchor:trailingAnchor7 constant:v12];
  [v126 addObject:v116];

  layoutItem9 = [(STUIStatusBarRegion *)v92 layoutItem];
  widthAnchor3 = [layoutItem9 widthAnchor];
  widthAnchor4 = [layoutItem3 widthAnchor];
  v120 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
  LODWORD(v121) = 1131741184;
  v122 = [v120 _ui_constraintWithPriority:v121];
  [v126 addObject:v122];

  layoutItem10 = [(STUIStatusBarRegion *)v92 layoutItem];
  [viewCopy _ui_addSubLayoutItem:layoutItem10];

  [v125 addObject:v92];
}

- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  orderedDisplayItemPlacements = [(STUIStatusBarVisualProvider_Split *)self orderedDisplayItemPlacements];

  if (!orderedDisplayItemPlacements)
  {
    _orderedDisplayItemPlacements = [(STUIStatusBarVisualProvider_Split *)self _orderedDisplayItemPlacements];
    [(STUIStatusBarVisualProvider_Split *)self setOrderedDisplayItemPlacements:_orderedDisplayItemPlacements];
  }

  orderedDisplayItemPlacements2 = [(STUIStatusBarVisualProvider_Split *)self orderedDisplayItemPlacements];
  v8 = [orderedDisplayItemPlacements2 objectForKeyedSubscript:identifierCopy];

  return v8;
}

+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)orientation
{
  if ((orientation - 1) >= 2)
  {
    v5 = *MEMORY[0x277CBF3A8];
    v6 = *(MEMORY[0x277CBF3A8] + 8);
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___STUIStatusBarVisualProvider_Split;
    objc_msgSendSuper2(&v7, sel_intrinsicContentSizeForOrientation_);
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (id)styleAttributesForStyle:(int64_t)style
{
  v17.receiver = self;
  v17.super_class = STUIStatusBarVisualProvider_Split;
  v4 = [(STUIStatusBarVisualProvider_iOS *)&v17 styleAttributesForStyle:style];
  mode = [v4 mode];
  if (mode <= 5)
  {
    if (((1 << mode) & 0x35) == 0)
    {
      if (mode == 1)
      {
        [(STUIStatusBarVisualProvider_Split *)self expandedIconScale];
        [v4 setIconScale:?];
        [v4 setIconSize:{-[STUIStatusBarVisualProvider_Split expandedIconSize](self, "expandedIconSize")}];
        expandedFont = [(STUIStatusBarVisualProvider_Split *)self expandedFont];
        [v4 setFont:expandedFont];

        expandedFont2 = [(STUIStatusBarVisualProvider_Split *)self expandedFont];
        [v4 setEmphasizedFont:expandedFont2];

        expandedFont3 = [(STUIStatusBarVisualProvider_Split *)self expandedFont];
        goto LABEL_4;
      }

      labelColor = [MEMORY[0x277D75348] labelColor];
      v14 = [labelColor colorWithAlphaComponent:0.8];
      [v4 setTextColor:v14];

      labelColor2 = [MEMORY[0x277D75348] labelColor];
      v16 = [labelColor2 colorWithAlphaComponent:0.8];
      [v4 setImageTintColor:v16];
    }

    [(STUIStatusBarVisualProvider_Split *)self normalIconScale];
    [v4 setIconScale:?];
    [v4 setIconSize:{-[STUIStatusBarVisualProvider_Split normalIconSize](self, "normalIconSize")}];
    normalFont = [(STUIStatusBarVisualProvider_Split *)self normalFont];
    [v4 setFont:normalFont];

    emphasizedFont = [(STUIStatusBarVisualProvider_Split *)self emphasizedFont];
    [v4 setEmphasizedFont:emphasizedFont];

    expandedFont3 = [(STUIStatusBarVisualProvider_Split *)self smallFont];
LABEL_4:
    v9 = expandedFont3;
    [v4 setSmallFont:expandedFont3];
  }

  [v4 setImageNamePrefixes:&unk_287D1B068];

  return v4;
}

- (double)condensedPointSizeForCellularType:(int64_t)type defaultPointSize:(double)size baselineOffset:(double *)offset
{
  if ((type - 8) < 2)
  {
    *offset = 1.0;
    v9 = objc_opt_class();

    [v9 LTEAPlusFontSize];
  }

  else if ((type - 2) > 1)
  {
    *offset = 0.666666667;
    return size + -1.0;
  }

  else
  {
    shrinksSingleCharacterTypes = [objc_opt_class() shrinksSingleCharacterTypes];
    v7 = 0.0;
    if (shrinksSingleCharacterTypes)
    {
      v7 = 1.0;
    }

    return size - v7;
  }

  return result;
}

- (id)stringForCellularType:(int64_t)type condensed:(BOOL)condensed
{
  v4 = @"􀛳";
  if (type != 9)
  {
    v4 = 0;
  }

  if (type == 8)
  {
    v4 = @"􀛲";
  }

  if (condensed)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (id)condensedFontForCellularType:(int64_t)type defaultFont:(id)font baselineOffset:(double *)offset
{
  fontCopy = font;
  [fontCopy pointSize];
  v10 = v9;
  [(STUIStatusBarVisualProvider_Split *)self condensedPointSizeForCellularType:type defaultPointSize:offset baselineOffset:?];
  v12 = v11;
  if (type <= 0xF && ((1 << type) & 0xF8C0) != 0)
  {
    fontDescriptor = [fontCopy fontDescriptor];
    fontDescriptor2 = [fontDescriptor fontDescriptorWithSymbolicTraits:64];

    if (v12 == v10)
    {
      v15 = MEMORY[0x277D74300];
      v17 = 0.0;
      v16 = fontDescriptor2;
      goto LABEL_6;
    }

LABEL_4:
    v15 = MEMORY[0x277D74300];
    v16 = fontDescriptor2;
    v17 = v12;
LABEL_6:
    v18 = [v15 fontWithDescriptor:v16 size:v17];

    goto LABEL_7;
  }

  v18 = fontCopy;
  if (v11 != v10)
  {
    fontDescriptor2 = [fontCopy fontDescriptor];
    goto LABEL_4;
  }

LABEL_7:

  return v18;
}

- (double)animatedTypeDisplayItemSpacingFactorForCellularType:(int64_t)type
{
  result = 1.0;
  if ((type - 6) <= 9)
  {
    return dbl_26C5827E0[type - 6];
  }

  return result;
}

- (id)overriddenStyleAttributesForDisplayItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[(STUIStatusBarItem *)STUIStatusBarNavigationItem];

  if (v5 == identifierCopy)
  {
    v13 = +[STUIStatusBarStyleAttributes overriddenStyleAttributes];
    smallFont = [(STUIStatusBarVisualProvider_Split *)self smallFont];
LABEL_11:
    v15 = smallFont;
    [v13 setFont:smallFont];
LABEL_12:

    goto LABEL_13;
  }

  v6 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorLocationItem];
  v7 = v6;
  if (v6 == identifierCopy)
  {

    goto LABEL_10;
  }

  v8 = +[STUIStatusBarIndicatorLocationItem prominentDisplayIdentifier];

  if (v8 == identifierCopy)
  {
LABEL_10:
    v13 = +[STUIStatusBarStyleAttributes overriddenStyleAttributes];
    smallFont = [(STUIStatusBarVisualProvider_Split *)self emphasizedFont];
    goto LABEL_11;
  }

  v9 = +[(STUIStatusBarItem *)STUIStatusBarVoiceControlItem];

  if (v9 == identifierCopy)
  {
    v13 = +[STUIStatusBarStyleAttributes overriddenStyleAttributes];
    [v13 setSymbolScale:1];
    smallFont = [(STUIStatusBarVisualProvider_Split *)self voiceControlFont];
    goto LABEL_11;
  }

  v10 = +[STUIStatusBarTimeItem shortTimeDisplayIdentifier];
  v11 = v10;
  if (v10 == identifierCopy)
  {
  }

  else
  {
    v12 = +[STUIStatusBarTimeItem pillTimeDisplayIdentifier];

    if (!v12)
    {
      goto LABEL_20;
    }
  }

  if (_StatusBar_NSLocaleNumberingSystemNeedsReducedFontForStatusBar())
  {
    v13 = +[STUIStatusBarStyleAttributes overriddenStyleAttributes];
    v17 = MEMORY[0x277D74300];
    [objc_opt_class() baseFontSize];
    v15 = [v17 systemFontOfSize:? weight:?];
    [v13 setEmphasizedFont:v15];
    goto LABEL_12;
  }

LABEL_20:
  v13 = 0;
LABEL_13:

  return v13;
}

- (void)itemCreated:(id)created
{
  createdCopy = created;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = createdCopy;
    [v4 setTypeStringProvider:self];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [v5 setShrinksBeforeMarquee:{objc_msgSend(objc_opt_class(), "shrinkServiceNameBeforeMarquee")}];
LABEL_11:
    }
  }

  else
  {
    identifier = [createdCopy identifier];
    v7 = +[(STUIStatusBarItem *)STUIStatusBarVoiceControlPillItem];

    if (identifier != v7)
    {
      identifier2 = [createdCopy identifier];
      v9 = +[(STUIStatusBarItem *)STUIStatusBarBatteryItem];

      if (identifier2 != v9)
      {
        goto LABEL_13;
      }

      v10 = createdCopy;
      v5 = +[STUIStatusBarSettingsDomain rootSettings];
      itemSettings = [v5 itemSettings];
      v12 = ([itemSettings batteryPercentageAlwaysEnabled] & 1) != 0 || -[STUIStatusBarVisualProvider_Split supportsCondensedBatteryPercentage](self, "supportsCondensedBatteryPercentage");
      [v10 setUsesCondensedPercentageDisplay:v12];

      goto LABEL_11;
    }

    v13 = createdCopy;
    [(STUIStatusBarVisualProvider_Split *)self smallPillSize];
    [v13 setPillSize:?];
  }

LABEL_13:
}

- (id)willUpdateWithData:(id)data
{
  selfCopy = self;
  v60 = *MEMORY[0x277D85DE8];
  v49.receiver = self;
  v49.super_class = STUIStatusBarVisualProvider_Split;
  dataCopy = data;
  v5 = [(STUIStatusBarVisualProvider_Phone *)&v49 willUpdateWithData:dataCopy];
  v42 = dataCopy;
  if (!selfCopy)
  {

    v40 = v42;
    goto LABEL_45;
  }

  v47 = selfCopy;
  if ([objc_opt_class() showsLargeBatteryChargingAnimation])
  {
    mainBatteryEntry = [v42 mainBatteryEntry];
    statusBar = [(STUIStatusBarVisualProvider_iOS *)selfCopy statusBar];
    currentAggregatedData = [statusBar currentAggregatedData];
    mainBatteryEntry2 = [currentAggregatedData mainBatteryEntry];

    if (!mainBatteryEntry || !mainBatteryEntry2 || [(STUIStatusBarVisualProvider_iOS *)selfCopy expanded])
    {
      goto LABEL_15;
    }

    if (![mainBatteryEntry2 state] && objc_msgSend(mainBatteryEntry, "state") == 1 && !-[STUIStatusBarDisplayItemPlacement isEnabled](selfCopy->_batteryChargingPlacement, "isEnabled"))
    {
      statusBar2 = [(STUIStatusBarVisualProvider_iOS *)selfCopy statusBar];
      if ([statusBar2 areAnimationsEnabled])
      {
        statusBar3 = [(STUIStatusBarVisualProvider_iOS *)selfCopy statusBar];
        v12 = +[STUIStatusBarBatteryItem iconDisplayIdentifier];
        v13 = [statusBar3 displayItemWithIdentifier:v12];
        isEnabled = [v13 isEnabled];

        selfCopy = v47;
        if (isEnabled)
        {
          [(STUIStatusBarDisplayItemPlacement *)v47->_batteryChargingPlacement setEnabled:1];
LABEL_15:

          goto LABEL_16;
        }
      }

      else
      {
      }
    }

    statusBar4 = [(STUIStatusBarVisualProvider_iOS *)selfCopy statusBar];
    areAnimationsEnabled = [statusBar4 areAnimationsEnabled];

    if ((areAnimationsEnabled & 1) == 0)
    {
      [(STUIStatusBarVisualProvider_Split *)&selfCopy->super.super.super.isa _collapseBattery];
    }

    goto LABEL_15;
  }

LABEL_16:

  v48 = v42;
  statusBar5 = [(STUIStatusBarVisualProvider_iOS *)selfCopy statusBar];
  if (![statusBar5 areAnimationsEnabled])
  {

    goto LABEL_44;
  }

  expanded = [(STUIStatusBarVisualProvider_iOS *)selfCopy expanded];

  if (expanded)
  {
LABEL_44:
    [(STUIStatusBarVisualProvider_Split *)selfCopy _disableSystemUpdates];
    goto LABEL_45;
  }

  v41 = v5;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = [(STUIStatusBarVisualProvider_Split *)selfCopy orderedDisplayItemPlacementsInRegionWithIdentifier:@"systemUpdates"];
  v45 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (v45)
  {
    v44 = *v55;
    do
    {
      for (i = 0; i != v45; ++i)
      {
        if (*v55 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v54 + 1) + 8 * i);
        statusBar6 = [(STUIStatusBarVisualProvider_iOS *)selfCopy statusBar];
        identifier = [v20 identifier];
        v23 = [STUIStatusBarItem itemIdentifierForDisplayItemIdentifier:identifier];
        v24 = [statusBar6 itemWithIdentifier:v23];

        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        dependentEntryKeys = [v24 dependentEntryKeys];
        v26 = [dependentEntryKeys countByEnumeratingWithState:&v50 objects:v58 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v51;
          v46 = v24;
          while (2)
          {
            for (j = 0; j != v27; ++j)
            {
              if (*v51 != v28)
              {
                objc_enumerationMutation(dependentEntryKeys);
              }

              v30 = *(*(&v50 + 1) + 8 * j);
              v31 = [v48 valueForKey:v30];
              if (!v31)
              {
                goto LABEL_39;
              }

              v32 = v31;
              statusBar7 = [(STUIStatusBarVisualProvider_iOS *)selfCopy statusBar];
              currentAggregatedData2 = [statusBar7 currentAggregatedData];
              v35 = [currentAggregatedData2 valueForKey:v30];

              identifier2 = [v20 identifier];
              v37 = +[(STUIStatusBarItem *)STUIStatusBarVPNDisconnectItem];

              isEnabled2 = [v32 isEnabled];
              if (identifier2 == v37)
              {
                if ((isEnabled2 & 1) != 0 || ([v35 isEnabled] & 1) == 0)
                {
LABEL_38:

                  selfCopy = v47;
LABEL_39:

                  v24 = v46;
                  goto LABEL_40;
                }
              }

              else if (!isEnabled2 || [v35 isEnabled])
              {
                goto LABEL_38;
              }

              selfCopy = v47;
            }

            v27 = [dependentEntryKeys countByEnumeratingWithState:&v50 objects:v58 count:16];
            v24 = v46;
            if (v27)
            {
              continue;
            }

            break;
          }
        }

        [v20 setEnabled:1];
LABEL_40:
      }

      v45 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
    }

    while (v45);
  }

  v5 = v41;
LABEL_45:

  return v5;
}

- (id)displayItemIdentifiersForPartWithIdentifier:(id)identifier
{
  v16[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if ([identifierCopy isEqual:@"batteryPartIdentifier"])
  {
    if (-[STUIStatusBarVisualProvider_iOS expanded](self, "expanded") || ([objc_opt_class() showsLargeBatteryChargingAnimation] & 1) == 0)
    {
      v5 = MEMORY[0x277CBEB98];
      v6 = +[STUIStatusBarBatteryItem staticIconDisplayIdentifier];
    }

    else
    {
      v5 = MEMORY[0x277CBEB98];
      v6 = +[STUIStatusBarBatteryItem iconDisplayIdentifier];
    }

    statusBar = v6;
    v9 = [v5 setWithObject:v6];
  }

  else
  {
    if ([identifierCopy isEqual:@"fittingLeadingPartIdentifier"])
    {
      statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
      if ([(STUIStatusBarVisualProvider_iOS *)self expanded])
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
      if (![identifierCopy isEqual:@"fittingTrailingPartIdentifier"])
      {
        v12.receiver = self;
        v12.super_class = STUIStatusBarVisualProvider_Split;
        v9 = [(STUIStatusBarVisualProvider_iOS *)&v12 displayItemIdentifiersForPartWithIdentifier:identifierCopy];
        goto LABEL_18;
      }

      statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
      if ([(STUIStatusBarVisualProvider_iOS *)self expanded])
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

    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    v9 = [statusBar displayItemIdentifiersInRegionsWithIdentifiers:v10];
  }

LABEL_18:

  return v9;
}

- (BOOL)hasCustomAnimationForDisplayItemWithIdentifier:(id)identifier removal:(BOOL)removal
{
  removalCopy = removal;
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = STUIStatusBarVisualProvider_Split;
  if ([(STUIStatusBarVisualProvider_iOS *)&v11 hasCustomAnimationForDisplayItemWithIdentifier:identifierCopy removal:removalCopy])
  {
    v7 = 1;
  }

  else
  {
    v8 = +[STUIStatusBarBatteryItem chargingDisplayIdentifier];
    if (v8 == identifierCopy)
    {
      v7 = 1;
    }

    else
    {
      v9 = +[STUIStatusBarControlCenterItem grabberIdentifier];
      if (v9 == identifierCopy)
      {
        v7 = 1;
      }

      else
      {
        v7 = [(STUIStatusBarVisualProvider_Split *)self _shouldShowSystemUpdateForDisplayItemWithIdentifier:identifierCopy];
      }
    }
  }

  return v7;
}

- (uint64_t)_shouldShowSystemUpdateForDisplayItemWithIdentifier:(void *)identifier
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (identifier && ([identifier expanded] & 1) == 0)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [identifier orderedDisplayItemPlacementsInRegionWithIdentifier:{@"systemUpdates", 0}];
    v4 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v6 = *v11;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v5);
          }

          identifier = [*(*(&v10 + 1) + 8 * i) identifier];

          if (identifier == v3)
          {
            v4 = 1;
            goto LABEL_14;
          }
        }

        v4 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)additionAnimationForDisplayItemWithIdentifier:(id)identifier itemAnimation:(id)animation
{
  v39 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  animationCopy = animation;
  v5 = +[STUIStatusBarBatteryItem chargingDisplayIdentifier];

  if (v5 == identifierCopy)
  {
    if (self && ![(STUIStatusBarVisualProvider_iOS *)self expanded])
    {
      batteryExpansionTimer = self->_batteryExpansionTimer;
      selfCopy2 = self;
      if (batteryExpansionTimer)
      {
        [(NSTimer *)batteryExpansionTimer invalidate];
        [(STUIStatusBarVisualProvider_Split *)self setBatteryExpansionTimer:0];
        selfCopy2 = self;
      }

      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __73__STUIStatusBarVisualProvider_Split__additionAnimationForBatteryCharging__block_invoke;
      v37[3] = &unk_279D38AC0;
      v37[4] = selfCopy2;
      _controlCenterGrabberAnimation = [STUIStatusBarAnimation animationWithBlock:v37];
      [_controlCenterGrabberAnimation setPriority:200];
      [_controlCenterGrabberAnimation setExclusivityGroupIdentifier:@"trailing"];
      v36[0] = 0;
      v36[1] = v36;
      v36[2] = 0x3010000000;
      v36[4] = 0;
      v36[5] = 0;
      v36[3] = &unk_26C58BD13;
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __73__STUIStatusBarVisualProvider_Split__additionAnimationForBatteryCharging__block_invoke_6;
      v35[3] = &unk_279D38560;
      v35[4] = v36;
      v9 = [STUIStatusBarAnimation animationWithBlock:v35];
      [v9 setPriority:200];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __73__STUIStatusBarVisualProvider_Split__additionAnimationForBatteryCharging__block_invoke_8;
      v34[3] = &unk_279D38588;
      v34[4] = v36;
      [v9 setPrepareBlock:v34];
      v10 = +[STUIStatusBarBatteryItem iconDisplayIdentifier];
      [_controlCenterGrabberAnimation addSubAnimation:v9 forDisplayItemWithIdentifier:v10];
      v24 = v9;

      v11 = [STUIStatusBarAnimation animationWithBlock:&__block_literal_global_11];
      [v11 setPriority:150];
      [v11 setPrepareBlock:&__block_literal_global_141];
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v12 = [(STUIStatusBarVisualProvider_Split *)self orderedDisplayItemPlacementsInRegionWithIdentifier:@"trailing"];
      v13 = [v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v13)
      {
        v14 = *v31;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v31 != v14)
            {
              objc_enumerationMutation(v12);
            }

            identifier = [*(*(&v30 + 1) + 8 * i) identifier];
            v17 = [STUIStatusBarItem itemIdentifierForDisplayItemIdentifier:identifier];
            v18 = +[(STUIStatusBarItem *)STUIStatusBarBatteryItem];
            v19 = [v17 isEqual:v18];

            if ((v19 & 1) == 0)
            {
              [_controlCenterGrabberAnimation addSubAnimation:v11 forDisplayItemWithIdentifier:identifier];
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
        }

        while (v13);
      }

      [_controlCenterGrabberAnimation setDelaysDependentItems:1];
      v20 = MEMORY[0x277CBEB98];
      v21 = [(STUIStatusBarVisualProvider_Split *)self orderedDisplayItemPlacementsInRegionWithIdentifier:@"systemUpdates"];
      v22 = [v20 setWithArray:v21];
      [_controlCenterGrabberAnimation setDelayedDisplayItemPlacements:v22];

      _Block_object_dispose(v36, 8);
    }

    else
    {
      _controlCenterGrabberAnimation = 0;
    }
  }

  else
  {
    v6 = +[STUIStatusBarControlCenterItem grabberIdentifier];

    if (v6 == identifierCopy)
    {
      _controlCenterGrabberAnimation = [(STUIStatusBarVisualProvider_Split *)self _controlCenterGrabberAnimation];
    }

    else if ([(STUIStatusBarVisualProvider_Split *)self _shouldShowSystemUpdateForDisplayItemWithIdentifier:identifierCopy])
    {
      _controlCenterGrabberAnimation = [(STUIStatusBarVisualProvider_Split *)self _systemUpdateAnimationForDisplayItemWithIdentifier:identifierCopy];
    }

    else
    {
      v29.receiver = self;
      v29.super_class = STUIStatusBarVisualProvider_Split;
      _controlCenterGrabberAnimation = [(STUIStatusBarVisualProvider_Phone *)&v29 additionAnimationForDisplayItemWithIdentifier:identifierCopy itemAnimation:animationCopy];
    }
  }

  return _controlCenterGrabberAnimation;
}

- (id)_controlCenterGrabberAnimation
{
  if (self)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __67__STUIStatusBarVisualProvider_Split__controlCenterGrabberAnimation__block_invoke;
    v3[3] = &unk_279D38AC0;
    v3[4] = self;
    v1 = [STUIStatusBarAnimation animationWithBlock:v3];
    [v1 setPriority:300];
    [v1 setPrepareBlock:&__block_literal_global_147];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

- (id)_systemUpdateAnimationForDisplayItemWithIdentifier:(void *)identifier
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v30 = v3;
  if (identifier)
  {
    v4 = v3;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    statusBar = [identifier statusBar];
    _shouldReverseLayoutDirection = [statusBar _shouldReverseLayoutDirection];

    v8 = +[(STUIStatusBarItem *)STUIStatusBarControlCenterItem];
    v9 = v8 == v4;

    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __88__STUIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke;
    v44[3] = &unk_279D39260;
    v44[4] = identifier;
    v46 = v9;
    v47 = _shouldReverseLayoutDirection;
    v10 = dictionary;
    v45 = v10;
    v11 = [STUIStatusBarAnimation animationWithBlock:v44];
    [v11 setPriority:300];
    [v11 setExclusivityGroupIdentifier:@"trailing"];
    [v11 setPrepareBlock:&__block_literal_global_155];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __88__STUIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_12;
    v41[3] = &unk_279D39288;
    v12 = v10;
    v42 = v12;
    v43 = v9;
    v13 = [STUIStatusBarAnimation animationWithBlock:v41];
    [v13 setPriority:300];
    [v13 setIdentifier:@"systemUpdateItem"];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __88__STUIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_14;
    v39[3] = &unk_279D392B0;
    v29 = v12;
    v40 = v29;
    [v13 setPrepareBlock:v39];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v14 = [identifier orderedDisplayItemPlacementsInRegionWithIdentifier:@"trailing"];
    v15 = [v14 countByEnumeratingWithState:&v35 objects:v49 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v36;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v36 != v17)
          {
            objc_enumerationMutation(v14);
          }

          identifier = [*(*(&v35 + 1) + 8 * i) identifier];
          [v11 addSubAnimation:v13 forDisplayItemWithIdentifier:identifier];
        }

        v16 = [v14 countByEnumeratingWithState:&v35 objects:v49 count:16];
      }

      while (v16);
    }

    v20 = [MEMORY[0x277CBEB58] set];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v21 = [identifier orderedDisplayItemPlacementsInRegionWithIdentifier:@"systemUpdates"];
    v22 = [v21 countByEnumeratingWithState:&v31 objects:v48 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v32;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v32 != v24)
          {
            objc_enumerationMutation(v21);
          }

          identifier2 = [*(*(&v31 + 1) + 8 * j) identifier];
          v27 = [STUIStatusBarItem itemIdentifierForDisplayItemIdentifier:identifier2];
          [v20 addObject:v27];
        }

        v23 = [v21 countByEnumeratingWithState:&v31 objects:v48 count:16];
      }

      while (v23);
    }

    [v11 setDelayedItemIdentifiers:v20];
    [v11 setDelaysDependentItems:1];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)removalAnimationForDisplayItemWithIdentifier:(id)identifier itemAnimation:(id)animation
{
  v45 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  animationCopy = animation;
  v5 = +[STUIStatusBarBatteryItem chargingDisplayIdentifier];

  if (v5 == identifierCopy)
  {
    if (self && ![(STUIStatusBarVisualProvider_iOS *)self expanded])
    {
      batteryExpansionTimer = self->_batteryExpansionTimer;
      selfCopy2 = self;
      if (batteryExpansionTimer)
      {
        [(NSTimer *)batteryExpansionTimer invalidate];
        [(STUIStatusBarVisualProvider_Split *)self setBatteryExpansionTimer:0];
        selfCopy2 = self;
      }

      v41[0] = 0;
      v41[1] = v41;
      v41[2] = 0x4010000000;
      v41[3] = &unk_26C58BD13;
      v9 = *(MEMORY[0x277CBF3A0] + 16);
      v42 = *MEMORY[0x277CBF3A0];
      v43 = v9;
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __72__STUIStatusBarVisualProvider_Split__removalAnimationForBatteryCharging__block_invoke;
      v40[3] = &unk_279D39150;
      v40[4] = selfCopy2;
      v40[5] = v41;
      v10 = [STUIStatusBarAnimation animationWithBlock:v40];
      [v10 setPriority:200];
      [v10 setExclusivityGroupIdentifier:@"trailing"];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __72__STUIStatusBarVisualProvider_Split__removalAnimationForBatteryCharging__block_invoke_5;
      v39[3] = &unk_279D38588;
      v39[4] = v41;
      [v10 setPrepareBlock:v39];
      v38[0] = 0;
      v38[1] = v38;
      v38[2] = 0x3010000000;
      v38[4] = 0;
      v38[5] = 0;
      v38[3] = &unk_26C58BD13;
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __72__STUIStatusBarVisualProvider_Split__removalAnimationForBatteryCharging__block_invoke_6;
      v37[3] = &unk_279D39150;
      v37[5] = v38;
      v37[4] = self;
      v11 = [STUIStatusBarAnimation animationWithBlock:v37];
      [v11 setPriority:200];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __72__STUIStatusBarVisualProvider_Split__removalAnimationForBatteryCharging__block_invoke_9;
      v36[3] = &unk_279D38588;
      v36[4] = v38;
      [v11 setPrepareBlock:v36];
      v12 = +[STUIStatusBarBatteryItem iconDisplayIdentifier];
      [v10 addSubAnimation:v11 forDisplayItemWithIdentifier:v12];
      v26 = v11;
      _controlCenterGrabberAnimation = v10;

      v13 = [STUIStatusBarAnimation animationWithBlock:&__block_literal_global_145];
      [v13 setPriority:150];
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v14 = [(STUIStatusBarVisualProvider_Split *)self orderedDisplayItemPlacementsInRegionWithIdentifier:@"trailing"];
      v15 = [v14 countByEnumeratingWithState:&v32 objects:v44 count:16];
      if (v15)
      {
        v16 = *v33;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v33 != v16)
            {
              objc_enumerationMutation(v14);
            }

            identifier = [*(*(&v32 + 1) + 8 * i) identifier];
            v19 = [STUIStatusBarItem itemIdentifierForDisplayItemIdentifier:identifier];
            v20 = +[(STUIStatusBarItem *)STUIStatusBarBatteryItem];
            v21 = [v19 isEqual:v20];

            if ((v21 & 1) == 0)
            {
              [v10 addSubAnimation:v13 forDisplayItemWithIdentifier:identifier];
            }
          }

          v15 = [v14 countByEnumeratingWithState:&v32 objects:v44 count:16];
        }

        while (v15);
      }

      [v10 setDelaysDependentItems:1];
      v22 = MEMORY[0x277CBEB98];
      v23 = [(STUIStatusBarVisualProvider_Split *)self orderedDisplayItemPlacementsInRegionWithIdentifier:@"systemUpdates"];
      v24 = [v22 setWithArray:v23];
      [v10 setDelayedDisplayItemPlacements:v24];

      _Block_object_dispose(v38, 8);
      _Block_object_dispose(v41, 8);
    }

    else
    {
      _controlCenterGrabberAnimation = 0;
    }
  }

  else
  {
    v6 = +[STUIStatusBarControlCenterItem grabberIdentifier];

    if (v6 == identifierCopy)
    {
      _controlCenterGrabberAnimation = [(STUIStatusBarVisualProvider_Split *)self _controlCenterGrabberAnimation];
    }

    else if ([(STUIStatusBarVisualProvider_Split *)self _shouldShowSystemUpdateForDisplayItemWithIdentifier:identifierCopy])
    {
      _controlCenterGrabberAnimation = [(STUIStatusBarVisualProvider_Split *)self _systemUpdateAnimationForDisplayItemWithIdentifier:identifierCopy];
    }

    else
    {
      v31.receiver = self;
      v31.super_class = STUIStatusBarVisualProvider_Split;
      _controlCenterGrabberAnimation = [(STUIStatusBarVisualProvider_Phone *)&v31 removalAnimationForDisplayItemWithIdentifier:identifierCopy itemAnimation:animationCopy];
    }
  }

  return _controlCenterGrabberAnimation;
}

- (id)regionIdentifiersForPartWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqual:@"batteryPartIdentifier"])
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = @"trailing";
LABEL_5:
    v7 = [v5 setWithObject:v6];
    goto LABEL_19;
  }

  if ([identifierCopy isEqual:@"clockPartIdentifier"])
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = @"leading";
    goto LABEL_5;
  }

  if ([identifierCopy isEqual:@"leadingPartIdentifier"])
  {
    v8 = MEMORY[0x277CBEB98];
    v21 = @"expandedLowerLeading";
    v23 = 0;
    v9 = @"expandedLeading";
    v10 = @"bottomLeading";
LABEL_8:
    [v8 setWithObjects:{@"leading", v10, v9, v21, v23, v24}];
    v7 = LABEL_18:;
    goto LABEL_19;
  }

  if ([identifierCopy isEqual:@"trailingPartIdentifier"])
  {
    [MEMORY[0x277CBEB98] setWithObjects:{@"trailing", @"systemUpdates", @"controlCenter", @"expandedTrailing", @"expandedLowerTrailing", 0}];
    goto LABEL_18;
  }

  if ([identifierCopy isEqual:@"normalPartIdentifier"])
  {
    v8 = MEMORY[0x277CBEB98];
    v23 = @"bottomLeading";
    v24 = 0;
    v21 = @"controlCenter";
    v9 = @"systemUpdates";
    v10 = @"trailing";
    goto LABEL_8;
  }

  if ([identifierCopy isEqual:@"expandedPartIdentifier"])
  {
    goto LABEL_14;
  }

  if ([identifierCopy isEqual:@"expandedPartTopIdentifier"])
  {
LABEL_16:
    v11 = MEMORY[0x277CBEB98];
    v19 = 0;
    goto LABEL_17;
  }

  if ([identifierCopy isEqual:@"expandedBottomPartIdentifier"])
  {
    [MEMORY[0x277CBEB98] setWithObjects:{@"expandedLowerLeading", @"expandedLowerTrailing", 0, v20, v22, v24}];
    goto LABEL_18;
  }

  if ([identifierCopy isEqual:@"visibleExpandedPartIdentifier"])
  {
    statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    currentData = [statusBar currentData];
    secondaryCellularEntry = [currentData secondaryCellularEntry];
    if ([secondaryCellularEntry isEnabled])
    {
      statusBar2 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
      v18 = [statusBar2 orientation] - 1;

      if (v18 <= 1)
      {
LABEL_14:
        v11 = MEMORY[0x277CBEB98];
        v20 = @"expandedLowerTrailing";
        v22 = 0;
        v19 = @"expandedLowerLeading";
LABEL_17:
        [v11 setWithObjects:{@"expandedLeading", @"expandedTrailing", v19, v20, v22, v24}];
        goto LABEL_18;
      }
    }

    else
    {
    }

    goto LABEL_16;
  }

  v7 = [MEMORY[0x277CBEB98] set];
LABEL_19:
  v12 = v7;

  return v12;
}

- (void)updateDataForService:(id)service
{
  v10.receiver = self;
  v10.super_class = STUIStatusBarVisualProvider_Split;
  serviceCopy = service;
  [(STUIStatusBarVisualProvider_iOS *)&v10 updateDataForService:serviceCopy];
  cellularEntry = [serviceCopy cellularEntry];
  secondaryCellularEntry = [serviceCopy secondaryCellularEntry];

  if (secondaryCellularEntry)
  {
    -[STUIStatusBarDisplayItemPlacementGroup setEnabled:](self->_lowerWifiGroup, "setEnabled:", [secondaryCellularEntry type] != 0);
    if (cellularEntry)
    {
      goto LABEL_7;
    }

    statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    currentAggregatedData = [statusBar currentAggregatedData];
    cellularEntry = [currentAggregatedData cellularEntry];
  }

  else
  {
    if (!cellularEntry)
    {
      return;
    }

    statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    currentAggregatedData = [statusBar currentAggregatedData];
    secondaryCellularEntry = [currentAggregatedData secondaryCellularEntry];
  }

LABEL_7:
  if ([cellularEntry status] == 5 || (objc_msgSend(cellularEntry, "wifiCallingEnabled") & 1) != 0 || objc_msgSend(secondaryCellularEntry, "status") == 5)
  {
    wifiCallingEnabled = 1;
  }

  else
  {
    wifiCallingEnabled = [secondaryCellularEntry wifiCallingEnabled];
  }

  [(STUIStatusBarDisplayItemPlacement *)self->_serviceNamePlacement setEnabled:wifiCallingEnabled];
}

- (double)airplaneTravelOffsetInProposedPartWithIdentifier:(id *)identifier animationType:(int64_t)type
{
  expanded = [(STUIStatusBarVisualProvider_iOS *)self expanded];
  result = 20.0;
  if (expanded)
  {
    v9.receiver = self;
    v9.super_class = STUIStatusBarVisualProvider_Split;
    [(STUIStatusBarVisualProvider_iOS *)&v9 airplaneTravelOffsetInProposedPartWithIdentifier:identifier animationType:type, 20.0];
  }

  return result;
}

- (double)airplaneSpeedForAnimationType:(int64_t)type
{
  if ([(STUIStatusBarVisualProvider_iOS *)self expanded])
  {
    v6.receiver = self;
    v6.super_class = STUIStatusBarVisualProvider_Split;
    [(STUIStatusBarVisualProvider_iOS *)&v6 airplaneSpeedForAnimationType:type];
  }

  else
  {
    result = 60.0;
    if (type == 2)
    {
      return 100.0;
    }
  }

  return result;
}

- (double)airplaneShouldFadeForAnimationType:(int64_t)type
{
  expanded = [(STUIStatusBarVisualProvider_iOS *)self expanded];
  result = 0.0;
  if (expanded)
  {
    v7.receiver = self;
    v7.super_class = STUIStatusBarVisualProvider_Split;
    [(STUIStatusBarVisualProvider_iOS *)&v7 airplaneShouldFadeForAnimationType:type, 0.0];
  }

  return result;
}

- (double)airplaneObstacleFadeOutDuration
{
  if (![(STUIStatusBarVisualProvider_iOS *)self expanded])
  {
    return 0.15;
  }

  v4.receiver = self;
  v4.super_class = STUIStatusBarVisualProvider_Split;
  [(STUIStatusBarVisualProvider_iOS *)&v4 airplaneObstacleFadeOutDuration];
  return result;
}

- (id)animationForAirplaneMode
{
  v19 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = STUIStatusBarVisualProvider_Split;
  animationForAirplaneMode = [(STUIStatusBarVisualProvider_iOS *)&v17 animationForAirplaneMode];
  [animationForAirplaneMode setExclusivityGroupIdentifier:@"trailing"];
  v4 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(STUIStatusBarVisualProvider_Split *)self orderedDisplayItemPlacementsInRegionWithIdentifier:@"systemUpdates", 0];
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

        identifier = [*(*(&v13 + 1) + 8 * i) identifier];
        v11 = [STUIStatusBarItem itemIdentifierForDisplayItemIdentifier:identifier];
        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v7);
  }

  [animationForAirplaneMode setDelayedItemIdentifiers:v4];

  return animationForAirplaneMode;
}

- (id)animationForProminentLocation
{
  v12.receiver = self;
  v12.super_class = STUIStatusBarVisualProvider_Split;
  animationForProminentLocation = [(STUIStatusBarVisualProvider_iOS *)&v12 animationForProminentLocation];
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x4010000000;
  v9[3] = &unk_26C58BD13;
  v3 = *(MEMORY[0x277CBF3A0] + 16);
  v10 = *MEMORY[0x277CBF3A0];
  v11 = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__STUIStatusBarVisualProvider_Split_animationForProminentLocation__block_invoke;
  v8[3] = &unk_279D38560;
  v8[4] = v9;
  v4 = [STUIStatusBarAnimation animationWithBlock:v8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__STUIStatusBarVisualProvider_Split_animationForProminentLocation__block_invoke_4;
  v7[3] = &unk_279D38588;
  v7[4] = v9;
  [v4 setPrepareBlock:v7];
  [v4 setPriority:-300];
  v5 = +[STUIStatusBarTimeItem shortTimeDisplayIdentifier];
  [animationForProminentLocation addSubAnimation:v4 forDisplayItemWithIdentifier:v5];

  _Block_object_dispose(v9, 8);

  return animationForProminentLocation;
}

- (CGAffineTransform)_collapseChargingBoltTransformForDisplayItem:(void *)item
{
  v3 = result;
  if (a2)
  {
    view = [item view];
    if ([view _shouldReverseLayoutDirection])
    {
      v5 = -12.0;
    }

    else
    {
      v5 = 12.0;
    }

    *&v3->c = 0u;
    *&v3->tx = 0u;
    *&v3->a = 0u;
    CGAffineTransformMakeTranslation(v3, v5, 0.666666667);
    v6 = *&v3->c;
    *&v8.a = *&v3->a;
    *&v8.c = v6;
    *&v8.tx = *&v3->tx;
    result = CGAffineTransformScale(&v9, &v8, 0.1, 0.1);
    v7 = *&v9.c;
    *&v3->a = *&v9.a;
    *&v3->c = v7;
    *&v3->tx = *&v9.tx;
  }

  else
  {
    *&result->c = 0u;
    *&result->tx = 0u;
    *&result->a = 0u;
  }

  return result;
}

- (void)_resetBattery
{
  v32 = *MEMORY[0x277D85DE8];
  if (self)
  {
    statusBar = [self statusBar];
    v3 = +[STUIStatusBarBatteryItem chargingDisplayIdentifier];
    v4 = [statusBar displayItemWithIdentifier:v3];

    statusBar2 = [self statusBar];
    v6 = +[STUIStatusBarBatteryItem iconDisplayIdentifier];
    v7 = [statusBar2 displayItemWithIdentifier:v6];

    v21 = *(MEMORY[0x277CBF2C0] + 16);
    v28 = *MEMORY[0x277CBF2C0];
    v22 = v28;
    v29 = v21;
    v30 = *(MEMORY[0x277CBF2C0] + 32);
    v20 = v30;
    v23 = v4;
    [v4 setTransform:&v28];
    v28 = v22;
    v29 = v21;
    v30 = v20;
    [v7 setTransform:&v28];
    statusBar3 = [self statusBar];
    v9 = +[(STUIStatusBarItem *)STUIStatusBarBatteryItem];
    v10 = [statusBar3 itemWithIdentifier:v9];

    [v10 setHighlighted:0];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = [self orderedDisplayItemPlacementsInRegionWithIdentifier:@"trailing"];
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      do
      {
        v15 = 0;
        do
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v24 + 1) + 8 * v15);
          statusBar4 = [self statusBar];
          identifier = [v16 identifier];
          v19 = [statusBar4 displayItemWithIdentifier:identifier];

          [v19 setAlpha:1.0];
          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v24 objects:v31 count:16];
      }

      while (v13);
    }
  }
}

- (BOOL)_updateLowerRegionsWithData:(id)data
{
  dataCopy = data;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  secondaryCellularEntry = [dataCopy secondaryCellularEntry];
  if (secondaryCellularEntry)
  {
    statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    if ([secondaryCellularEntry isEnabled])
    {
      v7 = ([statusBar orientation] - 1) < 2;
    }

    else
    {
      v7 = 0;
    }

    v8 = [(STUIStatusBarVisualProvider_Split *)self regionIdentifiersForPartWithIdentifier:@"expandedBottomPartIdentifier"];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __65__STUIStatusBarVisualProvider_Split__updateLowerRegionsWithData___block_invoke;
    v12[3] = &unk_279D37F48;
    v9 = statusBar;
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

- (void)setExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  if ([(STUIStatusBarVisualProvider_iOS *)self expanded]!= expanded)
  {
    if (self)
    {
      batteryExpansionTimer = self->_batteryExpansionTimer;
      if (batteryExpansionTimer)
      {
        [(NSTimer *)batteryExpansionTimer invalidate];
        [(STUIStatusBarVisualProvider_Split *)self setBatteryExpansionTimer:0];
      }
    }

    if ([(STUIStatusBarVisualProvider_iOS *)self expanded])
    {
      pillRegionCoordinator = [(STUIStatusBarVisualProvider_Phone *)self pillRegionCoordinator];
      pillIconPlacement = [pillRegionCoordinator pillIconPlacement];
      [pillIconPlacement setEnabled:1];

      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __49__STUIStatusBarVisualProvider_Split_setExpanded___block_invoke;
      v10[3] = &unk_279D37F00;
      v10[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v10];
    }

    pillRegionCoordinator2 = [(STUIStatusBarVisualProvider_Phone *)self pillRegionCoordinator];
    [pillRegionCoordinator2 updatePill];

    v9.receiver = self;
    v9.super_class = STUIStatusBarVisualProvider_Split;
    [(STUIStatusBarVisualProvider_iOS *)&v9 setExpanded:expandedCopy];
  }
}

- (void)_updateExpandedConstraintsForAvoidanceFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (-[STUIStatusBarVisualProvider_iOS expanded](self, "expanded") && (-[STUIStatusBarVisualProvider_iOS statusBar](self, "statusBar"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 orientation] - 3, v8, v9 <= 1))
  {
    v27 = 0.0;
    v28 = 0.0;
    statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    [statusBar frame];
    MidX = CGRectGetMidX(v30);
    statusBar2 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    STUIStatusBarGetLeadingAndTrailingParts([statusBar2 _shouldReverseLayoutDirection], &v28, &v27, x, y, width, height, MidX);

    v13 = fmax(v28, v27);
    v14 = v13 > 0.0;
    if (v13 > 0.0)
    {
      [(STUIStatusBarVisualProvider_iOS *)self expandedItemSpacing];
      v28 = v15 + v28;
      [(STUIStatusBarVisualProvider_iOS *)self expandedItemSpacing];
      v27 = v16 + v27;
    }

    expandedTopMiddleConstraint = [(STUIStatusBarVisualProvider_Split *)self expandedTopMiddleConstraint];
    [expandedTopMiddleConstraint setActive:v14 ^ 1];

    expandedLeadingBannerConstraint = [(STUIStatusBarVisualProvider_Split *)self expandedLeadingBannerConstraint];
    [expandedLeadingBannerConstraint setActive:v14];

    v19 = -v28;
    expandedLeadingBannerConstraint2 = [(STUIStatusBarVisualProvider_Split *)self expandedLeadingBannerConstraint];
    [expandedLeadingBannerConstraint2 setConstant:v19];

    expandedTrailingBannerConstraint = [(STUIStatusBarVisualProvider_Split *)self expandedTrailingBannerConstraint];
    [expandedTrailingBannerConstraint setActive:v14];

    v22 = v27;
    expandedTrailingBannerConstraint2 = [(STUIStatusBarVisualProvider_Split *)self expandedTrailingBannerConstraint];
    [expandedTrailingBannerConstraint2 setConstant:v22];
  }

  else
  {
    expandedTopMiddleConstraint2 = [(STUIStatusBarVisualProvider_Split *)self expandedTopMiddleConstraint];
    [expandedTopMiddleConstraint2 setActive:1];

    expandedLeadingBannerConstraint3 = [(STUIStatusBarVisualProvider_Split *)self expandedLeadingBannerConstraint];
    [expandedLeadingBannerConstraint3 setActive:0];

    expandedTrailingBannerConstraint3 = [(STUIStatusBarVisualProvider_Split *)self expandedTrailingBannerConstraint];
    [expandedTrailingBannerConstraint3 setActive:0];
  }
}

- (id)defaultAnimationForDisplayItemWithIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = STUIStatusBarVisualProvider_Split;
  v4 = [(STUIStatusBarVisualProvider_iOS *)&v9 defaultAnimationForDisplayItemWithIdentifier:identifier];
  v5 = MEMORY[0x277CBEB98];
  v6 = [(STUIStatusBarVisualProvider_Split *)self orderedDisplayItemPlacementsInRegionWithIdentifier:@"systemUpdates"];
  v7 = [v5 setWithArray:v6];
  [v4 setDelayedDisplayItemPlacements:v7];

  return v4;
}

- (id)regionIdentifiersForBackgroundLumaView:(id)view
{
  viewCopy = view;
  leadingBackgroundLumaView = [(STUIStatusBarVisualProvider_Split *)self leadingBackgroundLumaView];

  if (leadingBackgroundLumaView == viewCopy)
  {
    [MEMORY[0x277CBEB98] setWithObjects:{@"leading", @"bottomLeading", 0, v10}];
  }

  else
  {
    trailingBackgroundLumaView = [(STUIStatusBarVisualProvider_Split *)self trailingBackgroundLumaView];

    if (trailingBackgroundLumaView != viewCopy)
    {
      v7 = [MEMORY[0x277CBEB98] set];
      goto LABEL_7;
    }

    [MEMORY[0x277CBEB98] setWithObjects:{@"trailing", @"systemUpdates", @"controlCenter", 0}];
  }
  v7 = ;
LABEL_7:
  v8 = v7;

  return v8;
}

@end