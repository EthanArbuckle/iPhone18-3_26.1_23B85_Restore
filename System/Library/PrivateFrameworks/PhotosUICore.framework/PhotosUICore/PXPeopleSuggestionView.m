@interface PXPeopleSuggestionView
- (CGRect)_scaledFaceRect;
- (CGRect)faceRect;
- (PXPeopleSuggestionView)init;
- (PXPeopleSuggestionView)initWithFrame:(CGRect)a3;
- (double)_faceScale;
- (void)_updateDateFieldWithSuggestion:(id)a3;
- (void)_updateSpotlightAnimated:(BOOL)a3;
- (void)_updateSuggestionImageWithAnimatedSpotlight:(BOOL)a3 withCompletion:(id)a4;
- (void)commonInit;
- (void)layoutSubviews;
- (void)setSuggestion:(id)a3 animated:(BOOL)a4 withCompletion:(id)a5;
- (void)viewScaleDidChange;
@end

@implementation PXPeopleSuggestionView

- (CGRect)faceRect
{
  x = self->_faceRect.origin.x;
  y = self->_faceRect.origin.y;
  width = self->_faceRect.size.width;
  height = self->_faceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (double)_faceScale
{
  v3 = [(PXPeopleSuggestionView *)self imageView];
  v4 = [v3 image];
  [v4 size];
  v6 = v5;

  v7 = [(PXPeopleSuggestionView *)self imageView];
  [v7 bounds];
  v9 = v8;

  return v9 / v6;
}

- (CGRect)_scaledFaceRect
{
  [(PXPeopleSuggestionView *)self _faceScale];
  v4 = v3;
  [(PXPeopleSuggestionView *)self faceRect];
  v6 = v4 * v5;
  v8 = v4 * v7;
  v10 = v4 * v9;
  v12 = v4 * v11;
  result.size.height = v12;
  result.size.width = v10;
  result.origin.y = v8;
  result.origin.x = v6;
  return result;
}

- (void)_updateDateFieldWithSuggestion:(id)a3
{
  v10 = a3;
  v4 = +[PXPeopleUISettings sharedInstance];
  v5 = [v4 displayReviewMorePhotosDate];

  if (v10 && v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [v10 px_keyPhotoDate];
    v7 = [(PXPeopleSuggestionView *)self dateFormatter];
    v8 = [v7 stringFromDate:v6];

    v9 = [(PXPeopleSuggestionView *)self dateLabel];
    [v9 setText:v8];
  }

  else
  {
    v6 = [(PXPeopleSuggestionView *)self dateLabel];
    [v6 setText:&stru_1F1741150];
  }
}

- (void)_updateSpotlightAnimated:(BOOL)a3
{
  v3 = a3;
  [(PXPeopleSuggestionView *)self faceRect];
  v56.origin.x = v5;
  v56.origin.y = v6;
  v56.size.width = v7;
  v56.size.height = v8;
  if (!CGRectEqualToRect(*MEMORY[0x1E695F058], v56))
  {
    v9 = [(PXPeopleSuggestionView *)self spotlightLayer];
    [v9 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [(PXPeopleSuggestionView *)self _scaledFaceRect];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v48 = v13;
    v49 = v11;
    v46 = v17;
    v47 = v15;
    if (![(PXPeopleSuggestionView *)self validSpotlight])
    {
      v26 = [MEMORY[0x1E69DC728] bezierPathWithRect:{v11, v13, v15, v17}];
      v27 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{v11 - v15 * 0.5, v13 - v17 * 0.5, v15 + v15, v17 + v17}];
      [v26 appendPath:v27];

      [v9 setPath:{objc_msgSend(v26, "CGPath")}];
      v28 = [(PXPeopleSuggestionView *)self dimView];
      [v28 setAlpha:1.0];
    }

    v53.origin.x = v19;
    v53.origin.y = v21;
    v53.size.width = v23;
    v53.size.height = v25;
    Width = CGRectGetWidth(v53);
    v54.origin.x = v19;
    v54.origin.y = v21;
    v54.size.width = v23;
    v54.size.height = v25;
    Height = CGRectGetHeight(v54);
    if (Width >= Height)
    {
      v31 = Width;
    }

    else
    {
      v31 = Height;
    }

    v32 = v19;
    v33 = v21;
    v34 = v31;
    v55 = CGRectIntegral(*(&v31 - 2));
    x = v55.origin.x;
    y = v55.origin.y;
    v37 = v55.size.width;
    v38 = v55.size.height;
    v39 = [MEMORY[0x1E69DC728] bezierPathWithRect:{v49, v48, v47, v46}];
    v40 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{x, y, v37, v38}];
    [v39 appendPath:v40];

    v41 = [v39 CGPath];
    [MEMORY[0x1E6979518] begin];
    v42 = [MEMORY[0x1E6979318] animationWithKeyPath:@"path"];
    [v42 setFromValue:{objc_msgSend(v9, "path")}];
    [v42 setToValue:v41];
    v43 = 0.33;
    if (!v3)
    {
      v43 = 0.0;
    }

    [v42 setDuration:{v43, *&v46, *&v47, *&v48, *&v49}];
    v44 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
    [v42 setTimingFunction:v44];

    [v42 setRemovedOnCompletion:0];
    [v9 addAnimation:v42 forKey:@"path"];
    [v9 setPath:v41];
    objc_initWeak(&location, self);
    v45 = MEMORY[0x1E6979518];
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __51__PXPeopleSuggestionView__updateSpotlightAnimated___block_invoke;
    v50[3] = &unk_1E774C318;
    objc_copyWeak(&v51, &location);
    [v45 setCompletionBlock:v50];
    [MEMORY[0x1E6979518] commit];
    objc_destroyWeak(&v51);
    objc_destroyWeak(&location);
  }
}

