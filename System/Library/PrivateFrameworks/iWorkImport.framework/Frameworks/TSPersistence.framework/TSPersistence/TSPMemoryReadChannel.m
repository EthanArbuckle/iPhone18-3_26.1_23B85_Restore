@interface TSPMemoryReadChannel
- (BOOL)isValid;
- (TSPMemoryReadChannel)init;
- (TSPMemoryReadChannel)initWithDispatchData:(id)a3;
- (TSPMemoryReadChannel)initWithNSData:(id)a3;
- (void)_close;
- (void)close;
- (void)readFromOffset:(int64_t)a3 length:(unint64_t)a4 handler:(id)a5;
- (void)readWithHandler:(id)a3;
@end

@implementation TSPMemoryReadChannel

- (TSPMemoryReadChannel)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPMemoryReadChannel init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPMemoryReadChannel.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 19, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s: %s", "Do not call method", "[TSPMemoryReadChannel init]");
  v14 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v13, v10, v12, 0);
  v15 = v14;

  objc_exception_throw(v14);
}

- (TSPMemoryReadChannel)initWithDispatchData:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = TSPMemoryReadChannel;
  v6 = [(TSPMemoryReadChannel *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatchData, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("TSPMemoryReadChannel.Read", v8);
    readQueue = v7->_readQueue;
    v7->_readQueue = v9;

    dispatch_queue_set_specific(v7->_readQueue, qword_280A508A8, qword_280A508A8, 0);
  }

  return v7;
}

- (TSPMemoryReadChannel)initWithNSData:(id)a3
{
  v4 = objc_msgSend_tsp_dispatchData(a3, a2, a3);
  v6 = objc_msgSend_initWithDispatchData_(self, v5, v4);

  return v6;
}

- (void)readFromOffset:(int64_t)a3 length:(unint64_t)a4 handler:(id)a5
{
  v8 = a5;
  readQueue = self->_readQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2769C1814;
  v11[3] = &unk_27A6E3238;
  v13 = a3;
  v14 = a4;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_async(readQueue, v11);
}

- (void)readWithHandler:(id)a3
{
  v4 = a3;
  readQueue = self->_readQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2769C1960;
  v7[3] = &unk_27A6E3260;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(readQueue, v7);
}

- (BOOL)isValid
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  readQueue = self->_readQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2769C1A38;
  v5[3] = &unk_27A6E3288;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(readQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)close
{
  v3 = qword_280A508A8;
  if (dispatch_get_specific(qword_280A508A8) == v3)
  {

    MEMORY[0x2821F9670](self, sel__close, v4);
  }

  else
  {
    readQueue = self->_readQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2769C1B0C;
    block[3] = &unk_27A6E32B0;
    block[4] = self;
    dispatch_sync(readQueue, block);
  }
}

- (void)_close
{
  dispatchData = self->_dispatchData;
  self->_dispatchData = 0;
}

@end