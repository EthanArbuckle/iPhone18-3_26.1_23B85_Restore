@interface _UIKBRTTouchDrifting
+ (BOOL)isEnabled;
- ($01BB1521EC52D44A8E7628F5261DCEC8)touchError;
- (CGPoint)_offsetForPoint:(CGPoint)a3 fromPoint:(CGPoint)a4;
- (CGPoint)_pinOffset:(CGPoint)a3;
- (CGPoint)_pointFromPoint:(CGPoint)a3 plusOffset:(CGPoint)a4;
- (CGPoint)leftHandDriftOffset;
- (CGPoint)rightHandDriftOffset;
- (UIView)feedbackParentView;
- (_UIKBRTTouchDrifting)init;
- (_UIKBRTTouchDrifting)initWithParentView:(id)a3;
- (id)_touchDictWithFingerIds:(id)a3;
- (void)_resetFeedback;
- (void)_updateDriftForFingers:(id)a3 leftHand:(BOOL)a4 newestTouch:(id)a5;
- (void)_updateDriftView;
- (void)_updateDriftViewTimer:(id)a3;
- (void)_updateDriftWithTouchInfo:(id)a3;
- (void)_updateHistory;
- (void)addTouchLocation:(CGPoint)a3 withRadius:(double)a4 withTouchTime:(double)a5 withIdentifier:(id)a6;
- (void)dealloc;
- (void)ignoreTouchWithIdentifier:(id)a3 withTouchTime:(double)a4;
- (void)moveTouchWithIdentifier:(id)a3 toLocation:(CGPoint)a4 withRadius:(double)a5 atTouchTime:(double)a6;
- (void)removeTouchWithIdentifier:(id)a3 touchCancelled:(BOOL)a4;
- (void)reset;
- (void)updateTouchWithIdentifier:(id)a3 withTouchTime:(double)a4 resultingError:(CGPoint)a5 rowOffsetFromHomeRow:(int64_t)a6;
- (void)updateWithFCenter:(CGPoint)a3 jCenter:(CGPoint)a4 keySize:(CGSize)a5 rowOffsets:(id)a6 homeRowOffsetIndex:(int)a7;
@end

@implementation _UIKBRTTouchDrifting

+ (BOOL)isEnabled
{
  result = _UIInternalPreferenceUsesDefault(&_UIInternalPreference__UIKBRT_DriftSupport, @"_UIKBRT_DriftSupport", _UIInternalPreferenceUpdateBool);
  if (byte_1EA95E554)
  {
    return 1;
  }

  return result;
}

- (_UIKBRTTouchDrifting)init
{
  v48.receiver = self;
  v48.super_class = _UIKBRTTouchDrifting;
  v2 = [(_UIKBRTTouchDrifting *)&v48 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    touches = v2->_touches;
    v2->_touches = v3;

    v5 = [[_UIKBRTTouchHistory alloc] initWithIsLeftHand:1];
    fHistory = v2->_fHistory;
    v2->_fHistory = v5;

    v7 = [[_UIKBRTTouchHistory alloc] initWithIsLeftHand:0];
    jHistory = v2->_jHistory;
    v2->_jHistory = v7;

    v9 = objc_alloc_init(_UIKBRTTouchHistory);
    otherHistory = v2->_otherHistory;
    v2->_otherHistory = v9;

    v11 = [_UIKBRTDecayingObject alloc];
    v12 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference__UIKBRT_DriftReturnTime, @"_UIKBRT_DriftReturnTime", _UIInternalPreferenceUpdateDouble);
    v13 = *&qword_1EA95E568;
    if (v12)
    {
      v13 = 2.0;
    }

    v14 = [(_UIKBRTDecayingObject *)v11 initWithTimeoutDuration:v13];
    enableLatchObj = v2->_enableLatchObj;
    v2->_enableLatchObj = v14;

    v16 = [_UIKBRTDecayingOffset alloc];
    v17 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference__UIKBRT_DriftReturnTime, @"_UIKBRT_DriftReturnTime", _UIInternalPreferenceUpdateDouble);
    v18 = *&qword_1EA95E568;
    if (v17)
    {
      v18 = 2.0;
    }

    v19 = [(_UIKBRTDecayingOffset *)v16 initWithTimeoutDuration:1 limitMovement:v18];
    leftHandDriftOffsetObj = v2->_leftHandDriftOffsetObj;
    v2->_leftHandDriftOffsetObj = v19;

    v21 = [_UIKBRTDecayingOffset alloc];
    v22 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference__UIKBRT_DriftReturnTime, @"_UIKBRT_DriftReturnTime", _UIInternalPreferenceUpdateDouble);
    v23 = *&qword_1EA95E568;
    if (v22)
    {
      v23 = 2.0;
    }

    v24 = [(_UIKBRTDecayingOffset *)v21 initWithTimeoutDuration:0 limitMovement:v23];
    leftHandFixedOffsetObj = v2->_leftHandFixedOffsetObj;
    v2->_leftHandFixedOffsetObj = v24;

    v26 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    leftDriftLockTouchIDs = v2->_leftDriftLockTouchIDs;
    v2->_leftDriftLockTouchIDs = v26;

    objc_initWeak(&location, v2);
    v28 = v2->_leftHandFixedOffsetObj;
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __28___UIKBRTTouchDrifting_init__block_invoke;
    v45[3] = &unk_1E70F5A28;
    objc_copyWeak(&v46, &location);
    [(_UIKBRTDecayingObject *)v28 onResetDo:v45];
    v29 = [_UIKBRTDecayingOffset alloc];
    v30 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference__UIKBRT_DriftReturnTime, @"_UIKBRT_DriftReturnTime", _UIInternalPreferenceUpdateDouble);
    v31 = *&qword_1EA95E568;
    if (v30)
    {
      v31 = 2.0;
    }

    v32 = [(_UIKBRTDecayingOffset *)v29 initWithTimeoutDuration:1 limitMovement:v31];
    rightHandDriftOffsetObj = v2->_rightHandDriftOffsetObj;
    v2->_rightHandDriftOffsetObj = v32;

    v34 = [_UIKBRTDecayingOffset alloc];
    v35 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference__UIKBRT_DriftReturnTime, @"_UIKBRT_DriftReturnTime", _UIInternalPreferenceUpdateDouble);
    v36 = *&qword_1EA95E568;
    if (v35)
    {
      v36 = 2.0;
    }

    v37 = [(_UIKBRTDecayingOffset *)v34 initWithTimeoutDuration:0 limitMovement:v36];
    rightHandFixedOffsetObj = v2->_rightHandFixedOffsetObj;
    v2->_rightHandFixedOffsetObj = v37;

    v39 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    rightDriftLockTouchIDs = v2->_rightDriftLockTouchIDs;
    v2->_rightDriftLockTouchIDs = v39;

    v41 = v2->_rightHandFixedOffsetObj;
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __28___UIKBRTTouchDrifting_init__block_invoke_2;
    v43[3] = &unk_1E70F5A28;
    objc_copyWeak(&v44, &location);
    [(_UIKBRTDecayingObject *)v41 onResetDo:v43];
    objc_destroyWeak(&v44);
    objc_destroyWeak(&v46);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (_UIKBRTTouchDrifting)initWithParentView:(id)a3
{
  v4 = a3;
  v5 = [(_UIKBRTTouchDrifting *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_feedbackParentView, v4);
  }

  return v6;
}

- (void)dealloc
{
  [(_UIKBRTTouchDrifting *)self _resetFeedback];
  v3.receiver = self;
  v3.super_class = _UIKBRTTouchDrifting;
  [(_UIKBRTTouchDrifting *)&v3 dealloc];
}

