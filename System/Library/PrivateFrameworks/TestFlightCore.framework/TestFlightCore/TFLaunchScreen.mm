@interface TFLaunchScreen
- (TFLaunchScreen)initWithLockup:(id)lockup testerNotes:(id)notes howToScreenshotSupportUrl:(id)url;
@end

@implementation TFLaunchScreen

- (TFLaunchScreen)initWithLockup:(id)lockup testerNotes:(id)notes howToScreenshotSupportUrl:(id)url
{
  lockupCopy = lockup;
  notesCopy = notes;
  urlCopy = url;
  v17.receiver = self;
  v17.super_class = TFLaunchScreen;
  v12 = [(TFLaunchScreen *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_lockup, lockup);
    v14 = [notesCopy copy];
    testerNotes = v13->_testerNotes;
    v13->_testerNotes = v14;

    objc_storeStrong(&v13->_howToScreenshotSupportUrl, url);
  }

  return v13;
}

@end