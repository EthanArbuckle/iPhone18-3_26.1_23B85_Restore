@interface _UIStatusBarCellularCondensedItem
+ (id)groupWithHighPriority:(int64_t)priority lowPriority:(int64_t)lowPriority typeClass:(Class)class allowDualNetwork:(BOOL)network;
- (BOOL)_animateServiceType:(int64_t)type prefixLength:(int64_t *)length currentType:(int64_t)currentType;
- (BOOL)_showCallFowardingForEntry:(id)entry;
- (BOOL)canEnableDisplayItem:(id)item fromData:(id)data;
- (_NSRange)_nonCondensedFontRangeForEntry:(id)entry;
- (_UIStatusBarCellularCondensedItem)initWithIdentifier:(id)identifier statusBar:(id)bar;
- (_UIStatusBarCellularNetworkTypeView)animatedNetworkTypeView;
- (_UIStatusBarDualCellularSignalView)dualSignalView;
- (_UIStatusBarEmergencySignalView)sosSignalView;
- (_UIStatusBarMultilineStringView)dualNameView;
- (_UIStatusBarStringView)dualSingleLineNameAndTypeView;
- (_UIStatusBarStringView)dualSingleLineNameView;
- (id)_fontForEntry:(id)entry styleAttributes:(id)attributes baselineOffset:(double *)offset;
- (id)_singleCellularEntryMatching:(id)matching;
- (id)_stringForCellularType:(int64_t)type;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)entryForDisplayItemWithIdentifier:(id)identifier;
- (id)viewForIdentifier:(id)identifier;
- (void)_create_animatedNetworkTypeView;
- (void)_create_dualNameView;
- (void)_create_dualSignalView;
- (void)_create_dualSingleLineNameAndTypeView;
- (void)_create_dualSingleLineNameView;
- (void)_create_sosSignalView;
- (void)applyStyleAttributes:(id)attributes toDisplayItem:(id)item;
- (void)prepareAnimation:(id)animation forDisplayItem:(id)item;
@end

@implementation _UIStatusBarCellularCondensedItem

- (_UIStatusBarCellularCondensedItem)initWithIdentifier:(id)identifier statusBar:(id)bar
{
  v6.receiver = self;
  v6.super_class = _UIStatusBarCellularCondensedItem;
  v4 = [(_UIStatusBarCellularItem *)&v6 initWithIdentifier:identifier statusBar:bar];
  [(_UIStatusBarCellularCondensedItem *)v4 setReducesFontSize:1];
  return v4;
}