- (void)_resetFeedback
{
  [(NSTimer *)self->_feedbackTimer invalidate];
  feedbackTimer = self->_feedbackTimer;
  self->_feedbackTimer = 0;

  [(UIView *)self->_leftDriftFeedbackView removeFromSuperview];
  leftDriftFeedbackView = self->_leftDriftFeedbackView;
  self->_leftDriftFeedbackView = 0;

  [(UIView *)self->_rightDriftFeedbackView removeFromSuperview];
  rightDriftFeedbackView = self->_rightDriftFeedbackView;
  self->_rightDriftFeedbackView = 0;

  [(UIView *)self->_touchHistoryFeedbackView removeFromSuperview];
  touchHistoryFeedbackView = self->_touchHistoryFeedbackView;
  self->_touchHistoryFeedbackView = 0;

  touchHistoryViewMap = self->_touchHistoryViewMap;
  self->_touchHistoryViewMap = 0;
}

- (void)reset
{
  v14.receiver = self;
  v14.super_class = _UIKBRTTouchDrifting;
  [(_UIKBRTKeyboardTouchObserver *)&v14 reset];
  [(_UIKBRTTouchDrifting *)self _resetFeedback];
  indexSearchOrder = self->_indexSearchOrder;
  self->_indexSearchOrder = 0;

  self->_supportsDrifting = 0;
  [(_UIKBRTTouchHistory *)self->_fHistory reset];
  [(_UIKBRTTouchHistory *)self->_jHistory reset];
  [(_UIKBRTDecayingObject *)self->_enableLatchObj reset];
  v4 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference__UIKBRT_DriftReturnTime, @"_UIKBRT_DriftReturnTime", _UIInternalPreferenceUpdateDouble);
  v5 = *&qword_1EA95E568;
  if (v4)
  {
    v5 = 2.0;
  }

  [(_UIKBRTDecayingObject *)self->_enableLatchObj setTimeoutDuration:v5];
  [(_UIKBRTDecayingOffset *)self->_leftHandDriftOffsetObj reset];
  v6 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference__UIKBRT_DriftReturnTime, @"_UIKBRT_DriftReturnTime", _UIInternalPreferenceUpdateDouble);
  v7 = *&qword_1EA95E568;
  if (v6)
  {
    v7 = 2.0;
  }

  [(_UIKBRTDecayingObject *)self->_leftHandDriftOffsetObj setTimeoutDuration:v7];
  [(_UIKBRTDecayingOffset *)self->_leftHandFixedOffsetObj reset];
  v8 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference__UIKBRT_DriftReturnTime, @"_UIKBRT_DriftReturnTime", _UIInternalPreferenceUpdateDouble);
  v9 = *&qword_1EA95E568;
  if (v8)
  {
    v9 = 2.0;
  }

  [(_UIKBRTDecayingObject *)self->_leftHandFixedOffsetObj setTimeoutDuration:v9];
  [(_UIKBRTDecayingOffset *)self->_rightHandDriftOffsetObj reset];
  v10 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference__UIKBRT_DriftReturnTime, @"_UIKBRT_DriftReturnTime", _UIInternalPreferenceUpdateDouble);
  v11 = *&qword_1EA95E568;
  if (v10)
  {
    v11 = 2.0;
  }

  [(_UIKBRTDecayingObject *)self->_rightHandDriftOffsetObj setTimeoutDuration:v11];
  [(_UIKBRTDecayingOffset *)self->_rightHandFixedOffsetObj reset];
  v12 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference__UIKBRT_DriftReturnTime, @"_UIKBRT_DriftReturnTime", _UIInternalPreferenceUpdateDouble);
  v13 = *&qword_1EA95E568;
  if (v12)
  {
    v13 = 2.0;
  }

  [(_UIKBRTDecayingObject *)self->_rightHandFixedOffsetObj setTimeoutDuration:v13];
  [(NSMutableSet *)self->_leftDriftLockTouchIDs removeAllObjects];
  [(NSMutableSet *)self->_rightDriftLockTouchIDs removeAllObjects];
  [(NSMutableDictionary *)self->_touches removeAllObjects];
}

- (void)updateWithFCenter:(CGPoint)a3 jCenter:(CGPoint)a4 keySize:(CGSize)a5 rowOffsets:(id)a6 homeRowOffsetIndex:(int)a7
{
  v7 = *&a7;
  height = a5.height;
  width = a5.width;
  y = a4.y;
  x = a4.x;
  v12 = a3.y;
  v13 = a3.x;
  v15 = a6;
  v28.receiver = self;
  v28.super_class = _UIKBRTTouchDrifting;
  [(_UIKBRTKeyboardTouchObserver *)&v28 updateWithFCenter:v15 jCenter:v7 keySize:v13 rowOffsets:v12 homeRowOffsetIndex:x, y, width, height];
  [(_UIKBRTTouchDrifting *)self _resetFeedback];
  indexSearchOrder = self->_indexSearchOrder;
  self->_indexSearchOrder = 0;

  if (v7 < 1)
  {
    self->_supportsDrifting = 0;
  }

  else
  {
    v17 = [v15 count];
    self->_supportsDrifting = v17 - 1 > v7;
    if (v17 - 1 > v7)
    {
      v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v19 = (v7 + 1);
      do
      {
        v20 = [MEMORY[0x1E696AD98] numberWithInt:v19];
        [v18 addObject:v20];

        if (v19 <= v7)
        {
          break;
        }

        v19 = (v19 - 1);
      }

      while (v19);
      v21 = (v7 + 2);
      v22 = [v15 count];
      v23 = v7 + 3;
      if (v22 < v7 + 3)
      {
        v23 = v22;
      }

      if (v21 <= v23)
      {
        v24 = ~v7 + v23;
        do
        {
          v25 = [MEMORY[0x1E696AD98] numberWithInt:v21];
          [v18 addObject:v25];

          v21 = (v21 + 1);
          --v24;
        }

        while (v24);
      }

      v26 = [v18 copy];
      v27 = self->_indexSearchOrder;
      self->_indexSearchOrder = v26;

      self->_touchError.left = -(width * 0.75);
      self->_touchError.right = width * 0.75;
      self->_touchError.up = height / -3.0;
      self->_touchError.down = height * 0.5;
    }
  }

  [(_UIKBRTTouchDrifting *)self _updateDriftWithTouchInfo:0];
}

- (CGPoint)leftHandDriftOffset
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  [(_UIKBRTDecayingOffset *)self->_leftHandFixedOffsetObj offset];
  v5 = v2 + v4;
  v7 = v3 + v6;
  result.y = v7;
  result.x = v5;
  return result;
}

- (CGPoint)rightHandDriftOffset
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  [(_UIKBRTDecayingOffset *)self->_rightHandFixedOffsetObj offset];
  v5 = v2 + v4;
  v7 = v3 + v6;
  result.y = v7;
  result.x = v5;
  return result;
}

- (void)addTouchLocation:(CGPoint)a3 withRadius:(double)a4 withTouchTime:(double)a5 withIdentifier:(id)a6
{
  y = a3.y;
  x = a3.x;
  v20 = a6;
  v11 = [(NSMutableDictionary *)self->_touches objectForKey:?];

  if (v11)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"_UIKBRTTouchDrifting.m" lineNumber:263 description:@"Touch already in dictionary!"];
  }

  [(_UIKBRTTouchDrifting *)self _updateHistory];
  v12 = objc_alloc_init(_UIKBRTTouchHistoryInfo);
  [(_UIKBRTTouchHistoryInfo *)v12 setTouchIdentifier:v20];
  [(_UIKBRTTouchHistoryInfo *)v12 setTouchTime:a5];
  [(_UIKBRTTouchHistoryInfo *)v12 setActualLocation:x, y];
  [(_UIKBRTTouchHistoryInfo *)v12 setIgnoreTouch:1];
  v13 = [(_UIKBRTTouchDriftingDelegate *)self->_delegate _uikbrtTouchDrifting:self fingerIDFortouchIdentifier:v20];
  if (v13 <= 0xC)
  {
    if (((1 << v13) & 0xFA) != 0)
    {
      [(_UIKBRTTouchHistoryInfo *)v12 setIgnoreForDrift:0];
      v14 = v12;
      v15 = 1;
      goto LABEL_8;
    }

    if (((1 << v13) & 0x1F04) != 0)
    {
      [(_UIKBRTTouchHistoryInfo *)v12 setIgnoreForDrift:0];
      v14 = v12;
      v15 = 0;
LABEL_8:
      [(_UIKBRTTouchHistoryInfo *)v14 setIsLeftHand:v15];
      goto LABEL_9;
    }

    [(_UIKBRTTouchHistoryInfo *)v12 setIgnoreForDrift:1];
  }

