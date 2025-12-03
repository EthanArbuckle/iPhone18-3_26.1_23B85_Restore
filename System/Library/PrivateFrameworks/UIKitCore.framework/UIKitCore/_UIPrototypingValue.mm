@interface _UIPrototypingValue
- (NSValue)currentValue;
- (_UIPrototypingValue)initWithDictionary:(id)dictionary;
- (id)dictionaryRepresentation;
@end

@implementation _UIPrototypingValue

- (NSValue)currentValue
{
  currentValue = self->_currentValue;
  if (currentValue)
  {
    defaultValue = currentValue;
  }

  else
  {
    defaultValue = [(_UIPrototypingValue *)self defaultValue];
  }

  return defaultValue;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  type = [(_UIPrototypingValue *)self type];
  if (type > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E7127D90[type];
  }

  [dictionary setObject:v5 forKeyedSubscript:@"UIPrototypingValueType"];
  name = [(_UIPrototypingValue *)self name];
  [dictionary setObject:name forKeyedSubscript:@"UIPrototypingValueName"];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47___UIPrototypingValue_dictionaryRepresentation__block_invoke;
  aBlock[3] = &unk_1E7127D70;
  v7 = dictionary;
  v18 = v7;
  v8 = _Block_copy(aBlock);
  defaultValue = [(_UIPrototypingValue *)self defaultValue];
  v8[2](v8, @"UIPrototypingValueDefaultValue", defaultValue);

  minimumValue = [(_UIPrototypingValue *)self minimumValue];
  v8[2](v8, @"UIPrototypingValueMinimumValue", minimumValue);

  maximumValue = [(_UIPrototypingValue *)self maximumValue];
  v8[2](v8, @"UIPrototypingValueMaximumValue", maximumValue);

  currentValue = [(_UIPrototypingValue *)self currentValue];
  v8[2](v8, @"UIPrototypingValueCurrentValue", currentValue);

  v13 = MEMORY[0x1E696AD98];
  [(_UIPrototypingValue *)self stepSize];
  v14 = [v13 numberWithDouble:?];
  v8[2](v8, @"UIPrototypingValueStepSize", v14);

  v15 = v7;
  return v7;
}

- (_UIPrototypingValue)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  selfCopy = [dictionaryCopy objectForKeyedSubscript:@"UIPrototypingValueType"];
  if (selfCopy)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"UIPrototypingValueName"];

    if (v6)
    {
      v18.receiver = self;
      v18.super_class = _UIPrototypingValue;
      v7 = [(_UIPrototypingValue *)&v18 init];
      if (v7)
      {
        v8 = [dictionaryCopy objectForKeyedSubscript:@"UIPrototypingValueType"];
        if ([v8 isEqualToString:@"UIPrototypingValueTypeInteger"])
        {
          v9 = 0;
        }

        else if ([v8 isEqualToString:@"UIPrototypingValueTypeFloat"])
        {
          v9 = 1;
        }

        else if ([v8 isEqualToString:@"UIPrototypingValueTypeBool"])
        {
          v9 = 2;
        }

        else
        {
          v9 = 0;
        }

        [(_UIPrototypingValue *)v7 setType:v9];
        v10 = [dictionaryCopy objectForKeyedSubscript:@"UIPrototypingValueName"];
        [(_UIPrototypingValue *)v7 setName:v10];

        v11 = [dictionaryCopy objectForKeyedSubscript:@"UIPrototypingValueDefaultValue"];
        [(_UIPrototypingValue *)v7 setDefaultValue:v11];

        v12 = [dictionaryCopy objectForKeyedSubscript:@"UIPrototypingValueMinimumValue"];
        [(_UIPrototypingValue *)v7 setMinimumValue:v12];

        v13 = [dictionaryCopy objectForKeyedSubscript:@"UIPrototypingValueMaximumValue"];
        [(_UIPrototypingValue *)v7 setMaximumValue:v13];

        v14 = [dictionaryCopy objectForKeyedSubscript:@"UIPrototypingValueCurrentValue"];
        [(_UIPrototypingValue *)v7 setCurrentValue:v14];

        v15 = [dictionaryCopy objectForKeyedSubscript:@"UIPrototypingValueStepSize"];
        [v15 floatValue];
        [(_UIPrototypingValue *)v7 setStepSize:v16];
      }

      self = v7;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

@end