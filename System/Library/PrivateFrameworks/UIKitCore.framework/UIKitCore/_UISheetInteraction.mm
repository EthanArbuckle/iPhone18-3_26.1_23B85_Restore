@interface _UISheetInteraction
- (BOOL)_descendentScrollView:(id)a3 shouldPreserveStartOffset:(CGPoint)a4;
- (BOOL)_descendentScrollViewShouldMaintainRelativeDistanceFromSafeArea:(id)a3;
- (BOOL)_descendentScrollViewShouldScrollVertically:(id)a3;
- (BOOL)_panGestureRecognizer:(id)a3 shouldTryToBeginHorizontallyWithEvent:(id)a4;
- (BOOL)_panGestureRecognizer:(id)a3 shouldTryToBeginVerticallyWithEvent:(id)a4;
- (BOOL)_shouldBeFoundByDescendentScrollView:(id)a3;
- (BOOL)_shouldInteractWithDescendentScrollView:(id)a3 startOffset:(CGPoint)a4 maxTopOffset:(double)a5;
- (BOOL)delegateAllowsInteractWithQuicklyScrollingDescendentScrollView;
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)isDragging;
- (BOOL)isUnconstrainedOffsetBeyondSideOrTopExtentInverted:(BOOL)a3;
- (CGPoint)_scrollView:(id)a3 adjustedUnconstrainedOffsetForUnconstrainedOffset:(CGPoint)a4 startOffset:(CGPoint)a5 horizontalVelocity:(double *)a6 verticalVelocity:(double *)a7 animator:(id *)a8;
- (CGPoint)attachmentPoint;
- (CGPoint)currentOffset;
- (CGPoint)currentVelocity;
- (UIView)view;
- (_UISheetInteraction)init;
- (_UISheetInteractionDelegate)delegate;
- (id)_currentDragPanGesture;
- (void)_animateWithParameters:(id)a3 animations:(id)a4;
- (void)_hyperOutOfProcessViewAnimator:(id)a3 getPresentationPointForInterruptedAnimation:(double *)a4;
- (void)cancelDraggingIfNeeded;
- (void)didMoveToView:(id)a3;
- (void)draggingBeganFromSource:(id)a3 withRubberBandCoefficient:(double)a4;
- (void)draggingChangedInSource:(id)a3 withTranslation:(CGPoint)a4 velocity:(CGPoint)a5 animateChange:(BOOL)a6;
- (void)draggingEndedInSource:(id)a3;
- (void)handlePan:(id)a3;
- (void)invalidateDetents;
- (void)invalidateIndexOfCurrentDetent;
- (void)invalidateRubberBandExtentBeyondMaximumOffset;
- (void)invalidateRubberBandExtentBeyondMinimumOffset;
- (void)registerPanGestureRecognizer:(id)a3;
- (void)sendCurrentOffsetDidChange;
- (void)setCurrentOffsetWasInvalidated:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setDragSource:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)unregisterPanGestureRecognizer:(id)a3;
- (void)updateRegisteredPanGestureRecognizerEnabled:(id)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation _UISheetInteraction

- (void)invalidateIndexOfCurrentDetent
{
  v2 = [(_UISheetInteraction *)self interactor];
  [v2 _invalidateUnconstrainedPoint];
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
    v3 = [(_UISheetInteraction *)self dragSource];
    [(_UISheetInteraction *)self draggingCancelledInSource:v3];
  }
}

- (BOOL)isDragging
{
  v2 = [(_UISheetInteraction *)self dragSource];
  v3 = v2 != 0;

  return v3;
}

- (CGPoint)currentOffset
{
  v2 = [(_UISheetInteraction *)self interactor];
  v3 = [v2 _presentationPoint];

  v4 = *v3;
  v5 = v3[1];
  result.y = v5;
  result.x = v4;
  return result;
}

- (void)invalidateDetents
{
  v3 = [(_UISheetInteraction *)self interactor];
  [v3 _invalidateRegion];

  v4 = [(_UISheetInteraction *)self interactor];
  [v4 _invalidateUnconstrainedPoint];
}

- (void)willMoveToView:(id)a3
{
  v4 = a3;
  v7 = [(_UISheetInteraction *)self view];

  v5 = v7;
  if (v7 && v7 != v4)
  {
    [(_UISheetInteraction *)self cancelDraggingIfNeeded];
    v6 = [(_UISheetInteraction *)self backgroundGestureRecognizer];
    [v7 removeGestureRecognizer:v6];

    v5 = v7;
  }
}

