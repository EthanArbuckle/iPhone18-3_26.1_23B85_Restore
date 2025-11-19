@interface SBSystemActionSimplePreviewPresentableViewController
- (NSString)requestIdentifier;
- (NSString)requesterIdentifier;
- (SBSystemActionSimplePreviewPresentableViewController)initWithSystemAction:(id)a3;
- (id)_leadingView;
- (id)_previewPrimaryText;
- (id)_previewSecondaryText;
- (void)_updatePillViewContentItems;
- (void)viewDidLoad;
@end

@implementation SBSystemActionSimplePreviewPresentableViewController

- (SBSystemActionSimplePreviewPresentableViewController)initWithSystemAction:(id)a3
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = SBSystemActionSimplePreviewPresentableViewController;
  v7 = [(SBSystemActionSimplePreviewPresentableViewController *)&v12 initWithNibName:0 bundle:0];
  if (v7)
  {
    if (!v6)
    {
      [(SBSystemActionSimplePreviewPresentableViewController *)a2 initWithSystemAction:v7];
    }

    objc_storeStrong(&v7->_systemAction, a3);
    v8 = [(SBSystemAction *)v7->_systemAction controlAction];
    [(SBControlSystemAction *)v8 addObserver:v7];

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
  v3 = [(SBSystemActionSimplePreviewPresentableViewController *)self view];
  v4 = [(SBSystemAction *)self->_systemAction configuredAction];
  v5 = [(SBSystemActionSimplePreviewPresentableViewController *)self _leadingView];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
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
  v10 = [v9 subviews];
  v11 = [v10 countByEnumeratingWithState:&v30 objects:v36 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v30 + 1) + 8 * i) layer];
        [v15 setShadowOpacity:0.0];
      }

      v12 = [v10 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v12);
  }

  v16 = [v4 trailingApertureView];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = [v16 subviews];
  v18 = [v17 countByEnumeratingWithState:&v26 objects:v35 count:16];
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
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v26 + 1) + 8 * j) layer];
        [v22 setShadowOpacity:0.0];
      }

      v19 = [v17 countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v19);
  }

  v23 = [objc_alloc(MEMORY[0x277D3D318]) initWithLeadingAccessoryView:v9 trailingAccessoryView:v16];
  pillView = self->_pillView;
  self->_pillView = v23;

  [(SBSystemActionSimplePreviewPresentableViewController *)self _updatePillViewContentItems];
  v25 = self->_pillView;
  [v3 bounds];
  [(PLPillView *)v25 setFrame:?];
  [(PLPillView *)self->_pillView setAutoresizingMask:18];
  [(PLPillView *)self->_pillView setMaterialGroupNameBase:@"SBSystemActionSimplePreviewMaterialGroup"];
  [v3 addSubview:self->_pillView];
  [(PLPillView *)self->_pillView intrinsicContentSize];
  [(SBSystemActionSimplePreviewPresentableViewController *)self setPreferredContentSize:?];
  [(SBSystemActionSimplePreviewPresentableViewController *)self setOverrideUserInterfaceStyle:2];
}

- (id)_leadingView
{
  v3 = [(SBSystemAction *)self->_systemAction configuredAction];
  v4 = [(SBSystemAction *)self->_systemAction controlAction];
  v5 = v4;
  if (v4)
  {
    v6 = [(SBControlSystemAction *)v4 iconView];
    v7 = +[SBSystemAction defaultSymbolFont];
    [v6 setFont:v7];

    [v6 setStyle:1];
  }

  else
  {
    v6 = [v3 leadingApertureView];
  }

  return v6;
}

- (id)_previewPrimaryText
{
  v3 = [(SBSystemAction *)self->_systemAction configuredAction];
  v4 = [v3 sectionIdentifier];
  v5 = [(SBSystemAction *)self->_systemAction controlAction];
  if ([v4 isEqualToString:@"Accessibility"])
  {
    v6 = [v3 sb_configuredIntentAction];
    v7 = [v6 templateParameterValues];
    v8 = [v7 objectForKey:*MEMORY[0x277CE79B0]];

    v9 = [v8 localizedTitle];
    goto LABEL_3;
  }

  if (v5)
  {
    v6 = [(SBControlSystemAction *)v5 properties];
    v9 = [(SBCameraActivationManager *)v6 workspace];
    if (v9)
    {
      goto LABEL_6;
    }

    v8 = [v3 associatedBundleIdentifier];
    v11 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:v8 allowPlaceholder:1 error:0];
    v12 = [v11 localizedName];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [v11 localizedShortName];
    }

    v9 = v14;

LABEL_3:
LABEL_6:

    goto LABEL_7;
  }

  v9 = [v3 name];
LABEL_7:

  return v9;
}

- (id)_previewSecondaryText
{
  v2 = [(SBSystemAction *)self->_systemAction controlAction];
  v3 = v2;
  if (v2)
  {
    v4 = [(SBControlSystemAction *)v2 properties];
    v5 = [(SBHomeScreenConfigurationServer *)v4 listener];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updatePillViewContentItems
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(SBSystemActionSimplePreviewPresentableViewController *)self _previewPrimaryText];
  v5 = MEMORY[0x277D740C0];
  if (v4)
  {
    v6 = objc_alloc(MEMORY[0x277CCA898]);
    v19 = *v5;
    v7 = [MEMORY[0x277D75348] labelColor];
    v20[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v9 = [v6 initWithString:v4 attributes:v8];

    v10 = [objc_alloc(MEMORY[0x277D3D308]) initWithAttributedText:v9];
    [v3 addObject:v10];
  }

  v11 = [(SBSystemActionSimplePreviewPresentableViewController *)self _previewSecondaryText];
  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277CCA898]);
    v17 = *v5;
    v13 = [(SBSystemActionSimplePreviewPresentableViewController *)self _previewSecondaryTextColor];
    v18 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v15 = [v12 initWithString:v11 attributes:v14];

    v16 = [objc_alloc(MEMORY[0x277D3D308]) initWithAttributedText:v15];
    [v3 addObject:v16];
  }

  [(PLPillView *)self->_pillView setCenterContentItems:v3];
}

- (NSString)requestIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(SBSystemAction *)self->_systemAction configuredAction];
  v4 = [v3 identifier];
  v5 = [v2 stringWithFormat:@"SBSystemActionSimplePreview-%@", v4];

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