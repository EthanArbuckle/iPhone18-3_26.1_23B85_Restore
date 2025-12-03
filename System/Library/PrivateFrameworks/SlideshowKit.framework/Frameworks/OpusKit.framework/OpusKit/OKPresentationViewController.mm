@interface OKPresentationViewController
- (BOOL)isActivityIndicatorVisible;
- (void)_startMotion;
- (void)_startPresentation;
- (void)_updateMotion:(int64_t)motion;
- (void)commonInit;
- (void)dealloc;
- (void)didRotateFromInterfaceOrientation:(int64_t)orientation;
- (void)motionEnded:(int64_t)ended withEvent:(id)event;
- (void)orientationChanged:(id)changed;
- (void)setActivityIndicatorVisible:(BOOL)visible;
- (void)updateActivityIndicatorWithProgress:(double)progress;
- (void)updateMotion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
- (void)willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
@end

@implementation OKPresentationViewController

- (void)commonInit
{
  v3.receiver = self;
  v3.super_class = OKPresentationViewController;
  [(OKPresentationViewControllerProxy *)&v3 commonInit];
  self->_motionManager = 0;
  self->_shouldForwardMotion = 0;
  self->_motionAttitudeReference = 0;
  self->_motionOrientationReference = 0;
  self->_motionQueue = 0;
  self->_motionLastRotationX = 0.0;
  self->_motionLastRotationY = 0.0;
  self->_motionLastRotationZ = 0.0;
}

- (void)dealloc
{
  [(CMMotionManager *)self->_motionManager stopDeviceMotionUpdates];
  motionManager = self->_motionManager;
  if (motionManager)
  {

    self->_motionManager = 0;
  }

  motionAttitudeReference = self->_motionAttitudeReference;
  if (motionAttitudeReference)
  {

    self->_motionAttitudeReference = 0;
  }

  motionQueue = self->_motionQueue;
  if (motionQueue)
  {
    [(NSOperationQueue *)motionQueue cancelAllOperations];

    self->_motionQueue = 0;
  }

  [objc_msgSend(MEMORY[0x277D75418] "currentDevice")];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76878] object:0];
  couchLabelHUDView = self->_couchLabelHUDView;
  if (couchLabelHUDView)
  {

    self->_couchLabelHUDView = 0;
  }

  roundProgressView = self->_roundProgressView;
  if (roundProgressView)
  {

    self->_roundProgressView = 0;
  }

  v9.receiver = self;
  v9.super_class = OKPresentationViewController;
  [(OKPresentationViewControllerProxy *)&v9 dealloc];
}

- (BOOL)isActivityIndicatorVisible
{
  downloadIndicatorEnabled = [(OKPresentationViewControllerProxy *)self downloadIndicatorEnabled];
  if (downloadIndicatorEnabled)
  {
    LOBYTE(downloadIndicatorEnabled) = [(OKRoundProgressView *)self->_roundProgressView superview]!= 0;
  }

  return downloadIndicatorEnabled;
}

