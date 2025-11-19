@interface STUIStatusBarCellularCondensedItem
+ (id)groupWithHighPriority:(int64_t)a3 lowPriority:(int64_t)a4 typeClass:(Class)a5 allowDualNetwork:(BOOL)a6;
- (BOOL)_animateServiceType:(int64_t)a3 prefixLength:(int64_t *)a4 currentType:(int64_t)a5;
- (BOOL)_showCallFowardingForEntry:(id)a3;
- (BOOL)canEnableDisplayItem:(id)a3 fromData:(id)a4;
- (STUIStatusBarCellularCondensedItem)initWithIdentifier:(id)a3 statusBar:(id)a4;
- (STUIStatusBarCellularNetworkTypeView)animatedNetworkTypeView;
- (STUIStatusBarDualCellularSignalView)dualSignalView;
- (STUIStatusBarEmergencySignalView)sosSignalView;
- (STUIStatusBarMultilineStringView)dualNameView;
- (STUIStatusBarStringView)dualSingleLineNameAndTypeView;
- (STUIStatusBarStringView)dualSingleLineNameView;
- (_NSRange)_nonCondensedFontRangeForEntry:(id)a3;
- (id)_fontForEntry:(id)a3 styleAttributes:(id)a4 baselineOffset:(double *)a5;
- (id)_singleCellularEntryMatching:(id)a3;
- (id)_stringForCellularType:(int64_t)a3;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (id)entryForDisplayItemWithIdentifier:(id)a3;
- (id)viewForIdentifier:(id)a3;
- (void)_create_animatedNetworkTypeView;
- (void)_create_dualNameView;
- (void)_create_dualSignalView;
- (void)_create_dualSingleLineNameAndTypeView;
- (void)_create_dualSingleLineNameView;
- (void)_create_sosSignalView;
- (void)applyStyleAttributes:(id)a3 toDisplayItem:(id)a4;
- (void)prepareAnimation:(id)a3 forDisplayItem:(id)a4;
- (void)setShrinksBeforeMarquee:(BOOL)a3;
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

  v6 = [(STUIStatusBarDualCellularSignalView *)self->_dualSignalView topSignalView];
  [v6 setNumberOfBars:4];

  v7 = [(STUIStatusBarDualCellularSignalView *)self->_dualSignalView bottomSignalView];
  [v7 setNumberOfBars:4];
}

