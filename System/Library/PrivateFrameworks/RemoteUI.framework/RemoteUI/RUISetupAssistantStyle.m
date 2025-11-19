@interface RUISetupAssistantStyle
- (RUISetupAssistantStyle)init;
- (id)_backgroundColor;
- (id)barBackgroundImageForUserInterfaceStyle:(int64_t)a3;
- (void)_applyToFooter:(id)a3 view:(id)a4;
- (void)_applyToTitleLabel:(id)a3;
- (void)applyToLabel:(id)a3;
- (void)applyToNavigationBar:(id)a3;
- (void)applyToObjectModel:(id)a3;
@end

@implementation RUISetupAssistantStyle

- (RUISetupAssistantStyle)init
{
  v9.receiver = self;
  v9.super_class = RUISetupAssistantStyle;
  v2 = [(RUIStyle *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D75348] _labelColor];
    [(RUIStyle *)v2 setHeaderLabelTextColor:v3];

    [(RUIStyle *)v2 setHeaderLabelAlignment:1];
    v4 = [MEMORY[0x277D75348] _labelColor];
    [(RUIStyle *)v2 setSubHeaderLabelTextColor:v4];

    [(RUIStyle *)v2 setSubHeaderLabelAlignment:1];
    v5 = [MEMORY[0x277D75348] _labelColor];
    [(RUIStyle *)v2 setDetailHeaderLabelTextColor:v5];

    [(RUIStyle *)v2 setFooterLabelAlignment:1];
    v6 = objc_alloc_init(RUISetupAssitantLayout);
    setupAssistantLayout = v2->_setupAssistantLayout;
    v2->_setupAssistantLayout = v6;

    [(RUIStyle *)v2 setUsesOnBoardingKitContainer:1];
  }

  return v2;
}

- (id)barBackgroundImageForUserInterfaceStyle:(int64_t)a3
{
  v3 = [MEMORY[0x277D75348] systemBackgroundColor];
  v7.width = 1.0;
  v7.height = 1.0;
  UIGraphicsBeginImageContext(v7);
  [v3 set];
  v8.origin.x = 0.0;
  v8.origin.y = 0.0;
  v8.size.width = 1.0;
  v8.size.height = 1.0;
  UIRectFill(v8);
  v4 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v4;
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

- (id)_backgroundColor
{
  v2 = [getBFFStyleClass() sharedStyle];
  v3 = [v2 backgroundColor];

  return v3;
}

- (void)_applyToFooter:(id)a3 view:(id)a4
{
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v7 linkButton];
    v5 = [v4 titleLabel];
    v6 = UISystemFontForSize();
    [v5 setFont:v6];
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

- (void)applyToObjectModel:(id)a3
{
  v113 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v109.receiver = self;
  v109.super_class = RUISetupAssistantStyle;
  [(RUIStyle *)&v109 applyToObjectModel:v4];
  [v4 setNextButtonStyle:2];
  v83 = v4;
  [v4 allPages];
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
          v10 = [v9 webViewOM];
          v11 = [v10 webView];

          v12 = [v11 scrollView];
          [v12 setDecelerationRate:v84];

          [v11 evaluateJavaScript:@"document.body.style.webkitUserSelect='none';" completionHandler:0];
        }

        v13 = [v9 attributes];
        v14 = [v13 objectForKeyedSubscript:@"horizontalMargin"];

        if (v14)
        {
          v15 = [v9 attributes];
          v16 = [v15 objectForKeyedSubscript:@"horizontalMargin"];
          [v16 floatValue];
          v18 = v17;
LABEL_10:
          [v9 setCustomMargin:v18];

LABEL_11:
          goto LABEL_12;
        }

        v15 = [v9 view];
        v49 = [v15 superview];
        if (!v49)
        {
          goto LABEL_11;
        }

        v50 = v49;
        v51 = [v9 hasTableView];

        if ((v51 & 1) == 0)
        {
          v52 = [v9 view];
          v53 = [v52 traitCollection];
          v54 = [v53 horizontalSizeClass];

          if (v54 == 1)
          {
            v15 = [getBFFStyleClass() sharedStyle];
            v16 = [v9 view];
            [v15 horizontalMarginForView:v16];
            goto LABEL_10;
          }

          [v9 setCustomMargin:0.0];
        }

LABEL_12:
        v19 = [v9 titleLabel];
        [(RUISetupAssistantStyle *)self _applyToTitleLabel:v19];

        v20 = [(RUISetupAssistantStyle *)self _backgroundColor];

        if (v20)
        {
          v21 = [(RUISetupAssistantStyle *)self _backgroundColor];
          v22 = [v9 view];
          [v22 setBackgroundColor:v21];
        }

        if ([v9 hasTableView])
        {
          v89 = v9;
          v90 = v8;
          v23 = [v9 tableViewOM];
          v24 = [v23 tableView];
          v25 = [MEMORY[0x277D75348] clearColor];
          [v24 setBackgroundColor:v25];

          [v24 setBackgroundView:0];
          v26 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.3];
          [v24 setSeparatorBottomShadowColor:v26];

          v88 = v23;
          v27 = [v23 sections];
          v101 = 0u;
          v102 = 0u;
          v103 = 0u;
          v104 = 0u;
          v91 = v27;
          v93 = [v27 countByEnumeratingWithState:&v101 objects:v111 count:16];
          if (v93)
          {
            v92 = *v102;
            do
            {
              v28 = 0;
              do
              {
                v29 = self;
                if (*v102 != v92)
                {
                  objc_enumerationMutation(v91);
                }

                v94 = *(*(&v101 + 1) + 8 * v28);
                v95 = v28;
                v30 = [v94 rows];
                v97 = 0u;
                v98 = 0u;
                v99 = 0u;
                v100 = 0u;
                v31 = [v30 countByEnumeratingWithState:&v97 objects:v110 count:16];
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
                        objc_enumerationMutation(v30);
                      }

                      v35 = *(*(&v97 + 1) + 8 * i);
                      v36 = [v35 tableCell];
                      if ([v24 style] == 2)
                      {
                        v37 = [v36 backgroundColor];
                        if (v37)
                        {
                          [v36 setBackgroundColor:v37];
                        }

                        else
                        {
                          v38 = [(RUISetupAssistantStyle *)v29 insetGroupedCellBackgroundColor];
                          [v36 setBackgroundColor:v38];
                        }
                      }

                      v39 = [v35 attributes];
                      v40 = [v39 objectForKey:@"class"];
                      v41 = [v40 isEqualToString:@"label"];

                      if (v41)
                      {
                        v42 = [v36 ruiTextLabel];
                        [v42 setAdjustsFontSizeToFitWidth:1];
                        [v42 setMinimumScaleFactor:0.70588237];
                      }
                    }

                    v32 = [v30 countByEnumeratingWithState:&v97 objects:v110 count:16];
                  }

                  while (v32);
                }

                v43 = [v94 footer];
                v44 = [v94 footerView];
                self = v29;
                [(RUISetupAssistantStyle *)v29 _applyToFooter:v43 view:v44];

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
          v45 = v88;
          goto LABEL_45;
        }

        if ([v9 hasPasscodeView])
        {
          v45 = [v9 passcodeViewOM];
          v46 = [v45 passcodeView];
          v47 = [(RUISetupAssistantStyle *)self _backgroundColor];
          [v46 setBackgroundColor:v47];

          v24 = [v45 footer];
          v48 = [v45 footerView];
          [(RUISetupAssistantStyle *)self _applyToFooter:v24 view:v48];

LABEL_45:
          goto LABEL_46;
        }

        v55 = [(RUISetupAssistantStyle *)self _backgroundColor];

        if (v55)
        {
          v45 = [v9 containerView];
          v24 = [(RUISetupAssistantStyle *)self _backgroundColor];
          [v45 setBackgroundColor:v24];
          goto LABEL_45;
        }