- (void)didMoveToView:(id)a3
{
  v5 = a3;
  [(_UISheetInteraction *)self setView:v5];
  if (v5)
  {
    v4 = [(_UISheetInteraction *)self backgroundGestureRecognizer];
    [v5 addGestureRecognizer:v4];
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_delegate, obj);
    *&self->_delegateFlags = *&self->_delegateFlags & 0xFE | objc_opt_respondsToSelector() & 1;
  }
}

- (void)setEnabled:(BOOL)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
    if (!a3)
    {
      [(_UISheetInteraction *)self cancelDraggingIfNeeded];
    }

    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = [(_UISheetInteraction *)self registeredPanGestureRecognizers];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(v4);
          }

          [(_UISheetInteraction *)self updateRegisteredPanGestureRecognizerEnabled:*(*(&v9 + 1) + 8 * v8++)];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)setDragSource:(id)a3
{
  v5 = a3;
  if (self->_dragSource != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_dragSource, a3);
    v6 = [(_UISheetInteraction *)self interactor];
    [v6 _invalidateRegion];

    v5 = v7;
  }
}

- (void)setCurrentOffsetWasInvalidated:(id)a3
{
  if (self->_currentOffsetWasInvalidated != a3)
  {
    v5 = a3;
    v6 = _Block_copy(v5);
    currentOffsetWasInvalidated = self->_currentOffsetWasInvalidated;
    self->_currentOffsetWasInvalidated = v6;

    v8 = [(_UISheetInteraction *)self interactor];
    [v8 _setPresentationPointWasInvalidated:v5];
  }
}

- (CGPoint)currentVelocity
{
  v2 = [(_UISheetInteraction *)self interactor];
  v3 = [v2 _velocity];

  v4 = *v3;
  v5 = v3[1];
  result.y = v5;
  result.x = v4;
  return result;
}

- (void)sendCurrentOffsetDidChange
{
  v3 = [(_UISheetInteraction *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(_UISheetInteraction *)self delegate];
    [(_UISheetInteraction *)self currentOffset];
    [v5 sheetInteraction:self didChangeOffset:?];
  }
}

- (void)invalidateRubberBandExtentBeyondMinimumOffset
{
  v2 = [(_UISheetInteraction *)self interactor];
  [v2 _invalidateExtender];
}

- (void)invalidateRubberBandExtentBeyondMaximumOffset
{
  v2 = [(_UISheetInteraction *)self interactor];
  [v2 _invalidateExtender];
}

