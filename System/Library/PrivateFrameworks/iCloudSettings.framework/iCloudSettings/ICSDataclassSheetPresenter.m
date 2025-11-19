@interface ICSDataclassSheetPresenter
+ (void)presentDeviceEnrollmentSheetWithAccountManager:(id)a3 presenter:(id)a4;
- (ICSDataclassSheetPresenter)init;
@end

@implementation ICSDataclassSheetPresenter

+ (void)presentDeviceEnrollmentSheetWithAccountManager:(id)a3 presenter:(id)a4
{
  v5 = a3;
  v6 = a4;
  sub_27589C864(v5, v6);
}

- (ICSDataclassSheetPresenter)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for iCloudDataClasssheetPresenter();
  return [(ICSDataclassSheetPresenter *)&v3 init];
}

@end