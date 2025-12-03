@interface STUIStatusBarCellularCondensedItem
+ (id)groupWithHighPriority:(int64_t)priority lowPriority:(int64_t)lowPriority typeClass:(Class)class allowDualNetwork:(BOOL)network;
- (BOOL)_animateServiceType:(int64_t)type prefixLength:(int64_t *)length currentType:(int64_t)currentType;
- (BOOL)_showCallFowardingForEntry:(id)entry;
- (BOOL)canEnableDisplayItem:(id)item fromData:(id)data;
- (STUIStatusBarCellularCondensedItem)initWithIdentifier:(id)identifier statusBar:(id)bar;
- (STUIStatusBarCellularNetworkTypeView)animatedNetworkTypeView;
- (STUIStatusBarDualCellularSignalView)dualSignalView;
- (STUIStatusBarEmergencySignalView)sosSignalView;
- (STUIStatusBarMultilineStringView)dualNameView;
- (STUIStatusBarStringView)dualSingleLineNameAndTypeView;
- (STUIStatusBarStringView)dualSingleLineNameView;
- (_NSRange)_nonCondensedFontRangeForEntry:(id)entry;
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
- (void)setShrinksBeforeMarquee:(BOOL)marquee;
@end

@implementation STUIStatusBarCellularCondensedItem

- (STUIStatusBarDualCellularSignalView)dualSignalView
{
  dualSignalView = self->_dualSignalView;
  if (!dualSignalView)
  {
    [(STUIStatusBarCellularCondensedItem *)self _create_dualSignalView];
    dualSignalView = self->_dualSignalView;
  }

  return dualSignalView;
}

- (STUIStatusBarEmergencySignalView)sosSignalView
{
  sosSignalView = self->_sosSignalView;
  if (!sosSignalView)
  {
    [(STUIStatusBarCellularCondensedItem *)self _create_sosSignalView];
    sosSignalView = self->_sosSignalView;
  }

  return sosSignalView;
}

