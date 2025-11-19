@interface RUIOsloStyle
- (RUIOsloStyle)init;
- (id)tableHeaderViewWithAttributes:(id)a3;
- (void)_applyToTitleLabel:(id)a3;
- (void)applyToLabel:(id)a3;
- (void)applyToNavigationBar:(id)a3;
- (void)applyToNavigationController:(id)a3;
- (void)applyToNavigationItem:(id)a3;
- (void)applyToObjectModel:(id)a3;
@end

@implementation RUIOsloStyle

- (RUIOsloStyle)init
{
  v14.receiver = self;
  v14.super_class = RUIOsloStyle;
  v2 = [(RUIStyle *)&v14 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D75348] _labelColor];
    [(RUIStyle *)v2 setFooterLabelTextColor:v3];

    v4 = [MEMORY[0x277D75348] _labelColor];
    [(RUIStyle *)v2 setHeaderLabelTextColor:v4];

    [(RUIStyle *)v2 setHeaderLabelAlignment:1];
    v5 = [MEMORY[0x277D75348] _labelColor];
    [(RUIStyle *)v2 setSubHeaderLabelTextColor:v5];

    [(RUIStyle *)v2 setSubHeaderLabelAlignment:1];
    v6 = [MEMORY[0x277D75348] _labelColor];
    [(RUIStyle *)v2 setDetailHeaderLabelTextColor:v6];

    [(RUIStyle *)v2 setFooterLabelAlignment:1];
    v7 = [(RUIOsloStyle *)v2 _backgroundColor];
    [(RUIStyle *)v2 setBackgroundColor:v7];

    v8 = [MEMORY[0x277D74300] systemFontOfSize:15.0 weight:*MEMORY[0x277D74418]];
    [(RUIStyle *)v2 setFooterFont:v8];

    [(RUIStyle *)v2 setHeaderImagePadding:16.0];
    [(RUIStyle *)v2 setUseNonOBStyleButton:1];
    v9 = [MEMORY[0x277D75348] _secondaryLabelColor];
    [(RUIStyle *)v2 setSpinnerLabelColor:v9];

    v10 = [MEMORY[0x277D74300] systemFontOfSize:15.0];
    [(RUIStyle *)v2 setSpinnerLabelFont:v10];

    if (+[RUIPlatform isSolariumEnabled])
    {
      [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76A20] weight:*MEMORY[0x277D743F8]];
    }

    else
    {
      [MEMORY[0x277D74300] systemFontOfSize:19.0 weight:*MEMORY[0x277D74410]];
    }
    v11 = ;
    [(RUIStyle *)v2 setNavBarButtonLabelFont:v11];

    [(RUIStyle *)v2 setNavBarLabelSpacingWithImage:6.0];
    [(RUIStyle *)v2 setFooterTopMargin:22.0];
    [(RUIStyle *)v2 setSubHeaderTopMargin:16.0];
    [(RUIStyle *)v2 setHeaderMargin:0.0, 0.0, 0.0, 0.0];
    [(RUIStyle *)v2 setMultiChoiceStackViewElementSpacing:10.0];
    [(RUIStyle *)v2 setMultiChoiceStackViewTopAndBottomMargin:5.0];
    if (+[RUIPlatform isSolariumEnabled])
    {
      v12 = 0.0;
    }

    else
    {
      v12 = 22.0;
    }

    [(RUIStyle *)v2 setSectionHeaderHeight:v12];
    [(RUIStyle *)v2 setHeaderContainerSideMargin:16.0];
    [(RUIStyle *)v2 setMinimumHeightOfAdaptiveSheet:505.0];
    [(RUIStyle *)v2 setShowsImageInLoadingNavbar:+[RUIPlatform isSolariumEnabled]^ 1];
    if (+[RUIPlatform isSolariumEnabled])
    {
      [(RUIStyle *)v2 setFirstSectionSpacing:20.0];
      [(RUIStyle *)v2 setUsesCustomLayoutMargins:1];
      [(RUIStyle *)v2 setDirectionalLayoutMargins:20.0, 22.0, 0.0, 22.0];
    }
  }

  return v2;
}

