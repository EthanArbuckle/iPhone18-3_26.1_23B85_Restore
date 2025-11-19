@interface PKPaymentSetupHeroView
- (CGSize)_watchCardCarouselSizeForSize:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKPaymentSetupHeroView)initWithContext:(int64_t)a3 heroImageController:(id)a4 heroImages:(id)a5 product:(id)a6;
- (double)_instructionFontSizeForContext:(int64_t)a3;
- (double)_phoneCardHeightInset;
- (double)_phoneTopPadding;
- (id)_heroImages;
- (void)_configureHeroCardsFromHeroImages:(id)a3;
- (void)_createSubviews;
- (void)_layoutBottomDividerViewForBounds:(CGRect)a3;
- (void)_layoutCardCarouselWithAlignment:(id)a3;
- (void)heroImageController:(id)a3 didFinishDownloadingImageData:(id)a4 forImage:(id)a5 error:(id)a6;
- (void)layoutSubviews;
@end

@implementation PKPaymentSetupHeroView

- (PKPaymentSetupHeroView)initWithContext:(int64_t)a3 heroImageController:(id)a4 heroImages:(id)a5 product:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v31.receiver = self;
  v31.super_class = PKPaymentSetupHeroView;
  v14 = [(PKPaymentSetupHeroView *)&v31 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v15 = v14;
  if (v14)
  {
    v14->_context = a3;
    objc_storeStrong(&v14->_heroImageController, a4);
    [MEMORY[0x1E69B8C10] cardAspectRatio];
    if (v13)
    {
      v17 = 300.0 / v16;
      v18 = [[PKImageSequenceView alloc] initWitImages:0];
      cardCarouselView = v15->_cardCarouselView;
      v15->_cardCarouselView = v18;

      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __81__PKPaymentSetupHeroView_initWithContext_heroImageController_heroImages_product___block_invoke;
      v26[3] = &unk_1E80129F8;
      v27 = v15;
      v28 = v13;
      v29 = 0x4072C00000000000;
      v30 = v17;
      v20 = [v28 digitalCardCachedImage:v26];

      v21 = v27;
    }

    else
    {
      [(PKPaymentHeroImageController *)v15->_heroImageController setDelegate:v15];
      [(PKPaymentSetupHeroView *)v15 _configureHeroCardsFromHeroImages:v12];
      v22 = [PKImageSequenceView alloc];
      v21 = [(PKPaymentSetupHeroView *)v15 _heroImages];
      v23 = [(PKImageSequenceView *)v22 initWitImages:v21];
      v24 = v15->_cardCarouselView;
      v15->_cardCarouselView = v23;
    }

    [(PKPaymentSetupHeroView *)v15 setClipsToBounds:0];
    [(PKPaymentSetupHeroView *)v15 _createSubviews];
  }

  return v15;
}

void __81__PKPaymentSetupHeroView_initWithContext_heroImageController_heroImages_product___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = *(*(a1 + 32) + 464);
    v13[0] = a3;
    v5 = MEMORY[0x1E695DEC8];
    v6 = a3;
    v7 = [v5 arrayWithObjects:v13 count:1];
    [v4 updateImages:v7];
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __81__PKPaymentSetupHeroView_initWithContext_heroImageController_heroImages_product___block_invoke_2;
    v10[3] = &unk_1E8012968;
    v8 = *(a1 + 40);
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v9 = [v8 thumbnailCachedImageForSize:v10 completion:{*(a1 + 48), *(a1 + 56)}];

    v7 = 0;
    v6 = v11;
  }
}

