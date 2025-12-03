@interface RUISetupAssistantStyle
- (RUISetupAssistantStyle)init;
- (id)_backgroundColor;
- (id)barBackgroundImageForUserInterfaceStyle:(int64_t)style;
- (void)_applyToFooter:(id)footer view:(id)view;
- (void)_applyToTitleLabel:(id)label;
- (void)applyToLabel:(id)label;
- (void)applyToNavigationBar:(id)bar;
- (void)applyToObjectModel:(id)model;
@end

@implementation RUISetupAssistantStyle

- (RUISetupAssistantStyle)init
{
  v9.receiver = self;
  v9.super_class = RUISetupAssistantStyle;
  v2 = [(RUIStyle *)&v9 init];
  if (v2)
  {
    _labelColor = [MEMORY[0x277D75348] _labelColor];
    [(RUIStyle *)v2 setHeaderLabelTextColor:_labelColor];

    [(RUIStyle *)v2 setHeaderLabelAlignment:1];
    _labelColor2 = [MEMORY[0x277D75348] _labelColor];
    [(RUIStyle *)v2 setSubHeaderLabelTextColor:_labelColor2];

    [(RUIStyle *)v2 setSubHeaderLabelAlignment:1];
    _labelColor3 = [MEMORY[0x277D75348] _labelColor];
    [(RUIStyle *)v2 setDetailHeaderLabelTextColor:_labelColor3];

    [(RUIStyle *)v2 setFooterLabelAlignment:1];
    v6 = objc_alloc_init(RUISetupAssitantLayout);
    setupAssistantLayout = v2->_setupAssistantLayout;
    v2->_setupAssistantLayout = v6;

    [(RUIStyle *)v2 setUsesOnBoardingKitContainer:1];
  }

  return v2;
}

- (id)barBackgroundImageForUserInterfaceStyle:(int64_t)style
{
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  v7.width = 1.0;
  v7.height = 1.0;
  UIGraphicsBeginImageContext(v7);
  [systemBackgroundColor set];
  v8.origin.x = 0.0;
  v8.origin.y = 0.0;
  v8.size.width = 1.0;
  v8.size.height = 1.0;
  UIRectFill(v8);
  v4 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v4;
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

- (id)_backgroundColor
{
  sharedStyle = [getBFFStyleClass() sharedStyle];
  backgroundColor = [sharedStyle backgroundColor];

  return backgroundColor;
}

- (void)_applyToFooter:(id)footer view:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    linkButton = [viewCopy linkButton];
    titleLabel = [linkButton titleLabel];
    v6 = UISystemFontForSize();
    [titleLabel setFont:v6];
  }
}

id __57__RUISetupAssistantStyle_insetGroupedCellBackgroundColor__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x277D75348] secondarySystemGroupedBackgroundColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  }
  v2 = ;

  return v2;
}

