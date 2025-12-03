@interface UIDebuggingInformationOverlay
+ (id)overlay;
+ (void)prepareDebuggingOverlay;
- (BOOL)isFullscreen;
- (CGPoint)drawingOrigin;
- (UIDebuggingInformationOverlay)init;
- (UIDebuggingInformationOverlay)initWithFrame:(CGRect)frame;
- (UIDebuggingInformationRootTableViewController)rootTableViewController;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_setHidden:(BOOL)hidden;
- (void)setRootTableViewController:(id)controller;
- (void)toggleFullscreen;
- (void)toggleVisibility;
@end

@implementation UIDebuggingInformationOverlay

- (UIDebuggingInformationOverlay)init
{
  if (qword_1ED49AA38 != -1)
  {
    dispatch_once(&qword_1ED49AA38, &__block_literal_global_90_4);
  }

  if (_MergedGlobals_11_12 == 1)
  {
    v7.receiver = self;
    v7.super_class = UIDebuggingInformationOverlay;
    v3 = [(UIWindow *)&v7 init];
    v4 = v3;
    if (v3)
    {
      [(UIWindow *)v3 _setWindowControlsStatusBarOrientation:0];
    }

    self = v4;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isFullscreen
{
  overlayViewController = [(UIDebuggingInformationOverlay *)self overlayViewController];
  isFullscreen = [overlayViewController isFullscreen];

  return isFullscreen;
}

+ (void)prepareDebuggingOverlay
{
  if (_UIGetDebuggingOverlayEnabled())
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v2 = [defaultCenter addObserverForName:@"UIApplicationProtectedDataWillBecomeUnavailable" object:0 queue:0 usingBlock:&__block_literal_global_88_1];
  }
}

void __56__UIDebuggingInformationOverlay_prepareDebuggingOverlay__block_invoke()
{
  v0 = +[UIDebuggingInformationOverlay overlay];
  [v0 _setHidden:1];
}

+ (id)overlay
{
  if (qword_1ED49AA48 != -1)
  {
    dispatch_once(&qword_1ED49AA48, &__block_literal_global_93_3);
  }

  v3 = qword_1ED49AA40;

  return v3;
}

uint64_t __40__UIDebuggingInformationOverlay_overlay__block_invoke()
{
  v0 = objc_alloc_init(UIDebuggingInformationOverlay);
  v1 = qword_1ED49AA40;
  qword_1ED49AA40 = v0;

  v2 = qword_1ED49AA40;
  v3 = objc_alloc_init(UIDebuggingInformationOverlayViewController);
  [v2 setRootViewController:v3];

  v4 = qword_1ED49AA40;

  return [v4 setHidden:1];
}

- (void)_setHidden:(BOOL)hidden
{
  [(UIView *)self frame];
  v6 = v5;
  overlayViewController = [(UIDebuggingInformationOverlay *)self overlayViewController];
  containerView = [overlayViewController containerView];
  [containerView frame];
  v10 = v6 - v9;

  memset(&v20, 0, sizeof(v20));
  CGAffineTransformMakeTranslation(&v20, 0.0, v10);
  if (hidden)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    v17 = v20;
    aBlock[2] = __44__UIDebuggingInformationOverlay__setHidden___block_invoke_2;
    aBlock[3] = &unk_1E70F3DC8;
    aBlock[4] = self;
    v11 = _Block_copy(aBlock);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __44__UIDebuggingInformationOverlay__setHidden___block_invoke_3;
    v15[3] = &unk_1E70F5AC0;
    v15[4] = self;
    v12 = _Block_copy(v15);
  }

  else
  {
    [(UIWindow *)self setHidden:0];
    v19 = v20;
    [(UIView *)self setTransform:&v19];
    [(UIWindow *)self makeKeyAndVisible];
    v13 = +[UIColor clearColor];
    [(UIView *)self setBackgroundColor:v13];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __44__UIDebuggingInformationOverlay__setHidden___block_invoke;
    v18[3] = &unk_1E70F3590;
    v18[4] = self;
    v11 = _Block_copy(v18);
    v14 = +[_UIPrototypingSettingsManager sharedManager];
    [v14 synchronizeStoredSettings];

    v12 = 0;
  }

  [UIView animateWithDuration:v11 animations:v12 completion:0.2];
}

