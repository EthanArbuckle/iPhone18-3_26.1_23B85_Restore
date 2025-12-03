@interface UIPageControl
+ (id)_visualProviderForPageControl:(id)control;
- (BOOL)_implementsCustomCurrentPageImagesOverride;
- (BOOL)_implementsCustomPageImagesOverride;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)shouldTrack;
- (CAColorMatrix)_activePageIndicatorVibrantColorMatrix;
- (CAColorMatrix)_pageIndicatorVibrantColorMatrix;
- (CGAffineTransform)_activeTransformForTouchedPage;
- (CGAffineTransform)_targetTransformForTouchedPage;
- (CGRect)_indicatorFrameForPage:(int64_t)page;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeForNumberOfPages:(NSInteger)pageCount;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIImage)currentPageIndicatorImageForPage:(NSInteger)page;
- (UIImage)indicatorImageForPage:(NSInteger)page;
- (UIPageControl)initWithCoder:(id)coder;
- (UIPageControl)initWithFrame:(CGRect)frame;
- (UIView)_platterBackgroundView;
- (void)_populateArchivedSubviews:(id)subviews;
- (void)_setActivePageIndicatorVibrantColorMatrix:(CAColorMatrix *)matrix;
- (void)_setActiveTransformForTouchedPage:(CGAffineTransform *)page;
- (void)_setAllowsDiscreteInteraction:(BOOL)interaction;
- (void)_setCustomHorizontalPadding:(double)padding;
- (void)_setCustomIndicatorSpacing:(double)spacing;
- (void)_setCustomVerticalPadding:(double)padding;
- (void)_setFlickToEndGestureEnabled:(BOOL)enabled;
- (void)_setPageIndicatorVibrantColorMatrix:(CAColorMatrix *)matrix;
- (void)_setPlatterBackgroundView:(id)view;
- (void)_setPlatterEffect:(id)effect;
- (void)_setPrefersTargetPageForDiscreteInteraction:(BOOL)interaction;
- (void)_setTargetTransformForTouchedPage:(CGAffineTransform *)page;
- (void)_traitCollectionDidChangeOnSubtreeInternal:(const _UITraitCollectionChangeDescription *)internal;
- (void)_updateCurrentPage:(int64_t)page updateDisplayImmediately:(BOOL)immediately;
- (void)_updateCurrentPageDisplayWithForceUpdate:(BOOL)update;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)encodeWithCoder:(id)coder;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
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
- (void)setSemanticContentAttribute:(int64_t)attribute;
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

+ (id)_visualProviderForPageControl:(id)control
{
  controlCopy = control;
  v4 = dyld_program_sdk_at_least();
  v5 = off_1E70EB9E0;
  if (!v4)
  {
    v5 = off_1E70EBAF8;
  }

  v6 = [objc_alloc(*v5) initWithPageControl:controlCopy];

  return v6;
}