LABEL_9:
  [(NSMutableDictionary *)self->_touches setObject:v12 forKey:v20];
  if ([(_UIKBRTTouchHistoryInfo *)v12 ignoreForDrift])
  {
    v16 = &OBJC_IVAR____UIKBRTTouchDrifting__otherHistory;
  }

  else
  {
    v17 = [(_UIKBRTTouchHistoryInfo *)v12 isLeftHand];
    v18 = 2;
    if (v17)
    {
      v18 = 1;
    }

    v16 = &OBJC_IVAR____UIKBRTTouchDrifting__touches[v18];
  }

  [*(&self->super.super.isa + *v16) addInfo:v12];
  [(_UIKBRTTouchDrifting *)self _updateDriftWithTouchInfo:v12];
}

- (void)updateTouchWithIdentifier:(id)a3 withTouchTime:(double)a4 resultingError:(CGPoint)a5 rowOffsetFromHomeRow:(int64_t)a6
{
  y = a5.y;
  x = a5.x;
  v17 = a3;
  v11 = [(NSMutableDictionary *)self->_touches objectForKey:?];
  if (v11)
  {
    [(_UIKBRTTouchDrifting *)self _updateHistory];
    [v11 setErrorVector:{x, y}];
    [v11 setTouchTime:a4];
    [v11 setIgnoreTouch:(a6 - 2) < 0xFFFFFFFFFFFFFFFDLL];
    v12 = [(_UIKBRTTouchDriftingDelegate *)self->_delegate _uikbrtTouchDrifting:self fingerIDFortouchIdentifier:v17];
    if (v12 <= 0xC)
    {
      if (((1 << v12) & 0xFA) != 0)
      {
        [v11 setIgnoreForDrift:0];
        v13 = v11;
        v14 = 1;
      }

      else
      {
        if (((1 << v12) & 0x1F04) == 0)
        {
          [v11 setIgnoreForDrift:1];
          goto LABEL_8;
        }

        [v11 setIgnoreForDrift:0];
        v13 = v11;
        v14 = 0;
      }

      [v13 setIsLeftHand:v14];
    }

LABEL_8:
    if ([v11 ignoreForDrift] && (p_jHistory = &self->_otherHistory, !-[_UIKBRTTouchHistory containsInfo:](self->_otherHistory, "containsInfo:", v11)))
    {
      p_fHistory = &self->_fHistory;
      if ([(_UIKBRTTouchHistory *)self->_fHistory containsInfo:v11])
      {
        goto LABEL_20;
      }
    }

    else
    {
      if ([(_UIKBRTTouchHistory *)self->_otherHistory containsInfo:v11])
      {
        [(_UIKBRTTouchHistory *)self->_otherHistory removeInfo:v11];
      }

      if (![v11 isLeftHand] || (p_jHistory = &self->_fHistory, -[_UIKBRTTouchHistory containsInfo:](self->_fHistory, "containsInfo:", v11)))
      {
        if ([v11 isLeftHand])
        {
          goto LABEL_22;
        }

        p_jHistory = &self->_jHistory;
        if ([(_UIKBRTTouchHistory *)self->_jHistory containsInfo:v11])
        {
          goto LABEL_22;
        }

        p_fHistory = &self->_fHistory;
        if (![(_UIKBRTTouchHistory *)self->_fHistory containsInfo:v11])
        {
LABEL_21:
          [(_UIKBRTTouchHistory *)*p_jHistory addInfo:v11];
LABEL_22:
          [(_UIKBRTTouchDrifting *)self _updateDriftWithTouchInfo:v11];
          goto LABEL_23;
        }

LABEL_20:
        [(_UIKBRTTouchHistory *)*p_fHistory removeInfo:v11];
        goto LABEL_21;
      }
    }

    p_fHistory = &self->_jHistory;
    if (![(_UIKBRTTouchHistory *)self->_jHistory containsInfo:v11])
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_23:
}

- (void)ignoreTouchWithIdentifier:(id)a3 withTouchTime:(double)a4
{
  v16 = a3;
  v6 = [(NSMutableDictionary *)self->_touches objectForKey:?];
  if (v6)
  {
    [(_UIKBRTTouchDrifting *)self _updateHistory];
    v7 = [v6 ignoreTouch];
    [v6 setIgnoreTouch:1];
    [v6 setTouchTime:a4];
    if ((v7 & 1) == 0)
    {
      if (([v6 ignoreForDrift] & 1) != 0 || (objc_msgSend(v6, "ignoreTouch")) && (p_jHistory = &self->_otherHistory, !-[_UIKBRTTouchHistory containsInfo:](self->_otherHistory, "containsInfo:", v6)))
      {
        v9 = &OBJC_IVAR____UIKBRTTouchDrifting__leftDriftLockTouchIDs;
        p_fHistory = &self->_fHistory;
        if (![(_UIKBRTTouchHistory *)self->_fHistory containsInfo:v6])
        {
          goto LABEL_16;
        }
      }

      else
      {
        if ([(_UIKBRTTouchHistory *)self->_otherHistory containsInfo:v6])
        {
          [(_UIKBRTTouchHistory *)self->_otherHistory removeInfo:v6];
        }

        if ([v6 isLeftHand])
        {
          p_jHistory = &self->_fHistory;
          if (![(_UIKBRTTouchHistory *)self->_fHistory containsInfo:v6])
          {
LABEL_16:
            v9 = &OBJC_IVAR____UIKBRTTouchDrifting__rightDriftLockTouchIDs;
            p_fHistory = &self->_jHistory;
            if ([(_UIKBRTTouchHistory *)self->_jHistory containsInfo:v6])
            {
              v11 = &OBJC_IVAR____UIKBRTTouchDrifting__rightHandDriftOffsetObj;
              v12 = &OBJC_IVAR____UIKBRTTouchDrifting__rightHandFixedOffsetObj;
              goto LABEL_18;
            }

            goto LABEL_21;
          }
        }

        if ([v6 isLeftHand])
        {
          goto LABEL_22;
        }

        p_jHistory = &self->_jHistory;
        if ([(_UIKBRTTouchHistory *)self->_jHistory containsInfo:v6])
        {
          goto LABEL_22;
        }

        v9 = &OBJC_IVAR____UIKBRTTouchDrifting__leftDriftLockTouchIDs;
        p_fHistory = &self->_fHistory;
        if (![(_UIKBRTTouchHistory *)self->_fHistory containsInfo:v6])
        {
LABEL_21:
          [(_UIKBRTTouchHistory *)*p_jHistory addInfo:v6];
LABEL_22:
          v15 = 0;
          v14 = 0;
          v13 = 0;
          goto LABEL_23;
        }
      }

      v11 = &OBJC_IVAR____UIKBRTTouchDrifting__leftHandDriftOffsetObj;
      v12 = &OBJC_IVAR____UIKBRTTouchDrifting__leftHandFixedOffsetObj;
LABEL_18:
      v13 = *p_fHistory;
      v14 = *(&self->super.super.isa + *v12);
      v15 = *(&self->super.super.isa + *v11);
      [(_UIKBRTTouchHistory *)*p_fHistory removeInfo:v6];
      [*(&self->super.super.isa + *v9) removeObject:v16];
      [(_UIKBRTTouchHistory *)*p_jHistory addInfo:v6];
      if (v13 && ![(_UIKBRTTouchHistory *)v13 hasHistory])
      {
        [v14 reset];
        [v15 reset];
LABEL_24:
        [(_UIKBRTTouchDrifting *)self _updateDriftWithTouchInfo:v6];

        goto LABEL_25;
      }

LABEL_23:
      [(_UIKBRTTouchHistory *)v13 lastTime];
      [v14 resetDecayTo:?];
      [(_UIKBRTTouchHistory *)v13 lastTime];
      [v15 resetDecayTo:?];
      goto LABEL_24;
    }
  }

LABEL_25:
}

- (void)moveTouchWithIdentifier:(id)a3 toLocation:(CGPoint)a4 withRadius:(double)a5 atTouchTime:(double)a6
{
  y = a4.y;
  x = a4.x;
  v17 = a3;
  v10 = [(NSMutableDictionary *)self->_touches objectForKey:?];
  if (v10)
  {
    [v10 setTouchTime:CFAbsoluteTimeGetCurrent() + *&sSystemUptimeFromAbsoluteTimeDiff];
    [v10 setActualLocation:{x, y}];
    [v10 setTouchTime:a6];
    v11 = [(_UIKBRTTouchDriftingDelegate *)self->_delegate _uikbrtTouchDrifting:self fingerIDFortouchIdentifier:v17];
    if (v11 <= 0xC)
    {
      if (((1 << v11) & 0xFA) != 0)
      {
        [v10 setIgnoreForDrift:0];
        v12 = v10;
        v13 = 1;
      }

      else
      {
        if (((1 << v11) & 0x1F04) == 0)
        {
          [v10 setIgnoreForDrift:1];
          goto LABEL_8;
        }

        [v10 setIgnoreForDrift:0];
        v12 = v10;
        v13 = 0;
      }

      [v12 setIsLeftHand:v13];
    }

LABEL_8:
    if ([v10 ignoreForDrift] && (p_jHistory = &self->_otherHistory, !-[_UIKBRTTouchHistory containsInfo:](self->_otherHistory, "containsInfo:", v10)))
    {
      v15 = &OBJC_IVAR____UIKBRTTouchDrifting__leftDriftLockTouchIDs;
      p_fHistory = &self->_fHistory;
      if ([(_UIKBRTTouchHistory *)self->_fHistory containsInfo:v10])
      {
        goto LABEL_20;
      }
    }

    else
    {
      if ([(_UIKBRTTouchHistory *)self->_otherHistory containsInfo:v10])
      {
        [(_UIKBRTTouchHistory *)self->_otherHistory removeInfo:v10];
      }

      if (![v10 isLeftHand] || (p_jHistory = &self->_fHistory, -[_UIKBRTTouchHistory containsInfo:](self->_fHistory, "containsInfo:", v10)))
      {
        if ([v10 isLeftHand])
        {
          goto LABEL_22;
        }

        p_jHistory = &self->_jHistory;
        if ([(_UIKBRTTouchHistory *)self->_jHistory containsInfo:v10])
        {
          goto LABEL_22;
        }

        v15 = &OBJC_IVAR____UIKBRTTouchDrifting__leftDriftLockTouchIDs;
        p_fHistory = &self->_fHistory;
        if (![(_UIKBRTTouchHistory *)self->_fHistory containsInfo:v10])
        {
LABEL_21:
          [(_UIKBRTTouchHistory *)*p_jHistory addInfo:v10];
LABEL_22:
          [(_UIKBRTTouchDrifting *)self _updateDriftWithTouchInfo:v10];
          goto LABEL_23;
        }

LABEL_20:
        [(_UIKBRTTouchHistory *)*p_fHistory removeInfo:v10];
        [*(&self->super.super.isa + *v15) removeObject:v17];
        goto LABEL_21;
      }
    }

    v15 = &OBJC_IVAR____UIKBRTTouchDrifting__rightDriftLockTouchIDs;
    p_fHistory = &self->_jHistory;
    if (![(_UIKBRTTouchHistory *)self->_jHistory containsInfo:v10])
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_23:
}

- (void)removeTouchWithIdentifier:(id)a3 touchCancelled:(BOOL)a4
{
  v4 = a4;
  v24 = a3;
  v6 = [(NSMutableDictionary *)self->_touches objectForKey:?];
  v7 = v6;
  if (v6)
  {
    [v6 setIsActive:0];
    p_fHistory = &self->_fHistory;
    v9 = [(_UIKBRTTouchHistory *)self->_fHistory containsInfo:v7];
    v10 = [(_UIKBRTTouchHistory *)self->_jHistory containsInfo:v7];
    if (v4)
    {
      if (v9)
      {
        v11 = &OBJC_IVAR____UIKBRTTouchDrifting__leftHandDriftOffsetObj;
        v12 = &OBJC_IVAR____UIKBRTTouchDrifting__leftDriftRemovingItems;
        v13 = &OBJC_IVAR____UIKBRTTouchDrifting__leftDriftLockTouchIDs;
        v14 = &OBJC_IVAR____UIKBRTTouchDrifting__leftHandFixedOffsetObj;
      }

      else
      {
        if (!v10)
        {
          [(_UIKBRTTouchHistory *)self->_otherHistory removeInfo:v7];
          v21 = 0;
          v20 = 0;
          v19 = 0;
          goto LABEL_16;
        }

        v11 = &OBJC_IVAR____UIKBRTTouchDrifting__rightHandDriftOffsetObj;
        v12 = &OBJC_IVAR____UIKBRTTouchDrifting__rightDriftRemovingItems;
        v13 = &OBJC_IVAR____UIKBRTTouchDrifting__rightDriftLockTouchIDs;
        v14 = &OBJC_IVAR____UIKBRTTouchDrifting__rightHandFixedOffsetObj;
        p_fHistory = &self->_jHistory;
      }

      v19 = *p_fHistory;
      v20 = *(&self->super.super.isa + *v14);
      v21 = *(&self->super.super.isa + *v11);
      [(_UIKBRTTouchHistory *)*p_fHistory removeInfo:v7];
      v22 = *v13;
      [*(&self->super.super.isa + v22) removeObject:v24];
      *(&self->super.super.isa + *v12) = [*(&self->super.super.isa + v22) count] != 0;
      if (v19 && ![(_UIKBRTTouchHistory *)v19 hasHistory])
      {
        [v20 reset];
        [v21 reset];
LABEL_17:

        v15 = v24;
        goto LABEL_18;
      }

LABEL_16:
      [(_UIKBRTTouchHistory *)v19 lastTime];
      [v20 resetDecayTo:?];
      [(_UIKBRTTouchHistory *)v19 lastTime];
      [v21 resetDecayTo:?];
      goto LABEL_17;
    }

    v15 = v24;
    if (v9)
    {
      [(NSMutableSet *)self->_leftDriftLockTouchIDs removeObject:v24];
      v16 = [(NSMutableSet *)self->_leftDriftLockTouchIDs count];
      v15 = v24;
      v17 = v16 != 0;
      v18 = 97;
    }

    else
    {
      if (!v10)
      {
LABEL_18:
        [(NSMutableDictionary *)self->_touches removeObjectForKey:v15];
        [(_UIKBRTTouchDrifting *)self _updateHistory];
        [(_UIKBRTTouchDrifting *)self _updateDriftWithTouchInfo:0];
        goto LABEL_19;
      }

      [(NSMutableSet *)self->_rightDriftLockTouchIDs removeObject:v24];
      v23 = [(NSMutableSet *)self->_rightDriftLockTouchIDs count];
      v15 = v24;
      v17 = v23 != 0;
      v18 = 98;
    }

    *(&self->super.super.isa + v18) = v17;
    goto LABEL_18;
  }

LABEL_19:
}

- (void)_updateHistory
{
  [(_UIKBRTTouchHistory *)self->_fHistory decayHistory];
  jHistory = self->_jHistory;

  [(_UIKBRTTouchHistory *)jHistory decayHistory];
}

- (id)_touchDictWithFingerIds:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v4;
  v21 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v21)
  {
    v20 = *v29;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v28 + 1) + 8 * i);
        v8 = -[_UIKBRTTouchDriftingDelegate _uikbrtTouchDrifting:touchIdentifiersForFingerID:](self->_delegate, "_uikbrtTouchDrifting:touchIdentifiersForFingerID:", self, [v7 intValue]);
        if ([v8 count])
        {
          v22 = v8;
          v23 = i;
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v9 = v8;
          v10 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v25;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v25 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = [(NSMutableDictionary *)self->_touches objectForKey:*(*(&v24 + 1) + 8 * j)];
                if (v14)
                {
                  v15 = [v5 objectForKey:v7];

                  if (!v15)
                  {
                    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
                    [v5 setObject:v16 forKey:v7];
                  }

                  v17 = [v5 objectForKey:v7];
                  [v17 addObject:v14];
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v11);
          }

          v8 = v22;
          i = v23;
        }
      }

      v21 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v21);
  }

  return v5;
}

