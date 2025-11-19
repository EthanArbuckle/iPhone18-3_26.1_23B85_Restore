@interface SearchUIFirstTimeExperienceViewController
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (SearchUIFirstTimeExperienceDelegate)delegate;
- (SearchUIFirstTimeExperienceViewController)initWithDomains:(id)a3 explanationText:(id)a4 learnMoreText:(id)a5 continueButtonTitle:(id)a6;
- (SearchUIFirstTimeExperienceViewController)initWithSupportedDomains:(unint64_t)a3 explanationText:(id)a4 learnMoreText:(id)a5 continueButtonTitle:(id)a6;
- (void)continueButtonPressed;
- (void)makeViews;
- (void)showPrivacyView;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SearchUIFirstTimeExperienceViewController

- (SearchUIFirstTimeExperienceViewController)initWithSupportedDomains:(unint64_t)a3 explanationText:(id)a4 learnMoreText:(id)a5 continueButtonTitle:(id)a6
{
  v19[6] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
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
      if (((1 << v15) & a3) != 0)
      {
        v16 = [v13 objectAtIndexedSubscript:v15];
        [v14 addObject:v16];
      }

      ++v15;
    }

    while (v15 < [v13 count]);
  }

  v17 = [(SearchUIFirstTimeExperienceViewController *)self initWithDomains:v14 explanationText:v10 learnMoreText:v11 continueButtonTitle:v12];

  return v17;
}

