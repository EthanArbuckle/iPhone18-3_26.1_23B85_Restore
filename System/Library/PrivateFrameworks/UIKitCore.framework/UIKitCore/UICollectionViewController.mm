@interface UICollectionViewController
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (UICollectionView)collectionView;
- (UICollectionViewController)initWithCoder:(NSCoder *)coder;
- (UICollectionViewController)initWithCollectionViewLayout:(UICollectionViewLayout *)layout;
- (UICollectionViewController)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil;
- (id)_animatorForOperation:(int64_t)operation fromViewController:(id)controller toViewController:(id)viewController;
- (id)_newCollectionViewWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (id)_shim_contentScrollView;
- (id)_wrappingView;
- (id)contentScrollViewForEdge:(unint64_t)edge;
- (id)dataSource;
- (id)previewViewControllerForLocation:(CGPoint)location inSourceView:(id)view;
- (id)previewingContext:(id)context viewControllerForLocation:(CGPoint)location;
- (void)__viewDidAppear:(BOOL)appear;
- (void)__viewWillAppear:(BOOL)appear;
- (void)_clearSharedView;
- (void)_handleReorderingGesture:(id)gesture;
- (void)_installReorderingGestureIfNecessary;
- (void)_setNeedsUpdateContentUnavailableConfiguration;
- (void)_setUseLayoutToLayoutNavigationTransitions:(BOOL)transitions withCheck:(BOOL)check;
- (void)_updateCollectionViewLayoutAndDelegate:(id)delegate;
- (void)collectionView:(id)view didBeginMultipleSelectionInteractionAtIndexPath:(id)path;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)loadView;
- (void)previewingContext:(id)context commitViewController:(id)controller;
- (void)setCollectionView:(UICollectionView *)collectionView;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setInstallsStandardGestureForInteractiveMovement:(BOOL)installsStandardGestureForInteractiveMovement;
- (void)setView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillUnload;
- (void)willPresentPreviewViewController:(id)controller forLocation:(CGPoint)location inSourceView:(id)view;
@end

@implementation UICollectionViewController

- (UICollectionView)collectionView
{
  [(UIViewController *)self loadViewIfRequired];
  collectionView = self->_collectionView;

  return collectionView;
}

- (id)_wrappingView
{
  _existingView = [(UIViewController *)self _existingView];
  if (!_existingView)
  {
    if (dyld_program_sdk_at_least())
    {
      _window = [(UIViewController *)self _window];
      if ([UIApp _appAdoptsUISceneLifecycle] && (_window || dyld_program_sdk_at_least()))
      {
        [_window _referenceFrameFromSceneUsingScreenBounds:1];
        v6 = v5;
        v8 = v7;
        v10 = v9;
        v12 = v11;
      }

      else
      {
        _screen = [(UIViewController *)self _screen];
        [_screen _applicationFrameForInterfaceOrientation:objc_msgSend(UIApp usingStatusbarHeight:"_defaultSceneInterfaceOrientationReturningUnknownForNilScene:" ignoreStatusBar:{0), 1, 0.0}];
        v6 = v19;
        v8 = v20;
        v10 = v21;
        v12 = v22;
      }

      v13 = [UICollectionViewControllerWrapperView alloc];
    }

    else
    {
      v13 = [UICollectionViewControllerWrapperView alloc];
      _window = [(UIViewController *)self _screen];
      [_window _applicationFrame];
      v6 = v14;
      v8 = v15;
      v10 = v16;
      v12 = v17;
    }

    _existingView = [(UIView *)v13 initWithFrame:v6, v8, v10, v12];

    [(UIView *)_existingView setAutoresizingMask:18];
  }

  return _existingView;
}

