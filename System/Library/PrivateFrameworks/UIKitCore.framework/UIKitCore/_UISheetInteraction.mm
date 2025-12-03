@interface _UISheetInteraction
- (BOOL)_descendentScrollView:(id)view shouldPreserveStartOffset:(CGPoint)offset;
- (BOOL)_descendentScrollViewShouldMaintainRelativeDistanceFromSafeArea:(id)area;
- (BOOL)_descendentScrollViewShouldScrollVertically:(id)vertically;
- (BOOL)_panGestureRecognizer:(id)recognizer shouldTryToBeginHorizontallyWithEvent:(id)event;
- (BOOL)_panGestureRecognizer:(id)recognizer shouldTryToBeginVerticallyWithEvent:(id)event;
- (BOOL)_shouldBeFoundByDescendentScrollView:(id)view;
- (BOOL)_shouldInteractWithDescendentScrollView:(id)view startOffset:(CGPoint)offset maxTopOffset:(double)topOffset;
- (BOOL)delegateAllowsInteractWithQuicklyScrollingDescendentScrollView;
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)isDragging;
- (BOOL)isUnconstrainedOffsetBeyondSideOrTopExtentInverted:(BOOL)inverted;
- (CGPoint)_scrollView:(id)view adjustedUnconstrainedOffsetForUnconstrainedOffset:(CGPoint)offset startOffset:(CGPoint)startOffset horizontalVelocity:(double *)velocity verticalVelocity:(double *)verticalVelocity animator:(id *)animator;
- (CGPoint)attachmentPoint;
- (CGPoint)currentOffset;
- (CGPoint)currentVelocity;
- (UIView)view;
- (_UISheetInteraction)init;
- (_UISheetInteractionDelegate)delegate;
- (id)_currentDragPanGesture;
- (void)_animateWithParameters:(id)parameters animations:(id)animations;
- (void)_hyperOutOfProcessViewAnimator:(id)animator getPresentationPointForInterruptedAnimation:(double *)animation;
- (void)cancelDraggingIfNeeded;
- (void)didMoveToView:(id)view;
- (void)draggingBeganFromSource:(id)source withRubberBandCoefficient:(double)coefficient;
- (void)draggingChangedInSource:(id)source withTranslation:(CGPoint)translation velocity:(CGPoint)velocity animateChange:(BOOL)change;
- (void)draggingEndedInSource:(id)source;
- (void)handlePan:(id)pan;
- (void)invalidateDetents;
- (void)invalidateIndexOfCurrentDetent;
- (void)invalidateRubberBandExtentBeyondMaximumOffset;
- (void)invalidateRubberBandExtentBeyondMinimumOffset;
- (void)registerPanGestureRecognizer:(id)recognizer;
- (void)sendCurrentOffsetDidChange;
- (void)setCurrentOffsetWasInvalidated:(id)invalidated;
- (void)setDelegate:(id)delegate;
- (void)setDragSource:(id)source;
- (void)setEnabled:(BOOL)enabled;
- (void)unregisterPanGestureRecognizer:(id)recognizer;
- (void)updateRegisteredPanGestureRecognizerEnabled:(id)enabled;
- (void)willMoveToView:(id)view;
@end

@implementation _UISheetInteraction

- (void)invalidateIndexOfCurrentDetent
{
  interactor = [(_UISheetInteraction *)self interactor];
  [interactor _invalidateUnconstrainedPoint];
}

