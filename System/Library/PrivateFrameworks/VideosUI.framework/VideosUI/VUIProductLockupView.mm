@interface VUIProductLockupView
+ (VUIProductLockupView)productLockupViewWithMedia:(id)media;
- (CGSize)_layoutForCategoryAccessibility:(CGSize)accessibility metricsOnly:(BOOL)only;
- (CGSize)_layoutForCompact:(CGSize)compact metricsOnly:(BOOL)only;
- (CGSize)_layoutForStacked:(CGSize)stacked metricsOnly:(BOOL)only;
- (CGSize)_layoutWithSize:(CGSize)size metricsOnly:(BOOL)only;
- (CGSize)_sizeOfDescriptionLabel:(double)label;
- (CGSize)sizeThatFits:(CGSize)fits;
- (VUIProductLockupView)initWithFrame:(CGRect)frame;
- (VUIProductLockupViewDelegate)delegate;
- (double)_descriptionBottomMarginWithBaselineMargin:(double)margin;
- (double)_descriptionTopMarginWithBaselineMargin:(double)margin otherFont:(id)font;
- (id)_contentDescriptionAttributedString;
- (id)_contentDescriptionFont;
- (void)_updateSubtitleLabelForWindowWidth:(double)width;
- (void)layoutSubviews;
- (void)rentalExpirationLabelNeedsRelayout:(id)relayout;
- (void)setContentDescription:(id)description;
- (void)setCoverArtImageProxy:(id)proxy placeholderImage:(id)image;
- (void)setCoverArtImageView:(id)view;
- (void)setDownloadView:(id)view;
- (void)setLeftButton:(id)button;
- (void)setMediaBadgeTagsView:(id)view;
- (void)setMediaInfoTagsView:(id)view;
- (void)setSubtitle:(id)subtitle;
- (void)updateWithMediaEntity:(id)entity;
@end

@implementation VUIProductLockupView

