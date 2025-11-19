@interface _UIFeedbackPattern
+ (id)feedbackPattern;
- (BOOL)canReuseCoreHapticsPlayer;
- (BOOL)isEqual:(id)a3;
- (BOOL)isPlaying;
- (CGPoint)_location;
- (NSMutableArray)feedbacks;
- (_UIFeedbackPattern)initWithDictionaryRepresentation:(id)a3;
- (id)_allEventTypes;
- (id)_allSystemSoundIDs;
- (id)_debugDictionary;
- (id)_individualFeedbacks;
- (id)_playableProtocol;
- (id)_view;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)_effectivePlayableFeedbackTypes;
- (void)_playPattern;
- (void)_setLocation:(CGPoint)a3;
- (void)_setView:(id)a3;
- (void)addFeedback:(id)a3 atTime:(double)a4;
- (void)play;
- (void)setPosition:(float)a3;
- (void)stop;
@end

@implementation _UIFeedbackPattern

+ (id)feedbackPattern
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (NSMutableArray)feedbacks
{
  feedbacks = self->_feedbacks;
  if (!feedbacks)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = self->_feedbacks;
    self->_feedbacks = v4;

    feedbacks = self->_feedbacks;
  }

  return feedbacks;
}

- (id)_individualFeedbacks
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableArray count](self->_feedbacks, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_feedbacks;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) _individualFeedbacks];
        [v3 addObjectsFromArray:v9];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = _UIFeedbackPattern;
  v4 = [(_UIFeedback *)&v16 copyWithZone:a3];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(_UIFeedbackPattern *)self feedbacks];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
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

        v10 = *(*(&v12 + 1) + 8 * i);
        [v10 _delay];
        [v4 addFeedback:v10 atTime:?];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UIFeedbackPattern;
  if ([(_UIFeedback *)&v7 isEqual:v4])
  {
    v5 = [(NSMutableArray *)self->_feedbacks isEqual:v4[18]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_UIFeedbackPattern)initWithDictionaryRepresentation:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v27.receiver = self;
  v27.super_class = _UIFeedbackPattern;
  v5 = [(_UIFeedback *)&v27 initWithDictionaryRepresentation:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"duration"];
    [v6 doubleValue];
    v5->_duration = v7;

    v8 = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v22 = v4;
    v9 = [v4 objectForKeyedSubscript:@"feedbacks"];
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        v13 = 0;
        do
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [_UIFeedback feedbackWithDictionaryRepresentation:*(*(&v23 + 1) + 8 * v13)];
          if (v14)
          {
            v15 = [(_UIFeedback *)v5 audioParameters];
            v16 = [v14 audioParameters];
            [v16 setParentParameters:v15];

            v17 = [(_UIFeedback *)v5 hapticParameters];
            v18 = [v14 hapticParameters];
            [v18 setParentParameters:v17];

            [v8 addObject:v14];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v11);
    }

    [(_UIFeedbackPattern *)v5 setFeedbacks:v8];
    v4 = v22;
    v19 = [v22 objectForKeyedSubscript:@"canReuseCoreHapticsPlayer"];
    v5->_canReuseCoreHapticsPlayer = [v19 BOOLValue];

    v20 = v5;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v21 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = _UIFeedbackPattern;
  v3 = [(_UIFeedback *)&v19 dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_duration];
  [v4 setObject:v5 forKeyedSubscript:@"duration"];

  v6 = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(_UIFeedbackPattern *)self feedbacks];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v9);
  }

  [v4 setObject:v6 forKeyedSubscript:@"feedbacks"];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_canReuseCoreHapticsPlayer];
  [v4 setObject:v13 forKeyedSubscript:@"canReuseCoreHapticsPlayer"];

  return v4;
}

- (id)_playableProtocol
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_duration <= 0.0)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [(_UIFeedbackPattern *)self feedbacks];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(&v11 + 1) + 8 * i) _playableProtocol];

          if (v8 == &unk_1EFFA53B0)
          {
            v9 = &unk_1EFFA53B0;

            goto LABEL_14;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v2 = &unk_1EFFA51C0;
  }

  else
  {
    v2 = &unk_1EFFA53B0;
  }

  v9 = v2;
LABEL_14:

  return v9;
}

