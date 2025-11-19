@interface PRUISPosterChannelConfiguration
+ (id)channelConfigurationForURL:(id)a3 role:(id)a4 error:(id *)a5;
- (PRUISPosterChannelConfiguration)initWithURL:(id)a3 role:(id)a4 error:(id *)a5;
@end

@implementation PRUISPosterChannelConfiguration

+ (id)channelConfigurationForURL:(id)a3 role:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[a1 alloc] initWithURL:v9 role:v8 error:a5];

  return v10;
}

- (PRUISPosterChannelConfiguration)initWithURL:(id)a3 role:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v18.receiver = self;
  v18.super_class = PRUISPosterChannelConfiguration;
  v11 = [(PRUISPosterChannelConfiguration *)&v18 init];
  if (!v11)
  {
    goto LABEL_8;
  }

  if (![v9 checkResourceIsReachableAndReturnError:a5])
  {
LABEL_17:
    a5 = 0;
    goto LABEL_18;
  }

  if (([v9 pf_isDirectory] & 1) == 0)
  {
    if (!a5)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (([v9 pf_isWritable] & 1) == 0)
  {
    if (!a5)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (([v9 pf_isReadable] & 1) == 0)
  {
    if (!a5)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v12 = PFPosterRolesSupportedForCurrentDeviceClass();
  v13 = [v12 containsObject:v10];

  if ((v13 & 1) == 0)
  {
    if (!a5)
    {
      goto LABEL_18;
    }

LABEL_16:
    v16 = PFFunctionNameForAddress();
    *a5 = PFGeneralErrorFromObjectWithLocalizedFailureReason();

    goto LABEL_17;
  }

  objc_storeStrong(&v11->_URL, a3);
  objc_storeStrong(&v11->_role, a4);
  v14 = objc_opt_new();
  fileManager = v11->_fileManager;
  v11->_fileManager = v14;

  v11->_reapOptions = 2;
LABEL_8:
  a5 = v11;
LABEL_18:

  return a5;
}

@end