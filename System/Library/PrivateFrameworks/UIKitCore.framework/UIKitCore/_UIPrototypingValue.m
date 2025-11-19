@interface _UIPrototypingValue
- (NSValue)currentValue;
- (_UIPrototypingValue)initWithDictionary:(id)a3;
- (id)dictionaryRepresentation;
@end

@implementation _UIPrototypingValue

- (NSValue)currentValue
{
  currentValue = self->_currentValue;
  if (currentValue)
  {
    v3 = currentValue;
  }

  else
  {
    v3 = [(_UIPrototypingValue *)self defaultValue];
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_UIPrototypingValue *)self type];
  if (v4 > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E7127D90[v4];
  }

  [v3 setObject:v5 forKeyedSubscript:@"UIPrototypingValueType"];
  v6 = [(_UIPrototypingValue *)self name];
  [v3 setObject:v6 forKeyedSubscript:@"UIPrototypingValueName"];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47___UIPrototypingValue_dictionaryRepresentation__block_invoke;
  aBlock[3] = &unk_1E7127D70;
  v7 = v3;
  v18 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [(_UIPrototypingValue *)self defaultValue];
  v8[2](v8, @"UIPrototypingValueDefaultValue", v9);

  v10 = [(_UIPrototypingValue *)self minimumValue];
  v8[2](v8, @"UIPrototypingValueMinimumValue", v10);

  v11 = [(_UIPrototypingValue *)self maximumValue];
  v8[2](v8, @"UIPrototypingValueMaximumValue", v11);

  v12 = [(_UIPrototypingValue *)self currentValue];
  v8[2](v8, @"UIPrototypingValueCurrentValue", v12);

  v13 = MEMORY[0x1E696AD98];
  [(_UIPrototypingValue *)self stepSize];
  v14 = [v13 numberWithDouble:?];
  v8[2](v8, @"UIPrototypingValueStepSize", v14);

  v15 = v7;
  return v7;
}

- (_UIPrototypingValue)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"UIPrototypingValueType"];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"UIPrototypingValueName"];

    if (v6)
    {
      v18.receiver = self;
      v18.super_class = _UIPrototypingValue;
      v7 = [(_UIPrototypingValue *)&v18 init];
      if (v7)
      {
        v8 = [v4 objectForKeyedSubscript:@"UIPrototypingValueType"];
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
        v10 = [v4 objectForKeyedSubscript:@"UIPrototypingValueName"];
        [(_UIPrototypingValue *)v7 setName:v10];

        v11 = [v4 objectForKeyedSubscript:@"UIPrototypingValueDefaultValue"];
        [(_UIPrototypingValue *)v7 setDefaultValue:v11];

        v12 = [v4 objectForKeyedSubscript:@"UIPrototypingValueMinimumValue"];
        [(_UIPrototypingValue *)v7 setMinimumValue:v12];

        v13 = [v4 objectForKeyedSubscript:@"UIPrototypingValueMaximumValue"];
        [(_UIPrototypingValue *)v7 setMaximumValue:v13];

        v14 = [v4 objectForKeyedSubscript:@"UIPrototypingValueCurrentValue"];
        [(_UIPrototypingValue *)v7 setCurrentValue:v14];

        v15 = [v4 objectForKeyedSubscript:@"UIPrototypingValueStepSize"];
        [v15 floatValue];
        [(_UIPrototypingValue *)v7 setStepSize:v16];
      }

      self = v7;
      v5 = self;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end