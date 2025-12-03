@interface SBProductivityGestureEducationPillViewController
- (NSURL)actionURL;
- (SBProductivityGestureEducationPillViewController)initWithItem:(id)item;
- (SBProductivityGestureEducationPillViewControllerDelegate)delegate;
- (id)_pillActionContentItem;
- (id)_pillLeadingImageView;
- (id)_pillTitleContentItem;
- (id)_titleForItemType:(int64_t)type;
- (id)_titleKeyForEducationType:(int64_t)type;
- (id)_titleString;
- (void)_handleSingleTap:(id)tap;
- (void)_marqueeStarted:(id)started;
- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)presentableWillAppearAsBanner:(id)banner;
- (void)presentableWillNotAppearAsBanner:(id)banner withReason:(id)reason;
- (void)viewDidLoad;
@end

@implementation SBProductivityGestureEducationPillViewController

- (SBProductivityGestureEducationPillViewController)initWithItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = SBProductivityGestureEducationPillViewController;
  v6 = [(SBProductivityGestureEducationPillViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_item, item);
  }

  return v7;
}

- (void)viewDidLoad
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = SBProductivityGestureEducationPillViewController;
  [(SBProductivityGestureEducationPillViewController *)&v15 viewDidLoad];
  view = [(SBProductivityGestureEducationPillViewController *)self view];
  v4 = objc_alloc(MEMORY[0x277D3D318]);
  _pillLeadingImageView = [(SBProductivityGestureEducationPillViewController *)self _pillLeadingImageView];
  v6 = [v4 initWithLeadingAccessoryView:_pillLeadingImageView trailingAccessoryView:0];
  pillView = self->_pillView;
  self->_pillView = v6;

  v8 = self->_pillView;
  _pillTitleContentItem = [(SBProductivityGestureEducationPillViewController *)self _pillTitleContentItem];
  v16[0] = _pillTitleContentItem;
  _pillActionContentItem = [(SBProductivityGestureEducationPillViewController *)self _pillActionContentItem];
  v16[1] = _pillActionContentItem;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  [(PLPillView *)v8 setCenterContentItems:v11];

  v12 = self->_pillView;
  [view bounds];
  [(PLPillView *)v12 setFrame:?];
  [(PLPillView *)self->_pillView setAutoresizingMask:18];
  [view addSubview:self->_pillView];
  [(PLPillView *)self->_pillView intrinsicContentSize];
  [(SBProductivityGestureEducationPillViewController *)self setPreferredContentSize:?];
  v13 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleSingleTap_];
  [v13 setNumberOfTouchesRequired:1];
  [v13 setNumberOfTapsRequired:1];
  [view addGestureRecognizer:v13];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__marqueeStarted_ name:*MEMORY[0x277D774D8] object:0];
}

- (NSURL)actionURL
{
  type = [(SBProductivityGestureEducationItem *)self->_item type];
  if ((type - 1) > 3)
  {
    v3 = @"prefs:root=com.apple.MultitaskingAndGesturesSettings";
  }

  else
  {
    v3 = [@"prefs:root=com.apple.MultitaskingAndGesturesSettings" stringByAppendingFormat:@"&path=%@", off_2783C33C0[type - 1]];
  }

  v4 = [(__CFString *)v3 stringByAppendingFormat:@"&referrer=%@", @"com.apple.SpringBoard.ProductivityGestureEducation"];

  v5 = [MEMORY[0x277CBEBC0] URLWithString:v4];

  return v5;
}

- (id)_pillLeadingImageView
{
  type = [(SBProductivityGestureEducationItem *)self->_item type];
  if ((type - 1) > 3)
  {
    v9 = 0;
  }

  else
  {
    v3 = off_2783C33E0[type - 1];
    v4 = MEMORY[0x277D755B8];
    v5 = MEMORY[0x277D755D0];
    labelColor = [MEMORY[0x277D75348] labelColor];
    v7 = [v5 configurationWithHierarchicalColor:labelColor];
    v8 = [v4 systemImageNamed:v3 withConfiguration:v7];

    v9 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v8];
  }

  return v9;
}

