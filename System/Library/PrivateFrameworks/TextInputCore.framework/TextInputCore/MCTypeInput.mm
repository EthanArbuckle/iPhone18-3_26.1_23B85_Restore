@interface MCTypeInput
- (CGPoint)point;
- (MCTypeInput)initWithCharacters:(id)characters point:(CGPoint)point nearbyKeys:(id)keys sourceKeyboardState:(id)state;
- (id)copyWithZone:(_NSZone *)zone;
- (id)shortDescriptionWithLeadingString:(id)string;
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

- (id)shortDescriptionWithLeadingString:(id)string
{
  string = [MEMORY[0x277CCAB68] string];
  characters = [(MCTypeInput *)self characters];
  [(MCTypeInput *)self point];
  v7 = v6;
  [(MCTypeInput *)self point];
  v9 = v8;
  nearbyKeys = [(MCTypeInput *)self nearbyKeys];
  v11 = [nearbyKeys count];
  sourceKeyboardState = [(MCKeyboardInput *)self sourceKeyboardState];
  [string appendFormat:@"%@, (%.2f, %.2f), %lu, %@", characters, v7, v9, v11, sourceKeyboardState];

  return string;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = MCTypeInput;
  v5 = [(MCKeyboardInput *)&v9 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSString *)self->_characters copyWithZone:zone];
    v7 = *(v5 + 4);
    *(v5 + 4) = v6;

    *(v5 + 3) = self->_point;
    objc_storeStrong(v5 + 5, self->_nearbyKeys);
  }

  return v5;
}

- (MCTypeInput)initWithCharacters:(id)characters point:(CGPoint)point nearbyKeys:(id)keys sourceKeyboardState:(id)state
{
  y = point.y;
  x = point.x;
  charactersCopy = characters;
  keysCopy = keys;
  v17.receiver = self;
  v17.super_class = MCTypeInput;
  v13 = [(MCKeyboardInput *)&v17 initWithSourceKeyboardState:state];
  if (v13)
  {
    if (charactersCopy)
    {
      v14 = [charactersCopy copy];
    }

    else
    {
      v14 = &stru_283FDFAF8;
    }

    objc_storeStrong(&v13->_characters, v14);
    if (charactersCopy)
    {
    }

    v13->_point.x = x;
    v13->_point.y = y;
    if (keysCopy)
    {
      v15 = [keysCopy copy];
    }

    else
    {
      v15 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong(&v13->_nearbyKeys, v15);
    if (keysCopy)
    {
    }
  }

  return v13;
}

@end