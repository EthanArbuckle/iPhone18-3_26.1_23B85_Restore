@interface PMDeviceListController
+ (id)makeUIViewControllerWithDeviceSharingAvailability:(id)a3;
- (PMDeviceListController)init;
@end

@implementation PMDeviceListController

+ (id)makeUIViewControllerWithDeviceSharingAvailability:(id)a3
{
  v4 = objc_allocWithZone(MEMORY[0x277D75D28]);
  v5 = a3;
  v6 = [v4 init];
  v7 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2668, &unk_21CBB4360));
  v8 = v5;
  v9 = sub_21CB827D4();
  [v6 setView_];

  return v6;
}

- (PMDeviceListController)init
{
  v3.receiver = self;
  v3.super_class = PMDeviceListController;
  return [(PMDeviceListController *)&v3 init];
}

@end