- (void)_applyToTitleLabel:(id)a3
{
  v3 = a3;
  v4 = [getBFFStyleClass() sharedStyle];
  [v4 applyThemeToTitleLabel:v3];
}

- (void)applyToLabel:(id)a3
{
  v3 = a3;
  v4 = [getBFFStyleClass() sharedStyle];
  [v4 applyThemeToLabel:v3];
}

- (void)applyToNavigationController:(id)a3
{
  v3 = MEMORY[0x277D763B8];
  v4 = a3;
  v6 = objc_alloc_init(v3);
  v5 = [v4 view];

  [v5 _setBackground:v6];
}

- (void)applyToNavigationBar:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = RUIOsloStyle;
  v4 = a3;
  [(RUIStyle *)&v9 applyToNavigationBar:v4];
  if (+[RUIPlatform isSolariumEnabled])
  {
    v5 = objc_alloc_init(MEMORY[0x277D75788]);
    v10 = *MEMORY[0x277D740A8];
    v6 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76A20] weight:*MEMORY[0x277D743F8]];
    v11[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [v5 setTitleTextAttributes:v7];

    [v4 setStandardAppearance:v5];
    [v4 setScrollEdgeAppearance:v5];
  }

  else
  {
    v8 = objc_opt_new();
    [v4 setBackgroundImage:v8 forBarMetrics:0];

    v5 = [(RUIStyle *)self backgroundColor];
    [v4 setBackgroundColor:v5];
  }
}

- (void)applyToNavigationItem:(id)a3
{
  v3 = a3;
  if (+[RUIPlatform isSolariumEnabled])
  {
    [v3 setStyle:2];
  }
}

