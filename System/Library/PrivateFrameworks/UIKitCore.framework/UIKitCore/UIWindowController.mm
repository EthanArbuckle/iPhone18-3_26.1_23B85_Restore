@interface UIWindowController
+ (id)windowControllerForWindow:(id)window;
- (CGPoint)_adjustOrigin:(CGPoint)result givenOtherOrigin:(CGPoint)origin forTransition:(int)transition;
- (CGPoint)_originForViewController:(id)controller orientation:(int64_t)orientation actualStatusBarHeight:(double)height fullScreenLayout:(BOOL)layout inWindow:(id)window;
- (CGPoint)transitionView:(id)view beginOriginForToView:(id)toView forTransition:(int)transition defaultOrigin:(CGPoint)origin;
- (CGPoint)transitionView:(id)view endOriginForFromView:(id)fromView forTransition:(int)transition defaultOrigin:(CGPoint)origin;
- (CGPoint)transitionView:(id)view endOriginForToView:(id)toView forTransition:(int)transition defaultOrigin:(CGPoint)origin;
- (CGRect)_boundsForViewController:(id)controller transition:(int)transition orientation:(int64_t)orientation fullScreenLayout:(BOOL)layout inWindow:(id)window;
- (CGSize)_flipSize:(CGSize)size;
- (UIWindow)window;
- (void)_prepareKeyboardForTransition:(int)transition fromView:(id)view;
- (void)_transition:(int)_transition fromViewController:(id)controller toViewController:(id)viewController target:(id)target didFinish:(int64_t)finish animation:(id)animation;
- (void)_transplantView:(id)view toSuperview:(id)superview atIndex:(unint64_t)index;
- (void)dealloc;
- (void)transitionView:(id)view startCustomTransitionWithDuration:(double)duration;
- (void)transitionViewDidCancel:(id)cancel fromView:(id)view toView:(id)toView;
- (void)transitionViewDidComplete:(id)complete fromView:(id)view toView:(id)toView removeFromView:(BOOL)fromView;
- (void)transitionViewDidStart:(id)start;
@end

@implementation UIWindowController

