@interface VUIPromoMetadataView
- (CGSize)expectedImageSize;
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (VUIPromoMetadataView)init;
- (VUIPromoMetadataViewDelegate)delegate;
- (id)_createComputationOnlyButton;
- (id)_createSkipButtonWithTitle:(id)title;
- (id)_createUpNextButtonWithPromoInfo:(id)info;
- (void)_configureBasicLayoutForButton:(id)button;
- (void)_configureLayout;
- (void)_skipButtonTapped:(id)tapped;
- (void)_upNextButtonTapped:(id)tapped;
- (void)updateWithInfo:(id)info;
@end

@implementation VUIPromoMetadataView

- (VUIPromoMetadataView)init
{
  v5.receiver = self;
  v5.super_class = VUIPromoMetadataView;
  v2 = [(VUIPromoMetadataView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(VUIPromoMetadataView *)v2 _configureLayout];
    [(VUIPromoMetadataView *)v3 setAddToUpNextSymbolName:@"plus"];
    [(VUIPromoMetadataView *)v3 setAddedToUpNextSymbolName:@"checkmark"];
    [(VUIPromoMetadataView *)v3 vui_setOverrideUserInterfaceStyle:2];
  }

  return v3;
}

- (void)updateWithInfo:(id)info
{
  infoCopy = info;
  [(VUIPromoMetadataView *)self setSkipInfo:infoCopy];
  promoInfo = [infoCopy promoInfo];
  [(VUIPromoMetadataView *)self setOnlySkipButtonAvailable:1];
  LODWORD(v6) = +[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy isNetworkReachable];
  if (v6)
  {
    titleImageURLString = [promoInfo titleImageURLString];
    if (titleImageURLString)
    {
      titleImageView = [(VUIPromoMetadataView *)self titleImageView];
      v8 = titleImageView;
      if (titleImageView)
      {
        v9 = titleImageView;
      }

      else
      {
        v10 = objc_alloc(MEMORY[0x1E69DF740]);
        v9 = [v10 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      }

      v11 = v9;

      title = [promoInfo title];
      [v11 setAccessibilityLabel:title];

      [v11 setAccessibilityIdentifier:@"TitleImage"];
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __39__VUIPromoMetadataView_updateWithInfo___block_invoke;
      v48[3] = &unk_1E872FCC0;
      v49 = v11;
      v13 = v11;
      [promoInfo getTitleImageUsingCompletionHandler:v48];
      [promoInfo expectedImageSize];
      [(VUIPromoMetadataView *)self setExpectedImageSize:?];
      titleImageView2 = [(VUIPromoMetadataView *)self titleImageView];
      [(VUIPromoMetadataView *)self vui_addSubview:v13 oldView:titleImageView2];

      [(VUIPromoMetadataView *)self setTitleImageView:v13];
      [(VUIPromoMetadataView *)self setOnlySkipButtonAvailable:0];
    }

    else
    {
      [(VUIPromoMetadataView *)self setTitleImageView:0];
    }

    v15 = objc_opt_new();
    genre = [promoInfo genre];
    if (genre)
    {
      [v15 setObject:genre forKey:@"genreName"];
    }

    movieRuntime = [promoInfo movieRuntime];
    v18 = movieRuntime;
    if (movieRuntime)
    {
      [movieRuntime doubleValue];
      if (v19 != 0.0)
      {
        v20 = [MEMORY[0x1E696AD98] numberWithDouble:?];
        [v15 setObject:v20 forKey:@"duration"];
      }
    }

    ratingDisplayName = [promoInfo ratingDisplayName];
    ratingSystem = [promoInfo ratingSystem];
    v23 = ratingSystem;
    if (ratingDisplayName && ratingSystem)
    {
      [v15 setObject:ratingDisplayName forKey:@"ratingName"];
      [v15 setObject:v23 forKey:@"ratingSystem"];
    }

    v47 = v23;
    if ([v15 count])
    {
      v24 = [[VUIContentMetadata alloc] initWithDictionary:v15];
      v45 = v6;
      [(VUIPromoMetadataView *)self mediaTagsViewLayout];
      v44 = promoInfo;
      v25 = v15;
      v26 = ratingDisplayName;
      v27 = v18;
      v29 = v28 = infoCopy;
      mediaTagsView = [(VUIPromoMetadataView *)self mediaTagsView];
      v6 = [VUIMediaTagsView tagsViewWithMetadata:v24 layout:v29 existingView:mediaTagsView];

      infoCopy = v28;
      v18 = v27;
      ratingDisplayName = v26;
      v15 = v25;
      promoInfo = v44;
      [v6 setAccessibilityIdentifier:@"MediaTags"];
      [(VUIPromoMetadataView *)self vui_addSubview:v6 oldView:0];
      [(VUIPromoMetadataView *)self setMediaTagsView:v6];
      [(VUIPromoMetadataView *)self setOnlySkipButtonAvailable:0];

      LOBYTE(v6) = v45;
    }

    else
    {
      mediaTagsView2 = [(VUIPromoMetadataView *)self mediaTagsView];
      [mediaTagsView2 removeFromSuperview];

      [(VUIPromoMetadataView *)self setMediaTagsView:0];
    }
  }

  addToUpNextLabelString = [promoInfo addToUpNextLabelString];
  if (!addToUpNextLabelString)
  {
    goto LABEL_25;
  }

  v33 = addToUpNextLabelString;
  addedToUpNextLabelString = [promoInfo addedToUpNextLabelString];

  v35 = v6 ^ 1;
  if (!addedToUpNextLabelString)
  {
    v35 = 1;
  }

  if (v35)
  {
LABEL_25:
    [(VUIPromoMetadataView *)self setUpNextButton:0];
    [(VUIPromoMetadataView *)self setComputationOnlyButton:0];
  }

  else
  {
    v36 = [(VUIPromoMetadataView *)self _createUpNextButtonWithPromoInfo:promoInfo];
    [v36 setAccessibilityIdentifier:@"UpNextButton"];
    upNextButton = [(VUIPromoMetadataView *)self upNextButton];
    [(VUIPromoMetadataView *)self vui_addSubview:v36 oldView:upNextButton];

    [(VUIPromoMetadataView *)self setUpNextButton:v36];
    _createComputationOnlyButton = [(VUIPromoMetadataView *)self _createComputationOnlyButton];
    [(VUIPromoMetadataView *)self setComputationOnlyButton:_createComputationOnlyButton];

    [(VUIPromoMetadataView *)self setOnlySkipButtonAvailable:0];
  }

  localizedTitle = [infoCopy localizedTitle];
  if (![localizedTitle length])
  {
    v40 = +[VUILocalizationManager sharedInstance];
    v41 = [v40 localizedStringForKey:@"SKIP_INTRO"];

    localizedTitle = v41;
  }

  v42 = [(VUIPromoMetadataView *)self _createSkipButtonWithTitle:localizedTitle];
  [v42 setAccessibilityIdentifier:@"SkipButton"];
  skipButton = [(VUIPromoMetadataView *)self skipButton];
  [(VUIPromoMetadataView *)self vui_addSubview:v42 oldView:skipButton];

  [(VUIPromoMetadataView *)self setSkipButton:v42];
}

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  height = subviews.height;
  width = subviews.width;
  if ([(VUIPromoMetadataView *)self onlySkipButtonAvailable])
  {
    skipButton = [(VUIPromoMetadataView *)self skipButton];
    [skipButton vui_sizeThatFits:{width, height}];
    v10 = v9;
    v12 = v11;

    if (!only)
    {
      skipButton2 = [(VUIPromoMetadataView *)self skipButton];
      v14 = skipButton2;
      v15 = 0.0;
      v16 = 0.0;
      v17 = v10;
      v18 = v12;
LABEL_28:
      [skipButton2 setFrame:{v15, v16, v17, v18}];

      v10 = *MEMORY[0x1E695F060];
      v12 = *(MEMORY[0x1E695F060] + 8);
      goto LABEL_29;
    }

    goto LABEL_29;
  }

  [(VUIPromoMetadataView *)self expectedImageSize];
  v93 = v19;
  v95 = v20;
  mediaTagsView = [(VUIPromoMetadataView *)self mediaTagsView];
  [mediaTagsView vui_sizeThatFits:{width, 0.0}];
  v97 = v23;
  v99 = v22;

  skipButton3 = [(VUIPromoMetadataView *)self skipButton];
  [skipButton3 vui_sizeThatFits:{width, height}];
  v26 = v25;
  v28 = v27;

  upNextButton = [(VUIPromoMetadataView *)self upNextButton];
  [upNextButton vui_sizeThatFits:{width, height}];
  v31 = v30;
  v33 = v32;

  computationOnlyButton = [(VUIPromoMetadataView *)self computationOnlyButton];
  [computationOnlyButton vui_sizeThatFits:{width, height}];
  v36 = v35;

  if (v31 >= v26)
  {
    v37 = v31;
  }

  else
  {
    v37 = v26;
  }

  if (v37 >= v36)
  {
    v36 = v37;
  }

  [(VUIPromoMetadataView *)self upNextButtonRightMargin];
  v39 = v38 + v36 * 2.0;
  [(VUIPromoMetadataView *)self maxButtonWidth];
  v41 = v40;
  [(VUIPromoMetadataView *)self upNextButtonRightMargin];
  v43 = v42;
  [(VUIPromoMetadataView *)self minButtonWidth];
  v45 = v44;
  [(VUIPromoMetadataView *)self upNextButtonRightMargin];
  v47 = v46 + v45 * 2.0;
  if (v39 < v47)
  {
    [(VUIPromoMetadataView *)self minButtonWidth];
LABEL_13:
    v49 = v48;
    skipButton4 = [(VUIPromoMetadataView *)self skipButton];
    [skipButton4 vui_sizeThatFits:{v49, 0.0}];
    v28 = v51;

    upNextButton2 = [(VUIPromoMetadataView *)self upNextButton];
    [upNextButton2 vui_sizeThatFits:{v49, 0.0}];
    v33 = v53;

    v39 = v47;
    goto LABEL_14;
  }

  v47 = v43 + v41 * 2.0;
  if (v39 > v47)
  {
    [(VUIPromoMetadataView *)self maxButtonWidth];
    goto LABEL_13;
  }

LABEL_14:
  if (v28 >= v33)
  {
    v33 = v28;
  }

  [(VUIPromoMetadataView *)self defaultButtonHeight];
  if (v33 >= v54)
  {
    v55 = v33;
  }

  else
  {
    v55 = v54;
  }

  [(VUIPromoMetadataView *)self imageViewBottomMargin];
  v57 = v56;
  [(VUIPromoMetadataView *)self mediaTagsViewBottomMargin];
  if (v39 >= v99)
  {
    v59 = v39;
  }

  else
  {
    v59 = v99;
  }

  if (v59 >= v93)
  {
    v10 = v59;
  }

  else
  {
    v10 = v93;
  }

  if (!only)
  {
    [(VUIPromoMetadataView *)self vuiIsRTL];
    [(VUIPromoMetadataView *)self imageViewBottomMargin];
    [(VUIPromoMetadataView *)self mediaTagsViewBottomMargin];
    [(VUIPromoMetadataView *)self upNextButtonRightMargin];
    [(VUIPromoMetadataView *)self bounds];
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    v94 = v61;
    v96 = v60;
    v91 = v63;
    v92 = v62;
    [(VUIPromoMetadataView *)self bounds];
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    v98 = v65;
    v100 = v64;
    v89 = v67;
    v90 = v66;
    [(VUIPromoMetadataView *)self bounds];
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v75 = v74;
    [(VUIPromoMetadataView *)self bounds];
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    v77 = v76;
    v79 = v78;
    v81 = v80;
    v83 = v82;
    titleImageView = [(VUIPromoMetadataView *)self titleImageView];
    [titleImageView setFrame:{v96, v94, v92, v91}];

    mediaTagsView2 = [(VUIPromoMetadataView *)self mediaTagsView];
    [mediaTagsView2 setFrame:{v100, v98, v90, v89}];

    upNextButton3 = [(VUIPromoMetadataView *)self upNextButton];
    [upNextButton3 setFrame:{v69, v71, v73, v75}];

    skipButton2 = [(VUIPromoMetadataView *)self skipButton];
    v14 = skipButton2;
    v15 = v77;
    v16 = v79;
    v17 = v81;
    v18 = v83;
    goto LABEL_28;
  }

  v12 = v58 + v97 + v95 + v57 + v55;
LABEL_29:
  v87 = v10;
  v88 = v12;
  result.height = v88;
  result.width = v87;
  return result;
}

