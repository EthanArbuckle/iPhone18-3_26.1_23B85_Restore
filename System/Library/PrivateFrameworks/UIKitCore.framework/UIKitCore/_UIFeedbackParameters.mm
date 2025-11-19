@interface _UIFeedbackParameters
+ (id)parameters;
- (BOOL)_isAudio;
- (BOOL)isEqual:(id)a3;
- (_UIFeedback)feedback;
- (_UIFeedbackParameters)initWithDictionaryRepresentation:(id)a3 feedback:(id)a4;
- (_UIFeedbackParameters)initWithFeedback:(id)a3;
- (_UIFeedbackParameters)parentParameters;
- (float)_effectiveValueForParameterWithKey:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)_updateParameterWithKey:(id)a3;
- (void)setAttackTime:(float)a3;
- (void)setDecayTime:(float)a3;
- (void)setRate:(float)a3;
- (void)setReleaseTime:(float)a3;
- (void)setTransposition:(float)a3;
- (void)setVolume:(float)a3;
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
  v2 = self;
  WeakRetained = objc_loadWeakRetained(&self->_feedback);
  v4 = [WeakRetained audioParameters];
  LOBYTE(v2) = v4 == v2;

  return v2;
}

- (void)_updateParameterWithKey:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_feedback);
  v5 = [WeakRetained _player];
  [v5 _updateValueForParameters:self withKey:v4];
}

- (float)_effectiveValueForParameterWithKey:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() parameters];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [(_UIFeedbackParameters *)self valueForKey:v4];
  [v7 floatValue];
  v9 = v8;

  v10 = [v6 objectForKeyedSubscript:@"additive"];
  v11 = [v10 BOOLValue];

  WeakRetained = objc_loadWeakRetained(&self->_parentParameters);
  if (WeakRetained)
  {
    v13 = objc_loadWeakRetained(&self->_parentParameters);
    [v13 _effectiveValueForParameterWithKey:v4];
    v15 = v14;

    if (v11)
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

- (_UIFeedbackParameters)initWithFeedback:(id)a3
{
  v10.receiver = self;
  v10.super_class = _UIFeedbackParameters;
  v3 = a3;
  v4 = [(_UIFeedbackParameters *)&v10 init];
  objc_storeWeak(&v4->_feedback, v3);

  v5 = [objc_opt_class() parameters];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42___UIFeedbackParameters_initWithFeedback___block_invoke;
  v8[3] = &unk_1E71075F8;
  v6 = v4;
  v9 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [objc_opt_class() parameters];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38___UIFeedbackParameters_copyWithZone___block_invoke;
  v9[3] = &unk_1E7107620;
  v6 = v4;
  v10 = v6;
  v11 = self;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];

  v7 = v6;
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = v4;
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 1;
    v8 = [objc_opt_class() parameters];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __33___UIFeedbackParameters_isEqual___block_invoke;
    v11[3] = &unk_1E7107648;
    v9 = v7;
    v12 = v9;
    v13 = self;
    v14 = &v15;
    [v8 enumerateKeysAndObjectsUsingBlock:v11];

    v6 = *(v16 + 24);
    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (_UIFeedbackParameters)initWithDictionaryRepresentation:(id)a3 feedback:(id)a4
{
  v6 = a3;
  v7 = [(_UIFeedbackParameters *)self initWithFeedback:a4];
  v8 = [objc_opt_class() parameters];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67___UIFeedbackParameters_initWithDictionaryRepresentation_feedback___block_invoke;
  v14[3] = &unk_1E7107620;
  v15 = v6;
  v9 = v7;
  v16 = v9;
  v10 = v6;
  [v8 enumerateKeysAndObjectsUsingBlock:v14];

  v11 = v16;
  v12 = v9;

  return v12;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [objc_opt_class() parameters];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49___UIFeedbackParameters_dictionaryRepresentation__block_invoke;
  v8[3] = &unk_1E7107620;
  v5 = v3;
  v9 = v5;
  v10 = self;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];

  v6 = v5;
  return v5;
}

- (void)setVolume:(float)a3
{
  if (self->_volume != a3)
  {
    self->_volume = a3;
    [(_UIFeedbackParameters *)self _updateParameterWithKey:@"volume"];
  }
}

- (void)setRate:(float)a3
{
  if (self->_rate != a3)
  {
    self->_rate = a3;
    [(_UIFeedbackParameters *)self _updateParameterWithKey:@"rate"];
  }
}

- (void)setTransposition:(float)a3
{
  if (self->_transposition != a3)
  {
    self->_transposition = a3;
    [(_UIFeedbackParameters *)self _updateParameterWithKey:@"transposition"];
  }
}

- (void)setAttackTime:(float)a3
{
  if (self->_attackTime != a3)
  {
    self->_attackTime = a3;
    [(_UIFeedbackParameters *)self _updateParameterWithKey:@"attackTime"];
  }
}

- (void)setReleaseTime:(float)a3
{
  if (self->_releaseTime != a3)
  {
    self->_releaseTime = a3;
    [(_UIFeedbackParameters *)self _updateParameterWithKey:@"releaseTime"];
  }
}

- (void)setDecayTime:(float)a3
{
  if (self->_decayTime != a3)
  {
    self->_decayTime = a3;
    [(_UIFeedbackParameters *)self _updateParameterWithKey:@"decayTime"];
  }
}

- (_UIFeedbackParameters)parentParameters
{
  WeakRetained = objc_loadWeakRetained(&self->_parentParameters);

  return WeakRetained;
}

@end