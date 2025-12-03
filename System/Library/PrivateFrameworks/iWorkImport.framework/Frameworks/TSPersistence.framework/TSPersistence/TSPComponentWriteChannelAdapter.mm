@interface TSPComponentWriteChannelAdapter
- (TSPComponentWriteChannelAdapter)initWithChannel:(id)channel handler:(id)handler;
- (void)_close;
- (void)close;
- (void)writeData:(id)data;
@end

@implementation TSPComponentWriteChannelAdapter

- (TSPComponentWriteChannelAdapter)initWithChannel:(id)channel handler:(id)handler
{
  channelCopy = channel;
  handlerCopy = handler;
  if (channelCopy)
  {
    v24.receiver = self;
    v24.super_class = TSPComponentWriteChannelAdapter;
    v10 = [(TSPComponentWriteChannelAdapter *)&v24 init];
    if (v10)
    {
      v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v12 = dispatch_queue_create("TSPComponentWriteChannelAdapter.Write", v11);
      v13 = *(v10 + 1);
      *(v10 + 1) = v12;

      dispatch_queue_set_specific(*(v10 + 1), qword_280A510A0, qword_280A510A0, 0);
      v14 = _Block_copy(handlerCopy);
      v15 = *(v10 + 3);
      *(v10 + 3) = v14;

      objc_storeStrong(v10 + 2, channel);
    }
  }

  else
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPComponentWriteChannelAdapter initWithChannel:handler:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/NSData_TSPersistence.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 254, 0, "Invalid parameter not satisfying: %{public}s", "channel");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
    v10 = 0;
  }

  return v10;
}

- (void)writeData:(id)data
{
  dataCopy = data;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276A58CA4;
  v7[3] = &unk_27A6E2898;
  v7[4] = self;
  v8 = dataCopy;
  v6 = dataCopy;
  dispatch_async(queue, v7);
}

- (void)close
{
  v3 = qword_280A510A0;
  if (dispatch_get_specific(qword_280A510A0) == v3)
  {

    MEMORY[0x2821F9670](self, sel__close, v4);
  }

  else
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276A58F50;
    block[3] = &unk_27A6E27F8;
    block[4] = self;
    dispatch_sync(queue, block);
  }
}

- (void)_close
{
  error = self->_error;
  (*(self->_handler + 2))();
  objc_msgSend_close(self->_channel, v4, v5);
  channel = self->_channel;
  self->_channel = 0;
}

@end