- (void)_create_dualSignalView
{
  v3 = [STUIStatusBarDualCellularSignalView alloc];
  v4 = [(STUIStatusBarDualCellularSignalView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  dualSignalView = self->_dualSignalView;
  self->_dualSignalView = v4;

  topSignalView = [(STUIStatusBarDualCellularSignalView *)self->_dualSignalView topSignalView];
  [topSignalView setNumberOfBars:4];

  bottomSignalView = [(STUIStatusBarDualCellularSignalView *)self->_dualSignalView bottomSignalView];
  [bottomSignalView setNumberOfBars:4];
}

- (void)_create_sosSignalView
{
  v3 = [STUIStatusBarEmergencySignalView alloc];
  v4 = [(STUIStatusBarEmergencySignalView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  sosSignalView = self->_sosSignalView;
  self->_sosSignalView = v4;

  signalView = [(STUIStatusBarEmergencySignalView *)self->_sosSignalView signalView];
  [signalView setNumberOfBars:4];
}

- (void)setShrinksBeforeMarquee:(BOOL)marquee
{
  if (self->_shrinksBeforeMarquee != marquee)
  {
    self->_shrinksBeforeMarquee = marquee;
    [(STUIStatusBarCellularItem *)self _updateServiceNameMarquee];
  }
}

- (STUIStatusBarCellularCondensedItem)initWithIdentifier:(id)identifier statusBar:(id)bar
{
  v6.receiver = self;
  v6.super_class = STUIStatusBarCellularCondensedItem;
  v4 = [(STUIStatusBarCellularItem *)&v6 initWithIdentifier:identifier statusBar:bar];
  [(STUIStatusBarCellularCondensedItem *)v4 setReducesFontSize:1];
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
    v14.super_class = STUIStatusBarCellularCondensedItem;
    isEnabled = [(STUIStatusBarItem *)&v14 canEnableDisplayItem:itemCopy fromData:dataCopy];
  }

  else
  {
    identifier2 = [itemCopy identifier];

    v11 = [(STUIStatusBarCellularCondensedItem *)self entryForDisplayItemWithIdentifier:identifier2];
    isEnabled = [v11 isEnabled];
  }

  return isEnabled;
}

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  v197[2] = *MEMORY[0x277D85DE8];
  updateCopy = update;
  itemCopy = item;
  v185.receiver = self;
  v185.super_class = STUIStatusBarCellularCondensedItem;
  v173 = updateCopy;
  v171 = [(STUIStatusBarCellularItem *)&v185 applyUpdate:updateCopy toDisplayItem:itemCopy];
  identifier = [itemCopy identifier];
  v172 = [(STUIStatusBarCellularCondensedItem *)self entryForDisplayItemWithIdentifier:identifier];

  identifier2 = [itemCopy identifier];
  dualSignalStrengthDisplayIdentifier = [objc_opt_class() dualSignalStrengthDisplayIdentifier];
  LODWORD(updateCopy) = identifier2 == dualSignalStrengthDisplayIdentifier;

  if (updateCopy)
  {
    statusBar = [(STUIStatusBarItem *)self statusBar];
    currentAggregatedData = [statusBar currentAggregatedData];

    dualSignalView = [(STUIStatusBarCellularCondensedItem *)self dualSignalView];
    topSignalView = [dualSignalView topSignalView];
    cellularEntry = [currentAggregatedData cellularEntry];
    v40 = [(STUIStatusBarCellularItem *)self _updateSignalView:topSignalView withUpdate:v173 entry:cellularEntry forceShowingDisabledSignalBars:1];

    dualSignalView2 = [(STUIStatusBarCellularCondensedItem *)self dualSignalView];
    bottomSignalView = [dualSignalView2 bottomSignalView];
    secondaryCellularEntry = [currentAggregatedData secondaryCellularEntry];
    v44 = [(STUIStatusBarCellularItem *)self _updateSignalView:bottomSignalView withUpdate:v173 entry:secondaryCellularEntry forceShowingDisabledSignalBars:1];

    if ([v173 dataChanged])
    {
      [itemCopy setEnabled:v40 & v44];
    }

    goto LABEL_81;
  }

  identifier3 = [itemCopy identifier];
  dualNameDisplayIdentifier = [objc_opt_class() dualNameDisplayIdentifier];
  if (identifier3 == dualNameDisplayIdentifier)
  {
    goto LABEL_21;
  }

  identifier4 = [itemCopy identifier];
  dualSingleLineNameDisplayIdentifier = [objc_opt_class() dualSingleLineNameDisplayIdentifier];
  if (identifier4 == dualSingleLineNameDisplayIdentifier)
  {
LABEL_20:

LABEL_21:
LABEL_22:
    statusBar2 = [(STUIStatusBarItem *)self statusBar];
    currentAggregatedData = [statusBar2 currentAggregatedData];

    v181 = 0.0;
    v182 = &v181;
    v183 = 0x2020000000;
    v184 = 0;
    v46 = [(STUIStatusBarCellularCondensedItem *)self _singleCellularEntryMatching:&__block_literal_global];
    v180 = 0;
    if (v46)
    {
      v165 = 0;
      v168 = 0;
    }

    else
    {
      v176[0] = MEMORY[0x277D85DD0];
      v176[1] = 3221225472;
      v177 = __64__STUIStatusBarCellularCondensedItem_applyUpdate_toDisplayItem___block_invoke_2;
      v178 = &unk_279D37E70;
      v179 = &v181;
      cellularEntry2 = [currentAggregatedData cellularEntry];
      v165 = __64__STUIStatusBarCellularCondensedItem_applyUpdate_toDisplayItem___block_invoke_2(v176, cellularEntry2, &v180 + 1);

      secondaryCellularEntry2 = [currentAggregatedData secondaryCellularEntry];
      v168 = v177(v176, secondaryCellularEntry2, &v180);

      if ((v182[3] & 1) == 0 && [(__CFString *)v165 length]&& [(__CFString *)v168 length]&& ([(__CFString *)v165 isEqualToString:v168]& 1) == 0)
      {
        *(v182 + 24) = 1;
      }
    }

    isEnabled = [itemCopy isEnabled];
    if (isEnabled)
    {
      identifier10 = +[STUIStatusBarSettingsDomain rootSettings];
      itemSettings = [identifier10 itemSettings];
      if ([itemSettings showBothDualCarrierNames])
      {
        v50 = *(v182 + 24);
      }

      else
      {
        v50 = 0;
      }

      identifier4 = [itemCopy identifier];
      dualSingleLineNameDisplayIdentifier = [objc_opt_class() nameDisplayIdentifier];
      v51 = v50 != (identifier4 == dualSingleLineNameDisplayIdentifier);
    }

    else
    {
      v51 = 0;
    }

    [itemCopy setEnabled:v51];
    if (isEnabled)
    {
    }

    if (*(v182 + 24) != 1 || ![itemCopy isEnabled])
    {
      goto LABEL_80;
    }

    identifier5 = [itemCopy identifier];
    nameDisplayIdentifier = [objc_opt_class() nameDisplayIdentifier];
    v54 = identifier5 == nameDisplayIdentifier;

    if (v54)
    {
      if ((v180 & 0x100) != 0 || (v180 & 1) == 0)
      {
        if ([v172 type])
        {
          goto LABEL_80;
        }

        secondaryCellularEntry3 = [currentAggregatedData secondaryCellularEntry];
        v65 = [secondaryCellularEntry3 type] == 0;

        if (v65)
        {
          goto LABEL_80;
        }
      }

      serviceNameView = [(STUIStatusBarCellularItem *)self serviceNameView];
      [(__CFString *)serviceNameView setText:v168];
      secondaryCellularEntry4 = [currentAggregatedData secondaryCellularEntry];
      crossfadeString = [secondaryCellularEntry4 crossfadeString];
      [(__CFString *)serviceNameView setAlternateText:crossfadeString];
    }

    else
    {
      identifier6 = [itemCopy identifier];
      dualNameDisplayIdentifier2 = [objc_opt_class() dualNameDisplayIdentifier];
      v57 = identifier6 == dualNameDisplayIdentifier2;

      if (v57)
      {
        serviceNameView = [(STUIStatusBarCellularCondensedItem *)self dualNameView];
        stringViews = [(__CFString *)serviceNameView stringViews];
        firstObject = [stringViews firstObject];
        [firstObject setText:v165];

        stringViews2 = [(__CFString *)serviceNameView stringViews];
        firstObject2 = [stringViews2 firstObject];
        [firstObject2 setMarqueeRunning:1];

        stringViews3 = [(__CFString *)serviceNameView stringViews];
        lastObject = [stringViews3 lastObject];
        [lastObject setText:v168];

        secondaryCellularEntry4 = [(__CFString *)serviceNameView stringViews];
        crossfadeString = [secondaryCellularEntry4 lastObject];
        [crossfadeString setMarqueeRunning:1];
      }

      else
      {
        statusBar3 = [(STUIStatusBarItem *)self statusBar];
        effectiveUserInterfaceLayoutDirection = [statusBar3 effectiveUserInterfaceLayoutDirection];

        v59 = &stru_287D04F38;
        if (v165)
        {
          v59 = v165;
        }

        v60 = v59;
        v61 = [(__CFString *)v60 length];
        if (v168 && [(__CFString *)v168 length])
        {
          if ([(__CFString *)v60 length])
          {
            v62 = v168;
            if (effectiveUserInterfaceLayoutDirection)
            {
              v63 = v168;
            }

            else
            {
              v63 = v60;
            }

            if (effectiveUserInterfaceLayoutDirection)
            {
              v62 = v60;
            }

            serviceNameView = [(__CFString *)v63 stringByAppendingFormat:@" • %@", v62];
          }

          else
          {
            serviceNameView = v168;

            v61 = [(__CFString *)serviceNameView length];
          }
        }

        else
        {
          serviceNameView = v60;
        }

        identifier7 = [itemCopy identifier];
        dualSingleLineNameDisplayIdentifier2 = [objc_opt_class() dualSingleLineNameDisplayIdentifier];
        v77 = identifier7 == dualSingleLineNameDisplayIdentifier2;

        if (v77)
        {
          dualSingleLineNameView = [(STUIStatusBarCellularCondensedItem *)self dualSingleLineNameView];
          [dualSingleLineNameView setText:serviceNameView];

          secondaryCellularEntry4 = [(STUIStatusBarCellularCondensedItem *)self dualSingleLineNameView];
          [secondaryCellularEntry4 setMarqueeRunning:1];
          goto LABEL_78;
        }

        identifier8 = [itemCopy identifier];
        dualSingleLineNameAndTypeDisplayIdentifier = [objc_opt_class() dualSingleLineNameAndTypeDisplayIdentifier];
        v80 = identifier8 == dualSingleLineNameAndTypeDisplayIdentifier;

        if (!v80)
        {
LABEL_79:

LABEL_80:
          _Block_object_dispose(&v181, 8);
LABEL_81:

          goto LABEL_82;
        }

        styleAttributes = [v173 styleAttributes];
        secondaryCellularEntry4 = [styleAttributes copy];

        dualSingleLineNameAndTypeView = [(STUIStatusBarCellularCondensedItem *)self dualSingleLineNameAndTypeView];
        v155 = [secondaryCellularEntry4 fontForStyle:{objc_msgSend(dualSingleLineNameAndTypeView, "fontStyle")}];

        textColor = [secondaryCellularEntry4 textColor];
        v84 = *MEMORY[0x277D740A8];
        v85 = *MEMORY[0x277D740C0];
        v196[0] = *MEMORY[0x277D740A8];
        v196[1] = v85;
        v197[0] = v155;
        v197[1] = textColor;
        v154 = textColor;
        v156 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v197 forKeys:v196 count:2];
        v157 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:serviceNameView attributes:v156];
        v86 = -[STUIStatusBarCellularCondensedItem _stringForCellularType:](self, "_stringForCellularType:", [v172 type]);
        if (v86 || ([currentAggregatedData secondaryCellularEntry], v87 = objc_claimAutoreleasedReturnValue(), -[STUIStatusBarCellularCondensedItem _stringForCellularType:](self, "_stringForCellularType:", objc_msgSend(v87, "type")), v86 = objc_claimAutoreleasedReturnValue(), v87, v61 = objc_msgSend(v157, "length"), v86))
        {
          if ([v86 length])
          {
            v175 = 0.0;
            v153 = [(STUIStatusBarCellularCondensedItem *)self _fontForEntry:v172 styleAttributes:secondaryCellularEntry4 baselineOffset:&v175];
            v88 = objc_alloc(MEMORY[0x277CCA898]);
            v194[0] = v84;
            v194[1] = v85;
            v195[0] = v153;
            v195[1] = v154;
            v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v195 forKeys:v194 count:2];
            v90 = [v88 initWithString:v86 attributes:v89];

            if (effectiveUserInterfaceLayoutDirection)
            {
              v61 = [v157 length] - v61;
            }

            v91 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@" " attributes:v156];
            [v157 insertAttributedString:v91 atIndex:v61];

            [v157 insertAttributedString:v90 atIndex:v61 + (effectiveUserInterfaceLayoutDirection == 0)];
          }
        }

        dualSingleLineNameAndTypeView2 = [(STUIStatusBarCellularCondensedItem *)self dualSingleLineNameAndTypeView];
        [dualSingleLineNameAndTypeView2 setAttributedText:v157];

        dualSingleLineNameAndTypeView3 = [(STUIStatusBarCellularCondensedItem *)self dualSingleLineNameAndTypeView];
        [dualSingleLineNameAndTypeView3 setMarqueeRunning:1];

        crossfadeString = v155;
      }
    }

