@interface PXFloatingCardGestureCoordinator
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CGPoint)centerPointForPosition:(unint64_t)position;
- (CGPoint)previousPanTranslation;
- (PXFloatingCardGestureCoordinator)initWithCardViewController:(id)controller layout:(id)layout;
- (PXFloatingCardGestureCoordinatorDelegate)delegate;
- (PXFloatingCardLayout)layout;
- (PXFloatingCardViewController)cardViewController;
- (double)applyRubberBandToValue:(double)value withRange:(double)range;
- (double)closestHeightForProjectedHeight:(double)height;
- (double)heightForRubberBandHeight:(double)height;
- (double)maximumHeight;
- (double)minimumHeight;
- (double)rubberBandHeightForHeight:(double)height;
- (double)unapplyRubberBandToValue:(double)value withRange:(double)range;
- (unint64_t)closestPositionToProjectedCenter:(CGPoint)center;
- (void)_addGestureRecognizers;
- (void)_handlePositionGestureEnded:(CGPoint)ended;
- (void)_removeGestureRecognizers;
- (void)dealloc;
- (void)dragBegan;
- (void)dragChangedWithVerticalDelta:(double)delta;
- (void)dragEndedWithAnimation:(id)animation;
- (void)handleHeightGesture:(id)gesture;
- (void)handlePositionGesture:(id)gesture;
- (void)layoutDidChange;
- (void)snapToHeight:(double)height;
- (void)updateCardHeightConstraintWithHeight:(double)height;
@end

@implementation PXFloatingCardGestureCoordinator

- (CGPoint)previousPanTranslation
{
  x = self->_previousPanTranslation.x;
  y = self->_previousPanTranslation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (PXFloatingCardViewController)cardViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_cardViewController);

  return WeakRetained;
}

- (PXFloatingCardLayout)layout
{
  WeakRetained = objc_loadWeakRetained(&self->_layout);

  return WeakRetained;
}