- (void)_create_sosSignalView
{
  v3 = [STUIStatusBarEmergencySignalView alloc];
  v4 = [(STUIStatusBarEmergencySignalView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  sosSignalView = self->_sosSignalView;
  self->_sosSignalView = v4;

  v6 = [(STUIStatusBarEmergencySignalView *)self->_sosSignalView signalView];
  [v6 setNumberOfBars:4];
}

- (void)setShrinksBeforeMarquee:(BOOL)a3
{
  if (self->_shrinksBeforeMarquee != a3)
  {
    self->_shrinksBeforeMarquee = a3;
    [(STUIStatusBarCellularItem *)self _updateServiceNameMarquee];
  }
}

- (STUIStatusBarCellularCondensedItem)initWithIdentifier:(id)a3 statusBar:(id)a4
{
  v6.receiver = self;
  v6.super_class = STUIStatusBarCellularCondensedItem;
  v4 = [(STUIStatusBarCellularItem *)&v6 initWithIdentifier:a3 statusBar:a4];
  [(STUIStatusBarCellularCondensedItem *)v4 setReducesFontSize:1];
  return v4;
}

- (BOOL)canEnableDisplayItem:(id)a3 fromData:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 identifier];
  v9 = [objc_opt_class() dualSignalStrengthDisplayIdentifier];

  if (v8 == v9)
  {
    v14.receiver = self;
    v14.super_class = STUIStatusBarCellularCondensedItem;
    v12 = [(STUIStatusBarItem *)&v14 canEnableDisplayItem:v7 fromData:v6];
  }

  else
  {
    v10 = [v7 identifier];

    v11 = [(STUIStatusBarCellularCondensedItem *)self entryForDisplayItemWithIdentifier:v10];
    v12 = [v11 isEnabled];
  }

  return v12;
}

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v197[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v185.receiver = self;
  v185.super_class = STUIStatusBarCellularCondensedItem;
  v173 = v10;
  v171 = [(STUIStatusBarCellularItem *)&v185 applyUpdate:v10 toDisplayItem:v11];
  v12 = [v11 identifier];
  v172 = [(STUIStatusBarCellularCondensedItem *)self entryForDisplayItemWithIdentifier:v12];

  v13 = [v11 identifier];
  v14 = [objc_opt_class() dualSignalStrengthDisplayIdentifier];
  LODWORD(v10) = v13 == v14;

  if (v10)
  {
    v35 = [(STUIStatusBarItem *)self statusBar];
    v36 = [v35 currentAggregatedData];

    v37 = [(STUIStatusBarCellularCondensedItem *)self dualSignalView];
    v38 = [v37 topSignalView];
    v39 = [v36 cellularEntry];
    v40 = [(STUIStatusBarCellularItem *)self _updateSignalView:v38 withUpdate:v173 entry:v39 forceShowingDisabledSignalBars:1];

    v41 = [(STUIStatusBarCellularCondensedItem *)self dualSignalView];
    v42 = [v41 bottomSignalView];
    v43 = [v36 secondaryCellularEntry];
    v44 = [(STUIStatusBarCellularItem *)self _updateSignalView:v42 withUpdate:v173 entry:v43 forceShowingDisabledSignalBars:1];

    if ([v173 dataChanged])
    {
      [v11 setEnabled:v40 & v44];
    }

    goto LABEL_81;
  }

  v15 = [v11 identifier];
  v16 = [objc_opt_class() dualNameDisplayIdentifier];
  if (v15 == v16)
  {
    goto LABEL_21;
  }

  v5 = [v11 identifier];
  v6 = [objc_opt_class() dualSingleLineNameDisplayIdentifier];
  if (v5 == v6)
  {
LABEL_20:

LABEL_21:
LABEL_22:
    v45 = [(STUIStatusBarItem *)self statusBar];
    v36 = [v45 currentAggregatedData];

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
      v47 = [v36 cellularEntry];
      v165 = __64__STUIStatusBarCellularCondensedItem_applyUpdate_toDisplayItem___block_invoke_2(v176, v47, &v180 + 1);

      v48 = [v36 secondaryCellularEntry];
      v168 = v177(v176, v48, &v180);

      if ((v182[3] & 1) == 0 && [(__CFString *)v165 length]&& [(__CFString *)v168 length]&& ([(__CFString *)v165 isEqualToString:v168]& 1) == 0)
      {
        *(v182 + 24) = 1;
      }
    }

    v49 = [v11 isEnabled];
    if (v49)
    {
      v7 = +[STUIStatusBarSettingsDomain rootSettings];
      v4 = [v7 itemSettings];
      if ([v4 showBothDualCarrierNames])
      {
        v50 = *(v182 + 24);
      }

      else
      {
        v50 = 0;
      }

      v5 = [v11 identifier];
      v6 = [objc_opt_class() nameDisplayIdentifier];
      v51 = v50 != (v5 == v6);
    }

    else
    {
      v51 = 0;
    }

    [v11 setEnabled:v51];
    if (v49)
    {
    }

    if (*(v182 + 24) != 1 || ![v11 isEnabled])
    {
      goto LABEL_80;
    }

    v52 = [v11 identifier];
    v53 = [objc_opt_class() nameDisplayIdentifier];
    v54 = v52 == v53;

    if (v54)
    {
      if ((v180 & 0x100) != 0 || (v180 & 1) == 0)
      {
        if ([v172 type])
        {
          goto LABEL_80;
        }

        v64 = [v36 secondaryCellularEntry];
        v65 = [v64 type] == 0;

        if (v65)
        {
          goto LABEL_80;
        }
      }

      v162 = [(STUIStatusBarCellularItem *)self serviceNameView];
      [(__CFString *)v162 setText:v168];
      v66 = [v36 secondaryCellularEntry];
      v67 = [v66 crossfadeString];
      [(__CFString *)v162 setAlternateText:v67];
    }

    else
    {
      v55 = [v11 identifier];
      v56 = [objc_opt_class() dualNameDisplayIdentifier];
      v57 = v55 == v56;

      if (v57)
      {
        v162 = [(STUIStatusBarCellularCondensedItem *)self dualNameView];
        v94 = [(__CFString *)v162 stringViews];
        v95 = [v94 firstObject];
        [v95 setText:v165];

        v96 = [(__CFString *)v162 stringViews];
        v97 = [v96 firstObject];
        [v97 setMarqueeRunning:1];

        v98 = [(__CFString *)v162 stringViews];
        v99 = [v98 lastObject];
        [v99 setText:v168];

        v66 = [(__CFString *)v162 stringViews];
        v67 = [v66 lastObject];
        [v67 setMarqueeRunning:1];
      }

      else
      {
        v58 = [(STUIStatusBarItem *)self statusBar];
        v159 = [v58 effectiveUserInterfaceLayoutDirection];

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
            if (v159)
            {
              v63 = v168;
            }

            else
            {
              v63 = v60;
            }

            if (v159)
            {
              v62 = v60;
            }

            v162 = [(__CFString *)v63 stringByAppendingFormat:@" • %@", v62];
          }

          else
          {
            v162 = v168;

            v61 = [(__CFString *)v162 length];
          }
        }

        else
        {
          v162 = v60;
        }

        v75 = [v11 identifier];
        v76 = [objc_opt_class() dualSingleLineNameDisplayIdentifier];
        v77 = v75 == v76;

        if (v77)
        {
          v100 = [(STUIStatusBarCellularCondensedItem *)self dualSingleLineNameView];
          [v100 setText:v162];

          v66 = [(STUIStatusBarCellularCondensedItem *)self dualSingleLineNameView];
          [v66 setMarqueeRunning:1];
          goto LABEL_78;
        }

        v78 = [v11 identifier];
        v79 = [objc_opt_class() dualSingleLineNameAndTypeDisplayIdentifier];
        v80 = v78 == v79;

        if (!v80)
        {
LABEL_79:

LABEL_80:
          _Block_object_dispose(&v181, 8);
LABEL_81:

          goto LABEL_82;
        }

        v81 = [v173 styleAttributes];
        v66 = [v81 copy];

        v82 = [(STUIStatusBarCellularCondensedItem *)self dualSingleLineNameAndTypeView];
        v155 = [v66 fontForStyle:{objc_msgSend(v82, "fontStyle")}];

        v83 = [v66 textColor];
        v84 = *MEMORY[0x277D740A8];
        v85 = *MEMORY[0x277D740C0];
        v196[0] = *MEMORY[0x277D740A8];
        v196[1] = v85;
        v197[0] = v155;
        v197[1] = v83;
        v154 = v83;
        v156 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v197 forKeys:v196 count:2];
        v157 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v162 attributes:v156];
        v86 = -[STUIStatusBarCellularCondensedItem _stringForCellularType:](self, "_stringForCellularType:", [v172 type]);
        if (v86 || ([v36 secondaryCellularEntry], v87 = objc_claimAutoreleasedReturnValue(), -[STUIStatusBarCellularCondensedItem _stringForCellularType:](self, "_stringForCellularType:", objc_msgSend(v87, "type")), v86 = objc_claimAutoreleasedReturnValue(), v87, v61 = objc_msgSend(v157, "length"), v86))
        {
          if ([v86 length])
          {
            v175 = 0.0;
            v153 = [(STUIStatusBarCellularCondensedItem *)self _fontForEntry:v172 styleAttributes:v66 baselineOffset:&v175];
            v88 = objc_alloc(MEMORY[0x277CCA898]);
            v194[0] = v84;
            v194[1] = v85;
            v195[0] = v153;
            v195[1] = v154;
            v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v195 forKeys:v194 count:2];
            v90 = [v88 initWithString:v86 attributes:v89];

            if (v159)
            {
              v61 = [v157 length] - v61;
            }

            v91 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@" " attributes:v156];
            [v157 insertAttributedString:v91 atIndex:v61];

            [v157 insertAttributedString:v90 atIndex:v61 + (v159 == 0)];
          }
        }

        v92 = [(STUIStatusBarCellularCondensedItem *)self dualSingleLineNameAndTypeView];
        [v92 setAttributedText:v157];

        v93 = [(STUIStatusBarCellularCondensedItem *)self dualSingleLineNameAndTypeView];
        [v93 setMarqueeRunning:1];

        v67 = v155;
      }
    }

