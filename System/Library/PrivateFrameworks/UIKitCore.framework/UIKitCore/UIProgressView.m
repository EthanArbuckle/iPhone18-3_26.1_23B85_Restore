@interface UIProgressView
+ (CGSize)defaultSize;
+ (Class)visualElementClassForTraitCollection:(id)a3;
+ (id)visualElementForTraitCollection:(id)a3;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3;
- (UIEdgeInsets)alignmentRectInsets;
- (UIProgressView)initWithCoder:(NSCoder *)coder;
- (UIProgressView)initWithFrame:(CGRect)frame;
- (UIProgressView)initWithProgressViewStyle:(UIProgressViewStyle)style;
- (void)_populateArchivedSubviews:(id)a3;
- (void)_refreshVisualElement;
- (void)_refreshVisualElementForTraitCollection:(id)a3 populatingAPIProperties:(BOOL)a4;
- (void)_setProgressAnimated:(float)a3 duration:(double)a4 delay:(double)a5 options:(unint64_t)a6;
- (void)encodeWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)setBarStyle:(int64_t)a3;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)setObservedProgress:(NSProgress *)observedProgress;
- (void)setProgress:(float)progress;
- (void)setProgress:(float)progress animated:(BOOL)animated;
- (void)setProgressImage:(UIImage *)progressImage;
- (void)setProgressTintColor:(UIColor *)progressTintColor;
- (void)setProgressViewStyle:(UIProgressViewStyle)progressViewStyle;
- (void)setTrackImage:(UIImage *)trackImage;
- (void)setTrackTintColor:(UIColor *)trackTintColor;
@end

@implementation UIProgressView

- (void)_refreshVisualElement
{
  v3 = [(UIView *)self traitCollection];
  [(UIProgressView *)self _refreshVisualElementForTraitCollection:v3 populatingAPIProperties:0];
}

- (UIProgressView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = UIProgressView;
  v7 = [(UIView *)&v10 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    [(UIProgressView *)v7 _refreshVisualElement];
    [(UIProgressView *)v8 setFrame:x, y, width, height];
    [(UIView *)v8 setOpaque:0];
    [(UIProgressView *)v8 setProgress:0.0];
    [(UIView *)v8 setClipsToBounds:0];
  }

  return v8;
}

- (UIProgressView)initWithProgressViewStyle:(UIProgressViewStyle)style
{
  v4 = [(UIProgressView *)self initWithFrame:0.0, 0.0, 160.0, 11.0];
  v5 = v4;
  if (v4)
  {
    [(UIProgressView *)v4 setProgressViewStyle:style];
  }

  return v5;
}

- (UIProgressView)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v12.receiver = self;
  v12.super_class = UIProgressView;
  v5 = [(UIView *)&v12 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    [(UIProgressView *)v5 _refreshVisualElement];
    if ([(NSCoder *)v4 containsValueForKey:@"UIProgressTrackTintColor"])
    {
      v7 = [(NSCoder *)v4 decodeObjectForKey:@"UIProgressTrackTintColor"];
      [(UIProgressView *)v6 setTrackTintColor:v7];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"UIProgressProgressTintColor"])
    {
      v8 = [(NSCoder *)v4 decodeObjectForKey:@"UIProgressProgressTintColor"];
      [(UIProgressView *)v6 setProgressTintColor:v8];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"UIProgressProgressImage"])
    {
      v9 = [(NSCoder *)v4 decodeObjectForKey:@"UIProgressProgressImage"];
      [(UIProgressView *)v6 setProgressImage:v9];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"UIProgressTrackImage"])
    {
      v10 = [(NSCoder *)v4 decodeObjectForKey:@"UIProgressTrackImage"];
      [(UIProgressView *)v6 setTrackImage:v10];
    }

    [(UIProgressView *)v6 setProgressViewStyle:[(NSCoder *)v4 decodeIntegerForKey:@"UIProgressViewStyle"]];
    [(NSCoder *)v4 decodeFloatForKey:@"UIProgress"];
    [(UIProgressView *)v6 setProgress:?];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = UIProgressView;
  [(UIView *)&v10 encodeWithCoder:v4];
  progressViewStyle = self->_progressViewStyle;
  if (progressViewStyle)
  {
    [v4 encodeInteger:progressViewStyle forKey:@"UIProgressViewStyle"];
  }

  if (self->_progress != 0.0)
  {
    [v4 encodeFloat:@"UIProgress" forKey:?];
  }

  trackTintColor = self->_trackTintColor;
  if (trackTintColor)
  {
    [v4 encodeObject:trackTintColor forKey:@"UIProgressTrackTintColor"];
  }

  progressTintColor = self->_progressTintColor;
  if (progressTintColor)
  {
    [v4 encodeObject:progressTintColor forKey:@"UIProgressProgressTintColor"];
  }

  trackImage = self->_trackImage;
  if (trackImage)
  {
    [v4 encodeObject:trackImage forKey:@"UIProgressTrackImage"];
  }

  progressImage = self->_progressImage;
  if (progressImage)
  {
    [v4 encodeObject:progressImage forKey:@"UIProgressProgressImage"];
  }
}

