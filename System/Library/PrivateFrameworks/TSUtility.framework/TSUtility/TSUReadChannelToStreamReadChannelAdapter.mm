@interface TSUReadChannelToStreamReadChannelAdapter
- (TSUReadChannelToStreamReadChannelAdapter)initWithReadChannel:(id)channel;
@end

@implementation TSUReadChannelToStreamReadChannelAdapter

- (TSUReadChannelToStreamReadChannelAdapter)initWithReadChannel:(id)channel
{
  channelCopy = channel;
  v9.receiver = self;
  v9.super_class = TSUReadChannelToStreamReadChannelAdapter;
  v6 = [(TSUReadChannelToStreamReadChannelAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_readChannel, channel);
  }

  return v7;
}

@end