- (BOOL)canEnableDisplayItem:(id)item fromData:(id)data
{
  dataCopy = data;
  itemCopy = item;
  identifier = [itemCopy identifier];
  dualSignalStrengthDisplayIdentifier = [objc_opt_class() dualSignalStrengthDisplayIdentifier];

  if (identifier == dualSignalStrengthDisplayIdentifier)
  {
    v14.receiver = self;
    v14.super_class = _UIStatusBarCellularCondensedItem;
    isEnabled = [(_UIStatusBarItem *)&v14 canEnableDisplayItem:itemCopy fromData:dataCopy];
  }

  else
  {
    identifier2 = [itemCopy identifier];

    v11 = [(_UIStatusBarCellularCondensedItem *)self entryForDisplayItemWithIdentifier:identifier2];
    isEnabled = [v11 isEnabled];
  }

  return isEnabled;
}

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  v195[2] = *MEMORY[0x1E69E9840];
  updateCopy = update;
  itemCopy = item;
  v183.receiver = self;
  v183.super_class = _UIStatusBarCellularCondensedItem;
  v171 = updateCopy;
  v169 = [(_UIStatusBarCellularItem *)&v183 applyUpdate:updateCopy toDisplayItem:itemCopy];
  identifier = [itemCopy identifier];
  v170 = [(_UIStatusBarCellularCondensedItem *)self entryForDisplayItemWithIdentifier:identifier];

  identifier2 = [itemCopy identifier];
  dualSignalStrengthDisplayIdentifier = [objc_opt_class() dualSignalStrengthDisplayIdentifier];
  LODWORD(updateCopy) = identifier2 == dualSignalStrengthDisplayIdentifier;

  if (updateCopy)
  {
    statusBar = [(_UIStatusBarItem *)self statusBar];
    currentAggregatedData = [statusBar currentAggregatedData];

    dualSignalView = [(_UIStatusBarCellularCondensedItem *)self dualSignalView];
    topSignalView = [dualSignalView topSignalView];
    cellularEntry = [currentAggregatedData cellularEntry];
    v37 = [(_UIStatusBarCellularItem *)self _updateSignalView:topSignalView withUpdate:v171 entry:cellularEntry forceShowingDisabledSignalBars:1];

    dualSignalView2 = [(_UIStatusBarCellularCondensedItem *)self dualSignalView];
    bottomSignalView = [dualSignalView2 bottomSignalView];
    secondaryCellularEntry = [currentAggregatedData secondaryCellularEntry];
    v41 = [(_UIStatusBarCellularItem *)self _updateSignalView:bottomSignalView withUpdate:v171 entry:secondaryCellularEntry forceShowingDisabledSignalBars:1];

    if ([v171 dataChanged])
    {
      [itemCopy setEnabled:v37 & v41];
    }

    goto LABEL_111;
  }

  identifier3 = [itemCopy identifier];
  dualNameDisplayIdentifier = [objc_opt_class() dualNameDisplayIdentifier];
  if (identifier3 == dualNameDisplayIdentifier)
  {
    goto LABEL_19;
  }

  identifier4 = [itemCopy identifier];
  dualSingleLineNameDisplayIdentifier = [objc_opt_class() dualSingleLineNameDisplayIdentifier];
  if (identifier4 == dualSingleLineNameDisplayIdentifier)
  {
LABEL_18:

LABEL_19:
LABEL_20:
    statusBar2 = [(_UIStatusBarItem *)self statusBar];
    currentAggregatedData = [statusBar2 currentAggregatedData];

    v179 = 0.0;
    v180 = &v179;
    v181 = 0x2020000000;
    v182 = 0;
    v43 = [(_UIStatusBarCellularCondensedItem *)self _singleCellularEntryMatching:&__block_literal_global_511];
    v178 = 0;
    if (v43)
    {
      v44 = 0;
      v45 = 0;
    }

    else
    {
      v174[0] = MEMORY[0x1E69E9820];
      v174[1] = 3221225472;
      v175 = __63___UIStatusBarCellularCondensedItem_applyUpdate_toDisplayItem___block_invoke_2;
      v176 = &unk_1E711FBD0;
      v177 = &v179;
      cellularEntry2 = [currentAggregatedData cellularEntry];
      v45 = __63___UIStatusBarCellularCondensedItem_applyUpdate_toDisplayItem___block_invoke_2(v174, cellularEntry2, &v178 + 1);

      statusBar2 = [currentAggregatedData secondaryCellularEntry];
      v44 = v175(v174, statusBar2, &v178);

      if ((v180[3] & 1) == 0 && [(__CFString *)v45 length]&& [(__CFString *)v44 length]&& ([(__CFString *)v45 isEqualToString:v44]& 1) == 0)
      {
        *(v180 + 24) = 1;
      }
    }

    isEnabled = [itemCopy isEnabled];
    if (isEnabled)
    {
      if (_UIInternalPreferencesRevisionOnce != -1)
      {
        dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
      }

      v48 = _UIInternalPreferencesRevisionVar;
      if (_UIInternalPreferencesRevisionVar < 1)
      {
        goto LABEL_31;
      }

      v148 = _UIInternalPreference_UIStatusBarShowBothDualCarrierNames;
      if (_UIInternalPreferencesRevisionVar == _UIInternalPreference_UIStatusBarShowBothDualCarrierNames)
      {
        goto LABEL_31;
      }

      while (v48 >= v148)
      {
        _UIInternalPreferenceSync(v48, &_UIInternalPreference_UIStatusBarShowBothDualCarrierNames, @"UIStatusBarShowBothDualCarrierNames", _UIInternalPreferenceUpdateBool);
        v49 = 0;
        v148 = _UIInternalPreference_UIStatusBarShowBothDualCarrierNames;
        if (v48 == _UIInternalPreference_UIStatusBarShowBothDualCarrierNames)
        {
          goto LABEL_32;
        }
      }

      if (!byte_1EA95E684)
      {
LABEL_31:
        v49 = 0;
      }

      else
      {
        v49 = *(v180 + 24);
      }

LABEL_32:
      statusBar2 = [itemCopy identifier];
      nameDisplayIdentifier = [objc_opt_class() nameDisplayIdentifier];
      v50 = v49 != (statusBar2 == nameDisplayIdentifier);
    }

    else
    {
      v50 = 0;
    }

    [itemCopy setEnabled:v50];
    if (isEnabled)
    {
    }

    if (*(v180 + 24) != 1 || ![itemCopy isEnabled])
    {
      goto LABEL_110;
    }

    identifier5 = [itemCopy identifier];
    nameDisplayIdentifier2 = [objc_opt_class() nameDisplayIdentifier];
    v53 = identifier5 == nameDisplayIdentifier2;

    if (v53)
    {
      if ((v178 & 0x100) != 0 || (v178 & 1) == 0)
      {
        if ([v170 type])
        {
          goto LABEL_110;
        }

        secondaryCellularEntry2 = [currentAggregatedData secondaryCellularEntry];
        v63 = [secondaryCellularEntry2 type] == 0;

        if (v63)
        {
          goto LABEL_110;
        }
      }

      serviceNameView = [(_UIStatusBarCellularItem *)self serviceNameView];
      [(__CFString *)serviceNameView setText:v44];
      secondaryCellularEntry3 = [currentAggregatedData secondaryCellularEntry];
      crossfadeString = [secondaryCellularEntry3 crossfadeString];
      [(__CFString *)serviceNameView setAlternateText:crossfadeString];
    }

    else
    {
      identifier6 = [itemCopy identifier];
      dualNameDisplayIdentifier2 = [objc_opt_class() dualNameDisplayIdentifier];
      v56 = identifier6 == dualNameDisplayIdentifier2;

      if (v56)
      {
        serviceNameView = [(_UIStatusBarCellularCondensedItem *)self dualNameView];
        stringViews = [(__CFString *)serviceNameView stringViews];
        firstObject = [stringViews firstObject];
        [firstObject setText:v45];

        stringViews2 = [(__CFString *)serviceNameView stringViews];
        firstObject2 = [stringViews2 firstObject];
        [firstObject2 setMarqueeRunning:1];

        stringViews3 = [(__CFString *)serviceNameView stringViews];
        lastObject = [stringViews3 lastObject];
        [lastObject setText:v44];

        secondaryCellularEntry3 = [(__CFString *)serviceNameView stringViews];
        crossfadeString = [secondaryCellularEntry3 lastObject];
        [crossfadeString setMarqueeRunning:1];
      }

      else
      {
        statusBar3 = [(_UIStatusBarItem *)self statusBar];
        effectiveUserInterfaceLayoutDirection = [statusBar3 effectiveUserInterfaceLayoutDirection];

        v58 = &stru_1EFB14550;
        if (v45)
        {
          v58 = v45;
        }

        v59 = v58;
        v163 = [(__CFString *)v59 length];
        if (v44 && [(__CFString *)v44 length])
        {
          if ([(__CFString *)v59 length])
          {
            if (effectiveUserInterfaceLayoutDirection)
            {
              v60 = v44;
            }

            else
            {
              v60 = v59;
            }

            if (effectiveUserInterfaceLayoutDirection)
            {
              v61 = v59;
            }

            else
            {
              v61 = v44;
            }

            serviceNameView = [(__CFString *)v60 stringByAppendingFormat:@" • %@", v61];
          }

          else
          {
            serviceNameView = v44;

            v163 = [(__CFString *)serviceNameView length];
          }
        }

        else
        {
          serviceNameView = v59;
        }

        identifier7 = [itemCopy identifier];
        dualSingleLineNameDisplayIdentifier2 = [objc_opt_class() dualSingleLineNameDisplayIdentifier];
        v75 = identifier7 == dualSingleLineNameDisplayIdentifier2;

        if (v75)
        {
          dualSingleLineNameView = [(_UIStatusBarCellularCondensedItem *)self dualSingleLineNameView];
          [dualSingleLineNameView setText:serviceNameView];

          secondaryCellularEntry3 = [(_UIStatusBarCellularCondensedItem *)self dualSingleLineNameView];
          [secondaryCellularEntry3 setMarqueeRunning:1];
LABEL_108:

          goto LABEL_109;
        }

        identifier8 = [itemCopy identifier];
        dualSingleLineNameAndTypeDisplayIdentifier = [objc_opt_class() dualSingleLineNameAndTypeDisplayIdentifier];
        v78 = identifier8 == dualSingleLineNameAndTypeDisplayIdentifier;

        if (!v78)
        {
LABEL_109:

LABEL_110:
          _Block_object_dispose(&v179, 8);
LABEL_111:

          goto LABEL_112;
        }

        styleAttributes = [v171 styleAttributes];
        secondaryCellularEntry3 = [styleAttributes copy];

        dualSingleLineNameAndTypeView = [(_UIStatusBarCellularCondensedItem *)self dualSingleLineNameAndTypeView];
        v154 = [secondaryCellularEntry3 fontForStyle:{objc_msgSend(dualSingleLineNameAndTypeView, "fontStyle")}];

        textColor = [secondaryCellularEntry3 textColor];
        v82 = *off_1E70EC920;
        v149 = *off_1E70EC918;
        v194[0] = *off_1E70EC918;
        v194[1] = v82;
        v195[0] = v154;
        v195[1] = textColor;
        v153 = textColor;
        v155 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v195 forKeys:v194 count:2];
        v157 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:serviceNameView attributes:v155];
        v83 = -[_UIStatusBarCellularCondensedItem _stringForCellularType:](self, "_stringForCellularType:", [v170 type]);
        if (v83 || ([currentAggregatedData secondaryCellularEntry], v84 = objc_claimAutoreleasedReturnValue(), -[_UIStatusBarCellularCondensedItem _stringForCellularType:](self, "_stringForCellularType:", objc_msgSend(v84, "type")), v85 = objc_claimAutoreleasedReturnValue(), v84, v163 = objc_msgSend(v157, "length"), (v83 = v85) != 0))
        {
          v152 = v83;
          if ([v83 length])
          {
            v173 = 0.0;
            v151 = [(_UIStatusBarCellularCondensedItem *)self _fontForEntry:v170 styleAttributes:secondaryCellularEntry3 baselineOffset:&v173];
            v86 = objc_alloc(MEMORY[0x1E696AAB0]);
            v192[0] = v149;
            v192[1] = v82;
            v193[0] = v151;
            v193[1] = v153;
            v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v193 forKeys:v192 count:2];
            v150 = [v86 initWithString:v152 attributes:v87];

            if (effectiveUserInterfaceLayoutDirection)
            {
              v163 = [v157 length] - v163;
            }

            v88 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" " attributes:v155];
            [v157 insertAttributedString:v88 atIndex:v163];

            [v157 insertAttributedString:v150 atIndex:v163 + (effectiveUserInterfaceLayoutDirection == 0)];
          }
        }

        else
        {
          v152 = 0;
        }

        dualSingleLineNameAndTypeView2 = [(_UIStatusBarCellularCondensedItem *)self dualSingleLineNameAndTypeView];
        [dualSingleLineNameAndTypeView2 setAttributedText:v157];

        dualSingleLineNameAndTypeView3 = [(_UIStatusBarCellularCondensedItem *)self dualSingleLineNameAndTypeView];
        [dualSingleLineNameAndTypeView3 setMarqueeRunning:1];

        crossfadeString = v154;
      }
    }

    goto LABEL_108;
  }

  identifier9 = [itemCopy identifier];
  dualSingleLineNameAndTypeDisplayIdentifier2 = [objc_opt_class() dualSingleLineNameAndTypeDisplayIdentifier];
  v18 = dualSingleLineNameAndTypeDisplayIdentifier2;
  if (identifier9 == dualSingleLineNameAndTypeDisplayIdentifier2)
  {

    goto LABEL_18;
  }

  nameDisplayIdentifier = [itemCopy identifier];
  nameDisplayIdentifier3 = [objc_opt_class() nameDisplayIdentifier];
  v20 = nameDisplayIdentifier == nameDisplayIdentifier3;

  if (v20)
  {
    goto LABEL_20;
  }

  identifier10 = [itemCopy identifier];
  typeDisplayIdentifier = [objc_opt_class() typeDisplayIdentifier];
  v23 = identifier10 == typeDisplayIdentifier;

  if (v23)
  {
    if ([itemCopy isEnabled] && ((objc_msgSend(v171, "styleAttributesChanged") & 1) != 0 || objc_msgSend(v171, "dataChanged")))
    {
      styleAttributes2 = [v171 styleAttributes];
      currentAggregatedData = [styleAttributes2 copy];

      v179 = 0.0;
      v67 = [(_UIStatusBarCellularCondensedItem *)self _fontForEntry:v170 styleAttributes:currentAggregatedData baselineOffset:&v179];
      v68 = v179;
      [itemCopy baselineOffset];
      if (v68 != v69)
      {
        [itemCopy setBaselineOffset:v179];
        region = [itemCopy region];
        layout = [region layout];
        [layout invalidate];
      }

      [currentAggregatedData setFont:v67];
      v167 = [(_UIStatusBarCellularCondensedItem *)self _nonCondensedFontRangeForEntry:v170];
      v161 = v72;
      if (v167 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v172.receiver = self;
        v172.super_class = _UIStatusBarCellularCondensedItem;
        [(_UIStatusBarItem *)&v172 applyStyleAttributes:currentAggregatedData toDisplayItem:itemCopy];
      }

      else
      {
        v107 = objc_alloc(MEMORY[0x1E696AD40]);
        networkTypeView = [(_UIStatusBarCellularItem *)self networkTypeView];
        text = [networkTypeView text];
        v110 = *off_1E70EC918;
        v191[0] = v67;
        v111 = *off_1E70EC920;
        v158 = v110;
        v190[0] = v110;
        v190[1] = v111;
        textColor2 = [currentAggregatedData textColor];
        v191[1] = textColor2;
        v113 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v191 forKeys:v190 count:2];
        v164 = [v107 initWithString:text attributes:v113];

        fontDescriptor = [v67 fontDescriptor];
        v115 = [fontDescriptor fontDescriptorWithSymbolicTraits:0];
        [v67 pointSize];
        v116 = [off_1E70ECC18 fontWithDescriptor:v115 size:?];

        v188[1] = v111;
        v189[0] = v116;
        v188[0] = v158;
        textColor3 = [currentAggregatedData textColor];
        v189[1] = textColor3;
        v118 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v189 forKeys:v188 count:2];
        [v164 setAttributes:v118 range:{v167, v161}];

        networkTypeView2 = [(_UIStatusBarCellularItem *)self networkTypeView];
        [networkTypeView2 setAttributedText:v164];
      }

      goto LABEL_111;
    }

    goto LABEL_112;
  }

  identifier11 = [itemCopy identifier];
  animatedTypeDisplayIdentifier = [objc_opt_class() animatedTypeDisplayIdentifier];
  v26 = identifier11 == animatedTypeDisplayIdentifier;

  if (v26)
  {
    if (!v170)
    {
      goto LABEL_112;
    }

    if ([v170 isEnabled])
    {
      currentAggregatedData = -[_UIStatusBarCellularCondensedItem _stringForCellularType:](self, "_stringForCellularType:", [v170 type]);
      isEnabled2 = [itemCopy isEnabled];
      if (currentAggregatedData)
      {
        v96 = isEnabled2;
      }

      else
      {
        v96 = 0;
      }

      if (v96 == 1)
      {
        v97 = [v170 isBootstrapCellular] ^ 1;
LABEL_91:
        [itemCopy setEnabled:v97];
        if ([itemCopy isEnabled] && ((objc_msgSend(v171, "styleAttributesChanged") & 1) != 0 || objc_msgSend(v171, "dataChanged")))
        {
          typeStringProvider = [(_UIStatusBarCellularItem *)self typeStringProvider];

          if (typeStringProvider)
          {
            typeStringProvider2 = [(_UIStatusBarCellularItem *)self typeStringProvider];
            [typeStringProvider2 animatedTypeDisplayItemSpacingFactorForCellularType:{objc_msgSend(v170, "type")}];
            v106 = v105;
          }

          else
          {
            v106 = 1.0;
          }

          animatedNetworkTypeView = [(_UIStatusBarCellularCondensedItem *)self animatedNetworkTypeView];
          styleAttributes3 = [v171 styleAttributes];
          +[_UIStatusBarWifiSignalView widthForIconSize:](_UIStatusBarWifiSignalView, "widthForIconSize:", [styleAttributes3 iconSize]);
          [animatedNetworkTypeView setFixedWidth:v106 * v122];

          v179 = NAN;
          type = [v170 type];
          animatedNetworkTypeView2 = [(_UIStatusBarCellularCondensedItem *)self animatedNetworkTypeView];
          v165 = -[_UIStatusBarCellularCondensedItem _animateServiceType:prefixLength:currentType:](self, "_animateServiceType:prefixLength:currentType:", type, &v179, [animatedNetworkTypeView2 type]);

          styleAttributes4 = [v171 styleAttributes];
          v126 = [styleAttributes4 copy];

          v173 = 0.0;
          v168 = [(_UIStatusBarCellularCondensedItem *)self _fontForEntry:v170 styleAttributes:v126 baselineOffset:&v173];
          v127 = v173;
          [itemCopy baselineOffset];
          if (v127 != v128)
          {
            [itemCopy setBaselineOffset:v173];
            region2 = [itemCopy region];
            layout2 = [region2 layout];
            [layout2 invalidate];
          }

          [v126 setFont:v168];
          v131 = [(_UIStatusBarCellularCondensedItem *)self _nonCondensedFontRangeForEntry:v170];
          v162 = v132;
          v133 = v131;
          if (v131 == 0x7FFFFFFFFFFFFFFFLL)
          {
            animatedNetworkTypeView3 = [(_UIStatusBarCellularCondensedItem *)self animatedNetworkTypeView];
            [animatedNetworkTypeView3 setText:currentAggregatedData prefixLength:*&v179 withStyleAttributes:v126 forType:objc_msgSend(v170 animated:{"type"), v165}];
          }

          else
          {
            v135 = objc_alloc(MEMORY[0x1E696AD40]);
            v136 = *off_1E70EC918;
            v187[0] = v168;
            v137 = *off_1E70EC920;
            v156 = v136;
            v186[0] = v136;
            v186[1] = v137;
            textColor4 = [v126 textColor];
            v187[1] = textColor4;
            v139 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v187 forKeys:v186 count:2];
            animatedNetworkTypeView3 = [v135 initWithString:currentAggregatedData attributes:v139];

            fontDescriptor2 = [v168 fontDescriptor];
            v141 = [fontDescriptor2 fontDescriptorWithSymbolicTraits:0];
            [v168 pointSize];
            v159 = [off_1E70ECC18 fontWithDescriptor:v141 size:?];

            v184[1] = v137;
            v185[0] = v159;
            v184[0] = v156;
            textColor5 = [v126 textColor];
            v185[1] = textColor5;
            v143 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v185 forKeys:v184 count:2];
            [animatedNetworkTypeView3 setAttributes:v143 range:{v133, v162}];

            animatedNetworkTypeView4 = [(_UIStatusBarCellularCondensedItem *)self animatedNetworkTypeView];
            [animatedNetworkTypeView4 setAttributedText:animatedNetworkTypeView3 prefixLength:*&v179 forType:objc_msgSend(v170 animated:{"type"), v165}];
          }
        }

        goto LABEL_111;
      }
    }

    else
    {
      [itemCopy isEnabled];
      currentAggregatedData = 0;
    }

    v97 = 0;
    goto LABEL_91;
  }

  identifier12 = [itemCopy identifier];
  sosSignalStrengthDisplayIdentifier = [objc_opt_class() sosSignalStrengthDisplayIdentifier];
  v29 = identifier12 == sosSignalStrengthDisplayIdentifier;

  if (v170)
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  if (v30)
  {
    v31 = [itemCopy isEnabled] && objc_msgSend(v170, "showsSOSWhenDisabled") && (objc_msgSend(v170, "status") == 1);
    [itemCopy setEnabled:v31];
    if ([itemCopy isEnabled])
    {
      sosSignalView = [(_UIStatusBarCellularCondensedItem *)self sosSignalView];
      signalView = [sosSignalView signalView];
      [(_UIStatusBarCellularItem *)self _updateSignalView:signalView withUpdate:v171 entry:v170 forceShowingDisabledSignalBars:1];

      if ([v170 sosAvailable])
      {
        v101 = 1.0;
      }

      else
      {
        v101 = 0.3;
      }

      currentAggregatedData = [(_UIStatusBarCellularCondensedItem *)self sosSignalView];
      sosView = [currentAggregatedData sosView];
      [sosView setAlpha:v101];

      goto LABEL_111;
    }
  }

