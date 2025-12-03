@interface TLKImageView
+ (BOOL)checkTransparencyForImageAtCorners:(CGImage *)corners shouldCropToCircle:(BOOL)circle;
+ (BOOL)hasTransparencyAtPoint:(CGPoint)point forCGImage:(CGImage *)image;
+ (BOOL)imageIsProbablyOpaque:(id)opaque tlkImage:(id)image;
+ (id)_imageViewDispatchQueue;
- (BOOL)_useCompactBadgePlatter;
- (CGRect)aspectRatioPreservedFrameForSize:(CGSize)size;
- (CGSize)constrainedSizeForImageSize:(CGSize)size fittingSize:(CGSize)fittingSize;
- (CGSize)intrinsicContentSize;
- (CGSize)naturalSizeForSize:(CGSize)size;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSSymbolContentTransition)transition;
- (TLKImageView)init;
- (TLKImageViewDelegate)delegate;
- (UIEdgeInsets)effectiveAlignmentRectInsets;
- (double)cornerRadiusForSize:(CGSize)size roundingStyle:(unint64_t)style;
- (double)effectiveBaselineOffsetFromBottom;
- (double)effectiveFirstBaselineOffsetFromTop;
- (double)sizeScale;
- (void)_updateCircleViewLayout;
- (void)animateTransitionToImage:(id)image;
- (void)applyCornerRoundingStyle:(unint64_t)style toView:(id)view;
- (void)didMoveToWindow;
- (void)invalidateIntrinsicContentSizeIfNecessary;
- (void)layoutSubviews;
- (void)setAlignment:(unint64_t)alignment;
- (void)setDisableCornerRounding:(BOOL)rounding;
- (void)setOverrideColor:(id)color;
- (void)setProminence:(unint64_t)prominence;
- (void)setSymbolFont:(id)font;
- (void)setSymbolScale:(int64_t)scale;
- (void)setSymbolWeight:(int64_t)weight;
- (void)setTlkImage:(id)image;
- (void)setUseButtonColoring:(BOOL)coloring;
- (void)tlk_updateForAppearance:(id)appearance;
- (void)traitCollectionDidChange:(id)change;
- (void)updateShadow;
- (void)updateSizeAndLayout;
- (void)updateSymbolConfiguration;
- (void)updateWithUIImage:(id)image animateFadeIn:(BOOL)in appearance:(id)appearance isTemplate:(BOOL)template;
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
    imageView = [(TLKImageView *)self imageView];
    [imageView alignmentRectInsets];
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
  tlkImage = [(TLKImageView *)self tlkImage];
  [tlkImage size];
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

  imageView = [(TLKImageView *)self imageView];
  image = [imageView image];

  [image size];
  v16 = v15;
  v18 = v17;
  if (v10 && [TLKImage imageIsSymbol:image])
  {
    [(TLKImageView *)self bounds];
    [(TLKImageView *)self naturalSizeForSize:v19, v20];
    v16 = v21;
    v18 = v22;
  }

  else if (v16 == v8 && v18 == v9)
  {
    tlkImage2 = [(TLKImageView *)self tlkImage];
    [tlkImage2 size];
    v16 = v25;
    v18 = v26;
  }

  alignmentIsAspectFill = [(TLKImageView *)self alignmentIsAspectFill];
  if (alignmentIsAspectFill)
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
  placeholderView = [(TLKImageView *)self placeholderView];
  [placeholderView setFrame:{v32, v33, v34, v35}];

  if (alignmentIsAspectFill)
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

  shadowContainer = [(TLKImageView *)self shadowContainer];
  [shadowContainer setFrame:{v41, v42, v43, v44}];

  shadowContainer2 = [(TLKImageView *)self shadowContainer];
  [shadowContainer2 bounds];
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  imageView2 = [(TLKImageView *)self imageView];
  [imageView2 setFrame:{v50, v52, v54, v56}];

  tlkImage3 = [(TLKImageView *)self tlkImage];
  cornerRoundingStyle = [tlkImage3 cornerRoundingStyle];

  if (![(TLKImageView *)self disableCornerRounding])
  {
    placeholderView2 = [(TLKImageView *)self placeholderView];
    [(TLKImageView *)self applyCornerRoundingStyle:cornerRoundingStyle toView:placeholderView2];

    imageView3 = [(TLKImageView *)self imageView];
    [(TLKImageView *)self applyCornerRoundingStyle:cornerRoundingStyle toView:imageView3];
  }

  [(TLKImageView *)self updateShadow];
  _useCompactBadgePlatter = [(TLKImageView *)self _useCompactBadgePlatter];
  v63 = 20.0;
  if (+[TLKUtilities isMacOS])
  {
    tlkImage4 = [(TLKImageView *)self tlkImage];
    if (([tlkImage4 badgeWantsPlatter] & _useCompactBadgePlatter) != 0)
    {
      v63 = 12.0;
    }

    else
    {
      v63 = 16.0;
    }
  }

  tlkImage5 = [(TLKImageView *)self tlkImage];
  [tlkImage5 badgeWantsPlatter];

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
  badgeImageView = [(TLKImageView *)self badgeImageView];
  [badgeImageView setFrame:{v73, v74, v63, v63}];

  [(TLKImageView *)self _updateCircleViewLayout];
}

