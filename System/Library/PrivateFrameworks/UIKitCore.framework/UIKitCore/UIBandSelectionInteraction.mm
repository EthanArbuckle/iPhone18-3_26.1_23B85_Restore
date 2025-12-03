@interface UIBandSelectionInteraction
- (BOOL)_gestureRecognizer:(id)recognizer canBePreventedByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)_gestureRecognizer:(id)recognizer canPreventGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CGPoint)_locationInView:(id)view;
- (CGRect)_selectionRectWithLocation:(CGPoint)location;
- (CGRect)selectionRect;
- (UIBandSelectionInteraction)initWithSelectionHandler:(void *)selectionHandler;
- (UIView)view;
- (unint64_t)_handleBeginEvent;
- (void)_callHandlerWithState:(int64_t)state;
- (void)_handleDidBegin;
- (void)_handleDidEndFromState:(unint64_t)state;
- (void)_handleDidMove;
- (void)_handleHoverGesture:(id)gesture;
- (void)_handlePressGesture:(id)gesture;
- (void)_updateDebugUIWithGesture:(id)gesture;
- (void)_updateInteractionEnabled;
- (void)_viewTraitCollectionDidChange:(id)change;
- (void)dealloc;
- (void)didMoveToView:(id)view;
- (void)setEnabled:(BOOL)enabled;
- (void)willMoveToView:(id)view;
@end

@implementation UIBandSelectionInteraction

