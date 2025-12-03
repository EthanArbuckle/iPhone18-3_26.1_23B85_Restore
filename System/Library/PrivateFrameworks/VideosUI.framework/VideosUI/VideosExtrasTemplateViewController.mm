@interface VideosExtrasTemplateViewController
+ (id)templateViewControllerWithDocument:(id)document options:(id)options context:(id)context;
- (BOOL)shouldUpdateByReplacingViewControllerWithTemplate:(id)template;
- (VideosExtrasContext)context;
- (VideosExtrasTemplateViewController)initWithDocument:(id)document options:(id)options context:(id)context;
- (void)_showPlaceholder;
- (void)_startBackgroundAudio;
- (void)configureBackgroundWithElements:(id)elements;
- (void)dealloc;
- (void)documentDidFail:(id)fail withError:(id)error;
- (void)documentDidUpdate:(id)update;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation VideosExtrasTemplateViewController

- (VideosExtrasTemplateViewController)initWithDocument:(id)document options:(id)options context:(id)context
{
  documentCopy = document;
  optionsCopy = options;
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = VideosExtrasTemplateViewController;
  v12 = [(VideosExtrasElementViewController *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_options, options);
    objc_storeStrong(&v13->_document, document);
    [(IKAppDocument *)v13->_document setDelegate:v13];
    objc_storeWeak(&v13->_context, contextCopy);
    [(IKAppDocument *)v13->_document onLoad];
  }

  return v13;
}

- (void)dealloc
{
  [(IKAppDocument *)self->_document onUnload];
  v3.receiver = self;
  v3.super_class = VideosExtrasTemplateViewController;
  [(VideosExtrasElementViewController *)&v3 dealloc];
}

- (void)_showPlaceholder
{
  view = [(VideosExtrasTemplateViewController *)self view];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [view setBackgroundColor:blackColor];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = VideosExtrasTemplateViewController;
  [(VideosExtrasTemplateViewController *)&v5 viewDidLoad];
  view = [(VideosExtrasTemplateViewController *)self view];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [view setBackgroundColor:blackColor];

  if ([(VideosExtrasTemplateViewController *)self showsPlaceholder])
  {
    [(VideosExtrasTemplateViewController *)self _showPlaceholder];
  }

  [(VideosExtrasTemplateViewController *)self documentDidUpdate:self->_document];
}