- (void)_updateDriftWithTouchInfo:(id)a3
{
  v4 = a3;
  if (self->_supportsDrifting)
  {
    v5 = [(_UIKBRTTouchDrifting *)self _touchDictWithFingerIds:&unk_1EFE2CD90];
    v6 = [(_UIKBRTTouchDrifting *)self _touchDictWithFingerIds:&unk_1EFE2CDA8];
    v7 = [(_UIKBRTDecayingObject *)self->_enableLatchObj isActive];
    [(_UIKBRTDecayingObject *)self->_enableLatchObj startOrUpdateDecay];
    if (v4)
    {
      if ([(_UIKBRTDecayingObject *)self->_enableLatchObj isActive])
      {
        v8 = [v5 keysOfEntriesPassingTest:&__block_literal_global_407];
        v9 = [v6 keysOfEntriesPassingTest:&__block_literal_global_48_0];
        v10 = [v8 setByAddingObjectsFromSet:v9];

        if ([v10 count])
        {
          [(_UIKBRTDecayingObject *)self->_enableLatchObj resetDecayTo:CFAbsoluteTimeGetCurrent() + *&sSystemUptimeFromAbsoluteTimeDiff];
        }

        else
        {
          [(_UIKBRTDecayingObject *)self->_enableLatchObj startOrUpdateDecay];
        }
      }

      else if ([v5 count] >= 2 && objc_msgSend(v6, "count") >= 2)
      {
        v11 = [v5 count];
        if (([v6 count] + v11) >= 5)
        {
          v28 = 0;
          v29 = &v28;
          v30 = 0x2020000000;
          v31 = 0;
          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 3221225472;
          v35[2] = __50___UIKBRTTouchDrifting__updateDriftWithTouchInfo___block_invoke;
          v35[3] = &unk_1E7118438;
          v35[4] = &v28;
          [v5 enumerateKeysAndObjectsUsingBlock:v35];
          v34[0] = MEMORY[0x1E69E9820];
          v34[1] = 3221225472;
          v34[2] = __50___UIKBRTTouchDrifting__updateDriftWithTouchInfo___block_invoke_3;
          v34[3] = &unk_1E7118438;
          v34[4] = &v28;
          [v6 enumerateKeysAndObjectsUsingBlock:v34];
          [(_UIKBRTDecayingObject *)self->_enableLatchObj resetDecayTo:v29[3]];
          _Block_object_dispose(&v28, 8);
        }
      }
    }

    if ([(_UIKBRTDecayingObject *)self->_enableLatchObj isActive])
    {
      v28 = 0;
      v29 = &v28;
      v30 = 0x3032000000;
      v31 = __Block_byref_object_copy__139;
      v32 = __Block_byref_object_dispose__139;
      v33 = 0;
      v22 = 0;
      v23 = &v22;
      v24 = 0x3032000000;
      v25 = __Block_byref_object_copy__139;
      v26 = __Block_byref_object_dispose__139;
      v27 = 0;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __50___UIKBRTTouchDrifting__updateDriftWithTouchInfo___block_invoke_51;
      v19[3] = &unk_1E71184C8;
      v12 = v4;
      v20 = v12;
      v21 = &v28;
      [v5 enumerateKeysAndObjectsUsingBlock:v19];
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __50___UIKBRTTouchDrifting__updateDriftWithTouchInfo___block_invoke_3_53;
      v16 = &unk_1E71184C8;
      v17 = v12;
      v18 = &v22;
      [v6 enumerateKeysAndObjectsUsingBlock:&v13];
      [(_UIKBRTTouchDrifting *)self _updateDriftForFingers:v5 leftHand:1 newestTouch:*(v29 + 5), v13, v14, v15, v16];
      [(_UIKBRTTouchDrifting *)self _updateDriftForFingers:v6 leftHand:0 newestTouch:v23[5]];

      _Block_object_dispose(&v22, 8);
      _Block_object_dispose(&v28, 8);
    }

    else
    {
      [(_UIKBRTTouchHistory *)self->_fHistory reset];
      [(_UIKBRTTouchHistory *)self->_jHistory reset];
      if (v7)
      {
        [(_UIKBRTDecayingOffset *)self->_leftHandDriftOffsetObj reset];
        [(_UIKBRTDecayingOffset *)self->_leftHandFixedOffsetObj reset];
        [(_UIKBRTDecayingOffset *)self->_rightHandDriftOffsetObj reset];
        [(_UIKBRTDecayingOffset *)self->_rightHandFixedOffsetObj reset];
        [(_UIKBRTTouchDriftingDelegate *)self->_delegate _uikbrtTouchDriftingStateChanged:self];
      }
    }
  }

  [(_UIKBRTTouchDrifting *)self _updateDriftView];
}