- (void)updateShadow
{
  v18 = [TLKAppearance bestAppearanceForView:self];
  shadowContainer = [(TLKImageView *)self shadowContainer];
  v4 = self->_imageView;
  if (-[TLKImageView shadowDisabled](self, "shadowDisabled") || (-[TLKImageView tlkImage](self, "tlkImage"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isTemplate], v5, (v6 & 1) != 0))
  {
    [TLKView enableShadow:0 forView:shadowContainer];
    v7 = 0;
    v8 = 0;
  }

  else
  {
    if ([v18 style] == 1)
    {
      [TLKView enableLightKeylineStroke:1 forView:shadowContainer];
    }

    else
    {
      [TLKView enableShadow:1 forView:shadowContainer];
    }

    tlkImage = [(TLKImageView *)self tlkImage];
    if ([tlkImage supportsFastPathShadow])
    {
      v8 = 1;
    }

    else
    {
      imageView = [(TLKImageView *)self imageView];
      backgroundColor = [imageView backgroundColor];
      v8 = backgroundColor != 0;
    }

    v7 = 1;
  }

  [(TLKImageView *)self effectiveScreenScale];
  v13 = v12;
  layer = [shadowContainer layer];
  v15 = layer;
  if (v7)
  {
    [layer setShadowPathIsBounds:v8];
    if (v8)
    {
      layer2 = [(UIImageView *)v4 layer];
      [layer2 cornerRadius];
      [v15 setCornerRadius:?];
      cornerCurve = [layer2 cornerCurve];
      [v15 setCornerCurve:cornerCurve];

      [v15 setMaskedCorners:{objc_msgSend(layer2, "maskedCorners")}];
      [v15 setContentsScale:v13];
    }
  }

  [v15 setShouldRasterize:v7 & (v8 ^ 1)];
  [v15 setRasterizationScale:v13];
}

- (BOOL)_useCompactBadgePlatter
{
  imageView = [(TLKImageView *)self imageView];
  [imageView frame];
  if (v4 <= 36.0)
  {
    v7 = 1;
  }

  else
  {
    imageView2 = [(TLKImageView *)self imageView];
    [imageView2 frame];
    v7 = v6 <= 36.0;
  }

  return v7;
}

- (void)_updateCircleViewLayout
{
  badgeImageView = [(TLKImageView *)self badgeImageView];

  if (badgeImageView)
  {
    badgeImageView2 = [(TLKImageView *)self badgeImageView];
    [badgeImageView2 frame];
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

    circleView = [(TLKImageView *)self circleView];
    [circleView setFrame:{x, y, width, height}];
  }
}

