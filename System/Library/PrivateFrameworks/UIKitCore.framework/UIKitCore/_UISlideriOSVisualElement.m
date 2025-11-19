@interface _UISlideriOSVisualElement
+ ($8D73A32B3079A4343D49B0A1BE7BFAC4)drawingMetricsForPlatform;
+ (id)_modernThumbImageWithTraitCollection:(id)a3 tintColor:(id)a4;
- (BOOL)_shouldBeginTrackingAtPoint:(CGPoint)a3 pointInKnob:(CGPoint *)a4 inKnob:(BOOL *)a5;
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)cancelMouseTracking;
- (BOOL)cancelTouchTracking;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGRect)maximumValueImageRectForBounds:(CGRect)a3;
- (CGRect)minimumValueImageRectForBounds:(CGRect)a3;
- (CGRect)thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4 value:(float)a5;
- (CGRect)trackRectForBounds:(CGRect)a3;
- (CGRect)valueTextRectForBounds:(CGRect)a3;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3;
- (UIEdgeInsets)alignmentRectInsets;
- (UIEdgeInsets)thumbHitEdgeInsets;
- (UISlider)slider;
- (_UISlideriOSVisualElement)initWithFrame:(CGRect)a3;
- (double)_cornerRadiusForRect:(CGRect)a3;
- (id)createThumbView;
- (id)createThumbViewNeue;
- (id)currentMaximumTrackImage;
- (id)currentMinimumTrackImage;
- (id)currentThumbImage;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (unint64_t)state;
- (void)_bounceMinMaxValueImageViewsIfNeeded;
- (void)_buildTrackArtwork;
- (void)_controlTouchBegan:(id)a3 withEvent:(id)a4;
- (void)_initImages;
- (void)_initSubviews;
- (void)_layoutSubviewsForBoundsChange:(BOOL)a3;
- (void)_listenForContentSizeCategoryChangesIfNecessary;
- (void)_rebuildControlThumb:(BOOL)a3 track:(BOOL)a4;
- (void)_setSliderNeedsLayout;
- (void)_setValue:(float)a3 andSendAction:(BOOL)a4;
- (void)_setupFeedback;
- (void)_sliderAnimationDidStop:(BOOL)a3;
- (void)_traitCollectionDidChangeInternal:(const _UITraitCollectionChangeDescription *)a3;
- (void)_updateAppearanceForEnabled:(BOOL)a3;
- (void)_updateMaxTrackColorForInitialization:(BOOL)a3;
- (void)_updateMinimumTrackTintColor;
- (void)dealloc;
- (void)didChangeMinimumTrackVisibleWithDuration:(double)a3;
- (void)didPerformLayout;
- (void)didSetEnabled;
- (void)didSetMaximumTrackImageForState:(unint64_t)a3;
- (void)didSetMaximumTrackImageForStates;
- (void)didSetMaximumTrackTintColor;
- (void)didSetMaximumValueImage;
- (void)didSetMinimumTrackImageForState:(unint64_t)a3;
- (void)didSetMinimumTrackImageForStates;
- (void)didSetMinimumTrackTintColor;
- (void)didSetMinimumValueImage;
- (void)didSetThumbEnabled;
- (void)didSetThumbImageForState:(unint64_t)a3;
- (void)didSetThumbImageForStates;
- (void)didSetThumbTintColor;
- (void)didUpdateConfiguration;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)setBounds:(CGRect)a3;
- (void)setData:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setSlider:(id)a3;
- (void)setValue:(float)a3 animated:(BOOL)a4;
- (void)showValueDidChange;
- (void)tintColorDidChange;
@end

@implementation _UISlideriOSVisualElement

- (_UISlideriOSVisualElement)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = _UISlideriOSVisualElement;
  v3 = [(UIView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setAlpha:1.0];
    [(UIView *)v4 setOpaque:0];
    v5 = [(UIView *)v4 layer];
    [v5 setAllowsGroupOpacity:1];

    [(UIView *)v4 _setTouchInsets:-12.5, -12.5, -12.5, -12.5];
    [(_UISlideriOSVisualElement *)v4 _listenForContentSizeCategoryChangesIfNecessary];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v6, sel__modifiedTrackRect_);
    v9 = class_getMethodImplementation(v7, sel__modifiedTrackRect_);
    if (MethodImplementation)
    {
      if (v9 && MethodImplementation != v9)
      {
        *&v4->_sliderFlags |= 4u;
      }
    }
  }

  return v4;
}

- (void)setSlider:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_slider);

  v5 = obj;
  if (WeakRetained != obj)
  {
    v6 = [(UISliderDataModel *)self->_data edgeFeedbackGenerator];

    if (v6)
    {
      v7 = [(_UISlideriOSVisualElement *)self slider];
      v8 = [(UISliderDataModel *)self->_data edgeFeedbackGenerator];
      [v7 removeInteraction:v8];

      if (obj)
      {
        v9 = [(UISliderDataModel *)self->_data edgeFeedbackGenerator];
        [obj addInteraction:v9];
      }
    }

    [(_UISlideriOSVisualElement *)self didUpdateConfiguration];
    objc_storeWeak(&self->_slider, obj);
    v5 = obj;
  }
}

- (void)setData:(id)a3
{
  v9 = a3;
  objc_storeStrong(&self->_data, a3);
  [(_UISlideriOSVisualElement *)self _setupFeedback];
  self->_trackIsArtworkBased = 0;
  self->_thumbIsArtworkBased = 0;
  v5 = [(UISliderDataModel *)self->_data minimumTrackImageForState:0];
  if (v5)
  {
    v6 = v5;
    v7 = [(UISliderDataModel *)self->_data maximumTrackImageForState:0];

    if (v7)
    {
      self->_trackIsArtworkBased = 1;
    }
  }

  v8 = [(UISliderDataModel *)self->_data thumbImageForState:0];

  if (v8)
  {
    self->_thumbIsArtworkBased = 1;
  }
}

- (void)_listenForContentSizeCategoryChangesIfNecessary
{
  if (dyld_program_sdk_at_least())
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:self selector:sel__contentSizeCategoryChanged_ name:@"UIContentSizeCategoryDidChangeNotification" object:0];
  }
}

- (void)_setupFeedback
{
  v3 = [(UISliderDataModel *)self->_data edgeFeedbackGenerator];

  if (!v3)
  {
    v4 = +[_UIEdgeFeedbackGeneratorConfiguration sliderConfiguration];
    v8 = [v4 tweakedConfigurationForClass:objc_opt_class() usage:@"edgeImpact"];

    v5 = [_UIEdgeFeedbackGenerator alloc];
    v6 = [(_UISlideriOSVisualElement *)self slider];
    v7 = [(_UIEdgeFeedbackGenerator *)v5 initWithConfiguration:v8 view:v6];
    [(UISliderDataModel *)self->_data setEdgeFeedbackGenerator:v7];
  }
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v10 = 0;
  [a4 location];
  [(_UISlideriOSVisualElement *)self _shouldBeginTrackingAtPoint:0 pointInKnob:&v10 inKnob:?];
  if (v10 == 1)
  {
    v6 = 6;
    if (self->_thumbIsArtworkBased)
    {
      v6 = 5;
    }

    [*(&self->super.super.super.isa + OBJC_IVAR____UISlideriOSVisualElement__sliderFlags[v6]) frame];
    v7 = @"UISliderKnob";
  }

  else
  {
    [(UIView *)self bounds];
    v7 = @"UISliderTrack";
  }

  v8 = [UIPointerRegion regionWithRect:v7 identifier:?];

  return v8;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = a4;
  +[_UISlideriOSVisualElement drawingMetricsForPlatform];
  v6 = [UIBezierPath bezierPathWithOvalInRect:v16, v17, v18, v19];
  v7 = [v5 identifier];
  v8 = [v7 isEqual:@"UISliderKnob"];

  if (v8)
  {
    if (self->_thumbIsArtworkBased)
    {
      v9 = [[UITargetedPreview alloc] initWithView:self->_thumbView];
      v10 = [(UIPointerEffect *)UIPointerHighlightEffect effectWithPreview:v9];
      v11 = [UIPointerStyle styleWithEffect:v10 shape:0];
    }

    else
    {
      v9 = objc_opt_new();
      [(UITargetedPreview *)v9 setVisiblePath:v6];
      v10 = [[UITargetedPreview alloc] initWithView:self->_innerThumbView parameters:v9];
      v14 = [(UIPointerEffect *)UIPointerLiftEffect effectWithPreview:v10];
      v11 = [UIPointerStyle styleWithEffect:v14 shape:0];
    }

    goto LABEL_8;
  }

  v12 = [v5 identifier];
  v13 = [v12 isEqual:@"UISliderTrack"];

  if (v13)
  {
    v21.origin.x = 0.0;
    v21.origin.y = 0.0;
    v21.size.width = v18;
    v21.size.height = v19;
    v9 = [UIPointerShape shapeWithRoundedRect:0.0 cornerRadius:0.0, v18, v19, CGRectGetWidth(v21) * 0.5];
    v11 = [UIPointerStyle styleWithShape:v9 constrainedAxes:2];
LABEL_8:

    goto LABEL_10;
  }

  v11 = 0;
LABEL_10:

  return v11;
}