+ (id)windowControllerForWindow:(id)window
{
  windowCopy = window;
  if (windowCopy)
  {
    v4 = __windowToWindowControllerMapTable;
    if (!__windowToWindowControllerMapTable)
    {
      weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
      v6 = __windowToWindowControllerMapTable;
      __windowToWindowControllerMapTable = weakToStrongObjectsMapTable;

      v4 = __windowToWindowControllerMapTable;
    }

    v7 = [v4 objectForKey:windowCopy];
    if (!v7)
    {
      v7 = objc_alloc_init(UIWindowController);
      [(UIWindowController *)v7 setWindow:windowCopy];
      [__windowToWindowControllerMapTable setObject:v7 forKey:windowCopy];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)dealloc
{
  transitionView = self->_transitionView;
  if (transitionView)
  {
    view = [(UIViewController *)self->_fromViewController view];
    view2 = [(UIViewController *)self->_toViewController view];
    [(UIWindowController *)self transitionViewDidComplete:transitionView fromView:view toView:view2 removeFromView:1];
  }

  v6.receiver = self;
  v6.super_class = UIWindowController;
  [(UIWindowController *)&v6 dealloc];
}

- (CGPoint)_originForViewController:(id)controller orientation:(int64_t)orientation actualStatusBarHeight:(double)height fullScreenLayout:(BOOL)layout inWindow:(id)window
{
  controllerCopy = controller;
  windowCopy = window;
  if (layout)
  {
    v13 = *MEMORY[0x1E695EFF8];
    v14 = *(MEMORY[0x1E695EFF8] + 8);
  }

  else
  {
    window = [(UIWindowController *)self window];
    v16 = __UIStatusBarManagerForWindow(window);
    [v16 defaultStatusBarHeightInOrientation:orientation];
    v18 = v17;

    if (windowCopy)
    {
      [windowCopy screen];
    }

    else
    {
      [objc_opt_self() mainScreen];
    }
    v19 = ;
    [v19 _applicationFrameForInterfaceOrientation:orientation usingStatusbarHeight:v18];
    v13 = v20;
    v14 = v21;
  }

  WeakRetained = objc_loadWeakRetained(&self->_window);
  [WeakRetained convertPoint:0 fromWindow:{v13, v14}];
  v24 = v23;
  v26 = v25;

  v27 = v24;
  v28 = v26;
  result.y = v28;
  result.x = v27;
  return result;
}

- (CGSize)_flipSize:(CGSize)size
{
  width = size.width;
  height = size.height;
  v5 = width;
  result.height = v5;
  result.width = height;
  return result;
}

- (CGRect)_boundsForViewController:(id)controller transition:(int)transition orientation:(int64_t)orientation fullScreenLayout:(BOOL)layout inWindow:(id)window
{
  controllerCopy = controller;
  windowCopy = window;
  v13 = windowCopy;
  if (!windowCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_window);
    _isHostedInAnotherProcess = [WeakRetained _isHostedInAnotherProcess];

    if (_isHostedInAnotherProcess)
    {
      v24 = objc_loadWeakRetained(&self->_window);
      [v24 bounds];
      v15 = v25;
      v17 = v26;
      v19 = v27;
      v21 = v28;

      goto LABEL_17;
    }

    if (layout)
    {
      mainScreen = [objc_opt_self() mainScreen];
      goto LABEL_10;
    }

LABEL_11:
    window = [(UIWindowController *)self window];
    v36 = __UIStatusBarManagerForWindow(window);
    [v36 defaultStatusBarHeightInOrientation:orientation];
    v38 = v37;

    if (v13)
    {
      [v13 screen];
    }

    else
    {
      [objc_opt_self() mainScreen];
    }
    v39 = ;
    [v39 _applicationFrameForInterfaceOrientation:orientation usingStatusbarHeight:v38];
    v19 = v40;
    v21 = v41;

    v15 = *MEMORY[0x1E695EFF8];
    v17 = *(MEMORY[0x1E695EFF8] + 8);
    goto LABEL_15;
  }

  if ([windowCopy _isHostedInAnotherProcess])
  {
    [v13 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    goto LABEL_17;
  }

  if (!layout)
  {
    goto LABEL_11;
  }

  mainScreen = [v13 screen];
LABEL_10:
  v30 = mainScreen;
  [mainScreen bounds];
  v15 = v31;
  v17 = v32;
  v19 = v33;
  v21 = v34;

LABEL_15:
  if ((orientation - 3) <= 1)
  {
    [(UIWindowController *)self _flipSize:v19, v21];
    v19 = v42;
    v21 = v43;
  }

LABEL_17:

  v44 = v15;
  v45 = v17;
  v46 = v19;
  v47 = v21;
  result.size.height = v47;
  result.size.width = v46;
  result.origin.y = v45;
  result.origin.x = v44;
  return result;
}

- (void)_prepareKeyboardForTransition:(int)transition fromView:(id)view
{
  v4 = *&transition;
  viewCopy = view;
  [objc_opt_class() durationForTransition:v4];
  v6 = v5;
  keyboardSceneDelegate = [viewCopy keyboardSceneDelegate];
  if ((UIKeyboardAutomaticIsOffScreen() & 1) == 0)
  {
    responder = [keyboardSceneDelegate responder];
    v9 = [viewCopy _containsResponder:responder];

    if (v9)
    {
      [keyboardSceneDelegate _beginIgnoringReloadInputViews];
      [keyboardSceneDelegate setAutomaticAppearanceInternalEnabled:0];
      [viewCopy endEditing:1];
      [keyboardSceneDelegate setAutomaticAppearanceInternalEnabled:1];
      [keyboardSceneDelegate _endIgnoringReloadInputViews];
      v10 = [UIViewController _keyboardDirectionForTransition:v4];
      if ([keyboardSceneDelegate currentState] != 2)
      {
        [keyboardSceneDelegate forceOrderOutAutomaticToDirection:v10 withDuration:v6];
      }
    }
  }

  if (v4)
  {
    v11 = [UIInputViewAnimationStyleDirectional animationStyleAnimated:1 duration:[UIViewController _keyboardDirectionForTransition:v4] outDirection:v6];
    [keyboardSceneDelegate pushAnimationStyle:v11];
  }
}

- (void)_transplantView:(id)view toSuperview:(id)superview atIndex:(unint64_t)index
{
  superviewCopy = superview;
  viewCopy = view;
  keyboardSceneDelegate = [superviewCopy keyboardSceneDelegate];
  [keyboardSceneDelegate setAutomaticAppearanceInternalEnabled:0];
  objc_opt_self();
  ++__disablePromoteDescendantToFirstResponderCount;
  [superviewCopy insertSubview:viewCopy atIndex:index];

  objc_opt_self();
  if (__disablePromoteDescendantToFirstResponderCount)
  {
    --__disablePromoteDescendantToFirstResponderCount;
  }

  [keyboardSceneDelegate setAutomaticAppearanceInternalEnabled:1];
}

- (void)_transition:(int)_transition fromViewController:(id)controller toViewController:(id)viewController target:(id)target didFinish:(int64_t)finish animation:(id)animation
{
  v238[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  viewControllerCopy = viewController;
  targetCopy = target;
  animationCopy = animation;
  if (self->_currentTransition)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIWindowController.m" lineNumber:237 description:{@"Attempting to begin a modal transition from %@ to %@ while a transition is already in progress. Wait for viewDidAppear/viewDidDisappear to know the current transition has completed", controllerCopy, viewControllerCopy}];

    if (self->_fromViewController == controllerCopy && self->_toViewController == viewControllerCopy)
    {
      goto LABEL_215;
    }
  }

  modalPresentationStyle = [(UIViewController *)viewControllerCopy modalPresentationStyle];
  modalPresentationStyle2 = [(UIViewController *)controllerCopy modalPresentationStyle];
  interfaceOrientation = [(UIViewController *)controllerCopy interfaceOrientation];
  if (!_transition && modalPresentationStyle != 4)
  {
    v183 = 0;
    v164 = 0;
    _transitionController = 0;
LABEL_11:
    v157 = 0;
    v172 = 0;
    v21 = 0;
    goto LABEL_12;
  }

  _transitionController = [(UIWindowController *)self _transitionController];

  if (!_transitionController)
  {
    v183 = 0;
    v164 = 0;
    goto LABEL_11;
  }

  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_alloc_init(_UIViewControllerOneToOneTransitionContext);
  [(_UIViewControllerTransitionContext *)v20 _setAnimator:_transitionController];
  v183 = v20;
  if (v18 == v19)
  {
    [(_UIViewControllerTransitionContext *)v20 _setCompletionCurve:7];
    v157 = 0;
    v172 = 0;
    v21 = 0;
    v164 = 1;
  }

  else
  {
    v164 = 1;
    v21 = 4;
    v157 = 1;
    v172 = 1;
  }

LABEL_12:
  v22 = 3;
  if (modalPresentationStyle != 15)
  {
    v22 = modalPresentationStyle;
  }

  if (v22 == 4)
  {
    v22 = v21;
  }

  if (modalPresentationStyle2 == 4)
  {
    v23 = v21;
  }

  else
  {
    v23 = modalPresentationStyle2;
  }

  self->_toModalStyle = v22;
  v180 = v22;
  v177 = v23;
  val = _transitionController;
  if (self->_presenting)
  {
    if (v22 != 3 && v22 != 18)
    {
      v24 = 0;
      presenting = 1;
LABEL_26:
      v182 = presenting;
      goto LABEL_27;
    }

LABEL_25:
    view = [(UIViewController *)controllerCopy view];
    superview = [view superview];
    objc_opt_class();
    v24 = objc_opt_isKindOfClass() ^ 1;

    presenting = self->_presenting;
    goto LABEL_26;
  }

  if (v23 == 18 || v23 == 3)
  {
    goto LABEL_25;
  }

  v182 = 0;
  v24 = 0;
LABEL_27:
  window = [(UIWindowController *)self window];
  _delegateViewController = [window _delegateViewController];
  if (self->_presenting)
  {
    presentingViewController = [(UIViewController *)controllerCopy presentingViewController];
    if (presentingViewController)
    {
      isKindOfClass = 0;
      v31 = v180;
    }

    else
    {
      _rootAncestorViewController = [(UIViewController *)controllerCopy _rootAncestorViewController];
      if (_delegateViewController == _rootAncestorViewController)
      {
        isKindOfClass = 0;
      }

      else
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
      }

      v31 = v180;
    }
  }

  else
  {
    isKindOfClass = _delegateViewController == controllerCopy;
    v31 = v180;
  }

  v179 = v24 & 1;
  v160 = !(v24 & 1);
  if (!v160 && !v182)
  {
    definesPresentationContext = [(UIViewController *)viewControllerCopy definesPresentationContext];
    if (v31 == 3 && definesPresentationContext)
    {
      [(UIViewController *)controllerCopy setDefinesPresentationContext:[(UIViewController *)controllerCopy _isPresentationContextByDefault]];
    }
  }

  if (isKindOfClass)
  {
    if (v182)
    {
      if (!v31)
      {
        _existingView = [(UIViewController *)controllerCopy _existingView];
        superview2 = [_existingView superview];
        [superview2 frame];
        v37 = v36;

        if (v37 != 0.0)
        {
          _delegateViewController2 = [window _delegateViewController];
          [window _addRotationViewController:_delegateViewController2];
          if (viewControllerCopy)
          {
            objc_storeWeak(&viewControllerCopy->_previousRootViewController, _delegateViewController2);
          }

          [window _setDelegateViewController:viewControllerCopy];
          _delegateViewController2[47] &= ~0x80uLL;
          *&viewControllerCopy->_viewControllerFlags |= 0x80uLL;
LABEL_53:
        }
      }
    }

    else if (!v177)
    {
      _delegateViewController2 = [(UIViewController *)&controllerCopy->super.super.isa _previousRootViewController];
      if (_delegateViewController2)
      {
        [window _removeRotationViewController:_delegateViewController2];
        [window _setDelegateViewController:_delegateViewController2];
        v39 = _delegateViewController2;

        *&v39->_viewControllerFlags |= 0x80uLL;
        _delegateViewController = v39;
      }

      *&controllerCopy->_viewControllerFlags &= ~0x80uLL;
      goto LABEL_53;
    }
  }

  v40 = [UIApp _statusBarOrientationForWindow:window];
  if (v24 & 1) == 0 && (([(UIViewController *)controllerCopy _ancestorViewControllerIsInPopover]| isKindOfClass))
  {
    interfaceOrientation = v40;
  }

  screen = [window screen];
  _isEmbeddedScreen = [screen _isEmbeddedScreen];

  if (_isEmbeddedScreen)
  {
    v43 = viewControllerCopy;
    v44 = [(UIViewController *)viewControllerCopy _preferredInterfaceOrientationForPresentationInWindow:window fromInterfaceOrientation:interfaceOrientation];
  }

  else
  {
    v44 = [UIApp _statusBarOrientationForWindow:window];
    v43 = viewControllerCopy;
  }

  if ((isKindOfClass & 1) != 0 && ([window _shouldAutorotateToInterfaceOrientation:v44] & 1) == 0)
  {
    v44 = interfaceOrientation;
    if (v43)
    {
      v43->_lastKnownInterfaceOrientation = interfaceOrientation;
      v44 = interfaceOrientation;
    }
  }

  if (v40 == v44 || v180 && v177 <= 0x10 && ((1 << v177) & 0x10006) != 0)
  {
    v45 = 0;
  }

  else if ([(UIViewController *)v43 _ignoreAppSupportedOrientations])
  {
    v45 = 1;
  }

  else
  {
    _rootAncestorViewController2 = [(UIViewController *)controllerCopy _rootAncestorViewController];
    v45 = _delegateViewController == _rootAncestorViewController2;

    v43 = viewControllerCopy;
  }

  [window _setRotatableClient:v43 toOrientation:v44 updateStatusBar:v45 duration:0 force:0 isRotating:0.0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v237 = 0x1EFB92210;
  v47 = [MEMORY[0x1E696AD98] numberWithInteger:v44];
  v238[0] = v47;
  v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v238 forKeys:&v237 count:1];
  [defaultCenter postNotificationName:0x1EFB921F0 object:window userInfo:v48];

  if (isKindOfClass)
  {
    v49 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v49 userInterfaceIdiom];

    v51 = (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1;
  }

  else
  {
    v51 = 0;
  }

  if (!self->_presenting)
  {
    v178 = 0;
    goto LABEL_89;
  }

  if ([(UIViewController *)viewControllerCopy _isModalSheet])
  {
    v52 = 1;
LABEL_80:
    v178 = v52;
    goto LABEL_89;
  }

  if (v51)
  {
    v52 = v180 == 0;
    goto LABEL_80;
  }

  _popoverController = [(UIViewController *)controllerCopy _popoverController];
  if (_popoverController)
  {
    v55 = v180 == 0;
  }

  else
  {
    v55 = 0;
  }

  v56 = v55;
  v178 = v56;

LABEL_89:
  if (v182)
  {
    v166 = 0;
    goto LABEL_103;
  }

  if ([(UIViewController *)controllerCopy _isModalSheet])
  {
    v57 = 1;
LABEL_95:
    v166 = v57;
    goto LABEL_103;
  }

  if (v51)
  {
    v57 = v177 == 0;
    goto LABEL_95;
  }

  _popoverController2 = [(UIViewController *)viewControllerCopy _popoverController];
  if (_popoverController2)
  {
    v59 = v177 == 0;
  }

  else
  {
    v59 = 0;
  }

  v60 = v59;
  v166 = v60;

LABEL_103:
  _visibleView = 0;
  v62 = self->_presenting;
  v158 = v180 == 18;
  v159 = v62;
  v63 = v177 != 4;
  v174 = v180 == 17 && v62;
  v181 = v180 == 4 && v62;
  if (v178 & 1 | v174)
  {
    v64 = self->_presenting;
  }

  else
  {
    v64 = self->_presenting;
    if (v180 != 4 || !v62)
    {
      _visibleView = [(UIViewController *)controllerCopy _visibleView];

      v64 = self->_presenting;
    }
  }

  if (v180 != 3 && v64 && v177 == 3)
  {

    _visibleView = 0;
  }

  if (v179)
  {
    view2 = [(UIViewController *)controllerCopy view];

    _visibleView = view2;
  }

  if ((v178 & 1) != 0 || !_visibleView)
  {
    view3 = [(UIViewController *)controllerCopy view];
    window2 = [view3 window];
  }

  else
  {
    view3 = [_visibleView superview];
    window2 = view3;
  }

  v167 = v182 || v63;
  v165 = !v182 && !v63;
  if ((v165 | v181))
  {
    if (self->_presenting)
    {
      v68 = controllerCopy;
    }

    else
    {
      v68 = viewControllerCopy;
    }

    customTransitioningView = [(UIViewController *)v68 customTransitioningView];
    superview3 = [customTransitioningView superview];

    if (self->_presenting)
    {
      v70 = controllerCopy;
    }

    else
    {
      v70 = viewControllerCopy;
    }

    customTransitioningView2 = [(UIViewController *)v70 customTransitioningView];
    objc_storeStrong(&self->_transitionView, customTransitioningView2);
  }

  else
  {
    superview3 = window2;
  }

  v72 = v44;
  v74 = v178 && (v73 = [(UIViewController *)controllerCopy _preferredInterfaceOrientationGivenCurrentOrientation:v44], v72 = v44, v73 == v44) || interfaceOrientation == v72;
  _interactionController = [(UIWindowController *)self _interactionController];
  v76 = _interactionController == 0;

  if (v76)
  {
    [UIApp beginIgnoringInteractionEvents];
  }

  [superview3 bounds];
  if (!self->_transitionView)
  {
    v81 = v77;
    v82 = v78;
    v83 = v79;
    v84 = v80;
    v85 = [[UITransitionView alloc] initWithFrame:v77, v78, v79, v80];
    transitionView = self->_transitionView;
    self->_transitionView = v85;

    [(UITransitionView *)self->_transitionView setBounds:v81, v82, v83, v84];
    [(UITransitionView *)self->_transitionView setDelegate:self];
    if (v179)
    {
      if ([(UIViewController *)controllerCopy _isModalSheet]|| [(UIViewController *)viewControllerCopy _isModalSheet])
      {
        layer = [(UIView *)self->_transitionView layer];
        view4 = [(UIViewController *)controllerCopy view];
        layer2 = [view4 layer];
        [layer2 cornerRadius];
        [layer setCornerRadius:?];

        view5 = [(UIViewController *)controllerCopy view];
        layer3 = [view5 layer];
        [layer setMasksToBounds:{objc_msgSend(layer3, "masksToBounds")}];
      }
    }
  }

  _interactionController2 = [(UIWindowController *)self _interactionController];

  if (_interactionController2)
  {
    [(UITransitionView *)self->_transitionView setIgnoresInteractionEvents:0];
  }

  [(UITransitionView *)self->_transitionView setShouldNotifyDidCompleteImmediately:1];
  switch(v44)
  {
    case 1:
      v93 = 0.0;
      break;
    case 3:
      v93 = 1.57079633;
      break;
    case 4:
      v93 = -1.57079633;
      break;
    case 2:
      v93 = 3.14159265;
      break;
    default:
      v93 = 0.0;
      break;
  }

  CGAffineTransformMakeRotation(&v235, v93);
  *&v235.a = vrndaq_f64(*&v235.a);
  *&v235.c = vrndaq_f64(*&v235.c);
  *&v235.tx = vrndaq_f64(*&v235.tx);
  v236 = v235;
  _isHostedInAnotherProcess = [window _isHostedInAnotherProcess];
  [(UIView *)self->_transitionView bounds];
  v96 = v95;
  v98 = v97;
  width = v99;
  height = v101;
  v103 = v167 & ~v181 & (_isHostedInAnotherProcess ^ 1) & (v44 != 1 && v74);
  if (!(v179 & 1 | ((v103 & 1) == 0)))
  {
    memset(&v235, 0, sizeof(v235));
    [UIScreen transformForScreenOriginRotation:v93];
    v234 = v235;
    v239.origin.x = v96;
    v239.origin.y = v98;
    v239.size.width = width;
    v239.size.height = height;
    v240 = CGRectApplyAffineTransform(v239, &v234);
    width = v240.size.width;
    height = v240.size.height;
    [(UITransitionView *)self->_transitionView setBounds:v96, v98];
    v234 = v236;
    [(UIView *)self->_transitionView setTransform:&v234];
    if (window)
    {
      if (!window[62])
      {
        window[62] = v44;
      }
    }
  }

  superview4 = [(UIView *)self->_transitionView superview];
  v105 = superview4 == 0;

  if (v105)
  {
    if ((v178 | v174))
    {
      [superview3 addSubview:self->_transitionView];
    }

    else
    {
      subviews = [superview3 subviews];
      v107 = [subviews indexOfObjectIdenticalTo:_visibleView];

      [superview3 insertSubview:self->_transitionView atIndex:v107];
    }
  }

  if (v166 & 1 | (!v182 && v177 == 17))
  {
    _visibleView2 = 0;
  }

  else
  {
    _visibleView2 = [(UIViewController *)viewControllerCopy _visibleView];
  }

  if ((v167 & (v182 || v160) & 1) == 0)
  {
    view6 = [(UIViewController *)viewControllerCopy view];
LABEL_164:

    if (v103)
    {
      goto LABEL_168;
    }

    goto LABEL_167;
  }

  if (v180 == 3 && !v182 && v177 != 3)
  {
    view6 = 0;
    goto LABEL_164;
  }

  view6 = _visibleView2;
  if (v103)
  {
LABEL_168:
    v110 = *(MEMORY[0x1E695EFD0] + 16);
    *&v235.a = *MEMORY[0x1E695EFD0];
    v168 = *&v235.a;
    *&v235.c = v110;
    v161 = v110;
    *&v235.tx = *(MEMORY[0x1E695EFD0] + 32);
    v156 = *&v235.tx;
    [_visibleView setTransform:&v235];
    v111 = self->_transitionView;
    [_visibleView center];
    [(UIView *)v111 convertPoint:superview3 fromView:?];
    [_visibleView setCenter:?];
    *&v235.a = v168;
    *&v235.c = v161;
    *&v235.tx = v156;
    [view6 setTransform:&v235];
    goto LABEL_169;
  }

LABEL_167:
  if (v179)
  {
    goto LABEL_168;
  }

LABEL_169:
  v235.a = 0.0;
  *&v235.b = &v235;
  *&v235.c = 0x2020000000;
  LOBYTE(v235.d) = 1;
  if (!((_visibleView == 0) | v165 & 1))
  {
    [(UIWindowController *)self _transplantView:_visibleView toSuperview:self->_transitionView atIndex:0];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__UIWindowController__transition_fromViewController_toViewController_target_didFinish_animation___block_invoke;
  aBlock[3] = &unk_1E71047B8;
  aBlock[4] = self;
  v220 = &v235;
  v229 = v178;
  v230 = v103;
  v231 = v179;
  v221 = v44;
  v222 = v180;
  v112 = viewControllerCopy;
  v215 = v112;
  v113 = _visibleView;
  v216 = v113;
  v114 = view6;
  v217 = v114;
  _transitionCopy = _transition;
  v223 = v96;
  v224 = v98;
  v225 = width;
  v226 = height;
  v169 = superview3;
  v218 = v169;
  v176 = window;
  v219 = v176;
  v232 = _isHostedInAnotherProcess;
  v227 = v236;
  v233 = v172;
  v115 = _Block_copy(aBlock);
  v115[2]();
  window3 = [(UIView *)self->_transitionView window];
  v117 = __UIStatusBarManagerForWindow(window3);
  [v117 statusBarHeight];
  v119 = v118;

  self->_needsDidDisappear = 0;
  v120 = _transition == 13 || v158 && v159;
  if ((((v178 | v181) | v174) & 1) == 0 && (v120 & 1) == 0)
  {
    [(UIViewController *)controllerCopy beginAppearanceTransition:0 animated:_transition != 0];
    self->_needsDidDisappear = 1;
  }

  self->_needsDidAppear = 0;
  if (!(v165 & 1 | v166 & 1 | (!v182 && v177 == 17)) && _transition != 14 && (v182 || v177 != 18))
  {
    [(UIViewController *)v112 beginAppearanceTransition:1 animated:_transition != 0];
    self->_needsDidAppear = 1;
  }

  window4 = [(UIView *)self->_transitionView window];
  v122 = __UIStatusBarManagerForWindow(window4);
  [v122 statusBarHeight];
  v124 = v123;

  if (v119 != v124)
  {
    (v115[2])(v115);
    window5 = [(UIView *)self->_transitionView window];
    v126 = __UIStatusBarManagerForWindow(window5);
    [v126 statusBarHeight];
    v119 = v127;
  }

  if ((v179 & 1) == 0 && ([UIApp _hasApplicationCalledLaunchDelegate] & 1) == 0)
  {
    [v176 _updateToInterfaceOrientation:v44 duration:0 force:0.0];
  }

  _interactionController3 = [(UIWindowController *)self _interactionController];
  v129 = _interactionController3 != 0;

  v130 = (_transition != 14) & ((v181 | v174 | v120) ^ 1);
  if (v164)
  {
    [(UIWindowController *)self _setInteractiveTransition:0];
    if (_interactionController3)
    {
      [(UIWindowController *)self _setInteractiveTransition:1];
    }

    if (v182)
    {
      view7 = v180;
    }

    else
    {
      view7 = v177;
    }

    if ((v157 & 1) == 0)
    {
      [val setToView:v114];
      [val setFromView:v113];
      [val setRemoveFromView:v130];
    }

    [(_UIViewControllerTransitionContext *)v183 _setPresentationStyle:view7];
    [(_UIViewControllerTransitionContext *)v183 _setIsPresentation:v181];
    [(_UIViewControllerTransitionContext *)v183 _setIsAnimated:_transition != 0];
    [(_UIViewControllerOneToOneTransitionContext *)v183 _setFromViewController:controllerCopy];
    [(_UIViewControllerOneToOneTransitionContext *)v183 _setToViewController:v112];
    [(_UIViewControllerTransitionContext *)v183 _setContainerView:self->_transitionView];
    v132 = MEMORY[0x1E695F058];
    if (v181)
    {
      v133 = *MEMORY[0x1E695F058];
      v134 = *(MEMORY[0x1E695F058] + 8);
      v135 = *(MEMORY[0x1E695F058] + 16);
      v136 = *(MEMORY[0x1E695F058] + 24);
    }

    else
    {
      view7 = [(UIViewController *)v112 view];
      [view7 frame];
    }

    [(_UIViewControllerOneToOneTransitionContext *)v183 _setToEndFrame:v133, v134, v135, v136];
    if ((v181 & 1) == 0)
    {
    }

    view8 = [(UIViewController *)controllerCopy view];
    [view8 frame];
    [(_UIViewControllerOneToOneTransitionContext *)v183 _setFromStartFrame:?];

    v138 = *v132;
    v139 = v132[1];
    v140 = v132[2];
    v141 = v132[3];
    [(_UIViewControllerOneToOneTransitionContext *)v183 _setToStartFrame:*v132, v139, v140, v141];
    if ((v130 & 1) == 0)
    {
      view8 = [(UIViewController *)controllerCopy view];
      [view8 frame];
      v138 = v142;
      v139 = v143;
      v140 = v144;
      v141 = v145;
    }

    [(_UIViewControllerOneToOneTransitionContext *)v183 _setFromEndFrame:v138, v139, v140, v141];
    if ((v130 & 1) == 0)
    {
    }

    _interactionController4 = [(UIWindowController *)self _interactionController];
    [(_UIViewControllerTransitionContext *)v183 _setInteractor:_interactionController4];

    [v176 beginDisablingInterfaceAutorotation];
    if (animationCopy)
    {
      _transitionCoordinator = [(_UIViewControllerTransitionContext *)v183 _transitionCoordinator];
      v212[0] = MEMORY[0x1E69E9820];
      v212[1] = 3221225472;
      v212[2] = __97__UIWindowController__transition_fromViewController_toViewController_target_didFinish_animation___block_invoke_2;
      v212[3] = &unk_1E70F3770;
      v213 = animationCopy;
      [_transitionCoordinator animateAlongsideTransition:v212 completion:0];
    }

    objc_initWeak(&v234, val);
    v205[0] = MEMORY[0x1E69E9820];
    v205[1] = 3221225472;
    v205[2] = __97__UIWindowController__transition_fromViewController_toViewController_target_didFinish_animation___block_invoke_3;
    v205[3] = &unk_1E71047E0;
    v210 = v172;
    v205[4] = self;
    v206 = v113;
    v207 = v114;
    v211 = v130;
    objc_copyWeak(&v209, &v234);
    v208 = v176;
    [(_UIViewControllerTransitionContext *)v183 _setCompletionHandler:v205];
    if (_interactionController3)
    {
      [(_UIViewControllerTransitionContext *)v183 _addInteractiveUpdateHandler:&__block_literal_global_158];
      [(_UIViewControllerTransitionContext *)v183 _setTransitionIsCompleting:0];
    }

    objc_destroyWeak(&v209);
    objc_destroyWeak(&v234);
  }

  else if (animationCopy)
  {
    animationCopy[2]();
  }

  v187[0] = MEMORY[0x1E69E9820];
  v187[1] = 3221225472;
  v187[2] = __97__UIWindowController__transition_fromViewController_toViewController_target_didFinish_animation___block_invoke_5;
  v187[3] = &unk_1E7104808;
  _transitionCopy2 = _transition;
  v187[4] = self;
  v196 = v119;
  v148 = v115;
  v195 = v148;
  v149 = val;
  v188 = v149;
  v150 = v183;
  v189 = v150;
  v199 = v181;
  v190 = v112;
  v191 = controllerCopy;
  v200 = v130;
  v192 = targetCopy;
  finishCopy = finish;
  v151 = v114;
  v193 = v151;
  v201 = v172;
  v202 = v129;
  v152 = v113;
  v194 = v152;
  v203 = v174;
  v204 = v158 && v159;
  v153 = _Block_copy(v187);
  v154 = v153;
  v155 = v164 ^ 1;
  if ((_transition & 0xFFFFFFFE) == 0xA)
  {
    v155 = 0;
  }

  if (v155)
  {
    (*(v153 + 2))(v153);
  }

  else
  {
    [UIApp _performBlockAfterCATransactionCommits:v153];
  }

  _Block_object_dispose(&v235, 8);
LABEL_215:
}

void __97__UIWindowController__transition_fromViewController_toViewController_target_didFinish_animation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) window];
  v3 = __UIStatusBarManagerForWindow(v2);
  [v3 defaultStatusBarHeightInOrientation:*(a1 + 88)];
  v5 = v4;

  if (v5 == 0.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a1 + 188) ^ 1;
  }

  *(*(*(a1 + 80) + 8) + 24) = v6 & 1;
  if (*(a1 + 189))
  {
    v7 = 1;
  }

  else
  {
    v7 = *(a1 + 88);
  }

  v8 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(*(a1 + 32) + 64) = v8;
  *(*(a1 + 32) + 80) = v8;
  if ((*(a1 + 190) & 1) != 0 || *(a1 + 96) == 4)
  {
    v9 = *MEMORY[0x1E695EFF8];
    v10 = *(MEMORY[0x1E695EFF8] + 8);
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = [*(a1 + 48) window];
    v14 = __UIStatusBarManagerForWindow(v13);
    [v14 defaultStatusBarHeightInOrientation:*(a1 + 88)];
    v16 = v15;

    v17 = *(*(*(a1 + 80) + 8) + 24);
    v18 = [*(a1 + 48) window];
    [v11 _originForViewController:v12 orientation:v7 actualStatusBarHeight:v17 fullScreenLayout:v18 inWindow:v16];
    v9 = v19;
    v10 = v20;
  }

  if (!*(a1 + 56))
  {
    return;
  }

  if ((*(a1 + 190) & 1) != 0 || *(a1 + 96) == 4)
  {
    v21 = *MEMORY[0x1E695F058];
    v22 = *(MEMORY[0x1E695F058] + 8);
    v24 = *(MEMORY[0x1E695F058] + 16);
    v23 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    v25 = *(a1 + 32);
    v26 = *(a1 + 40);
    v27 = *(a1 + 184);
    v28 = *(a1 + 88);
    v29 = *(*(*(a1 + 80) + 8) + 24);
    v30 = [*(a1 + 48) window];
    [v25 _boundsForViewController:v26 transition:v27 orientation:v28 fullScreenLayout:v29 inWindow:v30];
    v21 = v31;
    v22 = v32;
    v24 = v33;
    v23 = v34;
  }

  v35 = *(a1 + 96);
  if (v35 == 4)
  {
    [*(a1 + 56) bounds];
    v21 = v36;
    v22 = v37;
    v24 = v38;
    v23 = v39;
    goto LABEL_28;
  }

  if (*(a1 + 190) == 1)
  {
    [*(a1 + 48) bounds];
    v21 = v40;
    v22 = v41;
    v24 = v42;
    v23 = v43;
    [*(a1 + 48) frame];
LABEL_20:
    v9 = v44;
    v10 = v45;
    goto LABEL_28;
  }

  if (v35 == 16 || v35 == 2)
  {
    [*(a1 + 40) formSheetSize];
    v9 = v9 + (v24 - v51) * 0.5;
    v10 = v10 + (v23 - v52) * 0.5;
    v23 = v52;
    v24 = v51;
    goto LABEL_28;
  }

  if (v35 == 1)
  {
    v46 = [objc_opt_self() mainScreen];
    [v46 _referenceBounds];
    v48 = v47;

    if (v24 > v48)
    {
      v49 = [objc_opt_self() mainScreen];
      [v49 _referenceBounds];
      v24 = v50;
    }

    v9 = (*(a1 + 120) - v24) * 0.5;
    v10 = *(a1 + 128) - v23;
    goto LABEL_28;
  }

  if ((*(a1 + 188) & 1) == 0)
  {
    [*(a1 + 64) convertPoint:*(a1 + 72) fromView:{v9, v10}];
    goto LABEL_20;
  }