void __81__PKPaymentSetupHeroView_initWithContext_heroImageController_heroImages_product___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 32) + 464);
  if (a3)
  {
    v8[0] = a3;
    v4 = MEMORY[0x1E695DEC8];
    v5 = a3;
    v6 = [v4 arrayWithObjects:v8 count:1];
    [v3 updateImages:v6];
  }

  else
  {
    v7 = [*(a1 + 32) _heroImages];
    [v3 updateImages:?];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (!PKPaymentSetupContextIsBridge())
  {
    if (!PKIsPad())
    {
      if ([(PKPaymentSetupHeroView *)self _isSmallPhone])
      {
        [(PKPaymentSetupHeroView *)self bounds];
        v10 = v9 * 0.560000002;
        [MEMORY[0x1E69B8C10] cardAspectRatio];
        v12 = v10 / v11;
        [(PKPaymentSetupHeroView *)self _phoneTopPadding];
        v14 = v13 + v12;
        [(PKPaymentSetupHeroView *)self _phoneCardHeightInset];
        v8 = v15 + v14;
        goto LABEL_13;
      }

      PKScreenSize();
    }

    PKFloatRoundToPixel();
    v8 = v16;
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = 236.0;
LABEL_13:
    v7 = width;
    goto LABEL_14;
  }

  heroDeviceView = self->_heroDeviceView;

  [(UIView *)heroDeviceView sizeThatFits:width, height];
LABEL_14:
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = PKPaymentSetupHeroView;
  [(PKPaymentSetupHeroView *)&v22 layoutSubviews];
  [(PKPaymentSetupHeroView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_heroDeviceView sizeThatFits:v7 * 0.560000002, 1.79769313e308];
  v12 = v11;
  if (PKPaymentSetupContextIsBridge())
  {
    heroDeviceView = self->_heroDeviceView;
    PKSizeAlignedInRect();
    [(UIView *)heroDeviceView setFrame:?];
    [(UIView *)self->_heroDeviceView cardFrame];
    [(PKImageSequenceView *)self->_cardCarouselView setFrame:?];
    v14 = [(PKImageSequenceView *)self->_cardCarouselView layer];
    PKPaymentStyleApplyCorners();
  }

  else
  {
    if (PKIsPad())
    {
      [(UIView *)self->_heroDeviceView setFrame:v4, v6, v8, v10];
      goto LABEL_9;
    }

    v15 = PKContentAlignmentMake();
    [(PKPaymentSetupHeroView *)self _phoneTopPadding];
    v17 = v10 - v16;
    v18 = self->_heroDeviceView;
    PKSizeAlignedInRect();
    [(UIView *)v18 setFrame:?];
    v14 = objc_alloc_init(MEMORY[0x1E6979398]);
    v19 = [MEMORY[0x1E69DC888] blackColor];
    [v14 setBackgroundColor:{objc_msgSend(v19, "CGColor")}];

    [v14 setFrame:{-50.0, -50.0, v12 + 100.0, v17 + 50.0}];
    v20 = [(UIView *)self->_heroDeviceView layer];
    [v20 setMask:v14];

    [(PKPaymentSetupHeroView *)self _layoutCardCarouselWithAlignment:v15];
    if (self->_faceIDGlyphView)
    {
      [(PKImageSequenceView *)self->_cardCarouselView frame];
      CGRectGetMaxY(v23);
      v24.origin.x = v4;
      v24.origin.y = v6;
      v24.size.width = v8;
      v24.size.height = v10;
      CGRectGetMaxY(v24);
      faceIDGlyphView = self->_faceIDGlyphView;
      PKSizeAlignedInRect();
      [(UIImageView *)faceIDGlyphView setFrame:?];
    }

    [(PKPaymentSetupHeroView *)self _layoutBottomDividerViewForBounds:v4, v6, v8, v10];
  }

LABEL_9:
  if ((PKPaymentSetupContextIsBridge() & 1) == 0)
  {
    [(UIView *)self->_backgroundView frame];
    [(UIView *)self->_backgroundView setFrame:?];
  }
}

- (void)_layoutCardCarouselWithAlignment:(id)a3
{
  [(UIView *)self->_heroDeviceView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(PKPaymentSetupHeroView *)self _phoneCardHeightInset];
  v13 = v12;
  v18.origin.x = v5;
  v18.origin.y = v7;
  v18.size.width = v9;
  v18.size.height = v11;
  CGRectInset(v18, 9.0, v13);
  [MEMORY[0x1E69B8C10] cardAspectRatio];
  cardCarouselView = self->_cardCarouselView;
  PKSizeAlignedInRect();
  [(PKImageSequenceView *)cardCarouselView setFrame:?];
  v16 = [(PKImageSequenceView *)self->_cardCarouselView layer];
  v15 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.1];
  [v15 CGColor];
  PKPaymentStyleApplyCorners();
}

- (void)_layoutBottomDividerViewForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v6 = PKUIPixelLength();
  bottomDividerView = self->_bottomDividerView;

  [(UIView *)bottomDividerView setFrame:0.0, height - v6, width, v6];
}

- (void)heroImageController:(id)a3 didFinishDownloadingImageData:(id)a4 forImage:(id)a5 error:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __91__PKPaymentSetupHeroView_heroImageController_didFinishDownloadingImageData_forImage_error___block_invoke;
  v15[3] = &unk_1E8011C98;
  v16 = v11;
  v17 = v9;
  v18 = v10;
  v19 = self;
  v12 = v10;
  v13 = v9;
  v14 = v11;
  dispatch_async(MEMORY[0x1E69E96A0], v15);
}

