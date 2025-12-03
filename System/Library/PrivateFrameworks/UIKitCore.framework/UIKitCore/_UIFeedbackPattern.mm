@interface _UIFeedbackPattern
+ (id)feedbackPattern;
- (BOOL)canReuseCoreHapticsPlayer;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPlaying;
- (CGPoint)_location;
- (NSMutableArray)feedbacks;
- (_UIFeedbackPattern)initWithDictionaryRepresentation:(id)representation;
- (id)_allEventTypes;
- (id)_allSystemSoundIDs;
- (id)_debugDictionary;
- (id)_individualFeedbacks;
- (id)_playableProtocol;
- (id)_view;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)_effectivePlayableFeedbackTypes;
- (void)_playPattern;
- (void)_setLocation:(CGPoint)location;
- (void)_setView:(id)view;
- (void)addFeedback:(id)feedback atTime:(double)time;
- (void)play;
- (void)setPosition:(float)position;
- (void)stop;
@end

@implementation _UIFeedbackPattern

+ (id)feedbackPattern
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (NSMutableArray)feedbacks
{
  feedbacks = self->_feedbacks;
  if (!feedbacks)
  {
    array = [MEMORY[0x1E695DF70] array];
    v5 = self->_feedbacks;
    self->_feedbacks = array;

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

        _individualFeedbacks = [*(*(&v11 + 1) + 8 * i) _individualFeedbacks];
        [v3 addObjectsFromArray:_individualFeedbacks];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = _UIFeedbackPattern;
  v4 = [(_UIFeedback *)&v16 copyWithZone:zone];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  feedbacks = [(_UIFeedbackPattern *)self feedbacks];
  v6 = [feedbacks countByEnumeratingWithState:&v12 objects:v17 count:16];
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
          objc_enumerationMutation(feedbacks);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        [v10 _delay];
        [v4 addFeedback:v10 atTime:?];
      }

      v7 = [feedbacks countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = _UIFeedbackPattern;
  if ([(_UIFeedback *)&v7 isEqual:equalCopy])
  {
    v5 = [(NSMutableArray *)self->_feedbacks isEqual:equalCopy[18]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_UIFeedbackPattern)initWithDictionaryRepresentation:(id)representation
{
  v29 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v27.receiver = self;
  v27.super_class = _UIFeedbackPattern;
  v5 = [(_UIFeedback *)&v27 initWithDictionaryRepresentation:representationCopy];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"duration"];
    [v6 doubleValue];
    v5->_duration = v7;

    array = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v22 = representationCopy;
    v9 = [representationCopy objectForKeyedSubscript:@"feedbacks"];
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
            audioParameters = [(_UIFeedback *)v5 audioParameters];
            audioParameters2 = [v14 audioParameters];
            [audioParameters2 setParentParameters:audioParameters];

            hapticParameters = [(_UIFeedback *)v5 hapticParameters];
            hapticParameters2 = [v14 hapticParameters];
            [hapticParameters2 setParentParameters:hapticParameters];

            [array addObject:v14];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v11);
    }

    [(_UIFeedbackPattern *)v5 setFeedbacks:array];
    representationCopy = v22;
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
  dictionaryRepresentation = [(_UIFeedback *)&v19 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_duration];
  [v4 setObject:v5 forKeyedSubscript:@"duration"];

  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  feedbacks = [(_UIFeedbackPattern *)self feedbacks];
  v8 = [feedbacks countByEnumeratingWithState:&v15 objects:v20 count:16];
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
          objc_enumerationMutation(feedbacks);
        }

        dictionaryRepresentation2 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
        [array addObject:dictionaryRepresentation2];
      }

      v9 = [feedbacks countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v9);
  }

  [v4 setObject:array forKeyedSubscript:@"feedbacks"];
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
    feedbacks = [(_UIFeedbackPattern *)self feedbacks];
    v4 = [feedbacks countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(feedbacks);
          }

          _playableProtocol = [*(*(&v11 + 1) + 8 * i) _playableProtocol];

          if (_playableProtocol == &unk_1EFFA53B0)
          {
            v9 = &unk_1EFFA53B0;

            goto LABEL_14;
          }
        }

        v5 = [feedbacks countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (void)addFeedback:(id)feedback atTime:(double)time
{
  feedbackCopy = feedback;
  v14 = feedbackCopy;
  if (feedbackCopy == self)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFeedback.m" lineNumber:1306 description:@"Cannot add a feedback pattern to itself."];
  }

  else
  {
    v8 = [(_UIFeedbackPattern *)feedbackCopy copy];

    audioParameters = [(_UIFeedback *)self audioParameters];
    audioParameters2 = [(_UIFeedback *)v8 audioParameters];
    [audioParameters2 setParentParameters:audioParameters];

    hapticParameters = [(_UIFeedback *)self hapticParameters];
    hapticParameters2 = [(_UIFeedback *)v8 hapticParameters];
    [hapticParameters2 setParentParameters:hapticParameters];

    [(_UIFeedback *)v8 _setParentPattern:self];
    [(_UIFeedback *)v8 _setDelay:time];
    currentHandler = [(_UIFeedbackPattern *)self feedbacks];
    [currentHandler addObject:v8];
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
  indexSet = [MEMORY[0x1E696AD50] indexSet];
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

        _allEventTypes = [*(*(&v11 + 1) + 8 * i) _allEventTypes];
        [indexSet addIndexes:_allEventTypes];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return indexSet;
}

- (id)_allSystemSoundIDs
{
  v16 = *MEMORY[0x1E69E9840];
  indexSet = [MEMORY[0x1E696AD50] indexSet];
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

        _allSystemSoundIDs = [*(*(&v11 + 1) + 8 * i) _allSystemSoundIDs];
        [indexSet addIndexes:_allSystemSoundIDs];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return indexSet;
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
    feedbacks = [(_UIFeedbackPattern *)self feedbacks];
    v5 = [feedbacks countByEnumeratingWithState:&v9 objects:v14 count:16];
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
            objc_enumerationMutation(feedbacks);
          }

          [*(*(&v9 + 1) + 8 * v8++) play];
        }

        while (v6 != v8);
        v6 = [feedbacks countByEnumeratingWithState:&v9 objects:v14 count:16];
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
    feedbacks = [(_UIFeedbackPattern *)self feedbacks];
    v6 = [feedbacks countByEnumeratingWithState:&v10 objects:v15 count:16];
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
            objc_enumerationMutation(feedbacks);
          }

          [*(*(&v10 + 1) + 8 * i) stop];
        }

        v7 = [feedbacks countByEnumeratingWithState:&v10 objects:v15 count:16];
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
    isPlaying = [(_UIFeedback *)&v15 isPlaying];
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    feedbacks = [(_UIFeedbackPattern *)self feedbacks];
    v6 = [feedbacks countByEnumeratingWithState:&v11 objects:v16 count:16];
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
            objc_enumerationMutation(feedbacks);
          }

          if ([*(*(&v11 + 1) + 8 * i) isPlaying])
          {

            isPlaying = 1;
            goto LABEL_13;
          }
        }

        v7 = [feedbacks countByEnumeratingWithState:&v11 objects:v16 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    isPlaying = 0;
  }