- (void)setActivityIndicatorVisible:(BOOL)visible
{
  visibleCopy = visible;
  if ([(OKPresentationViewControllerProxy *)self downloadIndicatorEnabled])
  {
    isActivityIndicatorVisible = [(OKPresentationViewController *)self isActivityIndicatorVisible];
    if (visibleCopy)
    {
      if (!isActivityIndicatorVisible)
      {
        [(OKRoundProgressView *)self->_roundProgressView setAlpha:0.0];
        rootNavigatorIsReady = self->super._rootNavigatorIsReady;
        roundProgressView = self->_roundProgressView;
        [-[OKPresentationViewController view](self "view")];
        v9 = v8;
        v10 = [objc_msgSend(MEMORY[0x277D75418] "currentDevice")];
        if (rootNavigatorIsReady)
        {
          if (v10 == 1)
          {
            v11 = 42.0;
          }

          else
          {
            v11 = 32.0;
          }

          v12 = v9 - v11;
          [-[OKPresentationViewController view](self "view")];
          v14 = v13;
          if ([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] == 1)
          {
            v15 = 42.0;
          }

          else
          {
            v15 = 32.0;
          }

          v16 = v14 - v15;
        }

        else
        {
          if (v10 == 1)
          {
            v17 = 16.0;
          }

          else
          {
            v17 = 11.0;
          }

          v12 = (v9 - v17) * 0.5;
          [-[OKPresentationViewController view](self "view")];
          v19 = v18;
          if ([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] == 1)
          {
            v20 = 16.0;
          }

          else
          {
            v20 = 11.0;
          }

          v16 = (v19 - v20) * 0.5;
        }

        if ([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] == 1)
        {
          v21 = 32.0;
        }

        else
        {
          v21 = 22.0;
        }

        if ([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] == 1)
        {
          v22 = 32.0;
        }

        else
        {
          v22 = 22.0;
        }

        [(OKRoundProgressView *)roundProgressView setFrame:v12, v16, v21, v22];
        [(OKRoundProgressView *)self->_roundProgressView setAutoresizingMask:45];
        [-[OKPresentationViewController view](self "view")];
        [(OKRoundProgressView *)self->_roundProgressView resetProgress];
        [(OKRoundProgressView *)self->_roundProgressView startProgressTimer];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __60__OKPresentationViewController_setActivityIndicatorVisible___block_invoke;
        v25[3] = &unk_279C8E818;
        v25[4] = self;
        [MEMORY[0x277D75D18] animateWithDuration:v25 animations:0.25];
      }
    }

    else if (isActivityIndicatorVisible)
    {
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __60__OKPresentationViewController_setActivityIndicatorVisible___block_invoke_2;
      v24[3] = &unk_279C8E818;
      v24[4] = self;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __60__OKPresentationViewController_setActivityIndicatorVisible___block_invoke_3;
      v23[3] = &unk_279C8FA38;
      v23[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v24 animations:v23 completion:0.25];
    }
  }
}

uint64_t __60__OKPresentationViewController_setActivityIndicatorVisible___block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 1504) stopProgressTimer];
  [*(*(a1 + 32) + 1504) resetProgress];
  v2 = *(*(a1 + 32) + 1504);

  return [v2 removeFromSuperview];
}

- (void)updateActivityIndicatorWithProgress:(double)progress
{
  if ([(OKPresentationViewControllerProxy *)self downloadIndicatorEnabled])
  {
    roundProgressView = self->_roundProgressView;

    [(OKRoundProgressView *)roundProgressView setProgress:progress];
  }
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = OKPresentationViewController;
  [(OKPresentationViewControllerProxy *)&v16 viewDidLoad];
  if ([(OKPresentationViewControllerProxy *)self downloadIndicatorEnabled])
  {
    v3 = [OKRoundProgressView alloc];
    [-[OKPresentationViewController view](self "view")];
    v5 = v4;
    if ([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] == 1)
    {
      v6 = 32.0;
    }

    else
    {
      v6 = 22.0;
    }

    v7 = v5 - v6;
    [-[OKPresentationViewController view](self "view")];
    v9 = v8;
    if ([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] == 1)
    {
      v10 = 32.0;
    }

    else
    {
      v10 = 22.0;
    }

    v11 = v9 - v10;
    if ([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] == 1)
    {
      v12 = 32.0;
    }

    else
    {
      v12 = 22.0;
    }

    if ([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] == 1)
    {
      v13 = 32.0;
    }

    else
    {
      v13 = 22.0;
    }

    v14 = [(OKRoundProgressView *)v3 initWithFrame:0 style:v7, v11, v12, v13];
    self->_roundProgressView = v14;
    [(OKRoundProgressView *)v14 setAlpha:0.0];
  }

  if (![(OKPresentationViewControllerProxy *)self muted]&& viewDidLoad_onceToken != -1)
  {
    [OKPresentationViewController viewDidLoad];
  }

  [objc_msgSend(MEMORY[0x277D75418] "currentDevice")];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_orientationChanged_ name:*MEMORY[0x277D76878] object:0];
}