- (PXFloatingCardGestureCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (double)heightForRubberBandHeight:(double)height
{
  [(PXFloatingCardGestureCoordinator *)self minimumHeight];
  v6 = v5;
  [(PXFloatingCardGestureCoordinator *)self maximumHeight];
  if (v7 >= height)
  {
    if (v6 > height)
    {
      [(PXFloatingCardGestureCoordinator *)self topRubberBandRange];
      [(PXFloatingCardGestureCoordinator *)self unapplyRubberBandToValue:v6 - height withRange:v12];
      return v6 - v13;
    }
  }

  else
  {
    v8 = v7;
    v9 = height - v7;
    [(PXFloatingCardGestureCoordinator *)self bottomRubberBandRange];
    [(PXFloatingCardGestureCoordinator *)self unapplyRubberBandToValue:v9 withRange:v10];
    return v8 + v11;
  }

  return height;
}

- (double)rubberBandHeightForHeight:(double)height
{
  [(PXFloatingCardGestureCoordinator *)self minimumHeight];
  v6 = v5;
  [(PXFloatingCardGestureCoordinator *)self maximumHeight];
  if (v7 >= height)
  {
    if (v6 > height)
    {
      [(PXFloatingCardGestureCoordinator *)self topRubberBandRange];
      [(PXFloatingCardGestureCoordinator *)self applyRubberBandToValue:v6 - height withRange:v12];
      return v6 - v13;
    }
  }

  else
  {
    v8 = v7;
    v9 = height - v7;
    [(PXFloatingCardGestureCoordinator *)self bottomRubberBandRange];
    [(PXFloatingCardGestureCoordinator *)self applyRubberBandToValue:v9 withRange:v10];
    return v8 + v11;
  }

  return height;
}

- (double)unapplyRubberBandToValue:(double)value withRange:(double)range
{
  v4 = (range - value) * 0.550000012;
  v5 = 0.0;
  if (fabs(v4) >= 2.22044605e-16)
  {
    return value * range / v4;
  }

  return v5;
}

- (double)applyRubberBandToValue:(double)value withRange:(double)range
{
  v4 = range + value * 0.550000012;
  v5 = 0.0;
  if (fabs(v4) >= 2.22044605e-16)
  {
    return range * 0.550000012 * value / v4;
  }

  return v5;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  heightGestureRecognizer = [(PXFloatingCardGestureCoordinator *)self heightGestureRecognizer];

  if (heightGestureRecognizer != recognizerCopy)
  {

LABEL_6:
    v14 = 0;
    goto LABEL_7;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_6;
  }

  view = [gestureRecognizerCopy view];
  cardViewController = [(PXFloatingCardGestureCoordinator *)self cardViewController];
  view2 = [cardViewController view];
  v13 = [view isDescendantOfView:view2];

  if ((v13 & 1) == 0)
  {
    goto LABEL_6;
  }

  v14 = 1;
LABEL_7:

  return v14;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  recognizerCopy = recognizer;
  heightGestureRecognizer = [(PXFloatingCardGestureCoordinator *)self heightGestureRecognizer];

  if (heightGestureRecognizer == recognizerCopy)
  {
    cardViewController = [(PXFloatingCardGestureCoordinator *)self cardViewController];
    [cardViewController grabAreaBounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    cardViewController2 = [(PXFloatingCardGestureCoordinator *)self cardViewController];
    backgroundView = [cardViewController2 backgroundView];
    [touchCopy locationInView:backgroundView];
    v24.x = v21;
    v24.y = v22;
    v25.origin.x = v12;
    v25.origin.y = v14;
    v25.size.width = v16;
    v25.size.height = v18;
    v9 = CGRectContainsPoint(v25, v24);
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)handleHeightGesture:(id)gesture
{
  gestureCopy = gesture;
  state = [gestureCopy state];
  if ((state - 3) >= 3)
  {
    if (state == 2)
    {
      cardViewController = [(PXFloatingCardGestureCoordinator *)self cardViewController];
      view = [cardViewController view];
      [gestureCopy translationInView:view];
      v11 = v10;
      v13 = v12;

      [(PXFloatingCardGestureCoordinator *)self previousPanTranslation];
      v15 = v14 - v13;
      [(PXFloatingCardGestureCoordinator *)self setPreviousPanTranslation:v11, v13];
      [(PXFloatingCardGestureCoordinator *)self dragChangedWithVerticalDelta:-v15];
    }

    else if (state == 1)
    {
      [(PXFloatingCardGestureCoordinator *)self dragBegan];
      cardViewController2 = [(PXFloatingCardGestureCoordinator *)self cardViewController];
      view2 = [cardViewController2 view];
      layer = [view2 layer];
      [layer removeAllAnimations];

      [(PXFloatingCardGestureCoordinator *)self setPreviousPanTranslation:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    }
  }

  else
  {
    [(PXFloatingCardGestureCoordinator *)self dragEndedWithAnimation:0];
  }
}

- (unint64_t)closestPositionToProjectedCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  cardViewController = [(PXFloatingCardGestureCoordinator *)self cardViewController];
  view = [cardViewController view];

  superview = [view superview];
  safeAreaLayoutGuide = [superview safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v23.origin.x = v10;
  v23.origin.y = v12;
  v23.size.width = v14;
  v23.size.height = v16;
  MidX = CGRectGetMidX(v23);
  v24.origin.x = v10;
  v24.origin.y = v12;
  v24.size.width = v14;
  v24.size.height = v16;
  MidY = CGRectGetMidY(v24);
  v19 = 4;
  if (y < MidY)
  {
    v19 = 2;
  }

  v20 = 3;
  if (y < MidY)
  {
    v20 = 1;
  }

  if (x >= MidX)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

  return v21;
}

- (CGPoint)centerPointForPosition:(unint64_t)position
{
  cardViewController = [(PXFloatingCardGestureCoordinator *)self cardViewController];
  view = [cardViewController view];

  [view bounds];
  v8 = v7;
  v10 = v9;
  superview = [view superview];
  safeAreaLayoutGuide = [superview safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v40.origin.x = v14;
  v40.origin.y = v16;
  v40.size.width = v18;
  v40.size.height = v20;
  MaxX = CGRectGetMaxX(v40);
  v41.origin.x = v14;
  v41.origin.y = v16;
  v41.size.width = v18;
  v41.size.height = v20;
  MinX = CGRectGetMinX(v41);
  v42.origin.x = v14;
  v42.origin.y = v16;
  v42.size.width = v18;
  v42.size.height = v20;
  MaxY = CGRectGetMaxY(v42);
  v43.origin.x = v14;
  v43.origin.y = v16;
  v43.size.width = v18;
  v43.size.height = v20;
  MinY = CGRectGetMinY(v43);
  v23 = v8 * 0.5;
  v24 = v10 * 0.5;
  layout = [(PXFloatingCardGestureCoordinator *)self layout];
  [layout insets];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  if (position > 1)
  {
    if (position == 4)
    {
      MinY = MaxX - v33 - v23;
    }

    else
    {
      if (position != 3)
      {
        v34 = MinY;
        if (position != 2)
        {
          goto LABEL_14;
        }

        goto LABEL_9;
      }

      MinY = v23 + MinX + v29;
    }

    MaxY = MaxY - v31 - v24;
    goto LABEL_14;
  }

  v34 = MinY;
  if (!position)
  {
LABEL_9:
    MinY = MaxX - v33 - v23;
    goto LABEL_10;
  }

  if (position == 1)
  {
    MinY = v23 + MinX + v29;
LABEL_10:
    MaxY = v24 + v34 + v27;
  }

LABEL_14:

  v35 = MinY;
  v36 = MaxY;
  result.y = v36;
  result.x = v35;
  return result;
}

- (void)_handlePositionGestureEnded:(CGPoint)ended
{
  v4 = [(PXFloatingCardGestureCoordinator *)self closestPositionToProjectedCenter:ended.x, ended.y];
  [(PXFloatingCardGestureCoordinator *)self centerPointForPosition:v4];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__PXFloatingCardGestureCoordinator__handlePositionGestureEnded___block_invoke;
  v8[3] = &unk_1E7745A10;
  v8[4] = self;
  v8[5] = v5;
  v8[6] = v6;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__PXFloatingCardGestureCoordinator__handlePositionGestureEnded___block_invoke_2;
  v7[3] = &unk_1E77482F0;
  v7[4] = self;
  v7[5] = v4;
  [MEMORY[0x1E69DD250] animateWithDuration:0x10000 delay:v8 usingSpringWithDamping:v7 initialSpringVelocity:0.3 options:0.0 animations:1.0 completion:1.0];
}

void __64__PXFloatingCardGestureCoordinator__handlePositionGestureEnded___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = [*(a1 + 32) cardViewController];
  v3 = [v4 view];
  [v3 setCenter:{v1, v2}];
}

void __64__PXFloatingCardGestureCoordinator__handlePositionGestureEnded___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = [*(a1 + 32) delegate];
    v3 = [*(a1 + 32) cardViewController];
    [v4 cardViewController:v3 didUpdatePosition:*(a1 + 40)];
  }
}

- (void)handlePositionGesture:(id)gesture
{
  gestureCopy = gesture;
  state = [gestureCopy state];
  if ((state - 3) >= 3)
  {
    if ((state - 1) > 1)
    {
      goto LABEL_6;
    }

    cardViewController = [(PXFloatingCardGestureCoordinator *)self cardViewController];
    view = [cardViewController view];

    superview = [view superview];
    [gestureCopy translationInView:superview];
    v22 = v21;
    v24 = v23;
    [view center];
    [view setCenter:{v22 + v25, v24 + v26}];
    [gestureCopy setTranslation:superview inView:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  }

  else
  {
    cardViewController2 = [(PXFloatingCardGestureCoordinator *)self cardViewController];
    view = [cardViewController2 view];

    superview = [view superview];
    [gestureCopy velocityInView:superview];
    v9 = v8;
    v11 = v10;
    v12 = *MEMORY[0x1E69DE3A8];
    [view center];
    v14 = v13;
    [(PXFloatingCardGestureCoordinator *)self projectionWithVelocity:v9 decelerationRate:v12];
    v16 = v14 + v15;
    [view center];
    v18 = v17;
    [(PXFloatingCardGestureCoordinator *)self projectionWithVelocity:v11 decelerationRate:v12];
    [(PXFloatingCardGestureCoordinator *)self _handlePositionGestureEnded:v16, v18 + v19];
  }

LABEL_6:
}

- (double)maximumHeight
{
  layout = [(PXFloatingCardGestureCoordinator *)self layout];
  snappableHeights = [layout snappableHeights];
  v5 = [snappableHeights count];

  if (!v5)
  {
    return 0.0;
  }

  layout2 = [(PXFloatingCardGestureCoordinator *)self layout];
  snappableHeights2 = [layout2 snappableHeights];
  lastObject = [snappableHeights2 lastObject];
  [lastObject floatValue];
  v10 = v9;

  return v10;
}

- (double)minimumHeight
{
  layout = [(PXFloatingCardGestureCoordinator *)self layout];
  snappableHeights = [layout snappableHeights];
  v5 = [snappableHeights count];

  if (!v5)
  {
    return 0.0;
  }

  layout2 = [(PXFloatingCardGestureCoordinator *)self layout];
  snappableHeights2 = [layout2 snappableHeights];
  firstObject = [snappableHeights2 firstObject];
  [firstObject floatValue];
  v10 = v9;

  return v10;
}

- (void)snapToHeight:(double)height
{
  animationManager = [(PXFloatingCardGestureCoordinator *)self animationManager];
  heightAnimation = [animationManager heightAnimation];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__PXFloatingCardGestureCoordinator_snapToHeight___block_invoke;
  v8[3] = &unk_1E77498A0;
  v8[4] = self;
  *&v8[5] = height;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__PXFloatingCardGestureCoordinator_snapToHeight___block_invoke_2;
  v7[3] = &unk_1E77482F0;
  v7[4] = self;
  *&v7[5] = height;
  [heightAnimation applyAnimations:v8 completion:v7];
}

void __49__PXFloatingCardGestureCoordinator_snapToHeight___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateCardHeightConstraintWithHeight:*(a1 + 40)];
  v2 = [*(a1 + 32) cardViewController];
  v3 = [v2 view];
  [v3 updateConstraintsIfNeeded];

  v6 = [*(a1 + 32) cardViewController];
  v4 = [v6 view];
  v5 = [v4 superview];
  [v5 layoutIfNeeded];
}

void __49__PXFloatingCardGestureCoordinator_snapToHeight___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  v2 = [*(a1 + 32) cardViewController];
  [v3 cardViewController:v2 didUpdateHeight:*(a1 + 40)];
}