LABEL_78:
    goto LABEL_79;
  }

  identifier9 = [itemCopy identifier];
  dualSingleLineNameAndTypeDisplayIdentifier2 = [objc_opt_class() dualSingleLineNameAndTypeDisplayIdentifier];
  itemSettings = dualSingleLineNameAndTypeDisplayIdentifier2;
  if (identifier9 == dualSingleLineNameAndTypeDisplayIdentifier2)
  {

    goto LABEL_20;
  }

  identifier10 = [itemCopy identifier];
  nameDisplayIdentifier2 = [objc_opt_class() nameDisplayIdentifier];
  v20 = identifier10 == nameDisplayIdentifier2;

  if (v20)
  {
    goto LABEL_22;
  }

  identifier11 = [itemCopy identifier];
  typeDisplayIdentifier = [objc_opt_class() typeDisplayIdentifier];
  v23 = typeDisplayIdentifier;
  if (identifier11 == typeDisplayIdentifier)
  {

    goto LABEL_58;
  }

  identifier12 = [itemCopy identifier];
  externalTypeDisplayIdentifier = [objc_opt_class() externalTypeDisplayIdentifier];
  v26 = identifier12 == externalTypeDisplayIdentifier;

  if (v26)
  {
LABEL_58:
    if ([itemCopy isEnabled] && ((objc_msgSend(v173, "styleAttributesChanged") & 1) != 0 || objc_msgSend(v173, "dataChanged")))
    {
      styleAttributes2 = [v173 styleAttributes];
      currentAggregatedData = [styleAttributes2 copy];

      v181 = 0.0;
      v69 = [(STUIStatusBarCellularCondensedItem *)self _fontForEntry:v172 styleAttributes:currentAggregatedData baselineOffset:&v181];
      v70 = v181;
      [itemCopy baselineOffset];
      if (v70 != v71)
      {
        [itemCopy setBaselineOffset:v181];
        region = [itemCopy region];
        layout = [region layout];
        [layout invalidate];
      }

      [currentAggregatedData setFont:v69];
      v169 = [(STUIStatusBarCellularCondensedItem *)self _nonCondensedFontRangeForEntry:v172];
      v163 = v74;
      if (v169 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v174.receiver = self;
        v174.super_class = STUIStatusBarCellularCondensedItem;
        [(STUIStatusBarItem *)&v174 applyStyleAttributes:currentAggregatedData toDisplayItem:itemCopy];
      }

      else
      {
        v105 = objc_alloc(MEMORY[0x277CCAB48]);
        networkTypeView = [(STUIStatusBarCellularItem *)self networkTypeView];
        text = [networkTypeView text];
        v108 = *MEMORY[0x277D740A8];
        v193[0] = v69;
        v109 = *MEMORY[0x277D740C0];
        v160 = v108;
        v192[0] = v108;
        v192[1] = v109;
        textColor2 = [currentAggregatedData textColor];
        v193[1] = textColor2;
        v111 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v193 forKeys:v192 count:2];
        v166 = [v105 initWithString:text attributes:v111];

        v112 = MEMORY[0x277D74300];
        fontDescriptor = [v69 fontDescriptor];
        v114 = [fontDescriptor fontDescriptorWithSymbolicTraits:0];
        [v69 pointSize];
        v115 = [v112 fontWithDescriptor:v114 size:?];

        v190[1] = v109;
        v191[0] = v115;
        v190[0] = v160;
        textColor3 = [currentAggregatedData textColor];
        v191[1] = textColor3;
        v117 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v191 forKeys:v190 count:2];
        [v166 setAttributes:v117 range:{v169, v163}];

        networkTypeView2 = [(STUIStatusBarCellularItem *)self networkTypeView];
        [networkTypeView2 setAttributedText:v166];
      }

      goto LABEL_81;
    }

    goto LABEL_82;
  }

  identifier13 = [itemCopy identifier];
  animatedTypeDisplayIdentifier = [objc_opt_class() animatedTypeDisplayIdentifier];
  v29 = identifier13 == animatedTypeDisplayIdentifier;

  if (v29)
  {
    if (!v172)
    {
      goto LABEL_82;
    }

    if ([v172 isEnabled])
    {
      currentAggregatedData = -[STUIStatusBarCellularCondensedItem _stringForCellularType:](self, "_stringForCellularType:", [v172 type]);
      isEnabled2 = [itemCopy isEnabled];
      if (currentAggregatedData)
      {
        v103 = isEnabled2;
      }

      else
      {
        v103 = 0;
      }

      if (v103 == 1)
      {
        v104 = [v172 isBootstrapCellular] ^ 1;
LABEL_103:
        [itemCopy setEnabled:v104];
        if ([itemCopy isEnabled] && ((objc_msgSend(v173, "styleAttributesChanged") & 1) != 0 || objc_msgSend(v173, "dataChanged")))
        {
          typeStringProvider = [(STUIStatusBarCellularItem *)self typeStringProvider];

          if (typeStringProvider)
          {
            typeStringProvider2 = [(STUIStatusBarCellularItem *)self typeStringProvider];
            [typeStringProvider2 animatedTypeDisplayItemSpacingFactorForCellularType:{objc_msgSend(v172, "type")}];
            v126 = v125;
          }

          else
          {
            v126 = 1.0;
          }

          animatedNetworkTypeView = [(STUIStatusBarCellularCondensedItem *)self animatedNetworkTypeView];
          styleAttributes3 = [v173 styleAttributes];
          +[STUIStatusBarWifiSignalView widthForIconSize:](STUIStatusBarWifiSignalView, "widthForIconSize:", [styleAttributes3 iconSize]);
          [animatedNetworkTypeView setFixedWidth:v126 * v129];

          v181 = NAN;
          type = [v172 type];
          animatedNetworkTypeView2 = [(STUIStatusBarCellularCondensedItem *)self animatedNetworkTypeView];
          v167 = -[STUIStatusBarCellularCondensedItem _animateServiceType:prefixLength:currentType:](self, "_animateServiceType:prefixLength:currentType:", type, &v181, [animatedNetworkTypeView2 type]);

          styleAttributes4 = [v173 styleAttributes];
          v133 = [styleAttributes4 copy];

          v175 = 0.0;
          v170 = [(STUIStatusBarCellularCondensedItem *)self _fontForEntry:v172 styleAttributes:v133 baselineOffset:&v175];
          v134 = v175;
          [itemCopy baselineOffset];
          if (v134 != v135)
          {
            [itemCopy setBaselineOffset:v175];
            region2 = [itemCopy region];
            layout2 = [region2 layout];
            [layout2 invalidate];
          }

          [v133 setFont:v170];
          v138 = [(STUIStatusBarCellularCondensedItem *)self _nonCondensedFontRangeForEntry:v172];
          v164 = v139;
          v140 = v138;
          if (v138 == 0x7FFFFFFFFFFFFFFFLL)
          {
            animatedNetworkTypeView3 = [(STUIStatusBarCellularCondensedItem *)self animatedNetworkTypeView];
            [animatedNetworkTypeView3 setText:currentAggregatedData prefixLength:*&v181 withStyleAttributes:v133 forType:objc_msgSend(v172 animated:{"type"), v167}];
          }

          else
          {
            v142 = objc_alloc(MEMORY[0x277CCAB48]);
            v143 = *MEMORY[0x277D740A8];
            v189[0] = v170;
            v144 = *MEMORY[0x277D740C0];
            v158 = v143;
            v188[0] = v143;
            v188[1] = v144;
            textColor4 = [v133 textColor];
            v189[1] = textColor4;
            v146 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v189 forKeys:v188 count:2];
            animatedNetworkTypeView3 = [v142 initWithString:currentAggregatedData attributes:v146];

            v147 = MEMORY[0x277D74300];
            fontDescriptor2 = [v170 fontDescriptor];
            v149 = [fontDescriptor2 fontDescriptorWithSymbolicTraits:0];
            [v170 pointSize];
            v161 = [v147 fontWithDescriptor:v149 size:?];

            v186[1] = v144;
            v187[0] = v161;
            v186[0] = v158;
            textColor5 = [v133 textColor];
            v187[1] = textColor5;
            v151 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v187 forKeys:v186 count:2];
            [animatedNetworkTypeView3 setAttributes:v151 range:{v140, v164}];

            animatedNetworkTypeView4 = [(STUIStatusBarCellularCondensedItem *)self animatedNetworkTypeView];
            [animatedNetworkTypeView4 setAttributedText:animatedNetworkTypeView3 prefixLength:*&v181 forType:objc_msgSend(v172 animated:{"type"), v167}];
          }
        }

        goto LABEL_81;
      }
    }

    else
    {
      [itemCopy isEnabled];
      currentAggregatedData = 0;
    }

    v104 = 0;
    goto LABEL_103;
  }

  identifier14 = [itemCopy identifier];
  sosSignalStrengthDisplayIdentifier = [objc_opt_class() sosSignalStrengthDisplayIdentifier];
  v32 = identifier14 == sosSignalStrengthDisplayIdentifier;

  if (v172)
  {
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  if (v33)
  {
    v34 = [itemCopy isEnabled] && (objc_msgSend(v172, "isBootstrapCellular") & 1) == 0 && objc_msgSend(v172, "showsSOSWhenDisabled") && (objc_msgSend(v172, "status") == 1);
    [itemCopy setEnabled:v34];
    if ([itemCopy isEnabled])
    {
      sosSignalView = [(STUIStatusBarCellularCondensedItem *)self sosSignalView];
      signalView = [sosSignalView signalView];
      [(STUIStatusBarCellularItem *)self _updateSignalView:signalView withUpdate:v173 entry:v172 forceShowingDisabledSignalBars:1];

      if ([v172 sosAvailable])
      {
        v121 = 1.0;
      }

      else
      {
        v121 = 0.3;
      }

      currentAggregatedData = [(STUIStatusBarCellularCondensedItem *)self sosSignalView];
      sosView = [currentAggregatedData sosView];
      [sosView setAlpha:v121];

      goto LABEL_81;
    }
  }

LABEL_82:

  return v171;
}