uint64_t __43__OKPresentationViewController_viewDidLoad__block_invoke()
{
  v0 = [MEMORY[0x277CB83F8] sharedInstance];
  v1 = *MEMORY[0x277CB8030];

  return [v0 setCategory:v1 error:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = OKPresentationViewController;
  [(OKPresentationViewControllerProxy *)&v3 viewWillAppear:appear];
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = OKPresentationViewController;
  [(OKPresentationViewControllerProxy *)&v3 viewDidAppear:appear];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = OKPresentationViewController;
  [(OKPresentationViewControllerProxy *)&v3 viewWillDisappear:disappear];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = OKPresentationViewController;
  [(OKPresentationViewControllerProxy *)&v3 viewDidDisappear:disappear];
}

- (void)_startPresentation
{
  v3.receiver = self;
  v3.super_class = OKPresentationViewController;
  [(OKPresentationViewControllerProxy *)&v3 _startPresentation];
  if ([(OKPresentationInfo *)[[(OKPresentationViewControllerProxy *)self presentation] info] motionSupported])
  {
    -[OKPresentationViewController _updateMotion:](self, "_updateMotion:", [objc_msgSend(MEMORY[0x277D75418] "currentDevice")]);
    [(OKPresentationViewController *)self _startMotion];
  }
}

- (void)viewWillLayoutSubviews
{
  v39.receiver = self;
  v39.super_class = OKPresentationViewController;
  [(OKPresentationViewControllerProxy *)&v39 viewWillLayoutSubviews];
  [(OKPresentationViewControllerProxy *)self resolutionSize];
  v4 = v3;
  v6 = v5;
  [(OKPresentationViewControllerProxy *)self displaySize];
  v36 = v8;
  v37 = v7;
  [(OKPresentationViewControllerProxy *)self updateDisplayResolution];
  [-[OKPresentationViewController view](self "view")];
  v10 = v9;
  [(OKPresentationViewControllerProxy *)self displaySize];
  v12 = (v10 - v11) * 0.5;
  [-[OKPresentationViewController view](self "view")];
  v14 = v13;
  [(OKPresentationViewControllerProxy *)self displaySize];
  v16 = (v14 - v15) * 0.5;
  [(OKPresentationViewControllerProxy *)self displaySize];
  v18 = v17;
  [(OKPresentationViewControllerProxy *)self displaySize];
  v20 = v19;
  [-[OKNavigatorViewController view](-[OKPresentationViewControllerProxy mainNavigatorViewController](self "mainNavigatorViewController")];
  v41.origin.x = v21;
  v41.origin.y = v22;
  v41.size.width = v23;
  v41.size.height = v24;
  v40.origin.x = v12;
  v40.origin.y = v16;
  v40.size.width = v18;
  v40.size.height = v20;
  v25 = CGRectEqualToRect(v40, v41);
  [-[OKNavigatorViewController view](-[OKPresentationViewControllerProxy mainNavigatorViewController](self "mainNavigatorViewController")];
  [-[OKPresentationViewController view](self "view")];
  [-[OKNavigatorViewController view](-[OKPresentationViewControllerProxy mainNavigatorViewController](self "mainNavigatorViewController")];
  [-[OKNavigatorViewController view](-[OKPresentationViewControllerProxy mainNavigatorViewController](self "mainNavigatorViewController")];
  view = [(OKNavigatorViewController *)[(OKPresentationViewControllerProxy *)self mainNavigatorViewController] view];
  v29 = *(MEMORY[0x277CBF2C0] + 16);
  v38[0] = *MEMORY[0x277CBF2C0];
  v38[1] = v29;
  v38[2] = *(MEMORY[0x277CBF2C0] + 32);
  [view setTransform:v38];
  [(OKPresentationViewControllerProxy *)self resolutionSize];
  if (v4 == v31 && v6 == v30)
  {
    [(OKPresentationViewControllerProxy *)self displaySize];
    if (v37 != v33 || (v34 = v36, v36 != v32))
    {
      [(OKNavigatorViewControllerProxy *)[(OKPresentationViewControllerProxy *)self mainNavigatorViewController] layoutDidChange];
      [(OKSynopsisView *)[(OKPresentationViewControllerProxy *)self synopsisView] updateLayout:v12, v16, v18, v20];
    }
  }

  else
  {
    [(OKNavigatorViewControllerProxy *)[(OKPresentationViewControllerProxy *)self mainNavigatorViewController] resolutionDidChange];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"OKPresentationViewControllerResolutionDidChangeNotification" object:self userInfo:MEMORY[0x277CBEC10]];
  }

  if (!v25)
  {
    [(OKPresentationViewControllerProxy *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [(OKPresentationViewControllerDelegate *)[(OKPresentationViewControllerProxy *)self delegate] presentationViewController:self changedFrameOfMainNavigatorTo:v12, v16, v18, v20];
    }
  }
}

- (void)viewDidLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = OKPresentationViewController;
  [(OKPresentationViewControllerProxy *)&v2 viewDidLayoutSubviews];
}

- (void)willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  v4.receiver = self;
  v4.super_class = OKPresentationViewController;
  [(OKPresentationViewController *)&v4 willRotateToInterfaceOrientation:orientation duration:duration];
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  v4.receiver = self;
  v4.super_class = OKPresentationViewController;
  [(OKPresentationViewController *)&v4 willAnimateRotationToInterfaceOrientation:orientation duration:duration];
}

- (void)didRotateFromInterfaceOrientation:(int64_t)orientation
{
  v3.receiver = self;
  v3.super_class = OKPresentationViewController;
  [(OKPresentationViewController *)&v3 didRotateFromInterfaceOrientation:orientation];
}

- (void)motionEnded:(int64_t)ended withEvent:(id)event
{
  if (ended == 1)
  {
    block[7] = v4;
    block[8] = v5;
    if ([(OKPresentationInfo *)[[(OKPresentationViewControllerProxy *)self presentation:ended] info] motionSupported])
    {
      v7 = dispatch_time(0, 500000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__OKPresentationViewController_motionEnded_withEvent___block_invoke;
      block[3] = &unk_279C8E818;
      block[4] = self;
      dispatch_after(v7, MEMORY[0x277D85CD0], block);
    }
  }
}

uint64_t __54__OKPresentationViewController_motionEnded_withEvent___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_msgSend(MEMORY[0x277D75418] "currentDevice")];

  return [v1 _updateMotion:v2];
}

- (void)_updateMotion:(int64_t)motion
{
  if (motion <= 6 && ((1 << motion) & 0x61) != 0)
  {
    self->_shouldForwardMotion = 0;
    motionAttitudeReference = self->_motionAttitudeReference;
    if (motionAttitudeReference)
    {

      self->_motionAttitudeReference = 0;
    }

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __46__OKPresentationViewController__updateMotion___block_invoke;
    v7[3] = &unk_279C8E818;
    v7[4] = self;
    [(OKPresentationViewController *)self performBlockOnMainThread:v7];
    self->_motionLastRotationX = 0.0;
    self->_motionLastRotationY = 0.0;
    self->_motionLastRotationZ = 0.0;
  }

  else
  {
    self->_shouldForwardMotion = 1;
    v6 = self->_motionAttitudeReference;
    if (v6)
    {

      self->_motionAttitudeReference = 0;
    }
  }

  self->_motionOrientationReference = motion;
}

uint64_t __46__OKPresentationViewController__updateMotion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __46__OKPresentationViewController__updateMotion___block_invoke_2;
  v3[3] = &unk_279C8E818;
  v3[4] = v1;
  return [v1 performBlockWithoutAnimations:v3];
}

uint64_t __46__OKPresentationViewController__updateMotion___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) mainNavigatorViewController];

  return [v1 updateWithMotionTiltRotationX:0.0 tiltRotationY:0.0 tiltRotationZ:0.0];
}