- (void)_startBackgroundAudio
{
  v12[1] = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  applicationState = [mEMORY[0x1E69DC668] applicationState];

  if (applicationState != 2)
  {
    document = [(VideosExtrasTemplateViewController *)self document];
    templateElement = [document templateElement];

    if (templateElement && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v7 = [templateElement performSelector:sel_background withObject:0];
      if (v7)
      {
        context = [(VideosExtrasTemplateViewController *)self context];
        audio = [v7 audio];

        if (audio)
        {
          audio2 = [v7 audio];
          v12[0] = audio2;
          v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
          [context extrasRequestsMediaPlayback:v11 isBackground:1];
        }
      }
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = VideosExtrasTemplateViewController;
  [(VideosExtrasTemplateViewController *)&v5 viewDidAppear:appear];
  [(VideosExtrasTemplateViewController *)self _startBackgroundAudio];
  document = [(VideosExtrasTemplateViewController *)self document];
  [document onAppear];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = VideosExtrasTemplateViewController;
  [(VideosExtrasTemplateViewController *)&v5 viewDidDisappear:disappear];
  document = [(VideosExtrasTemplateViewController *)self document];
  [document onDisappear];
}

- (void)documentDidUpdate:(id)update
{
  updateCopy = update;
  templateElement = [updateCopy templateElement];
  v5 = [(VideosExtrasTemplateViewController *)self shouldUpdateByReplacingViewControllerWithTemplate:templateElement];

  if (v5)
  {
    v6 = objc_opt_class();
    options = self->_options;
    WeakRetained = objc_loadWeakRetained(&self->_context);
    displayedTemplate = [v6 templateViewControllerWithDocument:updateCopy options:options context:WeakRetained];

    if (!displayedTemplate)
    {
      goto LABEL_6;
    }

    navigationController = [(VideosExtrasTemplateViewController *)self navigationController];
    [navigationController _VideosExtras_replaceViewController:self withViewController:displayedTemplate animated:0];
  }

  else
  {
    templateElement2 = [updateCopy templateElement];
    displayedTemplate = self->_displayedTemplate;
    self->_displayedTemplate = templateElement2;
  }

LABEL_6:
}

- (void)documentDidFail:(id)fail withError:(id)error
{
  failCopy = fail;
  errorCopy = error;
  v8 = MEMORY[0x1E69DC650];
  localizedDescription = [errorCopy localizedDescription];
  localizedDescription2 = [errorCopy localizedDescription];
  v11 = [v8 alertControllerWithTitle:localizedDescription message:localizedDescription2 preferredStyle:1];

  objc_initWeak(&location, v11);
  v12 = MEMORY[0x1E69DC648];
  v13 = +[VUILocalizationManager sharedInstance];
  v14 = [v13 localizedStringForKey:@"CANCEL"];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __64__VideosExtrasTemplateViewController_documentDidFail_withError___block_invoke;
  v19 = &unk_1E872EF28;
  objc_copyWeak(&v20, &location);
  v15 = [v12 actionWithTitle:v14 style:1 handler:&v16];
  [v11 addAction:{v15, v16, v17, v18, v19}];

  [(VideosExtrasTemplateViewController *)self presentViewController:v11 animated:1 completion:0];
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __64__VideosExtrasTemplateViewController_documentDidFail_withError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained parentViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

- (BOOL)shouldUpdateByReplacingViewControllerWithTemplate:(id)template
{
  displayedTemplate = self->_displayedTemplate;
  if (displayedTemplate)
  {
    v4 = displayedTemplate == template;
  }

  else
  {
    v4 = 1;
  }

  return !v4;
}

- (void)configureBackgroundWithElements:(id)elements
{
  v23 = *MEMORY[0x1E69E9840];
  elementsCopy = elements;
  v20.receiver = self;
  v20.super_class = VideosExtrasTemplateViewController;
  [(VideosExtrasElementViewController *)&v20 configureBackgroundWithElements:elementsCopy];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = elementsCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          audio = [v10 audio];
          if (audio)
          {
            v12 = audio;
            WeakRetained = objc_loadWeakRetained(&self->_context);
            audio2 = [v10 audio];
            v21 = audio2;
            v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
            [WeakRetained extrasRequestsMediaPlayback:v15 isBackground:1];

            goto LABEL_12;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

+ (id)templateViewControllerWithDocument:(id)document options:(id)options context:(id)context
{
  documentCopy = document;
  optionsCopy = options;
  contextCopy = context;
  if (templateViewControllerWithDocument_options_context__onceToken != -1)
  {
    +[VideosExtrasTemplateViewController templateViewControllerWithDocument:options:context:];
  }

  templateElement = [documentCopy templateElement];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    templateElement2 = [documentCopy templateElement];
    items = [templateElement2 items];

    if ([items count])
    {
      [contextCopy extrasRequestsMediaPlayback:items isBackground:0];
    }

    v15 = 0;
  }

  else
  {
    v16 = templateViewControllerWithDocument_options_context__templateMap;
    templateElement3 = [documentCopy templateElement];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [v16 objectForKey:v19];

    if (v20)
    {
      selfCopy = v20;
    }

    else
    {
      selfCopy = self;
    }

    v15 = [[selfCopy alloc] initWithDocument:documentCopy options:optionsCopy context:contextCopy];
  }

  return v15;
}

void __89__VideosExtrasTemplateViewController_templateViewControllerWithDocument_options_context___block_invoke()
{
  v3[6] = *MEMORY[0x1E69E9840];
  v2[0] = @"IKGalleryTemplate";
  v3[0] = objc_opt_class();
  v2[1] = @"IKListTemplate";
  v3[1] = objc_opt_class();
  v2[2] = @"IKMainTemplate";
  v3[2] = objc_opt_class();
  v2[3] = @"IKShowcaseTemplate";
  v3[3] = objc_opt_class();
  v2[4] = @"IKSlideshowElement";
  v3[4] = objc_opt_class();
  v2[5] = @"IKStackTemplate";
  v3[5] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:6];
  v1 = templateViewControllerWithDocument_options_context__templateMap;
  templateViewControllerWithDocument_options_context__templateMap = v0;
}

- (VideosExtrasContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

@end