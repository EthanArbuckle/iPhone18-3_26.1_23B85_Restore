@interface TULocked
- (TULocked)initWithObject:(id)object;
- (id)debugDescription;
- (id)description;
- (id)object;
- (void)performWhileLocked:(id)locked;
- (void)setObject:(id)object;
@end

@implementation TULocked

- (id)object
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_object;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = TULocked;
  v4 = [(TULocked *)&v8 description];
  v5 = [self->_object description];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (TULocked)initWithObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = TULocked;
  v6 = [(TULocked *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock = 0;
    objc_storeStrong(&v6->_object, object);
  }

  return v7;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = TULocked;
  v4 = [(TULocked *)&v8 description];
  v5 = [self->_object debugDescription];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)performWhileLocked:(id)locked
{
  lockedCopy = locked;
  os_unfair_recursive_lock_lock_with_options();
  lockedCopy[2](lockedCopy, self->_object);
  os_unfair_recursive_lock_unlock();
}

- (void)setObject:(id)object
{
  objectCopy = object;
  os_unfair_recursive_lock_lock_with_options();
  object = self->_object;
  self->_object = objectCopy;

  os_unfair_recursive_lock_unlock();
}

@end