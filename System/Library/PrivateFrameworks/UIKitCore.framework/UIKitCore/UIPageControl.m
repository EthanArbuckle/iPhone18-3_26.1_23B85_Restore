@interface UIPageControl
+ (id)_visualProviderForPageControl:(id)a3;
- (BOOL)_implementsCustomCurrentPageImagesOverride;
- (BOOL)_implementsCustomPageImagesOverride;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)shouldTrack;
- (CAColorMatrix)_activePageIndicatorVibrantColorMatrix;
- (CAColorMatrix)_pageIndicatorVibrantColorMatrix;
- (CGAffineTransform)_activeTransformForTouchedPage;
- (CGAffineTransform)_targetTransformForTouchedPage;
- (CGRect)_indicatorFrameForPage:(int64_t)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeForNumberOfPages:(NSInteger)pageCount;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIImage)currentPageIndicatorImageForPage:(NSInteger)page;
- (UIImage)indicatorImageForPage:(NSInteger)page;
- (UIPageControl)initWithCoder:(id)a3;
- (UIPageControl)initWithFrame:(CGRect)a3;
- (UIView)_platterBackgroundView;
- (void)_populateArchivedSubviews:(id)a3;
- (void)_setActivePageIndicatorVibrantColorMatrix:(CAColorMatrix *)a3;
- (void)_setActiveTransformForTouchedPage:(CGAffineTransform *)a3;
- (void)_setAllowsDiscreteInteraction:(BOOL)a3;
- (void)_setCustomHorizontalPadding:(double)a3;
- (void)_setCustomIndicatorSpacing:(double)a3;
- (void)_setCustomVerticalPadding:(double)a3;
- (void)_setFlickToEndGestureEnabled:(BOOL)a3;
- (void)_setPageIndicatorVibrantColorMatrix:(CAColorMatrix *)a3;
- (void)_setPlatterBackgroundView:(id)a3;
- (void)_setPlatterEffect:(id)a3;
- (void)_setPrefersTargetPageForDiscreteInteraction:(BOOL)a3;
- (void)_setTargetTransformForTouchedPage:(CGAffineTransform *)a3;
- (void)_traitCollectionDidChangeOnSubtreeInternal:(const _UITraitCollectionChangeDescription *)a3;
- (void)_updateCurrentPage:(int64_t)a3 updateDisplayImmediately:(BOOL)a4;
- (void)_updateCurrentPageDisplayWithForceUpdate:(BOOL)a3;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)encodeWithCoder:(id)a3;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)setAllowsContinuousInteraction:(BOOL)allowsContinuousInteraction;
- (void)setBackgroundStyle:(UIPageControlBackgroundStyle)backgroundStyle;
- (void)setCurrentPageIndicatorImage:(UIImage *)image forPage:(NSInteger)page;
- (void)setCurrentPageIndicatorTintColor:(UIColor *)currentPageIndicatorTintColor;
- (void)setDefersCurrentPageDisplay:(BOOL)defersCurrentPageDisplay;
- (void)setDirection:(UIPageControlDirection)direction;
- (void)setHidesForSinglePage:(BOOL)hidesForSinglePage;
- (void)setIndicatorImage:(UIImage *)image forPage:(NSInteger)page;
- (void)setNumberOfPages:(NSInteger)numberOfPages;
- (void)setPageIndicatorTintColor:(UIColor *)pageIndicatorTintColor;
- (void)setProgress:(UIPageControlProgress *)progress;
- (void)setSemanticContentAttribute:(int64_t)a3;
@end

@implementation UIPageControl

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = UIPageControl;
  [(UIView *)&v3 layoutSubviews];
  [(_UIPageControlVisualProvider *)self->_visualProvider layoutSubviews];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = UIPageControl;
  [(UIView *)&v3 didMoveToWindow];
  [(UIPageControlProgress *)self->_progress _pageControlDidMoveToWindow];
}

- (CGSize)intrinsicContentSize
{
  [(_UIPageControlVisualProvider *)self->_visualProvider intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)dealloc
{
  [(_UIPageControlVisualProvider *)self->_visualProvider teardownPageControl];
  v3.receiver = self;
  v3.super_class = UIPageControl;
  [(UIView *)&v3 dealloc];
}

- (BOOL)_implementsCustomPageImagesOverride
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();

  return [v2 doesOverrideMethod:sel__pageIndicatorImageForPage_ inBaseClass:v3];
}