- (id)_titleKeyForEducationType:(int64_t)type
{
  if ((type - 7) > 3)
  {
    return 0;
  }

  else
  {
    return off_2783C3400[type - 7];
  }
}

- (id)_titleForItemType:(int64_t)type
{
  if ((type - 3) < 2)
  {
    v3 = [(SBProductivityGestureEducationPillViewController *)self _titleKeyForEducationType:[(SBProductivityGestureEducationItem *)self->_item lastActivatedEducationType]];
    if (v3)
    {
      goto LABEL_8;
    }

LABEL_6:
    v4 = &stru_283094718;
    goto LABEL_9;
  }

  if (type == 1)
  {
    v3 = @"PRODUCTIVITY_GESTURE_EDUCATION_PRODUCTIVITY_GESTURES_OFF";
    goto LABEL_8;
  }

  if (type != 2)
  {
    goto LABEL_6;
  }

  v3 = @"PRODUCTIVITY_GESTURE_EDUCATION_SWIPE_APPS_OFF";
LABEL_8:
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [mainBundle localizedStringForKey:v3 value:&stru_283094718 table:@"SpringBoard"];

LABEL_9:

  return v4;
}

- (id)_titleString
{
  type = [(SBProductivityGestureEducationItem *)self->_item type];

  return [(SBProductivityGestureEducationPillViewController *)self _titleForItemType:type];
}

- (id)_pillTitleContentItem
{
  v3 = objc_alloc(MEMORY[0x277D3D308]);
  _titleString = [(SBProductivityGestureEducationPillViewController *)self _titleString];
  v5 = [v3 initWithText:_titleString style:1];

  return v5;
}

- (id)_pillActionContentItem
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"PRODUCTIVITY_GESTURE_EDUCATION_ACTION_TEXT" value:&stru_283094718 table:@"SpringBoard"];

  v4 = [objc_alloc(MEMORY[0x277D3D308]) initWithText:v3 style:5];

  return v4;
}

- (void)_marqueeStarted:(id)started
{
  v21 = *MEMORY[0x277D85DE8];
  startedCopy = started;
  object = [startedCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    text = [object text];
    _titleString = [(SBProductivityGestureEducationPillViewController *)self _titleString];
    v8 = [text isEqualToString:_titleString];

    if (v8)
    {
      userInfo = [startedCopy userInfo];
      v10 = [userInfo objectForKey:*MEMORY[0x277D774D0]];

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [v10 doubleValue];
      [WeakRetained gestureEducationPillViewControllerMarqueeStarted:self duration:?];

      v12 = SBLogSystemGesture();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = _SBFLoggingMethodProem();
        _titleString2 = [(SBProductivityGestureEducationPillViewController *)self _titleString];
        v15 = 138543874;
        v16 = v13;
        v17 = 2112;
        v18 = _titleString2;
        v19 = 2112;
        v20 = v10;
        _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_INFO, "%{public}@ Education banner title marquee started: %@, duration: %@", &v15, 0x20u);
      }
    }
  }
}

- (void)presentableWillAppearAsBanner:(id)banner
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained gestureEducationPillViewControllerWillAppear:self];
}

- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained gestureEducationPillViewControllerDidDisappear:self];
}

- (void)presentableWillNotAppearAsBanner:(id)banner withReason:(id)reason
{
  v16 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v6 = SBLogSystemGesture();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = _SBFLoggingMethodProem();
    requestIdentifier = [(SBProductivityGestureEducationPillViewController *)self requestIdentifier];
    v10 = 138543874;
    v11 = v7;
    v12 = 2112;
    v13 = requestIdentifier;
    v14 = 2112;
    v15 = reasonCopy;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ %@ will not display education banner: due to %@", &v10, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained gestureEducationPillViewControllerFailsToAppear:self];
}

- (void)_handleSingleTap:(id)tap
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained gestureEducationPillViewControllerDidReceiveUserTap:self];
}

- (SBProductivityGestureEducationPillViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end