BOOL __64__STUIStatusBarCellularCondensedItem_applyUpdate_toDisplayItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isEnabled])
  {
    v3 = [v2 string];
    v4 = [v3 length] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

__CFString *__64__STUIStatusBarCellularCondensedItem_applyUpdate_toDisplayItem___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if ([v5 status] == 5 || (objc_msgSend(v5, "wifiCallingEnabled") & 1) != 0)
  {
    *a3 = 1;
LABEL_4:
    v6 = [v5 string];
    goto LABEL_5;
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  *a3 = 0;
  if ([v5 status] != 1 && objc_msgSend(v5, "status") != 2)
  {
    goto LABEL_4;
  }

  v6 = @"– –";
LABEL_5:

  return v6;
}

- (void)applyStyleAttributes:(id)attributes toDisplayItem:(id)item
{
  attributesCopy = attributes;
  itemCopy = item;
  identifier = [itemCopy identifier];
  typeDisplayIdentifier = [objc_opt_class() typeDisplayIdentifier];
  if (identifier == typeDisplayIdentifier)
  {
    goto LABEL_8;
  }

  identifier2 = [itemCopy identifier];
  externalTypeDisplayIdentifier = [objc_opt_class() externalTypeDisplayIdentifier];
  if (identifier2 == externalTypeDisplayIdentifier)
  {
LABEL_7:

LABEL_8:
    goto LABEL_9;
  }

  identifier3 = [itemCopy identifier];
  animatedTypeDisplayIdentifier = [objc_opt_class() animatedTypeDisplayIdentifier];
  v14 = animatedTypeDisplayIdentifier;
  if (identifier3 == animatedTypeDisplayIdentifier)
  {

    goto LABEL_7;
  }

  identifier4 = [itemCopy identifier];
  [objc_opt_class() dualSingleLineNameAndTypeDisplayIdentifier];
  v16 = v18 = attributesCopy;

  v17 = identifier4 == v16;
  attributesCopy = v18;
  if (!v17)
  {
    v19.receiver = self;
    v19.super_class = STUIStatusBarCellularCondensedItem;
    [(STUIStatusBarItem *)&v19 applyStyleAttributes:v18 toDisplayItem:itemCopy];
  }

LABEL_9:
}

- (id)_stringForCellularType:(int64_t)type
{
  typeStringProvider = [(STUIStatusBarCellularItem *)self typeStringProvider];

  if (!typeStringProvider || (-[STUIStatusBarCellularItem typeStringProvider](self, "typeStringProvider"), v6 = objc_claimAutoreleasedReturnValue(), [v6 stringForCellularType:type condensed:1], v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    if (type == 7)
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v9 = mainBundle;
      v10 = @"5GE[condensed]";
      v11 = @"5G  ᴇ";
    }

    else
    {
      if (type == 3)
      {
        mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
        v9 = mainBundle;
        v10 = @"E";
      }

      else
      {
        if (type != 2)
        {
LABEL_11:
          v13.receiver = self;
          v13.super_class = STUIStatusBarCellularCondensedItem;
          v7 = [(STUIStatusBarCellularItem *)&v13 _stringForCellularType:type];
          goto LABEL_12;
        }

        mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
        v9 = mainBundle;
        v10 = @"G";
      }

      v11 = &stru_287D04F38;
    }

    v7 = [mainBundle localizedStringForKey:v10 value:v11 table:0];

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
  typeStringProvider = [(STUIStatusBarCellularItem *)self typeStringProvider];

  v11 = smallFont;
  if (typeStringProvider)
  {
    typeStringProvider2 = [(STUIStatusBarCellularItem *)self typeStringProvider];
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
  statusBar = [(STUIStatusBarItem *)self statusBar];
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
  statusBar = [(STUIStatusBarItem *)self statusBar];
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
    dualSingleLineNameView = [(STUIStatusBarCellularCondensedItem *)self dualSingleLineNameView];
LABEL_6:
    dualNameView = dualSingleLineNameView;
    if (dualSingleLineNameView)
    {
      [dualSingleLineNameView setMarqueeRunning:0];
      v14 = v24;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v15 = __70__STUIStatusBarCellularCondensedItem_prepareAnimation_forDisplayItem___block_invoke;
LABEL_10:
      v14[2] = v15;
      v14[3] = &unk_279D37E28;
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
    dualSingleLineNameView = [(STUIStatusBarCellularCondensedItem *)self dualSingleLineNameAndTypeView];
    goto LABEL_6;
  }

LABEL_8:
  identifier3 = [itemCopy identifier];
  dualNameDisplayIdentifier = [objc_opt_class() dualNameDisplayIdentifier];

  if (identifier3 == dualNameDisplayIdentifier)
  {
    dualNameView = [(STUIStatusBarCellularCondensedItem *)self dualNameView];
    stringViews = [dualNameView stringViews];
    firstObject = [stringViews firstObject];
    [firstObject setMarqueeRunning:0];

    stringViews2 = [dualNameView stringViews];
    lastObject = [stringViews2 lastObject];
    [lastObject setMarqueeRunning:0];

    v14 = v23;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v15 = __70__STUIStatusBarCellularCondensedItem_prepareAnimation_forDisplayItem___block_invoke_2;
    goto LABEL_10;
  }

LABEL_11:
}

uint64_t __70__STUIStatusBarCellularCondensedItem_prepareAnimation_forDisplayItem___block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return [*(result + 32) setMarqueeRunning:1];
  }

  return result;
}

void __70__STUIStatusBarCellularCondensedItem_prepareAnimation_forDisplayItem___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v4 = [*(a1 + 32) stringViews];
    v5 = [v4 firstObject];
    [v5 setMarqueeRunning:1];

    v7 = [*(a1 + 32) stringViews];
    v6 = [v7 lastObject];
    [v6 setMarqueeRunning:1];
  }
}

