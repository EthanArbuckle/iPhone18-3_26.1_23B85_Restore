@interface TSPDataRepReadChannel
- (TSPDataRepReadChannel)initWithRepresentation:(id)representation;
- (void)_close;
- (void)close;
- (void)dealloc;
- (void)readWithHandler:(id)handler;
@end

@implementation TSPDataRepReadChannel

- (TSPDataRepReadChannel)initWithRepresentation:(id)representation
{
  representationCopy = representation;
  v35.receiver = self;
  v35.super_class = TSPDataRepReadChannel;
  v6 = [(TSPDataRepReadChannel *)&v35 init];
  v7 = v6;
  if (!v6)
  {
LABEL_7:
    v25 = 0;
    goto LABEL_8;
  }

  objc_storeStrong(&v6->_representation, representation);
  v10 = objc_msgSend_inputStream(v7->_representation, v8, v9);
  inputStream = v7->_inputStream;
  v7->_inputStream = v10;

  if ((objc_msgSend_canSeek(v7->_inputStream, v12, v13) & 1) == 0)
  {
    objc_msgSend_close(v7->_inputStream, v14, v15);
    v18 = objc_msgSend_bufferedInputStream(v7->_representation, v16, v17);
    v19 = v7->_inputStream;
    v7->_inputStream = v18;

    if (!v7->_inputStream)
    {
      if (objc_msgSend_encodedLength(v7->_representation, v20, v21))
      {
        v27 = MEMORY[0x277D81150];
        v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSPDataRepReadChannel initWithRepresentation:]");
        v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataRepReadChannel.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 35, 0, "Could not create the buffered input stream.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
      }

      goto LABEL_7;
    }
  }

  v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v23 = dispatch_queue_create("TSPDataRepReadChannel.Read", v22);
  readQueue = v7->_readQueue;
  v7->_readQueue = v23;

  dispatch_queue_set_specific(v7->_readQueue, qword_280A50EB0, qword_280A50EB0, 0);
  v25 = v7;
LABEL_8:

  return v25;
}

- (void)dealloc
{
  objc_msgSend_close(self->_inputStream, a2, v2);
  v4.receiver = self;
  v4.super_class = TSPDataRepReadChannel;
  [(TSPDataRepReadChannel *)&v4 dealloc];
}

- (void)readWithHandler:(id)handler
{
  handlerCopy = handler;
  if (!self->_representation)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSPDataRepReadChannel readWithHandler:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataRepReadChannel.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 51, 0, "Stream is closed");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  readQueue = self->_readQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_276A4BD84;
  v15[3] = &unk_27A6E4C58;
  v15[4] = self;
  v16 = handlerCopy;
  v14 = handlerCopy;
  dispatch_async(readQueue, v15);
}

- (void)close
{
  v3 = qword_280A50EB0;
  if (dispatch_get_specific(qword_280A50EB0) == v3)
  {

    MEMORY[0x2821F9670](self, sel__close, v4);
  }

  else
  {
    readQueue = self->_readQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276A4C08C;
    block[3] = &unk_27A6E27F8;
    block[4] = self;
    dispatch_sync(readQueue, block);
  }
}

- (void)_close
{
  representation = self->_representation;
  self->_representation = 0;

  objc_msgSend_close(self->_inputStream, v4, v5);
  inputStream = self->_inputStream;
  self->_inputStream = 0;
}

@end