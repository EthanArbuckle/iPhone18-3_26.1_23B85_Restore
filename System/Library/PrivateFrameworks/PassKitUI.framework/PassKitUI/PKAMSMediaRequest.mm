@interface PKAMSMediaRequest
- (PKAMSMediaRequestMusicItem)musicRequest;
- (id)_initWithType:(unint64_t)type artworkConfiguration:(id)configuration;
@end

@implementation PKAMSMediaRequest

- (id)_initWithType:(unint64_t)type artworkConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = PKAMSMediaRequest;
  v8 = [(PKAMSMediaRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    objc_storeStrong(&v8->_artworkConfiguration, configuration);
  }

  return v9;
}

- (PKAMSMediaRequestMusicItem)musicRequest
{
  if (self->_type > 2)
  {
    selfCopy = 0;
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end