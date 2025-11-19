@interface SearchUIImageView
+ (SearchUIImageView)imageViewWithImage:(id)a3;
+ (id)thumbnailForRowModel:(id)a3;
- (SearchUIImageView)init;
- (void)appIconDidChange:(id)a3;
- (void)didFailToLoadImage;
- (void)didUpdateWithImage:(id)a3;
- (void)layoutSubviews;
- (void)updateWithImage:(id)a3 fallbackImage:(id)a4 needsOverlayButton:(BOOL)a5 animateTransition:(BOOL)a6;
@end

@implementation SearchUIImageView

- (SearchUIImageView)init
{
  v5.receiver = self;
  v5.super_class = SearchUIImageView;
  v2 = [(TLKImageView *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v2 selector:sel_appIconDidChange_ name:@"SearchUIAppIconImageDidChangeNotification" object:0];

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
  v7 = [(SearchUIImageView *)self overlayPlayButton];
  [v7 intrinsicContentSize];
  v9 = v8;
  v11 = v10;

  [MEMORY[0x1E69D91A8] deviceScaledRoundedRect:self forView:{(v4 - v9) * 0.5, (v6 - v11) * 0.5, v9, v11}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(SearchUIImageView *)self overlayPlayButton];
  [v20 setFrame:{v13, v15, v17, v19}];

  v21 = [(SearchUIImageView *)self currentImage];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v23 = [(SearchUIImageView *)self currentImage];
    v24 = [v23 needsTinting];
    if (v24)
    {
      v25 = [(SearchUIImageView *)self tintView];

      if (!v25)
      {
        v26 = objc_opt_new();
        [(SearchUIImageView *)self setTintView:v26];

        v27 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.4];
        v28 = [(SearchUIImageView *)self tintView];
        [v28 setBackgroundColor:v27];

        v29 = [(SearchUIImageView *)self tintView];
        v30 = [(TLKImageView *)self imageView];
        [(SearchUIImageView *)self insertSubview:v29 aboveSubview:v30];
      }

      v31 = [(TLKImageView *)self imageView];
      [v31 frame];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v40 = [(SearchUIImageView *)self tintView];
      [v40 setFrame:{v33, v35, v37, v39}];

      v41 = [(TLKImageView *)self imageView];
      v42 = [v41 layer];
      [v42 cornerRadius];
      v44 = v43;
      v45 = [(SearchUIImageView *)self tintView];
      v46 = [v45 layer];
      [v46 setCornerRadius:v44];

      v47 = [(TLKImageView *)self imageView];
      v48 = [v47 layer];
      v49 = [v48 cornerCurve];
      v50 = [(SearchUIImageView *)self tintView];
      v51 = [v50 layer];
      [v51 setCornerCurve:v49];
    }

    v52 = v24 ^ 1u;
  }

  else
  {
    v52 = 1;
  }

  v53 = [(SearchUIImageView *)self tintView];
  [v53 setHidden:v52];
}

+ (SearchUIImageView)imageViewWithImage:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 updateWithImage:v3];

  return v4;
}

- (void)appIconDidChange:(id)a3
{
  v8 = [a3 object];
  v4 = [(TLKImageView *)self tlkImage];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(TLKImageView *)self tlkImage];
    v6 = [v5 searchUIImage];
  }

  else
  {
    v6 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 shouldInvalidateAppIconForChangedBundleIdentifier:v8])
  {
    v7 = [(TLKImageView *)self imageView];
    [v7 setImage:0];

    [(SearchUIImageView *)self updateWithImage:v6];
  }
}

- (void)updateWithImage:(id)a3 fallbackImage:(id)a4 needsOverlayButton:(BOOL)a5 animateTransition:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v26 = a3;
  v10 = a4;
  v11 = [(TLKImageView *)self imageView];
  v12 = [v11 image];

  v13 = [(SearchUIImageView *)self currentImage];
  if (v13 && (v14 = v13, -[SearchUIImageView currentImage](self, "currentImage"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 isEqual:v26], v15, v14, v16) && v12)
  {
    v17 = [(TLKImageView *)self delegate];
    [v17 didUpdateWithImage:v12];
  }

  else
  {
    [(SearchUIImageView *)self setCurrentImage:v26];
    [(SearchUIImageView *)self setFallbackImage:v10];
    if (v7)
    {
      v18 = [(SearchUIImageView *)self overlayPlayButton];

      if (!v18)
      {
        v19 = [[SearchUIButton alloc] initWithType:0];
        [(SearchUIImageView *)self setOverlayPlayButton:v19];

        v20 = [(SearchUIImageView *)self overlayPlayButton];
        [v20 setUserInteractionEnabled:0];

        v21 = [(SearchUIImageView *)self overlayPlayButton];
        [(SearchUIImageView *)self addSubview:v21];
      }
    }

    if (updateWithImage_fallbackImage_needsOverlayButton_animateTransition__onceToken != -1)
    {
      [SearchUIImageView updateWithImage:fallbackImage:needsOverlayButton:animateTransition:];
    }

    v22 = [(SearchUIImageView *)self overlayPlayButton];
    [v22 setHidden:!v7];

    v23 = updateWithImage_fallbackImage_needsOverlayButton_animateTransition__dummyImage;
    v24 = [(SearchUIImageView *)self overlayPlayButton];
    [v24 setOverlayImage:v23];

    v17 = [SearchUITLKImageConverter imageForSFImage:v26];
    if (v6)
    {
      [(TLKImageView *)self animateTransitionToImage:v17];
    }

    else
    {
      v25 = [SearchUITLKImageConverter imageForSFImage:v26];
      [(TLKImageView *)self setTlkImage:v25];
    }
  }
}