- (void)_bounceMinMaxValueImageViewsIfNeeded
{
  v3 = [(_UISlideriOSVisualElement *)self slider];
  v4 = [v3 _allowsSymbolAnimations];

  if (v4)
  {
    v5 = [(_UISlideriOSVisualElement *)self slider];
    [v5 maximumValue];
    v7 = v6;

    v8 = [(_UISlideriOSVisualElement *)self slider];
    [v8 minimumValue];
    v10 = v9;

    if (v7 > v10)
    {
      if (self->_minValueImageView)
      {
        v11 = [(_UISlideriOSVisualElement *)self slider];
        [v11 value];
        v13 = v12;

        if (v13 <= v10)
        {
          minValueImageView = self->_minValueImageView;
          v15 = [MEMORY[0x1E6982248] effect];
          [(UIImageView *)minValueImageView addSymbolEffect:v15];
        }
      }

      if (self->_maxValueImageView)
      {
        v16 = [(_UISlideriOSVisualElement *)self slider];
        [v16 value];
        v18 = v17;

        if (v18 >= v7)
        {
          maxValueImageView = self->_maxValueImageView;
          v20 = [MEMORY[0x1E6982248] effect];
          [(UIImageView *)maxValueImageView addSymbolEffect:v20];
        }
      }
    }
  }
}

+ (id)_modernThumbImageWithTraitCollection:(id)a3 tintColor:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (qword_1ED49B1F8 != -1)
  {
    dispatch_once(&qword_1ED49B1F8, &__block_literal_global_423);
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __76___UISlideriOSVisualElement__modernThumbImageWithTraitCollection_tintColor___block_invoke_2;
  v21[3] = &unk_1E71053E8;
  v23 = &v29;
  v7 = v6;
  v22 = v7;
  v24 = &v25;
  [UITraitCollection _performWithCurrentTraitCollection:v5 usingBlock:v21];
  v8 = [_UICGColorCacheKey alloc];
  v9 = [(_UICGColorCacheKey *)v8 initWithColors:v30[3], v26[3], 0];
  v10 = [_MergedGlobals_19_6 objectForKey:v9];
  if (!v10)
  {
    v11 = [UIGraphicsImageRenderer alloc];
    +[_UISlideriOSVisualElement drawingMetricsForPlatform];
    v12 = [(UIGraphicsImageRenderer *)v11 initWithSize:v19, v20];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __76___UISlideriOSVisualElement__modernThumbImageWithTraitCollection_tintColor___block_invoke_3;
    v15[3] = &unk_1E7118EF8;
    v16 = v5;
    v17 = &v25;
    v18 = &v29;
    v13 = [(UIGraphicsImageRenderer *)v12 imageWithActions:v15];
    v10 = [v13 resizableImageWithCapInsets:{0.0, 28.0, 0.0, 28.0}];

    if (v10)
    {
      [_MergedGlobals_19_6 setObject:v10 forKey:v9];
    }
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);

  return v10;
}

- (id)createThumbViewNeue
{
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  WeakRetained = objc_loadWeakRetained(&self->_slider);
  [(_UISlideriOSVisualElement *)self trackRectForBounds:v4, v6, v8, v10];
  LODWORD(v44) = 0;
  [WeakRetained thumbRectForBounds:v4 trackRect:v6 value:{v8, v10, v12, v13, v14, v15, v44}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = [(_UISlideriOSVisualElement *)self thumbTintColor];
  if (dyld_program_sdk_at_least())
  {
    v25 = objc_opt_class();
    v26 = [(UIView *)self traitCollection];
    v27 = [v25 _modernThumbImageWithTraitCollection:v26 tintColor:v24];
  }

  else
  {
    v28 = _UIImageWithName(@"UISliderKnob");
    v26 = v28;
    if (!v24)
    {
      goto LABEL_6;
    }

    v27 = [v28 _flatImageWithColor:v24];
  }

  v29 = v27;

  v26 = v29;
LABEL_6:
  v30 = [[UIImageView alloc] initWithImage:v26];
  innerThumbView = self->_innerThumbView;
  self->_innerThumbView = v30;

  v32 = [(UIImageView *)[UISliderImageView alloc] initWithFrame:v17, v19, v21, v23];
  [(UIView *)v32 setUserInteractionEnabled:0];
  [(UIView *)v32 setOpaque:0];
  v33 = v21 + -44.0;
  if (v21 + -44.0 > 0.0)
  {
    v33 = 0.0;
  }

  v34 = v33 * 0.5;
  v35 = v23 + -44.0;
  if (v23 + -44.0 > 0.0)
  {
    v35 = 0.0;
  }

  [(UIView *)v32 _setTouchInsets:v35 * 0.5, v34, v35 * 0.5, v34];
  [(UIView *)v32 addSubview:self->_innerThumbView];
  [(UIView *)self->_innerThumbView frame];
  v37 = v36;
  v39 = v38;
  UIFloorToViewScale(self);
  v41 = v40;
  UIFloorToViewScale(self);
  [(UIImageView *)self->_innerThumbView setFrame:v41, v42, v37, v39];

  return v32;
}

- (void)_initImages
{
  v22[1] = *MEMORY[0x1E69E9840];
  v3 = [(_UISlideriOSVisualElement *)self slider];
  v4 = [v3 minimumTrackImageForState:0];

  if (!v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_slider);
    [(UIView *)self bounds];
    [WeakRetained trackRectForBounds:?];
    v7 = v6;

    if (v7 <= 0.0)
    {
      v12 = 0;
    }

    else
    {
      v8 = [(UIView *)self traitCollection];
      v9 = +[UIColor blackColor];
      v22[0] = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
      v11 = [UIProgressViewModernVisualElement _tintedImageWithTraitCollection:v8 forHeight:v10 andColors:5 roundingRectCorners:v7];
      v12 = [v11 imageWithRenderingMode:2];
    }

    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __40___UISlideriOSVisualElement__initImages__block_invoke;
    v19 = &unk_1E70F35B8;
    v20 = self;
    v21 = v12;
    v13 = v12;
    [UIView _performSystemAppearanceModifications:&v16];
  }

  v14 = [(_UISlideriOSVisualElement *)self slider:v16];
  v15 = [v14 maximumTrackImageForState:0];

  if (!v15)
  {
    [(_UISlideriOSVisualElement *)self _updateMaxTrackColorForInitialization:1];
  }
}

- (void)_initSubviews
{
  [(_UISlideriOSVisualElement *)self _buildTrackArtwork];
  thumbIsArtworkBased = self->_thumbIsArtworkBased;
  v4 = [(_UISlideriOSVisualElement *)self slider];
  v5 = [v4 createThumbView];
  v6 = 6;
  if (thumbIsArtworkBased)
  {
    v6 = 5;
  }

  v7 = OBJC_IVAR____UISlideriOSVisualElement__sliderFlags[v6];
  v8 = *(&self->super.super.super.isa + v7);
  *(&self->super.super.super.isa + v7) = v5;

  v9 = *(&self->super.super.super.isa + v7);

  [(UIView *)self addSubview:v9];
}

- (double)_cornerRadiusForRect:(CGRect)a3
{
  if (a3.size.height <= a3.size.width)
  {
    height = a3.size.height;
  }

  else
  {
    height = a3.size.width;
  }

  return height * 0.5;
}