- (void)loadView
{
  _wrappingView = [(UICollectionViewController *)self _wrappingView];
  _usesSharedView = [(UIViewController *)self _usesSharedView];
  nibName = [(UIViewController *)self nibName];
  v6 = nibName;
  if (!_usesSharedView)
  {
    if (nibName)
    {
      v47.receiver = self;
      v47.super_class = UICollectionViewController;
      [(UIViewController *)&v47 loadView];
      view = [(UIViewController *)self view];
      collectionView = self->_collectionView;
      self->_collectionView = view;

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        storyboardIdentifier = [(UIViewController *)self storyboardIdentifier];
        if (storyboardIdentifier)
        {
          storyboard = [(UIViewController *)self storyboard];
          name = [storyboard name];
          v16 = name;
          if (name)
          {
            v17 = name;
          }

          else
          {
            v17 = [storyboard description];
          }

          v27 = v17;

          [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"%s instantiated view controller with identifier %@ from storyboard %@, but didn't get a UICollectionView.", "-[UICollectionViewController loadView]", storyboardIdentifier, v27}];
        }

        else
        {
          [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"%s loaded the %@ nib but didn't get a UICollectionView.", "-[UICollectionViewController loadView]", v6}];
        }
      }

      delegate = [(UIScrollView *)self->_collectionView delegate];

      if (!delegate)
      {
        [(UICollectionView *)self->_collectionView setDelegate:self];
      }

      dataSource = [(UICollectionView *)self->_collectionView dataSource];

      if (!dataSource)
      {
        [(UICollectionView *)self->_collectionView setDataSource:self];
      }

      if (!self->_layout)
      {
        collectionViewLayout = [(UICollectionView *)self->_collectionView collectionViewLayout];
        layout = self->_layout;
        self->_layout = collectionViewLayout;
      }

      goto LABEL_31;
    }

    if ([UIApp _appAdoptsUISceneLifecycle])
    {
      _window = [(UIViewController *)self _window];
      if (!_window)
      {
        mainScreen = [objc_opt_self() mainScreen];
        [mainScreen _mainSceneFrame];
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v40 = v39;

        _screen = 0;
LABEL_30:

        v45 = [(UICollectionViewController *)self _newCollectionViewWithFrame:self->_layout collectionViewLayout:v34, v36, v38, v40];
        v46 = self->_collectionView;
        self->_collectionView = v45;

        [(UIView *)self->_collectionView setAutoresizingMask:18];
        [(UICollectionView *)self->_collectionView setDelegate:self];
        [(UICollectionView *)self->_collectionView setDataSource:self];
LABEL_31:
        [(UICollectionViewController *)self setView:_wrappingView];
        [_wrappingView bounds];
        [(UICollectionView *)self->_collectionView setFrame:?];
        [_wrappingView addSubview:self->_collectionView];

        goto LABEL_32;
      }

      _screen = _window;
      v20 = __UIStatusBarManagerForWindow(_window);
      isStatusBarHidden = [v20 isStatusBarHidden];

      if (isStatusBarHidden)
      {
        v22 = 1;
      }

      else
      {
        v41 = __UIStatusBarManagerForWindow(_screen);
        windowScene = [_screen windowScene];
        [v41 defaultStatusBarHeightInOrientation:{objc_msgSend(windowScene, "_interfaceOrientation")}];
        v44 = v43;

        v22 = v44 == 0.0;
      }

      [_screen _referenceFrameFromSceneUsingScreenBounds:v22];
    }

    else
    {
      _screen = [(UIViewController *)self _screen];
      [_screen _applicationFrame];
    }

    v34 = v23;
    v36 = v24;
    v38 = v25;
    v40 = v26;
    goto LABEL_30;
  }

  if (nibName)
  {
    v7 = self->_layout;

    if (!v7)
    {
      v48.receiver = self;
      v48.super_class = UICollectionViewController;
      [(UIViewController *)&v48 loadView];
      view2 = [(UIViewController *)self view];
      collectionViewLayout2 = [view2 collectionViewLayout];
      v10 = self->_layout;
      self->_layout = collectionViewLayout2;
    }
  }

  [(UICollectionViewController *)self setView:_wrappingView];
LABEL_32:
}

- (void)_setNeedsUpdateContentUnavailableConfiguration
{
  v5.receiver = self;
  v5.super_class = UICollectionViewController;
  [(UIViewController *)&v5 _setNeedsUpdateContentUnavailableConfiguration];
  v3 = self->_collectionView;
  v4 = v3;
  if (v3 && (*(&self->super._viewControllerFlags + 4) & 0x10) != 0)
  {
    [(UIScrollView *)v3 setNeedsLayout];
  }
}

