@interface OFWeakReferenceHolder
+ (id)weakReferenceHolderWithObject:(id)object;
- (OFWeakReferenceHolder)initWithObject:(id)object;
- (void)dealloc;
@end

@implementation OFWeakReferenceHolder

+ (id)weakReferenceHolderWithObject:(id)object
{
  v3 = [[OFWeakReferenceHolder alloc] initWithObject:object];

  return v3;
}

- (OFWeakReferenceHolder)initWithObject:(id)object
{
  v7.receiver = self;
  v7.super_class = OFWeakReferenceHolder;
  v4 = [(OFWeakReferenceHolder *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_object, object);
  }

  return v5;
}

- (void)dealloc
{
  objc_storeWeak(&self->_object, 0);
  v3.receiver = self;
  v3.super_class = OFWeakReferenceHolder;
  [(OFWeakReferenceHolder *)&v3 dealloc];
}

@end