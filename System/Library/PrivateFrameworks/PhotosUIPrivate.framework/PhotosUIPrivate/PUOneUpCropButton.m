@interface PUOneUpCropButton
+ (CGRect)frameForWindow:(id)a3;
+ (CGSize)_size;
- (BOOL)_portrait;
- (BOOL)isBeingTouched;
- (BOOL)isEnabled;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGSize)_aspectRatioSizeForAspectRatio:(unint64_t)a3;
- (PUOneUpCropButton)init;
- (PUOneUpCropButtonDelegate)delegate;
- (double)_boundingWidthForText:(id)a3 font:(id)a4;
- (id)_actionForAspectRatio:(unint64_t)a3;
- (id)_aspectRatioMenu;
- (id)_aspectRatioMenuActions;
- (id)_createButton;
- (id)_identifierForAspectRatio:(unint64_t)a3;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (unint64_t)_defaultAspectRatio;
- (void)_didTapButton:(id)a3;
- (void)_setDefaultAspectRatio:(unint64_t)a3;
- (void)layoutSubviews;
- (void)oneUpCropUIButton:(id)a3 menuPresentedDidChange:(BOOL)a4;
- (void)presentMenu;
- (void)setApplyEDRBoost:(BOOL)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setPresentingMenu:(BOOL)a3;
- (void)setTargeted:(BOOL)a3;
@end

@implementation PUOneUpCropButton

- (PUOneUpCropButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)oneUpCropUIButton:(id)a3 menuPresentedDidChange:(BOOL)a4
{
  v4 = a4;
  if (a4)
  {
    v6 = MEMORY[0x1E69C3748];
    v7 = [MEMORY[0x1E69C3748] quickCropTipID];
    [v6 setTipActionPerformed:v7];
  }

  [(PUOneUpCropButton *)self setPresentingMenu:v4];
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:self];
  v6 = [MEMORY[0x1E69DCDB8] effectWithPreview:v5];
  v7 = MEMORY[0x1E69DCDC8];
  [(PUOneUpCropButton *)self frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(PUOneUpCropButton *)self frame];
  v16 = [v7 shapeWithRoundedRect:v9 cornerRadius:{v11, v13, v15, CGRectGetHeight(v20) * 0.5}];
  v17 = [MEMORY[0x1E69DCDD0] styleWithEffect:v6 shape:v16];

  return v17;
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v6 = MEMORY[0x1E69DCDC0];
  v7 = a5;
  [(PUOneUpCropButton *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v7 identifier];

  v17 = [v6 regionWithRect:v16 identifier:{v9, v11, v13, v15}];

  return v17;
}

- (id)_actionForAspectRatio:(unint64_t)a3
{
  v5 = [(PUOneUpCropButton *)self _portrait];
  v6 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v7 = PULocalizedString(@"PHOTOEDIT_CROP_ASPECT_RATIO_SQUARE");
      v6 = @"square";
      goto LABEL_15;
    }

    v7 = 0;
    if (a3 != 3)
    {
      goto LABEL_15;
    }

    [(PUOneUpCropButton *)self _aspectRatioSizeForAspectRatio:3];
    v8 = PULocalizedString(@"PHOTOEDIT_QUICK_CROP_WIDESCREEN_TITLE");
    v9 = PXLocalizedStringFromInteger();
    PXLocalizedStringFromInteger();
    v22 = v21 = v9;
    v7 = PUStringWithValidatedFormat();

    v10 = @"rectangle.ratio.16.to.9";
    v11 = @"rectangle.ratio.9.to.16";
  }

  else
  {
    if (a3)
    {
      v7 = 0;
      if (a3 == 1)
      {
        v7 = PULocalizedString(@"PHOTOEDIT_CROP_ASPECT_RATIO_ORIGINAL");
        v6 = @"photo";
      }

      goto LABEL_15;
    }

    v7 = PULocalizedString(@"PHOTOEDIT_QUICK_CROP_FULLSCREEN_TITLE");
    v12 = [MEMORY[0x1E69DC938] currentDevice];
    v13 = [v12 userInterfaceIdiom];

    if (v13)
    {
      v10 = @"ipad.landscape";
      v11 = @"ipad";
    }

    else
    {
      v10 = @"iphone.landscape";
      v11 = @"iphone";
    }
  }

  if (v5)
  {
    v10 = v11;
  }

  v6 = v10;
LABEL_15:
  v14 = [MEMORY[0x1E69DCAB8] systemImageNamed:{v6, v21, v22}];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"rectangle.portrait"];
  }

  v17 = v16;

  objc_initWeak(&location, self);
  v18 = MEMORY[0x1E69DC628];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __43__PUOneUpCropButton__actionForAspectRatio___block_invoke;
  v23[3] = &unk_1E7B808E0;
  objc_copyWeak(v24, &location);
  v24[1] = a3;
  v19 = [v18 actionWithTitle:v7 image:v17 identifier:0 handler:v23];
  if ([(PUOneUpCropButton *)self _defaultAspectRatio]== a3)
  {
    [v19 setState:1];
  }

  objc_destroyWeak(v24);
  objc_destroyWeak(&location);

  return v19;
}

