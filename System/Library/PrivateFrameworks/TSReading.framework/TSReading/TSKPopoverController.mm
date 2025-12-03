@interface TSKPopoverController
+ (BOOL)anyPopoversVisible;
- (BOOL)popoverControllerShouldDismissPopover:(id)popover;
- (TSKPopoverController)initWithContentViewController:(id)controller;
- (void)dealloc;
- (void)moviePlaybackWillBegin:(id)begin;
- (void)p_dismissPopoverAnimated:(BOOL)animated;
- (void)p_sendPopoverHidDelegateMessage;
- (void)p_willShowPopoverNotification:(id)notification;
- (void)popoverControllerDidDismissPopover:(id)popover;
- (void)presentPopoverFromRect:(CGRect)rect inView:(id)view permittedArrowDirections:(unint64_t)directions animated:(BOOL)animated;
- (void)presentPopoverFromRect:(CGRect)rect inView:(id)view permittedArrowDirections:(unint64_t)directions animated:(BOOL)animated constrainToView:(BOOL)toView withPadding:(double)padding;
- (void)setDismissOnMoviePlayback:(BOOL)playback;
@end

@implementation TSKPopoverController

+ (BOOL)anyPopoversVisible
{
  result = gVisiblePopovers;
  if (gVisiblePopovers)
  {
    return CFArrayGetCount(gVisiblePopovers) > 0;
  }

  return result;
}

- (TSKPopoverController)initWithContentViewController:(id)controller
{
  v7.receiver = self;
  v7.super_class = TSKPopoverController;
  v3 = [(TSKPopoverController *)&v7 initWithContentViewController:controller];
  if (v3)
  {
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_p_applicationDidEnterBackground_ name:*MEMORY[0x277D76660] object:0];
    [(TSKPopoverController *)v3 setDismissOnMoviePlayback:1];
    [(TSKPopoverController *)v3 setDismissAnimatedOnOrientationChange:1];
    v6.receiver = v3;
    v6.super_class = TSKPopoverController;
    [(TSKPopoverController *)&v6 setDelegate:v3];
    -[TSKPopoverController setBackgroundColor:](v3, "setBackgroundColor:", [MEMORY[0x277D75348] whiteColor]);
  }

  return v3;
}

- (void)dealloc
{
  v3 = gVisiblePopovers;
  if (gVisiblePopovers)
  {
    v6.length = CFArrayGetCount(gVisiblePopovers);
    v6.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v3, v6, self);
    if (FirstIndexOfValue != -1)
    {
      CFArrayRemoveValueAtIndex(gVisiblePopovers, FirstIndexOfValue);
    }
  }

  v5.receiver = self;
  v5.super_class = TSKPopoverController;
  [(TSKPopoverController *)&v5 dealloc];
}

