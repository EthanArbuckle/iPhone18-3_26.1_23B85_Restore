@interface TSPCGDataConsumer
+ (CGDataConsumer)newCGDataConsumerForWriteChannel:(id)channel;
- (TSPCGDataConsumer)init;
- (TSPCGDataConsumer)initWithWriteChannel:(id)channel;
- (unint64_t)putBytes:(const void *)bytes count:(unint64_t)count;
- (void)_close;
- (void)close;
@end

@implementation TSPCGDataConsumer

+ (CGDataConsumer)newCGDataConsumerForWriteChannel:(id)channel
{
  channelCopy = channel;
  v4 = [TSPCGDataConsumer alloc];
  v6 = objc_msgSend_initWithWriteChannel_(v4, v5, channelCopy);
  v7 = v6;
  if (v6)
  {
    v8 = CGDataConsumerCreate(v6, off_2885C59B8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (TSPCGDataConsumer)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPCGDataConsumer init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCGDataConsumer.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 39, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPCGDataConsumer init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPCGDataConsumer)initWithWriteChannel:(id)channel
{
  channelCopy = channel;
  v11.receiver = self;
  v11.super_class = TSPCGDataConsumer;
  v6 = [(TSPCGDataConsumer *)&v11 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("TSPCGDataConsumer.Write", v7);
    v9 = *(v6 + 1);
    *(v6 + 1) = v8;

    dispatch_queue_set_specific(*(v6 + 1), qword_280A521C0, qword_280A521C0, 0);
    objc_storeStrong(v6 + 2, channel);
  }

  return v6;
}

- (unint64_t)putBytes:(const void *)bytes count:(unint64_t)count
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  writeQueue = self->_writeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276AE6ED0;
  block[3] = &unk_27A6E7088;
  block[4] = self;
  block[5] = &v12;
  block[7] = bytes;
  block[8] = count;
  block[6] = &v8;
  dispatch_sync(writeQueue, block);
  v5 = 0;
  if (*(v13 + 24) == 1)
  {
    v5 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v5;
}

- (void)close
{
  v3 = qword_280A521C0;
  if (dispatch_get_specific(qword_280A521C0) == v3)
  {

    MEMORY[0x2821F9670](self, sel__close, v4);
  }

  else
  {
    writeQueue = self->_writeQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276AE7184;
    block[3] = &unk_27A6E27F8;
    block[4] = self;
    dispatch_sync(writeQueue, block);
  }
}

- (void)_close
{
  objc_msgSend_close(self->_writeChannel, a2, v2);
  if (self->_error)
  {
    if (*MEMORY[0x277D81408] != -1)
    {
      sub_276BD6A60();
    }
  }
}

@end