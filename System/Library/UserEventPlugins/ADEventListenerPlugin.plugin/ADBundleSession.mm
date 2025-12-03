@interface ADBundleSession
+ (void)initialize;
- (id)copyBasicInfoSinceLastCheckAsXpcObject;
- (id)initBundle:(id)bundle;
- (void)dealloc;
@end

@implementation ADBundleSession

+ (void)initialize
{
  if (!qword_4EA8)
  {
    v2[0] = &off_4DE8;
    v2[1] = &off_4E00;
    v3[0] = @"unknown";
    v3[1] = @"terminated";
    v2[2] = &off_4E18;
    v2[3] = &off_4E30;
    v3[2] = @"backgroundTaskSuspended";
    v3[3] = @"backgroundRunning";
    v2[4] = &off_4E48;
    v2[5] = &off_4E60;
    v3[4] = @"foregroundRunning";
    v3[5] = @"processServer";
    v2[6] = &off_4E78;
    v3[6] = @"foregroundRunningObscured";
    qword_4EA8 = [NSDictionary dictionaryWithObjects:v3 forKeys:v2 count:7];
  }
}

- (id)initBundle:(id)bundle
{
  v9.receiver = self;
  v9.super_class = ADBundleSession;
  v4 = [(ADBundleSession *)&v9 init];
  if (v4)
  {
    v4->_bundleID = bundle;
    v4->appstate.state = 1;
    v5 = [LSApplicationProxy applicationProxyForIdentifier:bundle];
    v4->_bundleVers = [v5 bundleVersion];
    v4->_shortVers = [v5 shortVersionString];
    v4->_adamID = [v5 itemID];
    v6 = gADEventListenerLogObject;
    if (os_log_type_enabled(gADEventListenerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      bundleID = [(ADBundleSession *)v4 bundleID];
      *buf = 138412290;
      v11 = bundleID;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Tracking %@", buf, 0xCu);
    }
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ADBundleSession;
  [(ADBundleSession *)&v3 dealloc];
}

- (id)copyBasicInfoSinceLastCheckAsXpcObject
{
  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3)
  {
    if ([(ADBundleSession *)self shortVers])
    {
      if ([(ADBundleSession *)self bundleVers])
      {
        bundleVers = [(ADBundleSession *)self bundleVers];
      }

      else
      {
        bundleVers = @"???";
      }

      bundleVers2 = [NSString stringWithFormat:@"%@ (%@)", bundleVers, [(ADBundleSession *)self shortVers]];
    }

    else
    {
      if (![(ADBundleSession *)self bundleVers])
      {
        v6 = @"???";
        goto LABEL_10;
      }

      bundleVers2 = [(ADBundleSession *)self bundleVers];
    }

    v6 = bundleVers2;
LABEL_10:
    xpc_dictionary_set_string(v3, "bundle_id", [(NSString *)[(ADBundleSession *)self bundleID] UTF8String]);
    xpc_dictionary_set_string(v3, "version", [(__CFString *)v6 UTF8String]);
    xpc_dictionary_set_int64(v3, "adam_id", [(NSNumber *)[(ADBundleSession *)self adamID] intValue]);
    xpc_dictionary_set_uuid(v3, "uuid", self->appstate.uuid);
    xpc_dictionary_set_int64(v3, "arch", self->appstate.arch);
  }

  return v3;
}

@end