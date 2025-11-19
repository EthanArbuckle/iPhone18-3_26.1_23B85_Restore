@interface OFWeakReferenceHolder
+ (id)weakReferenceHolderWithObject:(id)a3;
- (OFWeakReferenceHolder)initWithObject:(id)a3;
- (void)dealloc;
@end

@implementation OFWeakReferenceHolder

+ (id)weakReferenceHolderWithObject:(id)a3
{
  v3 = [[OFWeakReferenceHolder alloc] initWithObject:a3];

  return v3;
}

- (OFWeakReferenceHolder)initWithObject:(id)a3
{
  v7.receiver = self;
  v7.super_class = OFWeakReferenceHolder;
  v4 = [(OFWeakReferenceHolder *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_object, a3);
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