LABEL_46:
        v56 = [v9 toolbar];
        if (v56)
        {
          if (!+[RUIPlatform isSolariumEnabled])
          {
            [v56 setTranslucent:1];
            [v56 _setHidesShadow:1];
            v57 = [v9 traitCollection];
            v58 = -[RUISetupAssistantStyle barBackgroundImageForUserInterfaceStyle:](self, "barBackgroundImageForUserInterfaceStyle:", [v57 userInterfaceStyle]);
            [v56 setBackgroundImage:v58 forToolbarPosition:0 barMetrics:0];

            v59 = [MEMORY[0x277D759A0] mainScreen];
            v60 = [v59 traitCollection];
            v61 = [v60 userInterfaceStyle];

            if (v61 == 2)
            {
              v62 = [MEMORY[0x277D75348] lightGrayColor];
              [v56 setBackgroundColor:v62];
            }
          }
        }

        v63 = [v9 view];
        [v63 setEdgesPreservingSuperviewLayoutMargins:15];

        v64 = [v9 view];
        [v64 directionalLayoutMargins];
        v66 = v65;
        v68 = v67;
        v96 = v69;
        v71 = v70;

        v72 = [(RUISetupAssistantStyle *)self setupAssistantLayout];
        [v72 directionalLayoutMarginsForViewController:v9];
        v74 = v73;
        v76 = v75;
        v78 = v77;
        v80 = v79;

        if (v68 != v76 || v66 != v74 || v71 != v80 || v96 != v78)
        {
          v81 = [v9 view];
          [v81 setDirectionalLayoutMargins:{v74, v76, v78, v80}];
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

- (void)applyToNavigationBar:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = RUISetupAssistantStyle;
  [(RUIStyle *)&v8 applyToNavigationBar:v4];
  if (!+[RUIPlatform isSolariumEnabled])
  {
    [v4 _setHidesShadow:1];
    v5 = objc_opt_new();
    [v4 setBackgroundImage:v5 forBarMetrics:0];

    v6 = [MEMORY[0x277D75210] effectWithStyle:4];
    v7 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v6];
    [v4 _setBackgroundView:v7];
  }
}

@end