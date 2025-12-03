@interface WFWorkflowActivityViewController
- (LPLinkMetadata)headerMetadata;
- (WFWorkflowActivityViewController)initWithWorkflow:(id)workflow applicationActivities:(id)activities;
- (id)_customizationGroupsForActivityViewController:(id)controller;
- (id)generateSharingDestinationGroup;
- (id)generateSharingModeGroup;
- (id)headerImage;
- (void)_customizationsDidChange;
@end

@implementation WFWorkflowActivityViewController

- (id)_customizationGroupsForActivityViewController:(id)controller
{
  v10[1] = *MEMORY[0x277D85DE8];
  generateSharingModeGroup = [(WFWorkflowActivityViewController *)self generateSharingModeGroup];
  v5 = MEMORY[0x277CBEB18];
  v10[0] = generateSharingModeGroup;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v7 = [v5 arrayWithArray:v6];

  if ([(WFWorkflowActivityViewController *)self selectedMode]== 1)
  {
    generateSharingDestinationGroup = [(WFWorkflowActivityViewController *)self generateSharingDestinationGroup];
    [v7 addObject:generateSharingDestinationGroup];
  }

  return v7;
}

- (id)generateSharingDestinationGroup
{
  v19[2] = *MEMORY[0x277D85DE8];
  v3 = WFLocalizedString(@"Anyone");
  v19[0] = v3;
  v4 = WFLocalizedString(@"People Who Know Me");
  v19[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];

  selectedDestination = [(WFWorkflowActivityViewController *)self selectedDestination];
  if (!selectedDestination)
  {
    v7 = @"When you export a shortcut file for anyone, Apple will sign your shortcut on its server.";
    goto LABEL_5;
  }

  if (selectedDestination == 1)
  {
    v7 = @"Only people who have you in their contacts will be able to use the shortcut. Your contact info will be included in the shortcut file for verification.\n\nYou can also use this option to make a personal backup of your shortcuts.";
LABEL_5:
    v8 = WFLocalizedString(v7);
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  v9 = MEMORY[0x277D546F8];
  selectedDestination2 = [(WFWorkflowActivityViewController *)self selectedDestination];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __67__WFWorkflowActivityViewController_generateSharingDestinationGroup__block_invoke;
  v17[3] = &unk_279EE7AB0;
  v17[4] = self;
  v11 = [v9 pickerCustomizationWithIdentifier:@"WFWorkflowSharingDestinationPicker" options:v5 selectedOptionIndex:selectedDestination2 footerText:v8 valueChangedHandler:v17];
  v12 = objc_alloc(MEMORY[0x277D54700]);
  v13 = WFLocalizedString(@"For");
  v18 = v11;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  v15 = [v12 _initGroupWithName:v13 identifier:@"WFWorkflowSharingDestinationGroup" customizations:v14];

  return v15;
}

void __67__WFWorkflowActivityViewController_generateSharingDestinationGroup__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) selectedDestination];
  if (v3 != [v4 selectedOptionIndex])
  {
    [*(a1 + 32) setSelectedDestination:{objc_msgSend(v4, "selectedOptionIndex")}];
    [*(a1 + 32) _customizationsDidChange];
  }
}

- (id)generateSharingModeGroup
{
  v16[2] = *MEMORY[0x277D85DE8];
  v3 = WFLocalizedString(@"iCloud Link");
  v16[0] = v3;
  v4 = WFLocalizedString(@"File");
  v16[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];

  v6 = MEMORY[0x277D546F8];
  selectedMode = [(WFWorkflowActivityViewController *)self selectedMode];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__WFWorkflowActivityViewController_generateSharingModeGroup__block_invoke;
  v14[3] = &unk_279EE7AB0;
  v14[4] = self;
  v8 = [v6 pickerCustomizationWithIdentifier:@"WFWorkflowSharingModePicker" options:v5 selectedOptionIndex:selectedMode footerText:0 valueChangedHandler:v14];
  v9 = objc_alloc(MEMORY[0x277D54700]);
  v10 = WFLocalizedString(@"Send As");
  v15 = v8;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v12 = [v9 _initGroupWithName:v10 identifier:@"WFWorkflowSharingModeGroup" customizations:v11];

  return v12;
}

