@interface PRUISPosterChannelConfiguration
+ (id)channelConfigurationForURL:(id)l role:(id)role error:(id *)error;
- (PRUISPosterChannelConfiguration)initWithURL:(id)l role:(id)role error:(id *)error;
@end

@implementation PRUISPosterChannelConfiguration

+ (id)channelConfigurationForURL:(id)l role:(id)role error:(id *)error
{
  roleCopy = role;
  lCopy = l;
  v10 = [[self alloc] initWithURL:lCopy role:roleCopy error:error];

  return v10;
}

- (PRUISPosterChannelConfiguration)initWithURL:(id)l role:(id)role error:(id *)error
{
  lCopy = l;
  roleCopy = role;
  v18.receiver = self;
  v18.super_class = PRUISPosterChannelConfiguration;
  v11 = [(PRUISPosterChannelConfiguration *)&v18 init];
  if (!v11)
  {
    goto LABEL_8;
  }

  if (![lCopy checkResourceIsReachableAndReturnError:error])
  {
LABEL_17:
    error = 0;
    goto LABEL_18;
  }

  if (([lCopy pf_isDirectory] & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (([lCopy pf_isWritable] & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (([lCopy pf_isReadable] & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v12 = PFPosterRolesSupportedForCurrentDeviceClass();
  v13 = [v12 containsObject:roleCopy];

  if ((v13 & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_18;
    }

LABEL_16:
    v16 = PFFunctionNameForAddress();
    *error = PFGeneralErrorFromObjectWithLocalizedFailureReason();

    goto LABEL_17;
  }

  objc_storeStrong(&v11->_URL, l);
  objc_storeStrong(&v11->_role, role);
  v14 = objc_opt_new();
  fileManager = v11->_fileManager;
  v11->_fileManager = v14;

  v11->_reapOptions = 2;
LABEL_8:
  error = v11;
LABEL_18:

  return error;
}

@end