- (void)updateCardHeightConstraintWithHeight:(double)height
{
  cardViewController = [(PXFloatingCardGestureCoordinator *)self cardViewController];
  [cardViewController size];
  v7 = v6;

  if (v7 != height)
  {
    [(PXFloatingCardGestureCoordinator *)self maximumHeight];
    v9 = v8;
    [(PXFloatingCardGestureCoordinator *)self minimumHeight];
    v11 = v10;
    cardViewController2 = [(PXFloatingCardGestureCoordinator *)self cardViewController];
    [cardViewController2 size];
    v14 = v13;

    if (v11 > height || v9 < height)
    {
      if (v11 <= height)
      {
        if (v9 >= height)
        {
          return;
        }

        [(PXFloatingCardGestureCoordinator *)self heightForRubberBandHeight:height];
        if (v16 <= height)
        {
          height = v16;
        }

        if (![(PXFloatingCardGestureCoordinator *)self isDragging])
        {
          height = v9;
        }
      }

      else
      {
        [(PXFloatingCardGestureCoordinator *)self heightForRubberBandHeight:height];
        if (v15 > height)
        {
          height = v15;
        }

        if (![(PXFloatingCardGestureCoordinator *)self isDragging])
        {
          height = v11;
        }
      }
    }

    cardViewController3 = [(PXFloatingCardGestureCoordinator *)self cardViewController];
    [cardViewController3 setSize:{v14, height}];
  }
}

