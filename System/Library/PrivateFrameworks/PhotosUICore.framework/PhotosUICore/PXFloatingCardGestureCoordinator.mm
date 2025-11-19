@interface PXFloatingCardGestureCoordinator
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (CGPoint)centerPointForPosition:(unint64_t)a3;
- (CGPoint)previousPanTranslation;
- (PXFloatingCardGestureCoordinator)initWithCardViewController:(id)a3 layout:(id)a4;
- (PXFloatingCardGestureCoordinatorDelegate)delegate;
- (PXFloatingCardLayout)layout;
- (PXFloatingCardViewController)cardViewController;
- (double)applyRubberBandToValue:(double)a3 withRange:(double)a4;
- (double)closestHeightForProjectedHeight:(double)a3;
- (double)heightForRubberBandHeight:(double)a3;
- (double)maximumHeight;
- (double)minimumHeight;
- (double)rubberBandHeightForHeight:(double)a3;
- (double)unapplyRubberBandToValue:(double)a3 withRange:(double)a4;
- (unint64_t)closestPositionToProjectedCenter:(CGPoint)a3;
- (void)_addGestureRecognizers;
- (void)_handlePositionGestureEnded:(CGPoint)a3;
- (void)_removeGestureRecognizers;
- (void)dealloc;
- (void)dragBegan;
- (void)dragChangedWithVerticalDelta:(double)a3;
- (void)dragEndedWithAnimation:(id)a3;
- (void)handleHeightGesture:(id)a3;
- (void)handlePositionGesture:(id)a3;
- (void)layoutDidChange;
- (void)snapToHeight:(double)a3;
- (void)updateCardHeightConstraintWithHeight:(double)a3;
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

- (double)heightForRubberBandHeight:(double)a3
{
  [(PXFloatingCardGestureCoordinator *)self minimumHeight];
  v6 = v5;
  [(PXFloatingCardGestureCoordinator *)self maximumHeight];
  if (v7 >= a3)
  {
    if (v6 > a3)
    {
      [(PXFloatingCardGestureCoordinator *)self topRubberBandRange];
      [(PXFloatingCardGestureCoordinator *)self unapplyRubberBandToValue:v6 - a3 withRange:v12];
      return v6 - v13;
    }
  }

  else
  {
    v8 = v7;
    v9 = a3 - v7;
    [(PXFloatingCardGestureCoordinator *)self bottomRubberBandRange];
    [(PXFloatingCardGestureCoordinator *)self unapplyRubberBandToValue:v9 withRange:v10];
    return v8 + v11;
  }

  return a3;
}

- (double)rubberBandHeightForHeight:(double)a3
{
  [(PXFloatingCardGestureCoordinator *)self minimumHeight];
  v6 = v5;
  [(PXFloatingCardGestureCoordinator *)self maximumHeight];
  if (v7 >= a3)
  {
    if (v6 > a3)
    {
      [(PXFloatingCardGestureCoordinator *)self topRubberBandRange];
      [(PXFloatingCardGestureCoordinator *)self applyRubberBandToValue:v6 - a3 withRange:v12];
      return v6 - v13;
    }
  }

  else
  {
    v8 = v7;
    v9 = a3 - v7;
    [(PXFloatingCardGestureCoordinator *)self bottomRubberBandRange];
    [(PXFloatingCardGestureCoordinator *)self applyRubberBandToValue:v9 withRange:v10];
    return v8 + v11;
  }

  return a3;
}

- (double)unapplyRubberBandToValue:(double)a3 withRange:(double)a4
{
  v4 = (a4 - a3) * 0.550000012;
  v5 = 0.0;
  if (fabs(v4) >= 2.22044605e-16)
  {
    return a3 * a4 / v4;
  }

  return v5;
}

- (double)applyRubberBandToValue:(double)a3 withRange:(double)a4
{
  v4 = a4 + a3 * 0.550000012;
  v5 = 0.0;
  if (fabs(v4) >= 2.22044605e-16)
  {
    return a4 * 0.550000012 * a3 / v4;
  }

  return v5;
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXFloatingCardGestureCoordinator *)self heightGestureRecognizer];

  if (v8 != v7)
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

  v10 = [v6 view];
  v11 = [(PXFloatingCardGestureCoordinator *)self cardViewController];
  v12 = [v11 view];
  v13 = [v10 isDescendantOfView:v12];

  if ((v13 & 1) == 0)
  {
    goto LABEL_6;
  }

  v14 = 1;
