@interface RUIOsloStyle
- (RUIOsloStyle)init;
- (id)tableHeaderViewWithAttributes:(id)attributes;
- (void)_applyToTitleLabel:(id)label;
- (void)applyToLabel:(id)label;
- (void)applyToNavigationBar:(id)bar;
- (void)applyToNavigationController:(id)controller;
- (void)applyToNavigationItem:(id)item;
- (void)applyToObjectModel:(id)model;
@end

@implementation RUIOsloStyle

- (RUIOsloStyle)init
{
  v14.receiver = self;
  v14.super_class = RUIOsloStyle;
  v2 = [(RUIStyle *)&v14 init];
  if (v2)
  {
    _labelColor = [MEMORY[0x277D75348] _labelColor];
    [(RUIStyle *)v2 setFooterLabelTextColor:_labelColor];

    _labelColor2 = [MEMORY[0x277D75348] _labelColor];
    [(RUIStyle *)v2 setHeaderLabelTextColor:_labelColor2];

    [(RUIStyle *)v2 setHeaderLabelAlignment:1];
    _labelColor3 = [MEMORY[0x277D75348] _labelColor];
    [(RUIStyle *)v2 setSubHeaderLabelTextColor:_labelColor3];

    [(RUIStyle *)v2 setSubHeaderLabelAlignment:1];
    _labelColor4 = [MEMORY[0x277D75348] _labelColor];
    [(RUIStyle *)v2 setDetailHeaderLabelTextColor:_labelColor4];

    [(RUIStyle *)v2 setFooterLabelAlignment:1];
    _backgroundColor = [(RUIOsloStyle *)v2 _backgroundColor];
    [(RUIStyle *)v2 setBackgroundColor:_backgroundColor];

    v8 = [MEMORY[0x277D74300] systemFontOfSize:15.0 weight:*MEMORY[0x277D74418]];
    [(RUIStyle *)v2 setFooterFont:v8];

    [(RUIStyle *)v2 setHeaderImagePadding:16.0];
    [(RUIStyle *)v2 setUseNonOBStyleButton:1];
    _secondaryLabelColor = [MEMORY[0x277D75348] _secondaryLabelColor];
    [(RUIStyle *)v2 setSpinnerLabelColor:_secondaryLabelColor];

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

- (void)_applyToTitleLabel:(id)label
{
  labelCopy = label;
  sharedStyle = [getBFFStyleClass() sharedStyle];
  [sharedStyle applyThemeToTitleLabel:labelCopy];
}

- (void)applyToLabel:(id)label
{
  labelCopy = label;
  sharedStyle = [getBFFStyleClass() sharedStyle];
  [sharedStyle applyThemeToLabel:labelCopy];
}

- (void)applyToNavigationController:(id)controller
{
  v3 = MEMORY[0x277D763B8];
  controllerCopy = controller;
  v6 = objc_alloc_init(v3);
  view = [controllerCopy view];

  [view _setBackground:v6];
}

- (void)applyToNavigationBar:(id)bar
{
  v11[1] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = RUIOsloStyle;
  barCopy = bar;
  [(RUIStyle *)&v9 applyToNavigationBar:barCopy];
  if (+[RUIPlatform isSolariumEnabled])
  {
    backgroundColor = objc_alloc_init(MEMORY[0x277D75788]);
    v10 = *MEMORY[0x277D740A8];
    v6 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76A20] weight:*MEMORY[0x277D743F8]];
    v11[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [backgroundColor setTitleTextAttributes:v7];

    [barCopy setStandardAppearance:backgroundColor];
    [barCopy setScrollEdgeAppearance:backgroundColor];
  }

  else
  {
    v8 = objc_opt_new();
    [barCopy setBackgroundImage:v8 forBarMetrics:0];

    backgroundColor = [(RUIStyle *)self backgroundColor];
    [barCopy setBackgroundColor:backgroundColor];
  }
}

- (void)applyToNavigationItem:(id)item
{
  itemCopy = item;
  if (+[RUIPlatform isSolariumEnabled])
  {
    [itemCopy setStyle:2];
  }
}

- (void)applyToObjectModel:(id)model
{
  v165 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v161.receiver = self;
  v161.super_class = RUIOsloStyle;
  [(RUIStyle *)&v161 applyToObjectModel:modelCopy];
  [modelCopy setNextButtonStyle:2];
  v134 = modelCopy;
  [modelCopy allPages];
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
    selfCopy = self;
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
        primaryElement = [v11 primaryElement];
        view = [primaryElement view];
        [view setBackgroundColor:0];

        titleLabel = [v11 titleLabel];
        [(RUIOsloStyle *)self _applyToTitleLabel:titleLabel];

        attributes = [v11 attributes];
        v16 = [attributes objectForKeyedSubscript:@"horizontalMargin"];

        if (v16)
        {
          attributes2 = [v11 attributes];
          view3 = [attributes2 objectForKeyedSubscript:@"horizontalMargin"];
          [view3 floatValue];
          v20 = v19;
LABEL_8:
          [v11 setCustomMargin:v20];

LABEL_9:
          goto LABEL_10;
        }

        attributes2 = [v11 view];
        superview = [attributes2 superview];
        if (!superview)
        {
          goto LABEL_9;
        }

        v128 = superview;
        hasTableView = [v11 hasTableView];

        if ((hasTableView & 1) == 0)
        {
          view2 = [v11 view];
          traitCollection = [view2 traitCollection];
          horizontalSizeClass = [traitCollection horizontalSizeClass];

          if (horizontalSizeClass == 1)
          {
            attributes2 = [getBFFStyleClass() sharedStyle];
            view3 = [v11 view];
            [attributes2 horizontalMarginForView:view3];
            goto LABEL_8;
          }

          [v11 setCustomMargin:0.0];
        }

LABEL_10:
        if ([v11 hasTableView])
        {
          v143 = v10;
          tableViewOM = [v11 tableViewOM];
          tableView = [tableViewOM tableView];
          [tableView setBackgroundColor:0];
          v141 = tableView;
          [tableView setBounces:0];
          headerView = [tableViewOM headerView];
          headerLabel = [headerView headerLabel];

          [headerLabel setAdjustsFontSizeToFitWidth:1];
          [headerLabel setMinimumScaleFactor:0.70588237];
          v25 = [MEMORY[0x277D74300] systemFontOfSize:24.0 weight:v8];
          v140 = headerLabel;
          [headerLabel setFont:v25];

          headerView2 = [tableViewOM headerView];
          subHeaderLabel = [headerView2 subHeaderLabel];

          [subHeaderLabel setAdjustsFontSizeToFitWidth:1];
          [subHeaderLabel setMinimumScaleFactor:0.70588237];
          v28 = [MEMORY[0x277D74300] systemFontOfSize:15.0];
          v139 = subHeaderLabel;
          [subHeaderLabel setFont:v28];

          v142 = tableViewOM;
          sections = [tableViewOM sections];
          v153 = 0u;
          v154 = 0u;
          v155 = 0u;
          v156 = 0u;
          v144 = sections;
          v146 = [sections countByEnumeratingWithState:&v153 objects:v163 count:16];
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
              rows = [*(*(&v153 + 1) + 8 * v30) rows];
              v149 = 0u;
              v150 = 0u;
              v151 = 0u;
              v152 = 0u;
              v148 = rows;
              v32 = [rows countByEnumeratingWithState:&v149 objects:v162 count:16];
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
                    tableCell = [v36 tableCell];
                    attributes3 = [v36 attributes];
                    v39 = [attributes3 objectForKey:@"class"];
                    if ([v39 isEqualToString:@"label"])
                    {
                      attributes4 = [v36 attributes];
                      v41 = [attributes4 objectForKey:@"detailLinkURL"];

                      if (!v41)
                      {
                        ruiTextLabel = [tableCell ruiTextLabel];
                        text = [ruiTextLabel text];
                        v44 = [text length];

                        if (v44)
                        {
                          [ruiTextLabel setAdjustsFontSizeToFitWidth:1];
                          [ruiTextLabel setMinimumScaleFactor:0.70588237];
                          v45 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
                          [ruiTextLabel setFont:v45];

                          [ruiTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
                          if ([v36 hasImage] && (objc_msgSend(v36, "attributes"), v46 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v46, "objectForKey:", @"accessory"), v47 = objc_claimAutoreleasedReturnValue(), v47, v46, !v47))
                          {
                            ruiImageView = [tableCell ruiImageView];
                            [ruiImageView setTranslatesAutoresizingMaskIntoConstraints:0];
                            leadingAnchor = [ruiImageView leadingAnchor];
                            leadingAnchor2 = [tableCell leadingAnchor];
                            v118 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
                            [v118 setActive:1];

                            centerYAnchor = [ruiImageView centerYAnchor];
                            centerYAnchor2 = [tableCell centerYAnchor];
                            v121 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
                            [v121 setActive:1];

                            leadingAnchor3 = [ruiTextLabel leadingAnchor];
                            trailingAnchor = [ruiImageView trailingAnchor];
                            v122 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:15.0];
                            [v122 setActive:1];
                          }

                          else
                          {
                            ruiImageView = [ruiTextLabel leadingAnchor];
                            leadingAnchor3 = [tableCell leadingAnchor];
                            trailingAnchor = [ruiImageView constraintEqualToAnchor:leadingAnchor3 constant:16.0];
                            [trailingAnchor setActive:1];
                          }

                          centerYAnchor3 = [ruiTextLabel centerYAnchor];
                          centerYAnchor4 = [tableCell centerYAnchor];
                          v53 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
                          [v53 setActive:1];

                          detailTextLabel = [tableCell detailTextLabel];
                          text2 = [detailTextLabel text];
                          v56 = [text2 length];

                          if (v56)
                          {
                            v57 = [MEMORY[0x277D74300] systemFontOfSize:15.0 weight:v9];
                            [detailTextLabel setFont:v57];

                            [detailTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
                            leadingAnchor4 = [detailTextLabel leadingAnchor];
                            trailingAnchor2 = [ruiTextLabel trailingAnchor];
                            v60 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor2 constant:16.0];
                            [v60 setActive:1];

                            bottomAnchor = [detailTextLabel bottomAnchor];
                            bottomAnchor2 = [ruiTextLabel bottomAnchor];
                            v63 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
                            [v63 setActive:1];
                          }

                          attributes5 = [v36 attributes];
                          centerYAnchor9 = [attributes5 objectForKey:@"labelAlign"];

                          if (centerYAnchor9)
                          {
                            [ruiTextLabel setTextAlignment:{+[RUIParser textAlignmentForString:](RUIParser, "textAlignmentForString:", centerYAnchor9)}];
                          }

                          goto LABEL_49;
                        }

                        goto LABEL_51;
                      }
                    }

                    else
                    {
                    }

                    attributes6 = [v36 attributes];
                    v67 = [attributes6 objectForKey:@"class"];
                    v68 = [v67 isEqualToString:@"editableText"];

                    if (v68)
                    {
                      ruiTextLabel = [tableCell ruiTextLabel];
                      text3 = [ruiTextLabel text];
                      v70 = [text3 length];

                      if (v70)
                      {
                        [ruiTextLabel setAdjustsFontSizeToFitWidth:1];
                        [ruiTextLabel setMinimumScaleFactor:0.70588237];
                        v71 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
                        [ruiTextLabel setFont:v71];

                        [ruiTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
                        centerYAnchor5 = [ruiTextLabel centerYAnchor];
                        centerYAnchor6 = [tableCell centerYAnchor];
                        v74 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
                        [v74 setActive:1];

                        leadingAnchor5 = [ruiTextLabel leadingAnchor];
                        leadingAnchor6 = [tableCell leadingAnchor];
                        v77 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:16.0];
                        [v77 setActive:1];

                        trailingAnchor3 = [ruiTextLabel trailingAnchor];
                        leadingAnchor7 = [tableCell leadingAnchor];
                        v80 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor7 constant:66.0];
                        [v80 setActive:1];

                        attributes7 = [v36 attributes];
                        detailTextLabel = [attributes7 objectForKey:@"labelAlign"];

                        if (detailTextLabel)
                        {
                          [ruiTextLabel setTextAlignment:{+[RUIParser textAlignmentForString:](RUIParser, "textAlignmentForString:", detailTextLabel)}];
                        }

                        ruiEditableTextField = [tableCell ruiEditableTextField];
                        v83 = [MEMORY[0x277D74300] systemFontOfSize:15.0];
                        [ruiEditableTextField setFont:v83];

                        _labelColor = [MEMORY[0x277D75348] _labelColor];
                        [ruiEditableTextField setTextColor:_labelColor];

                        [ruiEditableTextField setTranslatesAutoresizingMaskIntoConstraints:0];
                        leadingAnchor8 = [ruiEditableTextField leadingAnchor];
                        trailingAnchor4 = [ruiTextLabel trailingAnchor];
                        v87 = [leadingAnchor8 constraintEqualToAnchor:trailingAnchor4 constant:16.0];
                        [v87 setActive:1];

                        bottomAnchor3 = [ruiEditableTextField bottomAnchor];
                        bottomAnchor4 = [ruiTextLabel bottomAnchor];
                        v90 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
                        [v90 setActive:1];

                        goto LABEL_50;
                      }
                    }

                    else
                    {
                      attributes8 = [v36 attributes];
                      v92 = [attributes8 objectForKey:@"class"];
                      v93 = [v92 isEqualToString:@"link"];

                      if (!v93)
                      {
                        ruiTextLabel = [v36 attributes];
                        detailTextLabel = [ruiTextLabel objectForKey:@"class"];
                        if ([detailTextLabel isEqualToString:@"label"])
                        {
                          attributes9 = [v36 attributes];
                          v105 = [attributes9 objectForKey:@"customDetailLink"];
                          v106 = [v105 isEqualToString:@"true"];

                          if (!v106)
                          {
                            goto LABEL_52;
                          }

                          ruiTextLabel = [tableCell ruiTextLabel];
                          attributes10 = [v36 attributes];
                          detailTextLabel = [attributes10 objectForKey:@"labelAlign"];

                          if (detailTextLabel)
                          {
                            [ruiTextLabel setTextAlignment:{+[RUIParser textAlignmentForString:](RUIParser, "textAlignmentForString:", detailTextLabel)}];
                          }
                        }

                        goto LABEL_50;
                      }

                      ruiTextLabel = [tableCell ruiTextLabel];
                      text4 = [ruiTextLabel text];
                      v95 = [text4 length];

                      if (v95)
                      {
                        [ruiTextLabel setAdjustsFontSizeToFitWidth:1];
                        [ruiTextLabel setMinimumScaleFactor:0.70588237];
                        v96 = [MEMORY[0x277D74300] systemFontOfSize:15.0];
                        [ruiTextLabel setFont:v96];

                        if ([v36 hasImage])
                        {
                          ruiImageView2 = [tableCell ruiImageView];
                          [ruiImageView2 setTranslatesAutoresizingMaskIntoConstraints:0];
                          centerYAnchor7 = [ruiImageView2 centerYAnchor];
                          centerYAnchor8 = [tableCell centerYAnchor];
                          v100 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
                          [v100 setActive:1];

                          trailingAnchor5 = [ruiImageView2 trailingAnchor];
                          leadingAnchor9 = [ruiTextLabel leadingAnchor];
                          v103 = [trailingAnchor5 constraintEqualToAnchor:leadingAnchor9 constant:-6.0];
                          [v103 setActive:1];
                        }

                        else
                        {
                          ruiImageView2 = [ruiTextLabel leadingAnchor];
                          trailingAnchor5 = [tableCell leadingAnchor];
                          leadingAnchor9 = [ruiImageView2 constraintEqualToAnchor:trailingAnchor5 constant:15.0];
                          [leadingAnchor9 setActive:1];
                        }

                        attributes11 = [v36 attributes];
                        v109 = [attributes11 objectForKeyedSubscript:@"labelBold"];
                        bOOLValue = [v109 BOOLValue];

                        if (bOOLValue)
                        {
                          v111 = MEMORY[0x277D74300];
                          ruiTextLabel2 = [tableCell ruiTextLabel];
                          font = [ruiTextLabel2 font];
                          [font pointSize];
                          v114 = [v111 boldSystemFontOfSize:?];
                          [ruiTextLabel setFont:v114];
                        }

                        detailTextLabel = [ruiTextLabel centerYAnchor];
                        centerYAnchor9 = [tableCell centerYAnchor];
                        v115 = [detailTextLabel constraintEqualToAnchor:centerYAnchor9];
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

              self = selfCopy;
              v6 = v137;
              v7 = v135;
              containerView = v142;
              v10 = v143;
              _backgroundColor2 = v141;
              goto LABEL_61;
            }
          }
        }

        _backgroundColor = [(RUIOsloStyle *)self _backgroundColor];

        if (_backgroundColor)
        {
          containerView = [v11 containerView];
          _backgroundColor2 = [(RUIOsloStyle *)self _backgroundColor];
          [containerView setBackgroundColor:_backgroundColor2];
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

- (id)tableHeaderViewWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (+[RUIPlatform isSolariumEnabled])
  {
    v4 = [[RUIOsloHeaderView alloc] initWithAttributes:attributesCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end