@interface TLKImageView
+ (BOOL)checkTransparencyForImageAtCorners:(CGImage *)a3 shouldCropToCircle:(BOOL)a4;
+ (BOOL)hasTransparencyAtPoint:(CGPoint)a3 forCGImage:(CGImage *)a4;
+ (BOOL)imageIsProbablyOpaque:(id)a3 tlkImage:(id)a4;
+ (id)_imageViewDispatchQueue;
- (BOOL)_useCompactBadgePlatter;
- (CGRect)aspectRatioPreservedFrameForSize:(CGSize)a3;
- (CGSize)constrainedSizeForImageSize:(CGSize)a3 fittingSize:(CGSize)a4;
- (CGSize)intrinsicContentSize;
- (CGSize)naturalSizeForSize:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSSymbolContentTransition)transition;
- (TLKImageView)init;
- (TLKImageViewDelegate)delegate;
- (UIEdgeInsets)effectiveAlignmentRectInsets;
- (double)cornerRadiusForSize:(CGSize)a3 roundingStyle:(unint64_t)a4;
- (double)effectiveBaselineOffsetFromBottom;
- (double)effectiveFirstBaselineOffsetFromTop;
- (double)sizeScale;
- (void)_updateCircleViewLayout;
- (void)animateTransitionToImage:(id)a3;
- (void)applyCornerRoundingStyle:(unint64_t)a3 toView:(id)a4;
- (void)didMoveToWindow;
- (void)invalidateIntrinsicContentSizeIfNecessary;
- (void)layoutSubviews;
- (void)setAlignment:(unint64_t)a3;
- (void)setDisableCornerRounding:(BOOL)a3;
- (void)setOverrideColor:(id)a3;
- (void)setProminence:(unint64_t)a3;
- (void)setSymbolFont:(id)a3;
- (void)setSymbolScale:(int64_t)a3;
- (void)setSymbolWeight:(int64_t)a3;
- (void)setTlkImage:(id)a3;
- (void)setUseButtonColoring:(BOOL)a3;
- (void)tlk_updateForAppearance:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateShadow;
- (void)updateSizeAndLayout;
- (void)updateSymbolConfiguration;
- (void)updateWithUIImage:(id)a3 animateFadeIn:(BOOL)a4 appearance:(id)a5 isTemplate:(BOOL)a6;
@end

@implementation TLKImageView