- (void)_installReorderingGestureIfNecessary
{
  if ((*&self->_collectionViewControllerFlags & 4) != 0 && !self->_reorderingGesture)
  {
    window = [(UIView *)self->_collectionView window];
    if (window)
    {
      v4 = window;
      _dataSourceSupportsReordering = [(UICollectionView *)self->_collectionView _dataSourceSupportsReordering];

      if (_dataSourceSupportsReordering)
      {
        v6 = [[_UICollectionViewLegacyReorderingGestureRecognizer alloc] initWithTarget:self action:sel__handleReorderingGesture_];
        reorderingGesture = self->_reorderingGesture;
        self->_reorderingGesture = &v6->super;

        traitCollection = [(UIViewController *)self traitCollection];
        userInterfaceIdiom = [traitCollection userInterfaceIdiom];

        if (userInterfaceIdiom == 6)
        {
          [(UIGestureRecognizer *)self->_reorderingGesture _setKeepTouchesOnContinuation:0];
        }

        [(UIGestureRecognizer *)self->_reorderingGesture setDelegate:self];
        collectionView = self->_collectionView;
        v11 = self->_reorderingGesture;

        [(UIView *)collectionView addGestureRecognizer:v11];
      }
    }
  }
}

- (void)dealloc
{
  if (self->_keyboardSupport)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self->_keyboardSupport];
  }

  v4.receiver = self;
  v4.super_class = UICollectionViewController;
  [(UIViewController *)&v4 dealloc];
}

- (UICollectionViewController)initWithCollectionViewLayout:(UICollectionViewLayout *)layout
{
  v5 = layout;
  v9.receiver = self;
  v9.super_class = UICollectionViewController;
  v6 = [(UIViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_layout, layout);
    *&v7->_collectionViewControllerFlags |= 1u;
    *&v7->_collectionViewControllerFlags |= 4u;
  }

  return v7;
}

- (UICollectionViewController)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  v5.receiver = self;
  v5.super_class = UICollectionViewController;
  return [(UIViewController *)&v5 initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
}

- (UICollectionViewController)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v9.receiver = self;
  v9.super_class = UICollectionViewController;
  v5 = [(UIViewController *)&v9 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    *&v5->_collectionViewControllerFlags |= 1u;
    *&v5->_collectionViewControllerFlags |= 4u;
    if ([(NSCoder *)v4 containsValueForKey:@"UIClearsSelectionOnViewWillAppear"])
    {
      *&v6->_collectionViewControllerFlags = *&v6->_collectionViewControllerFlags & 0xFE | [(NSCoder *)v4 decodeBoolForKey:@"UIClearsSelectionOnViewWillAppear"];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"UIInstallsStandardReorderingGesture"])
    {
      if ([(NSCoder *)v4 decodeBoolForKey:@"UIInstallsStandardReorderingGesture"])
      {
        v7 = 4;
      }

      else
      {
        v7 = 0;
      }

      *&v6->_collectionViewControllerFlags = *&v6->_collectionViewControllerFlags & 0xFB | v7;
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = UICollectionViewController;
  [(UIViewController *)&v6 encodeWithCoder:coderCopy];
  collectionViewControllerFlags = self->_collectionViewControllerFlags;
  if ((collectionViewControllerFlags & 1) == 0)
  {
    [coderCopy encodeBool:0 forKey:@"UIClearsSelectionOnViewWillAppear"];
    collectionViewControllerFlags = self->_collectionViewControllerFlags;
  }

  if ((collectionViewControllerFlags & 4) == 0)
  {
    [coderCopy encodeBool:0 forKey:@"UIInstallsStandardReorderingGesture"];
  }
}

- (void)setView:(id)view
{
  viewCopy = view;
  if (!viewCopy)
  {
    collectionView = self->_collectionView;
    self->_collectionView = 0;
  }

  v6.receiver = self;
  v6.super_class = UICollectionViewController;
  [(UIViewController *)&v6 setView:viewCopy];
}

- (void)_clearSharedView
{
  navigationController = [(UIViewController *)self navigationController];

  if (!navigationController)
  {
    [(UIViewController *)self _setUsesSharedView:0];

    [(UICollectionViewController *)self setView:0];
  }
}

