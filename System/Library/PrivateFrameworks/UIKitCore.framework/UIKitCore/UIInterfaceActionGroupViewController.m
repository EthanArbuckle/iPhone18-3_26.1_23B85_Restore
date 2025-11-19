@interface UIInterfaceActionGroupViewController
- (UIInterfaceActionGroupViewController)initWithActionGroup:(id)a3;
- (UIInterfaceActionVisualStyle)visualStyle;
- (UIInterfaceActionVisualStyleProviding)visualStyleProvider;
- (id)defaultVisualStyleForTraitCollection:(id)a3 presentationStyle:(int64_t)a4;
- (void)interfaceAction:(id)a3 invokeActionHandler:(id)a4 completion:(id)a5;
- (void)loadView;
- (void)reloadVisualStyle;
- (void)setVisualStyleProvider:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation UIInterfaceActionGroupViewController

- (UIInterfaceActionGroupViewController)initWithActionGroup:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = UIInterfaceActionGroupViewController;
  v6 = [(UIViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_actionGroup, a3);
  }

  return v7;
}

- (void)reloadVisualStyle
{
  v2 = [(UIInterfaceActionGroupViewController *)self actionGroupView];
  [v2 reloadVisualStyle];
}

- (void)setVisualStyleProvider:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_visualStyleProvider);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_visualStyleProvider, obj);
    v5 = [(UIInterfaceActionGroupViewController *)self actionGroupView];
    [v5 setVisualStyleProvider:obj];
  }
}

- (UIInterfaceActionVisualStyleProviding)visualStyleProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_visualStyleProvider);

  return WeakRetained;
}

- (UIInterfaceActionVisualStyle)visualStyle
{
  v2 = [(UIInterfaceActionGroupViewController *)self actionGroupView];
  v3 = [v2 visualStyle];

  return v3;
}

- (id)defaultVisualStyleForTraitCollection:(id)a3 presentationStyle:(int64_t)a4
{
  v6 = a3;
  v7 = [(UIInterfaceActionGroupViewController *)self actionGroupView];
  v8 = [v7 defaultVisualStyleForTraitCollection:v6 presentationStyle:a4];

  return v8;
}

- (void)loadView
{
  v3 = [UIInterfaceActionGroupView alloc];
  v4 = [(UIInterfaceActionGroupViewController *)self actionGroup];
  v5 = [(UIInterfaceActionGroupViewController *)self visualStyleProvider];
  v6 = [(UIInterfaceActionGroupView *)v3 _initWithActionGroup:v4 visualStyleProvider:v5 actionHandlerInvocationDelegate:self];
  actionGroupView = self->_actionGroupView;
  self->_actionGroupView = v6;

  [(UIInterfaceActionGroupView *)self->_actionGroupView setSpringLoaded:[(UIInterfaceActionGroupViewController *)self isSpringLoaded]];
  v8 = self->_actionGroupView;

  [(UIViewController *)self setView:v8];
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __98__UIInterfaceActionGroupViewController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_1E70F3B98;
  v9[4] = self;
  v6 = a4;
  v7 = a3;
  [v6 animateAlongsideTransition:v9 completion:0];
  v8.receiver = self;
  v8.super_class = UIInterfaceActionGroupViewController;
  [(UIViewController *)&v8 willTransitionToTraitCollection:v7 withTransitionCoordinator:v6];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = UIInterfaceActionGroupViewController;
  [(UIViewController *)&v6 viewWillAppear:a3];
  actionGroupView = self->_actionGroupView;
  v5 = [(UIViewController *)self transitionCoordinator];
  [(UIInterfaceActionGroupView *)actionGroupView configureForPresentAlongsideTransitionCoordinator:v5];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = UIInterfaceActionGroupViewController;
  [(UIViewController *)&v6 viewWillDisappear:a3];
  actionGroupView = self->_actionGroupView;
  v5 = [(UIViewController *)self transitionCoordinator];
  [(UIInterfaceActionGroupView *)actionGroupView configureForDismissAlongsideTransitionCoordinator:v5];
}

- (void)interfaceAction:(id)a3 invokeActionHandler:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = 1;
  if (v9 && (v9[2](v9, v8, &v11), (v11 & 1) == 0))
  {
    v10[2](v10);
  }

  else
  {
    [(UIViewController *)self dismissViewControllerAnimated:1 completion:v10];
  }
}

@end