- (double)closestHeightForProjectedHeight:(double)height
{
  layout = [(PXFloatingCardGestureCoordinator *)self layout];
  snappableHeights = [layout snappableHeights];

  if ([snappableHeights count])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    firstObject = [snappableHeights firstObject];
    [firstObject floatValue];
    v8 = v7;

    v16 = v8;
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x2020000000;
    v12[3] = 0x7FEFFFFFFFFFFFFFLL;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __68__PXFloatingCardGestureCoordinator_closestHeightForProjectedHeight___block_invoke;
    v11[3] = &unk_1E773DE88;
    *&v11[6] = height;
    v11[4] = v12;
    v11[5] = &v13;
    [snappableHeights enumerateObjectsUsingBlock:v11];
    v9 = v14[3];
    _Block_object_dispose(v12, 8);
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

uint64_t __68__PXFloatingCardGestureCoordinator_closestHeightForProjectedHeight___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 floatValue];
  v5 = v4;
  v6 = vabdd_f64(v5, *(a1 + 48));
  v7 = *(*(a1 + 32) + 8);
  if (v6 < *(v7 + 24))
  {
    *(v7 + 24) = v6;
    *(*(*(a1 + 40) + 8) + 24) = v5;
  }

  return result;
}

- (void)dragEndedWithAnimation:(id)animation
{
  animationCopy = animation;
  [(PXFloatingCardGestureCoordinator *)self setIsDragging:0];
  heightGestureRecognizer = [(PXFloatingCardGestureCoordinator *)self heightGestureRecognizer];
  cardViewController = [(PXFloatingCardGestureCoordinator *)self cardViewController];
  view = [cardViewController view];
  [heightGestureRecognizer velocityInView:view];
  v8 = v7;

  cardViewController2 = [(PXFloatingCardGestureCoordinator *)self cardViewController];
  [cardViewController2 size];
  v11 = v10;

  [(PXFloatingCardGestureCoordinator *)self projectionWithVelocity:v8 decelerationRate:*MEMORY[0x1E69DE3A0]];
  [(PXFloatingCardGestureCoordinator *)self closestHeightForProjectedHeight:v11 + v12];
  v14 = v13;
  if (v13 == v11)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v8 / (v13 - v11);
  }

  v16 = animationCopy;
  if (!animationCopy)
  {
    v16 = [PXFloatingCardAnimation animationWithMass:"animationWithMass:stiffness:damping:initialVelocity:delay:" stiffness:1.0 damping:dbl_1A5380D50[v15 > 4.0] initialVelocity:dbl_1A5380D60[v15 > 4.0] delay:?];
  }

  v20 = v16;
  animationManager = [(PXFloatingCardGestureCoordinator *)self animationManager];
  [animationManager pushHeightAnimation:v20];

  [(PXFloatingCardGestureCoordinator *)self snapToHeight:v14];
  animationManager2 = [(PXFloatingCardGestureCoordinator *)self animationManager];
  [animationManager2 popHeightAnimation];
}

