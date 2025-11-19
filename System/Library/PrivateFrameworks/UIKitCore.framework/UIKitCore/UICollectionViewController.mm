@interface UICollectionViewController
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (UICollectionView)collectionView;
- (UICollectionViewController)initWithCoder:(NSCoder *)coder;
- (UICollectionViewController)initWithCollectionViewLayout:(UICollectionViewLayout *)layout;
- (UICollectionViewController)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil;
- (id)_animatorForOperation:(int64_t)a3 fromViewController:(id)a4 toViewController:(id)a5;
- (id)_newCollectionViewWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
- (id)_shim_contentScrollView;
- (id)_wrappingView;
- (id)contentScrollViewForEdge:(unint64_t)a3;
- (id)dataSource;
- (id)previewViewControllerForLocation:(CGPoint)a3 inSourceView:(id)a4;
- (id)previewingContext:(id)a3 viewControllerForLocation:(CGPoint)a4;
- (void)__viewDidAppear:(BOOL)a3;
- (void)__viewWillAppear:(BOOL)a3;
- (void)_clearSharedView;
- (void)_handleReorderingGesture:(id)a3;
- (void)_installReorderingGestureIfNecessary;
- (void)_setNeedsUpdateContentUnavailableConfiguration;
- (void)_setUseLayoutToLayoutNavigationTransitions:(BOOL)a3 withCheck:(BOOL)a4;
- (void)_updateCollectionViewLayoutAndDelegate:(id)a3;
- (void)collectionView:(id)a3 didBeginMultipleSelectionInteractionAtIndexPath:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)loadView;
- (void)previewingContext:(id)a3 commitViewController:(id)a4;
- (void)setCollectionView:(UICollectionView *)collectionView;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setInstallsStandardGestureForInteractiveMovement:(BOOL)installsStandardGestureForInteractiveMovement;
- (void)setView:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillUnload;
- (void)willPresentPreviewViewController:(id)a3 forLocation:(CGPoint)a4 inSourceView:(id)a5;
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
  v3 = [(UIViewController *)self _existingView];
  if (!v3)
  {
    if (dyld_program_sdk_at_least())
    {
      v4 = [(UIViewController *)self _window];
      if ([UIApp _appAdoptsUISceneLifecycle] && (v4 || dyld_program_sdk_at_least()))
      {
        [v4 _referenceFrameFromSceneUsingScreenBounds:1];
        v6 = v5;
        v8 = v7;
        v10 = v9;
        v12 = v11;
      }

      else
      {
        v18 = [(UIViewController *)self _screen];
        [v18 _applicationFrameForInterfaceOrientation:objc_msgSend(UIApp usingStatusbarHeight:"_defaultSceneInterfaceOrientationReturningUnknownForNilScene:" ignoreStatusBar:{0), 1, 0.0}];
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
      v4 = [(UIViewController *)self _screen];
      [v4 _applicationFrame];
      v6 = v14;
      v8 = v15;
      v10 = v16;
      v12 = v17;
    }

    v3 = [(UIView *)v13 initWithFrame:v6, v8, v10, v12];

    [(UIView *)v3 setAutoresizingMask:18];
  }

  return v3;
}

