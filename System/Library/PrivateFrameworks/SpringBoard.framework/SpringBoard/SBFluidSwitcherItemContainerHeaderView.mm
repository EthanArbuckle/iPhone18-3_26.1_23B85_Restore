@interface SBFluidSwitcherItemContainerHeaderView
+ (double)distanceFromBoundingLeadingEdgeToIconTrailingEdge;
- (SBFluidSwitcherItemContainerHeaderView)initWithFrame:(CGRect)frame delegate:(id)delegate;
- (SBFluidSwitcherItemContainerHeaderViewDelegate)delegate;
- (id)_makeMultipleWindowsIndicatorView;
- (id)_multiWindowIndicatorAccessibilityIdentifierForDisplayItem:(id)item;
- (id)_titleLabelFont;
- (void)_applyPrototypeSettings;
- (void)_contentSizeCategoryDidChangeNotification:(id)notification;
- (void)_handleTapGestureRecognizer:(id)recognizer;
- (void)_updateTitleAlpha;
- (void)_updateVisualStylingWithTitleItems:(id)items;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setTextAlpha:(double)alpha;
- (void)setTitleItems:(id)items animated:(BOOL)animated;
@end

@implementation SBFluidSwitcherItemContainerHeaderView

+ (double)distanceFromBoundingLeadingEdgeToIconTrailingEdge
{
  v2 = +[SBAppSwitcherDomain rootSettings];
  [v2 spacingBetweenLeadingEdgeAndIcon];
  v4 = v3;
  [v2 iconSideLength];
  v6 = v4 + v5;

  return v6;
}

- (void)_applyPrototypeSettings
{
  v14 = +[SBAppSwitcherDomain rootSettings];
  [v14 spacingBetweenLeadingEdgeAndIcon];
  self->_spacingBetweenLeadingEdgeAndIcon = v3;
  [v14 spacingBetweenTrailingEdgeAndLabels];
  self->_spacingBetweenTrailingEdgeAndLabels = v4;
  [v14 iconSideLength];
  self->_iconSideLength = v5;
  [v14 spacingBetweenSnapshotAndIcon];
  self->_spacingBetweenSnapshotAndIcon = v6;
  [v14 spacingBetweenSnapshotAndDescriptionLabelBaseline];
  self->_spacingBetweenSnapshotAndDescriptionLabelBaseline = v7;
  [v14 spacingBetweenTitleAndSubtitleBaseline];
  self->_spacingBetweenTitleAndSubtitleBaseline = v8;
  [v14 spacingBetweenIconAndLabel];
  self->_spacingBetweenIconAndLabel = v9;
  [v14 spacingBetweenLabelAndMultipleWindowsIndicator];
  self->_spacingBetweenLabelAndMultipleWindowsIndicator = v10;
  [v14 multipleWindowsIndicatorSideLength];
  self->_multipleWindowsIndicatorSideLength = v11;
  [v14 spacingBetweenLabelAndSecondIcon];
  self->_spacingBetweenLabelAndSecondIcon = v12;
  [v14 spacingBetweenBoundsCenterAndSecondIcon];
  self->_spacingBetweenBoundsCenterAndSecondIcon = v13;
}

- (void)_updateTitleAlpha
{
  if ([(NSArray *)self->_titleItems count])
  {
    v17 = [(NSArray *)self->_titleItems objectAtIndex:0];
  }

  else
  {
    v17 = 0;
  }

  if ([(NSArray *)self->_titleItems count]< 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(NSArray *)self->_titleItems objectAtIndex:1];
  }

  displayItem = [v17 displayItem];
  displayItem2 = [v3 displayItem];
  if (v17)
  {
    v16 = [(NSMutableDictionary *)self->_itemsToTitleLabels objectForKey:displayItem];
    v6 = [(NSMutableDictionary *)self->_itemsToSubtitleLabelViews objectForKey:displayItem];
    v7 = [(NSMutableDictionary *)self->_itemsToMultiWindowIndicatorViews objectForKey:displayItem];
  }

  else
  {
    v7 = 0;
    v16 = 0;
    v6 = 0;
  }

  v15 = v3;
  if (v3)
  {
    v8 = [(NSMutableDictionary *)self->_itemsToTitleLabels objectForKey:displayItem2];
    v3 = [(NSMutableDictionary *)self->_itemsToSubtitleLabelViews objectForKey:displayItem2];
    v9 = [(NSMutableDictionary *)self->_itemsToMultiWindowIndicatorViews objectForKey:displayItem2];
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  [v16 setAlpha:self->_textAlpha];
  [v8 setAlpha:self->_textAlpha];
  [v7 setAlpha:self->_textAlpha];
  [v9 setAlpha:self->_textAlpha];
  subtitleVisualStyling = self->_subtitleVisualStyling;
  if (subtitleVisualStyling)
  {
    [(MTVisualStyling *)subtitleVisualStyling alpha];
    v12 = v11;
  }

  else
  {
    v12 = 1.0;
  }

  [v6 setAlpha:self->_textAlpha];
  contentLabel = [v6 contentLabel];
  [contentLabel setAlpha:v12];

  [v3 setAlpha:self->_textAlpha];
  contentLabel2 = [v3 contentLabel];
  [contentLabel2 setAlpha:v12];
}

- (id)_titleLabelFont
{
  v4 = *MEMORY[0x277D769C0];
  v5 = __sb__runningInSpringBoard();
  v6 = v5;
  if (v5)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_19;
    }

    if (SBFEffectiveHomeButtonType() != 2)
    {
      if (v6)
      {
        goto LABEL_19;
      }

LABEL_18:

      goto LABEL_19;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom] || SBFEffectiveHomeButtonType() != 2)
    {
      goto LABEL_18;
    }
  }

  v7 = __sb__runningInSpringBoard();
  v8 = v7;
  if (v7)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen _referenceBounds];
  }

  BSSizeRoundForScale();
  v10 = v9;
  v11 = *(MEMORY[0x277D66E30] + 136);
  if ((v8 & 1) == 0)
  {
  }

  if ((v6 & 1) == 0)
  {
  }

  if (v10 >= v11)
  {
    currentDevice = v4;
    v4 = *MEMORY[0x277D76918];
    goto LABEL_18;
  }

LABEL_19:
  preferredContentSizeCategory = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  v13 = *MEMORY[0x277D76808];
  v14 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x277D76808]);

  preferredFontProvider = [MEMORY[0x277CF0D60] preferredFontProvider];
  v16 = preferredFontProvider;
  if (v14 == NSOrderedDescending)
  {
    [preferredFontProvider preferredFontForTextStyle:v4 hiFontStyle:4 contentSizeCategory:v13];
  }

  else
  {
    [preferredFontProvider preferredFontForTextStyle:v4 hiFontStyle:4];
  }
  v17 = ;

  return v17;
}