- (void)_populateArchivedSubviews:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = UIProgressView;
  [(UIView *)&v5 _populateArchivedSubviews:v4];
  if (self->_visualElement)
  {
    if ([objc_opt_class() usesLegacySubviewStructure])
    {
      [(UIProgressViewVisualElement *)self->_visualElement removeLegacySubviewsForArchive:v4];
    }

    [v4 removeObject:self->_visualElement];
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (![(UIView *)self _canDrawContent])
  {
    [(UIProgressView *)self sizeThatFits:width, height];
    width = v8;
    height = v9;
  }

  [(UIView *)self frame];
  v11 = v10;
  v13 = v12;
  v15.receiver = self;
  v15.super_class = UIProgressView;
  [(UIView *)&v15 setFrame:x, y, width, height];
  if (width != v11 || height != v13)
  {
    if ([(UIView *)self _canDrawContent])
    {
      [(UIView *)self setNeedsDisplay];
    }

    else if (+[UIView _isInAnimationBlock])
    {
      [(UIView *)self setNeedsLayout];
      [(UIView *)self layoutBelowIfNeeded];
    }
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (![(UIView *)self _canDrawContent]&& (*(&self->super._viewFlags + 7) & 2) == 0)
  {
    [(UIProgressView *)self sizeThatFits:width, height];
    width = v8;
    height = v9;
  }

  [(UIView *)self bounds];
  v11 = v10;
  v13 = v12;
  v15.receiver = self;
  v15.super_class = UIProgressView;
  [(UIView *)&v15 setBounds:x, y, width, height];
  if (width != v11 || height != v13)
  {
    if ([(UIView *)self _canDrawContent])
    {
      [(UIView *)self setNeedsDisplay];
    }

    else if (+[UIView _isInAnimationBlock]|| (*(&self->super._viewFlags + 7) & 2) != 0)
    {
      [(UIView *)self setNeedsLayout];
      [(UIView *)self layoutBelowIfNeeded];
    }
  }
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (self && (visualElement = self->_visualElement) != 0)
  {

    [(UIProgressViewVisualElement *)visualElement _intrinsicSizeWithinSize:?];
  }

  else
  {
    v9 = objc_opt_class();
    v10 = [(UIView *)self traitCollection];
    [objc_msgSend(v9 visualElementClassForTraitCollection:{v10), "intrinsicSizeWithinSize:control:", self, width, height}];
    v12 = v11;
    v14 = v13;

    v7 = v12;
    v8 = v14;
  }

  result.height = v8;
  result.width = v7;
  return result;
}

- (UIEdgeInsets)alignmentRectInsets
{
  if (self)
  {
    self = self->_visualElement;
  }

  [(UIProgressView *)self alignmentRectInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setProgressViewStyle:(UIProgressViewStyle)progressViewStyle
{
  if (progressViewStyle < 2)
  {
    if (self->_progressViewStyle != progressViewStyle)
    {
      self->_progressViewStyle = progressViewStyle;
      visualElement = self->_visualElement;

      [(UIProgressViewVisualElement *)visualElement setProgressViewStyle:?];
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__UIProgressView_setProgressViewStyle___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = progressViewStyle;
    if (setProgressViewStyle__onceToken != -1)
    {
      dispatch_once(&setProgressViewStyle__onceToken, block);
    }
  }
}

- (void)layoutSubviews
{
  [(UIView *)self bounds];
  visualElement = self->_visualElement;

  [(UIProgressViewVisualElement *)visualElement setFrame:?];
}

- (void)setObservedProgress:(NSProgress *)observedProgress
{
  v5 = observedProgress;
  if (([(NSProgress *)v5 isEqual:self->_observedProgress]& 1) == 0)
  {
    [(NSObservation *)self->_progressObservation finishObserving];
    progressObservation = self->_progressObservation;
    self->_progressObservation = 0;

    objc_storeStrong(&self->_observedProgress, observedProgress);
    if (self->_observedProgress)
    {
      objc_initWeak(&location, self);
      v7 = [MEMORY[0x1E696ADA8] keyPathWithRootObject:self path:"observedProgress.fractionCompleted"];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __38__UIProgressView_setObservedProgress___block_invoke;
      v10[3] = &unk_1E711CC60;
      objc_copyWeak(&v11, &location);
      v8 = [v7 addObserverBlock:v10];
      v9 = self->_progressObservation;
      self->_progressObservation = v8;

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }
}

void __38__UIProgressView_setObservedProgress___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__UIProgressView_setObservedProgress___block_invoke_2;
  v5[3] = &unk_1E70F2F80;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __38__UIProgressView_setObservedProgress___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained observedProgress];

  if (v3)
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    [*(a1 + 32) doubleValue];
    *&v4 = v4;
    [v5 _setProgressAnimated:4 duration:v4 delay:0.1 options:0.0];
  }
}

- (void)setProgress:(float)progress
{
  v3 = fmin(progress, 1.0);
  if (v3 < 0.0)
  {
    v3 = 0.0;
  }

  v4 = v3;
  if (self->_progress != v4)
  {
    [(UIProgressView *)self _setProgress:?];
    visualElement = self->_visualElement;
    *&v7 = self->_progress;

    [(UIProgressViewVisualElement *)visualElement setProgress:0 animated:0 duration:v7 delay:0.0 options:0.0];
  }
}

- (void)setProgress:(float)progress animated:(BOOL)animated
{
  v4 = progress;
  if (!animated)
  {
LABEL_5:
    progress = v4;

    [(UIProgressView *)self setProgress:*&progress];
    return;
  }

  if ([(UIView *)self _canDrawContent])
  {
    if (setProgress_animated__onceToken != -1)
    {
      dispatch_once(&setProgress_animated__onceToken, &__block_literal_global_484);
    }

    goto LABEL_5;
  }

  v6 = vabds_f32(self->_progress, v4);
  progress = v4;

  [(UIProgressView *)self _setProgressAnimated:196612 duration:*&progress delay:v6 options:0.0];
}

- (void)setProgressTintColor:(UIColor *)progressTintColor
{
  v5 = progressTintColor;
  if (self->_progressTintColor != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_progressTintColor, progressTintColor);
    progressImage = self->_progressImage;
    self->_progressImage = 0;

    [(UIProgressViewVisualElement *)self->_visualElement setProgressTintColor:v7];
    v5 = v7;
  }
}

- (void)setProgressImage:(UIImage *)progressImage
{
  v5 = progressImage;
  if (self->_progressImage != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_progressImage, progressImage);
    progressTintColor = self->_progressTintColor;
    self->_progressTintColor = 0;

    [(UIProgressViewVisualElement *)self->_visualElement setProgressImage:v7];
    v5 = v7;
  }
}