void __51__PXPeopleSuggestionView__updateSpotlightAnimated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setValidSpotlight:1];
}

- (void)_updateSuggestionImageWithAnimatedSpotlight:(BOOL)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = [(PXPeopleSuggestionView *)self superview];
  [v7 frame];
  v9 = v8;
  v11 = v10;

  if (v9 < v11)
  {
    v11 = v9;
  }

  [(PXSmartScaleView *)self displayScale];
  v13 = v12;
  v14 = [(PXPeopleSuggestionView *)self imageView];
  objc_initWeak(&location, self);
  v15 = [(PXPeopleSuggestionView *)self suggestion];
  objc_opt_class();
  v16 = v13 * v11;
  if (objc_opt_isKindOfClass())
  {
    v17 = [[PXPeopleFaceCropFetchOptions alloc] initWithPerson:v15 targetSize:v16 displayScale:v16, v13];
  }

  else
  {
    v18 = v15;
    v19 = [PXPeopleFaceCropFetchOptions alloc];
    v20 = [v18 person];
    v21 = [v18 keyFace];
    v17 = [(PXPeopleFaceCropFetchOptions *)v19 initWithPerson:v20 face:v21 targetSize:v16 displayScale:v16, v13];
  }

  [(PXPeopleFaceCropFetchOptions *)v17 setWantsSmallFaceRect:1];
  [(PXPeopleFaceCropFetchOptions *)v17 setCropFactor:1];
  [(PXPeopleFaceCropFetchOptions *)v17 setCornerStyle:0];
  [(PXPeopleFaceCropFetchOptions *)v17 setShouldCacheResult:0];
  v22 = [(PXPeopleSuggestionView *)self imageRequest];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __85__PXPeopleSuggestionView__updateSuggestionImageWithAnimatedSpotlight_withCompletion___block_invoke;
  v25[3] = &unk_1E7745638;
  v23 = v6;
  v28 = v23;
  objc_copyWeak(&v29, &location);
  v24 = v14;
  v26 = v24;
  v27 = self;
  v30 = a3;
  [v22 requestFaceCropWithOptions:v17 timeout:v25 resultHandler:1.0];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

void __85__PXPeopleSuggestionView__updateSuggestionImageWithAnimatedSpotlight_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    objc_copyWeak(&v10, (a1 + 56));
    *(a1 + 32);
    v5;
    v7 = v6;
    v8 = *(a1 + 48);
    v11 = *(a1 + 64);
    v8;
    px_dispatch_on_main_queue();
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))(v9, 0);
  }
}