- (void)_buildTrackArtwork
{
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  WeakRetained = objc_loadWeakRetained(&self->_slider);
  [WeakRetained trackRectForBounds:{v4, v6, v8, v10}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = [[UIView alloc] initWithFrame:v13, v15, v17, v19];
  maxTrackClipView = self->_maxTrackClipView;
  self->_maxTrackClipView = v20;

  v22 = [[UIView alloc] initWithFrame:v13, v15, v17, v19];
  minTrackClipView = self->_minTrackClipView;
  self->_minTrackClipView = v22;

  [(UIView *)self->_maxTrackClipView setUserInteractionEnabled:0];
  [(UIView *)self->_maxTrackClipView setOpaque:0];
  [(UIView *)self->_maxTrackClipView setClipsToBounds:1];
  [(UIView *)self->_minTrackClipView setUserInteractionEnabled:0];
  [(UIView *)self->_minTrackClipView setOpaque:0];
  [(UIView *)self->_minTrackClipView setClipsToBounds:1];
  if (self->_thumbView || self->_thumbViewNeue)
  {
    [(UIView *)self insertSubview:self->_maxTrackClipView belowSubview:?];
    thumbView = self->_thumbView;
    if (!thumbView)
    {
      thumbView = self->_thumbViewNeue;
    }

    [(UIView *)self insertSubview:self->_minTrackClipView belowSubview:thumbView];
  }

  else
  {
    [(UIView *)self addSubview:self->_maxTrackClipView];
    [(UIView *)self addSubview:self->_minTrackClipView];
  }

  v25 = [UIImageView alloc];
  [(UIView *)self->_maxTrackClipView bounds];
  v26 = [(UIImageView *)v25 initWithFrame:?];
  maxTrackView = self->_maxTrackView;
  self->_maxTrackView = v26;

  [(UIView *)self->_maxTrackView setUserInteractionEnabled:0];
  [(UIView *)self->_maxTrackView setOpaque:0];
  [(UIView *)self->_maxTrackView setClipsToBounds:1];
  v28 = [[UIImageView alloc] initWithFrame:v13, v15, v17, v19];
  minTrackView = self->_minTrackView;
  self->_minTrackView = v28;

  [(UIView *)self->_minTrackView setUserInteractionEnabled:0];
  [(UIView *)self->_minTrackView setOpaque:0];
  [(UIView *)self->_minTrackView setClipsToBounds:1];
  [(UIView *)self->_maxTrackClipView addSubview:self->_maxTrackView];
  v30 = self->_minTrackClipView;
  v31 = self->_minTrackView;

  [(UIView *)v30 addSubview:v31];
}

- (void)_rebuildControlThumb:(BOOL)a3 track:(BOOL)a4
{
  v4 = a4;
  p_thumbView = &self->_thumbView;
  thumbView = self->_thumbView;
  if (thumbView || self->_thumbViewNeue)
  {
    if (a3)
    {
      [(UIView *)thumbView removeFromSuperview];
      v8 = *p_thumbView;
      *p_thumbView = 0;

      [(UIView *)self->_thumbViewNeue removeFromSuperview];
      thumbViewNeue = self->_thumbViewNeue;
      self->_thumbViewNeue = 0;

      thumbIsArtworkBased = self->_thumbIsArtworkBased;
      WeakRetained = objc_loadWeakRetained(&self->_slider);
      v12 = [WeakRetained createThumbView];
      if (!thumbIsArtworkBased)
      {
        p_thumbView = &self->_thumbViewNeue;
      }

      v13 = *p_thumbView;
      *p_thumbView = v12;

      [(UIView *)self addSubview:*p_thumbView];
    }

    if (v4)
    {
      [(UIView *)self->_minTrackView removeFromSuperview];
      minTrackView = self->_minTrackView;
      self->_minTrackView = 0;

      [(UIView *)self->_minTrackClipView removeFromSuperview];
      minTrackClipView = self->_minTrackClipView;
      self->_minTrackClipView = 0;

      [(UIView *)self->_maxTrackView removeFromSuperview];
      maxTrackView = self->_maxTrackView;
      self->_maxTrackView = 0;

      [(UIView *)self->_maxTrackClipView removeFromSuperview];
      maxTrackClipView = self->_maxTrackClipView;
      self->_maxTrackClipView = 0;

      [(_UISlideriOSVisualElement *)self _buildTrackArtwork];
    }

    [(_UISlideriOSVisualElement *)self _setSliderNeedsLayout];
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"UIContentSizeCategoryDidChangeNotification" object:0];

  v4.receiver = self;
  v4.super_class = _UISlideriOSVisualElement;
  [(UIView *)&v4 dealloc];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_slider);
  v6 = [WeakRetained isTracking];

  if (v6)
  {
    v7 = 0;
    goto LABEL_19;
  }

  [v4 locationInView:self];
  if (![(_UISlideriOSVisualElement *)self _shouldBeginTrackingAtPoint:0 pointInKnob:0 inKnob:?])
  {
    goto LABEL_18;
  }

  v8 = [v4 view];
  v9 = v8;
  if (v8 == self)
  {

    goto LABEL_18;
  }

  v10 = [v4 view];
  v11 = objc_loadWeakRetained(&self->_slider);

  if (v10 == v11)
  {
LABEL_18:
    v7 = 1;
    goto LABEL_19;
  }

  if (![v4 _isGestureType:10] || objc_msgSend(v4, "numberOfTouchesRequired") != 1)
  {
    if ([v4 _isGestureType:8] && objc_msgSend(v4, "minimumNumberOfTouches") <= 1)
    {
      [v4 translationInView:self];
      v7 = fabs(v22) <= fabs(v23);
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v12 = [v4 view];
  [(UIView *)self convertPoint:v12 toView:10.0, 10.0];
  v14 = v13;
  v16 = v15;

  v17 = [v4 view];
  [(UIView *)self convertPoint:v17 toView:20.0, 10.0];
  v19 = v18;
  v21 = v20;

  if (([v4 direction] & 3) == 0 || (v7 = 0, v14 >= v19) && v14 <= v19)
  {
    v7 = ([v4 direction] & 0xC) == 0 || v16 == v21;
  }

LABEL_19:
  v24 = [v4 _isGestureType:16] ^ 1;

  return v7 & v24;
}

- (void)didSetThumbImageForState:(unint64_t)a3
{
  v5 = [(_UISlideriOSVisualElement *)self slider];
  v7 = [v5 thumbImageForState:a3];

  if (!self->_thumbIsArtworkBased)
  {
    if (!v7)
    {
      goto LABEL_8;
    }

    v6 = 1;
    goto LABEL_7;
  }

  if (!a3 && !v7)
  {
    v6 = 0;
LABEL_7:
    self->_thumbIsArtworkBased = v6;
    [(_UISlideriOSVisualElement *)self _rebuildControlThumb:1 track:0];
  }

LABEL_8:
  [(UISliderDataModel *)self->_data setThumbTintColor:0];
  [(_UISlideriOSVisualElement *)self _setSliderNeedsLayout];
  [(UIView *)self invalidateIntrinsicContentSize];
}

- (void)didSetThumbTintColor
{
  [(_UISlideriOSVisualElement *)self _setSliderNeedsLayout];

  [(_UISlideriOSVisualElement *)self _rebuildControlThumb:1 track:0];
}

- (void)didSetMinimumTrackImageForState:(unint64_t)a3
{
  v5 = [(UISliderDataModel *)self->_data minimumTrackImageForState:?];
  v8 = v5;
  if (a3 || v5)
  {
    if (!a3)
    {
      v6 = [(_UISlideriOSVisualElement *)self slider];
      v7 = [v6 maximumTrackImageForState:0];

      if (!self->_trackIsArtworkBased && v7)
      {
        self->_trackIsArtworkBased = 1;
        [(_UISlideriOSVisualElement *)self _rebuildControlThumb:0 track:1];
      }
    }
  }

  else if (self->_trackIsArtworkBased)
  {
    self->_trackIsArtworkBased = 0;
    [(_UISlideriOSVisualElement *)self _rebuildControlThumb:0 track:1];
  }

  [(_UISlideriOSVisualElement *)self _setSliderNeedsLayout];
  [(UIView *)self invalidateIntrinsicContentSize];
}

- (void)_updateMinimumTrackTintColor
{
  v14[1] = *MEMORY[0x1E69E9840];
  [(UISliderDataModel *)self->_data setMinimumTrackImage:0 forStates:0];
  [(UISliderDataModel *)self->_data setMinimumTrackImage:0 forStates:7];
  WeakRetained = objc_loadWeakRetained(&self->_slider);
  [(UIView *)self bounds];
  [WeakRetained trackRectForBounds:?];
  v5 = v4;

  v6 = [(UISliderDataModel *)self->_data minimumTrackTintColor];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    v9 = 1;
  }

  else
  {
    v8 = +[UIColor blackColor];
    v9 = 2;
  }

  v10 = [(UIView *)self traitCollection];
  v14[0] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v12 = [UIProgressViewModernVisualElement _tintedImageWithTraitCollection:v10 forHeight:v11 andColors:5 roundingRectCorners:v5];
  v13 = [v12 imageWithRenderingMode:v9];

  [(UISliderDataModel *)self->_data setMinimumTrackImage:v13 forStates:0];
}

- (void)didSetMinimumTrackTintColor
{
  [(_UISlideriOSVisualElement *)self _updateMinimumTrackTintColor];

  [(_UISlideriOSVisualElement *)self _setSliderNeedsLayout];
}

- (void)didSetMaximumTrackImageForState:(unint64_t)a3
{
  v5 = [(_UISlideriOSVisualElement *)self slider];
  v8 = [v5 maximumTrackImageForState:a3];

  if (a3 || v8)
  {
    if (!a3)
    {
      v6 = [(UISliderDataModel *)self->_data minimumTrackImageForState:0];
      v7 = v6;
      if (!self->_trackIsArtworkBased && v6)
      {
        self->_trackIsArtworkBased = 1;
        [(_UISlideriOSVisualElement *)self _rebuildControlThumb:0 track:1];
      }
    }
  }

  else if (self->_trackIsArtworkBased)
  {
    self->_trackIsArtworkBased = 0;
    [(_UISlideriOSVisualElement *)self _rebuildControlThumb:0 track:1];
  }

  [(_UISlideriOSVisualElement *)self _setSliderNeedsLayout];
  [(UIView *)self invalidateIntrinsicContentSize];
}

- (void)didSetMaximumTrackTintColor
{
  self->_trackIsArtworkBased = 0;
  [(_UISlideriOSVisualElement *)self _updateMaxTrackColorForInitialization:0];

  [(_UISlideriOSVisualElement *)self _setSliderNeedsLayout];
}

- (void)didSetMinimumValueImage
{
  v3 = [(UISliderDataModel *)self->_data minimumValueImage];
  minValueImageView = self->_minValueImageView;
  v8 = v3;
  if (v3)
  {
    if (minValueImageView)
    {
      [(UIImageView *)minValueImageView setImage:v3];
      [(UIView *)self->_minValueImageView sizeToFit];
    }

    else
    {
      v6 = [[UIImageView alloc] initWithImage:v3];
      v7 = self->_minValueImageView;
      self->_minValueImageView = v6;

      [(UIView *)self addSubview:self->_minValueImageView];
    }
  }

  else
  {
    [(UIView *)minValueImageView removeFromSuperview];
    v5 = self->_minValueImageView;
    self->_minValueImageView = 0;
  }

  [(_UISlideriOSVisualElement *)self _setSliderNeedsLayout];
  [(UIView *)self invalidateIntrinsicContentSize];
}

- (void)didSetMaximumValueImage
{
  v3 = [(UISliderDataModel *)self->_data maximumValueImage];
  maxValueImageView = self->_maxValueImageView;
  v8 = v3;
  if (v3)
  {
    if (maxValueImageView)
    {
      [(UIImageView *)maxValueImageView setImage:v3];
      [(UIView *)self->_maxValueImageView sizeToFit];
    }

    else
    {
      v6 = [[UIImageView alloc] initWithImage:v3];
      v7 = self->_maxValueImageView;
      self->_maxValueImageView = v6;

      [(UIView *)self addSubview:self->_maxValueImageView];
    }
  }

  else
  {
    [(UIView *)maxValueImageView removeFromSuperview];
    v5 = self->_maxValueImageView;
    self->_maxValueImageView = 0;
  }

  [(_UISlideriOSVisualElement *)self _setSliderNeedsLayout];
  [(UIView *)self invalidateIntrinsicContentSize];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = _UISlideriOSVisualElement;
  [(UIView *)&v3 tintColorDidChange];
  [(_UISlideriOSVisualElement *)self _layoutSubviewsForBoundsChange:0];
}

- (id)currentThumbImage
{
  v3 = [(_UISlideriOSVisualElement *)self slider];
  v4 = [v3 thumbImageForState:{-[_UISlideriOSVisualElement state](self, "state")}];

  return v4;
}

- (id)currentMinimumTrackImage
{
  v3 = [(_UISlideriOSVisualElement *)self slider];
  v4 = [v3 minimumTrackImageForState:{-[_UISlideriOSVisualElement state](self, "state")}];

  return v4;
}

- (id)currentMaximumTrackImage
{
  v3 = [(_UISlideriOSVisualElement *)self slider];
  v4 = [v3 maximumTrackImageForState:{-[_UISlideriOSVisualElement state](self, "state")}];

  return v4;
}

- (unint64_t)state
{
  if ([(UISliderDataModel *)self->_data isEnabled])
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  v4 = v3 | [(UISliderDataModel *)self->_data isHighlighted];
  if ([(UISliderDataModel *)self->_data isSelected])
  {
    return v4 | 4;
  }

  else
  {
    return v4;
  }
}

+ ($8D73A32B3079A4343D49B0A1BE7BFAC4)drawingMetricsForPlatform
{
  if (qword_1ED49B200 != -1)
  {
    dispatch_once(&qword_1ED49B200, &__block_literal_global_44_0);
  }

  v4 = *&qword_1ED49B220;
  retstr->var0.origin = xmmword_1ED49B210;
  retstr->var0.size = v4;
  v5 = unk_1ED49B240;
  retstr->var1 = xmmword_1ED49B230;
  *&retstr->var2 = v5;
  return result;
}

- (CGRect)minimumValueImageRectForBounds:(CGRect)a3
{
  minValueImageView = self->_minValueImageView;
  if (minValueImageView)
  {
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    v9 = [(UIImageView *)minValueImageView image];
    [v9 size];
    v11 = v10;
    v13 = v12;

    v14 = x + width - v11;
    if ((*(&self->super._viewFlags + 18) & 0x40) == 0)
    {
      v14 = x;
    }

    v15 = y + floor((height - v13) * 0.5);
  }

  else
  {
    v14 = *MEMORY[0x1E695F058];
    v15 = *(MEMORY[0x1E695F058] + 8);
    v11 = *(MEMORY[0x1E695F058] + 16);
    v13 = *(MEMORY[0x1E695F058] + 24);
  }

  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)maximumValueImageRectForBounds:(CGRect)a3
{
  maxValueImageView = self->_maxValueImageView;
  if (maxValueImageView)
  {
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    v9 = [(UIImageView *)maxValueImageView image];
    [v9 size];
    v11 = v10;
    v13 = v12;

    v14 = x + width - v11;
    if ((*(&self->super._viewFlags + 18) & 0x40) != 0)
    {
      v14 = x;
    }

    v15 = y + floor((height - v13) * 0.5);
  }

  else
  {
    v14 = *MEMORY[0x1E695F058];
    v15 = *(MEMORY[0x1E695F058] + 8);
    v11 = *(MEMORY[0x1E695F058] + 16);
    v13 = *(MEMORY[0x1E695F058] + 24);
  }

  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)trackRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(_UISlideriOSVisualElement *)self slider];
  v8 = [v7 maximumTrackImageForState:0];
  [v8 size];
  v10 = v9;

  if (!self->_trackIsArtworkBased)
  {
    v11 = dyld_program_sdk_at_least();
    if ((dyld_program_sdk_at_least() & 1) != 0 || (v10 = 2.0, dyld_program_sdk_at_least()) && (_AXSEnhanceTextLegibilityEnabled() || (-[UIView traitCollection](self, "traitCollection"), v12 = objc_claimAutoreleasedReturnValue(), [v12 preferredContentSizeCategory], v13 = objc_claimAutoreleasedReturnValue(), IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v13), v13, v12, IsAccessibilityCategory)))
    {
      v10 = 3.0;
    }

    if (v11)
    {
      v10 = 4.0;
    }
  }

  if (self->_minValueImageView)
  {
    WeakRetained = objc_loadWeakRetained(&self->_slider);
    [WeakRetained minimumValueImageRectForBounds:{x, y, width, height}];
    v17 = v16 + 11.0;

    v18 = v17;
    if ((*(&self->super._viewFlags + 18) & 0x40) != 0)
    {
      v19 = x;
    }

    else
    {
      v19 = x + v17;
    }

    v20 = width;
    v21 = width - v18;
  }

  else
  {
    v20 = width;
    v21 = width;
    v19 = x;
  }

  v22 = round((height - v10) * 0.5);
  if (self->_maxValueImageView)
  {
    v23 = objc_loadWeakRetained(&self->_slider);
    v24 = y;
    [v23 maximumValueImageRectForBounds:{x, y, v20, height}];
    v26 = v25 + 11.0;

    if ((*(&self->super._viewFlags + 18) & 0x40) != 0)
    {
      v19 = v19 + v26;
    }

    v21 = v21 - v26;
  }

  else
  {
    v24 = y;
  }

  if (dyld_program_sdk_at_least())
  {
    v27 = 3.0;
  }

  else
  {
    v27 = 2.0;
  }

  if (v21 >= v27 + v27)
  {
    v28 = v21;
  }

  else
  {
    v28 = v27 + v27;
  }

  v29 = v19;
  v30 = v22;
  v31 = v10;
  v42 = CGRectInset(*(&v28 - 2), v27, 0.0);
  v32 = v42.origin.x;
  v33 = v42.origin.y;
  v34 = v42.size.width;
  v35 = v42.size.height;
  if ([(UISliderDataModel *)self->_data showValue])
  {
    [(_UISlideriOSVisualElement *)self valueTextRectForBounds:x, v24, v20, height];
    v34 = v34 - (v36 + 11.0);
  }

  v37 = v32;
  v38 = v33;
  v39 = v34;
  v40 = v35;
  result.size.height = v40;
  result.size.width = v39;
  result.origin.y = v38;
  result.origin.x = v37;
  return result;
}

