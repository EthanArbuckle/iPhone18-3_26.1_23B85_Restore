@interface SBSystemActionSimplePreviewPresentableViewController
- (NSString)requestIdentifier;
- (NSString)requesterIdentifier;
- (SBSystemActionSimplePreviewPresentableViewController)initWithSystemAction:(id)action;
- (id)_leadingView;
- (id)_previewPrimaryText;
- (id)_previewSecondaryText;
- (void)_updatePillViewContentItems;
- (void)viewDidLoad;
@end

@implementation SBSystemActionSimplePreviewPresentableViewController

- (SBSystemActionSimplePreviewPresentableViewController)initWithSystemAction:(id)action
{
  actionCopy = action;
  v12.receiver = self;
  v12.super_class = SBSystemActionSimplePreviewPresentableViewController;
  v7 = [(SBSystemActionSimplePreviewPresentableViewController *)&v12 initWithNibName:0 bundle:0];
  if (v7)
  {
    if (!actionCopy)
    {
      [(SBSystemActionSimplePreviewPresentableViewController *)a2 initWithSystemAction:v7];
    }

    objc_storeStrong(&v7->_systemAction, action);
    controlAction = [(SBSystemAction *)v7->_systemAction controlAction];
    [(SBControlSystemAction *)controlAction addObserver:v7];

    v9 = objc_alloc_init(SBBannerCustomTransitioningDelegate);
    customTransitioningDelegate = v7->_customTransitioningDelegate;
    v7->_customTransitioningDelegate = v9;

    [(SBSystemActionSimplePreviewPresentableViewController *)v7 setTransitioningDelegate:v7->_customTransitioningDelegate];
  }

  return v7;
}

- (void)viewDidLoad
{
  v37 = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = SBSystemActionSimplePreviewPresentableViewController;
  [(SBSystemActionSimplePreviewPresentableViewController *)&v34 viewDidLoad];
  view = [(SBSystemActionSimplePreviewPresentableViewController *)self view];
  configuredAction = [(SBSystemAction *)self->_systemAction configuredAction];
  _leadingView = [(SBSystemActionSimplePreviewPresentableViewController *)self _leadingView];
  v6 = _leadingView;
  if (_leadingView)
  {
    v7 = _leadingView;
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x277D75D18]);
    v7 = [v8 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  }

  v9 = v7;

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  subviews = [v9 subviews];
  v11 = [subviews countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v31;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(subviews);
        }

        layer = [*(*(&v30 + 1) + 8 * i) layer];
        [layer setShadowOpacity:0.0];
      }

      v12 = [subviews countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v12);
  }

  trailingApertureView = [configuredAction trailingApertureView];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  subviews2 = [trailingApertureView subviews];
  v18 = [subviews2 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v27;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(subviews2);
        }

        layer2 = [*(*(&v26 + 1) + 8 * j) layer];
        [layer2 setShadowOpacity:0.0];
      }

      v19 = [subviews2 countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v19);
  }

  v23 = [objc_alloc(MEMORY[0x277D3D318]) initWithLeadingAccessoryView:v9 trailingAccessoryView:trailingApertureView];
  pillView = self->_pillView;
  self->_pillView = v23;

  [(SBSystemActionSimplePreviewPresentableViewController *)self _updatePillViewContentItems];
  v25 = self->_pillView;
  [view bounds];
  [(PLPillView *)v25 setFrame:?];
  [(PLPillView *)self->_pillView setAutoresizingMask:18];
  [(PLPillView *)self->_pillView setMaterialGroupNameBase:@"SBSystemActionSimplePreviewMaterialGroup"];
  [view addSubview:self->_pillView];
  [(PLPillView *)self->_pillView intrinsicContentSize];
  [(SBSystemActionSimplePreviewPresentableViewController *)self setPreferredContentSize:?];
  [(SBSystemActionSimplePreviewPresentableViewController *)self setOverrideUserInterfaceStyle:2];
}

