@interface TSPDatabaseInputStream
- (TSPDatabaseInputStream)initWithBlob:(sqlite3_blob *)blob;
- (unint64_t)readToBuffer:(char *)buffer size:(unint64_t)size;
- (void)close;
- (void)dealloc;
- (void)readWithQueue:(id)queue handler:(id)handler;
- (void)seekToOffset:(int64_t)offset;
@end

@implementation TSPDatabaseInputStream

- (TSPDatabaseInputStream)initWithBlob:(sqlite3_blob *)blob
{
  v7.receiver = self;
  v7.super_class = TSPDatabaseInputStream;
  v4 = [(TSPDatabaseInputStream *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_blob = blob;
    v4->_length = sqlite3_blob_bytes(blob);
  }

  return v5;
}

- (void)dealloc
{
  [(TSPDatabaseInputStream *)self close];
  v3.receiver = self;
  v3.super_class = TSPDatabaseInputStream;
  [(TSPDatabaseInputStream *)&v3 dealloc];
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

- (void)readWithQueue:(id)queue handler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  length = self->_length;
  if (length)
  {
    v9 = 0;
    v10 = *MEMORY[0x277D85CB0];
    while (1)
    {
      v11 = length >= 0x2000 ? 0x2000 : length;
      v12 = malloc_type_malloc(v11, 0x1401C37uLL);
      if (!v12)
      {
        break;
      }

      v13 = v12;
      if (sqlite3_blob_read(self->_blob, v12, v11, v9))
      {
        free(v13);
        break;
      }

      v9 += v11;
      length -= v11;
      v14 = dispatch_data_create(v13, v11, queueCopy, v10);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __48__TSPDatabaseInputStream_readWithQueue_handler___block_invoke_2;
      block[3] = &unk_279D47298;
      v21 = handlerCopy;
      v22 = length;
      v20 = v14;
      v15 = v14;
      dispatch_sync(queueCopy, block);

      if (!length)
      {
        goto LABEL_14;
      }
    }

    v16 = v18;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v17 = __48__TSPDatabaseInputStream_readWithQueue_handler___block_invoke_3;
  }

  else
  {
    v16 = v23;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v17 = __48__TSPDatabaseInputStream_readWithQueue_handler___block_invoke;
  }

  v16[2] = v17;
  v16[3] = &unk_279D47270;
  v16[4] = handlerCopy;
  dispatch_async(queueCopy, v16);

LABEL_14:
}

void __48__TSPDatabaseInputStream_readWithQueue_handler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] tsp_errorWithCode:1];
  (*(v1 + 16))(v1, 1, MEMORY[0x277D85CC8], v2);
}

- (unint64_t)readToBuffer:(char *)buffer size:(unint64_t)size
{
  if (size >> 31)
  {
    [TSPDatabaseInputStream readToBuffer:size:];
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
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPDatabaseInputStream seekToOffset:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPDatabaseInputStream.m"];
    [currentHandler handleFailureInFunction:v6 file:v7 lineNumber:124 description:@"Requested seek to offset past end of stream"];

    LODWORD(offset) = self->_length;
  }

  self->_offset = offset;
}

- (void)readToBuffer:size:.cold.1()
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPDatabaseInputStream readToBuffer:size:]"];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPDatabaseInputStream.m"];
  [v2 handleFailureInFunction:v0 file:v1 lineNumber:97 description:@"Out-of-bounds type assignment was clamped to max"];
}

@end