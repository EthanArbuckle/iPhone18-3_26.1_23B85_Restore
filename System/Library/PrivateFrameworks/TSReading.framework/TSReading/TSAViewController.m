@interface TSAViewController
- (BOOL)isViewVisible;
- (id)firstLaunchCoachingTipShownUserDefaultKey;
- (id)imageViewFromSnapshotOfView:(id)a3;
- (id)toolbarButtonForModalDoneWithTarget:(id)a3 action:(SEL)a4;
- (id)toolbarButtonForUndoWithIsModal:(BOOL)a3;
- (id)toolbarButtonItemForCoachingTipsWithTarget:(id)a3 action:(SEL)a4;
- (id)toolbarButtonWithImageName:(id)a3 disabledImageName:(id)a4 target:(id)a5 action:(SEL)a6;
- (id)toolbarButtonWithImageName:(id)a3 target:(id)a4 action:(SEL)a5;
- (id)toolbarButtonWithTitle:(id)a3 target:(id)a4 action:(SEL)a5 isModal:(BOOL)a6;
- (void)dealloc;
- (void)dismissHelpWithCompletion:(id)a3;
- (void)p_startListeningForVoiceOverNotifications;
- (void)p_stopListeningForVoiceOverNotifications;
- (void)p_voiceOverStatusDidChange;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation TSAViewController

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSAViewController;
  [(TSAViewController *)&v3 dealloc];
}

- (BOOL)isViewVisible
{
  v3 = [(TSAViewController *)self isViewLoaded];
  if (v3)
  {
    LOBYTE(v3) = [-[TSAViewController view](self "view")] != 0;
  }

  return v3;
}

- (id)toolbarButtonWithTitle:(id)a3 target:(id)a4 action:(SEL)a5 isModal:(BOOL)a6
{
  v9 = [MEMORY[0x277D75220] buttonWithType:{1, a4, a5, a6}];
  [v9 setExclusiveTouch:1];
  [objc_msgSend(v9 "titleLabel")];
  [v9 setTitle:a3 forState:0];
  [v9 sizeToFit];
  if (a5)
  {
    [v9 addTarget:a4 action:a5 forControlEvents:64];
  }

  return v9;
}

- (id)toolbarButtonWithImageName:(id)a3 target:(id)a4 action:(SEL)a5
{
  if (!a3)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSAViewController toolbarButtonWithImageName:target:action:]"];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/ios/TSAViewController.m"), 245, @"Invalid parameter not satisfying: %s", "imageName"}];
  }

  v10 = [MEMORY[0x277D75220] buttonWithType:1];
  [v10 setExclusiveTouch:1];
  [v10 setImage:objc_msgSend(MEMORY[0x277D755B8] forState:{"imageNamed:", a3), 0}];
  [v10 sizeToFit];
  if (a5)
  {
    [v10 addTarget:a4 action:a5 forControlEvents:64];
  }

  return v10;
}

- (id)toolbarButtonWithImageName:(id)a3 disabledImageName:(id)a4 target:(id)a5 action:(SEL)a6
{
  v7 = [(TSAViewController *)self toolbarButtonWithImageName:a3 target:a5 action:a6];
  v8 = v7;
  if (a4)
  {
    [v7 setAdjustsImageWhenDisabled:0];
    [v8 setImage:objc_msgSend(MEMORY[0x277D755B8] forState:{"imageNamed:", a4), 2}];
  }

  return v8;
}

- (id)toolbarButtonForUndoWithIsModal:(BOOL)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSAViewController toolbarButtonForUndoWithIsModal:]"];
  [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/ios/TSAViewController.m"), 286, @"No undo toolbar button"}];
  return 0;
}