- (_UISheetInteraction)init
{
  v32.receiver = self;
  v32.super_class = _UISheetInteraction;
  v2 = [(_UISheetInteraction *)&v32 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_scrollingExpandsToLargerDetentWhenScrolledToEdge = 257;
    v2->_scrollInteractionEnabled = 1;
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    registeredPanGestureRecognizers = v3->_registeredPanGestureRecognizers;
    v3->_registeredPanGestureRecognizers = v4;

    v6 = objc_alloc_init(UIPanGestureRecognizer);
    backgroundGestureRecognizer = v3->_backgroundGestureRecognizer;
    v3->_backgroundGestureRecognizer = v6;

    [(UIGestureRecognizer *)v3->_backgroundGestureRecognizer setName:@"_UISheetInteractionBackgroundDismissRecognizer"];
    [(UIPanGestureRecognizer *)v3->_backgroundGestureRecognizer setDelegate:v3];
    [(UIPanGestureRecognizer *)v3->_backgroundGestureRecognizer setAllowedScrollTypesMask:2];
    [(_UISheetInteraction *)v3 registerPanGestureRecognizer:v3->_backgroundGestureRecognizer];
    v8 = [[_UIHyperInteractor alloc] initWithDimensions:2];
    interactor = v3->_interactor;
    v3->_interactor = v8;

    v10 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_SheetDecelerationFactor, @"SheetDecelerationFactor", _UIInternalPreferenceUpdateDouble);
    v11 = *&qword_1ED48A8E0;
    if (v10)
    {
      v11 = 0.99;
    }

    [(_UIHyperInteractor *)v3->_interactor _setDecelerationRate:v11];
    [(_UIHyperInteractor *)v3->_interactor _setDelegate:v3];
    v12 = MEMORY[0x1E695DF70];
    v13 = [[_UIHyperpoint alloc] initWithDimensions:[(_UIHyperInteractor *)v3->_interactor _dimensions]];
    v14 = [v12 arrayWithObject:v13];
    detentPoints = v3->_detentPoints;
    v3->_detentPoints = v14;

    v16 = [[_UIHyperregionUnion alloc] initWithDimensions:[(_UIHyperInteractor *)v3->_interactor _dimensions]];
    detentUnion = v3->_detentUnion;
    v3->_detentUnion = v16;

    [(_UIHyperregionUnion *)v3->_detentUnion _setRegions:v3->_detentPoints];
    v18 = [[_UIHyperrectangle alloc] initWithDimensions:[(_UIHyperInteractor *)v3->_interactor _dimensions]];
    detentContinuum = v3->_detentContinuum;
    v3->_detentContinuum = v18;

    objc_initWeak(&location, v3);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __27___UISheetInteraction_init__block_invoke;
    v29[3] = &unk_1E70F4A98;
    objc_copyWeak(&v30, &location);
    [(_UIHyperInteractor *)v3->_interactor _setRegionGetter:v29];
    v20 = [[_UIHyperAsymmetricExtender alloc] initWithDimensions:[(_UIHyperInteractor *)v3->_interactor _dimensions]];
    extender = v3->_extender;
    v3->_extender = v20;

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __27___UISheetInteraction_init__block_invoke_5;
    v27[3] = &unk_1E70F4AE8;
    objc_copyWeak(&v28, &location);
    [(_UIHyperInteractor *)v3->_interactor _setExtenderGetter:v27];
    v22 = [[_UIHyperOutOfProcessViewAnimator alloc] initWithDimensions:[(_UIHyperInteractor *)v3->_interactor _dimensions]];
    animator = v3->_animator;
    v3->_animator = v22;

    v33 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    [(_UIHyperOutOfProcessViewAnimator *)v3->_animator _setPreferredFrameRateRange:*&v33.minimum, *&v33.maximum, *&v33.preferred];
    [(_UIHyperOutOfProcessViewAnimator *)v3->_animator _setUpdateReason:1048612];
    [(_UIHyperOutOfProcessViewAnimator *)v3->_animator _setDelegate:v3];
    [(_UIHyperInteractor *)v3->_interactor _setAnimator:v3->_animator];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __27___UISheetInteraction_init__block_invoke_8;
    v25[3] = &unk_1E70F4B10;
    objc_copyWeak(&v26, &location);
    [(_UIHyperInteractor *)v3->_interactor _setUnconstrainedPointGetter:v25];
    objc_destroyWeak(&v26);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (void)cancelDraggingIfNeeded
{
  if ([(_UISheetInteraction *)self isDragging])
  {
    dragSource = [(_UISheetInteraction *)self dragSource];
    [(_UISheetInteraction *)self draggingCancelledInSource:dragSource];
  }
}

- (BOOL)isDragging
{
  dragSource = [(_UISheetInteraction *)self dragSource];
  v3 = dragSource != 0;

  return v3;
}

- (CGPoint)currentOffset
{
  interactor = [(_UISheetInteraction *)self interactor];
  _presentationPoint = [interactor _presentationPoint];

  v4 = *_presentationPoint;
  v5 = _presentationPoint[1];
  result.y = v5;
  result.x = v4;
  return result;
}

- (void)invalidateDetents
{
  interactor = [(_UISheetInteraction *)self interactor];
  [interactor _invalidateRegion];

  interactor2 = [(_UISheetInteraction *)self interactor];
  [interactor2 _invalidateUnconstrainedPoint];
}

- (void)willMoveToView:(id)view
{
  viewCopy = view;
  view = [(_UISheetInteraction *)self view];

  v5 = view;
  if (view && view != viewCopy)
  {
    [(_UISheetInteraction *)self cancelDraggingIfNeeded];
    backgroundGestureRecognizer = [(_UISheetInteraction *)self backgroundGestureRecognizer];
    [view removeGestureRecognizer:backgroundGestureRecognizer];

    v5 = view;
  }
}

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  [(_UISheetInteraction *)self setView:viewCopy];
  if (viewCopy)
  {
    backgroundGestureRecognizer = [(_UISheetInteraction *)self backgroundGestureRecognizer];
    [viewCopy addGestureRecognizer:backgroundGestureRecognizer];
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_delegate, obj);
    *&self->_delegateFlags = *&self->_delegateFlags & 0xFE | objc_opt_respondsToSelector() & 1;
  }
}