- (void)_updateInteractionEnabled
{
  view = [(UIBandSelectionInteraction *)self view];

  if (view)
  {
    view2 = [(UIBandSelectionInteraction *)self view];
    traitCollection = [view2 traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    isEnabled = [(UIBandSelectionInteraction *)self isEnabled];
    view = (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 && isEnabled;
  }

  visualProvider = [(UIBandSelectionInteraction *)self visualProvider];
  [visualProvider setEnabled:view];

  hoverGR = [(UIBandSelectionInteraction *)self hoverGR];
  [hoverGR setEnabled:view];

  pressGR = [(UIBandSelectionInteraction *)self pressGR];
  [pressGR setEnabled:view];
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (void)dealloc
{
  [(UIBandSelectionInteraction *)self willMoveToView:0];
  v3.receiver = self;
  v3.super_class = UIBandSelectionInteraction;
  [(UIBandSelectionInteraction *)&v3 dealloc];
}

- (UIBandSelectionInteraction)initWithSelectionHandler:(void *)selectionHandler
{
  v4 = selectionHandler;
  v8.receiver = self;
  v8.super_class = UIBandSelectionInteraction;
  v5 = [(UIBandSelectionInteraction *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(UIBandSelectionInteraction *)v5 setSelectionHandler:v4];
    v6->_enabled = 1;
    v6->_internalState = 1;
  }

  return v6;
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    [(UIBandSelectionInteraction *)self _updateInteractionEnabled];
  }
}

- (CGRect)selectionRect
{
  if (self->_internalState < 2)
  {
    v8 = *MEMORY[0x1E695F050];
    v9 = *(MEMORY[0x1E695F050] + 8);
    v10 = *(MEMORY[0x1E695F050] + 16);
    v11 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    view = [(UIBandSelectionInteraction *)self view];
    [(UIBandSelectionInteraction *)self _locationInView:view];
    v5 = v4;
    v7 = v6;

    [(UIBandSelectionInteraction *)self _selectionRectWithLocation:v5, v7];
  }

  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (void)willMoveToView:(id)view
{
  hoverGR = [(UIBandSelectionInteraction *)self hoverGR];
  view = [hoverGR view];
  hoverGR2 = [(UIBandSelectionInteraction *)self hoverGR];
  [view removeGestureRecognizer:hoverGR2];

  pressGR = [(UIBandSelectionInteraction *)self pressGR];
  view2 = [pressGR view];
  pressGR2 = [(UIBandSelectionInteraction *)self pressGR];
  [view2 removeGestureRecognizer:pressGR2];

  visualProvider = [(UIBandSelectionInteraction *)self visualProvider];
  [visualProvider setView:0];

  objc_storeWeak(&self->_view, 0);
}

- (void)didMoveToView:(id)view
{
  objc_storeWeak(&self->_view, view);
  hoverGR = [(UIBandSelectionInteraction *)self hoverGR];

  if (!hoverGR)
  {
    v5 = [[UIHoverGestureRecognizer alloc] initWithTarget:self action:sel__handleHoverGesture_];
    [(UIBandSelectionInteraction *)self setHoverGR:v5];

    hoverGR2 = [(UIBandSelectionInteraction *)self hoverGR];
    [hoverGR2 setName:@"com.apple.UIKit.bandSelectionHover"];

    hoverGR3 = [(UIBandSelectionInteraction *)self hoverGR];
    [hoverGR3 _setPausesWhilePanning:0];

    v8 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:sel__handlePressGesture_];
    [(UIBandSelectionInteraction *)self setPressGR:v8];

    pressGR = [(UIBandSelectionInteraction *)self pressGR];
    [pressGR setName:@"com.apple.UIKit.bandSelectionInitiationPress"];

    pressGR2 = [(UIBandSelectionInteraction *)self pressGR];
    [pressGR2 setMinimumPressDuration:0.0];

    pressGR3 = [(UIBandSelectionInteraction *)self pressGR];
    [pressGR3 setButtonMaskRequired:1];

    pressGR4 = [(UIBandSelectionInteraction *)self pressGR];
    [pressGR4 setDelegate:self];

    pressGR5 = [(UIBandSelectionInteraction *)self pressGR];
    [pressGR5 setDelaysTouchesEnded:0];

    pressGR6 = [(UIBandSelectionInteraction *)self pressGR];
    [pressGR6 setCancelsTouchesInView:0];

    v15 = objc_opt_new();
    [(UIBandSelectionInteraction *)self setVisualProvider:v15];
  }

  WeakRetained = objc_loadWeakRetained(&self->_view);
  hoverGR4 = [(UIBandSelectionInteraction *)self hoverGR];
  [WeakRetained addGestureRecognizer:hoverGR4];

  v18 = objc_loadWeakRetained(&self->_view);
  pressGR7 = [(UIBandSelectionInteraction *)self pressGR];
  [v18 addGestureRecognizer:pressGR7];

  visualProvider = [(UIBandSelectionInteraction *)self visualProvider];
  v21 = objc_loadWeakRetained(&self->_view);
  [visualProvider setView:v21];

  [(UIBandSelectionInteraction *)self _updateInteractionEnabled];
}

- (void)_viewTraitCollectionDidChange:(id)change
{
  userInterfaceIdiom = [change userInterfaceIdiom];
  view = [(UIBandSelectionInteraction *)self view];
  traitCollection = [view traitCollection];
  userInterfaceIdiom2 = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom != userInterfaceIdiom2)
  {

    [(UIBandSelectionInteraction *)self _updateInteractionEnabled];
  }
}

- (CGRect)_selectionRectWithLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  view = [(UIBandSelectionInteraction *)self view];
  v7 = self->_initialLocation.x;
  v8 = self->_initialLocation.y;
  [view _currentScreenScale];
  v10 = UIPointRoundToScale(v7, v8, v9);
  v12 = v11;
  view2 = [(UIBandSelectionInteraction *)self view];
  [view2 _currentScreenScale];
  v15 = UIPointRoundToScale(x, y, v14);
  if (v10 >= v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v10;
  }

  if (v12 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v12;
  }

  v19 = vabdd_f64(v10, v15);
  v20 = vabdd_f64(v12, v16);

  v28.origin.x = v17;
  v28.origin.y = v18;
  v28.size.width = v19;
  v28.size.height = v20;
  v21 = CGRectEqualToRect(v28, *MEMORY[0x1E695F058]);
  v22 = 1.0;
  if (v20 >= 1.0)
  {
    v23 = v20;
  }

  else
  {
    v23 = 1.0;
  }

  if (v19 >= 1.0)
  {
    v22 = v19;
  }

  if (v21)
  {
    v24 = v20;
  }

  else
  {
    v24 = v23;
  }

  if (v21)
  {
    v25 = v19;
  }

  else
  {
    v25 = v22;
  }

  v26 = v17;
  v27 = v18;
  result.size.height = v24;
  result.size.width = v25;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (CGPoint)_locationInView:(id)view
{
  viewCopy = view;
  hoverGR = [(UIBandSelectionInteraction *)self hoverGR];
  [hoverGR locationInView:viewCopy];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)_handlePressGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([gestureCopy state] == 1)
  {
    v4 = 0;
  }

  else
  {
    if ([gestureCopy state] < 3)
    {
      goto LABEL_6;
    }

    v4 = 2;
  }

  handleEvent(stateMachineSpec_2, self->_internalState, v4, self, &self->_internalState);
LABEL_6:
  hoverGR = [(UIBandSelectionInteraction *)self hoverGR];
  [(UIBandSelectionInteraction *)self _updateDebugUIWithGesture:hoverGR];
}