LABEL_13:

  return isPlaying;
}

- (void)setPosition:(float)position
{
  v3.receiver = self;
  v3.super_class = _UIFeedbackPattern;
  [(_UIFeedback *)&v3 setPosition:?];
}

- (id)_debugDictionary
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"feedbacks";
  feedbacks = [(_UIFeedbackPattern *)self feedbacks];
  v6[0] = feedbacks;
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
  feedbacks = [(_UIFeedbackPattern *)self feedbacks];
  v3 = [feedbacks countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(feedbacks);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ((objc_opt_respondsToSelector() & 1) == 0 || ![v7 canReuseCoreHapticsPlayer])
        {
          v8 = 0;
          goto LABEL_15;
        }
      }

      v4 = [feedbacks countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  feedbacks = [(_UIFeedbackPattern *)self feedbacks];
  firstObject = [feedbacks firstObject];

  if (firstObject)
  {
    [firstObject _location];
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

- (void)_setLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  feedbacks = [(_UIFeedbackPattern *)self feedbacks];
  v6 = [feedbacks countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(feedbacks);
        }

        [*(*(&v10 + 1) + 8 * v9++) _setLocation:{x, y}];
      }

      while (v7 != v9);
      v7 = [feedbacks countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)_view
{
  feedbacks = [(_UIFeedbackPattern *)self feedbacks];
  firstObject = [feedbacks firstObject];
  _view = [firstObject _view];

  return _view;
}

- (void)_setView:(id)view
{
  v15 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  feedbacks = [(_UIFeedbackPattern *)self feedbacks];
  v6 = [feedbacks countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(feedbacks);
        }

        [*(*(&v10 + 1) + 8 * v9++) _setView:viewCopy];
      }

      while (v7 != v9);
      v7 = [feedbacks countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end