@interface WFWorkflowItemProvider
- (NSURL)workflowURL;
- (WFWorkflowItemProvider)initWithWorkflow:(id)workflow userInterface:(id)interface placeholderItem:(id)item;
- (id)activityViewController:(id)controller subjectForActivityType:(id)type;
- (id)activityViewController:(id)controller thumbnailImageForActivityType:(id)type suggestedSize:(CGSize)size;
- (id)activityViewControllerLinkMetadata:(id)metadata;
- (id)item;
- (id)shareShortcutEventForActivityType:(id)type;
- (void)generateItemURL;
@end

@implementation WFWorkflowItemProvider

- (id)activityViewControllerLinkMetadata:(id)metadata
{
  v4 = objc_alloc(MEMORY[0x277D7A1E8]);
  workflow = [(WFWorkflowItemProvider *)self workflow];
  icon = [workflow icon];
  v7 = [v4 initWithIcon:icon];

  [v7 setRounded:0];
  v8 = [v7 imageWithSize:{40.0, 40.0}];
  uIImage = [v8 UIImage];

  v10 = objc_opt_new();
  workflow2 = [(WFWorkflowItemProvider *)self workflow];
  name = [workflow2 name];
  [v10 setTitle:name];

  v13 = [objc_alloc(MEMORY[0x277CCAA88]) initWithObject:uIImage];
  [v10 setIconProvider:v13];

  return v10;
}

- (id)activityViewController:(id)controller subjectForActivityType:(id)type
{
  v5 = MEMORY[0x277CCACA8];
  v6 = WFLocalizedString(@"Shortcut: %@");
  workflow = [(WFWorkflowItemProvider *)self workflow];
  name = [workflow name];
  v9 = [v5 localizedStringWithFormat:v6, name];

  return v9;
}

- (id)activityViewController:(id)controller thumbnailImageForActivityType:(id)type suggestedSize:(CGSize)size
{
  if (size.width >= size.height)
  {
    height = size.height;
  }

  else
  {
    height = size.width;
  }

  v6 = MEMORY[0x277D7A1E8];
  v7 = [(WFWorkflowItemProvider *)self workflow:controller];
  icon = [v7 icon];
  v9 = [v6 imageWithIcon:icon size:{height, height}];
  uIImage = [v9 UIImage];

  return uIImage;
}

- (id)item
{
  activityType = [(UIActivityItemProvider *)self activityType];
  -[WFWorkflowItemProvider setShouldShowSuccessCheckmark:](self, "setShouldShowSuccessCheckmark:", [activityType isEqualToString:@"is.workflow.my.linkcopier"]);
  workflowURL = [(WFWorkflowItemProvider *)self workflowURL];
  if (workflowURL)
  {
    v5 = [(WFWorkflowItemProvider *)self shareShortcutEventForActivityType:activityType];
    [v5 track];
    v6 = workflowURL;
  }

  return workflowURL;
}

- (id)shareShortcutEventForActivityType:(id)type
{
  v4 = MEMORY[0x277D7C860];
  typeCopy = type;
  v6 = objc_alloc_init(v4);
  workflow = [(WFWorkflowItemProvider *)self workflow];
  actions = [workflow actions];
  [v6 setActionCount:{objc_msgSend(actions, "count")}];

  workflow2 = [(WFWorkflowItemProvider *)self workflow];
  associatedAppBundleIdentifier = [workflow2 associatedAppBundleIdentifier];
  [v6 setAddToSiriBundleIdentifier:associatedAppBundleIdentifier];

  workflow3 = [(WFWorkflowItemProvider *)self workflow];
  galleryIdentifier = [workflow3 galleryIdentifier];
  [v6 setGalleryIdentifier:galleryIdentifier];

  [v6 setSharingDestinationBundleIdentifier:typeCopy];

  return v6;
}

