@interface TFAppLockup
- (TFAppLockup)initWithTitle:(id)a3 subtitles:(id)a4 iconArtwork:(id)a5 iconNeedsMask:(BOOL)a6;
@end

@implementation TFAppLockup

- (TFAppLockup)initWithTitle:(id)a3 subtitles:(id)a4 iconArtwork:(id)a5 iconNeedsMask:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v19.receiver = self;
  v19.super_class = TFAppLockup;
  v13 = [(TFAppLockup *)&v19 init];
  if (v13)
  {
    v14 = [v10 copy];
    title = v13->_title;
    v13->_title = v14;

    v16 = [v11 copy];
    subtitles = v13->_subtitles;
    v13->_subtitles = v16;

    objc_storeStrong(&v13->_iconArtwork, a5);
    v13->_iconNeedsMask = a6;
  }

  return v13;
}

@end