- (void)setEnabled:(BOOL)enabled
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    if (!enabled)
    {
      [(_UISheetInteraction *)self cancelDraggingIfNeeded];
    }

    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    registeredPanGestureRecognizers = [(_UISheetInteraction *)self registeredPanGestureRecognizers];
    v5 = [registeredPanGestureRecognizers countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(registeredPanGestureRecognizers);
          }

          [(_UISheetInteraction *)self updateRegisteredPanGestureRecognizerEnabled:*(*(&v9 + 1) + 8 * v8++)];
        }

        while (v6 != v8);
        v6 = [registeredPanGestureRecognizers countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)setDragSource:(id)source
{
  sourceCopy = source;
  if (self->_dragSource != sourceCopy)
  {
    v7 = sourceCopy;
    objc_storeStrong(&self->_dragSource, source);
    interactor = [(_UISheetInteraction *)self interactor];
    [interactor _invalidateRegion];

    sourceCopy = v7;
  }
}

- (void)setCurrentOffsetWasInvalidated:(id)invalidated
{
  if (self->_currentOffsetWasInvalidated != invalidated)
  {
    invalidatedCopy = invalidated;
    v6 = _Block_copy(invalidatedCopy);
    currentOffsetWasInvalidated = self->_currentOffsetWasInvalidated;
    self->_currentOffsetWasInvalidated = v6;

    interactor = [(_UISheetInteraction *)self interactor];
    [interactor _setPresentationPointWasInvalidated:invalidatedCopy];
  }
}

- (CGPoint)currentVelocity
{
  interactor = [(_UISheetInteraction *)self interactor];
  _velocity = [interactor _velocity];

  v4 = *_velocity;
  v5 = _velocity[1];
  result.y = v5;
  result.x = v4;
  return result;
}

- (void)sendCurrentOffsetDidChange
{
  delegate = [(_UISheetInteraction *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(_UISheetInteraction *)self delegate];
    [(_UISheetInteraction *)self currentOffset];
    [delegate2 sheetInteraction:self didChangeOffset:?];
  }
}

