@interface SVAudioSessionConfiguration
- (BOOL)isEqualToConfiguration:(id)configuration;
- (SVAudioSessionConfiguration)initWithCategory:(id)category mode:(id)mode policy:(unint64_t)policy;
@end

@implementation SVAudioSessionConfiguration

- (SVAudioSessionConfiguration)initWithCategory:(id)category mode:(id)mode policy:(unint64_t)policy
{
  categoryCopy = category;
  modeCopy = mode;
  v14.receiver = self;
  v14.super_class = SVAudioSessionConfiguration;
  v11 = [(SVAudioSessionConfiguration *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_category, category);
    objc_storeStrong(&v12->_mode, mode);
    v12->_routeSharingPolicy = policy;
  }

  return v12;
}

- (BOOL)isEqualToConfiguration:(id)configuration
{
  configurationCopy = configuration;
  category = [(SVAudioSessionConfiguration *)self category];
  category2 = [configurationCopy category];
  if ([category isEqualToString:category2])
  {
    mode = [(SVAudioSessionConfiguration *)self mode];
    mode2 = [configurationCopy mode];
    if ([mode isEqualToString:mode2])
    {
      routeSharingPolicy = [(SVAudioSessionConfiguration *)self routeSharingPolicy];
      v10 = routeSharingPolicy == [configurationCopy routeSharingPolicy];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end