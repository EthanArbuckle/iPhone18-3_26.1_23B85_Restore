@interface PXLivePhotoTrimScrubberLoupeView
- (CGRect)_loupeFrameWithBounds:(CGRect)a3;
- (PXLivePhotoTrimScrubberLoupeView)initWithCoder:(id)a3;
- (PXLivePhotoTrimScrubberLoupeView)initWithFrame:(CGRect)a3 forceDarkUserInterfaceStyle:(BOOL)a4;
- (id)_collapsedPathForBounds:(CGRect)a3;
- (id)_expandedPathForBounds:(CGRect)a3 needsCutout:(BOOL)a4;
- (id)_transitionPathForBounds:(CGRect)a3 needsCutout:(BOOL)a4;
- (void)_PXLivePhotoTrimScrubberLoupeView_commonInit;
- (void)_extractImageFromImageRequest:(id)a3;
- (void)_invalidateImage;
- (void)_presentImage:(id)a3;
- (void)_setPlayheadStyle:(unint64_t)a3 animate:(BOOL)a4;
- (void)_updateImageIfNeeded;
- (void)_updatePlayheadBorderAnimate:(BOOL)a3;
- (void)_updatePlayheadIfNeeded;
- (void)layoutSubviews;
- (void)setAsset:(id)a3 videoComposition:(id)a4;
- (void)setFrame:(CGRect)a3;
- (void)setFrameTime:(id *)a3;
- (void)setPlayerView:(id)a3;
- (void)setShowLoupePlayerAnimate:(BOOL)a3;
- (void)setShowLoupeThumbnailWithFrameTime:(id *)a3 animate:(BOOL)a4;
- (void)setShowNeedleWithWidth:(double)a3 animate:(BOOL)a4;
- (void)setShowPlayerView:(BOOL)a3;
@end

@implementation PXLivePhotoTrimScrubberLoupeView

