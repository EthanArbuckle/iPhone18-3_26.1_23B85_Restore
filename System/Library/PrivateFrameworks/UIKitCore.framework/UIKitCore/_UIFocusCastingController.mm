@interface _UIFocusCastingController
- (CGPoint)_castingPointInNormalizedFrame:(CGRect)frame forHeading:(unint64_t)heading;
- (CGPoint)_entryPointInNormalizedFrame:(CGRect)frame forHeading:(unint64_t)heading;
- (CGPoint)_movementPointInNormalizedFrame:(CGRect)frame;
- (CGPoint)screenEntryPoint;
- (CGRect)_castingFrameForFocusedNormalizedFrame:(CGRect)frame heading:(unint64_t)heading;
- (CGRect)castingFrameForFocusedItem:(id)item heading:(unint64_t)heading inCoordinateSpace:(id)space;
- (UIFocusSystem)focusSystem;
- (_UIFocusCastingController)init;
- (id)_focusEffectsControllerForFocusedItem;
- (id)_normalizedCoordinateSpace;
- (unint64_t)_axisForHeading:(unint64_t)heading;
- (void)_createFocusMovementIndicator;
- (void)_destroyFocusMovementIndicator;
- (void)_positionFocusMovementIndicators;
- (void)_startRememberingEntryPoint;
- (void)_stopRememberingEntryPoint;
- (void)_updateFocusItemFromNormalizedFrame:(CGRect)frame toNormalizedFrame:(CGRect)normalizedFrame withHeading:(unint64_t)heading;
- (void)_updateFocusMovementIndicatorDisplay;
- (void)forceUpdateFocusCastingFocusedRect:(CGRect)rect coordinateSpace:(id)space heading:(unint64_t)heading;
- (void)forgetEntryPoint;
- (void)setEntryPointMemorizationTimeout:(double)timeout;
- (void)updateFocusCastingWithContext:(id)context;
@end

@implementation _UIFocusCastingController

- (_UIFocusCastingController)init
{
  v3.receiver = self;
  v3.super_class = _UIFocusCastingController;
  result = [(_UIFocusCastingController *)&v3 init];
  if (result)
  {
    result->_screenEntryPoint = _UIFocusCastingPointNone;
    result->_isRememberingEntryPoint = 0;
    result->_entryPointMemorizationTimeout = 0.5;
    result->_entryPointAxis = 0;
  }

  return result;
}

- (void)updateFocusCastingWithContext:(id)context
{
  contextCopy = context;
  _normalizedCoordinateSpace = [(_UIFocusCastingController *)self _normalizedCoordinateSpace];
  if (_normalizedCoordinateSpace)
  {
    v6 = *MEMORY[0x1E695F050];
    v7 = *(MEMORY[0x1E695F050] + 8);
    v9 = *(MEMORY[0x1E695F050] + 16);
    v8 = *(MEMORY[0x1E695F050] + 24);
    previouslyFocusedItem = [contextCopy previouslyFocusedItem];
    v11 = v8;
    v12 = v9;
    v13 = v7;
    v14 = v6;
    if (previouslyFocusedItem)
    {
      v15 = previouslyFocusedItem;
      previouslyFocusedItem2 = [contextCopy previouslyFocusedItem];
      v17 = [UIFocusSystem focusSystemForEnvironment:previouslyFocusedItem2];

      v11 = v8;
      v12 = v9;
      v13 = v7;
      v14 = v6;
      if (v17)
      {
        previouslyFocusedItem3 = [contextCopy previouslyFocusedItem];
        v14 = _UIFocusItemFrameInCoordinateSpace(previouslyFocusedItem3, _normalizedCoordinateSpace);
        v13 = v19;
        v12 = v20;
        v11 = v21;
      }
    }

    nextFocusedItem = [contextCopy nextFocusedItem];
    if (nextFocusedItem)
    {
      nextFocusedItem2 = [contextCopy nextFocusedItem];
      v6 = _UIFocusItemFrameInCoordinateSpace(nextFocusedItem2, _normalizedCoordinateSpace);
      v7 = v24;
      v9 = v25;
      v8 = v26;
    }

    -[_UIFocusCastingController _updateFocusItemFromNormalizedFrame:toNormalizedFrame:withHeading:](self, "_updateFocusItemFromNormalizedFrame:toNormalizedFrame:withHeading:", [contextCopy focusHeading], v14, v13, v12, v11, v6, v7, v9, v8);
  }

  else
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIFocus", &updateFocusCastingWithContext____s_category);
    if (*CategoryCachedImpl)
    {
      v28 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *v29 = 0;
        _os_log_impl(&dword_188A29000, v28, OS_LOG_TYPE_ERROR, "Unable to get normalized coordinate space for focus casting.", v29, 2u);
      }
    }
  }
}

