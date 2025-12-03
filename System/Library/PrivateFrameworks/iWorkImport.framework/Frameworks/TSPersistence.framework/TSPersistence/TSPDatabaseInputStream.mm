@interface TSPDatabaseInputStream
- (TSPDatabaseInputStream)initWithBlob:(sqlite3_blob *)blob;
- (unint64_t)readToBuffer:(char *)buffer size:(unint64_t)size;
- (void)close;
- (void)dealloc;
- (void)readWithHandler:(id)handler;
- (void)seekToOffset:(int64_t)offset;
@end

@implementation TSPDatabaseInputStream

- (TSPDatabaseInputStream)initWithBlob:(sqlite3_blob *)blob
{
  v9.receiver = self;
  v9.super_class = TSPDatabaseInputStream;
  v4 = [(TSPDatabaseInputStream *)&v9 init];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("TSPDatabaseInputStream.Read", v5);
    readQueue = v4->_readQueue;
    v4->_readQueue = v6;

    v4->_blob = blob;
    v4->_length = sqlite3_blob_bytes(blob);
  }

  return v4;
}

- (void)dealloc
{
  objc_msgSend_close(self, a2, v2);
  v4.receiver = self;
  v4.super_class = TSPDatabaseInputStream;
  [(TSPDatabaseInputStream *)&v4 dealloc];
}

- (void)close
{
  blob = self->_blob;
  if (blob)
  {
    sqlite3_blob_close(blob);
    self->_blob = 0;
  }
}

- (void)readWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  length = self->_length;
  if (length)
  {
    v7 = 0;
    v8 = *MEMORY[0x277D85CB0];
    while (1)
    {
      if (length >= 0x2000)
      {
        v9 = 0x2000;
      }

      else
      {
        v9 = length;
      }

      v10 = malloc_type_malloc(v9, 0x1EDFB232uLL);
      if (!v10)
      {
        v19 = 7;
        goto LABEL_13;
      }

      v11 = v10;
      v12 = sqlite3_blob_read(self->_blob, v10, v9, v7);
      if (v12)
      {
        break;
      }

      v7 += v9;
      length -= v9;
      v13 = dispatch_data_create(v11, v9, self->_readQueue, v8);
      readQueue = self->_readQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_276A5BA94;
      block[3] = &unk_27A6E4EB8;
      v25 = v5;
      v26 = length;
      v24 = v13;
      v15 = v13;
      dispatch_sync(readQueue, block);

      if (!length)
      {
        goto LABEL_15;
      }
    }

    v19 = v12;
    free(v11);
LABEL_13:
    v16 = self->_readQueue;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_276A5BAB8;
    v20[3] = &unk_27A6E4EE0;
    v22 = v19;
    v17 = &v21;
    v21 = v5;
    v18 = v20;
  }

  else
  {
    v16 = self->_readQueue;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_276A5BA74;
    v27[3] = &unk_27A6E4E90;
    v17 = &v28;
    v28 = handlerCopy;
    v18 = v27;
  }

  dispatch_async(v16, v18);

LABEL_15:
}

- (unint64_t)readToBuffer:(char *)buffer size:(unint64_t)size
{
  if (size >> 31)
  {
    sub_276BD4E24(self, a2);
    LODWORD(size) = 0x7FFFFFFF;
  }

  if (size >= self->_length - self->_offset)
  {
    sizeCopy = self->_length - self->_offset;
  }

  else
  {
    sizeCopy = size;
  }

  if (sqlite3_blob_read(self->_blob, buffer, sizeCopy, self->_offset))
  {
    return 0;
  }

  self->_offset += sizeCopy;
  return sizeCopy;
}

- (void)seekToOffset:(int64_t)offset
{
  if (offset > 0x7FFFFFFF || self->_length < offset)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDatabaseInputStream seekToOffset:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDatabaseInputStream.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 116, 0, "Requested seek to offset past end of stream");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
    LODWORD(offset) = self->_length;
  }

  self->_offset = offset;
}

@end