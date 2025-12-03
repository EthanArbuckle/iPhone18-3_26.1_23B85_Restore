@interface PKEnumerator
- (PKEnumerator)init;
- (PKEnumerator)initWithNSEnumerator:(id)enumerator;
- (id)nextObject;
- (void)setFilter:(id)filter;
@end

@implementation PKEnumerator

- (PKEnumerator)init
{
  v8.receiver = self;
  v8.super_class = PKEnumerator;
  v2 = [(PKEnumerator *)&v8 init];
  v3 = v2;
  if (v2)
  {
    underlyingEnumerator = v2->_underlyingEnumerator;
    v2->_underlyingEnumerator = 0;

    v5 = +[PKEnumerator defaultFilter];
    filter = v3->_filter;
    v3->_filter = v5;
  }

  return v3;
}

- (PKEnumerator)initWithNSEnumerator:(id)enumerator
{
  enumeratorCopy = enumerator;
  v11.receiver = self;
  v11.super_class = PKEnumerator;
  v6 = [(PKEnumerator *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingEnumerator, enumerator);
    v8 = +[PKEnumerator defaultFilter];
    filter = v7->_filter;
    v7->_filter = v8;
  }

  return v7;
}

- (void)setFilter:(id)filter
{
  filterCopy = filter;
  v8 = filterCopy;
  if (!filterCopy)
  {
    filterCopy = +[PKEnumerator defaultFilter];
  }

  v5 = MEMORY[0x1C6960190](filterCopy);
  filter = self->_filter;
  self->_filter = v5;

  v7 = v8;
  if (!v8)
  {

    v7 = 0;
  }
}

- (id)nextObject
{
  nextObject = 0;
  while (1)
  {
    v4 = nextObject;
    underlyingEnumerator = [(PKEnumerator *)self underlyingEnumerator];
    nextObject = [underlyingEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    filter = [(PKEnumerator *)self filter];
    v7 = (filter)[2](filter, nextObject);

    if (v7)
    {
      v8 = nextObject;
      goto LABEL_6;
    }
  }

  v8 = 0;
LABEL_6:

  return v8;
}

@end