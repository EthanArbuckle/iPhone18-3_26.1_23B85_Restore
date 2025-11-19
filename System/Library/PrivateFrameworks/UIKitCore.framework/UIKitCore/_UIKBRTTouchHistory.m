@interface _UIKBRTTouchHistory
- (BOOL)hasHistory;
- (CGPoint)historyOffset;
- (_UIKBRTTouchHistory)initWithIsLeftHand:(BOOL)a3;
- (double)lastTime;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_decayHistoryToSize:(unint64_t)a3;
- (void)_sortHistory;
- (void)_updateOffset;
- (void)addInfo:(id)a3;
- (void)adjustHistoryOffset:(CGPoint)a3;
- (void)clearHistory;
- (void)dealloc;
- (void)removeInfo:(id)a3;
@end

@implementation _UIKBRTTouchHistory

- (_UIKBRTTouchHistory)initWithIsLeftHand:(BOOL)a3
{
  v4 = [(_UIKBRTTouchHistory *)self init];
  v5 = v4;
  if (v4)
  {
    v4->_isLeftHand = a3;
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    history = v5->_history;
    v5->_history = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(NSMutableArray *)self->_history mutableCopy];
  v6 = v4[1];
  v4[1] = v5;

  *(v4 + 1) = self->_historyOffset;
  return v4;
}

- (void)dealloc
{
  [(_UIKBRTTouchHistory *)self reset];
  history = self->_history;
  self->_history = 0;

  v4.receiver = self;
  v4.super_class = _UIKBRTTouchHistory;
  [(_UIKBRTTouchHistory *)&v4 dealloc];
}

- (BOOL)hasHistory
{
  [(_UIKBRTTouchHistory *)self decayHistory];
  if ([(NSMutableArray *)self->_history count])
  {
    v3 = [(NSMutableArray *)self->_history lastObject];
    if ([v3 isActive])
    {
      LOBYTE(v4) = 1;
    }

    else if ([v3 ignoreTouch])
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      v4 = [v3 ignoreForDrift] ^ 1;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (double)lastTime
{
  v3 = [(NSMutableArray *)self->_history indexOfObjectWithOptions:2 passingTest:&__block_literal_global_370_0];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSMutableArray *)self->_history objectAtIndex:v3];
  }

  [v4 touchTime];
  v6 = v5;

  return v6;
}

- (CGPoint)historyOffset
{
  x = self->_historyOffset.x;
  y = self->_historyOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)addInfo:(id)a3
{
  [(NSMutableArray *)self->_history addObject:a3];

  [(_UIKBRTTouchHistory *)self _updateOffset];
}

- (void)removeInfo:(id)a3
{
  v4 = a3;
  if ([(NSMutableArray *)self->_history containsObject:?])
  {
    [(NSMutableArray *)self->_history removeObject:v4];
    [(_UIKBRTTouchHistory *)self _updateOffset];
  }
}

- (void)adjustHistoryOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  history = self->_history;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43___UIKBRTTouchHistory_adjustHistoryOffset___block_invoke;
  v8[3] = &__block_descriptor_48_e40_v32__0___UIKBRTTouchHistoryInfo_8Q16_B24l;
  v9 = a3;
  [(NSMutableArray *)history enumerateObjectsWithOptions:2 usingBlock:v8];
  v5.f64[0] = x;
  v5.f64[1] = y;
  self->_historyOffset = vsubq_f64(self->_historyOffset, v5);
}

- (void)clearHistory
{
  history = self->_history;
  v4 = [(NSMutableArray *)history indexesOfObjectsPassingTest:&__block_literal_global_373_1];
  [(NSMutableArray *)history removeObjectsAtIndexes:v4];

  [(_UIKBRTTouchHistory *)self _updateOffset];
}

- (void)_sortHistory
{
  v3 = [(NSMutableArray *)self->_history indexesOfObjectsPassingTest:&__block_literal_global_375_2];
  if ([v3 count])
  {
    [(NSMutableArray *)self->_history removeObjectsAtIndexes:v3];
  }

  [(NSMutableArray *)self->_history sortUsingComparator:&__block_literal_global_378_0];
}