- (UIEdgeInsets)effectiveAlignmentRectInsets
{
  if ([(TLKImageView *)self ignoreImageAlignmentRectInsets])
  {
    v21.receiver = self;
    v21.super_class = TLKImageView;
    [(TLKImageView *)&v21 effectiveAlignmentRectInsets];
  }

  else
  {
    v7 = [(TLKImageView *)self imageView];
    [v7 alignmentRectInsets];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v20.receiver = self;
    v20.super_class = TLKImageView;
    [(TLKImageView *)&v20 effectiveAlignmentRectInsets];
    v3 = v9 + v16;
    v4 = v11 + v17;
    v5 = v13 + v18;
    v6 = v15 + v19;
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)layoutSubviews
{
  v76.receiver = self;
  v76.super_class = TLKImageView;
  [(TLKView *)&v76 layoutSubviews];
  v3 = [(TLKImageView *)self tlkImage];
  [v3 size];
  v5 = v4;
  v7 = v6;

  v8 = *MEMORY[0x1E695F060];
  v9 = *(MEMORY[0x1E695F060] + 8);
  v10 = v7 == v9 && v5 == *MEMORY[0x1E695F060];
  if (v10)
  {
    [(TLKImageView *)self bounds];
    v5 = v11;
    v7 = v12;
  }

  v13 = [(TLKImageView *)self imageView];
  v14 = [v13 image];

  [v14 size];
  v16 = v15;
  v18 = v17;
  if (v10 && [TLKImage imageIsSymbol:v14])
  {
    [(TLKImageView *)self bounds];
    [(TLKImageView *)self naturalSizeForSize:v19, v20];
    v16 = v21;
    v18 = v22;
  }

  else if (v16 == v8 && v18 == v9)
  {
    v24 = [(TLKImageView *)self tlkImage];
    [v24 size];
    v16 = v25;
    v18 = v26;
  }

  v27 = [(TLKImageView *)self alignmentIsAspectFill];
  if (v27)
  {
    [(TLKImageView *)self bounds];
  }

  else
  {
    [(TLKImageView *)self aspectRatioPreservedFrameForSize:v5, v7];
  }

  v32 = v28;
  v33 = v29;
  v34 = v30;
  v35 = v31;
  v36 = [(TLKImageView *)self placeholderView];
  [v36 setFrame:{v32, v33, v34, v35}];

  if (v27)
  {
    [(TLKImageView *)self bounds];
  }

  else
  {
    [(TLKImageView *)self aspectRatioPreservedFrameForSize:v16, v18];
  }

  v41 = v37;
  v42 = v38;
  v43 = v39;
  v44 = v40;
  if ([(TLKImageView *)self alignment]== 3)
  {
    if (v16 == 0.0)
    {
      v45 = 0.0;
    }

    else
    {
      v77.origin.x = v41;
      v77.origin.y = v42;
      v77.size.width = v43;
      v77.size.height = v44;
      v45 = v18 / v16 * CGRectGetWidth(v77);
    }

    v78.origin.x = v41;
    v78.origin.y = v42;
    v78.size.width = v43;
    v78.size.height = v44;
    Height = CGRectGetHeight(v78);
    if (v45 >= Height)
    {
      v44 = v45;
    }

    else
    {
      v44 = Height;
    }
  }

  v47 = [(TLKImageView *)self shadowContainer];
  [v47 setFrame:{v41, v42, v43, v44}];

  v48 = [(TLKImageView *)self shadowContainer];
  [v48 bounds];
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v57 = [(TLKImageView *)self imageView];
  [v57 setFrame:{v50, v52, v54, v56}];

  v58 = [(TLKImageView *)self tlkImage];
  v59 = [v58 cornerRoundingStyle];

  if (![(TLKImageView *)self disableCornerRounding])
  {
    v60 = [(TLKImageView *)self placeholderView];
    [(TLKImageView *)self applyCornerRoundingStyle:v59 toView:v60];

    v61 = [(TLKImageView *)self imageView];
    [(TLKImageView *)self applyCornerRoundingStyle:v59 toView:v61];
  }

  [(TLKImageView *)self updateShadow];
  v62 = [(TLKImageView *)self _useCompactBadgePlatter];
  v63 = 20.0;
  if (+[TLKUtilities isMacOS])
  {
    v64 = [(TLKImageView *)self tlkImage];
    if (([v64 badgeWantsPlatter] & v62) != 0)
    {
      v63 = 12.0;
    }

    else
    {
      v63 = 16.0;
    }
  }

  v65 = [(TLKImageView *)self tlkImage];
  [v65 badgeWantsPlatter];

  v66 = +[TLKLayoutUtilities isLTR];
  v67 = v41;
  v68 = v42;
  v69 = v43;
  v70 = v44;
  if (v66)
  {
    MinX = CGRectGetMaxX(*&v67) - v63;
    v72 = 2.0;
  }

  else
  {
    MinX = CGRectGetMinX(*&v67);
    v72 = -2.0;
  }

  v73 = MinX + v72;
  v79.origin.x = v41;
  v79.origin.y = v42;
  v79.size.width = v43;
  v79.size.height = v44;
  v74 = CGRectGetMaxY(v79) - v63 + 2.0;
  v75 = [(TLKImageView *)self badgeImageView];
  [v75 setFrame:{v73, v74, v63, v63}];

  [(TLKImageView *)self _updateCircleViewLayout];
}

- (void)updateShadow
{
  v18 = [TLKAppearance bestAppearanceForView:self];
  v3 = [(TLKImageView *)self shadowContainer];
  v4 = self->_imageView;
  if (-[TLKImageView shadowDisabled](self, "shadowDisabled") || (-[TLKImageView tlkImage](self, "tlkImage"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isTemplate], v5, (v6 & 1) != 0))
  {
    [TLKView enableShadow:0 forView:v3];
    v7 = 0;
    v8 = 0;
  }

  else
  {
    if ([v18 style] == 1)
    {
      [TLKView enableLightKeylineStroke:1 forView:v3];
    }

    else
    {
      [TLKView enableShadow:1 forView:v3];
    }

    v9 = [(TLKImageView *)self tlkImage];
    if ([v9 supportsFastPathShadow])
    {
      v8 = 1;
    }

    else
    {
      v10 = [(TLKImageView *)self imageView];
      v11 = [v10 backgroundColor];
      v8 = v11 != 0;
    }

    v7 = 1;
  }

  [(TLKImageView *)self effectiveScreenScale];
  v13 = v12;
  v14 = [v3 layer];
  v15 = v14;
  if (v7)
  {
    [v14 setShadowPathIsBounds:v8];
    if (v8)
    {
      v16 = [(UIImageView *)v4 layer];
      [v16 cornerRadius];
      [v15 setCornerRadius:?];
      v17 = [v16 cornerCurve];
      [v15 setCornerCurve:v17];

      [v15 setMaskedCorners:{objc_msgSend(v16, "maskedCorners")}];
      [v15 setContentsScale:v13];
    }
  }

  [v15 setShouldRasterize:v7 & (v8 ^ 1)];
  [v15 setRasterizationScale:v13];
}

- (BOOL)_useCompactBadgePlatter
{
  v3 = [(TLKImageView *)self imageView];
  [v3 frame];
  if (v4 <= 36.0)
  {
    v7 = 1;
  }

  else
  {
    v5 = [(TLKImageView *)self imageView];
    [v5 frame];
    v7 = v6 <= 36.0;
  }

  return v7;
}

- (void)_updateCircleViewLayout
{
  v3 = [(TLKImageView *)self badgeImageView];

  if (v3)
  {
    v4 = [(TLKImageView *)self badgeImageView];
    [v4 frame];
    x = v5;
    y = v7;
    width = v9;
    height = v11;

    if (![(TLKImageView *)self _useCompactBadgePlatter])
    {
      [TLKLayoutUtilities deviceScaledFlooredValue:self forView:0.5];
      v16.origin.x = x - v13;
      v16.origin.y = y;
      v16.size.width = width;
      v16.size.height = height;
      v17 = CGRectInset(v16, -2.0, -2.0);
      x = v17.origin.x;
      y = v17.origin.y;
      width = v17.size.width;
      height = v17.size.height;
    }

    v14 = [(TLKImageView *)self circleView];
    [v14 setFrame:{x, y, width, height}];
  }
}

- (void)updateSymbolConfiguration
{
  v3 = MEMORY[0x1E69DCAD8];
  v4 = [(TLKImageView *)self symbolFont];
  [v4 pointSize];
  v7 = [v3 configurationWithPointSize:-[TLKImageView symbolWeight](self weight:"symbolWeight") scale:{-[TLKImageView symbolScale](self, "symbolScale"), v5}];

  v6 = [(TLKImageView *)self imageView];
  [v6 setPreferredSymbolConfiguration:v7];

  [(TLKImageView *)self invalidateIntrinsicContentSize];
}

- (TLKImageView)init
{
  v17.receiver = self;
  v17.super_class = TLKImageView;
  v2 = [(TLKView *)&v17 init];
  if (v2)
  {
    v3 = [[TLKProminenceView alloc] initWithProminence:3];
    [(TLKImageView *)v2 setPlaceholderView:v3];

    v4 = [(TLKImageView *)v2 placeholderView];
    [(TLKImageView *)v2 addSubview:v4];

    v5 = objc_opt_new();
    [(TLKImageView *)v2 setShadowContainer:v5];

    v6 = [(TLKImageView *)v2 shadowContainer];
    v7 = [v6 layer];
    [v7 setAllowsGroupOpacity:0];

    v8 = [(TLKImageView *)v2 shadowContainer];
    [(TLKImageView *)v2 addSubview:v8];

    [TLKView makeContainerShadowCompatible:v2];
    v9 = objc_opt_new();
    [(TLKImageView *)v2 setImageView:v9];

    v10 = [(TLKImageView *)v2 imageView];
    [v10 setAccessibilityIgnoresInvertColors:1];

    v11 = [(TLKImageView *)v2 imageView];
    v12 = [v11 layer];
    [v12 setMasksToBounds:1];

    v13 = [(TLKImageView *)v2 imageView];
    [TLKLayoutUtilities requireIntrinsicSizeForView:v13];

    v14 = [(TLKImageView *)v2 shadowContainer];
    v15 = [(TLKImageView *)v2 imageView];
    [v14 addSubview:v15];

    [(TLKImageView *)v2 setAllowsAnimatedImageLoading:1];
    [(TLKImageView *)v2 setProminence:1];
    v2->_symbolWeight = 4;
    v2->_symbolScale = 0;
  }

  return v2;
}

- (void)updateSizeAndLayout
{
  [(TLKImageView *)self invalidateIntrinsicContentSizeIfNecessary];

  [(TLKImageView *)self setNeedsLayout];
}

- (double)effectiveBaselineOffsetFromBottom
{
  [(TLKImageView *)self sizeScale];
  v4 = v3;
  v5 = [(TLKImageView *)self imageView];
  [v5 effectiveBaselineOffsetFromBottom];
  v7 = v6;
  v8 = [(TLKImageView *)self imageView];
  [v8 effectiveAlignmentRectInsets];
  v10 = v4 * (v7 - v9);

  return v10;
}

- (void)invalidateIntrinsicContentSizeIfNecessary
{
  [(TLKImageView *)self effectiveBaselineOffsetFromBottom];
  v4 = v3;
  [(TLKImageView *)self frame];
  v6 = v5;
  v8 = v7;
  [(TLKImageView *)self intrinsicContentSize];
  v11 = v6 == v10 && v8 == v9;
  if (!v11 || ([(TLKImageView *)self lastBaselineOffset], v4 != v12))
  {
    [(TLKImageView *)self invalidateIntrinsicContentSize];

    [(TLKImageView *)self setLastBaselineOffset:v4];
  }
}

- (double)sizeScale
{
  v3 = [(TLKImageView *)self imageView];
  [v3 intrinsicContentSize];
  v5 = v4;

  if (v5 == 0.0)
  {
    return 1.0;
  }

  [(TLKImageView *)self intrinsicContentSize];
  return v6 / v5;
}

- (CGSize)intrinsicContentSize
{
  [(TLKImageView *)self sizeThatFits:*MEMORY[0x1E698B700], *(MEMORY[0x1E698B700] + 8)];
  result.height = v3;
  result.width = v2;
  return result;
}

- (TLKImageViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = TLKImageView;
  [(TLKImageView *)&v3 didMoveToWindow];
  [(UIView *)self tlk_updateWithCurrentAppearance];
}

+ (id)_imageViewDispatchQueue
{
  if (_imageViewDispatchQueue_onceToken != -1)
  {
    +[TLKImageView _imageViewDispatchQueue];
  }

  v3 = _imageViewDispatchQueue_queue;

  return v3;
}

void __39__TLKImageView__imageViewDispatchQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("TLKImageViewUpdateQueue", v2);
  v1 = _imageViewDispatchQueue_queue;
  _imageViewDispatchQueue_queue = v0;
}