- (CGRect)castingFrameForFocusedItem:(id)item heading:(unint64_t)heading inCoordinateSpace:(id)space
{
  itemCopy = item;
  spaceCopy = space;
  if (!itemCopy && (([(_UIFocusCastingController *)self screenEntryPoint], v11 == INFINITY) ? (v12 = v10 == INFINITY) : (v12 = 0), v12))
  {
    v19 = *MEMORY[0x1E695F050];
    v20 = *(MEMORY[0x1E695F050] + 8);
    v21 = *(MEMORY[0x1E695F050] + 16);
    v22 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    _normalizedCoordinateSpace = [(_UIFocusCastingController *)self _normalizedCoordinateSpace];
    if (_normalizedCoordinateSpace)
    {
      if (itemCopy)
      {
        v14 = _UIFocusItemFrameInCoordinateSpace(itemCopy, _normalizedCoordinateSpace);
      }

      else
      {
        [(_UIFocusCastingController *)self screenEntryPoint];
        v15 = round(v23 + -5.0);
        v14 = round(v24 + -5.0);
        v16 = 10.0;
        v17 = 10.0;
      }

      [(_UIFocusCastingController *)self _castingFrameForFocusedNormalizedFrame:heading heading:v14, v15, v16, v17];
      [_normalizedCoordinateSpace convertRect:spaceCopy toCoordinateSpace:?];
      v19 = v25;
      v20 = v26;
      v21 = v27;
      v22 = v28;
    }

    else
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIFocus", &castingFrameForFocusedItem_heading_inCoordinateSpace____s_category);
      if (*CategoryCachedImpl)
      {
        v33 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34[0] = 0;
          _os_log_impl(&dword_188A29000, v33, OS_LOG_TYPE_ERROR, "Unable to get normalized coordinate space for focus casting.", v34, 2u);
        }
      }

      v19 = *MEMORY[0x1E695F050];
      v20 = *(MEMORY[0x1E695F050] + 8);
      v21 = *(MEMORY[0x1E695F050] + 16);
      v22 = *(MEMORY[0x1E695F050] + 24);
    }
  }

  v29 = v19;
  v30 = v20;
  v31 = v21;
  v32 = v22;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (void)forceUpdateFocusCastingFocusedRect:(CGRect)rect coordinateSpace:(id)space heading:(unint64_t)heading
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  spaceCopy = space;
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  if (CGRectIsNull(v21))
  {
    [(_UIFocusCastingController *)self setScreenEntryPoint:INFINITY, INFINITY];
    [(_UIFocusCastingController *)self _stopRememberingEntryPoint];
  }

  else
  {
    _normalizedCoordinateSpace = [(_UIFocusCastingController *)self _normalizedCoordinateSpace];
    v13 = _normalizedCoordinateSpace;
    if (_normalizedCoordinateSpace)
    {
      [_normalizedCoordinateSpace convertRect:spaceCopy fromCoordinateSpace:{x, y, width, height}];
      [(_UIFocusCastingController *)self _updateFocusItemFromNormalizedFrame:heading toNormalizedFrame:*MEMORY[0x1E695F050] withHeading:*(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), v14, v15, v16, v17];
    }

    else
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIFocus", &forceUpdateFocusCastingFocusedRect_coordinateSpace_heading____s_category);
      if (*CategoryCachedImpl)
      {
        v19 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *v20 = 0;
          _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "Unable to get normalized coordinate space for focus casting.", v20, 2u);
        }
      }
    }
  }
}

- (id)_normalizedCoordinateSpace
{
  focusSystem = [(_UIFocusCastingController *)self focusSystem];
  v3 = [_UIFocusSystemSceneComponent sceneComponentForFocusSystem:focusSystem];
  coordinateSpace = [v3 coordinateSpace];

  return coordinateSpace;
}