- (void)loadView
{
  v3 = [(UICollectionViewController *)self _wrappingView];
  v4 = [(UIViewController *)self _usesSharedView];
  v5 = [(UIViewController *)self nibName];
  v6 = v5;
  if (!v4)
  {
    if (v5)
    {
      v47.receiver = self;
      v47.super_class = UICollectionViewController;
      [(UIViewController *)&v47 loadView];
      v11 = [(UIViewController *)self view];
      collectionView = self->_collectionView;
      self->_collectionView = v11;

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v13 = [(UIViewController *)self storyboardIdentifier];
        if (v13)
        {
          v14 = [(UIViewController *)self storyboard];
          v15 = [v14 name];
          v16 = v15;
          if (v15)
          {
            v17 = v15;
          }

          else
          {
            v17 = [v14 description];
          }

          v27 = v17;

          [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"%s instantiated view controller with identifier %@ from storyboard %@, but didn't get a UICollectionView.", "-[UICollectionViewController loadView]", v13, v27}];
        }

        else
        {
          [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"%s loaded the %@ nib but didn't get a UICollectionView.", "-[UICollectionViewController loadView]", v6}];
        }
      }

      v28 = [(UIScrollView *)self->_collectionView delegate];

      if (!v28)
      {
        [(UICollectionView *)self->_collectionView setDelegate:self];
      }

      v29 = [(UICollectionView *)self->_collectionView dataSource];

      if (!v29)
      {
        [(UICollectionView *)self->_collectionView setDataSource:self];
      }

      if (!self->_layout)
      {
        v30 = [(UICollectionView *)self->_collectionView collectionViewLayout];
        layout = self->_layout;
        self->_layout = v30;
      }

      goto LABEL_31;
    }

    if ([UIApp _appAdoptsUISceneLifecycle])
    {
      v18 = [(UIViewController *)self _window];
      if (!v18)
      {
        v32 = [objc_opt_self() mainScreen];
        [v32 _mainSceneFrame];
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v40 = v39;

        v19 = 0;
LABEL_30:

        v45 = [(UICollectionViewController *)self _newCollectionViewWithFrame:self->_layout collectionViewLayout:v34, v36, v38, v40];
        v46 = self->_collectionView;
        self->_collectionView = v45;

        [(UIView *)self->_collectionView setAutoresizingMask:18];
        [(UICollectionView *)self->_collectionView setDelegate:self];
        [(UICollectionView *)self->_collectionView setDataSource:self];
LABEL_31:
        [(UICollectionViewController *)self setView:v3];
        [v3 bounds];
        [(UICollectionView *)self->_collectionView setFrame:?];
        [v3 addSubview:self->_collectionView];

        goto LABEL_32;
      }

      v19 = v18;
      v20 = __UIStatusBarManagerForWindow(v18);
      v21 = [v20 isStatusBarHidden];

      if (v21)
      {
        v22 = 1;
      }

      else
      {
        v41 = __UIStatusBarManagerForWindow(v19);
        v42 = [v19 windowScene];
        [v41 defaultStatusBarHeightInOrientation:{objc_msgSend(v42, "_interfaceOrientation")}];
        v44 = v43;

        v22 = v44 == 0.0;
      }

      [v19 _referenceFrameFromSceneUsingScreenBounds:v22];
    }

    else
    {
      v19 = [(UIViewController *)self _screen];
      [v19 _applicationFrame];
    }

    v34 = v23;
    v36 = v24;
    v38 = v25;
    v40 = v26;
    goto LABEL_30;
  }

  if (v5)
  {
    v7 = self->_layout;

    if (!v7)
    {
      v48.receiver = self;
      v48.super_class = UICollectionViewController;
      [(UIViewController *)&v48 loadView];
      v8 = [(UIViewController *)self view];
      v9 = [v8 collectionViewLayout];
      v10 = self->_layout;
      self->_layout = v9;
    }
  }

  [(UICollectionViewController *)self setView:v3];
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
    v3 = [(UIView *)self->_collectionView window];
    if (v3)
    {
      v4 = v3;
      v5 = [(UICollectionView *)self->_collectionView _dataSourceSupportsReordering];

      if (v5)
      {
        v6 = [[_UICollectionViewLegacyReorderingGestureRecognizer alloc] initWithTarget:self action:sel__handleReorderingGesture_];
        reorderingGesture = self->_reorderingGesture;
        self->_reorderingGesture = &v6->super;

        v8 = [(UIViewController *)self traitCollection];
        v9 = [v8 userInterfaceIdiom];

        if (v9 == 6)
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
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 removeObserver:self->_keyboardSupport];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = UICollectionViewController;
  [(UIViewController *)&v6 encodeWithCoder:v4];
  collectionViewControllerFlags = self->_collectionViewControllerFlags;
  if ((collectionViewControllerFlags & 1) == 0)
  {
    [v4 encodeBool:0 forKey:@"UIClearsSelectionOnViewWillAppear"];
    collectionViewControllerFlags = self->_collectionViewControllerFlags;
  }

  if ((collectionViewControllerFlags & 4) == 0)
  {
    [v4 encodeBool:0 forKey:@"UIInstallsStandardReorderingGesture"];
  }
}

- (void)setView:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    collectionView = self->_collectionView;
    self->_collectionView = 0;
  }

  v6.receiver = self;
  v6.super_class = UICollectionViewController;
  [(UIViewController *)&v6 setView:v4];
}

