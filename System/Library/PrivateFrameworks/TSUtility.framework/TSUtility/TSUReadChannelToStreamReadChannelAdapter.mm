@interface TSUReadChannelToStreamReadChannelAdapter
- (TSUReadChannelToStreamReadChannelAdapter)initWithReadChannel:(id)a3;
@end

@implementation TSUReadChannelToStreamReadChannelAdapter

- (TSUReadChannelToStreamReadChannelAdapter)initWithReadChannel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TSUReadChannelToStreamReadChannelAdapter;
  v6 = [(TSUReadChannelToStreamReadChannelAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_readChannel, a3);
  }

  return v7;
}

@end