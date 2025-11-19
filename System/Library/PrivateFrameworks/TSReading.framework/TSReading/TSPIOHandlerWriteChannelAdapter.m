@interface TSPIOHandlerWriteChannelAdapter
- (TSPIOHandlerWriteChannelAdapter)initWithQueue:(id)a3 handler:(id)a4;
- (void)close;
- (void)writeData:(id)a3;
@end

@implementation TSPIOHandlerWriteChannelAdapter

- (TSPIOHandlerWriteChannelAdapter)initWithQueue:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = TSPIOHandlerWriteChannelAdapter;
  v9 = [(TSPIOHandlerWriteChannelAdapter *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a3);
    v11 = _Block_copy(v8);
    handler = v10->_handler;
    v10->_handler = v11;
  }

  return v10;
}

- (void)writeData:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__TSPIOHandlerWriteChannelAdapter_writeData___block_invoke;
  v7[3] = &unk_279D46A58;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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