+ (VUIProductLockupView)productLockupViewWithMedia:(id)media
{
  mediaCopy = media;
  v4 = [VUIProductLockupView alloc];
  v5 = [(VUIProductLockupView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(VUIProductLockupView *)v5 updateWithMediaEntity:mediaCopy];

  return v5;
}

- (VUIProductLockupView)initWithFrame:(CGRect)frame
{
  v20[3] = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = VUIProductLockupView;
  v3 = [(VUIProductLockupView *)&v19 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [VUISeparatorView alloc];
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [(VUISeparatorView *)v4 initWithFrame:*MEMORY[0x1E695F058], v6, v7, v8];
    topSeparatorView = v3->_topSeparatorView;
    v3->_topSeparatorView = v9;

    [(VUIProductLockupView *)v3 addSubview:v3->_topSeparatorView];
    v11 = [[VUISeparatorView alloc] initWithFrame:v5, v6, v7, v8];
    bottomSeparatorView = v3->_bottomSeparatorView;
    v3->_bottomSeparatorView = v11;

    [(VUIProductLockupView *)v3 addSubview:v3->_bottomSeparatorView];
    objc_initWeak(&location, v3);
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v20[2] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __38__VUIProductLockupView_initWithFrame___block_invoke;
    v16[3] = &unk_1E872E760;
    objc_copyWeak(&v17, &location);
    v14 = [(VUIProductLockupView *)v3 registerForTraitChanges:v13 withHandler:v16];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __38__VUIProductLockupView_initWithFrame___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 preferredContentSizeCategory];

  v6 = [WeakRetained traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  if (v5 != v7)
  {
    v8 = [WeakRetained descriptionTextView];
    v9 = [WeakRetained _contentDescriptionAttributedString];
    [v8 setDescriptionText:v9];
  }

  v10 = [WeakRetained descriptionTextView];
  if ([WeakRetained contentDescriptionExpanded])
  {
    [v10 setMaximumNumberOfLines:0];
  }

  else
  {
    v11 = [WeakRetained layout];
    v12 = [WeakRetained traitCollection];
    [v10 setMaximumNumberOfLines:{objc_msgSend(v11, "contentDescriptionNumberOfLinesForTraitCollection:", v12)}];
  }
}

- (void)updateWithMediaEntity:(id)entity
{
  entityCopy = entity;
  type = [entityCopy type];
  v5 = +[VUIMediaEntityType movie];
  if (type == v5)
  {
    v10 = 1;
  }

  else
  {
    type2 = [entityCopy type];
    v7 = +[VUIMediaEntityType movieRental];
    if (type2 == v7)
    {
      v10 = 1;
    }

    else
    {
      type3 = [entityCopy type];
      v9 = +[VUIMediaEntityType homeVideo];
      v10 = type3 == v9;
    }
  }

  hLSResolution = [entityCopy HLSResolution];
  v12 = hLSResolution;
  if (hLSResolution)
  {
    resolution = hLSResolution;
  }

  else
  {
    resolution = [entityCopy resolution];
  }

  v14 = resolution;

  hLSColorCapability = [entityCopy HLSColorCapability];
  v16 = hLSColorCapability;
  if (hLSColorCapability)
  {
    colorCapability = hLSColorCapability;
  }

  else
  {
    colorCapability = [entityCopy colorCapability];
  }

  v18 = colorCapability;

  hLSAudioCapability = [entityCopy HLSAudioCapability];
  v20 = hLSAudioCapability;
  if (hLSAudioCapability)
  {
    audioCapability = hLSAudioCapability;
  }

  else
  {
    audioCapability = [entityCopy audioCapability];
  }

  v22 = audioCapability;

  v109 = v14;
  unsignedIntegerValue = [v14 unsignedIntegerValue];
  unsignedIntegerValue2 = [v18 unsignedIntegerValue];
  v107 = v22;
  unsignedIntegerValue3 = [v22 unsignedIntegerValue];
  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v110 = v26;
  if ((unsignedIntegerValue - 1) >= 2)
  {
    v28 = v26;
    if (unsignedIntegerValue != 3)
    {
      goto LABEL_21;
    }

    v27 = VUIImageResourceMapMediaBadge4k;
  }

  else
  {
    v27 = VUIImageResourceMapMediaBadgeHD;
  }

  v29 = objc_alloc_init(VUIProductBadgeResource);
  [(VUIProductBadgeResource *)v29 setName:*v27];
  v28 = v110;
  [v110 addObject:v29];

LABEL_21:
  if (!SSDeviceIsHDRCapable())
  {
    goto LABEL_27;
  }

  if ((unsignedIntegerValue2 & 2) != 0)
  {
    v30 = VUIImageResourceMapMediaBadgeDolbyVision;
  }

  else
  {
    if ((unsignedIntegerValue2 & 1) == 0)
    {
      goto LABEL_27;
    }

    v30 = VUIImageResourceMapMediaBadgeHDR;
  }

  v31 = objc_alloc_init(VUIProductBadgeResource);
  [(VUIProductBadgeResource *)v31 setName:*v30];
  [v28 addObject:v31];

LABEL_27:
  if (unsignedIntegerValue3)
  {
    v32 = objc_alloc_init(VUIProductBadgeResource);
    [(VUIProductBadgeResource *)v32 setName:@"dolby-atmos"];
    [v28 addObject:v32];
  }

  v33 = [VUILibraryProductLockupLayout alloc];
  type4 = [entityCopy type];
  v108 = v18;
  if (v10)
  {
    v35 = [(VUILibraryProductLockupLayout *)v33 initWithLayoutType:0 entityType:type4];
    [(VUIProductLockupView *)self setLayout:v35];

    contentDescription = [entityCopy contentDescription];
    [(VUIProductLockupView *)self setContentDescription:contentDescription];

    type5 = [entityCopy type];
    v38 = +[VUIMediaEntityType movieRental];
    v39 = v38;
    if (type5 == v38)
    {
    }

    else
    {
      extrasURL = [entityCopy extrasURL];
      absoluteString = [extrasURL absoluteString];
      v42 = [absoluteString length];

      if (!v42)
      {
LABEL_39:
        v52 = [VUIRoundButton alloc];
        v51 = MEMORY[0x1E695F058];
        contentDescription2 = [(VUIRoundButton *)v52 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        v53 = [VUIImageResourceMap imageForResourceName:@"button-play"];
        [(VUIRoundButton *)contentDescription2 setButtonImage:v53];
        v54 = objc_alloc_init(MEMORY[0x1E695DF70]);
        playLabelTextLayout = [(VUILibraryProductLockupViewLayout *)self->_layout playLabelTextLayout];
        v56 = +[VUILocalizationManager sharedInstance];
        v57 = [v56 localizedStringForKey:@"PLAY"];
        v58 = [VUILabel labelWithString:v57 textLayout:playLabelTextLayout existingLabel:0];

        [v54 addObject:v58];
        rentalExpirationDate = [entityCopy rentalExpirationDate];
        if (rentalExpirationDate)
        {
          v60 = [VUIRentalExpirationLabel labelWithExpirationDate:rentalExpirationDate textLayout:0 existingLabel:0 locStringPrefix:@"EXPIRATION_IN"];
          expirationLabel = self->_expirationLabel;
          self->_expirationLabel = v60;

          [(VUIRentalExpirationLabel *)self->_expirationLabel setDelegate:self];
          [v54 addObject:self->_expirationLabel];
        }

        v62 = [v54 copy];
        [(VUIRoundButton *)contentDescription2 setTextLabels:v62];

        [(VUIProductLockupView *)self setLeftButton:contentDescription2];
        goto LABEL_42;
      }

      type5 = objc_alloc_init(VUIProductBadgeResource);
      [(VUIProductBadgeResource *)type5 setName:@"itunes-extras-badge"];
      [(VUIProductBadgeResource *)type5 setTemplated:0];
      [v28 addObject:type5];
    }

    goto LABEL_39;
  }

  v43 = [(VUILibraryProductLockupLayout *)v33 initWithLayoutType:1 entityType:type4];
  [(VUIProductLockupView *)self setLayout:v43];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    seasonNumber = [entityCopy seasonNumber];

    if (seasonNumber)
    {
      v45 = MEMORY[0x1E696AEC0];
      v46 = +[VUILocalizationManager sharedInstance];
      v47 = [v46 localizedStringForKey:@"SEASON_%@"];
      seasonNumber2 = [entityCopy seasonNumber];
      v49 = [v45 stringWithValidatedFormat:v47 validFormatSpecifiers:@"%@" error:0, seasonNumber2];

      [(VUIProductLockupView *)self setSubtitle:v49];
    }
  }

  contentDescription2 = [entityCopy contentDescription];
  [(VUIProductLockupView *)self setContentDescription:contentDescription2];
  v51 = MEMORY[0x1E695F058];
LABEL_42:

  traitCollection = [(VUIProductLockupView *)self traitCollection];
  v64 = +[VUIUtilities placeholderImageResourceName:](VUIUtilities, "placeholderImageResourceName:", [traitCollection userInterfaceStyle]);
  v65 = [VUIImageResourceMap imageForResourceName:v64];

  v66 = [VUIMediaEntityImageLoadParamsFactory imageLoadParamsWithMediaEntity:entityCopy imageType:0];
  coverArtImageView = [(VUIProductLockupView *)self coverArtImageView];
  if (coverArtImageView)
  {
    coverArtImageView2 = [(VUIProductLockupView *)self coverArtImageView];
  }

  else
  {
    coverArtImageView2 = objc_alloc_init(MEMORY[0x1E69DF740]);
  }

  v69 = coverArtImageView2;

  [v69 setUserInteractionEnabled:0];
  [v69 setPlaceholderImage:v65];
  layout = [(VUIProductLockupView *)self layout];
  [layout coverArtImageSize];
  v72 = v71;
  v74 = v73;

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v77 = v76;
  mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen2 scale];
  v80 = v79;

  [VUIUtilities imageCornerRadiusWithStyle:0];
  v106 = v65;
  if (v66)
  {
    v82 = objc_alloc(MEMORY[0x1E69DF730]);
    mediaLibrary = [entityCopy mediaLibrary];
    v84 = [v82 initWithObject:v66 imageLoader:mediaLibrary groupType:0];

    [v69 setImageProxy:v84];
LABEL_47:

    goto LABEL_48;
  }

  v100 = v81;
  v101 = NSSelectorFromString(&cfstr_Artworkurl.isa);
  if (objc_opt_respondsToSelector())
  {
    v84 = ([entityCopy methodForSelector:v101])(entityCopy, v101);
    if ([v84 length])
    {
      v102 = [objc_alloc(MEMORY[0x1E69DF770]) initWithSrc:v84 size:{v72 * v77, v74 * v80}];
      v103 = [VUIUtilities placeholderImageResourceName:0];
      [v102 setPlaceholderSrc:v103];

      [MEMORY[0x1E69DF6D0] radiiFromRadius:v100];
      [v102 setBorderRadii:?];
      [v102 setExtension:@"jpeg"];
      vui_imageBorderColor = [MEMORY[0x1E69DC888] vui_imageBorderColor];
      [v102 setBackgroundColor:vui_imageBorderColor];

      v105 = [MEMORY[0x1E69DF720] makeImageViewWithDescriptor:v102 existingView:v69];

      v69 = v105;
    }

    goto LABEL_47;
  }

LABEL_48:
  layout2 = [(VUIProductLockupView *)self layout];
  [layout2 coverArtCornerRadius];
  [v69 setCornerRadius:?];

  [v69 setBorderWidth:1.0];
  vui_lockupBorderColorOpal = [MEMORY[0x1E69DC888] vui_lockupBorderColorOpal];
  [v69 setBorderColor:vui_lockupBorderColorOpal];

  [(VUIProductLockupView *)self setCoverArtImageView:v69];
  v87 = [[VUIMediaTagsViewLayout alloc] initWithType:12];
  v88 = [VUIMediaTagsView alloc];
  v89 = *v51;
  v90 = v51[1];
  v91 = v51[2];
  v92 = v51[3];
  v93 = [(VUIMediaTagsView *)v88 initWithFrame:v87 layout:*v51, v90, v91, v92];
  v94 = [[VUIMediaTagsViewHelper alloc] initWithVUIMediaEntity:entityCopy];
  [(VUIMediaTagsViewHelper *)v94 addSeperatorKey:@"·"];
  tagsViewDictionary = [(VUIMediaTagsViewHelper *)v94 tagsViewDictionary];
  [(VUIMediaTagsView *)v93 updateWithMetadata:tagsViewDictionary];

  [(VUIProductLockupView *)self setMediaInfoTagsView:v93];
  v96 = [[VUIMediaTagsViewLayout alloc] initWithType:11];
  v97 = [[VUIMediaTagsView alloc] initWithFrame:v96 layout:v89, v90, v91, v92];
  v98 = [[VUIMediaTagsViewHelper alloc] initWithVUIMediaEntity:entityCopy];
  [(VUIMediaTagsViewHelper *)v98 addSeperatorKey:@"·"];
  tagsViewDictionary2 = [(VUIMediaTagsViewHelper *)v98 tagsViewDictionary];
  [(VUIMediaTagsView *)v97 updateWithMetadata:tagsViewDictionary2];

  [(VUIProductLockupView *)self setMediaBadgeTagsView:v97];
}

- (void)setCoverArtImageView:(id)view
{
  viewCopy = view;
  coverArtImageView = self->_coverArtImageView;
  v7 = viewCopy;
  if (coverArtImageView != viewCopy)
  {
    [(VUIImageView *)coverArtImageView removeFromSuperview];
    objc_storeStrong(&self->_coverArtImageView, view);
    if (self->_coverArtImageView)
    {
      [(VUIProductLockupView *)self addSubview:?];
    }
  }
}

- (void)setCoverArtImageProxy:(id)proxy placeholderImage:(id)image
{
  proxyCopy = proxy;
  imageCopy = image;
  imageProxy = [(VUIImageView *)self->_coverArtImageView imageProxy];
  v20 = proxyCopy;
  v10 = imageProxy;
  if (v10 == v20)
  {
  }

  else
  {
    v11 = v10;
    v12 = v20;
    if (!v20)
    {
      goto LABEL_14;
    }

    v11 = v10;
    v12 = v20;
    if (!v10)
    {
      goto LABEL_14;
    }

    v13 = [v20 isEqual:v10];

    if (!v13)
    {
      goto LABEL_15;
    }
  }

  placeholderImage = [(VUIImageView *)self->_coverArtImageView placeholderImage];
  v11 = imageCopy;
  v15 = placeholderImage;
  v12 = v15;
  if (v15 == v11)
  {

    goto LABEL_17;
  }

  if (!v11 || !v15)
  {

LABEL_14:
LABEL_15:

    goto LABEL_16;
  }

  v16 = [v11 isEqual:v15];

  if ((v16 & 1) == 0)
  {
LABEL_16:
    [(VUIImageView *)self->_coverArtImageView removeFromSuperview];
    v17 = objc_alloc(MEMORY[0x1E69DF740]);
    v18 = [v17 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    coverArtImageView = self->_coverArtImageView;
    self->_coverArtImageView = v18;

    [(VUIImageProxy *)self->_coverArtImageProxy cancel];
    objc_storeStrong(&self->_coverArtImageProxy, proxy);
    objc_storeStrong(&self->_coverArtPlaceholderImage, image);
    [(VUIImageView *)self->_coverArtImageView setImageProxy:v20];
    [(VUIImageView *)self->_coverArtImageView setPlaceholderImage:imageCopy];
    [(VUIProductLockupView *)self addSubview:self->_coverArtImageView];
  }

LABEL_17:
}

- (void)setMediaInfoTagsView:(id)view
{
  viewCopy = view;
  mediaInfoTagsView = self->_mediaInfoTagsView;
  v7 = viewCopy;
  if (mediaInfoTagsView != viewCopy)
  {
    [(VUIMediaTagsView *)mediaInfoTagsView removeFromSuperview];
    objc_storeStrong(&self->_mediaInfoTagsView, view);
    if (self->_mediaInfoTagsView)
    {
      [(VUIProductLockupView *)self addSubview:?];
    }
  }
}

- (void)setMediaBadgeTagsView:(id)view
{
  viewCopy = view;
  mediaBadgeTagsView = self->_mediaBadgeTagsView;
  v7 = viewCopy;
  if (mediaBadgeTagsView != viewCopy)
  {
    [(VUIMediaTagsView *)mediaBadgeTagsView removeFromSuperview];
    objc_storeStrong(&self->_mediaBadgeTagsView, view);
    if (self->_mediaBadgeTagsView)
    {
      [(VUIProductLockupView *)self addSubview:?];
    }
  }
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  if (![(NSString *)self->_subtitle isEqualToString:?])
  {
    [(VUILabel *)self->_subtitleLabel removeFromSuperview];
    subtitleLabel = self->_subtitleLabel;
    self->_subtitleLabel = 0;

    objc_storeStrong(&self->_subtitle, subtitle);
    if ([(NSString *)self->_subtitle length])
    {
      layout = self->_layout;
      [(VUIProductLockupView *)self bounds];
      v7 = [(VUILibraryProductLockupViewLayout *)layout subtitleTextLayoutForWindowWidth:CGRectGetWidth(v12)];
      v8 = [VUILabel labelWithString:self->_subtitle textLayout:v7 existingLabel:self->_subtitleLabel];
      v9 = self->_subtitleLabel;
      self->_subtitleLabel = v8;

      [(VUIProductLockupView *)self addSubview:self->_subtitleLabel];
    }
  }
}

- (void)setContentDescription:(id)description
{
  descriptionCopy = description;
  if (![(NSString *)self->_contentDescription isEqualToString:descriptionCopy])
  {
    [(FocusableTextView *)self->_descriptionTextView removeFromSuperview];
    objc_storeStrong(&self->_contentDescription, description);
    if ([(NSString *)self->_contentDescription length])
    {
      layout = self->_layout;
      traitCollection = [(VUIProductLockupView *)self traitCollection];
      v8 = [(VUILibraryProductLockupViewLayout *)layout descriptionTextLayoutForTraitCollection:traitCollection isExpanded:[(VUIProductLockupView *)self contentDescriptionExpanded]];

      vui_secondaryTextColor = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
      [v8 setColor:vui_secondaryTextColor];

      _contentDescriptionAttributedString = [(VUIProductLockupView *)self _contentDescriptionAttributedString];
      v11 = [FocusableTextView textViewWithAttributedString:_contentDescriptionAttributedString textLayout:v8 existingTextView:self->_descriptionTextView];
      descriptionTextView = self->_descriptionTextView;
      self->_descriptionTextView = v11;

      objc_initWeak(&location, self);
      v13 = self->_descriptionTextView;
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __46__VUIProductLockupView_setContentDescription___block_invoke;
      v17 = &unk_1E87347E0;
      objc_copyWeak(&v18, &location);
      [(FocusableTextView *)v13 setSelectionHandler:&v14];
      [(VUIProductLockupView *)self addSubview:self->_descriptionTextView, v14, v15, v16, v17];
      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }
  }
}

void __46__VUIProductLockupView_setContentDescription___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setContentDescriptionExpanded:1];
  v1 = [WeakRetained descriptionTextView];
  [v1 setMaximumNumberOfLines:0];

  [WeakRetained setNeedsLayout];
  v2 = [WeakRetained delegate];
  [v2 contentDescriptionExpanded];
}

