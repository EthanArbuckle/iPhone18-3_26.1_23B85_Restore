@interface CACSpokenCommandGestureManager
+ (id)allManagers;
+ (id)carScreenGestureManager;
+ (id)defaultGestureManager;
+ (id)mainScreenGestureManager;
+ (id)managerForDisplayID:(unsigned int)d;
+ (void)initializeSharedManagerTable;
- (AXPIFingerController)fingerController;
- (BOOL)isInDragGesture;
- (CACSpokenCommandGestureManager)initWithDisplayID:(unsigned int)d;
- (CGPoint)_fingerControllerPointForPortraitUpPoint:(CGPoint)point;
- (CGPoint)_pointForGestureGivenPortraitUpPoint:(CGPoint)point;
- (CGPoint)_pointForGestureGivenPortraitUpPoint:(CGPoint)point shouldToggleSelectionOptions:(BOOL)options;
- (CGPoint)defaultPortraitUpPointForGestures;
- (CGPoint)startPointForDrag;
- (void)_clearStateFlags;
- (void)_performGesture:(id)gesture;
- (void)_startDragWithHold:(BOOL)hold atPoint:(CGPoint)point;
- (void)endDragAtPoint:(CGPoint)point;
- (void)performDoubleTapAtPoint:(CGPoint)point numberOfFingers:(unint64_t)fingers;
- (void)performLongPressAtPoint:(CGPoint)point numberOfFingers:(unint64_t)fingers;
- (void)performPinchInGestureAtPoint:(CGPoint)point;
- (void)performPinchOutGestureAtPoint:(CGPoint)point;
- (void)performRotateLeftGestureAtPoint:(CGPoint)point;
- (void)performRotateRightGestureAtPoint:(CGPoint)point;
- (void)performSwipeGestureAtPoint:(CGPoint)point inDirection:(int64_t)direction fast:(BOOL)fast numberOfFingers:(unint64_t)fingers;
- (void)performSwipeGestureFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint fast:(BOOL)fast numberOfFingers:(unint64_t)fingers;
- (void)performTapAtPoint:(CGPoint)point numberOfFingers:(unint64_t)fingers;
- (void)resetState;
- (void)setDidStartDrag:(BOOL)drag;
@end

@implementation CACSpokenCommandGestureManager

- (CACSpokenCommandGestureManager)initWithDisplayID:(unsigned int)d
{
  v5.receiver = self;
  v5.super_class = CACSpokenCommandGestureManager;
  result = [(CACSpokenCommandGestureManager *)&v5 init];
  if (result)
  {
    result->_displayID = d;
  }

  return result;
}

+ (void)initializeSharedManagerTable
{
  if (initializeSharedManagerTable_onceToken != -1)
  {
    +[CACSpokenCommandGestureManager initializeSharedManagerTable];
  }
}

