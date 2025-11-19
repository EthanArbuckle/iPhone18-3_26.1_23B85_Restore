@interface TSPIOHandlerWriteChannelAdapter
- (TSPIOHandlerWriteChannelAdapter)initWithHandler:(id)a3;
@end

@implementation TSPIOHandlerWriteChannelAdapter

- (TSPIOHandlerWriteChannelAdapter)initWithHandler:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TSPIOHandlerWriteChannelAdapter;
  v5 = [(TSPIOHandlerWriteChannelAdapter *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    handler = v5->_handler;
    v5->_handler = v6;
  }

  return v5;
}

@end