- (void)_updateDriftForFingers:(id)a3 leftHand:(BOOL)a4 newestTouch:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = 2;
  if (v6)
  {
    v10 = 1;
  }

  v11 = *(&self->super.super.isa + OBJC_IVAR____UIKBRTTouchDrifting__touches[v10]);
  if (v6)
  {
    v12 = 5;
  }

  else
  {
    v12 = 8;
  }

  if (v6)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (v6)
  {
    v14 = 6;
  }

  else
  {
    v14 = 9;
  }

  if (v6)
  {
    v15 = 6;
  }

  else
  {
    v15 = 9;
  }

  v54 = v11;
  v55 = *(&self->super.super.isa + OBJC_IVAR____UIKBRTTouchDrifting__touches[v12]);
  v56 = *(&self->super.super.isa + OBJC_IVAR____UIKBRTTouchDrifting__touches[v15]);
  if (v6)
  {
    [(_UIKBRTKeyboardTouchObserver *)self fCenter];
    v16 = &OBJC_IVAR____UIKBRTTouchDrifting__leftDriftLockTouchIDs;
    v17 = &OBJC_IVAR____UIKBRTTouchDrifting__leftDriftRemovingItems;
    v18 = &OBJC_IVAR____UIKBRTTouchDrifting__leftIndexFingerInfo;
  }

  else
  {
    [(_UIKBRTKeyboardTouchObserver *)self jCenter];
    v16 = &OBJC_IVAR____UIKBRTTouchDrifting__rightDriftLockTouchIDs;
    v17 = &OBJC_IVAR____UIKBRTTouchDrifting__rightDriftRemovingItems;
    v18 = &OBJC_IVAR____UIKBRTTouchDrifting__rightIndexFingerInfo;
  }

  v57 = *(&self->super.super.isa + *v16);
  v53 = *(&self->super.super.isa + *v17);
  v19 = *v18;
  v20 = *(&self->super.super.isa + v19);
  v21 = *(&self->super.super.isa + v19);
  *(&self->super.super.isa + v19) = 0;

  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __68___UIKBRTTouchDrifting__updateDriftForFingers_leftHand_newestTouch___block_invoke;
  v63[3] = &unk_1E7118518;
  v63[4] = &v64;
  v63[5] = &v68;
  [v8 enumerateKeysAndObjectsUsingBlock:v63];
  if (v69[3] >= 3)
  {
    v52 = v9;
    v22 = v8;
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
    v24 = [v8 objectForKey:v23];
    v25 = [v24 firstObject];

    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __68___UIKBRTTouchDrifting__updateDriftForFingers_leftHand_newestTouch___block_invoke_3;
    v58[3] = &unk_1E7118540;
    v62 = v53;
    v61 = v13;
    v59 = v57;
    v60 = &v64;
    [v22 enumerateKeysAndObjectsUsingBlock:v58];
    if (v25)
    {
      v26 = v25;

      v20 = v26;
    }

    else if (!v20)
    {
      v20 = objc_alloc_init(_UIKBRTTouchHistoryInfo);
      [(_UIKBRTTouchHistoryInfo *)v20 setIsLeftHand:v6];
    }

    v27 = [(_UIKBRTTouchHistoryInfo *)v20 touchIdentifier];

    if (!v27)
    {
      [(_UIKBRTTouchDriftingDelegate *)self->_delegate _uikbrtTouchDrifting:self touchCenterForFingerID:v14];
      [(_UIKBRTTouchHistoryInfo *)v20 setActualLocation:?];
    }

    v8 = v22;
    v9 = v52;
  }

  v28 = v65[3];
  v29 = v56;
  if (v20)
  {
    if (v28)
    {
      v30 = 24;
      if (v6)
      {
        v30 = 23;
      }

      objc_storeStrong((&self->super.super.isa + OBJC_IVAR____UIKBRTTouchDrifting__touches[v30]), v20);
      if (v65[3])
      {
        v31 = [(_UIKBRTTouchHistoryInfo *)v20 touchIdentifier];
        if (v31)
        {
          v6 = [(_UIKBRTTouchHistoryInfo *)v20 touchIdentifier];
          if ([v57 containsObject:v6])
          {

            v32 = v54;
            v33 = v55;
            v29 = v56;
LABEL_54:
            [(_UIKBRTTouchHistoryInfo *)v20 actualLocation];
            [_UIKBRTTouchDrifting _offsetForPoint:"_offsetForPoint:fromPoint:" fromPoint:?];
            [(_UIKBRTTouchDrifting *)self _pinOffset:?];
            [v29 updateOffsetTo:?];
            [v33 updateOffsetTo:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
            [v32 clearHistory];
            [(_UIKBRTTouchDriftingDelegate *)self->_delegate _uikbrtTouchDriftingStateChanged:self];
            goto LABEL_57;
          }
        }

        v48 = [(_UIKBRTTouchHistoryInfo *)v20 touchIdentifier];
        if (v53)
        {
          v49 = 0;
        }

        else
        {
          v49 = v48 == 0;
        }

        v50 = v49;

        if (v31)
        {

          v32 = v54;
          v33 = v55;
          v29 = v56;
          if (v50)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v32 = v54;
          v33 = v55;
          v29 = v56;
          if (v50)
          {
            goto LABEL_54;
          }
        }

        v51 = CFAbsoluteTimeGetCurrent() + *&sSystemUptimeFromAbsoluteTimeDiff;
        [v29 resetDecayTo:v51];
        [v33 resetDecayTo:v51];
        goto LABEL_57;
      }
    }
  }

  else if (v28)
  {
    v32 = v54;
    [v54 historyOffset];
    v35 = v34;
    v37 = v36;
    v33 = v55;
    if (v34 * v34 + v36 * v36 <= 0.0)
    {
      v47 = CFAbsoluteTimeGetCurrent() + *&sSystemUptimeFromAbsoluteTimeDiff;
      [v56 resetDecayTo:v47];
      [v55 resetDecayTo:v47];
    }

    else
    {
      [v56 originalOffset];
      v39 = v38;
      v41 = v40;
      [(_UIKBRTTouchDrifting *)self _pinOffset:v35 + v38, v37 + v40];
      v43 = v42;
      v45 = v44;
      [v56 updateOffsetTo:?];
      [v55 updateOffsetTo:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
      [v54 adjustHistoryOffset:{v43 - v39, v45 - v41}];
    }

    goto LABEL_44;
  }

  v33 = v55;
  if ([v56 isActive])
  {
    v46 = 1;
  }

  else
  {
    v46 = [v55 isActive];
  }

  [v56 startOrUpdateDecay];
  [v55 startOrUpdateDecay];
  v32 = v54;
  if ([v56 isActive])
  {
    if (v46)
    {
      goto LABEL_57;
    }

    goto LABEL_44;
  }

  if (v46 != [v55 isActive])
  {
LABEL_44:
    [(_UIKBRTTouchDriftingDelegate *)self->_delegate _uikbrtTouchDriftingStateChanged:self];
  }

LABEL_57:
  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v68, 8);
}