void __85__PXPeopleSuggestionView__updateSuggestionImageWithAnimatedSpotlight_withCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));

  if (WeakRetained)
  {
    v30 = objc_loadWeakRetained((a1 + 72));
    [*(a1 + 32) setImage:*(a1 + 40)];
    v3 = [*(a1 + 48) objectForKeyedSubscript:@"PXPeopleContentsRectKey"];
    [v3 CGRectValue];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [*(a1 + 32) layer];
    [v12 setContentsRect:{v5, v7, v9, v11}];

    v13 = [*(a1 + 48) objectForKeyedSubscript:@"PXPeopleSmallFaceRectKey"];
    [v13 CGRectValue];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = *(a1 + 32);
    v23 = [v30 imageView];
    if (v22 == v23 && (v32.origin.x = v15, v32.origin.y = v17, v32.size.width = v19, v32.size.height = v21, !CGRectEqualToRect(v32, *MEMORY[0x1E695F058])))
    {
      [*(a1 + 56) faceRect];
      v34.origin.x = v25;
      v34.origin.y = v26;
      v34.size.width = v27;
      v34.size.height = v28;
      v33.origin.x = v15;
      v33.origin.y = v17;
      v33.size.width = v19;
      v33.size.height = v21;
      v29 = CGRectEqualToRect(v33, v34);

      if (!v29)
      {
        [v30 setFaceRect:{v15, v17, v19, v21}];
        if (*(a1 + 80) == 1)
        {
          [v30 _updateSpotlightAnimated:1];
        }
      }
    }

    else
    {
    }

    v24 = *(a1 + 64);
    if (v24)
    {
      (*(v24 + 16))(v24, 1);
    }
  }
}

- (void)setSuggestion:(id)a3 animated:(BOOL)a4 withCompletion:(id)a5
{
  LODWORD(v6) = a4;
  v9 = a3;
  v10 = a5;
  if (self->_suggestion == v9)
  {
    if (v6)
    {
      [(PXPeopleSuggestionView *)self faceRect];
      v47.origin.x = v26;
      v47.origin.y = v27;
      v47.size.width = v28;
      v47.size.height = v29;
      if (CGRectEqualToRect(*MEMORY[0x1E695F058], v47))
      {
        [(PXPeopleSuggestionView *)self setNeedsSpotlightUpdate:1];
        if (!v10)
        {
          goto LABEL_14;
        }
      }

      else
      {
        [(PXPeopleSuggestionView *)self _updateSpotlightAnimated:1];
        if (!v10)
        {
          goto LABEL_14;
        }
      }

      v10[2](v10, 1);
    }
  }

  else
  {
    v11 = [(PXPeopleSuggestionView *)self imageRequest];
    [v11 cancel];

    objc_storeStrong(&self->_suggestion, a3);
    v12 = [(PXPeopleSuggestionView *)self imageView];
    v13 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [v12 frame];
    [v13 setFrame:?];
    [v13 setContentMode:1];
    [v13 setClipsToBounds:1];
    [v13 setAccessibilityIgnoresInvertColors:1];
    [v13 setAlpha:0.0];
    v14 = [(PXPeopleSuggestionView *)self suggestionView];
    v15 = [(PXPeopleSuggestionView *)self imageView];
    [v14 insertSubview:v13 aboveSubview:v15];

    [(PXPeopleSuggestionView *)self setImageView:v13];
    v16 = [(PXPeopleSuggestionView *)self superview];
    [v16 frame];
    v18 = v17;
    v20 = v19;

    if (v18 < v20)
    {
      v20 = v18;
    }

    [(PXSmartScaleView *)self displayScale];
    v22 = v21;
    v23 = [[PXPersonImageRequest alloc] initWithPerson:v9];
    [(PXPeopleSuggestionView *)self setImageRequest:v23];
    if (PFOSVariantHasInternalUI())
    {
      [(PXPeopleSuggestionView *)self _updateDateFieldWithSuggestion:v9];
    }

    v24 = v22 * v20;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[PXPeopleFaceCropFetchOptions alloc] initWithPerson:v9 targetSize:v24 displayScale:v24, v22];
    }

    else
    {
      v30 = v9;
      v40 = v9;
      v31 = v23;
      v32 = v10;
      v33 = v6;
      v6 = v30;
      v34 = [PXPeopleFaceCropFetchOptions alloc];
      v35 = [(PXPerson *)v6 person];
      [(PXPerson *)v6 keyFace];
      v37 = v36 = v12;

      LOBYTE(v6) = v33;
      v10 = v32;
      v23 = v31;
      v9 = v40;
      v25 = [(PXPeopleFaceCropFetchOptions *)v34 initWithPerson:v35 face:v37 targetSize:v24 displayScale:v24, v22];

      v12 = v36;
    }

    [(PXPeopleFaceCropFetchOptions *)v25 setWantsSmallFaceRect:1, v40];
    [(PXPeopleFaceCropFetchOptions *)v25 setCropFactor:1];
    [(PXPeopleFaceCropFetchOptions *)v25 setCornerStyle:0];
    [(PXPeopleFaceCropFetchOptions *)v25 setShouldCacheResult:0];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __64__PXPeopleSuggestionView_setSuggestion_animated_withCompletion___block_invoke;
    v41[3] = &unk_1E77455E8;
    v42 = v13;
    v43 = v12;
    v44 = self;
    v45 = v10;
    v46 = v6;
    v38 = v12;
    v39 = v13;
    [(PXPersonImageRequest *)v23 requestFaceCropWithOptions:v25 timeout:v41 resultHandler:1.0];
  }

