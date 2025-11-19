@interface _TVProxyWeakContainer
+ (id)weakContainerWithObject:(id)a3;
- (id)object;
@end

@implementation _TVProxyWeakContainer

+ (id)weakContainerWithObject:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_TVProxyWeakContainer);
  [(_TVProxyWeakContainer *)v4 setObject:v3];

  return v4;
}

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end