- (void)layoutSubviews
{
  v209.receiver = self;
  v209.super_class = SBFluidSwitcherItemContainerHeaderView;
  [(SBFluidSwitcherItemContainerHeaderView *)&v209 layoutSubviews];
  [(SBFluidSwitcherItemContainerHeaderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(NSArray *)self->_titleItems count])
  {
    v11 = [(NSArray *)self->_titleItems objectAtIndex:0];
  }

  else
  {
    v11 = 0;
  }

  if ([(NSArray *)self->_titleItems count]< 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = [(NSArray *)self->_titleItems objectAtIndex:1];
  }

  displayItem = [v11 displayItem];
  displayItem2 = [v12 displayItem];
  v167 = displayItem;
  if (v11)
  {
    v179 = [(NSMutableDictionary *)self->_itemsToIconImageViews objectForKey:displayItem];
    v193 = [(NSMutableDictionary *)self->_itemsToTitleLabels objectForKey:displayItem];
    v15 = [(NSMutableDictionary *)self->_itemsToSubtitleLabelViews objectForKey:displayItem];
    v16 = [(NSMutableDictionary *)self->_itemsToMultiWindowIndicatorViews objectForKey:displayItem];
  }

  else
  {
    v16 = 0;
    v193 = 0;
    v179 = 0;
    v15 = 0;
  }

  v168 = v11;
  if (v12)
  {
    v178 = [(NSMutableDictionary *)self->_itemsToIconImageViews objectForKey:displayItem2];
    v17 = [(NSMutableDictionary *)self->_itemsToTitleLabels objectForKey:displayItem2];
    v18 = [(NSMutableDictionary *)self->_itemsToSubtitleLabelViews objectForKey:displayItem2];
    v19 = [(NSMutableDictionary *)self->_itemsToMultiWindowIndicatorViews objectForKey:displayItem2];
  }

  else
  {
    v19 = 0;
    v17 = 0;
    v178 = 0;
    v18 = 0;
  }

  v20 = v12;
  if (v193)
  {
    v21 = [v193 isHidden] ^ 1;
    if (v15)
    {
LABEL_15:
      v175 = [v15 isHidden] ^ 1;
      goto LABEL_18;
    }
  }

  else
  {
    v21 = 0;
    if (v15)
    {
      goto LABEL_15;
    }
  }

  v175 = 0;
LABEL_18:
  v166 = displayItem2;
  if (v17)
  {
    v22 = [v17 isHidden] ^ 1;
  }

  else
  {
    v22 = 0;
  }

  v185 = v17;
  if (v18)
  {
    v176 = [v18 isHidden] ^ 1;
  }

  else
  {
    v176 = 0;
  }

  traitCollection = [(SBFluidSwitcherItemContainerHeaderView *)self traitCollection];
  [traitCollection displayScale];

  iconSideLength = self->_iconSideLength;
  [v179 frame];
  v26 = v25;
  v28 = v27;
  v196 = v4;
  v200 = iconSideLength;
  v163 = v27;
  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
  {
    v210.origin.x = v4;
    v210.origin.y = v6;
    v210.size.width = v8;
    v210.size.height = v10;
    Width = CGRectGetWidth(v210);
    v211.origin.x = v26;
    v211.origin.y = v28;
    v211.size.width = v200;
    v211.size.height = v200;
    v30 = Width - CGRectGetWidth(v211);
    iconSideLength = v200;
    spacingBetweenLeadingEdgeAndIcon = v30 - self->_spacingBetweenLeadingEdgeAndIcon;
  }

  else
  {
    spacingBetweenLeadingEdgeAndIcon = self->_spacingBetweenLeadingEdgeAndIcon;
  }

  v199 = spacingBetweenLeadingEdgeAndIcon;
  rect_16 = v6;
  [v178 frame];
  v202 = v32;
  v161 = v33;
  v35 = *MEMORY[0x277CBF3A0];
  v34 = *(MEMORY[0x277CBF3A0] + 8);
  v36 = *(MEMORY[0x277CBF3A0] + 16);
  v37 = *(MEMORY[0x277CBF3A0] + 24);
  v206 = v37;
  rect_24 = v36;
  v38 = v34;
  v39 = *MEMORY[0x277CBF3A0];
  v208 = v36;
  if (v21)
  {
    [v193 sizeThatFits:{v8, v10}];
    SBRectWithSize();
    rect_24 = v40;
    v206 = v41;
    v36 = v208;
  }

  v170 = v39;
  v180 = v38;
  v197 = v34;
  v198 = v37;
  v42 = v36;
  v173 = v35;
  if (v175)
  {
    [v15 sizeThatFits:{v8, v10, v36}];
    SBRectWithSize();
    v173 = v43;
    v197 = v44;
    v198 = v45;
    v36 = v208;
  }

  v194 = v42;
  v46 = v37;
  v47 = v36;
  v48 = v34;
  v49 = v35;
  v50 = v20;
  if (v16)
  {
    [v16 frame];
    v46 = v51;
    v36 = v208;
  }

  v172 = v49;
  v191 = v48;
  v192 = v47;
  v52 = v37;
  v53 = v36;
  v54 = v34;
  v55 = v35;
  if (v19)
  {
    [v19 frame];
    v36 = v208;
  }

  v162 = v55;
  v164 = v54;
  v165 = v53;
  v181 = v52;
  v205 = v37;
  v201 = v36;
  v186 = v34;
  v56 = v35;
  if (v22)
  {
    [v185 sizeThatFits:{v8, v10}];
    SBRectWithSize();
    v56 = v57;
    v186 = v58;
    v201 = v59;
    v205 = v60;
  }

  if (v176)
  {
    [v18 sizeThatFits:{v8, v10}];
    SBRectWithSize();
    v35 = v61;
    v34 = v62;
    v208 = v63;
    v37 = v64;
  }

  font = [v15 font];
  v66 = font;
  if (font)
  {
    font2 = font;
  }

  else
  {
    font2 = [v18 font];
  }

  v177 = font2;
  v183 = v34;

  v212.origin.x = v196;
  v212.origin.y = rect_16;
  v212.size.width = v8;
  v169 = v10;
  v212.size.height = v10;
  v68 = CGRectGetWidth(v212) - self->_spacingBetweenLeadingEdgeAndIcon;
  v69 = self->_iconSideLength;
  spacingBetweenIconAndLabel = self->_spacingBetweenIconAndLabel;
  v71 = v68 - v69 - spacingBetweenIconAndLabel;
  v184 = v8;
  v171 = v37;
  v182 = v46;
  v204 = v56;
  if (v20)
  {
    v72 = v71 - self->_spacingBetweenLabelAndSecondIcon - v69 - spacingBetweenIconAndLabel - self->_spacingBetweenTrailingEdgeAndLabels;
    v73 = self->_spacingBetweenLabelAndMultipleWindowsIndicator + self->_multipleWindowsIndicatorSideLength;
    v213.origin.x = v170;
    v213.origin.y = v180;
    v213.size.width = rect_24;
    v213.size.height = v206;
    v74 = CGRectGetWidth(v213);
    v75 = v35;
    v76 = 0.0;
    if (v16)
    {
      v77 = v73;
    }

    else
    {
      v77 = 0.0;
    }

    v78 = v37;
    v160 = v77;
    v79 = v74 + v77;
    v214.origin.x = v173;
    v214.origin.y = v197;
    v214.size.height = v198;
    v214.size.width = v194;
    v80 = CGRectGetWidth(v214);
    if (v79 >= v80)
    {
      v81 = v79;
    }

    else
    {
      v81 = v80;
    }

    v215.origin.x = v56;
    v215.origin.y = v186;
    v215.size.width = v201;
    v215.size.height = v205;
    v82 = CGRectGetWidth(v215);
    if (v19)
    {
      v76 = v73;
    }

    v83 = v76 + v82;
    v216.origin.x = v75;
    v216.origin.y = v183;
    v216.size.width = v208;
    v216.size.height = v78;
    v84 = CGRectGetWidth(v216);
    if (v83 < v84)
    {
      v83 = v84;
    }

    rect = v75;
    if (v81 + v83 <= v72)
    {
      v85 = v201;
    }

    else
    {
      v85 = v201;
      if (v81 >= v72 * 0.5)
      {
        v100 = v184;
        v101 = v196;
        if (v83 >= v72 * 0.5)
        {
          v102 = rect_16;
          v103 = v169;
          v83 = CGRectGetWidth(*&v101) * 0.5 - self->_spacingBetweenBoundsCenterAndSecondIcon - self->_spacingBetweenIconAndLabel - self->_iconSideLength - self->_spacingBetweenTrailingEdgeAndLabels;
        }

        v81 = v72 - v83;
      }

      else
      {
        v83 = v72 - v81;
      }
    }

    v195 = v81;
    v225.origin.x = v170;
    v225.origin.y = v180;
    v225.size.width = rect_24;
    v225.size.height = v206;
    v104 = CGRectGetWidth(v225);
    if (v104 >= v81 - v160)
    {
      v105 = v81 - v160;
    }

    else
    {
      v105 = v104;
    }

    v226.origin.x = v56;
    v226.size.height = v205;
    v226.origin.y = v186;
    v226.size.width = v85;
    v106 = CGRectGetWidth(v226);
    v208 = v83;
    if (v106 >= v83 - v76)
    {
      v106 = v83 - v76;
    }

    v201 = v106;
    v50 = v20;
    rect_24a = v105;
    if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
    {
      v227.origin.x = v199;
      v107 = v163;
      v227.origin.y = v163;
      v227.size.width = v200;
      v227.size.height = v200;
      v108 = CGRectGetMinX(v227) - self->_spacingBetweenIconAndLabel;
      v228.origin.x = v170;
      v109 = v200;
      v228.origin.y = v180;
      v228.size.width = v105;
      v228.size.height = v206;
      v94 = v108 - CGRectGetWidth(v228);
    }

    else
    {
      v229.origin.x = v199;
      v109 = v200;
      v107 = v163;
      v229.origin.y = v163;
      v229.size.width = v200;
      v229.size.height = v200;
      v94 = CGRectGetMaxX(v229) + self->_spacingBetweenIconAndLabel;
    }

    v96 = v169;
    v97 = rect_16;
    v92 = MEMORY[0x277D76620];
    if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
    {
      v230.origin.x = v199;
      v230.origin.y = v107;
      v230.size.width = v109;
      v230.size.height = v109;
      v110 = CGRectGetMinX(v230) - self->_spacingBetweenIconAndLabel;
      v231.origin.x = v173;
      v231.origin.y = v197;
      v231.size.height = v198;
      v231.size.width = v195;
      v111 = v110 - CGRectGetWidth(v231);
    }

    else
    {
      v232.origin.x = v199;
      v232.origin.y = v107;
      v232.size.width = v109;
      v232.size.height = v109;
      v111 = CGRectGetMaxX(v232) + self->_spacingBetweenIconAndLabel;
    }

    v174 = v111;
    if ([*v92 userInterfaceLayoutDirection] == 1)
    {
      v233.origin.x = v196;
      v233.origin.y = rect_16;
      v233.size.width = v184;
      v233.size.height = v169;
      v112 = CGRectGetWidth(v233) - self->_spacingBetweenLeadingEdgeAndIcon - self->_iconSideLength - self->_spacingBetweenIconAndLabel - v195 - self->_spacingBetweenLabelAndSecondIcon;
      v234.origin.x = v202;
      v234.origin.y = v161;
      v234.size.width = v109;
      v234.size.height = v109;
      v113 = v112 - CGRectGetWidth(v234);
    }

    else
    {
      v113 = self->_spacingBetweenLabelAndSecondIcon + v195 + self->_spacingBetweenLeadingEdgeAndIcon + self->_iconSideLength + self->_spacingBetweenIconAndLabel;
    }

    v203 = v113;
    if ([*v92 userInterfaceLayoutDirection] == 1)
    {
      v235.origin.x = v203;
      v235.origin.y = v161;
      v235.size.width = v109;
      v235.size.height = v109;
      v114 = CGRectGetMinX(v235) - self->_spacingBetweenIconAndLabel;
      v236.origin.x = v204;
      v236.origin.y = v186;
      v236.size.width = v201;
      v236.size.height = v205;
      v115 = v114 - CGRectGetWidth(v236);
    }

    else
    {
      v237.origin.x = v203;
      v237.origin.y = v161;
      v237.size.width = v109;
      v237.size.height = v109;
      v115 = CGRectGetMaxX(v237) + self->_spacingBetweenIconAndLabel;
    }

    v204 = v115;
    if ([*v92 userInterfaceLayoutDirection] == 1)
    {
      v238.origin.x = v203;
      v238.origin.y = v161;
      v238.size.width = v109;
      v238.size.height = v109;
      v116 = CGRectGetMinX(v238) - self->_spacingBetweenIconAndLabel;
      v239.origin.x = rect;
      v239.origin.y = v183;
      v239.size.width = v208;
      v239.size.height = v171;
      v35 = v116 - CGRectGetWidth(v239);
    }

    else
    {
      v240.origin.x = v203;
      v240.origin.y = v161;
      v240.size.width = v109;
      v240.size.height = v109;
      v35 = CGRectGetMaxX(v240) + self->_spacingBetweenIconAndLabel;
    }

    v91 = v195;
  }

  else
  {
    v86 = v71 - self->_spacingBetweenTrailingEdgeAndLabels;
    v87 = v86;
    if (v16)
    {
      v87 = v86 - self->_spacingBetweenLabelAndMultipleWindowsIndicator - self->_multipleWindowsIndicatorSideLength;
    }

    v217.origin.x = v170;
    v217.origin.y = v180;
    v217.size.width = rect_24;
    v217.size.height = v206;
    v88 = CGRectGetWidth(v217);
    if (v88 >= v87)
    {
      v89 = v87;
    }

    else
    {
      v89 = v88;
    }

    v218.origin.x = v173;
    v218.origin.y = v197;
    v218.size.height = v198;
    v218.size.width = v194;
    v90 = CGRectGetWidth(v218);
    if (v90 >= v86)
    {
      v91 = v86;
    }

    else
    {
      v91 = v90;
    }

    v92 = MEMORY[0x277D76620];
    rect_24a = v89;
    if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
    {
      v219.origin.x = v199;
      v219.origin.y = v163;
      v219.size.width = iconSideLength;
      v219.size.height = iconSideLength;
      v93 = CGRectGetMinX(v219) - self->_spacingBetweenIconAndLabel;
      v220.origin.x = v170;
      v220.origin.y = v180;
      v220.size.width = v89;
      v220.size.height = v206;
      v94 = v93 - CGRectGetWidth(v220);
      v95 = v163;
    }

    else
    {
      v221.origin.x = v199;
      v95 = v163;
      v221.origin.y = v163;
      v221.size.width = iconSideLength;
      v221.size.height = iconSideLength;
      v94 = CGRectGetMaxX(v221) + self->_spacingBetweenIconAndLabel;
    }

    v96 = v169;
    v97 = rect_16;
    if ([*v92 userInterfaceLayoutDirection] == 1)
    {
      v222.origin.x = v199;
      v222.origin.y = v95;
      v222.size.width = iconSideLength;
      v222.size.height = iconSideLength;
      v98 = CGRectGetMinX(v222) - self->_spacingBetweenIconAndLabel;
      v223.origin.x = v173;
      v223.origin.y = v197;
      v223.size.height = v198;
      v223.size.width = v91;
      v99 = v98 - CGRectGetWidth(v223);
    }

    else
    {
      v224.origin.x = v199;
      v224.origin.y = v95;
      v224.size.width = iconSideLength;
      v224.size.height = iconSideLength;
      v99 = CGRectGetMaxX(v224) + self->_spacingBetweenIconAndLabel;
    }

    v174 = v99;
  }

  if (v175)
  {
    contentLabel = [v15 contentLabel];
    v241.origin.x = v196;
    v241.origin.y = v97;
    v241.size.width = v184;
    v241.size.height = v96;
    v118 = CGRectGetMaxY(v241) - self->_spacingBetweenSnapshotAndDescriptionLabelBaseline;
    [contentLabel _firstLineBaseline];
    v242.origin.y = v118 - v119;
    v242.origin.x = v174;
    v242.size.width = v91;
    v242.size.height = v198;
    MaxY = CGRectGetMaxY(v242);
    [contentLabel _baselineOffsetFromBottom];
    v122 = MaxY - v121;
    [v177 _scaledValueForValue:self->_spacingBetweenTitleAndSubtitleBaseline];
    v124 = v122 - v123;
    [v193 _firstLineBaseline];
    v126 = v124 - v125;
    v92 = MEMORY[0x277D76620];
    [v193 _capOffsetFromBoundsTop];

    v127 = v206;
    v128 = rect_24a;
  }

  else
  {
    v243.origin.x = v196;
    v243.origin.y = v97;
    v243.size.width = v184;
    v243.size.height = v96;
    CGRectGetMaxY(v243);
    UIRectCenteredYInRectScale();
    v94 = v129;
    v126 = v130;
    v128 = v131;
  }

  v207 = v127;
  v132 = v205;
  if (v16)
  {
    userInterfaceLayoutDirection = [*v92 userInterfaceLayoutDirection];
    v134 = v94;
    v135 = v126;
    v136 = v128;
    v137 = v207;
    if (userInterfaceLayoutDirection == 1)
    {
      CGRectGetMinX(*&v134);
      v244.origin.x = v172;
      v244.origin.y = v191;
      v244.size.width = v192;
      v244.size.height = v182;
      CGRectGetWidth(v244);
    }

    else
    {
      CGRectGetMaxX(*&v134);
    }

    UIRectCenteredYInRectScale();
    v132 = v205;
    v138 = v201;
    v96 = v169;
    v97 = rect_16;
  }

  else
  {
    v138 = v201;
  }

  if (v176)
  {
    contentLabel2 = [v18 contentLabel];
    v245.origin.x = v196;
    v245.origin.y = v97;
    v245.size.width = v184;
    v245.size.height = v96;
    v140 = CGRectGetMaxY(v245) - self->_spacingBetweenSnapshotAndDescriptionLabelBaseline;
    [contentLabel2 _firstLineBaseline];
    v246.origin.y = v140 - v141;
    v246.origin.x = v35;
    v246.size.width = v208;
    v246.size.height = v171;
    v142 = CGRectGetMaxY(v246);
    [contentLabel2 _baselineOffsetFromBottom];
    v144 = v142 - v143;
    [v177 _scaledValueForValue:self->_spacingBetweenTitleAndSubtitleBaseline];
    v146 = v144 - v145;
    [v185 _firstLineBaseline];
    v148 = v146 - v147;

    v149 = v166;
    v150 = v204;
  }

  else
  {
    v247.origin.x = v196;
    v247.origin.y = v97;
    v247.size.width = v184;
    v247.size.height = v96;
    CGRectGetMaxY(v247);
    UIRectCenteredYInRectScale();
    v150 = v151;
    v148 = v152;
    v138 = v153;
    v132 = v154;
    v149 = v166;
  }

  if (v19)
  {
    userInterfaceLayoutDirection2 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
    v156 = v150;
    v157 = v148;
    v158 = v138;
    v159 = v132;
    if (userInterfaceLayoutDirection2 == 1)
    {
      CGRectGetMinX(*&v156);
      v248.origin.x = v162;
      v248.origin.y = v164;
      v248.size.width = v165;
      v248.size.height = v181;
      CGRectGetWidth(v248);
    }

    else
    {
      CGRectGetMaxX(*&v156);
    }

    UIRectCenteredYInRectScale();
  }

  UIRectIntegralWithScale();
  [v179 sb_setBoundsAndPositionFromFrame:?];
  UIRectIntegralWithScale();
  [v193 sb_setBoundsAndPositionFromFrame:?];
  UIRectIntegralWithScale();
  [v15 sb_setBoundsAndPositionFromFrame:?];
  UIRectIntegralWithScale();
  [v16 sb_setBoundsAndPositionFromFrame:?];
  UIRectIntegralWithScale();
  [v19 sb_setBoundsAndPositionFromFrame:?];
  UIRectIntegralWithScale();
  [v178 sb_setBoundsAndPositionFromFrame:?];
  UIRectIntegralWithScale();
  [v185 sb_setBoundsAndPositionFromFrame:?];
  UIRectIntegralWithScale();
  [v18 sb_setBoundsAndPositionFromFrame:?];
}