- (void)_updatePlayheadBorderAnimate:(BOOL)a3
{
  v3 = a3;
  v63[3] = *MEMORY[0x1E69E9840];
  [(PXLivePhotoTrimScrubberLoupeView *)self bounds];
  if (!CGRectIsEmpty(v64))
  {
    v5 = [(PXLivePhotoTrimScrubberLoupeView *)self playheadStyle];
    [(PXLivePhotoTrimScrubberLoupeView *)self bounds];
    v7 = v6;
    [(PXLivePhotoTrimScrubberLoupeView *)self aspectRatio];
    v9 = v8 * v7;
    [(PXLivePhotoTrimScrubberLoupeView *)self verticalInset];
    v11 = v10;
    v65.origin.x = 0.0;
    v65.origin.y = 0.0;
    v65.size.width = v9;
    v65.size.height = v7;
    v66 = CGRectInset(v65, 0.0, v11);
    x = v66.origin.x;
    y = v66.origin.y;
    width = v66.size.width;
    height = v66.size.height;
    v16 = 0.5;
    if (v5 != 2)
    {
      v16 = 0.0;
    }

    [(CAShapeLayer *)self->_borderLayer setLineWidth:v16];
    if (v5 == 2)
    {
      v17 = [(PXLivePhotoTrimScrubberLoupeView *)self _collapsedPathForBounds:x, y, width, height];
      v18 = [(PXLivePhotoTrimScrubberLoupeView *)self _collapsedPathForBounds:x, y, width, height];
      v19 = height;
      v20 = width;
      v21 = y;
      v22 = x;
    }

    else
    {
      v17 = [(PXLivePhotoTrimScrubberLoupeView *)self _expandedPathForBounds:1 needsCutout:x, y, width, height];
      [(PXLivePhotoTrimScrubberLoupeView *)self _loupeFrameWithBounds:0.0, 0.0, v9, v7];
      v22 = v23;
      v21 = v24;
      v20 = v25;
      v19 = v26;
      v18 = [(PXLivePhotoTrimScrubberLoupeView *)self _expandedPathForBounds:0 needsCutout:?];
    }

    v27 = [v17 CGPath];
    v28 = [v18 CGPath];
    v29 = v28;
    if (v3)
    {
      v51 = v19;
      v53 = v28;
      [MEMORY[0x1E6979518] animationDuration];
      v52 = v30;
      v31 = *MEMORY[0x1E6979ED8];
      v57 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
      v56 = [MEMORY[0x1E69793D0] functionWithName:v31];
      v32 = [MEMORY[0x1E6979390] animationWithKeyPath:@"path"];
      [v32 setRemovedOnCompletion:0];
      v33 = *MEMORY[0x1E69797E0];
      [v32 setFillMode:*MEMORY[0x1E69797E0]];
      v34 = dbl_1A5381200[v5 == 2];
      if (v5 == 2)
      {
        [(PXLivePhotoTrimScrubberLoupeView *)self _expandedPathForBounds:1 needsCutout:x, y, width, height];
      }

      else
      {
        [(PXLivePhotoTrimScrubberLoupeView *)self _collapsedPathForBounds:x, y, width, height];
      }
      v35 = ;
      [(PXLivePhotoTrimScrubberLoupeView *)self _transitionPathForBounds:1 needsCutout:x, y, width, height];
      v54 = v55 = v35;
      v63[0] = [v35 CGPath];
      v63[1] = [v54 CGPath];
      v63[2] = v27;
      v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:3];
      [v32 setValues:v36];

      [v32 setDuration:v52];
      v62[0] = &unk_1F190E5B8;
      v37 = [MEMORY[0x1E696AD98] numberWithDouble:v34];
      v62[1] = v37;
      v62[2] = &unk_1F190E5C8;
      v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:3];
      [v32 setKeyTimes:v38];

      v61[0] = v57;
      v61[1] = v56;
      v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:2];
      [v32 setTimingFunctions:v39];

      borderLayer = self->_borderLayer;
      v41 = [v32 keyPath];
      [(CAShapeLayer *)borderLayer addAnimation:v32 forKey:v41];

      v42 = [MEMORY[0x1E6979390] animationWithKeyPath:@"path"];
      [v42 setRemovedOnCompletion:0];
      [v42 setFillMode:v33];
      if (v5 == 2)
      {
        [(PXLivePhotoTrimScrubberLoupeView *)self _expandedPathForBounds:0 needsCutout:v22, v21, v20, v51];
      }

      else
      {
        [(PXLivePhotoTrimScrubberLoupeView *)self _collapsedPathForBounds:v22, v21, v20, v51];
      }
      v43 = ;
      v44 = [(PXLivePhotoTrimScrubberLoupeView *)self _transitionPathForBounds:0 needsCutout:v22, v21, v20, v51];
      v60[0] = [v43 CGPath];
      v60[1] = [v44 CGPath];
      v60[2] = v53;
      v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:3];
      [v42 setValues:v45];

      [v42 setDuration:v52];
      v59[0] = &unk_1F190E5B8;
      v46 = [MEMORY[0x1E696AD98] numberWithDouble:v34];
      v59[1] = v46;
      v59[2] = &unk_1F190E5C8;
      v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:3];
      [v42 setKeyTimes:v47];

      v58[0] = v57;
      v58[1] = v56;
      v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];
      [v42 setTimingFunctions:v48];

      maskLayer = self->_maskLayer;
      v50 = [v42 keyPath];
      [(CAShapeLayer *)maskLayer addAnimation:v42 forKey:v50];
    }

    else
    {
      [(CAShapeLayer *)self->_borderLayer removeAllAnimations];
      [(CAShapeLayer *)self->_maskLayer removeAllAnimations];
      [(CAShapeLayer *)self->_borderLayer setPath:v27];
      [(CAShapeLayer *)self->_maskLayer setPath:v29];
    }
  }
}