void __43__PUOneUpCropButton__actionForAspectRatio___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setDefaultAspectRatio:*(a1 + 40)];
}

- (id)_aspectRatioMenuActions
{
  v9[4] = *MEMORY[0x1E69E9840];
  v3 = [(PUOneUpCropButton *)self _actionForAspectRatio:0];
  v4 = [(PUOneUpCropButton *)self _actionForAspectRatio:1];
  v5 = [(PUOneUpCropButton *)self _actionForAspectRatio:2];
  v6 = [(PUOneUpCropButton *)self _actionForAspectRatio:3];
  v9[0] = v3;
  v9[1] = v4;
  v9[2] = v6;
  v9[3] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  return v7;
}

- (id)_aspectRatioMenu
{
  v14[1] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC928];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __37__PUOneUpCropButton__aspectRatioMenu__block_invoke;
  v11 = &unk_1E7B7B388;
  objc_copyWeak(&v12, &location);
  v3 = [v2 elementWithUncachedProvider:&v8];
  v4 = MEMORY[0x1E69DCC60];
  v14[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:{1, v8, v9, v10, v11}];
  v6 = [v4 menuWithTitle:&stru_1F2AC6818 image:0 identifier:0 options:0 children:v5];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v6;
}

void __37__PUOneUpCropButton__aspectRatioMenu__block_invoke(uint64_t a1, void (**a2)(void, void))
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _aspectRatioMenuActions];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  a2[2](v4, v7);
}

- (CGSize)_aspectRatioSizeForAspectRatio:(unint64_t)a3
{
  if (a3 <= 1)
  {
    if (!a3)
    {
      v6 = *MEMORY[0x1E695F060];
      v8 = *(MEMORY[0x1E695F060] + 8);
      goto LABEL_14;
    }

    if (a3 == 1)
    {
      v4 = [(PUOneUpCropButton *)self delegate];
      [v4 oneUpCropButtonOriginalAspectRatio:self];
      v6 = v5;
      v8 = v7;

      goto LABEL_14;
    }

LABEL_15:
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PUOneUpCropButton.m" lineNumber:327 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v6 = 1.0;
  v8 = 1.0;
  if (a3 == 2)
  {
    goto LABEL_14;
  }

  if (a3 != 3)
  {
    goto LABEL_15;
  }

  v9 = [(PUOneUpCropButton *)self _portrait];
  if (v9)
  {
    v6 = 9.0;
  }

  else
  {
    v6 = 16.0;
  }

  if (v9)
  {
    v8 = 16.0;
  }

  else
  {
    v8 = 9.0;
  }

LABEL_14:
  v10 = v6;
  v11 = v8;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)_setDefaultAspectRatio:(unint64_t)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = [(PUOneUpCropButton *)self _identifierForAspectRatio:?];
  v6 = [(PUOneUpCropButton *)self _userDefaults];
  [v6 setObject:v5 forKey:@"PUOneUpCropButtonDefaultAspectRatioKey"];

  [(PUOneUpCropButton *)self setCachedDefaultAspectRatio:a3];
  [(PUOneUpCropButton *)self setLoadedDefaultAspectRatio:1];
  v7 = MEMORY[0x1E6991F28];
  v9 = @"aspectRatio";
  v10[0] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v7 sendEvent:@"com.apple.photos.CPAnalytics.quickCrop.aspectRatioChanged" withPayload:v8];
}

- (unint64_t)_defaultAspectRatio
{
  v12 = *MEMORY[0x1E69E9840];
  if ([(PUOneUpCropButton *)self loadedDefaultAspectRatio])
  {

    return [(PUOneUpCropButton *)self cachedDefaultAspectRatio];
  }

  [(PUOneUpCropButton *)self setLoadedDefaultAspectRatio:1];
  v4 = [(PUOneUpCropButton *)self _userDefaults];
  v5 = [v4 objectForKey:@"PUOneUpCropButtonDefaultAspectRatioKey"];

  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v5;

    if (v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  v6 = [(PUOneUpCropButton *)self _identifierForAspectRatio:0];
LABEL_11:
  for (i = 0; i != 4; ++i)
  {
    v8 = [(PUOneUpCropButton *)self _identifierForAspectRatio:i];
    if ([v8 isEqualToString:v6])
    {
      [(PUOneUpCropButton *)self setCachedDefaultAspectRatio:i];

      goto LABEL_18;
    }
  }

  v9 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_ERROR, "Quick crop failed to restore aspect ratio with identifier %@", &v10, 0xCu);
  }

  [(PUOneUpCropButton *)self setCachedDefaultAspectRatio:0];
  i = 0;
