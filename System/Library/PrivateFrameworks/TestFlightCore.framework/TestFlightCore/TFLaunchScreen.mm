@interface TFLaunchScreen
- (TFLaunchScreen)initWithLockup:(id)a3 testerNotes:(id)a4 howToScreenshotSupportUrl:(id)a5;
@end

@implementation TFLaunchScreen

- (TFLaunchScreen)initWithLockup:(id)a3 testerNotes:(id)a4 howToScreenshotSupportUrl:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = TFLaunchScreen;
  v12 = [(TFLaunchScreen *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_lockup, a3);
    v14 = [v10 copy];
    testerNotes = v13->_testerNotes;
    v13->_testerNotes = v14;

    objc_storeStrong(&v13->_howToScreenshotSupportUrl, a5);
  }

  return v13;
}

@end