- (void)dragChangedWithVerticalDelta:(double)delta
{
  cardViewController = [(PXFloatingCardGestureCoordinator *)self cardViewController];
  [cardViewController size];
  v7 = v6;

  [(PXFloatingCardGestureCoordinator *)self heightForRubberBandHeight:v7];
  [(PXFloatingCardGestureCoordinator *)self rubberBandHeightForHeight:v8 + delta];
  cardViewController2 = [(PXFloatingCardGestureCoordinator *)self cardViewController];
  view = [cardViewController2 view];
  UIRoundToViewScale();
  v12 = v11;

  [(PXFloatingCardGestureCoordinator *)self updateCardHeightConstraintWithHeight:v12];
}

- (void)dragBegan
{
  [(PXFloatingCardGestureCoordinator *)self setIsDragging:1];
  [(PXFloatingCardGestureCoordinator *)self setTopRubberBandRange:15.0];
  [(PXFloatingCardGestureCoordinator *)self setBottomRubberBandRange:15.0];
  delegate = [(PXFloatingCardGestureCoordinator *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(PXFloatingCardGestureCoordinator *)self delegate];
    [delegate2 gestureCoordinatorDidBeginInteraction:self];
  }
}

- (void)layoutDidChange
{
  [(PXFloatingCardGestureCoordinator *)self _removeGestureRecognizers];

  [(PXFloatingCardGestureCoordinator *)self _addGestureRecognizers];
}

