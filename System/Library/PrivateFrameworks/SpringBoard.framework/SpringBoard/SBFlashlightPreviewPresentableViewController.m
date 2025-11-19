@interface SBFlashlightPreviewPresentableViewController
- (NSString)requesterIdentifier;
- (SBFlashlightPreviewPresentableViewController)initWithFlashlightOn:(BOOL)a3;
- (id)_pillSubtitleContentItem;
- (id)_pillTitleContentItem;
- (void)viewDidLoad;
@end

@implementation SBFlashlightPreviewPresentableViewController

- (SBFlashlightPreviewPresentableViewController)initWithFlashlightOn:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = SBFlashlightPreviewPresentableViewController;
  v4 = [(SBFlashlightPreviewPresentableViewController *)&v9 initWithNibName:0 bundle:0];
  v5 = v4;
  if (v4)
  {
    v4->_flashlightOn = a3;
    v6 = objc_alloc_init(SBBannerCustomTransitioningDelegate);
    customTransitioningDelegate = v5->_customTransitioningDelegate;
    v5->_customTransitioningDelegate = v6;

    [(SBFlashlightPreviewPresentableViewController *)v5 setTransitioningDelegate:v5->_customTransitioningDelegate];
  }

  return v5;
}

- (void)viewDidLoad
{
  v20[2] = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = SBFlashlightPreviewPresentableViewController;
  [(SBFlashlightPreviewPresentableViewController *)&v19 viewDidLoad];
  v3 = [(SBFlashlightPreviewPresentableViewController *)self view];
  v4 = objc_alloc(MEMORY[0x277D755E8]);
  v5 = MEMORY[0x277D755B8];
  if (self->_flashlightOn)
  {
    v6 = @"flashlight.on.fill";
  }

  else
  {
    v6 = @"flashlight.off.fill";
  }

  v7 = MEMORY[0x277D755D0];
  v8 = [MEMORY[0x277D75348] whiteColor];
  v9 = [v7 configurationWithHierarchicalColor:v8];
  v10 = [v5 systemImageNamed:v6 withConfiguration:v9];
  v11 = [v4 initWithImage:v10];

  v12 = [objc_alloc(MEMORY[0x277D3D318]) initWithLeadingAccessoryView:v11 trailingAccessoryView:0];
  pillView = self->_pillView;
  self->_pillView = v12;

  v14 = self->_pillView;
  v15 = [(SBFlashlightPreviewPresentableViewController *)self _pillTitleContentItem];
  v20[0] = v15;
  v16 = [(SBFlashlightPreviewPresentableViewController *)self _pillSubtitleContentItem];
  v20[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  [(PLPillView *)v14 setCenterContentItems:v17 animated:0];

  v18 = self->_pillView;
  [v3 bounds];
  [(PLPillView *)v18 setFrame:?];
  [(PLPillView *)self->_pillView setAutoresizingMask:18];
  [(PLPillView *)self->_pillView setMaterialGroupNameBase:@"SBFlashlightPreviewPresentableViewControllerMaterialGroup"];
  [v3 addSubview:self->_pillView];
  [(PLPillView *)self->_pillView intrinsicContentSize];
  [(SBFlashlightPreviewPresentableViewController *)self setPreferredContentSize:?];
  [(SBFlashlightPreviewPresentableViewController *)self setOverrideUserInterfaceStyle:2];
}

- (id)_pillTitleContentItem
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"FLASHLIGHT_TITLE" value:&stru_283094718 table:@"SpringBoard"];

  v4 = objc_alloc(MEMORY[0x277CCA898]);
  v10 = *MEMORY[0x277D740C0];
  v5 = [MEMORY[0x277D75348] labelColor];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v4 initWithString:v3 attributes:v6];

  v8 = [objc_alloc(MEMORY[0x277D3D308]) initWithAttributedText:v7];

  return v8;
}

- (id)_pillSubtitleContentItem
{
  v14[1] = *MEMORY[0x277D85DE8];
  flashlightOn = self->_flashlightOn;
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = v3;
  if (flashlightOn)
  {
    v5 = @"FLASHLIGHT_ON";
  }

  else
  {
    v5 = @"FLASHLIGHT_OFF";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_283094718 table:@"SpringBoard"];

  v7 = objc_alloc(MEMORY[0x277CCA898]);
  v13 = *MEMORY[0x277D740C0];
  v8 = [MEMORY[0x277D75348] secondaryLabelColor];
  v14[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [v7 initWithString:v6 attributes:v9];

  v11 = [objc_alloc(MEMORY[0x277D3D308]) initWithAttributedText:v10];

  return v11;
}

- (NSString)requesterIdentifier
{
  v2 = objc_opt_class();

  return [v2 requesterIdentifier];
}

@end