- (BOOL)_implementsCustomCurrentPageImagesOverride
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();

  return [v2 doesOverrideMethod:sel__pageIndicatorCurrentImageForPage_ inBaseClass:v3];
}

+ (id)_visualProviderForPageControl:(id)a3
{
  v3 = a3;
  v4 = dyld_program_sdk_at_least();
  v5 = off_1E70EB9E0;
  if (!v4)
  {
    v5 = off_1E70EBAF8;
  }

  v6 = [objc_alloc(*v5) initWithPageControl:v3];

  return v6;
}

- (UIPageControl)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = UIPageControl;
  v3 = [(UIControl *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_currentPage = 0;
    [(UIView *)v3 setAutoresizingMask:2];
    v5 = [objc_opt_class() _visualProviderForPageControl:v4];
    visualProvider = v4->_visualProvider;
    v4->_visualProvider = v5;

    [(_UIPageControlVisualProvider *)v4->_visualProvider prepare];
  }

  return v4;
}

- (UIPageControl)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = UIPageControl;
  v5 = [(UIControl *)&v12 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v5->_currentPage = 0;
    v7 = [objc_opt_class() _visualProviderForPageControl:v5];
    visualProvider = v6->_visualProvider;
    v6->_visualProvider = v7;

    [(_UIPageControlVisualProvider *)v6->_visualProvider prepare];
    if ([v4 containsValueForKey:@"UINumberOfPages"])
    {
      -[UIPageControl setNumberOfPages:](v6, "setNumberOfPages:", [v4 decodeIntegerForKey:@"UINumberOfPages"]);
    }

    if ([v4 containsValueForKey:@"UICurrentPage"])
    {
      -[UIPageControl setCurrentPage:](v6, "setCurrentPage:", [v4 decodeIntegerForKey:@"UICurrentPage"]);
    }

    if ([v4 containsValueForKey:@"UIHideForSinglePage"])
    {
      -[UIPageControl setHidesForSinglePage:](v6, "setHidesForSinglePage:", [v4 decodeBoolForKey:@"UIHideForSinglePage"]);
    }

    if ([v4 containsValueForKey:@"UIDefersCurrentPageDisplay"])
    {
      -[UIPageControl setDefersCurrentPageDisplay:](v6, "setDefersCurrentPageDisplay:", [v4 decodeBoolForKey:@"UIDefersCurrentPageDisplay"]);
    }

    if ([v4 containsValueForKey:@"UICurrentPageIndicatorTintColor"])
    {
      v9 = [v4 decodeObjectForKey:@"UICurrentPageIndicatorTintColor"];
      [(UIPageControl *)v6 setCurrentPageIndicatorTintColor:v9];
    }

    if ([v4 containsValueForKey:@"UIPageIndicatorTintColor"])
    {
      v10 = [v4 decodeObjectForKey:@"UIPageIndicatorTintColor"];
      [(UIPageControl *)v6 setPageIndicatorTintColor:v10];
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UIPageControl;
  [(UIControl *)&v9 encodeWithCoder:v4];
  if ([(UIPageControl *)self numberOfPages])
  {
    [v4 encodeInteger:-[UIPageControl numberOfPages](self forKey:{"numberOfPages"), @"UINumberOfPages"}];
  }

  if (([(UIPageControl *)self currentPage]& 0x8000000000000000) == 0)
  {
    [v4 encodeInteger:-[UIPageControl currentPage](self forKey:{"currentPage"), @"UICurrentPage"}];
  }

  if ([(UIPageControl *)self hidesForSinglePage])
  {
    [v4 encodeBool:-[UIPageControl hidesForSinglePage](self forKey:{"hidesForSinglePage"), @"UIHideForSinglePage"}];
  }

  v5 = [(UIPageControl *)self currentPageIndicatorTintColor];

  if (v5)
  {
    v6 = [(UIPageControl *)self currentPageIndicatorTintColor];
    [v4 encodeObject:v6 forKey:@"UICurrentPageIndicatorTintColor"];
  }

  v7 = [(UIPageControl *)self pageIndicatorTintColor];

  if (v7)
  {
    v8 = [(UIPageControl *)self pageIndicatorTintColor];
    [v4 encodeObject:v8 forKey:@"UIPageIndicatorTintColor"];
  }
}

- (void)_populateArchivedSubviews:(id)a3
{
  v5.receiver = self;
  v5.super_class = UIPageControl;
  v4 = a3;
  [(UIView *)&v5 _populateArchivedSubviews:v4];
  [(_UIPageControlVisualProvider *)self->_visualProvider pruneArchivedSubviews:v4, v5.receiver, v5.super_class];
}

- (void)setNumberOfPages:(NSInteger)numberOfPages
{
  v3 = numberOfPages & ~(numberOfPages >> 63);
  if (self->_numberOfPages == v3)
  {
    return;
  }

  self->_numberOfPages = v3;
  [(_UIPageControlVisualProvider *)self->_visualProvider didUpdateNumberOfPages];
  if ([(UIPageControl *)self currentPage]>= v3)
  {
    v6 = v3 - 1;
    goto LABEL_6;
  }

  if ([(UIPageControl *)self currentPage]< 0)
  {
    v6 = 0;
LABEL_6:
    [(UIPageControl *)self _updateCurrentPage:v6 updateDisplayImmediately:0];
  }

  [(UIPageControl *)self _updateCurrentPageDisplayWithForceUpdate:1];
  if ([(UIPageControl *)self hidesForSinglePage])
  {
    [(UIView *)self setHidden:numberOfPages < 2];
  }

  [(UIView *)self setNeedsLayout];
}

- (BOOL)shouldTrack
{
  if ([(_UIPageControlVisualProvider *)self->_visualProvider shouldDisableTouchTracking])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = UIPageControl;
  return [(UIControl *)&v4 shouldTrack];
}

- (void)_updateCurrentPage:(int64_t)a3 updateDisplayImmediately:(BOOL)a4
{
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = fmax(fmin(a3, (self->_numberOfPages - 1)), 0.0);
    currentPage = self->_currentPage;
    if (currentPage != v5)
    {
      v7 = a4;
      self->_previousPage = currentPage;
      self->_currentPage = v5;
      v8 = [(UIPageControl *)self progress];
      [v8 _didChangeCurrentPage];

      if (v7)
      {

        [(UIPageControl *)self _updateCurrentPageDisplayWithForceUpdate:1];
      }
    }
  }
}

