@interface TSKPopoverController
+ (BOOL)anyPopoversVisible;
- (BOOL)popoverControllerShouldDismissPopover:(id)a3;
- (TSKPopoverController)initWithContentViewController:(id)a3;
- (void)dealloc;
- (void)moviePlaybackWillBegin:(id)a3;
- (void)p_dismissPopoverAnimated:(BOOL)a3;
- (void)p_sendPopoverHidDelegateMessage;
- (void)p_willShowPopoverNotification:(id)a3;
- (void)popoverControllerDidDismissPopover:(id)a3;
- (void)presentPopoverFromRect:(CGRect)a3 inView:(id)a4 permittedArrowDirections:(unint64_t)a5 animated:(BOOL)a6;
- (void)presentPopoverFromRect:(CGRect)a3 inView:(id)a4 permittedArrowDirections:(unint64_t)a5 animated:(BOOL)a6 constrainToView:(BOOL)a7 withPadding:(double)a8;
- (void)setDismissOnMoviePlayback:(BOOL)a3;
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

- (TSKPopoverController)initWithContentViewController:(id)a3
{
  v7.receiver = self;
  v7.super_class = TSKPopoverController;
  v3 = [(TSKPopoverController *)&v7 initWithContentViewController:a3];
  if (v3)
  {
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:v3 selector:sel_p_applicationDidEnterBackground_ name:*MEMORY[0x277D76660] object:0];
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
    v3 = [(TSKPopoverController *)self delegate];

    [v3 popoverControllerDidDismissPopover:self];
  }
}

- (void)p_dismissPopoverAnimated:(BOOL)a3
{
  if (!self->mIsDismissing)
  {
    v3 = a3;
    v5 = self;
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
      [(TSKPopoverController *)&v7 dismissPopoverAnimated:v3];
      [(TSKPopoverController *)self p_sendPopoverHidDelegateMessage];
    }

    goto LABEL_8;
  }
}

- (void)p_willShowPopoverNotification:(id)a3
{
  if ([a3 object] != self)
  {

    [(TSKPopoverController *)self p_dismissPopoverAnimated:1];
  }
}

- (void)setDismissOnMoviePlayback:(BOOL)a3
{
  self->mDismissOnMoviePlayback = a3;
  v3 = gVisiblePopovers;
  if (gVisiblePopovers)
  {
    v8.length = CFArrayGetCount(gVisiblePopovers);
    v8.location = 0;
    if (CFArrayGetFirstIndexOfValue(v3, v8, self) != -1)
    {
      mDismissOnMoviePlayback = self->mDismissOnMoviePlayback;
      v6 = [MEMORY[0x277CCAB98] defaultCenter];
      if (mDismissOnMoviePlayback)
      {

        [v6 addObserver:self selector:sel_moviePlaybackWillBegin_ name:@"TSKMoviePlaybackRegistryObjectWillBeginMoviePlaybackNotification" object:0];
      }

      else
      {

        [v6 removeObserver:self name:@"TSKMoviePlaybackRegistryObjectWillBeginMoviePlaybackNotification" object:0];
      }
    }
  }
}

- (void)presentPopoverFromRect:(CGRect)a3 inView:(id)a4 permittedArrowDirections:(unint64_t)a5 animated:(BOOL)a6 constrainToView:(BOOL)a7 withPadding:(double)a8
{
  v8 = a6;
  height = a3.size.height;
  x = a3.origin.x;
  if (a7)
  {
    width = a3.size.width;
    v15 = a3.size.height;
    y = a3.origin.y;
    [a4 bounds];
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
    if (CGRectGetMinX(v41) <= v34 + a8 && (v42.origin.x = v28, v42.origin.y = v29, v42.size.width = v30, v42.size.height = v31, v23 - CGRectGetMaxX(v42) <= v34 + a8) && (v43.origin.x = v28, v43.origin.y = v29, v43.size.width = v30, v43.size.height = v31, CGRectGetMinY(v43) <= v33 + a8))
    {
      v44.origin.x = v28;
      v44.origin.y = v29;
      v44.size.width = v30;
      v44.size.height = v31;
      v32 = v25 - CGRectGetMaxY(v44) <= v33 + a8;
      a3.size.width = v36;
      x = v37;
      a3.origin.y = v35;
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
        a3.origin.y = CGRectGetMidY(v46);
        a3.size.width = 1.0;
        height = 1.0;
      }
    }

    else
    {
      a3.size.width = v36;
      x = v37;
      a3.origin.y = v35;
    }
  }

  [(TSKPopoverController *)self presentPopoverFromRect:a4 inView:a5 permittedArrowDirections:v8 animated:x, a3.origin.y, a3.size.width, height, a8];
}

- (void)presentPopoverFromRect:(CGRect)a3 inView:(id)a4 permittedArrowDirections:(unint64_t)a5 animated:(BOOL)a6
{
  v6 = a6;
  v19 = CGRectIntegral(a3);
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
  [(TSKPopoverController *)&v16 presentPopoverFromRect:a4 inView:a5 permittedArrowDirections:v6 animated:x, y, width, height];
  [MEMORY[0x277CD9FF0] commit];
}

uint64_t __88__TSKPopoverController_presentPopoverFromRect_inView_permittedArrowDirections_animated___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(a1 + 32);

  return [v2 postNotificationName:@"TSKPopoverControllerDidShowPopoverNotification" object:v3];
}

- (void)moviePlaybackWillBegin:(id)a3
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

- (BOOL)popoverControllerShouldDismissPopover:(id)a3
{
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v5 = [(UIPopoverControllerDelegate *)self->mSavedDelegate popoverControllerShouldDismissPopover:a3]) != 0)
  {
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (void)popoverControllerDidDismissPopover:(id)a3
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

    [(UIPopoverControllerDelegate *)mSavedDelegate popoverControllerDidDismissPopover:a3];
  }
}

@end