- (void)_updatePlayheadIfNeeded
{
  if (!self->_playheadIsValid)
  {
    self->_playheadIsValid = 1;
    [(PXLivePhotoTrimScrubberLoupeView *)self _updatePlayheadBorderAnimate:0];
  }
}

- (id)_transitionPathForBounds:(CGRect)a3 needsCutout:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:a3.origin.x cornerRadius:{a3.origin.y, 4.5, a3.size.height, 2.0}];
  [v9 closePath];
  if (v4)
  {
    v20.size.width = 4.5;
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.height = height;
    v21 = CGRectInset(v20, 2.2, 3.0);
    v10 = v21.origin.x;
    v11 = v21.origin.y;
    width = v21.size.width;
    v13 = v21.size.height;
    v14 = MEMORY[0x1E69DC728];
    [(PXLivePhotoTrimScrubberLoupeView *)self innerCornerRadius];
    v16 = [v14 bezierPathWithRoundedRect:v10 cornerRadius:{v11, width, v13, v15}];
    v17 = [v16 bezierPathByReversingPath];

    [v9 appendPath:v17];
  }

  return v9;
}

- (id)_expandedPathForBounds:(CGRect)a3 needsCutout:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = MEMORY[0x1E69DC728];
  [(PXLivePhotoTrimScrubberLoupeView *)self outerCornerRadius];
  v12 = [v10 bezierPathWithRoundedRect:x cornerRadius:{y, width, height, v11}];
  [v12 closePath];
  if (v4)
  {
    [(PXLivePhotoTrimScrubberLoupeView *)self _loupeFrameWithBounds:x, y, width, height];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = MEMORY[0x1E69DC728];
    [(PXLivePhotoTrimScrubberLoupeView *)self innerCornerRadius];
    v23 = [v21 bezierPathWithRoundedRect:v14 cornerRadius:{v16, v18, v20, v22}];
    v24 = [v23 bezierPathByReversingPath];
    [v12 appendPath:v24];
  }

  return v12;
}

- (id)_collapsedPathForBounds:(CGRect)a3
{
  height = a3.size.height;
  y = a3.origin.y;
  x = a3.origin.x;
  if (self->_needleWidth >= 0.1)
  {
    needleWidth = self->_needleWidth;
  }

  else
  {
    needleWidth = 0.1;
  }

  v7 = MEMORY[0x1E69DC728];
  [(PXLivePhotoTrimScrubberLoupeView *)self innerCornerRadius];
  v9 = [v7 bezierPathWithRoundedRect:x cornerRadius:{y, needleWidth, height, v8}];
  [v9 closePath];

  return v9;
}

- (void)_presentImage:(id)a3
{
  v4 = a3;
  imageView = self->_imageView;
  if (!imageView)
  {
    v6 = 0;
    goto LABEL_5;
  }

  if (([(UIImageView *)imageView isHidden]& 1) == 0)
  {
    v6 = self->_imageView;
LABEL_5:
    v7 = v6;
    v8 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v4];
    [v8 setContentMode:2];
    [(UIView *)self->_container addSubview:v8];
    [(UIView *)self->_container bounds];
    [v8 setFrame:?];
    objc_storeStrong(&self->_imageView, v8);
    [v8 setAlpha:0.0];
    v9 = MEMORY[0x1E69DD250];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __50__PXLivePhotoTrimScrubberLoupeView__presentImage___block_invoke;
    v14[3] = &unk_1E774A1B8;
    v14[4] = self;
    v15 = v8;
    v16 = v7;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __50__PXLivePhotoTrimScrubberLoupeView__presentImage___block_invoke_2;
    v12[3] = &unk_1E774B308;
    v13 = v16;
    v10 = v16;
    v11 = v8;
    [v9 animateWithDuration:v14 animations:v12 completion:0.25];
  }
}

