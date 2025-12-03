@interface OKSynopsisView
- (OFUIView)navigatorView;
- (OKSynopsisView)initWithPresentationViewController:(id)controller;
- (id)collectionItemAtIndexPath:(id)path;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)pageViewForWidgetView:(id)view;
- (void)_scrollViewDidCompleteScrolling;
- (void)animateSynopsisViewBlurForDisplay:(BOOL)display withProgress:(double)progress;
- (void)animateView:(id)view forKeyPath:(id)path fromValue:(id)value toValue:(id)toValue delay:(double)delay duration:(double)duration setDelegate:(id)delegate;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)dealloc;
- (void)endedGesture;
- (void)evaluateScript:(id)script withInfoDictionary:(id)dictionary andCompletionBlock:(id)block forWidgetView:(id)view;
- (void)handleMagnification:(id)magnification;
- (void)handleTapCell:(id)cell;
- (void)hide;
- (void)initCollectionView;
- (void)prepareAdjacentItemWidgetViews:(unint64_t)views;
- (void)prepareForDisplaySynopsisView;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setSynopsisInterpreter:(id)interpreter;
- (void)show;
- (void)updateLayout:(CGRect)layout;
- (void)updateSynopsisViewOffsetForVisibleWidgets;
- (void)updateWithProgress:(double)progress;
- (void)widgetView:(id)view addHighSpeedOperations:(id)operations andConsumingOperations:(id)consumingOperations;
@end

@implementation OKSynopsisView

- (OKSynopsisView)initWithPresentationViewController:(id)controller
{
  v12.receiver = self;
  v12.super_class = OKSynopsisView;
  v4 = [(OKSynopsisView *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_presentationViewController = controller;
    v4->_isDisplay = 0;
    v4->_pinchStartedRight = 0;
    [(OFUIView *)[(OKSynopsisView *)v4 navigatorView] frame];
    [(OKSynopsisView *)v5 setFrame:?];
    [(OKSynopsisView *)v5 setAutoresizingMask:0];
    [(OKSynopsisView *)v5 setClipsToBounds:1];
    v5->_widgetMediaItems = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5->_synopsisInterpreter = objc_alloc_init(OKSynopsisInterpreter);
    v5->_highSpeedOperationQueue = objc_alloc_init(MEMORY[0x277D627C8]);
    v6 = [[OKSynopsisGestureRecognizer alloc] initWithTarget:v5 action:sel_handleMagnification_];
    v5->_synopsisGestureRecognizer = v6;
    [(OKSynopsisGestureRecognizer *)v6 setDelegate:v5];
    [[(OKPresentationViewControllerProxy *)v5->_presentationViewController presentationView] addGestureRecognizer:v5->_synopsisGestureRecognizer];
    v7 = [OKDimmerView alloc];
    [(OKSynopsisView *)v5 frame];
    v9 = v8;
    [(OKSynopsisView *)v5 frame];
    v5->_backgroundView = [(OKDimmerView *)v7 initWithFrame:0.0, 0.0, v9];
    -[OKDimmerView setBackgroundColor:](v5->_backgroundView, "setBackgroundColor:", [MEMORY[0x277D75348] blackColor]);
    [(OKDimmerView *)v5->_backgroundView setAutoresizingMask:18];
    [-[OKDimmerView layer](v5->_backgroundView "layer")];
    [(OKSynopsisView *)v5 addSubview:v5->_backgroundView];
    [(OKSynopsisView *)v5 initCollectionView];
    [MEMORY[0x277D75418] currentDevice];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x277D75418] "currentDevice")] == 2)
    {
      v10 = 1;
    }

    else
    {
      v10 = 3;
    }

    -[OFNSOperationQueue setMaxConcurrentOperationCount:](v5->_highSpeedOperationQueue, "setMaxConcurrentOperationCount:", [objc_msgSend(MEMORY[0x277CCAC38] "processInfo")] << v10);
    [(OFNSOperationQueue *)v5->_highSpeedOperationQueue setQualityOfService:33];
  }

  return v5;
}