- (void)viewWillUnload
{
  v5.receiver = self;
  v5.super_class = UICollectionViewController;
  [(UIViewController *)&v5 viewWillUnload];
  collectionView = [(UICollectionViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];

  if (collectionViewLayout != self->_layout)
  {
    objc_storeStrong(&self->_layout, collectionViewLayout);
  }
}

- (void)_updateCollectionViewLayoutAndDelegate:(id)delegate
{
  delegateCopy = delegate;
  transitionCoordinator = [(UIViewController *)self transitionCoordinator];
  v5 = transitionCoordinator;
  if (transitionCoordinator)
  {
    v6 = [transitionCoordinator viewControllerForKey:@"UITransitionContextFromViewController"];
    selfCopy = self;
    _uiCollectionView = [v6 _uiCollectionView];
    _uiCollectionView2 = [(UICollectionViewController *)selfCopy _uiCollectionView];

    if (_uiCollectionView != _uiCollectionView2)
    {
      goto LABEL_3;
    }

    if ([(UIViewController *)selfCopy _usesSharedView])
    {

      goto LABEL_8;
    }

    if ([v6 _usesSharedView])
    {
      navigationController = [v6 navigationController];
      lastOperation = [navigationController lastOperation];

      if (lastOperation != 1)
      {
        goto LABEL_8;
      }
    }

    else
    {
LABEL_3:
    }
  }

  [delegateCopy setCollectionViewLayout:self->_layout];
  delegate = [delegateCopy delegate];

  if (!delegate)
  {
    [delegateCopy setDelegate:self];
  }

LABEL_8:
}

- (void)__viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v9.receiver = self;
  v9.super_class = UICollectionViewController;
  [(UIViewController *)&v9 __viewWillAppear:?];
  collectionView = [(UICollectionViewController *)self collectionView];
  _existingView = [(UIViewController *)self _existingView];
  if ([_existingView isMemberOfClass:objc_opt_class()] && -[UICollectionViewController useLayoutToLayoutNavigationTransitions](self, "useLayoutToLayoutNavigationTransitions"))
  {
    [(UICollectionViewController *)self _updateCollectionViewLayoutAndDelegate:collectionView];
  }

  if ([collectionView numberOfSections])
  {
    if ((*&self->_collectionViewControllerFlags & 1) != 0 && ([collectionView allowsMultipleSelection] & 1) == 0 && (*&self->_collectionViewControllerFlags & 2) == 0)
    {
      if (dyld_program_sdk_at_least())
      {
        indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
        transitionCoordinator = [(UIViewController *)self transitionCoordinator];
        [collectionView _deselectItemsAtIndexPaths:indexPathsForSelectedItems animated:appearCopy transitionCoordinator:transitionCoordinator];
      }

      else
      {
        [collectionView _deselectAllAnimated:1 notifyDelegate:0];
      }
    }
  }

  else
  {
    [collectionView reloadData];
  }
}

- (void)__viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = UICollectionViewController;
  [(UIViewController *)&v4 __viewDidAppear:appear];
  [(UICollectionViewController *)self _installReorderingGestureIfNecessary];
}

- (void)viewWillAppear:(BOOL)appear
{
  v11.receiver = self;
  v11.super_class = UICollectionViewController;
  [(UIViewController *)&v11 viewWillAppear:appear];
  if (dyld_program_sdk_at_least())
  {
    keyboardSupport = self->_keyboardSupport;
    if (!keyboardSupport)
    {
      v5 = [[UIAutoRespondingScrollViewControllerKeyboardSupport alloc] initWithViewController:self];
      v6 = self->_keyboardSupport;
      self->_keyboardSupport = v5;

      keyboardSupport = self->_keyboardSupport;
    }

    if (![(UIAutoRespondingScrollViewControllerKeyboardSupport *)keyboardSupport registeredForNotifications])
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      _screen = [(UIViewController *)self _screen];
      [defaultCenter addObserver:self->_keyboardSupport selector:sel__keyboardWillShow_ name:@"UIKeyboardPrivateWillShowNotification" object:_screen];
      [defaultCenter addObserver:self->_keyboardSupport selector:sel__keyboardWillHide_ name:@"UIKeyboardPrivateWillHideNotification" object:_screen];
      [defaultCenter addObserver:self->_keyboardSupport selector:sel__keyboardDidShow_ name:@"UIKeyboardPrivateDidShowNotification" object:_screen];
      [defaultCenter addObserver:self->_keyboardSupport selector:sel__keyboardDidHide_ name:@"UIKeyboardPrivateDidHideNotification" object:_screen];
      [defaultCenter addObserver:self->_keyboardSupport selector:sel__keyboardDidChangeFrame_ name:@"UIKeyboardPrivateDidChangeFrameNotification" object:_screen];
      [(UIAutoRespondingScrollViewControllerKeyboardSupport *)self->_keyboardSupport setRegisteredForNotifications:1];
    }

    [(UIAutoRespondingScrollViewControllerKeyboardSupport *)self->_keyboardSupport setViewIsDisappearing:0];
    if (![(UIViewController *)self _isInViewControllerThatHandlesKeyboardAvoidance])
    {
      [(UIAutoRespondingScrollViewControllerKeyboardSupport *)self->_keyboardSupport adjustmentForKeyboard];
      v10 = v9;
      [(UICollectionView *)self->_collectionView _adjustForAutomaticKeyboardInfo:0 animated:0 lastAdjustment:&v10];
      [(UIAutoRespondingScrollViewControllerKeyboardSupport *)self->_keyboardSupport setAdjustmentForKeyboard:v10];
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = UICollectionViewController;
  [(UIViewController *)&v4 viewDidAppear:appear];
  [(UICollectionViewController *)self _installReorderingGestureIfNecessary];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (self->_keyboardSupport)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self->_keyboardSupport];

    [(UIAutoRespondingScrollViewControllerKeyboardSupport *)self->_keyboardSupport setViewIsDisappearing:1];
    [(UIAutoRespondingScrollViewControllerKeyboardSupport *)self->_keyboardSupport setRegisteredForNotifications:0];
  }

  v6.receiver = self;
  v6.super_class = UICollectionViewController;
  [(UIViewController *)&v6 viewWillDisappear:disappearCopy];
}