void __50__PXLivePhotoTrimScrubberLoupeView__presentImage___block_invoke(uint64_t a1, double a2)
{
  LODWORD(a2) = 1.0;
  [*(*(a1 + 32) + 480) setOpacity:a2];
  [*(a1 + 40) setAlpha:1.0];
  v3 = [*(a1 + 40) image];

  if (!v3)
  {
    v4 = *(a1 + 48);

    [v4 setAlpha:0.0];
  }
}

- (void)_extractImageFromImageRequest:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v35 = 0uLL;
  v36 = 0;
  if (v4)
  {
    [v4 sourceTime];
  }

  [v4 imageSize];
  v7 = v6;
  v9 = v8;
  [v4 scale];
  if (v10 >= 1.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1.0;
  }

  if (v7 >= v9)
  {
    v12 = v7;
  }

  else
  {
    v12 = v9;
  }

  v13 = fmin(v12 * v11, 1024.0);
  v14 = objc_alloc(MEMORY[0x1E6987E68]);
  v15 = [v4 asset];
  v16 = [v14 initWithAsset:v15];

  v17 = [v4 videoComposition];
  [v16 setVideoComposition:v17];

  [v16 setMaximumSize:{v13, v13}];
  v18 = MEMORY[0x1E6960CC0];
  v33 = *MEMORY[0x1E6960CC0];
  v34 = *(MEMORY[0x1E6960CC0] + 16);
  [v16 setRequestedTimeToleranceBefore:&v33];
  v33 = *v18;
  v34 = *(v18 + 2);
  [v16 setRequestedTimeToleranceAfter:&v33];
  [v16 setAppliesPreferredTrackTransform:1];
  v19 = [v16 customVideoCompositor];
  NSClassFromString(&cfstr_Nuvideoplaybac.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v21 = [v16 customVideoCompositor];
    [v21 setValue:@"PXLivePhotoTrimScrubberLoupeView" forKey:@"label"];
  }

  v32 = 0;
  v33 = v35;
  v34 = v36;
  v22 = [MEMORY[0x1E69C0708] copyCGImageFromImageGenerator:v16 atTime:&v33 actualTime:0 error:&v32];
  v23 = v32;
  if (v22)
  {
    ColorSpace = CGImageGetColorSpace(v22);
    if (CGColorSpaceUsesITUR_2100TF(ColorSpace))
    {
      v25 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
      if (v25)
      {
        v26 = v25;
        CopyWithColorSpace = CGImageCreateCopyWithColorSpace(v22, v25);
        CFRelease(v22);
        CFRelease(v26);
        v22 = CopyWithColorSpace;
      }
    }
  }

  v28 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v22 scale:0 orientation:v11];
  CGImageRelease(v22);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PXLivePhotoTrimScrubberLoupeView__extractImageFromImageRequest___block_invoke;
  block[3] = &unk_1E774C620;
  block[4] = self;
  v31 = v28;
  v29 = v28;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_autoreleasePoolPop(v5);
}

