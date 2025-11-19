@interface VFXEventHandler
- (VFXEventHandler)init;
- (void)dealloc;
@end

@implementation VFXEventHandler

- (VFXEventHandler)init
{
  v3.receiver = self;
  v3.super_class = VFXEventHandler;
  result = [(VFXEventHandler *)&v3 init];
  if (result)
  {
    *&result->_enableFreeCamera = 257;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = VFXEventHandler;
  [(VFXEventHandler *)&v2 dealloc];
}

@end