- (id)_shim_contentScrollView
{
  if ((_UIBarsApplyChromelessEverywhere() & 1) != 0 || _UIViewControllerUseContentScrollViewAPI())
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewController.m" lineNumber:430 description:@"Unexpected code path for compatibility code only"];
  }

  _existingView = [(UIViewController *)self _existingView];
  if (_existingView)
  {
    collectionView = [(UICollectionViewController *)self collectionView];
  }

  else
  {
    collectionView = 0;
  }

  return collectionView;
}

- (id)contentScrollViewForEdge:(unint64_t)edge
{
  v7.receiver = self;
  v7.super_class = UICollectionViewController;
  collectionView = [(UIViewController *)&v7 contentScrollViewForEdge:edge];
  if (!collectionView)
  {
    _existingView = [(UIViewController *)self _existingView];
    if (_existingView)
    {
      collectionView = [(UICollectionViewController *)self collectionView];
    }

    else
    {
      collectionView = 0;
    }
  }

  return collectionView;
}

- (void)setCollectionView:(UICollectionView *)collectionView
{
  v5 = collectionView;
  v6 = self->_collectionView;
  if (v6 != v5)
  {
    v12 = v5;
    dataSource = [(UICollectionView *)v6 dataSource];

    if (dataSource == self)
    {
      [(UICollectionView *)self->_collectionView setDataSource:0];
    }

    delegate = [(UIScrollView *)self->_collectionView delegate];

    if (delegate == self)
    {
      [(UICollectionView *)self->_collectionView setDelegate:0];
    }

    [(UIScrollView *)self->_collectionView removeFromSuperview];
    [(UIView *)v12 setAutoresizingMask:18];
    _wrappingView = [(UICollectionViewController *)self _wrappingView];
    [(UICollectionViewController *)self setView:_wrappingView];
    [_wrappingView bounds];
    [(UICollectionView *)v12 setFrame:?];
    [_wrappingView addSubview:v12];
    objc_storeStrong(&self->_collectionView, collectionView);
    dataSource2 = [(UICollectionView *)v12 dataSource];

    if (!dataSource2)
    {
      [(UICollectionView *)v12 setDataSource:self];
    }

    delegate2 = [(UIScrollView *)v12 delegate];

    if (!delegate2)
    {
      [(UICollectionView *)v12 setDelegate:self];
    }

    v5 = v12;
  }
}

