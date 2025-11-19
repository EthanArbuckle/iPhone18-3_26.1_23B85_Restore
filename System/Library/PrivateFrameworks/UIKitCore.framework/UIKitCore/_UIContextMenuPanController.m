@interface _UIContextMenuPanController
- ($9638EFF0CCCAFE90921E224CC361F7AC)menuAnchor;
- (BOOL)_canBeginDraggingWithTranslation:(CAPoint3D)a3 location:(CAPoint3D)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveEvent:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (CAPoint3D)_rubberBandedTranslationForGestureTranslation:(CAPoint3D)a3;
- (CGPoint)originalMenuCenter;
- (CGPoint)originalPlatterCenter;
- (CGVector)_currentPlatterVelocity;
- (UIView)containerView;
- (UIView)menuView;
- (UIView)platterView;
- (UIViewSpringAnimationBehavior)animationBehavior;
- (_UIContextMenuPanController)initWithContainerView:(id)a3 platterView:(id)a4 menuView:(id)a5;
- (_UIContextMenuPanControllerDelegate)delegate;
- (double)_dragTearOffThreshold;
- (double)_rangeOfMotion;
- (double)_tearOffSpeedMultiplier;
- (id)_createAnimationBehaviorWithCriticalDamping:(BOOL)a3;
- (id)_currentPlatformMetrics;
- (int)_nearestDetentWithTranslation:(CGPoint)a3;
- (int64_t)_userInterfaceIdiom;
- (void)_animationsForActionsStyleWithLocation:(CAPoint3D)a3 ended:(BOOL)a4;
- (void)_animationsForAnyAttachedAccessoryViews;
- (void)_animationsForPreviewPlusActionsStyleWithTranslation:(CAPoint3D)a3 location:(CAPoint3D)a4;
- (void)_handlePanGesture:(id)a3;
- (void)_updateForGestureWithState:(int64_t)a3 translation:(CAPoint3D)a4 location:(CAPoint3D)a5 allowsDragging:(BOOL)a6;
- (void)_updateForSignificantLayoutChange;
- (void)_updateMenuScrubPathWithLocationIfNecessary:(CGPoint)a3;
- (void)_updatePlatterGestureDebugUIWithTranslation:(CGPoint)a3 location:(CGPoint)a4 invalidate:(BOOL)a5;
- (void)_updateViewPositionsWithTranslation:(CAPoint3D)a3 location:(CAPoint3D)a4 ended:(BOOL)a5 withVelocity:(BOOL)a6;
- (void)moveToDetentPosition:(int64_t)a3 updateScrubPath:(BOOL)a4;
- (void)scrollObservationInteraction:(id)a3 didUpdateWithTranslation:(CGPoint)a4 location:(CGPoint)a5 ended:(BOOL)a6;
- (void)setDetents:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setMenuAnchor:(id *)a3;
- (void)setOriginalMenuCenter:(CGPoint)a3;
- (void)setOriginalPlatterCenter:(CGPoint)a3;
@end

@implementation _UIContextMenuPanController

- (void)_updateForSignificantLayoutChange
{
  menuScrubPath = self->_menuScrubPath;
  self->_menuScrubPath = 0;
}

- (UIView)containerView
{
  WeakRetained = objc_loadWeakRetained(&self->_containerView);

  return WeakRetained;
}

- (id)_currentPlatformMetrics
{
  v2 = [(_UIContextMenuPanController *)self _userInterfaceIdiom];

  return _UIContextMenuGetPlatformMetrics(v2);
}