- (void)_handleHoverGesture:(id)gesture
{
  if ([gesture state] == 2)
  {
    handleEvent(stateMachineSpec_2, self->_internalState, 1, self, &self->_internalState);
  }

  if (![(UIBandSelectionInteraction *)self _isSelecting])
  {
    view = [(UIBandSelectionInteraction *)self view];
    [(UIBandSelectionInteraction *)self _locationInView:view];
    self->_initialLocation.x = v5;
    self->_initialLocation.y = v6;
  }

  hoverGR = [(UIBandSelectionInteraction *)self hoverGR];
  [(UIBandSelectionInteraction *)self _updateDebugUIWithGesture:hoverGR];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  recognizerCopy = recognizer;
  pressGR = [(UIBandSelectionInteraction *)self pressGR];

  if (pressGR == recognizerCopy)
  {
    _isPointerTouch = [touchCopy _isPointerTouch];
  }

  else
  {
    _isPointerTouch = 1;
  }

  return _isPointerTouch;
}

- (BOOL)_gestureRecognizer:(id)recognizer canPreventGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  pressGR = [(UIBandSelectionInteraction *)self pressGR];

  return pressGR != recognizerCopy;
}

- (BOOL)_gestureRecognizer:(id)recognizer canBePreventedByGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  pressGR = [(UIBandSelectionInteraction *)self pressGR];

  if (pressGR == recognizerCopy)
  {
    isDragInteractionGestureRecognizer = _isDragInteractionGestureRecognizer(gestureRecognizerCopy);
  }

  else
  {
    isDragInteractionGestureRecognizer = 1;
  }

  return isDragInteractionGestureRecognizer;
}

- (unint64_t)_handleBeginEvent
{
  view = [(UIBandSelectionInteraction *)self view];
  [(UIBandSelectionInteraction *)self _locationInView:view];
  self->_initialLocation.x = v4;
  self->_initialLocation.y = v5;

  pressGR = [(UIBandSelectionInteraction *)self pressGR];
  self->_initialModifierFlags = [pressGR modifierFlags];

  shouldBeginHandler = [(UIBandSelectionInteraction *)self shouldBeginHandler];

  if (!shouldBeginHandler)
  {
    return 2;
  }

  shouldBeginHandler2 = [(UIBandSelectionInteraction *)self shouldBeginHandler];
  v9 = (shouldBeginHandler2)[2](shouldBeginHandler2, self, self->_initialLocation.x, self->_initialLocation.y);

  if (v9)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)_handleDidBegin
{
  _bandVisibilityHandler = [(UIBandSelectionInteraction *)self _bandVisibilityHandler];
  if (_bandVisibilityHandler)
  {
    _bandVisibilityHandler2 = [(UIBandSelectionInteraction *)self _bandVisibilityHandler];
    self->_hidesVisuals = _bandVisibilityHandler2[2](self->_initialLocation.x, self->_initialLocation.y) ^ 1;
    p_hidesVisuals = &self->_hidesVisuals;
  }

  else
  {
    self->_hidesVisuals = 0;
    p_hidesVisuals = &self->_hidesVisuals;
  }

  if (!*p_hidesVisuals)
  {
    visualProvider = [(UIBandSelectionInteraction *)self visualProvider];
    [visualProvider beginAtPoint:{self->_initialLocation.x, self->_initialLocation.y}];
  }

  [(UIBandSelectionInteraction *)self _callHandlerWithState:1];
}

- (void)_handleDidMove
{
  if (!self->_hidesVisuals)
  {
    visualProvider = [(UIBandSelectionInteraction *)self visualProvider];
    view = [(UIBandSelectionInteraction *)self view];
    [(UIBandSelectionInteraction *)self _locationInView:view];
    [visualProvider updateWithPoint:?];
  }

  [(UIBandSelectionInteraction *)self _callHandlerWithState:2];
}