- (SBFluidSwitcherItemContainerHeaderView)initWithFrame:(CGRect)frame delegate:(id)delegate
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  delegateCopy = delegate;
  v25.receiver = self;
  v25.super_class = SBFluidSwitcherItemContainerHeaderView;
  height = [(SBFluidSwitcherItemContainerHeaderView *)&v25 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    objc_storeWeak(&height->_delegate, delegateCopy);
    v11->_textAlpha = 1.0;
    v12 = objc_opt_new();
    itemsToTitleLabels = v11->_itemsToTitleLabels;
    v11->_itemsToTitleLabels = v12;

    v14 = objc_opt_new();
    itemsToIconImageViews = v11->_itemsToIconImageViews;
    v11->_itemsToIconImageViews = v14;

    v16 = objc_opt_new();
    itemsToSubtitleLabelViews = v11->_itemsToSubtitleLabelViews;
    v11->_itemsToSubtitleLabelViews = v16;

    v18 = objc_opt_new();
    itemsToMultiWindowIndicatorViews = v11->_itemsToMultiWindowIndicatorViews;
    v11->_itemsToMultiWindowIndicatorViews = v18;

    v20 = +[SBAppSwitcherDomain rootSettings];
    [v20 addKeyObserver:v11];
    [(SBFluidSwitcherItemContainerHeaderView *)v11 _applyPrototypeSettings];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v11 selector:sel__contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x277D76810] object:0];

    v22 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v11 action:sel__handleTapGestureRecognizer_];
    tapGestureRecognizer = v11->_tapGestureRecognizer;
    v11->_tapGestureRecognizer = v22;

    [(SBFluidSwitcherItemContainerHeaderView *)v11 addGestureRecognizer:v11->_tapGestureRecognizer];
  }

  return v11;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76810] object:0];

  v4.receiver = self;
  v4.super_class = SBFluidSwitcherItemContainerHeaderView;
  [(SBFluidSwitcherItemContainerHeaderView *)&v4 dealloc];
}

