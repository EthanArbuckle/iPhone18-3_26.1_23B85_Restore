@interface RTCameraManager
+ (RTCameraManager)allocWithZone:(_NSZone *)a3;
- (void)_shutdownWithHandler:(id)a3;
@end

@implementation RTCameraManager

+ (RTCameraManager)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [RTCameraManager_Embedded allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___RTCameraManager;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
  }
}

- (void)_shutdownWithHandler:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0);
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