- (void)initCollectionView
{
  v3 = objc_alloc_init(OKWidgetGridViewCondensedLayout);
  [(OKWidgetGridViewCondensedLayout *)v3 setNumberOfRows:1];
  LODWORD(v4) = 1022739087;
  [(OKWidgetGridViewCondensedLayout *)v3 setSpacingRatio:v4];
  [(OKSynopsisView *)self frame];
  v6 = v5 / 3.0999999;
  v7 = ceilf(v6);
  [(OKSynopsisView *)self frame];
  v9 = (v8 - v7) * 0.5;
  v10 = ceilf(v9);
  [(OKSynopsisView *)self frame];
  v12 = [objc_alloc(MEMORY[0x277D752A0]) initWithFrame:v3 collectionViewLayout:{0.0, v10, v11, v7}];
  self->_collectionView = v12;
  [(UICollectionView *)v12 setAllowsSelection:0];

  [-[UICollectionView layer](self->_collectionView "layer")];
  [-[UICollectionView layer](self->_collectionView "layer")];
  -[UICollectionView setBackgroundColor:](self->_collectionView, "setBackgroundColor:", [MEMORY[0x277D75348] clearColor]);
  [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"OKWidgetGridViewCellIdentifier"];
  [(UICollectionView *)self->_collectionView setDelegate:self];
  [(UICollectionView *)self->_collectionView setDataSource:self];
  [(OKSynopsisView *)self addSubview:self->_collectionView];
  [(UICollectionView *)self->_collectionView setAlwaysBounceVertical:0];
  [(UICollectionView *)self->_collectionView setAlwaysBounceHorizontal:1];
  [(UICollectionView *)self->_collectionView setShowsHorizontalScrollIndicator:0];
  [(UICollectionView *)self->_collectionView setShowsVerticalScrollIndicator:0];
  v13 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_hide];
  [v13 setDelegate:self];
  [(OKSynopsisView *)self addGestureRecognizer:v13];
  if (v13)
  {
  }
}

- (void)updateLayout:(CGRect)layout
{
  height = layout.size.height;
  width = layout.size.width;
  y = layout.origin.y;
  x = layout.origin.x;
  [(OKSynopsisView *)self frame];
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  if (!CGRectEqualToRect(v13, v14))
  {
    [(OKSynopsisView *)self setFrame:x, y, width, height];
    v8 = height / 3.0999999;
    v9 = (height - ceilf(v8)) * 0.5;
    collectionView = self->_collectionView;
    v11 = ceilf(v9);

    [(UICollectionView *)collectionView setFrame:0.0, v11, width];
  }
}

- (void)setSynopsisInterpreter:(id)interpreter
{
  synopsisInterpreter = self->_synopsisInterpreter;
  if (synopsisInterpreter)
  {

    self->_synopsisInterpreter = 0;
  }

  widgetMediaItems = self->_widgetMediaItems;
  if (widgetMediaItems)
  {

    self->_widgetMediaItems = 0;
  }

  if (interpreter)
  {
    interpreterCopy = interpreter;
    self->_synopsisInterpreter = interpreterCopy;
    self->_widgetMediaItems = [(OKSynopsisInterpreter *)interpreterCopy allObjectsFromGuidelineSynopsisItems];
  }
}

- (void)dealloc
{
  synopsisInterpreter = self->_synopsisInterpreter;
  if (synopsisInterpreter)
  {

    self->_synopsisInterpreter = 0;
  }

  highSpeedOperationQueue = self->_highSpeedOperationQueue;
  if (highSpeedOperationQueue)
  {

    self->_highSpeedOperationQueue = 0;
  }

  widgetMediaItems = self->_widgetMediaItems;
  if (widgetMediaItems)
  {

    self->_widgetMediaItems = 0;
  }

  backgroundView = self->_backgroundView;
  if (backgroundView)
  {

    self->_backgroundView = 0;
  }

  synopsisGestureRecognizer = self->_synopsisGestureRecognizer;
  if (synopsisGestureRecognizer)
  {

    self->_synopsisGestureRecognizer = 0;
  }

  collectionView = self->_collectionView;
  if (collectionView)
  {

    self->_collectionView = 0;
  }

  v9.receiver = self;
  v9.super_class = OKSynopsisView;
  [(OFUIView *)&v9 dealloc];
}

