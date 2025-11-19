@interface PXScrollViewStresser
+ (PXScrollViewStresser)sharedInstance;
- (BOOL)isScrolling;
- (void)_handleDisplayLink:(id)a3;
- (void)startScrollingScrollView:(id)a3 axis:(int64_t)a4;
- (void)stopScrolling;
@end

@implementation PXScrollViewStresser

- (void)stopScrolling
{
  v3 = [(PXScrollViewStresser *)self displayLink];
  [v3 invalidate];

  [(PXScrollViewStresser *)self setDisplayLink:0];

  [(PXScrollViewStresser *)self setScrollView:0];
}

- (BOOL)isScrolling
{
  v2 = [(PXScrollViewStresser *)self displayLink];
  v3 = v2 != 0;

  return v3;
}

- (void)_handleDisplayLink:(id)a3
{
  v13 = [(PXScrollViewStresser *)self scrollView];
  v4 = [(PXScrollViewStresser *)self scrollDirection];
  if ([v13 px_isScrolledAtEdge:v4])
  {
    PXRectEdgeOpposite();
  }

  [v13 contentOffset];
  v6 = v5;
  v8 = v7;
  v9 = +[PXDiagnosticsSettings sharedInstance];
  [v9 scrollSpeed];
  v11 = v10;

  if (v4 <= 1)
  {
    if (v4)
    {
      v12 = v13;
      if (v4 == 1)
      {
        v8 = v8 - v11;
      }

      goto LABEL_13;
    }

    v6 = v6 - v11;
LABEL_12:
    v12 = v13;
    goto LABEL_13;
  }

  if (v4 == 2)
  {
    v6 = v6 + v11;
    goto LABEL_12;
  }

  v12 = v13;
  if (v4 == 3)
  {
    v8 = v8 + v11;
  }

LABEL_13:
  [v12 px_scrollToContentOffset:0 animated:{v6, v8}];
}

- (void)startScrollingScrollView:(id)a3 axis:(int64_t)a4
{
  v9 = a3;
  if (![(PXScrollViewStresser *)self isScrolling])
  {
    if (a4 == 2)
    {
      v6 = 2;
    }

    else
    {
      v6 = 3;
    }

    if ([v9 px_isScrolledAtEdge:v6])
    {
      PXRectEdgeOpposite();
    }

    v7 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel__handleDisplayLink_];
    v8 = [MEMORY[0x1E695DFD0] currentRunLoop];
    [v7 addToRunLoop:v8 forMode:*MEMORY[0x1E695DA28]];

    [(PXScrollViewStresser *)self setDisplayLink:v7];
    [(PXScrollViewStresser *)self setScrollView:v9];
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