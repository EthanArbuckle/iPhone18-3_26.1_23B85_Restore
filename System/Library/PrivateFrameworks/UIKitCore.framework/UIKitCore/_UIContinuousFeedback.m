@interface _UIContinuousFeedback
+ (id)continuousFeedbackForType:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (_UIContinuousFeedback)init;
- (_UIContinuousFeedback)initWithDictionaryRepresentation:(id)a3;
- (id)_debugDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)_effectiveEventType;
- (void)_playedAtTime:(double)a3 engine:(id)a4;
@end

@implementation _UIContinuousFeedback

+ (id)continuousFeedbackForType:(int64_t)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setType:a3];

  return v4;
}

- (_UIContinuousFeedback)init
{
  v3.receiver = self;
  v3.super_class = _UIContinuousFeedback;
  result = [(_UIFeedback *)&v3 init];
  result->_duration = INFINITY;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = _UIContinuousFeedback;
  result = [(_UIFeedback *)&v5 copyWithZone:a3];
  *(result + 17) = self->_type;
  *(result + 16) = *&self->_duration;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UIContinuousFeedback;
  v5 = [(_UIFeedback *)&v7 isEqual:v4]&& self->_type == *(v4 + 17) && self->_duration == v4[16];

  return v5;
}

- (_UIContinuousFeedback)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _UIContinuousFeedback;
  v5 = [(_UIFeedback *)&v11 initWithDictionaryRepresentation:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"feedbackType"];
    v5->_type = [v6 intValue];

    v7 = [v4 objectForKeyedSubscript:@"duration"];
    [v7 doubleValue];
    v5->_duration = v8;

    v9 = v5;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = _UIContinuousFeedback;
  v3 = [(_UIFeedback *)&v9 dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v10[0] = @"feedbackType";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_type];
  v10[1] = @"duration";
  v11[0] = v5;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_duration];
  v11[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [v4 addEntriesFromDictionary:v7];

  return v4;
}

- (unint64_t)_effectiveEventType
{
  if (self->_type)
  {
    return 32610;
  }

  else
  {
    return 0;
  }
}

- (void)_playedAtTime:(double)a3 engine:(id)a4
{
  v9.receiver = self;
  v9.super_class = _UIContinuousFeedback;
  [(_UIFeedback *)&v9 _playedAtTime:a4 engine:a3];
  if (self->_duration != INFINITY)
  {
    [(_UIFeedback *)self _effectiveDelay];
    v6 = v5 + self->_duration;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __46___UIContinuousFeedback__playedAtTime_engine___block_invoke;
    v8[3] = &unk_1E70F3590;
    v8[4] = self;
    v7 = _UIFeedbackPreciseDispatchAfter(0, v8, v6);
  }
}

- (id)_debugDictionary
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"feedbackType";
  v3 = [(_UIContinuousFeedback *)self type];
  v4 = @"Unknown";
  if (v3 == 1)
  {
    v4 = @"Sine";
  }

  v13[0] = v4;
  v12[1] = @"effectiveEventType";
  v5 = MEMORY[0x1E696AD98];
  v6 = v4;
  v7 = [v5 numberWithUnsignedInteger:{-[_UIContinuousFeedback _effectiveEventType](self, "_effectiveEventType")}];
  v13[1] = v7;
  v12[2] = @"duration";
  v8 = MEMORY[0x1E696AD98];
  [(_UIContinuousFeedback *)self duration];
  v9 = [v8 numberWithDouble:?];
  v13[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  return v10;
}

@end