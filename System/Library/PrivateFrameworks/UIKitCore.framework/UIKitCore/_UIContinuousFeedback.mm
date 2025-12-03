@interface _UIContinuousFeedback
+ (id)continuousFeedbackForType:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (_UIContinuousFeedback)init;
- (_UIContinuousFeedback)initWithDictionaryRepresentation:(id)representation;
- (id)_debugDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)_effectiveEventType;
- (void)_playedAtTime:(double)time engine:(id)engine;
@end

@implementation _UIContinuousFeedback

+ (id)continuousFeedbackForType:(int64_t)type
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setType:type];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = _UIContinuousFeedback;
  result = [(_UIFeedback *)&v5 copyWithZone:zone];
  *(result + 17) = self->_type;
  *(result + 16) = *&self->_duration;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = _UIContinuousFeedback;
  v5 = [(_UIFeedback *)&v7 isEqual:equalCopy]&& self->_type == *(equalCopy + 17) && self->_duration == equalCopy[16];

  return v5;
}

- (_UIContinuousFeedback)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v11.receiver = self;
  v11.super_class = _UIContinuousFeedback;
  v5 = [(_UIFeedback *)&v11 initWithDictionaryRepresentation:representationCopy];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"feedbackType"];
    v5->_type = [v6 intValue];

    v7 = [representationCopy objectForKeyedSubscript:@"duration"];
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
  dictionaryRepresentation = [(_UIFeedback *)&v9 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

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

- (void)_playedAtTime:(double)time engine:(id)engine
{
  v9.receiver = self;
  v9.super_class = _UIContinuousFeedback;
  [(_UIFeedback *)&v9 _playedAtTime:engine engine:time];
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
  type = [(_UIContinuousFeedback *)self type];
  v4 = @"Unknown";
  if (type == 1)
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