LABEL_18:

  return i;
}

- (id)_identifierForAspectRatio:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return @"PUOneUpCropButtonAspectRatioFullscreen";
  }

  else
  {
    return off_1E7B740F0[a3 - 1];
  }
}

- (BOOL)_portrait
{
  v3 = [(PUOneUpCropButton *)self delegate];
  [v3 oneUpCropButtonBoundingSize:self];
  v5 = v4;
  v7 = v6;

  return v5 < v7;
}

- (double)_boundingWidthForText:(id)a3 font:(id)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v19 = *MEMORY[0x1E69DB648];
  v20[0] = a4;
  v5 = MEMORY[0x1E695DF20];
  v6 = a4;
  v7 = a3;
  v8 = [v5 dictionaryWithObjects:v20 forKeys:&v19 count:1];

  [v7 boundingRectWithSize:0 options:v8 attributes:0 context:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v21.origin.x = v10;
  v21.origin.y = v12;
  v21.size.width = v14;
  v21.size.height = v16;
  Width = CGRectGetWidth(v21);

  return Width;
}

- (id)_createButton
{
  v37[1] = *MEMORY[0x1E69E9840];
  v3 = [_PUOneUpCropUIButton alloc];
  v4 = [(_PUOneUpCropUIButton *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(_PUOneUpCropUIButton *)v4 setDelegate:self];
  v5 = [MEMORY[0x1E69DC740] glassButtonConfiguration];
  v6 = *MEMORY[0x1E69DDC78];
  v7 = [(PUOneUpCropButton *)self traitCollection];
  v8 = [v7 preferredContentSizeCategory];
  v9 = UIContentSizeCategoryCompareToCategory(v6, v8);

  if (v9 == NSOrderedAscending)
  {
    v10 = 15.0;
  }

  else
  {
    v10 = 10.5;
  }

  v11 = PULocalizedString(@"PHOTOEDIT_QUICK_CROP_BUTTON");
  if ([v11 length])
  {
    v12 = +[PUOneUpSettings sharedInstance];
    v13 = [v12 quickCropUseSymbol];

    if ((v13 & 1) == 0)
    {
      v14 = *MEMORY[0x1E69DB958];
      +[PUOneUpCropButton _size];
      v16 = v15;
      +[PUOneUpCropButton _size];
      v18 = v16 - v17;
      v19 = 15.0;
      v20 = [MEMORY[0x1E69DB878] systemFontOfSize:15.0 weight:v14];
      [(PUOneUpCropButton *)self _boundingWidthForText:v11 font:v20];
      v22 = v21;

      if (v22 > v18)
      {
        v23 = 15.0;
        if (v10 < 15.0)
        {
          do
          {
            v23 = v23 + -0.25;
            v24 = [MEMORY[0x1E69DB878] systemFontOfSize:v23 weight:v14];
            [(PUOneUpCropButton *)self _boundingWidthForText:v11 font:v24];
            v22 = v25;
          }

          while (v22 > v18 && v23 > v10);
          v19 = v23;
        }
      }

      if (v22 <= v18)
      {
        v27 = [MEMORY[0x1E69DB878] systemFontOfSize:v19 weight:v14];
        v28 = objc_alloc(MEMORY[0x1E696AAB0]);
        v36 = *MEMORY[0x1E69DB648];
        v37[0] = v27;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
        v30 = [v28 initWithString:v11 attributes:v29];
        [v5 setAttributedTitle:v30];
      }
    }
  }

  v31 = [v5 attributedTitle];

  if (!v31)
  {
    v32 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:7 weight:14.0];
    v33 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"crop" withConfiguration:v32];
    [v5 setImage:v33];
  }

  [(_PUOneUpCropUIButton *)v4 setConfiguration:v5];
  v34 = [(PUOneUpCropButton *)self _aspectRatioMenu];
  [(_PUOneUpCropUIButton *)v4 setMenu:v34];

  [(_PUOneUpCropUIButton *)v4 addTarget:self action:sel__didTapButton_ forControlEvents:64];

  return v4;
}

- (void)_didTapButton:(id)a3
{
  [(PUOneUpCropButton *)self _aspectRatioSizeForAspectRatio:[(PUOneUpCropButton *)self _defaultAspectRatio]];
  v5 = v4;
  v7 = v6;
  v8 = [(PUOneUpCropButton *)self delegate];
  [v8 oneUpCropButton:self didSelectAspectRatio:{v5, v7}];
}

- (void)setTargeted:(BOOL)a3
{
  if (self->_targeted != a3)
  {
    v4 = a3;
    self->_targeted = a3;
    v6 = [(PUOneUpCropButton *)self delegate];
    [v6 oneUpCropButton:self pointerTargetDidChange:v4];
  }
}