LABEL_28:
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v54 = *(a1 + 56);
  if (isKindOfClass)
  {
    [v54 contentOffset];
    v21 = v55;
    v22 = v56;
    v54 = *(a1 + 56);
  }

  [v54 setBounds:{v21, v22, v24, v23}];
  v57 = *(a1 + 32);
  *(v57 + 80) = v9;
  *(v57 + 88) = v10;
  [*(a1 + 56) frame];
  [*(a1 + 56) setFrame:{v9, v10}];
  v58 = *(a1 + 184);
  if (v58 <= 0x14 && ((1 << v58) & 0x137E40) != 0)
  {
    v59 = *(a1 + 32);
    *(v59 + 64) = v9;
    *(v59 + 72) = v10;
  }

  if ((*(a1 + 189) & 1) == 0 && (*(a1 + 190) & 1) == 0 && (*(a1 + 191) & 1) == 0)
  {
    v60 = *(a1 + 152);
    v63[0] = *(a1 + 136);
    v63[1] = v60;
    v63[2] = *(a1 + 168);
    [*(a1 + 56) setTransform:v63];
    v61 = *(a1 + 72);
    if (v61)
    {
      if (!*(v61 + 496))
      {
        *(v61 + 496) = *(a1 + 88);
      }
    }
  }

  [*(a1 + 56) frame];
  if ((*(a1 + 192) & 1) != 0 || (v62 = *(a1 + 184), v62 <= 0x11) && ((1 << v62) & 0x32041) != 0)
  {
    [*(a1 + 56) setFrame:{v9, v10}];
  }
}

