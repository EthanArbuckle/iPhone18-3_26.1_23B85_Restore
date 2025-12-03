@interface PXScrollViewStresser
+ (PXScrollViewStresser)sharedInstance;
- (BOOL)isScrolling;
- (void)_handleDisplayLink:(id)link;
- (void)startScrollingScrollView:(id)view axis:(int64_t)axis;
- (void)stopScrolling;
@end

@implementation PXScrollViewStresser

- (void)stopScrolling
{
  displayLink = [(PXScrollViewStresser *)self displayLink];
  [displayLink invalidate];

  [(PXScrollViewStresser *)self setDisplayLink:0];

  [(PXScrollViewStresser *)self setScrollView:0];
}

- (BOOL)isScrolling
{
  displayLink = [(PXScrollViewStresser *)self displayLink];
  v3 = displayLink != 0;

  return v3;
}

- (void)_handleDisplayLink:(id)link
{
  scrollView = [(PXScrollViewStresser *)self scrollView];
  scrollDirection = [(PXScrollViewStresser *)self scrollDirection];
  if ([scrollView px_isScrolledAtEdge:scrollDirection])
  {
    PXRectEdgeOpposite();
  }

  [scrollView contentOffset];
  v6 = v5;
  v8 = v7;
  v9 = +[PXDiagnosticsSettings sharedInstance];
  [v9 scrollSpeed];
  v11 = v10;

  if (scrollDirection <= 1)
  {
    if (scrollDirection)
    {
      v12 = scrollView;
      if (scrollDirection == 1)
      {
        v8 = v8 - v11;
      }

      goto LABEL_13;
    }

    v6 = v6 - v11;
LABEL_12:
    v12 = scrollView;
    goto LABEL_13;
  }

  if (scrollDirection == 2)
  {
    v6 = v6 + v11;
    goto LABEL_12;
  }

  v12 = scrollView;
  if (scrollDirection == 3)
  {
    v8 = v8 + v11;
  }

LABEL_13:
  [v12 px_scrollToContentOffset:0 animated:{v6, v8}];
}

- (void)startScrollingScrollView:(id)view axis:(int64_t)axis
{
  viewCopy = view;
  if (![(PXScrollViewStresser *)self isScrolling])
  {
    if (axis == 2)
    {
      v6 = 2;
    }

    else
    {
      v6 = 3;
    }

    if ([viewCopy px_isScrolledAtEdge:v6])
    {
      PXRectEdgeOpposite();
    }

    v7 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel__handleDisplayLink_];
    currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
    [v7 addToRunLoop:currentRunLoop forMode:*MEMORY[0x1E695DA28]];

    [(PXScrollViewStresser *)self setDisplayLink:v7];
    [(PXScrollViewStresser *)self setScrollView:viewCopy];
    [(PXScrollViewStresser *)self setScrollDirection:v6];
    [(PXScrollViewStresser *)self setScrollCount:0];
  }
}

+ (PXScrollViewStresser)sharedInstance
{
  if (sharedInstance_onceToken_215203 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_215203, &__block_literal_global_215204);
  }

  v3 = sharedInstance_sharedInstance_215205;

  return v3;
}

void __38__PXScrollViewStresser_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PXScrollViewStresser);
  v1 = sharedInstance_sharedInstance_215205;
  sharedInstance_sharedInstance_215205 = v0;
}

@end