- (id)_leadingView
{
  configuredAction = [(SBSystemAction *)self->_systemAction configuredAction];
  controlAction = [(SBSystemAction *)self->_systemAction controlAction];
  v5 = controlAction;
  if (controlAction)
  {
    iconView = [(SBControlSystemAction *)controlAction iconView];
    v7 = +[SBSystemAction defaultSymbolFont];
    [iconView setFont:v7];

    [iconView setStyle:1];
  }

  else
  {
    iconView = [configuredAction leadingApertureView];
  }

  return iconView;
}

- (id)_previewPrimaryText
{
  configuredAction = [(SBSystemAction *)self->_systemAction configuredAction];
  sectionIdentifier = [configuredAction sectionIdentifier];
  controlAction = [(SBSystemAction *)self->_systemAction controlAction];
  if ([sectionIdentifier isEqualToString:@"Accessibility"])
  {
    sb_configuredIntentAction = [configuredAction sb_configuredIntentAction];
    templateParameterValues = [sb_configuredIntentAction templateParameterValues];
    associatedBundleIdentifier = [templateParameterValues objectForKey:*MEMORY[0x277CE79B0]];

    localizedTitle = [associatedBundleIdentifier localizedTitle];
    goto LABEL_3;
  }

  if (controlAction)
  {
    sb_configuredIntentAction = [(SBControlSystemAction *)controlAction properties];
    localizedTitle = [(SBCameraActivationManager *)sb_configuredIntentAction workspace];
    if (localizedTitle)
    {
      goto LABEL_6;
    }

    associatedBundleIdentifier = [configuredAction associatedBundleIdentifier];
    v11 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:associatedBundleIdentifier allowPlaceholder:1 error:0];
    localizedName = [v11 localizedName];
    v13 = localizedName;
    if (localizedName)
    {
      localizedShortName = localizedName;
    }

    else
    {
      localizedShortName = [v11 localizedShortName];
    }

    localizedTitle = localizedShortName;

LABEL_3:
LABEL_6:

    goto LABEL_7;
  }

  localizedTitle = [configuredAction name];
LABEL_7:

  return localizedTitle;
}

- (id)_previewSecondaryText
{
  controlAction = [(SBSystemAction *)self->_systemAction controlAction];
  v3 = controlAction;
  if (controlAction)
  {
    properties = [(SBControlSystemAction *)controlAction properties];
    listener = [(SBHomeScreenConfigurationServer *)properties listener];
  }

  else
  {
    listener = 0;
  }

  return listener;
}

- (void)_updatePillViewContentItems
{
  v20[1] = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  _previewPrimaryText = [(SBSystemActionSimplePreviewPresentableViewController *)self _previewPrimaryText];
  v5 = MEMORY[0x277D740C0];
  if (_previewPrimaryText)
  {
    v6 = objc_alloc(MEMORY[0x277CCA898]);
    v19 = *v5;
    labelColor = [MEMORY[0x277D75348] labelColor];
    v20[0] = labelColor;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v9 = [v6 initWithString:_previewPrimaryText attributes:v8];

    v10 = [objc_alloc(MEMORY[0x277D3D308]) initWithAttributedText:v9];
    [array addObject:v10];
  }

  _previewSecondaryText = [(SBSystemActionSimplePreviewPresentableViewController *)self _previewSecondaryText];
  if (_previewSecondaryText)
  {
    v12 = objc_alloc(MEMORY[0x277CCA898]);
    v17 = *v5;
    _previewSecondaryTextColor = [(SBSystemActionSimplePreviewPresentableViewController *)self _previewSecondaryTextColor];
    v18 = _previewSecondaryTextColor;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v15 = [v12 initWithString:_previewSecondaryText attributes:v14];

    v16 = [objc_alloc(MEMORY[0x277D3D308]) initWithAttributedText:v15];
    [array addObject:v16];
  }

  [(PLPillView *)self->_pillView setCenterContentItems:array];
}

- (NSString)requestIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  configuredAction = [(SBSystemAction *)self->_systemAction configuredAction];
  identifier = [configuredAction identifier];
  v5 = [v2 stringWithFormat:@"SBSystemActionSimplePreview-%@", identifier];

  return v5;
}

- (NSString)requesterIdentifier
{
  v2 = objc_opt_class();

  return [v2 requesterIdentifier];
}

- (void)initWithSystemAction:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSystemActionSimplePreviewPresentableViewController.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"systemAction"}];
}

@end