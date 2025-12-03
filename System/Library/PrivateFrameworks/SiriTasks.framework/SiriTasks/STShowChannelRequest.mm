@interface STShowChannelRequest
- (STShowChannelRequest)initWithCoder:(id)coder;
- (id)_initWithChannel:(id)channel;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STShowChannelRequest

- (STShowChannelRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = STShowChannelRequest;
  v5 = [(AFSiriRequest *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_channel"];
    channel = v5->_channel;
    v5->_channel = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STShowChannelRequest;
  coderCopy = coder;
  [(AFSiriRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_channel forKey:{@"_channel", v5.receiver, v5.super_class}];
}

- (id)_initWithChannel:(id)channel
{
  channelCopy = channel;
  v9.receiver = self;
  v9.super_class = STShowChannelRequest;
  v6 = [(AFSiriRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_channel, channel);
  }

  return v7;
}

@end