- (CGRect)thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4 value:(float)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [(UISliderDataModel *)self->_data minimumValue:a3.origin.x];
  v11 = v10;
  [(UISliderDataModel *)self->_data maximumValue];
  v13 = 0.0;
  if (v12 != v11)
  {
    v14 = a5;
    if (v11 > a5)
    {
      v14 = v11;
    }

    if (v14 > v12)
    {
      v14 = v12;
    }

    v13 = (v14 - v11) / (v12 - v11);
  }

  if (dyld_program_sdk_at_least())
  {
    v15 = -3.0;
  }

  else
  {
    v15 = -2.0;
  }

  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  v33 = CGRectInset(v32, v15, 0.0);
  v16 = v33.origin.x;
  v17 = v33.origin.y;
  v18 = v33.size.width;
  v19 = v33.size.height;
  if (self->_thumbIsArtworkBased)
  {
    v20 = [(_UISlideriOSVisualElement *)self currentThumbImage];
    [v20 size];
    v22 = v21;
    v24 = v23;
  }

  else
  {
    [(_UISlideriOSVisualElement *)self thumbDimensionNeue];
    v22 = v25;
    [(_UISlideriOSVisualElement *)self thumbDimensionNeue];
    v24 = v26;
  }

  v27 = 1.0 - v13;
  if ((*(&self->super._viewFlags + 18) & 0x40) == 0)
  {
    v27 = v13;
  }

  v28 = v16 + round((v18 - v22) * v27);
  v29 = v17 + round((v19 - v24) * 0.5);
  v30 = v22;
  v31 = v24;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3
{
  width = a3.width;
  v5 = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  [_UISlideriOSVisualElement drawingMetricsForPlatform:a3.width];
  v7 = [(_UISlideriOSVisualElement *)self slider];
  v8 = [v7 minimumTrackImageForState:0];

  if (v8)
  {
    [v8 size];
    v10 = v9;
    v12 = v11;
    v13 = [v8 leftCapWidth] > 0;
    if (v12 > v6)
    {
      v6 = v12;
    }

    if (v10 > v5)
    {
      v5 = v10;
    }
  }

  else
  {
    v13 = 1;
    if (v38 > v6)
    {
      v6 = v38;
    }
  }

  v14 = [(_UISlideriOSVisualElement *)self slider];
  v15 = [v14 maximumTrackImageForState:0];

  if (v15)
  {
    [v15 size];
    v17 = v16;
    v19 = v18;
    if (v13)
    {
      LOBYTE(v13) = [v15 leftCapWidth] > 0;
    }

    if (v19 <= v6)
    {
      v19 = v6;
    }

    if (v17 > v5)
    {
      v5 = v17;
    }
  }

  else if (v38 > v6)
  {
    v19 = v38;
  }

  else
  {
    v19 = v6;
  }

  if (self->_thumbIsArtworkBased)
  {
    v20 = [(_UISlideriOSVisualElement *)self slider];
    v21 = [v20 thumbImageForState:0];

    if (v21)
    {
      [v21 size];
      if (v23 > v19)
      {
        v19 = v23;
      }

      if (v22 > v5)
      {
        v5 = v22;
      }

      v15 = v21;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    [(_UISlideriOSVisualElement *)self thumbDimensionNeue];
    v25 = v24;
    [(_UISlideriOSVisualElement *)self thumbDimensionNeue];
    if (v26 > v19)
    {
      v19 = v26;
    }

    if (v25 > v5)
    {
      v5 = v25;
    }
  }

  v27 = [(_UISlideriOSVisualElement *)self slider];
  v28 = [v27 minimumValueImage];

  if (v28)
  {
    [v28 size];
    v5 = v5 + v30 + 11.0;
    if (v29 > v19)
    {
      v19 = v29;
    }
  }

  v31 = [(_UISlideriOSVisualElement *)self slider];
  v32 = [v31 maximumValueImage];

  if (v32)
  {
    [v32 size];
    v5 = v5 + v34 + 11.0;
    if (v33 > v19)
    {
      v19 = v33;
    }
  }

  if (![(UISliderDataModel *)self->_data showValue]|| (v5 = v5 + 34.0, v35 = 15.0, v19 >= 15.0))
  {
    v35 = v19;
  }

  if (v5 > width || !v13)
  {
    width = v5;
  }

  v36 = width;
  v37 = v35;
  result.height = v37;
  result.width = v36;
  return result;
}

- (UIEdgeInsets)alignmentRectInsets
{
  v3 = [(_UISlideriOSVisualElement *)self slider];
  v4 = [v3 thumbImageForState:0];

  v5 = [(_UISlideriOSVisualElement *)self slider];
  v6 = [v5 minimumTrackImageForState:0];

  if (!v4 || ([v4 alignmentRectInsets], v10 = v7, v11 = v9, v12 = 1, v13 == 0.0) && v8 == 0.0 && v7 == 0.0 && v9 == 0.0)
  {
    v12 = 0;
    v11 = 1.0;
    v10 = 0.0;
  }

  v14 = 2.0;
  if (!v6 || ([v6 alignmentRectInsets], v19 = v18, v20 = v15, v21 = v16, v22 = v17, v18 == 0.0) && v16 == 0.0 && v15 == 0.0 && v17 == 0.0)
  {
    v23 = 2.0;
  }

  else
  {
    v24 = dyld_program_sdk_at_least();
    v25 = 2.0;
    if (v24)
    {
      v25 = 3.0;
    }

    v23 = v20 + v25;
    v14 = v22 + v25;
    if (!v12)
    {
      v11 = v21;
      v10 = v19;
    }
  }

  v26 = v10;
  v27 = v23;
  v28 = v11;
  v29 = v14;
  result.right = v29;
  result.bottom = v28;
  result.left = v27;
  result.top = v26;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self frame];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = _UISlideriOSVisualElement;
  [(UIView *)&v13 setFrame:x, y, width, height];
  v12 = v11 != height || v9 != width;
  [(_UISlideriOSVisualElement *)self _layoutSubviewsForBoundsChange:v12];
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = _UISlideriOSVisualElement;
  [(UIView *)&v13 setBounds:x, y, width, height];
  v12 = v11 != height || v9 != width;
  [(_UISlideriOSVisualElement *)self _layoutSubviewsForBoundsChange:v12];
}

