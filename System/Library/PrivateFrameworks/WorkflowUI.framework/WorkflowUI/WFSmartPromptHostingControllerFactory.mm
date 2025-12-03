@interface WFSmartPromptHostingControllerFactory
+ (id)makeHostingController:(id)controller;
@end

@implementation WFSmartPromptHostingControllerFactory

+ (id)makeHostingController:(id)controller
{
  controllerCopy = controller;
  v4 = sub_27489154C(controllerCopy);

  return v4;
}

@end