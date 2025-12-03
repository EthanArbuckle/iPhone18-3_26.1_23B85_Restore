@interface SKWeakReference
- (BOOL)isEqual:(id)equal;
- (SKWeakReference)initWithObject:(id)object;
- (id)object;
- (unint64_t)hash;
@end

@implementation SKWeakReference

- (unint64_t)hash
{
  object = [(SKWeakReference *)self object];
  v3 = [object hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    object = [equalCopy object];
    object2 = [(SKWeakReference *)self object];
    v7 = object == object2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (SKWeakReference)initWithObject:(id)object
{
  objectCopy = object;
  v8.receiver = self;
  v8.super_class = SKWeakReference;
  v5 = [(SKWeakReference *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SKWeakReference *)v5 setObject:objectCopy];
  }

  return v6;
}

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end