void __91__PKPaymentSetupHeroView_heroImageController_didFinishDownloadingImageData_forImage_error___block_invoke(uint64_t a1)
{
  if (!*(a1 + 32) && *(a1 + 40))
  {
    v8 = [*(a1 + 48) identifier];
    if (([*(*(a1 + 56) + 488) containsObject:?] & 1) == 0)
    {
      [*(*(a1 + 56) + 488) addObject:v8];
    }

    v2 = [objc_alloc(MEMORY[0x1E69B8948]) initWithData:*(a1 + 40) scale:PKUIScreenScale()];
    if (v2)
    {
      v3 = *(*(a1 + 56) + 496);
      v4 = [MEMORY[0x1E69DCAB8] imageWithPKImage:v2];
      [v3 setObject:v4 forKey:v8];
    }

    v5 = *(a1 + 56);
    v6 = v5[58];
    v7 = [v5 _heroImages];
    [v6 updateImages:v7];
  }
}

- (id)_heroImages
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_heroImageIdentifiers;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSMutableDictionary *)self->_heroImagesDictionary objectForKey:*(*(&v11 + 1) + 8 * i), v11];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_configureHeroCardsFromHeroImages:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = 0x1E69B8000uLL;
  if ([v4 count])
  {
    [(PKPaymentHeroImageController *)self->_heroImageController downloadImages:v4];
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "No hero card images provided, using defaults.", buf, 2u);
    }

    v7 = [MEMORY[0x1E69B8C10] defaultImages];
    v8 = [v7 mutableCopy];

    v4 = v8;
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__PKPaymentSetupHeroView__configureHeroCardsFromHeroImages___block_invoke;
  aBlock[3] = &unk_1E8012A20;
  v10 = v9;
  v38 = v10;
  v11 = _Block_copy(aBlock);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v12 = v4;
  v13 = [v12 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (!v13)
  {

LABEL_16:
    v18 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v18, OS_LOG_TYPE_DEFAULT, "No hero card images downloaded, using defaults.", buf, 2u);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v19 = [*(v5 + 3088) defaultImages];
    v20 = [v19 countByEnumeratingWithState:&v29 objects:v40 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v30;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v11[2](v11, *(*(&v29 + 1) + 8 * i));
        }

        v21 = [v19 countByEnumeratingWithState:&v29 objects:v40 count:16];
      }

      while (v21);
    }

    goto LABEL_26;
  }

  v14 = v13;
  v15 = 0;
  v16 = *v34;
  do
  {
    for (j = 0; j != v14; ++j)
    {
      if (*v34 != v16)
      {
        objc_enumerationMutation(v12);
      }

      v15 |= (v11[2])(v11, *(*(&v33 + 1) + 8 * j));
    }

    v14 = [v12 countByEnumeratingWithState:&v33 objects:v41 count:16];
  }

  while (v14);

  v5 = 0x1E69B8000;
  if ((v15 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_26:
  objc_storeStrong(&self->_heroImagesDictionary, v9);
  v24 = [v10 allKeys];
  v25 = [v24 pk_shuffledArray];
  v26 = [v25 mutableCopy];
  heroImageIdentifiers = self->_heroImageIdentifiers;
  self->_heroImageIdentifiers = v26;

  v28 = [(PKPaymentHeroImageController *)self->_heroImageController primaryImageIdentifier];
  if (v28)
  {
    [(NSMutableArray *)self->_heroImageIdentifiers removeObject:v28];
    [(NSMutableArray *)self->_heroImageIdentifiers insertObject:v28 atIndex:0];
  }
}

uint64_t __60__PKPaymentSetupHeroView__configureHeroCardsFromHeroImages___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 imageWithScale:PKUIScreenScale()];
  if (v4 && (v5 = [objc_alloc(MEMORY[0x1E69B8948]) initWithData:v4 scale:PKUIScreenScale()]) != 0)
  {
    v6 = v5;
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E69DCAB8] imageWithPKImage:v5];
    v9 = [v3 identifier];
    [v7 setObject:v8 forKey:v9];

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_createSubviews
{
  IsAvailable = PKPearlIsAvailable();
  if (PKPaymentSetupContextIsBridge())
  {
    v4 = objc_alloc_init(PKWatchHeroImageView);
    heroDeviceView = self->_heroDeviceView;
    self->_heroDeviceView = &v4->super;

    [(UIView *)self->_heroDeviceView setContentMode:2];
    [(UIView *)self->_heroDeviceView addSubview:self->_cardCarouselView];
    v6 = 0;
  }

  else
  {
    v7 = PKIsPad();
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"HeroPad"];
      v9 = v8;
      if (IsAvailable)
      {
        [v8 appendString:@"-FaceID"];
      }

      v10 = [v9 stringByAppendingString:@"-Dark"];
      v11 = PKUIDynamicImageNamed(v9, v10);

      v12 = [[PKPhoneHeroImageView alloc] initWithImage:v11];
      v13 = self->_heroDeviceView;
      self->_heroDeviceView = &v12->super;

      [(UIView *)self->_heroDeviceView setContentMode:1];
    }

    else
    {
      v14 = [PKPhoneHeroView alloc];
      v15 = [(PKPhoneHeroView *)v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v16 = self->_heroDeviceView;
      self->_heroDeviceView = v15;

      v17 = self->_heroDeviceView;
      v18 = [MEMORY[0x1E69DC888] systemBackgroundColor];
      [(UIView *)v17 setBackgroundColor:v18];

      if (![(PKPaymentSetupHeroView *)self _isSmallPhone])
      {
        v19 = @"TouchIDIcon";
        if (IsAvailable)
        {
          v19 = @"PearlIDIcon";
        }

        v20 = v19;
        v21 = PKPassKitUIBundle();
        v22 = [v21 URLForResource:v20 withExtension:@"pdf"];

        v23 = objc_alloc(MEMORY[0x1E69DCAE0]);
        v24 = PKUIScreenScale();
        v25 = PKUIImageFromPDF(v22, 40.0, 40.0, v24);
        v26 = [v23 initWithImage:v25];
        faceIDGlyphView = self->_faceIDGlyphView;
        self->_faceIDGlyphView = v26;
      }

      v28 = objc_alloc_init(MEMORY[0x1E69DD250]);
      bottomDividerView = self->_bottomDividerView;
      self->_bottomDividerView = v28;

      v30 = self->_bottomDividerView;
      v9 = [objc_opt_class() assetBackgroundColor];
      [(UIView *)v30 setBackgroundColor:v9];
    }

    v6 = v7 ^ 1;
    v31 = objc_alloc_init(MEMORY[0x1E69DD250]);
    backgroundView = self->_backgroundView;
    self->_backgroundView = v31;

    v33 = self->_backgroundView;
    v34 = [objc_opt_class() assetBackgroundColor];
    [(UIView *)v33 setBackgroundColor:v34];

    [(PKPaymentSetupHeroView *)self addSubview:self->_backgroundView];
  }

  [(PKPaymentSetupHeroView *)self addSubview:self->_heroDeviceView];
  if (self->_faceIDGlyphView)
  {
    [(PKPaymentSetupHeroView *)self addSubview:?];
  }

  if (self->_bottomDividerView)
  {
    [(PKPaymentSetupHeroView *)self addSubview:?];
  }

  if (v6)
  {
    cardCarouselView = self->_cardCarouselView;

    [(PKPaymentSetupHeroView *)self addSubview:cardCarouselView];
  }
}