- (void)didPerformLayout
{
  [(_UISlideriOSVisualElement *)self _initImages];
  if (!self->_thumbView && !self->_thumbViewNeue)
  {
    [(_UISlideriOSVisualElement *)self _initSubviews];
  }

  [(_UISlideriOSVisualElement *)self _layoutSubviewsForBoundsChange:0];
}

- (void)_setSliderNeedsLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_slider);
  [WeakRetained setNeedsLayout];
}

- (void)_traitCollectionDidChangeInternal:(const _UITraitCollectionChangeDescription *)a3
{
  v7.receiver = self;
  v7.super_class = _UISlideriOSVisualElement;
  [(UIView *)&v7 _traitCollectionDidChangeInternal:?];
  if (dyld_program_sdk_at_least())
  {
    if (a3->var4.var2 || (v5 = _UIGetTraitTokenValue(&unk_1EFE325A8), _UITraitTokenSetContains(&a3->var2, v5)))
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __63___UISlideriOSVisualElement__traitCollectionDidChangeInternal___block_invoke;
      v6[3] = &unk_1E70F3590;
      v6[4] = self;
      [UIView performWithoutAnimation:v6];
    }
  }
}

- (void)_updateMaxTrackColorForInitialization:(BOOL)a3
{
  v3 = a3;
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = [(_UISlideriOSVisualElement *)self slider];
  v6 = [v5 maximumTrackTintColor];

  if (!v6)
  {
    if (dyld_program_sdk_at_least())
    {
      +[UIColor systemFillColor];
    }

    else
    {
      [UIColor colorWithRed:0.72265625 green:0.72265625 blue:0.72265625 alpha:1.0];
    }
    v6 = ;
  }

  v15 = 0.0;
  v16 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    if (v6)
    {
      v8 = [v6 getRed:&v16 green:&v15 blue:&v14 alpha:&v13];
      if ((dyld_program_sdk_at_least() & 1) == 0 && v8)
      {
        v9 = [UIColor colorWithRed:v16 * 0.978378378 green:v15 * 0.978378378 blue:v14 * 0.978378378 alpha:v13];
        v18[0] = v9;
        v18[1] = v6;
        v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];

        goto LABEL_14;
      }
    }

    else
    {
      dyld_program_sdk_at_least();
    }

    v17 = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
