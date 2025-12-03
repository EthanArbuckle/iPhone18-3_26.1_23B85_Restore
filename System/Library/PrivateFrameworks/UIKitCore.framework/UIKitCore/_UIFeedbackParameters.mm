@interface _UIFeedbackParameters
+ (id)parameters;
- (BOOL)_isAudio;
- (BOOL)isEqual:(id)equal;
- (_UIFeedback)feedback;
- (_UIFeedbackParameters)initWithDictionaryRepresentation:(id)representation feedback:(id)feedback;
- (_UIFeedbackParameters)initWithFeedback:(id)feedback;
- (_UIFeedbackParameters)parentParameters;
- (float)_effectiveValueForParameterWithKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)_updateParameterWithKey:(id)key;
- (void)setAttackTime:(float)time;
- (void)setDecayTime:(float)time;
- (void)setRate:(float)rate;
- (void)setReleaseTime:(float)time;
- (void)setTransposition:(float)transposition;
- (void)setVolume:(float)volume;
@end

@implementation _UIFeedbackParameters

+ (id)parameters
{
  if (_MergedGlobals_5_9 != -1)
  {
    dispatch_once(&_MergedGlobals_5_9, &__block_literal_global_210);
  }

  v3 = qword_1ED49A658;

  return v3;
}

- (_UIFeedback)feedback
{
  WeakRetained = objc_loadWeakRetained(&self->_feedback);

  return WeakRetained;
}

- (BOOL)_isAudio
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_feedback);
  audioParameters = [WeakRetained audioParameters];
  LOBYTE(selfCopy) = audioParameters == selfCopy;

  return selfCopy;
}

- (void)_updateParameterWithKey:(id)key
{
  keyCopy = key;
  WeakRetained = objc_loadWeakRetained(&self->_feedback);
  _player = [WeakRetained _player];
  [_player _updateValueForParameters:self withKey:keyCopy];
}

- (float)_effectiveValueForParameterWithKey:(id)key
{
  keyCopy = key;
  parameters = [objc_opt_class() parameters];
  v6 = [parameters objectForKeyedSubscript:keyCopy];

  v7 = [(_UIFeedbackParameters *)self valueForKey:keyCopy];
  [v7 floatValue];
  v9 = v8;

  v10 = [v6 objectForKeyedSubscript:@"additive"];
  bOOLValue = [v10 BOOLValue];

  WeakRetained = objc_loadWeakRetained(&self->_parentParameters);
  if (WeakRetained)
  {
    v13 = objc_loadWeakRetained(&self->_parentParameters);
    [v13 _effectiveValueForParameterWithKey:keyCopy];
    v15 = v14;

    if (bOOLValue)
    {
      v9 = v9 + v15;
    }

    else
    {
      v9 = v9 * v15;
    }
  }

  v16 = [v6 objectForKeyedSubscript:@"maxValue"];
  [v16 floatValue];
  v18 = v17;
  v19 = [v6 objectForKeyedSubscript:@"minValue"];
  [v19 floatValue];
  v21 = v20;

  if (v21 >= v9)
  {
    v9 = v21;
  }

  if (v18 <= v9)
  {
    v9 = v18;
  }

  return v9;
}

- (_UIFeedbackParameters)initWithFeedback:(id)feedback
{
  v10.receiver = self;
  v10.super_class = _UIFeedbackParameters;
  feedbackCopy = feedback;
  v4 = [(_UIFeedbackParameters *)&v10 init];
  objc_storeWeak(&v4->_feedback, feedbackCopy);

  parameters = [objc_opt_class() parameters];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42___UIFeedbackParameters_initWithFeedback___block_invoke;
  v8[3] = &unk_1E71075F8;
  v6 = v4;
  v9 = v6;
  [parameters enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  parameters = [objc_opt_class() parameters];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38___UIFeedbackParameters_copyWithZone___block_invoke;
  v9[3] = &unk_1E7107620;
  v6 = v4;
  v10 = v6;
  selfCopy = self;
  [parameters enumerateKeysAndObjectsUsingBlock:v9];

  v7 = v6;
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = equalCopy;
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 1;
    parameters = [objc_opt_class() parameters];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __33___UIFeedbackParameters_isEqual___block_invoke;
    v11[3] = &unk_1E7107648;
    v9 = v7;
    v12 = v9;
    selfCopy = self;
    v14 = &v15;
    [parameters enumerateKeysAndObjectsUsingBlock:v11];

    v6 = *(v16 + 24);
    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (_UIFeedbackParameters)initWithDictionaryRepresentation:(id)representation feedback:(id)feedback
{
  representationCopy = representation;
  v7 = [(_UIFeedbackParameters *)self initWithFeedback:feedback];
  parameters = [objc_opt_class() parameters];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67___UIFeedbackParameters_initWithDictionaryRepresentation_feedback___block_invoke;
  v14[3] = &unk_1E7107620;
  v15 = representationCopy;
  v9 = v7;
  v16 = v9;
  v10 = representationCopy;
  [parameters enumerateKeysAndObjectsUsingBlock:v14];

  v11 = v16;
  v12 = v9;

  return v12;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  parameters = [objc_opt_class() parameters];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49___UIFeedbackParameters_dictionaryRepresentation__block_invoke;
  v8[3] = &unk_1E7107620;
  v5 = dictionary;
  v9 = v5;
  selfCopy = self;
  [parameters enumerateKeysAndObjectsUsingBlock:v8];

  v6 = v5;
  return v5;
}

- (void)setVolume:(float)volume
{
  if (self->_volume != volume)
  {
    self->_volume = volume;
    [(_UIFeedbackParameters *)self _updateParameterWithKey:@"volume"];
  }
}

- (void)setRate:(float)rate
{
  if (self->_rate != rate)
  {
    self->_rate = rate;
    [(_UIFeedbackParameters *)self _updateParameterWithKey:@"rate"];
  }
}

- (void)setTransposition:(float)transposition
{
  if (self->_transposition != transposition)
  {
    self->_transposition = transposition;
    [(_UIFeedbackParameters *)self _updateParameterWithKey:@"transposition"];
  }
}

- (void)setAttackTime:(float)time
{
  if (self->_attackTime != time)
  {
    self->_attackTime = time;
    [(_UIFeedbackParameters *)self _updateParameterWithKey:@"attackTime"];
  }
}

- (void)setReleaseTime:(float)time
{
  if (self->_releaseTime != time)
  {
    self->_releaseTime = time;
    [(_UIFeedbackParameters *)self _updateParameterWithKey:@"releaseTime"];
  }
}

- (void)setDecayTime:(float)time
{
  if (self->_decayTime != time)
  {
    self->_decayTime = time;
    [(_UIFeedbackParameters *)self _updateParameterWithKey:@"decayTime"];
  }
}

- (_UIFeedbackParameters)parentParameters
{
  WeakRetained = objc_loadWeakRetained(&self->_parentParameters);

  return WeakRetained;
}

@end