- (int64_t)_userInterfaceIdiom
{
  v2 = [(_UIContextMenuPanController *)self platterView];
  v3 = [v2 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  return v4;
}

- (UIView)platterView
{
  WeakRetained = objc_loadWeakRetained(&self->_platterView);

  return WeakRetained;
}

- (double)_dragTearOffThreshold
{
  v3 = [(_UIContextMenuPanController *)self _currentPlatformMetrics];
  [v3 previewActionsStyleDragTearOffThreshold];
  v5 = v4;

  if ([(_UIContextMenuPanController *)self _canSwipeDownToDismiss])
  {
    if (_UIInternalPreferenceUsesDefault(&_UIInternalPreference_PlatterPreviewPlusActionsDragTearOffThreshold, @"PlatterPreviewPlusActionsDragTearOffThreshold", _UIInternalPreferenceUpdateDouble))
    {
      return 50.0;
    }

    else
    {
      return *&qword_1EA95E248;
    }
  }

  return v5;
}

- (double)_tearOffSpeedMultiplier
{
  [(_UIContextMenuPanController *)self _currentPlatterVelocity];
  v3 = fabs(v2);
  v4 = _UIInternalPreferenceUsesDefault(&_MergedGlobals_927, @"DragTearOffSpeedMultiplierCoefficient", _UIInternalPreferenceUpdateDouble);
  v5 = *&qword_1ED48AB30;
  if (v4)
  {
    v5 = 200.0;
  }

  v6 = round(v3 / v5);
  v7 = _UIInternalPreferenceUsesDefault(algn_1ED48AB38, @"DragTearOffSpeedMultiplierMax", _UIInternalPreferenceUpdateDouble);
  v8 = *&qword_1ED48AB40;
  if (v7)
  {
    v8 = 3.0;
  }

  return fmax(fmin(v6, v8), 1.0);
}

- (CGPoint)originalPlatterCenter
{
  x = self->_originalPlatterCenter.x;
  y = self->_originalPlatterCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIView)menuView
{
  WeakRetained = objc_loadWeakRetained(&self->_menuView);

  return WeakRetained;
}

- (CGPoint)originalMenuCenter
{
  x = self->_originalMenuCenter.x;
  y = self->_originalMenuCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)_animationsForAnyAttachedAccessoryViews
{
  v43 = *MEMORY[0x1E69E9840];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v3 = [(_UIContextMenuPanController *)self accessoryViews];
  v4 = [v3 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v39;
    v35 = *(MEMORY[0x1E695F058] + 8);
    v36 = *MEMORY[0x1E695F058];
    v33 = *(MEMORY[0x1E695F058] + 24);
    v34 = *(MEMORY[0x1E695F058] + 16);
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v39 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v38 + 1) + 8 * v7);
      if (![v8 trackingAxis])
      {
        break;
      }

      v9 = [v8 location];
      if (v9 == 1)
      {
        v14 = [(_UIContextMenuPanController *)self platterView];
      }

      else
      {
        if (v9 != 2)
        {
          v10 = v33;
          v11 = v34;
          v12 = v35;
          v13 = v36;
          if (!v9)
          {
            break;
          }

          goto LABEL_14;
        }

        v14 = [(_UIContextMenuPanController *)self menuView];
      }

      v15 = v14;
      [v14 frame];
      v13 = v16;
      v12 = v17;
      v11 = v18;
      v10 = v19;

LABEL_14:
      [v8 center];
      v21 = v20;
      v23 = v22;
      if (v8)
      {
        [v8 anchor];
        v24 = v37 - 1;
        v25 = 0.5;
        v26 = 0.5;
        if ((v37 - 1) <= 7)
        {
          v25 = dbl_18A679108[v24];
          v26 = dbl_18A679148[v24];
        }
      }

      else
      {
        v25 = 0.5;
        v26 = 0.5;
        v37 = 0u;
      }

      if (*(&v37 + 1) > 3)
      {
        if (*(&v37 + 1) == 4)
        {
          v25 = 1.0;
        }

        else if (*(&v37 + 1) == 8)
        {
          v26 = 1.0;
        }
      }

      else if (*(&v37 + 1) == 1)
      {
        v25 = 0.0;
      }

      else if (*(&v37 + 1) == 2)
      {
        v26 = 0.0;
      }

      if ([v8 trackingAxis])
      {
        v44.origin.x = v13;
        v44.origin.y = v12;
        v44.size.width = v11;
        v44.size.height = v10;
        MinX = CGRectGetMinX(v44);
        v45.origin.x = v13;
        v45.origin.y = v12;
        v45.size.width = v11;
        v45.size.height = v10;
        v28 = MinX + v26 * CGRectGetWidth(v45);
        [v8 offset];
        v21 = v28 + v29;
      }

      if (([v8 trackingAxis] & 2) != 0)
      {
        v46.origin.x = v13;
        v46.origin.y = v12;
        v46.size.width = v11;
        v46.size.height = v10;
        MinY = CGRectGetMinY(v46);
        v47.origin.x = v13;
        v47.origin.y = v12;
        v47.size.width = v11;
        v47.size.height = v10;
        v31 = MinY + v25 * CGRectGetHeight(v47);
        [v8 offset];
        v23 = v31 + v32;
      }

      [v8 setCenter:{v21, v23}];
      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v38 objects:v42 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (CGVector)_currentPlatterVelocity
{
  v2 = [(_UIContextMenuPanController *)self velocityIntegrator];
  [v2 velocity];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.dy = v8;
  result.dx = v7;
  return result;
}

- (UIViewSpringAnimationBehavior)animationBehavior
{
  animationBehavior = self->_animationBehavior;
  if (!animationBehavior)
  {
    v4 = [(_UIContextMenuPanController *)self _createAnimationBehaviorWithCriticalDamping:0];
    v5 = self->_animationBehavior;
    self->_animationBehavior = v4;

    animationBehavior = self->_animationBehavior;
  }

  return animationBehavior;
}

- ($9638EFF0CCCAFE90921E224CC361F7AC)menuAnchor
{
  v3 = *&self[5].var0;
  *&retstr->var0 = *&self[4].var3;
  *&retstr->var2 = v3;
  retstr->var4 = *&self[5].var2;
  return self;
}

- (_UIContextMenuPanControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (double)_rangeOfMotion
{
  v3 = [(NSArray *)self->_detents firstObject];
  [v3 CGPointValue];
  v5 = v4;

  v6 = [(NSArray *)self->_detents lastObject];
  [v6 CGPointValue];
  v8 = v7;

  return v8 - v5;
}

- (_UIContextMenuPanController)initWithContainerView:(id)a3 platterView:(id)a4 menuView:(id)a5
{
  v32[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v31.receiver = self;
  v31.super_class = _UIContextMenuPanController;
  v11 = [(_UIContextMenuPanController *)&v31 init];
  v12 = v11;
  if (v11)
  {
    [(_UIContextMenuPanController *)v11 setContainerView:v8];
    [(_UIContextMenuPanController *)v12 setPlatterView:v9];
    [(_UIContextMenuPanController *)v12 setMenuView:v10];
    v13 = [(_UIContextMenuPanController *)v12 containerView];
    v14 = [v13 traitCollection];
    v15 = [v14 userInterfaceIdiom];

    v16 = off_1E70EAFC8;
    if (v15 != 6)
    {
      v16 = off_1E70EA358;
    }

    v17 = [objc_alloc(*v16) initWithTarget:v12 action:sel__handlePanGesture_];
    [v17 setName:@"com.apple.UIKit.PreviewPlatterPan"];
    [v17 setCancelsTouchesInView:0];
    [v17 setDelegate:v12];
    [v17 setMaximumNumberOfTouches:1];
    [v17 setAllowedScrollTypesMask:3];
    [v8 addGestureRecognizer:v17];
    [(_UIContextMenuPanController *)v12 setPanGestureRecognizer:v17];
    v18 = objc_opt_new();
    [(_UIContextMenuPanController *)v12 setVelocityIntegrator:v18];

    v12->_enabled = 1;
    v30 = *MEMORY[0x1E695EFF8];
    v19 = [MEMORY[0x1E696B098] valueWithBytes:&v30 objCType:"{CGPoint=dd}"];
    v32[0] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
    detents = v12->_detents;
    v12->_detents = v20;

    v12->_currentDetentIndex = 0;
    [v9 center];
    v12->_originalPlatterCenter.x = v22;
    v12->_originalPlatterCenter.y = v23;
    [v10 center];
    v12->_originalMenuCenter.x = v24;
    v12->_originalMenuCenter.y = v25;
    *&v12->_menuAnchor.attachment = xmmword_18A6790D0;
    v12->_menuAnchor.alignmentOffset = 0.0;
    v12->_menuAnchor.gravity = 0;
    v12->_menuAnchor.attachmentOffset = 0.0;
    v12->_rubberbandingEdges = 15;
    v12->_menuViewIsVisible = 1;
    v26 = [(_UIContextMenuPanController *)v12 _currentPlatformMetrics];
    [v26 baseMenuOffset];
    v12->_defaultZPosition = v27;

    v28 = [_UIContextMenuScrollObservationInteraction interactionWithDelegate:v12];
    [v9 addInteraction:v28];
  }

  return v12;
}

- (void)moveToDetentPosition:(int64_t)a3 updateScrubPath:(BOOL)a4
{
  v4 = a4;
  if (![(_UIContextMenuPanController *)self _canSwipeDownToDismiss])
  {
    goto LABEL_10;
  }

  if (a3)
  {
    if (a3 != 2)
    {
      goto LABEL_10;
    }

    a3 = [(NSArray *)self->_detents count]- 1;
  }

  if (a3 != self->_currentDetentIndex)
  {
    v7 = [(NSArray *)self->_detents count];
    if (a3 >= v7 - 1)
    {
      v8 = v7 - 1;
    }

    else
    {
      v8 = a3;
    }

    self->_currentDetentIndex = v8;
    v9 = [(NSArray *)self->_detents objectAtIndexedSubscript:?];
    [v9 CGPointValue];
    v11 = v10;
    v13 = v12;

    self->_initialYTranslation = v13;
    v14 = [(_UIContextMenuPanController *)self platterView];
    [v14 frame];
    v17 = v16 + v15 * 0.5;
    v20 = v19 + v18 * 0.5;

    [(_UIContextMenuPanController *)self _animationsForPreviewPlusActionsStyleWithTranslation:v11 location:v13, 0.0, v17, v20, 0.0];
    [(_UIContextMenuPanController *)self _animationsForAnyAttachedAccessoryViews];
  }

LABEL_10:
  if (v4)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __68___UIContextMenuPanController_moveToDetentPosition_updateScrubPath___block_invoke;
    v21[3] = &unk_1E70F3590;
    v21[4] = self;
    [UIView performWithoutAnimation:v21];
  }
}

- (void)setDetents:(id)a3
{
  v5 = a3;
  if (self->_detents != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_detents, a3);
    v6 = [(NSArray *)self->_detents count];
    v5 = v7;
    self->_currentDetentIndex = v6 - 1;
  }
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    v4 = a3;
    self->_enabled = a3;
    v5 = [(_UIContextMenuPanController *)self panGestureRecognizer];
    [v5 setEnabled:v4];
  }
}

- (void)setOriginalPlatterCenter:(CGPoint)a3
{
  if (a3.x != self->_originalPlatterCenter.x || a3.y != self->_originalPlatterCenter.y)
  {
    self->_originalPlatterCenter = a3;
    [(_UIContextMenuPanController *)self _updateForSignificantLayoutChange];
  }
}

- (void)setOriginalMenuCenter:(CGPoint)a3
{
  if (a3.x != self->_originalMenuCenter.x || a3.y != self->_originalMenuCenter.y)
  {
    self->_originalMenuCenter = a3;
    [(_UIContextMenuPanController *)self _updateForSignificantLayoutChange];
  }
}

