@interface SBExternalDisplayEducationPillViewController
- (SBExternalDisplayEducationPillViewController)init;
- (SBExternalDisplayEducationPillViewControllerDelegate)delegate;
- (id)_pillSubtitleContentItem;
- (void)_handleSingleTap:(id)tap;
- (void)viewDidLoad;
@end

@implementation SBExternalDisplayEducationPillViewController

- (SBExternalDisplayEducationPillViewController)init
{
  v7.receiver = self;
  v7.super_class = SBExternalDisplayEducationPillViewController;
  v2 = [(SBExternalDisplayEducationPillViewController *)&v7 init];
  if (v2)
  {
    v3 = +[SBDefaults localDefaults];
    externalDisplayDefaults = [v3 externalDisplayDefaults];
    externalDisplayDefaults = v2->_externalDisplayDefaults;
    v2->_externalDisplayDefaults = externalDisplayDefaults;

    [(SBExternalDisplayEducationPillViewController *)v2 loadViewIfNeeded];
    [(PLPillView *)v2->_pillView intrinsicContentSize];
    [(SBExternalDisplayEducationPillViewController *)v2 setPreferredContentSize:?];
  }

  return v2;
}

- (void)viewDidLoad
{
  v25[2] = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = SBExternalDisplayEducationPillViewController;
  [(SBExternalDisplayEducationPillViewController *)&v24 viewDidLoad];
  view = [(SBExternalDisplayEducationPillViewController *)self view];
  v4 = objc_alloc(MEMORY[0x277D755E8]);
  v5 = MEMORY[0x277D755B8];
  v6 = MEMORY[0x277D755D0];
  labelColor = [MEMORY[0x277D75348] labelColor];
  v8 = [v6 configurationWithHierarchicalColor:labelColor];
  v9 = [v5 systemImageNamed:@"display" withConfiguration:v8];
  v10 = [v4 initWithImage:v9];

  v11 = objc_alloc(MEMORY[0x277D755E8]);
  v12 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.forward"];
  v13 = [v11 initWithImage:v12];

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v15 = [mainBundle localizedStringForKey:@"EXTERNAL_DISPLAY_BANNER_TITLE" value:&stru_283094718 table:@"SpringBoard"];

  v16 = [objc_alloc(MEMORY[0x277D3D318]) initWithLeadingAccessoryView:v10 trailingAccessoryView:v13];
  pillView = self->_pillView;
  self->_pillView = v16;

  v18 = self->_pillView;
  v19 = [objc_alloc(MEMORY[0x277D3D308]) initWithText:v15 style:1];
  v25[0] = v19;
  _pillSubtitleContentItem = [(SBExternalDisplayEducationPillViewController *)self _pillSubtitleContentItem];
  v25[1] = _pillSubtitleContentItem;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  [(PLPillView *)v18 setCenterContentItems:v21];

  v22 = self->_pillView;
  [view bounds];
  [(PLPillView *)v22 setFrame:?];
  [(PLPillView *)self->_pillView setAutoresizingMask:18];
  [view addSubview:self->_pillView];
  v23 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleSingleTap_];
  [v23 setNumberOfTouchesRequired:1];
  [v23 setNumberOfTapsRequired:1];
  [view addGestureRecognizer:v23];
}

- (id)_pillSubtitleContentItem
{
  isMirroringEnabled = [(SBExternalDisplayDefaults *)self->_externalDisplayDefaults isMirroringEnabled];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = mainBundle;
  if (isMirroringEnabled)
  {
    v5 = @"EXTERNAL_DISPLAY_SCREEN_MIRRORING_ON";
  }

  else
  {
    v5 = @"EXTERNAL_DISPLAY_EXTENDING_IPAD_DISPLAY";
  }

  v6 = [mainBundle localizedStringForKey:v5 value:&stru_283094718 table:@"SpringBoard"];

  v7 = [objc_alloc(MEMORY[0x277D3D308]) initWithText:v6 style:2];

  return v7;
}

- (void)_handleSingleTap:(id)tap
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pillViewControllerDidReceiveUserTap:self];
}

- (SBExternalDisplayEducationPillViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end