- (void)animateView:(id)view forKeyPath:(id)path fromValue:(id)value toValue:(id)toValue delay:(double)delay duration:(double)duration setDelegate:(id)delegate
{
  animation = [MEMORY[0x277CD9E10] animation];
  [animation setKeyPath:path];
  [animation setFromValue:value];
  [animation setToValue:toValue];
  [animation setDuration:duration];
  [animation setRemovedOnCompletion:1];
  if (delay == 0.0)
  {
    [animation setDelegate:delegate];
    [objc_msgSend(view "layer")];
    layer = [view layer];

    [layer setValue:toValue forKeyPath:path];
  }

  else
  {
    v18 = dispatch_time(0, (delay * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__OKSynopsisView_animateView_forKeyPath_fromValue_toValue_delay_duration_setDelegate___block_invoke;
    block[3] = &unk_279C8ED20;
    block[4] = animation;
    block[5] = delegate;
    block[6] = view;
    block[7] = path;
    block[8] = toValue;
    dispatch_after(v18, MEMORY[0x277D85CD0], block);
  }
}

uint64_t __86__OKSynopsisView_animateView_forKeyPath_fromValue_toValue_delay_duration_setDelegate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  [objc_msgSend(*(a1 + 48) "layer")];
  v2 = [*(a1 + 48) layer];
  v4 = *(a1 + 56);
  v3 = *(a1 + 64);

  return [v2 setValue:v3 forKeyPath:v4];
}

- (void)animateSynopsisViewBlurForDisplay:(BOOL)display withProgress:(double)progress
{
  progressCopy = progress;
  self->_isDisplay = display;
  self->_isAnimating = 1;
  if (self->_isDisplay)
  {
    progressCopy = 1.0 - progress;
  }

  else
  {
    [(OKPresentationViewControllerProxy *)self->_presentationViewController setInteractivityEnabled:1];
  }

  v6 = progressCopy * 0.400000006 - progressCopy * 0.400000006 * 0.699999988;
  v7 = progressCopy * 0.400000006 * 0.699999988;
  v8 = [-[OFUIView layer](-[OKSynopsisView navigatorView](self "navigatorView")];
  if (self->_isDisplay)
  {
    v9 = &unk_287AF2228;
  }

  else
  {
    v9 = &unk_287AF00E0;
  }

  navigatorView = [(OKSynopsisView *)self navigatorView];
  v11 = 0.0;
  if (self->_isDisplay)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v6;
  }

  if (self->_isDisplay)
  {
    selfCopy = 0;
  }

  else
  {
    selfCopy = self;
  }

  [(OKSynopsisView *)self animateView:navigatorView forKeyPath:@"filters.blur.inputRadius" fromValue:v8 toValue:v9 delay:selfCopy duration:v12 setDelegate:v7];
  v14 = MEMORY[0x277CCABB0];
  [-[OKDimmerView layer](self->_backgroundView "layer")];
  v15 = [v14 numberWithFloat:?];
  if (self->_isDisplay)
  {
    v16 = &unk_287AF2238;
  }

  else
  {
    v16 = &unk_287AF00E0;
  }

  if (self->_isDisplay)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v6;
  }

  [(OKSynopsisView *)self animateView:self->_backgroundView forKeyPath:@"opacity" fromValue:v15 toValue:v16 delay:0 duration:v17 setDelegate:v7];
  v18 = MEMORY[0x277CCABB0];
  [-[UICollectionView layer](self->_collectionView "layer")];
  v19 = [v18 numberWithFloat:?];
  if (self->_isDisplay)
  {
    v20 = &unk_287AF00F8;
  }

  else
  {
    v20 = &unk_287AF00E0;
  }

  collectionView = self->_collectionView;
  if (self->_isDisplay)
  {
    [-[UICollectionView layer](self->_collectionView "layer")];
    if (v22 <= 0.0)
    {
      v11 = v6;
    }

    else
    {
      v11 = 0.0;
    }
  }

  [(OKSynopsisView *)self animateView:collectionView forKeyPath:@"opacity" fromValue:v19 toValue:v20 delay:0 duration:v11 setDelegate:v7];
  v23 = !self->_isDisplay * 0.699999988 + 1.0;
  v24 = MEMORY[0x277CCAE60];
  layer = [(UICollectionView *)self->_collectionView layer];
  if (layer)
  {
    [layer transform];
  }

  else
  {
    memset(&v35, 0, sizeof(v35));
  }

  v26 = [v24 valueWithCATransform3D:&v35];
  memset(&v34, 0, sizeof(v34));
  CGAffineTransformMakeScale(&v34, v23, v23);
  v27 = MEMORY[0x277CCAE60];
  v33 = v34;
  CATransform3DMakeAffineTransform(&v35, &v33);
  v28 = [v27 valueWithCATransform3D:&v35];
  v29 = self->_collectionView;
  v30 = 0.0;
  if (self->_isDisplay)
  {
    [-[UICollectionView layer](self->_collectionView "layer")];
    if (v31 <= 0.0)
    {
      v30 = v6;
    }
  }

  if (self->_isDisplay)
  {
    selfCopy2 = self;
  }

  else
  {
    selfCopy2 = 0;
  }

  [(OKSynopsisView *)self animateView:v29 forKeyPath:@"transform" fromValue:v26 toValue:v28 delay:selfCopy2 duration:v30 setDelegate:v7];
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  if (finished && !self->_isDisplay && [objc_msgSend(stop "keyPath")])
  {
    [(OKSynopsisView *)self removeFromSuperview];
    layer = [[(OKPresentationViewControllerProxy *)self->_presentationViewController presentationView] layer];
    [layer setFilters:MEMORY[0x277CBEBF8]];
    [(OKSynopsisViewDelegate *)[(OKSynopsisView *)self delegate] synopsisViewDidEnd:self];
LABEL_8:
    self->_isAnimating = 0;
    return;
  }

  if ([objc_msgSend(stop "keyPath")] && self->_isDisplay)
  {
    [(OKSynopsisViewDelegate *)[(OKSynopsisView *)self delegate] synopsisViewDidBegin:self];
    goto LABEL_8;
  }
}

