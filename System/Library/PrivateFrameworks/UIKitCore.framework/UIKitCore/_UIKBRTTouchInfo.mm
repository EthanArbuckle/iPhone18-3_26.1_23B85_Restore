@interface _UIKBRTTouchInfo
+ (id)createTouchInfoForTouch:(id)touch withIdentifier:(id)identifier canLogTouch:(BOOL)logTouch;
+ (id)touchDict;
+ (id)touchInfoForTouch:(id)touch withIdentifier:(id)identifier;
+ (void)setTouchInfo:(id)info forIdentifier:(id)identifier;
- (BOOL)willChangeTouchInfo:(id)info toState:(char)state;
- (CGPoint)currentTouchPoint;
- (CGPoint)originalTouchPoint;
- (_UIKBRTTouchInfo)initWithTouch:(id)touch withIdentifier:(id)identifier canLogTouch:(BOOL)logTouch;
- (id)setOfTouchesToIgnoreWhenSettingTouchInfo:(id)info toState:(char)state;
- (void)cleanup;
- (void)dealloc;
- (void)fireTimerNow;
- (void)invalidateTimer;
- (void)setTimerWithTimeInterval:(double)interval onQueue:(id)queue do:(id)do;
- (void)updateTouch:(id)touch;
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

+ (void)setTouchInfo:(id)info forIdentifier:(id)identifier
{
  infoCopy = info;
  identifierCopy = identifier;
  touchDict = [self touchDict];
  v8 = touchDict;
  if (infoCopy)
  {
    [touchDict setObject:infoCopy forKey:identifierCopy];
  }

  else
  {
    [touchDict removeObjectForKey:identifierCopy];
  }
}

+ (id)touchInfoForTouch:(id)touch withIdentifier:(id)identifier
{
  identifierCopy = identifier;
  touchCopy = touch;
  touchDict = [self touchDict];
  v9 = [touchDict objectForKey:identifierCopy];

  [v9 updateTouch:touchCopy];

  return v9;
}

+ (id)createTouchInfoForTouch:(id)touch withIdentifier:(id)identifier canLogTouch:(BOOL)logTouch
{
  logTouchCopy = logTouch;
  identifierCopy = identifier;
  touchCopy = touch;
  v10 = [[_UIKBRTTouchInfo alloc] initWithTouch:touchCopy withIdentifier:identifierCopy canLogTouch:logTouchCopy];

  [self setTouchInfo:v10 forIdentifier:identifierCopy];

  return v10;
}

