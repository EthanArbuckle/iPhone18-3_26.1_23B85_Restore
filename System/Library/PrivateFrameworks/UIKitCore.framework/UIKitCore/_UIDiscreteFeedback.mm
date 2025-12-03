@interface _UIDiscreteFeedback
+ (id)discreteFeedbackForType:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPlaying;
- (_UIDiscreteFeedback)initWithDictionaryRepresentation:(id)representation;
- (id)_debugDictionary;
- (id)copyWithZone:(_NSZone *)zone;
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

+ (id)discreteFeedbackForType:(int64_t)type
{
  v4 = objc_alloc_init(self);
  [v4 setType:type];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = _UIDiscreteFeedback;
  result = [(_UIFeedback *)&v5 copyWithZone:zone];
  *(result + 17) = self->_type;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = _UIDiscreteFeedback;
  if ([(_UIFeedback *)&v7 isEqual:equalCopy])
  {
    v5 = self->_type == equalCopy[17];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_UIDiscreteFeedback)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v9.receiver = self;
  v9.super_class = _UIDiscreteFeedback;
  v5 = [(_UIFeedback *)&v9 initWithDictionaryRepresentation:representationCopy];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"feedbackType"];
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
  dictionaryRepresentation = [(_UIFeedback *)&v8 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

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
  _player = [(_UIFeedback *)self _player];
  v3 = _player != 0;

  return v3;
}

- (id)_debugDictionary
{
  v11[3] = *MEMORY[0x1E69E9840];
  v10[0] = @"feedbackType";
  type = [(_UIDiscreteFeedback *)self type];
  if ((type - 1) > 8)
  {
    v4 = @"Unknown";
  }

  else
  {
    v4 = off_1E7107788[type - 1];
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