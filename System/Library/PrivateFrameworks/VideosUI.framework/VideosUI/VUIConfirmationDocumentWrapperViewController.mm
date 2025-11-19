@interface VUIConfirmationDocumentWrapperViewController
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (void)vui_loadView;
- (void)vui_viewDidLayoutSubviews;
@end

@implementation VUIConfirmationDocumentWrapperViewController

- (void)vui_loadView
{
  v7.receiver = self;
  v7.super_class = VUIConfirmationDocumentWrapperViewController;
  [(VUIConfirmationDocumentWrapperViewController *)&v7 vui_loadView];
  v3 = [(VUIConfirmationDocumentWrapperViewController *)self vuiView];
  v4 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setVuiBackgroundColor:v4];

  v5 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_tapped];
  v6 = [(VUIConfirmationDocumentWrapperViewController *)self vuiView];
  [v6 addGestureRecognizer:v5];

  [v5 setDelegate:self];
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = [a4 view];
  v6 = [(VUIConfirmationDocumentWrapperViewController *)self view];
  LOBYTE(self) = v5 == v6;

  return self;
}

- (void)vui_viewDidLayoutSubviews
{
  v34.receiver = self;
  v34.super_class = VUIConfirmationDocumentWrapperViewController;
  [(VUIConfirmationDocumentWrapperViewController *)&v34 vui_viewDidLayoutSubviews];
  v3 = [(VUIConfirmationDocumentWrapperViewController *)self vuiChildViewControllers];
  v4 = [v3 lastObject];

  v5 = [v4 vuiView];
  v6 = [(VUIConfirmationDocumentWrapperViewController *)self vuiView];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = self;
  [(VUIConfirmationDocumentWrapperViewController *)v15 preferredContentSize];
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
    v23 = [(VUIConfirmationDocumentWrapperViewController *)v15 topViewController];
  }

  else
  {
    v24 = [(VUIConfirmationDocumentWrapperViewController *)v15 vuiChildViewControllers];
    v25 = [v24 count];

    if (!v25)
    {
LABEL_5:
      v23 = 0;
      goto LABEL_11;
    }

    v26 = [(VUIConfirmationDocumentWrapperViewController *)v15 vuiChildViewControllers];
    v23 = [v26 lastObject];
  }

  [v23 vuiPreferredContentSize];
  v18 = v27;
  v19 = v28;
LABEL_11:
  if (v20 == v18 && v21 == v19)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [v23 templateViewController];
      [v30 preferredContentSize];
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

  [(VUIConfirmationDocumentWrapperViewController *)v15 setVuiPreferredContentSize:v18, v19];
  [v5 setFrame:{round(v8 + (v12 - v18) * 0.5), round(v10 + (v14 - v19) * 0.5), v18, v19}];
}

@end