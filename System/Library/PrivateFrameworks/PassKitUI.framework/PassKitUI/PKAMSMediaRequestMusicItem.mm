@interface PKAMSMediaRequestMusicItem
- (PKAMSMediaRequestMusicItem)initWithType:(unint64_t)type musicIDs:(id)ds artworkConfiguration:(id)configuration;
@end

@implementation PKAMSMediaRequestMusicItem

- (PKAMSMediaRequestMusicItem)initWithType:(unint64_t)type musicIDs:(id)ds artworkConfiguration:(id)configuration
{
  dsCopy = ds;
  configurationCopy = configuration;
  if (dsCopy && [dsCopy count])
  {
    v15.receiver = self;
    v15.super_class = PKAMSMediaRequestMusicItem;
    v11 = [(PKAMSMediaRequest *)&v15 _initWithType:type artworkConfiguration:configurationCopy];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 3, ds);
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end