uint64_t __62__CACSpokenCommandGestureManager_initializeSharedManagerTable__block_invoke()
{
  _sharedManagerTable = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (id)carScreenGestureManager
{
  v2 = +[CACDisplayManager sharedManager];
  carPlayDisplayID = [v2 carPlayDisplayID];

  if (carPlayDisplayID)
  {
    v4 = [CACSpokenCommandGestureManager managerForDisplayID:carPlayDisplayID];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)mainScreenGestureManager
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  v3 = +[CACSpokenCommandGestureManager managerForDisplayID:](CACSpokenCommandGestureManager, "managerForDisplayID:", [mainScreen _integerDisplayID]);

  return v3;
}

+ (id)allManagers
{
  [self initializeSharedManagerTable];
  v2 = _sharedManagerTable;
  objc_sync_enter(v2);
  allValues = [_sharedManagerTable allValues];
  objc_sync_exit(v2);

  return allValues;
}

+ (id)defaultGestureManager
{
  v3 = +[CACDisplayManager sharedManager];
  carPlayConnected = [v3 carPlayConnected];

  if (carPlayConnected)
  {
    [self carScreenGestureManager];
  }

  else
  {
    [self mainScreenGestureManager];
  }
  v5 = ;

  return v5;
}

+ (id)managerForDisplayID:(unsigned int)d
{
  if (d)
  {
    v3 = *&d;
    [self initializeSharedManagerTable];
    v4 = _sharedManagerTable;
    objc_sync_enter(v4);
    v5 = _sharedManagerTable;
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
    defaultGestureManager = [v5 objectForKey:v6];

    if (!defaultGestureManager)
    {
      defaultGestureManager = [[CACSpokenCommandGestureManager alloc] initWithDisplayID:v3];
      v8 = _sharedManagerTable;
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
      [v8 setObject:defaultGestureManager forKey:v9];
    }

    objc_sync_exit(v4);
  }

  else
  {
    defaultGestureManager = [self defaultGestureManager];
  }

  return defaultGestureManager;
}

- (AXPIFingerController)fingerController
{
  fingerController = self->_fingerController;
  if (!fingerController)
  {
    v4 = +[CACDisplayManager sharedManager];
    v5 = [v4 overlayViewForDisplayID:self->_displayID];

    v6 = objc_alloc(MEMORY[0x277CE7160]);
    window = [v5 window];
    screen = [window screen];
    displayConfiguration = [screen displayConfiguration];
    hardwareIdentifier = [displayConfiguration hardwareIdentifier];
    v11 = [v6 initWithDisplayUUID:hardwareIdentifier];
    v12 = self->_fingerController;
    self->_fingerController = v11;

    fingerContainerView = [(AXPIFingerController *)self->_fingerController fingerContainerView];
    [v5 bounds];
    [fingerContainerView setFrame:?];
    [fingerContainerView setAutoresizingMask:18];
    [v5 addSubview:fingerContainerView];

    fingerController = self->_fingerController;
  }

  return fingerController;
}

- (CGPoint)_fingerControllerPointForPortraitUpPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  fingerController = [(CACSpokenCommandGestureManager *)self fingerController];
  fingerContainerView = [fingerController fingerContainerView];
  v7 = CACViewPointFromPortraitUpPoint(fingerContainerView, x, y);
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)_performGesture:(id)gesture
{
  gestureCopy = gesture;
  fingerController = [(CACSpokenCommandGestureManager *)self fingerController];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__CACSpokenCommandGestureManager__performGesture___block_invoke;
  v6[3] = &unk_279CEB760;
  v6[4] = self;
  [fingerController performGesture:gestureCopy completion:v6];
}

void __50__CACSpokenCommandGestureManager__performGesture___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__CACSpokenCommandGestureManager__performGesture___block_invoke_2;
  block[3] = &unk_279CEB2D0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __50__CACSpokenCommandGestureManager__performGesture___block_invoke_2(uint64_t a1)
{
  v2 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v2 didEndTouches];

  v3 = [*(a1 + 32) fingerController];
  [v3 clearAllFingersAnimated:1 endPointForAnimation:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
}

- (void)performPinchInGestureAtPoint:(CGPoint)point
{
  v4 = MEMORY[0x277CE7DD0];
  [(CACSpokenCommandGestureManager *)self _pointForGestureGivenPortraitUpPoint:point.x, point.y];
  v6 = v5;
  v8 = v7;
  fingerController = [(CACSpokenCommandGestureManager *)self fingerController];
  fingerContainerView = [fingerController fingerContainerView];
  [fingerContainerView bounds];
  v14 = [v4 pinchInGestureWithPoint:v6 bounds:{v8, v10, v11, v12, v13}];
  [(CACSpokenCommandGestureManager *)self _performGesture:v14];
}

- (void)performPinchOutGestureAtPoint:(CGPoint)point
{
  v4 = MEMORY[0x277CE7DD0];
  [(CACSpokenCommandGestureManager *)self _pointForGestureGivenPortraitUpPoint:point.x, point.y];
  v6 = v5;
  v8 = v7;
  fingerController = [(CACSpokenCommandGestureManager *)self fingerController];
  fingerContainerView = [fingerController fingerContainerView];
  [fingerContainerView bounds];
  v14 = [v4 pinchOutGestureWithPoint:v6 bounds:{v8, v10, v11, v12, v13}];
  [(CACSpokenCommandGestureManager *)self _performGesture:v14];
}