- (void)_clearSharedView
{
  v3 = [(UIViewController *)self navigationController];

  if (!v3)
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
  v3 = [(UICollectionViewController *)self collectionView];
  v4 = [v3 collectionViewLayout];

  if (v4 != self->_layout)
  {
    objc_storeStrong(&self->_layout, v4);
  }
}

- (void)_updateCollectionViewLayoutAndDelegate:(id)a3
{
  v13 = a3;
  v4 = [(UIViewController *)self transitionCoordinator];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 viewControllerForKey:@"UITransitionContextFromViewController"];
    v7 = self;
    v8 = [v6 _uiCollectionView];
    v9 = [(UICollectionViewController *)v7 _uiCollectionView];

    if (v8 != v9)
    {
      goto LABEL_3;
    }

    if ([(UIViewController *)v7 _usesSharedView])
    {

      goto LABEL_8;
    }

    if ([v6 _usesSharedView])
    {
      v11 = [v6 navigationController];
      v12 = [v11 lastOperation];

      if (v12 != 1)
      {
        goto LABEL_8;
      }
    }

    else
    {
LABEL_3:
    }
  }

  [v13 setCollectionViewLayout:self->_layout];
  v10 = [v13 delegate];

  if (!v10)
  {
    [v13 setDelegate:self];
  }

LABEL_8:
}

- (void)__viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = UICollectionViewController;
  [(UIViewController *)&v9 __viewWillAppear:?];
  v5 = [(UICollectionViewController *)self collectionView];
  v6 = [(UIViewController *)self _existingView];
  if ([v6 isMemberOfClass:objc_opt_class()] && -[UICollectionViewController useLayoutToLayoutNavigationTransitions](self, "useLayoutToLayoutNavigationTransitions"))
  {
    [(UICollectionViewController *)self _updateCollectionViewLayoutAndDelegate:v5];
  }

  if ([v5 numberOfSections])
  {
    if ((*&self->_collectionViewControllerFlags & 1) != 0 && ([v5 allowsMultipleSelection] & 1) == 0 && (*&self->_collectionViewControllerFlags & 2) == 0)
    {
      if (dyld_program_sdk_at_least())
      {
        v7 = [v5 indexPathsForSelectedItems];
        v8 = [(UIViewController *)self transitionCoordinator];
        [v5 _deselectItemsAtIndexPaths:v7 animated:v3 transitionCoordinator:v8];
      }

      else
      {
        [v5 _deselectAllAnimated:1 notifyDelegate:0];
      }
    }
  }

  else
  {
    [v5 reloadData];
  }
}

- (void)__viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = UICollectionViewController;
  [(UIViewController *)&v4 __viewDidAppear:a3];
  [(UICollectionViewController *)self _installReorderingGestureIfNecessary];
}

- (void)viewWillAppear:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = UICollectionViewController;
  [(UIViewController *)&v11 viewWillAppear:a3];
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
      v7 = [MEMORY[0x1E696AD88] defaultCenter];
      v8 = [(UIViewController *)self _screen];
      [v7 addObserver:self->_keyboardSupport selector:sel__keyboardWillShow_ name:@"UIKeyboardPrivateWillShowNotification" object:v8];
      [v7 addObserver:self->_keyboardSupport selector:sel__keyboardWillHide_ name:@"UIKeyboardPrivateWillHideNotification" object:v8];
      [v7 addObserver:self->_keyboardSupport selector:sel__keyboardDidShow_ name:@"UIKeyboardPrivateDidShowNotification" object:v8];
      [v7 addObserver:self->_keyboardSupport selector:sel__keyboardDidHide_ name:@"UIKeyboardPrivateDidHideNotification" object:v8];
      [v7 addObserver:self->_keyboardSupport selector:sel__keyboardDidChangeFrame_ name:@"UIKeyboardPrivateDidChangeFrameNotification" object:v8];
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

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = UICollectionViewController;
  [(UIViewController *)&v4 viewDidAppear:a3];
  [(UICollectionViewController *)self _installReorderingGestureIfNecessary];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  if (self->_keyboardSupport)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 removeObserver:self->_keyboardSupport];

    [(UIAutoRespondingScrollViewControllerKeyboardSupport *)self->_keyboardSupport setViewIsDisappearing:1];
    [(UIAutoRespondingScrollViewControllerKeyboardSupport *)self->_keyboardSupport setRegisteredForNotifications:0];
  }

  v6.receiver = self;
  v6.super_class = UICollectionViewController;
  [(UIViewController *)&v6 viewWillDisappear:v3];
}