- (void)setPresentingMenu:(BOOL)a3
{
  if (self->_presentingMenu != a3)
  {
    v4 = a3;
    self->_presentingMenu = a3;
    v6 = [(PUOneUpCropButton *)self delegate];
    [v6 oneUpCropButton:self menuPresentedDidChange:v4];
  }
}

- (void)setApplyEDRBoost:(BOOL)a3
{
  if (self->_applyEDRBoost != a3)
  {
    if (a3)
    {
      v5 = [MEMORY[0x1E69C3640] sharedInstance];
      [v5 chromeButtonsEDRBoost];
      [(PXEDRGainView *)self->_gainView setEdrGain:?];
    }

    else
    {
      gainView = self->_gainView;

      [(PXEDRGainView *)gainView setEdrGain:0.0];
    }
  }
}

- (void)presentMenu
{
  v3 = [(PUOneUpCropButton *)self button];
  v2 = [v3 contextMenuInteraction];
  [v2 _presentMenuAtLocation:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
}

- (BOOL)isBeingTouched
{
  v2 = [(PUOneUpCropButton *)self button];
  v3 = [v2 isBeingTouched];

  return v3;
}

- (BOOL)isEnabled
{
  v2 = [(PUOneUpCropButton *)self button];
  v3 = [v2 isUserInteractionEnabled];

  return v3;
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(PUOneUpCropButton *)self button];
  [v4 setUserInteractionEnabled:v3];
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = PUOneUpCropButton;
  [(PUOneUpCropButton *)&v15 layoutSubviews];
  [(PUOneUpCropButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(PUOneUpCropButton *)self button];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [(PUOneUpCropButton *)self gainView];
  [v12 setFrame:{v4, v6, v8, v10}];

  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  v13 = CGRectGetHeight(v16) * 0.5;
  v14 = [(PUOneUpCropButton *)self layer];
  [v14 setCornerRadius:v13];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v13.receiver = self;
  v13.super_class = PUOneUpCropButton;
  v7 = [(PUOneUpCropButton *)&v13 pointInside:a4 withEvent:?];
  [(PUOneUpCropButton *)self bounds];
  if (!CGRectIsEmpty(v15))
  {
    PXEdgeInsetsInvert();
    PXEdgeInsetsInsetRect();
    if (v7)
    {
      return 1;
    }

    else
    {
      v14.x = x;
      v14.y = y;
      return CGRectContainsPoint(*&v8, v14);
    }
  }

  return v7;
}

- (PUOneUpCropButton)init
{
  v15.receiver = self;
  v15.super_class = PUOneUpCropButton;
  v2 = [(PUOneUpCropButton *)&v15 init];
  v3 = v2;
  if (v2)
  {
    [(PUOneUpCropButton *)v2 setOverrideUserInterfaceStyle:2];
    v4 = [(PUOneUpCropButton *)v3 layer];
    [v4 setMasksToBounds:1];

    v5 = *MEMORY[0x1E69796E8];
    v6 = [(PUOneUpCropButton *)v3 layer];
    [v6 setCornerCurve:v5];

    v7 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v3];
    [(PUOneUpCropButton *)v3 addInteraction:v7];
    [(PUOneUpCropButton *)v3 setShowsLargeContentViewer:1];
    v8 = objc_alloc_init(MEMORY[0x1E69DCC18]);
    [(PUOneUpCropButton *)v3 addInteraction:v8];

    v9 = [(PUOneUpCropButton *)v3 _createButton];
    button = v3->_button;
    v3->_button = v9;

    [(PUOneUpCropButton *)v3 addSubview:v3->_button];
    v11 = objc_alloc(MEMORY[0x1E69C44E0]);
    v12 = [v11 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    gainView = v3->_gainView;
    v3->_gainView = v12;

    [(PUOneUpCropButton *)v3 addSubview:v3->_gainView];
  }

  return v3;
}

+ (CGSize)_size
{
  v8 = *MEMORY[0x1E695F060];
  v7 = *MEMORY[0x1E69DE258];
  v6 = 0;
  v4 = v8;
  v5 = v7;
  [PUPhotoEditLayoutSupport currentDeviceButtonSize:&v8 offset:&v7 zoomedSize:&v4 zoomedOffset:&v5 normalScreenWidth:&v6 quickCrop:1];
  v3 = *(&v8 + 1);
  v2 = *&v8;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGRect)frameForWindow:(id)a3
{
  v7 = 0u;
  v8 = 0u;
  [a3 bounds];
  [PUPhotoEditLayoutSupport getTopLeadingButtonFrame:0 topTrailingButtonFrame:&v7 inBounds:0 inRTL:1 quickCrop:?];
  v4 = *(&v7 + 1);
  v3 = *&v7;
  v6 = *(&v8 + 1);
  v5 = *&v8;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end