- (id)dataSource
{
  if (dyld_program_sdk_at_least() && (-[UICollectionViewController collectionView](self, "collectionView"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 _isConnectedToDiffableDataSource], v3, (v4 & 1) != 0))
  {
    collectionView = [(UICollectionViewController *)self collectionView];
    selfCopy = [collectionView dataSource];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (void)collectionView:(id)view didBeginMultipleSelectionInteractionAtIndexPath:(id)path
{
  viewCopy = view;
  if (dyld_program_sdk_at_least() && [viewCopy isEditing])
  {
    [(UICollectionViewController *)self setEditing:1 animated:1];
  }
}

- (id)_newCollectionViewWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  layoutCopy = layout;
  height = [[UICollectionView alloc] initWithFrame:layoutCopy collectionViewLayout:x, y, width, height];

  return height;
}

- (id)_animatorForOperation:(int64_t)operation fromViewController:(id)controller toViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([controllerCopy collectionView], v10 = objc_claimAutoreleasedReturnValue(), collectionView = self->_collectionView, v10, v10 == collectionView))
  {
    v12 = [_UICollectionViewControllerLayoutToLayoutTransition transitionForOperation:operation fromViewController:controllerCopy toViewController:viewControllerCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_setUseLayoutToLayoutNavigationTransitions:(BOOL)transitions withCheck:(BOOL)check
{
  transitionsCopy = transitions;
  if (!check)
  {
    [(UICollectionViewController *)self useLayoutToLayoutNavigationTransitions];
    goto LABEL_9;
  }

  parentViewController = [(UIViewController *)self parentViewController];
  if (parentViewController)
  {
  }

  else
  {
    _existingView = [(UIViewController *)self _existingView];
    window = [_existingView window];

    if (!window)
    {
      goto LABEL_7;
    }
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Attempt to change the layout to layout transitions property of %@ which is a child view controller or in the window hierarchy", self}];
LABEL_7:
  if ([(UICollectionViewController *)self useLayoutToLayoutNavigationTransitions]!= transitionsCopy)
  {
    [(UICollectionViewController *)self setView:0];
  }

LABEL_9:
  [(UIViewController *)self _setUsesSharedView:transitionsCopy];
  if (transitionsCopy)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  *&self->_collectionViewControllerFlags = *&self->_collectionViewControllerFlags & 0xFD | v9;
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  collectionView = [(UICollectionViewController *)self collectionView];
  canBeEdited = [collectionView canBeEdited];

  if (canBeEdited)
  {
    if (animatedCopy)
    {
      collectionView2 = [(UICollectionViewController *)self collectionView];
      [collectionView2 setEditing:editingCopy];
    }

    else
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __50__UICollectionViewController_setEditing_animated___block_invoke;
      v11[3] = &unk_1E70F35E0;
      v11[4] = self;
      v12 = editingCopy;
      [UIView performWithoutAnimation:v11];
    }
  }

  v10.receiver = self;
  v10.super_class = UICollectionViewController;
  [(UIViewController *)&v10 setEditing:editingCopy animated:animatedCopy];
}

void __50__UICollectionViewController_setEditing_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  [v2 setEditing:*(a1 + 40)];
}

- (id)previewingContext:(id)context viewControllerForLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  contextCopy = context;
  if ([(UICollectionViewController *)self _shouldRespondToPreviewingMethods])
  {
    sourceView = [contextCopy sourceView];
    v10 = [(UICollectionViewController *)self previewViewControllerForLocation:sourceView inSourceView:x, y];
  }

  else
  {
    [MEMORY[0x1E69E58C0] doesNotRecognizeSelector:a2];
    v10 = 0;
  }

  return v10;
}

- (void)previewingContext:(id)context commitViewController:(id)controller
{
  controllerCopy = controller;
  if ([(UICollectionViewController *)self _shouldRespondToPreviewingMethods])
  {
    v6 = controllerCopy;
    v7 = v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = [(UICollectionViewController *)self committedViewControllerForPreviewViewController:v6];

      if (!v7)
      {
        v7 = v6;
      }
    }

    if (objc_opt_respondsToSelector())
    {
      [(UICollectionViewController *)self commitPreviewViewController:v6 committedViewController:v7];
    }

    else if (objc_opt_respondsToSelector())
    {
      [(UICollectionViewController *)self commitPreviewViewController:v6];
    }
  }

  else
  {
    [(UIResponder *)self doesNotRecognizeSelector:a2];
  }
}

