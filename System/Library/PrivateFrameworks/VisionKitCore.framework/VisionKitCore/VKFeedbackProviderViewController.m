@interface VKFeedbackProviderViewController
- (VKFeedbackProviderViewController)initWithOptions:(unint64_t)a3 attachments:(id)a4;
- (VKFeedbackProviderViewControllerDelegate)delegate;
- (id)_contentRowButtonWithTitle:(id)a3 tag:(int64_t)a4 allowToggle:(BOOL)a5;
- (void)_createContentView;
- (void)_toggleContentRowButton:(id)a3;
- (void)dealloc;
- (void)loadView;
- (void)present;
- (void)viewDidLoad;
@end

@implementation VKFeedbackProviderViewController

- (VKFeedbackProviderViewController)initWithOptions:(unint64_t)a3 attachments:(id)a4
{
  v7 = a4;
  v13.receiver = self;
  v13.super_class = VKFeedbackProviderViewController;
  v8 = [(VKFeedbackProviderViewController *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_attachments, a4);
    v9->_options = a3;
    v10 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v7, "count")}];
    selectedAttachments = v9->_selectedAttachments;
    v9->_selectedAttachments = v10;
  }

  return v9;
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(VKFeedbackProviderViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = VKFeedbackProviderViewController;
  [(VKFeedbackProviderViewController *)&v3 viewDidLoad];
  [(VKFeedbackProviderViewController *)self _createContentView];
}

- (void)dealloc
{
  [(UIWindow *)self->_window resignKeyWindow];
  window = self->_window;
  self->_window = 0;

  v4.receiver = self;
  v4.super_class = VKFeedbackProviderViewController;
  [(VKFeedbackProviderViewController *)&v4 dealloc];
}

- (void)_createContentView
{
  v30[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  [v3 setAxis:1];
  [v3 setDistribution:0];
  [v3 setAlignment:1];
  [v3 setSpacing:10.0];
  options = self->_options;
  if ((options & 4) != 0)
  {
    v5 = [(VKFeedbackProviderViewController *)self _contentRowButtonWithTitle:@"Sysdiagnose" tag:-1 allowToggle:1];
    [v3 addArrangedSubview:v5];

    options = self->_options;
  }

  if (options)
  {
    v6 = [(VKFeedbackProviderViewController *)self _contentRowButtonWithTitle:@"Screenshot" tag:-2 allowToggle:1];
    [v3 addArrangedSubview:v6];
  }

  if ([(NSArray *)self->_attachments count])
  {
    v7 = 0;
    do
    {
      v8 = [(NSArray *)self->_attachments objectAtIndexedSubscript:v7];
      [(NSMutableSet *)self->_selectedAttachments addObject:v8];
      v9 = [v8 label];
      v10 = -[VKFeedbackProviderViewController _contentRowButtonWithTitle:tag:allowToggle:](self, "_contentRowButtonWithTitle:tag:allowToggle:", v9, v7, [v8 isOptional]);
      [v3 addArrangedSubview:v10];

      ++v7;
    }

    while (v7 < [(NSArray *)self->_attachments count]);
  }

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [(VKFeedbackProviderViewController *)self view];
  [v11 addSubview:v3];

  v23 = MEMORY[0x1E696ACD8];
  v28 = [v3 leadingAnchor];
  v29 = [(VKFeedbackProviderViewController *)self view];
  v27 = [v29 leadingAnchor];
  v26 = [v28 constraintEqualToSystemSpacingAfterAnchor:v27 multiplier:2.0];
  v30[0] = v26;
  v25 = [(VKFeedbackProviderViewController *)self view];
  v24 = [v25 trailingAnchor];
  v22 = [v3 trailingAnchor];
  v21 = [v24 constraintEqualToSystemSpacingAfterAnchor:v22 multiplier:2.0];
  v30[1] = v21;
  v12 = [v3 topAnchor];
  v13 = [(VKFeedbackProviderViewController *)self view];
  v14 = [v13 topAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  v30[2] = v15;
  v16 = [(VKFeedbackProviderViewController *)self view];
  v17 = [v16 bottomAnchor];
  v18 = [v3 bottomAnchor];
  v19 = [v17 constraintEqualToSystemSpacingBelowAnchor:v18 multiplier:1.0];
  v30[3] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
  [v23 activateConstraints:v20];
}

- (id)_contentRowButtonWithTitle:(id)a3 tag:(int64_t)a4 allowToggle:(BOOL)a5
{
  v5 = a5;
  v8 = MEMORY[0x1E69DC740];
  v9 = a3;
  v10 = [v8 plainButtonConfiguration];
  [v10 setImagePadding:8.0];
  v11 = [MEMORY[0x1E69DC738] buttonWithType:0];
  [v11 setConfiguration:v10];
  [v11 setTitle:v9 forState:0];

  v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"circle"];
  [v11 setImage:v12 forState:0];

  v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.circle.fill"];
  [v11 setImage:v13 forState:4];

  v14 = [MEMORY[0x1E69DC888] labelColor];
  [v11 setTitleColor:v14 forState:0];

  [v11 setSelected:1];
  if (v5)
  {
    [v11 addTarget:self action:sel__toggleContentRowButton_ forControlEvents:64];
  }

  else
  {
    [v11 setUserInteractionEnabled:0];
    v15 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v11 setTintColor:v15];
  }

  [v11 setTag:a4];

  return v11;
}

