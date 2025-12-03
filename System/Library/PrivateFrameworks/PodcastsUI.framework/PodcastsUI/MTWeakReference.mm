@interface MTWeakReference
- (MTWeakReference)initWithObject:(id)object;
- (id)object;
@end

@implementation MTWeakReference

- (MTWeakReference)initWithObject:(id)object
{
  objectCopy = object;
  v8.receiver = self;
  v8.super_class = MTWeakReference;
  v5 = [(MTWeakReference *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MTWeakReference *)v5 setObject:objectCopy];
  }

  return v6;
}

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end