- (void)_updateImageIfNeeded
{
  if (!self->_imageIsValid)
  {
    imageView = self->_imageView;
    if ((!imageView || ([(UIImageView *)imageView isHidden]& 1) == 0) && self->_playheadStyle != 2)
    {
      self->_imageIsValid = 1;
      *location = *&self->_frameTime.value;
      epoch = self->_frameTime.epoch;
      v4 = objc_alloc_init(_PXLivePhotoTrimScrubberLoupeViewImageRequest);
      [(_PXLivePhotoTrimScrubberLoupeViewImageRequest *)v4 setAsset:self->_asset];
      [(_PXLivePhotoTrimScrubberLoupeViewImageRequest *)v4 setVideoComposition:self->_videoComposition];
      [(_PXLivePhotoTrimScrubberLoupeViewImageRequest *)v4 setSourceTime:location];
      [(PXLivePhotoTrimScrubberLoupeView *)self bounds];
      v6 = v5;
      [(PXLivePhotoTrimScrubberLoupeView *)self aspectRatio];
      [(PXLivePhotoTrimScrubberLoupeView *)self _loupeFrameWithBounds:0.0, 0.0, v7 * v6, v6];
      v9 = v8;
      v11 = v10;
      [(PXLivePhotoTrimScrubberLoupeView *)self px_screenScale];
      v13 = v12 * v9;
      v14 = v12 * v11;
      [(_PXLivePhotoTrimScrubberLoupeViewImageRequest *)v4 setScale:?];
      [(_PXLivePhotoTrimScrubberLoupeViewImageRequest *)v4 setImageSize:v13, v14];
      v15 = [(_PXLivePhotoTrimScrubberLoupeViewImageRequest *)v4 isValid];
      currentImageRequest = self->_currentImageRequest;
      if (v15)
      {
        if (![(_PXLivePhotoTrimScrubberLoupeViewImageRequest *)v4 isEqual:currentImageRequest])
        {
          objc_storeStrong(&self->_currentImageRequest, v4);
          objc_initWeak(location, self);
          workQueue = self->_workQueue;
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __56__PXLivePhotoTrimScrubberLoupeView__updateImageIfNeeded__block_invoke;
          v19[3] = &unk_1E774B248;
          objc_copyWeak(&v21, location);
          v20 = v4;
          dispatch_async(workQueue, v19);

          objc_destroyWeak(&v21);
          objc_destroyWeak(location);
        }
      }

      else
      {
        self->_currentImageRequest = 0;

        v18 = [(UIImageView *)self->_imageView image];

        if (v18)
        {
          [(PXLivePhotoTrimScrubberLoupeView *)self _presentImage:0];
        }
      }
    }
  }
}

void __56__PXLivePhotoTrimScrubberLoupeView__updateImageIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _extractImageFromImageRequest:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_invalidateImage
{
  self->_imageIsValid = 0;
  if (self->_playheadStyle != 2)
  {
    [(PXLivePhotoTrimScrubberLoupeView *)self setNeedsLayout];
  }
}

- (void)setPlayerView:(id)a3
{
  v5 = a3;
  if (self->_playerView != v5)
  {
    v8 = v5;
    v6 = self->_container;
    if (v8)
    {
      [(UIView *)v6 addSubview:v8];
      [(UIView *)v6 bringSubviewToFront:v8];
    }

    v7 = [(UIView *)self->_playerView superview];

    if (v7 == v6)
    {
      [(UIView *)self->_playerView removeFromSuperview];
    }

    objc_storeStrong(&self->_playerView, a3);
    [(PXLivePhotoTrimScrubberLoupeView *)self setNeedsLayout];

    v5 = v8;
  }
}

- (CGRect)_loupeFrameWithBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16 = CGRectInset(a3, 3.0, 3.0);
  v7 = v16.origin.x;
  v8 = v16.origin.y;
  v9 = v16.size.width;
  v10 = v16.size.height;
  IsEmpty = CGRectIsEmpty(v16);
  if (IsEmpty)
  {
    v12 = height;
  }

  else
  {
    v12 = v10;
  }

  if (IsEmpty)
  {
    v13 = width;
  }

  else
  {
    v13 = v9;
  }

  if (IsEmpty)
  {
    v14 = y;
  }

  else
  {
    v14 = v8;
  }

  if (IsEmpty)
  {
    v15 = x;
  }

  else
  {
    v15 = v7;
  }

  result.size.height = v12;
  result.size.width = v13;
  result.origin.y = v14;
  result.origin.x = v15;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = PXLivePhotoTrimScrubberLoupeView;
  [(PXLivePhotoTrimScrubberLoupeView *)&v13 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(PXLivePhotoTrimScrubberLoupeView *)self bounds];
  v5 = v4;
  [(PXLivePhotoTrimScrubberLoupeView *)self aspectRatio];
  v7 = v6 * v5;
  [(PXLivePhotoTrimScrubberLoupeView *)self bounds];
  v9 = v8;
  [(UIView *)self->_container frame];
  if (v7 != v11 || v9 != v10)
  {
    [(UIView *)self->_container setFrame:0.0, 0.0, v7, v9];
    [(UIView *)self->_container bounds];
    [(UIView *)self->_playerView setFrame:?];
    [(UIView *)self->_container bounds];
    [(UIImageView *)self->_imageView setFrame:?];
    [(PXLivePhotoTrimScrubberLoupeView *)self _invalidatePlayhead];
  }
}

