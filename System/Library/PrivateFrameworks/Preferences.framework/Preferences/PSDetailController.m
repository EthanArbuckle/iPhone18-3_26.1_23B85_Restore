@interface PSDetailController
- (CGRect)paneFrame;
- (void)dealloc;
- (void)loadPane;
- (void)loadView;
- (void)saveChanges;
- (void)setPane:(id)a3;
- (void)statusBarWillAnimateByHeight:(double)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidUnload;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
- (void)willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
@end

@implementation PSDetailController

- (void)loadView
{
  v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v3 = +[PSEditingPane defaultBackgroundColor];
  [v4 setBackgroundColor:v3];

  [(PSDetailController *)self setView:v4];
}

- (void)viewDidUnload
{
  v4.receiver = self;
  v4.super_class = PSDetailController;
  [(PSDetailController *)&v4 viewDidUnload];
  [(PSEditingPane *)self->_pane setDelegate:0];
  pane = self->_pane;
  self->_pane = 0;
}

- (void)dealloc
{
  [(PSEditingPane *)self->_pane setDelegate:0];
  v3.receiver = self;
  v3.super_class = PSDetailController;
  [(PSDetailController *)&v3 dealloc];
}

- (CGRect)paneFrame
{
  editPaneClass = self->super._specifier->editPaneClass;
  if (!editPaneClass)
  {
    editPaneClass = objc_opt_class();
  }

  v4 = [(PSDetailController *)self view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  if (objc_opt_respondsToSelector())
  {
    [editPaneClass preferredHeight];
    if (v13 > 0.0)
    {
      v12 = v13;
    }
  }

  v14 = v6;
  v15 = v8;
  v16 = v10;
  v17 = v12;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  v7.receiver = self;
  v7.super_class = PSDetailController;
  [PSDetailController willRotateToInterfaceOrientation:sel_willRotateToInterfaceOrientation_duration_ duration:?];
  [(PSEditingPane *)self->_pane willRotateToInterfaceOrientation:a3 duration:a4];
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  v12.receiver = self;
  v12.super_class = PSDetailController;
  [PSDetailController willAnimateRotationToInterfaceOrientation:sel_willAnimateRotationToInterfaceOrientation_duration_ duration:?];
  pane = self->_pane;
  [(PSDetailController *)self paneFrame];
  [(PSEditingPane *)pane setFrame:?];
  v9 = [(PSEditingPane *)self->_pane methodForSelector:a2];
  v10 = [PSEditingPane instanceMethodForSelector:a2];
  v11 = self->_pane;
  if (v9 == v10)
  {
    [(PSEditingPane *)v11 layoutBelowIfNeeded];
  }

  else
  {
    [(PSEditingPane *)v11 willAnimateRotationToInterfaceOrientation:a3 duration:a4];
  }
}

- (void)setPane:(id)a3
{
  v5 = a3;
  pane = self->_pane;
  v12 = v5;
  if (pane != v5)
  {
    if (pane)
    {
      v7 = [(PSEditingPane *)pane childViewControllerForHostingViewController];
      v8 = v7;
      if (v7)
      {
        [v7 willMoveToParentViewController:0];
        [v8 removeFromParentViewController];
      }

      [(PSEditingPane *)self->_pane setViewController:0];
      [(PSEditingPane *)self->_pane removeFromSuperview];
    }

    objc_storeStrong(&self->_pane, a3);
    pane = self->_pane;
    if (pane)
    {
      v9 = [(PSEditingPane *)pane childViewControllerForHostingViewController];
      if (v9)
      {
        [(PSViewController *)self addChildViewController:v9];
        v10 = [(PSDetailController *)self view];
        [v10 addSubview:self->_pane];

        [v9 didMoveToParentViewController:self];
      }

      else
      {
        v11 = [(PSDetailController *)self view];
        [v11 addSubview:self->_pane];
      }

      [(PSEditingPane *)self->_pane setViewController:self];
      if ([(PSEditingPane *)self->_pane shouldInsetContent])
      {
        [(PSEditingPane *)self->_pane insetContent];
      }

      pane = self->_pane;
    }
  }

  if ([(PSEditingPane *)pane requiresKeyboard])
  {
    [(PSEditingPane *)self->_pane becomeFirstResponder];
  }
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = PSDetailController;
  [(PSDetailController *)&v6 viewDidLayoutSubviews];
  pane = self->_pane;
  if (pane)
  {
    if ([(PSEditingPane *)pane shouldInsetContent])
    {
      v4 = self->_pane;
      v5 = [(PSDetailController *)self view];
      [v5 bounds];
      [(PSEditingPane *)v4 layoutInsetContent:?];
    }
  }
}

- (void)loadPane
{
  if (!self->_pane)
  {
    editPaneClass = self->super._specifier->editPaneClass;
    if (!editPaneClass)
    {
      editPaneClass = objc_opt_class();
    }

    v5 = [editPaneClass alloc];
    [(PSDetailController *)self paneFrame];
    v8 = [v5 initWithFrame:?];
    [v8 setDelegate:self];
    [v8 setPreferenceSpecifier:self->super._specifier];
    specifier = self->super._specifier;
    if (specifier->getter)
    {
      v7 = [(PSSpecifier *)specifier performGetter];
      [v8 setPreferenceValue:v7];
    }

    [(PSDetailController *)self setPane:v8];
  }
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PSDetailController;
  [(PSViewController *)&v4 viewDidLoad];
  v3 = [(PSSpecifier *)self->super._specifier name];
  [(PSDetailController *)self setTitle:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PSDetailController;
  [(PSViewController *)&v4 viewWillAppear:a3];
  [(PSDetailController *)self loadPane];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PSDetailController;
  [(PSViewController *)&v4 viewDidAppear:a3];
  [(PSEditingPane *)self->_pane viewDidBecomeVisible];
}

- (void)saveChanges
{
  v3 = [(PSDetailController *)self pane];
  v6 = [v3 preferenceSpecifier];

  v4 = [(PSDetailController *)self pane];
  v5 = [v4 preferenceValue];

  if (v5)
  {
    [v6 performSetterWithValue:v5];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PSDetailController;
  [(PSViewController *)&v6 viewWillDisappear:a3];
  v4 = [(PSDetailController *)self pane];
  v5 = [v4 handlesDoneButton];

  if ((v5 & 1) == 0)
  {
    [(PSDetailController *)self saveChanges];
  }
}

- (void)statusBarWillAnimateByHeight:(double)a3
{
  [(PSEditingPane *)self->_pane frame];
  v9[1] = 3221225472;
  v9[0] = MEMORY[0x1E69E9820];
  v9[2] = __51__PSDetailController_statusBarWillAnimateByHeight___block_invoke;
  v9[3] = &unk_1E71DC788;
  v9[4] = self;
  v9[5] = v5;
  v9[6] = v6;
  v9[7] = v7;
  *&v9[8] = v8 + a3;
  [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v9 options:0 animations:0.35 completion:0.0];
}

uint64_t __51__PSDetailController_statusBarWillAnimateByHeight___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1056) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(*(a1 + 32) + 1056);

  return [v2 layoutIfNeeded];
}

@end