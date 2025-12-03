@interface SearchUIFirstTimeExperienceViewController
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (SearchUIFirstTimeExperienceDelegate)delegate;
- (SearchUIFirstTimeExperienceViewController)initWithDomains:(id)domains explanationText:(id)text learnMoreText:(id)moreText continueButtonTitle:(id)title;
- (SearchUIFirstTimeExperienceViewController)initWithSupportedDomains:(unint64_t)domains explanationText:(id)text learnMoreText:(id)moreText continueButtonTitle:(id)title;
- (void)continueButtonPressed;
- (void)makeViews;
- (void)showPrivacyView;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SearchUIFirstTimeExperienceViewController

- (SearchUIFirstTimeExperienceViewController)initWithSupportedDomains:(unint64_t)domains explanationText:(id)text learnMoreText:(id)moreText continueButtonTitle:(id)title
{
  v19[6] = *MEMORY[0x1E69E9840];
  textCopy = text;
  moreTextCopy = moreText;
  titleCopy = title;
  v19[0] = @"web";
  v19[1] = @"itunes";
  v19[2] = @"app_store";
  v19[3] = @"movies";
  v19[4] = @"restaurants";
  v19[5] = @"maps";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:6];
  v14 = objc_opt_new();
  if ([v13 count])
  {
    v15 = 0;
    do
    {
      if (((1 << v15) & domains) != 0)
      {
        v16 = [v13 objectAtIndexedSubscript:v15];
        [v14 addObject:v16];
      }

      ++v15;
    }

    while (v15 < [v13 count]);
  }

  v17 = [(SearchUIFirstTimeExperienceViewController *)self initWithDomains:v14 explanationText:textCopy learnMoreText:moreTextCopy continueButtonTitle:titleCopy];

  return v17;
}

- (SearchUIFirstTimeExperienceViewController)initWithDomains:(id)domains explanationText:(id)text learnMoreText:(id)moreText continueButtonTitle:(id)title
{
  domainsCopy = domains;
  textCopy = text;
  moreTextCopy = moreText;
  titleCopy = title;
  v18.receiver = self;
  v18.super_class = SearchUIFirstTimeExperienceViewController;
  v14 = [(SearchUIFirstTimeExperienceViewController *)&v18 init];
  v15 = v14;
  if (v14)
  {
    [(SearchUIFirstTimeExperienceViewController *)v14 setSupportedDomains:domainsCopy];
    [(SearchUIFirstTimeExperienceViewController *)v15 setExplanationText:textCopy];
    v16 = [moreTextCopy stringByReplacingOccurrencesOfString:@" " withString:@" "];
    [(SearchUIFirstTimeExperienceViewController *)v15 setLearnMoreText:v16];

    [(SearchUIFirstTimeExperienceViewController *)v15 setContinueButtonTitle:titleCopy];
    [(SearchUIFirstTimeExperienceViewController *)v15 makeViews];
  }

  return v15;
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = SearchUIFirstTimeExperienceViewController;
  [(SearchUIFirstTimeExperienceViewController *)&v9 traitCollectionDidChange:change];
  [(SearchUIFirstTimeExperienceViewController *)self updateTraitsIfNeeded];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__SearchUIFirstTimeExperienceViewController_traitCollectionDidChange___block_invoke;
  v8[3] = &unk_1E85B24C8;
  v8[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v8];
  v4 = MEMORY[0x1E69D9108];
  view = [(SearchUIFirstTimeExperienceViewController *)self view];
  v6 = [v4 bestAppearanceForView:view];
  view2 = [(SearchUIFirstTimeExperienceViewController *)self view];
  [v6 enableAppearanceForContainer:view2];
}

void __70__SearchUIFirstTimeExperienceViewController_traitCollectionDidChange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) makeViews];
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
}