- (void)setTlkImage:(id)a3
{
  v10 = a3;
  if (self->_tlkImage != v10)
  {
    objc_storeStrong(&self->_tlkImage, a3);
    v5 = [(TLKView *)self observer];
    if (v5)
    {
      v6 = v5;
      v7 = [(TLKView *)self observer];
      v8 = [v7 batchUpdateCount];

      if (!v8)
      {
        v9 = [(TLKView *)self observer];
        [v9 propertiesDidChange];
      }
    }
  }
}

- (void)setProminence:(unint64_t)a3
{
  if (self->_prominence != a3)
  {
    self->_prominence = a3;
    v4 = [(TLKView *)self observer];
    if (v4)
    {
      v5 = v4;
      v6 = [(TLKView *)self observer];
      v7 = [v6 batchUpdateCount];

      if (!v7)
      {
        v8 = [(TLKView *)self observer];
        [v8 propertiesDidChange];
      }
    }
  }
}

- (void)setUseButtonColoring:(BOOL)a3
{
  if (self->_useButtonColoring != a3)
  {
    self->_useButtonColoring = a3;
    v4 = [(TLKView *)self observer];
    if (v4)
    {
      v5 = v4;
      v6 = [(TLKView *)self observer];
      v7 = [v6 batchUpdateCount];

      if (!v7)
      {
        v8 = [(TLKView *)self observer];
        [v8 propertiesDidChange];
      }
    }
  }
}

