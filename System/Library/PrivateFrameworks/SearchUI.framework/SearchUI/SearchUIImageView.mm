@interface SearchUIImageView
+ (SearchUIImageView)imageViewWithImage:(id)image;
+ (id)thumbnailForRowModel:(id)model;
- (SearchUIImageView)init;
- (void)appIconDidChange:(id)change;
- (void)didFailToLoadImage;
- (void)didUpdateWithImage:(id)image;
- (void)layoutSubviews;
- (void)updateWithImage:(id)image fallbackImage:(id)fallbackImage needsOverlayButton:(BOOL)button animateTransition:(BOOL)transition;
@end

@implementation SearchUIImageView

- (SearchUIImageView)init
{
  v5.receiver = self;
  v5.super_class = SearchUIImageView;
  v2 = [(TLKImageView *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_appIconDidChange_ name:@"SearchUIAppIconImageDidChangeNotification" object:0];

    [(TLKImageView *)v2 setDelegate:v2];
  }

  return v2;
}

- (void)layoutSubviews
{
  v54.receiver = self;
  v54.super_class = SearchUIImageView;
  [(TLKImageView *)&v54 layoutSubviews];
  [(SearchUIImageView *)self frame];
  v4 = v3;
  v6 = v5;
  overlayPlayButton = [(SearchUIImageView *)self overlayPlayButton];
  [overlayPlayButton intrinsicContentSize];
  v9 = v8;
  v11 = v10;

  [MEMORY[0x1E69D91A8] deviceScaledRoundedRect:self forView:{(v4 - v9) * 0.5, (v6 - v11) * 0.5, v9, v11}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  overlayPlayButton2 = [(SearchUIImageView *)self overlayPlayButton];
  [overlayPlayButton2 setFrame:{v13, v15, v17, v19}];

  currentImage = [(SearchUIImageView *)self currentImage];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    currentImage2 = [(SearchUIImageView *)self currentImage];
    needsTinting = [currentImage2 needsTinting];
    if (needsTinting)
    {
      tintView = [(SearchUIImageView *)self tintView];

      if (!tintView)
      {
        v26 = objc_opt_new();
        [(SearchUIImageView *)self setTintView:v26];

        v27 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.4];
        tintView2 = [(SearchUIImageView *)self tintView];
        [tintView2 setBackgroundColor:v27];

        tintView3 = [(SearchUIImageView *)self tintView];
        imageView = [(TLKImageView *)self imageView];
        [(SearchUIImageView *)self insertSubview:tintView3 aboveSubview:imageView];
      }

      imageView2 = [(TLKImageView *)self imageView];
      [imageView2 frame];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;
      tintView4 = [(SearchUIImageView *)self tintView];
      [tintView4 setFrame:{v33, v35, v37, v39}];

      imageView3 = [(TLKImageView *)self imageView];
      layer = [imageView3 layer];
      [layer cornerRadius];
      v44 = v43;
      tintView5 = [(SearchUIImageView *)self tintView];
      layer2 = [tintView5 layer];
      [layer2 setCornerRadius:v44];

      imageView4 = [(TLKImageView *)self imageView];
      layer3 = [imageView4 layer];
      cornerCurve = [layer3 cornerCurve];
      tintView6 = [(SearchUIImageView *)self tintView];
      layer4 = [tintView6 layer];
      [layer4 setCornerCurve:cornerCurve];
    }

    v52 = needsTinting ^ 1u;
  }

  else
  {
    v52 = 1;
  }

  tintView7 = [(SearchUIImageView *)self tintView];
  [tintView7 setHidden:v52];
}

+ (SearchUIImageView)imageViewWithImage:(id)image
{
  imageCopy = image;
  v4 = objc_opt_new();
  [v4 updateWithImage:imageCopy];

  return v4;
}

- (void)appIconDidChange:(id)change
{
  object = [change object];
  tlkImage = [(TLKImageView *)self tlkImage];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    tlkImage2 = [(TLKImageView *)self tlkImage];
    searchUIImage = [tlkImage2 searchUIImage];
  }

  else
  {
    searchUIImage = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [searchUIImage shouldInvalidateAppIconForChangedBundleIdentifier:object])
  {
    imageView = [(TLKImageView *)self imageView];
    [imageView setImage:0];

    [(SearchUIImageView *)self updateWithImage:searchUIImage];
  }
}

- (void)updateWithImage:(id)image fallbackImage:(id)fallbackImage needsOverlayButton:(BOOL)button animateTransition:(BOOL)transition
{
  transitionCopy = transition;
  buttonCopy = button;
  imageCopy = image;
  fallbackImageCopy = fallbackImage;
  imageView = [(TLKImageView *)self imageView];
  image = [imageView image];

  currentImage = [(SearchUIImageView *)self currentImage];
  if (currentImage && (v14 = currentImage, -[SearchUIImageView currentImage](self, "currentImage"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 isEqual:imageCopy], v15, v14, v16) && image)
  {
    delegate = [(TLKImageView *)self delegate];
    [delegate didUpdateWithImage:image];
  }

  else
  {
    [(SearchUIImageView *)self setCurrentImage:imageCopy];
    [(SearchUIImageView *)self setFallbackImage:fallbackImageCopy];
    if (buttonCopy)
    {
      overlayPlayButton = [(SearchUIImageView *)self overlayPlayButton];

      if (!overlayPlayButton)
      {
        v19 = [[SearchUIButton alloc] initWithType:0];
        [(SearchUIImageView *)self setOverlayPlayButton:v19];

        overlayPlayButton2 = [(SearchUIImageView *)self overlayPlayButton];
        [overlayPlayButton2 setUserInteractionEnabled:0];

        overlayPlayButton3 = [(SearchUIImageView *)self overlayPlayButton];
        [(SearchUIImageView *)self addSubview:overlayPlayButton3];
      }
    }

    if (updateWithImage_fallbackImage_needsOverlayButton_animateTransition__onceToken != -1)
    {
      [SearchUIImageView updateWithImage:fallbackImage:needsOverlayButton:animateTransition:];
    }

    overlayPlayButton4 = [(SearchUIImageView *)self overlayPlayButton];
    [overlayPlayButton4 setHidden:!buttonCopy];

    v23 = updateWithImage_fallbackImage_needsOverlayButton_animateTransition__dummyImage;
    overlayPlayButton5 = [(SearchUIImageView *)self overlayPlayButton];
    [overlayPlayButton5 setOverlayImage:v23];

    delegate = [SearchUITLKImageConverter imageForSFImage:imageCopy];
    if (transitionCopy)
    {
      [(TLKImageView *)self animateTransitionToImage:delegate];
    }

    else
    {
      v25 = [SearchUITLKImageConverter imageForSFImage:imageCopy];
      [(TLKImageView *)self setTlkImage:v25];
    }
  }
}

