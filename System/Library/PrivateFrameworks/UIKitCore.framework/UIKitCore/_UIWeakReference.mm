@interface _UIWeakReference
+ (id)weakReferenceWrappingObject:(id)object;
- (_UIWeakReference)initWithObject:(id)object;
- (id)copyWithZone:(_NSZone *)zone;
- (id)object;
@end

@implementation _UIWeakReference

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

- (_UIWeakReference)initWithObject:(id)object
{
  objectCopy = object;
  v8.receiver = self;
  v8.super_class = _UIWeakReference;
  v5 = [(_UIWeakReference *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_object, objectCopy);
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_UIWeakReference alloc];
  WeakRetained = objc_loadWeakRetained(&self->_object);
  v6 = [(_UIWeakReference *)v4 initWithObject:WeakRetained];

  return v6;
}

+ (id)weakReferenceWrappingObject:(id)object
{
  if (object)
  {
    objectCopy = object;
    v4 = [[_UIWeakReference alloc] initWithObject:objectCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end