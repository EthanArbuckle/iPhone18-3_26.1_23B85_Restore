@interface UIKBTouchState
+ (id)touchForTouchUUID:(id)d;
+ (id)touchStateForTouch:(id)touch;
+ (id)touchStateForTouchUUID:(id)d withTimestamp:(double)timestamp phase:(int64_t)phase location:(CGPoint)location pathIndex:(unsigned __int8)index inView:(id)view;
+ (id)touchUUIDForTouch:(id)touch;
+ (id)touchUUIDsForTouches:(id)touches;
+ (id)touchesForTouchUUIDs:(id)ds;
+ (void)releaseUUIDForTouch:(id)touch;
- (CGPoint)locationInView:(id)view;
- (CGPoint)locationInWindow;
- (UITouch)uiTouch;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation UIKBTouchState

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(UIKBTouchState);
  v4->_timestamp = self->_timestamp;
  v4->_phase = self->_phase;
  objc_storeStrong(&v4->_window, self->_window);
  v4->_locationInWindow = self->_locationInWindow;
  v4->_pathMajorRadius = self->_pathMajorRadius;
  v4->_pathIndex = self->_pathIndex;
  v5 = [(NSUUID *)self->_touchUUID copy];
  touchUUID = v4->_touchUUID;
  v4->_touchUUID = v5;

  v4->_tapCount = self->_tapCount;
  v4->_inputSource = self->_inputSource;
  return v4;
}

+ (id)touchUUIDForTouch:(id)touch
{
  touchCopy = touch;
  if (touchCopy)
  {
    v4 = _MergedGlobals_32_0;
    if (!_MergedGlobals_32_0)
    {
      v5 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:5 valueOptions:5 capacity:0];
      v6 = _MergedGlobals_32_0;
      _MergedGlobals_32_0 = v5;

      v7 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:5 valueOptions:5 capacity:0];
      v8 = qword_1ED497220;
      qword_1ED497220 = v7;

      v4 = _MergedGlobals_32_0;
    }

    uUID = [v4 objectForKey:touchCopy];
    if (!uUID)
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      [_MergedGlobals_32_0 setObject:uUID forKey:touchCopy];
      [qword_1ED497220 setObject:touchCopy forKey:uUID];
    }
  }

  else
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
  }

  return uUID;
}

+ (id)touchForTouchUUID:(id)d
{
  v4 = qword_1ED497220;
  if (qword_1ED497220)
  {
    v4 = [qword_1ED497220 objectForKey:d];
    v3 = vars8;
  }

  return v4;
}

+ (id)touchesForTouchUUIDs:(id)ds
{
  v17 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if (qword_1ED497220)
  {
    array = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(dsCopy, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = dsCopy;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [qword_1ED497220 objectForKey:{*(*(&v12 + 1) + 8 * i), v12}];
          if (v10)
          {
            [array addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  return array;
}

+ (id)touchUUIDsForTouches:(id)touches
{
  v17 = *MEMORY[0x1E69E9840];
  touchesCopy = touches;
  if (_MergedGlobals_32_0)
  {
    array = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(touchesCopy, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = touchesCopy;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [_MergedGlobals_32_0 objectForKey:{*(*(&v12 + 1) + 8 * i), v12}];
          if (v10)
          {
            [array addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  return array;
}

+ (void)releaseUUIDForTouch:(id)touch
{
  touchCopy = touch;
  v4 = [self touchUUIDForTouch:?];
  if (v4)
  {
    [_MergedGlobals_32_0 removeObjectForKey:touchCopy];
    [qword_1ED497220 removeObjectForKey:v4];
  }
}

+ (id)touchStateForTouch:(id)touch
{
  touchCopy = touch;
  v5 = objc_alloc_init(objc_opt_class());
  [touchCopy timestamp];
  *(v5 + 1) = v6;
  *(v5 + 2) = [touchCopy phase];
  window = [touchCopy window];
  v8 = *(v5 + 3);
  *(v5 + 3) = window;

  [touchCopy _pathMajorRadius];
  *(v5 + 4) = v9;
  *(v5 + 5) = [touchCopy _pathIndex];
  v10 = [self touchUUIDForTouch:touchCopy];
  v11 = *(v5 + 6);
  *(v5 + 6) = v10;

  *(v5 + 7) = [touchCopy tapCount];
  [touchCopy locationInView:0];
  *(v5 + 10) = v12;
  *(v5 + 11) = v13;
  objc_storeWeak(v5 + 9, touchCopy);

  *(v5 + 8) = 1;

  return v5;
}

+ (id)touchStateForTouchUUID:(id)d withTimestamp:(double)timestamp phase:(int64_t)phase location:(CGPoint)location pathIndex:(unsigned __int8)index inView:(id)view
{
  indexCopy = index;
  y = location.y;
  x = location.x;
  dCopy = d;
  viewCopy = view;
  v16 = objc_alloc_init(objc_opt_class());
  v16[1] = timestamp;
  *(v16 + 2) = phase;
  window = [viewCopy window];
  v18 = *(v16 + 3);
  *(v16 + 3) = window;

  window2 = [viewCopy window];
  [window2 convertPoint:viewCopy fromView:{x, y}];
  v21 = v20;
  v23 = v22;

  *(v16 + 10) = v21;
  *(v16 + 11) = v23;

  v16[4] = 1.0;
  *(v16 + 5) = indexCopy;
  v24 = *(v16 + 6);
  *(v16 + 6) = dCopy;

  return v16;
}

- (CGPoint)locationInView:(id)view
{
  viewCopy = view;
  window = [(UIKBTouchState *)self window];
  [(UIKBTouchState *)self locationInWindow];
  [window convertPoint:viewCopy toView:?];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  touchUUID = [(UIKBTouchState *)self touchUUID];
  uUIDString = [touchUUID UUIDString];
  [v3 appendFormat:@"; UUID = %@", uUIDString];

  phase = [(UIKBTouchState *)self phase];
  if (phase <= 4 && ((0x1Bu >> phase) & 1) != 0)
  {
    [v3 appendFormat:@"; phase = %@", off_1E7117448[phase]];
  }

  return v3;
}

- (CGPoint)locationInWindow
{
  x = self->_locationInWindow.x;
  y = self->_locationInWindow.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UITouch)uiTouch
{
  WeakRetained = objc_loadWeakRetained(&self->_uiTouch);

  return WeakRetained;
}

@end