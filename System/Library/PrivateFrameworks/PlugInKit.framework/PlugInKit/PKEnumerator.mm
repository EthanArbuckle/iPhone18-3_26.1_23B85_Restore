@interface PKEnumerator
- (PKEnumerator)init;
- (PKEnumerator)initWithNSEnumerator:(id)a3;
- (id)nextObject;
- (void)setFilter:(id)a3;
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

- (PKEnumerator)initWithNSEnumerator:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PKEnumerator;
  v6 = [(PKEnumerator *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingEnumerator, a3);
    v8 = +[PKEnumerator defaultFilter];
    filter = v7->_filter;
    v7->_filter = v8;
  }

  return v7;
}

- (void)setFilter:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (!v4)
  {
    v4 = +[PKEnumerator defaultFilter];
  }

  v5 = MEMORY[0x1C6960190](v4);
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
  v3 = 0;
  while (1)
  {
    v4 = v3;
    v5 = [(PKEnumerator *)self underlyingEnumerator];
    v3 = [v5 nextObject];

    if (!v3)
    {
      break;
    }

    v6 = [(PKEnumerator *)self filter];
    v7 = (v6)[2](v6, v3);

    if (v7)
    {
      v8 = v3;
      goto LABEL_6;
    }
  }

  v8 = 0;
LABEL_6:

  return v8;
}

@end