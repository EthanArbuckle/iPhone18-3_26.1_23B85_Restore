@interface _PASKVOHandlerTask
- (NSObject)object;
@end

@implementation _PASKVOHandlerTask

- (NSObject)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end