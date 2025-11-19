@interface VideosExtrasTemplateViewController
+ (id)templateViewControllerWithDocument:(id)a3 options:(id)a4 context:(id)a5;
- (BOOL)shouldUpdateByReplacingViewControllerWithTemplate:(id)a3;
- (VideosExtrasContext)context;
- (VideosExtrasTemplateViewController)initWithDocument:(id)a3 options:(id)a4 context:(id)a5;
- (void)_showPlaceholder;
- (void)_startBackgroundAudio;
- (void)configureBackgroundWithElements:(id)a3;
- (void)dealloc;
- (void)documentDidFail:(id)a3 withError:(id)a4;
- (void)documentDidUpdate:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation VideosExtrasTemplateViewController

- (VideosExtrasTemplateViewController)initWithDocument:(id)a3 options:(id)a4 context:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = VideosExtrasTemplateViewController;
  v12 = [(VideosExtrasElementViewController *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_options, a4);
    objc_storeStrong(&v13->_document, a3);
    [(IKAppDocument *)v13->_document setDelegate:v13];
    objc_storeWeak(&v13->_context, v11);
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
  v3 = [(VideosExtrasTemplateViewController *)self view];
  v2 = [MEMORY[0x1E69DC888] blackColor];
  [v3 setBackgroundColor:v2];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = VideosExtrasTemplateViewController;
  [(VideosExtrasTemplateViewController *)&v5 viewDidLoad];
  v3 = [(VideosExtrasTemplateViewController *)self view];
  v4 = [MEMORY[0x1E69DC888] blackColor];
  [v3 setBackgroundColor:v4];

  if ([(VideosExtrasTemplateViewController *)self showsPlaceholder])
  {
    [(VideosExtrasTemplateViewController *)self _showPlaceholder];
  }

  [(VideosExtrasTemplateViewController *)self documentDidUpdate:self->_document];
}

- (void)_startBackgroundAudio
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  v4 = [v3 applicationState];

  if (v4 != 2)
  {
    v5 = [(VideosExtrasTemplateViewController *)self document];
    v6 = [v5 templateElement];

    if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v7 = [v6 performSelector:sel_background withObject:0];
      if (v7)
      {
        v8 = [(VideosExtrasTemplateViewController *)self context];
        v9 = [v7 audio];

        if (v9)
        {
          v10 = [v7 audio];
          v12[0] = v10;
          v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
          [v8 extrasRequestsMediaPlayback:v11 isBackground:1];
        }
      }
    }
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = VideosExtrasTemplateViewController;
  [(VideosExtrasTemplateViewController *)&v5 viewDidAppear:a3];
  [(VideosExtrasTemplateViewController *)self _startBackgroundAudio];
  v4 = [(VideosExtrasTemplateViewController *)self document];
  [v4 onAppear];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = VideosExtrasTemplateViewController;
  [(VideosExtrasTemplateViewController *)&v5 viewDidDisappear:a3];
  v4 = [(VideosExtrasTemplateViewController *)self document];
  [v4 onDisappear];
}

- (void)documentDidUpdate:(id)a3
{
  v12 = a3;
  v4 = [v12 templateElement];
  v5 = [(VideosExtrasTemplateViewController *)self shouldUpdateByReplacingViewControllerWithTemplate:v4];

  if (v5)
  {
    v6 = objc_opt_class();
    options = self->_options;
    WeakRetained = objc_loadWeakRetained(&self->_context);
    displayedTemplate = [v6 templateViewControllerWithDocument:v12 options:options context:WeakRetained];

    if (!displayedTemplate)
    {
      goto LABEL_6;
    }

    v10 = [(VideosExtrasTemplateViewController *)self navigationController];
    [v10 _VideosExtras_replaceViewController:self withViewController:displayedTemplate animated:0];
  }

  else
  {
    v11 = [v12 templateElement];
    displayedTemplate = self->_displayedTemplate;
    self->_displayedTemplate = v11;
  }

LABEL_6:
}

- (void)documentDidFail:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E69DC650];
  v9 = [v7 localizedDescription];
  v10 = [v7 localizedDescription];
  v11 = [v8 alertControllerWithTitle:v9 message:v10 preferredStyle:1];

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

- (BOOL)shouldUpdateByReplacingViewControllerWithTemplate:(id)a3
{
  displayedTemplate = self->_displayedTemplate;
  if (displayedTemplate)
  {
    v4 = displayedTemplate == a3;
  }

  else
  {
    v4 = 1;
  }

  return !v4;
}

- (void)configureBackgroundWithElements:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = VideosExtrasTemplateViewController;
  [(VideosExtrasElementViewController *)&v20 configureBackgroundWithElements:v4];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v4;
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
          v11 = [v10 audio];
          if (v11)
          {
            v12 = v11;
            WeakRetained = objc_loadWeakRetained(&self->_context);
            v14 = [v10 audio];
            v21 = v14;
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

+ (id)templateViewControllerWithDocument:(id)a3 options:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (templateViewControllerWithDocument_options_context__onceToken != -1)
  {
    +[VideosExtrasTemplateViewController templateViewControllerWithDocument:options:context:];
  }

  v11 = [v8 templateElement];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v13 = [v8 templateElement];
    v14 = [v13 items];

    if ([v14 count])
    {
      [v10 extrasRequestsMediaPlayback:v14 isBackground:0];
    }

    v15 = 0;
  }

  else
  {
    v16 = templateViewControllerWithDocument_options_context__templateMap;
    v17 = [v8 templateElement];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [v16 objectForKey:v19];

    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = a1;
    }

    v15 = [[v21 alloc] initWithDocument:v8 options:v9 context:v10];
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