- (CGRect)_castingFrameForFocusedNormalizedFrame:(CGRect)frame heading:(unint64_t)heading
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (!CGRectIsNull(frame))
  {
    [(_UIFocusCastingController *)self _castingPointInNormalizedFrame:heading forHeading:x, y, width, height];
    v15 = v13;
    if (v13 == INFINITY && v14 == INFINITY)
    {
      v10 = x;
      v11 = width;
      v12 = height;
      goto LABEL_21;
    }

    v11 = fmin(width, 10.0);
    v12 = fmin(height, 10.0);
    if ((heading & 3) != 0)
    {
      v15 = v13 + v11 * -0.5;
      if (heading)
      {
        v17 = 0.0;
        goto LABEL_17;
      }

      if ((heading & 2) != 0)
      {
        v25.origin.x = x;
        v25.origin.y = y;
        v25.size.width = width;
        v25.size.height = height;
        v17 = CGRectGetMaxY(v25) - v12;
LABEL_17:
        v24 = v17;
LABEL_20:
        v27.origin.x = x;
        v27.origin.y = y;
        v27.size.width = width;
        v27.size.height = height;
        MinX = CGRectGetMinX(v27);
        v28.origin.x = x;
        v28.origin.y = y;
        v28.size.width = width;
        v28.size.height = height;
        v10 = fmax(MinX, fmin(v15, CGRectGetMaxX(v28) - v11));
        v29.origin.x = x;
        v29.origin.y = y;
        v29.size.width = width;
        v29.size.height = height;
        MinY = CGRectGetMinY(v29);
        v30.origin.x = x;
        v30.origin.y = y;
        v30.size.width = width;
        v30.size.height = height;
        y = fmax(MinY, fmin(v24, CGRectGetMaxY(v30) - v12));
        goto LABEL_21;
      }
    }

    else if ((heading & 0xC) != 0)
    {
      v24 = v14 + v12 * -0.5;
      if ((heading & 4) != 0)
      {
        v15 = 0.0;
      }

      else if ((heading & 8) != 0)
      {
        v26.origin.x = x;
        v26.origin.y = y;
        v26.size.width = width;
        v26.size.height = height;
        v15 = CGRectGetMaxX(v26) - v11;
      }

      goto LABEL_20;
    }

    v24 = v14;
    goto LABEL_20;
  }

  v10 = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  v11 = *(MEMORY[0x1E695F050] + 16);
  v12 = *(MEMORY[0x1E695F050] + 24);