void __97__UIWindowController__transition_fromViewController_toViewController_target_didFinish_animation___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  if ((*(a1 + 72) & 1) == 0)
  {
    [*(a1 + 32) _setTransitionController:0];
    [*(a1 + 32) _setInteractionController:0];
    [*(a1 + 32) _setInteractiveTransition:0];
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = v5[1];
  v8 = *(a1 + 48);
  if (a3)
  {
    [v5 transitionViewDidComplete:v7 fromView:v6 toView:v8 removeFromView:*(a1 + 73)];
  }

  else
  {
    [v5 transitionViewDidCancel:v7 fromView:v6 toView:v8];
  }

  v9 = [v12 _postInteractiveCompletionHandler];

  if (v9)
  {
    v10 = [v12 _postInteractiveCompletionHandler];
    v10[2]();

    [v12 _setPostInteractiveCompletionHandler:0];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained animationEnded:a3];
  }

  [v12 _setTransitionIsInFlight:0];
  [v12 _setInteractor:0];
  [v12 _setAnimator:0];
  [*(a1 + 56) endDisablingInterfaceAutorotation];
}

void __97__UIWindowController__transition_fromViewController_toViewController_target_didFinish_animation___block_invoke_5(uint64_t a1)
{
  v2 = (*(a1 + 120) & 0xFFFFFFFE) == 10;
  v3 = [*(*(a1 + 32) + 8) window];
  v4 = __UIStatusBarManagerForWindow(v3);
  [v4 statusBarHeight];
  v6 = v5;

  v7 = *(a1 + 104);
  if (v7 != v6 && (v7 == 0.0 || v6 == 0.0))
  {
    (*(*(a1 + 96) + 16))();
    if (*(a1 + 40))
    {
      v8 = *(a1 + 48);
      v9 = *(a1 + 124);
      v10 = MEMORY[0x1E695F058];
      if (v9 == 1)
      {
        v11 = *MEMORY[0x1E695F058];
        v12 = *(MEMORY[0x1E695F058] + 8);
        v13 = *(MEMORY[0x1E695F058] + 16);
        v14 = *(MEMORY[0x1E695F058] + 24);
      }

      else
      {
        v4 = [*(a1 + 56) view];
        [v4 frame];
      }

      [v8 _setToEndFrame:{v11, v12, v13, v14}];
      if ((v9 & 1) == 0)
      {
      }

      v15 = *(a1 + 48);
      v16 = [*(a1 + 64) view];
      [v16 frame];
      [v15 _setFromStartFrame:?];

      v17 = *v10;
      v18 = v10[1];
      v19 = v10[2];
      v20 = v10[3];
      [*(a1 + 48) _setToStartFrame:{*v10, v18, v19, v20}];
      v21 = *(a1 + 48);
      if (*(a1 + 125) == 1)
      {
        [*(a1 + 48) _setFromEndFrame:{v17, v18, v19, v20}];
      }

      else
      {
        v22 = [*(a1 + 64) view];
        [v22 frame];
        [v21 _setFromEndFrame:?];
      }
    }

    v2 = 1;
  }

  v23 = *(a1 + 32);
  v24 = *(a1 + 120);
  v25 = [*(a1 + 64) view];
  [v23 _prepareKeyboardForTransition:v24 fromView:v25];

  *(*(a1 + 32) + 24) = *(a1 + 120);
  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 72));
  *(*(a1 + 32) + 40) = *(a1 + 112);
  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 64));
  objc_storeStrong((*(a1 + 32) + 56), *(a1 + 56));
  if (v2)
  {
    [*(a1 + 56) _updateLayoutForStatusBarAndInterfaceOrientation];
  }

  v26 = *(a1 + 120);
  switch(v26)
  {
    case 14:
      goto LABEL_19;
    case 13:
      v27 = 0;
      v28 = 48;
      goto LABEL_21;
    case 0:
LABEL_19:
      v27 = 1;
      v28 = 56;
LABEL_21:
      v29 = [*(*(a1 + 32) + v28) view];
      [v29 setUserInteractionEnabled:v27];

      v26 = *(a1 + 120);
      break;
  }

  if (v26 == 17 || v26 == 13)
  {
    [*(a1 + 80) layoutIfNeeded];
  }

  v30 = *(a1 + 40);
  if (v30)
  {
    [v30 transitionDuration:*(a1 + 48)];
    [*(a1 + 48) _setDuration:?];
    if (*(a1 + 126) == 1)
    {
      [*(a1 + 32) transitionViewDidStart:*(*(a1 + 32) + 8)];
    }

    if (*(a1 + 127) == 1)
    {
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __97__UIWindowController__transition_fromViewController_toViewController_target_didFinish_animation___block_invoke_6;
      v45[3] = &unk_1E70F3590;
      v31 = &v46;
      v46 = *(a1 + 48);
      [UIView _setAlongsideAnimations:v45];
      v32 = [*(a1 + 32) _interactionController];
      [v32 startInteractiveTransition:*(a1 + 48)];
    }

    else
    {
      v40 = MEMORY[0x1E69E9820];
      v41 = 3221225472;
      v42 = __97__UIWindowController__transition_fromViewController_toViewController_target_didFinish_animation___block_invoke_7;
      v43 = &unk_1E70F3590;
      v31 = &v44;
      v44 = *(a1 + 48);
      [UIView _setAlongsideAnimations:&v40];
      [*(a1 + 40) animateTransition:{*(a1 + 48), v40, v41, v42, v43}];
    }

    v38 = +[UIView _alongsideAnimations];

    if (v38)
    {
      [*(a1 + 48) __runAlongsideAnimations];
      [UIView _setAlongsideAnimations:0];
    }

    v39 = [*(a1 + 48) _animator];

    if (v39)
    {
      [*(a1 + 48) _setTransitionIsInFlight:1];
    }
  }

  else
  {
    v33 = *(*(a1 + 32) + 8);
    v34 = *(a1 + 120);
    v36 = *(a1 + 80);
    v35 = *(a1 + 88);
    if (*(a1 + 128))
    {
      v37 = 0;
    }

    else
    {
      v37 = ((v34 - 15) < 0xFFFFFFFE) & ~*(a1 + 129);
    }

    [v33 transition:v34 fromView:v35 toView:v36 removeFromView:v37];
  }
}