- (_UIKBRTTouchInfo)initWithTouch:(id)touch withIdentifier:(id)identifier canLogTouch:(BOOL)logTouch
{
  touchCopy = touch;
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = _UIKBRTTouchInfo;
  v9 = [(_UIKBRTTouchInfo *)&v20 init];
  if (v9)
  {
    [touchCopy timestamp];
    v9->_originalTimestamp = v10;
    v9->_currentTimestamp = v10;
    view = [touchCopy view];
    [touchCopy locationInView:view];
    v9->_originalTouchPoint.x = v12;
    v9->_originalTouchPoint.y = v13;
    v9->_currentTouchPoint = v9->_originalTouchPoint;

    [touchCopy majorRadius];
    v9->_maximumRadius = v14;
    [touchCopy _zGradient];
    v16 = v15;
    v9->_originalZGradient = v16;
    v9->_currentZGradient = v16;
    v17 = dispatch_queue_create("_UIKBRTTouchInfoTimerQueue", 0);
    timerQueue = v9->_timerQueue;
    v9->_timerQueue = v17;

    objc_storeStrong(&v9->_touchIdentifier, identifier);
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

- (void)updateTouch:(id)touch
{
  touchCopy = touch;
  [touchCopy timestamp];
  self->_currentTimestamp = v5;
  view = [touchCopy view];
  [touchCopy locationInView:view];
  self->_currentTouchPoint.x = v7;
  self->_currentTouchPoint.y = v8;

  maximumRadius = self->_maximumRadius;
  [touchCopy majorRadius];
  if (maximumRadius >= v10)
  {
    v10 = maximumRadius;
  }

  self->_maximumRadius = v10;
  [touchCopy _zGradient];
  v12 = v11;

  self->_currentZGradient = v12;
}

- (void)setTimerWithTimeInterval:(double)interval onQueue:(id)queue do:(id)do
{
  queueCopy = queue;
  doCopy = do;
  timerQueue = self->_timerQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56___UIKBRTTouchInfo_setTimerWithTimeInterval_onQueue_do___block_invoke;
  v13[3] = &unk_1E7118860;
  intervalCopy = interval;
  v13[4] = self;
  v14 = queueCopy;
  v15 = doCopy;
  v11 = doCopy;
  v12 = queueCopy;
  dispatch_sync(timerQueue, v13);
}

- (void)fireTimerNow
{
  [(_UIKBRTTimerBlock *)self->_timer fireNow];
  if (self->_timer)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIKBRTTouchInfo.m" lineNumber:232 description:@"_timer is not nil!"];
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
  owner = [(_UIKBRTObject *)self owner];
  [owner _uikbrtRemove:self];

  v4 = objc_opt_class();
  touchIdentifier = self->_touchIdentifier;

  [v4 setTouchInfo:0 forIdentifier:touchIdentifier];
}

- (id)setOfTouchesToIgnoreWhenSettingTouchInfo:(id)info toState:(char)state
{
  v27[2] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v6 = objc_opt_new();
  currentTouchState = self->_currentTouchState;
  nextTouch = [(_UIKBRTTouchInfo *)self nextTouch];

  if (nextTouch == infoCopy)
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
          [infoCopy originalTimestamp];
          v19 = v18 - self->_originalTimestamp;
          if (v19 <= _UIGet_UIKBRT_SetDownTapInterval())
          {
            v27[0] = self;
            v27[1] = infoCopy;
            v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
            [v6 addObjectsFromArray:v20];
          }
        }

        goto LABEL_34;
      }

      [infoCopy originalTimestamp];
      v15 = v14 - self->_originalTimestamp;
      if (v15 > _UIGet_UIKBRT_SetDownTapInterval())
      {
        goto LABEL_34;
      }

      v10 = infoCopy;
      v11 = 4;
    }

    else
    {
      switch(currentTouchState)
      {
        case 0u:
          [infoCopy originalTimestamp];
          v22 = v21 - self->_originalTimestamp;
          if (v22 > _UIGet_UIKBRT_SetDownTapInterval())
          {
            goto LABEL_34;
          }

          previousTouch = [(_UIKBRTTouchInfo *)self previousTouch];
          nextTouch2 = [previousTouch setOfTouchesToIgnoreWhenSettingTouchInfo:self toState:1];

          if ([nextTouch2 count])
          {
            [v6 unionSet:nextTouch2];
          }

          else
          {
            self->_currentTouchState = 1;
            [infoCopy setCurrentTouchState:1];
          }

          goto LABEL_33;
        case 1u:
          v10 = infoCopy;
          v11 = 1;
          break;
        case 2u:
          v10 = infoCopy;
          v11 = 2;
          break;
        default:
          goto LABEL_34;
      }
    }

    [v10 setCurrentTouchState:v11];
    goto LABEL_34;
  }

  previousTouch2 = [(_UIKBRTTouchInfo *)self previousTouch];

  if (previousTouch2 != infoCopy)
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
        [infoCopy originalTimestamp];
        if (originalTimestamp - v13 <= _UIGet_UIKBRT_SetDownTapInterval())
        {
          [infoCopy setCurrentTouchState:1];
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
    nextTouch2 = [(_UIKBRTTouchInfo *)self nextTouch];
    v25 = [nextTouch2 setOfTouchesToIgnoreWhenSettingTouchInfo:self toState:6];
    [v6 unionSet:v25];

LABEL_33:
    goto LABEL_34;
  }

  v16 = self->_originalTimestamp;
  [infoCopy originalTimestamp];
  if (v16 - v17 > _UIGet_UIKBRT_SetDownTapInterval())
  {
    [v6 addObject:self];
  }

LABEL_34:

  return v6;
}

- (BOOL)willChangeTouchInfo:(id)info toState:(char)state
{
  stateCopy = state;
  infoCopy = info;
  if (stateCopy != 8)
  {
    goto LABEL_14;
  }

  nextTouch = [(_UIKBRTTouchInfo *)self nextTouch];

  if (nextTouch == infoCopy)
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
    previousTouch = [(_UIKBRTTouchInfo *)self previousTouch];

    if (previousTouch != infoCopy)
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
    [infoCopy originalTimestamp];
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