uint64_t __88__SearchUIImageView_updateWithImage_fallbackImage_needsOverlayButton_animateTransition___block_invoke()
{
  updateWithImage_fallbackImage_needsOverlayButton_animateTransition__dummyImage = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (void)didUpdateWithImage:(id)image
{
  imageCopy = image;
  overlayPlayButton = [(SearchUIImageView *)self overlayPlayButton];
  isHidden = [overlayPlayButton isHidden];

  if ((isHidden & 1) == 0)
  {
    overlayPlayButton2 = [(SearchUIImageView *)self overlayPlayButton];
    [overlayPlayButton2 setOverlayImage:imageCopy];
  }
}

- (void)didFailToLoadImage
{
  fallbackImage = [(SearchUIImageView *)self fallbackImage];

  if (fallbackImage)
  {
    overlayPlayButton = [(SearchUIImageView *)self overlayPlayButton];
    [overlayPlayButton setHidden:1];

    currentImage = [(SearchUIImageView *)self currentImage];
    [currentImage size];
    v7 = v6;
    v9 = v8;
    fallbackImage2 = [(SearchUIImageView *)self fallbackImage];
    [fallbackImage2 setSize:{v7, v9}];

    fallbackImage3 = [(SearchUIImageView *)self fallbackImage];
    v11 = [SearchUITLKImageConverter imageForSFImage:fallbackImage3];
    [(TLKImageView *)self setTlkImage:v11];
  }
}

+ (id)thumbnailForRowModel:(id)model
{
  modelCopy = model;
  identifyingResult = [modelCopy identifyingResult];
  cardSection = [modelCopy cardSection];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([cardSection thumbnail], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    thumbnail = v6;
    v8 = thumbnail;
  }

  else
  {
    thumbnail = [identifyingResult thumbnail];
    v8 = 0;
  }

  useCompactVersionOfUI = [modelCopy useCompactVersionOfUI];
  sectionBundleIdentifier = [identifyingResult sectionBundleIdentifier];
  v11 = [SearchUIUtilities bundleIdentifierForApp:6];
  v12 = [sectionBundleIdentifier isEqualToString:v11];

  type = [identifyingResult type];
  v14 = type;
  if (thumbnail)
  {
    if (type == 8)
    {
      v15 = 1;
    }

    else
    {
      v15 = v12;
    }

    if ((v15 & useCompactVersionOfUI) != 1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    isLocalApplicationResult = [identifyingResult isLocalApplicationResult];
    if (v14 == 8)
    {
      v17 = 1;
    }

    else
    {
      v17 = v12;
    }

    if (isLocalApplicationResult && (v17 & useCompactVersionOfUI & 1) == 0)
    {
      thumbnail = 0;
      goto LABEL_22;
    }
  }

  applicationBundleIdentifier = [identifyingResult applicationBundleIdentifier];
  v19 = [SearchUIUtilities bundleIdentifierForApp:11];
  if ([applicationBundleIdentifier isEqualToString:v19])
  {

LABEL_20:
    v23 = [SearchUIMediaArtworkImage alloc];
    identifier = [identifyingResult identifier];
    v25 = [(SearchUIMediaArtworkImage *)v23 initWithSpotlightIdentifier:identifier];
LABEL_21:
    v26 = v25;

    thumbnail = v26;
    goto LABEL_22;
  }

  v35 = useCompactVersionOfUI;
  applicationBundleIdentifier2 = [identifyingResult applicationBundleIdentifier];
  [SearchUIUtilities bundleIdentifierForApp:19];
  v21 = v36 = v8;
  v22 = [applicationBundleIdentifier2 isEqualToString:v21];

  v8 = v36;
  if (v22)
  {
    goto LABEL_20;
  }

  if (v12)
  {
    punchout = [identifyingResult punchout];
    urls = [punchout urls];
    firstObject = [urls firstObject];
    v31 = firstObject;
    if (firstObject)
    {
      identifier = firstObject;
    }

    else
    {
      punchoutOptions = [cardSection punchoutOptions];
      firstObject2 = [punchoutOptions firstObject];
      urls2 = [firstObject2 urls];
      identifier = [urls2 firstObject];

      v8 = v36;
    }

    v25 = [[SearchUIQuickLookThumbnailImage alloc] initWithResult:identifyingResult url:identifier isCompact:v35];
    goto LABEL_21;
  }

LABEL_22:

  return thumbnail;
}

@end