- (void)updateSymbolConfiguration
{
  v3 = MEMORY[0x1E69DCAD8];
  symbolFont = [(TLKImageView *)self symbolFont];
  [symbolFont pointSize];
  v7 = [v3 configurationWithPointSize:-[TLKImageView symbolWeight](self weight:"symbolWeight") scale:{-[TLKImageView symbolScale](self, "symbolScale"), v5}];

  imageView = [(TLKImageView *)self imageView];
  [imageView setPreferredSymbolConfiguration:v7];

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

    placeholderView = [(TLKImageView *)v2 placeholderView];
    [(TLKImageView *)v2 addSubview:placeholderView];

    v5 = objc_opt_new();
    [(TLKImageView *)v2 setShadowContainer:v5];

    shadowContainer = [(TLKImageView *)v2 shadowContainer];
    layer = [shadowContainer layer];
    [layer setAllowsGroupOpacity:0];

    shadowContainer2 = [(TLKImageView *)v2 shadowContainer];
    [(TLKImageView *)v2 addSubview:shadowContainer2];

    [TLKView makeContainerShadowCompatible:v2];
    v9 = objc_opt_new();
    [(TLKImageView *)v2 setImageView:v9];

    imageView = [(TLKImageView *)v2 imageView];
    [imageView setAccessibilityIgnoresInvertColors:1];

    imageView2 = [(TLKImageView *)v2 imageView];
    layer2 = [imageView2 layer];
    [layer2 setMasksToBounds:1];

    imageView3 = [(TLKImageView *)v2 imageView];
    [TLKLayoutUtilities requireIntrinsicSizeForView:imageView3];

    shadowContainer3 = [(TLKImageView *)v2 shadowContainer];
    imageView4 = [(TLKImageView *)v2 imageView];
    [shadowContainer3 addSubview:imageView4];

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
  imageView = [(TLKImageView *)self imageView];
  [imageView effectiveBaselineOffsetFromBottom];
  v7 = v6;
  imageView2 = [(TLKImageView *)self imageView];
  [imageView2 effectiveAlignmentRectInsets];
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
  imageView = [(TLKImageView *)self imageView];
  [imageView intrinsicContentSize];
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

- (void)setTlkImage:(id)image
{
  imageCopy = image;
  if (self->_tlkImage != imageCopy)
  {
    objc_storeStrong(&self->_tlkImage, image);
    observer = [(TLKView *)self observer];
    if (observer)
    {
      v6 = observer;
      observer2 = [(TLKView *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKView *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (void)setProminence:(unint64_t)prominence
{
  if (self->_prominence != prominence)
  {
    self->_prominence = prominence;
    observer = [(TLKView *)self observer];
    if (observer)
    {
      v5 = observer;
      observer2 = [(TLKView *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKView *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (void)setUseButtonColoring:(BOOL)coloring
{
  if (self->_useButtonColoring != coloring)
  {
    self->_useButtonColoring = coloring;
    observer = [(TLKView *)self observer];
    if (observer)
    {
      v5 = observer;
      observer2 = [(TLKView *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKView *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (void)setDisableCornerRounding:(BOOL)rounding
{
  if (self->_disableCornerRounding != rounding)
  {
    self->_disableCornerRounding = rounding;
    observer = [(TLKView *)self observer];
    if (observer)
    {
      v5 = observer;
      observer2 = [(TLKView *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKView *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (void)setAlignment:(unint64_t)alignment
{
  if (self->_alignment != alignment)
  {
    self->_alignment = alignment;
    imageView = [(TLKImageView *)self imageView];
    if ([(TLKImageView *)self alignmentIsAspectFill])
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    [imageView setContentMode:v5];
    [(TLKImageView *)self updateSizeAndLayout];
  }
}

- (void)animateTransitionToImage:(id)image
{
  imageCopy = image;
  [(TLKImageView *)self setAnimateNextImageTransition:1];
  [(TLKImageView *)self setTlkImage:imageCopy];
}

- (NSSymbolContentTransition)transition
{
  transition = self->_transition;
  if (transition)
  {
    transition = transition;
  }

  else
  {
    transition = [MEMORY[0x1E6982240] transition];
  }

  return transition;
}

- (void)updateWithUIImage:(id)image animateFadeIn:(BOOL)in appearance:(id)appearance isTemplate:(BOOL)template
{
  templateCopy = template;
  inCopy = in;
  imageCopy = image;
  appearanceCopy = appearance;
  if (templateCopy && ([(TLKImageView *)self overrideColor], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
  {
    imageView = [(TLKImageView *)self imageView];
    [appearanceCopy enableAppearanceForView:imageView];
  }

  else
  {
    imageView = [(TLKImageView *)self imageView];
    [appearanceCopy disableAppearanceForView:imageView];
  }

  if ([(TLKImageView *)self animateNextImageTransition])
  {
    if (imageCopy)
    {
      imageView2 = [(TLKImageView *)self imageView];
      transition = [(TLKImageView *)self transition];
      [imageView2 setSymbolImage:imageCopy withContentTransition:transition];

      [(TLKImageView *)self setAnimateNextImageTransition:0];
    }
  }

  else
  {
    imageView3 = [(TLKImageView *)self imageView];
    [imageView3 setImage:imageCopy];
  }

  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __70__TLKImageView_updateWithUIImage_animateFadeIn_appearance_isTemplate___block_invoke;
  v28 = &unk_1E7FD8DA8;
  selfCopy = self;
  v17 = imageCopy;
  v30 = v17;
  [TLKUtilities performAnimatableChanges:&v25 animated:inCopy];
  v18 = [(TLKImageView *)self tlkImage:v25];
  if ([v18 isTemplate])
  {
    v19 = 0;
    whiteColor = 0;
    v21 = v17 == 0;
  }

  else
  {
    cornerRoundingStyle = [v18 cornerRoundingStyle];
    whiteColor = 0;
    v19 = 0;
    v21 = v17 == 0;
    if (v17 && cornerRoundingStyle == 3)
    {
      if ([v18 supportsFastPathShadow])
      {
        v21 = 0;
        v19 = 0;
        whiteColor = 0;
      }

      else
      {
        whiteColor = [MEMORY[0x1E69DC888] whiteColor];
        v21 = 0;
        v19 = 1;
      }
    }
  }

  imageView4 = [(TLKImageView *)self imageView];
  [imageView4 setBackgroundColor:whiteColor];

  if (v19)
  {
  }

  [(TLKImageView *)self updateSizeAndLayout];
  if (!v21)
  {
    delegate = [(TLKImageView *)self delegate];
    [delegate didUpdateWithImage:v17];
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

- (CGSize)constrainedSizeForImageSize:(CGSize)size fittingSize:(CGSize)fittingSize
{
  height = fittingSize.height;
  width = fittingSize.width;
  v6 = size.height;
  v7 = size.width;
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

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = TLKImageView;
  [(TLKImageView *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(TLKImageView *)self traitCollection];
  if ([traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy])
  {

LABEL_4:
    [(UIView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  traitCollection2 = [(TLKImageView *)self traitCollection];
  _vibrancy = [traitCollection2 _vibrancy];
  _vibrancy2 = [changeCopy _vibrancy];

  if (_vibrancy != _vibrancy2)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)tlk_updateForAppearance:(id)appearance
{
  appearanceCopy = appearance;
  v56.receiver = self;
  v56.super_class = TLKImageView;
  [(UIView *)&v56 tlk_updateForAppearance:appearanceCopy];
  tlkImage = [(TLKImageView *)self tlkImage];
  lastTlkImage = [(TLKImageView *)self lastTlkImage];

  [(TLKImageView *)self setLastTlkImage:tlkImage];
  badgeImage = [tlkImage badgeImage];
  if (badgeImage)
  {
    badgeImageView = [(TLKImageView *)self badgeImageView];

    if (!badgeImageView)
    {
      objc_opt_class();
      v9 = objc_opt_new();
      [(TLKImageView *)self setBadgeImageView:v9];

      badgeImageView2 = [(TLKImageView *)self badgeImageView];
      [badgeImageView2 setPlaceholderVisibility:2];

      badgeImageView3 = [(TLKImageView *)self badgeImageView];
      [(TLKImageView *)self addSubview:badgeImageView3];
    }
  }

  [(TLKImageView *)self _addBadgePlatterViewIfNeeded];
  if ([tlkImage badgeWantsPlatter])
  {
    isVibrant = [appearanceCopy isVibrant];
    v13 = +[TLKAppearance bestAppearanceForSystem];
    badgeImageView5 = +[TLKAppearance appearanceWithVibrancyEnabled:isDark:](TLKAppearance, "appearanceWithVibrancyEnabled:isDark:", isVibrant, [v13 isDark]);

    circleView = [(TLKImageView *)self circleView];
    [badgeImageView5 overrideAppearanceForView:circleView];

    badgeImageView4 = [(TLKImageView *)self badgeImageView];
    [badgeImageView5 overrideAppearanceForView:badgeImageView4];
  }

  else
  {
    circleView2 = [(TLKImageView *)self circleView];
    [TLKAppearance disableAppearanceOverrideForView:circleView2];

    badgeImageView5 = [(TLKImageView *)self badgeImageView];
    [TLKAppearance disableAppearanceOverrideForView:badgeImageView5];
  }

  badgeImageView6 = [(TLKImageView *)self badgeImageView];
  [badgeImageView6 setHidden:badgeImage == 0];

  if (badgeImage)
  {
    v19 = [tlkImage badgeWantsPlatter] ^ 1;
  }

  else
  {
    v19 = 1;
  }

  circleView3 = [(TLKImageView *)self circleView];
  [circleView3 setHidden:v19];

  [badgeImage setBadgeImage:0];
  badgeImageView7 = [(TLKImageView *)self badgeImageView];
  [badgeImageView7 setTlkImage:badgeImage];

  [(TLKImageView *)self effectiveScreenScale];
  v23 = v22;
  isDark = [appearanceCopy isDark];
  v25 = [tlkImage cachedImageForScale:isDark isDarkStyle:v23];
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  if (v25)
  {
    -[TLKImageView updateWithUIImage:animateFadeIn:appearance:isTemplate:](self, "updateWithUIImage:animateFadeIn:appearance:isTemplate:", v25, 0, appearanceCopy, [tlkImage isTemplate]);
  }

  else
  {
    if (tlkImage != lastTlkImage)
    {
      placeholderVisibility = [(TLKImageView *)self placeholderVisibility];
      v30 = !tlkImage || (v27 = placeholderVisibility, ![tlkImage cornerRoundingStyle]) && ((v28 = -[TLKImageView disableCornerRounding](self, "disableCornerRounding"), v27 == 1) ? (v29 = 1) : (v29 = v28), v29 != 1) || v27 == 2;
      placeholderView = [(TLKImageView *)self placeholderView];
      [placeholderView setHidden:v30];

      -[TLKImageView updateWithUIImage:animateFadeIn:appearance:isTemplate:](self, "updateWithUIImage:animateFadeIn:appearance:isTemplate:", 0, 0, appearanceCopy, [tlkImage isTemplate]);
    }

    supportsFastPathShadow = [tlkImage supportsFastPathShadow];
    v41 = MEMORY[0x1E69E9820];
    v42 = 3221225472;
    v43 = __40__TLKImageView_tlk_updateForAppearance___block_invoke;
    v44 = &unk_1E7FD8F10;
    v50 = supportsFastPathShadow;
    v45 = tlkImage;
    selfCopy = self;
    v49 = v23;
    v51 = isDark;
    v48 = &v52;
    v47 = appearanceCopy;
    [v45 loadImageWithScale:isDark isDarkStyle:&v41 completionHandler:v23];
  }

  v33 = [(TLKImageView *)self allowsAnimatedImageLoading:v41];
  *(v53 + 24) = v33;
  if (!tlkImage)
  {
    placeholderView2 = [(TLKImageView *)self placeholderView];
    [placeholderView2 setHidden:1];
  }

  overrideColor = [(TLKImageView *)self overrideColor];
  v36 = overrideColor;
  if (overrideColor)
  {
    useButtonColoring = 0;
    v38 = 0;
    v39 = overrideColor;
  }

  else
  {
    useButtonColoring = [(TLKImageView *)self useButtonColoring];
    if (useButtonColoring)
    {
      [appearanceCopy buttonColorForProminence:{-[TLKImageView prominence](self, "prominence")}];
    }

    else
    {
      [appearanceCopy colorForProminence:{-[TLKImageView prominence](self, "prominence")}];
    }
    v39 = ;
    v38 = !useButtonColoring;
  }

  imageView = [(TLKImageView *)self imageView];
  [imageView setTintColor:v39];

  if (v38)
  {
  }

  if (useButtonColoring)
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

- (void)setOverrideColor:(id)color
{
  colorCopy = color;
  if (([colorCopy isEqual:self->_overrideColor] & 1) == 0)
  {
    objc_storeStrong(&self->_overrideColor, color);
    [(UIView *)self tlk_updateWithCurrentAppearance];
  }
}

- (void)setSymbolFont:(id)font
{
  fontCopy = font;
  if (self->_symbolFont != fontCopy)
  {
    v6 = fontCopy;
    objc_storeStrong(&self->_symbolFont, font);
    [(TLKImageView *)self updateSymbolConfiguration];
    fontCopy = v6;
  }
}

- (void)setSymbolScale:(int64_t)scale
{
  if (self->_symbolScale != scale)
  {
    self->_symbolScale = scale;
    [(TLKImageView *)self updateSymbolConfiguration];
  }
}

- (void)setSymbolWeight:(int64_t)weight
{
  if (self->_symbolWeight != weight)
  {
    self->_symbolWeight = weight;
    [(TLKImageView *)self updateSymbolConfiguration];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(TLKImageView *)self naturalSizeForSize:?];

  [TLKImageView constrainedSizeForImageSize:"constrainedSizeForImageSize:fittingSize:" fittingSize:?];
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)naturalSizeForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  tlkImage = [(TLKImageView *)self tlkImage];
  [tlkImage size];
  v8 = v7;
  v10 = v9;

  v11 = v8 == *MEMORY[0x1E695F060] && v10 == *(MEMORY[0x1E695F060] + 8);
  if (v11 && (-[TLKImageView imageView](self, "imageView"), v12 = objc_claimAutoreleasedReturnValue(), [v12 image], v13 = objc_claimAutoreleasedReturnValue(), v14 = +[TLKImage imageIsSymbol:](TLKImage, "imageIsSymbol:", v13), v13, v12, v14))
  {
    imageView = [(TLKImageView *)self imageView];
    [imageView sizeThatFits:{width, height}];
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

- (CGRect)aspectRatioPreservedFrameForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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
      tlkImage = [(TLKImageView *)self tlkImage];
      [tlkImage size];
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

- (void)applyCornerRoundingStyle:(unint64_t)style toView:(id)view
{
  viewCopy = view;
  layer = [viewCopy layer];
  disableCornerRounding = [(TLKImageView *)self disableCornerRounding];
  v8 = 0.0;
  if (!disableCornerRounding)
  {
    [viewCopy bounds];
    [(TLKImageView *)self cornerRadiusForSize:style roundingStyle:v9, v10];
  }

  [layer setCornerRadius:v8];
  v11 = MEMORY[0x1E69796E0];
  if (style != 3)
  {
    v11 = MEMORY[0x1E69796E8];
  }

  [layer setCornerCurve:*v11];
  [layer setMaskedCorners:{objc_msgSend(objc_opt_class(), "defaultCornerMask")}];
}

- (double)cornerRadiusForSize:(CGSize)size roundingStyle:(unint64_t)style
{
  height = size.height;
  width = size.width;
  if (style == 3)
  {
    v8 = 0.5;
  }

  else if (style == 2)
  {
    +[TLKUtilities appIconCornerRadiusRatio];
  }

  else
  {
    v8 = 0.0;
    if (style == 1)
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
  if (style == 1)
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

+ (BOOL)imageIsProbablyOpaque:(id)opaque tlkImage:(id)image
{
  imageCopy = image;
  cGImage = [opaque CGImage];
  AlphaInfo = CGImageGetAlphaInfo(cGImage);
  LOBYTE(v9) = 1;
  if (AlphaInfo && AlphaInfo != kCGImageAlphaNoneSkipLast)
  {
    if (AlphaInfo == kCGImageAlphaOnly)
    {
      LOBYTE(v9) = 0;
    }

    else
    {
      v9 = [self checkTransparencyForImageAtCorners:cGImage shouldCropToCircle:{objc_msgSend(imageCopy, "cornerRoundingStyle") == 3}] ^ 1;
    }
  }

  return v9;
}

+ (BOOL)checkTransparencyForImageAtCorners:(CGImage *)corners shouldCropToCircle:(BOOL)circle
{
  circleCopy = circle;
  Width = CGImageGetWidth(corners);
  Height = CGImageGetHeight(corners);
  v9 = Height * 0.05;
  v10 = Height + -1.0 - v9;
  if (circleCopy)
  {
    v11 = Height * 0.5;
    if (([self hasTransparencyAtPoint:corners forCGImage:{Width * 0.05, v11}] & 1) == 0)
    {
      v12 = Width * 0.5;
      if (([self hasTransparencyAtPoint:corners forCGImage:{Width * 0.5, v9}] & 1) == 0 && (objc_msgSend(self, "hasTransparencyAtPoint:forCGImage:", corners, Width + -1.0 - Width * 0.05, v11) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    return 1;
  }

  if ([self hasTransparencyAtPoint:corners forCGImage:{Width * 0.05, v9}])
  {
    return 1;
  }

  if ([self hasTransparencyAtPoint:corners forCGImage:{Width * 0.05, v10}])
  {
    return 1;
  }

  v12 = Width + -1.0 - Width * 0.05;
  if ([self hasTransparencyAtPoint:corners forCGImage:{v12, v9}])
  {
    return 1;
  }

LABEL_10:

  return [self hasTransparencyAtPoint:corners forCGImage:{v12, v10}];
}

+ (BOOL)hasTransparencyAtPoint:(CGPoint)point forCGImage:(CGImage *)image
{
  x = point.x;
  v11.origin.x = floorf(x);
  y = point.y;
  v11.origin.y = floorf(y);
  v11.size.width = 1.0;
  v11.size.height = 1.0;
  v6 = CGImageCreateWithImageInRect(image, v11);
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
  imageView = [(TLKImageView *)self imageView];
  [imageView effectiveFirstBaselineOffsetFromTop];
  v7 = v6;
  imageView2 = [(TLKImageView *)self imageView];
  [imageView2 effectiveAlignmentRectInsets];
  v10 = v4 * (v7 - v9);

  return v10;
}

@end