@interface TSAViewController
- (BOOL)isViewVisible;
- (id)firstLaunchCoachingTipShownUserDefaultKey;
- (id)imageViewFromSnapshotOfView:(id)view;
- (id)toolbarButtonForModalDoneWithTarget:(id)target action:(SEL)action;
- (id)toolbarButtonForUndoWithIsModal:(BOOL)modal;
- (id)toolbarButtonItemForCoachingTipsWithTarget:(id)target action:(SEL)action;
- (id)toolbarButtonWithImageName:(id)name disabledImageName:(id)imageName target:(id)target action:(SEL)action;
- (id)toolbarButtonWithImageName:(id)name target:(id)target action:(SEL)action;
- (id)toolbarButtonWithTitle:(id)title target:(id)target action:(SEL)action isModal:(BOOL)modal;
- (void)dealloc;
- (void)dismissHelpWithCompletion:(id)completion;
- (void)p_startListeningForVoiceOverNotifications;
- (void)p_stopListeningForVoiceOverNotifications;
- (void)p_voiceOverStatusDidChange;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillDisappear:(BOOL)disappear;
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
  isViewLoaded = [(TSAViewController *)self isViewLoaded];
  if (isViewLoaded)
  {
    LOBYTE(isViewLoaded) = [-[TSAViewController view](self "view")] != 0;
  }

  return isViewLoaded;
}

- (id)toolbarButtonWithTitle:(id)title target:(id)target action:(SEL)action isModal:(BOOL)modal
{
  v9 = [MEMORY[0x277D75220] buttonWithType:{1, target, action, modal}];
  [v9 setExclusiveTouch:1];
  [objc_msgSend(v9 "titleLabel")];
  [v9 setTitle:title forState:0];
  [v9 sizeToFit];
  if (action)
  {
    [v9 addTarget:target action:action forControlEvents:64];
  }

  return v9;
}

- (id)toolbarButtonWithImageName:(id)name target:(id)target action:(SEL)action
{
  if (!name)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSAViewController toolbarButtonWithImageName:target:action:]"];
    [currentHandler handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/ios/TSAViewController.m"), 245, @"Invalid parameter not satisfying: %s", "imageName"}];
  }

  v10 = [MEMORY[0x277D75220] buttonWithType:1];
  [v10 setExclusiveTouch:1];
  [v10 setImage:objc_msgSend(MEMORY[0x277D755B8] forState:{"imageNamed:", name), 0}];
  [v10 sizeToFit];
  if (action)
  {
    [v10 addTarget:target action:action forControlEvents:64];
  }

  return v10;
}

- (id)toolbarButtonWithImageName:(id)name disabledImageName:(id)imageName target:(id)target action:(SEL)action
{
  v7 = [(TSAViewController *)self toolbarButtonWithImageName:name target:target action:action];
  v8 = v7;
  if (imageName)
  {
    [v7 setAdjustsImageWhenDisabled:0];
    [v8 setImage:objc_msgSend(MEMORY[0x277D755B8] forState:{"imageNamed:", imageName), 2}];
  }

  return v8;
}

- (id)toolbarButtonForUndoWithIsModal:(BOOL)modal
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSAViewController toolbarButtonForUndoWithIsModal:]"];
  [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/ios/TSAViewController.m"), 286, @"No undo toolbar button"}];
  return 0;
}

- (id)toolbarButtonForModalDoneWithTarget:(id)target action:(SEL)action
{
  v4 = -[TSAViewController toolbarButtonWithTitle:target:action:isModal:](self, "toolbarButtonWithTitle:target:action:isModal:", [TSABundle() localizedStringForKey:@"Done" value:&stru_287D36338 table:@"TSApplication"], target, action, 1);
  [v4 setFont:{objc_msgSend(MEMORY[0x277D74300], "systemFontOfSize:weight:", 17.0, *MEMORY[0x277D74410])}];
  [v4 sizeToFit];
  return v4;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(TSAViewController *)self p_stopListeningForVoiceOverNotifications];
  v5.receiver = self;
  v5.super_class = TSAViewController;
  [(TSAViewController *)&v5 viewWillDisappear:disappearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = TSAViewController;
  [(TSAViewController *)&v4 viewDidAppear:appear];
  [(TSAViewController *)self setViewDidAppear:1];
  if ([(TSAViewController *)self showFirstLaunchCoachingTipAfterViewAppears])
  {
    [(TSAViewController *)self setShowFirstLaunchCoachingTipAfterViewAppears:0];
    [(TSAViewController *)self showFirstLaunchCoachingTipIfNecessary];
  }

  [(TSAViewController *)self p_startListeningForVoiceOverNotifications];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(TSAViewController *)self setViewDidAppear:0];
  v5.receiver = self;
  v5.super_class = TSAViewController;
  [(TSAViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)p_startListeningForVoiceOverNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277D765F0];

  [defaultCenter addObserver:self selector:sel_p_voiceOverStatusDidChange name:v4 object:0];
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277D765F0];

  [defaultCenter removeObserver:self name:v4 object:0];
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  [(TSAViewController *)self dismissCoachingTips];
  v9.receiver = self;
  v9.super_class = TSAViewController;
  [(TSAViewController *)&v9 presentViewController:controller animated:animatedCopy completion:completion];
}

- (id)imageViewFromSnapshotOfView:(id)view
{
  areAnimationsEnabled = [MEMORY[0x277D75D18] areAnimationsEnabled];
  v5 = [objc_msgSend(view "window")];
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
  [view bounds];
  [view sizeThatFits:{v8, v9}];
  v12 = TSDMultiplySizeScalar(v10, v11, v7);
  v13 = TSDCeilSize(v12);
  v14 = TSDBitmapContextCreate(11, v13);
  if (v14)
  {
    v15 = v14;
    CGContextScaleCTM(v14, v7, v7);
    [objc_msgSend(view "layer")];
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

  [MEMORY[0x277D75D18] setAnimationsEnabled:areAnimationsEnabled];

  return Image;
}

- (id)toolbarButtonItemForCoachingTipsWithTarget:(id)target action:(SEL)action
{
  v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:{-[TSAViewController toolbarButtonForCoachingTipsWithTarget:action:](self, "toolbarButtonForCoachingTipsWithTarget:action:", target, action)}];

  return v4;
}

- (void)dismissHelpWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (id)firstLaunchCoachingTipShownUserDefaultKey
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);

  return [(NSString *)v3 stringByAppendingString:@"FirstLaunchCoachingTipShownKey"];
}

@end