- (void)setTitleItems:(id)items animated:(BOOL)animated
{
  animatedCopy = animated;
  v115 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  if ([(NSArray *)self->_titleItems count])
  {
    v104 = [(NSArray *)self->_titleItems objectAtIndex:0];
  }

  else
  {
    v104 = 0;
  }

  if ([(NSArray *)self->_titleItems count]< 2)
  {
    v103 = 0;
  }

  else
  {
    v103 = [(NSArray *)self->_titleItems objectAtIndex:1];
  }

  v6 = self->_titleItems;
  v7 = [itemsCopy copy];
  titleItems = self->_titleItems;
  self->_titleItems = v7;

  if ([(NSArray *)self->_titleItems count])
  {
    v9 = [(NSArray *)self->_titleItems objectAtIndex:0];
  }

  else
  {
    v9 = 0;
  }

  v98 = itemsCopy;
  if ([(NSArray *)self->_titleItems count]< 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = [(NSArray *)self->_titleItems objectAtIndex:1];
  }

  v107 = v9;
  displayItem = [v9 displayItem];
  v100 = v10;
  displayItem2 = [v10 displayItem];
  v97 = v6;
  v11 = [(NSArray *)v6 bs_map:&__block_literal_global_439];
  v109 = [(NSArray *)self->_titleItems bs_map:&__block_literal_global_11_6];
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v110 objects:v114 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v111;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v111 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v110 + 1) + 8 * i);
        if (([v109 containsObject:v16] & 1) == 0)
        {
          v17 = [(NSMutableDictionary *)self->_itemsToTitleLabels objectForKey:v16];
          v18 = v17;
          if (v17)
          {
            [v17 setHidden:1];
            [(NSMutableDictionary *)self->_itemsToTitleLabels removeObjectForKey:v16];
            titleLabelReusePool = self->_titleLabelReusePool;
            if (!titleLabelReusePool)
            {
              v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
              v21 = self->_titleLabelReusePool;
              self->_titleLabelReusePool = v20;

              titleLabelReusePool = self->_titleLabelReusePool;
            }

            [(NSMutableArray *)titleLabelReusePool addObject:v18];
          }

          v22 = [(NSMutableDictionary *)self->_itemsToIconImageViews objectForKey:v16];
          v23 = v22;
          if (v22)
          {
            [v22 setHidden:1];
            [(NSMutableDictionary *)self->_itemsToIconImageViews removeObjectForKey:v16];
            iconImageViewReusePool = self->_iconImageViewReusePool;
            if (!iconImageViewReusePool)
            {
              v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
              v26 = self->_iconImageViewReusePool;
              self->_iconImageViewReusePool = v25;

              iconImageViewReusePool = self->_iconImageViewReusePool;
            }

            [(NSMutableArray *)iconImageViewReusePool addObject:v23];
          }

          v27 = [(NSMutableDictionary *)self->_itemsToSubtitleLabelViews objectForKey:v16];
          v28 = v27;
          if (v27)
          {
            [v27 setHidden:1];
            [(NSMutableDictionary *)self->_itemsToSubtitleLabelViews removeObjectForKey:v16];
            subtitleLabelReusePool = self->_subtitleLabelReusePool;
            if (!subtitleLabelReusePool)
            {
              v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
              v31 = self->_subtitleLabelReusePool;
              self->_subtitleLabelReusePool = v30;

              subtitleLabelReusePool = self->_subtitleLabelReusePool;
            }

            [(NSMutableArray *)subtitleLabelReusePool addObject:v28];
          }

          v32 = [(NSMutableDictionary *)self->_itemsToMultiWindowIndicatorViews objectForKey:v16];
          v33 = v32;
          if (v32)
          {
            [v32 setHidden:1];
            [v33 setAccessibilityIdentifier:0];
            [(NSMutableDictionary *)self->_itemsToMultiWindowIndicatorViews removeObjectForKey:v16];
            multiWindowIndicatorViewReusePool = self->_multiWindowIndicatorViewReusePool;
            if (!multiWindowIndicatorViewReusePool)
            {
              v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
              v36 = self->_multiWindowIndicatorViewReusePool;
              self->_multiWindowIndicatorViewReusePool = v35;

              multiWindowIndicatorViewReusePool = self->_multiWindowIndicatorViewReusePool;
            }

            [(NSMutableArray *)multiWindowIndicatorViewReusePool addObject:v33];
          }
        }
      }

      v13 = [obj countByEnumeratingWithState:&v110 objects:v114 count:16];
    }

    while (v13);
  }

  [(SBFluidSwitcherItemContainerHeaderView *)self _updateVisualStylingWithTitleItems:v98];
  if (v107)
  {
    _sb_dequeue4 = [(NSMutableDictionary *)self->_itemsToIconImageViews objectForKey:displayItem];
    v38 = [(NSMutableDictionary *)self->_itemsToTitleLabels objectForKey:displayItem];
    v105 = [(NSMutableDictionary *)self->_itemsToSubtitleLabelViews objectForKey:displayItem];
    v99 = [(NSMutableDictionary *)self->_itemsToMultiWindowIndicatorViews objectForKey:displayItem];
    if (BSEqualObjects())
    {
      v39 = 0;
      v40 = v100;
      _sb_dequeue = v38;
      v42 = v105;
      goto LABEL_73;
    }

    image = [v107 image];
    if (image)
    {

      _sb_dequeue = v38;
    }

    else
    {
      imageView = [v107 imageView];

      _sb_dequeue = v38;
      if (!imageView)
      {
        v46 = _sb_dequeue4;
        v47 = 1;
LABEL_50:
        [(SBFluidSwitcherIconImageContainerView *)v46 setHidden:v47];
        titleText = [v107 titleText];
        v49 = [titleText length];

        if (v49)
        {
          v50 = v107;
          if (!_sb_dequeue)
          {
            _sb_dequeue = [(NSMutableArray *)self->_titleLabelReusePool _sb_dequeue];
            if (!_sb_dequeue)
            {
              v51 = objc_alloc(MEMORY[0x277D756B8]);
              _sb_dequeue = [v51 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
              [_sb_dequeue setClipsToBounds:0];
              [_sb_dequeue setSizingRule:1];
              [(SBFluidSwitcherItemContainerHeaderView *)self addSubview:_sb_dequeue];
            }

            _titleLabelFont = [(SBFluidSwitcherItemContainerHeaderView *)self _titleLabelFont];
            [_sb_dequeue setFont:_titleLabelFont];

            [(NSMutableDictionary *)self->_itemsToTitleLabels setObject:_sb_dequeue forKey:displayItem];
          }

          [_sb_dequeue setAlpha:self->_textAlpha];
          titleTextColor = [v107 titleTextColor];
          [_sb_dequeue setTextColor:titleTextColor];

          [_sb_dequeue setHidden:0];
        }

        else
        {
          [_sb_dequeue setHidden:1];
          v50 = v107;
        }

        subtitleText = [v50 subtitleText];
        v55 = [subtitleText length];

        if (v55)
        {
          _sb_dequeue2 = v105;
          v56 = v107;
          if (!v105)
          {
            _sb_dequeue2 = [(NSMutableArray *)self->_subtitleLabelReusePool _sb_dequeue];
            if (!_sb_dequeue2)
            {
              v58 = objc_alloc(MEMORY[0x277CF0D58]);
              _sb_dequeue2 = [v58 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
              [_sb_dequeue2 setClipsToBounds:0];
              [(SBFluidSwitcherItemContainerHeaderView *)self addSubview:_sb_dequeue2];
            }

            _subtitleLabelFont = [(SBFluidSwitcherItemContainerHeaderView *)self _subtitleLabelFont];
            [_sb_dequeue2 setFont:_subtitleLabelFont];

            [(NSMutableDictionary *)self->_itemsToSubtitleLabelViews setObject:_sb_dequeue2 forKey:displayItem];
          }

          [_sb_dequeue2 mt_replaceVisualStyling:self->_subtitleVisualStyling];
          [_sb_dequeue2 setAlpha:self->_textAlpha];
          v105 = _sb_dequeue2;
          [_sb_dequeue2 setHidden:0];
        }

        else
        {
          [v105 setHidden:1];
          v56 = v107;
        }

        _sb_dequeue3 = v99;
        if ([v56 showsMultiWindowIndicator])
        {
          if (!v99)
          {
            _sb_dequeue3 = [(NSMutableArray *)self->_multiWindowIndicatorViewReusePool _sb_dequeue];
            if (!_sb_dequeue3)
            {
              _sb_dequeue3 = [(SBFluidSwitcherItemContainerHeaderView *)self _makeMultipleWindowsIndicatorView];
              [(SBFluidSwitcherItemContainerHeaderView *)self addSubview:_sb_dequeue3];
            }

            [(NSMutableDictionary *)self->_itemsToMultiWindowIndicatorViews setObject:_sb_dequeue3 forKey:displayItem];
          }

          [_sb_dequeue3 mt_replaceVisualStyling:self->_subtitleVisualStyling];
          displayItem3 = [v56 displayItem];
          v62 = [(SBFluidSwitcherItemContainerHeaderView *)self _multiWindowIndicatorAccessibilityIdentifierForDisplayItem:displayItem3];
          [_sb_dequeue3 setAccessibilityIdentifier:v62];

          v56 = v107;
          [_sb_dequeue3 setAlpha:self->_textAlpha];
          v99 = _sb_dequeue3;
          v63 = _sb_dequeue3;
          v64 = 0;
        }

        else
        {
          [v99 setAccessibilityIdentifier:0];
          v63 = v99;
          v64 = 1;
        }

        [v63 setHidden:v64];
        image2 = [v56 image];
        [(SBFluidSwitcherIconImageContainerView *)_sb_dequeue4 setImage:image2 animated:animatedCopy];

        imageView2 = [v56 imageView];
        [(SBFluidSwitcherIconImageContainerView *)_sb_dequeue4 setCustomImageView:imageView2 animated:animatedCopy];

        [(SBFluidSwitcherIconImageContainerView *)_sb_dequeue4 sizeToFit];
        titleText2 = [v56 titleText];
        [_sb_dequeue setText:titleText2];

        [_sb_dequeue sizeToFit];
        subtitleText2 = [v56 subtitleText];
        v42 = v105;
        [v105 setText:subtitleText2];

        [v105 sizeToFit];
        v39 = 1;
        goto LABEL_72;
      }
    }

    if (!_sb_dequeue4)
    {
      _sb_dequeue4 = [(NSMutableArray *)self->_iconImageViewReusePool _sb_dequeue];
      if (!_sb_dequeue4)
      {
        v45 = [SBFluidSwitcherIconImageContainerView alloc];
        _sb_dequeue4 = [(SBFluidSwitcherIconImageContainerView *)v45 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
        [(SBFluidSwitcherItemContainerHeaderView *)self addSubview:_sb_dequeue4];
      }

      [(NSMutableDictionary *)self->_itemsToIconImageViews setObject:_sb_dequeue4 forKey:displayItem];
    }

    v46 = _sb_dequeue4;
    v47 = 0;
    goto LABEL_50;
  }

  _sb_dequeue4 = 0;
  _sb_dequeue = 0;
  v42 = 0;
  v99 = 0;
  v39 = BSEqualObjects() ^ 1;
LABEL_72:
  v40 = v100;
LABEL_73:
  v96 = _sb_dequeue4;
  if (v40)
  {
    v106 = v42;
    _sb_dequeue8 = [(NSMutableDictionary *)self->_itemsToIconImageViews objectForKey:displayItem2];
    _sb_dequeue5 = [(NSMutableDictionary *)self->_itemsToTitleLabels objectForKey:displayItem2];
    _sb_dequeue6 = [(NSMutableDictionary *)self->_itemsToSubtitleLabelViews objectForKey:displayItem2];
    _sb_dequeue7 = [(NSMutableDictionary *)self->_itemsToMultiWindowIndicatorViews objectForKey:displayItem2];
    if (BSEqualObjects())
    {
LABEL_77:
      if (!v39)
      {
        goto LABEL_110;
      }

      goto LABEL_109;
    }

    image3 = [v40 image];
    if (image3)
    {
    }

    else
    {
      imageView3 = [v40 imageView];

      if (!imageView3)
      {
        v76 = _sb_dequeue8;
        v77 = 1;
LABEL_87:
        [(SBFluidSwitcherIconImageContainerView *)v76 setHidden:v77];
        titleText3 = [v100 titleText];
        v79 = [titleText3 length];

        if (v79)
        {
          if (!_sb_dequeue5)
          {
            _sb_dequeue5 = [(NSMutableArray *)self->_titleLabelReusePool _sb_dequeue];
            if (!_sb_dequeue5)
            {
              v80 = objc_alloc(MEMORY[0x277D756B8]);
              _sb_dequeue5 = [v80 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
              [_sb_dequeue5 setClipsToBounds:0];
              [_sb_dequeue5 setSizingRule:1];
              [(SBFluidSwitcherItemContainerHeaderView *)self addSubview:_sb_dequeue5];
            }

            _titleLabelFont2 = [(SBFluidSwitcherItemContainerHeaderView *)self _titleLabelFont];
            [_sb_dequeue5 setFont:_titleLabelFont2];

            [(NSMutableDictionary *)self->_itemsToTitleLabels setObject:_sb_dequeue5 forKey:displayItem2];
          }

          v40 = v100;
          titleTextColor2 = [v100 titleTextColor];
          [_sb_dequeue5 setTextColor:titleTextColor2];

          [_sb_dequeue5 setAlpha:self->_textAlpha];
          [_sb_dequeue5 setHidden:0];
        }

        else
        {
          [_sb_dequeue5 setHidden:1];
          v40 = v100;
        }

        subtitleText3 = [v40 subtitleText];
        v84 = [subtitleText3 length];

        if (v84)
        {
          if (!_sb_dequeue6)
          {
            _sb_dequeue6 = [(NSMutableArray *)self->_subtitleLabelReusePool _sb_dequeue];
            if (!_sb_dequeue6)
            {
              v85 = objc_alloc(MEMORY[0x277CF0D58]);
              _sb_dequeue6 = [v85 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
              [_sb_dequeue6 setClipsToBounds:0];
              [(SBFluidSwitcherItemContainerHeaderView *)self addSubview:_sb_dequeue6];
            }

            _subtitleLabelFont2 = [(SBFluidSwitcherItemContainerHeaderView *)self _subtitleLabelFont];
            [_sb_dequeue6 setFont:_subtitleLabelFont2];

            [(NSMutableDictionary *)self->_itemsToSubtitleLabelViews setObject:_sb_dequeue6 forKey:displayItem2];
          }

          [_sb_dequeue6 mt_replaceVisualStyling:self->_subtitleVisualStyling];
          [_sb_dequeue6 setAlpha:self->_textAlpha];
          [_sb_dequeue6 setHidden:0];
        }

        else
        {
          [_sb_dequeue6 setHidden:1];
        }

        if ([v40 showsMultiWindowIndicator])
        {
          if (!_sb_dequeue7)
          {
            _sb_dequeue7 = [(NSMutableArray *)self->_multiWindowIndicatorViewReusePool _sb_dequeue];
            if (!_sb_dequeue7)
            {
              _sb_dequeue7 = [(SBFluidSwitcherItemContainerHeaderView *)self _makeMultipleWindowsIndicatorView];
              [(SBFluidSwitcherItemContainerHeaderView *)self addSubview:_sb_dequeue7];
            }

            [(NSMutableDictionary *)self->_itemsToMultiWindowIndicatorViews setObject:_sb_dequeue7 forKey:displayItem2];
          }

          [_sb_dequeue7 mt_replaceVisualStyling:self->_subtitleVisualStyling];
          displayItem4 = [v40 displayItem];
          v88 = [(SBFluidSwitcherItemContainerHeaderView *)self _multiWindowIndicatorAccessibilityIdentifierForDisplayItem:displayItem4];
          [_sb_dequeue7 setAccessibilityIdentifier:v88];

          [_sb_dequeue7 setAlpha:self->_textAlpha];
          v89 = _sb_dequeue7;
          v90 = 0;
        }

        else
        {
          [_sb_dequeue7 setAccessibilityIdentifier:0];
          v89 = _sb_dequeue7;
          v90 = 1;
        }

        [v89 setHidden:v90];
        image4 = [v40 image];
        [(SBFluidSwitcherIconImageContainerView *)_sb_dequeue8 setImage:image4 animated:animatedCopy];

        imageView4 = [v40 imageView];
        [(SBFluidSwitcherIconImageContainerView *)_sb_dequeue8 setCustomImageView:imageView4 animated:animatedCopy];

        [(SBFluidSwitcherIconImageContainerView *)_sb_dequeue8 sizeToFit];
        titleText4 = [v40 titleText];
        [_sb_dequeue5 setText:titleText4];

        [_sb_dequeue5 sizeToFit];
        subtitleText4 = [v40 subtitleText];
        [_sb_dequeue6 setText:subtitleText4];

        [_sb_dequeue6 sizeToFit];
        v42 = v106;
        goto LABEL_109;
      }
    }

    if (!_sb_dequeue8)
    {
      _sb_dequeue8 = [(NSMutableArray *)self->_iconImageViewReusePool _sb_dequeue];
      if (!_sb_dequeue8)
      {
        v75 = [SBFluidSwitcherIconImageContainerView alloc];
        _sb_dequeue8 = [(SBFluidSwitcherIconImageContainerView *)v75 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
        [(SBFluidSwitcherItemContainerHeaderView *)self addSubview:_sb_dequeue8];
      }

      [(NSMutableDictionary *)self->_itemsToIconImageViews setObject:_sb_dequeue8 forKey:displayItem2];
    }

    v76 = _sb_dequeue8;
    v77 = 0;
    goto LABEL_87;
  }

  _sb_dequeue8 = 0;
  _sb_dequeue5 = 0;
  _sb_dequeue6 = 0;
  _sb_dequeue7 = 0;
  if (BSEqualObjects())
  {
    goto LABEL_77;
  }

LABEL_109:
  [(SBFluidSwitcherItemContainerHeaderView *)self setNeedsLayout];
LABEL_110:
}

- (void)setTextAlpha:(double)alpha
{
  if (self->_textAlpha != alpha)
  {
    self->_textAlpha = alpha;
    [(SBFluidSwitcherItemContainerHeaderView *)self _updateTitleAlpha];
  }
}

- (void)_contentSizeCategoryDidChangeNotification:(id)notification
{
  _titleLabelFont = [(SBFluidSwitcherItemContainerHeaderView *)self _titleLabelFont];
  if ([(NSArray *)self->_titleItems count])
  {
    v4 = [(NSArray *)self->_titleItems objectAtIndex:0];
  }

  else
  {
    v4 = 0;
  }

  if ([(NSArray *)self->_titleItems count]< 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_titleItems objectAtIndex:1];
  }

  displayItem = [v4 displayItem];
  displayItem2 = [v5 displayItem];
  if (v4)
  {
    v8 = [(NSMutableDictionary *)self->_itemsToTitleLabels objectForKey:displayItem];
    v9 = [(NSMutableDictionary *)self->_itemsToSubtitleLabelViews objectForKey:displayItem];
    if (v5)
    {
LABEL_9:
      v10 = [(NSMutableDictionary *)self->_itemsToTitleLabels objectForKey:displayItem2];
      v11 = [(NSMutableDictionary *)self->_itemsToSubtitleLabelViews objectForKey:displayItem2];
      goto LABEL_12;
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  v11 = 0;
  v10 = 0;
LABEL_12:
  [v8 setFont:_titleLabelFont];
  [v8 sizeToFit];
  [v10 setFont:_titleLabelFont];
  [v10 sizeToFit];
  if (v9 | v11)
  {
    _subtitleLabelFont = [(SBFluidSwitcherItemContainerHeaderView *)self _subtitleLabelFont];
    [v9 setFont:_subtitleLabelFont];
    [v9 sizeToFit];
    [v11 setFont:_subtitleLabelFont];
    [v11 sizeToFit];
  }

  [(SBFluidSwitcherItemContainerHeaderView *)self setNeedsLayout];
}

- (void)_handleTapGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if ([(NSArray *)self->_titleItems count])
  {
    v4 = [(NSArray *)self->_titleItems objectAtIndex:0];
  }

  else
  {
    v4 = 0;
  }

  if ([(NSArray *)self->_titleItems count]< 2)
  {
    v50 = 0;
  }

  else
  {
    v50 = [(NSArray *)self->_titleItems objectAtIndex:1];
  }

  displayItem = [v4 displayItem];
  displayItem2 = [v50 displayItem];
  v7 = displayItem2;
  if (displayItem)
  {
    v48 = [(NSMutableDictionary *)self->_itemsToIconImageViews objectForKey:displayItem];
    v47 = [(NSMutableDictionary *)self->_itemsToTitleLabels objectForKey:displayItem];
    v8 = [(NSMutableDictionary *)self->_itemsToSubtitleLabelViews objectForKey:displayItem];
    v45 = [(NSMutableDictionary *)self->_itemsToMultiWindowIndicatorViews objectForKey:displayItem];
    if (v7)
    {
LABEL_9:
      v9 = [(NSMutableDictionary *)self->_itemsToIconImageViews objectForKey:v7];
      v46 = [(NSMutableDictionary *)self->_itemsToTitleLabels objectForKey:v7];
      v10 = [(NSMutableDictionary *)self->_itemsToSubtitleLabelViews objectForKey:v7];
      v11 = [(NSMutableDictionary *)self->_itemsToMultiWindowIndicatorViews objectForKey:v7];
      goto LABEL_12;
    }
  }

  else
  {
    v45 = 0;
    v47 = 0;
    v48 = 0;
    v8 = 0;
    if (displayItem2)
    {
      goto LABEL_9;
    }
  }

  v11 = 0;
  v46 = 0;
  v9 = 0;
  v10 = 0;
LABEL_12:
  [recognizerCopy locationInView:self];
  v13 = v12;
  v15 = v14;
  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
  {
    if (v8)
    {
      v16 = v8;
    }

    else
    {
      v16 = v47;
    }

    [v16 frame];
    MinX = CGRectGetMinX(v53);
    [v48 frame];
    MaxX = CGRectGetMaxX(v54);
    if (v7)
    {
      spacingBetweenTrailingEdgeAndLabels = self->_spacingBetweenLabelAndSecondIcon * 0.5;
    }

    else
    {
      spacingBetweenTrailingEdgeAndLabels = self->_spacingBetweenTrailingEdgeAndLabels;
    }

    spacingBetweenLeadingEdgeAndIcon = self->_spacingBetweenLeadingEdgeAndIcon;
    if (v10)
    {
      v26 = v10;
    }

    else
    {
      v26 = v46;
    }

    [v26 frame];
    v30 = MaxX + spacingBetweenLeadingEdgeAndIcon;
    v31 = MinX - spacingBetweenTrailingEdgeAndLabels;
    v32 = CGRectGetMinX(v57) - self->_spacingBetweenTrailingEdgeAndLabels;
    [v9 frame];
    v33 = CGRectGetMaxX(v58) + self->_spacingBetweenLabelAndSecondIcon * 0.5;
    if (!v7)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v44 = v15;
    [v48 frame];
    v17 = CGRectGetMinX(v52);
    v18 = self->_spacingBetweenLeadingEdgeAndIcon;
    if (v8)
    {
      v19 = v8;
    }

    else
    {
      v19 = v47;
    }

    [v19 frame];
    v23 = CGRectGetMaxX(v55);
    if (v7)
    {
      v24 = self->_spacingBetweenLabelAndSecondIcon * 0.5;
    }

    else
    {
      v24 = self->_spacingBetweenTrailingEdgeAndLabels;
    }

    [v9 frame];
    v27 = CGRectGetMinX(v56);
    spacingBetweenLabelAndSecondIcon = self->_spacingBetweenLabelAndSecondIcon;
    if (v10)
    {
      v29 = v10;
    }

    else
    {
      v29 = v46;
    }

    [v29 frame];
    v31 = v17 - v18;
    v30 = v23 + v24;
    v32 = v27 + spacingBetweenLabelAndSecondIcon * -0.5;
    v33 = CGRectGetMaxX(v59) + self->_spacingBetweenTrailingEdgeAndLabels;
    v15 = v44;
    if (!v7)
    {
LABEL_37:
      if (!displayItem)
      {
        goto LABEL_45;
      }

      v36 = v31 <= v13 && v13 < v30;
      v34 = v4;
      if (!v36)
      {
        v37 = [(SBFluidSwitcherItemContainerHeaderView *)self hitTest:0 withEvent:v13, v15];

        v34 = v4;
        if (v37 != v45)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_43;
    }
  }

  if (v32 > v13 || (v34 = v50, v13 >= v33))
  {
    v35 = [(SBFluidSwitcherItemContainerHeaderView *)self hitTest:0 withEvent:v13, v15];

    v34 = v50;
    if (v35 != v11)
    {
      goto LABEL_37;
    }
  }

LABEL_43:
  v38 = v34;
  if (v38)
  {
    v39 = v38;
    v40 = v9;
    v41 = v4;
    v42 = v11;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained itemContainerHeaderView:self didSelectTitleItem:v39];

    v11 = v42;
    v4 = v41;
    v9 = v40;
  }

LABEL_45:
}

- (void)_updateVisualStylingWithTitleItems:(id)items
{
  firstObject = [items firstObject];
  subtitleInterfaceStyle = [firstObject subtitleInterfaceStyle];

  if (self->_subtitleVisualStylingInterfaceStyle != subtitleInterfaceStyle)
  {
    if (!subtitleInterfaceStyle)
    {
      return;
    }

    goto LABEL_9;
  }

  if (self->_subtitleVisualStyling)
  {
    v6 = 1;
  }

  else
  {
    v6 = subtitleInterfaceStyle == 0;
  }

  if (!v6)
  {
LABEL_9:
    self->_subtitleVisualStylingInterfaceStyle = subtitleInterfaceStyle;
    v9 = [MEMORY[0x277D26740] _visualStylingProviderForRecipe:53 category:2 andUserInterfaceStyle:subtitleInterfaceStyle];
    v7 = [v9 _visualStylingForStyle:0];
    subtitleVisualStyling = self->_subtitleVisualStyling;
    self->_subtitleVisualStyling = v7;

    [(SBFluidSwitcherItemContainerHeaderView *)self _updateTitleAlpha];
    [(SBFluidSwitcherItemContainerHeaderView *)self setNeedsLayout];
  }
}

- (id)_multiWindowIndicatorAccessibilityIdentifierForDisplayItem:(id)item
{
  v3 = MEMORY[0x277CCACA8];
  itemCopy = item;
  bundleIdentifier = [itemCopy bundleIdentifier];
  uniqueIdentifier = [itemCopy uniqueIdentifier];

  v7 = [v3 stringWithFormat:@"multiple-windows-indicator:%@:%@", bundleIdentifier, uniqueIdentifier];

  return v7;
}

- (id)_makeMultipleWindowsIndicatorView
{
  v2 = objc_alloc_init(SBFluidSwitcherMultipleWindowsIndicatorView);
  [(SBFluidSwitcherMultipleWindowsIndicatorView *)v2 sizeToFit];

  return v2;
}

- (SBFluidSwitcherItemContainerHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end