- (CGPoint)_offsetForPoint:(CGPoint)a3 fromPoint:(CGPoint)a4
{
  v4 = a3.x - a4.x;
  v5 = a3.y - a4.y;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)_pointFromPoint:(CGPoint)a3 plusOffset:(CGPoint)a4
{
  v4 = a3.x + a4.x;
  v5 = a3.y + a4.y;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)_pinOffset:(CGPoint)a3
{
  p_touchError = &self->_touchError;
  left = self->_touchError.left;
  if (a3.x < left || (right = self->_touchError.right, right < a3.x))
  {
    if (a3.y < p_touchError->up || self->_touchError.down < a3.y)
    {
      v6 = 24;
      if (a3.x < 0.0)
      {
        v6 = 16;
      }

      v7 = *(&p_touchError->up + v6) / a3.x;
      if (v7 >= *(&p_touchError->up + (a3.y >= 0.0)) / a3.y)
      {
        v7 = *(&p_touchError->up + (a3.y >= 0.0)) / a3.y;
      }

      if (v7 > 1.0)
      {
        v7 = 1.0;
      }

      goto LABEL_21;
    }

    if (a3.x < left)
    {
      goto LABEL_15;
    }

    right = self->_touchError.right;
  }

  if (right < a3.x)
  {
LABEL_15:
    v8 = 24;
    if (a3.x < 0.0)
    {
      v8 = 16;
    }

    v7 = *(&p_touchError->up + v8) / a3.x;
    goto LABEL_21;
  }

  if (a3.y < p_touchError->up || (v7 = 1.0, self->_touchError.down < a3.y))
  {
    v7 = *(&p_touchError->up + (a3.y >= 0.0)) / a3.y;
  }

LABEL_21:
  v9 = a3.x * v7;
  v10 = a3.y * v7;
  result.y = v10;
  result.x = v9;
  return result;
}