- (void)setDisableCornerRounding:(BOOL)a3
{
  if (self->_disableCornerRounding != a3)
  {
    self->_disableCornerRounding = a3;
    v4 = [(TLKView *)self observer];
    if (v4)
    {
      v5 = v4;
      v6 = [(TLKView *)self observer];
      v7 = [v6 batchUpdateCount];

      if (!v7)
      {
        v8 = [(TLKView *)self observer];
        [v8 propertiesDidChange];
      }
    }
  }
}

- (void)setAlignment:(unint64_t)a3
{
  if (self->_alignment != a3)
  {
    self->_alignment = a3;
    v6 = [(TLKImageView *)self imageView];
    if ([(TLKImageView *)self alignmentIsAspectFill])
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    [v6 setContentMode:v5];
    [(TLKImageView *)self updateSizeAndLayout];
  }
}

- (void)animateTransitionToImage:(id)a3
{
  v4 = a3;
  [(TLKImageView *)self setAnimateNextImageTransition:1];
  [(TLKImageView *)self setTlkImage:v4];
}

- (NSSymbolContentTransition)transition
{
  transition = self->_transition;
  if (transition)
  {
    v3 = transition;
  }

  else
  {
    v3 = [MEMORY[0x1E6982240] transition];
  }

  return v3;
}

