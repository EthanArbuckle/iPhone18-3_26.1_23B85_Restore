@interface _UIKBRTTouchInfo
+ (id)createTouchInfoForTouch:(id)a3 withIdentifier:(id)a4 canLogTouch:(BOOL)a5;
+ (id)touchDict;
+ (id)touchInfoForTouch:(id)a3 withIdentifier:(id)a4;
+ (void)setTouchInfo:(id)a3 forIdentifier:(id)a4;
- (BOOL)willChangeTouchInfo:(id)a3 toState:(char)a4;
- (CGPoint)currentTouchPoint;
- (CGPoint)originalTouchPoint;
- (_UIKBRTTouchInfo)initWithTouch:(id)a3 withIdentifier:(id)a4 canLogTouch:(BOOL)a5;
- (id)setOfTouchesToIgnoreWhenSettingTouchInfo:(id)a3 toState:(char)a4;
- (void)cleanup;
- (void)dealloc;
- (void)fireTimerNow;
- (void)invalidateTimer;
- (void)setTimerWithTimeInterval:(double)a3 onQueue:(id)a4 do:(id)a5;
- (void)updateTouch:(id)a3;
@end

@implementation _UIKBRTTouchInfo

+ (id)touchDict
{
  if (qword_1ED499C90 != -1)
  {
    dispatch_once(&qword_1ED499C90, &__block_literal_global_410);
  }

  v3 = _MergedGlobals_9_5;

  return v3;
}

+ (void)setTouchInfo:(id)a3 forIdentifier:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [a1 touchDict];
  v8 = v7;
  if (v9)
  {
    [v7 setObject:v9 forKey:v6];
  }

  else
  {
    [v7 removeObjectForKey:v6];
  }
}

+ (id)touchInfoForTouch:(id)a3 withIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 touchDict];
  v9 = [v8 objectForKey:v6];

  [v9 updateTouch:v7];

  return v9;
}

+ (id)createTouchInfoForTouch:(id)a3 withIdentifier:(id)a4 canLogTouch:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[_UIKBRTTouchInfo alloc] initWithTouch:v9 withIdentifier:v8 canLogTouch:v5];

  [a1 setTouchInfo:v10 forIdentifier:v8];

  return v10;
}

- (_UIKBRTTouchInfo)initWithTouch:(id)a3 withIdentifier:(id)a4 canLogTouch:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = _UIKBRTTouchInfo;
  v9 = [(_UIKBRTTouchInfo *)&v20 init];
  if (v9)
  {
    [v7 timestamp];
    v9->_originalTimestamp = v10;
    v9->_currentTimestamp = v10;
    v11 = [v7 view];
    [v7 locationInView:v11];
    v9->_originalTouchPoint.x = v12;
    v9->_originalTouchPoint.y = v13;
    v9->_currentTouchPoint = v9->_originalTouchPoint;

    [v7 majorRadius];
    v9->_maximumRadius = v14;
    [v7 _zGradient];
    v16 = v15;
    v9->_originalZGradient = v16;
    v9->_currentZGradient = v16;
    v17 = dispatch_queue_create("_UIKBRTTouchInfoTimerQueue", 0);
    timerQueue = v9->_timerQueue;
    v9->_timerQueue = v17;

    objc_storeStrong(&v9->_touchIdentifier, a4);
    v9->_currentTouchState = 0;
    v9->_preRuleTouchState = -1;
  }

  return v9;
}

- (void)dealloc
{
  [(_UIKBRTTouchInfo *)self invalidateTimer];
  v3.receiver = self;
  v3.super_class = _UIKBRTTouchInfo;
  [(_UIKBRTTouchInfo *)&v3 dealloc];
}

- (void)updateTouch:(id)a3
{
  v4 = a3;
  [v4 timestamp];
  self->_currentTimestamp = v5;
  v6 = [v4 view];
  [v4 locationInView:v6];
  self->_currentTouchPoint.x = v7;
  self->_currentTouchPoint.y = v8;

  maximumRadius = self->_maximumRadius;
  [v4 majorRadius];
  if (maximumRadius >= v10)
  {
    v10 = maximumRadius;
  }

  self->_maximumRadius = v10;
  [v4 _zGradient];
  v12 = v11;

  self->_currentZGradient = v12;
}

- (void)setTimerWithTimeInterval:(double)a3 onQueue:(id)a4 do:(id)a5
{
  v8 = a4;
  v9 = a5;
  timerQueue = self->_timerQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56___UIKBRTTouchInfo_setTimerWithTimeInterval_onQueue_do___block_invoke;
  v13[3] = &unk_1E7118860;
  v16 = a3;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_sync(timerQueue, v13);
}

- (void)fireTimerNow
{
  [(_UIKBRTTimerBlock *)self->_timer fireNow];
  if (self->_timer)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"_UIKBRTTouchInfo.m" lineNumber:232 description:@"_timer is not nil!"];
  }
}

- (void)invalidateTimer
{
  timerQueue = self->_timerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35___UIKBRTTouchInfo_invalidateTimer__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_sync(timerQueue, block);
}

- (void)cleanup
{
  v3 = [(_UIKBRTObject *)self owner];
  [v3 _uikbrtRemove:self];

  v4 = objc_opt_class();
  touchIdentifier = self->_touchIdentifier;

  [v4 setTouchInfo:0 forIdentifier:touchIdentifier];
}