- (void)applyToObjectModel:(id)a3
{
  v165 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v161.receiver = self;
  v161.super_class = RUIOsloStyle;
  [(RUIStyle *)&v161 applyToObjectModel:v4];
  [v4 setNextButtonStyle:2];
  v134 = v4;
  [v4 allPages];
  v157 = 0u;
  v158 = 0u;
  v159 = 0u;
  obj = v160 = 0u;
  v5 = [obj countByEnumeratingWithState:&v157 objects:v164 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v158;
    v8 = *MEMORY[0x277D743F8];
    v9 = *MEMORY[0x277D74420];
    v135 = *v158;
    v136 = self;
    do
    {
      v10 = 0;
      v137 = v6;
      do
      {
        if (*v158 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v157 + 1) + 8 * v10);
        [v11 setShowsTitlesAsHeaderViews:0];
        [v11 setExtendedLayoutIncludesOpaqueBars:1];
        [v11 setEdgesForExtendedLayout:1];
        [v11 loadViewIfNeeded];
        v12 = [v11 primaryElement];
        v13 = [v12 view];
        [v13 setBackgroundColor:0];

        v14 = [v11 titleLabel];
        [(RUIOsloStyle *)self _applyToTitleLabel:v14];

        v15 = [v11 attributes];
        v16 = [v15 objectForKeyedSubscript:@"horizontalMargin"];

        if (v16)
        {
          v17 = [v11 attributes];
          v18 = [v17 objectForKeyedSubscript:@"horizontalMargin"];
          [v18 floatValue];
          v20 = v19;
LABEL_8:
          [v11 setCustomMargin:v20];

LABEL_9:
          goto LABEL_10;
        }

        v17 = [v11 view];
        v127 = [v17 superview];
        if (!v127)
        {
          goto LABEL_9;
        }

        v128 = v127;
        v129 = [v11 hasTableView];

        if ((v129 & 1) == 0)
        {
          v130 = [v11 view];
          v131 = [v130 traitCollection];
          v132 = [v131 horizontalSizeClass];

          if (v132 == 1)
          {
            v17 = [getBFFStyleClass() sharedStyle];
            v18 = [v11 view];
            [v17 horizontalMarginForView:v18];
            goto LABEL_8;
          }

          [v11 setCustomMargin:0.0];
        }

LABEL_10:
        if ([v11 hasTableView])
        {
          v143 = v10;
          v21 = [v11 tableViewOM];
          v22 = [v21 tableView];
          [v22 setBackgroundColor:0];
          v141 = v22;
          [v22 setBounces:0];
          v23 = [v21 headerView];
          v24 = [v23 headerLabel];

          [v24 setAdjustsFontSizeToFitWidth:1];
          [v24 setMinimumScaleFactor:0.70588237];
          v25 = [MEMORY[0x277D74300] systemFontOfSize:24.0 weight:v8];
          v140 = v24;
          [v24 setFont:v25];

          v26 = [v21 headerView];
          v27 = [v26 subHeaderLabel];

          [v27 setAdjustsFontSizeToFitWidth:1];
          [v27 setMinimumScaleFactor:0.70588237];
          v28 = [MEMORY[0x277D74300] systemFontOfSize:15.0];
          v139 = v27;
          [v27 setFont:v28];

          v142 = v21;
          v29 = [v21 sections];
          v153 = 0u;
          v154 = 0u;
          v155 = 0u;
          v156 = 0u;
          v144 = v29;
          v146 = [v29 countByEnumeratingWithState:&v153 objects:v163 count:16];
          if (!v146)
          {
            goto LABEL_58;
          }

          v145 = *v154;
          while (1)
          {
            v30 = 0;
            do
            {
              if (*v154 != v145)
              {
                objc_enumerationMutation(v144);
              }

              v147 = v30;
              v31 = [*(*(&v153 + 1) + 8 * v30) rows];
              v149 = 0u;
              v150 = 0u;
              v151 = 0u;
              v152 = 0u;
              v148 = v31;
              v32 = [v31 countByEnumeratingWithState:&v149 objects:v162 count:16];
              if (v32)
              {
                v33 = v32;
                v34 = *v150;
                do
                {
                  v35 = 0;
                  do
                  {
                    if (*v150 != v34)
                    {
                      objc_enumerationMutation(v148);
                    }

                    v36 = *(*(&v149 + 1) + 8 * v35);
                    v37 = [v36 tableCell];
                    v38 = [v36 attributes];
                    v39 = [v38 objectForKey:@"class"];
                    if ([v39 isEqualToString:@"label"])
                    {
                      v40 = [v36 attributes];
                      v41 = [v40 objectForKey:@"detailLinkURL"];

                      if (!v41)
                      {
                        v42 = [v37 ruiTextLabel];
                        v43 = [v42 text];
                        v44 = [v43 length];

                        if (v44)
                        {
                          [v42 setAdjustsFontSizeToFitWidth:1];
                          [v42 setMinimumScaleFactor:0.70588237];
                          v45 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
                          [v42 setFont:v45];

                          [v42 setTranslatesAutoresizingMaskIntoConstraints:0];
                          if ([v36 hasImage] && (objc_msgSend(v36, "attributes"), v46 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v46, "objectForKey:", @"accessory"), v47 = objc_claimAutoreleasedReturnValue(), v47, v46, !v47))
                          {
                            v48 = [v37 ruiImageView];
                            [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
                            v116 = [v48 leadingAnchor];
                            v117 = [v37 leadingAnchor];
                            v118 = [v116 constraintEqualToAnchor:v117 constant:16.0];
                            [v118 setActive:1];

                            v119 = [v48 centerYAnchor];
                            v120 = [v37 centerYAnchor];
                            v121 = [v119 constraintEqualToAnchor:v120];
                            [v121 setActive:1];

                            v49 = [v42 leadingAnchor];
                            v50 = [v48 trailingAnchor];
                            v122 = [v49 constraintEqualToAnchor:v50 constant:15.0];
                            [v122 setActive:1];
                          }

                          else
                          {
                            v48 = [v42 leadingAnchor];
                            v49 = [v37 leadingAnchor];
                            v50 = [v48 constraintEqualToAnchor:v49 constant:16.0];
                            [v50 setActive:1];
                          }

                          v51 = [v42 centerYAnchor];
                          v52 = [v37 centerYAnchor];
                          v53 = [v51 constraintEqualToAnchor:v52];
                          [v53 setActive:1];

                          v54 = [v37 detailTextLabel];
                          v55 = [v54 text];
                          v56 = [v55 length];

                          if (v56)
                          {
                            v57 = [MEMORY[0x277D74300] systemFontOfSize:15.0 weight:v9];
                            [v54 setFont:v57];

                            [v54 setTranslatesAutoresizingMaskIntoConstraints:0];
                            v58 = [v54 leadingAnchor];
                            v59 = [v42 trailingAnchor];
                            v60 = [v58 constraintEqualToAnchor:v59 constant:16.0];
                            [v60 setActive:1];

                            v61 = [v54 bottomAnchor];
                            v62 = [v42 bottomAnchor];
                            v63 = [v61 constraintEqualToAnchor:v62];
                            [v63 setActive:1];
                          }

                          v64 = [v36 attributes];
                          v65 = [v64 objectForKey:@"labelAlign"];

                          if (v65)
                          {
                            [v42 setTextAlignment:{+[RUIParser textAlignmentForString:](RUIParser, "textAlignmentForString:", v65)}];
                          }

                          goto LABEL_49;
                        }

                        goto LABEL_51;
                      }
                    }

                    else
                    {
                    }

                    v66 = [v36 attributes];
                    v67 = [v66 objectForKey:@"class"];
                    v68 = [v67 isEqualToString:@"editableText"];

                    if (v68)
                    {
                      v42 = [v37 ruiTextLabel];
                      v69 = [v42 text];
                      v70 = [v69 length];

                      if (v70)
                      {
                        [v42 setAdjustsFontSizeToFitWidth:1];
                        [v42 setMinimumScaleFactor:0.70588237];
                        v71 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
                        [v42 setFont:v71];

                        [v42 setTranslatesAutoresizingMaskIntoConstraints:0];
                        v72 = [v42 centerYAnchor];
                        v73 = [v37 centerYAnchor];
                        v74 = [v72 constraintEqualToAnchor:v73];
                        [v74 setActive:1];

                        v75 = [v42 leadingAnchor];
                        v76 = [v37 leadingAnchor];
                        v77 = [v75 constraintEqualToAnchor:v76 constant:16.0];
                        [v77 setActive:1];

                        v78 = [v42 trailingAnchor];
                        v79 = [v37 leadingAnchor];
                        v80 = [v78 constraintEqualToAnchor:v79 constant:66.0];
                        [v80 setActive:1];

                        v81 = [v36 attributes];
                        v54 = [v81 objectForKey:@"labelAlign"];

                        if (v54)
                        {
                          [v42 setTextAlignment:{+[RUIParser textAlignmentForString:](RUIParser, "textAlignmentForString:", v54)}];
                        }

                        v82 = [v37 ruiEditableTextField];
                        v83 = [MEMORY[0x277D74300] systemFontOfSize:15.0];
                        [v82 setFont:v83];

                        v84 = [MEMORY[0x277D75348] _labelColor];
                        [v82 setTextColor:v84];

                        [v82 setTranslatesAutoresizingMaskIntoConstraints:0];
                        v85 = [v82 leadingAnchor];
                        v86 = [v42 trailingAnchor];
                        v87 = [v85 constraintEqualToAnchor:v86 constant:16.0];
                        [v87 setActive:1];

                        v88 = [v82 bottomAnchor];
                        v89 = [v42 bottomAnchor];
                        v90 = [v88 constraintEqualToAnchor:v89];
                        [v90 setActive:1];

                        goto LABEL_50;
                      }
                    }

                    else
                    {
                      v91 = [v36 attributes];
                      v92 = [v91 objectForKey:@"class"];
                      v93 = [v92 isEqualToString:@"link"];

                      if (!v93)
                      {
                        v42 = [v36 attributes];
                        v54 = [v42 objectForKey:@"class"];
                        if ([v54 isEqualToString:@"label"])
                        {
                          v104 = [v36 attributes];
                          v105 = [v104 objectForKey:@"customDetailLink"];
                          v106 = [v105 isEqualToString:@"true"];

                          if (!v106)
                          {
                            goto LABEL_52;
                          }

                          v42 = [v37 ruiTextLabel];
                          v107 = [v36 attributes];
                          v54 = [v107 objectForKey:@"labelAlign"];

                          if (v54)
                          {
                            [v42 setTextAlignment:{+[RUIParser textAlignmentForString:](RUIParser, "textAlignmentForString:", v54)}];
                          }
                        }

                        goto LABEL_50;
                      }

                      v42 = [v37 ruiTextLabel];
                      v94 = [v42 text];
                      v95 = [v94 length];

                      if (v95)
                      {
                        [v42 setAdjustsFontSizeToFitWidth:1];
                        [v42 setMinimumScaleFactor:0.70588237];
                        v96 = [MEMORY[0x277D74300] systemFontOfSize:15.0];
                        [v42 setFont:v96];

                        if ([v36 hasImage])
                        {
                          v97 = [v37 ruiImageView];
                          [v97 setTranslatesAutoresizingMaskIntoConstraints:0];
                          v98 = [v97 centerYAnchor];
                          v99 = [v37 centerYAnchor];
                          v100 = [v98 constraintEqualToAnchor:v99];
                          [v100 setActive:1];

                          v101 = [v97 trailingAnchor];
                          v102 = [v42 leadingAnchor];
                          v103 = [v101 constraintEqualToAnchor:v102 constant:-6.0];
                          [v103 setActive:1];
                        }

                        else
                        {
                          v97 = [v42 leadingAnchor];
                          v101 = [v37 leadingAnchor];
                          v102 = [v97 constraintEqualToAnchor:v101 constant:15.0];
                          [v102 setActive:1];
                        }

                        v108 = [v36 attributes];
                        v109 = [v108 objectForKeyedSubscript:@"labelBold"];
                        v110 = [v109 BOOLValue];

                        if (v110)
                        {
                          v111 = MEMORY[0x277D74300];
                          v112 = [v37 ruiTextLabel];
                          v113 = [v112 font];
                          [v113 pointSize];
                          v114 = [v111 boldSystemFontOfSize:?];
                          [v42 setFont:v114];
                        }

                        v54 = [v42 centerYAnchor];
                        v65 = [v37 centerYAnchor];
                        v115 = [v54 constraintEqualToAnchor:v65];
                        [v115 setActive:1];

LABEL_49:
LABEL_50:
                      }
                    }

LABEL_51:

LABEL_52:
                    ++v35;
                  }

                  while (v33 != v35);
                  v123 = [v148 countByEnumeratingWithState:&v149 objects:v162 count:16];
                  v33 = v123;
                }

                while (v123);
              }

              v30 = v147 + 1;
            }

            while (v147 + 1 != v146);
            v146 = [v144 countByEnumeratingWithState:&v153 objects:v163 count:16];
            if (!v146)
            {
LABEL_58:

              self = v136;
              v6 = v137;
              v7 = v135;
              v124 = v142;
              v10 = v143;
              v125 = v141;
              goto LABEL_61;
            }
          }
        }

        v126 = [(RUIOsloStyle *)self _backgroundColor];

        if (v126)
        {
          v124 = [v11 containerView];
          v125 = [(RUIOsloStyle *)self _backgroundColor];
          [v124 setBackgroundColor:v125];
LABEL_61:
        }

        ++v10;
      }

      while (v10 != v6);
      v133 = [obj countByEnumeratingWithState:&v157 objects:v164 count:16];
      v6 = v133;
    }

    while (v133);
  }
}

- (id)tableHeaderViewWithAttributes:(id)a3
{
  v3 = a3;
  if (+[RUIPlatform isSolariumEnabled])
  {
    v4 = [[RUIOsloHeaderView alloc] initWithAttributes:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end