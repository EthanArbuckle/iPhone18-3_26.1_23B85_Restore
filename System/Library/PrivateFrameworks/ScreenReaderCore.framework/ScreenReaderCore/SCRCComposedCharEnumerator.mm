@interface SCRCComposedCharEnumerator
- (SCRCComposedCharEnumerator)initWithString:(id)string;
- (id)allObjects;
- (id)nextObject;
@end

@implementation SCRCComposedCharEnumerator

- (SCRCComposedCharEnumerator)initWithString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = SCRCComposedCharEnumerator;
  v6 = [(SCRCComposedCharEnumerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_string, string);
  }

  return v7;
}

- (id)nextObject
{
  if (self->_done)
  {
    v2 = 0;
    goto LABEL_8;
  }

  if (self->_indexOfCurrentComposedCharacter < [(NSString *)self->_string length])
  {
    v2 = [(NSString *)self->_string scrc_composedCharacterAtIndex:?];
    originalLength = [v2 originalLength];
    if (originalLength)
    {
      self->_indexOfCurrentComposedCharacter += originalLength;
      goto LABEL_8;
    }
  }

  v2 = 0;
  self->_done = 1;
LABEL_8:

  return v2;
}

- (id)allObjects
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  nextObject = [(SCRCComposedCharEnumerator *)self nextObject];
  if (nextObject)
  {
    v5 = nextObject;
    do
    {
      [v3 addObject:v5];
      nextObject2 = [(SCRCComposedCharEnumerator *)self nextObject];

      v5 = nextObject2;
    }

    while (nextObject2);
  }

  self->_done = 0;
  self->_indexOfCurrentComposedCharacter = 0;

  return v3;
}

@end