uint64_t __44__UIDebuggingInformationOverlay__setHidden___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v4[0] = *MEMORY[0x1E695EFD0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [v1 setTransform:v4];
}

uint64_t __44__UIDebuggingInformationOverlay__setHidden___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  v4[2] = *(a1 + 72);
  return [v1 setTransform:v4];
}

uint64_t __44__UIDebuggingInformationOverlay__setHidden___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setHidden:1];
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [v2 setTransform:v5];
}

- (void)toggleVisibility
{
  inspectedWindow = [(UIDebuggingInformationOverlay *)self inspectedWindow];

  if (!inspectedWindow)
  {
    v4 = +[UIWindow _applicationKeyWindow];
    [(UIDebuggingInformationOverlay *)self setInspectedWindow:v4];
  }

  v5 = [(UIView *)self isHidden]^ 1;

  [(UIDebuggingInformationOverlay *)self _setHidden:v5];
}

- (void)toggleFullscreen
{
  overlayViewController = [(UIDebuggingInformationOverlay *)self overlayViewController];
  [overlayViewController toggleFullscreen];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v30 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  overlayViewController = [(UIDebuggingInformationOverlay *)self overlayViewController];
  containerView = [overlayViewController containerView];
  [containerView frame];
  v32.x = x;
  v32.y = y;
  v10 = CGRectContainsPoint(v33, v32);

  if (v10)
  {
    v28.receiver = self;
    v28.super_class = UIDebuggingInformationOverlay;
    [(UIView *)&v28 hitTest:eventCopy withEvent:x, y, v23.receiver, v23.super_class];
    selfCopy = LABEL_3:;
    goto LABEL_19;
  }

  if ([(UIDebuggingInformationOverlay *)self checkingTouches]|| ([(UIDebuggingInformationOverlay *)self lastTouch], v12 = objc_claimAutoreleasedReturnValue(), v12, v12 == eventCopy))
  {
    inspectedWindow = [(UIDebuggingInformationOverlay *)self inspectedWindow];
    v14 = [inspectedWindow hitTest:eventCopy withEvent:{x, y}];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    touchObservers = [(UIDebuggingInformationOverlay *)self touchObservers];
    v16 = [touchObservers countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(touchObservers);
          }

          [*(*(&v24 + 1) + 8 * i) didReceiveNewView:v14];
        }

        v17 = [touchObservers countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v17);
    }

    [(UIDebuggingInformationOverlay *)self setCheckingTouches:0];
    lastTouch = [(UIDebuggingInformationOverlay *)self lastTouch];

    if (lastTouch == eventCopy)
    {
      v21 = 0;
    }

    else
    {
      v21 = eventCopy;
    }

    [(UIDebuggingInformationOverlay *)self setLastTouch:v21];
    selfCopy = self;
  }

  else
  {
    if ([(UIDebuggingInformationOverlay *)self touchCaptureEnabled])
    {
      [(UIView *)&v23 hitTest:eventCopy withEvent:x, y, self, UIDebuggingInformationOverlay];
      goto LABEL_3;
    }

    selfCopy = 0;
  }

LABEL_19:

  return selfCopy;
}

- (UIDebuggingInformationOverlay)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = UIDebuggingInformationOverlay;
  v3 = [(UIWindow *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    array = [MEMORY[0x1E695DF70] array];
    touchObservers = v3->_touchObservers;
    v3->_touchObservers = array;

    [(UIWindow *)v3 setWindowLevel:2200.0];
  }

  return v3;
}

- (UIDebuggingInformationRootTableViewController)rootTableViewController
{
  overlayViewController = [(UIDebuggingInformationOverlay *)self overlayViewController];
  rootTableViewController = [overlayViewController rootTableViewController];

  return rootTableViewController;
}

- (void)setRootTableViewController:(id)controller
{
  controllerCopy = controller;
  overlayViewController = [(UIDebuggingInformationOverlay *)self overlayViewController];
  [overlayViewController setRootTableViewController:controllerCopy];
}

- (CGPoint)drawingOrigin
{
  x = self->_drawingOrigin.x;
  y = self->_drawingOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

@end