- (BOOL)isUnconstrainedOffsetBeyondSideOrTopExtentInverted:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UISheetInteraction *)self interactor];
  [v5 _unconstrainedExtent];
  v7 = v6;
  v8 = [(_UISheetInteraction *)self interactor];
  [v8 _extent];
  v10 = v9;

  v11 = [(_UISheetInteraction *)self interactor];
  v12 = [v11 _extentVector];

  v13 = atan2(-*(v12 + 8), *v12);
  v14 = -2.61799388;
  if (v3)
  {
    v14 = 0.523598776;
  }

  v15 = -0.523598776;
  if (v3)
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
  v3 = [(_UISheetInteraction *)self _currentDragPanGesture];
  if (v3)
  {
    v4 = [(_UISheetInteraction *)self view];
    [v3 locationInView:v4];
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

- (void)registerPanGestureRecognizer:(id)a3
{
  v5 = a3;
  v4 = [(_UISheetInteraction *)self registeredPanGestureRecognizers];
  [v4 addObject:v5];

  [v5 addTarget:self action:sel_handlePan_];
  [(_UISheetInteraction *)self updateRegisteredPanGestureRecognizerEnabled:v5];
  [(_UISheetInteraction *)self handlePan:v5];
}

- (void)unregisterPanGestureRecognizer:(id)a3
{
  v5 = a3;
  v4 = [(_UISheetInteraction *)self registeredPanGestureRecognizers];
  [v4 removeObject:v5];

  [v5 removeTarget:self action:sel_handlePan_];
}

- (void)updateRegisteredPanGestureRecognizerEnabled:(id)a3
{
  v4 = a3;
  [v4 setEnabled:{-[_UISheetInteraction isEnabled](self, "isEnabled")}];
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UISheetInteraction *)self backgroundGestureRecognizer];

  if (v8 == v7)
  {
    +[UIPanGestureRecognizer _defaultHysteresis];
    v10 = v9;
    if ([v6 _isPointerTouch])
    {
      v11 = [(_UISheetInteraction *)self view];
      v12 = [(_UISheetInteraction *)self view];
      [v6 locationInView:v12];
      v13 = [v11 hitTest:0 withEvent:?];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = 0.0;
      }
    }

    v14 = [(_UISheetInteraction *)self backgroundGestureRecognizer];
    [v14 _setHysteresis:v10];
  }

  return 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v4 = [a4 name];
  v5 = [v4 isEqualToString:@"com.apple.UIKit.UIWindowDraggingPan"];

  return v5;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v4 = a4;
  NSClassFromString(&cfstr_Pkdrawinggestu.isa);
  if ((objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v5 = 1, (_UIInternalPreferenceUsesDefault(&_UIInternalPreference_ForceCardDismissGestureDoesNotRequireFailure, @"ForceCardDismissGestureDoesNotRequireFailure", _UIInternalPreferenceUpdateBool) & 1) == 0) && byte_1EA95E114)
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_panGestureRecognizer:(id)a3 shouldTryToBeginHorizontallyWithEvent:(id)a4
{
  v5 = a3;
  v6 = [(_UISheetInteraction *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(_UISheetInteraction *)self delegate];
    v9 = [v8 sheetInteraction:self shouldBeginHorizontalRubberBandingWithGestureRecognizer:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_panGestureRecognizer:(id)a3 shouldTryToBeginVerticallyWithEvent:(id)a4
{
  v5 = a4;
  v6 = [(_UISheetInteraction *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(_UISheetInteraction *)self delegate];
    v9 = [v8 sheetInteraction:self shouldAllowVerticalRubberBandingWithEvent:v5];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)handlePan:(id)a3
{
  v14 = a3;
  v4 = [v14 state];
  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      v13 = [(UIPanGestureRecognizer *)v14 _scrollDeviceCategory];
      [(_UISheetInteraction *)self draggingBeganFromSource:v14 withRubberBandCoefficient:_UIScrollViewRubberBandCoefficient(v13)];
    }

    else
    {
      v5 = v4 == 2;
      v6 = v14;
      if (!v5)
      {
        goto LABEL_13;
      }

      [v14 translationInView:0];
      v8 = v7;
      v10 = v9;
      [v14 velocityInView:0];
      [(_UISheetInteraction *)self draggingChangedInSource:v14 withTranslation:0 velocity:v8 animateChange:v10, v11, v12];
    }

LABEL_12:
    v6 = v14;
    goto LABEL_13;
  }

  if (v4 == 3)
  {
    [(_UISheetInteraction *)self draggingEndedInSource:v14];
    goto LABEL_12;
  }

  v5 = v4 == 4;
  v6 = v14;
  if (v5)
  {
    [(_UISheetInteraction *)self draggingCancelledInSource:v14];
    goto LABEL_12;
  }

LABEL_13:
}

- (BOOL)_descendentScrollViewShouldScrollVertically:(id)a3
{
  v4 = a3;
  [v4 _maxTopOffset];
  [v4 contentOffset];
  LOBYTE(self) = [_UISheetInteraction _shouldInteractWithDescendentScrollView:"_shouldInteractWithDescendentScrollView:startOffset:maxTopOffset:" startOffset:v4 maxTopOffset:?];

  return self;
}

- (CGPoint)_scrollView:(id)a3 adjustedUnconstrainedOffsetForUnconstrainedOffset:(CGPoint)a4 startOffset:(CGPoint)a5 horizontalVelocity:(double *)a6 verticalVelocity:(double *)a7 animator:(id *)a8
{
  y = a5.y;
  x = a5.x;
  v12 = a4.y;
  v13 = a4.x;
  v15 = a3;
  [v15 _maxTopOffset];
  v17 = v16;
  self->_previousMaxTopOffset = v16;
  if (![(_UISheetInteraction *)self _shouldInteractWithDescendentScrollView:v15 startOffset:x maxTopOffset:y, v16])
  {
    goto LABEL_21;
  }

  v18 = [v15 _canScrollIgnoringAncestorPermissionY];
  v19 = v12 > y && [(_UISheetInteraction *)self scrollingExpandsToLargerDetentWhenScrolledToEdge];
  v20 = *a7;
  v21 = [(_UISheetInteraction *)self detentPoints];
  v22 = [v21 objectAtIndexedSubscript:0];
  v23 = *([v22 _value] + 8);

  if (v18)
  {
    if (v12 >= v17)
    {
      if (v19)
      {
        v40 = [(_UISheetInteraction *)self interactor];
        v41 = *([v40 _unconstrainedPoint] + 8);
        v42 = [(_UISheetInteraction *)self interactor];
        v43 = v41 + *([v42 _initialTranslation] + 8);

        v24 = v23 - v43;
        if (y - v12 >= v24)
        {
          *a7 = 0.0;
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
        if (v12 == v17 && v17 == y && *a7 > 0.0)
        {
          [(_UISheetInteraction *)self currentOffset];
          if (v44 > v23)
          {
            *a7 = 0.0;
          }
        }

        y = v12;
      }
    }

    else
    {
      v24 = v17 - v12;
      *a7 = 0.0;
      y = v17;
    }
  }

  else
  {
    v24 = y - v12;
    *a7 = 0.0;
  }

  [v15 _verticalVelocity];
  if (v25 == 0.0)
  {
    v26 = [v15 panGestureRecognizer];
    [v26 velocityInView:0];
    v28 = v27;
  }

  else
  {
    v28 = 0.0;
  }

  flags = self->_flags;
  *&self->_flags = flags | 1;
  if ([(_UISheetInteraction *)self isDragging]|| v12 >= v17 && (v18 & 1) != 0 && !v19)
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

  v30 = [v15 panGestureRecognizer];
  v31 = [(UIPanGestureRecognizer *)v30 _scrollDeviceCategory];
  v32 = _UIScrollViewRubberBandCoefficient(v31);

  [(_UISheetInteraction *)self draggingBeganFromSource:v15 withRubberBandCoefficient:v32];
  [v15 contentOffset];
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
    *a8 = [(UIViewPropertyAnimator *)v34 initWithDuration:v36 timingParameters:v35];

    v37 = 1;
LABEL_19:
    [(_UISheetInteraction *)self draggingChangedInSource:v15 withTranslation:v37 velocity:0.0 animateChange:v24, 0.0, v28];
    goto LABEL_20;
  }

LABEL_21:

  v38 = v13;
  v39 = v12;
  result.y = v39;
  result.x = v38;
  return result;
}

- (BOOL)_descendentScrollView:(id)a3 shouldPreserveStartOffset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  previousMaxTopOffset = self->_previousMaxTopOffset;
  [v7 contentOffset];
  v10 = v9 < previousMaxTopOffset && [(_UISheetInteraction *)self _shouldInteractWithDescendentScrollView:v7 startOffset:x maxTopOffset:y, previousMaxTopOffset];

  return v10;
}

- (BOOL)_descendentScrollViewShouldMaintainRelativeDistanceFromSafeArea:(id)a3
{
  if (*&self->_flags)
  {
    return 1;
  }

  v3 = [(_UISheetInteraction *)self animator];
  v4 = [v3 _isAnimating];

  return v4;
}

- (BOOL)_shouldBeFoundByDescendentScrollView:(id)a3
{
  v3 = a3;
  v4 = [v3 _parentScrollView];
  v5 = !v4 || ![v3 _canScrollY] || (objc_msgSend(v4, "_canScrollY") & 1) == 0;

  return v5;
}

- (BOOL)_shouldInteractWithDescendentScrollView:(id)a3 startOffset:(CGPoint)a4 maxTopOffset:(double)a5
{
  v8 = a3;
  UIRoundToViewScale(v8);
  v10 = v9;
  UIRoundToViewScale(v8);
  if (v10 >= v11 && ([v8 _isScrubbing] & 1) == 0)
  {
    v13 = [v8 refreshControl];
    if (v13 || ([v8 _canScrollX] & 1) != 0 || objc_msgSend(v8, "_isAncestorOfFirstResponder") && objc_msgSend(v8, "keyboardDismissMode") == 2 || !-[_UISheetInteraction isEnabled](self, "isEnabled") || !-[_UISheetInteraction isScrollInteractionEnabled](self, "isScrollInteractionEnabled"))
    {
      v15 = 1;
      goto LABEL_14;
    }

    v14 = [(_UISheetInteraction *)self isDragging];
    if (v14)
    {
      v5 = [(_UISheetInteraction *)self dragSource];
      if (v5 != v8)
      {
        v15 = 1;
LABEL_27:

        goto LABEL_14;
      }
    }

    [v8 _intervalBetweenPanGestures];
    v18 = v17;
    v19 = &_UIInternalPreference_MinimumSheetSwipeInterval;
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
      v19 = [(_UISheetInteraction *)self animator];
      if (([v19 _isAnimating] & 1) == 0 && !-[_UISheetInteraction delegateAllowsInteractWithQuicklyScrollingDescendentScrollView](self, "delegateAllowsInteractWithQuicklyScrollingDescendentScrollView"))
      {

        v15 = 1;
        if (!v14)
        {
          goto LABEL_14;
        }

        goto LABEL_27;
      }

      v22 = 1;
    }

    [v8 contentOffset];
    if (v23 >= a5)
    {
      v15 = 0;
      if ((v22 & 1) == 0)
      {
LABEL_23:
        if (v14)
        {
          goto LABEL_27;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v24 = [v8 panGestureRecognizer];
      [v24 velocityInView:0];
      v15 = v25 < 0.0;

      if (!v22)
      {
        goto LABEL_23;
      }
    }

    if (v14)
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

  v3 = self;
  v4 = [(_UISheetInteraction *)self delegate];
  LOBYTE(v3) = [v4 sheetInteractionShouldInteractWithQuicklyScrollingDescendentScrollView:v3];

  return v3;
}

- (void)draggingBeganFromSource:(id)a3 withRubberBandCoefficient:(double)a4
{
  v9 = a3;
  if (![(_UISheetInteraction *)self isDragging])
  {
    kdebug_trace();
    _UIUpdateRequestRegistryAddRecord(&mainRegistry, updateRequest, 0x100024u);
    _UIQOSManagedCommitsBegin(self, @"Dragging");
    [(_UISheetInteraction *)self setDragSource:v9];
    v6 = [(_UISheetInteraction *)self interactor];
    [v6 _setRubberBandCoefficient:a4];

    v7 = [(_UISheetInteraction *)self interactor];
    [v7 _interactionBegan];

    v8 = [(_UISheetInteraction *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v8 _sheetInteractionDraggingBegan:self withRubberBandCoefficient:a4];
    }
  }
}

- (void)draggingChangedInSource:(id)a3 withTranslation:(CGPoint)a4 velocity:(CGPoint)a5 animateChange:(BOOL)a6
{
  v6 = a6;
  v15 = a4;
  v14 = a5;
  v8 = a3;
  if ([(_UISheetInteraction *)self isDragging])
  {
    v9 = [(_UISheetInteraction *)self dragSource];

    if (v9 == v8)
    {
      v10 = [(_UISheetInteraction *)self interactor];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __86___UISheetInteraction_draggingChangedInSource_withTranslation_velocity_animateChange___block_invoke;
      v12[3] = &unk_1E70F35E0;
      v13 = v6;
      v12[4] = self;
      [v10 _interactionChangedCopyingTranslation:&v15 velocity:&v14 mutatingState:v12];

      v11 = [(_UISheetInteraction *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [v11 _sheetInteractionDraggingChanged:self withTranslation:v6 velocity:v15.x animateChange:{v15.y, v14.x, v14.y}];
      }
    }
  }
}

- (void)draggingEndedInSource:(id)a3
{
  v4 = a3;
  if ([(_UISheetInteraction *)self isDragging])
  {
    v5 = [(_UISheetInteraction *)self dragSource];

    if (v5 == v4)
    {
      kdebug_trace();
      _UIUpdateRequestRegistryRemoveRecord(&mainRegistry, updateRequest, 0x100024u);
      _UIQOSManagedCommitsEnd(self, @"Dragging");
      [(_UISheetInteraction *)self setGeneratingAnimations:1];
      v6 = [(_UISheetInteraction *)self interactor];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __45___UISheetInteraction_draggingEndedInSource___block_invoke;
      v8[3] = &unk_1E70F3590;
      v8[4] = self;
      [v6 _interactionEndedMutatingState:v8];

      [(_UISheetInteraction *)self setGeneratingAnimations:0];
      v7 = [(_UISheetInteraction *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [v7 _sheetInteractionDraggingEnded:self];
      }

      [(_UISheetInteraction *)self setIndexOfCurrentDetent:0];
    }
  }
}

- (id)_currentDragPanGesture
{
  v2 = [(_UISheetInteraction *)self dragSource];
  if ([v2 _isGestureType:8])
  {
    v3 = v2;
LABEL_5:
    v4 = v3;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 panGestureRecognizer];
    goto LABEL_5;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (void)_hyperOutOfProcessViewAnimator:(id)a3 getPresentationPointForInterruptedAnimation:(double *)a4
{
  v6 = [(_UISheetInteraction *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(_UISheetInteraction *)self delegate];
    [v8 offsetForInterruptedAnimationInSheetInteraction:self];
    v10 = v9;
    v12 = v11;

    *a4 = v10;
    *(a4 + 1) = v12;
  }
}

- (void)_animateWithParameters:(id)a3 animations:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UISheetInteraction *)self animator];
  [v8 _animateWithParameters:v7 animations:v6];
}

- (_UISheetInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end