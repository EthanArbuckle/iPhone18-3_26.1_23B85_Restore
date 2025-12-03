@interface RCWeakReferenceWrapper
+ (id)withReference:(id)reference;
- (id)weakReference;
@end

@implementation RCWeakReferenceWrapper

+ (id)withReference:(id)reference
{
  referenceCopy = reference;
  v4 = objc_alloc_init(RCWeakReferenceWrapper);
  [(RCWeakReferenceWrapper *)v4 setWeakReference:referenceCopy];

  return v4;
}

- (id)weakReference
{
  WeakRetained = objc_loadWeakRetained(&self->_weakReference);

  return WeakRetained;
}

@end