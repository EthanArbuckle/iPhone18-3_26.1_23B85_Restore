@interface SKUIWeakReference
- (NSObject)object;
@end

@implementation SKUIWeakReference

- (NSObject)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end