LABEL_14:
    if (([(NSArray *)self->_trackColors isEqual:v7]& 1) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v19[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
LABEL_15:
  objc_storeStrong(&self->_trackColors, v7);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67___UISlideriOSVisualElement__updateMaxTrackColorForInitialization___block_invoke;
  v12[3] = &unk_1E70F3590;
  v12[4] = self;
  v10 = _Block_copy(v12);
  v11 = v10;
  if (v3)
  {
    [UIView _performSystemAppearanceModifications:v10];
  }

  else
  {
    (*(v10 + 2))(v10);
    self->_trackIsArtworkBased = 0;
  }

LABEL_19:
}

- (void)_layoutSubviewsForBoundsChange:(BOOL)a3
{
  v3 = a3;
  [(UIView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  WeakRetained = objc_loadWeakRetained(&self->_slider);
  rect = v12;
  [WeakRetained trackRectForBounds:{v6, v8, v10, v12}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v122 = v21;
  v123 = v19;
  v124 = v17;
  v125 = v15;
  if ((*&self->_sliderFlags & 4) != 0)
  {
    [(_UISlideriOSVisualElement *)self _modifiedTrackRect:v15, v17, v19, v21];
    v15 = v22;
    v17 = v23;
    v19 = v24;
    v21 = v25;
  }

  v26 = objc_loadWeakRetained(&self->_slider);
  v27 = [(_UISlideriOSVisualElement *)self slider];
  [v27 value];
  LODWORD(v113) = v28;
  [v26 thumbRectForBounds:v6 trackRect:v8 value:{v10, v12, v15, v17, v19, v21, v113}];
  v126 = v29;
  v128 = v30;
  v116 = v31;
  v118 = v32;

  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v33 = [(_UISlideriOSVisualElement *)self slider];
  v131 = [v33 currentMinimumTrackImage];

  v34 = [(_UISlideriOSVisualElement *)self slider];
  v35 = [v34 currentMaximumTrackImage];

  v36 = [(_UISlideriOSVisualElement *)self slider];
  v37 = [v36 _edgeFeedbackGenerator];

  if (v37 && v3)
  {
    v135.origin.x = v6;
    v135.origin.y = v8;
    v135.size.width = v10;
    v135.size.height = v12;
    Width = CGRectGetWidth(v135);
    v39 = [(_UISlideriOSVisualElement *)self slider];
    v40 = [v39 _edgeFeedbackGenerator];
    [v40 setDistance:Width];
  }

  v41 = [(_UISlideriOSVisualElement *)self slider];
  v42 = [v41 _isThumbEnabled];

  v130 = v10;
  if (v42)
  {
    v136.origin.x = v15;
    v136.origin.y = v17;
    v136.size.width = v19;
    v136.size.height = v21;
    CGRectDivide(v136, &slice, &remainder, v126 + round(v128 * 0.5) - v15, CGRectMinXEdge);
    v43 = slice.size.width;
    [v131 capInsets];
    if (v43 <= v44)
    {
      slice.origin.x = v15;
      slice.origin.y = v17;
      slice.size.height = v21;
      slice.size.width = 0.0;
      remainder.origin.x = v15;
      remainder.origin.y = v17;
      remainder.size.width = v19;
      remainder.size.height = v21;
    }

    else
    {
      v45 = slice.size.width;
      [v35 capInsets];
      if (v45 >= v19 - v46)
      {
        slice.origin.x = v15;
        slice.origin.y = v17;
        slice.size.width = v19;
        slice.size.height = v21;
        remainder.origin.x = v15;
        remainder.origin.y = v17;
        remainder.size.width = v19;
        remainder.size.height = v21;
        v137.origin.x = v15;
        v137.origin.y = v17;
        v137.size.width = v19;
        v137.size.height = v21;
        remainder.origin.x = CGRectGetMaxX(v137);
        remainder.size.width = 0.0;
      }
    }

    if ((*&self->_sliderFlags & 2) != 0)
    {
      v48 = [(_UISlideriOSVisualElement *)self slider];
      v49 = [v48 currentMinimumTrackImage];
      v50 = ([v49 leftCapWidth] + 1);

      v51 = [(_UISlideriOSVisualElement *)self slider];
      v52 = [v51 currentMaximumTrackImage];
      v53 = ([v52 leftCapWidth] + 1);

      v54 = slice.size.width;
      if (slice.size.width >= v50)
      {
        v56 = remainder.size.width;
      }

      else
      {
        v55 = v50 - slice.size.width;
        slice.size.width = v50;
        v56 = remainder.size.width - v55;
        remainder.origin.x = v55 + remainder.origin.x;
        remainder.size.width = remainder.size.width - v55;
        v54 = v50;
      }

      if (v56 < v53)
      {
        v57 = v53 - v56;
        remainder.origin.x = remainder.origin.x - v57;
        remainder.size.width = v53;
        slice.size.width = v54 - v57;
      }
    }

    v10 = v130;
    if ([(UISliderDataModel *)self->_data isMinimumTrackVisible])
    {
      v58 = v35;
      v59 = remainder.size.width;
      height = remainder.size.height;
      x = remainder.origin.x;
      y = remainder.origin.y;
      goto LABEL_21;
    }
  }

  else
  {
    v47 = *(MEMORY[0x1E695F058] + 16);
    slice.origin = *MEMORY[0x1E695F058];
    slice.size = v47;
  }

  v58 = v35;
  remainder.origin.x = v15;
  remainder.origin.y = v17;
  x = v15;
  height = v21;
  v59 = v19;
  y = v17;
  remainder.size.width = v19;
  remainder.size.height = v21;
LABEL_21:
  v63 = *(&self->super._viewFlags + 2);
  if ((v63 & 0x400000) != 0)
  {
    p_y = &slice.origin.y;
  }

  else
  {
    y = slice.origin.y;
    v59 = slice.size.width;
    height = slice.size.height;
    x = slice.origin.x;
    p_y = &remainder.origin.y;
  }

  if ((v63 & 0x400000) != 0)
  {
    p_size = &slice.size;
  }

  else
  {
    p_size = &remainder.size;
  }

  if ((v63 & 0x400000) != 0)
  {
    p_height = &slice.size.height;
  }

  else
  {
    p_height = &remainder.size.height;
  }

  if ((v63 & 0x400000) != 0)
  {
    p_slice = &slice;
  }

  else
  {
    p_slice = &remainder;
  }

  [(UIView *)self->_minTrackClipView setFrame:x, y, v59, height];
  [(UIImageView *)self->_minTrackView setImage:v131];
  [(UIView *)self->_minTrackClipView convertRect:self fromView:v15, v17, v19, v21];
  [(UIImageView *)self->_minTrackView setFrame:?];
  [(UIView *)self->_maxTrackClipView setFrame:p_slice->origin.x, *p_y, p_size->width, *p_height];
  v68 = v58;
  [(UIImageView *)self->_maxTrackView setImage:v58];
  [(UIView *)self->_maxTrackClipView convertRect:self fromView:v15, v17, v19, v21];
  [(UIImageView *)self->_maxTrackView setFrame:?];
  if ((v63 & 0x400000) != 0)
  {
    v69 = *MEMORY[0x1E695EFF8];
    v70 = *(MEMORY[0x1E695EFF8] + 8);
    [(UIView *)self->_maxTrackView frame];
    v71 = v70;
    v10 = v130;
    [(UIImageView *)self->_maxTrackView setFrame:v69, v71];
  }

  if (self->_thumbIsArtworkBased)
  {
    v72 = [(_UISlideriOSVisualElement *)self currentThumbImage];
    v73 = [(UIImageView *)self->_thumbView image];

    if (v73 != v72)
    {
      [(UIImageView *)self->_thumbView setImage:v72];
      if ([v72 leftCapWidth] || objc_msgSend(v72, "topCapHeight"))
      {
        v74 = 0;
      }

      else
      {
        v74 = 4;
      }

      [(UIImageView *)self->_thumbView setContentMode:v74];
    }

    [(UIImageView *)self->_thumbView setFrame:v126, v116, v128, v118];
  }

  else
  {
    [(UIView *)self->_thumbViewNeue setFrame:v126, v116, v128, v118];
  }

  if ((*&self->_sliderFlags & 4) != 0)
  {
    v77 = 9;
    if ((v63 & 0x400000) != 0)
    {
      v78 = 9;
    }

    else
    {
      v78 = 8;
    }

    v79 = *(&self->super.super.super.isa + OBJC_IVAR____UISlideriOSVisualElement__sliderFlags[v78]);
    if ((v63 & 0x400000) != 0)
    {
      v77 = 8;
    }

    v80 = *(&self->super.super.super.isa + OBJC_IVAR____UISlideriOSVisualElement__sliderFlags[v77]);
    v76 = v79;
    v81 = objc_loadWeakRetained(&self->_slider);
    v82 = v81;
    if ((v63 & 0x400000) != 0)
    {
      [v81 maximumValueImageRectForBounds:{v6, v8, v10, rect}];
      v119 = v93;
      v120 = v92;
      v127 = v95;
      v129 = v94;

      v87 = objc_loadWeakRetained(&self->_slider);
      [v87 minimumValueImageRectForBounds:{v6, v8, v10, rect}];
    }

    else
    {
      [v81 minimumValueImageRectForBounds:{v6, v8, v10, rect}];
      v119 = v84;
      v120 = v83;
      v127 = v86;
      v129 = v85;

      v87 = objc_loadWeakRetained(&self->_slider);
      [v87 maximumValueImageRectForBounds:{v6, v8, v10, rect}];
    }

    v114 = v91;
    v115 = v88;
    v121 = v89;
    v117 = v90;

    v138.origin.x = v15;
    v138.origin.y = v17;
    v138.size.width = v19;
    v138.size.height = v21;
    MinX = CGRectGetMinX(v138);
    v139.origin.x = v125;
    v139.origin.y = v124;
    v139.size.width = v123;
    v139.size.height = v122;
    [v76 setFrame:{v120 + MinX - CGRectGetMinX(v139), v129, v127, v119}];
    v140.origin.x = v15;
    v140.origin.y = v17;
    v140.size.width = v19;
    v140.size.height = v21;
    MaxX = CGRectGetMaxX(v140);
    v141.origin.x = v125;
    v141.origin.y = v124;
    v141.size.width = v123;
    v141.size.height = v122;
    [v80 setFrame:{v115 + MaxX - CGRectGetMaxX(v141), v121, v117, v114}];

    v10 = v130;
  }

  else
  {
    v75 = objc_loadWeakRetained(&self->_slider);
    [v75 minimumValueImageRectForBounds:{v6, v8, v10, rect}];
    [(UIImageView *)self->_minValueImageView setFrame:?];

    v76 = objc_loadWeakRetained(&self->_slider);
    [v76 maximumValueImageRectForBounds:{v6, v8, v10, rect}];
    [(UIImageView *)self->_maxValueImageView setFrame:?];
  }

  v98 = [(UIView *)self viewWithTag:1986096245];
  if ([(UISliderDataModel *)self->_data showValue])
  {
    if (v98)
    {
      if (!v3)
      {
LABEL_58:
        v99 = MEMORY[0x1E696AEC0];
        v100 = [(_UISlideriOSVisualElement *)self slider];
        [v100 maximumValue];
        v102 = v101;
        v103 = [(_UISlideriOSVisualElement *)self slider];
        [v103 minimumValue];
        if ((v102 - v104) < 10.0)
        {
          v105 = @"%.2f";
        }

        else
        {
          v105 = @"%.1f";
        }

        v106 = [(_UISlideriOSVisualElement *)self slider];
        [v106 value];
        v108 = [v99 stringWithFormat:v105, v107];
        [(UILabel *)v98 setText:v108];

        goto LABEL_64;
      }
    }

    else
    {
      v110 = [UILabel alloc];
      [(_UISlideriOSVisualElement *)self valueTextRectForBounds:v6, v8, v10, rect];
      v98 = [(UILabel *)v110 initWithFrame:?];
      [(UIView *)v98 setTag:1986096245];
      v111 = [off_1E70ECC18 boldSystemFontOfSize:12.0];
      [(UILabel *)v98 setFont:v111];

      v112 = +[UIColor lightGrayColor];
      [(UILabel *)v98 setTextColor:v112];

      [(UIView *)v98 setBackgroundColor:0];
      [(UILabel *)v98 setLineBreakMode:2];
      [(UIView *)v98 setOpaque:0];
      [(UIView *)self addSubview:v98];
      if (!v3)
      {
        goto LABEL_58;
      }
    }

    [(_UISlideriOSVisualElement *)self valueTextRectForBounds:v6, v8, v10, rect];
    [(UILabel *)v98 setFrame:?];
    goto LABEL_58;
  }

  if (v98)
  {
    [(UIView *)v98 removeFromSuperview];
LABEL_64:
  }

  v109 = [(_UISlideriOSVisualElement *)self slider];
  -[_UISlideriOSVisualElement _updateAppearanceForEnabled:](self, "_updateAppearanceForEnabled:", [v109 isEnabled]);
}

- (void)_updateAppearanceForEnabled:(BOOL)a3
{
  v3 = 0.5;
  if (a3)
  {
    v3 = 1.0;
  }

  [(UIView *)self setAlpha:v3];
}

- (void)setValue:(float)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(_UISlideriOSVisualElement *)self slider];
  [v7 value];
  v9 = v8;

  if (v9 != a3)
  {
    if (v4)
    {
      v11 = [(_UISlideriOSVisualElement *)self slider];
      [v11 maximumValue];
      v13 = v12;
      v14 = [(_UISlideriOSVisualElement *)self slider];
      [v14 minimumValue];
      v16 = v15;

      if (v16 >= a3)
      {
        a3 = v16;
      }

      if (v13 <= a3)
      {
        v17 = v13;
      }

      else
      {
        v17 = a3;
      }

      *&self->_sliderFlags |= 2u;
      [(_UISlideriOSVisualElement *)self _layoutSubviewsForBoundsChange:0];
      [(UIView *)self layoutBelowIfNeeded];
      [(UIView *)self bounds];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      WeakRetained = objc_loadWeakRetained(&self->_slider);
      [WeakRetained trackRectForBounds:{v19, v21, v23, v25}];
      v45 = v28;
      v46 = v27;
      v30 = v29;
      v32 = v31;

      v33 = [(UIView *)self->_thumbView layer];
      v34 = [v33 presentationLayer];
      [v34 frame];
      v36 = v35;

      v37 = objc_loadWeakRetained(&self->_slider);
      *&v44 = v17;
      [v37 thumbRectForBounds:v19 trackRect:v21 value:{v23, v25, v46, v45, v30, v32, v44}];
      v39 = v38;

      v40 = vabdd_f64(v36, v39) / v30;
      v41 = v40 * 0.25;
      if (v41 >= 0.1)
      {
        v42 = v41;
      }

      else
      {
        v42 = 0.1;
      }

      [(_UISlideriOSVisualElement *)self _sliderAnimationWillStart];
      v43 = 4 * (*&self->_sliderFlags & 1);
      v47[4] = self;
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __47___UISlideriOSVisualElement_setValue_animated___block_invoke;
      v48[3] = &unk_1E7102030;
      v48[4] = self;
      v49 = v17;
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __47___UISlideriOSVisualElement_setValue_animated___block_invoke_2;
      v47[3] = &unk_1E70F5AC0;
      [UIView animateWithDuration:v43 delay:v48 options:v47 animations:v42 completion:0.0];
    }

    else
    {
      *&v10 = a3;

      [(_UISlideriOSVisualElement *)self _setValue:0 andSendAction:v10];
    }
  }
}

- (void)_setValue:(float)a3 andSendAction:(BOOL)a4
{
  v4 = a4;
  v8 = [(_UISlideriOSVisualElement *)self slider];
  [v8 minimumValue];
  v10 = v9;

  v11 = [(_UISlideriOSVisualElement *)self slider];
  [v11 maximumValue];
  v13 = v12;

  if (v10 > v13)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"_UISlideriOSVisualElement.m" lineNumber:1480 description:{@"Attempting to set a slider's minimumValue (%f) to be larger than the maximumValue (%f)", v10, v13}];
  }

  if (v10 >= a3)
  {
    v14 = v10;
  }

  else
  {
    v14 = a3;
  }

  if (v13 <= v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = [(_UISlideriOSVisualElement *)self slider];
  [v16 value];
  v18 = v17;

  if (v15 != v18)
  {
    *&v19 = v15;
    if ([(UISliderDataModel *)self->_data setValue:v19])
    {
      [(_UISlideriOSVisualElement *)self didSetValues];
    }

    if (*&self->_sliderFlags)
    {
      [(_UISlideriOSVisualElement *)self _layoutSubviewsForBoundsChange:0];
    }

    else
    {
      [(_UISlideriOSVisualElement *)self _setSliderNeedsLayout];
    }

    v20 = [(_UISlideriOSVisualElement *)self slider];
    v21 = [v20 isTracking];

    if (v21)
    {
      [(_UISlideriOSVisualElement *)self _bounceMinMaxValueImageViewsIfNeeded];
    }

    if ([(UISliderDataModel *)self->_data showValue])
    {
      [(UIView *)self bounds];
      [(_UISlideriOSVisualElement *)self valueTextRectForBounds:?];
      [(UIView *)self setNeedsDisplayInRect:?];
    }
  }

  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_slider);
    [WeakRetained _sendActionsForEvents:4096 withEvent:0];
  }
}

