@interface STMediaChannel
- (STMediaChannel)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STMediaChannel

- (STMediaChannel)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = STMediaChannel;
  v5 = [(STSiriModelObject *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_callSign"];
    callSign = v5->_callSign;
    v5->_callSign = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_channelIdentifier"];
    channelIdentifier = v5->_channelIdentifier;
    v5->_channelIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    name = v5->_name;
    v5->_name = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_streamUrl"];
    streamUrl = v5->_streamUrl;
    v5->_streamUrl = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STMediaChannel;
  v4 = a3;
  [(STSiriModelObject *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_callSign forKey:{@"_callSign", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_channelIdentifier forKey:@"_channelIdentifier"];
  [v4 encodeObject:self->_name forKey:@"_name"];
  [v4 encodeObject:self->_streamUrl forKey:@"_streamUrl"];
}

@end