- (void)transitionViewDidStart:(id)start
{
  if (self->_transitionView == start && ![(UIViewController *)self->_toViewController _containsFirstResponder])
  {
    toViewController = self->_toViewController;

    [(UIResponder *)toViewController becomeFirstResponder];
  }
}

- (void)transitionViewDidCancel:(id)cancel fromView:(id)view toView:(id)toView
{
  cancelCopy = cancel;
  viewCopy = view;
  superview = [cancelCopy superview];
  _transitionController = [(UIWindowController *)self _transitionController];
  if (![(UIWindowController *)self _isInteractiveTransition])
  {
    goto LABEL_35;
  }

  if (_transitionController)
  {
    v10 = [_UIViewControllerTransitionContext _associatedTransitionContextForAnimationController:_transitionController];
    v11 = [v10 presentationStyle] == 4;
    if (!viewCopy)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
    if (!viewCopy)
    {
      goto LABEL_8;
    }
  }

  if (!v11)
  {
    superview2 = [cancelCopy superview];
    subviews = [superview2 subviews];
    v14 = [subviews indexOfObjectIdenticalTo:cancelCopy];

    [(UIWindowController *)self _transplantView:viewCopy toSuperview:superview atIndex:v14];
  }

LABEL_8:
  if (v10)
  {
    [v10 _setContainerView:0];
  }

  delegate = [(UITransitionView *)self->_transitionView delegate];

  if (delegate == self)
  {
    [(UITransitionView *)self->_transitionView setDelegate:0];
    if (v11)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (!v11)
  {
LABEL_12:
    [cancelCopy removeFromSuperview];
  }

LABEL_13:
  transitionView = self->_transitionView;
  self->_transitionView = 0;

  v17 = self->_target;
  v18 = self->_fromViewController;
  v19 = self->_toViewController;
  self->_currentTransition = 0;
  target = self->_target;
  self->_target = 0;

  fromViewController = self->_fromViewController;
  self->_didFinish = 0;
  self->_fromViewController = 0;

  toViewController = self->_toViewController;
  self->_toViewController = 0;

  if (v10)
  {
    if (v17)
    {
      if ([v10 _isPresentation])
      {
        if (objc_opt_respondsToSelector())
        {
          [(UIViewController *)v17 _didCancelPresentTransition:v10];
        }
      }

      else if (objc_opt_respondsToSelector())
      {
        [(UIViewController *)v17 _didCancelDismissTransition:v10];
      }
    }

    [(UIWindowController *)self _setTransitionController:0];
    [(UIWindowController *)self _setInteractionController:0];
    [(UIWindowController *)self _setInteractiveTransition:0];
  }

  needsDidDisappear = self->_needsDidDisappear;
  needsDidAppear = self->_needsDidAppear;
  *&self->_needsDidAppear = 0;
  self->_presenting = 0;
  if (needsDidAppear)
  {
    if (v17 == v19)
    {
      [(UIViewController *)v19 setInAnimatedVCTransition:1];
    }

    [(UIViewController *)v19 setFinishingModalTransition:1];
    [(UIViewController *)v19 cancelBeginAppearanceTransition];
    [(UIViewController *)v19 setFinishingModalTransition:0];
  }

  if (needsDidDisappear)
  {
    if (v17 == v18)
    {
      [(UIViewController *)v18 setInAnimatedVCTransition:1];
    }

    [(UIViewController *)v18 cancelBeginAppearanceTransition];
  }

  if ([v10 _isPresentation])
  {
    [(UIViewController *)v19 _presentingViewControllerWillChange:0];
    v25 = v19;
    v26 = 0;
  }

  else
  {
    [(UIViewController *)v18 _presentingViewControllerWillChange:v19];
    v25 = v18;
    v26 = v19;
  }

  [(UIViewController *)v25 _presentingViewControllerDidChange:v26];
  [(UIViewController *)v18 setPerformingModalTransition:0];
  [(UIViewController *)v19 setPerformingModalTransition:0];
  [(UIViewController *)v18 _windowControllerTransitionDidCancel];
  keyboardSceneDelegate = [superview keyboardSceneDelegate];
  [keyboardSceneDelegate popAnimationStyle];

LABEL_35:
}

- (void)transitionViewDidComplete:(id)complete fromView:(id)view toView:(id)toView removeFromView:(BOOL)fromView
{
  fromViewCopy = fromView;
  completeCopy = complete;
  viewCopy = view;
  toViewCopy = toView;
  _transitionController = [(UIWindowController *)self _transitionController];
  _isInteractiveTransition = [(UIWindowController *)self _isInteractiveTransition];
  v46 = toViewCopy;
  if (_transitionController)
  {
    v14 = [_UIViewControllerTransitionContext _associatedTransitionContextForAnimationController:_transitionController];
    presentationStyle = [v14 presentationStyle];
    superview = [completeCopy superview];
    if (presentationStyle == 4)
    {
      v16 = 0;
      LOBYTE(toViewCopy) = 1;
      if (!viewCopy)
      {
        goto LABEL_27;
      }

      goto LABEL_18;
    }
  }

  else
  {
    superview = [completeCopy superview];
    v14 = 0;
  }

  if (completeCopy)
  {
    [completeCopy transform];
    if (CGAffineTransformIsIdentity(&v49))
    {
      goto LABEL_12;
    }

    [completeCopy transform];
  }

  else
  {
    memset(&v49, 0, sizeof(v49));
    if (CGAffineTransformIsIdentity(&v49))
    {
      goto LABEL_12;
    }

    memset(&v48[1], 0, sizeof(CGAffineTransform));
  }

  v49 = v48[1];
  [toViewCopy setTransform:&v49];
  [toViewCopy center];
  [superview convertPoint:completeCopy fromView:?];
  [toViewCopy setCenter:?];
LABEL_12:
  if (!toViewCopy)
  {
    v16 = 0;
    if (!viewCopy)
    {
      goto LABEL_27;
    }

    goto LABEL_18;
  }

  superview2 = [completeCopy superview];
  subviews = [superview2 subviews];
  v16 = [subviews indexOfObjectIdenticalTo:completeCopy];

  [(UIWindowController *)self _transplantView:toViewCopy toSuperview:superview atIndex:v16];
  superview3 = [completeCopy superview];
  objc_opt_class();
  LOBYTE(subviews) = objc_opt_isKindOfClass();

  if (subviews)
  {
    superview4 = [completeCopy superview];
    [superview4 setContentView:toViewCopy];

    dropShadowView = [(UIViewController *)self->_fromViewController dropShadowView];
    [(UIViewController *)self->_toViewController setDropShadowView:dropShadowView];

    [(UIViewController *)self->_fromViewController setDropShadowView:0];
  }

  LOBYTE(toViewCopy) = 0;
  if (viewCopy)
  {
LABEL_18:
    if (!fromViewCopy && ([(UIViewController *)self->_toViewController modalTransitionStyle]== UIModalTransitionStylePartialCurl || [(UIViewController *)self->_toViewController modalPresentationStyle]== 18))
    {
      if ([(UIViewController *)self->_toViewController modalTransitionStyle]== UIModalTransitionStylePartialCurl)
      {
        ++v16;
      }

      if (completeCopy)
      {
        [completeCopy transform];
      }

      else
      {
        memset(v48, 0, 48);
      }

      v49 = v48[0];
      [viewCopy setTransform:&v49];
      [(UIWindowController *)self _transplantView:viewCopy toSuperview:superview atIndex:v16];
      [viewCopy center];
      [superview convertPoint:completeCopy fromView:?];
      [viewCopy setCenter:?];
    }
  }

LABEL_27:
  currentAction = [(UIViewController *)self->_fromViewController currentAction];
  [(UITransitionView *)self->_transitionView _curlUpRevealedHeight];
  if (currentAction)
  {
    currentAction[4] = v23;
  }

  if ((toViewCopy & 1) == 0)
  {
    v24 = completeCopy;
    goto LABEL_34;
  }

  if (viewCopy && fromViewCopy)
  {
    v24 = viewCopy;
LABEL_34:
    [v24 removeFromSuperview];
  }

  if (v14)
  {
    [v14 _setContainerView:0];
  }

  v45 = _transitionController;
  delegate = [(UITransitionView *)self->_transitionView delegate];

  if (delegate == self)
  {
    [(UITransitionView *)self->_transitionView setDelegate:0];
  }

  v44 = viewCopy;
  transitionView = self->_transitionView;
  self->_transitionView = 0;

  v27 = v14;
  if (v14)
  {
    [(UIWindowController *)self _setTransitionController:0];
    [(UIWindowController *)self _setInteractionController:0];
    [(UIWindowController *)self _setInteractiveTransition:0];
  }

  v28 = self->_target;
  didFinish = self->_didFinish;
  v30 = self->_fromViewController;
  v31 = self->_toViewController;
  currentTransition = self->_currentTransition;
  if (objc_opt_respondsToSelector())
  {
    _completionBlock = [(UIViewController *)v28 _completionBlock];
    v34 = _Block_copy(_completionBlock);
  }

  else
  {
    v34 = 0;
  }

  self->_currentTransition = 0;
  target = self->_target;
  self->_target = 0;

  fromViewController = self->_fromViewController;
  self->_didFinish = 0;
  self->_fromViewController = 0;

  toViewController = self->_toViewController;
  self->_toViewController = 0;

  if (v28)
  {
    if (didFinish == 2)
    {
      if (objc_opt_respondsToSelector())
      {
        [(UIViewController *)v28 _didFinishDismissTransition];
      }
    }

    else if (didFinish == 1 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(UIViewController *)v28 _didFinishPresentTransition];
    }
  }

  needsDidDisappear = self->_needsDidDisappear;
  needsDidAppear = self->_needsDidAppear;
  presenting = self->_presenting;
  *&self->_needsDidAppear = 0;
  self->_presenting = 0;
  if (needsDidAppear)
  {
    if (currentTransition && v28 == v31)
    {
      [(UIViewController *)v31 setInAnimatedVCTransition:1];
    }

    [(UIViewController *)v31 setFinishingModalTransition:1];
    [(UIViewController *)v31 endAppearanceTransition];
    [(UIViewController *)v31 setFinishingModalTransition:0];
  }

  if (needsDidDisappear)
  {
    if (currentTransition && v28 == v30)
    {
      [(UIViewController *)v30 setInAnimatedVCTransition:1];
    }

    [(UIViewController *)v30 endAppearanceTransition];
  }

  [(UIViewController *)v30 setPerformingModalTransition:0];
  [(UIViewController *)v31 setPerformingModalTransition:0];
  if (presenting)
  {
    [(UIViewController *)v31 _presentingViewControllerDidChange:v30];
    _modalPreservedFirstResponder = [(UIViewController *)&v30->super.super.isa _modalPreservedFirstResponder];
    [_modalPreservedFirstResponder _becomeFirstResponderWhenPossible];
  }

  else
  {
    [(UIViewController *)v30 _presentingViewControllerDidChange:0];
  }

  if (v34)
  {
    v34[2](v34, 1);
  }

  keyboardSceneDelegate = [superview keyboardSceneDelegate];
  [keyboardSceneDelegate popAnimationStyle];

  if (!_isInteractiveTransition)
  {
    [UIApp endIgnoringInteractionEvents];
  }
}

