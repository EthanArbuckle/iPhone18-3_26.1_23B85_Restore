@interface _UIWindowSceneDragInteractionImpl_iOS
- (UIView)view;
- (_UIWindowSceneDragInteractionImpl_iOS)init;
- (id)_makeDraggingPanGestureRecognizer;
- (void)_didRecognizePanGesture:(id)gesture;
- (void)didMoveToView:(id)view;
- (void)willMoveToView:(id)view;
@end

@implementation _UIWindowSceneDragInteractionImpl_iOS

- (_UIWindowSceneDragInteractionImpl_iOS)init
{
  v14.receiver = self;
  v14.super_class = _UIWindowSceneDragInteractionImpl_iOS;
  v2 = [(_UIWindowSceneDragInteractionImpl_iOS *)&v14 init];
  if (v2)
  {
    v3 = [[_UIClientToHostRelationshipGestureInteraction alloc] initWithHostIdentifier:@"com.apple.UIKit.UIWindowDragging"];
    clientRelationshipInteraction = v2->_clientRelationshipInteraction;
    v2->_clientRelationshipInteraction = v3;

    v5 = objc_alloc_init(_UIDoubleTapInteraction);
    doubleTapInteraction = v2->_doubleTapInteraction;
    v2->_doubleTapInteraction = v5;

    [(_UIDoubleTapInteraction *)v2->_doubleTapInteraction setIgnoresUIControls:1];
    [(_UIDoubleTapInteraction *)v2->_doubleTapInteraction setNeverRecognizeSimultaneouslyWithOtherGestures:1];
    _makeDraggingPanGestureRecognizer = [(_UIWindowSceneDragInteractionImpl_iOS *)v2 _makeDraggingPanGestureRecognizer];
    directTouchPanGestureRecognizer = v2->_directTouchPanGestureRecognizer;
    v2->_directTouchPanGestureRecognizer = _makeDraggingPanGestureRecognizer;

    [(_UIClientToHostRelationshipGestureInteraction *)v2->_clientRelationshipInteraction addGestureRecognizer:v2->_directTouchPanGestureRecognizer];
    _makeDraggingPanGestureRecognizer2 = [(_UIWindowSceneDragInteractionImpl_iOS *)v2 _makeDraggingPanGestureRecognizer];
    pointerTouchPanGestureRecognizer = v2->_pointerTouchPanGestureRecognizer;
    v2->_pointerTouchPanGestureRecognizer = _makeDraggingPanGestureRecognizer2;

    [(UIGestureRecognizer *)v2->_pointerTouchPanGestureRecognizer setAllowedTouchTypes:&unk_1EFE2BD58];
    [(UIPanGestureRecognizer *)v2->_pointerTouchPanGestureRecognizer _setHysteresis:3.0];
    [(_UIClientToHostRelationshipGestureInteraction *)v2->_clientRelationshipInteraction addGestureRecognizer:v2->_pointerTouchPanGestureRecognizer];
    v11 = objc_alloc_init(_UIRelationshipGestureRecognizer);
    failureRelationshipGestureRecognizer = v2->_failureRelationshipGestureRecognizer;
    v2->_failureRelationshipGestureRecognizer = v11;

    [(UIGestureRecognizer *)v2->_failureRelationshipGestureRecognizer setName:@"UIWindowSceneDragRelationshipRecognizer"];
  }

  return v2;
}

- (id)_makeDraggingPanGestureRecognizer
{
  v2 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:sel__didRecognizePanGesture_];
  [(UIGestureRecognizer *)v2 _setRequiresSystemGesturesToFail:0];
  [(UIGestureRecognizer *)v2 setName:@"com.apple.UIKit.UIWindowDraggingPan"];

  return v2;
}

- (void)_didRecognizePanGesture:(id)gesture
{
  v15 = *MEMORY[0x1E69E9840];
  gestureCopy = gesture;
  if ([gestureCopy state] == 1)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIWindowSceneDrag", &_MergedGlobals_1069);
    if (*CategoryCachedImpl)
    {
      v7 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = v7;
        v9 = [gestureCopy description];
        v13 = 138412290;
        v14 = v9;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Recognized window drag pan gesture in app: %@", &v13, 0xCu);
      }
    }

    [(_UIRelationshipGestureRecognizer *)self->_failureRelationshipGestureRecognizer _succeed];
  }

  else if ([gestureCopy state] == 5 || objc_msgSend(gestureCopy, "state") == 4)
  {
    v6 = __UILogGetCategoryCachedImpl("UIWindowSceneDrag", &qword_1ED49DAC0);
    if (*v6)
    {
      v10 = *(v6 + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = v10;
        v12 = [gestureCopy description];
        v13 = 138412290;
        v14 = v12;
        _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Window drag pan gesture failed in app: %@", &v13, 0xCu);
      }
    }

    [(_UIRelationshipGestureRecognizer *)self->_failureRelationshipGestureRecognizer _fail];
  }
}

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  v5 = objc_storeWeak(&self->_view, viewCopy);
  [viewCopy addInteraction:self->_clientRelationshipInteraction];

  WeakRetained = objc_loadWeakRetained(&self->_view);
  [WeakRetained addInteraction:self->_doubleTapInteraction];

  v7 = objc_loadWeakRetained(&self->_view);
  [v7 addGestureRecognizer:self->_failureRelationshipGestureRecognizer];

  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55___UIWindowSceneDragInteractionImpl_iOS_didMoveToView___block_invoke;
  v10[3] = &unk_1E7106120;
  objc_copyWeak(&v11, &location);
  [(_UIDoubleTapInteraction *)self->_doubleTapInteraction setDidDoubleTap:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55___UIWindowSceneDragInteractionImpl_iOS_didMoveToView___block_invoke_2;
  v8[3] = &unk_1E7106120;
  objc_copyWeak(&v9, &location);
  [(_UIDoubleTapInteraction *)self->_doubleTapInteraction setDidTimeOut:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)willMoveToView:(id)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [WeakRetained removeInteraction:self->_clientRelationshipInteraction];

  v5 = objc_loadWeakRetained(&self->_view);
  [v5 removeInteraction:self->_doubleTapInteraction];

  [(_UIDoubleTapInteraction *)self->_doubleTapInteraction setDidDoubleTap:0];
  v6 = objc_loadWeakRetained(&self->_view);
  [v6 removeGestureRecognizer:self->_failureRelationshipGestureRecognizer];

  objc_storeWeak(&self->_view, 0);
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end