- (void)setHidesForSinglePage:(BOOL)hidesForSinglePage
{
  pageControlFlags = self->_pageControlFlags;
  if ((pageControlFlags & 1) != hidesForSinglePage)
  {
    v4 = hidesForSinglePage;
    *&self->_pageControlFlags = pageControlFlags & 0xFE | hidesForSinglePage;
    if ([(UIPageControl *)self numberOfPages]<= 1)
    {

      [(UIView *)self setHidden:v4];
    }
  }
}

- (void)setDefersCurrentPageDisplay:(BOOL)defersCurrentPageDisplay
{
  if (defersCurrentPageDisplay)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_pageControlFlags = *&self->_pageControlFlags & 0xFD | v3;
}

- (void)_updateCurrentPageDisplayWithForceUpdate:(BOOL)a3
{
  if (a3 || [(UIPageControl *)self defersCurrentPageDisplay])
  {
    visualProvider = self->_visualProvider;

    [(_UIPageControlVisualProvider *)visualProvider updateDisplayedPageToCurrentPage];
  }
}

- (CGSize)sizeForNumberOfPages:(NSInteger)pageCount
{
  if (pageCount < 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"-[UIPageControl sizeForNumberOfPages:] must not be called with a negative number"];
  }

  visualProvider = self->_visualProvider;

  [(_UIPageControlVisualProvider *)visualProvider sizeForNumberOfPages:pageCount];
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)setPageIndicatorTintColor:(UIColor *)pageIndicatorTintColor
{
  v6 = pageIndicatorTintColor;
  v5 = [(UIPageControl *)self pageIndicatorTintColor];

  if (v5 != v6)
  {
    objc_storeStrong(&self->_pageIndicatorTintColor, pageIndicatorTintColor);
    [(_UIPageControlVisualProvider *)self->_visualProvider didUpdatePageIndicatorTintColor];
    [(UIView *)self setNeedsLayout];
  }
}