- (void)addFeedback:(id)a3 atTime:(double)a4
{
  v7 = a3;
  v14 = v7;
  if (v7 == self)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_UIFeedback.m" lineNumber:1306 description:@"Cannot add a feedback pattern to itself."];
  }

  else
  {
    v8 = [(_UIFeedbackPattern *)v7 copy];

    v9 = [(_UIFeedback *)self audioParameters];
    v10 = [(_UIFeedback *)v8 audioParameters];
    [v10 setParentParameters:v9];

    v11 = [(_UIFeedback *)self hapticParameters];
    v12 = [(_UIFeedback *)v8 hapticParameters];
    [v12 setParentParameters:v11];

    [(_UIFeedback *)v8 _setParentPattern:self];
    [(_UIFeedback *)v8 _setDelay:a4];
    v13 = [(_UIFeedbackPattern *)self feedbacks];
    [v13 addObject:v8];
    v14 = v8;
  }
}

- (unint64_t)_effectivePlayableFeedbackTypes
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_feedbacks;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 |= [*(*(&v9 + 1) + 8 * i) _effectivePlayableFeedbackTypes];
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_allEventTypes
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD50] indexSet];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_feedbacks;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) _allEventTypes];
        [v3 addIndexes:v9];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_allSystemSoundIDs
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD50] indexSet];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_feedbacks;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) _allSystemSoundIDs];
        [v3 addIndexes:v9];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)play
{
  if (self->_duration > 0.0)
  {
    v3 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__playPattern selector:0 userInfo:1 repeats:?];
    [(_UIFeedbackPattern *)self setRepeatTimer:v3];
  }

  [(_UIFeedbackPattern *)self _playPattern];
}

- (void)_playPattern
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [_UIFeedbackEngine engineForFeedback:self];
  if ([objc_opt_class() _supportsPlayingFeedbackPatternsDirectly])
  {
    v13.receiver = self;
    v13.super_class = _UIFeedbackPattern;
    [(_UIFeedback *)&v13 play];
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = [(_UIFeedbackPattern *)self feedbacks];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8++) play];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)stop
{
  v16 = *MEMORY[0x1E69E9840];
  repeatTimer = self->_repeatTimer;
  if (repeatTimer)
  {
    [(NSTimer *)repeatTimer invalidate];
    [(_UIFeedbackPattern *)self setRepeatTimer:0];
  }

  v4 = [_UIFeedbackEngine engineForFeedback:self];
  if ([objc_opt_class() _supportsPlayingFeedbackPatternsDirectly])
  {
    v14.receiver = self;
    v14.super_class = _UIFeedbackPattern;
    [(_UIFeedback *)&v14 stop];
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [(_UIFeedbackPattern *)self feedbacks];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * i) stop];
        }

        v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (BOOL)isPlaying
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [_UIFeedbackEngine engineForFeedback:self];
  if ([objc_opt_class() _supportsPlayingFeedbackPatternsDirectly])
  {
    v15.receiver = self;
    v15.super_class = _UIFeedbackPattern;
    v4 = [(_UIFeedback *)&v15 isPlaying];
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [(_UIFeedbackPattern *)self feedbacks];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v11 + 1) + 8 * i) isPlaying])
          {

            v4 = 1;
            goto LABEL_13;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v4 = 0;
  }

LABEL_13:

  return v4;
}

- (void)setPosition:(float)a3
{
  v3.receiver = self;
  v3.super_class = _UIFeedbackPattern;
  [(_UIFeedback *)&v3 setPosition:?];
}

- (id)_debugDictionary
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"feedbacks";
  v2 = [(_UIFeedbackPattern *)self feedbacks];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (BOOL)canReuseCoreHapticsPlayer
{
  v15 = *MEMORY[0x1E69E9840];
  if (!self->_canReuseCoreHapticsPlayer)
  {
    return 0;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(_UIFeedbackPattern *)self feedbacks];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ((objc_opt_respondsToSelector() & 1) == 0 || ![v7 canReuseCoreHapticsPlayer])
        {
          v8 = 0;
          goto LABEL_15;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v8 = 1;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 1;
  }

LABEL_15:

  return v8;
}

- (CGPoint)_location
{
  v2 = [(_UIFeedbackPattern *)self feedbacks];
  v3 = [v2 firstObject];

  if (v3)
  {
    [v3 _location];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    v5 = 0x7FEFFFFFFFFFFFFFLL;
    v7 = 0x7FEFFFFFFFFFFFFFLL;
  }

  v8 = *&v5;
  v9 = *&v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (void)_setLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(_UIFeedbackPattern *)self feedbacks];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) _setLocation:{x, y}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)_view
{
  v2 = [(_UIFeedbackPattern *)self feedbacks];
  v3 = [v2 firstObject];
  v4 = [v3 _view];

  return v4;
}

- (void)_setView:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(_UIFeedbackPattern *)self feedbacks];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) _setView:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end