- (id)_shim_contentScrollView
{
  if ((_UIBarsApplyChromelessEverywhere() & 1) != 0 || _UIViewControllerUseContentScrollViewAPI())
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UICollectionViewController.m" lineNumber:430 description:@"Unexpected code path for compatibility code only"];
  }

  v4 = [(UIViewController *)self _existingView];
  if (v4)
  {
    v5 = [(UICollectionViewController *)self collectionView];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)contentScrollViewForEdge:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = UICollectionViewController;
  v4 = [(UIViewController *)&v7 contentScrollViewForEdge:a3];
  if (!v4)
  {
    v5 = [(UIViewController *)self _existingView];
    if (v5)
    {
      v4 = [(UICollectionViewController *)self collectionView];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)setCollectionView:(UICollectionView *)collectionView
{
  v5 = collectionView;
  v6 = self->_collectionView;
  if (v6 != v5)
  {
    v12 = v5;
    v7 = [(UICollectionView *)v6 dataSource];

    if (v7 == self)
    {
      [(UICollectionView *)self->_collectionView setDataSource:0];
    }

    v8 = [(UIScrollView *)self->_collectionView delegate];

    if (v8 == self)
    {
      [(UICollectionView *)self->_collectionView setDelegate:0];
    }

    [(UIScrollView *)self->_collectionView removeFromSuperview];
    [(UIView *)v12 setAutoresizingMask:18];
    v9 = [(UICollectionViewController *)self _wrappingView];
    [(UICollectionViewController *)self setView:v9];
    [v9 bounds];
    [(UICollectionView *)v12 setFrame:?];
    [v9 addSubview:v12];
    objc_storeStrong(&self->_collectionView, collectionView);
    v10 = [(UICollectionView *)v12 dataSource];

    if (!v10)
    {
      [(UICollectionView *)v12 setDataSource:self];
    }

    v11 = [(UIScrollView *)v12 delegate];

    if (!v11)
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
    v5 = [(UICollectionViewController *)self collectionView];
    v6 = [v5 dataSource];
  }

  else
  {
    v6 = self;
  }

  return v6;
}

- (void)collectionView:(id)a3 didBeginMultipleSelectionInteractionAtIndexPath:(id)a4
{
  v5 = a3;
  if (dyld_program_sdk_at_least() && [v5 isEditing])
  {
    [(UICollectionViewController *)self setEditing:1 animated:1];
  }
}

- (id)_newCollectionViewWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = a4;
  v9 = [[UICollectionView alloc] initWithFrame:v8 collectionViewLayout:x, y, width, height];

  return v9;
}

- (id)_animatorForOperation:(int64_t)a3 fromViewController:(id)a4 toViewController:(id)a5
{
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v8 collectionView], v10 = objc_claimAutoreleasedReturnValue(), collectionView = self->_collectionView, v10, v10 == collectionView))
  {
    v12 = [_UICollectionViewControllerLayoutToLayoutTransition transitionForOperation:a3 fromViewController:v8 toViewController:v9];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_setUseLayoutToLayoutNavigationTransitions:(BOOL)a3 withCheck:(BOOL)a4
{
  v4 = a3;
  if (!a4)
  {
    [(UICollectionViewController *)self useLayoutToLayoutNavigationTransitions];
    goto LABEL_9;
  }

  v6 = [(UIViewController *)self parentViewController];
  if (v6)
  {
  }

  else
  {
    v7 = [(UIViewController *)self _existingView];
    v8 = [v7 window];

    if (!v8)
    {
      goto LABEL_7;
    }
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Attempt to change the layout to layout transitions property of %@ which is a child view controller or in the window hierarchy", self}];
LABEL_7:
  if ([(UICollectionViewController *)self useLayoutToLayoutNavigationTransitions]!= v4)
  {
    [(UICollectionViewController *)self setView:0];
  }

LABEL_9:
  [(UIViewController *)self _setUsesSharedView:v4];
  if (v4)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  *&self->_collectionViewControllerFlags = *&self->_collectionViewControllerFlags & 0xFD | v9;
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(UICollectionViewController *)self collectionView];
  v8 = [v7 canBeEdited];

  if (v8)
  {
    if (v4)
    {
      v9 = [(UICollectionViewController *)self collectionView];
      [v9 setEditing:v5];
    }

    else
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __50__UICollectionViewController_setEditing_animated___block_invoke;
      v11[3] = &unk_1E70F35E0;
      v11[4] = self;
      v12 = v5;
      [UIView performWithoutAnimation:v11];
    }
  }

  v10.receiver = self;
  v10.super_class = UICollectionViewController;
  [(UIViewController *)&v10 setEditing:v5 animated:v4];
}