void __60__WFWorkflowActivityViewController_generateSharingModeGroup__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) selectedMode];
  if (v3 != [v4 selectedOptionIndex])
  {
    [*(a1 + 32) setSelectedMode:{objc_msgSend(v4, "selectedOptionIndex")}];
    [*(a1 + 32) _customizationsDidChange];
  }
}

- (void)_customizationsDidChange
{
  v19[3] = *MEMORY[0x277D85DE8];
  if ([(WFWorkflowActivityViewController *)self selectedMode])
  {
    if ([(WFWorkflowActivityViewController *)self selectedMode]!= 1)
    {
      return;
    }

    linkProvider = WFUserInterfaceFromViewController();
    selectedDestination = [(WFWorkflowActivityViewController *)self selectedDestination];
    if (selectedDestination)
    {
      if (selectedDestination != 1)
      {
LABEL_9:
        v13 = *MEMORY[0x277D54708];
        v17[0] = *MEMORY[0x277D54720];
        v17[1] = v13;
        v17[2] = *MEMORY[0x277D54718];
        v17[3] = v13;
        v17[4] = *MEMORY[0x277D54778];
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:5];
        [(WFWorkflowActivityViewController *)self setExcludedActivityTypes:v14];

        signedShortcutFileProvider = [(WFWorkflowActivityViewController *)self signedShortcutFileProvider];
        v16[0] = signedShortcutFileProvider;
        workflow = [(WFWorkflowActivityViewController *)self workflow];
        v16[1] = workflow;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
        [(WFWorkflowActivityViewController *)self _updateActivityItems:v15];

        goto LABEL_10;
      }

      v5 = &off_279EE43A0;
    }

    else
    {
      v5 = &off_279EE4330;
    }

    v10 = objc_alloc(*v5);
    workflow2 = [(WFWorkflowActivityViewController *)self workflow];
    v12 = [v10 initWithWorkflow:workflow2 userInterface:linkProvider];
    [(WFWorkflowActivityViewController *)self setSignedShortcutFileProvider:v12];

    goto LABEL_9;
  }

  v6 = *MEMORY[0x277D54708];
  v19[0] = *MEMORY[0x277D54720];
  v19[1] = v6;
  v19[2] = *MEMORY[0x277D54718];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
  [(WFWorkflowActivityViewController *)self setExcludedActivityTypes:v7];

  linkProvider = [(WFWorkflowActivityViewController *)self linkProvider];
  v18[0] = linkProvider;
  signedShortcutFileProvider = [(WFWorkflowActivityViewController *)self workflow];
  v18[1] = signedShortcutFileProvider;
  workflow = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  [(WFWorkflowActivityViewController *)self _updateActivityItems:workflow];
LABEL_10:
}

- (id)headerImage
{
  v3 = objc_alloc_init(MEMORY[0x277CCAA88]);
  v4 = objc_opt_class();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__WFWorkflowActivityViewController_headerImage__block_invoke;
  v7[3] = &unk_279EE7A88;
  v7[4] = self;
  [v3 registerObjectOfClass:v4 visibility:0 loadHandler:v7];
  v5 = [objc_alloc(MEMORY[0x277CD46B0]) initWithItemProvider:v3 properties:0 placeholderImage:0];

  return v5;
}

uint64_t __47__WFWorkflowActivityViewController_headerImage__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__WFWorkflowActivityViewController_headerImage__block_invoke_2;
  v6[3] = &unk_279EE8B18;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);

  return 0;
}

void __47__WFWorkflowActivityViewController_headerImage__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) workflow];
  v3 = [v2 reference];
  v4 = [v3 attributionIcon];

  v5 = v4;
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = MEMORY[0x277D79FC8];
    v7 = [v5 bundleIdentifier];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __47__WFWorkflowActivityViewController_headerImage__block_invoke_3;
    v10[3] = &unk_279EE80E8;
    v11 = *(a1 + 40);
    [v6 applicationIconImageForBundleIdentifier:v7 length:v10 scale:60.0 completionHandler:3.0];
  }

  else
  {

    v8 = *(a1 + 40);
    v9 = [MEMORY[0x277D7D780] loadIcon:v5 size:6 style:{60.0, 60.0}];
    (*(v8 + 16))(v8, v9, 0);
  }
}