- (void)invalidateRubberBandExtentBeyondMinimumOffset
{
  interactor = [(_UISheetInteraction *)self interactor];
  [interactor _invalidateExtender];
}

- (void)invalidateRubberBandExtentBeyondMaximumOffset
{
  interactor = [(_UISheetInteraction *)self interactor];
  [interactor _invalidateExtender];
}

- (BOOL)isUnconstrainedOffsetBeyondSideOrTopExtentInverted:(BOOL)inverted
{
  invertedCopy = inverted;
  interactor = [(_UISheetInteraction *)self interactor];
  [interactor _unconstrainedExtent];
  v7 = v6;
  interactor2 = [(_UISheetInteraction *)self interactor];
  [interactor2 _extent];
  v10 = v9;

  interactor3 = [(_UISheetInteraction *)self interactor];
  _extentVector = [interactor3 _extentVector];

  v13 = atan2(-*(_extentVector + 8), *_extentVector);
  v14 = -2.61799388;
  if (invertedCopy)
  {
    v14 = 0.523598776;
  }

  v15 = -0.523598776;
  if (invertedCopy)
  {
    v15 = 2.61799388;
  }

  v16 = v13 < v14;
  if (v13 > v15)
  {
    v16 = 1;
  }

  return v7 > v10 && v16;
}

- (CGPoint)attachmentPoint
{
  _currentDragPanGesture = [(_UISheetInteraction *)self _currentDragPanGesture];
  if (_currentDragPanGesture)
  {
    view = [(_UISheetInteraction *)self view];
    [_currentDragPanGesture locationInView:view];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v6 = *MEMORY[0x1E695F050];
    v8 = *(MEMORY[0x1E695F050] + 8);
  }

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (void)registerPanGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  registeredPanGestureRecognizers = [(_UISheetInteraction *)self registeredPanGestureRecognizers];
  [registeredPanGestureRecognizers addObject:recognizerCopy];

  [recognizerCopy addTarget:self action:sel_handlePan_];
  [(_UISheetInteraction *)self updateRegisteredPanGestureRecognizerEnabled:recognizerCopy];
  [(_UISheetInteraction *)self handlePan:recognizerCopy];
}

- (void)unregisterPanGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  registeredPanGestureRecognizers = [(_UISheetInteraction *)self registeredPanGestureRecognizers];
  [registeredPanGestureRecognizers removeObject:recognizerCopy];

  [recognizerCopy removeTarget:self action:sel_handlePan_];
}

