@interface _UIStatusBarCellularCondensedItem
+ (id)groupWithHighPriority:(int64_t)a3 lowPriority:(int64_t)a4 typeClass:(Class)a5 allowDualNetwork:(BOOL)a6;
- (BOOL)_animateServiceType:(int64_t)a3 prefixLength:(int64_t *)a4 currentType:(int64_t)a5;
- (BOOL)_showCallFowardingForEntry:(id)a3;
- (BOOL)canEnableDisplayItem:(id)a3 fromData:(id)a4;
- (_NSRange)_nonCondensedFontRangeForEntry:(id)a3;
- (_UIStatusBarCellularCondensedItem)initWithIdentifier:(id)a3 statusBar:(id)a4;
- (_UIStatusBarCellularNetworkTypeView)animatedNetworkTypeView;
- (_UIStatusBarDualCellularSignalView)dualSignalView;
- (_UIStatusBarEmergencySignalView)sosSignalView;
- (_UIStatusBarMultilineStringView)dualNameView;
- (_UIStatusBarStringView)dualSingleLineNameAndTypeView;
- (_UIStatusBarStringView)dualSingleLineNameView;
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
@end

@implementation _UIStatusBarCellularCondensedItem

- (_UIStatusBarCellularCondensedItem)initWithIdentifier:(id)a3 statusBar:(id)a4
{
  v6.receiver = self;
  v6.super_class = _UIStatusBarCellularCondensedItem;
  v4 = [(_UIStatusBarCellularItem *)&v6 initWithIdentifier:a3 statusBar:a4];
  [(_UIStatusBarCellularCondensedItem *)v4 setReducesFontSize:1];
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
    v14.super_class = _UIStatusBarCellularCondensedItem;
    v12 = [(_UIStatusBarItem *)&v14 canEnableDisplayItem:v7 fromData:v6];
  }

  else
  {
    v10 = [v7 identifier];

    v11 = [(_UIStatusBarCellularCondensedItem *)self entryForDisplayItemWithIdentifier:v10];
    v12 = [v11 isEnabled];
  }

  return v12;
}

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v195[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v183.receiver = self;
  v183.super_class = _UIStatusBarCellularCondensedItem;
  v171 = v7;
  v169 = [(_UIStatusBarCellularItem *)&v183 applyUpdate:v7 toDisplayItem:v8];
  v9 = [v8 identifier];
  v170 = [(_UIStatusBarCellularCondensedItem *)self entryForDisplayItemWithIdentifier:v9];

  v10 = [v8 identifier];
  v11 = [objc_opt_class() dualSignalStrengthDisplayIdentifier];
  LODWORD(v7) = v10 == v11;

  if (v7)
  {
    v32 = [(_UIStatusBarItem *)self statusBar];
    v33 = [v32 currentAggregatedData];

    v34 = [(_UIStatusBarCellularCondensedItem *)self dualSignalView];
    v35 = [v34 topSignalView];
    v36 = [v33 cellularEntry];
    v37 = [(_UIStatusBarCellularItem *)self _updateSignalView:v35 withUpdate:v171 entry:v36 forceShowingDisabledSignalBars:1];

    v38 = [(_UIStatusBarCellularCondensedItem *)self dualSignalView];
    v39 = [v38 bottomSignalView];
    v40 = [v33 secondaryCellularEntry];
    v41 = [(_UIStatusBarCellularItem *)self _updateSignalView:v39 withUpdate:v171 entry:v40 forceShowingDisabledSignalBars:1];

    if ([v171 dataChanged])
    {
      [v8 setEnabled:v37 & v41];
    }

    goto LABEL_111;
  }

  v12 = [v8 identifier];
  v13 = [objc_opt_class() dualNameDisplayIdentifier];
  if (v12 == v13)
  {
    goto LABEL_19;
  }

  v14 = [v8 identifier];
  v15 = [objc_opt_class() dualSingleLineNameDisplayIdentifier];
  if (v14 == v15)
  {
LABEL_18:

LABEL_19:
LABEL_20:
    v42 = [(_UIStatusBarItem *)self statusBar];
    v33 = [v42 currentAggregatedData];

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
      v46 = [v33 cellularEntry];
      v45 = __63___UIStatusBarCellularCondensedItem_applyUpdate_toDisplayItem___block_invoke_2(v174, v46, &v178 + 1);

      v42 = [v33 secondaryCellularEntry];
      v44 = v175(v174, v42, &v178);

      if ((v180[3] & 1) == 0 && [(__CFString *)v45 length]&& [(__CFString *)v44 length]&& ([(__CFString *)v45 isEqualToString:v44]& 1) == 0)
      {
        *(v180 + 24) = 1;
      }
    }

    v47 = [v8 isEnabled];
    if (v47)
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
      v42 = [v8 identifier];
      v4 = [objc_opt_class() nameDisplayIdentifier];
      v50 = v49 != (v42 == v4);
    }

    else
    {
      v50 = 0;
    }

    [v8 setEnabled:v50];
    if (v47)
    {
    }

    if (*(v180 + 24) != 1 || ![v8 isEnabled])
    {
      goto LABEL_110;
    }

    v51 = [v8 identifier];
    v52 = [objc_opt_class() nameDisplayIdentifier];
    v53 = v51 == v52;

    if (v53)
    {
      if ((v178 & 0x100) != 0 || (v178 & 1) == 0)
      {
        if ([v170 type])
        {
          goto LABEL_110;
        }

        v62 = [v33 secondaryCellularEntry];
        v63 = [v62 type] == 0;

        if (v63)
        {
          goto LABEL_110;
        }
      }

      v166 = [(_UIStatusBarCellularItem *)self serviceNameView];
      [(__CFString *)v166 setText:v44];
      v64 = [v33 secondaryCellularEntry];
      v65 = [v64 crossfadeString];
      [(__CFString *)v166 setAlternateText:v65];
    }

    else
    {
      v54 = [v8 identifier];
      v55 = [objc_opt_class() dualNameDisplayIdentifier];
      v56 = v54 == v55;

      if (v56)
      {
        v166 = [(_UIStatusBarCellularCondensedItem *)self dualNameView];
        v89 = [(__CFString *)v166 stringViews];
        v90 = [v89 firstObject];
        [v90 setText:v45];

        v91 = [(__CFString *)v166 stringViews];
        v92 = [v91 firstObject];
        [v92 setMarqueeRunning:1];

        v93 = [(__CFString *)v166 stringViews];
        v94 = [v93 lastObject];
        [v94 setText:v44];

        v64 = [(__CFString *)v166 stringViews];
        v65 = [v64 lastObject];
        [v65 setMarqueeRunning:1];
      }

      else
      {
        v57 = [(_UIStatusBarItem *)self statusBar];
        v160 = [v57 effectiveUserInterfaceLayoutDirection];

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
            if (v160)
            {
              v60 = v44;
            }

            else
            {
              v60 = v59;
            }

            if (v160)
            {
              v61 = v59;
            }

            else
            {
              v61 = v44;
            }

            v166 = [(__CFString *)v60 stringByAppendingFormat:@" • %@", v61];
          }

          else
          {
            v166 = v44;

            v163 = [(__CFString *)v166 length];
          }
        }

        else
        {
          v166 = v59;
        }

        v73 = [v8 identifier];
        v74 = [objc_opt_class() dualSingleLineNameDisplayIdentifier];
        v75 = v73 == v74;

        if (v75)
        {
          v98 = [(_UIStatusBarCellularCondensedItem *)self dualSingleLineNameView];
          [v98 setText:v166];

          v64 = [(_UIStatusBarCellularCondensedItem *)self dualSingleLineNameView];
          [v64 setMarqueeRunning:1];
LABEL_108:

          goto LABEL_109;
        }

        v76 = [v8 identifier];
        v77 = [objc_opt_class() dualSingleLineNameAndTypeDisplayIdentifier];
        v78 = v76 == v77;

        if (!v78)
        {
LABEL_109:

LABEL_110:
          _Block_object_dispose(&v179, 8);
LABEL_111:

          goto LABEL_112;
        }

        v79 = [v171 styleAttributes];
        v64 = [v79 copy];

        v80 = [(_UIStatusBarCellularCondensedItem *)self dualSingleLineNameAndTypeView];
        v154 = [v64 fontForStyle:{objc_msgSend(v80, "fontStyle")}];

        v81 = [v64 textColor];
        v82 = *off_1E70EC920;
        v149 = *off_1E70EC918;
        v194[0] = *off_1E70EC918;
        v194[1] = v82;
        v195[0] = v154;
        v195[1] = v81;
        v153 = v81;
        v155 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v195 forKeys:v194 count:2];
        v157 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v166 attributes:v155];
        v83 = -[_UIStatusBarCellularCondensedItem _stringForCellularType:](self, "_stringForCellularType:", [v170 type]);
        if (v83 || ([v33 secondaryCellularEntry], v84 = objc_claimAutoreleasedReturnValue(), -[_UIStatusBarCellularCondensedItem _stringForCellularType:](self, "_stringForCellularType:", objc_msgSend(v84, "type")), v85 = objc_claimAutoreleasedReturnValue(), v84, v163 = objc_msgSend(v157, "length"), (v83 = v85) != 0))
        {
          v152 = v83;
          if ([v83 length])
          {
            v173 = 0.0;
            v151 = [(_UIStatusBarCellularCondensedItem *)self _fontForEntry:v170 styleAttributes:v64 baselineOffset:&v173];
            v86 = objc_alloc(MEMORY[0x1E696AAB0]);
            v192[0] = v149;
            v192[1] = v82;
            v193[0] = v151;
            v193[1] = v153;
            v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v193 forKeys:v192 count:2];
            v150 = [v86 initWithString:v152 attributes:v87];

            if (v160)
            {
              v163 = [v157 length] - v163;
            }

            v88 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" " attributes:v155];
            [v157 insertAttributedString:v88 atIndex:v163];

            [v157 insertAttributedString:v150 atIndex:v163 + (v160 == 0)];
          }
        }

        else
        {
          v152 = 0;
        }

        v145 = [(_UIStatusBarCellularCondensedItem *)self dualSingleLineNameAndTypeView];
        [v145 setAttributedText:v157];

        v146 = [(_UIStatusBarCellularCondensedItem *)self dualSingleLineNameAndTypeView];
        [v146 setMarqueeRunning:1];

        v65 = v154;
      }
    }

    goto LABEL_108;
  }

  v16 = [v8 identifier];
  v17 = [objc_opt_class() dualSingleLineNameAndTypeDisplayIdentifier];
  v18 = v17;
  if (v16 == v17)
  {

    goto LABEL_18;
  }

  v4 = [v8 identifier];
  v19 = [objc_opt_class() nameDisplayIdentifier];
  v20 = v4 == v19;

  if (v20)
  {
    goto LABEL_20;
  }

  v21 = [v8 identifier];
  v22 = [objc_opt_class() typeDisplayIdentifier];
  v23 = v21 == v22;

  if (v23)
  {
    if ([v8 isEnabled] && ((objc_msgSend(v171, "styleAttributesChanged") & 1) != 0 || objc_msgSend(v171, "dataChanged")))
    {
      v66 = [v171 styleAttributes];
      v33 = [v66 copy];

      v179 = 0.0;
      v67 = [(_UIStatusBarCellularCondensedItem *)self _fontForEntry:v170 styleAttributes:v33 baselineOffset:&v179];
      v68 = v179;
      [v8 baselineOffset];
      if (v68 != v69)
      {
        [v8 setBaselineOffset:v179];
        v70 = [v8 region];
        v71 = [v70 layout];
        [v71 invalidate];
      }

      [v33 setFont:v67];
      v167 = [(_UIStatusBarCellularCondensedItem *)self _nonCondensedFontRangeForEntry:v170];
      v161 = v72;
      if (v167 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v172.receiver = self;
        v172.super_class = _UIStatusBarCellularCondensedItem;
        [(_UIStatusBarItem *)&v172 applyStyleAttributes:v33 toDisplayItem:v8];
      }

      else
      {
        v107 = objc_alloc(MEMORY[0x1E696AD40]);
        v108 = [(_UIStatusBarCellularItem *)self networkTypeView];
        v109 = [v108 text];
        v110 = *off_1E70EC918;
        v191[0] = v67;
        v111 = *off_1E70EC920;
        v158 = v110;
        v190[0] = v110;
        v190[1] = v111;
        v112 = [v33 textColor];
        v191[1] = v112;
        v113 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v191 forKeys:v190 count:2];
        v164 = [v107 initWithString:v109 attributes:v113];

        v114 = [v67 fontDescriptor];
        v115 = [v114 fontDescriptorWithSymbolicTraits:0];
        [v67 pointSize];
        v116 = [off_1E70ECC18 fontWithDescriptor:v115 size:?];

        v188[1] = v111;
        v189[0] = v116;
        v188[0] = v158;
        v117 = [v33 textColor];
        v189[1] = v117;
        v118 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v189 forKeys:v188 count:2];
        [v164 setAttributes:v118 range:{v167, v161}];

        v119 = [(_UIStatusBarCellularItem *)self networkTypeView];
        [v119 setAttributedText:v164];
      }

      goto LABEL_111;
    }

    goto LABEL_112;
  }

  v24 = [v8 identifier];
  v25 = [objc_opt_class() animatedTypeDisplayIdentifier];
  v26 = v24 == v25;

  if (v26)
  {
    if (!v170)
    {
      goto LABEL_112;
    }

    if ([v170 isEnabled])
    {
      v33 = -[_UIStatusBarCellularCondensedItem _stringForCellularType:](self, "_stringForCellularType:", [v170 type]);
      v95 = [v8 isEnabled];
      if (v33)
      {
        v96 = v95;
      }

      else
      {
        v96 = 0;
      }

      if (v96 == 1)
      {
        v97 = [v170 isBootstrapCellular] ^ 1;
LABEL_91:
        [v8 setEnabled:v97];
        if ([v8 isEnabled] && ((objc_msgSend(v171, "styleAttributesChanged") & 1) != 0 || objc_msgSend(v171, "dataChanged")))
        {
          v103 = [(_UIStatusBarCellularItem *)self typeStringProvider];

          if (v103)
          {
            v104 = [(_UIStatusBarCellularItem *)self typeStringProvider];
            [v104 animatedTypeDisplayItemSpacingFactorForCellularType:{objc_msgSend(v170, "type")}];
            v106 = v105;
          }

          else
          {
            v106 = 1.0;
          }

          v120 = [(_UIStatusBarCellularCondensedItem *)self animatedNetworkTypeView];
          v121 = [v171 styleAttributes];
          +[_UIStatusBarWifiSignalView widthForIconSize:](_UIStatusBarWifiSignalView, "widthForIconSize:", [v121 iconSize]);
          [v120 setFixedWidth:v106 * v122];

          v179 = NAN;
          v123 = [v170 type];
          v124 = [(_UIStatusBarCellularCondensedItem *)self animatedNetworkTypeView];
          v165 = -[_UIStatusBarCellularCondensedItem _animateServiceType:prefixLength:currentType:](self, "_animateServiceType:prefixLength:currentType:", v123, &v179, [v124 type]);

          v125 = [v171 styleAttributes];
          v126 = [v125 copy];

          v173 = 0.0;
          v168 = [(_UIStatusBarCellularCondensedItem *)self _fontForEntry:v170 styleAttributes:v126 baselineOffset:&v173];
          v127 = v173;
          [v8 baselineOffset];
          if (v127 != v128)
          {
            [v8 setBaselineOffset:v173];
            v129 = [v8 region];
            v130 = [v129 layout];
            [v130 invalidate];
          }

          [v126 setFont:v168];
          v131 = [(_UIStatusBarCellularCondensedItem *)self _nonCondensedFontRangeForEntry:v170];
          v162 = v132;
          v133 = v131;
          if (v131 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v134 = [(_UIStatusBarCellularCondensedItem *)self animatedNetworkTypeView];
            [v134 setText:v33 prefixLength:*&v179 withStyleAttributes:v126 forType:objc_msgSend(v170 animated:{"type"), v165}];
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
            v138 = [v126 textColor];
            v187[1] = v138;
            v139 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v187 forKeys:v186 count:2];
            v134 = [v135 initWithString:v33 attributes:v139];

            v140 = [v168 fontDescriptor];
            v141 = [v140 fontDescriptorWithSymbolicTraits:0];
            [v168 pointSize];
            v159 = [off_1E70ECC18 fontWithDescriptor:v141 size:?];

            v184[1] = v137;
            v185[0] = v159;
            v184[0] = v156;
            v142 = [v126 textColor];
            v185[1] = v142;
            v143 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v185 forKeys:v184 count:2];
            [v134 setAttributes:v143 range:{v133, v162}];

            v144 = [(_UIStatusBarCellularCondensedItem *)self animatedNetworkTypeView];
            [v144 setAttributedText:v134 prefixLength:*&v179 forType:objc_msgSend(v170 animated:{"type"), v165}];
          }
        }

        goto LABEL_111;
      }
    }

    else
    {
      [v8 isEnabled];
      v33 = 0;
    }

    v97 = 0;
    goto LABEL_91;
  }

  v27 = [v8 identifier];
  v28 = [objc_opt_class() sosSignalStrengthDisplayIdentifier];
  v29 = v27 == v28;

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
    v31 = [v8 isEnabled] && objc_msgSend(v170, "showsSOSWhenDisabled") && (objc_msgSend(v170, "status") == 1);
    [v8 setEnabled:v31];
    if ([v8 isEnabled])
    {
      v99 = [(_UIStatusBarCellularCondensedItem *)self sosSignalView];
      v100 = [v99 signalView];
      [(_UIStatusBarCellularItem *)self _updateSignalView:v100 withUpdate:v171 entry:v170 forceShowingDisabledSignalBars:1];

      if ([v170 sosAvailable])
      {
        v101 = 1.0;
      }

      else
      {
        v101 = 0.3;
      }

      v33 = [(_UIStatusBarCellularCondensedItem *)self sosSignalView];
      v102 = [v33 sosView];
      [v102 setAlpha:v101];

      goto LABEL_111;
    }
  }