- (void)_decayHistoryToSize:(unint64_t)a3
{
  [(_UIKBRTTouchHistory *)self _sortHistory];
  v5 = CFAbsoluteTimeGetCurrent() + *&sSystemUptimeFromAbsoluteTimeDiff;
  if (v5 - self->_lastDecayTime >= 0.05)
  {
    self->_lastDecayTime = v5;
    if ([(NSMutableArray *)self->_history count]<= a3)
    {
      if ([(NSMutableArray *)self->_history count])
      {
        v9 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference__UIKBRT_DriftReturnTime, @"_UIKBRT_DriftReturnTime", _UIInternalPreferenceUpdateDouble);
        v10 = *&qword_1EA95E568 + *&qword_1EA95E568;
        v11 = v9 == 0;
        history = self->_history;
        v14[1] = 3221225472;
        v14[0] = MEMORY[0x1E69E9820];
        v14[2] = __43___UIKBRTTouchHistory__decayHistoryToSize___block_invoke_2;
        v14[3] = &__block_descriptor_48_e40_B32__0___UIKBRTTouchHistoryInfo_8Q16_B24l;
        if (!v11)
        {
          v10 = 4.0;
        }

        *&v14[4] = v5;
        *&v14[5] = v10;
        v13 = [(NSMutableArray *)history indexesOfObjectsPassingTest:v14];
        if ([v13 count])
        {
          [(NSMutableArray *)self->_history removeObjectsAtIndexes:v13];
          [(_UIKBRTTouchHistory *)self _updateOffset];
        }
      }
    }

    else
    {
      if (_UIInternalPreferenceUsesDefault(&_UIInternalPreference__UIKBRT_DriftReturnTime, @"_UIKBRT_DriftReturnTime", _UIInternalPreferenceUpdateDouble))
      {
        v6 = 2.0;
      }

      else
      {
        v6 = *&qword_1EA95E568;
      }

      v16[0] = 0;
      v16[1] = v16;
      v16[2] = 0x2020000000;
      v16[3] = [(NSMutableArray *)self->_history count]- a3;
      v7 = self->_history;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __43___UIKBRTTouchHistory__decayHistoryToSize___block_invoke;
      v15[3] = &unk_1E71185F0;
      *&v15[5] = v5;
      *&v15[6] = v6;
      v15[4] = v16;
      v8 = [(NSMutableArray *)v7 indexesOfObjectsPassingTest:v15];
      if ([v8 count])
      {
        [(NSMutableArray *)self->_history removeObjectsAtIndexes:v8];
        [(_UIKBRTTouchHistory *)self _updateOffset];
      }

      _Block_object_dispose(v16, 8);
    }
  }
}

- (void)_updateOffset
{
  [(_UIKBRTTouchHistory *)self _sortHistory];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3010000000;
  v23 = "";
  v24 = *MEMORY[0x1E695EFF8];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __36___UIKBRTTouchHistory__updateOffset__block_invoke;
  aBlock[3] = &unk_1E7118638;
  aBlock[4] = &v20;
  v3 = _Block_copy(aBlock);
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 0;
  history = self->_history;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __36___UIKBRTTouchHistory__updateOffset__block_invoke_2;
  v14[3] = &unk_1E7118660;
  v5 = v3;
  v15 = v5;
  v16 = v17;
  [(NSMutableArray *)history enumerateObjectsWithOptions:2 usingBlock:v14];
  v6 = v21;
  __asm { FMOV            V1.2D, #10.0 }

  v12 = vdivq_f64(v21[2], _Q1);
  __asm { FMOV            V1.2D, #0.5 }

  v21[2] = vrndq_f64(vaddq_f64(v12, _Q1));
  self->_historyOffset = v6[2];

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(&v20, 8);
}

@end