- (int)_nearestDetentWithTranslation:(CGPoint)a3
{
  y = a3.y;
  v5 = [(NSArray *)self->_detents count];
  v6 = v5;
  if (y <= 250.0 && v5)
  {
    v7 = 0;
    v6 = 0;
    v8 = 1.79769313e308;
    do
    {
      v9 = [(NSArray *)self->_detents objectAtIndexedSubscript:v7];
      [v9 CGPointValue];
      v11 = v10;

      if (vabdd_f64(v11, y) < fabs(v8))
      {
        v8 = v11 - y;
        v6 = v7;
      }

      ++v7;
    }

    while ([(NSArray *)self->_detents count]> v7);
  }

  return v6;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveEvent:(id)a4
{
  v5 = a4;
  if ([v5 type] == 10)
  {
    v6 = v5;
    if ([(_UIContextMenuPanController *)self _canSwipeDownToDismiss])
    {
      v7 = [(_UIContextMenuPanController *)self platterView];
      [v7 bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v16 = [(_UIContextMenuPanController *)self platterView];
      [v6 locationInView:v16];
      v21.x = v17;
      v21.y = v18;
      v22.origin.x = v9;
      v22.origin.y = v11;
      v22.size.width = v13;
      v22.size.height = v15;
      v19 = CGRectContainsPoint(v22, v21);
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 1;
  }

  return v19;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 phase] <= 0 && (-[_UIContextMenuPanController panGestureRecognizer](self, "panGestureRecognizer"), v8 = objc_claimAutoreleasedReturnValue(), v8, v8 == v6))
  {
    v11 = [(_UIContextMenuPanController *)self platterView];
    [v11 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = [(_UIContextMenuPanController *)self platterView];
    [v7 locationInView:v20];
    v27.x = v21;
    v27.y = v22;
    v28.origin.x = v13;
    v28.origin.y = v15;
    v28.size.width = v17;
    v28.size.height = v19;
    v9 = CGRectContainsPoint(v28, v27);

    v23 = [(_UIContextMenuPanController *)self menuView];
    v24 = [(_UIContextMenuPanController *)self menuView];
    [v7 locationInView:v24];
    v25 = [v23 hitTest:0 withEvent:?];

    v26 = [(_UIContextMenuPanController *)self _userInterfaceIdiom];
    if (v26 != 6)
    {
      if (v26 == 1)
      {
        if (v25)
        {
          v9 = 1;
        }
      }

      else
      {
        v9 |= [(_UIContextMenuPanController *)self _canSwipeDownToDismiss]|| v25 != 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UIContextMenuPanController *)self panGestureRecognizer];

  v11 = 0;
  if (v8 == v7)
  {
    v9 = [v6 name];
    v10 = [v9 isEqualToString:@"com.apple.UIKit.ContextMenuActionsListSelection"];

    if (v10)
    {
      v11 = 1;
    }
  }

  return v11;
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UIContextMenuPanController *)self panGestureRecognizer];

  if (v8 == v7 && self->_currentDetentIndex && [v6 _isGestureType:8])
  {
    v11 = [v6 view];
    v12 = [(_UIContextMenuPanController *)self menuView];
    v9 = [v11 isDescendantOfView:v12];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_handlePanGesture:(id)a3
{
  v4 = a3;
  v5 = [(_UIContextMenuPanController *)self containerView];
  [v4 translationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(_UIContextMenuPanController *)self containerView];
  [v4 locationInView:v10];
  v12 = v11;
  v14 = v13;

  v15 = [v4 _activeEvents];
  v16 = [v15 anyObject];
  v17 = [v16 type];

  if (v17 == 10)
  {
    v7 = 0.0;
  }

  v18 = [v4 state];

  [(_UIContextMenuPanController *)self _updateForGestureWithState:v18 translation:v17 != 10 location:v7 allowsDragging:v9, 0.0, v12, v14, 0.0];
}

- (void)_updateForGestureWithState:(int64_t)a3 translation:(CAPoint3D)a4 location:(CAPoint3D)a5 allowsDragging:(BOOL)a6
{
  v6 = a6;
  z = a5.z;
  y = a5.y;
  x = a5.x;
  v10 = a4.z;
  v11 = a4.y;
  v12 = a4.x;
  if (![(_UIContextMenuPanController *)self enabled])
  {
    return;
  }

  v48 = [(_UIContextMenuPanController *)self containerView];
  v15 = [(_UIContextMenuPanController *)self _canSwipeDownToDismiss];
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v17 = [(NSArray *)self->_detents objectAtIndexedSubscript:self->_currentDetentIndex];
      [v17 CGPointValue];
      self->_initialYTranslation = v18;

      v19 = [(_UIContextMenuPanController *)self velocityIntegrator];
      [v19 reset];

      if (!v15)
      {
        [(_UIContextMenuPanController *)self _updateMenuScrubPathWithLocationIfNecessary:x, y];
        self->_initialLocationInsidePreview = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      }

      v20 = [(_UIContextMenuPanController *)self delegate];
      [v20 platterPanInteractionBegan:self allowSwipeToDismiss:&self->_clientAllowsDismissal];
    }

    else if (a3 != 2)
    {
      goto LABEL_32;
    }

    initialYTranslation = self->_initialYTranslation;
    if (!v15)
    {
      [(_UIContextMenuPanController *)self _updateMenuScrubPathWithLocationIfNecessary:x, y];
      self->_currentDistanceToMenuScrubPath = UIDistanceBetweenPointAndPolygon(self->_menuScrubPath, x, y);
    }

    v22 = v11 + initialYTranslation;
    if (v6 && [(_UIContextMenuPanController *)self _canBeginDraggingWithTranslation:v12 location:v22, v10, x, y, z])
    {
      v23 = [(_UIContextMenuPanController *)self delegate];
      [v23 platterPanControllerDidTearOff:self];
    }

    v24 = [(_UIContextMenuPanController *)self velocityIntegrator];
    [v24 addSample:{x, y}];

    v25 = self;
    v26 = v12;
    v27 = v22;
    v28 = v10;
    v29 = x;
    v30 = 0;
    v31 = y;
    v32 = z;
    v33 = 0;
    goto LABEL_19;
  }

  if (a3 == 3)
  {
    self->_currentDistanceToMenuScrubPath = 0.0;
    [(_UIContextMenuPanController *)self _currentPlatterVelocity];
    v35 = v34;
    currentDetentIndex = self->_currentDetentIndex;
    v37 = [(_UIContextMenuPanController *)self delegate];
    [v37 platterPanInteractionEnded:self];

    if (v15)
    {
      if (v35 >= 2000.0)
      {
        currentDetentIndex = [(NSArray *)self->_detents count];
      }

      else if (v35 <= 300.0)
      {
        if (v35 >= -300.0)
        {
          currentDetentIndex = [(_UIContextMenuPanController *)self _nearestDetentWithTranslation:v12, v11 + self->_initialYTranslation];
          v38 = 0;
          goto LABEL_26;
        }

        if (currentDetentIndex <= 1)
        {
          v47 = 1;
        }

        else
        {
          v47 = currentDetentIndex;
        }

        currentDetentIndex = v47 - 1;
      }

      else
      {
        ++currentDetentIndex;
      }
    }

    v38 = 1;
LABEL_26:
    if (!self->_clientAllowsDismissal)
    {
      currentDetentIndex = fmax(fmin(currentDetentIndex, ([(NSArray *)self->_detents count]- 1)), 0.0);
    }

    if ([(NSArray *)self->_detents count]> currentDetentIndex)
    {
      v39 = [(NSArray *)self->_detents objectAtIndexedSubscript:currentDetentIndex];
      [v39 CGPointValue];
      v41 = v40;
      v43 = v42;

      self->_currentDetentIndex = currentDetentIndex;
      v28 = 0.0;
      v25 = self;
      v26 = v41;
      v27 = v43;
      v29 = x;
      v31 = y;
      v32 = z;
      v30 = 1;
      v33 = v38;
LABEL_19:
      [(_UIContextMenuPanController *)v25 _updateViewPositionsWithTranslation:v30 location:v33 ended:v26 withVelocity:v27, v28, v29, v31, v32];
      goto LABEL_32;
    }

    v16 = [MEMORY[0x1E696B098] valueWithCGPoint:{0.0, fmax(fmin(v35, 4500.0), 0.0)}];
    v44 = [(_UIContextMenuPanController *)self platterView];
    [v44 _setVelocity:v16 forKey:@"position"];

    v45 = [(_UIContextMenuPanController *)self menuView];
    [v45 _setVelocity:v16 forKey:@"position"];

    v46 = [(_UIContextMenuPanController *)self delegate];
    [v46 platterPanControllerDidSwipeDown:self];

LABEL_31:
    goto LABEL_32;
  }

  if (a3 == 4)
  {
    v16 = [(_UIContextMenuPanController *)self delegate];
    [v16 platterPanInteractionEnded:self];
    goto LABEL_31;
  }

LABEL_32:
}

- (void)_updateMenuScrubPathWithLocationIfNecessary:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(_UIContextMenuPanController *)self menuView];
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [(_UIContextMenuPanController *)self menuAnchor];
  v15 = v177;
  if (v177 == 4 || v177 == 1)
  {
    v180.origin.x = UIRectInsetEdges(v177, v8, v10, v12, v14, -48.0);
  }

  else
  {
    v179.origin.x = v8;
    v179.origin.y = v10;
    v179.size.width = v12;
    v179.size.height = v14;
    v180 = CGRectInset(v179, 0.0, -48.0);
  }

  v17 = v180.origin.x;
  v18 = v180.origin.y;
  width = v180.size.width;
  height = v180.size.height;
  v178.x = x;
  v178.y = y;
  v19 = CGRectContainsPoint(v180, v178);
  menuScrubPath = self->_menuScrubPath;
  if (menuScrubPath && v19)
  {
    if (self->_touchEverEnteredMenu)
    {
      return;
    }
  }

  else if (menuScrubPath)
  {
    return;
  }

  self->_touchEverEnteredMenu = v19;
  v171 = 0;
  v172 = &v171;
  v173 = 0x3032000000;
  v174 = __Block_byref_object_copy__49;
  v175 = __Block_byref_object_dispose__49;
  v176 = 0;
  if (!v19)
  {
    v49 = [(_UIContextMenuPanController *)self _currentPlatformMetrics];
    [v49 previewActionsStyleDragTearOffThreshold];
    v51 = v50;

    v52 = [(_UIContextMenuPanController *)self containerView];
    v53 = [v52 _screen];
    [v53 scale];
    UIRectCenteredAboutPointScale(0.0, 0.0, v51, v51, x, y, v54);
    rect = v55;
    v57 = v56;
    v59 = v58;
    v61 = v60;

    v62 = objc_opt_new();
    v63 = v172[5];
    v172[5] = v62;

    if (v15 > 3)
    {
      if (v15 == 4)
      {
        [v172[5] moveToPoint:{v57, v59}];
        v130 = v172[5];
        v250.origin.x = v57;
        v250.origin.y = v59;
        v250.size.width = v61;
        v250.size.height = rect;
        MaxX = CGRectGetMaxX(v250);
        v251.origin.x = v57;
        v251.origin.y = v59;
        v251.size.width = v61;
        v251.size.height = rect;
        [v130 addLineToPoint:{MaxX, CGRectGetMinY(v251)}];
        v132 = v172[5];
        v252.origin.x = v57;
        v252.origin.y = v59;
        v252.size.width = v61;
        v252.size.height = rect;
        v159 = CGRectGetMaxX(v252);
        v253.origin.x = v17;
        v253.origin.y = v18;
        v253.size.width = width;
        v253.size.height = height;
        v151 = CGRectGetMaxX(v253);
        v254.origin.x = v57;
        v254.origin.y = v59;
        v254.size.width = v61;
        v254.size.height = rect;
        v133 = CGRectGetMaxX(v254);
        v255.origin.x = v57;
        v255.origin.y = v59;
        v255.size.width = v61;
        v255.size.height = rect;
        MinY = CGRectGetMinY(v255);
        v256.origin.x = v17;
        v256.origin.y = v18;
        v256.size.width = width;
        v256.size.height = height;
        v135 = CGRectGetMinY(v256);
        v257.origin.x = v57;
        v257.origin.y = v59;
        v257.size.width = v61;
        v257.size.height = rect;
        [v132 addLineToPoint:{v159 + (v151 - v133) * 0.25, MinY + (v135 - CGRectGetMinY(v257)) * 0.75}];
        v136 = v172[5];
        v258.origin.x = v17;
        v258.origin.y = v18;
        v258.size.width = width;
        v258.size.height = height;
        v137 = CGRectGetMaxX(v258);
        v259.origin.x = v17;
        v259.origin.y = v18;
        v259.size.width = width;
        v259.size.height = height;
        [v136 addLineToPoint:{v137, CGRectGetMinY(v259)}];
        v138 = v172[5];
        v260.origin.x = v17;
        v260.origin.y = v18;
        v260.size.width = width;
        v260.size.height = height;
        v139 = CGRectGetMaxX(v260);
        v261.origin.x = v17;
        v261.origin.y = v18;
        v261.size.width = width;
        v261.size.height = height;
        [v138 addLineToPoint:{v139, CGRectGetMaxY(v261)}];
        v140 = v172[5];
        v262.origin.x = v17;
        v262.origin.y = v18;
        v262.size.width = width;
        v262.size.height = height;
        MinX = CGRectGetMinX(v262);
        v263.origin.x = v17;
        v263.origin.y = v18;
        v263.size.width = width;
        v263.size.height = height;
        [v140 addLineToPoint:{MinX, CGRectGetMaxY(v263)}];
        [v172[5] addLineToPoint:{v17, v18}];
        v80 = v172[5];
        v264.origin.x = v17;
        v264.origin.y = v18;
        v264.size.width = width;
        v264.size.height = height;
        v160 = CGRectGetMinX(v264);
        v265.origin.x = v57;
        v265.origin.y = v59;
        v265.size.width = v61;
        v265.size.height = rect;
        v142 = CGRectGetMinX(v265);
        v266.origin.x = v17;
        v266.origin.y = v18;
        v266.size.width = width;
        v266.size.height = height;
        v143 = CGRectGetMinX(v266);
        v267.origin.x = v17;
        v267.origin.y = v18;
        v267.size.width = width;
        v267.size.height = height;
        v144 = CGRectGetMinY(v267);
        v268.origin.x = v57;
        v268.origin.y = v59;
        v268.size.width = v61;
        v268.size.height = rect;
        v145 = CGRectGetMinY(v268);
        v269.origin.x = v17;
        v269.origin.y = v18;
        v269.size.width = width;
        v269.size.height = height;
        v81 = v160 + (v142 - v143) * 0.8;
        v129 = v144 + (v145 - CGRectGetMinY(v269)) * 0.25;
        goto LABEL_46;
      }

      if (v15 != 8)
      {
        goto LABEL_47;
      }

      [v172[5] moveToPoint:{v57, v59}];
      v83 = v172[5];
      v204.origin.x = v57;
      v204.origin.y = v59;
      v204.size.width = v61;
      v204.size.height = rect;
      v155 = CGRectGetMinX(v204);
      v205.origin.x = v17;
      v205.origin.y = v18;
      v205.size.width = width;
      v205.size.height = height;
      v151 = CGRectGetMinX(v205);
      v206.origin.x = v57;
      v206.origin.y = v59;
      v206.size.width = v61;
      v206.size.height = rect;
      v84 = CGRectGetMinX(v206);
      v207.origin.x = v57;
      v207.origin.y = v59;
      v207.size.width = v61;
      v207.size.height = rect;
      v85 = CGRectGetMinY(v207);
      v208.origin.x = v57;
      v208.origin.y = v59;
      v208.size.width = v61;
      v208.size.height = rect;
      v86 = CGRectGetMinY(v208);
      v209.origin.x = v17;
      v209.origin.y = v18;
      v209.size.width = width;
      v209.size.height = height;
      [v83 addLineToPoint:{v155 + (v151 - v84) * 0.75, v85 + (v86 - CGRectGetMinY(v209)) * -0.25}];
      [v172[5] addLineToPoint:{v17, v18}];
      v87 = v172[5];
      v210.origin.x = v17;
      v210.origin.y = v18;
      v210.size.width = width;
      v210.size.height = height;
      v88 = CGRectGetMaxX(v210);
      v211.origin.x = v17;
      v211.origin.y = v18;
      v211.size.width = width;
      v211.size.height = height;
      [v87 addLineToPoint:{v88, CGRectGetMinY(v211)}];
      v89 = v172[5];
      v212.origin.x = v17;
      v212.origin.y = v18;
      v212.size.width = width;
      v212.size.height = height;
      v90 = CGRectGetMaxX(v212);
      v213.origin.x = v17;
      v213.origin.y = v18;
      v213.size.width = width;
      v213.size.height = height;
      [v89 addLineToPoint:{v90, CGRectGetMaxY(v213)}];
      v91 = v172[5];
      v214.origin.x = v17;
      v214.origin.y = v18;
      v214.size.width = width;
      v214.size.height = height;
      v92 = CGRectGetMinX(v214);
      v215.origin.x = v17;
      v215.origin.y = v18;
      v215.size.width = width;
      v215.size.height = height;
      [v91 addLineToPoint:{v92, CGRectGetMaxY(v215)}];
      v93 = v172[5];
      v216.origin.x = v17;
      v216.origin.y = v18;
      v216.size.width = width;
      v216.size.height = height;
      v156 = CGRectGetMinX(v216);
      v217.origin.x = v17;
      v217.origin.y = v18;
      v217.size.width = width;
      v217.size.height = height;
      v94 = CGRectGetMinX(v217);
      v218.origin.x = v57;
      v218.origin.y = v59;
      v218.size.width = v61;
      v218.size.height = rect;
      v95 = CGRectGetMinX(v218);
      v219.origin.x = v17;
      v219.origin.y = v18;
      v219.size.width = width;
      v219.size.height = height;
      MaxY = CGRectGetMaxY(v219);
      v220.origin.x = v17;
      v220.origin.y = v18;
      v220.size.width = width;
      v220.size.height = height;
      v97 = CGRectGetMaxY(v220);
      v221.origin.x = v57;
      v221.origin.y = v59;
      v221.size.width = v61;
      v221.size.height = rect;
      [v93 addLineToPoint:{v156 + (v94 - v95) * -0.25, MaxY + (v97 - CGRectGetMaxY(v221)) * -0.75}];
      v80 = v172[5];
      v222.origin.x = v57;
      v222.origin.y = v59;
      v222.size.width = v61;
      v222.size.height = rect;
      v81 = CGRectGetMinX(v222);
      v223.origin.x = v57;
      v223.origin.y = v59;
      v223.size.width = v61;
      v223.size.height = rect;
      v82 = CGRectGetMaxY(v223);
    }

    else if (v15 == 1)
    {
      [v172[5] moveToPoint:{v17, v18}];
      v113 = v172[5];
      v228.origin.x = v17;
      v228.origin.y = v18;
      v228.size.width = width;
      v228.size.height = height;
      v114 = CGRectGetMaxX(v228);
      v229.origin.x = v17;
      v229.origin.y = v18;
      v229.size.width = width;
      v229.size.height = height;
      [v113 addLineToPoint:{v114, CGRectGetMinY(v229)}];
      v115 = v172[5];
      v230.origin.x = v17;
      v230.origin.y = v18;
      v230.size.width = width;
      v230.size.height = height;
      v116 = CGRectGetMaxX(v230);
      v231.origin.x = v17;
      v231.origin.y = v18;
      v231.size.width = width;
      v231.size.height = height;
      [v115 addLineToPoint:{v116, CGRectGetMaxY(v231)}];
      v117 = v172[5];
      v232.origin.x = v17;
      v232.origin.y = v18;
      v232.size.width = width;
      v232.size.height = height;
      v157 = CGRectGetMaxX(v232);
      v233.origin.x = v57;
      v233.origin.y = v59;
      v233.size.width = v61;
      v233.size.height = rect;
      v152 = CGRectGetMaxX(v233);
      v234.origin.x = v17;
      v234.origin.y = v18;
      v234.size.width = width;
      v234.size.height = height;
      v118 = CGRectGetMaxX(v234);
      v235.origin.x = v17;
      v235.origin.y = v18;
      v235.size.width = width;
      v235.size.height = height;
      v119 = CGRectGetMaxY(v235);
      v236.origin.x = v57;
      v236.origin.y = v59;
      v236.size.width = v61;
      v236.size.height = rect;
      v120 = CGRectGetMaxY(v236);
      v237.origin.x = v17;
      v237.origin.y = v18;
      v237.size.width = width;
      v237.size.height = height;
      [v117 addLineToPoint:{v157 + (v152 - v118) * 0.8, v119 + (v120 - CGRectGetMaxY(v237)) * 0.25}];
      v121 = v172[5];
      v238.origin.x = v57;
      v238.origin.y = v59;
      v238.size.width = v61;
      v238.size.height = rect;
      v122 = CGRectGetMaxX(v238);
      v239.origin.x = v57;
      v239.origin.y = v59;
      v239.size.width = v61;
      v239.size.height = rect;
      [v121 addLineToPoint:{v122, CGRectGetMaxY(v239)}];
      v123 = v172[5];
      v240.origin.x = v57;
      v240.origin.y = v59;
      v240.size.width = v61;
      v240.size.height = rect;
      v124 = CGRectGetMinX(v240);
      v241.origin.x = v57;
      v241.origin.y = v59;
      v241.size.width = v61;
      v241.size.height = rect;
      [v123 addLineToPoint:{v124, CGRectGetMaxY(v241)}];
      v125 = v172[5];
      v242.origin.x = v57;
      v242.origin.y = v59;
      v242.size.width = v61;
      v242.size.height = rect;
      v158 = CGRectGetMinX(v242);
      v243.origin.x = v17;
      v243.origin.y = v18;
      v243.size.width = width;
      v243.size.height = height;
      v151 = CGRectGetMinX(v243);
      v244.origin.x = v57;
      v244.origin.y = v59;
      v244.size.width = v61;
      v244.size.height = rect;
      v126 = CGRectGetMinX(v244);
      v245.origin.x = v57;
      v245.origin.y = v59;
      v245.size.width = v61;
      v245.size.height = rect;
      v127 = CGRectGetMaxY(v245);
      v246.origin.x = v17;
      v246.origin.y = v18;
      v246.size.width = width;
      v246.size.height = height;
      v128 = CGRectGetMaxY(v246);
      v247.origin.x = v57;
      v247.origin.y = v59;
      v247.size.width = v61;
      v247.size.height = rect;
      [v125 addLineToPoint:{v158 + (v151 - v126) * 0.25, v127 + (v128 - CGRectGetMaxY(v247)) * 0.75}];
      v80 = v172[5];
      v248.origin.x = v17;
      v248.origin.y = v18;
      v248.size.width = width;
      v248.size.height = height;
      v81 = CGRectGetMinX(v248);
      v249.origin.x = v17;
      v249.origin.y = v18;
      v249.size.width = width;
      v249.size.height = height;
      v82 = CGRectGetMaxY(v249);
    }

    else
    {
      if (v15 != 2)
      {
        goto LABEL_47;
      }

      [v172[5] moveToPoint:{v17, v18}];
      v64 = v172[5];
      v182.origin.x = v17;
      v182.origin.y = v18;
      v182.size.width = width;
      v182.size.height = height;
      v65 = CGRectGetMaxX(v182);
      v183.origin.x = v17;
      v183.origin.y = v18;
      v183.size.width = width;
      v183.size.height = height;
      [v64 addLineToPoint:{v65, CGRectGetMinY(v183)}];
      v66 = v172[5];
      v184.origin.x = v17;
      v184.origin.y = v18;
      v184.size.width = width;
      v184.size.height = height;
      v153 = CGRectGetMaxX(v184);
      v185.origin.x = v57;
      v185.origin.y = v59;
      v185.size.width = v61;
      v185.size.height = rect;
      v150 = CGRectGetMaxX(v185);
      v186.origin.x = v17;
      v186.origin.y = v18;
      v186.size.width = width;
      v186.size.height = height;
      v67 = CGRectGetMaxX(v186);
      v187.origin.x = v17;
      v187.origin.y = v18;
      v187.size.width = width;
      v187.size.height = height;
      v68 = CGRectGetMinY(v187);
      v188.origin.x = v57;
      v188.origin.y = v59;
      v188.size.width = v61;
      v188.size.height = rect;
      v69 = CGRectGetMinY(v188);
      v189.origin.x = v17;
      v189.origin.y = v18;
      v189.size.width = width;
      v189.size.height = height;
      [v66 addLineToPoint:{v153 + (v150 - v67) * 0.25, v68 + (v69 - CGRectGetMinY(v189)) * 0.75}];
      v70 = v172[5];
      v190.origin.x = v57;
      v190.origin.y = v59;
      v190.size.width = v61;
      v190.size.height = rect;
      v71 = CGRectGetMaxX(v190);
      v191.origin.x = v57;
      v191.origin.y = v59;
      v191.size.width = v61;
      v191.size.height = rect;
      [v70 addLineToPoint:{v71, CGRectGetMinY(v191)}];
      v72 = v172[5];
      v192.origin.x = v57;
      v192.origin.y = v59;
      v192.size.width = v61;
      v192.size.height = rect;
      v73 = CGRectGetMaxX(v192);
      v193.origin.x = v57;
      v193.origin.y = v59;
      v193.size.width = v61;
      v193.size.height = rect;
      [v72 addLineToPoint:{v73, CGRectGetMaxY(v193)}];
      v74 = v172[5];
      v194.origin.x = v57;
      v194.origin.y = v59;
      v194.size.width = v61;
      v194.size.height = rect;
      v154 = CGRectGetMaxX(v194);
      v195.origin.x = v57;
      v195.origin.y = v59;
      v195.size.width = v61;
      v195.size.height = rect;
      v151 = CGRectGetMaxX(v195);
      v196.origin.x = v17;
      v196.origin.y = v18;
      v196.size.width = width;
      v196.size.height = height;
      v75 = CGRectGetMaxX(v196);
      v197.origin.x = v57;
      v197.origin.y = v59;
      v197.size.width = v61;
      v197.size.height = rect;
      v76 = CGRectGetMaxY(v197);
      v198.origin.x = v57;
      v198.origin.y = v59;
      v198.size.width = v61;
      v198.size.height = rect;
      v77 = CGRectGetMaxY(v198);
      v199.origin.x = v57;
      v199.origin.y = v59;
      v199.size.width = v61;
      v199.size.height = rect;
      [v74 addLineToPoint:{v154 + (v151 - v75) * -0.75, v76 + (v77 - CGRectGetMaxY(v199)) * 0.25}];
      v78 = v172[5];
      v200.origin.x = v17;
      v200.origin.y = v18;
      v200.size.width = width;
      v200.size.height = height;
      v79 = CGRectGetMaxX(v200);
      v201.origin.x = v17;
      v201.origin.y = v18;
      v201.size.width = width;
      v201.size.height = height;
      [v78 addLineToPoint:{v79, CGRectGetMaxY(v201)}];
      v80 = v172[5];
      v202.origin.x = v17;
      v202.origin.y = v18;
      v202.size.width = width;
      v202.size.height = height;
      v81 = CGRectGetMinX(v202);
      v203.origin.x = v17;
      v203.origin.y = v18;
      v203.size.width = width;
      v203.size.height = height;
      v82 = CGRectGetMaxY(v203);
    }

    v129 = v82;
LABEL_46:
    [v80 addLineToPoint:{v81, v129, *&v151}];
    [v172[5] closePath];
    goto LABEL_47;
  }

  v21 = [UIBezierPath bezierPathWithRect:v17, v18, width, height];
  v22 = v172[5];
  v172[5] = v21;

  [(_UIContextMenuPanController *)self menuAnchor];
  v23 = v170;
  v24 = [(_UIContextMenuPanController *)self platterView];
  [v24 bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  [(_UIContextMenuPanController *)self originalPlatterCenter];
  v34 = v33;
  v36 = v35;
  v37 = [(_UIContextMenuPanController *)self containerView];
  v38 = [v37 _screen];
  [v38 scale];
  UIRectCenteredAboutPointScale(v26, v28, v30, v32, v34, v36, v39);
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;

  if (v15 == 4 || v15 == 1)
  {
    v181.origin.x = v41;
    v181.origin.y = v43;
    v181.size.width = v45;
    v181.size.height = v47;
    v48 = CGRectGetHeight(v181);
  }

  else
  {
    v224.origin.x = v41;
    v224.origin.y = v43;
    v224.size.width = v45;
    v224.size.height = v47;
    v48 = CGRectGetWidth(v224);
  }

  v98 = round(v48 * 0.65);
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  switch(v15)
  {
    case 1:
      v99 = CGRectMinYEdge;
      break;
    case 4:
      v99 = CGRectMaxYEdge;
      break;
    case 8:
      v99 = CGRectMaxXEdge;
      break;
    default:
      v99 = CGRectMinXEdge;
      break;
  }

  v225.origin.x = v41;
  v225.origin.y = v43;
  v225.size.width = v45;
  v225.size.height = v47;
  CGRectDivide(v225, &slice, &remainder, v98, v99);
  if (v15 == 4 || v15 == 1)
  {
    v226.origin.x = v17;
    v226.origin.y = v18;
    v226.size.width = width;
    v226.size.height = height;
    v100 = CGRectGetWidth(v226);
  }

  else
  {
    v227.origin.x = v17;
    v227.origin.y = v18;
    v227.size.width = width;
    v227.size.height = height;
    v100 = CGRectGetHeight(v227);
  }

  switch(v23)
  {
    case 1:
      v101 = CGRectMinYEdge;
      break;
    case 4:
      v101 = CGRectMaxYEdge;
      break;
    case 8:
      v101 = CGRectMaxXEdge;
      break;
    default:
      v101 = CGRectMinXEdge;
      break;
  }

  CGRectDivide(slice, &slice, &remainder, v100, v101);
  v102 = [(_UIContextMenuPanController *)self menuView];
  [v102 frame];
  v107 = UIDistanceBetweenRects(v103, v104, v105, v106, v41, v43, v45, v47);

  slice.origin.x = UIRectInsetEdges(v15, slice.origin.x, slice.origin.y, slice.size.width, slice.size.height, -v107);
  slice.origin.y = v108;
  slice.size.width = v109;
  slice.size.height = v110;
  v111 = v172[5];
  v112 = [UIBezierPath bezierPathWithRect:?];
  [v111 appendPath:v112];

LABEL_47:
  v146 = [(_UIContextMenuPanController *)self menuView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v148 = [(_UIContextMenuPanController *)self menuView];
    if ([v148 hierarchyStyle] == 2)
    {
      v149 = [v148 submenus];
      v164[0] = MEMORY[0x1E69E9820];
      v164[1] = 3221225472;
      v164[2] = __75___UIContextMenuPanController__updateMenuScrubPathWithLocationIfNecessary___block_invoke;
      v164[3] = &unk_1E70F80B8;
      v165 = v148;
      v166 = self;
      v167 = &v171;
      [v149 enumerateNodes:v164];
    }
  }

  objc_storeStrong(&self->_menuScrubPath, v172[5]);
  [(_UIContextMenuPanController *)self _updatePlatterGestureDebugUIWithTranslation:1 location:*MEMORY[0x1E695EFF8] invalidate:*(MEMORY[0x1E695EFF8] + 8), *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  _Block_object_dispose(&v171, 8);
}

- (BOOL)_canBeginDraggingWithTranslation:(CAPoint3D)a3 location:(CAPoint3D)a4
{
  z = a3.z;
  y = a3.y;
  x = a3.x;
  [(_UIContextMenuPanController *)self _dragTearOffThreshold:a3.x];
  v9 = v8;
  [(_UIContextMenuPanController *)self _tearOffSpeedMultiplier];
  v11 = v9 * v10;
  if ([(_UIContextMenuPanController *)self _canSwipeDownToDismiss])
  {
    if ([(NSArray *)self->_detents count]<= 1)
    {
      v12 = -v11;
    }

    else
    {
      v12 = v11 * -2.0;
    }

    v13 = [(NSArray *)self->_detents objectAtIndexedSubscript:0];
    [v13 CGPointValue];
    v15 = v14;

    v16 = fabs(x) > v9;
    return y - v15 < v12 || v16;
  }

  else
  {
    v18 = hypot(x, y);
    if ([(_UIContextMenuPanController *)self _userInterfaceIdiom]== 6)
    {
      v19 = v18 > v9;
      v20 = [(_UIContextMenuPanController *)self _currentPlatformMetrics];
      [v20 previewActionsStyleDragZTearOffThreshold];
      v22 = v21;

      return z > v22 || v19;
    }

    else
    {
      return self->_currentDistanceToMenuScrubPath > v11 && v18 > v9;
    }
  }
}

- (void)_updateViewPositionsWithTranslation:(CAPoint3D)a3 location:(CAPoint3D)a4 ended:(BOOL)a5 withVelocity:(BOOL)a6
{
  v6 = a6;
  y = a4.y;
  x = a4.x;
  v9 = a3.y;
  v10 = a3.x;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __95___UIContextMenuPanController__updateViewPositionsWithTranslation_location_ended_withVelocity___block_invoke;
  aBlock[3] = &unk_1E71016A8;
  aBlock[4] = self;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v12 = _Block_copy(aBlock);
  v13 = [(_UIContextMenuPanController *)self animationBehavior];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __95___UIContextMenuPanController__updateViewPositionsWithTranslation_location_ended_withVelocity___block_invoke_2;
  v15[3] = &unk_1E70F0F78;
  v16 = v12;
  v14 = v12;
  [UIView _animateUsingSpringBehavior:v13 tracking:!v6 animations:v15 completion:0];

  [(_UIContextMenuPanController *)self _updatePlatterGestureDebugUIWithTranslation:0 location:v10 invalidate:v9, x, y];
}

- (id)_createAnimationBehaviorWithCriticalDamping:(BOOL)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setInertialTargetSmoothing:0.15];
  [v4 setInertialProjectionDeceleration:0.996];
  v5 = 0.85;
  if (v3)
  {
    v5 = 1.0;
    v6 = 1.0;
  }

  else
  {
    v6 = 0.8;
  }

  [v4 setDampingRatio:v5 response:0.5];
  [v4 setTrackingDampingRatio:v6 response:0.4 dampingRatioSmoothing:0.08 responseSmoothing:0.08];

  return v4;
}