- (void)_toggleContentRowButton:(id)a3
{
  v12 = a3;
  v4 = [v12 isSelected];
  v5 = v4;
  [v12 setSelected:v4 ^ 1u];
  v6 = [v12 tag];
  if (v6 == -2)
  {
    options = self->_options;
    if (v5)
    {
      v8 = options & 0xFFFFFFFFFFFFFFFELL;
    }

    else
    {
      v8 = options | 1;
    }
  }

  else
  {
    if (v6 != -1)
    {
      v10 = -[NSArray objectAtIndexedSubscript:](self->_attachments, "objectAtIndexedSubscript:", [v12 tag]);
      selectedAttachments = self->_selectedAttachments;
      if (v5)
      {
        [(NSMutableSet *)selectedAttachments removeObject:v10];
      }

      else
      {
        [(NSMutableSet *)selectedAttachments addObject:v10];
      }

      goto LABEL_14;
    }

    v7 = self->_options;
    if (v5)
    {
      v8 = v7 & 0xFFFFFFFFFFFFFFFBLL;
    }

    else
    {
      v8 = v7 | 4;
    }
  }

  self->_options = v8;
LABEL_14:
}

- (void)present
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v4 = [v3 connectedScenes];
  v5 = [v4 countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v52;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v52 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v51 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ![v9 activationState])
        {
          v10 = v9;

          if (v10)
          {
            v11 = 0;
            v12 = 1;
            goto LABEL_26;
          }

          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v51 objects:v56 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v13 = [v3 windows];
  v14 = [v13 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (!v14)
  {
LABEL_23:

LABEL_29:
    v37 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [(VKFeedbackProviderViewController *)v37 present];
    }

    goto LABEL_31;
  }

  v15 = v14;
  v16 = *v48;
LABEL_15:
  v17 = 0;
  while (1)
  {
    if (*v48 != v16)
    {
      objc_enumerationMutation(v13);
    }

    v18 = *(*(&v47 + 1) + 8 * v17);
    v19 = [v18 windowScene];
    if (![v19 activationState])
    {
      break;
    }

LABEL_21:
    if (v15 == ++v17)
    {
      v15 = [v13 countByEnumeratingWithState:&v47 objects:v55 count:16];
      if (v15)
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }
  }

  v20 = [v18 rootViewController];

  if (!v20)
  {
    goto LABEL_21;
  }

  v11 = [v18 rootViewController];

  if (!v11)
  {
    goto LABEL_29;
  }

  v10 = 0;
  v12 = 0;
LABEL_26:
  v21 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Scarlett Feedback" message:@"Select attachments to submit with your feedback.\nRadar template window will automatically open once all attachments are ready." preferredStyle:1];
  [v21 setContentViewController:self];
  v22 = [(VKFeedbackProviderViewController *)self delegate];
  v23 = MEMORY[0x1E69DC648];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __43__VKFeedbackProviderViewController_present__block_invoke;
  v44[3] = &unk_1E7BE48F0;
  v24 = v22;
  v45 = v24;
  v46 = self;
  v25 = [v23 actionWithTitle:@"Cancel" style:1 handler:v44];
  [v21 addAction:v25];

  v26 = MEMORY[0x1E69DC648];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __43__VKFeedbackProviderViewController_present__block_invoke_2;
  v41[3] = &unk_1E7BE48F0;
  v27 = v24;
  v42 = v27;
  v43 = self;
  v28 = [v26 actionWithTitle:@"Submit" style:0 handler:v41];
  [v21 addAction:v28];

  if (v12)
  {
    v29 = [objc_alloc(MEMORY[0x1E69DD2E8]) initWithWindowScene:v10];
    window = self->_window;
    self->_window = v29;

    [(UIWindow *)self->_window setWindowLevel:*MEMORY[0x1E69DE7D8]];
    v31 = objc_alloc_init(MEMORY[0x1E69DD258]);
    [(UIWindow *)self->_window setRootViewController:v31];

    v32 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.15];
    v33 = [(UIWindow *)self->_window rootViewController];
    v34 = [v33 view];
    [v34 setBackgroundColor:v32];

    [(UIWindow *)self->_window makeKeyAndVisible];
    v35 = [(UIWindow *)self->_window rootViewController];

    v11 = v35;
  }

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __43__VKFeedbackProviderViewController_present__block_invoke_3;
  v38[3] = &unk_1E7BE4768;
  v39 = v11;
  v40 = v21;
  v36 = v21;
  v37 = v11;
  dispatch_async(MEMORY[0x1E69E96A0], v38);

LABEL_31:
}

void __43__VKFeedbackProviderViewController_present__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v2 + 1000);
  v4 = [*(v2 + 1008) allObjects];
  [v1 feedbackProviderViewController:v2 submitWithOptions:v3 attachments:v4];
}

- (VKFeedbackProviderViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end