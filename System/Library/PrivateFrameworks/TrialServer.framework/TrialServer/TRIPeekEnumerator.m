@interface TRIPeekEnumerator
- (TRIPeekEnumerator)initWithEnumerator:(id)a3;
- (id)nextObject;
- (id)peekNextObject;
@end

@implementation TRIPeekEnumerator

- (TRIPeekEnumerator)initWithEnumerator:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TRIPeekEnumerator;
  v6 = [(TRIPeekEnumerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingEnum, a3);
  }

  return v7;
}

- (id)peekNextObject
{
  peek = self->_peek;
  if (!peek)
  {
    v4 = [(NSEnumerator *)self->_underlyingEnum nextObject];
    v5 = self->_peek;
    self->_peek = v4;

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
    v4 = peek;
    v5 = self->_peek;
    self->_peek = 0;
  }

  else
  {
    v4 = [(NSEnumerator *)self->_underlyingEnum nextObject];
  }

  return v4;
}

@end