- (void)setLeftButton:(id)button
{
  buttonCopy = button;
  leftButton = self->_leftButton;
  v7 = buttonCopy;
  if (leftButton != buttonCopy)
  {
    [(VUIRoundButton *)leftButton removeFromSuperview];
    objc_storeStrong(&self->_leftButton, button);
    if (self->_leftButton)
    {
      [(VUIProductLockupView *)self addSubview:?];
    }
  }
}

- (void)setDownloadView:(id)view
{
  viewCopy = view;
  downloadView = self->_downloadView;
  v7 = viewCopy;
  if (downloadView != viewCopy)
  {
    [(UIView *)downloadView removeFromSuperview];
    objc_storeStrong(&self->_downloadView, view);
    if (self->_downloadView)
    {
      [(VUIProductLockupView *)self addSubview:?];
    }
  }
}

- (void)layoutSubviews
{
  [(VUIProductLockupView *)self bounds];
  Width = CGRectGetWidth(v6);
  [(VUIProductLockupView *)self bounds];
  Height = CGRectGetHeight(v7);

  [(VUIProductLockupView *)self _layoutWithSize:0 metricsOnly:Width, Height];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(VUIProductLockupView *)self _layoutWithSize:1 metricsOnly:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)rentalExpirationLabelNeedsRelayout:(id)relayout
{
  [relayout sizeToFit];

  [(VUIProductLockupView *)self setNeedsLayout];
}