- (id)_createSkipButtonWithTitle:(id)title
{
  titleCopy = title;
  skipButton = [(VUIPromoMetadataView *)self skipButton];
  v6 = skipButton;
  if (skipButton)
  {
    v7 = skipButton;
  }

  else
  {
    v7 = [[VUIButton alloc] initWithType:0 interfaceStyle:0];
  }

  v8 = v7;

  [(VUIPromoMetadataView *)self _configureBasicLayoutForButton:v8];
  buttonTextLayout = [(VUIPromoMetadataView *)self buttonTextLayout];
  v10 = [VUILabel labelWithString:titleCopy textLayout:buttonTextLayout existingLabel:0];

  if ([(VUIPromoMetadataView *)self onlySkipButtonAvailable])
  {
    [v10 setPadding:{14.0, 50.0, 14.0, 50.0}];
  }

  [(VUIButton *)v8 setTextContentView:v10];
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__VUIPromoMetadataView__createSkipButtonWithTitle___block_invoke;
  v12[3] = &unk_1E872DE30;
  objc_copyWeak(&v13, &location);
  [(VUIButton *)v8 setSelectActionHandler:v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v8;
}

void __51__VUIPromoMetadataView__createSkipButtonWithTitle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _skipButtonTapped:v3];
}

- (id)_createUpNextButtonWithPromoInfo:(id)info
{
  infoCopy = info;
  addToUpNextLabelString = [infoCopy addToUpNextLabelString];
  addedToUpNextLabelString = [infoCopy addedToUpNextLabelString];
  addToUpNextSymbolName = [(VUIPromoMetadataView *)self addToUpNextSymbolName];
  addedToUpNextSymbolName = [(VUIPromoMetadataView *)self addedToUpNextSymbolName];
  canonicalId = [infoCopy canonicalId];
  isAddedToUpNext = [infoCopy isAddedToUpNext];
  upNextButton = [(VUIPromoMetadataView *)self upNextButton];
  v8 = upNextButton;
  if (upNextButton)
  {
    v9 = upNextButton;
  }

  else
  {
    v9 = [[VUIUpNextButton alloc] initWithType:0 interfaceStyle:0];
  }

  v10 = v9;

  properties = [(VUIUpNextButton *)v10 properties];
  buttonTextLayout = [(VUIPromoMetadataView *)self buttonTextLayout];
  v31 = addToUpNextLabelString;
  v13 = [VUILabel labelWithString:addToUpNextLabelString textLayout:buttonTextLayout existingLabel:0];

  buttonTextLayout2 = [(VUIPromoMetadataView *)self buttonTextLayout];
  v30 = addedToUpNextLabelString;
  v15 = [VUILabel labelWithString:addedToUpNextLabelString textLayout:buttonTextLayout2 existingLabel:0];

  v28 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
  v16 = [MEMORY[0x1E69DCAD8] configurationWithFont:?];
  removedStateView = [properties removedStateView];
  [removedStateView setLabel:v13];
  v18 = [MEMORY[0x1E69DCAB8] systemImageNamed:addToUpNextSymbolName withConfiguration:v16];
  v27 = removedStateView;
  [removedStateView setImage:v18];

  addedStateView = [properties addedStateView];
  v29 = v15;
  [addedStateView setLabel:v15];
  v20 = [MEMORY[0x1E69DCAB8] systemImageNamed:addedToUpNextSymbolName withConfiguration:v16];
  [addedStateView setImage:v20];

  [properties setCanonicalID:canonicalId];
  [properties setIsWatchListed:isAddedToUpNext];
  [properties setDismissOnSelect:0];
  v21 = objc_alloc(MEMORY[0x1E69DF778]);
  if (isAddedToUpNext)
  {
    v22 = addedToUpNextSymbolName;
  }

  else
  {
    v22 = addToUpNextSymbolName;
  }

  v23 = [v21 initWithSymbol:v22 size:v16 symbolConfiguration:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v24 = [MEMORY[0x1E69DF720] makeImageViewWithResourceDescriptor:v23 existingView:0];
  [properties setCurrentImageView:v24];
  [(VUIPromoMetadataView *)self _configureBasicLayoutForButton:v10];
  [properties setDelegate:v10];
  [properties updateButtonContentView];
  objc_initWeak(location, self);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __57__VUIPromoMetadataView__createUpNextButtonWithPromoInfo___block_invoke;
  v39[3] = &unk_1E872DE30;
  objc_copyWeak(&v40, location);
  [(VUIButton *)v10 setSelectActionHandler:v39];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __57__VUIPromoMetadataView__createUpNextButtonWithPromoInfo___block_invoke_2;
  v36[3] = &unk_1E8733A60;
  objc_copyWeak(&v38, location);
  v25 = infoCopy;
  v37 = v25;
  [(VUIUpNextButton *)v10 setStateDidChangeHandler:v36];

  objc_destroyWeak(&v38);
  objc_destroyWeak(&v40);
  objc_destroyWeak(location);

  return v10;
}

void __57__VUIPromoMetadataView__createUpNextButtonWithPromoInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _upNextButtonTapped:v3];
  [v3 selectButtonAction:@"select"];
}