LABEL_21:
  v20 = v10;
  v21 = y;
  v22 = v11;
  v23 = v12;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (void)_updateFocusItemFromNormalizedFrame:(CGRect)frame toNormalizedFrame:(CGRect)normalizedFrame withHeading:(unint64_t)heading
{
  height = normalizedFrame.size.height;
  width = normalizedFrame.size.width;
  y = normalizedFrame.origin.y;
  x = normalizedFrame.origin.x;
  v10 = frame.size.height;
  v11 = frame.size.width;
  v12 = frame.origin.y;
  v13 = frame.origin.x;
  if (CGRectIsNull(normalizedFrame) || (heading & 0xF) == 0)
  {
    [(_UIFocusCastingController *)self _stopRememberingEntryPoint];
    v19 = INFINITY;
    v20 = INFINITY;
    goto LABEL_17;
  }

  v41.origin.x = v13;
  v41.origin.y = v12;
  v41.size.width = v11;
  v41.size.height = v10;
  if (CGRectIsNull(v41))
  {
    v15 = x;
    v16 = y;
    v17 = width;
    v18 = height;
  }

  else
  {
    [(_UIFocusCastingController *)self _castingFrameForFocusedNormalizedFrame:heading heading:v13, v12, v11, v10];
    v15 = v21;
    v16 = v22;
    v17 = v23;
    v18 = v24;
  }

  if (_UIRectIntersectsRectAlongFocusHeading(heading, x, y, width, height, v15, v16, v17, v18))
  {
    if ((heading & 3) == 0)
    {
      if ((heading & 0xC) != 0)
      {
        v52.origin.x = v15;
        v52.origin.y = v16;
        v52.size.width = v17;
        v52.size.height = v18;
        recta = v15;
        MinY = CGRectGetMinY(v52);
        v53.origin.x = x;
        v53.origin.y = y;
        v53.size.width = width;
        v53.size.height = height;
        v34 = CGRectGetMinY(v53);
        if (MinY >= v34)
        {
          v34 = MinY;
        }

        v37 = v34;
        v54.origin.x = recta;
        v54.origin.y = v16;
        v54.size.width = v17;
        v54.size.height = v18;
        MaxY = CGRectGetMaxY(v54);
        v55.origin.x = x;
        v55.origin.y = y;
        v55.size.width = width;
        v55.size.height = height;
        v36 = CGRectGetMaxY(v55);
        if (MaxY < v36)
        {
          v36 = MaxY;
        }

        MidY = (v37 + v36) * 0.5;
        v56.origin.x = x;
        v56.origin.y = y;
        v56.size.width = width;
        v56.size.height = height;
        MidX = CGRectGetMidX(v56);
      }

      else
      {
        MidX = INFINITY;
        MidY = INFINITY;
      }

      goto LABEL_16;
    }

    v42.origin.x = v15;
    v42.origin.y = v16;
    v42.size.width = v17;
    v42.size.height = v18;
    rect = v15;
    MinX = CGRectGetMinX(v42);
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    v26 = CGRectGetMinX(v43);
    if (MinX >= v26)
    {
      v26 = MinX;
    }

    v37 = v26;
    v44.origin.x = rect;
    v44.origin.y = v16;
    v44.size.width = v17;
    v44.size.height = v18;
    MaxX = CGRectGetMaxX(v44);
    v45.origin.x = x;
    v45.origin.y = y;
    v45.size.width = width;
    v45.size.height = height;
    v28 = CGRectGetMaxX(v45);
    if (MaxX < v28)
    {
      v28 = MaxX;
    }

    MidX = (v37 + v28) * 0.5;
  }

  else
  {
    v46.origin.x = x;
    v46.origin.y = y;
    v46.size.width = width;
    v46.size.height = height;
    MidX = CGRectGetMidX(v46);
  }

  v47.origin.x = x;
  v47.origin.y = y;
  v47.size.width = width;
  v47.size.height = height;
  MidY = CGRectGetMidY(v47);
LABEL_16:
  v48.origin.x = x;
  v48.origin.y = y;
  v48.size.width = width;
  v48.size.height = height;
  v31 = CGRectGetMinX(v48);
  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  v19 = fmax(v31, fmin(MidX, CGRectGetMaxX(v49)));
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  v32 = CGRectGetMinY(v50);
  v51.origin.x = x;
  v51.origin.y = y;
  v51.size.width = width;
  v51.size.height = height;
  v20 = fmax(v32, fmin(MidY, CGRectGetMaxY(v51)));
  [(_UIFocusCastingController *)self _startRememberingEntryPoint];
LABEL_17:
  [(_UIFocusCastingController *)self setScreenEntryPoint:v19, v20, *&v37];
  [(_UIFocusCastingController *)self setEntryPointAxis:[(_UIFocusCastingController *)self _axisForHeading:heading]];
  if (_UIGetFocusCastingVisualization())
  {

    [(_UIFocusCastingController *)self _updateFocusMovementIndicatorDisplay];
  }
}

- (unint64_t)_axisForHeading:(unint64_t)heading
{
  if ((heading & 3) != 0)
  {
    return 2;
  }

  else
  {
    return (heading & 0xC) != 0;
  }
}

- (CGPoint)_castingPointInNormalizedFrame:(CGRect)frame forHeading:(unint64_t)heading
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if ([(_UIFocusCastingController *)self isRememberingEntryPoint])
  {

    [(_UIFocusCastingController *)self _entryPointInNormalizedFrame:heading forHeading:x, y, width, height];
  }

  else
  {

    [(_UIFocusCastingController *)self _movementPointInNormalizedFrame:x, y, width, height];
  }

  result.y = v11;
  result.x = v10;
  return result;
}

- (void)_stopRememberingEntryPoint
{
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel_forgetEntryPoint object:0];

  [(_UIFocusCastingController *)self setIsRememberingEntryPoint:0];
}

- (void)_startRememberingEntryPoint
{
  [(_UIFocusCastingController *)self _stopRememberingEntryPoint];
  [(_UIFocusCastingController *)self setIsRememberingEntryPoint:1];
  [(_UIFocusCastingController *)self entryPointMemorizationTimeout];
  if (v3 > 0.0)
  {

    [(_UIFocusCastingController *)self performSelector:sel_forgetEntryPoint withObject:0 afterDelay:?];
  }
}

- (void)forgetEntryPoint
{
  if ([(_UIFocusCastingController *)self isRememberingEntryPoint])
  {
    [(_UIFocusCastingController *)self _stopRememberingEntryPoint];
    if (_UIGetFocusCastingVisualization())
    {

      [(_UIFocusCastingController *)self _positionFocusMovementIndicators];
    }
  }
}

