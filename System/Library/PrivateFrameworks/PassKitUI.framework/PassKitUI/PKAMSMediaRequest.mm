@interface PKAMSMediaRequest
- (PKAMSMediaRequestMusicItem)musicRequest;
- (id)_initWithType:(unint64_t)a3 artworkConfiguration:(id)a4;
@end

@implementation PKAMSMediaRequest

- (id)_initWithType:(unint64_t)a3 artworkConfiguration:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PKAMSMediaRequest;
  v8 = [(PKAMSMediaRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    objc_storeStrong(&v8->_artworkConfiguration, a4);
  }

  return v9;
}

- (PKAMSMediaRequestMusicItem)musicRequest
{
  if (self->_type > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = self;
  }

  return v3;
}

@end