void __57__VUIPromoMetadataView__createUpNextButtonWithPromoInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = *(a1 + 32);
  v5 = [v3 properties];

  [v4 setIsAddedToUpNext:{objc_msgSend(v5, "isWatchListed")}];
  [WeakRetained setNeedsLayout];
}

- (void)_configureLayout
{
  v3 = [[VUIMediaTagsViewLayout alloc] initWithType:23];
  [(VUIPromoMetadataView *)self setMediaTagsViewLayout:v3];

  v11 = objc_opt_new();
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [v11 setColor:blackColor];

  [v11 setTextStyle:6];
  [v11 setFontWeight:10];
  [v11 setAlignment:1];
  [v11 setNumberOfLines:0];
  [v11 setLineBreakMode:1];
  if (MEMORY[0x1E6913230]([(VUIPromoMetadataView *)self setButtonTextLayout:v11]))
  {
    isPad = [MEMORY[0x1E69DF6F0] isPad];
    v6 = 140.0;
    if (isPad)
    {
      v6 = 150.0;
    }

    [(VUIPromoMetadataView *)self setMaxButtonWidth:v6];
    isPad2 = [MEMORY[0x1E69DF6F0] isPad];
    v8 = 110.0;
    if (isPad2)
    {
      v8 = 126.0;
    }
  }

  else
  {
    [(VUIPromoMetadataView *)self setMaxButtonWidth:140.0];
    v8 = 110.0;
  }

  [(VUIPromoMetadataView *)self setMinButtonWidth:v8];
  [(VUIPromoMetadataView *)self setImageViewBottomMargin:14.0];
  [(VUIPromoMetadataView *)self setMediaTagsViewBottomMargin:14.0];
  v9 = MEMORY[0x1E6913230]([(VUIPromoMetadataView *)self setUpNextButtonRightMargin:12.0]);
  v10 = 40.0;
  if (v9)
  {
    v10 = 44.0;
  }

  [(VUIPromoMetadataView *)self setDefaultButtonHeight:v10];
}