- (CGPoint)_adjustOrigin:(CGPoint)result givenOtherOrigin:(CGPoint)origin forTransition:(int)transition
{
  if ((transition - 1) >= 2)
  {
    if (((1 << transition) & 0x1C1388) == 0)
    {
      origin.x = result.x;
    }

    if (transition <= 0x14)
    {
      result.x = origin.x;
    }

    origin.y = result.y;
  }

  y = origin.y;
  result.y = y;
  return result;
}

- (void)transitionView:(id)view startCustomTransitionWithDuration:(double)duration
{
  viewCopy = view;
  currentTransition = self->_currentTransition;
  if (currentTransition == 17)
  {
    v9 = viewCopy;
    v8 = 48;
  }

  else
  {
    if (currentTransition != 16)
    {
      goto LABEL_6;
    }

    v9 = viewCopy;
    v8 = 56;
  }

  [*(&self->super.isa + v8) _startPresentCustomTransitionWithDuration:duration];
  viewCopy = v9;
LABEL_6:
}

- (CGPoint)transitionView:(id)view endOriginForFromView:(id)fromView forTransition:(int)transition defaultOrigin:(CGPoint)origin
{
  y = origin.y;
  x = origin.x;
  v8 = *&transition;
  [fromView frame];

  [(UIWindowController *)self _adjustOrigin:v8 givenOtherOrigin:x forTransition:y, v10, v11];
  result.y = v13;
  result.x = v12;
  return result;
}