- (void)setCurrentPageIndicatorTintColor:(UIColor *)currentPageIndicatorTintColor
{
  v5 = currentPageIndicatorTintColor;
  if (self->_currentPageIndicatorTintColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_currentPageIndicatorTintColor, currentPageIndicatorTintColor);
    [(_UIPageControlVisualProvider *)self->_visualProvider didUpdateCurrentPageIndicatorTintColor];
    [(UIView *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)setBackgroundStyle:(UIPageControlBackgroundStyle)backgroundStyle
{
  if (self->_backgroundStyle != backgroundStyle)
  {
    self->_backgroundStyle = backgroundStyle;
    [(_UIPageControlVisualProvider *)self->_visualProvider didUpdateBackgroundStyle];
  }
}

- (void)setDirection:(UIPageControlDirection)direction
{
  if (self->_direction != direction)
  {
    self->_direction = direction;
    [(_UIPageControlVisualProvider *)self->_visualProvider didUpdateLayoutDirection];
  }
}

- (void)setAllowsContinuousInteraction:(BOOL)allowsContinuousInteraction
{
  pageControlFlags = self->_pageControlFlags;
  if (((((pageControlFlags & 4) == 0) ^ allowsContinuousInteraction) & 1) == 0)
  {
    if (allowsContinuousInteraction)
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    *&self->_pageControlFlags = pageControlFlags & 0xFB | v4;
    [(_UIPageControlVisualProvider *)self->_visualProvider didUpdateInteractionTypeAvailability];
  }
}

- (UIImage)indicatorImageForPage:(NSInteger)page
{
  if (page < 0 || [(UIPageControl *)self numberOfPages]<= page)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UIPageControl.m" lineNumber:338 description:{@"Page (%ld) must be within 0 and %ld.", page, -[UIPageControl numberOfPages](self, "numberOfPages")}];
  }

  visualProvider = self->_visualProvider;

  return [(_UIPageControlVisualProvider *)visualProvider customIndicatorImageForPage:page];
}

- (void)setIndicatorImage:(UIImage *)image forPage:(NSInteger)page
{
  v8 = image;
  if (page < 0 || [(UIPageControl *)self numberOfPages]<= page)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UIPageControl.m" lineNumber:344 description:{@"Page (%ld) must be within 0 and %ld.", page, -[UIPageControl numberOfPages](self, "numberOfPages")}];
  }

  [(_UIPageControlVisualProvider *)self->_visualProvider setCustomIndicatorImage:v8 forPage:page];
}

- (UIImage)currentPageIndicatorImageForPage:(NSInteger)page
{
  if (page < 0 || [(UIPageControl *)self numberOfPages]<= page)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UIPageControl.m" lineNumber:362 description:{@"Page (%ld) must be within 0 and %ld.", page, -[UIPageControl numberOfPages](self, "numberOfPages")}];
  }

  visualProvider = self->_visualProvider;

  return [(_UIPageControlVisualProvider *)visualProvider customActiveIndicatorImageForPage:page];
}

- (void)setCurrentPageIndicatorImage:(UIImage *)image forPage:(NSInteger)page
{
  v8 = image;
  if (page < 0 || [(UIPageControl *)self numberOfPages]<= page)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UIPageControl.m" lineNumber:368 description:{@"Page (%ld) must be within 0 and %ld.", page, -[UIPageControl numberOfPages](self, "numberOfPages")}];
  }

  [(_UIPageControlVisualProvider *)self->_visualProvider setCustomActiveIndicatorImage:v8 forPage:page];
}

- (void)setProgress:(UIPageControlProgress *)progress
{
  v5 = progress;
  if (dyld_program_sdk_at_least())
  {
    v6 = [(UIPageControlProgress *)v5 pageControl];

    if (v6 != self)
    {
      v7 = [(UIPageControlProgress *)v5 pageControl];
      [v7 setProgress:0];
    }

    [(UIPageControlProgress *)self->_progress setPageControl:0];
    [(UIPageControlProgress *)v5 setPageControl:self];
    objc_storeStrong(&self->_progress, progress);
    [(_UIPageControlVisualProvider *)self->_visualProvider didUpdatePageProgress];
  }

  else
  {
    v8 = *(__UILogGetCategoryCachedImpl("PageControl", &setProgress____s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "[UIPageControl setProgress:] called with an invalid object. THIS IS A CLIENT BUG.", v9, 2u);
    }
  }
}