- (void)updateWithUIImage:(id)a3 animateFadeIn:(BOOL)a4 appearance:(id)a5 isTemplate:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v10 = a3;
  v11 = a5;
  if (v6 && ([(TLKImageView *)self overrideColor], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
  {
    v13 = [(TLKImageView *)self imageView];
    [v11 enableAppearanceForView:v13];
  }

  else
  {
    v13 = [(TLKImageView *)self imageView];
    [v11 disableAppearanceForView:v13];
  }

  if ([(TLKImageView *)self animateNextImageTransition])
  {
    if (v10)
    {
      v14 = [(TLKImageView *)self imageView];
      v15 = [(TLKImageView *)self transition];
      [v14 setSymbolImage:v10 withContentTransition:v15];

      [(TLKImageView *)self setAnimateNextImageTransition:0];
    }
  }

  else
  {
    v16 = [(TLKImageView *)self imageView];
    [v16 setImage:v10];
  }

  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __70__TLKImageView_updateWithUIImage_animateFadeIn_appearance_isTemplate___block_invoke;
  v28 = &unk_1E7FD8DA8;
  v29 = self;
  v17 = v10;
  v30 = v17;
  [TLKUtilities performAnimatableChanges:&v25 animated:v8];
  v18 = [(TLKImageView *)self tlkImage:v25];
  if ([v18 isTemplate])
  {
    v19 = 0;
    v20 = 0;
    v21 = v17 == 0;
  }

  else
  {
    v24 = [v18 cornerRoundingStyle];
    v20 = 0;
    v19 = 0;
    v21 = v17 == 0;
    if (v17 && v24 == 3)
    {
      if ([v18 supportsFastPathShadow])
      {
        v21 = 0;
        v19 = 0;
        v20 = 0;
      }

      else
      {
        v20 = [MEMORY[0x1E69DC888] whiteColor];
        v21 = 0;
        v19 = 1;
      }
    }
  }

  v22 = [(TLKImageView *)self imageView];
  [v22 setBackgroundColor:v20];

  if (v19)
  {
  }

  [(TLKImageView *)self updateSizeAndLayout];
  if (!v21)
  {
    v23 = [(TLKImageView *)self delegate];
    [v23 didUpdateWithImage:v17];
  }
}

void __70__TLKImageView_updateWithUIImage_animateFadeIn_appearance_isTemplate___block_invoke(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  v4 = 1.0;
  if (*(v3 + 8))
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = [v2 placeholderView];
  [v6 setAlpha:v5];

  if (*(a1 + 40))
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = [*(a1 + 32) shadowContainer];
  [v8 setAlpha:v7];

  v9 = *(a1 + 40);
  if (!v9)
  {
    v11 = [*(a1 + 32) placeholderView];
    v4 = ([v11 isHidden] ^ 1);
  }

  v10 = [*(a1 + 32) badgeImageView];
  [v10 setAlpha:v4];

  if (!v9)
  {
  }
}

- (CGSize)constrainedSizeForImageSize:(CGSize)a3 fittingSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3.height;
  v7 = a3.width;
  [(TLKImageView *)self minimumLayoutSize];
  v9 = v7;
  if (v7 < v10)
  {
    [(TLKImageView *)self minimumLayoutSize];
    v9 = v11;
  }

  [(TLKImageView *)self minimumLayoutSize];
  v12 = v6;
  if (v6 < v13)
  {
    [(TLKImageView *)self minimumLayoutSize];
    v12 = v14;
  }

  [(TLKImageView *)self maximumLayoutSize];
  if (v15 < width)
  {
    width = v15;
  }

  [(TLKImageView *)self maximumLayoutSize];
  if (v16 < height)
  {
    height = v16;
  }

  v17 = v7 / v6;
  if (v9 > width)
  {
    [(TLKImageView *)self minimumLayoutSize];
    if (width / v17 >= v18)
    {
      v12 = width / v17;
    }

    else
    {
      v12 = v18;
    }

    v9 = width;
  }

  if (v12 > height)
  {
    v9 = v17 * height;
    [(TLKImageView *)self minimumLayoutSize];
    if (v17 * height < v19)
    {
      v9 = v19;
    }

    v12 = height;
  }

  v20 = v9;
  v21 = v12;
  result.height = v21;
  result.width = v20;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TLKImageView;
  [(TLKImageView *)&v9 traitCollectionDidChange:v4];
  v5 = [(TLKImageView *)self traitCollection];
  if ([v5 hasDifferentColorAppearanceComparedToTraitCollection:v4])
  {

LABEL_4:
    [(UIView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  v6 = [(TLKImageView *)self traitCollection];
  v7 = [v6 _vibrancy];
  v8 = [v4 _vibrancy];

  if (v7 != v8)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)tlk_updateForAppearance:(id)a3
{
  v4 = a3;
  v56.receiver = self;
  v56.super_class = TLKImageView;
  [(UIView *)&v56 tlk_updateForAppearance:v4];
  v5 = [(TLKImageView *)self tlkImage];
  v6 = [(TLKImageView *)self lastTlkImage];

  [(TLKImageView *)self setLastTlkImage:v5];
  v7 = [v5 badgeImage];
  if (v7)
  {
    v8 = [(TLKImageView *)self badgeImageView];

    if (!v8)
    {
      objc_opt_class();
      v9 = objc_opt_new();
      [(TLKImageView *)self setBadgeImageView:v9];

      v10 = [(TLKImageView *)self badgeImageView];
      [v10 setPlaceholderVisibility:2];

      v11 = [(TLKImageView *)self badgeImageView];
      [(TLKImageView *)self addSubview:v11];
    }
  }

  [(TLKImageView *)self _addBadgePlatterViewIfNeeded];
  if ([v5 badgeWantsPlatter])
  {
    v12 = [v4 isVibrant];
    v13 = +[TLKAppearance bestAppearanceForSystem];
    v14 = +[TLKAppearance appearanceWithVibrancyEnabled:isDark:](TLKAppearance, "appearanceWithVibrancyEnabled:isDark:", v12, [v13 isDark]);

    v15 = [(TLKImageView *)self circleView];
    [v14 overrideAppearanceForView:v15];

    v16 = [(TLKImageView *)self badgeImageView];
    [v14 overrideAppearanceForView:v16];
  }

  else
  {
    v17 = [(TLKImageView *)self circleView];
    [TLKAppearance disableAppearanceOverrideForView:v17];

    v14 = [(TLKImageView *)self badgeImageView];
    [TLKAppearance disableAppearanceOverrideForView:v14];
  }

  v18 = [(TLKImageView *)self badgeImageView];
  [v18 setHidden:v7 == 0];

  if (v7)
  {
    v19 = [v5 badgeWantsPlatter] ^ 1;
  }

  else
  {
    v19 = 1;
  }

  v20 = [(TLKImageView *)self circleView];
  [v20 setHidden:v19];

  [v7 setBadgeImage:0];
  v21 = [(TLKImageView *)self badgeImageView];
  [v21 setTlkImage:v7];

  [(TLKImageView *)self effectiveScreenScale];
  v23 = v22;
  v24 = [v4 isDark];
  v25 = [v5 cachedImageForScale:v24 isDarkStyle:v23];
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  if (v25)
  {
    -[TLKImageView updateWithUIImage:animateFadeIn:appearance:isTemplate:](self, "updateWithUIImage:animateFadeIn:appearance:isTemplate:", v25, 0, v4, [v5 isTemplate]);
  }

  else
  {
    if (v5 != v6)
    {
      v26 = [(TLKImageView *)self placeholderVisibility];
      v30 = !v5 || (v27 = v26, ![v5 cornerRoundingStyle]) && ((v28 = -[TLKImageView disableCornerRounding](self, "disableCornerRounding"), v27 == 1) ? (v29 = 1) : (v29 = v28), v29 != 1) || v27 == 2;
      v31 = [(TLKImageView *)self placeholderView];
      [v31 setHidden:v30];

      -[TLKImageView updateWithUIImage:animateFadeIn:appearance:isTemplate:](self, "updateWithUIImage:animateFadeIn:appearance:isTemplate:", 0, 0, v4, [v5 isTemplate]);
    }

    v32 = [v5 supportsFastPathShadow];
    v41 = MEMORY[0x1E69E9820];
    v42 = 3221225472;
    v43 = __40__TLKImageView_tlk_updateForAppearance___block_invoke;
    v44 = &unk_1E7FD8F10;
    v50 = v32;
    v45 = v5;
    v46 = self;
    v49 = v23;
    v51 = v24;
    v48 = &v52;
    v47 = v4;
    [v45 loadImageWithScale:v24 isDarkStyle:&v41 completionHandler:v23];
  }

  v33 = [(TLKImageView *)self allowsAnimatedImageLoading:v41];
  *(v53 + 24) = v33;
  if (!v5)
  {
    v34 = [(TLKImageView *)self placeholderView];
    [v34 setHidden:1];
  }

  v35 = [(TLKImageView *)self overrideColor];
  v36 = v35;
  if (v35)
  {
    v37 = 0;
    v38 = 0;
    v39 = v35;
  }

  else
  {
    v37 = [(TLKImageView *)self useButtonColoring];
    if (v37)
    {
      [v4 buttonColorForProminence:{-[TLKImageView prominence](self, "prominence")}];
    }

    else
    {
      [v4 colorForProminence:{-[TLKImageView prominence](self, "prominence")}];
    }
    v39 = ;
    v38 = !v37;
  }

  v40 = [(TLKImageView *)self imageView];
  [v40 setTintColor:v39];

  if (v38)
  {
  }

  if (v37)
  {
  }

  [(TLKImageView *)self updateShadow];
  _Block_object_dispose(&v52, 8);
}

void __40__TLKImageView_tlk_updateForAppearance___block_invoke(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x3032000000;
    v33[3] = __Block_byref_object_copy__0;
    v33[4] = __Block_byref_object_dispose__0;
    v7 = v5;
    v34 = v7;
    v8 = [*(a1 + 32) isTemplate];
    v9 = v8;
    if ((*(a1 + 72) | v8))
    {
      v10 = 0;
    }

    else
    {
      v10 = ![TLKImage imageIsSymbol:v7];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __40__TLKImageView_tlk_updateForAppearance___block_invoke_17;
    aBlock[3] = &unk_1E7FD8EE8;
    v28 = v9;
    v25 = v33;
    v29 = v10;
    v18 = *(a1 + 32);
    v14 = v18.i64[0];
    v23 = vextq_s8(v18, v18, 8uLL);
    v30 = a3;
    v27 = *(a1 + 64);
    v31 = *(a1 + 73);
    v32 = *(a1 + 72);
    v15 = *(a1 + 48);
    v26 = *(a1 + 56);
    v24 = v15;
    v16 = _Block_copy(aBlock);
    if (v10 & 1) != 0 || ([*(a1 + 32) hasMultipleRepresentations])
    {
      v17 = +[TLKImageView _imageViewDispatchQueue];
      dispatch_async(v17, v16);
    }

    else
    {
      v16[2](v16);
    }

    _Block_object_dispose(v33, 8);
    v13 = v34;
  }

  else
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __40__TLKImageView_tlk_updateForAppearance___block_invoke_3;
    v19[3] = &unk_1E7FD8DA8;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v20 = v11;
    v21 = v12;
    [TLKUtilities dispatchMainIfNecessary:v19];
    v13 = v20;
  }
}

void __40__TLKImageView_tlk_updateForAppearance___block_invoke_17(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    v2 = [TLKImage templateImageForImage:*(*(*(a1 + 56) + 8) + 40)];
    v3 = *(*(a1 + 56) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  if (*(a1 + 81) == 1)
  {
    v5 = [objc_opt_class() imageIsProbablyOpaque:*(*(*(a1 + 56) + 8) + 40) tlkImage:*(a1 + 40)];
  }

  else
  {
    v5 = 0;
  }

  if (*(a1 + 82) == 1)
  {
    [*(a1 + 40) cacheImage:*(*(*(a1 + 56) + 8) + 40) forScale:*(a1 + 83) isDarkStyle:*(a1 + 72)];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__TLKImageView_tlk_updateForAppearance___block_invoke_2;
  v10[3] = &unk_1E7FD8EC0;
  v6 = *(a1 + 40);
  v16 = v5;
  v17 = *(a1 + 84);
  v7 = *(a1 + 32);
  v11 = v6;
  v12 = v7;
  v15 = *(a1 + 72);
  v18 = *(a1 + 83);
  v9 = *(a1 + 48);
  v14 = *(a1 + 64);
  v8 = v9;
  v13 = v9;
  v19 = *(a1 + 80);
  [TLKUtilities dispatchMainIfNecessary:v10];
}

void __40__TLKImageView_tlk_updateForAppearance___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 80))
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 81);
  }

  [*(a1 + 32) setSupportsFastPathShadow:v2 & 1];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) tlkImage];
  if (v3 == v4 && (v5 = *(a1 + 72), v15 = v4, [*(a1 + 40) effectiveScreenScale], v4 = v15, v5 == v6))
  {
    v7 = *(a1 + 82);
    v8 = [TLKAppearance bestAppearanceForView:*(a1 + 40)];
    v9 = [v8 isDark];

    if (v7 == v9)
    {
      v10 = *(*(*(a1 + 56) + 8) + 40);
      v11 = *(*(*(a1 + 64) + 8) + 24);
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v14 = *(a1 + 83);

      [v12 updateWithUIImage:v10 animateFadeIn:v11 appearance:v13 isTemplate:v14];
    }
  }

  else
  {
  }
}

