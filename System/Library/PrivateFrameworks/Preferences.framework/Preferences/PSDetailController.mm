@interface PSDetailController
- (CGRect)paneFrame;
- (void)dealloc;
- (void)loadPane;
- (void)loadView;
- (void)saveChanges;
- (void)setPane:(id)pane;
- (void)statusBarWillAnimateByHeight:(double)height;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidUnload;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
- (void)willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
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

  view = [(PSDetailController *)self view];
  [view bounds];
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

- (void)willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  v7.receiver = self;
  v7.super_class = PSDetailController;
  [PSDetailController willRotateToInterfaceOrientation:sel_willRotateToInterfaceOrientation_duration_ duration:?];
  [(PSEditingPane *)self->_pane willRotateToInterfaceOrientation:orientation duration:duration];
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration
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
    [(PSEditingPane *)v11 willAnimateRotationToInterfaceOrientation:orientation duration:duration];
  }
}

- (void)setPane:(id)pane
{
  paneCopy = pane;
  pane = self->_pane;
  v12 = paneCopy;
  if (pane != paneCopy)
  {
    if (pane)
    {
      childViewControllerForHostingViewController = [(PSEditingPane *)pane childViewControllerForHostingViewController];
      v8 = childViewControllerForHostingViewController;
      if (childViewControllerForHostingViewController)
      {
        [childViewControllerForHostingViewController willMoveToParentViewController:0];
        [v8 removeFromParentViewController];
      }

      [(PSEditingPane *)self->_pane setViewController:0];
      [(PSEditingPane *)self->_pane removeFromSuperview];
    }

    objc_storeStrong(&self->_pane, pane);
    pane = self->_pane;
    if (pane)
    {
      childViewControllerForHostingViewController2 = [(PSEditingPane *)pane childViewControllerForHostingViewController];
      if (childViewControllerForHostingViewController2)
      {
        [(PSViewController *)self addChildViewController:childViewControllerForHostingViewController2];
        view = [(PSDetailController *)self view];
        [view addSubview:self->_pane];

        [childViewControllerForHostingViewController2 didMoveToParentViewController:self];
      }

      else
      {
        view2 = [(PSDetailController *)self view];
        [view2 addSubview:self->_pane];
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
      view = [(PSDetailController *)self view];
      [view bounds];
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
      performGetter = [(PSSpecifier *)specifier performGetter];
      [v8 setPreferenceValue:performGetter];
    }

    [(PSDetailController *)self setPane:v8];
  }
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PSDetailController;
  [(PSViewController *)&v4 viewDidLoad];
  name = [(PSSpecifier *)self->super._specifier name];
  [(PSDetailController *)self setTitle:name];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PSDetailController;
  [(PSViewController *)&v4 viewWillAppear:appear];
  [(PSDetailController *)self loadPane];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PSDetailController;
  [(PSViewController *)&v4 viewDidAppear:appear];
  [(PSEditingPane *)self->_pane viewDidBecomeVisible];
}

- (void)saveChanges
{
  pane = [(PSDetailController *)self pane];
  preferenceSpecifier = [pane preferenceSpecifier];

  pane2 = [(PSDetailController *)self pane];
  preferenceValue = [pane2 preferenceValue];

  if (preferenceValue)
  {
    [preferenceSpecifier performSetterWithValue:preferenceValue];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = PSDetailController;
  [(PSViewController *)&v6 viewWillDisappear:disappear];
  pane = [(PSDetailController *)self pane];
  handlesDoneButton = [pane handlesDoneButton];

  if ((handlesDoneButton & 1) == 0)
  {
    [(PSDetailController *)self saveChanges];
  }
}

- (void)statusBarWillAnimateByHeight:(double)height
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
  *&v9[8] = v8 + height;
  [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v9 options:0 animations:0.35 completion:0.0];
}

uint64_t __51__PSDetailController_statusBarWillAnimateByHeight___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1056) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(*(a1 + 32) + 1056);

  return [v2 layoutIfNeeded];
}

@end