LABEL_14:
}

void __64__PXPeopleSuggestionView_setSuggestion_animated_withCompletion___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    a1[4];
    v5;
    v6;
    a1[5];
    a1[7];
    px_dispatch_on_main_queue();
  }

  v7 = a1[7];
  if (v7)
  {
    v7[2](v7, 0);
  }
}

void __64__PXPeopleSuggestionView_setSuggestion_animated_withCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setImage:*(a1 + 40)];
  v2 = [*(a1 + 48) objectForKeyedSubscript:@"PXPeopleContentsRectKey"];
  [v2 CGRectValue];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [*(a1 + 32) layer];
  [v11 setContentsRect:{v4, v6, v8, v10}];

  v12 = MEMORY[0x1E69DD250];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __64__PXPeopleSuggestionView_setSuggestion_animated_withCompletion___block_invoke_3;
  v35[3] = &unk_1E774C648;
  v36 = *(a1 + 32);
  v30 = MEMORY[0x1E69E9820];
  v31 = 3221225472;
  v32 = __64__PXPeopleSuggestionView_setSuggestion_animated_withCompletion___block_invoke_4;
  v33 = &unk_1E774B308;
  v34 = *(a1 + 56);
  [v12 animateWithDuration:0 delay:v35 options:&v30 animations:0.33 completion:0.0];
  v13 = [*(a1 + 48) objectForKeyedSubscript:{@"PXPeopleSmallFaceRectKey", v30, v31, v32, v33}];
  [v13 CGRectValue];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = *(a1 + 32);
  v23 = [*(a1 + 64) imageView];
  if (v22 == v23 && (v37.origin.x = v15, v37.origin.y = v17, v37.size.width = v19, v37.size.height = v21, !CGRectEqualToRect(v37, *MEMORY[0x1E695F058])))
  {
    [*(a1 + 64) faceRect];
    v39.origin.x = v25;
    v39.origin.y = v26;
    v39.size.width = v27;
    v39.size.height = v28;
    v38.origin.x = v15;
    v38.origin.y = v17;
    v38.size.width = v19;
    v38.size.height = v21;
    v29 = CGRectEqualToRect(v38, v39);

    if (!v29)
    {
      [*(a1 + 64) setFaceRect:{v15, v17, v19, v21}];
      [*(a1 + 64) _updateSpotlightAnimated:*(a1 + 80)];
    }
  }

  else
  {
  }

  v24 = *(a1 + 72);
  if (v24)
  {
    (*(v24 + 16))(v24, 1);
  }
}