- (void)updateRegisteredPanGestureRecognizerEnabled:(id)enabled
{
  enabledCopy = enabled;
  [enabledCopy setEnabled:{-[_UISheetInteraction isEnabled](self, "isEnabled")}];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  recognizerCopy = recognizer;
  backgroundGestureRecognizer = [(_UISheetInteraction *)self backgroundGestureRecognizer];

  if (backgroundGestureRecognizer == recognizerCopy)
  {
    +[UIPanGestureRecognizer _defaultHysteresis];
    v10 = v9;
    if ([touchCopy _isPointerTouch])
    {
      view = [(_UISheetInteraction *)self view];
      view2 = [(_UISheetInteraction *)self view];
      [touchCopy locationInView:view2];
      v13 = [view hitTest:0 withEvent:?];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = 0.0;
      }
    }

    backgroundGestureRecognizer2 = [(_UISheetInteraction *)self backgroundGestureRecognizer];
    [backgroundGestureRecognizer2 _setHysteresis:v10];
  }

  return 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  name = [gestureRecognizer name];
  v5 = [name isEqualToString:@"com.apple.UIKit.UIWindowDraggingPan"];

  return v5;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  NSClassFromString(&cfstr_Pkdrawinggestu.isa);
  if ((objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v5 = 1, (_UIInternalPreferenceUsesDefault(&_UIInternalPreference_ForceCardDismissGestureDoesNotRequireFailure, @"ForceCardDismissGestureDoesNotRequireFailure", _UIInternalPreferenceUpdateBool) & 1) == 0) && byte_1EA95E114)
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_panGestureRecognizer:(id)recognizer shouldTryToBeginHorizontallyWithEvent:(id)event
{
  recognizerCopy = recognizer;
  delegate = [(_UISheetInteraction *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(_UISheetInteraction *)self delegate];
    v9 = [delegate2 sheetInteraction:self shouldBeginHorizontalRubberBandingWithGestureRecognizer:recognizerCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_panGestureRecognizer:(id)recognizer shouldTryToBeginVerticallyWithEvent:(id)event
{
  eventCopy = event;
  delegate = [(_UISheetInteraction *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(_UISheetInteraction *)self delegate];
    v9 = [delegate2 sheetInteraction:self shouldAllowVerticalRubberBandingWithEvent:eventCopy];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)handlePan:(id)pan
{
  panCopy = pan;
  state = [panCopy state];
  if (state <= 2)
  {
    if (state == 1)
    {
      _scrollDeviceCategory = [(UIPanGestureRecognizer *)panCopy _scrollDeviceCategory];
      [(_UISheetInteraction *)self draggingBeganFromSource:panCopy withRubberBandCoefficient:_UIScrollViewRubberBandCoefficient(_scrollDeviceCategory)];
    }

    else
    {
      v5 = state == 2;
      v6 = panCopy;
      if (!v5)
      {
        goto LABEL_13;
      }

      [panCopy translationInView:0];
      v8 = v7;
      v10 = v9;
      [panCopy velocityInView:0];
      [(_UISheetInteraction *)self draggingChangedInSource:panCopy withTranslation:0 velocity:v8 animateChange:v10, v11, v12];
    }

LABEL_12:
    v6 = panCopy;
    goto LABEL_13;
  }

  if (state == 3)
  {
    [(_UISheetInteraction *)self draggingEndedInSource:panCopy];
    goto LABEL_12;
  }

  v5 = state == 4;
  v6 = panCopy;
  if (v5)
  {
    [(_UISheetInteraction *)self draggingCancelledInSource:panCopy];
    goto LABEL_12;
  }

LABEL_13:
}

- (BOOL)_descendentScrollViewShouldScrollVertically:(id)vertically
{
  verticallyCopy = vertically;
  [verticallyCopy _maxTopOffset];
  [verticallyCopy contentOffset];
  LOBYTE(self) = [_UISheetInteraction _shouldInteractWithDescendentScrollView:"_shouldInteractWithDescendentScrollView:startOffset:maxTopOffset:" startOffset:verticallyCopy maxTopOffset:?];

  return self;
}

- (CGPoint)_scrollView:(id)view adjustedUnconstrainedOffsetForUnconstrainedOffset:(CGPoint)offset startOffset:(CGPoint)startOffset horizontalVelocity:(double *)velocity verticalVelocity:(double *)verticalVelocity animator:(id *)animator
{
  y = startOffset.y;
  x = startOffset.x;
  v12 = offset.y;
  v13 = offset.x;
  viewCopy = view;
  [viewCopy _maxTopOffset];
  v17 = v16;
  self->_previousMaxTopOffset = v16;
  if (![(_UISheetInteraction *)self _shouldInteractWithDescendentScrollView:viewCopy startOffset:x maxTopOffset:y, v16])
  {
    goto LABEL_21;
  }

  _canScrollIgnoringAncestorPermissionY = [viewCopy _canScrollIgnoringAncestorPermissionY];
  v19 = v12 > y && [(_UISheetInteraction *)self scrollingExpandsToLargerDetentWhenScrolledToEdge];
  v20 = *verticalVelocity;
  detentPoints = [(_UISheetInteraction *)self detentPoints];
  v22 = [detentPoints objectAtIndexedSubscript:0];
  v23 = *([v22 _value] + 8);

  if (_canScrollIgnoringAncestorPermissionY)
  {
    if (v12 >= v17)
    {
      if (v19)
      {
        interactor = [(_UISheetInteraction *)self interactor];
        v41 = *([interactor _unconstrainedPoint] + 8);
        interactor2 = [(_UISheetInteraction *)self interactor];
        v43 = v41 + *([interactor2 _initialTranslation] + 8);

        v24 = v23 - v43;
        if (y - v12 >= v24)
        {
          *verticalVelocity = 0.0;
          v24 = y - v12;
        }

        else
        {
          y = v12 + v24;
        }
      }

      else
      {
        v24 = 0.0;
        if (v12 == v17 && v17 == y && *verticalVelocity > 0.0)
        {
          [(_UISheetInteraction *)self currentOffset];
          if (v44 > v23)
          {
            *verticalVelocity = 0.0;
          }
        }

        y = v12;
      }
    }

    else
    {
      v24 = v17 - v12;
      *verticalVelocity = 0.0;
      y = v17;
    }
  }

  else
  {
    v24 = y - v12;
    *verticalVelocity = 0.0;
  }

  [viewCopy _verticalVelocity];
  if (v25 == 0.0)
  {
    panGestureRecognizer = [viewCopy panGestureRecognizer];
    [panGestureRecognizer velocityInView:0];
    v28 = v27;
  }

  else
  {
    v28 = 0.0;
  }

  flags = self->_flags;
  *&self->_flags = flags | 1;
  if ([(_UISheetInteraction *)self isDragging]|| v12 >= v17 && (_canScrollIgnoringAncestorPermissionY & 1) != 0 && !v19)
  {
    if (![(_UISheetInteraction *)self isDragging])
    {
LABEL_20:
      *&self->_flags = *&self->_flags & 0xFE | flags & 1;
      v12 = y;
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  panGestureRecognizer2 = [viewCopy panGestureRecognizer];
  _scrollDeviceCategory = [(UIPanGestureRecognizer *)panGestureRecognizer2 _scrollDeviceCategory];
  v32 = _UIScrollViewRubberBandCoefficient(_scrollDeviceCategory);

  [(_UISheetInteraction *)self draggingBeganFromSource:viewCopy withRubberBandCoefficient:v32];
  [viewCopy contentOffset];
  if (v33 >= v17)
  {
LABEL_18:
    v37 = 0;
    goto LABEL_19;
  }

  if (v20 != 0.0)
  {
    v34 = [UIViewPropertyAnimator alloc];
    v35 = _UISheetTransitionDuration();
    v36 = _UISheetTransitionTimingCurve();
    *animator = [(UIViewPropertyAnimator *)v34 initWithDuration:v36 timingParameters:v35];

    v37 = 1;
LABEL_19:
    [(_UISheetInteraction *)self draggingChangedInSource:viewCopy withTranslation:v37 velocity:0.0 animateChange:v24, 0.0, v28];
    goto LABEL_20;
  }

LABEL_21:

  v38 = v13;
  v39 = v12;
  result.y = v39;
  result.x = v38;
  return result;
}

- (BOOL)_descendentScrollView:(id)view shouldPreserveStartOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  viewCopy = view;
  previousMaxTopOffset = self->_previousMaxTopOffset;
  [viewCopy contentOffset];
  v10 = v9 < previousMaxTopOffset && [(_UISheetInteraction *)self _shouldInteractWithDescendentScrollView:viewCopy startOffset:x maxTopOffset:y, previousMaxTopOffset];

  return v10;
}

- (BOOL)_descendentScrollViewShouldMaintainRelativeDistanceFromSafeArea:(id)area
{
  if (*&self->_flags)
  {
    return 1;
  }

  animator = [(_UISheetInteraction *)self animator];
  _isAnimating = [animator _isAnimating];

  return _isAnimating;
}

- (BOOL)_shouldBeFoundByDescendentScrollView:(id)view
{
  viewCopy = view;
  _parentScrollView = [viewCopy _parentScrollView];
  v5 = !_parentScrollView || ![viewCopy _canScrollY] || (objc_msgSend(_parentScrollView, "_canScrollY") & 1) == 0;

  return v5;
}

- (BOOL)_shouldInteractWithDescendentScrollView:(id)view startOffset:(CGPoint)offset maxTopOffset:(double)topOffset
{
  viewCopy = view;
  UIRoundToViewScale(viewCopy);
  v10 = v9;
  UIRoundToViewScale(viewCopy);
  if (v10 >= v11 && ([viewCopy _isScrubbing] & 1) == 0)
  {
    refreshControl = [viewCopy refreshControl];
    if (refreshControl || ([viewCopy _canScrollX] & 1) != 0 || objc_msgSend(viewCopy, "_isAncestorOfFirstResponder") && objc_msgSend(viewCopy, "keyboardDismissMode") == 2 || !-[_UISheetInteraction isEnabled](self, "isEnabled") || !-[_UISheetInteraction isScrollInteractionEnabled](self, "isScrollInteractionEnabled"))
    {
      v15 = 1;
      goto LABEL_14;
    }

    isDragging = [(_UISheetInteraction *)self isDragging];
    if (isDragging)
    {
      dragSource = [(_UISheetInteraction *)self dragSource];
      if (dragSource != viewCopy)
      {
        v15 = 1;
LABEL_27:

        goto LABEL_14;
      }
    }

    [viewCopy _intervalBetweenPanGestures];
    v18 = v17;
    animator = &_UIInternalPreference_MinimumSheetSwipeInterval;
    v20 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_MinimumSheetSwipeInterval, @"MinimumSheetSwipeInterval", _UIInternalPreferenceUpdateDouble);
    v21 = *&qword_1EA95E120;
    if (v20)
    {
      v21 = 0.4;
    }

    if (v18 >= v21 || [(_UISheetInteraction *)self isDragging])
    {
      v22 = 0;
    }

    else
    {
      animator = [(_UISheetInteraction *)self animator];
      if (([animator _isAnimating] & 1) == 0 && !-[_UISheetInteraction delegateAllowsInteractWithQuicklyScrollingDescendentScrollView](self, "delegateAllowsInteractWithQuicklyScrollingDescendentScrollView"))
      {

        v15 = 1;
        if (!isDragging)
        {
          goto LABEL_14;
        }

        goto LABEL_27;
      }

      v22 = 1;
    }

    [viewCopy contentOffset];
    if (v23 >= topOffset)
    {
      v15 = 0;
      if ((v22 & 1) == 0)
      {
LABEL_23:
        if (isDragging)
        {
          goto LABEL_27;
        }

        goto LABEL_14;
      }
    }

    else
    {
      panGestureRecognizer = [viewCopy panGestureRecognizer];
      [panGestureRecognizer velocityInView:0];
      v15 = v25 < 0.0;

      if (!v22)
      {
        goto LABEL_23;
      }
    }

    if (isDragging)
    {
      goto LABEL_27;
    }

LABEL_14:

    v12 = !v15;
    goto LABEL_15;
  }

  v12 = 0;
LABEL_15:

  return v12;
}

- (BOOL)delegateAllowsInteractWithQuicklyScrollingDescendentScrollView
{
  if ((*&self->_delegateFlags & 1) == 0)
  {
    return 0;
  }

  selfCopy = self;
  delegate = [(_UISheetInteraction *)self delegate];
  LOBYTE(selfCopy) = [delegate sheetInteractionShouldInteractWithQuicklyScrollingDescendentScrollView:selfCopy];

  return selfCopy;
}

- (void)draggingBeganFromSource:(id)source withRubberBandCoefficient:(double)coefficient
{
  sourceCopy = source;
  if (![(_UISheetInteraction *)self isDragging])
  {
    kdebug_trace();
    _UIUpdateRequestRegistryAddRecord(&mainRegistry, updateRequest, 0x100024u);
    _UIQOSManagedCommitsBegin(self, @"Dragging");
    [(_UISheetInteraction *)self setDragSource:sourceCopy];
    interactor = [(_UISheetInteraction *)self interactor];
    [interactor _setRubberBandCoefficient:coefficient];

    interactor2 = [(_UISheetInteraction *)self interactor];
    [interactor2 _interactionBegan];

    delegate = [(_UISheetInteraction *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate _sheetInteractionDraggingBegan:self withRubberBandCoefficient:coefficient];
    }
  }
}

- (void)draggingChangedInSource:(id)source withTranslation:(CGPoint)translation velocity:(CGPoint)velocity animateChange:(BOOL)change
{
  changeCopy = change;
  translationCopy = translation;
  velocityCopy = velocity;
  sourceCopy = source;
  if ([(_UISheetInteraction *)self isDragging])
  {
    dragSource = [(_UISheetInteraction *)self dragSource];

    if (dragSource == sourceCopy)
    {
      interactor = [(_UISheetInteraction *)self interactor];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __86___UISheetInteraction_draggingChangedInSource_withTranslation_velocity_animateChange___block_invoke;
      v12[3] = &unk_1E70F35E0;
      v13 = changeCopy;
      v12[4] = self;
      [interactor _interactionChangedCopyingTranslation:&translationCopy velocity:&velocityCopy mutatingState:v12];

      delegate = [(_UISheetInteraction *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [delegate _sheetInteractionDraggingChanged:self withTranslation:changeCopy velocity:translationCopy.x animateChange:{translationCopy.y, velocityCopy.x, velocityCopy.y}];
      }
    }
  }
}

- (void)draggingEndedInSource:(id)source
{
  sourceCopy = source;
  if ([(_UISheetInteraction *)self isDragging])
  {
    dragSource = [(_UISheetInteraction *)self dragSource];

    if (dragSource == sourceCopy)
    {
      kdebug_trace();
      _UIUpdateRequestRegistryRemoveRecord(&mainRegistry, updateRequest, 0x100024u);
      _UIQOSManagedCommitsEnd(self, @"Dragging");
      [(_UISheetInteraction *)self setGeneratingAnimations:1];
      interactor = [(_UISheetInteraction *)self interactor];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __45___UISheetInteraction_draggingEndedInSource___block_invoke;
      v8[3] = &unk_1E70F3590;
      v8[4] = self;
      [interactor _interactionEndedMutatingState:v8];

      [(_UISheetInteraction *)self setGeneratingAnimations:0];
      delegate = [(_UISheetInteraction *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [delegate _sheetInteractionDraggingEnded:self];
      }

      [(_UISheetInteraction *)self setIndexOfCurrentDetent:0];
    }
  }
}

- (id)_currentDragPanGesture
{
  dragSource = [(_UISheetInteraction *)self dragSource];
  if ([dragSource _isGestureType:8])
  {
    panGestureRecognizer = dragSource;
LABEL_5:
    v4 = panGestureRecognizer;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    panGestureRecognizer = [dragSource panGestureRecognizer];
    goto LABEL_5;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (void)_hyperOutOfProcessViewAnimator:(id)animator getPresentationPointForInterruptedAnimation:(double *)animation
{
  delegate = [(_UISheetInteraction *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(_UISheetInteraction *)self delegate];
    [delegate2 offsetForInterruptedAnimationInSheetInteraction:self];
    v10 = v9;
    v12 = v11;

    *animation = v10;
    *(animation + 1) = v12;
  }
}

- (void)_animateWithParameters:(id)parameters animations:(id)animations
{
  animationsCopy = animations;
  parametersCopy = parameters;
  animator = [(_UISheetInteraction *)self animator];
  [animator _animateWithParameters:parametersCopy animations:animationsCopy];
}

- (_UISheetInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end