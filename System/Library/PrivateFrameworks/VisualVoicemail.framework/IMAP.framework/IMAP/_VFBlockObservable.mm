@interface _VFBlockObservable
- (_VFBlockObservable)initWithBlock:(id)block;
- (id)subscribe:(id)subscribe;
@end

@implementation _VFBlockObservable

- (_VFBlockObservable)initWithBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = _VFBlockObservable;
  v5 = [(_VFBlockObservable *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x2743C3100](blockCopy);
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

- (id)subscribe:(id)subscribe
{
  v3 = (*(self->_block + 2))();

  return v3;
}

@end