- (void)generateItemURL
{
  v3 = MEMORY[0x277D85CD0];
  dispatch_assert_queue_not_V2(MEMORY[0x277D85CD0]);
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__18078;
  v18[4] = __Block_byref_object_dispose__18079;
  v19 = 0;
  v4 = dispatch_semaphore_create(0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__WFWorkflowItemProvider_generateItemURL__block_invoke;
  block[3] = &unk_279EE8930;
  v17 = v18;
  block[4] = self;
  v5 = v4;
  v16 = v5;
  dispatch_async(v3, block);

  shortcutExporter = [(WFWorkflowItemProvider *)self shortcutExporter];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __41__WFWorkflowItemProvider_generateItemURL__block_invoke_4;
  v13[3] = &unk_279EE8958;
  v13[4] = self;
  v7 = v5;
  v14 = v7;
  [shortcutExporter exportWorkflowWithCompletion:v13];

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  if ([(WFWorkflowItemProvider *)self shouldShowSuccessCheckmark]&& self->_workflowURL)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __41__WFWorkflowItemProvider_generateItemURL__block_invoke_7;
    v12[3] = &unk_279EE8CF8;
    v12[4] = v18;
    v8 = MEMORY[0x277D85CD0];
    dispatch_async(MEMORY[0x277D85CD0], v12);

    v9 = dispatch_time(0, 1000000000);
    dispatch_semaphore_wait(v7, v9);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __41__WFWorkflowItemProvider_generateItemURL__block_invoke_8;
  v11[3] = &unk_279EE8980;
  v11[4] = self;
  v11[5] = v18;
  v10 = MEMORY[0x277D85CD0];
  dispatch_async(MEMORY[0x277D85CD0], v11);

  _Block_object_dispose(v18, 8);
}

void __41__WFWorkflowItemProvider_generateItemURL__block_invoke(uint64_t a1)
{
  v2 = [[WFActivityProgressController alloc] initWithTitle:0];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) userInterface];
  v6 = v5;
  if (v5)
  {
    if ([v5 conformsToProtocol:&unk_288451CE8])
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v8 viewController];

  if (v9)
  {
    v10 = [v8 viewController];
    v11 = [v10 presentedViewController];

    if (v11)
    {
      do
      {
        v12 = [v10 presentedViewController];

        v13 = [v12 presentedViewController];

        v10 = v12;
      }

      while (v13);
    }

    else
    {
      v12 = v10;
    }

    v14 = *(*(*(a1 + 48) + 8) + 40);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __41__WFWorkflowItemProvider_generateItemURL__block_invoke_2;
    v16[3] = &unk_279EE8C58;
    v15 = *(a1 + 40);
    v16[4] = *(a1 + 32);
    v17 = v15;
    [v14 presentFrom:v12 cancellationHandler:v16];
  }
}

void __41__WFWorkflowItemProvider_generateItemURL__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = MEMORY[0x277CFC218];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __41__WFWorkflowItemProvider_generateItemURL__block_invoke_5;
    v13 = &unk_279EE8C58;
    v6 = *(a1 + 40);
    v14 = *(a1 + 32);
    v15 = v6;
    v7 = [v5 alertWithError:a3 confirmationHandler:&v10];
    v8 = [*(a1 + 32) userInterface];
    [v8 presentAlert:v7];
  }

  else
  {
    [*(a1 + 32) setWorkflowURL:a2];
    v9 = *(a1 + 40);

    dispatch_semaphore_signal(v9);
  }
}

uint64_t __41__WFWorkflowItemProvider_generateItemURL__block_invoke_8(uint64_t a1)
{
  v1 = *(*(*(a1 + 40) + 8) + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __41__WFWorkflowItemProvider_generateItemURL__block_invoke_9;
  v3[3] = &unk_279EE8A78;
  v3[4] = *(a1 + 32);
  return [v1 dismissWithCompletion:v3];
}

uint64_t __41__WFWorkflowItemProvider_generateItemURL__block_invoke_9(uint64_t a1)
{
  result = [*(a1 + 32) hasWorkflowURL];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 cancel];
  }

  return result;
}

intptr_t __41__WFWorkflowItemProvider_generateItemURL__block_invoke_5(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__WFWorkflowItemProvider_generateItemURL__block_invoke_6;
  block[3] = &unk_279EE8A78;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
  return dispatch_semaphore_signal(*(a1 + 40));
}

intptr_t __41__WFWorkflowItemProvider_generateItemURL__block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__WFWorkflowItemProvider_generateItemURL__block_invoke_3;
  block[3] = &unk_279EE8A78;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
  return dispatch_semaphore_signal(*(a1 + 40));
}

- (NSURL)workflowURL
{
  workflowURL = self->_workflowURL;
  if (!workflowURL)
  {
    [(WFWorkflowItemProvider *)self generateItemURL];
    workflowURL = self->_workflowURL;
  }

  return workflowURL;
}

- (WFWorkflowItemProvider)initWithWorkflow:(id)workflow userInterface:(id)interface placeholderItem:(id)item
{
  workflowCopy = workflow;
  interfaceCopy = interface;
  v15.receiver = self;
  v15.super_class = WFWorkflowItemProvider;
  v11 = [(UIActivityItemProvider *)&v15 initWithPlaceholderItem:item];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_workflow, workflow);
    objc_storeStrong(&v12->_userInterface, interface);
    v13 = v12;
  }

  return v12;
}

@end