- (void)setEntryPointMemorizationTimeout:(double)timeout
{
  self->_entryPointMemorizationTimeout = timeout;
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel_forgetEntryPoint object:0];
  isRememberingEntryPoint = [(_UIFocusCastingController *)self isRememberingEntryPoint];
  if (timeout > 0.0 && isRememberingEntryPoint)
  {

    [(_UIFocusCastingController *)self performSelector:sel_forgetEntryPoint withObject:0 afterDelay:timeout];
  }
}

- (CGPoint)_entryPointInNormalizedFrame:(CGRect)frame forHeading:(unint64_t)heading
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(_UIFocusCastingController *)self screenEntryPoint];
  v11 = v10;
  v13 = v12;
  v14 = [(_UIFocusCastingController *)self _axisForHeading:heading];
  v15 = INFINITY;
  v16 = v11 == INFINITY && v13 == INFINITY;
  v17 = INFINITY;
  if (!v16)
  {
    if ([(_UIFocusCastingController *)self entryPointAxis]== v14)
    {
      v22.origin.x = x;
      v22.origin.y = y;
      v22.size.width = width;
      v22.size.height = height;
      MinX = CGRectGetMinX(v22);
      v23.origin.x = x;
      v23.origin.y = y;
      v23.size.width = width;
      v23.size.height = height;
      v15 = fmax(MinX, fmin(v11, CGRectGetMaxX(v23)));
      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      MinY = CGRectGetMinY(v24);
      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      v17 = fmax(MinY, fmin(v13, CGRectGetMaxY(v25)));
    }

    else
    {
      v15 = INFINITY;
      v17 = INFINITY;
    }
  }

  v20 = v15;
  result.y = v17;
  result.x = v20;
  return result;
}

- (CGPoint)_movementPointInNormalizedFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  _focusEffectsControllerForFocusedItem = [(_UIFocusCastingController *)self _focusEffectsControllerForFocusedItem];
  v8 = _focusEffectsControllerForFocusedItem;
  if (_focusEffectsControllerForFocusedItem)
  {
    [_focusEffectsControllerForFocusedItem displayOffset];
    v10 = x + width * (v9 + 1.0) * 0.5;
    v12 = y + height * (v11 + 1.0) * 0.5;
  }

  else
  {
    v12 = INFINITY;
    v10 = INFINITY;
  }

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (id)_focusEffectsControllerForFocusedItem
{
  focusSystem = [(_UIFocusCastingController *)self focusSystem];
  focusedItem = [focusSystem focusedItem];
  v5 = _UIFocusEnvironmentContainingView(focusedItem);
  _window = [v5 _window];

  _focusEventRecognizer = [_window _focusEventRecognizer];
  _motionEffectsController = [_focusEventRecognizer _motionEffectsController];

  if (_UIGetFocusCastingVisualization() && _motionEffectsController)
  {
    [_motionEffectsController addObserver:self];
  }

  return _motionEffectsController;
}

- (void)_updateFocusMovementIndicatorDisplay
{
  [(_UIFocusCastingController *)self _createFocusMovementIndicator];

  [(_UIFocusCastingController *)self _positionFocusMovementIndicators];
}