- (void)updateSynopsisViewOffsetForVisibleWidgets
{
  v3 = [(OKSynopsisInterpreter *)self->_synopsisInterpreter guidelineSynopsisItemsFromObjectViews:[(OKSynopsisViewDelegate *)self->_delegate visibleWidgets]];
  firstObject = [v3 firstObject];
  if ([v3 count] >= 2)
  {
    firstObject = [v3 objectAtIndexedSubscript:1];
  }

  if (firstObject)
  {
    v5 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(-[OKSynopsisInterpreter allGuidelineSynopsisItems](self->_synopsisInterpreter inSection:{"allGuidelineSynopsisItems"), "indexOfObject:", firstObject), 0}];
    collectionView = self->_collectionView;

    [(UICollectionView *)collectionView scrollToItemAtIndexPath:v5 atScrollPosition:16 animated:0];
  }

  else if (*MEMORY[0x277D62808] >= 4)
  {
    v7 = MEMORY[0x277D627B8];

    [v7 logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Synopsis/OKSynopsisView.m" line:325 andFormat:@"updateSynopsisViewOffsetForVisibleWidgets synopsis object not found"];
  }
}

- (void)updateWithProgress:(double)progress
{
  v4 = progress / 0.699999988;
  if (progress / 0.699999988 <= 1.0)
  {
    v5 = progress / 0.699999988;
  }

  else
  {
    v5 = 1.0;
  }

  [(OKSynopsisViewDelegate *)[(OKSynopsisView *)self delegate] synopsisViewUpdated:self withProgress:progress];
  layer = [(OFUIView *)[(OKSynopsisView *)self navigatorView] layer];
  [layer setValue:objc_msgSend(MEMORY[0x277CCABB0] forKeyPath:{"numberWithDouble:", v5 * 20.0), @"filters.blur.inputRadius"}];
  v7 = 0.25;
  if (v5 * 0.25 < 0.25)
  {
    v7 = v5 * 0.25;
  }

  v8 = v7;
  layer2 = [(OKDimmerView *)self->_backgroundView layer];
  *&v10 = v8;
  [layer2 setOpacity:v10];
  v11 = v4 + -0.300000012;
  if (v4 + -0.300000012 < 0.0)
  {
    v11 = 0.0;
  }

  if (v11 <= 1.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1.0;
  }

  layer3 = [(UICollectionView *)self->_collectionView layer];
  v13 = v12;
  *&v15 = v13;
  [layer3 setOpacity:v15];
  memset(&v24, 0, sizeof(v24));
  CGAffineTransformMakeScale(&v24, (1.0 - v12) * 0.699999988 + 1.0, (1.0 - v12) * 0.699999988 + 1.0);
  v17 = v24;
  CATransform3DMakeAffineTransform(&v23, &v17);
  layer4 = [(UICollectionView *)self->_collectionView layer];
  v19 = *&v23.m31;
  v20 = *&v23.m33;
  v21 = *&v23.m41;
  v22 = *&v23.m43;
  *&v17.a = *&v23.m11;
  *&v17.c = *&v23.m13;
  *&v17.tx = *&v23.m21;
  v18 = *&v23.m23;
  [layer4 setTransform:&v17];
}

