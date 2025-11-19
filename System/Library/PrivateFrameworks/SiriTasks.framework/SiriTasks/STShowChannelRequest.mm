@interface STShowChannelRequest
- (STShowChannelRequest)initWithCoder:(id)a3;
- (id)_initWithChannel:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STShowChannelRequest

- (STShowChannelRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STShowChannelRequest;
  v5 = [(AFSiriRequest *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_channel"];
    channel = v5->_channel;
    v5->_channel = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STShowChannelRequest;
  v4 = a3;
  [(AFSiriRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_channel forKey:{@"_channel", v5.receiver, v5.super_class}];
}

- (id)_initWithChannel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = STShowChannelRequest;
  v6 = [(AFSiriRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_channel, a3);
  }

  return v7;
}

@end