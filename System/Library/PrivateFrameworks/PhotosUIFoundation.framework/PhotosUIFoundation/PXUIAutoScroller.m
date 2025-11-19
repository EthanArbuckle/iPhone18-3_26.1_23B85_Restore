@interface PXUIAutoScroller
- (BOOL)autoscrollWithOffset:(CGPoint)a3;
- (CGRect)visibleRectForScrollView:(id)a3;
- (void)_handleDisplayLink:(id)a3;
- (void)startRepeating;
- (void)stopRepeating;
- (void)updateWithGestureRecognizer:(id)a3;
@end

@implementation PXUIAutoScroller

- (void)updateWithGestureRecognizer:(id)a3
{
  v4 = a3;
  v9 = [v4 view];
  [v4 locationInView:v9];
  v6 = v5;
  v8 = v7;

  [(PXAutoScroller *)self updateWithUserInteractionLocation:v9 inCoordinateSpace:v6, v8];
}

- (BOOL)autoscrollWithOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(PXAutoScroller *)self scrollView];
  [v5 contentOffset];
  v7 = v6;
  v9 = v8;
  [v5 px_constrainedContentOffset:{v6 + x, v8 + y}];
  v12 = v11 != v9 || v10 != v7;
  if (v12)
  {
    [v5 setContentOffset:?];
  }

  return v12;
}

- (void)stopRepeating
{
  v3 = [(PXUIAutoScroller *)self displayLink];
  [v3 setPaused:1];
  [v3 invalidate];
  [(PXUIAutoScroller *)self setDisplayLink:0];
}

- (void)_handleDisplayLink:(id)a3
{
  [a3 timestamp];

  [(PXAutoScroller *)self updateWithTimestamp:?];
}

- (void)startRepeating
{
  v4 = [(PXUIAutoScroller *)self displayLink];

  if (v4)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXUIAutoScroller.m" lineNumber:37 description:@"display link already exists"];
  }

  v5 = self;
  v6 = [[_PXDisplayLinkWeakReference alloc] initWithObject:v5 selector:sel__handleDisplayLink_];

  v9 = [MEMORY[0x1E6979330] displayLinkWithTarget:v6 selector:sel_handleDisplayLink_];

  if (+[PXDisplayLink highFramerateRequiresReasonAndRange])
  {
    [v9 setHighFrameRateReason:2228225];
    v11 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    [v9 setPreferredFrameRateRange:{*&v11.minimum, *&v11.maximum, *&v11.preferred}];
  }

  [v9 setPaused:0];
  v7 = [MEMORY[0x1E695DFD0] currentRunLoop];
  [v9 addToRunLoop:v7 forMode:*MEMORY[0x1E695DA28]];

  [(PXUIAutoScroller *)v5 setDisplayLink:v9];
}

- (CGRect)visibleRectForScrollView:(id)a3
{
  v3 = a3;
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 safeAreaInsets];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = v5 + v15;
  v21 = v7 + v13;
  v22 = v9 - (v15 + v19);
  v23 = v11 - (v13 + v17);
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

@end