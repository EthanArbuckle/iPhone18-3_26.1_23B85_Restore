@interface DeviceOrientationObserver
- (void)deviceDidRotateWithNotification:(id)notification;
@end

@implementation DeviceOrientationObserver

- (void)deviceDidRotateWithNotification:(id)notification
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765E10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  if (notification)
  {
    sub_20C1325E4();
    v7 = sub_20C132614();
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  }

  else
  {
    v8 = sub_20C132614();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  }

  sub_20B8E34A8();

  sub_20B8E36F8(v6);
}

@end