- (void)_handleDidEndFromState:(unint64_t)state
{
  if (!self->_hidesVisuals)
  {
    visualProvider = [(UIBandSelectionInteraction *)self visualProvider];
    view = [(UIBandSelectionInteraction *)self view];
    [(UIBandSelectionInteraction *)self _locationInView:view];
    [visualProvider endAtPoint:?];
  }

  if (state != 1)
  {
    [(UIBandSelectionInteraction *)self _callHandlerWithState:3];
  }

  self->_initialLocation = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  self->_hidesVisuals = 0;
  self->_state = 0;
  self->_initialModifierFlags = 0;
}

- (void)_callHandlerWithState:(int64_t)state
{
  self->_state = state;
  selectionHandler = [(UIBandSelectionInteraction *)self selectionHandler];
  selectionHandler[2](selectionHandler, self);
}

- (void)_updateDebugUIWithGesture:(id)gesture
{
  gestureCopy = gesture;
  if (-[UIBandSelectionInteraction _debugUIEnabled](self, "_debugUIEnabled") && [gestureCopy state] < 3)
  {
    if (!_MergedGlobals_1186)
    {
      view = [(UIBandSelectionInteraction *)self view];
      window = [view window];
      v11 = qword_1ED49F350;
      qword_1ED49F350 = window;

      v12 = [[_UIMIDebugPointerView alloc] initWithFrame:0.0, 0.0, 19.0, 19.0];
      v13 = _MergedGlobals_1186;
      _MergedGlobals_1186 = v12;

      [_MergedGlobals_1186 setUserInteractionEnabled:0];
      layer = [_MergedGlobals_1186 layer];
      [layer setZPosition:100000.0];

      [qword_1ED49F350 addSubview:_MergedGlobals_1186];
    }

    if (!qword_1ED49F348)
    {
      v15 = objc_opt_new();
      v16 = qword_1ED49F348;
      qword_1ED49F348 = v15;

      shapeLayer = [qword_1ED49F348 shapeLayer];
      [shapeLayer setFillColor:0];

      v18 = [UIColor colorWithWhite:0.0 alpha:0.5];
      cGColor = [v18 CGColor];
      shapeLayer2 = [qword_1ED49F348 shapeLayer];
      [shapeLayer2 setStrokeColor:cGColor];

      v21 = *MEMORY[0x1E6979E90];
      shapeLayer3 = [qword_1ED49F348 shapeLayer];
      [shapeLayer3 setLineJoin:v21];

      shapeLayer4 = [qword_1ED49F348 shapeLayer];
      [shapeLayer4 setLineDashPattern:&unk_1EFE2CB98];

      [qword_1ED49F350 addSubview:qword_1ED49F348];
    }

    [(UIBandSelectionInteraction *)self selectionRect];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    [qword_1ED49F348 frame];
    if (v29 != v33 || v31 != v32)
    {
      view2 = [(UIBandSelectionInteraction *)self view];
      [view2 convertRect:qword_1ED49F350 toView:{v25, v27, v29, v31}];
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v43 = v42;

      [qword_1ED49F348 setFrame:{v37, v39, v41, v43}];
      v44 = [UIBezierPath bezierPathWithRect:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v41, v43];
      cGPath = [v44 CGPath];
      shapeLayer5 = [qword_1ED49F348 shapeLayer];
      [shapeLayer5 setPath:cGPath];
    }

    if (!qword_1ED49F358)
    {
      v47 = +[UIColor systemPurpleColor];
      v48 = [_UIDebugDot dotWithTitle:@"Initial Location" color:v47];
      v49 = qword_1ED49F358;
      qword_1ED49F358 = v48;

      [qword_1ED49F350 addSubview:qword_1ED49F358];
    }

    if (!qword_1ED49F360)
    {
      v50 = +[UIColor systemBlueColor];
      v51 = [_UIDebugDot dotWithTitle:@"Current Location" color:v50];
      v52 = qword_1ED49F360;
      qword_1ED49F360 = v51;

      [qword_1ED49F350 addSubview:qword_1ED49F360];
    }

    view3 = [(UIBandSelectionInteraction *)self view];
    [gestureCopy locationInView:view3];
    v55 = v54;
    v57 = v56;

    view4 = [(UIBandSelectionInteraction *)self view];
    [view4 convertPoint:qword_1ED49F350 toView:{self->_initialLocation.x, self->_initialLocation.y}];
    [qword_1ED49F358 setCenter:?];

    view5 = [(UIBandSelectionInteraction *)self view];
    [view5 convertPoint:qword_1ED49F350 toView:{v55, v57}];
    [qword_1ED49F360 setCenter:?];

    v60 = *MEMORY[0x1E69796E0];
    [(UIBandSelectionInteraction *)self selectionRect];
    v83 = CGRectInset(v82, -9.5, -9.5);
    x = v83.origin.x;
    y = v83.origin.y;
    width = v83.size.width;
    height = v83.size.height;
    if (CGRectGetHeight(v83) > 19.0 || (v84.origin.x = x, v84.origin.y = y, v84.size.width = width, v84.size.height = height, CGRectGetWidth(v84) > 19.0))
    {
      v65 = *MEMORY[0x1E69796E8];

      v60 = v65;
    }

    v85.origin.x = x;
    v85.origin.y = y;
    v85.size.width = width;
    v85.size.height = height;
    v66 = CGRectGetMinX(v85) - v55 + 9.5;
    v86.origin.x = x;
    v86.origin.y = y;
    v86.size.width = width;
    v86.size.height = height;
    v67 = CGRectGetMinY(v86) - v57 + 9.5;
    v87.origin.x = x;
    v87.origin.y = y;
    v87.size.width = width;
    v87.size.height = height;
    v75 = v55;
    v68 = CGRectGetWidth(v87);
    v88.origin.x = x;
    v88.origin.y = y;
    v88.size.width = width;
    v88.size.height = height;
    v69 = CGRectGetHeight(v88);
    v70 = objc_opt_new();
    [v70 setDampingRatio:1.0 response:0.3];
    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __56__UIBandSelectionInteraction__updateDebugUIWithGesture___block_invoke;
    v79[3] = &unk_1E70F32F0;
    v80 = v60;
    v81 = 0x3FF0000000000000;
    v71 = v60;
    [UIView _animateUsingSpringBehavior:v70 tracking:0 animations:v79 completion:0];
    if ([(UIBandSelectionInteraction *)self _isSelecting])
    {
      v72 = 0.0001;
    }

    else
    {
      v72 = 0.15;
    }

    v73 = objc_opt_new();
    [v73 setDampingRatio:1.0 response:v72];
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = __56__UIBandSelectionInteraction__updateDebugUIWithGesture___block_invoke_2;
    v78[3] = &__block_descriptor_64_e5_v8__0l;
    *&v78[4] = v66;
    *&v78[5] = v67;
    *&v78[6] = v68;
    *&v78[7] = v69;
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __56__UIBandSelectionInteraction__updateDebugUIWithGesture___block_invoke_3;
    v76[3] = &unk_1E70F3FD8;
    v77 = gestureCopy;
    [UIView _animateUsingSpringBehavior:v73 tracking:0 animations:v78 completion:v76];
    view6 = [(UIBandSelectionInteraction *)self view];
    [view6 convertPoint:qword_1ED49F350 toView:{v75, v57}];
    [_MergedGlobals_1186 setCenter:?];
  }

  else
  {
    [_MergedGlobals_1186 removeFromSuperview];
    v5 = _MergedGlobals_1186;
    _MergedGlobals_1186 = 0;

    [qword_1ED49F348 removeFromSuperview];
    v6 = qword_1ED49F348;
    qword_1ED49F348 = 0;

    [qword_1ED49F358 removeFromSuperview];
    v7 = qword_1ED49F358;
    qword_1ED49F358 = 0;

    [qword_1ED49F360 removeFromSuperview];
    v8 = qword_1ED49F360;
    qword_1ED49F360 = 0;
  }
}

void __56__UIBandSelectionInteraction__updateDebugUIWithGesture___block_invoke(uint64_t a1)
{
  [_MergedGlobals_1186 setAlpha:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = [_MergedGlobals_1186 layer];
  [v3 setCornerCurve:v2];
}

uint64_t __56__UIBandSelectionInteraction__updateDebugUIWithGesture___block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) state];
  if (result >= 3)
  {
    v2 = _MergedGlobals_1186;

    return [v2 setAlpha:0.0];
  }

  return result;
}

@end