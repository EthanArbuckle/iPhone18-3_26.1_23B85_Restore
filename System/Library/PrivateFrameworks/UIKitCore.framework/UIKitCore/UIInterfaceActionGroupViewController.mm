@interface UIInterfaceActionGroupViewController
- (UIInterfaceActionGroupViewController)initWithActionGroup:(id)group;
- (UIInterfaceActionVisualStyle)visualStyle;
- (UIInterfaceActionVisualStyleProviding)visualStyleProvider;
- (id)defaultVisualStyleForTraitCollection:(id)collection presentationStyle:(int64_t)style;
- (void)interfaceAction:(id)action invokeActionHandler:(id)handler completion:(id)completion;
- (void)loadView;
- (void)reloadVisualStyle;
- (void)setVisualStyleProvider:(id)provider;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation UIInterfaceActionGroupViewController

- (UIInterfaceActionGroupViewController)initWithActionGroup:(id)group
{
  groupCopy = group;
  v9.receiver = self;
  v9.super_class = UIInterfaceActionGroupViewController;
  v6 = [(UIViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_actionGroup, group);
  }

  return v7;
}

- (void)reloadVisualStyle
{
  actionGroupView = [(UIInterfaceActionGroupViewController *)self actionGroupView];
  [actionGroupView reloadVisualStyle];
}

- (void)setVisualStyleProvider:(id)provider
{
  obj = provider;
  WeakRetained = objc_loadWeakRetained(&self->_visualStyleProvider);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_visualStyleProvider, obj);
    actionGroupView = [(UIInterfaceActionGroupViewController *)self actionGroupView];
    [actionGroupView setVisualStyleProvider:obj];
  }
}

- (UIInterfaceActionVisualStyleProviding)visualStyleProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_visualStyleProvider);

  return WeakRetained;
}

- (UIInterfaceActionVisualStyle)visualStyle
{
  actionGroupView = [(UIInterfaceActionGroupViewController *)self actionGroupView];
  visualStyle = [actionGroupView visualStyle];

  return visualStyle;
}

- (id)defaultVisualStyleForTraitCollection:(id)collection presentationStyle:(int64_t)style
{
  collectionCopy = collection;
  actionGroupView = [(UIInterfaceActionGroupViewController *)self actionGroupView];
  v8 = [actionGroupView defaultVisualStyleForTraitCollection:collectionCopy presentationStyle:style];

  return v8;
}

- (void)loadView
{
  v3 = [UIInterfaceActionGroupView alloc];
  actionGroup = [(UIInterfaceActionGroupViewController *)self actionGroup];
  visualStyleProvider = [(UIInterfaceActionGroupViewController *)self visualStyleProvider];
  v6 = [(UIInterfaceActionGroupView *)v3 _initWithActionGroup:actionGroup visualStyleProvider:visualStyleProvider actionHandlerInvocationDelegate:self];
  actionGroupView = self->_actionGroupView;
  self->_actionGroupView = v6;

  [(UIInterfaceActionGroupView *)self->_actionGroupView setSpringLoaded:[(UIInterfaceActionGroupViewController *)self isSpringLoaded]];
  v8 = self->_actionGroupView;

  [(UIViewController *)self setView:v8];
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __98__UIInterfaceActionGroupViewController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_1E70F3B98;
  v9[4] = self;
  coordinatorCopy = coordinator;
  collectionCopy = collection;
  [coordinatorCopy animateAlongsideTransition:v9 completion:0];
  v8.receiver = self;
  v8.super_class = UIInterfaceActionGroupViewController;
  [(UIViewController *)&v8 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = UIInterfaceActionGroupViewController;
  [(UIViewController *)&v6 viewWillAppear:appear];
  actionGroupView = self->_actionGroupView;
  transitionCoordinator = [(UIViewController *)self transitionCoordinator];
  [(UIInterfaceActionGroupView *)actionGroupView configureForPresentAlongsideTransitionCoordinator:transitionCoordinator];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = UIInterfaceActionGroupViewController;
  [(UIViewController *)&v6 viewWillDisappear:disappear];
  actionGroupView = self->_actionGroupView;
  transitionCoordinator = [(UIViewController *)self transitionCoordinator];
  [(UIInterfaceActionGroupView *)actionGroupView configureForDismissAlongsideTransitionCoordinator:transitionCoordinator];
}

- (void)interfaceAction:(id)action invokeActionHandler:(id)handler completion:(id)completion
{
  actionCopy = action;
  handlerCopy = handler;
  completionCopy = completion;
  v11 = 1;
  if (handlerCopy && (handlerCopy[2](handlerCopy, actionCopy, &v11), (v11 & 1) == 0))
  {
    completionCopy[2](completionCopy);
  }

  else
  {
    [(UIViewController *)self dismissViewControllerAnimated:1 completion:completionCopy];
  }
}

@end