- (void)_createFocusMovementIndicator
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v5 = [bundleIdentifier isEqualToString:@"com.apple.PineBoard"];

  if ((v5 & 1) == 0)
  {
    focusSystem = [(_UIFocusCastingController *)self focusSystem];
    focusedItem = [focusSystem focusedItem];
    v8 = _UIFocusEnvironmentContainingView(focusedItem);
    _window = [v8 _window];

    focusCastingIndicator = [(_UIFocusCastingController *)self focusCastingIndicator];
    window = [focusCastingIndicator window];

    if (_window != window)
    {
      [(_UIFocusCastingController *)self _destroyFocusMovementIndicator];
    }

    if (_window)
    {
      focusCastingIndicator2 = [(_UIFocusCastingController *)self focusCastingIndicator];

      if (!focusCastingIndicator2)
      {
        v12 = [UIView alloc];
        v13 = *MEMORY[0x1E695F058];
        v14 = *(MEMORY[0x1E695F058] + 8);
        v15 = *(MEMORY[0x1E695F058] + 16);
        v16 = *(MEMORY[0x1E695F058] + 24);
        v17 = [(UIView *)v12 initWithFrame:*MEMORY[0x1E695F058], v14, v15, v16];
        [(_UIFocusCastingController *)self setFocusCastingIndicator:v17];

        v18 = [UIColor colorWithRed:0.543 green:1.11 blue:0.678 alpha:7.0];
        focusCastingIndicator3 = [(_UIFocusCastingController *)self focusCastingIndicator];
        [focusCastingIndicator3 setBackgroundColor:v18];

        focusCastingIndicator4 = [(_UIFocusCastingController *)self focusCastingIndicator];
        layer = [focusCastingIndicator4 layer];
        [layer setZPosition:100.0];

        focusCastingIndicator5 = [(_UIFocusCastingController *)self focusCastingIndicator];
        [focusCastingIndicator5 setUserInteractionEnabled:0];

        focusCastingIndicator6 = [(_UIFocusCastingController *)self focusCastingIndicator];
        [_window addSubview:focusCastingIndicator6];

        v24 = [[UIView alloc] initWithFrame:v13, v14, v15, v16];
        [(_UIFocusCastingController *)self setFocusMovementIndicator:v24];

        v25 = [UIColor colorWithRed:1.11 green:0.543 blue:0.678 alpha:1.0];
        focusMovementIndicator = [(_UIFocusCastingController *)self focusMovementIndicator];
        [focusMovementIndicator setBackgroundColor:v25];

        focusMovementIndicator2 = [(_UIFocusCastingController *)self focusMovementIndicator];
        layer2 = [focusMovementIndicator2 layer];
        [layer2 setZPosition:100.0];

        focusMovementIndicator3 = [(_UIFocusCastingController *)self focusMovementIndicator];
        [focusMovementIndicator3 setUserInteractionEnabled:0];

        focusMovementIndicator4 = [(_UIFocusCastingController *)self focusMovementIndicator];
        [_window addSubview:focusMovementIndicator4];

        v31 = [[UIView alloc] initWithFrame:v13, v14, v15, v16];
        [(_UIFocusCastingController *)self setFocusEntryIndicator:v31];

        v32 = [UIColor colorWithRed:0.678 green:0.543 blue:1.11 alpha:1.0];
        focusEntryIndicator = [(_UIFocusCastingController *)self focusEntryIndicator];
        [focusEntryIndicator setBackgroundColor:v32];

        focusEntryIndicator2 = [(_UIFocusCastingController *)self focusEntryIndicator];
        layer3 = [focusEntryIndicator2 layer];
        [layer3 setZPosition:100.0];

        focusEntryIndicator3 = [(_UIFocusCastingController *)self focusEntryIndicator];
        [focusEntryIndicator3 setUserInteractionEnabled:0];

        focusEntryIndicator4 = [(_UIFocusCastingController *)self focusEntryIndicator];
        [_window addSubview:focusEntryIndicator4];
      }
    }
  }
}