- (void)performRotateRightGestureAtPoint:(CGPoint)point
{
  v4 = MEMORY[0x277CE7DD0];
  [(CACSpokenCommandGestureManager *)self _pointForGestureGivenPortraitUpPoint:point.x, point.y];
  v6 = v5;
  v8 = v7;
  fingerController = [(CACSpokenCommandGestureManager *)self fingerController];
  fingerContainerView = [fingerController fingerContainerView];
  [fingerContainerView bounds];
  v14 = [v4 rotateRightGestureWithPoint:v6 bounds:{v8, v10, v11, v12, v13}];
  [(CACSpokenCommandGestureManager *)self _performGesture:v14];
}

- (void)performRotateLeftGestureAtPoint:(CGPoint)point
{
  v4 = MEMORY[0x277CE7DD0];
  [(CACSpokenCommandGestureManager *)self _pointForGestureGivenPortraitUpPoint:point.x, point.y];
  v6 = v5;
  v8 = v7;
  fingerController = [(CACSpokenCommandGestureManager *)self fingerController];
  fingerContainerView = [fingerController fingerContainerView];
  [fingerContainerView bounds];
  v14 = [v4 rotateLeftGestureWithPoint:v6 bounds:{v8, v10, v11, v12, v13}];
  [(CACSpokenCommandGestureManager *)self _performGesture:v14];
}

- (CGPoint)_pointForGestureGivenPortraitUpPoint:(CGPoint)point
{
  [(CACSpokenCommandGestureManager *)self _pointForGestureGivenPortraitUpPoint:0 shouldToggleSelectionOptions:point.x, point.y];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)_pointForGestureGivenPortraitUpPoint:(CGPoint)point shouldToggleSelectionOptions:(BOOL)options
{
  y = point.y;
  x = point.x;
  v7 = *MEMORY[0x277CBF348];
  v8 = *(MEMORY[0x277CBF348] + 8);
  if (point.x != *MEMORY[0x277CBF348] || point.y != v8)
  {
    goto LABEL_20;
  }

  if (options)
  {
    v10 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    focusedElement = [v10 focusedElement];

    if (focusedElement)
    {
      selectedTextRange = [focusedElement selectedTextRange];
      if (selectedTextRange != 0x7FFFFFFF)
      {
        [focusedElement boundsForTextRange:{selectedTextRange, 0}];
        v13 = v28.origin.x;
        v14 = v28.origin.y;
        width = v28.size.width;
        height = v28.size.height;
        v17 = CGRectEqualToRect(v28, *MEMORY[0x277CBF3A0]);
        x = *MEMORY[0x277CBF398];
        y = *(MEMORY[0x277CBF398] + 8);
        if (v17 || (v29.origin.x = v13, v29.origin.y = v14, v29.size.width = width, v29.size.height = height, CGRectEqualToRect(v29, *MEMORY[0x277CBF398])))
        {
          [focusedElement performAction:2057];
        }

        else
        {
          AX_CGRectGetCenter();
          [(CACSpokenCommandGestureManager *)self _fingerControllerPointForPortraitUpPoint:?];
          x = v18;
          y = v19;
        }
      }
    }
  }

  if (x == v7 && y == v8)
  {
    [(CACSpokenCommandGestureManager *)self defaultPortraitUpPointForGestures];
    x = v21;
    y = v22;
LABEL_20:
    [(CACSpokenCommandGestureManager *)self _fingerControllerPointForPortraitUpPoint:options, x, y];
    x = v23;
    y = v24;
  }

  v25 = x;
  v26 = y;
  result.y = v26;
  result.x = v25;
  return result;
}