- (CGSize)_watchCardCarouselSizeForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (PKPaymentSetupContextIsBridge())
  {
    [(UIView *)self->_heroDeviceView sizeThatFits:width, height];
  }

  else
  {
    v8 = PKUIGetMinScreenType();
    v9 = (&unk_1BE114710 + 8 * v8);
    v10 = (&unk_1BE1147B0 + 8 * v8);
    if (v8 >= 0x14)
    {
      v10 = (MEMORY[0x1E695F060] + 8);
      v9 = MEMORY[0x1E695F060];
    }

    v6 = *v9;
    v7 = *v10;
  }

  [(PKPaymentHeroImageController *)self->_heroImageController cardArtSizeForSize:v6, v7];
  v12 = v11;
  v14 = v13;
  if (PKPaymentSetupContextIsBridge())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = self->_heroDeviceView;
      [(UIView *)v15 setNeedsLayout];
      [(UIView *)v15 layoutIfNeeded];
      [(UIView *)v15 watchScreenFrame];
      v12 = v16;

      +[PKBridgeWatchAttributeController heroWatchSize];
      UIRoundToViewScale();
      v14 = v17;
    }
  }

  v18 = v12;
  v19 = v14;
  result.height = v19;
  result.width = v18;
  return result;
}

- (double)_instructionFontSizeForContext:(int64_t)a3
{
  IsAvailable = PKPearlIsAvailable();
  result = 5.0;
  if (IsAvailable)
  {
    return 5.5;
  }

  return result;
}

- (double)_phoneTopPadding
{
  v2 = [(PKPaymentSetupHeroView *)self _isSmallPhone];
  result = 20.0;
  if (v2)
  {
    return 0.0;
  }

  return result;
}

- (double)_phoneCardHeightInset
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  result = 0.0;
  if (isKindOfClass)
  {
    [(UIView *)self->_heroDeviceView deviceCornerRadius];
    return v5 + 5.0;
  }

  return result;
}

@end