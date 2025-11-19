@interface WFEntityPickerHostingControllerFactory
+ (id)makeHostingController:(id)a3 maxRows:(int64_t)a4 tapHandler:(id)a5;
@end

@implementation WFEntityPickerHostingControllerFactory

+ (id)makeHostingController:(id)a3 maxRows:(int64_t)a4 tapHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = a3;
  v10 = sub_2749122C8(v9, a4, sub_2747F24F0, v8);

  return v10;
}

@end