- (void)endedGesture
{
  if ([(OKSynopsisGestureRecognizer *)self->_synopsisGestureRecognizer shouldCompleteGesture]&& !self->_isDisplay || ![(OKSynopsisGestureRecognizer *)self->_synopsisGestureRecognizer shouldCompleteGesture]&& self->_isDisplay)
  {
    v3 = 1;
LABEL_12:
    [(OKSynopsisGestureRecognizer *)self->_synopsisGestureRecognizer progress];

    [(OKSynopsisView *)self animateSynopsisViewBlurForDisplay:v3 withProgress:?];
    return;
  }

  if ([(OKSynopsisGestureRecognizer *)self->_synopsisGestureRecognizer shouldCompleteGesture]&& self->_isDisplay || ![(OKSynopsisGestureRecognizer *)self->_synopsisGestureRecognizer shouldCompleteGesture]&& !self->_isDisplay)
  {
    v3 = 0;
    goto LABEL_12;
  }
}

- (void)handleMagnification:(id)magnification
{
  if (self->_isAnimating)
  {
LABEL_2:
    self->_pinchStartedRight = 0;
    return;
  }

  state = [magnification state];
  if (state > 2)
  {
    if ((state == 3 || state == 4) && self->_pinchStartedRight)
    {

      [(OKSynopsisView *)self endedGesture];
    }
  }

  else if (state == 1)
  {
    if (([(OKSynopsisGestureRecognizer *)self->_synopsisGestureRecognizer gestureType]!= 2 || self->_isDisplay) && ([(OKSynopsisGestureRecognizer *)self->_synopsisGestureRecognizer gestureType]!= 1 || !self->_isDisplay))
    {
      goto LABEL_2;
    }

    [(OKSynopsisView *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([(OKSynopsisViewDelegate *)[(OKSynopsisView *)self delegate] shouldShowSynopsisView]& 1) == 0)
    {
      [(OKSynopsisView *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        goto LABEL_2;
      }
    }

    self->_pinchStartedRight = 1;
    if (!self->_isDisplay)
    {

      [(OKSynopsisView *)self prepareForDisplaySynopsisView];
    }
  }

  else if (state == 2 && self->_pinchStartedRight)
  {
    [(OKSynopsisGestureRecognizer *)self->_synopsisGestureRecognizer progress];

    [(OKSynopsisView *)self updateWithProgress:?];
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v7 = -[NSArray objectAtIndex:](self->_widgetMediaItems, "objectAtIndex:", [path row]);
  v8 = [view dequeueReusableCellWithReuseIdentifier:@"OKWidgetGridViewCellIdentifier" forIndexPath:path];
  [v7 setClipsToBounds:1];
  [v8 setWidgetView:v7];
  [v7 prepareForDisplay:0];
  [objc_msgSend(v8 "layer")];
  layer = [v8 layer];
  LODWORD(v10) = 0.5;
  [layer setShadowOpacity:v10];
  [objc_msgSend(v8 "layer")];
  [v8 frame];
  v12 = v11;
  v14 = v13;
  Mutable = CGPathCreateMutable();
  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  v18.size.width = v12;
  v18.size.height = v14;
  CGPathAddRect(Mutable, 0, v18);
  [objc_msgSend(v8 "layer")];
  CGPathRelease(Mutable);
  [v8 setAlpha:1.0];
  v16 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_handleTapCell_];
  [v8 addGestureRecognizer:v16];
  if (v16)
  {
  }

  return v8;
}

- (void)handleTapCell:(id)cell
{
  v4 = [-[OKSynopsisInterpreter allGuidelineSynopsisItems](self->_synopsisInterpreter "allGuidelineSynopsisItems")];
  delegate = self->_delegate;

  [(OKSynopsisViewDelegate *)delegate synopsisView:self didSelectItem:v4];
}

- (id)collectionItemAtIndexPath:(id)path
{
  if ([path section])
  {
    return 0;
  }

  widgetMediaItems = self->_widgetMediaItems;
  v7 = [path row];

  return [(NSArray *)widgetMediaItems objectAtIndex:v7];
}

- (id)pageViewForWidgetView:(id)view
{
  currentPageViewController = [(OKNavigatorViewControllerProxy *)[(OKPresentationViewControllerProxy *)self->_presentationViewController mainNavigatorViewController] currentPageViewController];

  return [(OKPageViewController *)currentPageViewController view];
}

- (void)widgetView:(id)view addHighSpeedOperations:(id)operations andConsumingOperations:(id)consumingOperations
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__OKSynopsisView_widgetView_addHighSpeedOperations_andConsumingOperations___block_invoke;
  v10[3] = &unk_279C8F868;
  v10[4] = view;
  [operations enumerateObjectsUsingBlock:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__OKSynopsisView_widgetView_addHighSpeedOperations_andConsumingOperations___block_invoke_2;
  v9[3] = &unk_279C8F868;
  v9[4] = view;
  [consumingOperations enumerateObjectsUsingBlock:v9];
  if ([operations count])
  {
    [(OFNSOperationQueue *)self->_highSpeedOperationQueue addOperations:operations waitUntilFinished:0];
  }

  if ([consumingOperations count])
  {
    [(OFNSOperationQueue *)self->_highSpeedOperationQueue addOperations:consumingOperations waitUntilFinished:0];
  }
}

uint64_t __75__OKSynopsisView_widgetView_addHighSpeedOperations_andConsumingOperations___block_invoke(uint64_t a1, void *a2)
{
  [a2 setContext:*(a1 + 32)];

  return [a2 setQueuePriority:4];
}

uint64_t __75__OKSynopsisView_widgetView_addHighSpeedOperations_andConsumingOperations___block_invoke_2(uint64_t a1, void *a2)
{
  [a2 setContext:*(a1 + 32)];

  return [a2 setQueuePriority:0];
}

- (void)evaluateScript:(id)script withInfoDictionary:(id)dictionary andCompletionBlock:(id)block forWidgetView:(id)view
{
  presentationViewController = self->_presentationViewController;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __85__OKSynopsisView_evaluateScript_withInfoDictionary_andCompletionBlock_forWidgetView___block_invoke;
  v7[3] = &unk_279C8F890;
  v7[4] = block;
  [(OKPresentationViewControllerProxy *)presentationViewController evaluateScript:script withInfoDictionary:dictionary andCompletionBlock:v7 forNavigatorViewController:0 pageViewController:0 andWidgetView:0];
}

- (OFUIView)navigatorView
{
  mainNavigatorViewController = [(OKPresentationViewControllerProxy *)self->_presentationViewController mainNavigatorViewController];

  return [(OKNavigatorViewControllerProxy *)mainNavigatorViewController navigatorView];
}

- (void)prepareForDisplaySynopsisView
{
  v5[1] = *MEMORY[0x277D85DE8];
  [(OKSynopsisViewDelegate *)[(OKSynopsisView *)self delegate] synopsisViewWillBegin:self];
  [[(OKPresentationViewControllerProxy *)self->_presentationViewController presentationView] addSubview:self];
  if (![objc_msgSend(-[OFUIView layer](-[OKSynopsisView navigatorView](self "navigatorView")])
  {
    v3 = [MEMORY[0x277CD9EA0] filterWithName:*MEMORY[0x277CDA328]];
    [v3 setName:@"blur"];
    [v3 setValue:&unk_287AF00E0 forKeyPath:@"inputRadius"];
    layer = [(OFUIView *)[(OKSynopsisView *)self navigatorView] layer];
    v5[0] = v3;
    [layer setFilters:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v5, 1)}];
  }

  [(OKSynopsisView *)self updateSynopsisViewOffsetForVisibleWidgets];
}

- (void)show
{
  [(OKSynopsisView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([(OKSynopsisViewDelegate *)[(OKSynopsisView *)self delegate] shouldShowSynopsisView]& 1) != 0 || ([(OKSynopsisView *)self delegate], (objc_opt_respondsToSelector() & 1) == 0))
  {
    if (!self->_isDisplay)
    {
      [(OKSynopsisView *)self prepareForDisplaySynopsisView];
    }

    memset(&v11, 0, sizeof(v11));
    CGAffineTransformMakeScale(&v11, 1.69999999, 1.69999999);
    v4 = v11;
    CATransform3DMakeAffineTransform(&v10, &v4);
    layer = [(UICollectionView *)self->_collectionView layer];
    v6 = *&v10.m31;
    v7 = *&v10.m33;
    v8 = *&v10.m41;
    v9 = *&v10.m43;
    *&v4.a = *&v10.m11;
    *&v4.c = *&v10.m13;
    *&v4.tx = *&v10.m21;
    v5 = *&v10.m23;
    [layer setTransform:&v4];
    [(OKSynopsisView *)self animateSynopsisViewBlurForDisplay:1 withProgress:0.0];
  }
}

- (void)hide
{
  if (!self->_isAnimating)
  {
    [(OKSynopsisView *)self animateSynopsisViewBlurForDisplay:0 withProgress:1.0];
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  if (([dragging isDecelerating] & 1) == 0)
  {
    self->_scrollViewDidEndDragging = 0;
    [(UICollectionView *)self->_collectionView contentOffset];
    self->_collectionViewContentPreviousOffset.x = v4;
    self->_collectionViewContentPreviousOffset.y = v5;
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_prepareAdjacentItemWidgetViewsForScrolling object:0];

  [(OKSynopsisView *)self performSelectorOnMainThread:sel_prepareAdjacentItemWidgetViewsForScrolling withObject:0 waitUntilDone:0];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(OKSynopsisView *)self _scrollViewDidCompleteScrolling];
  }
}

- (void)_scrollViewDidCompleteScrolling
{
  if (!self->_scrollViewDidEndDragging)
  {
    [(OKSynopsisView *)self prepareAdjacentItemWidgetViews];
    self->_scrollViewDidEndDragging = 1;
  }
}

- (void)prepareAdjacentItemWidgetViews:(unint64_t)views
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  indexPathsForVisibleItems = [(UICollectionView *)self->_collectionView indexPathsForVisibleItems];
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  if (!indexPathsForVisibleItems || ![(NSArray *)indexPathsForVisibleItems count])
  {
    if (![(NSArray *)self->_widgetMediaItems count])
    {
      goto LABEL_28;
    }

    if ([(NSArray *)self->_widgetMediaItems count]<= views)
    {
      views = [(NSArray *)self->_widgetMediaItems count];
    }

    v17 = indexSet;
    v18 = 0;
    goto LABEL_27;
  }

  v31 = v5;
  v8 = [-[NSArray firstObject](indexPathsForVisibleItems "firstObject")];
  v9 = [-[NSArray firstObject](indexPathsForVisibleItems "firstObject")];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v10 = [(NSArray *)indexPathsForVisibleItems countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v41;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v41 != v12)
        {
          objc_enumerationMutation(indexPathsForVisibleItems);
        }

        v14 = *(*(&v40 + 1) + 8 * i);
        if (v8 >= [v14 row])
        {
          v8 = [v14 row];
        }

        if (v9 <= [v14 row])
        {
          v9 = [v14 row];
        }
      }

      v11 = [(NSArray *)indexPathsForVisibleItems countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v11);
  }

  if (v8 >= 1)
  {
    if (v8 >= views)
    {
      viewsCopy = views;
    }

    else
    {
      viewsCopy = v8;
    }

    [indexSet addIndexesInRange:{(v8 - views) & ~((v8 - views) >> 63), viewsCopy}];
  }

  v5 = v31;
  if (v9 < [(NSArray *)self->_widgetMediaItems count]- 1)
  {
    v16 = v9 + 1;
    if ([(NSArray *)self->_widgetMediaItems count]- v16 <= views)
    {
      views = [(NSArray *)self->_widgetMediaItems count]- v16;
    }

    v17 = indexSet;
    v18 = v16;
LABEL_27:
    [v17 addIndexesInRange:{v18, views}];
  }

