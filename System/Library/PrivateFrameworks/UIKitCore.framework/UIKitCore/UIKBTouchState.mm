@interface UIKBTouchState
+ (id)touchForTouchUUID:(id)a3;
+ (id)touchStateForTouch:(id)a3;
+ (id)touchStateForTouchUUID:(id)a3 withTimestamp:(double)a4 phase:(int64_t)a5 location:(CGPoint)a6 pathIndex:(unsigned __int8)a7 inView:(id)a8;
+ (id)touchUUIDForTouch:(id)a3;
+ (id)touchUUIDsForTouches:(id)a3;
+ (id)touchesForTouchUUIDs:(id)a3;
+ (void)releaseUUIDForTouch:(id)a3;
- (CGPoint)locationInView:(id)a3;
- (CGPoint)locationInWindow;
- (UITouch)uiTouch;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation UIKBTouchState

- (id)copyWithZone:(_NSZone *)a3
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

+ (id)touchUUIDForTouch:(id)a3
{
  v3 = a3;
  if (v3)
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

    v9 = [v4 objectForKey:v3];
    if (!v9)
    {
      v9 = [MEMORY[0x1E696AFB0] UUID];
      [_MergedGlobals_32_0 setObject:v9 forKey:v3];
      [qword_1ED497220 setObject:v3 forKey:v9];
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696AFB0] UUID];
  }

  return v9;
}

+ (id)touchForTouchUUID:(id)a3
{
  v4 = qword_1ED497220;
  if (qword_1ED497220)
  {
    v4 = [qword_1ED497220 objectForKey:a3];
    v3 = vars8;
  }

  return v4;
}

+ (id)touchesForTouchUUIDs:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (qword_1ED497220)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
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
            [v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = [MEMORY[0x1E695DEC8] array];
  }

  return v4;
}

+ (id)touchUUIDsForTouches:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (_MergedGlobals_32_0)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
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
            [v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = [MEMORY[0x1E695DEC8] array];
  }

  return v4;
}

+ (void)releaseUUIDForTouch:(id)a3
{
  v5 = a3;
  v4 = [a1 touchUUIDForTouch:?];
  if (v4)
  {
    [_MergedGlobals_32_0 removeObjectForKey:v5];
    [qword_1ED497220 removeObjectForKey:v4];
  }
}

+ (id)touchStateForTouch:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(objc_opt_class());
  [v4 timestamp];
  *(v5 + 1) = v6;
  *(v5 + 2) = [v4 phase];
  v7 = [v4 window];
  v8 = *(v5 + 3);
  *(v5 + 3) = v7;

  [v4 _pathMajorRadius];
  *(v5 + 4) = v9;
  *(v5 + 5) = [v4 _pathIndex];
  v10 = [a1 touchUUIDForTouch:v4];
  v11 = *(v5 + 6);
  *(v5 + 6) = v10;

  *(v5 + 7) = [v4 tapCount];
  [v4 locationInView:0];
  *(v5 + 10) = v12;
  *(v5 + 11) = v13;
  objc_storeWeak(v5 + 9, v4);

  *(v5 + 8) = 1;

  return v5;
}

+ (id)touchStateForTouchUUID:(id)a3 withTimestamp:(double)a4 phase:(int64_t)a5 location:(CGPoint)a6 pathIndex:(unsigned __int8)a7 inView:(id)a8
{
  v9 = a7;
  y = a6.y;
  x = a6.x;
  v14 = a3;
  v15 = a8;
  v16 = objc_alloc_init(objc_opt_class());
  v16[1] = a4;
  *(v16 + 2) = a5;
  v17 = [v15 window];
  v18 = *(v16 + 3);
  *(v16 + 3) = v17;

  v19 = [v15 window];
  [v19 convertPoint:v15 fromView:{x, y}];
  v21 = v20;
  v23 = v22;

  *(v16 + 10) = v21;
  *(v16 + 11) = v23;

  v16[4] = 1.0;
  *(v16 + 5) = v9;
  v24 = *(v16 + 6);
  *(v16 + 6) = v14;

  return v16;
}

- (CGPoint)locationInView:(id)a3
{
  v4 = a3;
  v5 = [(UIKBTouchState *)self window];
  [(UIKBTouchState *)self locationInWindow];
  [v5 convertPoint:v4 toView:?];
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
  v4 = [(UIKBTouchState *)self touchUUID];
  v5 = [v4 UUIDString];
  [v3 appendFormat:@"; UUID = %@", v5];

  v6 = [(UIKBTouchState *)self phase];
  if (v6 <= 4 && ((0x1Bu >> v6) & 1) != 0)
  {
    [v3 appendFormat:@"; phase = %@", off_1E7117448[v6]];
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