- (void)_sliderAnimationDidStop:(BOOL)a3
{
  if (a3)
  {
    *&self->_sliderFlags &= 0xFCu;
    [(_UISlideriOSVisualElement *)self _layoutSubviewsForBoundsChange:0];
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v10.receiver = self;
  v10.super_class = _UISlideriOSVisualElement;
  v5 = [(UIView *)&v10 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (v5 == self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_slider);
  }

  else
  {
    WeakRetained = v5;
  }

  v8 = WeakRetained;

  return v8;
}

- (BOOL)cancelMouseTracking
{
  v3 = [(_UISlideriOSVisualElement *)self slider];
  v4 = [v3 isHighlighted];

  if (v4)
  {
    v5 = [(_UISlideriOSVisualElement *)self slider];
    [v5 setHighlighted:0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_slider);
  [WeakRetained _sendActionsForEvents:256 withEvent:0];

  return 1;
}

- (BOOL)_shouldBeginTrackingAtPoint:(CGPoint)a3 pointInKnob:(CGPoint *)a4 inKnob:(BOOL *)a5
{
  v8 = 6;
  if (self->_thumbIsArtworkBased)
  {
    v8 = 5;
  }

  v9 = OBJC_IVAR____UISlideriOSVisualElement__sliderFlags[v8];
  [*(&self->super.super.super.isa + v9) convertPoint:self fromView:{a3.x, a3.y}];
  v11 = v10;
  v13 = v12;
  [*(&self->super.super.super.isa + v9) bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [(_UISlideriOSVisualElement *)self thumbHitEdgeInsets];
  v23 = v17 + v22;
  v26 = v19 - (v24 + v25);
  v33.size.height = v21 - (v22 + v27);
  v33.origin.x = v15 + v24;
  v33.origin.y = v23;
  v33.size.width = v26;
  v32.x = v11;
  v32.y = v13;
  v28 = CGRectContainsPoint(v33, v32);
  if (a4)
  {
    a4->x = v11;
    a4->y = v13;
  }

  if (a5)
  {
    *a5 = v28;
  }

  if (v28)
  {
    return 1;
  }

  data = self->_data;

  return [(UISliderDataModel *)data isTrackEnabled];
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  p_beginPoint = &self->_beginPoint;
  v6 = a3;
  [v6 locationInView:self];
  p_beginPoint->x = v7;
  p_beginPoint->y = v8;
  v34[0] = 0.0;
  v34[1] = 0.0;
  v33 = 0;
  v9 = [(_UISlideriOSVisualElement *)self _shouldBeginTrackingAtPoint:v34 pointInKnob:&v33 inKnob:?];
  v10 = [v6 _isPointerTouch];

  if (v33 == 1)
  {
    if (self->_thumbIsArtworkBased)
    {
      v11 = 432;
    }

    else
    {
      v11 = 504;
    }

    [*(&self->super.super.super.isa + v11) frame];
    self->_hitOffset = round(v19 * 0.5 - v34[0]);
    v20 = [(_UISlideriOSVisualElement *)self slider];
    [v20 minimumValue];
    v22 = v21;
    v23 = [(_UISlideriOSVisualElement *)self slider];
    [v23 maximumValue];
    v25 = ValueForPoint(self, (*(&self->super._viewFlags + 2) >> 22) & 1, p_beginPoint->x, p_beginPoint->y, p_beginPoint->x, p_beginPoint->y, v22, v24);

    WeakRetained = objc_loadWeakRetained(&self->_slider);
    *&v27 = v25;
    [WeakRetained setValue:0 animated:v27];

    v28 = [(_UISlideriOSVisualElement *)self slider];
    v29 = [v28 _edgeFeedbackGenerator];
    [v29 userInteractionStarted];

    v30 = [(_UISlideriOSVisualElement *)self slider];
    v31 = [v30 _modulationFeedbackGenerator];
    [v31 activateWithCompletionBlock:0];

    return 1;
  }

  else if (([(UISliderDataModel *)self->_data isTrackEnabled]| v10))
  {
    v12 = objc_loadWeakRetained(&self->_slider);
    v13 = [(_UISlideriOSVisualElement *)self slider];
    [v13 minimumValue];
    v15 = v14;
    v16 = [(_UISlideriOSVisualElement *)self slider];
    [v16 maximumValue];
    *&v18 = ValueForPoint(self, (*(&self->super._viewFlags + 2) >> 22) & 1, p_beginPoint->x, p_beginPoint->y, p_beginPoint->x, p_beginPoint->y, v15, v17);
    v9 = 1;
    [v12 setValue:1 animated:v18];

    self->_hitOffset = 0.0;
  }

  return v9;
}

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  [a3 locationInView:self];
  v8 = v7;
  v10 = v9;
  v11 = [(_UISlideriOSVisualElement *)self slider];
  [v11 maximumValue];
  v13 = v12;

  v14 = [(_UISlideriOSVisualElement *)self slider];
  [v14 minimumValue];
  v16 = v15;

  v17 = ValueForPoint(self, (*(&self->super._viewFlags + 2) >> 22) & 1, self->_beginPoint.x, self->_beginPoint.y, v8, v10, v16, v13);
  WeakRetained = objc_loadWeakRetained(&self->_slider);
  *&v19 = v17;
  [WeakRetained setValue:0 animated:v19];

  if (v13 > v16)
  {
    v20 = ((v17 - v16) / (v13 - v16));
    v21 = [(_UISlideriOSVisualElement *)self slider];
    v22 = [v21 _edgeFeedbackGenerator];
    [v22 distance];
    v24 = v23 * v20;

    v25 = [(_UISlideriOSVisualElement *)self slider];
    v26 = [v25 _edgeFeedbackGenerator];
    [v26 positionUpdated:v24 atLocation:{v8, v10}];

    v27 = [(_UISlideriOSVisualElement *)self slider];
    v28 = [v27 _modulationFeedbackGenerator];
    [v28 valueUpdated:v20];
  }

  v29 = [(_UISlideriOSVisualElement *)self slider];
  v30 = [v29 isContinuous];

  if (v30)
  {
    v31 = objc_loadWeakRetained(&self->_slider);
    [v31 _sendActionsForEvents:4096 withEvent:v6];
  }

  v32 = [(_UISlideriOSVisualElement *)self slider];
  [v32 setHighlighted:1];

  return 1;
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v13 = a4;
  v6 = [(_UISlideriOSVisualElement *)self slider];
  [v6 setTracking:0];

  if (a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_slider);
    [WeakRetained _sendActionsForEvents:4096 withEvent:v13];
  }

  v8 = [(_UISlideriOSVisualElement *)self slider];
  [v8 setHighlighted:0];

  v9 = [(_UISlideriOSVisualElement *)self slider];
  v10 = [v9 _edgeFeedbackGenerator];
  [v10 userInteractionEnded];

  v11 = [(_UISlideriOSVisualElement *)self slider];
  v12 = [v11 _modulationFeedbackGenerator];
  [v12 deactivate];
}

- (void)_controlTouchBegan:(id)a3 withEvent:(id)a4
{
  v8 = a4;
  WeakRetained = [(_UISlideriOSVisualElement *)self slider];
  if ([WeakRetained isTracking])
  {
    v6 = [(_UISlideriOSVisualElement *)self slider];
    v7 = [v6 isContinuous];

    if (!v7)
    {
      goto LABEL_5;
    }

    WeakRetained = objc_loadWeakRetained(&self->_slider);
    [WeakRetained _sendActionsForEvents:4096 withEvent:v8];
  }

LABEL_5:
}

- (BOOL)cancelTouchTracking
{
  v3 = [(_UISlideriOSVisualElement *)self slider];
  v4 = [v3 isTracking];

  if (v4)
  {
    [(_UISlideriOSVisualElement *)self endTrackingWithTouch:0 withEvent:0];
  }

  v5 = [(_UISlideriOSVisualElement *)self slider];
  v6 = [v5 isHighlighted];

  if (v6)
  {
    v7 = [(_UISlideriOSVisualElement *)self slider];
    [v7 setHighlighted:0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_slider);
  [WeakRetained _sendActionsForEvents:256 withEvent:0];

  return 1;
}

- (void)showValueDidChange
{
  [(_UISlideriOSVisualElement *)self _setSliderNeedsLayout];

  [(UIView *)self invalidateIntrinsicContentSize];
}

- (CGRect)valueTextRectForBounds:(CGRect)a3
{
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(UISliderDataModel *)self->_data showValue:a3.origin.x])
  {
    v6 = x + width + -23.0;
    +[_UISlideriOSVisualElement drawingMetricsForPlatform];
    v7 = y + floor((v11 + -15.0) * 0.5);
    v8 = 23.0;
    v9 = 15.0;
  }

  else
  {
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
  }

  v10 = v6;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v10;
  return result;
}