- (void)viewScaleDidChange
{
  if ([(PXPeopleSuggestionView *)self validSpotlight])
  {

    [(PXPeopleSuggestionView *)self _updateSuggestionImageWithAnimatedSpotlight:1 withCompletion:0];
  }
}

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = PXPeopleSuggestionView;
  [(PXPeopleSuggestionView *)&v28 layoutSubviews];
  [(PXPeopleSuggestionView *)self bounds];
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  v7 = CGRectGetWidth(v29);
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v8 = CGRectGetHeight(v30);
  if (v7 >= v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  MidX = CGRectGetMidX(v31);
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  MidY = CGRectGetMidY(v32);
  v12 = MidX - v9 * 0.5;
  v13 = floorf(v12);
  *&MidY = MidY - v9 * 0.5;
  v14 = floorf(*&MidY);
  *&MidY = v9;
  v15 = floorf(*&MidY);
  v16 = [(PXPeopleSuggestionView *)self suggestionView];
  [v16 setFrame:{v13, v14, v15, v15}];
  [v16 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [(PXPeopleSuggestionView *)self imageView];
  [v25 setFrame:{v18, v20, v22, v24}];

  v26 = [(PXPeopleSuggestionView *)self dimView];
  [v26 setFrame:{v18, v20, v22, v24}];

  v27 = [(PXPeopleSuggestionView *)self spotlightLayer];
  [v27 setFrame:{v18, v20, v22, v24}];

  if (PFOSVariantHasInternalUI())
  {
    v33.origin.x = v18;
    v33.origin.y = v20;
    v33.size.width = v22;
    v33.size.height = v24;
    [(UILabel *)self->_dateLabel setFrame:CGRectGetMaxX(v33) + -120.0, 0.0, 120.0, 16.0];
  }

  if ([(PXPeopleSuggestionView *)self validSpotlight])
  {
    [(PXPeopleSuggestionView *)self _updateSpotlightAnimated:0];
  }
}

- (PXPeopleSuggestionView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PXPeopleSuggestionView;
  v3 = [(PXPeopleSuggestionView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PXPeopleSuggestionView *)v3 commonInit];
  }

  return v4;
}

- (PXPeopleSuggestionView)init
{
  v5.receiver = self;
  v5.super_class = PXPeopleSuggestionView;
  v2 = [(PXPeopleSuggestionView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PXPeopleSuggestionView *)v2 commonInit];
  }

  return v3;
}

- (void)commonInit
{
  v3 = objc_opt_new();
  suggestionView = self->_suggestionView;
  self->_suggestionView = v3;

  [(PXPeopleSuggestionView *)self addSubview:self->_suggestionView];
  v5 = objc_opt_new();
  imageView = self->_imageView;
  self->_imageView = v5;

  [(UIImageView *)self->_imageView setContentMode:1];
  [(UIImageView *)self->_imageView setClipsToBounds:1];
  [(UIImageView *)self->_imageView setAccessibilityIgnoresInvertColors:1];
  [(UIView *)self->_suggestionView addSubview:self->_imageView];
  v17 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v7 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.5];
  [v17 setBackgroundColor:v7];

  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v17 setAlpha:0.0];
  [v17 setAccessibilityIgnoresInvertColors:1];
  [(PXPeopleSuggestionView *)self setDimView:v17];
  [(UIView *)self->_suggestionView addSubview:v17];
  v8 = [MEMORY[0x1E69794A0] layer];
  [v8 setFillRule:*MEMORY[0x1E69797F8]];
  v9 = [MEMORY[0x1E69DC888] blackColor];
  [v8 setFillColor:{objc_msgSend(v9, "CGColor")}];

  v10 = [v17 layer];
  [v10 setMask:v8];

  [(PXPeopleSuggestionView *)self setSpotlightLayer:v8];
  self->_validSpotlight = 0;
  if (PFOSVariantHasInternalUI())
  {
    v11 = objc_alloc_init(MEMORY[0x1E696AB78]);
    dateFormatter = self->_dateFormatter;
    self->_dateFormatter = v11;

    [(NSDateFormatter *)self->_dateFormatter setDateFormat:@"MM/dd/yyyy"];
    v13 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US_POSIX"];
    [(NSDateFormatter *)self->_dateFormatter setLocale:v13];

    v14 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    dateLabel = self->_dateLabel;
    self->_dateLabel = v14;

    v16 = [MEMORY[0x1E69DC888] redColor];
    [(UILabel *)self->_dateLabel setTextColor:v16];

    [(PXPeopleSuggestionView *)self addSubview:self->_dateLabel];
  }

  [(PXPeopleSuggestionView *)self setClipsToBounds:1];
}

@end