- (id)toolbarButtonForModalDoneWithTarget:(id)a3 action:(SEL)a4
{
  v4 = -[TSAViewController toolbarButtonWithTitle:target:action:isModal:](self, "toolbarButtonWithTitle:target:action:isModal:", [TSABundle() localizedStringForKey:@"Done" value:&stru_287D36338 table:@"TSApplication"], a3, a4, 1);
  [v4 setFont:{objc_msgSend(MEMORY[0x277D74300], "systemFontOfSize:weight:", 17.0, *MEMORY[0x277D74410])}];
  [v4 sizeToFit];
  return v4;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(TSAViewController *)self p_stopListeningForVoiceOverNotifications];
  v5.receiver = self;
  v5.super_class = TSAViewController;
  [(TSAViewController *)&v5 viewWillDisappear:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = TSAViewController;
  [(TSAViewController *)&v4 viewDidAppear:a3];
  [(TSAViewController *)self setViewDidAppear:1];
  if ([(TSAViewController *)self showFirstLaunchCoachingTipAfterViewAppears])
  {
    [(TSAViewController *)self setShowFirstLaunchCoachingTipAfterViewAppears:0];
    [(TSAViewController *)self showFirstLaunchCoachingTipIfNecessary];
  }

  [(TSAViewController *)self p_startListeningForVoiceOverNotifications];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  [(TSAViewController *)self setViewDidAppear:0];
  v5.receiver = self;
  v5.super_class = TSAViewController;
  [(TSAViewController *)&v5 viewDidDisappear:v3];
}

- (void)p_startListeningForVoiceOverNotifications
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277D765F0];

  [v3 addObserver:self selector:sel_p_voiceOverStatusDidChange name:v4 object:0];
}

- (void)p_voiceOverStatusDidChange
{
  if (UIAccessibilityIsVoiceOverRunning())
  {

    [(TSAViewController *)self dismissCoachingTips];
  }
}

- (void)p_stopListeningForVoiceOverNotifications
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277D765F0];

  [v3 removeObserver:self name:v4 object:0];
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  [(TSAViewController *)self dismissCoachingTips];
  v9.receiver = self;
  v9.super_class = TSAViewController;
  [(TSAViewController *)&v9 presentViewController:a3 animated:v6 completion:a5];
}

- (id)imageViewFromSnapshotOfView:(id)a3
{
  v4 = [MEMORY[0x277D75D18] areAnimationsEnabled];
  v5 = [objc_msgSend(a3 "window")];
  if (v5)
  {
    [v5 scale];
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
  }

  [MEMORY[0x277D75D18] setAnimationsEnabled:0];
  [a3 bounds];
  [a3 sizeThatFits:{v8, v9}];
  v12 = TSDMultiplySizeScalar(v10, v11, v7);
  v13 = TSDCeilSize(v12);
  v14 = TSDBitmapContextCreate(11, v13);
  if (v14)
  {
    v15 = v14;
    CGContextScaleCTM(v14, v7, v7);
    [objc_msgSend(a3 "layer")];
    Image = CGBitmapContextCreateImage(v15);
    CGContextRelease(v15);
    if (Image)
    {
      v17 = [MEMORY[0x277D755B8] imageWithCGImage:Image scale:0 orientation:v7];
      CGImageRelease(Image);
      Image = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v17];
      [(CGImage *)Image setContentScaleFactor:v7];
    }
  }

  else
  {
    Image = 0;
  }

  [MEMORY[0x277D75D18] setAnimationsEnabled:v4];

  return Image;
}

- (id)toolbarButtonItemForCoachingTipsWithTarget:(id)a3 action:(SEL)a4
{
  v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:{-[TSAViewController toolbarButtonForCoachingTipsWithTarget:action:](self, "toolbarButtonForCoachingTipsWithTarget:action:", a3, a4)}];

  return v4;
}

- (void)dismissHelpWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3);
  }
}

- (id)firstLaunchCoachingTipShownUserDefaultKey
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);

  return [(NSString *)v3 stringByAppendingString:@"FirstLaunchCoachingTipShownKey"];
}

@end