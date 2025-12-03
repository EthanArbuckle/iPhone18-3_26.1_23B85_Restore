@interface TRIPeekEnumerator
- (TRIPeekEnumerator)initWithEnumerator:(id)enumerator;
- (id)nextObject;
- (id)peekNextObject;
@end

@implementation TRIPeekEnumerator

- (TRIPeekEnumerator)initWithEnumerator:(id)enumerator
{
  enumeratorCopy = enumerator;
  v9.receiver = self;
  v9.super_class = TRIPeekEnumerator;
  v6 = [(TRIPeekEnumerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingEnum, enumerator);
  }

  return v7;
}

- (id)peekNextObject
{
  peek = self->_peek;
  if (!peek)
  {
    nextObject = [(NSEnumerator *)self->_underlyingEnum nextObject];
    v5 = self->_peek;
    self->_peek = nextObject;

    peek = self->_peek;
  }

  v6 = peek;

  return v6;
}

- (id)nextObject
{
  peek = self->_peek;
  if (peek)
  {
    nextObject = peek;
    v5 = self->_peek;
    self->_peek = 0;
  }

  else
  {
    nextObject = [(NSEnumerator *)self->_underlyingEnum nextObject];
  }

  return nextObject;
}

@end