void __40__TLKImageView_tlk_updateForAppearance___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) tlkImage];

  if (v2 == v3)
  {
    v4 = [*(a1 + 40) delegate];
    [v4 didFailToLoadImage];
  }
}

- (void)setOverrideColor:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_overrideColor] & 1) == 0)
  {
    objc_storeStrong(&self->_overrideColor, a3);
    [(UIView *)self tlk_updateWithCurrentAppearance];
  }
}

- (void)setSymbolFont:(id)a3
{
  v5 = a3;
  if (self->_symbolFont != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_symbolFont, a3);
    [(TLKImageView *)self updateSymbolConfiguration];
    v5 = v6;
  }
}

- (void)setSymbolScale:(int64_t)a3
{
  if (self->_symbolScale != a3)
  {
    self->_symbolScale = a3;
    [(TLKImageView *)self updateSymbolConfiguration];
  }
}

- (void)setSymbolWeight:(int64_t)a3
{
  if (self->_symbolWeight != a3)
  {
    self->_symbolWeight = a3;
    [(TLKImageView *)self updateSymbolConfiguration];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(TLKImageView *)self naturalSizeForSize:?];

  [TLKImageView constrainedSizeForImageSize:"constrainedSizeForImageSize:fittingSize:" fittingSize:?];
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)naturalSizeForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(TLKImageView *)self tlkImage];
  [v6 size];
  v8 = v7;
  v10 = v9;

  v11 = v8 == *MEMORY[0x1E695F060] && v10 == *(MEMORY[0x1E695F060] + 8);
  if (v11 && (-[TLKImageView imageView](self, "imageView"), v12 = objc_claimAutoreleasedReturnValue(), [v12 image], v13 = objc_claimAutoreleasedReturnValue(), v14 = +[TLKImage imageIsSymbol:](TLKImage, "imageIsSymbol:", v13), v13, v12, v14))
  {
    v15 = [(TLKImageView *)self imageView];
    [v15 sizeThatFits:{width, height}];
    v17 = v16;
    v19 = v18;

    v20 = v17;
    v21 = v19;
  }

  else
  {
    v20 = v8;
    v21 = v10;
  }

  result.height = v21;
  result.width = v20;
  return result;
}

- (CGRect)aspectRatioPreservedFrameForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(TLKImageView *)self bounds];
  v6 = CGRectGetWidth(v32);
  [(TLKImageView *)self bounds];
  v8 = CGRectGetHeight(v33);
  if (height == INFINITY)
  {
    v9 = v8;
  }

  else
  {
    v9 = height;
  }

  if (width == INFINITY)
  {
    v10 = v6;
  }

  else
  {
    v10 = width;
  }

  if (height != 0.0)
  {
    v11 = v10 < v6 && v9 < v8;
    v12 = width / height;
    if (v11)
    {
      v14 = [(TLKImageView *)self tlkImage];
      [v14 size];
      v17 = v16 != *(MEMORY[0x1E695F060] + 8) || v15 != *MEMORY[0x1E695F060];

      v13 = v6 / v12;
      if (v17)
      {
        v10 = v6;
        v9 = v6 / v12;
      }
    }

    else
    {
      v13 = v6 / v12;
    }

    if (v10 <= v6)
    {
      v7 = v10;
    }

    else
    {
      v7 = v6;
    }

    if (v10 <= v6)
    {
      v13 = v9;
    }

    if (v13 <= v8)
    {
      v10 = v7;
    }

    else
    {
      v10 = v12 * v8;
    }

    if (v13 <= v8)
    {
      v9 = v13;
    }

    else
    {
      v9 = v8;
    }
  }

  [TLKLayoutUtilities ceilingValue:self inView:v10, v7];
  v19 = v18;
  [TLKLayoutUtilities ceilingValue:self inView:v9];
  v21 = v20;
  v22 = v6 - v19;
  [TLKLayoutUtilities deviceScaledRoundedValue:self forView:(v6 - v19) * 0.5];
  v24 = v23;
  v25 = v8 - v21;
  [TLKLayoutUtilities deviceScaledRoundedValue:self forView:v25 * 0.5];
  v27 = v26;
  if ([(TLKImageView *)self alignment]== 1)
  {
    if (+[TLKLayoutUtilities isLTR])
    {
      v24 = v22;
    }

    else
    {
      v24 = 0.0;
    }
  }

  else if ([(TLKImageView *)self alignment]== 4)
  {
    v27 = v25;
  }

  v28 = v24;
  v29 = v27;
  v30 = v19;
  v31 = v21;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (void)applyCornerRoundingStyle:(unint64_t)a3 toView:(id)a4
{
  v12 = a4;
  v6 = [v12 layer];
  v7 = [(TLKImageView *)self disableCornerRounding];
  v8 = 0.0;
  if (!v7)
  {
    [v12 bounds];
    [(TLKImageView *)self cornerRadiusForSize:a3 roundingStyle:v9, v10];
  }

  [v6 setCornerRadius:v8];
  v11 = MEMORY[0x1E69796E0];
  if (a3 != 3)
  {
    v11 = MEMORY[0x1E69796E8];
  }

  [v6 setCornerCurve:*v11];
  [v6 setMaskedCorners:{objc_msgSend(objc_opt_class(), "defaultCornerMask")}];
}

