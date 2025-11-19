@interface SESAtomicArray
- (SESAtomicArray)init;
- (id)firstWhere:(id)a3;
- (id)snapshot;
- (void)addObject:(id)a3;
- (void)removeAllObjects;
- (void)removeObject:(id)a3;
@end

@implementation SESAtomicArray

- (SESAtomicArray)init
{
  v7.receiver = self;
  v7.super_class = SESAtomicArray;
  v2 = [(SESAtomicArray *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_opt_new();
    objects = v3->_objects;
    v3->_objects = v4;
  }

  return v3;
}

- (id)snapshot
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_objects copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)addObject:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_objects addObject:v4];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObject:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_objects removeObject:v4];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeAllObjects
{
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_objects removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)firstWhere:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableArray *)self->_objects find:v4];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

@end