- (void)p_sendPopoverHidDelegateMessage
{
  [(TSKPopoverController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate = [(TSKPopoverController *)self delegate];

    [delegate popoverControllerDidDismissPopover:self];
  }
}

- (void)p_dismissPopoverAnimated:(BOOL)animated
{
  if (!self->mIsDismissing)
  {
    animatedCopy = animated;
    selfCopy = self;
    self->mIsDismissing = 1;
    v6 = gVisiblePopovers;
    if (!gVisiblePopovers || (v8.length = CFArrayGetCount(gVisiblePopovers), v8.location = 0, CFArrayGetFirstIndexOfValue(v6, v8, self) == -1))
    {
      if (![(TSKPopoverController *)self isPopoverVisible])
      {
LABEL_8:
        self->mIsDismissing = 0;

        return;
      }
    }

    else
    {
      [(TSKPopoverController *)self isPopoverVisible];
    }

    if ([(TSKPopoverController *)self popoverControllerShouldDismissPopover:self])
    {
      v7.receiver = self;
      v7.super_class = TSKPopoverController;
      [(TSKPopoverController *)&v7 dismissPopoverAnimated:animatedCopy];
      [(TSKPopoverController *)self p_sendPopoverHidDelegateMessage];
    }

    goto LABEL_8;
  }
}

- (void)p_willShowPopoverNotification:(id)notification
{
  if ([notification object] != self)
  {

    [(TSKPopoverController *)self p_dismissPopoverAnimated:1];
  }
}

- (void)setDismissOnMoviePlayback:(BOOL)playback
{
  self->mDismissOnMoviePlayback = playback;
  v3 = gVisiblePopovers;
  if (gVisiblePopovers)
  {
    v8.length = CFArrayGetCount(gVisiblePopovers);
    v8.location = 0;
    if (CFArrayGetFirstIndexOfValue(v3, v8, self) != -1)
    {
      mDismissOnMoviePlayback = self->mDismissOnMoviePlayback;
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      if (mDismissOnMoviePlayback)
      {

        [defaultCenter addObserver:self selector:sel_moviePlaybackWillBegin_ name:@"TSKMoviePlaybackRegistryObjectWillBeginMoviePlaybackNotification" object:0];
      }

      else
      {

        [defaultCenter removeObserver:self name:@"TSKMoviePlaybackRegistryObjectWillBeginMoviePlaybackNotification" object:0];
      }
    }
  }
}

- (void)presentPopoverFromRect:(CGRect)rect inView:(id)view permittedArrowDirections:(unint64_t)directions animated:(BOOL)animated constrainToView:(BOOL)toView withPadding:(double)padding
{
  animatedCopy = animated;
  height = rect.size.height;
  x = rect.origin.x;
  if (toView)
  {
    width = rect.size.width;
    v15 = rect.size.height;
    y = rect.origin.y;
    [view bounds];
    v18 = v17;
    v20 = v19;
    v21 = x;
    v23 = v22;
    v25 = v24;
    [(TSKPopoverController *)self popoverContentSize];
    v34 = v26;
    v35 = y;
    v33 = v27;
    v36 = width;
    v37 = v21;
    v40.origin.x = v21;
    v40.origin.y = y;
    height = v15;
    v40.size.width = width;
    v40.size.height = v15;
    v47.origin.x = v18;
    v47.origin.y = v20;
    v47.size.width = v23;
    v47.size.height = v25;
    v41 = CGRectIntersection(v40, v47);
    v28 = v41.origin.x;
    v29 = v41.origin.y;
    v30 = v41.size.width;
    v31 = v41.size.height;
    if (CGRectGetMinX(v41) <= v34 + padding && (v42.origin.x = v28, v42.origin.y = v29, v42.size.width = v30, v42.size.height = v31, v23 - CGRectGetMaxX(v42) <= v34 + padding) && (v43.origin.x = v28, v43.origin.y = v29, v43.size.width = v30, v43.size.height = v31, CGRectGetMinY(v43) <= v33 + padding))
    {
      v44.origin.x = v28;
      v44.origin.y = v29;
      v44.size.width = v30;
      v44.size.height = v31;
      v32 = v25 - CGRectGetMaxY(v44) <= v33 + padding;
      rect.size.width = v36;
      x = v37;
      rect.origin.y = v35;
      if (v32)
      {
        v45.origin.x = v28;
        v45.origin.y = v29;
        v45.size.width = v30;
        v45.size.height = v31;
        x = CGRectGetMidX(v45);
        v46.origin.x = v28;
        v46.origin.y = v29;
        v46.size.width = v30;
        v46.size.height = v31;
        rect.origin.y = CGRectGetMidY(v46);
        rect.size.width = 1.0;
        height = 1.0;
      }
    }

    else
    {
      rect.size.width = v36;
      x = v37;
      rect.origin.y = v35;
    }
  }

  [(TSKPopoverController *)self presentPopoverFromRect:view inView:directions permittedArrowDirections:animatedCopy animated:x, rect.origin.y, rect.size.width, height, padding];
}

- (void)presentPopoverFromRect:(CGRect)rect inView:(id)view permittedArrowDirections:(unint64_t)directions animated:(BOOL)animated
{
  animatedCopy = animated;
  v19 = CGRectIntegral(rect);
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  v14 = gVisiblePopovers;
  if (gVisiblePopovers)
  {
    v18.length = CFArrayGetCount(gVisiblePopovers);
    v18.location = 0;
    if (CFArrayGetFirstIndexOfValue(v14, v18, self) != -1)
    {
      goto LABEL_7;
    }

    Mutable = gVisiblePopovers;
  }

  else
  {
    Mutable = CFArrayCreateMutable(0, 0, 0);
    gVisiblePopovers = Mutable;
  }

  CFArrayAppendValue(Mutable, self);
  if ([(TSKPopoverController *)self dismissOnMoviePlayback])
  {
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  }

LABEL_7:
  [+[TSKPopoverUndoObserver sharedObserver](TSKPopoverUndoObserver "sharedObserver")];
  [MEMORY[0x277CD9FF0] begin];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __88__TSKPopoverController_presentPopoverFromRect_inView_permittedArrowDirections_animated___block_invoke;
  v17[3] = &unk_279D46770;
  v17[4] = self;
  [MEMORY[0x277CD9FF0] setCompletionBlock:v17];
  v16.receiver = self;
  v16.super_class = TSKPopoverController;
  [(TSKPopoverController *)&v16 presentPopoverFromRect:view inView:directions permittedArrowDirections:animatedCopy animated:x, y, width, height];
  [MEMORY[0x277CD9FF0] commit];
}

uint64_t __88__TSKPopoverController_presentPopoverFromRect_inView_permittedArrowDirections_animated___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(a1 + 32);

  return [v2 postNotificationName:@"TSKPopoverControllerDidShowPopoverNotification" object:v3];
}

- (void)moviePlaybackWillBegin:(id)begin
{
  Main = CFRunLoopGetMain();
  v5 = *MEMORY[0x277CBF048];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__TSKPopoverController_moviePlaybackWillBegin___block_invoke;
  block[3] = &unk_279D46770;
  block[4] = self;
  CFRunLoopPerformBlock(Main, v5, block);
  CFRunLoopWakeUp(Main);
}

- (BOOL)popoverControllerShouldDismissPopover:(id)popover
{
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v5 = [(UIPopoverControllerDelegate *)self->mSavedDelegate popoverControllerShouldDismissPopover:popover]) != 0)
  {
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (void)popoverControllerDidDismissPopover:(id)popover
{
  v5 = gVisiblePopovers;
  if (gVisiblePopovers)
  {
    v10.length = CFArrayGetCount(gVisiblePopovers);
    v10.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v5, v10, self);
    if (FirstIndexOfValue != -1)
    {
      v7 = FirstIndexOfValue;
      if ([(TSKPopoverController *)self dismissOnMoviePlayback])
      {
        [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
      }

      CFArrayRemoveValueAtIndex(gVisiblePopovers, v7);
    }
  }

  [+[TSKPopoverUndoObserver sharedObserver](TSKPopoverUndoObserver "sharedObserver")];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  if (objc_opt_respondsToSelector())
  {
    mSavedDelegate = self->mSavedDelegate;

    [(UIPopoverControllerDelegate *)mSavedDelegate popoverControllerDidDismissPopover:popover];
  }
}

@end