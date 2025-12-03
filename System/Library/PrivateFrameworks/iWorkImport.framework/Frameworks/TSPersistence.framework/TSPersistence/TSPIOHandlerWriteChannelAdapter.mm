@interface TSPIOHandlerWriteChannelAdapter
- (TSPIOHandlerWriteChannelAdapter)initWithHandler:(id)handler;
@end

@implementation TSPIOHandlerWriteChannelAdapter

- (TSPIOHandlerWriteChannelAdapter)initWithHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = TSPIOHandlerWriteChannelAdapter;
  v5 = [(TSPIOHandlerWriteChannelAdapter *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(handlerCopy);
    handler = v5->_handler;
    v5->_handler = v6;
  }

  return v5;
}

@end