- (void)_animationsForPreviewPlusActionsStyleWithTranslation:(CAPoint3D)a3 location:(CAPoint3D)a4
{
  y = a4.y;
  z = a3.z;
  v6 = a3.y;
  x = a3.x;
  v67 = *MEMORY[0x1E69E9840];
  v9 = [(_UIContextMenuPanController *)self platterView:a3.x];
  [v9 bounds];
  Height = CGRectGetHeight(v68);
  [v9 bounds];
  Width = CGRectGetWidth(v69);
  [(_UIContextMenuPanController *)self _rubberBandedTranslationForGestureTranslation:x, v6, z];
  v14 = v13;
  v15 = v12;
  v17 = v16;
  v52 = *(MEMORY[0x1E695EFD0] + 16);
  v54 = *MEMORY[0x1E695EFD0];
  *&v65.a = *MEMORY[0x1E695EFD0];
  *&v65.c = v52;
  v50 = *(MEMORY[0x1E695EFD0] + 32);
  *&v65.tx = v50;
  if (v12 <= 0.0)
  {
    v22 = fabs(v12) / (Height + -198.0);
    v23 = fmax(fmin(1.0 - v22 + fmin(198.0 / Height, 1.0) * v22, 1.0), 0.35);
    CGAffineTransformMakeScale(&v65, v23, v23);
  }

  else
  {
    v18 = fmax(fmin(1.0 - v12 / 250.0 + v12 / 250.0 * 0.7, 1.0), 0.7);
    [v9 center];
    v20 = y - v19;
    CGAffineTransformMakeTranslation(&v65, 0.0, v20);
    v63 = v65;
    CGAffineTransformScale(&v64, &v63, v18, v18);
    v65 = v64;
    v21 = -v20 / v18;
    if (v20 < 0.0)
    {
      v21 = v18 * -v20;
    }

    v63 = v65;
    CGAffineTransformTranslate(&v64, &v63, 0.0, v21);
    v65 = v64;
  }

  v64 = v65;
  [v9 setTransform:{&v64, v50, v52, v54}];
  memset(&v64, 0, sizeof(v64));
  CGAffineTransformMakeTranslation(&v64, v14, v15);
  [v9 frame];
  v24 = (Height - CGRectGetHeight(v70)) * 0.5;
  if (v24 < 0.0)
  {
    v24 = 0.0;
  }

  v64.ty = v64.ty + v24;
  if (v64.ty < 0.0)
  {
    [(_UIContextMenuPanController *)self menuAnchor];
    if (v62 == 4)
    {
      [v9 frame];
      v25 = (Width - CGRectGetWidth(v71)) * 0.5;
      if (v25 >= 0.0)
      {
        v26 = v25;
      }

      else
      {
        v26 = 0.0;
      }

      [(_UIContextMenuPanController *)self menuAnchor];
      if (v61 == 8)
      {
        v27 = v26 + v64.tx;
      }

      else
      {
        if (v61 != 2)
        {
          goto LABEL_18;
        }

        v27 = v64.tx - v26;
      }

      v64.tx = v27;
    }
  }

LABEL_18:
  [v9 setCenter:{vaddq_f64(*&v64.tx, vaddq_f64(vmulq_n_f64(*&v64.a, self->_originalPlatterCenter.x), vmulq_n_f64(*&v64.c, self->_originalPlatterCenter.y)))}];
  v28 = [v9 layer];
  [v28 setZPosition:v17];

  v29 = [(_UIContextMenuPanController *)self menuView];
  if (v29)
  {
    [(_UIContextMenuPanController *)self originalMenuCenter];
    v31 = v30;
    [(_UIContextMenuPanController *)self originalPlatterCenter];
    v33 = v31 - v32;
    v34 = Height * 0.5;
    if (v33 > 0.0)
    {
      v34 = -(Height * 0.5);
    }

    v35 = v33 + v34;
    [(_UIContextMenuPanController *)self menuAnchor];
    v36 = 1.0;
    if (*&v63.a == 4)
    {
      v37 = 1.0;
    }

    else
    {
      v37 = 0.5;
    }

    if (*&v63.a == 1)
    {
      v37 = 0.0;
    }

    if (*&v63.b == 1)
    {
      v37 = 0.0;
    }

    if (*&v63.b == 4)
    {
      v38 = 1.0;
    }

    else
    {
      v38 = v37;
    }

    [v29 center];
    v40 = v39;
    [v9 frame];
    MinY = CGRectGetMinY(v72);
    [v9 frame];
    v42 = MinY + v38 * CGRectGetHeight(v73);
    *&v63.a = v55;
    *&v63.c = v53;
    *&v63.tx = v51;
    if (self->_clientAllowsDismissal)
    {
      v43 = [(_UIContextMenuPanController *)self _canSwipeDownToDismiss];
      v44 = 1;
      if (v15 > 50.0 && v43)
      {
        CGAffineTransformMakeScale(&v63, 0.2, 0.2);
        v44 = 0;
        v36 = 0.0;
      }
    }

    else
    {
      v44 = 1;
    }

    if (self->_menuViewIsVisible != v44)
    {
      self->_menuViewIsVisible = v44;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v45 = [(_UIContextMenuPanController *)self accessoryViews];
      v46 = [v45 countByEnumeratingWithState:&v57 objects:v66 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = *v58;
        do
        {
          for (i = 0; i != v47; ++i)
          {
            if (*v58 != v48)
            {
              objc_enumerationMutation(v45);
            }

            [*(*(&v57 + 1) + 8 * i) setVisible:self->_menuViewIsVisible animated:1];
          }

          v47 = [v45 countByEnumeratingWithState:&v57 objects:v66 count:16];
        }

        while (v47);
      }
    }

    [v29 setCenter:{v40, v35 + v42}];
    v56 = v63;
    [v29 setTransform:&v56];
    [v29 setAlpha:v36];
    [v29 updateTraitsIfNeeded];
  }
}