- (void)setTrackTintColor:(UIColor *)trackTintColor
{
  v5 = trackTintColor;
  if (self->_trackTintColor != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_trackTintColor, trackTintColor);
    trackImage = self->_trackImage;
    self->_trackImage = 0;

    [(UIProgressViewVisualElement *)self->_visualElement setTrackTintColor:v7];
    v5 = v7;
  }
}

- (void)setTrackImage:(UIImage *)trackImage
{
  v5 = trackImage;
  if (self->_trackImage != v5)
  {
    trackTintColor = self->_trackTintColor;
    self->_trackTintColor = 0;
    v7 = v5;

    objc_storeStrong(&self->_trackImage, trackImage);
    [(UIProgressViewVisualElement *)self->_visualElement setTrackImage:v7];
    v5 = v7;
  }
}

+ (Class)visualElementClassForTraitCollection:(id)a3
{
  v3 = [a3 userInterfaceIdiom];
  if (v3 < 2 || v3 == 8)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = objc_opt_self();
  }

  return v4;
}

+ (id)visualElementForTraitCollection:(id)a3
{
  v3 = [a1 visualElementClassForTraitCollection:a3];
  v4 = [objc_msgSend(v3 "alloc")];

  return v4;
}

- (void)_refreshVisualElementForTraitCollection:(id)a3 populatingAPIProperties:(BOOL)a4
{
  v4 = a4;
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [objc_opt_class() visualElementForTraitCollection:v7];
  if (!v8)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"UIProgressView.m" lineNumber:376 description:@"Nil UIProgressView visual element"];
  }

  v9 = [objc_opt_class() usesLegacySubviewStructure];
  if (self)
  {
    [(UIProgressViewVisualElement *)self->_visualElement removeFromSuperview];
    visualElement = self->_visualElement;
  }

  else
  {
    [0 removeFromSuperview];
    visualElement = 0;
  }

  [(UIProgressViewVisualElement *)visualElement setProgressControlView:0];
  if (v9)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = [(UIView *)self subviews];
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v19 + 1) + 8 * i) removeFromSuperview];
        }

        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }
  }

  if (self)
  {
    objc_storeStrong(&self->_visualElement, v8);
  }

  v16 = [objc_opt_class() usesLegacySubviewStructure];
  [v8 setAutoresizingMask:18];
  [(UIView *)self bounds];
  [v8 setFrame:?];
  if (v16)
  {
    [v8 setProgressControlView:self];
    [(UIView *)self addSubview:v8];
  }

  else
  {
    [(UIView *)self addSubview:v8];
    [v8 setProgressControlView:self];
  }

  [(UIView *)self invalidateIntrinsicContentSize];
  [(UIView *)self setNeedsLayout];
  [(UIView *)self setNeedsDisplay];
  *&v17 = self->_progress;
  [v8 setProgress:0 animated:0 duration:v17 delay:0.0 options:0.0];
  if (v4)
  {
    [v8 setProgressViewStyle:self->_progressViewStyle];
    [v8 setProgressImage:self->_progressImage];
    [v8 setTrackImage:self->_trackImage];
    [v8 setProgressTintColor:self->_progressTintColor];
    [v8 setTrackTintColor:self->_trackTintColor];
    [v8 setBarStyle:self->_barStyle];
  }
}

- (void)setBarStyle:(int64_t)a3
{
  if (self->_barStyle != a3)
  {
    self->_barStyle = a3;
    [(UIProgressViewVisualElement *)self->_visualElement setBarStyle:?];
  }
}

- (void)_setProgressAnimated:(float)a3 duration:(double)a4 delay:(double)a5 options:(unint64_t)a6
{
  v7 = fmin(a3, 1.0);
  if (v7 < 0.0)
  {
    v7 = 0.0;
  }

  v8 = v7;
  if (self->_progress != v8)
  {
    *&v7 = v7;
    [(UIProgressView *)self _setProgress:v7];
    visualElement = self->_visualElement;
    *&v12 = v8;

    [(UIProgressViewVisualElement *)visualElement setProgress:1 animated:a6 duration:v12 delay:a4 options:0.0];
  }
}

+ (CGSize)defaultSize
{
  v2 = 160.0;
  v3 = 11.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end