- (void)_startMotion
{
  motionManager = self->_motionManager;
  if (!motionManager)
  {
    motionManager = objc_alloc_init(MEMORY[0x277CC1CD8]);
    self->_motionManager = motionManager;
  }

  if ([(CMMotionManager *)motionManager isDeviceMotionAvailable])
  {
    if (!self->_motionQueue)
    {
      v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
      self->_motionQueue = v4;
      [(NSOperationQueue *)v4 setMaxConcurrentOperationCount:1];
    }

    [(CMMotionManager *)self->_motionManager setDeviceMotionUpdateInterval:0.0333333351];
    v5 = [MEMORY[0x277D62800] weakReferenceHolderWithObject:self];
    v6 = self->_motionManager;
    motionQueue = self->_motionQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __44__OKPresentationViewController__startMotion__block_invoke;
    v8[3] = &unk_279C90560;
    v8[4] = v5;
    [(CMMotionManager *)v6 startDeviceMotionUpdatesUsingReferenceFrame:8 toQueue:motionQueue withHandler:v8];
  }
}

uint64_t *__44__OKPresentationViewController__startMotion__block_invoke(uint64_t a1, void *a2)
{
  result = [*(a1 + 32) object];
  if (result)
  {
    v5 = result;
    if (*(result + 1464))
    {
      v6 = [result motionAttitudeReference];
      v7 = [a2 attitude];
      if (v6)
      {
        result = [v7 multiplyByInverseOfAttitude:{objc_msgSend(v5, "motionAttitudeReference")}];
        v8 = v5[181];
        if (v8 > 2)
        {
          if (v8 != 3)
          {
            if (v8 != 4)
            {
              return result;
            }

            [objc_msgSend(a2 "attitude")];
            v10 = -v12;
            [objc_msgSend(a2 "attitude")];
            goto LABEL_14;
          }

          [objc_msgSend(a2 "attitude")];
          v10 = v16;
          [objc_msgSend(a2 "attitude")];
        }

        else
        {
          if (v8 != 1)
          {
            if (v8 != 2)
            {
              return result;
            }

            [objc_msgSend(a2 "attitude")];
            v10 = -v9;
            [objc_msgSend(a2 "attitude")];
LABEL_14:
            v13 = -v11;
LABEL_18:
            [objc_msgSend(a2 "attitude")];
            v18 = -v17;
            v19[0] = MEMORY[0x277D85DD0];
            v19[1] = 3221225472;
            v19[2] = __44__OKPresentationViewController__startMotion__block_invoke_2;
            v19[3] = &unk_279C90538;
            v19[4] = *(a1 + 32);
            *&v19[5] = v10;
            *&v19[6] = v13;
            *&v19[7] = -v17;
            result = [v5 performBlockOnMainThread:v19];
            *(v5 + 185) = v13;
            *(v5 + 186) = v18;
            return result;
          }

          [objc_msgSend(a2 "attitude")];
          v10 = v14;
          [objc_msgSend(a2 "attitude")];
        }

        v13 = v15;
        goto LABEL_18;
      }

      return [v5 setMotionAttitudeReference:v7];
    }
  }

  return result;
}