- (void)_animationsForActionsStyleWithLocation:(CAPoint3D)a3 ended:(BOOL)a4
{
  v4 = a4;
  z = a3.z;
  y = a3.y;
  x = a3.x;
  v9 = [(_UIContextMenuPanController *)self platterView];
  v10 = [(_UIContextMenuPanController *)self menuView];
  if (v4)
  {
    [(_UIContextMenuPanController *)self originalPlatterCenter];
    [v9 setCenter:?];
    defaultZPosition = self->_defaultZPosition;
    v12 = [v9 layer];
    [v12 setZPosition:defaultZPosition];

    v13 = *(MEMORY[0x1E695EFD0] + 16);
    *&v45.a = *MEMORY[0x1E695EFD0];
    *&v45.c = v13;
    *&v45.tx = *(MEMORY[0x1E695EFD0] + 32);
    [v10 setTransform:&v45];
  }

  else
  {
    if (![(_UIContextMenuPanController *)self _initialPointInPlatterIsValid])
    {
      [v9 frame];
      v46.x = x;
      v46.y = y;
      if (CGRectContainsPoint(v48, v46))
      {
        self->_initialLocationInsidePreview.x = x;
        self->_initialLocationInsidePreview.y = y;
      }
    }

    if ([(_UIContextMenuPanController *)self _initialPointInPlatterIsValid])
    {
      [(_UIContextMenuPanController *)self _rubberBandedTranslationForGestureTranslation:x - self->_initialLocationInsidePreview.x, y - self->_initialLocationInsidePreview.y, z - self->_defaultZPosition];
      memset(&v45, 0, sizeof(v45));
      CGAffineTransformMakeTranslation(&v45, v14, v15);
      [(_UIContextMenuPanController *)self originalPlatterCenter];
      v18 = v45.tx + v16 * v45.a + v17 * v45.c;
      v19 = v45.ty + v16 * v45.b + v17 * v45.d;
      [(_UIContextMenuPanController *)self originalPlatterCenter];
      v21 = v20;
      v23 = v22;
      [(_UIContextMenuPanController *)self originalMenuCenter];
      v25 = v24;
      v27 = v26;
      v28 = vabdd_f64(v26, v23);
      v29 = vabdd_f64(v24, v21);
      [(_UIContextMenuPanController *)self menuAnchor];
      v30 = v27 - v28;
      if (v19 < v27 - v28)
      {
        v30 = v19;
      }

      v31 = v25 - v29;
      if (v18 < v25 - v29)
      {
        v31 = v18;
      }

      if (v44 != 8)
      {
        v31 = v18;
      }

      if (v44 == 4)
      {
        v31 = v18;
      }

      else
      {
        v30 = v19;
      }

      v32 = v27 + v28;
      if (v19 >= v27 + v28)
      {
        v32 = v19;
      }

      v33 = v25 + v29;
      if (v18 >= v25 + v29)
      {
        v33 = v18;
      }

      if (v44 != 2)
      {
        v33 = v18;
      }

      if (v44 == 1)
      {
        v33 = v18;
      }

      else
      {
        v32 = v19;
      }

      if (v44 <= 3)
      {
        v34 = v32;
      }

      else
      {
        v34 = v30;
      }

      if (v44 <= 3)
      {
        v35 = v33;
      }

      else
      {
        v35 = v31;
      }

      [v10 frame];
      v47.x = x;
      v47.y = y;
      if (!CGRectContainsPoint(v49, v47))
      {
        [v9 setCenter:{v35, v34}];
      }
    }

    v36 = [v10 traitCollection];
    v37 = _UIContextMenuGetPlatformMetrics([v36 userInterfaceIdiom]);

    currentDistanceToMenuScrubPath = self->_currentDistanceToMenuScrubPath;
    [(_UIContextMenuPanController *)self _dragTearOffThreshold];
    v40 = currentDistanceToMenuScrubPath / v39;
    [v37 menuMinimumScale];
    v42 = fmax(v41, fmin(1.0 - v40 + v40 * 0.95, 1.0));
    CGAffineTransformMakeScale(&v43, v42, v42);
    v45 = v43;
    [v10 setTransform:&v45];
  }
}

