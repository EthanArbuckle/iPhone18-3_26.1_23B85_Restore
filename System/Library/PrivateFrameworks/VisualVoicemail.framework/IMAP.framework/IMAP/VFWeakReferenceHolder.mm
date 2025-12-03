@interface VFWeakReferenceHolder
+ (id)weakReferenceWithObject:(id)object;
- (id)_initWithObject:(id)object;
- (void)dealloc;
@end

@implementation VFWeakReferenceHolder

- (id)_initWithObject:(id)object
{
  v7.receiver = self;
  v7.super_class = VFWeakReferenceHolder;
  v4 = [(VFWeakReferenceHolder *)&v7 init];
  v5 = v4;
  if (v4)
  {
    if (object)
    {
      objc_storeWeak(&v4->_reference, object);
      objc_setAssociatedObject(object, sWeakReferenceKey, v5, 1);
    }

    else
    {

      return 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  objc_storeWeak(&self->_reference, 0);
  v3.receiver = self;
  v3.super_class = VFWeakReferenceHolder;
  [(VFWeakReferenceHolder *)&v3 dealloc];
}

+ (id)weakReferenceWithObject:(id)object
{
  os_unfair_lock_lock(&weakReferenceWithObject__lock);
  v4 = objc_getAssociatedObject(object, sWeakReferenceKey);
  if (!v4)
  {
    v4 = [[VFWeakReferenceHolder alloc] _initWithObject:object];
  }

  os_unfair_lock_unlock(&weakReferenceWithObject__lock);

  return v4;
}

@end