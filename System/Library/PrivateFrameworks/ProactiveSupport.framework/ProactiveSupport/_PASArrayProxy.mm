@interface _PASArrayProxy
- (_PASArrayProxy)initWithCoder:(id)a3;
- (_PASArrayProxy)initWithObjects:(const void *)a3 count:(unint64_t)a4;
- (id)_pas_unproxy;
- (id)objectAtIndex:(unint64_t)a3;
- (unint64_t)count;
@end

@implementation _PASArrayProxy

- (unint64_t)count
{
  v3 = objc_autoreleasePoolPush();
  v4 = (*(self->_countBlock + 2))();
  objc_autoreleasePoolPop(v3);
  return v4;
}

- (id)objectAtIndex:(unint64_t)a3
{
  v4 = objc_autoreleasePoolPush();
  v5 = (*(self->_objectAtIndexBlock + 2))();
  objc_autoreleasePoolPop(v4);

  return v5;
}

- (id)_pas_unproxy
{
  v4.receiver = self;
  v4.super_class = _PASArrayProxy;
  v2 = [(_PASArrayProxy *)&v4 copyWithZone:0];

  return v2;
}

- (_PASArrayProxy)initWithCoder:(id)a3
{
  result = a3;
  __break(1u);
  return result;
}

- (_PASArrayProxy)initWithObjects:(const void *)a3 count:(unint64_t)a4
{
  v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:a3 count:a4];

  return v5;
}

@end