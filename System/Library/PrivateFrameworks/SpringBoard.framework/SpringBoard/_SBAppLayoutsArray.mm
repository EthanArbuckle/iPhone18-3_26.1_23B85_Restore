@interface _SBAppLayoutsArray
- (_SBAppLayoutsArray)init;
- (_SBAppLayoutsArray)initWithCoder:(id)coder;
- (_SBAppLayoutsArray)initWithObjects:(const void *)objects count:(unint64_t)count;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)indexOfObject:(id)object;
@end

@implementation _SBAppLayoutsArray

- (_SBAppLayoutsArray)init
{
  v6.receiver = self;
  v6.super_class = _SBAppLayoutsArray;
  v2 = [(_SBAppLayoutsArray *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    backing = v2->_backing;
    v2->_backing = v3;
  }

  return v2;
}

- (_SBAppLayoutsArray)initWithObjects:(const void *)objects count:(unint64_t)count
{
  v10.receiver = self;
  v10.super_class = _SBAppLayoutsArray;
  v6 = [(_SBAppLayoutsArray *)&v10 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:objects count:count];
    backing = v6->_backing;
    v6->_backing = v7;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(NSMutableArray *)self->_backing copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(NSMutableArray *)self->_backing mutableCopy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (unint64_t)indexOfObject:(id)object
{
  objectCopy = object;
  v5 = [(NSMutableArray *)self->_backing indexOfObject:objectCopy];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = objectCopy;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __36___SBAppLayoutsArray_indexOfObject___block_invoke;
    v8[3] = &unk_2783AE1A0;
    v9 = v6;
    v5 = [(_SBAppLayoutsArray *)self indexOfObjectPassingTest:v8];
  }

  return v5;
}

- (_SBAppLayoutsArray)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _SBAppLayoutsArray;
  v5 = [(_SBAppLayoutsArray *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCoder:coderCopy];
    backing = v5->_backing;
    v5->_backing = v6;
  }

  return v5;
}

@end