- (CGPoint)transitionView:(id)view beginOriginForToView:(id)toView forTransition:(int)transition defaultOrigin:(CGPoint)origin
{
  x = self->_beginOriginForToView.x;
  y = self->_beginOriginForToView.y;
  if (x == 1.79769313e308 && y == 1.79769313e308)
  {
    [(UIWindowController *)self _adjustOrigin:*&transition givenOtherOrigin:toView forTransition:origin.x, origin.y, self->_endOriginForToView.x, self->_endOriginForToView.y, v6, v7];
    x = v11;
    y = v12;
  }

  v13 = x;
  v14 = y;
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGPoint)transitionView:(id)view endOriginForToView:(id)toView forTransition:(int)transition defaultOrigin:(CGPoint)origin
{
  y = origin.y;
  x = origin.x;
  viewCopy = view;
  keyboardSceneDelegate = [viewCopy keyboardSceneDelegate];
  [keyboardSceneDelegate visibleFrameInView:0];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  if (self->_endOriginForToView.x != 1.79769313e308 || self->_endOriginForToView.y != 1.79769313e308)
  {
    if (self->_presenting && ((toModalStyle = self->_toModalStyle, toModalStyle == 16) || toModalStyle == 2) && (v30.origin.x = v12, v30.origin.y = v14, v30.size.width = v16, v30.size.height = v18, !CGRectIsEmpty(v30)) && ([(UIViewController *)self->_toViewController interfaceOrientation]- 3) <= 1)
    {
      [viewCopy bounds];
      v22 = v21;
      [(UIViewController *)self->_toViewController formSheetSize];
      x = (v22 - v23) * 0.5;
      window = [viewCopy window];
      v25 = __UIStatusBarManagerForWindow(window);
      [v25 defaultStatusBarHeightInOrientation:1];
      y = v26;
    }

    else
    {
      x = self->_endOriginForToView.x;
      y = self->_endOriginForToView.y;
    }
  }

  v27 = x;
  v28 = y;
  result.y = v28;
  result.x = v27;
  return result;
}

- (UIWindow)window
{
  WeakRetained = objc_loadWeakRetained(&self->_window);

  return WeakRetained;
}

@end