- (void)dealloc
{
  cardViewController = [(PXFloatingCardGestureCoordinator *)self cardViewController];
  view = [cardViewController view];
  heightGestureRecognizer = [(PXFloatingCardGestureCoordinator *)self heightGestureRecognizer];
  [view removeGestureRecognizer:heightGestureRecognizer];

  cardViewController2 = [(PXFloatingCardGestureCoordinator *)self cardViewController];
  view2 = [cardViewController2 view];
  positionGestureRecognizer = [(PXFloatingCardGestureCoordinator *)self positionGestureRecognizer];
  [view2 removeGestureRecognizer:positionGestureRecognizer];

  v9.receiver = self;
  v9.super_class = PXFloatingCardGestureCoordinator;
  [(PXFloatingCardGestureCoordinator *)&v9 dealloc];
}

- (void)_removeGestureRecognizers
{
  heightGestureRecognizer = [(PXFloatingCardGestureCoordinator *)self heightGestureRecognizer];

  if (heightGestureRecognizer)
  {
    cardViewController = [(PXFloatingCardGestureCoordinator *)self cardViewController];
    view = [cardViewController view];
    heightGestureRecognizer2 = [(PXFloatingCardGestureCoordinator *)self heightGestureRecognizer];
    [view removeGestureRecognizer:heightGestureRecognizer2];

    [(PXFloatingCardGestureCoordinator *)self setHeightGestureRecognizer:0];
  }

  positionGestureRecognizer = [(PXFloatingCardGestureCoordinator *)self positionGestureRecognizer];

  if (positionGestureRecognizer)
  {
    cardViewController2 = [(PXFloatingCardGestureCoordinator *)self cardViewController];
    view2 = [cardViewController2 view];
    positionGestureRecognizer2 = [(PXFloatingCardGestureCoordinator *)self positionGestureRecognizer];
    [view2 removeGestureRecognizer:positionGestureRecognizer2];

    [(PXFloatingCardGestureCoordinator *)self setPositionGestureRecognizer:0];
  }
}

- (void)_addGestureRecognizers
{
  obj = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel_handleHeightGesture_];
  [obj setDelegate:self];
  [obj setMaximumNumberOfTouches:1];
  cardViewController = [(PXFloatingCardGestureCoordinator *)self cardViewController];
  view = [cardViewController view];
  [view addGestureRecognizer:obj];

  objc_storeStrong(&self->_heightGestureRecognizer, obj);
  layout = [(PXFloatingCardGestureCoordinator *)self layout];
  LODWORD(view) = [layout canDrag];

  if (view)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel_handlePositionGesture_];
    [(UIPanGestureRecognizer *)v6 setDelegate:self];
    cardViewController2 = [(PXFloatingCardGestureCoordinator *)self cardViewController];
    view2 = [cardViewController2 view];
    [view2 addGestureRecognizer:v6];

    positionGestureRecognizer = self->_positionGestureRecognizer;
    self->_positionGestureRecognizer = v6;
  }
}

- (PXFloatingCardGestureCoordinator)initWithCardViewController:(id)controller layout:(id)layout
{
  controllerCopy = controller;
  layoutCopy = layout;
  v13.receiver = self;
  v13.super_class = PXFloatingCardGestureCoordinator;
  v8 = [(PXFloatingCardGestureCoordinator *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_cardViewController, controllerCopy);
    objc_storeWeak(&v9->_layout, layoutCopy);
    v10 = objc_alloc_init(PXFloatingCardAnimationManager);
    animationManager = v9->_animationManager;
    v9->_animationManager = v10;

    v9->_isDragging = 0;
  }

  return v9;
}

@end