- (void)setAsset:(id)a3 videoComposition:(id)a4
{
  v10 = a3;
  v7 = a4;
  if (self->_asset == v10)
  {
    v8 = 0;
  }

  else
  {
    v8 = [(AVAsset *)v10 isEqual:?]^ 1;
  }

  if (self->_videoComposition == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = [(AVVideoComposition *)v7 isEqual:?]^ 1;
  }

  if ((v8 | v9))
  {
    objc_storeStrong(&self->_asset, a3);
    objc_storeStrong(&self->_videoComposition, a4);
    [(PXLivePhotoTrimScrubberLoupeView *)self _invalidateImage];
  }
}

- (void)_setPlayheadStyle:(unint64_t)a3 animate:(BOOL)a4
{
  playheadStyle = self->_playheadStyle;
  if (playheadStyle != a3)
  {
    v5 = a4;
    v7 = a3 != 1;
    v8 = playheadStyle | a3;
    self->_playheadStyle = a3;
    [(PXLivePhotoTrimScrubberLoupeView *)self setShowPlayerView:a3 - 1 < 2];
    v9 = [(PXLivePhotoTrimScrubberLoupeView *)self playerView];
    [v9 setHidden:v7];

    if (v8 >= 2)
    {

      [(PXLivePhotoTrimScrubberLoupeView *)self _updatePlayheadBorderAnimate:v5];
    }
  }
}

- (void)setShowLoupePlayerAnimate:(BOOL)a3
{
  if (self->_playheadStyle != 1)
  {
    [(PXLivePhotoTrimScrubberLoupeView *)self _setPlayheadStyle:1 animate:a3];
  }
}

- (void)setFrameTime:(id *)a3
{
  var3 = a3->var3;
  *&self->_frameTime.value = *&a3->var0;
  self->_frameTime.epoch = var3;
  [(PXLivePhotoTrimScrubberLoupeView *)self _invalidateImage];
}

- (void)setShowLoupeThumbnailWithFrameTime:(id *)a3 animate:(BOOL)a4
{
  if (self->_playheadStyle)
  {
    v4 = a4;
    v6 = *a3;
    [(PXLivePhotoTrimScrubberLoupeView *)self setFrameTime:&v6];
    [(PXLivePhotoTrimScrubberLoupeView *)self _setPlayheadStyle:0 animate:v4];
  }
}

- (void)setShowNeedleWithWidth:(double)a3 animate:(BOOL)a4
{
  if (self->_playheadStyle != 2 || self->_needleWidth != a3)
  {
    self->_needleWidth = a3;
    [(PXLivePhotoTrimScrubberLoupeView *)self _setPlayheadStyle:2 animate:a4];
  }
}

