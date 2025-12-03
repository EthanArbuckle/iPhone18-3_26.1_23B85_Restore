@interface PXUIAutoScroller
- (BOOL)autoscrollWithOffset:(CGPoint)offset;
- (CGRect)visibleRectForScrollView:(id)view;
- (void)_handleDisplayLink:(id)link;
- (void)startRepeating;
- (void)stopRepeating;
- (void)updateWithGestureRecognizer:(id)recognizer;
@end

@implementation PXUIAutoScroller

- (void)updateWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  view = [recognizerCopy view];
  [recognizerCopy locationInView:view];
  v6 = v5;
  v8 = v7;

  [(PXAutoScroller *)self updateWithUserInteractionLocation:view inCoordinateSpace:v6, v8];
}

- (BOOL)autoscrollWithOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  scrollView = [(PXAutoScroller *)self scrollView];
  [scrollView contentOffset];
  v7 = v6;
  v9 = v8;
  [scrollView px_constrainedContentOffset:{v6 + x, v8 + y}];
  v12 = v11 != v9 || v10 != v7;
  if (v12)
  {
    [scrollView setContentOffset:?];
  }

  return v12;
}

- (void)stopRepeating
{
  displayLink = [(PXUIAutoScroller *)self displayLink];
  [displayLink setPaused:1];
  [displayLink invalidate];
  [(PXUIAutoScroller *)self setDisplayLink:0];
}

- (void)_handleDisplayLink:(id)link
{
  [link timestamp];

  [(PXAutoScroller *)self updateWithTimestamp:?];
}

- (void)startRepeating
{
  displayLink = [(PXUIAutoScroller *)self displayLink];

  if (displayLink)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXUIAutoScroller.m" lineNumber:37 description:@"display link already exists"];
  }

  selfCopy = self;
  v6 = [[_PXDisplayLinkWeakReference alloc] initWithObject:selfCopy selector:sel__handleDisplayLink_];

  v9 = [MEMORY[0x1E6979330] displayLinkWithTarget:v6 selector:sel_handleDisplayLink_];

  if (+[PXDisplayLink highFramerateRequiresReasonAndRange])
  {
    [v9 setHighFrameRateReason:2228225];
    v11 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    [v9 setPreferredFrameRateRange:{*&v11.minimum, *&v11.maximum, *&v11.preferred}];
  }

  [v9 setPaused:0];
  currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
  [v9 addToRunLoop:currentRunLoop forMode:*MEMORY[0x1E695DA28]];

  [(PXUIAutoScroller *)selfCopy setDisplayLink:v9];
}

- (CGRect)visibleRectForScrollView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [viewCopy safeAreaInsets];
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