- (UIPageControl)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = UIPageControl;
  v3 = [(UIControl *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (UIPageControl)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = UIPageControl;
  v5 = [(UIControl *)&v12 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    v5->_currentPage = 0;
    v7 = [objc_opt_class() _visualProviderForPageControl:v5];
    visualProvider = v6->_visualProvider;
    v6->_visualProvider = v7;

    [(_UIPageControlVisualProvider *)v6->_visualProvider prepare];
    if ([coderCopy containsValueForKey:@"UINumberOfPages"])
    {
      -[UIPageControl setNumberOfPages:](v6, "setNumberOfPages:", [coderCopy decodeIntegerForKey:@"UINumberOfPages"]);
    }

    if ([coderCopy containsValueForKey:@"UICurrentPage"])
    {
      -[UIPageControl setCurrentPage:](v6, "setCurrentPage:", [coderCopy decodeIntegerForKey:@"UICurrentPage"]);
    }

    if ([coderCopy containsValueForKey:@"UIHideForSinglePage"])
    {
      -[UIPageControl setHidesForSinglePage:](v6, "setHidesForSinglePage:", [coderCopy decodeBoolForKey:@"UIHideForSinglePage"]);
    }

    if ([coderCopy containsValueForKey:@"UIDefersCurrentPageDisplay"])
    {
      -[UIPageControl setDefersCurrentPageDisplay:](v6, "setDefersCurrentPageDisplay:", [coderCopy decodeBoolForKey:@"UIDefersCurrentPageDisplay"]);
    }

    if ([coderCopy containsValueForKey:@"UICurrentPageIndicatorTintColor"])
    {
      v9 = [coderCopy decodeObjectForKey:@"UICurrentPageIndicatorTintColor"];
      [(UIPageControl *)v6 setCurrentPageIndicatorTintColor:v9];
    }

    if ([coderCopy containsValueForKey:@"UIPageIndicatorTintColor"])
    {
      v10 = [coderCopy decodeObjectForKey:@"UIPageIndicatorTintColor"];
      [(UIPageControl *)v6 setPageIndicatorTintColor:v10];
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = UIPageControl;
  [(UIControl *)&v9 encodeWithCoder:coderCopy];
  if ([(UIPageControl *)self numberOfPages])
  {
    [coderCopy encodeInteger:-[UIPageControl numberOfPages](self forKey:{"numberOfPages"), @"UINumberOfPages"}];
  }

  if (([(UIPageControl *)self currentPage]& 0x8000000000000000) == 0)
  {
    [coderCopy encodeInteger:-[UIPageControl currentPage](self forKey:{"currentPage"), @"UICurrentPage"}];
  }

  if ([(UIPageControl *)self hidesForSinglePage])
  {
    [coderCopy encodeBool:-[UIPageControl hidesForSinglePage](self forKey:{"hidesForSinglePage"), @"UIHideForSinglePage"}];
  }

  currentPageIndicatorTintColor = [(UIPageControl *)self currentPageIndicatorTintColor];

  if (currentPageIndicatorTintColor)
  {
    currentPageIndicatorTintColor2 = [(UIPageControl *)self currentPageIndicatorTintColor];
    [coderCopy encodeObject:currentPageIndicatorTintColor2 forKey:@"UICurrentPageIndicatorTintColor"];
  }

  pageIndicatorTintColor = [(UIPageControl *)self pageIndicatorTintColor];

  if (pageIndicatorTintColor)
  {
    pageIndicatorTintColor2 = [(UIPageControl *)self pageIndicatorTintColor];
    [coderCopy encodeObject:pageIndicatorTintColor2 forKey:@"UIPageIndicatorTintColor"];
  }
}

- (void)_populateArchivedSubviews:(id)subviews
{
  v5.receiver = self;
  v5.super_class = UIPageControl;
  subviewsCopy = subviews;
  [(UIView *)&v5 _populateArchivedSubviews:subviewsCopy];
  [(_UIPageControlVisualProvider *)self->_visualProvider pruneArchivedSubviews:subviewsCopy, v5.receiver, v5.super_class];
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

- (void)_updateCurrentPage:(int64_t)page updateDisplayImmediately:(BOOL)immediately
{
  if (page != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = fmax(fmin(page, (self->_numberOfPages - 1)), 0.0);
    currentPage = self->_currentPage;
    if (currentPage != v5)
    {
      immediatelyCopy = immediately;
      self->_previousPage = currentPage;
      self->_currentPage = v5;
      progress = [(UIPageControl *)self progress];
      [progress _didChangeCurrentPage];

      if (immediatelyCopy)
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

- (void)_updateCurrentPageDisplayWithForceUpdate:(BOOL)update
{
  if (update || [(UIPageControl *)self defersCurrentPageDisplay])
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
  pageIndicatorTintColor = [(UIPageControl *)self pageIndicatorTintColor];

  if (pageIndicatorTintColor != v6)
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIPageControl.m" lineNumber:338 description:{@"Page (%ld) must be within 0 and %ld.", page, -[UIPageControl numberOfPages](self, "numberOfPages")}];
  }

  visualProvider = self->_visualProvider;

  return [(_UIPageControlVisualProvider *)visualProvider customIndicatorImageForPage:page];
}

- (void)setIndicatorImage:(UIImage *)image forPage:(NSInteger)page
{
  v8 = image;
  if (page < 0 || [(UIPageControl *)self numberOfPages]<= page)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIPageControl.m" lineNumber:344 description:{@"Page (%ld) must be within 0 and %ld.", page, -[UIPageControl numberOfPages](self, "numberOfPages")}];
  }

  [(_UIPageControlVisualProvider *)self->_visualProvider setCustomIndicatorImage:v8 forPage:page];
}

- (UIImage)currentPageIndicatorImageForPage:(NSInteger)page
{
  if (page < 0 || [(UIPageControl *)self numberOfPages]<= page)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIPageControl.m" lineNumber:362 description:{@"Page (%ld) must be within 0 and %ld.", page, -[UIPageControl numberOfPages](self, "numberOfPages")}];
  }

  visualProvider = self->_visualProvider;

  return [(_UIPageControlVisualProvider *)visualProvider customActiveIndicatorImageForPage:page];
}

- (void)setCurrentPageIndicatorImage:(UIImage *)image forPage:(NSInteger)page
{
  v8 = image;
  if (page < 0 || [(UIPageControl *)self numberOfPages]<= page)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIPageControl.m" lineNumber:368 description:{@"Page (%ld) must be within 0 and %ld.", page, -[UIPageControl numberOfPages](self, "numberOfPages")}];
  }

  [(_UIPageControlVisualProvider *)self->_visualProvider setCustomActiveIndicatorImage:v8 forPage:page];
}

- (void)setProgress:(UIPageControlProgress *)progress
{
  v5 = progress;
  if (dyld_program_sdk_at_least())
  {
    pageControl = [(UIPageControlProgress *)v5 pageControl];

    if (pageControl != self)
    {
      pageControl2 = [(UIPageControlProgress *)v5 pageControl];
      [pageControl2 setProgress:0];
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

- (void)_setFlickToEndGestureEnabled:(BOOL)enabled
{
  pageControlFlags = self->_pageControlFlags;
  if (((((pageControlFlags & 0x10) == 0) ^ enabled) & 1) == 0)
  {
    if (enabled)
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(_UIPageControlVisualProvider *)self->_visualProvider sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  v4.receiver = self;
  v4.super_class = UIPageControl;
  [(UIView *)&v4 setSemanticContentAttribute:attribute];
  [(_UIPageControlVisualProvider *)self->_visualProvider didUpdateLayoutDirection];
}

- (void)_traitCollectionDidChangeOnSubtreeInternal:(const _UITraitCollectionChangeDescription *)internal
{
  v5.receiver = self;
  v5.super_class = UIPageControl;
  [(UIView *)&v5 _traitCollectionDidChangeOnSubtreeInternal:?];
  [(_UIPageControlVisualProvider *)self->_visualProvider traitCollectionDidChangeOnSubtree:internal->var0];
}

- (void)_setCustomHorizontalPadding:(double)padding
{
  self->_horizontalPadding = padding;
  *&self->_custom |= 2u;
  [(_UIPageControlVisualProvider *)self->_visualProvider didUpdateCustomLayoutValues];
}

- (void)_setCustomVerticalPadding:(double)padding
{
  self->_verticalPadding = padding;
  *&self->_custom |= 1u;
  [(_UIPageControlVisualProvider *)self->_visualProvider didUpdateCustomLayoutValues];
}

- (void)_setCustomIndicatorSpacing:(double)spacing
{
  self->_indicatorSpacing = spacing;
  *&self->_custom |= 4u;
  [(_UIPageControlVisualProvider *)self->_visualProvider didUpdateCustomLayoutValues];
}

- (void)_setAllowsDiscreteInteraction:(BOOL)interaction
{
  pageControlFlags = self->_pageControlFlags;
  if (((((pageControlFlags & 8) == 0) ^ interaction) & 1) == 0)
  {
    if (interaction)
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

- (void)_setPlatterBackgroundView:(id)view
{
  viewCopy = view;
  if ((_UIIsPrivateMainBundle() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIPageControl.m" lineNumber:550 description:@"This may only be used by the system."];
  }

  *&self->_custom = *&self->_custom & 0xF7 | (8 * (viewCopy != 0));
  [(_UIPageControlVisualProvider *)self->_visualProvider setBackgroundView:viewCopy];
}

- (UIView)_platterBackgroundView
{
  if ((_UIIsPrivateMainBundle() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIPageControl.m" lineNumber:557 description:@"This may only be used by the system."];
  }

  if ((*&self->_custom & 8) != 0)
  {
    backgroundView = [(_UIPageControlVisualProvider *)self->_visualProvider backgroundView];
  }

  else
  {
    backgroundView = 0;
  }

  return backgroundView;
}

- (void)_setPrefersTargetPageForDiscreteInteraction:(BOOL)interaction
{
  interactionCopy = interaction;
  if ((_UIApplicationProcessIsSpringBoard() & 1) == 0 && (_UIApplicationProcessIsControlCenterHostApp() & 1) == 0 && (_UIApplicationProcessIsUIKitester() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIPageControl.m" lineNumber:568 description:@"This may only be used by SpringBoard."];
  }

  if (interactionCopy)
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

- (void)_setActiveTransformForTouchedPage:(CGAffineTransform *)page
{
  if ((_UIApplicationProcessIsSpringBoard() & 1) == 0 && (_UIApplicationProcessIsControlCenterHostApp() & 1) == 0 && (_UIApplicationProcessIsUIKitester() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIPageControl.m" lineNumber:580 description:@"This may only be used by SpringBoard."];
  }

  v6 = *&page->c;
  v8[0] = *&page->a;
  v8[1] = v6;
  v8[2] = *&page->tx;
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

- (void)_setTargetTransformForTouchedPage:(CGAffineTransform *)page
{
  if ((_UIApplicationProcessIsSpringBoard() & 1) == 0 && (_UIApplicationProcessIsControlCenterHostApp() & 1) == 0 && (_UIApplicationProcessIsUIKitester() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIPageControl.m" lineNumber:591 description:@"This may only be used by SpringBoard."];
  }

  v6 = *&page->c;
  v8[0] = *&page->a;
  v8[1] = v6;
  v8[2] = *&page->tx;
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

- (void)_setPageIndicatorVibrantColorMatrix:(CAColorMatrix *)matrix
{
  if ((_UIApplicationProcessIsSpringBoard() & 1) == 0 && (_UIApplicationProcessIsControlCenterHostApp() & 1) == 0 && (_UIApplicationProcessIsUIKitester() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIPageControl.m" lineNumber:602 description:@"This may only be used by SpringBoard."];
  }

  v6 = *&matrix->m33;
  v9[2] = *&matrix->m24;
  v9[3] = v6;
  v9[4] = *&matrix->m42;
  v7 = *&matrix->m15;
  v9[0] = *&matrix->m11;
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

- (void)_setActivePageIndicatorVibrantColorMatrix:(CAColorMatrix *)matrix
{
  if ((_UIApplicationProcessIsSpringBoard() & 1) == 0 && (_UIApplicationProcessIsControlCenterHostApp() & 1) == 0 && (_UIApplicationProcessIsUIKitester() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIPageControl.m" lineNumber:613 description:@"This may only be used by SpringBoard."];
  }

  v6 = *&matrix->m33;
  v9[2] = *&matrix->m24;
  v9[3] = v6;
  v9[4] = *&matrix->m42;
  v7 = *&matrix->m15;
  v9[0] = *&matrix->m11;
  v9[1] = v7;
  [(_UIPageControlVisualProvider *)self->_visualProvider setActivePageIndicatorVibrantColorMatrix:v9];
}

- (void)_setPlatterEffect:(id)effect
{
  objc_storeStrong(&self->__platterEffect, effect);
  effectCopy = effect;
  [(_UIPageControlVisualProvider *)self->_visualProvider didUpdateBackgroundEffect];
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = UIPageControl;
  touchCopy = touch;
  [(UIControl *)&v7 endTrackingWithTouch:touchCopy withEvent:event];
  [(_UIPageControlVisualProvider *)self->_visualProvider didEndTrackingWithTouch:touchCopy, v7.receiver, v7.super_class];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  view = [beginCopy view];
  v6 = view == self || ![beginCopy _isGestureType:0] || objc_msgSend(beginCopy, "numberOfTouchesRequired") != 1 || objc_msgSend(beginCopy, "numberOfTapsRequired") != 1;

  return v6;
}

- (CGRect)_indicatorFrameForPage:(int64_t)page
{
  [(_UIPageControlVisualProvider *)self->_visualProvider indicatorFrameForPage:page];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end