@interface MCTypeInput
- (CGPoint)point;
- (MCTypeInput)initWithCharacters:(id)a3 point:(CGPoint)a4 nearbyKeys:(id)a5 sourceKeyboardState:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)shortDescriptionWithLeadingString:(id)a3;
@end

@implementation MCTypeInput

- (CGPoint)point
{
  x = self->_point.x;
  y = self->_point.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)shortDescriptionWithLeadingString:(id)a3
{
  v4 = [MEMORY[0x277CCAB68] string];
  v5 = [(MCTypeInput *)self characters];
  [(MCTypeInput *)self point];
  v7 = v6;
  [(MCTypeInput *)self point];
  v9 = v8;
  v10 = [(MCTypeInput *)self nearbyKeys];
  v11 = [v10 count];
  v12 = [(MCKeyboardInput *)self sourceKeyboardState];
  [v4 appendFormat:@"%@, (%.2f, %.2f), %lu, %@", v5, v7, v9, v11, v12];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = MCTypeInput;
  v5 = [(MCKeyboardInput *)&v9 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSString *)self->_characters copyWithZone:a3];
    v7 = *(v5 + 4);
    *(v5 + 4) = v6;

    *(v5 + 3) = self->_point;
    objc_storeStrong(v5 + 5, self->_nearbyKeys);
  }

  return v5;
}

- (MCTypeInput)initWithCharacters:(id)a3 point:(CGPoint)a4 nearbyKeys:(id)a5 sourceKeyboardState:(id)a6
{
  y = a4.y;
  x = a4.x;
  v11 = a3;
  v12 = a5;
  v17.receiver = self;
  v17.super_class = MCTypeInput;
  v13 = [(MCKeyboardInput *)&v17 initWithSourceKeyboardState:a6];
  if (v13)
  {
    if (v11)
    {
      v14 = [v11 copy];
    }

    else
    {
      v14 = &stru_283FDFAF8;
    }

    objc_storeStrong(&v13->_characters, v14);
    if (v11)
    {
    }

    v13->_point.x = x;
    v13->_point.y = y;
    if (v12)
    {
      v15 = [v12 copy];
    }

    else
    {
      v15 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong(&v13->_nearbyKeys, v15);
    if (v12)
    {
    }
  }

  return v13;
}

@end