uint64_t __88__SearchUIImageView_updateWithImage_fallbackImage_needsOverlayButton_animateTransition___block_invoke()
{
  updateWithImage_fallbackImage_needsOverlayButton_animateTransition__dummyImage = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (void)didUpdateWithImage:(id)a3
{
  v7 = a3;
  v4 = [(SearchUIImageView *)self overlayPlayButton];
  v5 = [v4 isHidden];

  if ((v5 & 1) == 0)
  {
    v6 = [(SearchUIImageView *)self overlayPlayButton];
    [v6 setOverlayImage:v7];
  }
}

- (void)didFailToLoadImage
{
  v3 = [(SearchUIImageView *)self fallbackImage];

  if (v3)
  {
    v4 = [(SearchUIImageView *)self overlayPlayButton];
    [v4 setHidden:1];

    v5 = [(SearchUIImageView *)self currentImage];
    [v5 size];
    v7 = v6;
    v9 = v8;
    v10 = [(SearchUIImageView *)self fallbackImage];
    [v10 setSize:{v7, v9}];

    v12 = [(SearchUIImageView *)self fallbackImage];
    v11 = [SearchUITLKImageConverter imageForSFImage:v12];
    [(TLKImageView *)self setTlkImage:v11];
  }
}

+ (id)thumbnailForRowModel:(id)a3
{
  v3 = a3;
  v4 = [v3 identifyingResult];
  v5 = [v3 cardSection];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v5 thumbnail], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = v7;
  }

  else
  {
    v7 = [v4 thumbnail];
    v8 = 0;
  }

  v9 = [v3 useCompactVersionOfUI];
  v10 = [v4 sectionBundleIdentifier];
  v11 = [SearchUIUtilities bundleIdentifierForApp:6];
  v12 = [v10 isEqualToString:v11];

  v13 = [v4 type];
  v14 = v13;
  if (v7)
  {
    if (v13 == 8)
    {
      v15 = 1;
    }

    else
    {
      v15 = v12;
    }

    if ((v15 & v9) != 1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v16 = [v4 isLocalApplicationResult];
    if (v14 == 8)
    {
      v17 = 1;
    }

    else
    {
      v17 = v12;
    }

    if (v16 && (v17 & v9 & 1) == 0)
    {
      v7 = 0;
      goto LABEL_22;
    }
  }

  v18 = [v4 applicationBundleIdentifier];
  v19 = [SearchUIUtilities bundleIdentifierForApp:11];
  if ([v18 isEqualToString:v19])
  {

LABEL_20:
    v23 = [SearchUIMediaArtworkImage alloc];
    v24 = [v4 identifier];
    v25 = [(SearchUIMediaArtworkImage *)v23 initWithSpotlightIdentifier:v24];
LABEL_21:
    v26 = v25;

    v7 = v26;
    goto LABEL_22;
  }

  v35 = v9;
  v20 = [v4 applicationBundleIdentifier];
  [SearchUIUtilities bundleIdentifierForApp:19];
  v21 = v36 = v8;
  v22 = [v20 isEqualToString:v21];

  v8 = v36;
  if (v22)
  {
    goto LABEL_20;
  }

  if (v12)
  {
    v28 = [v4 punchout];
    v29 = [v28 urls];
    v30 = [v29 firstObject];
    v31 = v30;
    if (v30)
    {
      v24 = v30;
    }

    else
    {
      v34 = [v5 punchoutOptions];
      v32 = [v34 firstObject];
      v33 = [v32 urls];
      v24 = [v33 firstObject];

      v8 = v36;
    }

    v25 = [[SearchUIQuickLookThumbnailImage alloc] initWithResult:v4 url:v24 isCompact:v35];
    goto LABEL_21;
  }

LABEL_22:

  return v7;
}

@end