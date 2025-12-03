@interface TSUZipWriter
- (TSURandomWriteChannel)writeChannel;
- (TSUZipWriter)init;
- (id)centralFileHeaderDataForEntry:(id)entry;
- (id)endOfCentralDirectoryDataWithOffset:(int64_t)offset size:(int64_t)size;
- (id)localFileHeaderDataForEntry:(id)entry;
- (void)addData:(id)data;
- (void)addDataImpl:(id)impl;
- (void)beginEntryWithName:(id)name size:(unint64_t)size CRC:(unsigned int)c;
- (void)beginEntryWithNameImpl:(id)impl size:(unint64_t)size CRC:(unsigned int)c;
- (void)closeWithQueue:(id)queue completion:(id)completion;
- (void)enumerateEntriesUsingBlock:(id)block;
- (void)finishEntry;
- (void)flushEntryData;
- (void)handleWriteError:(id)error;
- (void)initEntryTime;
- (void)writeCentralDirectory;
- (void)writeData:(id)data;
- (void)writeData:(id)data offset:(int64_t)offset;
- (void)writeEntryWithName:(id)name size:(unint64_t)size CRC:(unsigned int)c fromReadChannel:(id)channel completion:(id)completion;
@end

@implementation TSUZipWriter

- (TSUZipWriter)init
{
  v11.receiver = self;
  v11.super_class = TSUZipWriter;
  v2 = [(TSUZipWriter *)&v11 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    entries = v2->_entries;
    v2->_entries = array;

    v5 = [MEMORY[0x277CBEB58] set];
    entryNames = v2->_entryNames;
    v2->_entryNames = v5;

    v7 = dispatch_queue_create("TSUZipWriter.Write", 0);
    writeQueue = v2->_writeQueue;
    v2->_writeQueue = v7;

    [(TSUZipWriter *)v2 initEntryTime];
    v9 = v2;
  }

  return v2;
}

- (void)beginEntryWithName:(id)name size:(unint64_t)size CRC:(unsigned int)c
{
  nameCopy = name;
  writeQueue = self->_writeQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__TSUZipWriter_beginEntryWithName_size_CRC___block_invoke;
  v11[3] = &unk_279D66760;
  v11[4] = self;
  v12 = nameCopy;
  sizeCopy = size;
  cCopy = c;
  v10 = nameCopy;
  dispatch_async(writeQueue, v11);
}

- (void)beginEntryWithNameImpl:(id)impl size:(unint64_t)size CRC:(unsigned int)c
{
  v5 = *&c;
  implCopy = impl;
  if (!self->_error)
  {
    v17 = implCopy;
    [(TSUZipWriter *)self finishEntry];
    if ([(NSMutableSet *)self->_entryNames containsObject:v17])
    {
      v9 = +[TSUAssertionHandler currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipWriter beginEntryWithNameImpl:size:CRC:]"];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUZipWriter.m"];
      [v9 handleFailureInFunction:v10 file:v11 lineNumber:90 description:{@"Already have an entry with name: %@", v17}];
    }

    else
    {
      v12 = objc_alloc_init(TSUZipWriterEntry);
      currentEntry = self->_currentEntry;
      self->_currentEntry = v12;

      [(TSUZipWriterEntry *)self->_currentEntry setName:v17];
      [(TSUZipWriterEntry *)self->_currentEntry setSize:size];
      [(TSUZipWriterEntry *)self->_currentEntry setOffset:self->_currentOffset];
      self->_calculateSize = size == 0;
      self->_calculateCRC = v5 == 0;
      if (!v5)
      {
        v5 = crc32(0, 0, 0);
      }

      [(TSUZipWriterEntry *)self->_currentEntry setCRC:v5];
      v9 = [(TSUZipWriter *)self localFileHeaderDataForEntry:self->_currentEntry];
      if (self->_calculateSize || self->_calculateCRC)
      {
        objc_storeStrong(&self->_localFileHeaderData, v9);
        v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      }

      else
      {
        [(TSUZipWriter *)self writeData:v9];
        localFileHeaderData = self->_localFileHeaderData;
        self->_localFileHeaderData = 0;

        v14 = 0;
      }

      entryDatas = self->_entryDatas;
      self->_entryDatas = v14;

      self->_entryDataSize = 0;
    }

    implCopy = v17;
  }
}

