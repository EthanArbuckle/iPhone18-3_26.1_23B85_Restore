@interface RCWeakReferenceWrapper
+ (id)withReference:(id)a3;
- (id)weakReference;
@end

@implementation RCWeakReferenceWrapper

+ (id)withReference:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(RCWeakReferenceWrapper);
  [(RCWeakReferenceWrapper *)v4 setWeakReference:v3];

  return v4;
}

- (id)weakReference
{
  WeakRetained = objc_loadWeakRetained(&self->_weakReference);

  return WeakRetained;
}

@end