- (void)scrollObservationInteraction:(id)a3 didUpdateWithTranslation:(CGPoint)a4 location:(CGPoint)a5 ended:(BOOL)a6
{
  if (a6)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  [(_UIContextMenuPanController *)self _updateForGestureWithState:v6 translation:0 location:a4.x allowsDragging:a4.y, 0.0, a5.x, a5.y, 0.0];
}

- (CAPoint3D)_rubberBandedTranslationForGestureTranslation:(CAPoint3D)a3
{
  z = a3.z;
  y = a3.y;
  x = a3.x;
  [(_UIContextMenuPanController *)self _rangeOfMotion];
  v8 = v7;
  [(_UIContextMenuPanController *)self _dragTearOffThreshold];
  v10 = v9;
  if ([(_UIContextMenuPanController *)self rubberbandingEdges]== 15 || y < -v8)
  {
    v14 = y + v8;
    v15 = hypot(x, v14);
    v16 = +[UIDevice currentDevice];
    v17 = _UIContextMenuGetPlatformMetrics([v16 userInterfaceIdiom]);

    [v17 previewRubberbandingCoefficient];
    if (v15 <= 0.0)
    {
      if (v15 < 0.0)
      {
        v15 = -((1.0 - 1.0 / (1.0 - v15 / v10 * v18)) * v10);
      }
    }

    else
    {
      v15 = v10 * (1.0 - 1.0 / (v15 / v10 * v18 + 1.0));
    }

    v19 = atan2(v14, x);
    v20 = __sincos_stret(v19);
    x = v15 * v20.__cosval;
    y = v15 * v20.__sinval - v8;
  }

  else
  {
    v11 = +[UIDevice currentDevice];
    v12 = _UIContextMenuGetPlatformMetrics([v11 userInterfaceIdiom]);

    [v12 previewRubberbandingCoefficient];
    if (x <= 0.0)
    {
      if (x < 0.0)
      {
        x = -((1.0 - 1.0 / (1.0 - x / v10 * v13)) * v10);
      }
    }

    else
    {
      x = v10 * (1.0 - 1.0 / (x / v10 * v13 + 1.0));
    }
  }

  v21 = x;
  v22 = y;
  v23 = z;
  result.z = v23;
  result.y = v22;
  result.x = v21;
  return result;
}