- (void)addData:(id)data
{
  dataCopy = data;
  writeQueue = self->_writeQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __24__TSUZipWriter_addData___block_invoke;
  v7[3] = &unk_279D665D8;
  v7[4] = self;
  v8 = dataCopy;
  v6 = dataCopy;
  dispatch_async(writeQueue, v7);
}

- (void)addDataImpl:(id)impl
{
  implCopy = impl;
  v5 = implCopy;
  if (self->_error)
  {
    goto LABEL_11;
  }

  size = dispatch_data_get_size(implCopy);
  entryDatas = self->_entryDatas;
  if (entryDatas)
  {
    localFileHeaderData = self->_localFileHeaderData;
    if (dispatch_data_get_size(localFileHeaderData) + size + self->_entryDataSize < 0x40000)
    {
      [(NSMutableArray *)entryDatas addObject:v5];
      self->_entryDataSize += size;
      goto LABEL_7;
    }

    [(TSUZipWriter *)self writeData:localFileHeaderData];
    v9 = self->_localFileHeaderData;
    self->_localFileHeaderData = 0;

    [(TSUZipWriter *)self flushEntryData];
  }

  [(TSUZipWriter *)self writeData:v5];
LABEL_7:
  if (self->_calculateSize)
  {
    [(TSUZipWriterEntry *)self->_currentEntry setSize:[(TSUZipWriterEntry *)self->_currentEntry size]+ size];
  }

  if (self->_calculateCRC)
  {
    applier[0] = MEMORY[0x277D85DD0];
    applier[1] = 3221225472;
    applier[2] = __28__TSUZipWriter_addDataImpl___block_invoke;
    applier[3] = &unk_279D66788;
    applier[4] = self;
    dispatch_data_apply(v5, applier);
  }

LABEL_11:
}

- (void)flushEntryData
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_entryDatas;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(TSUZipWriter *)self writeData:*(*(&v9 + 1) + 8 * v7++), v9];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  entryDatas = self->_entryDatas;
  self->_entryDatas = 0;

  self->_entryDataSize = 0;
}

- (void)finishEntry
{
  currentEntry = self->_currentEntry;
  if (currentEntry)
  {
    if (self->_calculateSize || self->_calculateCRC)
    {
      v4 = [(TSUZipWriter *)self localFileHeaderDataForEntry:?];
      if (self->_entryDatas)
      {
        [(TSUZipWriter *)self writeData:v4];
        localFileHeaderData = self->_localFileHeaderData;
        self->_localFileHeaderData = 0;

        [(TSUZipWriter *)self flushEntryData];
      }

      else
      {
        [(TSUZipWriter *)self writeData:v4 offset:[(TSUZipWriterEntry *)self->_currentEntry offset]];
      }

      currentEntry = self->_currentEntry;
    }

    [(NSMutableArray *)self->_entries addObject:currentEntry];
    entryNames = self->_entryNames;
    name = [(TSUZipWriterEntry *)self->_currentEntry name];
    [(NSMutableSet *)entryNames addObject:name];

    v8 = self->_currentEntry;
    self->_currentEntry = 0;
  }
}

- (void)writeEntryWithName:(id)name size:(unint64_t)size CRC:(unsigned int)c fromReadChannel:(id)channel completion:(id)completion
{
  nameCopy = name;
  channelCopy = channel;
  completionCopy = completion;
  if (!channelCopy)
  {
    v15 = +[TSUAssertionHandler currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipWriter writeEntryWithName:size:CRC:fromReadChannel:completion:]"];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUZipWriter.m"];
    [v15 handleFailureInFunction:v16 file:v17 lineNumber:223 description:{@"invalid nil value for '%s'", "readChannel"}];
  }

  writeQueue = self->_writeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__TSUZipWriter_writeEntryWithName_size_CRC_fromReadChannel_completion___block_invoke;
  block[3] = &unk_279D667D8;
  block[4] = self;
  v23 = nameCopy;
  v25 = completionCopy;
  sizeCopy = size;
  cCopy = c;
  v24 = channelCopy;
  v19 = completionCopy;
  v20 = channelCopy;
  v21 = nameCopy;
  dispatch_async(writeQueue, block);
}