LABEL_78:
    goto LABEL_79;
  }

  v17 = [v11 identifier];
  v18 = [objc_opt_class() dualSingleLineNameAndTypeDisplayIdentifier];
  v4 = v18;
  if (v17 == v18)
  {

    goto LABEL_20;
  }

  v7 = [v11 identifier];
  v19 = [objc_opt_class() nameDisplayIdentifier];
  v20 = v7 == v19;

  if (v20)
  {
    goto LABEL_22;
  }

  v21 = [v11 identifier];
  v22 = [objc_opt_class() typeDisplayIdentifier];
  v23 = v22;
  if (v21 == v22)
  {

    goto LABEL_58;
  }

  v24 = [v11 identifier];
  v25 = [objc_opt_class() externalTypeDisplayIdentifier];
  v26 = v24 == v25;

  if (v26)
  {
LABEL_58:
    if ([v11 isEnabled] && ((objc_msgSend(v173, "styleAttributesChanged") & 1) != 0 || objc_msgSend(v173, "dataChanged")))
    {
      v68 = [v173 styleAttributes];
      v36 = [v68 copy];

      v181 = 0.0;
      v69 = [(STUIStatusBarCellularCondensedItem *)self _fontForEntry:v172 styleAttributes:v36 baselineOffset:&v181];
      v70 = v181;
      [v11 baselineOffset];
      if (v70 != v71)
      {
        [v11 setBaselineOffset:v181];
        v72 = [v11 region];
        v73 = [v72 layout];
        [v73 invalidate];
      }

      [v36 setFont:v69];
      v169 = [(STUIStatusBarCellularCondensedItem *)self _nonCondensedFontRangeForEntry:v172];
      v163 = v74;
      if (v169 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v174.receiver = self;
        v174.super_class = STUIStatusBarCellularCondensedItem;
        [(STUIStatusBarItem *)&v174 applyStyleAttributes:v36 toDisplayItem:v11];
      }

      else
      {
        v105 = objc_alloc(MEMORY[0x277CCAB48]);
        v106 = [(STUIStatusBarCellularItem *)self networkTypeView];
        v107 = [v106 text];
        v108 = *MEMORY[0x277D740A8];
        v193[0] = v69;
        v109 = *MEMORY[0x277D740C0];
        v160 = v108;
        v192[0] = v108;
        v192[1] = v109;
        v110 = [v36 textColor];
        v193[1] = v110;
        v111 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v193 forKeys:v192 count:2];
        v166 = [v105 initWithString:v107 attributes:v111];

        v112 = MEMORY[0x277D74300];
        v113 = [v69 fontDescriptor];
        v114 = [v113 fontDescriptorWithSymbolicTraits:0];
        [v69 pointSize];
        v115 = [v112 fontWithDescriptor:v114 size:?];

        v190[1] = v109;
        v191[0] = v115;
        v190[0] = v160;
        v116 = [v36 textColor];
        v191[1] = v116;
        v117 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v191 forKeys:v190 count:2];
        [v166 setAttributes:v117 range:{v169, v163}];

        v118 = [(STUIStatusBarCellularItem *)self networkTypeView];
        [v118 setAttributedText:v166];
      }

      goto LABEL_81;
    }

    goto LABEL_82;
  }

  v27 = [v11 identifier];
  v28 = [objc_opt_class() animatedTypeDisplayIdentifier];
  v29 = v27 == v28;

  if (v29)
  {
    if (!v172)
    {
      goto LABEL_82;
    }

    if ([v172 isEnabled])
    {
      v36 = -[STUIStatusBarCellularCondensedItem _stringForCellularType:](self, "_stringForCellularType:", [v172 type]);
      v102 = [v11 isEnabled];
      if (v36)
      {
        v103 = v102;
      }

      else
      {
        v103 = 0;
      }

      if (v103 == 1)
      {
        v104 = [v172 isBootstrapCellular] ^ 1;
LABEL_103:
        [v11 setEnabled:v104];
        if ([v11 isEnabled] && ((objc_msgSend(v173, "styleAttributesChanged") & 1) != 0 || objc_msgSend(v173, "dataChanged")))
        {
          v123 = [(STUIStatusBarCellularItem *)self typeStringProvider];

          if (v123)
          {
            v124 = [(STUIStatusBarCellularItem *)self typeStringProvider];
            [v124 animatedTypeDisplayItemSpacingFactorForCellularType:{objc_msgSend(v172, "type")}];
            v126 = v125;
          }

          else
          {
            v126 = 1.0;
          }

          v127 = [(STUIStatusBarCellularCondensedItem *)self animatedNetworkTypeView];
          v128 = [v173 styleAttributes];
          +[STUIStatusBarWifiSignalView widthForIconSize:](STUIStatusBarWifiSignalView, "widthForIconSize:", [v128 iconSize]);
          [v127 setFixedWidth:v126 * v129];

          v181 = NAN;
          v130 = [v172 type];
          v131 = [(STUIStatusBarCellularCondensedItem *)self animatedNetworkTypeView];
          v167 = -[STUIStatusBarCellularCondensedItem _animateServiceType:prefixLength:currentType:](self, "_animateServiceType:prefixLength:currentType:", v130, &v181, [v131 type]);

          v132 = [v173 styleAttributes];
          v133 = [v132 copy];

          v175 = 0.0;
          v170 = [(STUIStatusBarCellularCondensedItem *)self _fontForEntry:v172 styleAttributes:v133 baselineOffset:&v175];
          v134 = v175;
          [v11 baselineOffset];
          if (v134 != v135)
          {
            [v11 setBaselineOffset:v175];
            v136 = [v11 region];
            v137 = [v136 layout];
            [v137 invalidate];
          }

          [v133 setFont:v170];
          v138 = [(STUIStatusBarCellularCondensedItem *)self _nonCondensedFontRangeForEntry:v172];
          v164 = v139;
          v140 = v138;
          if (v138 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v141 = [(STUIStatusBarCellularCondensedItem *)self animatedNetworkTypeView];
            [v141 setText:v36 prefixLength:*&v181 withStyleAttributes:v133 forType:objc_msgSend(v172 animated:{"type"), v167}];
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
            v145 = [v133 textColor];
            v189[1] = v145;
            v146 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v189 forKeys:v188 count:2];
            v141 = [v142 initWithString:v36 attributes:v146];

            v147 = MEMORY[0x277D74300];
            v148 = [v170 fontDescriptor];
            v149 = [v148 fontDescriptorWithSymbolicTraits:0];
            [v170 pointSize];
            v161 = [v147 fontWithDescriptor:v149 size:?];

            v186[1] = v144;
            v187[0] = v161;
            v186[0] = v158;
            v150 = [v133 textColor];
            v187[1] = v150;
            v151 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v187 forKeys:v186 count:2];
            [v141 setAttributes:v151 range:{v140, v164}];

            v152 = [(STUIStatusBarCellularCondensedItem *)self animatedNetworkTypeView];
            [v152 setAttributedText:v141 prefixLength:*&v181 forType:objc_msgSend(v172 animated:{"type"), v167}];
          }
        }

        goto LABEL_81;
      }
    }

    else
    {
      [v11 isEnabled];
      v36 = 0;
    }

    v104 = 0;
    goto LABEL_103;
  }

  v30 = [v11 identifier];
  v31 = [objc_opt_class() sosSignalStrengthDisplayIdentifier];
  v32 = v30 == v31;

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
    v34 = [v11 isEnabled] && (objc_msgSend(v172, "isBootstrapCellular") & 1) == 0 && objc_msgSend(v172, "showsSOSWhenDisabled") && (objc_msgSend(v172, "status") == 1);
    [v11 setEnabled:v34];
    if ([v11 isEnabled])
    {
      v119 = [(STUIStatusBarCellularCondensedItem *)self sosSignalView];
      v120 = [v119 signalView];
      [(STUIStatusBarCellularItem *)self _updateSignalView:v120 withUpdate:v173 entry:v172 forceShowingDisabledSignalBars:1];

      if ([v172 sosAvailable])
      {
        v121 = 1.0;
      }

      else
      {
        v121 = 0.3;
      }

      v36 = [(STUIStatusBarCellularCondensedItem *)self sosSignalView];
      v122 = [v36 sosView];
      [v122 setAlpha:v121];

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

- (void)applyStyleAttributes:(id)a3 toDisplayItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 identifier];
  v9 = [objc_opt_class() typeDisplayIdentifier];
  if (v8 == v9)
  {
    goto LABEL_8;
  }

  v10 = [v7 identifier];
  v11 = [objc_opt_class() externalTypeDisplayIdentifier];
  if (v10 == v11)
  {
LABEL_7:

LABEL_8:
    goto LABEL_9;
  }

  v12 = [v7 identifier];
  v13 = [objc_opt_class() animatedTypeDisplayIdentifier];
  v14 = v13;
  if (v12 == v13)
  {

    goto LABEL_7;
  }

  v15 = [v7 identifier];
  [objc_opt_class() dualSingleLineNameAndTypeDisplayIdentifier];
  v16 = v18 = v6;

  v17 = v15 == v16;
  v6 = v18;
  if (!v17)
  {
    v19.receiver = self;
    v19.super_class = STUIStatusBarCellularCondensedItem;
    [(STUIStatusBarItem *)&v19 applyStyleAttributes:v18 toDisplayItem:v7];
  }

