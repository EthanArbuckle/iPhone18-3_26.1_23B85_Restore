@interface RTCameraManager
+ (RTCameraManager)allocWithZone:(_NSZone *)zone;
- (void)_shutdownWithHandler:(id)handler;
@end

@implementation RTCameraManager

+ (RTCameraManager)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [RTCameraManager_Embedded allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___RTCameraManager;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

- (void)_shutdownWithHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

void __53__RTCameraManager_Embedded_internalAddObserver_name___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleCameraPowerNotification:@"com.apple.isp.frontcamerapower"];
}

void __53__RTCameraManager_Embedded_internalAddObserver_name___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleCameraPowerNotification:@"com.apple.isp.backcamerapower"];
}

@end