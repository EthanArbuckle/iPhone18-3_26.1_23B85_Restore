@interface TSPDatabaseInputStream
- (TSPDatabaseInputStream)initWithBlob:(sqlite3_blob *)a3;
- (unint64_t)readToBuffer:(char *)a3 size:(unint64_t)a4;
- (void)close;
- (void)dealloc;
- (void)readWithQueue:(id)a3 handler:(id)a4;
- (void)seekToOffset:(int64_t)a3;
@end

@implementation TSPDatabaseInputStream

- (TSPDatabaseInputStream)initWithBlob:(sqlite3_blob *)a3
{
  v7.receiver = self;
  v7.super_class = TSPDatabaseInputStream;
  v4 = [(TSPDatabaseInputStream *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_blob = a3;
    v4->_length = sqlite3_blob_bytes(a3);
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

- (void)readWithQueue:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
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
      v14 = dispatch_data_create(v13, v11, v6, v10);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __48__TSPDatabaseInputStream_readWithQueue_handler___block_invoke_2;
      block[3] = &unk_279D47298;
      v21 = v7;
      v22 = length;
      v20 = v14;
      v15 = v14;
      dispatch_sync(v6, block);

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
  v16[4] = v7;
  dispatch_async(v6, v16);

LABEL_14:
}

void __48__TSPDatabaseInputStream_readWithQueue_handler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] tsp_errorWithCode:1];
  (*(v1 + 16))(v1, 1, MEMORY[0x277D85CC8], v2);
}

- (unint64_t)readToBuffer:(char *)a3 size:(unint64_t)a4
{
  if (a4 >> 31)
  {
    [TSPDatabaseInputStream readToBuffer:size:];
    LODWORD(a4) = 0x7FFFFFFF;
  }

  if (a4 >= self->_length - self->_offset)
  {
    v6 = self->_length - self->_offset;
  }

  else
  {
    v6 = a4;
  }

  if (sqlite3_blob_read(self->_blob, a3, v6, self->_offset))
  {
    return 0;
  }

  self->_offset += v6;
  return v6;
}

- (void)seekToOffset:(int64_t)a3
{
  if (a3 > 0x7FFFFFFF || self->_length < a3)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPDatabaseInputStream seekToOffset:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPDatabaseInputStream.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:124 description:@"Requested seek to offset past end of stream"];

    LODWORD(a3) = self->_length;
  }

  self->_offset = a3;
}

- (void)readToBuffer:size:.cold.1()
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPDatabaseInputStream readToBuffer:size:]"];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPDatabaseInputStream.m"];
  [v2 handleFailureInFunction:v0 file:v1 lineNumber:97 description:@"Out-of-bounds type assignment was clamped to max"];
}

@end