LABEL_112:

  return v169;
}

- (void)applyStyleAttributes:(id)attributes toDisplayItem:(id)item
{
  attributesCopy = attributes;
  itemCopy = item;
  identifier = [itemCopy identifier];
  typeDisplayIdentifier = [objc_opt_class() typeDisplayIdentifier];
  if (identifier == typeDisplayIdentifier)
  {
    goto LABEL_6;
  }

  identifier2 = [itemCopy identifier];
  animatedTypeDisplayIdentifier = [objc_opt_class() animatedTypeDisplayIdentifier];
  v12 = animatedTypeDisplayIdentifier;
  if (identifier2 == animatedTypeDisplayIdentifier)
  {

LABEL_6:
    goto LABEL_7;
  }

  identifier3 = [itemCopy identifier];
  dualSingleLineNameAndTypeDisplayIdentifier = [objc_opt_class() dualSingleLineNameAndTypeDisplayIdentifier];

  if (identifier3 != dualSingleLineNameAndTypeDisplayIdentifier)
  {
    v15.receiver = self;
    v15.super_class = _UIStatusBarCellularCondensedItem;
    [(_UIStatusBarItem *)&v15 applyStyleAttributes:attributesCopy toDisplayItem:itemCopy];
  }

LABEL_7:
}

- (id)_stringForCellularType:(int64_t)type
{
  typeStringProvider = [(_UIStatusBarCellularItem *)self typeStringProvider];

  if (!typeStringProvider || (-[_UIStatusBarCellularItem typeStringProvider](self, "typeStringProvider"), v6 = objc_claimAutoreleasedReturnValue(), [v6 stringForCellularType:type condensed:1], v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    if (type == 7)
    {
      v8 = @"5GE[condensed]";
      v9 = @"5G  ᴇ";
    }

    else
    {
      if (type == 3)
      {
        v8 = @"E";
      }

      else
      {
        if (type != 2)
        {
LABEL_11:
          v11.receiver = self;
          v11.super_class = _UIStatusBarCellularCondensedItem;
          v7 = [(_UIStatusBarCellularItem *)&v11 _stringForCellularType:type];
          goto LABEL_12;
        }

        v8 = @"G";
      }

      v9 = v8;
    }

    v7 = _UINSLocalizedStringWithDefaultValue(v8, v9);
    if (v7)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_12:

  return v7;
}

- (id)_fontForEntry:(id)entry styleAttributes:(id)attributes baselineOffset:(double *)offset
{
  entryCopy = entry;
  smallFont = [attributes smallFont];
  typeStringProvider = [(_UIStatusBarCellularItem *)self typeStringProvider];

  v11 = smallFont;
  if (typeStringProvider)
  {
    typeStringProvider2 = [(_UIStatusBarCellularItem *)self typeStringProvider];
    v11 = [typeStringProvider2 condensedFontForCellularType:objc_msgSend(entryCopy defaultFont:"type") baselineOffset:{smallFont, offset}];
  }

  return v11;
}

- (_NSRange)_nonCondensedFontRangeForEntry:(id)entry
{
  type = [entry type];
  v4 = (type & 0xFFFFFFFFFFFFFFFELL) == 12;
  if ((type & 0xFFFFFFFFFFFFFFFELL) == 0xC)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  result.length = v4;
  result.location = v5;
  return result;
}

- (id)_singleCellularEntryMatching:(id)matching
{
  matchingCopy = matching;
  statusBar = [(_UIStatusBarItem *)self statusBar];
  currentAggregatedData = [statusBar currentAggregatedData];

  cellularEntry = [currentAggregatedData cellularEntry];
  if (matchingCopy[2](matchingCopy, cellularEntry))
  {
    secondaryCellularEntry = [currentAggregatedData secondaryCellularEntry];
    v9 = matchingCopy[2](matchingCopy, secondaryCellularEntry);

    if ((v9 & 1) == 0)
    {
      cellularEntry2 = [currentAggregatedData cellularEntry];
LABEL_9:
      v14 = cellularEntry2;
      goto LABEL_11;
    }
  }

  else
  {
  }

  cellularEntry3 = [currentAggregatedData cellularEntry];
  if (matchingCopy[2](matchingCopy, cellularEntry3))
  {
  }

  else
  {
    secondaryCellularEntry2 = [currentAggregatedData secondaryCellularEntry];
    v13 = matchingCopy[2](matchingCopy, secondaryCellularEntry2);

    if (v13)
    {
      cellularEntry2 = [currentAggregatedData secondaryCellularEntry];
      goto LABEL_9;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (BOOL)_showCallFowardingForEntry:(id)entry
{
  entryCopy = entry;
  statusBar = [(_UIStatusBarItem *)self statusBar];
  currentAggregatedData = [statusBar currentAggregatedData];
  secondaryCellularEntry = [currentAggregatedData secondaryCellularEntry];

  LOBYTE(statusBar) = [entryCopy callForwardingEnabled];
  if (statusBar)
  {
    callForwardingEnabled = 1;
  }

  else
  {
    callForwardingEnabled = [secondaryCellularEntry callForwardingEnabled];
  }

  return callForwardingEnabled;
}

- (BOOL)_animateServiceType:(int64_t)type prefixLength:(int64_t *)length currentType:(int64_t)currentType
{
  if ((type - 11) >= 3)
  {
    return type == 10 && (currentType - 11) < 3;
  }

  if (length)
  {
    *length = 2;
  }

  return currentType == 10;
}

- (void)prepareAnimation:(id)animation forDisplayItem:(id)item
{
  animationCopy = animation;
  itemCopy = item;
  if ([animationCopy type] != 1)
  {
    goto LABEL_11;
  }

  identifier = [itemCopy identifier];
  dualSingleLineNameDisplayIdentifier = [objc_opt_class() dualSingleLineNameDisplayIdentifier];

  if (identifier == dualSingleLineNameDisplayIdentifier)
  {
    dualSingleLineNameView = [(_UIStatusBarCellularCondensedItem *)self dualSingleLineNameView];
LABEL_6:
    dualNameView = dualSingleLineNameView;
    if (dualSingleLineNameView)
    {
      [dualSingleLineNameView setMarqueeRunning:0];
      v14 = v24;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v15 = __69___UIStatusBarCellularCondensedItem_prepareAnimation_forDisplayItem___block_invoke;
LABEL_10:
      v14[2] = v15;
      v14[3] = &unk_1E70F5DB8;
      v14[4] = dualNameView;
      v22 = dualNameView;
      [animationCopy addCompletionHandler:v14];

      goto LABEL_11;
    }

    goto LABEL_8;
  }

  identifier2 = [itemCopy identifier];
  dualSingleLineNameAndTypeDisplayIdentifier = [objc_opt_class() dualSingleLineNameAndTypeDisplayIdentifier];

  if (identifier2 == dualSingleLineNameAndTypeDisplayIdentifier)
  {
    dualSingleLineNameView = [(_UIStatusBarCellularCondensedItem *)self dualSingleLineNameAndTypeView];
    goto LABEL_6;
  }

LABEL_8:
  identifier3 = [itemCopy identifier];
  dualNameDisplayIdentifier = [objc_opt_class() dualNameDisplayIdentifier];

  if (identifier3 == dualNameDisplayIdentifier)
  {
    dualNameView = [(_UIStatusBarCellularCondensedItem *)self dualNameView];
    stringViews = [dualNameView stringViews];
    firstObject = [stringViews firstObject];
    [firstObject setMarqueeRunning:0];

    stringViews2 = [dualNameView stringViews];
    lastObject = [stringViews2 lastObject];
    [lastObject setMarqueeRunning:0];

    v14 = v23;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v15 = __69___UIStatusBarCellularCondensedItem_prepareAnimation_forDisplayItem___block_invoke_2;
    goto LABEL_10;
  }

LABEL_11:
}

- (id)entryForDisplayItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(_UIStatusBarCellularCondensedItem *)self _singleCellularEntryMatching:&__block_literal_global_236_0];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    goto LABEL_13;
  }

  typeDisplayIdentifier = [objc_opt_class() typeDisplayIdentifier];
  if (typeDisplayIdentifier == identifierCopy)
  {
    goto LABEL_8;
  }

  animatedTypeDisplayIdentifier = [objc_opt_class() animatedTypeDisplayIdentifier];
  v10 = animatedTypeDisplayIdentifier;
  if (animatedTypeDisplayIdentifier == identifierCopy)
  {

LABEL_8:
    goto LABEL_9;
  }

  nameDisplayIdentifier = [objc_opt_class() nameDisplayIdentifier];

  if (nameDisplayIdentifier == identifierCopy)
  {
LABEL_9:
    v7 = [(_UIStatusBarCellularCondensedItem *)self _singleCellularEntryMatching:&__block_literal_global_238];
    if (v7)
    {
      goto LABEL_13;
    }
  }

  nameDisplayIdentifier2 = [objc_opt_class() nameDisplayIdentifier];

  if (nameDisplayIdentifier2 != identifierCopy || ([(_UIStatusBarCellularCondensedItem *)self _singleCellularEntryMatching:&__block_literal_global_240], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v15.receiver = self;
    v15.super_class = _UIStatusBarCellularCondensedItem;
    v7 = [(_UIStatusBarCellularItem *)&v15 entryForDisplayItemWithIdentifier:identifierCopy];
  }

LABEL_13:
  v13 = v7;

  return v13;
}

- (_UIStatusBarDualCellularSignalView)dualSignalView
{
  dualSignalView = self->_dualSignalView;
  if (!dualSignalView)
  {
    [(_UIStatusBarCellularCondensedItem *)self _create_dualSignalView];
    dualSignalView = self->_dualSignalView;
  }

  return dualSignalView;
}

- (void)_create_dualSignalView
{
  v3 = [_UIStatusBarDualCellularSignalView alloc];
  v4 = [(_UIStatusBarDualCellularSignalView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  dualSignalView = self->_dualSignalView;
  self->_dualSignalView = v4;

  topSignalView = [(_UIStatusBarDualCellularSignalView *)self->_dualSignalView topSignalView];
  [topSignalView setNumberOfBars:4];

  bottomSignalView = [(_UIStatusBarDualCellularSignalView *)self->_dualSignalView bottomSignalView];
  [bottomSignalView setNumberOfBars:4];
}

- (_UIStatusBarMultilineStringView)dualNameView
{
  dualNameView = self->_dualNameView;
  if (!dualNameView)
  {
    [(_UIStatusBarCellularCondensedItem *)self _create_dualNameView];
    dualNameView = self->_dualNameView;
  }

  return dualNameView;
}

- (void)_create_dualNameView
{
  v3 = [_UIStatusBarMultilineStringView alloc];
  v4 = [(_UIStatusBarMultilineStringView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  dualNameView = self->_dualNameView;
  self->_dualNameView = v4;

  [(_UIStatusBarMultilineStringView *)self->_dualNameView setNumberOfLines:2];
  stringViews = [(_UIStatusBarMultilineStringView *)self->_dualNameView stringViews];
  firstObject = [stringViews firstObject];

  [firstObject setTextAlignment:1];
  [firstObject setFontStyle:2];
  [firstObject setMarqueeEnabled:1];
  stringViews2 = [(_UIStatusBarMultilineStringView *)self->_dualNameView stringViews];
  lastObject = [stringViews2 lastObject];

  [lastObject setTextAlignment:1];
  [lastObject setFontStyle:2];
  [lastObject setMarqueeEnabled:1];
}

- (_UIStatusBarStringView)dualSingleLineNameView
{
  dualSingleLineNameView = self->_dualSingleLineNameView;
  if (!dualSingleLineNameView)
  {
    [(_UIStatusBarCellularCondensedItem *)self _create_dualSingleLineNameView];
    dualSingleLineNameView = self->_dualSingleLineNameView;
  }

  return dualSingleLineNameView;
}

- (void)_create_dualSingleLineNameView
{
  v3 = [_UIStatusBarStringView alloc];
  v4 = [(_UIStatusBarStringView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  dualSingleLineNameView = self->_dualSingleLineNameView;
  self->_dualSingleLineNameView = v4;

  [(UILabel *)self->_dualSingleLineNameView setNumberOfLines:1];
  [(_UIStatusBarStringView *)self->_dualSingleLineNameView setFontStyle:0];
  [(UILabel *)self->_dualSingleLineNameView setMarqueeEnabled:1];
  v6 = self->_dualSingleLineNameView;
  LODWORD(v7) = 1132068864;

  [(UIView *)v6 setContentCompressionResistancePriority:0 forAxis:v7];
}

- (_UIStatusBarStringView)dualSingleLineNameAndTypeView
{
  dualSingleLineNameAndTypeView = self->_dualSingleLineNameAndTypeView;
  if (!dualSingleLineNameAndTypeView)
  {
    [(_UIStatusBarCellularCondensedItem *)self _create_dualSingleLineNameAndTypeView];
    dualSingleLineNameAndTypeView = self->_dualSingleLineNameAndTypeView;
  }

  return dualSingleLineNameAndTypeView;
}

- (void)_create_dualSingleLineNameAndTypeView
{
  v3 = [_UIStatusBarStringView alloc];
  v4 = [(_UIStatusBarStringView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  dualSingleLineNameAndTypeView = self->_dualSingleLineNameAndTypeView;
  self->_dualSingleLineNameAndTypeView = v4;

  [(UILabel *)self->_dualSingleLineNameAndTypeView setNumberOfLines:1];
  [(_UIStatusBarStringView *)self->_dualSingleLineNameAndTypeView setFontStyle:0];
  [(UILabel *)self->_dualSingleLineNameAndTypeView setMarqueeEnabled:1];
  v6 = self->_dualSingleLineNameAndTypeView;
  LODWORD(v7) = 1132068864;

  [(UIView *)v6 setContentCompressionResistancePriority:0 forAxis:v7];
}

- (_UIStatusBarEmergencySignalView)sosSignalView
{
  sosSignalView = self->_sosSignalView;
  if (!sosSignalView)
  {
    [(_UIStatusBarCellularCondensedItem *)self _create_sosSignalView];
    sosSignalView = self->_sosSignalView;
  }

  return sosSignalView;
}

- (void)_create_sosSignalView
{
  v3 = [_UIStatusBarEmergencySignalView alloc];
  v4 = [(_UIStatusBarEmergencySignalView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  sosSignalView = self->_sosSignalView;
  self->_sosSignalView = v4;

  signalView = [(_UIStatusBarEmergencySignalView *)self->_sosSignalView signalView];
  [signalView setNumberOfBars:4];
}

- (_UIStatusBarCellularNetworkTypeView)animatedNetworkTypeView
{
  animatedNetworkTypeView = self->_animatedNetworkTypeView;
  if (!animatedNetworkTypeView)
  {
    [(_UIStatusBarCellularCondensedItem *)self _create_animatedNetworkTypeView];
    animatedNetworkTypeView = self->_animatedNetworkTypeView;
  }

  return animatedNetworkTypeView;
}

- (void)_create_animatedNetworkTypeView
{
  v3 = [_UIStatusBarCellularNetworkTypeView alloc];
  v4 = [(_UIStatusBarCellularNetworkTypeView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  animatedNetworkTypeView = self->_animatedNetworkTypeView;
  self->_animatedNetworkTypeView = v4;
}

- (id)viewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dualSignalStrengthDisplayIdentifier = [objc_opt_class() dualSignalStrengthDisplayIdentifier];

  if (dualSignalStrengthDisplayIdentifier == identifierCopy)
  {
    dualSignalView = [(_UIStatusBarCellularCondensedItem *)self dualSignalView];
  }

  else
  {
    dualNameDisplayIdentifier = [objc_opt_class() dualNameDisplayIdentifier];

    if (dualNameDisplayIdentifier == identifierCopy)
    {
      dualSignalView = [(_UIStatusBarCellularCondensedItem *)self dualNameView];
    }

    else
    {
      dualSingleLineNameDisplayIdentifier = [objc_opt_class() dualSingleLineNameDisplayIdentifier];

      if (dualSingleLineNameDisplayIdentifier == identifierCopy)
      {
        dualSignalView = [(_UIStatusBarCellularCondensedItem *)self dualSingleLineNameView];
      }

      else
      {
        dualSingleLineNameAndTypeDisplayIdentifier = [objc_opt_class() dualSingleLineNameAndTypeDisplayIdentifier];

        if (dualSingleLineNameAndTypeDisplayIdentifier == identifierCopy)
        {
          dualSignalView = [(_UIStatusBarCellularCondensedItem *)self dualSingleLineNameAndTypeView];
        }

        else
        {
          animatedTypeDisplayIdentifier = [objc_opt_class() animatedTypeDisplayIdentifier];

          if (animatedTypeDisplayIdentifier == identifierCopy)
          {
            dualSignalView = [(_UIStatusBarCellularCondensedItem *)self animatedNetworkTypeView];
          }

          else
          {
            sosSignalStrengthDisplayIdentifier = [objc_opt_class() sosSignalStrengthDisplayIdentifier];

            if (sosSignalStrengthDisplayIdentifier == identifierCopy)
            {
              dualSignalView = [(_UIStatusBarCellularCondensedItem *)self sosSignalView];
            }

            else
            {
              v14.receiver = self;
              v14.super_class = _UIStatusBarCellularCondensedItem;
              dualSignalView = [(_UIStatusBarCellularItem *)&v14 viewForIdentifier:identifierCopy];
            }
          }
        }
      }
    }
  }

  v12 = dualSignalView;

  return v12;
}

+ (id)groupWithHighPriority:(int64_t)priority lowPriority:(int64_t)lowPriority typeClass:(Class)class allowDualNetwork:(BOOL)network
{
  v54[1] = *MEMORY[0x1E69E9840];
  if (network)
  {
    v7 = priority - lowPriority;
    v48.receiver = self;
    v48.super_class = &OBJC_METACLASS____UIStatusBarCellularCondensedItem;
    v8 = objc_msgSendSuper2(&v48, sel_groupWithHighPriority_lowPriority_typeClass_allowDualNetwork_, priority - lowPriority, 0, class, 1);
    dualSignalStrengthDisplayIdentifier = [self dualSignalStrengthDisplayIdentifier];
    v10 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:dualSignalStrengthDisplayIdentifier priority:v7 + 7];
    signalStrengthPlacement = [v8 signalStrengthPlacement];
    v54[0] = signalStrengthPlacement;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
    v13 = [v10 excludingPlacements:v12];

    dualSingleLineNameDisplayIdentifier = [self dualSingleLineNameDisplayIdentifier];
    v15 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:dualSingleLineNameDisplayIdentifier priority:v7 + 3];
    namePlacement = [v8 namePlacement];
    v53 = namePlacement;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
    v18 = [v15 excludingPlacements:v17];

    typePlacement = [v8 typePlacement];
    v45 = v13;
    v52 = v13;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
    v21 = [typePlacement requiringAnyPlacements:v20];

    dualSingleLineNameAndTypeDisplayIdentifier = [self dualSingleLineNameAndTypeDisplayIdentifier];
    v23 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:dualSingleLineNameAndTypeDisplayIdentifier priority:v7 + 5];
    namePlacement2 = [v8 namePlacement];
    v51[0] = namePlacement2;
    v51[1] = v18;
    v25 = v18;
    v43 = v18;
    v51[2] = v21;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:3];
    v44 = [v23 excludingPlacements:v26];

    signalStrengthPlacement2 = [v8 signalStrengthPlacement];
    v50[0] = signalStrengthPlacement2;
    v50[1] = v13;
    warningPlacement = [v8 warningPlacement];
    v50[2] = warningPlacement;
    rawPlacement = [v8 rawPlacement];
    v50[3] = rawPlacement;
    namePlacement3 = [v8 namePlacement];
    v50[4] = namePlacement3;
    v50[5] = v25;
    v50[6] = v44;
    v50[7] = v21;
    callForwardingPlacement = [v8 callForwardingPlacement];
    v50[8] = callForwardingPlacement;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:9];
    v33 = [(_UIStatusBarDisplayItemPlacementGroup *)_UIStatusBarDisplayItemPlacementCellularGroup groupWithPriority:lowPriority placements:v32];

    signalStrengthPlacement3 = [v8 signalStrengthPlacement];
    [v33 setSignalStrengthPlacement:signalStrengthPlacement3];

    warningPlacement2 = [v8 warningPlacement];
    [v33 setWarningPlacement:warningPlacement2];

    namePlacement4 = [v8 namePlacement];
    [v33 setNamePlacement:namePlacement4];

    [v33 setTypePlacement:v21];
    callForwardingPlacement2 = [v8 callForwardingPlacement];
    [v33 setCallForwardingPlacement:callForwardingPlacement2];

    rawPlacement2 = [v8 rawPlacement];
    [v33 setRawPlacement:rawPlacement2];

    [v33 setDualSignalStrengthPlacement:v45];
    [v33 setDualNamePlacement:v43];
    [v33 setDualNameAndTypePlacement:v44];
    placementsAffectedByAirplaneMode = [v8 placementsAffectedByAirplaneMode];
    v49 = v45;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
    v41 = [placementsAffectedByAirplaneMode arrayByAddingObjectsFromArray:v40];
    [v33 setPlacementsAffectedByAirplaneMode:v41];
  }

  else
  {
    v47.receiver = self;
    v47.super_class = &OBJC_METACLASS____UIStatusBarCellularCondensedItem;
    v33 = objc_msgSendSuper2(&v47, sel_groupWithHighPriority_lowPriority_typeClass_allowDualNetwork_, priority, lowPriority, class);
  }

  return v33;
}

@end