- (id)setOfTouchesToIgnoreWhenSettingTouchInfo:(id)a3 toState:(char)a4
{
  v27[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_opt_new();
  currentTouchState = self->_currentTouchState;
  v8 = [(_UIKBRTTouchInfo *)self nextTouch];

  if (v8 == v5)
  {
    while (currentTouchState == 3)
    {
      currentTouchState = self->_preRuleTouchState;
    }

    if (currentTouchState > 3u)
    {
      if (currentTouchState - 4 >= 2)
      {
        if (currentTouchState == 6)
        {
          [v5 originalTimestamp];
          v19 = v18 - self->_originalTimestamp;
          if (v19 <= _UIGet_UIKBRT_SetDownTapInterval())
          {
            v27[0] = self;
            v27[1] = v5;
            v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
            [v6 addObjectsFromArray:v20];
          }
        }

        goto LABEL_34;
      }

      [v5 originalTimestamp];
      v15 = v14 - self->_originalTimestamp;
      if (v15 > _UIGet_UIKBRT_SetDownTapInterval())
      {
        goto LABEL_34;
      }

      v10 = v5;
      v11 = 4;
    }

    else
    {
      switch(currentTouchState)
      {
        case 0u:
          [v5 originalTimestamp];
          v22 = v21 - self->_originalTimestamp;
          if (v22 > _UIGet_UIKBRT_SetDownTapInterval())
          {
            goto LABEL_34;
          }

          v23 = [(_UIKBRTTouchInfo *)self previousTouch];
          v24 = [v23 setOfTouchesToIgnoreWhenSettingTouchInfo:self toState:1];

          if ([v24 count])
          {
            [v6 unionSet:v24];
          }

          else
          {
            self->_currentTouchState = 1;
            [v5 setCurrentTouchState:1];
          }

          goto LABEL_33;
        case 1u:
          v10 = v5;
          v11 = 1;
          break;
        case 2u:
          v10 = v5;
          v11 = 2;
          break;
        default:
          goto LABEL_34;
      }
    }

    [v10 setCurrentTouchState:v11];
    goto LABEL_34;
  }

  v9 = [(_UIKBRTTouchInfo *)self previousTouch];

  if (v9 != v5)
  {
    goto LABEL_34;
  }

  while (currentTouchState == 3)
  {
    currentTouchState = self->_preRuleTouchState;
  }

  if (currentTouchState <= 3u)
  {
    if (currentTouchState - 1 >= 2)
    {
      if (!currentTouchState)
      {
        originalTimestamp = self->_originalTimestamp;
        [v5 originalTimestamp];
        if (originalTimestamp - v13 <= _UIGet_UIKBRT_SetDownTapInterval())
        {
          [v5 setCurrentTouchState:1];
          self->_currentTouchState = 1;
        }
      }

      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (currentTouchState - 4 >= 2)
  {
    if (currentTouchState != 6)
    {
      goto LABEL_34;
    }

LABEL_32:
    [v6 addObject:self];
    v24 = [(_UIKBRTTouchInfo *)self nextTouch];
    v25 = [v24 setOfTouchesToIgnoreWhenSettingTouchInfo:self toState:6];
    [v6 unionSet:v25];

LABEL_33:
    goto LABEL_34;
  }

  v16 = self->_originalTimestamp;
  [v5 originalTimestamp];
  if (v16 - v17 > _UIGet_UIKBRT_SetDownTapInterval())
  {
    [v6 addObject:self];
  }

LABEL_34:

  return v6;
}

- (BOOL)willChangeTouchInfo:(id)a3 toState:(char)a4
{
  v4 = a4;
  v6 = a3;
  if (v4 != 8)
  {
    goto LABEL_14;
  }

  v7 = [(_UIKBRTTouchInfo *)self nextTouch];

  if (v7 == v6)
  {
    v12 = &OBJC_IVAR____UIKBRTTouchInfo__currentTouchState;
    do
    {
      v10 = *v12;
      v11 = *(&self->super.super.isa + v10);
      v12 = &OBJC_IVAR____UIKBRTTouchInfo__preRuleTouchState;
    }

    while (v11 == 3);
  }

  else
  {
    v8 = [(_UIKBRTTouchInfo *)self previousTouch];

    if (v8 != v6)
    {
LABEL_14:
      v13 = 0;
      goto LABEL_15;
    }

    v9 = &OBJC_IVAR____UIKBRTTouchInfo__currentTouchState;
    do
    {
      v10 = *v9;
      v11 = *(&self->super.super.isa + v10);
      v9 = &OBJC_IVAR____UIKBRTTouchInfo__preRuleTouchState;
    }

    while (v11 == 3);
  }

  if (v11 == 6)
  {
    [v6 originalTimestamp];
    v15 = v14 - self->_originalTimestamp;
    if (v15 > _UIGet_UIKBRT_SetDownTapInterval())
    {
      goto LABEL_14;
    }

LABEL_16:
    v13 = 1;
    *(&self->super.super.isa + v10) = 1;
    goto LABEL_15;
  }

  if (v11 == 2)
  {
    goto LABEL_16;
  }

  if (v11 != 1)
  {
    goto LABEL_14;
  }

  *(&self->super.super.isa + v10) = 0;
  v13 = 1;
LABEL_15:

  return v13;
}

- (CGPoint)originalTouchPoint
{
  x = self->_originalTouchPoint.x;
  y = self->_originalTouchPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)currentTouchPoint
{
  x = self->_currentTouchPoint.x;
  y = self->_currentTouchPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end