- (id)previewViewControllerForLocation:(CGPoint)location inSourceView:(id)view
{
  y = location.y;
  x = location.x;
  viewCopy = view;
  if ([(UICollectionViewController *)self _shouldRespondToPreviewingMethods])
  {
    collectionView = [(UICollectionViewController *)self collectionView];
    [collectionView convertPoint:viewCopy fromView:{x, y}];
    v9 = [collectionView indexPathForItemAtPoint:?];
    v10 = [(UICollectionViewController *)self previewViewControllerForItemAtIndexPath:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)willPresentPreviewViewController:(id)controller forLocation:(CGPoint)location inSourceView:(id)view
{
  y = location.y;
  x = location.x;
  controllerCopy = controller;
  viewCopy = view;
  if ([(UICollectionViewController *)self _shouldRespondToPreviewingMethods])
  {
    collectionView = [(UICollectionViewController *)self collectionView];
    [collectionView convertPoint:viewCopy fromView:{x, y}];
    v11 = [collectionView indexPathForItemAtPoint:?];
    v12 = [collectionView cellForItemAtIndexPath:v11];
    presentationController = [controllerCopy presentationController];
    [presentationController setSourceView:v12];
    [v12 bounds];
    [presentationController setSourceRect:?];
    [(UICollectionViewController *)self willPresentPreviewViewController:controllerCopy forItemAtIndexPath:v11];
  }
}

- (void)setInstallsStandardGestureForInteractiveMovement:(BOOL)installsStandardGestureForInteractiveMovement
{
  if (installsStandardGestureForInteractiveMovement)
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  *&self->_collectionViewControllerFlags = *&self->_collectionViewControllerFlags & 0xFB | v4;
  if (installsStandardGestureForInteractiveMovement)
  {

    [(UICollectionViewController *)self _installReorderingGestureIfNecessary];
  }

  else if (self->_reorderingGesture)
  {
    [(UIView *)self->_collectionView removeGestureRecognizer:?];
    reorderingGesture = self->_reorderingGesture;
    self->_reorderingGesture = 0;
  }
}

- (void)_handleReorderingGesture:(id)gesture
{
  gestureCopy = gesture;
  v5 = self->_collectionView;
  state = [gestureCopy state];
  if (state > 2)
  {
    if (state == 3)
    {
      [(UICollectionView *)v5 endInteractiveMovement];
    }

    else if (state == 4)
    {
      [(UICollectionView *)v5 cancelInteractiveMovement];
    }
  }

  else if (state == 1)
  {
    [gestureCopy startPoint];
    v7 = [(UICollectionView *)v5 indexPathForItemAtPoint:?];
    if (v7)
    {
      [(UICollectionView *)v5 beginInteractiveMovementForItemAtIndexPath:v7];
      contextMenuInteraction = [(UICollectionView *)v5 contextMenuInteraction];
      _hasVisibleMenu = [contextMenuInteraction _hasVisibleMenu];

      if (_hasVisibleMenu)
      {
        contextMenuInteraction2 = [(UICollectionView *)v5 contextMenuInteraction];
        [contextMenuInteraction2 dismissMenu];
      }

      else
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __55__UICollectionViewController__handleReorderingGesture___block_invoke;
        v11[3] = &unk_1E70F3590;
        v12 = v5;
        [UIView performWithoutAnimation:v11];
      }
    }
  }

  else if (state == 2)
  {
    if ([(UICollectionView *)v5 _isReordering])
    {
      [gestureCopy locationInView:v5];
      [(UICollectionView *)v5 updateInteractiveMovementTargetPosition:?];
    }

    else
    {
      [gestureCopy setEnabled:0];
      [gestureCopy setEnabled:1];
    }
  }
}

void __55__UICollectionViewController__handleReorderingGesture___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = [*(a1 + 32) subviews];
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v7 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v6 removeFromSuperview];
          goto LABEL_11;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  if (self->_reorderingGesture == recognizer && ([(UICollectionView *)self->_collectionView contextMenuInteraction], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    contextMenuInteraction = [(UICollectionView *)self->_collectionView contextMenuInteraction];
    _gestureRecognizerForBeginningDragRelationships = [contextMenuInteraction _gestureRecognizerForBeginningDragRelationships];

    if (_gestureRecognizerForBeginningDragRelationships == gestureRecognizerCopy)
    {
      v7 = 1;
    }

    else
    {
      traitCollection = [(UIViewController *)self traitCollection];
      if ([traitCollection userInterfaceIdiom] == 6)
      {
        contextMenuInteraction2 = [(UICollectionView *)self->_collectionView contextMenuInteraction];
        gestureRecognizerForFailureRelationships = [contextMenuInteraction2 gestureRecognizerForFailureRelationships];
        v7 = gestureRecognizerForFailureRelationships == gestureRecognizerCopy;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end