LABEL_9:
}

- (id)_stringForCellularType:(int64_t)a3
{
  v5 = [(STUIStatusBarCellularItem *)self typeStringProvider];

  if (!v5 || (-[STUIStatusBarCellularItem typeStringProvider](self, "typeStringProvider"), v6 = objc_claimAutoreleasedReturnValue(), [v6 stringForCellularType:a3 condensed:1], v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    if (a3 == 7)
    {
      v8 = [MEMORY[0x277CCA8D8] mainBundle];
      v9 = v8;
      v10 = @"5GE[condensed]";
      v11 = @"5G  ᴇ";
    }

    else
    {
      if (a3 == 3)
      {
        v8 = [MEMORY[0x277CCA8D8] mainBundle];
        v9 = v8;
        v10 = @"E";
      }

      else
      {
        if (a3 != 2)
        {
LABEL_11:
          v13.receiver = self;
          v13.super_class = STUIStatusBarCellularCondensedItem;
          v7 = [(STUIStatusBarCellularItem *)&v13 _stringForCellularType:a3];
          goto LABEL_12;
        }

        v8 = [MEMORY[0x277CCA8D8] mainBundle];
        v9 = v8;
        v10 = @"G";
      }

      v11 = &stru_287D04F38;
    }

    v7 = [v8 localizedStringForKey:v10 value:v11 table:0];

    if (v7)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_12:

  return v7;
}

- (id)_fontForEntry:(id)a3 styleAttributes:(id)a4 baselineOffset:(double *)a5
{
  v8 = a3;
  v9 = [a4 smallFont];
  v10 = [(STUIStatusBarCellularItem *)self typeStringProvider];

  v11 = v9;
  if (v10)
  {
    v12 = [(STUIStatusBarCellularItem *)self typeStringProvider];
    v11 = [v12 condensedFontForCellularType:objc_msgSend(v8 defaultFont:"type") baselineOffset:{v9, a5}];
  }

  return v11;
}

- (_NSRange)_nonCondensedFontRangeForEntry:(id)a3
{
  v3 = [a3 type];
  v4 = (v3 & 0xFFFFFFFFFFFFFFFELL) == 12;
  if ((v3 & 0xFFFFFFFFFFFFFFFELL) == 0xC)
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

- (id)_singleCellularEntryMatching:(id)a3
{
  v4 = a3;
  v5 = [(STUIStatusBarItem *)self statusBar];
  v6 = [v5 currentAggregatedData];

  v7 = [v6 cellularEntry];
  if (v4[2](v4, v7))
  {
    v8 = [v6 secondaryCellularEntry];
    v9 = v4[2](v4, v8);

    if ((v9 & 1) == 0)
    {
      v10 = [v6 cellularEntry];
LABEL_9:
      v14 = v10;
      goto LABEL_11;
    }
  }

  else
  {
  }

  v11 = [v6 cellularEntry];
  if (v4[2](v4, v11))
  {
  }

  else
  {
    v12 = [v6 secondaryCellularEntry];
    v13 = v4[2](v4, v12);

    if (v13)
    {
      v10 = [v6 secondaryCellularEntry];
      goto LABEL_9;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (BOOL)_showCallFowardingForEntry:(id)a3
{
  v4 = a3;
  v5 = [(STUIStatusBarItem *)self statusBar];
  v6 = [v5 currentAggregatedData];
  v7 = [v6 secondaryCellularEntry];

  LOBYTE(v5) = [v4 callForwardingEnabled];
  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = [v7 callForwardingEnabled];
  }

  return v8;
}

- (BOOL)_animateServiceType:(int64_t)a3 prefixLength:(int64_t *)a4 currentType:(int64_t)a5
{
  if ((a3 - 11) >= 3)
  {
    return a3 == 10 && (a5 - 11) < 3;
  }

  if (a4)
  {
    *a4 = 2;
  }

  return a5 == 10;
}

- (void)prepareAnimation:(id)a3 forDisplayItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 type] != 1)
  {
    goto LABEL_11;
  }

  v8 = [v7 identifier];
  v9 = [objc_opt_class() dualSingleLineNameDisplayIdentifier];

  if (v8 == v9)
  {
    v12 = [(STUIStatusBarCellularCondensedItem *)self dualSingleLineNameView];
LABEL_6:
    v13 = v12;
    if (v12)
    {
      [v12 setMarqueeRunning:0];
      v14 = v24;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v15 = __70__STUIStatusBarCellularCondensedItem_prepareAnimation_forDisplayItem___block_invoke;
LABEL_10:
      v14[2] = v15;
      v14[3] = &unk_279D37E28;
      v14[4] = v13;
      v22 = v13;
      [v6 addCompletionHandler:v14];

      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v10 = [v7 identifier];
  v11 = [objc_opt_class() dualSingleLineNameAndTypeDisplayIdentifier];

  if (v10 == v11)
  {
    v12 = [(STUIStatusBarCellularCondensedItem *)self dualSingleLineNameAndTypeView];
    goto LABEL_6;
  }

LABEL_8:
  v16 = [v7 identifier];
  v17 = [objc_opt_class() dualNameDisplayIdentifier];

  if (v16 == v17)
  {
    v13 = [(STUIStatusBarCellularCondensedItem *)self dualNameView];
    v18 = [v13 stringViews];
    v19 = [v18 firstObject];
    [v19 setMarqueeRunning:0];

    v20 = [v13 stringViews];
    v21 = [v20 lastObject];
    [v21 setMarqueeRunning:0];

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

- (id)entryForDisplayItemWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() externalSignalStrengthDisplayIdentifier];
  if (v5 == v4)
  {
    goto LABEL_7;
  }

  v6 = [objc_opt_class() externalTypeDisplayIdentifier];
  v7 = v6;
  if (v6 == v4)
  {

LABEL_7:
    goto LABEL_8;
  }

  v8 = [objc_opt_class() externalWarningDisplayIdentifier];

  if (v8 == v4)
  {
LABEL_8:
    v20.receiver = self;
    v20.super_class = STUIStatusBarCellularCondensedItem;
    v12 = [(STUIStatusBarCellularItem *)&v20 entryForDisplayItemWithIdentifier:v4];
    goto LABEL_20;
  }

  v9 = [(STUIStatusBarCellularCondensedItem *)self _singleCellularEntryMatching:&__block_literal_global_279];
  v10 = v9;
  if (!v9)
  {
    v13 = [objc_opt_class() typeDisplayIdentifier];
    if (v13 != v4)
    {
      v14 = [objc_opt_class() animatedTypeDisplayIdentifier];
      v15 = v14;
      if (v14 != v4)
      {
        v16 = [objc_opt_class() nameDisplayIdentifier];

        if (v16 != v4)
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
    v17 = [objc_opt_class() nameDisplayIdentifier];

    if (v17 != v4 || ([(STUIStatusBarCellularCondensedItem *)self _singleCellularEntryMatching:&__block_literal_global_283], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v19.receiver = self;
      v19.super_class = STUIStatusBarCellularCondensedItem;
      v11 = [(STUIStatusBarCellularItem *)&v19 entryForDisplayItemWithIdentifier:v4];
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
  v6 = [(STUIStatusBarMultilineStringView *)self->_dualNameView stringViews];
  v9 = [v6 firstObject];

  [v9 setTextAlignment:1];
  [v9 setFontStyle:2];
  [v9 setMarqueeEnabled:1];
  v7 = [(STUIStatusBarMultilineStringView *)self->_dualNameView stringViews];
  v8 = [v7 lastObject];

  [v8 setTextAlignment:1];
  [v8 setFontStyle:2];
  [v8 setMarqueeEnabled:1];
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

- (id)viewForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() dualSignalStrengthDisplayIdentifier];

  if (v5 == v4)
  {
    v14 = [(STUIStatusBarCellularCondensedItem *)self dualSignalView];
  }

  else
  {
    v6 = [objc_opt_class() dualNameDisplayIdentifier];

    if (v6 == v4)
    {
      v14 = [(STUIStatusBarCellularCondensedItem *)self dualNameView];
    }

    else
    {
      v7 = [objc_opt_class() dualSingleLineNameDisplayIdentifier];

      if (v7 == v4)
      {
        v14 = [(STUIStatusBarCellularCondensedItem *)self dualSingleLineNameView];
      }

      else
      {
        v8 = [objc_opt_class() dualSingleLineNameAndTypeDisplayIdentifier];

        if (v8 == v4)
        {
          v14 = [(STUIStatusBarCellularCondensedItem *)self dualSingleLineNameAndTypeView];
        }

        else
        {
          v9 = [objc_opt_class() animatedTypeDisplayIdentifier];

          if (v9 == v4)
          {
            v14 = [(STUIStatusBarCellularCondensedItem *)self animatedNetworkTypeView];
          }

          else
          {
            v10 = [objc_opt_class() sosSignalStrengthDisplayIdentifier];

            if (v10 == v4)
            {
              v14 = [(STUIStatusBarCellularCondensedItem *)self sosSignalView];
            }

            else
            {
              v11 = [objc_opt_class() externalSignalStrengthDisplayIdentifier];

              if (v11 == v4)
              {
                v14 = [(STUIStatusBarCellularItem *)self signalView];
              }

              else
              {
                v12 = [objc_opt_class() externalTypeDisplayIdentifier];

                if (v12 == v4)
                {
                  v14 = [(STUIStatusBarCellularItem *)self networkTypeView];
                }

                else
                {
                  v13 = [objc_opt_class() externalWarningDisplayIdentifier];

                  if (v13 == v4)
                  {
                    v14 = [(STUIStatusBarCellularItem *)self warningView];
                  }

                  else
                  {
                    v17.receiver = self;
                    v17.super_class = STUIStatusBarCellularCondensedItem;
                    v14 = [(STUIStatusBarCellularItem *)&v17 viewForIdentifier:v4];
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v15 = v14;

  return v15;
}

+ (id)groupWithHighPriority:(int64_t)a3 lowPriority:(int64_t)a4 typeClass:(Class)a5 allowDualNetwork:(BOOL)a6
{
  v55[1] = *MEMORY[0x277D85DE8];
  if (a6)
  {
    v7 = a3 - a4;
    v49.receiver = a1;
    v49.super_class = &OBJC_METACLASS___STUIStatusBarCellularCondensedItem;
    v8 = objc_msgSendSuper2(&v49, sel_groupWithHighPriority_lowPriority_typeClass_allowDualNetwork_, a3 - a4, 0, a5, 1);
    v9 = [a1 dualSignalStrengthDisplayIdentifier];
    v10 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v9 priority:v7 + 7];
    v11 = [v8 signalStrengthPlacement];
    v55[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:1];
    v13 = [v10 excludingPlacements:v12];

    v14 = [a1 dualSingleLineNameDisplayIdentifier];
    v15 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v14 priority:v7 + 3];
    v16 = [v8 namePlacement];
    v54 = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
    v18 = [v15 excludingPlacements:v17];

    v19 = [v8 typePlacement];
    v46 = v13;
    v53 = v13;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
    v21 = [v19 requiringAnyPlacements:v20];

    v22 = [a1 dualSingleLineNameAndTypeDisplayIdentifier];
    v23 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v22 priority:v7 + 5];
    v24 = [v8 namePlacement];
    v52[0] = v24;
    v52[1] = v18;
    v25 = v18;
    v44 = v18;
    v52[2] = v21;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:3];
    v45 = [v23 excludingPlacements:v26];

    v27 = [v8 signalStrengthPlacement];
    v51[0] = v27;
    v51[1] = v13;
    v28 = [v8 warningPlacement];
    v51[2] = v28;
    v29 = [v8 rawPlacement];
    v51[3] = v29;
    v30 = [v8 namePlacement];
    v51[4] = v30;
    v51[5] = v25;
    v51[6] = v45;
    v51[7] = v21;
    v31 = [v8 callForwardingPlacement];
    v51[8] = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:9];
    v33 = [(STUIStatusBarDisplayItemPlacementGroup *)STUIStatusBarDisplayItemPlacementCellularGroup groupWithPriority:a4 placements:v32];

    v34 = [v8 signalStrengthPlacement];
    [v33 setSignalStrengthPlacement:v34];

    v35 = [v8 warningPlacement];
    [v33 setWarningPlacement:v35];

    v36 = [v8 namePlacement];
    [v33 setNamePlacement:v36];

    [v33 setTypePlacement:v21];
    v37 = [v8 callForwardingPlacement];
    [v33 setCallForwardingPlacement:v37];

    v38 = [v8 rawPlacement];
    [v33 setRawPlacement:v38];

    [v33 setDualSignalStrengthPlacement:v46];
    [v33 setDualNamePlacement:v44];
    [v33 setDualNameAndTypePlacement:v45];
    v39 = [v8 placementsAffectedByAirplaneMode];
    v50 = v46;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
    v41 = [v39 arrayByAddingObjectsFromArray:v40];
    [v33 setPlacementsAffectedByAirplaneMode:v41];

    v42 = [v8 sosPlacement];
    [v33 setSosPlacement:v42];
  }

  else
  {
    v48.receiver = a1;
    v48.super_class = &OBJC_METACLASS___STUIStatusBarCellularCondensedItem;
    v33 = objc_msgSendSuper2(&v48, sel_groupWithHighPriority_lowPriority_typeClass_allowDualNetwork_, a3, a4, a5);
  }

  return v33;
}

@end