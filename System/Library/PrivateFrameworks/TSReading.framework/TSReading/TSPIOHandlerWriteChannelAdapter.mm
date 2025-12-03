@interface TSPIOHandlerWriteChannelAdapter
- (TSPIOHandlerWriteChannelAdapter)initWithQueue:(id)queue handler:(id)handler;
- (void)close;
- (void)writeData:(id)data;
@end

@implementation TSPIOHandlerWriteChannelAdapter

- (TSPIOHandlerWriteChannelAdapter)initWithQueue:(id)queue handler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = TSPIOHandlerWriteChannelAdapter;
  v9 = [(TSPIOHandlerWriteChannelAdapter *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    v11 = _Block_copy(handlerCopy);
    handler = v10->_handler;
    v10->_handler = v11;
  }

  return v10;
}

- (void)writeData:(id)data
{
  dataCopy = data;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__TSPIOHandlerWriteChannelAdapter_writeData___block_invoke;
  v7[3] = &unk_279D46A58;
  v7[4] = self;
  v8 = dataCopy;
  v6 = dataCopy;
  dispatch_async(queue, v7);
}

- (void)close
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__TSPIOHandlerWriteChannelAdapter_close__block_invoke;
  block[3] = &unk_279D469B8;
  block[4] = self;
  dispatch_async(queue, block);
}

@end