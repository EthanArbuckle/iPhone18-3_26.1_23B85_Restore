@interface _TVProxyWeakContainer
+ (id)weakContainerWithObject:(id)object;
- (id)object;
@end

@implementation _TVProxyWeakContainer

+ (id)weakContainerWithObject:(id)object
{
  objectCopy = object;
  v4 = objc_alloc_init(_TVProxyWeakContainer);
  [(_TVProxyWeakContainer *)v4 setObject:objectCopy];

  return v4;
}

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end