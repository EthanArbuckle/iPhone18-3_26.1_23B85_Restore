@interface VUIConfirmationDocumentWrapperViewController
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (void)vui_loadView;
- (void)vui_viewDidLayoutSubviews;
@end

@implementation VUIConfirmationDocumentWrapperViewController

- (void)vui_loadView
{
  v7.receiver = self;
  v7.super_class = VUIConfirmationDocumentWrapperViewController;
  [(VUIConfirmationDocumentWrapperViewController *)&v7 vui_loadView];
  vuiView = [(VUIConfirmationDocumentWrapperViewController *)self vuiView];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [vuiView setVuiBackgroundColor:clearColor];

  v5 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_tapped];
  vuiView2 = [(VUIConfirmationDocumentWrapperViewController *)self vuiView];
  [vuiView2 addGestureRecognizer:v5];

  [v5 setDelegate:self];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  view = [touch view];
  view2 = [(VUIConfirmationDocumentWrapperViewController *)self view];
  LOBYTE(self) = view == view2;

  return self;
}

- (void)vui_viewDidLayoutSubviews
{
  v34.receiver = self;
  v34.super_class = VUIConfirmationDocumentWrapperViewController;
  [(VUIConfirmationDocumentWrapperViewController *)&v34 vui_viewDidLayoutSubviews];
  vuiChildViewControllers = [(VUIConfirmationDocumentWrapperViewController *)self vuiChildViewControllers];
  lastObject = [vuiChildViewControllers lastObject];

  vuiView = [lastObject vuiView];
  vuiView2 = [(VUIConfirmationDocumentWrapperViewController *)self vuiView];
  [vuiView2 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  selfCopy = self;
  [(VUIConfirmationDocumentWrapperViewController *)selfCopy preferredContentSize];
  v18 = v17;
  v19 = v16;
  v20 = *MEMORY[0x1E695F060];
  v21 = *(MEMORY[0x1E695F060] + 8);
  if (*MEMORY[0x1E695F060] != v17 || v21 != v16)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    topViewController = [(VUIConfirmationDocumentWrapperViewController *)selfCopy topViewController];
  }

  else
  {
    vuiChildViewControllers2 = [(VUIConfirmationDocumentWrapperViewController *)selfCopy vuiChildViewControllers];
    v25 = [vuiChildViewControllers2 count];

    if (!v25)
    {
LABEL_5:
      topViewController = 0;
      goto LABEL_11;
    }

    vuiChildViewControllers3 = [(VUIConfirmationDocumentWrapperViewController *)selfCopy vuiChildViewControllers];
    topViewController = [vuiChildViewControllers3 lastObject];
  }

  [topViewController vuiPreferredContentSize];
  v18 = v27;
  v19 = v28;
LABEL_11:
  if (v20 == v18 && v21 == v19)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      templateViewController = [topViewController templateViewController];
      [templateViewController preferredContentSize];
      v18 = v31;
      v19 = v32;
    }
  }

  if (v20 == v18 && v21 == v19)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v14;
      v18 = v12;
    }
  }

  [(VUIConfirmationDocumentWrapperViewController *)selfCopy setVuiPreferredContentSize:v18, v19];
  [vuiView setFrame:{round(v8 + (v12 - v18) * 0.5), round(v10 + (v14 - v19) * 0.5), v18, v19}];
}

@end