- (void)_updatePlatterGestureDebugUIWithTranslation:(CGPoint)a3 location:(CGPoint)a4 invalidate:(BOOL)a5
{
  v5 = a5;
  y = a4.y;
  x = a4.x;
  v8 = a3.y;
  v9 = a3.x;
  if ((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_ClickUIDebugEnabled, @"ClickUIDebugEnabled", _UIInternalPreferenceUpdateBool) & 1) != 0 || !byte_1EA95E0FC)
  {
    return;
  }

  if (!_MergedGlobals_16)
  {
    v11 = +[UIColor systemOrangeColor];
    v12 = [_UIDebugDot dotWithTitle:@"Translated Platter Center" color:v11];
    v13 = _MergedGlobals_16;
    _MergedGlobals_16 = v12;

    v5 = 1;
  }

  if (!qword_1EA968350)
  {
    v14 = +[UIColor blueColor];
    v15 = [_UIDebugDot dotWithTitle:@"Rubberbanded Platter Center" color:v14];
    v16 = qword_1EA968350;
    qword_1EA968350 = v15;
  }

  if (!qword_1EA968358)
  {
    v17 = +[UIColor brownColor];
    v18 = [_UIDebugDot dotWithTitle:@"Original Platter Center" color:v17];
    v19 = qword_1EA968358;
    qword_1EA968358 = v18;
  }

  if (!qword_1EA968360)
  {
    v20 = +[UIColor redColor];
    v21 = [_UIDebugDot dotWithTitle:@"Actual Touch" color:v20];
    v22 = qword_1EA968360;
    qword_1EA968360 = v21;
  }

  if (v5)
  {
    [qword_1EA968368 removeFromSuperview];
    v23 = qword_1EA968368;
    qword_1EA968368 = 0;
  }

  if (!qword_1EA968368)
  {
    v24 = objc_opt_new();
    v25 = qword_1EA968368;
    qword_1EA968368 = v24;

    v26 = +[UIColor redColor];
    v27 = [v26 CGColor];
    v28 = [qword_1EA968368 shapeLayer];
    [v28 setFillColor:v27];

    v29 = [(UIBezierPath *)self->_menuScrubPath CGPath];
    v30 = [qword_1EA968368 shapeLayer];
    [v30 setPath:v29];

    [qword_1EA968368 setAlpha:0.2];
  }

  if (![(_UIContextMenuPanController *)self _canSwipeDownToDismiss])
  {
    if (!qword_1EA968370)
    {
      v31 = objc_opt_new();
      v32 = qword_1EA968370;
      qword_1EA968370 = v31;

      v33 = +[UIColor redColor];
      [qword_1EA968370 setBackgroundColor:v33];

      v34 = +[UIColor whiteColor];
      [qword_1EA968370 setTextColor:v34];

      v35 = [off_1E70ECC18 monospacedSystemFontOfSize:15.0 weight:*off_1E70ECD20];
      [qword_1EA968370 setFont:v35];
    }

    v36 = [(_UIContextMenuPanController *)self containerView];
    [v36 addSubview:qword_1EA968370];

    v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Distance from path edge: %.2f", *&self->_currentDistanceToMenuScrubPath];
    [qword_1EA968370 setText:v37];

    [qword_1EA968370 setTextAlignment:1];
    [qword_1EA968370 sizeToFit];
    [qword_1EA968370 setClipsToBounds:1];
    [qword_1EA968370 _setContinuousCornerRadius:4.0];
    v38 = [(_UIContextMenuPanController *)self containerView];
    [v38 safeAreaInsets];
    v40 = v39;

    if (v40 < 8.0)
    {
      v40 = 8.0;
    }

    v41 = [(_UIContextMenuPanController *)self containerView];
    [v41 safeAreaInsets];
    v43 = v42;

    if (v43 < 8.0)
    {
      v43 = 8.0;
    }

    [qword_1EA968370 bounds];
    v67 = CGRectInset(v66, -4.0, -1.0);
    [qword_1EA968370 setFrame:{v40, v43, v67.size.width, v67.size.height}];
  }

  if (qword_1EA968378)
  {
    if (v5)
    {
LABEL_25:
      v44 = [(_UIContextMenuPanController *)self platterView];
      [v44 center];
      [qword_1EA968358 setCenter:?];

      v45 = [(_UIContextMenuPanController *)self platterView];
      [v45 center];
      [qword_1EA968350 setCenter:?];

      v46 = [(_UIContextMenuPanController *)self platterView];
      [v46 center];
      [_MergedGlobals_16 setCenter:?];

      goto LABEL_28;
    }
  }

  else
  {
    v47 = +[UIColor purpleColor];
    v48 = [_UIDebugDot dotWithTitle:@"Menu Anchor Point" color:v47];
    v49 = qword_1EA968378;
    qword_1EA968378 = v48;

    if (v5)
    {
      goto LABEL_25;
    }
  }

  [(_UIContextMenuPanController *)self _rubberBandedTranslationForGestureTranslation:v9, v8, 0.0];
  v51 = v50;
  v53 = v52;
  CGAffineTransformMakeTranslation(&v65, v9, v8);
  v64 = v65;
  [_MergedGlobals_16 setTransform:&v64];
  CGAffineTransformMakeTranslation(&v63, v51, v53);
  v64 = v63;
  [qword_1EA968350 setTransform:&v64];
  [qword_1EA968360 setCenter:{x, y}];