- (id)entryForDisplayItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  externalSignalStrengthDisplayIdentifier = [objc_opt_class() externalSignalStrengthDisplayIdentifier];
  if (externalSignalStrengthDisplayIdentifier == identifierCopy)
  {
    goto LABEL_7;
  }

  externalTypeDisplayIdentifier = [objc_opt_class() externalTypeDisplayIdentifier];
  v7 = externalTypeDisplayIdentifier;
  if (externalTypeDisplayIdentifier == identifierCopy)
  {

LABEL_7:
    goto LABEL_8;
  }

  externalWarningDisplayIdentifier = [objc_opt_class() externalWarningDisplayIdentifier];

  if (externalWarningDisplayIdentifier == identifierCopy)
  {
LABEL_8:
    v20.receiver = self;
    v20.super_class = STUIStatusBarCellularCondensedItem;
    v12 = [(STUIStatusBarCellularItem *)&v20 entryForDisplayItemWithIdentifier:identifierCopy];
    goto LABEL_20;
  }

  v9 = [(STUIStatusBarCellularCondensedItem *)self _singleCellularEntryMatching:&__block_literal_global_279];
  v10 = v9;
  if (!v9)
  {
    typeDisplayIdentifier = [objc_opt_class() typeDisplayIdentifier];
    if (typeDisplayIdentifier != identifierCopy)
    {
      animatedTypeDisplayIdentifier = [objc_opt_class() animatedTypeDisplayIdentifier];
      v15 = animatedTypeDisplayIdentifier;
      if (animatedTypeDisplayIdentifier != identifierCopy)
      {
        nameDisplayIdentifier = [objc_opt_class() nameDisplayIdentifier];

        if (nameDisplayIdentifier != identifierCopy)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }
    }

LABEL_15:
    v11 = [(STUIStatusBarCellularCondensedItem *)self _singleCellularEntryMatching:&__block_literal_global_281];
    if (v11)
    {
      goto LABEL_19;
    }

LABEL_16:
    nameDisplayIdentifier2 = [objc_opt_class() nameDisplayIdentifier];

    if (nameDisplayIdentifier2 != identifierCopy || ([(STUIStatusBarCellularCondensedItem *)self _singleCellularEntryMatching:&__block_literal_global_283], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v19.receiver = self;
      v19.super_class = STUIStatusBarCellularCondensedItem;
      v11 = [(STUIStatusBarCellularItem *)&v19 entryForDisplayItemWithIdentifier:identifierCopy];
    }

    goto LABEL_19;
  }

  v11 = v9;
LABEL_19:
  v12 = v11;

LABEL_20:

  return v12;
}

