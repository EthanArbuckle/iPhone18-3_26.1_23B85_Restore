@interface MISLaunchWarningQueryResult
- (MISLaunchWarningQueryResult)initWithWarningState:(int64_t)state withUserOverridden:(BOOL)overridden withKBURL:(id)l;
@end

@implementation MISLaunchWarningQueryResult

- (MISLaunchWarningQueryResult)initWithWarningState:(int64_t)state withUserOverridden:(BOOL)overridden withKBURL:(id)l
{
  lCopy = l;
  v17.receiver = self;
  v17.super_class = MISLaunchWarningQueryResult;
  v10 = [(MISLaunchWarningQueryResult *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->warningState = state;
    v10->isUserOverridden = overridden;
    if (state)
    {
      objc_storeStrong(&v10->kbURL, l);
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