- (void)_updateSubtitleLabelForWindowWidth:(double)width
{
  layout = self->_layout;
  [(VUIProductLockupView *)self bounds];
  v6 = [(VUILibraryProductLockupViewLayout *)layout subtitleTextLayoutForWindowWidth:CGRectGetWidth(v8)];
  v5 = [VUILabel labelWithString:self->_subtitle textLayout:v6 existingLabel:self->_subtitleLabel];
}

- (id)_contentDescriptionAttributedString
{
  v20[1] = *MEMORY[0x1E69E9840];
  contentDescription = [(VUIProductLockupView *)self contentDescription];

  if (contentDescription)
  {
    _contentDescriptionFont = [(VUIProductLockupView *)self _contentDescriptionFont];
    contentDescription2 = [(VUIProductLockupView *)self contentDescription];
    parser = [MEMORY[0x1E69AD988] parser];
    v7 = *MEMORY[0x1E69DB648];
    v19 = *MEMORY[0x1E69DB648];
    v20[0] = _contentDescriptionFont;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v9 = [MEMORY[0x1E69AD988] displayDelegateWithDefaultAttributes:v8];
    [parser setDelegate:v9];
    v16 = 0;
    v10 = [parser attributedStringForHTMLString:contentDescription2 error:&v16];
    v11 = v16;
    if (v11)
    {
      v12 = objc_alloc(MEMORY[0x1E696AAB0]);
      v17 = v7;
      v18 = _contentDescriptionFont;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v14 = [v12 initWithString:contentDescription2 attributes:v13];

      v10 = v14;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CGSize)_sizeOfDescriptionLabel:(double)label
{
  [MEMORY[0x1E69DD2E8] vui_paddingForWindowWidth:?];
  v6 = v5;
  v8 = v7;
  layout = [(VUIProductLockupView *)self layout];
  if ([layout layoutTypeForWindowWidth:label])
  {
    traitCollection = [(VUIProductLockupView *)self traitCollection];
    isAXEnabled = [traitCollection isAXEnabled];

    if (!isAXEnabled)
    {
      layout2 = [(VUIProductLockupView *)self layout];
      [layout2 coverArtImageSize];
      v14 = label - v13;
      layout3 = [(VUIProductLockupView *)self layout];
      [layout3 coverArtImageRightMarginForWindowWidth:label];
      v17 = v14 - v16 - v8;

      goto LABEL_6;
    }
  }

  else
  {
  }

  v17 = label - v6;
LABEL_6:
  descriptionTextView = self->_descriptionTextView;

  [(VUIBaseView *)descriptionTextView sizeThatFits:v17 - v8, 1.79769313e308];
  result.height = v20;
  result.width = v19;
  return result;
}

- (double)_descriptionTopMarginWithBaselineMargin:(double)margin otherFont:(id)font
{
  fontCopy = font;
  _contentDescriptionFont = [(VUIProductLockupView *)self _contentDescriptionFont];
  traitCollection = [(VUIProductLockupView *)self traitCollection];
  if (fontCopy)
  {
    [_contentDescriptionFont topMarginToFont:fontCopy withBaselineMargin:traitCollection traitCollection:margin];
  }

  else
  {
    [_contentDescriptionFont topMarginWithBaselineMargin:traitCollection traitCollection:margin];
  }

  v10 = v9;

  return v10;
}

- (double)_descriptionBottomMarginWithBaselineMargin:(double)margin
{
  _contentDescriptionFont = [(VUIProductLockupView *)self _contentDescriptionFont];
  traitCollection = [(VUIProductLockupView *)self traitCollection];
  [_contentDescriptionFont bottomMarginWithBaselineMargin:traitCollection traitCollection:margin];
  v8 = v7;

  return v8;
}

- (CGSize)_layoutWithSize:(CGSize)size metricsOnly:(BOOL)only
{
  onlyCopy = only;
  height = size.height;
  width = size.width;
  if (!only)
  {
    [MEMORY[0x1E69DD2E8] vui_paddingForWindowWidth:size.width];
    v9 = v8;
    v11 = width - (v8 + v10);
    [(VUIBaseView *)self->_topSeparatorView sizeThatFits:v11, 1.79769313e308];
    [(VUISeparatorView *)self->_topSeparatorView setFrame:v9, 0.0, v12, v13];
    [(VUIBaseView *)self->_bottomSeparatorView sizeThatFits:v11, 1.79769313e308];
    [(VUISeparatorView *)self->_bottomSeparatorView setFrame:v9, height - v14, v15, v14];
    [(VUIProductLockupView *)self _updateSubtitleLabelForWindowWidth:width];
  }

  traitCollection = [(VUIProductLockupView *)self traitCollection];
  isAXEnabled = [traitCollection isAXEnabled];

  if (isAXEnabled)
  {

    [(VUIProductLockupView *)self _layoutForCategoryAccessibility:onlyCopy metricsOnly:width, height];
  }

  else
  {
    layout = [(VUIProductLockupView *)self layout];
    v21 = [layout layoutTypeForWindowWidth:width];

    if (v21)
    {

      [(VUIProductLockupView *)self _layoutForStacked:onlyCopy metricsOnly:width, height];
    }

    else
    {

      [(VUIProductLockupView *)self _layoutForCompact:onlyCopy metricsOnly:width, height];
    }
  }

  result.height = v19;
  result.width = v18;
  return result;
}

- (CGSize)_layoutForCategoryAccessibility:(CGSize)accessibility metricsOnly:(BOOL)only
{
  width = accessibility.width;
  [MEMORY[0x1E69DD2E8] vui_paddingForWindowWidth:{accessibility.width, accessibility.height}];
  v8 = v7;
  v10 = v9;
  +[VUIViewSpacer spacerB];
  v12 = v11;
  [(VUILibraryProductLockupViewLayout *)self->_layout coverArtImageSize];
  v49 = v13;
  v56 = v14;
  [(VUILabel *)self->_subtitleLabel sizeThatFits:width - (v8 + v10), 1.79769313e308];
  v47 = v15;
  v17 = v16;
  [(VUIProductLockupView *)self _sizeOfDescriptionLabel:width];
  v51 = v18;
  v55 = v19;
  [(UIView *)self->_downloadView sizeThatFits:width, 1.79769313e308];
  v52 = v20;
  v54 = v21;
  [(VUIRoundButton *)self->_leftButton sizeThatFits:width, 1.79769313e308];
  v50 = v22;
  v53 = v23;
  _contentDescriptionFont = [(VUIProductLockupView *)self _contentDescriptionFont];
  [(VUILibraryProductLockupViewLayout *)self->_layout contentDescriptionTopMarginForWindowWidth:width];
  v26 = v25;
  traitCollection = [(VUIProductLockupView *)self traitCollection];
  [_contentDescriptionFont topMarginWithBaselineMargin:traitCollection traitCollection:v26];

  [(VUIBaseView *)self->_mediaInfoTagsView sizeThatFits:width, 1.79769313e308];
  v48 = v28;
  v30 = v29;
  [(VUIBaseView *)self->_mediaBadgeTagsView sizeThatFits:width, 1.79769313e308];
  v33 = v32;
  if (!only)
  {
    v34 = v31;
    [(VUIImageView *)self->_coverArtImageView setFrame:v8, v12, v49, v56];
    v35 = v12 + v56;
    subtitleLabel = self->_subtitleLabel;
    if (subtitleLabel)
    {
      [(VUILabel *)subtitleLabel setFrame:v8, v35, v47, v17];
      VUIRoundValue();
    }

    else
    {
      +[VUIViewSpacer spacerA];
    }

    v38 = v35 + v37;
    [(VUIMediaTagsView *)self->_mediaInfoTagsView setFrame:v8, v38, v48, v30];
    [(VUIMediaTagsView *)self->_mediaBadgeTagsView setFrame:v8, v30 + v38, v34, v33];
    [(FocusableTextView *)self->_descriptionTextView setFrame:v8, v33 + v30 + v38, v51, v55];
    v39 = v55 + v33 + v30 + v38;
    leftButton = self->_leftButton;
    [(VUILibraryProductLockupViewLayout *)self->_layout buttonModuleTopMarginForWindowWidth:width];
    [(VUIRoundButton *)leftButton setFrame:v8, v39 + v41, v50, v53];
    downloadView = self->_downloadView;
    [(VUILibraryProductLockupViewLayout *)self->_layout buttonModuleTopMarginForWindowWidth:width];
    [(UIView *)downloadView setFrame:v8, v53 + v39 + v43, v52, v54];
  }

  if (v17 <= 0.0)
  {
    +[VUIViewSpacer spacerA];
  }

  VUIRoundValue();
  v45 = v44;
  v46 = width;
  result.height = v45;
  result.width = v46;
  return result;
}

- (CGSize)_layoutForCompact:(CGSize)compact metricsOnly:(BOOL)only
{
  onlyCopy = only;
  width = compact.width;
  [MEMORY[0x1E69DD2E8] vui_paddingForWindowWidth:{compact.width, compact.height}];
  v8 = v7;
  v10 = v9;
  [(VUILibraryProductLockupViewLayout *)self->_layout coverArtImageSize];
  v12 = v11;
  v130 = v13;
  +[VUIViewSpacer spacerB];
  v123 = v14;
  [(VUIProductLockupView *)self _sizeOfDescriptionLabel:width];
  v118 = v15;
  v127 = v16;
  font = [(VUILabel *)self->_subtitleLabel font];
  [(VUILibraryProductLockupViewLayout *)self->_layout subtitleTopMarginForWindowWidth:width];
  v19 = v18;
  traitCollection = [(VUIProductLockupView *)self traitCollection];
  [font topMarginWithBaselineMargin:traitCollection traitCollection:v19];
  v114 = v21;

  [(VUILabel *)self->_subtitleLabel sizeThatFits:width, 1.79769313e308];
  rect = v22;
  v24 = v23;
  _contentDescriptionFont = [(VUIProductLockupView *)self _contentDescriptionFont];
  [(VUILibraryProductLockupViewLayout *)self->_layout contentDescriptionTopMarginForWindowWidth:width];
  v27 = v26;
  traitCollection2 = [(VUIProductLockupView *)self traitCollection];
  [_contentDescriptionFont topMarginWithBaselineMargin:traitCollection2 traitCollection:v27];
  v126 = v29;

  _contentDescriptionFont2 = [(VUIProductLockupView *)self _contentDescriptionFont];
  [(VUILibraryProductLockupViewLayout *)self->_layout contentDescriptionBottomMarginForWindowWidth:width];
  v32 = v31;
  traitCollection3 = [(VUIProductLockupView *)self traitCollection];
  [_contentDescriptionFont2 bottomMarginWithBaselineMargin:traitCollection3 traitCollection:v32];
  v128 = v34;

  [(VUIBaseView *)self->_mediaInfoTagsView sizeThatFits:width, 1.79769313e308];
  v36 = v35;
  v125 = v37;
  [(VUIBaseView *)self->_mediaBadgeTagsView sizeThatFits:width, 1.79769313e308];
  v116 = v38;
  v124 = v39;
  [(VUILibraryProductLockupViewLayout *)self->_layout metadataTopMargin];
  v41 = v40;
  traitCollection4 = [(VUIProductLockupView *)self traitCollection];
  [VUIUtilities scaleContentSizeValue:traitCollection4 forTraitCollection:v41];
  v129 = v43;

  v112 = v10;
  [(VUIRoundButton *)self->_leftButton sizeThatFits:width - v8 - v10, 1.79769313e308];
  v119 = v44;
  v122 = v45;
  [(UIView *)self->_downloadView sizeThatFits:width - v8 - v10, 1.79769313e308];
  if (!onlyCopy)
  {
    v113 = v47;
    v102 = v8;
    v111 = v46;
    v48 = *(MEMORY[0x1E695F058] + 8);
    v100 = *MEMORY[0x1E695F058];
    v50 = *(MEMORY[0x1E695F058] + 16);
    v49 = *(MEMORY[0x1E695F058] + 24);
    [(VUIProductLockupView *)self frame];
    v51 = CGRectGetMidX(v132) + v12 * -0.5;
    v133.origin.x = v51;
    v133.origin.y = v123;
    v133.size.width = v12;
    v133.size.height = v130;
    MaxY = CGRectGetMaxY(v133);
    v53 = v12;
    v120 = v49;
    v109 = v12;
    v110 = v48;
    v105 = v50;
    if (self->_subtitleLabel)
    {
      v54 = v51;
      v55 = v123;
      v56 = v130;
      v134.origin.y = v114 + CGRectGetMaxY(*(&v53 - 2));
      v57 = v102;
      v134.origin.x = v102;
      y = v134.origin.y;
      v134.size.width = rect;
      v134.size.height = v24;
      CGRectGetMaxY(v134);
      VUIRoundValue();
      v58 = v24;
      v60 = v59;
      v106 = v102;
      v107 = v58;
      v61 = v100;
    }

    else
    {
      v60 = v129 + MaxY;
      v107 = v49;
      y = v48;
      rect = v50;
      v61 = v100;
      v57 = v102;
      v106 = v100;
    }

    v115 = v51;
    if (self->_mediaInfoTagsView)
    {
      v135.origin.x = v57;
      v135.origin.y = v60;
      v135.size.width = v36;
      v135.size.height = v125;
      CGRectGetMaxY(v135);
      VUIRoundValue();
      v63 = v62;
      v64 = v125;
      v65 = v57;
      v101 = v36;
      v103 = v125;
      v98 = v57;
      v99 = v60;
      v66 = v120;
      v67 = v105;
      v68 = v48;
    }

    else
    {
      v64 = v130;
      v63 = v129 + v60;
      v60 = v123;
      v65 = v51;
      v66 = v120;
      v67 = v105;
      v101 = v105;
      v103 = v120;
      v36 = v109;
      v68 = v48;
      v98 = v61;
      v99 = v48;
    }

    v69 = v67;
    v70 = v68;
    v71 = v61;
    if (self->_mediaBadgeTagsView)
    {
      v69 = v116;
      v36 = v116;
      v66 = v124;
      v64 = v124;
      v60 = v129 + v63;
      v65 = v57;
      v70 = v129 + v63;
      v71 = v57;
    }

    v96 = v71;
    v97 = v70;
    v104 = v69;
    v117 = v66;
    if (self->_descriptionTextView)
    {
      v72 = v60;
      v73 = v36;
      v60 = v126 + CGRectGetMaxY(*&v65);
      v67 = v118;
      v36 = v118;
      v64 = v127;
      v65 = v57;
      v120 = v127;
      v68 = v60;
      v74 = v57;
    }

    else
    {
      v74 = v61;
    }

    v75 = v60;
    v76 = v36;
    v77 = v128 + CGRectGetMaxY(*&v65);
    v78 = v57;
    if ([(VUILibraryProductLockupViewLayout *)self->_layout downloadButtonPosition]== 5)
    {
      v136.size.width = v111;
      v136.origin.x = v61;
      v136.origin.y = v110;
      v136.size.height = v113;
      v78 = width - v112 - CGRectGetWidth(v136);
    }

    VUIRoundValue();
    v80 = v79;
    if ([(VUIProductLockupView *)self effectiveUserInterfaceLayoutDirection]== 1)
    {
      [(VUIProductLockupView *)self bounds];
      descriptionTextView = self->_descriptionTextView;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      [(FocusableTextView *)descriptionTextView setFrame:?];
      mediaBadgeTagsView = self->_mediaBadgeTagsView;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      [(VUIMediaTagsView *)mediaBadgeTagsView setFrame:?];
      mediaInfoTagsView = self->_mediaInfoTagsView;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      [(VUIMediaTagsView *)mediaInfoTagsView setFrame:?];
      subtitleLabel = self->_subtitleLabel;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      [(VUILabel *)subtitleLabel setFrame:?];
      downloadView = self->_downloadView;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      [(UIView *)downloadView setFrame:?];
      coverArtImageView = self->_coverArtImageView;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      [(VUIImageView *)coverArtImageView setFrame:?];
      leftButton = self->_leftButton;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v92 = leftButton;
    }

    else
    {
      [(FocusableTextView *)self->_descriptionTextView setFrame:v74, v68, v67, v120];
      [(VUIMediaTagsView *)self->_mediaBadgeTagsView setFrame:v96, v97, v104, v117];
      [(VUIMediaTagsView *)self->_mediaInfoTagsView setFrame:v98, v99, v101, v103];
      [(VUILabel *)self->_subtitleLabel setFrame:v106, y, rect, v107];
      [(UIView *)self->_downloadView setFrame:v78, v80, v111, v113];
      [(VUIImageView *)self->_coverArtImageView setFrame:v115, v123, v109, v130];
      v92 = self->_leftButton;
      v88 = v57;
      v89 = v77;
      v90 = v119;
      v91 = v122;
    }

    [(VUIRoundButton *)v92 setFrame:v88, v89, v90, v91, *&v96, *&v97];
  }

  +[VUIViewSpacer spacerB];
  +[VUIViewSpacer spacerB];
  VUIRoundValue();
  v94 = v93;
  v95 = width;
  result.height = v94;
  result.width = v95;
  return result;
}

- (CGSize)_layoutForStacked:(CGSize)stacked metricsOnly:(BOOL)only
{
  width = stacked.width;
  [MEMORY[0x1E69DD2E8] vui_paddingForWindowWidth:{stacked.width, stacked.height}];
  v8 = v7;
  v10 = v9;
  +[VUIViewSpacer spacerB];
  v130 = v11;
  [(VUILibraryProductLockupViewLayout *)self->_layout coverArtImageSize];
  v13 = v12;
  v15 = v14;
  [(VUILibraryProductLockupViewLayout *)self->_layout coverArtImageRightMarginForWindowWidth:width];
  v129 = v8;
  v109 = v10;
  v127 = v13;
  v125 = v16;
  v17 = v8 + v10 + v13 + v16;
  font = [(VUILabel *)self->_subtitleLabel font];
  traitCollection = [(VUIProductLockupView *)self traitCollection];
  [font topMarginWithBaselineMargin:traitCollection traitCollection:30.0];
  v21 = v20;

  font2 = [(VUILabel *)self->_subtitleLabel font];
  traitCollection2 = [(VUIProductLockupView *)self traitCollection];
  [font2 bottomMarginWithBaselineMargin:traitCollection2 traitCollection:16.0];
  v114 = v24;

  [(VUILabel *)self->_subtitleLabel sizeThatFits:width - v17, 1.79769313e308];
  v26 = v25;
  v113 = v27;
  [(VUIProductLockupView *)self _sizeOfDescriptionLabel:width];
  v110 = v28;
  v30 = v29;
  [(VUILibraryProductLockupViewLayout *)self->_layout contentDescriptionTopMarginForWindowWidth:width];
  v32 = v31;
  font3 = [(VUILabel *)self->_subtitleLabel font];
  [(VUIProductLockupView *)self _descriptionTopMarginWithBaselineMargin:font3 otherFont:v32];
  v35 = v34;

  [(VUILibraryProductLockupViewLayout *)self->_layout contentDescriptionBottomMarginForWindowWidth:width];
  [(VUIProductLockupView *)self _descriptionBottomMarginWithBaselineMargin:?];
  [(VUIBaseView *)self->_mediaInfoTagsView sizeThatFits:width, 1.79769313e308];
  rect = v36;
  v123 = v37;
  [(VUIBaseView *)self->_mediaBadgeTagsView sizeThatFits:width, 1.79769313e308];
  v120 = v38;
  v122 = v39;
  [(UIView *)self->_downloadView sizeThatFits:v17, 1.79769313e308];
  v117 = v40;
  v126 = v41;
  [(VUIRoundButton *)self->_leftButton sizeThatFits:v17, 1.79769313e308];
  v124 = v43;
  if (!only)
  {
    v96 = width;
    v97 = v42;
    v44 = *(MEMORY[0x1E695F058] + 8);
    v128 = *MEMORY[0x1E695F058];
    v46 = *(MEMORY[0x1E695F058] + 16);
    v45 = *(MEMORY[0x1E695F058] + 24);
    v112 = v30;
    v119 = v35;
    if ([(VUILibraryProductLockupViewLayout *)self->_layout type]== 1)
    {
      v47 = v45;
      v48 = v46;
      v49 = v44;
      v50 = v44;
      v51 = v128;
      v52 = v129;
      v53 = v127;
      if (self->_subtitleLabel)
      {
        v132.origin.x = v129;
        v132.origin.y = v21;
        v132.size.width = v26;
        v132.size.height = v113;
        v130 = v114 + CGRectGetMaxY(v132);
        v47 = v113;
        v52 = v129;
        v48 = v26;
        v49 = v21;
        v51 = v129;
      }
    }

    else
    {
      v47 = v45;
      v48 = v46;
      v49 = v44;
      v50 = v44;
      v51 = v128;
      v52 = v129;
      v53 = v127;
    }

    v101 = v51;
    v102 = v49;
    v103 = v48;
    v104 = v47;
    v133.origin.x = v52;
    v133.origin.y = v130;
    v133.size.width = v53;
    v133.size.height = v15;
    v54 = v15;
    MinY = CGRectGetMinY(v133);
    v56 = v52;
    v57 = v130;
    v58 = v52;
    v59 = v54;
    v115 = v46;
    v116 = v45;
    v60 = v45;
    v121 = v50;
    v61 = v128;
    if (self->_mediaInfoTagsView)
    {
      v62 = v53;
      v63 = v130;
      v64 = v54;
      v50 = MinY;
      v56 = v125 + CGRectGetMaxX(*&v58);
      v57 = v50;
      v46 = rect;
      v53 = rect;
      v59 = v123;
      v60 = v123;
      v61 = v56;
    }

    v105 = v61;
    v106 = v50;
    v107 = v46;
    v108 = v60;
    width = v96;
    if (self->_mediaBadgeTagsView)
    {
      v134.origin.x = v129;
      v134.origin.y = v130;
      v134.size.width = v127;
      v134.size.height = v54;
      v65 = v54;
      v66 = v56;
      v67 = v125 + CGRectGetMaxX(v134);
      v135.origin.x = v66;
      v135.origin.y = v57;
      v135.size.width = v53;
      v135.size.height = v59;
      MaxY = CGRectGetMaxY(v135);
      v56 = v67;
      v53 = v120;
      v57 = v119 + MaxY;
      v59 = v122;
      v99 = v122;
      v100 = v67;
      v98 = v119 + MaxY;
      v69 = v128;
    }

    else
    {
      v120 = v115;
      v98 = v121;
      v99 = v116;
      v69 = v128;
      v100 = v128;
      v65 = v54;
    }

    if (self->_descriptionTextView)
    {
      v136.origin.x = v129;
      v136.origin.y = v130;
      v136.size.width = v127;
      v136.size.height = v65;
      v70 = v56;
      v71 = v125 + CGRectGetMaxX(v136);
      v137.origin.x = v70;
      v137.origin.y = v57;
      v137.size.width = v53;
      v137.size.height = v59;
      v72 = CGRectGetMaxY(v137);
      v94 = v71;
      v56 = v71;
      v57 = v119 + v72;
      v53 = v110;
      v59 = v112;
      v115 = v110;
      v116 = v112;
      v111 = v119 + v72;
      v73 = v121;
    }

    else
    {
      v73 = v121;
      v111 = v121;
      v94 = v69;
    }

    v138.origin.x = v56;
    v138.origin.y = v57;
    v138.size.width = v53;
    v138.size.height = v59;
    CGRectGetMaxY(v138);
    VUIRoundValue();
    v75 = v74;
    v76 = v73;
    v77 = v69;
    v78 = v65;
    if (self->_downloadView)
    {
      if ([(VUILibraryProductLockupViewLayout *)self->_layout downloadButtonPosition]== 5)
      {
        v139.origin.x = v128;
        v139.origin.y = v121;
        v139.size.width = v117;
        v139.size.height = v126;
        v77 = v96 - v109 - CGRectGetWidth(v139);
      }

      else
      {
        v140.origin.x = v129;
        v140.origin.y = v130;
        v140.size.width = v127;
        v140.size.height = v65;
        v77 = v125 + CGRectGetMaxX(v140);
      }

      v76 = v75;
    }

    v79 = v76;
    if (self->_leftButton)
    {
      v141.origin.x = v129;
      v141.origin.y = v130;
      v141.size.width = v127;
      v141.size.height = v78;
      v128 = v125 + CGRectGetMaxX(v141);
      v121 = v75;
    }

    if ([(VUIProductLockupView *)self effectiveUserInterfaceLayoutDirection]== 1)
    {
      [(VUIProductLockupView *)self bounds];
      leftButton = self->_leftButton;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      [(VUIRoundButton *)leftButton setFrame:?];
      descriptionTextView = self->_descriptionTextView;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      [(FocusableTextView *)descriptionTextView setFrame:?];
      downloadView = self->_downloadView;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      [(UIView *)downloadView setFrame:?];
      coverArtImageView = self->_coverArtImageView;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      [(VUIImageView *)coverArtImageView setFrame:?];
      subtitleLabel = self->_subtitleLabel;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      [(VUILabel *)subtitleLabel setFrame:?];
      mediaBadgeTagsView = self->_mediaBadgeTagsView;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      [(VUIMediaTagsView *)mediaBadgeTagsView setFrame:?];
      mediaInfoTagsView = self->_mediaInfoTagsView;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
    }

    else
    {
      [(VUIRoundButton *)self->_leftButton setFrame:v128, v121, v97, v124];
      [(FocusableTextView *)self->_descriptionTextView setFrame:v95, v111, v115, v116];
      [(UIView *)self->_downloadView setFrame:v77, v79, v117, v126];
      [(VUIImageView *)self->_coverArtImageView setFrame:v129, v130, v127, v78];
      [(VUILabel *)self->_subtitleLabel setFrame:v101, v102, v103, v104];
      [(VUIMediaTagsView *)self->_mediaBadgeTagsView setFrame:v100, v98, v120, v99];
      mediaInfoTagsView = self->_mediaInfoTagsView;
      v90 = v108;
      v88 = v106;
      v89 = v107;
      v87 = v105;
    }

    [(VUIMediaTagsView *)mediaInfoTagsView setFrame:v87, v88, v89, v90];
  }

  if ([(VUILibraryProductLockupViewLayout *)self->_layout type]== 1 && self->_subtitleLabel)
  {
    +[VUIViewSpacer spacerB];
  }

  else
  {
    +[VUIViewSpacer spacerB];
    +[VUIViewSpacer spacerB];
  }

  if (self->_downloadView || self->_leftButton)
  {
    +[VUIViewSpacer spacerB];
  }

  VUIRoundValue();
  v92 = v91;
  v93 = width;
  result.height = v92;
  result.width = v93;
  return result;
}

- (id)_contentDescriptionFont
{
  v3 = MEMORY[0x1E69DD2E8];
  [(VUIProductLockupView *)self bounds];
  v4 = [v3 vui_currentSizeClassForWindowWidth:CGRectGetWidth(v9)];
  layout = [(VUIProductLockupView *)self layout];
  v6 = [layout contentDescriptionFontForSizeClass:v4];

  return v6;
}

- (VUIProductLockupViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end