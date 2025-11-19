@interface SCRCComposedCharEnumerator
- (SCRCComposedCharEnumerator)initWithString:(id)a3;
- (id)allObjects;
- (id)nextObject;
@end

@implementation SCRCComposedCharEnumerator

- (SCRCComposedCharEnumerator)initWithString:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SCRCComposedCharEnumerator;
  v6 = [(SCRCComposedCharEnumerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_string, a3);
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
    v4 = [v2 originalLength];
    if (v4)
    {
      self->_indexOfCurrentComposedCharacter += v4;
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
  v4 = [(SCRCComposedCharEnumerator *)self nextObject];
  if (v4)
  {
    v5 = v4;
    do
    {
      [v3 addObject:v5];
      v6 = [(SCRCComposedCharEnumerator *)self nextObject];

      v5 = v6;
    }

    while (v6);
  }

  self->_done = 0;
  self->_indexOfCurrentComposedCharacter = 0;

  return v3;
}

@end