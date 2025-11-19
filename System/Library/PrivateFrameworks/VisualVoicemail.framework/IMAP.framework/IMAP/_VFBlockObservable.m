@interface _VFBlockObservable
- (_VFBlockObservable)initWithBlock:(id)a3;
- (id)subscribe:(id)a3;
@end

@implementation _VFBlockObservable

- (_VFBlockObservable)initWithBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _VFBlockObservable;
  v5 = [(_VFBlockObservable *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x2743C3100](v4);
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

- (id)subscribe:(id)a3
{
  v3 = (*(self->_block + 2))();

  return v3;
}

@end