LABEL_28:
  v54 = [(_UIContextMenuPanController *)self menuView];
  [v54 center];
  [qword_1EA968378 setCenter:?];

  v55 = [qword_1EA968368 superview];

  if (!v55)
  {
    v56 = [(_UIContextMenuPanController *)self platterView];
    v57 = [v56 superview];
    v58 = v57;
    if (v57)
    {
      v59 = v57;
    }

    else
    {
      v60 = [(_UIContextMenuPanController *)self menuView];
      v59 = [v60 superview];
    }

    [v59 addSubview:qword_1EA968368];
    [v59 addSubview:qword_1EA968360];
    v61 = [(_UIContextMenuPanController *)self platterView];

    if (v61)
    {
      [v59 addSubview:qword_1EA968358];
      [v59 addSubview:qword_1EA968350];
      [v59 addSubview:_MergedGlobals_16];
    }

    v62 = [(_UIContextMenuPanController *)self menuView];

    if (v62)
    {
      [v59 addSubview:qword_1EA968378];
    }
  }
}

- (void)setMenuAnchor:(id *)a3
{
  v3 = *&a3->var0;
  v4 = *&a3->var2;
  self->_menuAnchor.gravity = a3->var4;
  *&self->_menuAnchor.attachmentOffset = v4;
  *&self->_menuAnchor.attachment = v3;
}

@end