- (void)_positionFocusMovementIndicators
{
  focusCastingIndicator = [(_UIFocusCastingController *)self focusCastingIndicator];

  if (focusCastingIndicator)
  {
    _normalizedCoordinateSpace = [(_UIFocusCastingController *)self _normalizedCoordinateSpace];
    if (_normalizedCoordinateSpace)
    {
      focusMovementIndicator = [(_UIFocusCastingController *)self focusMovementIndicator];
      [focusMovementIndicator setHidden:1];

      focusEntryIndicator = [(_UIFocusCastingController *)self focusEntryIndicator];
      [focusEntryIndicator setHidden:1];

      focusCastingIndicator2 = [(_UIFocusCastingController *)self focusCastingIndicator];
      [focusCastingIndicator2 setHidden:1];

      focusSystem = [(_UIFocusCastingController *)self focusSystem];
      focusedItem = [focusSystem focusedItem];

      v50.origin.x = _UIFocusItemFrameInCoordinateSpace(focusedItem, _normalizedCoordinateSpace);
      x = v50.origin.x;
      y = v50.origin.y;
      width = v50.size.width;
      height = v50.size.height;
      if (!CGRectIsNull(v50))
      {
        _focusEffectsControllerForFocusedItem = [(_UIFocusCastingController *)self _focusEffectsControllerForFocusedItem];
        [_focusEffectsControllerForFocusedItem displayOffset];
        v16 = v15;
        v18 = v17;

        v19 = -v16;
        if (v16 >= 0.0)
        {
          v19 = v16;
        }

        v20 = -v18;
        v21 = 4;
        if (v16 > 0.0)
        {
          v21 = 8;
        }

        if (v18 >= 0.0)
        {
          v20 = v18;
        }

        v22 = 2;
        if (v18 <= 0.0)
        {
          v22 = 1;
        }

        if (v19 <= v20)
        {
          v23 = v22;
        }

        else
        {
          v23 = v21;
        }

        [(_UIFocusCastingController *)self _movementPointInNormalizedFrame:x, y, width, height];
        v25 = v24;
        v27 = v26;
        [(_UIFocusCastingController *)self _entryPointInNormalizedFrame:v23 forHeading:x, y, width, height];
        v29 = v28;
        v31 = v30;
        [(_UIFocusCastingController *)self _castingPointInNormalizedFrame:v23 forHeading:x, y, width, height];
        v33 = v32;
        v35 = v34;
        v36 = v31 == INFINITY && v29 == INFINITY;
        focusEntryIndicator2 = [(_UIFocusCastingController *)self focusEntryIndicator];
        [focusEntryIndicator2 setHidden:v36];

        focusEntryIndicator3 = [(_UIFocusCastingController *)self focusEntryIndicator];
        [focusEntryIndicator3 setBounds:{0.0, 0.0, 20.0, 20.0}];

        focusEntryIndicator4 = [(_UIFocusCastingController *)self focusEntryIndicator];
        [focusEntryIndicator4 setCenter:{v29, v31}];

        v40 = v27 == INFINITY && v25 == INFINITY;
        focusMovementIndicator2 = [(_UIFocusCastingController *)self focusMovementIndicator];
        [focusMovementIndicator2 setHidden:v40];

        focusMovementIndicator3 = [(_UIFocusCastingController *)self focusMovementIndicator];
        [focusMovementIndicator3 setBounds:{0.0, 0.0, 25.0, 25.0}];

        focusMovementIndicator4 = [(_UIFocusCastingController *)self focusMovementIndicator];
        [focusMovementIndicator4 setCenter:{v25, v27}];

        focusCastingIndicator3 = [(_UIFocusCastingController *)self focusCastingIndicator];
        [focusCastingIndicator3 setHidden:0];

        focusCastingIndicator4 = [(_UIFocusCastingController *)self focusCastingIndicator];
        [focusCastingIndicator4 setBounds:{0.0, 0.0, 30.0, 30.0}];

        focusCastingIndicator5 = [(_UIFocusCastingController *)self focusCastingIndicator];
        [focusCastingIndicator5 setCenter:{v33, v35}];
      }
    }

    else
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIFocus", &_positionFocusMovementIndicators___s_category);
      if (*CategoryCachedImpl)
      {
        v48 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *v49 = 0;
          _os_log_impl(&dword_188A29000, v48, OS_LOG_TYPE_ERROR, "Unable to get normalized coordinate space for focus casting.", v49, 2u);
        }
      }
    }
  }
}

- (void)_destroyFocusMovementIndicator
{
  focusMovementIndicator = [(_UIFocusCastingController *)self focusMovementIndicator];

  if (focusMovementIndicator)
  {
    focusMovementIndicator2 = [(_UIFocusCastingController *)self focusMovementIndicator];
    [focusMovementIndicator2 removeFromSuperview];

    [(_UIFocusCastingController *)self setFocusMovementIndicator:0];
  }

  focusEntryIndicator = [(_UIFocusCastingController *)self focusEntryIndicator];

  if (focusEntryIndicator)
  {
    focusEntryIndicator2 = [(_UIFocusCastingController *)self focusEntryIndicator];
    [focusEntryIndicator2 removeFromSuperview];

    [(_UIFocusCastingController *)self setFocusEntryIndicator:0];
  }

  focusCastingIndicator = [(_UIFocusCastingController *)self focusCastingIndicator];

  if (focusCastingIndicator)
  {
    focusCastingIndicator2 = [(_UIFocusCastingController *)self focusCastingIndicator];
    [focusCastingIndicator2 removeFromSuperview];

    [(_UIFocusCastingController *)self setFocusCastingIndicator:0];
  }
}

- (UIFocusSystem)focusSystem
{
  WeakRetained = objc_loadWeakRetained(&self->focusSystem);

  return WeakRetained;
}

- (CGPoint)screenEntryPoint
{
  x = self->_screenEntryPoint.x;
  y = self->_screenEntryPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end