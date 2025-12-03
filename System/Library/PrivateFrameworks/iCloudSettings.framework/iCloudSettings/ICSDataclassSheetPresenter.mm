@interface ICSDataclassSheetPresenter
+ (void)presentDeviceEnrollmentSheetWithAccountManager:(id)manager presenter:(id)presenter;
- (ICSDataclassSheetPresenter)init;
@end

@implementation ICSDataclassSheetPresenter

+ (void)presentDeviceEnrollmentSheetWithAccountManager:(id)manager presenter:(id)presenter
{
  managerCopy = manager;
  presenterCopy = presenter;
  sub_27589C864(managerCopy, presenterCopy);
}

- (ICSDataclassSheetPresenter)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for iCloudDataClasssheetPresenter();
  return [(ICSDataclassSheetPresenter *)&v3 init];
}

@end