void __71__TSUZipWriter_writeEntryWithName_size_CRC_fromReadChannel_completion___block_invoke(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 32) + 72));
  [*(a1 + 32) beginEntryWithNameImpl:*(a1 + 40) size:*(a1 + 64) CRC:*(a1 + 72)];
  v2 = dispatch_queue_create("TSUZipWriter.Copy", 0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__TSUZipWriter_writeEntryWithName_size_CRC_fromReadChannel_completion___block_invoke_2;
  v4[3] = &unk_279D667B0;
  v4[4] = *(a1 + 32);
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v3 readWithQueue:v2 handler:v4];
}

void __71__TSUZipWriter_writeEntryWithName_size_CRC_fromReadChannel_completion___block_invoke_2(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  v10 = a3;
  [*(a1 + 32) handleWriteError:a4];
  if (v10 && (v7 = *(a1 + 32), !v7[11]))
  {
    [v7 addDataImpl:v10];
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else if (!a2)
  {
    goto LABEL_7;
  }

  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, *(v9 + 88) == 0);
    v9 = *(a1 + 32);
  }

  dispatch_resume(*(v9 + 72));
LABEL_7:
}

- (void)closeWithQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  writeQueue = self->_writeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__TSUZipWriter_closeWithQueue_completion___block_invoke;
  block[3] = &unk_279D66518;
  block[4] = self;
  v12 = queueCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = queueCopy;
  dispatch_async(writeQueue, block);
}

void __42__TSUZipWriter_closeWithQueue_completion___block_invoke(id *a1)
{
  v2 = a1[4];
  if (v2[11])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__TSUZipWriter_closeWithQueue_completion___block_invoke_2;
    block[3] = &unk_279D66388;
    v3 = &v14;
    v4 = a1[5];
    v5 = a1[6];
    block[4] = a1[4];
    v14 = v5;
    dispatch_async(v4, block);
  }

  else
  {
    [v2 finishEntry];
    [a1[4] writeCentralDirectory];
    v6 = [a1[4] writeChannel];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __42__TSUZipWriter_closeWithQueue_completion___block_invoke_3;
    v9[3] = &unk_279D66800;
    v3 = &v12;
    v12 = a1[6];
    v7 = a1[5];
    v8 = a1[4];
    v10 = v7;
    v11 = v8;
    [v6 addBarrier:v9];
  }
}

void __42__TSUZipWriter_closeWithQueue_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __42__TSUZipWriter_closeWithQueue_completion___block_invoke_4;
    v9 = &unk_279D66388;
    v4 = v2;
    v10 = *(a1 + 40);
    v11 = v4;
    dispatch_async(v3, &v6);
  }

  v5 = [*(a1 + 40) writeChannel];
  [v5 close];
}

- (void)writeCentralDirectory
{
  v16 = *MEMORY[0x277D85DE8];
  currentOffset = self->_currentOffset;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_entries;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(TSUZipWriter *)self centralFileHeaderDataForEntry:*(*(&v11 + 1) + 8 * v8), v11];
        [(TSUZipWriter *)self writeData:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  currentOffset = [(TSUZipWriter *)self endOfCentralDirectoryDataWithOffset:currentOffset size:self->_currentOffset - currentOffset];
  [(TSUZipWriter *)self writeData:currentOffset];
}