- (void)_updateDriftView
{
  v141 = *MEMORY[0x1E69E9840];
  if ((_UIInternalPreferenceUsesDefault(&_UIInternalPreference__UIKBRT_DriftFeedback, @"_UIKBRT_DriftFeedback", _UIInternalPreferenceUpdateBool) & 1) == 0 && byte_1EA95E55C && self->_supportsDrifting)
  {
    WeakRetained = objc_loadWeakRetained(&self->_feedbackParentView);
    if (!WeakRetained)
    {
LABEL_82:

      return;
    }

    [(_UIKBRTKeyboardTouchObserver *)self keySize];
    v5 = v4;
    v7 = v6;
    v8 = [(_UIKBRTKeyboardTouchObserver *)self rowOffsets];
    v9 = [v8 objectAtIndex:{-[_UIKBRTKeyboardTouchObserver homeRowOffsetIndex](self, "homeRowOffsetIndex") - 1}];
    [v9 doubleValue];
    v11 = v10;

    if (!self->_leftDriftFeedbackView)
    {
      v12 = [UIView alloc];
      v13 = [(UIView *)v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      leftDriftFeedbackView = self->_leftDriftFeedbackView;
      self->_leftDriftFeedbackView = v13;

      v15 = +[UIColor clearColor];
      [(UIView *)self->_leftDriftFeedbackView setBackgroundColor:v15];

      [(UIView *)self->_leftDriftFeedbackView setUserInteractionEnabled:0];
      [WeakRetained addSubview:self->_leftDriftFeedbackView];
      v16 = [UIColor colorWithWhite:0.75 alpha:0.25];
      for (i = -1; i != 2; ++i)
      {
        v18 = [(_UIKBRTKeyboardTouchObserver *)self homeRowOffsetIndex];
        v19 = (v18 + i);
        if (v18 + i >= 0)
        {
          v20 = [(_UIKBRTKeyboardTouchObserver *)self rowOffsets];
          v21 = [v20 count];

          if (v21 > v19)
          {
            v22 = [(_UIKBRTKeyboardTouchObserver *)self rowOffsets];
            v23 = [v22 objectAtIndex:v19];
            [v23 doubleValue];
            v25 = v24;

            v26 = 0.0;
            v27 = 5;
            do
            {
              v28 = [[_UIKBRTTouchDrifingFingerCircleView alloc] initWithFrame:v25 + v5 * v26 - v11, v7 * (i + 1), v5, v7];
              [(UIView *)v28 setBackgroundColor:v16];
              [(UIView *)self->_leftDriftFeedbackView addSubview:v28];

              v26 = v26 + 1.0;
              --v27;
            }

            while (v27);
          }
        }
      }
    }

    if ([(_UIKBRTDecayingObject *)self->_leftHandDriftOffsetObj isDecaying]|| [(_UIKBRTDecayingObject *)self->_leftHandFixedOffsetObj isDecaying])
    {
      v29 = [UIColor colorWithRed:0.5 green:1.0 blue:1.0 alpha:0.25];
      v132 = 0u;
      v133 = 0u;
      v134 = 0u;
      v135 = 0u;
      v30 = [(UIView *)self->_leftDriftFeedbackView subviews];
      v31 = [v30 countByEnumeratingWithState:&v132 objects:v140 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v133;
        do
        {
          for (j = 0; j != v32; ++j)
          {
            if (*v133 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = *(*(&v132 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v36 = v29;
              v37 = v35;
              [v37 setBorderColor:{objc_msgSend(v29, "CGColor")}];
            }
          }

          v32 = [v30 countByEnumeratingWithState:&v132 objects:v140 count:16];
        }

        while (v32);
      }
    }

    else
    {
      v29 = [UIColor colorWithRed:0.0 green:1.0 blue:1.0 alpha:0.25];
      v128 = 0u;
      v129 = 0u;
      v130 = 0u;
      v131 = 0u;
      v30 = [(UIView *)self->_leftDriftFeedbackView subviews];
      v38 = [v30 countByEnumeratingWithState:&v128 objects:v139 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v129;
        do
        {
          for (k = 0; k != v39; ++k)
          {
            if (*v129 != v40)
            {
              objc_enumerationMutation(v30);
            }

            v42 = *(*(&v128 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v43 = v29;
              v44 = v42;
              [v44 setBorderColor:{objc_msgSend(v29, "CGColor")}];
            }
          }

          v39 = [v30 countByEnumeratingWithState:&v128 objects:v139 count:16];
        }

        while (v39);
      }
    }

    [(_UIKBRTDecayingOffset *)self->_leftHandDriftOffsetObj offset];
    v46 = v45;
    v48 = v47;
    [(_UIKBRTDecayingOffset *)self->_leftHandFixedOffsetObj offset];
    v50 = v49;
    v52 = v11 + v46 + v51;
    [(_UIKBRTKeyboardTouchObserver *)self fCenter];
    v54 = v53 + v52 + v5 * -3.5;
    [(_UIKBRTKeyboardTouchObserver *)self fCenter];
    v56 = v7 * 1.5;
    v57 = v48 + v50 + v55 - v7 * 1.5;
    v58 = [(_UIKBRTKeyboardTouchObserver *)self rowOffsets];
    v59 = [v58 objectAtIndex:{-[_UIKBRTKeyboardTouchObserver homeRowOffsetIndex](self, "homeRowOffsetIndex") + 1}];
    [v59 doubleValue];
    v61 = v5 * 5.0 + v60;
    v62 = v7 * 3.0;

    [(UIView *)self->_leftDriftFeedbackView setFrame:v54, v57, v61, v7 * 3.0];
    [WeakRetained bringSubviewToFront:self->_leftDriftFeedbackView];
    if (_updateDriftView_onceToken != -1)
    {
      dispatch_once(&_updateDriftView_onceToken, &__block_literal_global_59);
    }

    if (!self->_rightDriftFeedbackView)
    {
      v63 = [UIView alloc];
      v64 = [(UIView *)v63 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      rightDriftFeedbackView = self->_rightDriftFeedbackView;
      self->_rightDriftFeedbackView = v64;

      v66 = +[UIColor clearColor];
      [(UIView *)self->_rightDriftFeedbackView setBackgroundColor:v66];

      [(UIView *)self->_rightDriftFeedbackView setUserInteractionEnabled:0];
      [WeakRetained addSubview:self->_rightDriftFeedbackView];
      v67 = [UIColor colorWithWhite:0.75 alpha:0.25];
      for (m = -1; m != 2; ++m)
      {
        v69 = [(_UIKBRTKeyboardTouchObserver *)self homeRowOffsetIndex];
        v70 = (v69 + m);
        if (v69 + m >= 0)
        {
          v71 = [(_UIKBRTKeyboardTouchObserver *)self rowOffsets];
          v72 = [v71 count];

          if (v72 > v70)
          {
            v73 = [(_UIKBRTKeyboardTouchObserver *)self rowOffsets];
            v74 = [v73 objectAtIndex:v70];
            [v74 doubleValue];
            v76 = v75;

            v77 = *(&_MergedGlobals_13 + m + 3);
            if (v77 >= 1)
            {
              v78 = 0.0;
              do
              {
                v79 = [[_UIKBRTTouchDrifingFingerCircleView alloc] initWithFrame:v76 + v5 * v78 - v11, v7 * (m + 1), v5, v7];
                [(UIView *)v79 setBackgroundColor:v67];
                [(UIView *)self->_rightDriftFeedbackView addSubview:v79];

                v78 = v78 + 1.0;
                --v77;
              }

              while (v77);
            }
          }
        }
      }

      v62 = v7 * 3.0;
      v56 = v7 * 1.5;
    }

    if ([(_UIKBRTDecayingObject *)self->_rightHandDriftOffsetObj isDecaying]|| [(_UIKBRTDecayingObject *)self->_rightHandFixedOffsetObj isDecaying])
    {
      v80 = [UIColor colorWithRed:0.5 green:1.0 blue:1.0 alpha:0.25];
      v124 = 0u;
      v125 = 0u;
      v126 = 0u;
      v127 = 0u;
      v81 = [(UIView *)self->_rightDriftFeedbackView subviews];
      v82 = [v81 countByEnumeratingWithState:&v124 objects:v138 count:16];
      if (v82)
      {
        v83 = v82;
        v118 = WeakRetained;
        v84 = *v125;
        do
        {
          for (n = 0; n != v83; ++n)
          {
            if (*v125 != v84)
            {
              objc_enumerationMutation(v81);
            }

            v86 = *(*(&v124 + 1) + 8 * n);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v87 = v80;
              v88 = v86;
              [v88 setBorderColor:{objc_msgSend(v80, "CGColor")}];
            }
          }

          v83 = [v81 countByEnumeratingWithState:&v124 objects:v138 count:16];
        }

        while (v83);
LABEL_69:
        WeakRetained = v118;
      }
    }

    else
    {
      v80 = [UIColor colorWithRed:0.0 green:1.0 blue:1.0 alpha:0.25];
      v120 = 0u;
      v121 = 0u;
      v122 = 0u;
      v123 = 0u;
      v81 = [(UIView *)self->_rightDriftFeedbackView subviews];
      v89 = [v81 countByEnumeratingWithState:&v120 objects:v137 count:16];
      if (v89)
      {
        v90 = v89;
        v118 = WeakRetained;
        v91 = *v121;
        do
        {
          for (ii = 0; ii != v90; ++ii)
          {
            if (*v121 != v91)
            {
              objc_enumerationMutation(v81);
            }

            v93 = *(*(&v120 + 1) + 8 * ii);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v94 = v80;
              v95 = v93;
              [v95 setBorderColor:{objc_msgSend(v80, "CGColor")}];
            }
          }

          v90 = [v81 countByEnumeratingWithState:&v120 objects:v137 count:16];
        }

        while (v90);
        goto LABEL_69;
      }
    }

    [(_UIKBRTDecayingOffset *)self->_rightHandDriftOffsetObj offset];
    v97 = v96;
    v99 = v98;
    [(_UIKBRTDecayingOffset *)self->_rightHandFixedOffsetObj offset];
    v101 = v100;
    v103 = v11 + v97 + v102;
    [(_UIKBRTKeyboardTouchObserver *)self jCenter];
    v105 = v104 + v103 + v5 * -1.5;
    [(_UIKBRTKeyboardTouchObserver *)self jCenter];
    [(UIView *)self->_rightDriftFeedbackView setFrame:v105, v99 + v101 + v106 - v56, v5 * *&_MergedGlobals_13, v62];
    [WeakRetained bringSubviewToFront:self->_rightDriftFeedbackView];
    if (!self->_touchHistoryFeedbackView)
    {
      v107 = [UIView alloc];
      v108 = [(UIView *)v107 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      touchHistoryFeedbackView = self->_touchHistoryFeedbackView;
      self->_touchHistoryFeedbackView = v108;

      v110 = +[UIColor clearColor];
      [(UIView *)self->_touchHistoryFeedbackView setBackgroundColor:v110];

      [(UIView *)self->_touchHistoryFeedbackView setUserInteractionEnabled:0];
      [WeakRetained addSubview:self->_touchHistoryFeedbackView];
    }

    if (!self->_touchHistoryViewMap)
    {
      v111 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:5 valueOptions:5 capacity:0];
      touchHistoryViewMap = self->_touchHistoryViewMap;
      self->_touchHistoryViewMap = v111;
    }

    [WeakRetained bounds];
    [(UIView *)self->_touchHistoryFeedbackView setFrame:?];
    jHistory = self->_jHistory;
    v136[0] = self->_fHistory;
    v136[1] = jHistory;
    v114 = [MEMORY[0x1E695DEC8] arrayWithObjects:v136 count:2];
    v119[0] = MEMORY[0x1E69E9820];
    v119[1] = 3221225472;
    v119[2] = __40___UIKBRTTouchDrifting__updateDriftView__block_invoke_2;
    v119[3] = &unk_1E7118568;
    v119[4] = self;
    [v114 enumerateObjectsUsingBlock:v119];

    if (([(_UIKBRTDecayingObject *)self->_leftHandDriftOffsetObj isActive]|| [(_UIKBRTDecayingObject *)self->_leftHandFixedOffsetObj isActive]|| [(_UIKBRTDecayingObject *)self->_rightHandDriftOffsetObj isActive]|| [(_UIKBRTDecayingObject *)self->_rightHandFixedOffsetObj isActive]|| [(_UIKBRTTouchHistory *)self->_fHistory hasHistory]|| [(_UIKBRTTouchHistory *)self->_jHistory hasHistory]) && !self->_feedbackTimer)
    {
      v115 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:self target:sel__updateDriftViewTimer_ selector:0 userInfo:1 repeats:0.1];
      feedbackTimer = self->_feedbackTimer;
      self->_feedbackTimer = v115;

      v117 = [MEMORY[0x1E695DFD0] mainRunLoop];
      [v117 addTimer:self->_feedbackTimer forMode:*MEMORY[0x1E695DA28]];
    }

    goto LABEL_82;
  }

  [(_UIKBRTTouchDrifting *)self _resetFeedback];
}

- (void)_updateDriftViewTimer:(id)a3
{
  if (self->_feedbackTimer != a3)
  {
    return;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v5 = *&sSystemUptimeFromAbsoluteTimeDiff;
  v6 = [(_UIKBRTDecayingObject *)self->_leftHandFixedOffsetObj isActive]|| [(_UIKBRTDecayingObject *)self->_leftHandDriftOffsetObj isActive]|| [(_UIKBRTDecayingObject *)self->_rightHandFixedOffsetObj isActive]|| [(_UIKBRTDecayingObject *)self->_rightHandDriftOffsetObj isActive];
  v7 = Current + v5;
  [(_UIKBRTTouchDrifting *)self _updateHistory];
  v8 = [(_UIKBRTTouchDrifting *)self _touchDictWithFingerIds:&unk_1EFE2CDC0];
  v9 = [v8 count];

  leftHandDriftOffsetObj = self->_leftHandDriftOffsetObj;
  if (v9)
  {
    [(_UIKBRTDecayingObject *)leftHandDriftOffsetObj resetActiveDecayTo:v7];
    [(_UIKBRTDecayingObject *)self->_leftHandFixedOffsetObj resetActiveDecayTo:v7];
  }

  else
  {
    [(_UIKBRTDecayingObject *)leftHandDriftOffsetObj startOrUpdateDecay];
    [(_UIKBRTDecayingObject *)self->_leftHandFixedOffsetObj startOrUpdateDecay];
  }

  v11 = [(_UIKBRTTouchDrifting *)self _touchDictWithFingerIds:&unk_1EFE2CDD8];
  v12 = [v11 count];

  rightHandDriftOffsetObj = self->_rightHandDriftOffsetObj;
  if (v12)
  {
    [(_UIKBRTDecayingObject *)rightHandDriftOffsetObj resetActiveDecayTo:v7];
    [(_UIKBRTDecayingObject *)self->_rightHandFixedOffsetObj resetActiveDecayTo:v7];
  }

  else
  {
    [(_UIKBRTDecayingObject *)rightHandDriftOffsetObj startOrUpdateDecay];
    [(_UIKBRTDecayingObject *)self->_rightHandFixedOffsetObj startOrUpdateDecay];
  }

  if (![(_UIKBRTDecayingObject *)self->_leftHandFixedOffsetObj isActive]&& ![(_UIKBRTDecayingObject *)self->_leftHandDriftOffsetObj isActive]&& ![(_UIKBRTDecayingObject *)self->_rightHandFixedOffsetObj isActive])
  {
    v14 = [(_UIKBRTDecayingObject *)self->_rightHandDriftOffsetObj isActive];
    if (v6)
    {
      goto LABEL_17;
    }

LABEL_24:
    [(_UIKBRTTouchDrifting *)self _updateDriftView];
    if (v14)
    {
      return;
    }

    goto LABEL_25;
  }

  v14 = 1;
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_17:
  enableLatchObj = self->_enableLatchObj;
  if (v14)
  {
    [(_UIKBRTDecayingObject *)enableLatchObj resetActiveDecayTo:v7];

    [(_UIKBRTTouchDrifting *)self _updateDriftView];
    return;
  }

  [(_UIKBRTDecayingObject *)enableLatchObj reset];
  [(_UIKBRTTouchDriftingDelegate *)self->_delegate _uikbrtTouchDriftingStateChanged:self];
  [(_UIKBRTTouchDrifting *)self _updateDriftView];
LABEL_25:
  if (![(_UIKBRTTouchHistory *)self->_fHistory hasHistory]&& ![(_UIKBRTTouchHistory *)self->_jHistory hasHistory])
  {
    [(NSTimer *)self->_feedbackTimer invalidate];
    feedbackTimer = self->_feedbackTimer;
    self->_feedbackTimer = 0;
  }
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)touchError
{
  up = self->_touchError.up;
  down = self->_touchError.down;
  left = self->_touchError.left;
  right = self->_touchError.right;
  result.var3 = right;
  result.var2 = left;
  result.var1 = down;
  result.var0 = up;
  return result;
}

- (UIView)feedbackParentView
{
  WeakRetained = objc_loadWeakRetained(&self->_feedbackParentView);

  return WeakRetained;
}

@end