- (void)_setFlickToEndGestureEnabled:(BOOL)a3
{
  pageControlFlags = self->_pageControlFlags;
  if (((((pageControlFlags & 0x10) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = 16;
    }

    else
    {
      v4 = 0;
    }

    *&self->_pageControlFlags = pageControlFlags & 0xEF | v4;
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(_UIPageControlVisualProvider *)self->_visualProvider sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setSemanticContentAttribute:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = UIPageControl;
  [(UIView *)&v4 setSemanticContentAttribute:a3];
  [(_UIPageControlVisualProvider *)self->_visualProvider didUpdateLayoutDirection];
}

- (void)_traitCollectionDidChangeOnSubtreeInternal:(const _UITraitCollectionChangeDescription *)a3
{
  v5.receiver = self;
  v5.super_class = UIPageControl;
  [(UIView *)&v5 _traitCollectionDidChangeOnSubtreeInternal:?];
  [(_UIPageControlVisualProvider *)self->_visualProvider traitCollectionDidChangeOnSubtree:a3->var0];
}

- (void)_setCustomHorizontalPadding:(double)a3
{
  self->_horizontalPadding = a3;
  *&self->_custom |= 2u;
  [(_UIPageControlVisualProvider *)self->_visualProvider didUpdateCustomLayoutValues];
}

- (void)_setCustomVerticalPadding:(double)a3
{
  self->_verticalPadding = a3;
  *&self->_custom |= 1u;
  [(_UIPageControlVisualProvider *)self->_visualProvider didUpdateCustomLayoutValues];
}

- (void)_setCustomIndicatorSpacing:(double)a3
{
  self->_indicatorSpacing = a3;
  *&self->_custom |= 4u;
  [(_UIPageControlVisualProvider *)self->_visualProvider didUpdateCustomLayoutValues];
}

- (void)_setAllowsDiscreteInteraction:(BOOL)a3
{
  pageControlFlags = self->_pageControlFlags;
  if (((((pageControlFlags & 8) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = 8;
    }

    else
    {
      v4 = 0;
    }

    *&self->_pageControlFlags = pageControlFlags & 0xF7 | v4;
    [(_UIPageControlVisualProvider *)self->_visualProvider didUpdateInteractionTypeAvailability];
  }
}

- (void)_setPlatterBackgroundView:(id)a3
{
  v6 = a3;
  if ((_UIIsPrivateMainBundle() & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"UIPageControl.m" lineNumber:550 description:@"This may only be used by the system."];
  }

  *&self->_custom = *&self->_custom & 0xF7 | (8 * (v6 != 0));
  [(_UIPageControlVisualProvider *)self->_visualProvider setBackgroundView:v6];
}

- (UIView)_platterBackgroundView
{
  if ((_UIIsPrivateMainBundle() & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"UIPageControl.m" lineNumber:557 description:@"This may only be used by the system."];
  }

  if ((*&self->_custom & 8) != 0)
  {
    v4 = [(_UIPageControlVisualProvider *)self->_visualProvider backgroundView];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_setPrefersTargetPageForDiscreteInteraction:(BOOL)a3
{
  v3 = a3;
  if ((_UIApplicationProcessIsSpringBoard() & 1) == 0 && (_UIApplicationProcessIsControlCenterHostApp() & 1) == 0 && (_UIApplicationProcessIsUIKitester() & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UIPageControl.m" lineNumber:568 description:@"This may only be used by SpringBoard."];
  }

  if (v3)
  {
    v6 = 32;
  }

  else
  {
    v6 = 0;
  }

  *&self->_pageControlFlags = *&self->_pageControlFlags & 0xDF | v6;
  visualProvider = self->_visualProvider;

  [(_UIPageControlVisualProvider *)visualProvider didUpdateInteractionTypeAvailability];
}

- (CGAffineTransform)_activeTransformForTouchedPage
{
  result = self->_visualProvider;
  if (result)
  {
    return [(CGAffineTransform *)result activeTransformForTouchedPage];
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  return result;
}

- (void)_setActiveTransformForTouchedPage:(CGAffineTransform *)a3
{
  if ((_UIApplicationProcessIsSpringBoard() & 1) == 0 && (_UIApplicationProcessIsControlCenterHostApp() & 1) == 0 && (_UIApplicationProcessIsUIKitester() & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UIPageControl.m" lineNumber:580 description:@"This may only be used by SpringBoard."];
  }

  v6 = *&a3->c;
  v8[0] = *&a3->a;
  v8[1] = v6;
  v8[2] = *&a3->tx;
  [(_UIPageControlVisualProvider *)self->_visualProvider setActiveTransformForTouchedPage:v8];
}

- (CGAffineTransform)_targetTransformForTouchedPage
{
  result = self->_visualProvider;
  if (result)
  {
    return [(CGAffineTransform *)result targetTransformForTouchedPage];
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  return result;
}

- (void)_setTargetTransformForTouchedPage:(CGAffineTransform *)a3
{
  if ((_UIApplicationProcessIsSpringBoard() & 1) == 0 && (_UIApplicationProcessIsControlCenterHostApp() & 1) == 0 && (_UIApplicationProcessIsUIKitester() & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UIPageControl.m" lineNumber:591 description:@"This may only be used by SpringBoard."];
  }

  v6 = *&a3->c;
  v8[0] = *&a3->a;
  v8[1] = v6;
  v8[2] = *&a3->tx;
  [(_UIPageControlVisualProvider *)self->_visualProvider setTargetTransformForTouchedPage:v8];
}

- (CAColorMatrix)_pageIndicatorVibrantColorMatrix
{
  result = self->_visualProvider;
  if (result)
  {
    return [(CAColorMatrix *)result pageIndicatorVibrantColorMatrix];
  }

  *&retstr->m33 = 0u;
  *&retstr->m42 = 0u;
  *&retstr->m15 = 0u;
  *&retstr->m24 = 0u;
  *&retstr->m11 = 0u;
  return result;
}

- (void)_setPageIndicatorVibrantColorMatrix:(CAColorMatrix *)a3
{
  if ((_UIApplicationProcessIsSpringBoard() & 1) == 0 && (_UIApplicationProcessIsControlCenterHostApp() & 1) == 0 && (_UIApplicationProcessIsUIKitester() & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UIPageControl.m" lineNumber:602 description:@"This may only be used by SpringBoard."];
  }

  v6 = *&a3->m33;
  v9[2] = *&a3->m24;
  v9[3] = v6;
  v9[4] = *&a3->m42;
  v7 = *&a3->m15;
  v9[0] = *&a3->m11;
  v9[1] = v7;
  [(_UIPageControlVisualProvider *)self->_visualProvider setPageIndicatorVibrantColorMatrix:v9];
}

- (CAColorMatrix)_activePageIndicatorVibrantColorMatrix
{
  result = self->_visualProvider;
  if (result)
  {
    return [(CAColorMatrix *)result activePageIndicatorVibrantColorMatrix];
  }

  *&retstr->m33 = 0u;
  *&retstr->m42 = 0u;
  *&retstr->m15 = 0u;
  *&retstr->m24 = 0u;
  *&retstr->m11 = 0u;
  return result;
}

- (void)_setActivePageIndicatorVibrantColorMatrix:(CAColorMatrix *)a3
{
  if ((_UIApplicationProcessIsSpringBoard() & 1) == 0 && (_UIApplicationProcessIsControlCenterHostApp() & 1) == 0 && (_UIApplicationProcessIsUIKitester() & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UIPageControl.m" lineNumber:613 description:@"This may only be used by SpringBoard."];
  }

  v6 = *&a3->m33;
  v9[2] = *&a3->m24;
  v9[3] = v6;
  v9[4] = *&a3->m42;
  v7 = *&a3->m15;
  v9[0] = *&a3->m11;
  v9[1] = v7;
  [(_UIPageControlVisualProvider *)self->_visualProvider setActivePageIndicatorVibrantColorMatrix:v9];
}

- (void)_setPlatterEffect:(id)a3
{
  objc_storeStrong(&self->__platterEffect, a3);
  v5 = a3;
  [(_UIPageControlVisualProvider *)self->_visualProvider didUpdateBackgroundEffect];
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = UIPageControl;
  v6 = a3;
  [(UIControl *)&v7 endTrackingWithTouch:v6 withEvent:a4];
  [(_UIPageControlVisualProvider *)self->_visualProvider didEndTrackingWithTouch:v6, v7.receiver, v7.super_class];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  v6 = v5 == self || ![v4 _isGestureType:0] || objc_msgSend(v4, "numberOfTouchesRequired") != 1 || objc_msgSend(v4, "numberOfTapsRequired") != 1;

  return v6;
}

- (CGRect)_indicatorFrameForPage:(int64_t)a3
{
  [(_UIPageControlVisualProvider *)self->_visualProvider indicatorFrameForPage:a3];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end