void __50__UICollectionViewController_setEditing_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  [v2 setEditing:*(a1 + 40)];
}

- (id)previewingContext:(id)a3 viewControllerForLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v8 = a3;
  if ([(UICollectionViewController *)self _shouldRespondToPreviewingMethods])
  {
    v9 = [v8 sourceView];
    v10 = [(UICollectionViewController *)self previewViewControllerForLocation:v9 inSourceView:x, y];
  }

  else
  {
    [MEMORY[0x1E69E58C0] doesNotRecognizeSelector:a2];
    v10 = 0;
  }

  return v10;
}

- (void)previewingContext:(id)a3 commitViewController:(id)a4
{
  v8 = a4;
  if ([(UICollectionViewController *)self _shouldRespondToPreviewingMethods])
  {
    v6 = v8;
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

- (id)previewViewControllerForLocation:(CGPoint)a3 inSourceView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([(UICollectionViewController *)self _shouldRespondToPreviewingMethods])
  {
    v8 = [(UICollectionViewController *)self collectionView];
    [v8 convertPoint:v7 fromView:{x, y}];
    v9 = [v8 indexPathForItemAtPoint:?];
    v10 = [(UICollectionViewController *)self previewViewControllerForItemAtIndexPath:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)willPresentPreviewViewController:(id)a3 forLocation:(CGPoint)a4 inSourceView:(id)a5
{
  y = a4.y;
  x = a4.x;
  v14 = a3;
  v9 = a5;
  if ([(UICollectionViewController *)self _shouldRespondToPreviewingMethods])
  {
    v10 = [(UICollectionViewController *)self collectionView];
    [v10 convertPoint:v9 fromView:{x, y}];
    v11 = [v10 indexPathForItemAtPoint:?];
    v12 = [v10 cellForItemAtIndexPath:v11];
    v13 = [v14 presentationController];
    [v13 setSourceView:v12];
    [v12 bounds];
    [v13 setSourceRect:?];
    [(UICollectionViewController *)self willPresentPreviewViewController:v14 forItemAtIndexPath:v11];
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

- (void)_handleReorderingGesture:(id)a3
{
  v4 = a3;
  v5 = self->_collectionView;
  v6 = [v4 state];
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      [(UICollectionView *)v5 endInteractiveMovement];
    }

    else if (v6 == 4)
    {
      [(UICollectionView *)v5 cancelInteractiveMovement];
    }
  }

  else if (v6 == 1)
  {
    [v4 startPoint];
    v7 = [(UICollectionView *)v5 indexPathForItemAtPoint:?];
    if (v7)
    {
      [(UICollectionView *)v5 beginInteractiveMovementForItemAtIndexPath:v7];
      v8 = [(UICollectionView *)v5 contextMenuInteraction];
      v9 = [v8 _hasVisibleMenu];

      if (v9)
      {
        v10 = [(UICollectionView *)v5 contextMenuInteraction];
        [v10 dismissMenu];
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

  else if (v6 == 2)
  {
    if ([(UICollectionView *)v5 _isReordering])
    {
      [v4 locationInView:v5];
      [(UICollectionView *)v5 updateInteractiveMovementTargetPosition:?];
    }

    else
    {
      [v4 setEnabled:0];
      [v4 setEnabled:1];
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

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a4;
  if (self->_reorderingGesture == a3 && ([(UICollectionView *)self->_collectionView contextMenuInteraction], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = [(UICollectionView *)self->_collectionView contextMenuInteraction];
    v11 = [v10 _gestureRecognizerForBeginningDragRelationships];

    if (v11 == v6)
    {
      v7 = 1;
    }

    else
    {
      v12 = [(UIViewController *)self traitCollection];
      if ([v12 userInterfaceIdiom] == 6)
      {
        v13 = [(UICollectionView *)self->_collectionView contextMenuInteraction];
        v14 = [v13 gestureRecognizerForFailureRelationships];
        v7 = v14 == v6;
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