- (id)localFileHeaderDataForEntry:(id)entry
{
  entryCopy = entry;
  name = [entryCopy name];
  uTF8String = [name UTF8String];

  v7 = strlen(uTF8String);
  if (v7 >= 0x10000)
  {
    v8 = +[TSUAssertionHandler currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipWriter localFileHeaderDataForEntry:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUZipWriter.m"];
    [v8 handleFailureInFunction:v9 file:v10 lineNumber:312 description:@"Zip entry name is too long"];
  }

  v11 = malloc_type_malloc(v7 + 30, 0x16D521E6uLL);
  *v11 = 67324752;
  v11[1] = 20;
  *(v11 + 4) = 0;
  *(v11 + 5) = self->_entryTime;
  *(v11 + 6) = self->_entryDate;
  *(v11 + 14) = [entryCopy CRC];
  *(v11 + 18) = [entryCopy size];
  v12 = [entryCopy size];

  *(v11 + 22) = v12;
  *(v11 + 13) = v7;
  *(v11 + 14) = 0;
  memcpy(v11 + 30, uTF8String, v7);
  v13 = dispatch_data_create(v11, v7 + 30, 0, *MEMORY[0x277D85CB0]);

  return v13;
}

- (id)centralFileHeaderDataForEntry:(id)entry
{
  entryCopy = entry;
  name = [entryCopy name];
  uTF8String = [name UTF8String];

  v7 = strlen(uTF8String);
  if (v7 >= 0x10000)
  {
    v8 = +[TSUAssertionHandler currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipWriter centralFileHeaderDataForEntry:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUZipWriter.m"];
    [v8 handleFailureInFunction:v9 file:v10 lineNumber:341 description:@"Zip entry name is too long"];
  }

  v11 = malloc_type_malloc(v7 + 46, 0x93AA03F4uLL);
  *v11 = 33639248;
  *(v11 + 4) = 1310782;
  *(v11 + 6) = self->_entryTime;
  *(v11 + 7) = self->_entryDate;
  *(v11 + 4) = [entryCopy CRC];
  *(v11 + 5) = [entryCopy size];
  *(v11 + 6) = [entryCopy size];
  *(v11 + 14) = v7;
  *(v11 + 30) = 0;
  *(v11 + 38) = 0;
  offset = [entryCopy offset];

  *(v11 + 42) = offset;
  memcpy(v11 + 46, uTF8String, v7);
  v13 = dispatch_data_create(v11, v7 + 46, 0, *MEMORY[0x277D85CB0]);

  return v13;
}

- (id)endOfCentralDirectoryDataWithOffset:(int64_t)offset size:(int64_t)size
{
  offsetCopy = offset;
  if (offset >= 0x100000000)
  {
    v7 = +[TSUAssertionHandler currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipWriter endOfCentralDirectoryDataWithOffset:size:]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUZipWriter.m"];
    [v7 handleFailureInFunction:v8 file:v9 lineNumber:374 description:@"Offset is too large"];
  }

  if (size >= 0x100000000)
  {
    v10 = +[TSUAssertionHandler currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipWriter endOfCentralDirectoryDataWithOffset:size:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUZipWriter.m"];
    [v10 handleFailureInFunction:v11 file:v12 lineNumber:375 description:@"Size is too large"];
  }

  v13 = malloc_type_malloc(0x16uLL, 0x16B515BuLL);
  v14 = [(NSMutableArray *)self->_entries count];
  v15 = v14;
  if (v14 >= 0x10000)
  {
    v16 = +[TSUAssertionHandler currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipWriter endOfCentralDirectoryDataWithOffset:size:]"];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUZipWriter.m"];
    [v16 handleFailureInFunction:v17 file:v18 lineNumber:382 description:@"Too many entries"];
  }

  *v13 = 101010256;
  v13[1] = 0;
  *(v13 + 4) = v15;
  *(v13 + 5) = v15;
  v13[3] = size;
  v13[4] = offsetCopy;
  *(v13 + 10) = 0;
  v19 = dispatch_data_create(v13, 0x16uLL, 0, *MEMORY[0x277D85CB0]);

  return v19;
}

- (void)writeData:(id)data
{
  size = dispatch_data_get_size(data);
  self->_currentOffset += size;
  dataCopy = data;
  writeChannel = [(TSUZipWriter *)self writeChannel];
  writeQueue = self->_writeQueue;
  writtenOffset = self->_writtenOffset;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __26__TSUZipWriter_writeData___block_invoke;
  v10[3] = &unk_279D66828;
  v10[4] = self;
  [writeChannel writeData:dataCopy offset:writtenOffset queue:writeQueue handler:v10];

  self->_writtenOffset += size;
}

- (void)writeData:(id)data offset:(int64_t)offset
{
  dataCopy = data;
  dispatch_suspend(self->_writeQueue);
  writeChannel = [(TSUZipWriter *)self writeChannel];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __33__TSUZipWriter_writeData_offset___block_invoke;
  v9[3] = &unk_279D66850;
  v9[4] = self;
  v10 = dataCopy;
  offsetCopy = offset;
  v8 = dataCopy;
  [writeChannel addBarrier:v9];
}

void __33__TSUZipWriter_writeData_offset___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) writeChannel];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = *(v5 + 72);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__TSUZipWriter_writeData_offset___block_invoke_2;
  v7[3] = &unk_279D66828;
  v7[4] = v5;
  [v2 writeData:v3 offset:v4 queue:v6 handler:v7];

  dispatch_resume(*(*(a1 + 32) + 72));
}