uint64_t __72__STUIStatusBarCellularCondensedItem_entryForDisplayItemWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isEnabled])
  {
    v3 = [v2 isBootstrapCellular] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __72__STUIStatusBarCellularCondensedItem_entryForDisplayItemWithIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 type])
  {
    v3 = [v2 isBootstrapCellular] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __72__STUIStatusBarCellularCondensedItem_entryForDisplayItemWithIdentifier___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 wifiCallingEnabled])
  {
    v3 = [v2 isBootstrapCellular] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (STUIStatusBarMultilineStringView)dualNameView
{
  dualNameView = self->_dualNameView;
  if (!dualNameView)
  {
    [(STUIStatusBarCellularCondensedItem *)self _create_dualNameView];
    dualNameView = self->_dualNameView;
  }

  return dualNameView;
}

- (void)_create_dualNameView
{
  v3 = [STUIStatusBarMultilineStringView alloc];
  v4 = [(STUIStatusBarMultilineStringView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  dualNameView = self->_dualNameView;
  self->_dualNameView = v4;

  [(STUIStatusBarMultilineStringView *)self->_dualNameView setNumberOfLines:2];
  stringViews = [(STUIStatusBarMultilineStringView *)self->_dualNameView stringViews];
  firstObject = [stringViews firstObject];

  [firstObject setTextAlignment:1];
  [firstObject setFontStyle:2];
  [firstObject setMarqueeEnabled:1];
  stringViews2 = [(STUIStatusBarMultilineStringView *)self->_dualNameView stringViews];
  lastObject = [stringViews2 lastObject];

  [lastObject setTextAlignment:1];
  [lastObject setFontStyle:2];
  [lastObject setMarqueeEnabled:1];
}

- (STUIStatusBarStringView)dualSingleLineNameView
{
  dualSingleLineNameView = self->_dualSingleLineNameView;
  if (!dualSingleLineNameView)
  {
    [(STUIStatusBarCellularCondensedItem *)self _create_dualSingleLineNameView];
    dualSingleLineNameView = self->_dualSingleLineNameView;
  }

  return dualSingleLineNameView;
}

- (void)_create_dualSingleLineNameView
{
  v3 = [STUIStatusBarStringView alloc];
  v4 = [(STUIStatusBarStringView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  dualSingleLineNameView = self->_dualSingleLineNameView;
  self->_dualSingleLineNameView = v4;

  [(STUIStatusBarStringView *)self->_dualSingleLineNameView setNumberOfLines:1];
  [(STUIStatusBarStringView *)self->_dualSingleLineNameView setFontStyle:0];
  [(STUIStatusBarStringView *)self->_dualSingleLineNameView setMarqueeEnabled:1];
  v6 = self->_dualSingleLineNameView;
  LODWORD(v7) = 1132068864;

  [(STUIStatusBarStringView *)v6 setContentCompressionResistancePriority:0 forAxis:v7];
}

- (STUIStatusBarStringView)dualSingleLineNameAndTypeView
{
  dualSingleLineNameAndTypeView = self->_dualSingleLineNameAndTypeView;
  if (!dualSingleLineNameAndTypeView)
  {
    [(STUIStatusBarCellularCondensedItem *)self _create_dualSingleLineNameAndTypeView];
    dualSingleLineNameAndTypeView = self->_dualSingleLineNameAndTypeView;
  }

  return dualSingleLineNameAndTypeView;
}

- (void)_create_dualSingleLineNameAndTypeView
{
  v3 = [STUIStatusBarStringView alloc];
  v4 = [(STUIStatusBarStringView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  dualSingleLineNameAndTypeView = self->_dualSingleLineNameAndTypeView;
  self->_dualSingleLineNameAndTypeView = v4;

  [(STUIStatusBarStringView *)self->_dualSingleLineNameAndTypeView setNumberOfLines:1];
  [(STUIStatusBarStringView *)self->_dualSingleLineNameAndTypeView setFontStyle:0];
  [(STUIStatusBarStringView *)self->_dualSingleLineNameAndTypeView setMarqueeEnabled:1];
  v6 = self->_dualSingleLineNameAndTypeView;
  LODWORD(v7) = 1132068864;

  [(STUIStatusBarStringView *)v6 setContentCompressionResistancePriority:0 forAxis:v7];
}

- (STUIStatusBarCellularNetworkTypeView)animatedNetworkTypeView
{
  animatedNetworkTypeView = self->_animatedNetworkTypeView;
  if (!animatedNetworkTypeView)
  {
    [(STUIStatusBarCellularCondensedItem *)self _create_animatedNetworkTypeView];
    animatedNetworkTypeView = self->_animatedNetworkTypeView;
  }

  return animatedNetworkTypeView;
}

- (void)_create_animatedNetworkTypeView
{
  v3 = [STUIStatusBarCellularNetworkTypeView alloc];
  self->_animatedNetworkTypeView = [(STUIStatusBarCellularNetworkTypeView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

  MEMORY[0x2821F96F8]();
}

- (id)viewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dualSignalStrengthDisplayIdentifier = [objc_opt_class() dualSignalStrengthDisplayIdentifier];

  if (dualSignalStrengthDisplayIdentifier == identifierCopy)
  {
    dualSignalView = [(STUIStatusBarCellularCondensedItem *)self dualSignalView];
  }

  else
  {
    dualNameDisplayIdentifier = [objc_opt_class() dualNameDisplayIdentifier];

    if (dualNameDisplayIdentifier == identifierCopy)
    {
      dualSignalView = [(STUIStatusBarCellularCondensedItem *)self dualNameView];
    }

    else
    {
      dualSingleLineNameDisplayIdentifier = [objc_opt_class() dualSingleLineNameDisplayIdentifier];

      if (dualSingleLineNameDisplayIdentifier == identifierCopy)
      {
        dualSignalView = [(STUIStatusBarCellularCondensedItem *)self dualSingleLineNameView];
      }

      else
      {
        dualSingleLineNameAndTypeDisplayIdentifier = [objc_opt_class() dualSingleLineNameAndTypeDisplayIdentifier];

        if (dualSingleLineNameAndTypeDisplayIdentifier == identifierCopy)
        {
          dualSignalView = [(STUIStatusBarCellularCondensedItem *)self dualSingleLineNameAndTypeView];
        }

        else
        {
          animatedTypeDisplayIdentifier = [objc_opt_class() animatedTypeDisplayIdentifier];

          if (animatedTypeDisplayIdentifier == identifierCopy)
          {
            dualSignalView = [(STUIStatusBarCellularCondensedItem *)self animatedNetworkTypeView];
          }

          else
          {
            sosSignalStrengthDisplayIdentifier = [objc_opt_class() sosSignalStrengthDisplayIdentifier];

            if (sosSignalStrengthDisplayIdentifier == identifierCopy)
            {
              dualSignalView = [(STUIStatusBarCellularCondensedItem *)self sosSignalView];
            }

            else
            {
              externalSignalStrengthDisplayIdentifier = [objc_opt_class() externalSignalStrengthDisplayIdentifier];

              if (externalSignalStrengthDisplayIdentifier == identifierCopy)
              {
                dualSignalView = [(STUIStatusBarCellularItem *)self signalView];
              }

              else
              {
                externalTypeDisplayIdentifier = [objc_opt_class() externalTypeDisplayIdentifier];

                if (externalTypeDisplayIdentifier == identifierCopy)
                {
                  dualSignalView = [(STUIStatusBarCellularItem *)self networkTypeView];
                }

                else
                {
                  externalWarningDisplayIdentifier = [objc_opt_class() externalWarningDisplayIdentifier];

                  if (externalWarningDisplayIdentifier == identifierCopy)
                  {
                    dualSignalView = [(STUIStatusBarCellularItem *)self warningView];
                  }

                  else
                  {
                    v17.receiver = self;
                    v17.super_class = STUIStatusBarCellularCondensedItem;
                    dualSignalView = [(STUIStatusBarCellularItem *)&v17 viewForIdentifier:identifierCopy];
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v15 = dualSignalView;

  return v15;
}

+ (id)groupWithHighPriority:(int64_t)priority lowPriority:(int64_t)lowPriority typeClass:(Class)class allowDualNetwork:(BOOL)network
{
  v55[1] = *MEMORY[0x277D85DE8];
  if (network)
  {
    v7 = priority - lowPriority;
    v49.receiver = self;
    v49.super_class = &OBJC_METACLASS___STUIStatusBarCellularCondensedItem;
    v8 = objc_msgSendSuper2(&v49, sel_groupWithHighPriority_lowPriority_typeClass_allowDualNetwork_, priority - lowPriority, 0, class, 1);
    dualSignalStrengthDisplayIdentifier = [self dualSignalStrengthDisplayIdentifier];
    v10 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:dualSignalStrengthDisplayIdentifier priority:v7 + 7];
    signalStrengthPlacement = [v8 signalStrengthPlacement];
    v55[0] = signalStrengthPlacement;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:1];
    v13 = [v10 excludingPlacements:v12];

    dualSingleLineNameDisplayIdentifier = [self dualSingleLineNameDisplayIdentifier];
    v15 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:dualSingleLineNameDisplayIdentifier priority:v7 + 3];
    namePlacement = [v8 namePlacement];
    v54 = namePlacement;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
    v18 = [v15 excludingPlacements:v17];

    typePlacement = [v8 typePlacement];
    v46 = v13;
    v53 = v13;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
    v21 = [typePlacement requiringAnyPlacements:v20];

    dualSingleLineNameAndTypeDisplayIdentifier = [self dualSingleLineNameAndTypeDisplayIdentifier];
    v23 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:dualSingleLineNameAndTypeDisplayIdentifier priority:v7 + 5];
    namePlacement2 = [v8 namePlacement];
    v52[0] = namePlacement2;
    v52[1] = v18;
    v25 = v18;
    v44 = v18;
    v52[2] = v21;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:3];
    v45 = [v23 excludingPlacements:v26];

    signalStrengthPlacement2 = [v8 signalStrengthPlacement];
    v51[0] = signalStrengthPlacement2;
    v51[1] = v13;
    warningPlacement = [v8 warningPlacement];
    v51[2] = warningPlacement;
    rawPlacement = [v8 rawPlacement];
    v51[3] = rawPlacement;
    namePlacement3 = [v8 namePlacement];
    v51[4] = namePlacement3;
    v51[5] = v25;
    v51[6] = v45;
    v51[7] = v21;
    callForwardingPlacement = [v8 callForwardingPlacement];
    v51[8] = callForwardingPlacement;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:9];
    v33 = [(STUIStatusBarDisplayItemPlacementGroup *)STUIStatusBarDisplayItemPlacementCellularGroup groupWithPriority:lowPriority placements:v32];

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

    [v33 setDualSignalStrengthPlacement:v46];
    [v33 setDualNamePlacement:v44];
    [v33 setDualNameAndTypePlacement:v45];
    placementsAffectedByAirplaneMode = [v8 placementsAffectedByAirplaneMode];
    v50 = v46;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
    v41 = [placementsAffectedByAirplaneMode arrayByAddingObjectsFromArray:v40];
    [v33 setPlacementsAffectedByAirplaneMode:v41];

    sosPlacement = [v8 sosPlacement];
    [v33 setSosPlacement:sosPlacement];
  }

  else
  {
    v48.receiver = self;
    v48.super_class = &OBJC_METACLASS___STUIStatusBarCellularCondensedItem;
    v33 = objc_msgSendSuper2(&v48, sel_groupWithHighPriority_lowPriority_typeClass_allowDualNetwork_, priority, lowPriority, class);
  }

  return v33;
}

@end