void __47__WFWorkflowActivityViewController_headerImage__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 platformImage];
  (*(v2 + 16))(v2, v3, 0);
}

- (LPLinkMetadata)headerMetadata
{
  headerMetadata = self->_headerMetadata;
  if (!headerMetadata)
  {
    v4 = objc_alloc_init(MEMORY[0x277CD4690]);
    v5 = objc_alloc_init(MEMORY[0x277CD46C8]);
    [(LPLinkMetadata *)v5 setSpecialization:v4];
    workflow = [(WFWorkflowActivityViewController *)self workflow];
    name = [workflow name];
    [(LPLinkMetadata *)v5 setTitle:name];

    headerImage = [(WFWorkflowActivityViewController *)self headerImage];
    [(LPLinkMetadata *)v5 setImage:headerImage];

    v9 = self->_headerMetadata;
    self->_headerMetadata = v5;

    headerMetadata = self->_headerMetadata;
  }

  return headerMetadata;
}

- (WFWorkflowActivityViewController)initWithWorkflow:(id)workflow applicationActivities:(id)activities
{
  v37[2] = *MEMORY[0x277D85DE8];
  workflowCopy = workflow;
  activitiesCopy = activities;
  v8 = WFGallerySharingURLForIdentifier();
  v9 = [activitiesCopy mutableCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;

  v13 = [[WFWorkflowCopyActivity alloc] initWithExcludedURL:v8];
  [v12 insertObject:v13 atIndex:0];

  v14 = WFUserInterfaceFromViewController();
  v15 = [[WFWorkflowLinkProvider alloc] initWithWorkflow:workflowCopy userInterface:v14];
  v37[0] = v15;
  v37[1] = workflowCopy;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
  v34.receiver = self;
  v34.super_class = WFWorkflowActivityViewController;
  v17 = [(WFWorkflowActivityViewController *)&v34 initWithActivityItems:v16 applicationActivities:v12];

  if (v17)
  {
    [(WFWorkflowActivityViewController *)v17 setLinkProvider:v15];
    [(WFWorkflowActivityViewController *)v17 setWorkflow:workflowCopy];
    workflow = [(WFWorkflowActivityViewController *)v17 workflow];
    isReportable = [workflow isReportable];

    if (isReportable)
    {
      objc_initWeak(&location, v17);
      v20 = [WFReportShortcutActivity alloc];
      v28 = MEMORY[0x277D85DD0];
      v29 = 3221225472;
      v30 = __75__WFWorkflowActivityViewController_initWithWorkflow_applicationActivities___block_invoke;
      v31 = &unk_279EE7A60;
      objc_copyWeak(&v32, &location);
      v21 = [(WFReportShortcutActivity *)v20 initWithWorkflow:workflowCopy completion:&v28];
      [(WFReportShortcutActivity *)v21 setActivityControler:v17, v28, v29, v30, v31];
      [v12 addObject:v21];
      v36[0] = v15;
      v36[1] = workflowCopy;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
      [(WFWorkflowActivityViewController *)v17 _updateActivityItems:v22 applicationActivities:v12];

      objc_destroyWeak(&v32);
      objc_destroyWeak(&location);
    }

    v23 = *MEMORY[0x277D54708];
    v35[0] = *MEMORY[0x277D54720];
    v35[1] = v23;
    v35[2] = *MEMORY[0x277D54718];
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:3];
    [(WFWorkflowActivityViewController *)v17 setExcludedActivityTypes:v24];

    headerMetadata = [(WFWorkflowActivityViewController *)v17 headerMetadata];
    [(WFWorkflowActivityViewController *)v17 setPhotosHeaderMetadata:headerMetadata];

    [(WFWorkflowActivityViewController *)v17 setObjectManipulationDelegate:v17];
    v26 = v17;
  }

  return v17;
}

void __75__WFWorkflowActivityViewController_initWithWorkflow_applicationActivities___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cancel];
}

@end