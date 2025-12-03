@interface WFEntityPickerHostingControllerFactory
+ (id)makeHostingController:(id)controller maxRows:(int64_t)rows tapHandler:(id)handler;
@end

@implementation WFEntityPickerHostingControllerFactory

+ (id)makeHostingController:(id)controller maxRows:(int64_t)rows tapHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  controllerCopy = controller;
  v10 = sub_2749122C8(controllerCopy, rows, sub_2747F24F0, v8);

  return v10;
}

@end