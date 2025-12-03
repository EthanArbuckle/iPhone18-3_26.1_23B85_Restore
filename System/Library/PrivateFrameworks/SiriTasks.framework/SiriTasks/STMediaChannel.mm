@interface STMediaChannel
- (STMediaChannel)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STMediaChannel

- (STMediaChannel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = STMediaChannel;
  v5 = [(STSiriModelObject *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_callSign"];
    callSign = v5->_callSign;
    v5->_callSign = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_channelIdentifier"];
    channelIdentifier = v5->_channelIdentifier;
    v5->_channelIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    name = v5->_name;
    v5->_name = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_streamUrl"];
    streamUrl = v5->_streamUrl;
    v5->_streamUrl = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STMediaChannel;
  coderCopy = coder;
  [(STSiriModelObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_callSign forKey:{@"_callSign", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_channelIdentifier forKey:@"_channelIdentifier"];
  [coderCopy encodeObject:self->_name forKey:@"_name"];
  [coderCopy encodeObject:self->_streamUrl forKey:@"_streamUrl"];
}

@end