LABEL_28:
  v19 = [MEMORY[0x277CBEB58] setWithArray:self->_widgetMediaItems];
  [v19 minusSet:{objc_msgSend(MEMORY[0x277CBEB98], "setWithArray:", -[NSArray valueForKeyPath:](-[UICollectionView visibleCells](self->_collectionView, "visibleCells"), "valueForKeyPath:", @"widgetView"}];
  firstIndex = [indexSet firstIndex];
  if (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (j = firstIndex; j != 0x7FFFFFFFFFFFFFFFLL; j = [indexSet indexGreaterThanIndex:j])
    {
      v22 = [(NSArray *)self->_widgetMediaItems objectAtIndex:j];
      [v19 removeObject:v22];
      [v22 prepareForWarmup:0];
    }
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v23 = [v19 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v37;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v37 != v25)
        {
          objc_enumerationMutation(v19);
        }

        [*(*(&v36 + 1) + 8 * k) prepareForUnload:0];
      }

      v24 = [v19 countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v24);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v27 = [(NSArray *)indexPathsForVisibleItems countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v33;
    do
    {
      for (m = 0; m != v28; ++m)
      {
        if (*v33 != v29)
        {
          objc_enumerationMutation(indexPathsForVisibleItems);
        }

        [-[NSArray objectAtIndex:](self->_widgetMediaItems objectAtIndex:{objc_msgSend(*(*(&v32 + 1) + 8 * m), "row")), "prepareForDisplay:", 0}];
      }

      v28 = [(NSArray *)indexPathsForVisibleItems countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v28);
  }

  objc_autoreleasePoolPop(v5);
}

@end