- (TSURandomWriteChannel)writeChannel
{
  v2 = +[TSUAssertionHandler currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipWriter writeChannel]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUZipWriter.m"];
  [v2 handleFailureInFunction:v3 file:v4 lineNumber:430 description:@"Abstract method"];

  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Abstract method", "-[TSUZipWriter writeChannel]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (void)handleWriteError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v12 = errorCopy;
    TSULogErrorInFunction("[TSUZipWriter handleWriteError:]", "/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUZipWriter.m", 446, @"Couldn't write Zip: %@", v6, v7, v8, v9, errorCopy);
    errorCopy = v12;
    p_error = &self->_error;
    if (!self->_error)
    {
      writeChannel = [(TSUZipWriter *)self writeChannel];
      [writeChannel close];

      objc_storeStrong(p_error, error);
      errorCopy = v12;
    }
  }
}

- (void)initEntryTime
{
  v7 = time(0);
  v3 = localtime(&v7);
  tm_year = v3->tm_year;
  if (tm_year <= 81)
  {
    v5 = 512;
  }

  else
  {
    v5 = (tm_year << 9) + 24576;
  }

  tm_hour = v3->tm_hour;
  self->_entryDate = (32 * v3->tm_mon + 32) | v3->tm_mday | v5;
  self->_entryTime = (32 * LOWORD(v3->tm_min)) | (tm_hour << 11) | (v3->tm_sec >> 1);
}

- (void)enumerateEntriesUsingBlock:(id)block
{
  blockCopy = block;
  writeQueue = self->_writeQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__TSUZipWriter_enumerateEntriesUsingBlock___block_invoke;
  v7[3] = &unk_279D66540;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_sync(writeQueue, v7);
}

void __43__TSUZipWriter_enumerateEntriesUsingBlock___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(*(a1 + 32) + 8);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v12 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v11 + 1) + 8 * v6);
      v8 = objc_alloc_init(TSUZipEntry);
      v9 = [v7 name];
      [(TSUZipEntry *)v8 setName:v9];

      v10 = [(TSUZipEntry *)v8 name];
      -[TSUZipEntry setNameLength:](v8, "setNameLength:", strlen([v10 UTF8String]));

      -[TSUZipEntry setSize:](v8, "setSize:", [v7 size]);
      -[TSUZipEntry setCompressedSize:](v8, "setCompressedSize:", [v7 size]);
      -[TSUZipEntry setOffset:](v8, "setOffset:", [v7 offset]);
      -[TSUZipEntry setCRC:](v8, "setCRC:", [v7 CRC]);
      (*(*(a1 + 40) + 16))();
      LOBYTE(v7) = v15;

      if (v7)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v11 objects:v16 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

@end