- (void)performSwipeGestureAtPoint:(CGPoint)point inDirection:(int64_t)direction fast:(BOOL)fast numberOfFingers:(unint64_t)fingers
{
  fastCopy = fast;
  v49[2] = *MEMORY[0x277D85DE8];
  [(CACSpokenCommandGestureManager *)self _pointForGestureGivenPortraitUpPoint:point.x, point.y];
  v11 = v10;
  v13 = v12;
  if (!fastCopy)
  {
    fingerController = [(CACSpokenCommandGestureManager *)self fingerController];
    fingerContainerView = [fingerController fingerContainerView];
    [fingerContainerView bounds];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;

    v54.origin.x = v32;
    v54.origin.y = v34;
    v54.size.width = v36;
    v54.size.height = v38;
    Width = CGRectGetWidth(v54);
    v55.origin.x = v32;
    v55.origin.y = v34;
    v55.size.width = v36;
    v55.size.height = v38;
    Height = CGRectGetHeight(v55);
    if (Width < Height)
    {
      Height = Width;
    }

    v41 = Height * 0.25;
    v42 = 0.0;
    if (direction <= 1)
    {
      if (!direction)
      {
        v42 = v11 - fmin(v41, v11);
        goto LABEL_17;
      }

      v43 = 0.0;
      if (direction == 1)
      {
        v44 = v41;
        v56.origin.x = v32;
        v56.origin.y = v34;
        v56.size.width = v36;
        v56.size.height = v38;
        v42 = v11 + fmin(v44, CGRectGetMaxX(v56) - v11);
LABEL_17:
        v43 = v13;
      }

LABEL_20:
      v47 = MEMORY[0x277CE7DD0];
      v52.x = v11;
      v52.y = v13;
      v23 = NSStringFromCGPoint(v52);
      v48[0] = v23;
      v53.x = v42;
      v53.y = v43;
      v24 = NSStringFromCGPoint(v53);
      v48[1] = v24;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
      v28 = 0.6;
      v26 = v47;
      v27 = v25;
      goto LABEL_21;
    }

    if (direction == 3)
    {
      v46 = v41;
      v57.origin.x = v32;
      v57.origin.y = v34;
      v57.size.width = v36;
      v57.size.height = v38;
      v43 = v13 + fmin(v46, CGRectGetMaxY(v57) - v13);
    }

    else
    {
      v43 = 0.0;
      if (direction != 2)
      {
        goto LABEL_20;
      }

      v43 = v13 - fmin(v41, v13);
    }

    v42 = v11;
    goto LABEL_20;
  }

  v14 = 0.0;
  if (direction <= 3)
  {
    v14 = dbl_26B404F70[direction];
  }

  fingerController2 = [(CACSpokenCommandGestureManager *)self fingerController];
  fingerContainerView2 = [fingerController2 fingerContainerView];
  [fingerContainerView2 bounds];
  v18 = v17;
  v20 = v19;

  if ((direction & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v21 = __sincos_stret(v14);
    v22 = MEMORY[0x277CE7DD0];
    v50.x = v11;
    v50.y = v13;
    v23 = NSStringFromCGPoint(v50);
    v49[0] = v23;
    v51.x = v11 + v21.__cosval * 100.0;
    v51.y = v13 + v21.__sinval * 100.0;
    v24 = NSStringFromCGPoint(v51);
    v49[1] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:2];
    v26 = v22;
    v27 = v25;
    v28 = fmax(v18 / v20 / 0.461538462, 1.0) * 0.1;
LABEL_21:
    v45 = [v26 lineGestureBetweenPoints:v27 duration:fingers numberOfFingers:v28];

    goto LABEL_22;
  }

  v45 = [MEMORY[0x277CE7DD0] flickGestureAtPoint:fingers angle:v11 numberOfFingers:{v13, v14}];
LABEL_22:
  [(CACSpokenCommandGestureManager *)self _performGesture:v45];
}

