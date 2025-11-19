@interface MISLaunchWarningQueryResult
- (MISLaunchWarningQueryResult)initWithWarningState:(int64_t)a3 withUserOverridden:(BOOL)a4 withKBURL:(id)a5;
@end

@implementation MISLaunchWarningQueryResult

- (MISLaunchWarningQueryResult)initWithWarningState:(int64_t)a3 withUserOverridden:(BOOL)a4 withKBURL:(id)a5
{
  v9 = a5;
  v17.receiver = self;
  v17.super_class = MISLaunchWarningQueryResult;
  v10 = [(MISLaunchWarningQueryResult *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->warningState = a3;
    v10->isUserOverridden = a4;
    if (a3)
    {
      objc_storeStrong(&v10->kbURL, a5);
      if (!v11->kbURL)
      {
        v12 = objc_alloc(MEMORY[0x1E695DFF8]);
        v14 = objc_msgSend_initWithString_(v12, v13, @"https://support.apple.com/116947");
        kbURL = v11->kbURL;
        v11->kbURL = v14;
      }
    }
  }

  return v11;
}

@end