- (void)makeViews
{
  v145 = *MEMORY[0x1E69E9840];
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  view = [(SearchUIFirstTimeExperienceViewController *)self view];
  subviews = [view subviews];

  v5 = [subviews countByEnumeratingWithState:&v130 objects:v144 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v131;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v131 != v7)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v130 + 1) + 8 * i) removeFromSuperview];
      }

      v6 = [subviews countByEnumeratingWithState:&v130 objects:v144 count:16];
    }

    while (v6);
  }

  v9 = MEMORY[0x1E69D9108];
  traitCollection = [(SearchUIFirstTimeExperienceViewController *)self traitCollection];
  v11 = [v9 bestAppearanceForTraitCollection:traitCollection];

  v142[0] = @"web";
  v142[1] = @"itunes";
  v143[0] = @"safari";
  v143[1] = @"music";
  v142[2] = @"app_store";
  v142[3] = @"movies";
  v143[2] = @"appstore";
  v143[3] = @"film";
  v142[4] = @"restaurants";
  v142[5] = @"maps";
  v143[4] = @"fork.knife";
  v143[5] = @"mappin";
  v142[6] = @"media";
  v142[7] = @"pets";
  v143[6] = @"music";
  v143[7] = @"pawprint";
  v142[8] = @"books";
  v142[9] = @"art";
  v143[8] = @"book";
  v143[9] = @"photo";
  v142[10] = @"nature";
  v142[11] = @"landmarks";
  v143[10] = @"leaf";
  v143[11] = @"map";
  v142[12] = @"translation";
  v143[12] = @"translate";
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v143 forKeys:v142 count:13];
  v13 = +[SearchUIUtilities isIpad];
  traitCollection2 = [(SearchUIFirstTimeExperienceViewController *)self traitCollection];
  v15 = [traitCollection2 horizontalSizeClass] == 1 && v13;

  if ([v11 style] == 3)
  {
    platterColor = [v11 platterColor];
  }

  else
  {
    if ([v11 style] == 2)
    {
      [v11 quaternaryColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] tertiarySystemFillColor];
    }
    platterColor = ;
  }

  v115 = platterColor;
  v17 = MEMORY[0x1E69DB878];
  v108 = __PAIR64__(v13, v15);
  if (v15 & 1 | !v13)
  {
    v18 = *MEMORY[0x1E69DDD58];
    v19 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC70]];
    v117 = [v17 preferredFontForTextStyle:v18 compatibleWithTraitCollection:v19];
  }

  else
  {
    v117 = [MEMORY[0x1E69DB878] systemFontOfSize:48.0];
  }

  array = [MEMORY[0x1E695DF70] array];
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  selfCopy = self;
  obj = [(SearchUIFirstTimeExperienceViewController *)self supportedDomains];
  v20 = [obj countByEnumeratingWithState:&v126 objects:v141 count:16];
  v114 = v12;
  if (v20)
  {
    v21 = v20;
    v22 = *v127;
    v112 = v11;
    v113 = *v127;
    do
    {
      v23 = 0;
      v118 = v21;
      do
      {
        if (*v127 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v126 + 1) + 8 * v23);
        v25 = [v12 objectForKeyedSubscript:v24];
        if (v25)
        {
          v26 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v25];
          v27 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v25 variant:0x40000000];
          v28 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v25 variant:1073741826];
          v29 = v28;
          if (v27)
          {
            v30 = v27;
          }

          else
          {
            v30 = v26;
          }

          if (v28)
          {
            v30 = v28;
          }

          v31 = v30;
          if (v31)
          {
            v32 = v31;
            if (v29)
            {
              v33 = 1;
            }

            else
            {
              v33 = [v25 isEqualToString:@"safari"];
            }

            if (v27)
            {
              v34 = 1;
            }

            else
            {
              v34 = v33;
            }

            v124 = v33;
            if ([v11 style] == 3 && (v33 & 1) != 0)
            {
              primaryColor = [v11 primaryColor];
            }

            else
            {
              primaryColor = [v11 secondaryColor];
            }

            v36 = primaryColor;
            v37 = v115;
            if (!v34)
            {
              v37 = primaryColor;
            }

            v38 = MEMORY[0x1E69DCAD8];
            v140[0] = primaryColor;
            v140[1] = v37;
            v140[2] = v37;
            v39 = MEMORY[0x1E695DEC8];
            v122 = v37;
            v40 = [v39 arrayWithObjects:v140 count:3];
            v41 = [v38 _configurationWithHierarchicalColors:v40];
            v42 = [v32 imageWithSymbolConfiguration:v41];

            v43 = [objc_alloc(MEMORY[0x1E69D9168]) initWithImage:v42];
            [v43 setIsTemplate:1];
            v44 = objc_opt_new();

            [v44 setTlkImage:v43];
            [v44 setSymbolFont:v117];
            if (v124)
            {
              v45 = 3;
            }

            else
            {
              v45 = 1;
            }

            [v44 setSymbolScale:v45];
            LODWORD(v46) = 1148846080;
            [v44 setContentHuggingPriority:0 forAxis:v46];
            [array addObject:v44];
            [v44 tlk_updateForAppearance:v112];

            v11 = v112;
            v22 = v113;
            v12 = v114;
            v21 = v118;
          }
        }

        else
        {
          v26 = SearchUIGeneralLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v139 = v24;
            _os_log_error_impl(&dword_1DA169000, v26, OS_LOG_TYPE_ERROR, "Unsupported FTE domain name: %@", buf, 0xCu);
          }
        }

        ++v23;
      }

      while (v21 != v23);
      v21 = [obj countByEnumeratingWithState:&v126 objects:v141 count:16];
    }

    while (v21);
  }

  v47 = [array count];
  if (v47 >= 6)
  {
    v48 = 6;
  }

  else
  {
    v48 = v47;
  }

  v49 = [array subarrayWithRange:{0, v48}];
  v50 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:v49];
  [v50 setDistribution:0];
  v125 = v49;
  if (v110)
  {
    v51 = 0;
    v52 = selfCopy;
  }

  else
  {
    v52 = selfCopy;
    view2 = [(SearchUIFirstTimeExperienceViewController *)selfCopy view];
    tlks_screen = [view2 tlks_screen];
    [tlks_screen _referenceBounds];
    v51 = CGRectGetWidth(v146) <= 320.0;
  }

  if ((v109 & 1) != 0 || v51 | !+[SearchUIUtilities isWideScreen])
  {
    v55 = !v51;
    v56 = 3.0;
    v57 = 2.0;
  }

  else
  {
    v55 = (v110 & 1) == 0;
    v56 = 7.0;
    v57 = 9.0;
  }

  if (!v55)
  {
    v56 = v57;
  }

  [v50 setSpacing:v56];
  view3 = [(SearchUIFirstTimeExperienceViewController *)v52 view];
  [view3 addSubview:v50];

  view4 = [(SearchUIFirstTimeExperienceViewController *)v52 view];
  v60 = [SearchUIAutoLayout alignView:v50 toView:view4 withAttribute:9];

  if (+[SearchUIUtilities isWideScreen])
  {
    v61 = 38.0;
  }

  else
  {
    v61 = 21.0;
  }

  view5 = [(SearchUIFirstTimeExperienceViewController *)v52 view];
  v63 = [SearchUIAutoLayout baselineAlignBottomView:v50 toTopView:view5 spacing:v61];

  v64 = objc_alloc(MEMORY[0x1E696AD40]);
  explanationText = [(SearchUIFirstTimeExperienceViewController *)v52 explanationText];
  v66 = [v64 initWithString:explanationText];

  v67 = objc_alloc(MEMORY[0x1E696AAB0]);
  learnMoreText = [(SearchUIFirstTimeExperienceViewController *)v52 learnMoreText];
  v136 = *MEMORY[0x1E69DB670];
  v69 = [MEMORY[0x1E695DFF8] URLWithString:&stru_1F55BC4E8];
  v137 = v69;
  v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v137 forKeys:&v136 count:1];
  v71 = [v67 initWithString:learnMoreText attributes:v70];

  [v66 appendAttributedString:v71];
  obja = v71;
  if ([v11 style] == 2)
  {
    v72 = [MEMORY[0x1E69D9108] appearanceWithStyle:0];
  }

  else
  {
    v72 = v11;
  }

  v73 = v72;
  if ([v72 isVibrant])
  {
    v74 = 2;
  }

  else
  {
    v74 = 1;
  }

  v75 = objc_opt_new();
  [v75 setAttributedText:v66];
  [v75 setDelegate:v52];
  primaryColor2 = [v11 primaryColor];
  [v75 setTextColor:primaryColor2];

  v134 = *MEMORY[0x1E69DB650];
  v119 = v73;
  v77 = [v73 buttonColorForProminence:v74];
  v135 = v77;
  v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v135 forKeys:&v134 count:1];
  [v75 setLinkTextAttributes:v78];

  v79 = MEMORY[0x1E69DB878];
  v80 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:0x8000 options:0];
  v81 = [v79 fontWithDescriptor:v80 size:0.0];
  [v75 setFont:v81];

  textContainer = [v75 textContainer];
  [textContainer setLineFragmentPadding:0.0];

  [v75 _setInteractiveTextSelectionDisabled:1];
  [v75 setScrollEnabled:0];
  [v75 setBackgroundColor:0];
  [v75 setTextAlignment:1];
  [v75 setEditable:0];
  [v11 enableAppearanceForView:v75];
  view6 = [(SearchUIFirstTimeExperienceViewController *)v52 view];
  [view6 addSubview:v75];

  v84 = [SearchUISymbolImage uiImageWithSymbolName:@"safari" font:v117 scale:3];
  [v84 size];
  v86 = v85;

  [v50 spacing];
  v88 = v87 * 5.0 + v86 * 6.0;
  view7 = [(SearchUIFirstTimeExperienceViewController *)v52 view];
  v90 = [SearchUIAutoLayout alignView:v75 toView:view7 withAttribute:9];

  view8 = [(SearchUIFirstTimeExperienceViewController *)v52 view];
  v92 = [SearchUIAutoLayout alignLeadingView:view8 toTrailingView:v75 spacing:1 minimum:16.0];

  view9 = [(SearchUIFirstTimeExperienceViewController *)v52 view];
  v94 = [SearchUIAutoLayout alignLeadingView:v75 toTrailingView:view9 spacing:1 minimum:16.0];

  v95 = [SearchUIAutoLayout setWidth:v75 forView:v88];
  LODWORD(v96) = 1148829696;
  [v95 setPriority:v96];
  v97 = [SearchUIAutoLayout baselineAlignBottomView:v75 toTopView:v50 dynamicSpacing:34.0];
  v123 = v66;
  if (_UISolariumEnabled())
  {
    _tintedGlassButtonConfiguration = [MEMORY[0x1E69DC740] _tintedGlassButtonConfiguration];
  }

  else
  {
    _tintedGlassButtonConfiguration = [MEMORY[0x1E69DC740] grayButtonConfiguration];
    [_tintedGlassButtonConfiguration setCornerStyle:4];
    [_tintedGlassButtonConfiguration setBaseBackgroundColor:v115];
  }

  continueButtonTitle = [(SearchUIFirstTimeExperienceViewController *)v52 continueButtonTitle];
  [_tintedGlassButtonConfiguration setTitle:continueButtonTitle];

  v100 = objc_opt_new();
  [v100 setRole:1];
  [v100 setConfiguration:_tintedGlassButtonConfiguration];
  if ([v11 style] == 3)
  {
    primaryColor3 = [v11 primaryColor];
    [v100 setTintColor:primaryColor3];
  }

  else
  {
    [v100 setTintColor:0];
  }

  [v11 enableAppearanceForView:v100];
  [v100 addTarget:v52 action:sel_continueButtonPressed forControlEvents:64];
  view10 = [(SearchUIFirstTimeExperienceViewController *)v52 view];
  [view10 addSubview:v100];

  view11 = [(SearchUIFirstTimeExperienceViewController *)v52 view];
  v104 = [SearchUIAutoLayout alignView:v100 toView:view11 withAttribute:9];

  v105 = [SearchUIAutoLayout alignView:v100 attribute:3 toView:v75 attribute:4 constant:30.0];
  view12 = [(SearchUIFirstTimeExperienceViewController *)v52 view];
  v107 = [SearchUIAutoLayout baselineAlignBottomView:view12 toTopView:v100 spacing:1 minimum:v61];
}

- (void)continueButtonPressed
{
  delegate = [(SearchUIFirstTimeExperienceViewController *)self delegate];
  [delegate firstTimeExperienceContinueButtonPressed];
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  if (!interaction)
  {
    [(SearchUIFirstTimeExperienceViewController *)self showPrivacyView:view];
  }

  return interaction == 0;
}

- (void)showPrivacyView
{
  v6 = objc_alloc_init(SearchUIPrivacyDetailsViewController);
  if (([(SearchUIFirstTimeExperienceViewController *)self _isInPopoverPresentation]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    delegate = [(SearchUIFirstTimeExperienceViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      delegate2 = [(SearchUIFirstTimeExperienceViewController *)self delegate];
      if ([delegate2 firstTimeExperienceIsInPopoverPresentation])
      {
        v3 = 0;
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 2;
    }
  }

  [(SearchUIPrivacyDetailsViewController *)v6 setModalPresentationStyle:v3];
  [(SearchUIFirstTimeExperienceViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (SearchUIFirstTimeExperienceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end