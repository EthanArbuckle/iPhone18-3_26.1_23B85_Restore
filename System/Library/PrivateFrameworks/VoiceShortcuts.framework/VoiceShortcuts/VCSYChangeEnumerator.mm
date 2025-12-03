@interface VCSYChangeEnumerator
- (VCSYChangeEnumerator)initWithLazyArray:(id)array;
- (id)nextObject;
@end

@implementation VCSYChangeEnumerator

- (id)nextObject
{
  index = self->_index;
  self->_index = index + 1;
  if (index >= self->_count)
  {
LABEL_5:
    nextObject = 0;
  }

  else
  {
    while (1)
    {
      nextObject = [(NSEnumerator *)self->_enumerator nextObject];
      if (nextObject)
      {
        if (![MEMORY[0x277CFBA88] isDegenerate:nextObject])
        {
          break;
        }
      }

      v5 = self->_index;
      self->_index = v5 + 1;
      if (v5 >= self->_count)
      {
        goto LABEL_5;
      }
    }
  }

  return nextObject;
}

- (VCSYChangeEnumerator)initWithLazyArray:(id)array
{
  arrayCopy = array;
  if (!arrayCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCSYChangeEnumerator.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"array"}];
  }

  v12.receiver = self;
  v12.super_class = VCSYChangeEnumerator;
  v6 = [(VCSYChangeEnumerator *)&v12 init];
  if (v6)
  {
    objectEnumerator = [arrayCopy objectEnumerator];
    enumerator = v6->_enumerator;
    v6->_enumerator = objectEnumerator;

    v6->_count = [arrayCopy count];
    v6->_index = 0;
    v9 = v6;
  }

  return v6;
}

@end