- (void)_configureBasicLayoutForButton:(id)button
{
  buttonCopy = button;
  if (MEMORY[0x1E6913230]())
  {
    [buttonCopy setButtonShape:2];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [buttonCopy vuiEnableGlassBackgroundWithIsEnabled:1 tint:whiteColor type:1 flexible:1];
  }

  else
  {
    [buttonCopy setButtonShape:0];
    [buttonCopy setCornerRadius:8.0];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [buttonCopy setButtonBackgroundColor:whiteColor];
  }

  whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
  [buttonCopy setHighlightColor:whiteColor2];

  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [buttonCopy setTintColor:blackColor];

  [buttonCopy setPadding:{0.0, 16.0, 0.0, 16.0}];
}

- (id)_createComputationOnlyButton
{
  skipInfo = [(VUIPromoMetadataView *)self skipInfo];
  promoInfo = [skipInfo promoInfo];

  computationOnlyButton = [(VUIPromoMetadataView *)self computationOnlyButton];
  v6 = computationOnlyButton;
  if (promoInfo)
  {
    if (computationOnlyButton)
    {
      v7 = computationOnlyButton;
    }

    else
    {
      v7 = [[VUIButton alloc] initWithType:0 interfaceStyle:0];
    }

    v8 = v7;

    [(VUIPromoMetadataView *)self _configureBasicLayoutForButton:v8];
    if ([promoInfo isAddedToUpNext])
    {
      [promoInfo addToUpNextLabelString];
    }

    else
    {
      [promoInfo addedToUpNextLabelString];
    }
    v9 = ;
    buttonTextLayout = [(VUIPromoMetadataView *)self buttonTextLayout];
    v11 = [VUILabel labelWithString:v9 textLayout:buttonTextLayout existingLabel:0];

    [(VUIButton *)v8 setTextContentView:v11];
  }

  else
  {
    v8 = computationOnlyButton;
  }

  return v8;
}

- (void)_skipButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  delegate = [(VUIPromoMetadataView *)self delegate];
  [delegate skipButtonTapped:tappedCopy];
}

- (void)_upNextButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  delegate = [(VUIPromoMetadataView *)self delegate];
  [delegate upNextButtonTapped:tappedCopy];
}

- (VUIPromoMetadataViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)expectedImageSize
{
  width = self->_expectedImageSize.width;
  height = self->_expectedImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end