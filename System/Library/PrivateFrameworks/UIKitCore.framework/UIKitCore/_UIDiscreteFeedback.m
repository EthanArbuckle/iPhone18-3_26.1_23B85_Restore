@interface _UIDiscreteFeedback
+ (id)discreteFeedbackForType:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isPlaying;
- (_UIDiscreteFeedback)initWithDictionaryRepresentation:(id)a3;
- (id)_debugDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)_effectiveEventType;
- (unsigned)_effectiveSystemSoundID;
@end

@implementation _UIDiscreteFeedback

- (unint64_t)_effectiveEventType
{
  result = 0;
  type = self->_type;
  if (type <= 6)
  {
    if (type > 3)
    {
      if (type == 4)
      {
        return 11094;
      }

      else if (type == 5)
      {
        return 17238;
      }

      else
      {
        return 26454;
      }
    }

    else
    {
      switch(type)
      {
        case 1:
          return 14167;
        case 2:
          return 20311;
        case 3:
          return 29527;
      }
    }
  }

  else if (type <= 9)
  {
    if (type == 7)
    {
      return 11093;
    }

    if (type == 8)
    {
      return 17237;
    }

    else
    {
      return 26453;
    }
  }

  else
  {
    if (type <= 999)
    {
      if (type == 10)
      {
        return 8022;
      }

      if (type == 11)
      {
        return 29525;
      }

      return result;
    }

    if (type == 1000)
    {
      return 8021;
    }

    if (type == 1002)
    {
      return 11093;
    }
  }

  return result;
}

+ (id)discreteFeedbackForType:(int64_t)a3
{
  v4 = objc_alloc_init(a1);
  [v4 setType:a3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = _UIDiscreteFeedback;
  result = [(_UIFeedback *)&v5 copyWithZone:a3];
  *(result + 17) = self->_type;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UIDiscreteFeedback;
  if ([(_UIFeedback *)&v7 isEqual:v4])
  {
    v5 = self->_type == v4[17];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_UIDiscreteFeedback)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UIDiscreteFeedback;
  v5 = [(_UIFeedback *)&v9 initWithDictionaryRepresentation:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"feedbackType"];
    v5->_type = [v6 intValue];

    v7 = v5;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v10[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = _UIDiscreteFeedback;
  v3 = [(_UIFeedback *)&v8 dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v9 = @"feedbackType";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_type];
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v4 addEntriesFromDictionary:v6];

  return v4;
}

- (unsigned)_effectiveSystemSoundID
{
  type = self->_type;
  if (type == 1001)
  {
    return 1519;
  }

  if (type == 1002)
  {
    return 1520;
  }

  return _UISystemSoundIDNone;
}

- (BOOL)isPlaying
{
  v2 = [(_UIFeedback *)self _player];
  v3 = v2 != 0;

  return v3;
}

- (id)_debugDictionary
{
  v11[3] = *MEMORY[0x1E69E9840];
  v10[0] = @"feedbackType";
  v3 = [(_UIDiscreteFeedback *)self type];
  if ((v3 - 1) > 8)
  {
    v4 = @"Unknown";
  }

  else
  {
    v4 = off_1E7107788[v3 - 1];
  }

  v5 = v4;
  v11[0] = v5;
  v10[1] = @"effectiveEventType";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_UIDiscreteFeedback _effectiveEventType](self, "_effectiveEventType")}];
  v11[1] = v6;
  v10[2] = @"effectiveSystemSoundID";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_UIDiscreteFeedback _effectiveSystemSoundID](self, "_effectiveSystemSoundID")}];
  v11[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  return v8;
}

@end