LABEL_112:

  return v169;
}

- (void)applyStyleAttributes:(id)a3 toDisplayItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 identifier];
  v9 = [objc_opt_class() typeDisplayIdentifier];
  if (v8 == v9)
  {
    goto LABEL_6;
  }

  v10 = [v7 identifier];
  v11 = [objc_opt_class() animatedTypeDisplayIdentifier];
  v12 = v11;
  if (v10 == v11)
  {

LABEL_6:
    goto LABEL_7;
  }

  v13 = [v7 identifier];
  v14 = [objc_opt_class() dualSingleLineNameAndTypeDisplayIdentifier];

  if (v13 != v14)
  {
    v15.receiver = self;
    v15.super_class = _UIStatusBarCellularCondensedItem;
    [(_UIStatusBarItem *)&v15 applyStyleAttributes:v6 toDisplayItem:v7];
  }

LABEL_7:
}

- (id)_stringForCellularType:(int64_t)a3
{
  v5 = [(_UIStatusBarCellularItem *)self typeStringProvider];

  if (!v5 || (-[_UIStatusBarCellularItem typeStringProvider](self, "typeStringProvider"), v6 = objc_claimAutoreleasedReturnValue(), [v6 stringForCellularType:a3 condensed:1], v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    if (a3 == 7)
    {
      v8 = @"5GE[condensed]";
      v9 = @"5G  ᴇ";
    }

    else
    {
      if (a3 == 3)
      {
        v8 = @"E";
      }

      else
      {
        if (a3 != 2)
        {
LABEL_11:
          v11.receiver = self;
          v11.super_class = _UIStatusBarCellularCondensedItem;
          v7 = [(_UIStatusBarCellularItem *)&v11 _stringForCellularType:a3];
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

- (id)_fontForEntry:(id)a3 styleAttributes:(id)a4 baselineOffset:(double *)a5
{
  v8 = a3;
  v9 = [a4 smallFont];
  v10 = [(_UIStatusBarCellularItem *)self typeStringProvider];

  v11 = v9;
  if (v10)
  {
    v12 = [(_UIStatusBarCellularItem *)self typeStringProvider];
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
  v5 = [(_UIStatusBarItem *)self statusBar];
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
  v5 = [(_UIStatusBarItem *)self statusBar];
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
    v12 = [(_UIStatusBarCellularCondensedItem *)self dualSingleLineNameView];
LABEL_6:
    v13 = v12;
    if (v12)
    {
      [v12 setMarqueeRunning:0];
      v14 = v24;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v15 = __69___UIStatusBarCellularCondensedItem_prepareAnimation_forDisplayItem___block_invoke;
LABEL_10:
      v14[2] = v15;
      v14[3] = &unk_1E70F5DB8;
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
    v12 = [(_UIStatusBarCellularCondensedItem *)self dualSingleLineNameAndTypeView];
    goto LABEL_6;
  }

LABEL_8:
  v16 = [v7 identifier];
  v17 = [objc_opt_class() dualNameDisplayIdentifier];

  if (v16 == v17)
  {
    v13 = [(_UIStatusBarCellularCondensedItem *)self dualNameView];
    v18 = [v13 stringViews];
    v19 = [v18 firstObject];
    [v19 setMarqueeRunning:0];

    v20 = [v13 stringViews];
    v21 = [v20 lastObject];
    [v21 setMarqueeRunning:0];

    v14 = v23;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v15 = __69___UIStatusBarCellularCondensedItem_prepareAnimation_forDisplayItem___block_invoke_2;
    goto LABEL_10;
  }

LABEL_11:
}

- (id)entryForDisplayItemWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(_UIStatusBarCellularCondensedItem *)self _singleCellularEntryMatching:&__block_literal_global_236_0];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    goto LABEL_13;
  }

  v8 = [objc_opt_class() typeDisplayIdentifier];
  if (v8 == v4)
  {
    goto LABEL_8;
  }

  v9 = [objc_opt_class() animatedTypeDisplayIdentifier];
  v10 = v9;
  if (v9 == v4)
  {

LABEL_8:
    goto LABEL_9;
  }

  v11 = [objc_opt_class() nameDisplayIdentifier];

  if (v11 == v4)
  {
LABEL_9:
    v7 = [(_UIStatusBarCellularCondensedItem *)self _singleCellularEntryMatching:&__block_literal_global_238];
    if (v7)
    {
      goto LABEL_13;
    }
  }

  v12 = [objc_opt_class() nameDisplayIdentifier];

  if (v12 != v4 || ([(_UIStatusBarCellularCondensedItem *)self _singleCellularEntryMatching:&__block_literal_global_240], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v15.receiver = self;
    v15.super_class = _UIStatusBarCellularCondensedItem;
    v7 = [(_UIStatusBarCellularItem *)&v15 entryForDisplayItemWithIdentifier:v4];
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

  v6 = [(_UIStatusBarDualCellularSignalView *)self->_dualSignalView topSignalView];
  [v6 setNumberOfBars:4];

  v7 = [(_UIStatusBarDualCellularSignalView *)self->_dualSignalView bottomSignalView];
  [v7 setNumberOfBars:4];
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
  v6 = [(_UIStatusBarMultilineStringView *)self->_dualNameView stringViews];
  v9 = [v6 firstObject];

  [v9 setTextAlignment:1];
  [v9 setFontStyle:2];
  [v9 setMarqueeEnabled:1];
  v7 = [(_UIStatusBarMultilineStringView *)self->_dualNameView stringViews];
  v8 = [v7 lastObject];

  [v8 setTextAlignment:1];
  [v8 setFontStyle:2];
  [v8 setMarqueeEnabled:1];
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

  v6 = [(_UIStatusBarEmergencySignalView *)self->_sosSignalView signalView];
  [v6 setNumberOfBars:4];
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

- (id)viewForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() dualSignalStrengthDisplayIdentifier];

  if (v5 == v4)
  {
    v11 = [(_UIStatusBarCellularCondensedItem *)self dualSignalView];
  }

  else
  {
    v6 = [objc_opt_class() dualNameDisplayIdentifier];

    if (v6 == v4)
    {
      v11 = [(_UIStatusBarCellularCondensedItem *)self dualNameView];
    }

    else
    {
      v7 = [objc_opt_class() dualSingleLineNameDisplayIdentifier];

      if (v7 == v4)
      {
        v11 = [(_UIStatusBarCellularCondensedItem *)self dualSingleLineNameView];
      }

      else
      {
        v8 = [objc_opt_class() dualSingleLineNameAndTypeDisplayIdentifier];

        if (v8 == v4)
        {
          v11 = [(_UIStatusBarCellularCondensedItem *)self dualSingleLineNameAndTypeView];
        }

        else
        {
          v9 = [objc_opt_class() animatedTypeDisplayIdentifier];

          if (v9 == v4)
          {
            v11 = [(_UIStatusBarCellularCondensedItem *)self animatedNetworkTypeView];
          }

          else
          {
            v10 = [objc_opt_class() sosSignalStrengthDisplayIdentifier];

            if (v10 == v4)
            {
              v11 = [(_UIStatusBarCellularCondensedItem *)self sosSignalView];
            }

            else
            {
              v14.receiver = self;
              v14.super_class = _UIStatusBarCellularCondensedItem;
              v11 = [(_UIStatusBarCellularItem *)&v14 viewForIdentifier:v4];
            }
          }
        }
      }
    }
  }

  v12 = v11;

  return v12;
}

+ (id)groupWithHighPriority:(int64_t)a3 lowPriority:(int64_t)a4 typeClass:(Class)a5 allowDualNetwork:(BOOL)a6
{
  v54[1] = *MEMORY[0x1E69E9840];
  if (a6)
  {
    v7 = a3 - a4;
    v48.receiver = a1;
    v48.super_class = &OBJC_METACLASS____UIStatusBarCellularCondensedItem;
    v8 = objc_msgSendSuper2(&v48, sel_groupWithHighPriority_lowPriority_typeClass_allowDualNetwork_, a3 - a4, 0, a5, 1);
    v9 = [a1 dualSignalStrengthDisplayIdentifier];
    v10 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v9 priority:v7 + 7];
    v11 = [v8 signalStrengthPlacement];
    v54[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
    v13 = [v10 excludingPlacements:v12];

    v14 = [a1 dualSingleLineNameDisplayIdentifier];
    v15 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v14 priority:v7 + 3];
    v16 = [v8 namePlacement];
    v53 = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
    v18 = [v15 excludingPlacements:v17];

    v19 = [v8 typePlacement];
    v45 = v13;
    v52 = v13;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
    v21 = [v19 requiringAnyPlacements:v20];

    v22 = [a1 dualSingleLineNameAndTypeDisplayIdentifier];
    v23 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v22 priority:v7 + 5];
    v24 = [v8 namePlacement];
    v51[0] = v24;
    v51[1] = v18;
    v25 = v18;
    v43 = v18;
    v51[2] = v21;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:3];
    v44 = [v23 excludingPlacements:v26];

    v27 = [v8 signalStrengthPlacement];
    v50[0] = v27;
    v50[1] = v13;
    v28 = [v8 warningPlacement];
    v50[2] = v28;
    v29 = [v8 rawPlacement];
    v50[3] = v29;
    v30 = [v8 namePlacement];
    v50[4] = v30;
    v50[5] = v25;
    v50[6] = v44;
    v50[7] = v21;
    v31 = [v8 callForwardingPlacement];
    v50[8] = v31;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:9];
    v33 = [(_UIStatusBarDisplayItemPlacementGroup *)_UIStatusBarDisplayItemPlacementCellularGroup groupWithPriority:a4 placements:v32];

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

    [v33 setDualSignalStrengthPlacement:v45];
    [v33 setDualNamePlacement:v43];
    [v33 setDualNameAndTypePlacement:v44];
    v39 = [v8 placementsAffectedByAirplaneMode];
    v49 = v45;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
    v41 = [v39 arrayByAddingObjectsFromArray:v40];
    [v33 setPlacementsAffectedByAirplaneMode:v41];
  }

  else
  {
    v47.receiver = a1;
    v47.super_class = &OBJC_METACLASS____UIStatusBarCellularCondensedItem;
    v33 = objc_msgSendSuper2(&v47, sel_groupWithHighPriority_lowPriority_typeClass_allowDualNetwork_, a3, a4, a5);
  }

  return v33;
}

@end