- (SearchUIFirstTimeExperienceViewController)initWithDomains:(id)a3 explanationText:(id)a4 learnMoreText:(id)a5 continueButtonTitle:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = SearchUIFirstTimeExperienceViewController;
  v14 = [(SearchUIFirstTimeExperienceViewController *)&v18 init];
  v15 = v14;
  if (v14)
  {
    [(SearchUIFirstTimeExperienceViewController *)v14 setSupportedDomains:v10];
    [(SearchUIFirstTimeExperienceViewController *)v15 setExplanationText:v11];
    v16 = [v12 stringByReplacingOccurrencesOfString:@" " withString:@" "];
    [(SearchUIFirstTimeExperienceViewController *)v15 setLearnMoreText:v16];

    [(SearchUIFirstTimeExperienceViewController *)v15 setContinueButtonTitle:v13];
    [(SearchUIFirstTimeExperienceViewController *)v15 makeViews];
  }

  return v15;
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = SearchUIFirstTimeExperienceViewController;
  [(SearchUIFirstTimeExperienceViewController *)&v9 traitCollectionDidChange:a3];
  [(SearchUIFirstTimeExperienceViewController *)self updateTraitsIfNeeded];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__SearchUIFirstTimeExperienceViewController_traitCollectionDidChange___block_invoke;
  v8[3] = &unk_1E85B24C8;
  v8[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v8];
  v4 = MEMORY[0x1E69D9108];
  v5 = [(SearchUIFirstTimeExperienceViewController *)self view];
  v6 = [v4 bestAppearanceForView:v5];
  v7 = [(SearchUIFirstTimeExperienceViewController *)self view];
  [v6 enableAppearanceForContainer:v7];
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
  v3 = [(SearchUIFirstTimeExperienceViewController *)self view];
  v4 = [v3 subviews];

  v5 = [v4 countByEnumeratingWithState:&v130 objects:v144 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v130 + 1) + 8 * i) removeFromSuperview];
      }

      v6 = [v4 countByEnumeratingWithState:&v130 objects:v144 count:16];
    }

    while (v6);
  }

  v9 = MEMORY[0x1E69D9108];
  v10 = [(SearchUIFirstTimeExperienceViewController *)self traitCollection];
  v11 = [v9 bestAppearanceForTraitCollection:v10];

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
  v14 = [(SearchUIFirstTimeExperienceViewController *)self traitCollection];
  v15 = [v14 horizontalSizeClass] == 1 && v13;

  if ([v11 style] == 3)
  {
    v16 = [v11 platterColor];
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
    v16 = ;
  }

  v115 = v16;
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

  v116 = [MEMORY[0x1E695DF70] array];
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v111 = self;
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
              v35 = [v11 primaryColor];
            }

            else
            {
              v35 = [v11 secondaryColor];
            }

            v36 = v35;
            v37 = v115;
            if (!v34)
            {
              v37 = v35;
            }

            v38 = MEMORY[0x1E69DCAD8];
            v140[0] = v35;
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
            [v116 addObject:v44];
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

  v47 = [v116 count];
  if (v47 >= 6)
  {
    v48 = 6;
  }

  else
  {
    v48 = v47;
  }

  v49 = [v116 subarrayWithRange:{0, v48}];
  v50 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:v49];
  [v50 setDistribution:0];
  v125 = v49;
  if (v110)
  {
    v51 = 0;
    v52 = v111;
  }

  else
  {
    v52 = v111;
    v53 = [(SearchUIFirstTimeExperienceViewController *)v111 view];
    v54 = [v53 tlks_screen];
    [v54 _referenceBounds];
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
  v58 = [(SearchUIFirstTimeExperienceViewController *)v52 view];
  [v58 addSubview:v50];

  v59 = [(SearchUIFirstTimeExperienceViewController *)v52 view];
  v60 = [SearchUIAutoLayout alignView:v50 toView:v59 withAttribute:9];

  if (+[SearchUIUtilities isWideScreen])
  {
    v61 = 38.0;
  }

  else
  {
    v61 = 21.0;
  }

  v62 = [(SearchUIFirstTimeExperienceViewController *)v52 view];
  v63 = [SearchUIAutoLayout baselineAlignBottomView:v50 toTopView:v62 spacing:v61];

  v64 = objc_alloc(MEMORY[0x1E696AD40]);
  v65 = [(SearchUIFirstTimeExperienceViewController *)v52 explanationText];
  v66 = [v64 initWithString:v65];

  v67 = objc_alloc(MEMORY[0x1E696AAB0]);
  v68 = [(SearchUIFirstTimeExperienceViewController *)v52 learnMoreText];
  v136 = *MEMORY[0x1E69DB670];
  v69 = [MEMORY[0x1E695DFF8] URLWithString:&stru_1F55BC4E8];
  v137 = v69;
  v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v137 forKeys:&v136 count:1];
  v71 = [v67 initWithString:v68 attributes:v70];

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
  v76 = [v11 primaryColor];
  [v75 setTextColor:v76];

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

  v82 = [v75 textContainer];
  [v82 setLineFragmentPadding:0.0];

  [v75 _setInteractiveTextSelectionDisabled:1];
  [v75 setScrollEnabled:0];
  [v75 setBackgroundColor:0];
  [v75 setTextAlignment:1];
  [v75 setEditable:0];
  [v11 enableAppearanceForView:v75];
  v83 = [(SearchUIFirstTimeExperienceViewController *)v52 view];
  [v83 addSubview:v75];

  v84 = [SearchUISymbolImage uiImageWithSymbolName:@"safari" font:v117 scale:3];
  [v84 size];
  v86 = v85;

  [v50 spacing];
  v88 = v87 * 5.0 + v86 * 6.0;
  v89 = [(SearchUIFirstTimeExperienceViewController *)v52 view];
  v90 = [SearchUIAutoLayout alignView:v75 toView:v89 withAttribute:9];

  v91 = [(SearchUIFirstTimeExperienceViewController *)v52 view];
  v92 = [SearchUIAutoLayout alignLeadingView:v91 toTrailingView:v75 spacing:1 minimum:16.0];

  v93 = [(SearchUIFirstTimeExperienceViewController *)v52 view];
  v94 = [SearchUIAutoLayout alignLeadingView:v75 toTrailingView:v93 spacing:1 minimum:16.0];

  v95 = [SearchUIAutoLayout setWidth:v75 forView:v88];
  LODWORD(v96) = 1148829696;
  [v95 setPriority:v96];
  v97 = [SearchUIAutoLayout baselineAlignBottomView:v75 toTopView:v50 dynamicSpacing:34.0];
  v123 = v66;
  if (_UISolariumEnabled())
  {
    v98 = [MEMORY[0x1E69DC740] _tintedGlassButtonConfiguration];
  }

  else
  {
    v98 = [MEMORY[0x1E69DC740] grayButtonConfiguration];
    [v98 setCornerStyle:4];
    [v98 setBaseBackgroundColor:v115];
  }

  v99 = [(SearchUIFirstTimeExperienceViewController *)v52 continueButtonTitle];
  [v98 setTitle:v99];

  v100 = objc_opt_new();
  [v100 setRole:1];
  [v100 setConfiguration:v98];
  if ([v11 style] == 3)
  {
    v101 = [v11 primaryColor];
    [v100 setTintColor:v101];
  }

  else
  {
    [v100 setTintColor:0];
  }

  [v11 enableAppearanceForView:v100];
  [v100 addTarget:v52 action:sel_continueButtonPressed forControlEvents:64];
  v102 = [(SearchUIFirstTimeExperienceViewController *)v52 view];
  [v102 addSubview:v100];

  v103 = [(SearchUIFirstTimeExperienceViewController *)v52 view];
  v104 = [SearchUIAutoLayout alignView:v100 toView:v103 withAttribute:9];

  v105 = [SearchUIAutoLayout alignView:v100 attribute:3 toView:v75 attribute:4 constant:30.0];
  v106 = [(SearchUIFirstTimeExperienceViewController *)v52 view];
  v107 = [SearchUIAutoLayout baselineAlignBottomView:v106 toTopView:v100 spacing:1 minimum:v61];
}

- (void)continueButtonPressed
{
  v2 = [(SearchUIFirstTimeExperienceViewController *)self delegate];
  [v2 firstTimeExperienceContinueButtonPressed];
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  if (!a6)
  {
    [(SearchUIFirstTimeExperienceViewController *)self showPrivacyView:a3];
  }

  return a6 == 0;
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
    v4 = [(SearchUIFirstTimeExperienceViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v5 = [(SearchUIFirstTimeExperienceViewController *)self delegate];
      if ([v5 firstTimeExperienceIsInPopoverPresentation])
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