- (double)cornerRadiusForSize:(CGSize)a3 roundingStyle:(unint64_t)a4
{
  height = a3.height;
  width = a3.width;
  if (a4 == 3)
  {
    v8 = 0.5;
  }

  else if (a4 == 2)
  {
    +[TLKUtilities appIconCornerRadiusRatio];
  }

  else
  {
    v8 = 0.0;
    if (a4 == 1)
    {
      +[TLKUtilities standardRoundedCornerRadiusRatio];
    }
  }

  if (width >= height)
  {
    v9 = height;
  }

  else
  {
    v9 = width;
  }

  v10 = v9 * v8;
  v11 = +[TLKUtilities isMacOS];
  if (a4 == 1)
  {
    v12 = fmin(v10, 10.0);
    if (v11)
    {
      v10 = v12;
    }

    [TLKLayoutUtilities deviceScaledRoundedValue:self forView:1.5];
    v14 = fmin(v10, 15.0);
    if (v13 >= v14)
    {
      return v13;
    }

    else
    {
      return v14;
    }
  }

  return v10;
}

+ (BOOL)imageIsProbablyOpaque:(id)a3 tlkImage:(id)a4
{
  v6 = a4;
  v7 = [a3 CGImage];
  AlphaInfo = CGImageGetAlphaInfo(v7);
  LOBYTE(v9) = 1;
  if (AlphaInfo && AlphaInfo != kCGImageAlphaNoneSkipLast)
  {
    if (AlphaInfo == kCGImageAlphaOnly)
    {
      LOBYTE(v9) = 0;
    }

    else
    {
      v9 = [a1 checkTransparencyForImageAtCorners:v7 shouldCropToCircle:{objc_msgSend(v6, "cornerRoundingStyle") == 3}] ^ 1;
    }
  }

  return v9;
}

+ (BOOL)checkTransparencyForImageAtCorners:(CGImage *)a3 shouldCropToCircle:(BOOL)a4
{
  v4 = a4;
  Width = CGImageGetWidth(a3);
  Height = CGImageGetHeight(a3);
  v9 = Height * 0.05;
  v10 = Height + -1.0 - v9;
  if (v4)
  {
    v11 = Height * 0.5;
    if (([a1 hasTransparencyAtPoint:a3 forCGImage:{Width * 0.05, v11}] & 1) == 0)
    {
      v12 = Width * 0.5;
      if (([a1 hasTransparencyAtPoint:a3 forCGImage:{Width * 0.5, v9}] & 1) == 0 && (objc_msgSend(a1, "hasTransparencyAtPoint:forCGImage:", a3, Width + -1.0 - Width * 0.05, v11) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    return 1;
  }

  if ([a1 hasTransparencyAtPoint:a3 forCGImage:{Width * 0.05, v9}])
  {
    return 1;
  }

  if ([a1 hasTransparencyAtPoint:a3 forCGImage:{Width * 0.05, v10}])
  {
    return 1;
  }

  v12 = Width + -1.0 - Width * 0.05;
  if ([a1 hasTransparencyAtPoint:a3 forCGImage:{v12, v9}])
  {
    return 1;
  }

LABEL_10:

  return [a1 hasTransparencyAtPoint:a3 forCGImage:{v12, v10}];
}

+ (BOOL)hasTransparencyAtPoint:(CGPoint)a3 forCGImage:(CGImage *)a4
{
  x = a3.x;
  v11.origin.x = floorf(x);
  y = a3.y;
  v11.origin.y = floorf(y);
  v11.size.width = 1.0;
  v11.size.height = 1.0;
  v6 = CGImageCreateWithImageInRect(a4, v11);
  data = 0;
  v7 = CGBitmapContextCreate(&data, 1uLL, 1uLL, 8uLL, 1uLL, 0, 7u);
  v12.origin.x = 0.0;
  v12.origin.y = 0.0;
  v12.size.width = 1.0;
  v12.size.height = 1.0;
  CGContextDrawImage(v7, v12, v6);
  CGContextRelease(v7);
  CGImageRelease(v6);
  LOBYTE(v8) = data;
  return v8 / 255.0 < 0.25;
}

- (double)effectiveFirstBaselineOffsetFromTop
{
  [(TLKImageView *)self sizeScale];
  v4 = v3;
  v5 = [(TLKImageView *)self imageView];
  [v5 effectiveFirstBaselineOffsetFromTop];
  v7 = v6;
  v8 = [(TLKImageView *)self imageView];
  [v8 effectiveAlignmentRectInsets];
  v10 = v4 * (v7 - v9);

  return v10;
}

@end