LABEL_7:

  return v14;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXFloatingCardGestureCoordinator *)self heightGestureRecognizer];

  if (v8 == v7)
  {
    v10 = [(PXFloatingCardGestureCoordinator *)self cardViewController];
    [v10 grabAreaBounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [(PXFloatingCardGestureCoordinator *)self cardViewController];
    v20 = [v19 backgroundView];
    [v6 locationInView:v20];
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

- (void)handleHeightGesture:(id)a3
{
  v16 = a3;
  v4 = [v16 state];
  if ((v4 - 3) >= 3)
  {
    if (v4 == 2)
    {
      v8 = [(PXFloatingCardGestureCoordinator *)self cardViewController];
      v9 = [v8 view];
      [v16 translationInView:v9];
      v11 = v10;
      v13 = v12;

      [(PXFloatingCardGestureCoordinator *)self previousPanTranslation];
      v15 = v14 - v13;
      [(PXFloatingCardGestureCoordinator *)self setPreviousPanTranslation:v11, v13];
      [(PXFloatingCardGestureCoordinator *)self dragChangedWithVerticalDelta:-v15];
    }

    else if (v4 == 1)
    {
      [(PXFloatingCardGestureCoordinator *)self dragBegan];
      v5 = [(PXFloatingCardGestureCoordinator *)self cardViewController];
      v6 = [v5 view];
      v7 = [v6 layer];
      [v7 removeAllAnimations];

      [(PXFloatingCardGestureCoordinator *)self setPreviousPanTranslation:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    }
  }

  else
  {
    [(PXFloatingCardGestureCoordinator *)self dragEndedWithAnimation:0];
  }
}

- (unint64_t)closestPositionToProjectedCenter:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(PXFloatingCardGestureCoordinator *)self cardViewController];
  v6 = [v5 view];

  v7 = [v6 superview];
  v8 = [v7 safeAreaLayoutGuide];
  [v8 layoutFrame];
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

- (CGPoint)centerPointForPosition:(unint64_t)a3
{
  v5 = [(PXFloatingCardGestureCoordinator *)self cardViewController];
  v6 = [v5 view];

  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v11 = [v6 superview];
  v12 = [v11 safeAreaLayoutGuide];
  [v12 layoutFrame];
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
  v25 = [(PXFloatingCardGestureCoordinator *)self layout];
  [v25 insets];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  if (a3 > 1)
  {
    if (a3 == 4)
    {
      MinY = MaxX - v33 - v23;
    }

    else
    {
      if (a3 != 3)
      {
        v34 = MinY;
        if (a3 != 2)
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
  if (!a3)
  {
LABEL_9:
    MinY = MaxX - v33 - v23;
    goto LABEL_10;
  }

  if (a3 == 1)
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

- (void)_handlePositionGestureEnded:(CGPoint)a3
{
  v4 = [(PXFloatingCardGestureCoordinator *)self closestPositionToProjectedCenter:a3.x, a3.y];
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

- (void)handlePositionGesture:(id)a3
{
  v27 = a3;
  v4 = [v27 state];
  if ((v4 - 3) >= 3)
  {
    if ((v4 - 1) > 1)
    {
      goto LABEL_6;
    }

    v20 = [(PXFloatingCardGestureCoordinator *)self cardViewController];
    v6 = [v20 view];

    v7 = [v6 superview];
    [v27 translationInView:v7];
    v22 = v21;
    v24 = v23;
    [v6 center];
    [v6 setCenter:{v22 + v25, v24 + v26}];
    [v27 setTranslation:v7 inView:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  }

  else
  {
    v5 = [(PXFloatingCardGestureCoordinator *)self cardViewController];
    v6 = [v5 view];

    v7 = [v6 superview];
    [v27 velocityInView:v7];
    v9 = v8;
    v11 = v10;
    v12 = *MEMORY[0x1E69DE3A8];
    [v6 center];
    v14 = v13;
    [(PXFloatingCardGestureCoordinator *)self projectionWithVelocity:v9 decelerationRate:v12];
    v16 = v14 + v15;
    [v6 center];
    v18 = v17;
    [(PXFloatingCardGestureCoordinator *)self projectionWithVelocity:v11 decelerationRate:v12];
    [(PXFloatingCardGestureCoordinator *)self _handlePositionGestureEnded:v16, v18 + v19];
  }

LABEL_6:
}

- (double)maximumHeight
{
  v3 = [(PXFloatingCardGestureCoordinator *)self layout];
  v4 = [v3 snappableHeights];
  v5 = [v4 count];

  if (!v5)
  {
    return 0.0;
  }

  v6 = [(PXFloatingCardGestureCoordinator *)self layout];
  v7 = [v6 snappableHeights];
  v8 = [v7 lastObject];
  [v8 floatValue];
  v10 = v9;

  return v10;
}

- (double)minimumHeight
{
  v3 = [(PXFloatingCardGestureCoordinator *)self layout];
  v4 = [v3 snappableHeights];
  v5 = [v4 count];

  if (!v5)
  {
    return 0.0;
  }

  v6 = [(PXFloatingCardGestureCoordinator *)self layout];
  v7 = [v6 snappableHeights];
  v8 = [v7 firstObject];
  [v8 floatValue];
  v10 = v9;

  return v10;
}

- (void)snapToHeight:(double)a3
{
  v5 = [(PXFloatingCardGestureCoordinator *)self animationManager];
  v6 = [v5 heightAnimation];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__PXFloatingCardGestureCoordinator_snapToHeight___block_invoke;
  v8[3] = &unk_1E77498A0;
  v8[4] = self;
  *&v8[5] = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__PXFloatingCardGestureCoordinator_snapToHeight___block_invoke_2;
  v7[3] = &unk_1E77482F0;
  v7[4] = self;
  *&v7[5] = a3;
  [v6 applyAnimations:v8 completion:v7];
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

- (void)updateCardHeightConstraintWithHeight:(double)a3
{
  v5 = [(PXFloatingCardGestureCoordinator *)self cardViewController];
  [v5 size];
  v7 = v6;

  if (v7 != a3)
  {
    [(PXFloatingCardGestureCoordinator *)self maximumHeight];
    v9 = v8;
    [(PXFloatingCardGestureCoordinator *)self minimumHeight];
    v11 = v10;
    v12 = [(PXFloatingCardGestureCoordinator *)self cardViewController];
    [v12 size];
    v14 = v13;

    if (v11 > a3 || v9 < a3)
    {
      if (v11 <= a3)
      {
        if (v9 >= a3)
        {
          return;
        }

        [(PXFloatingCardGestureCoordinator *)self heightForRubberBandHeight:a3];
        if (v16 <= a3)
        {
          a3 = v16;
        }

        if (![(PXFloatingCardGestureCoordinator *)self isDragging])
        {
          a3 = v9;
        }
      }

      else
      {
        [(PXFloatingCardGestureCoordinator *)self heightForRubberBandHeight:a3];
        if (v15 > a3)
        {
          a3 = v15;
        }

        if (![(PXFloatingCardGestureCoordinator *)self isDragging])
        {
          a3 = v11;
        }
      }
    }

    v17 = [(PXFloatingCardGestureCoordinator *)self cardViewController];
    [v17 setSize:{v14, a3}];
  }
}

- (double)closestHeightForProjectedHeight:(double)a3
{
  v4 = [(PXFloatingCardGestureCoordinator *)self layout];
  v5 = [v4 snappableHeights];

  if ([v5 count])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v6 = [v5 firstObject];
    [v6 floatValue];
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
    *&v11[6] = a3;
    v11[4] = v12;
    v11[5] = &v13;
    [v5 enumerateObjectsUsingBlock:v11];
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

- (void)dragEndedWithAnimation:(id)a3
{
  v19 = a3;
  [(PXFloatingCardGestureCoordinator *)self setIsDragging:0];
  v4 = [(PXFloatingCardGestureCoordinator *)self heightGestureRecognizer];
  v5 = [(PXFloatingCardGestureCoordinator *)self cardViewController];
  v6 = [v5 view];
  [v4 velocityInView:v6];
  v8 = v7;

  v9 = [(PXFloatingCardGestureCoordinator *)self cardViewController];
  [v9 size];
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

  v16 = v19;
  if (!v19)
  {
    v16 = [PXFloatingCardAnimation animationWithMass:"animationWithMass:stiffness:damping:initialVelocity:delay:" stiffness:1.0 damping:dbl_1A5380D50[v15 > 4.0] initialVelocity:dbl_1A5380D60[v15 > 4.0] delay:?];
  }

  v20 = v16;
  v17 = [(PXFloatingCardGestureCoordinator *)self animationManager];
  [v17 pushHeightAnimation:v20];

  [(PXFloatingCardGestureCoordinator *)self snapToHeight:v14];
  v18 = [(PXFloatingCardGestureCoordinator *)self animationManager];
  [v18 popHeightAnimation];
}

- (void)dragChangedWithVerticalDelta:(double)a3
{
  v5 = [(PXFloatingCardGestureCoordinator *)self cardViewController];
  [v5 size];
  v7 = v6;

  [(PXFloatingCardGestureCoordinator *)self heightForRubberBandHeight:v7];
  [(PXFloatingCardGestureCoordinator *)self rubberBandHeightForHeight:v8 + a3];
  v9 = [(PXFloatingCardGestureCoordinator *)self cardViewController];
  v10 = [v9 view];
  UIRoundToViewScale();
  v12 = v11;

  [(PXFloatingCardGestureCoordinator *)self updateCardHeightConstraintWithHeight:v12];
}

- (void)dragBegan
{
  [(PXFloatingCardGestureCoordinator *)self setIsDragging:1];
  [(PXFloatingCardGestureCoordinator *)self setTopRubberBandRange:15.0];
  [(PXFloatingCardGestureCoordinator *)self setBottomRubberBandRange:15.0];
  v3 = [(PXFloatingCardGestureCoordinator *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(PXFloatingCardGestureCoordinator *)self delegate];
    [v5 gestureCoordinatorDidBeginInteraction:self];
  }
}

- (void)layoutDidChange
{
  [(PXFloatingCardGestureCoordinator *)self _removeGestureRecognizers];

  [(PXFloatingCardGestureCoordinator *)self _addGestureRecognizers];
}

- (void)dealloc
{
  v3 = [(PXFloatingCardGestureCoordinator *)self cardViewController];
  v4 = [v3 view];
  v5 = [(PXFloatingCardGestureCoordinator *)self heightGestureRecognizer];
  [v4 removeGestureRecognizer:v5];

  v6 = [(PXFloatingCardGestureCoordinator *)self cardViewController];
  v7 = [v6 view];
  v8 = [(PXFloatingCardGestureCoordinator *)self positionGestureRecognizer];
  [v7 removeGestureRecognizer:v8];

  v9.receiver = self;
  v9.super_class = PXFloatingCardGestureCoordinator;
  [(PXFloatingCardGestureCoordinator *)&v9 dealloc];
}

- (void)_removeGestureRecognizers
{
  v3 = [(PXFloatingCardGestureCoordinator *)self heightGestureRecognizer];

  if (v3)
  {
    v4 = [(PXFloatingCardGestureCoordinator *)self cardViewController];
    v5 = [v4 view];
    v6 = [(PXFloatingCardGestureCoordinator *)self heightGestureRecognizer];
    [v5 removeGestureRecognizer:v6];

    [(PXFloatingCardGestureCoordinator *)self setHeightGestureRecognizer:0];
  }

  v7 = [(PXFloatingCardGestureCoordinator *)self positionGestureRecognizer];

  if (v7)
  {
    v8 = [(PXFloatingCardGestureCoordinator *)self cardViewController];
    v9 = [v8 view];
    v10 = [(PXFloatingCardGestureCoordinator *)self positionGestureRecognizer];
    [v9 removeGestureRecognizer:v10];

    [(PXFloatingCardGestureCoordinator *)self setPositionGestureRecognizer:0];
  }
}

- (void)_addGestureRecognizers
{
  obj = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel_handleHeightGesture_];
  [obj setDelegate:self];
  [obj setMaximumNumberOfTouches:1];
  v3 = [(PXFloatingCardGestureCoordinator *)self cardViewController];
  v4 = [v3 view];
  [v4 addGestureRecognizer:obj];

  objc_storeStrong(&self->_heightGestureRecognizer, obj);
  v5 = [(PXFloatingCardGestureCoordinator *)self layout];
  LODWORD(v4) = [v5 canDrag];

  if (v4)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel_handlePositionGesture_];
    [(UIPanGestureRecognizer *)v6 setDelegate:self];
    v7 = [(PXFloatingCardGestureCoordinator *)self cardViewController];
    v8 = [v7 view];
    [v8 addGestureRecognizer:v6];

    positionGestureRecognizer = self->_positionGestureRecognizer;
    self->_positionGestureRecognizer = v6;
  }
}

- (PXFloatingCardGestureCoordinator)initWithCardViewController:(id)a3 layout:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = PXFloatingCardGestureCoordinator;
  v8 = [(PXFloatingCardGestureCoordinator *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_cardViewController, v6);
    objc_storeWeak(&v9->_layout, v7);
    v10 = objc_alloc_init(PXFloatingCardAnimationManager);
    animationManager = v9->_animationManager;
    v9->_animationManager = v10;

    v9->_isDragging = 0;
  }

  return v9;
}

@end