void *__44__OKPresentationViewController__startMotion__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) object];
  if (result)
  {
    v3 = result;
    v4 = [result mainNavigatorViewController];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __44__OKPresentationViewController__startMotion__block_invoke_3;
    v5[3] = &unk_279C90538;
    v5[4] = v4;
    v6 = *(a1 + 40);
    v7 = *(a1 + 56);
    return [v3 performBlockWithoutAnimations:v5];
  }

  return result;
}

- (void)updateMotion
{
  if (self->_shouldForwardMotion)
  {
    mainNavigatorViewController = [(OKPresentationViewControllerProxy *)self mainNavigatorViewController];
    motionLastRotationX = self->_motionLastRotationX;
    motionLastRotationY = self->_motionLastRotationY;
    motionLastRotationZ = self->_motionLastRotationZ;

    [(OKNavigatorViewControllerProxy *)mainNavigatorViewController updateWithMotionTiltRotationX:motionLastRotationX tiltRotationY:motionLastRotationY tiltRotationZ:motionLastRotationZ];
  }
}

- (void)orientationChanged:(id)changed
{
  self->_shouldForwardMotion = 0;
  motionAttitudeReference = self->_motionAttitudeReference;
  if (motionAttitudeReference)
  {

    self->_motionAttitudeReference = 0;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__OKPresentationViewController_orientationChanged___block_invoke;
  v7[3] = &unk_279C8E818;
  v7[4] = self;
  [(OKPresentationViewController *)self performBlockOnMainThread:v7];
  self->_motionLastRotationX = 0.0;
  self->_motionLastRotationY = 0.0;
  self->_motionLastRotationZ = 0.0;
  v5 = dispatch_time(0, 250000000);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__OKPresentationViewController_orientationChanged___block_invoke_2;
  v6[3] = &unk_279C8E818;
  v6[4] = self;
  dispatch_after(v5, MEMORY[0x277D85CD0], v6);
}

uint64_t __51__OKPresentationViewController_orientationChanged___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mainNavigatorViewController];

  return [v1 updateWithMotionTiltRotationX:0.0 tiltRotationY:0.0 tiltRotationZ:0.0];
}

uint64_t __51__OKPresentationViewController_orientationChanged___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_msgSend(MEMORY[0x277D75418] "currentDevice")];

  return [v1 _updateMotion:v2];
}

@end