- (void)performSwipeGestureFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint fast:(BOOL)fast numberOfFingers:(unint64_t)fingers
{
  y = toPoint.y;
  x = toPoint.x;
  v16[2] = *MEMORY[0x277D85DE8];
  if (fast)
  {
    v10 = 0.1;
  }

  else
  {
    v10 = 0.6;
  }

  v11 = MEMORY[0x277CE7DD0];
  v12 = NSStringFromCGPoint(point);
  v16[0] = v12;
  v17.x = x;
  v17.y = y;
  v13 = NSStringFromCGPoint(v17);
  v16[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v15 = [v11 lineGestureBetweenPoints:v14 duration:fingers numberOfFingers:v10];

  [(CACSpokenCommandGestureManager *)self _performGesture:v15];
}

- (void)performTapAtPoint:(CGPoint)point numberOfFingers:(unint64_t)fingers
{
  [(CACSpokenCommandGestureManager *)self _pointForGestureGivenPortraitUpPoint:fingers == 1 shouldToggleSelectionOptions:point.x, point.y];
  if (v7 != *MEMORY[0x277CBF398] || v6 != *(MEMORY[0x277CBF398] + 8))
  {
    v9 = [MEMORY[0x277CE7DD0] tapGestureAtPoint:0 isDoubleTap:fingers numberOfFingers:?];
    [(CACSpokenCommandGestureManager *)self _performGesture:v9];
  }
}

- (void)performDoubleTapAtPoint:(CGPoint)point numberOfFingers:(unint64_t)fingers
{
  [(CACSpokenCommandGestureManager *)self _pointForGestureGivenPortraitUpPoint:point.x, point.y];
  v6 = [MEMORY[0x277CE7DD0] tapGestureAtPoint:1 isDoubleTap:fingers numberOfFingers:?];
  [(CACSpokenCommandGestureManager *)self _performGesture:v6];
}

- (void)performLongPressAtPoint:(CGPoint)point numberOfFingers:(unint64_t)fingers
{
  v36 = *MEMORY[0x277D85DE8];
  [(CACSpokenCommandGestureManager *)self _pointForGestureGivenPortraitUpPoint:point.x, point.y];
  v7 = v6;
  v9 = v8;
  v10 = MEMORY[0x277CE7170];
  fingerController = [(CACSpokenCommandGestureManager *)self fingerController];
  fingerContainerView = [fingerController fingerContainerView];
  [fingerContainerView bounds];
  v17 = [v10 defaultLocationsForNumberOfFingers:fingers aroundPoint:v7 withinBounds:{v9, v13, v14, v15, v16}];

  v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v17, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v19 = v17;
  v20 = [v19 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v32;
    do
    {
      v23 = 0;
      do
      {
        if (*v32 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = MEMORY[0x277CE7168];
        v25 = CGPointFromString(*(*(&v31 + 1) + 8 * v23));
        v26 = [v24 fingerModelForLocation:{v25.x, v25.y}];
        [v18 addObject:v26];

        ++v23;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v21);
  }

  fingerController2 = [(CACSpokenCommandGestureManager *)self fingerController];
  [fingerController2 showFingerModels:v18 animated:0 startPointForAnimation:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];

  fingerController3 = [(CACSpokenCommandGestureManager *)self fingerController];
  [fingerController3 pressFingersDownAnimated:1];

  v29 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__CACSpokenCommandGestureManager_performLongPressAtPoint_numberOfFingers___block_invoke;
  block[3] = &unk_279CEB2D0;
  block[4] = self;
  dispatch_after(v29, MEMORY[0x277D85CD0], block);
}

void __74__CACSpokenCommandGestureManager_performLongPressAtPoint_numberOfFingers___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fingerController];
  [v2 liftFingersUpAnimated:1];

  v3 = [*(a1 + 32) fingerController];
  [v3 clearAllFingersAnimated:1 endPointForAnimation:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
}

- (BOOL)isInDragGesture
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  didStartDrag = [(CACSpokenCommandGestureManager *)selfCopy didStartDrag];
  objc_sync_exit(selfCopy);

  return didStartDrag;
}

- (void)setDidStartDrag:(BOOL)drag
{
  if (self->_didStartDrag != drag)
  {
    self->_didStartDrag = drag;
    v4 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    [v4 synchronizeRecognizersWithReason:kSRUISyncReasonGestureStateChange];
  }
}

- (void)_startDragWithHold:(BOOL)hold atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  holdCopy = hold;
  v18[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = *MEMORY[0x277CBF348];
  v9 = *(MEMORY[0x277CBF348] + 8);
  if (x == *MEMORY[0x277CBF348] && y == v9)
  {
    [(CACSpokenCommandGestureManager *)selfCopy defaultPortraitUpPointForGestures];
    x = v11;
    y = v12;
  }

  [(CACSpokenCommandGestureManager *)selfCopy setDidStartDrag:1];
  [(CACSpokenCommandGestureManager *)selfCopy setShouldHoldStartPointForDrag:holdCopy];
  [(CACSpokenCommandGestureManager *)selfCopy setStartPointForDrag:x, y];
  objc_sync_exit(selfCopy);

  fingerController = [(CACSpokenCommandGestureManager *)selfCopy fingerController];
  v14 = MEMORY[0x277CE7168];
  [(CACSpokenCommandGestureManager *)selfCopy _fingerControllerPointForPortraitUpPoint:x, y];
  v15 = [v14 fingerModelForLocation:?];
  v18[0] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  [fingerController showFingerModels:v16 animated:1 startPointForAnimation:{v8, v9}];

  if (holdCopy)
  {
    fingerController2 = [(CACSpokenCommandGestureManager *)selfCopy fingerController];
    [fingerController2 pressFingersDownAnimated:1];
  }
}

- (void)endDragAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v20[2] = *MEMORY[0x277D85DE8];
  [(CACSpokenCommandGestureManager *)self _clearStateFlags];
  [(CACSpokenCommandGestureManager *)self startPointForDrag];
  AX_CGPointGetDistanceToPoint();
  v7 = v6;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(CACSpokenCommandGestureManager *)selfCopy startPointForDrag];
  v10 = v9;
  v12 = v11;
  shouldHoldStartPointForDrag = [(CACSpokenCommandGestureManager *)selfCopy shouldHoldStartPointForDrag];
  objc_sync_exit(selfCopy);

  v14 = MEMORY[0x277CE7DD0];
  [(CACSpokenCommandGestureManager *)selfCopy _fingerControllerPointForPortraitUpPoint:v10, v12];
  v15 = NSStringFromCGPoint(v21);
  v20[0] = v15;
  [(CACSpokenCommandGestureManager *)selfCopy _fingerControllerPointForPortraitUpPoint:x, y];
  v16 = NSStringFromCGPoint(v22);
  v20[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v18 = 0.0;
  if (shouldHoldStartPointForDrag)
  {
    v18 = 0.5;
  }

  v19 = [v14 lineGestureBetweenPoints:v17 duration:1 numberOfFingers:v7 / 140.0 initialHoldDuration:v18];
  [(CACSpokenCommandGestureManager *)selfCopy _performGesture:v19];
}

- (void)_clearStateFlags
{
  obj = self;
  objc_sync_enter(obj);
  [(CACSpokenCommandGestureManager *)obj setDidStartDrag:0];
  [(CACSpokenCommandGestureManager *)obj setShouldHoldStartPointForDrag:0];
  objc_sync_exit(obj);
}

- (void)resetState
{
  [(CACSpokenCommandGestureManager *)self _clearStateFlags];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__CACSpokenCommandGestureManager_resetState__block_invoke;
  block[3] = &unk_279CEB2D0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __44__CACSpokenCommandGestureManager_resetState__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) fingerController];
  [v1 clearAllFingersAnimated:1 endPointForAnimation:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
}

- (CGPoint)defaultPortraitUpPointForGestures
{
  x = self->_defaultPortraitUpPointForGestures.x;
  y = self->_defaultPortraitUpPointForGestures.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)startPointForDrag
{
  x = self->_startPointForDrag.x;
  y = self->_startPointForDrag.y;
  result.y = y;
  result.x = x;
  return result;
}

@end