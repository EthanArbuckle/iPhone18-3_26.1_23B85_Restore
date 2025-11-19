@interface VCSYChangeEnumerator
- (VCSYChangeEnumerator)initWithLazyArray:(id)a3;
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
    v4 = 0;
  }

  else
  {
    while (1)
    {
      v4 = [(NSEnumerator *)self->_enumerator nextObject];
      if (v4)
      {
        if (![MEMORY[0x277CFBA88] isDegenerate:v4])
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

  return v4;
}

- (VCSYChangeEnumerator)initWithLazyArray:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"VCSYChangeEnumerator.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"array"}];
  }

  v12.receiver = self;
  v12.super_class = VCSYChangeEnumerator;
  v6 = [(VCSYChangeEnumerator *)&v12 init];
  if (v6)
  {
    v7 = [v5 objectEnumerator];
    enumerator = v6->_enumerator;
    v6->_enumerator = v7;

    v6->_count = [v5 count];
    v6->_index = 0;
    v9 = v6;
  }

  return v6;
}

@end