- (void)setShowPlayerView:(BOOL)a3
{
  imageView = self->_imageView;
  if (a3)
  {
    [(UIImageView *)imageView setHidden:1];
    v5 = self->_imageView;

    [(UIImageView *)v5 setImage:0];
  }

  else
  {
    [(UIImageView *)imageView setHidden:?];

    [(PXLivePhotoTrimScrubberLoupeView *)self _invalidateImage];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PXLivePhotoTrimScrubberLoupeView;
  [(PXLivePhotoTrimScrubberLoupeView *)&v3 layoutSubviews];
  [(PXLivePhotoTrimScrubberLoupeView *)self _updateImageIfNeeded];
  [(PXLivePhotoTrimScrubberLoupeView *)self _updatePlayheadIfNeeded];
}

- (void)_PXLivePhotoTrimScrubberLoupeView_commonInit
{
  v3 = [MEMORY[0x1E69794A0] layer];
  borderLayer = self->_borderLayer;
  self->_borderLayer = v3;

  v5 = [MEMORY[0x1E69DC888] whiteColor];
  -[CAShapeLayer setFillColor:](self->_borderLayer, "setFillColor:", [v5 CGColor]);

  [(CAShapeLayer *)self->_borderLayer setLineCap:*MEMORY[0x1E6979E78]];
  LODWORD(v6) = 1.0;
  [(CAShapeLayer *)self->_borderLayer setOpacity:v6];
  [(CAShapeLayer *)self->_borderLayer setZPosition:10.0];
  v7 = [MEMORY[0x1E69DC888] grayColor];
  -[CAShapeLayer setStrokeColor:](self->_borderLayer, "setStrokeColor:", [v7 CGColor]);

  v8 = [MEMORY[0x1E69DC888] blackColor];
  -[CAShapeLayer setShadowColor:](self->_borderLayer, "setShadowColor:", [v8 CGColor]);

  LODWORD(v9) = 1058642330;
  [(CAShapeLayer *)self->_borderLayer setShadowOpacity:v9];
  [(CAShapeLayer *)self->_borderLayer setShadowOffset:0.0, 0.0];
  v10 = [(PXLivePhotoTrimScrubberLoupeView *)self layer];
  [v10 addSublayer:self->_borderLayer];

  v11 = [MEMORY[0x1E69794A0] layer];
  maskLayer = self->_maskLayer;
  self->_maskLayer = v11;

  if (self->_forceDarkUserInterfaceStyle)
  {
    [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemBackgroundColor];
  }
  v13 = ;
  -[CAShapeLayer setFillColor:](self->_maskLayer, "setFillColor:", [v13 CGColor]);

  LODWORD(v14) = 1.0;
  [(CAShapeLayer *)self->_maskLayer setOpacity:v14];
  [(CAShapeLayer *)self->_maskLayer setZPosition:10.0];
  v15 = dispatch_queue_create("com.apple.livephotoloupe.work", 0);
  workQueue = self->_workQueue;
  self->_workQueue = v15;

  self->_outerCornerRadius = 3.0;
  self->_innerCornerRadius = 0.0;
  v17 = objc_alloc_init(MEMORY[0x1E69DD250]);
  container = self->_container;
  self->_container = v17;

  [(PXLivePhotoTrimScrubberLoupeView *)self addSubview:self->_container];
  v19 = self->_maskLayer;
  v20 = [(UIView *)self->_container layer];
  [v20 setMask:v19];

  v21 = [(UIView *)self->_container layer];
  [v21 setMasksToBounds:1];

  [(PXLivePhotoTrimScrubberLoupeView *)self outerCornerRadius];
  v23 = v22;
  v24 = [(UIView *)self->_container layer];
  [v24 setCornerRadius:v23];

  self->_aspectRatio = 1.0;
  self->_needleWidth = 1.0;
}

- (PXLivePhotoTrimScrubberLoupeView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PXLivePhotoTrimScrubberLoupeView;
  v3 = [(PXLivePhotoTrimScrubberLoupeView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    v3->_forceDarkUserInterfaceStyle = 1;
    [(PXLivePhotoTrimScrubberLoupeView *)v3 _PXLivePhotoTrimScrubberLoupeView_commonInit];
  }

  return v4;
}

- (PXLivePhotoTrimScrubberLoupeView)initWithFrame:(CGRect)a3 forceDarkUserInterfaceStyle:(BOOL)a4
{
  v8.receiver = self;
  v8.super_class = PXLivePhotoTrimScrubberLoupeView;
  v5 = [(PXLivePhotoTrimScrubberLoupeView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_forceDarkUserInterfaceStyle = a4;
    [(PXLivePhotoTrimScrubberLoupeView *)v5 _PXLivePhotoTrimScrubberLoupeView_commonInit];
  }

  return v6;
}

@end