- (id)createThumbView
{
  if (self->_thumbIsArtworkBased)
  {
    [(UIView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = objc_loadWeakRetained(&self->_slider);
    [v11 trackRectForBounds:{v4, v6, v8, v10}];
    LODWORD(v29) = 0;
    [v11 thumbRectForBounds:v4 trackRect:v6 value:{v8, v10, v12, v13, v14, v15, v29}];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v24 = [(UIImageView *)[UISliderImageView alloc] initWithFrame:v17, v19, v21, v23];
    [(UIView *)v24 setUserInteractionEnabled:0];
    [(UIView *)v24 setOpaque:0];
    v25 = v21 + -44.0;
    if (v21 + -44.0 > 0.0)
    {
      v25 = 0.0;
    }

    v26 = v25 * 0.5;
    v27 = v23 + -44.0;
    if (v23 + -44.0 > 0.0)
    {
      v27 = 0.0;
    }

    [(UIView *)v24 _setTouchInsets:v27 * 0.5, v26, v27 * 0.5, v26];
  }

  else
  {
    v24 = [(_UISlideriOSVisualElement *)self createThumbViewNeue];
  }

  return v24;
}

- (void)didSetThumbImageForStates
{
  [(_UISlideriOSVisualElement *)self _setSliderNeedsLayout];

  [(UIView *)self invalidateIntrinsicContentSize];
}

- (void)didSetMinimumTrackImageForStates
{
  [(_UISlideriOSVisualElement *)self _setSliderNeedsLayout];

  [(UIView *)self invalidateIntrinsicContentSize];
}

- (void)didSetMaximumTrackImageForStates
{
  [(_UISlideriOSVisualElement *)self _setSliderNeedsLayout];

  [(UIView *)self invalidateIntrinsicContentSize];
}

- (void)didSetThumbEnabled
{
  v3 = [(_UISlideriOSVisualElement *)self slider];
  v4 = [v3 _isThumbEnabled];

  if (v4)
  {
    v5 = [(_UISlideriOSVisualElement *)self slider];
    p_thumbView = &self->_thumbView;
    -[UIImageView setHidden:](self->_thumbView, "setHidden:", [v5 isEnabled] ^ 1);
  }

  else
  {
    p_thumbView = &self->_thumbView;
    [(UIImageView *)self->_thumbView setHidden:1];
  }

  [(_UISlideriOSVisualElement *)self _layoutSubviewsForBoundsChange:0];
  if (v4 != [(UISliderDataModel *)self->_data isMinimumTrackVisible])
  {
    v7 = *p_thumbView;
    v8 = [*p_thumbView isHidden];
    v9 = 1.0;
    if (v8)
    {
      v9 = 0.0;
    }

    [v7 setAlpha:v9];
  }
}

- (void)didChangeMinimumTrackVisibleWithDuration:(double)a3
{
  [(_UISlideriOSVisualElement *)self _layoutSubviewsForBoundsChange:0];
  v5 = [(UISliderDataModel *)self->_data isMinimumTrackVisible];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70___UISlideriOSVisualElement_didChangeMinimumTrackVisibleWithDuration___block_invoke;
  v8[3] = &__block_descriptor_40_e24_v24__0___v___8___v__B_16l;
  *&v8[4] = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70___UISlideriOSVisualElement_didChangeMinimumTrackVisibleWithDuration___block_invoke_2;
  v6[3] = &unk_1E70F35E0;
  v6[4] = self;
  v7 = v5;
  [UIView conditionallyAnimate:a3 > 0.0 withAnimation:v8 layout:v6 completion:0];
}

- (void)didUpdateConfiguration
{
  v3 = [(_UISlideriOSVisualElement *)self slider];
  v7 = [v3 _sliderConfiguration];

  v4 = v7;
  if (v7 && (v5 = objc_opt_respondsToSelector(), v4 = v7, (v5 & 1) != 0))
  {
    v6 = *&self->_sliderFlags | 8;
  }

  else
  {
    v6 = *&self->_sliderFlags & 0xF7;
  }

  *&self->_sliderFlags = v6;
}

- (UIEdgeInsets)thumbHitEdgeInsets
{
  v2 = 6;
  if (self->_thumbIsArtworkBased)
  {
    v2 = 5;
  }

  [*(&self->super.super.super.isa + OBJC_IVAR____UISlideriOSVisualElement__sliderFlags[v2]) bounds];
  v5 = (48.0 - v4) * 0.5;
  v6 = -v5;
  if (v5 <= 0.0)
  {
    v6 = -0.0;
  }

  v7 = (48.0 - v3) * 0.5;
  v8 = -v7;
  if (v7 <= 0.0)
  {
    v8 = -0.0;
  }

  v9 = v8;
  v10 = v6;
  result.right = v10;
  result.bottom = v9;
  result.left = v6;
  result.top = v8;
  return result;
}

- (void)didSetEnabled
{
  v3 = [(_UISlideriOSVisualElement *)self slider];
  -[UIView setUserInteractionEnabled:](self, "setUserInteractionEnabled:", [v3 isEnabled]);

  v4 = [(_UISlideriOSVisualElement *)self slider];
  -[_UISlideriOSVisualElement _updateAppearanceForEnabled:](self, "_updateAppearanceForEnabled:", [v4 isEnabled]);
}

- (UISlider)slider
{
  WeakRetained = objc_loadWeakRetained(&self->_slider);

  return WeakRetained;
}

@end