- (void)applyToObjectModel:(id)model
{
  v113 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v109.receiver = self;
  v109.super_class = RUISetupAssistantStyle;
  [(RUIStyle *)&v109 applyToObjectModel:modelCopy];
  [modelCopy setNextButtonStyle:2];
  v83 = modelCopy;
  [modelCopy allPages];
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  obj = v108 = 0u;
  v5 = [obj countByEnumeratingWithState:&v105 objects:v112 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v106;
    v84 = *MEMORY[0x277D76EC0];
    v85 = *v106;
    do
    {
      v8 = 0;
      v86 = v6;
      do
      {
        if (*v106 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v105 + 1) + 8 * v8);
        [v9 setShowsTitlesAsHeaderViews:1];
        [v9 loadViewIfNeeded];
        if ([v9 hasWebView])
        {
          webViewOM = [v9 webViewOM];
          webView = [webViewOM webView];

          scrollView = [webView scrollView];
          [scrollView setDecelerationRate:v84];

          [webView evaluateJavaScript:@"document.body.style.webkitUserSelect='none';" completionHandler:0];
        }

        attributes = [v9 attributes];
        v14 = [attributes objectForKeyedSubscript:@"horizontalMargin"];

        if (v14)
        {
          attributes2 = [v9 attributes];
          view2 = [attributes2 objectForKeyedSubscript:@"horizontalMargin"];
          [view2 floatValue];
          v18 = v17;
LABEL_10:
          [v9 setCustomMargin:v18];

LABEL_11:
          goto LABEL_12;
        }

        attributes2 = [v9 view];
        superview = [attributes2 superview];
        if (!superview)
        {
          goto LABEL_11;
        }

        v50 = superview;
        hasTableView = [v9 hasTableView];

        if ((hasTableView & 1) == 0)
        {
          view = [v9 view];
          traitCollection = [view traitCollection];
          horizontalSizeClass = [traitCollection horizontalSizeClass];

          if (horizontalSizeClass == 1)
          {
            attributes2 = [getBFFStyleClass() sharedStyle];
            view2 = [v9 view];
            [attributes2 horizontalMarginForView:view2];
            goto LABEL_10;
          }

          [v9 setCustomMargin:0.0];
        }

LABEL_12:
        titleLabel = [v9 titleLabel];
        [(RUISetupAssistantStyle *)self _applyToTitleLabel:titleLabel];

        _backgroundColor = [(RUISetupAssistantStyle *)self _backgroundColor];

        if (_backgroundColor)
        {
          _backgroundColor2 = [(RUISetupAssistantStyle *)self _backgroundColor];
          view3 = [v9 view];
          [view3 setBackgroundColor:_backgroundColor2];
        }

        if ([v9 hasTableView])
        {
          v89 = v9;
          v90 = v8;
          tableViewOM = [v9 tableViewOM];
          tableView = [tableViewOM tableView];
          clearColor = [MEMORY[0x277D75348] clearColor];
          [tableView setBackgroundColor:clearColor];

          [tableView setBackgroundView:0];
          v26 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.3];
          [tableView setSeparatorBottomShadowColor:v26];

          v88 = tableViewOM;
          sections = [tableViewOM sections];
          v101 = 0u;
          v102 = 0u;
          v103 = 0u;
          v104 = 0u;
          v91 = sections;
          v93 = [sections countByEnumeratingWithState:&v101 objects:v111 count:16];
          if (v93)
          {
            v92 = *v102;
            do
            {
              v28 = 0;
              do
              {
                selfCopy = self;
                if (*v102 != v92)
                {
                  objc_enumerationMutation(v91);
                }

                v94 = *(*(&v101 + 1) + 8 * v28);
                v95 = v28;
                rows = [v94 rows];
                v97 = 0u;
                v98 = 0u;
                v99 = 0u;
                v100 = 0u;
                v31 = [rows countByEnumeratingWithState:&v97 objects:v110 count:16];
                if (v31)
                {
                  v32 = v31;
                  v33 = *v98;
                  do
                  {
                    for (i = 0; i != v32; ++i)
                    {
                      if (*v98 != v33)
                      {
                        objc_enumerationMutation(rows);
                      }

                      v35 = *(*(&v97 + 1) + 8 * i);
                      tableCell = [v35 tableCell];
                      if ([tableView style] == 2)
                      {
                        backgroundColor = [tableCell backgroundColor];
                        if (backgroundColor)
                        {
                          [tableCell setBackgroundColor:backgroundColor];
                        }

                        else
                        {
                          insetGroupedCellBackgroundColor = [(RUISetupAssistantStyle *)selfCopy insetGroupedCellBackgroundColor];
                          [tableCell setBackgroundColor:insetGroupedCellBackgroundColor];
                        }
                      }

                      attributes3 = [v35 attributes];
                      v40 = [attributes3 objectForKey:@"class"];
                      v41 = [v40 isEqualToString:@"label"];

                      if (v41)
                      {
                        ruiTextLabel = [tableCell ruiTextLabel];
                        [ruiTextLabel setAdjustsFontSizeToFitWidth:1];
                        [ruiTextLabel setMinimumScaleFactor:0.70588237];
                      }
                    }

                    v32 = [rows countByEnumeratingWithState:&v97 objects:v110 count:16];
                  }

                  while (v32);
                }

                footer = [v94 footer];
                footerView = [v94 footerView];
                self = selfCopy;
                [(RUISetupAssistantStyle *)selfCopy _applyToFooter:footer view:footerView];

                v28 = v95 + 1;
              }

              while (v95 + 1 != v93);
              v93 = [v91 countByEnumeratingWithState:&v101 objects:v111 count:16];
            }

            while (v93);
          }

          v7 = v85;
          v6 = v86;
          v9 = v89;
          v8 = v90;
          passcodeViewOM = v88;
          goto LABEL_45;
        }

        if ([v9 hasPasscodeView])
        {
          passcodeViewOM = [v9 passcodeViewOM];
          passcodeView = [passcodeViewOM passcodeView];
          _backgroundColor3 = [(RUISetupAssistantStyle *)self _backgroundColor];
          [passcodeView setBackgroundColor:_backgroundColor3];

          tableView = [passcodeViewOM footer];
          footerView2 = [passcodeViewOM footerView];
          [(RUISetupAssistantStyle *)self _applyToFooter:tableView view:footerView2];

LABEL_45:
          goto LABEL_46;
        }

        _backgroundColor4 = [(RUISetupAssistantStyle *)self _backgroundColor];

        if (_backgroundColor4)
        {
          passcodeViewOM = [v9 containerView];
          tableView = [(RUISetupAssistantStyle *)self _backgroundColor];
          [passcodeViewOM setBackgroundColor:tableView];
          goto LABEL_45;
        }

LABEL_46:
        toolbar = [v9 toolbar];
        if (toolbar)
        {
          if (!+[RUIPlatform isSolariumEnabled])
          {
            [toolbar setTranslucent:1];
            [toolbar _setHidesShadow:1];
            traitCollection2 = [v9 traitCollection];
            v58 = -[RUISetupAssistantStyle barBackgroundImageForUserInterfaceStyle:](self, "barBackgroundImageForUserInterfaceStyle:", [traitCollection2 userInterfaceStyle]);
            [toolbar setBackgroundImage:v58 forToolbarPosition:0 barMetrics:0];

            mainScreen = [MEMORY[0x277D759A0] mainScreen];
            traitCollection3 = [mainScreen traitCollection];
            userInterfaceStyle = [traitCollection3 userInterfaceStyle];

            if (userInterfaceStyle == 2)
            {
              lightGrayColor = [MEMORY[0x277D75348] lightGrayColor];
              [toolbar setBackgroundColor:lightGrayColor];
            }
          }
        }

        view4 = [v9 view];
        [view4 setEdgesPreservingSuperviewLayoutMargins:15];

        view5 = [v9 view];
        [view5 directionalLayoutMargins];
        v66 = v65;
        v68 = v67;
        v96 = v69;
        v71 = v70;

        setupAssistantLayout = [(RUISetupAssistantStyle *)self setupAssistantLayout];
        [setupAssistantLayout directionalLayoutMarginsForViewController:v9];
        v74 = v73;
        v76 = v75;
        v78 = v77;
        v80 = v79;

        if (v68 != v76 || v66 != v74 || v71 != v80 || v96 != v78)
        {
          view6 = [v9 view];
          [view6 setDirectionalLayoutMargins:{v74, v76, v78, v80}];
        }

        ++v8;
      }

      while (v8 != v6);
      v82 = [obj countByEnumeratingWithState:&v105 objects:v112 count:16];
      v6 = v82;
    }

    while (v82);
  }
}

- (void)applyToNavigationBar:(id)bar
{
  barCopy = bar;
  v8.receiver = self;
  v8.super_class = RUISetupAssistantStyle;
  [(RUIStyle *)&v8 applyToNavigationBar:barCopy];
  if (!+[RUIPlatform isSolariumEnabled])
  {
    [barCopy _setHidesShadow:1];
    v5 = objc_opt_new();
    [barCopy setBackgroundImage:v5 forBarMetrics:0];

    v6 = [MEMORY[0x277D75210] effectWithStyle:4];
    v7 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v6];
    [barCopy _setBackgroundView:v7];
  }
}

@end