@interface TSUZipWriter
- (BOOL)isClosed;
- (NSArray)sortedEntries;
- (TSUZipWriter)initWithOptions:(unint64_t)options;
- (id)entryWithName:(id)name;
- (id)localFileHeaderDataForEntry:(id)entry;
- (id)p_writeChannel;
- (id)prepareWriteChannelWithCloseCompletionHandler:(id)handler;
- (id)sortedEntriesImpl;
- (unint64_t)archiveLength;
- (unint64_t)entriesCount;
- (void)addBarrier:(id)barrier;
- (void)addData:(id)data queue:(id)queue completion:(id)completion;
- (void)addDataImpl:(id)impl queue:(id)queue completion:(id)completion;
- (void)addExistingEntry:(id)entry;
- (void)addExistingEntryImpl:(id)impl;
- (void)beginEntryWithName:(id)name force32BitSize:(BOOL)size lastModificationDate:(id)date size:(unint64_t)a6 CRC:(unsigned int)c forceCalculatingSizeAndCRCForPreservingLastModificationDate:(BOOL)modificationDate;
- (void)beginEntryWithNameImpl:(id)impl force32BitSize:(BOOL)size lastModificationDate:(id)date size:(unint64_t)a6 CRC:(unsigned int)c forceCalculatingSizeAndCRCForPreservingLastModificationDate:(BOOL)modificationDate;
- (void)closeWithQueue:(id)queue completion:(id)completion;
- (void)enumerateEntriesUsingBlock:(id)block;
- (void)finishEntry;
- (void)flushCurrentEntryWithQueue:(id)queue completion:(id)completion;
- (void)flushEntryData;
- (void)handleWriteError:(id)error;
- (void)p_writeData:(id)data offset:(int64_t)offset completion:(id)completion;
- (void)setEntryInsertionOffset:(int64_t)offset;
- (void)truncateToNumberOfEntries:(unint64_t)entries completion:(id)completion;
- (void)truncateToNumberOfEntriesImpl:(unint64_t)impl completion:(id)completion;
- (void)truncateToOffset:(int64_t)offset completion:(id)completion;
- (void)truncateToOffsetImpl:(int64_t)impl completion:(id)completion;
- (void)writeCentralDirectory;
- (void)writeCentralFileHeaderDataForEntry:(id)entry;
- (void)writeData:(id)data queue:(id)queue completion:(id)completion;
- (void)writeEndOfCentralDirectoryDataWithOffset:(int64_t)offset size:(int64_t)size entryCount:(unint64_t)count;
- (void)writeEntryWithName:(id)name force32BitSize:(BOOL)size lastModificationDate:(id)date size:(unint64_t)a6 CRC:(unsigned int)c fromReadChannel:(id)channel completion:(id)completion;
- (void)writeEntryWithName:(id)name force32BitSize:(BOOL)size lastModificationDate:(id)date size:(unint64_t)a6 CRC:(unsigned int)c fromReadChannel:(id)channel writeHandler:(id)handler;
- (void)writeZip64EndOfCentralDirectoryLocatorWithOffset:(int64_t)offset;
- (void)writeZip64EndOfCentralDirectoryWithOffset:(int64_t)offset size:(int64_t)size entryCount:(unint64_t)count;
@end

@implementation TSUZipWriter

- (TSUZipWriter)initWithOptions:(unint64_t)options
{
  v19.receiver = self;
  v19.super_class = TSUZipWriter;
  v4 = [(TSUZipWriter *)&v19 init];
  v5 = v4;
  if (v4)
  {
    v4->_options = options;
    v6 = objc_opt_new();
    entries = v5->_entries;
    v5->_entries = v6;

    v8 = objc_opt_new();
    entriesMap = v5->_entriesMap;
    v5->_entriesMap = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("TSUZipWriter.Channel", v10);
    channelQueue = v5->_channelQueue;
    v5->_channelQueue = v11;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("TSUZipWriter.Write", v13);
    writeQueue = v5->_writeQueue;
    v5->_writeQueue = v14;

    date = [MEMORY[0x277CBEAA8] date];
    newEntryLastModificationDate = v5->_newEntryLastModificationDate;
    v5->_newEntryLastModificationDate = date;
  }

  return v5;
}

- (unint64_t)entriesCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  writeQueue = self->_writeQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2770EA9D4;
  v5[3] = &unk_27A702428;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(writeQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)p_writeChannel
{
  writeChannel = self->_writeChannel;
  if (!writeChannel)
  {
    if (self->_writeChannelCompletionSemaphore)
    {
      sub_2771151E8(0, a2, v2, v3, v4, v5, v6, v7);
    }

    v10 = dispatch_semaphore_create(0);
    writeChannelCompletionSemaphore = self->_writeChannelCompletionSemaphore;
    self->_writeChannelCompletionSemaphore = v10;

    objc_initWeak(&location, self);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_2770EAB18;
    v15[3] = &unk_27A7025A8;
    objc_copyWeak(&v16, &location);
    v12 = [(TSUZipWriter *)self prepareWriteChannelWithCloseCompletionHandler:v15];
    v13 = self->_writeChannel;
    self->_writeChannel = v12;

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
    writeChannel = self->_writeChannel;
  }

  return writeChannel;
}

- (void)beginEntryWithName:(id)name force32BitSize:(BOOL)size lastModificationDate:(id)date size:(unint64_t)a6 CRC:(unsigned int)c forceCalculatingSizeAndCRCForPreservingLastModificationDate:(BOOL)modificationDate
{
  nameCopy = name;
  dateCopy = date;
  writeQueue = self->_writeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2770EAC50;
  block[3] = &unk_27A7033F8;
  block[4] = self;
  v20 = nameCopy;
  sizeCopy = size;
  v21 = dateCopy;
  v22 = a6;
  cCopy = c;
  modificationDateCopy = modificationDate;
  v17 = dateCopy;
  v18 = nameCopy;
  dispatch_async(writeQueue, block);
}

- (void)beginEntryWithNameImpl:(id)impl force32BitSize:(BOOL)size lastModificationDate:(id)date size:(unint64_t)a6 CRC:(unsigned int)c forceCalculatingSizeAndCRCForPreservingLastModificationDate:(BOOL)modificationDate
{
  modificationDateCopy = modificationDate;
  v9 = *&c;
  implCopy = impl;
  dateCopy = date;
  if (self->_isClosed)
  {
    sub_27711528C(dateCopy, v15, v16, v17, v18, v19, v20, v21);
  }

  v22 = dateCopy;
  if (!self->_error)
  {
    [(TSUZipWriter *)self finishEntry];
    v23 = [(NSMutableDictionary *)self->_entriesMap objectForKeyedSubscript:implCopy];

    if (v23)
    {
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipWriter beginEntryWithNameImpl:force32BitSize:lastModificationDate:size:CRC:forceCalculatingSizeAndCRCForPreservingLastModificationDate:]"];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipWriter.m"];
      [TSUAssertionHandler handleFailureInFunction:v24 file:v25 lineNumber:166 isFatal:0 description:"Already have an entry with name: %@", implCopy];

      +[TSUAssertionHandler logBacktraceThrottled];
    }

    else
    {
      v26 = objc_alloc_init(TSUZipWriterEntry);
      currentEntry = self->_currentEntry;
      self->_currentEntry = v26;

      [(TSUZipWriterEntry *)self->_currentEntry setName:implCopy];
      [(TSUZipWriterEntry *)self->_currentEntry setOffset:self->_currentOffset];
      if (a6)
      {
        v28 = modificationDateCopy;
      }

      else
      {
        v28 = 1;
      }

      self->_calculateSize = v28;
      if (modificationDateCopy)
      {
        v29 = 0;
      }

      else
      {
        v29 = a6;
      }

      [(TSUZipWriterEntry *)self->_currentEntry setSize:v29];
      self->_force32BitSize = self->_calculateSize && size;
      if (v9)
      {
        v30 = modificationDateCopy;
      }

      else
      {
        v30 = 1;
      }

      self->_calculateCRC = v30;
      v31 = v9;
      if (v30)
      {
        v31 = crc32(0, 0, 0);
      }

      [(TSUZipWriterEntry *)self->_currentEntry setCRC:v31];
      if (modificationDateCopy)
      {
        [(TSUZipWriterEntry *)self->_currentEntry setLastModificationDate:self->_newEntryLastModificationDate];
        self->_sizeToMatch = a6;
        self->_CRCToMatch = v9;
        v32 = v22;
        lastModificationDateIfSizeAndCRCMatches = self->_lastModificationDateIfSizeAndCRCMatches;
        self->_lastModificationDateIfSizeAndCRCMatches = v32;
      }

      else
      {
        newEntryLastModificationDate = v22;
        if (!v22)
        {
          newEntryLastModificationDate = self->_newEntryLastModificationDate;
        }

        [(TSUZipWriterEntry *)self->_currentEntry setLastModificationDate:newEntryLastModificationDate];
        self->_sizeToMatch = 0;
        self->_CRCToMatch = 0;
        lastModificationDateIfSizeAndCRCMatches = self->_lastModificationDateIfSizeAndCRCMatches;
        self->_lastModificationDateIfSizeAndCRCMatches = 0;
      }

      v35 = [(TSUZipWriter *)self localFileHeaderDataForEntry:self->_currentEntry];
      if ((self->_calculateSize || self->_calculateCRC) && (self->_options & 8) == 0)
      {
        objc_storeStrong(&self->_localFileHeaderData, v35);
        v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
      }

      else
      {
        [(TSUZipWriter *)self writeData:v35];
        localFileHeaderData = self->_localFileHeaderData;
        self->_localFileHeaderData = 0;

        v36 = 0;
      }

      entryDatas = self->_entryDatas;
      self->_entryDatas = v36;

      self->_entryDataSize = 0;
    }
  }
}

- (void)addData:(id)data queue:(id)queue completion:(id)completion
{
  dataCopy = data;
  queueCopy = queue;
  completionCopy = completion;
  writeQueue = self->_writeQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2770EAFE0;
  v15[3] = &unk_27A703420;
  v15[4] = self;
  v16 = dataCopy;
  v17 = queueCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = queueCopy;
  v14 = dataCopy;
  dispatch_async(writeQueue, v15);
}

- (void)addDataImpl:(id)impl queue:(id)queue completion:(id)completion
{
  implCopy = impl;
  queueCopy = queue;
  completionCopy = completion;
  if (self->_isClosed)
  {
    sub_277115330(completionCopy, v11, v12, v13, v14, v15, v16, v17);
  }

  v18 = completionCopy;
  v19 = self->_error;
  if (v19)
  {
    if (v18)
    {
      if (queueCopy)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_2770EB29C;
        block[3] = &unk_27A702378;
        v29 = v18;
        v28 = v19;
        dispatch_async(queueCopy, block);
      }

      else
      {
        (v18)[2](v18, v19);
      }
    }

    goto LABEL_15;
  }

  size = dispatch_data_get_size(implCopy);
  entryDatas = self->_entryDatas;
  if (entryDatas)
  {
    localFileHeaderData = self->_localFileHeaderData;
    if (dispatch_data_get_size(localFileHeaderData) + size + self->_entryDataSize < 0x40000)
    {
      [(NSMutableArray *)entryDatas addObject:implCopy];
      self->_entryDataSize += size;
      if (v18)
      {
        if (queueCopy)
        {
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = sub_2770EB2B0;
          v25[3] = &unk_27A702350;
          v26 = v18;
          dispatch_async(queueCopy, v25);
        }

        else
        {
          v18[2](v18, 0);
        }
      }

      goto LABEL_10;
    }

    [(TSUZipWriter *)self writeData:localFileHeaderData];
    v23 = self->_localFileHeaderData;
    self->_localFileHeaderData = 0;

    [(TSUZipWriter *)self flushEntryData];
  }

  [(TSUZipWriter *)self writeData:implCopy queue:queueCopy completion:v18];
LABEL_10:
  if (self->_calculateSize)
  {
    [(TSUZipWriterEntry *)self->_currentEntry setSize:[(TSUZipWriterEntry *)self->_currentEntry size]+ size];
  }

  if (self->_calculateCRC)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_2770EB2C4;
    v24[3] = &unk_27A701B60;
    v24[4] = self;
    dispatch_data_apply(implCopy, v24);
  }

LABEL_15:
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

- (void)flushCurrentEntryWithQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  writeQueue = self->_writeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2770EB504;
  block[3] = &unk_27A703470;
  block[4] = self;
  v12 = queueCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = queueCopy;
  dispatch_async(writeQueue, block);
}

- (void)finishEntry
{
  currentEntry = self->_currentEntry;
  if (!currentEntry)
  {
    return;
  }

  if (self->_calculateSize || self->_calculateCRC)
  {
    if (self->_force32BitSize)
    {
      if ([(TSUZipWriterEntry *)self->_currentEntry size]>> 32)
      {
        if (TSUDefaultCat_init_token != -1)
        {
          sub_277115514();
        }

        v13 = [MEMORY[0x277CCA9B8] tsu_fileWriteUnknownErrorWithUserInfo:0];
        [(TSUZipWriter *)self handleWriteError:v13];
        v4 = v13;
        goto LABEL_20;
      }

      currentEntry = self->_currentEntry;
    }

    if (self->_lastModificationDateIfSizeAndCRCMatches)
    {
      v5 = [(TSUZipWriterEntry *)currentEntry size];
      currentEntry = self->_currentEntry;
      if (v5 == self->_sizeToMatch)
      {
        v6 = [(TSUZipWriterEntry *)self->_currentEntry CRC];
        currentEntry = self->_currentEntry;
        if (v6 == self->_CRCToMatch)
        {
          [(TSUZipWriterEntry *)self->_currentEntry setLastModificationDate:self->_lastModificationDateIfSizeAndCRCMatches];
          currentEntry = self->_currentEntry;
        }
      }
    }

    v7 = [(TSUZipWriter *)self localFileHeaderDataForEntry:currentEntry];
    if (self->_entryDatas)
    {
      [(TSUZipWriter *)self writeData:v7];
      localFileHeaderData = self->_localFileHeaderData;
      self->_localFileHeaderData = 0;

      [(TSUZipWriter *)self flushEntryData];
    }

    else
    {
      [(TSUZipWriter *)self writeData:v7 offset:[(TSUZipWriterEntry *)self->_currentEntry offset]];
    }

    currentEntry = self->_currentEntry;
  }

  [(NSMutableArray *)self->_entries addObject:currentEntry];
  entriesMap = self->_entriesMap;
  v9 = self->_currentEntry;
  name = [(TSUZipWriterEntry *)v9 name];
  [(NSMutableDictionary *)entriesMap setObject:v9 forKeyedSubscript:name];

  sortedEntries = self->_sortedEntries;
  self->_sortedEntries = 0;

  v4 = self->_currentEntry;
  self->_currentEntry = 0;
LABEL_20:
}

- (void)writeEntryWithName:(id)name force32BitSize:(BOOL)size lastModificationDate:(id)date size:(unint64_t)a6 CRC:(unsigned int)c fromReadChannel:(id)channel completion:(id)completion
{
  v10 = *&c;
  sizeCopy = size;
  completionCopy = completion;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2770EBB28;
  v18[3] = &unk_27A703498;
  v19 = completionCopy;
  v17 = completionCopy;
  [(TSUZipWriter *)self writeEntryWithName:name force32BitSize:sizeCopy lastModificationDate:date size:a6 CRC:v10 fromReadChannel:channel writeHandler:v18];
}

- (void)writeEntryWithName:(id)name force32BitSize:(BOOL)size lastModificationDate:(id)date size:(unint64_t)a6 CRC:(unsigned int)c fromReadChannel:(id)channel writeHandler:(id)handler
{
  nameCopy = name;
  dateCopy = date;
  channelCopy = channel;
  handlerCopy = handler;
  if (!channelCopy)
  {
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipWriter writeEntryWithName:force32BitSize:lastModificationDate:size:CRC:fromReadChannel:writeHandler:]"];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipWriter.m"];
    [TSUAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:365 isFatal:0 description:"invalid nil value for '%{public}s'", "readChannel"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  writeQueue = self->_writeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2770EBD68;
  block[3] = &unk_27A7034E8;
  block[4] = self;
  v27 = nameCopy;
  sizeCopy = size;
  cCopy = c;
  v28 = dateCopy;
  v29 = channelCopy;
  v30 = handlerCopy;
  v31 = a6;
  v22 = handlerCopy;
  v23 = channelCopy;
  v24 = dateCopy;
  v25 = nameCopy;
  dispatch_async(writeQueue, block);
}

- (void)addExistingEntry:(id)entry
{
  entryCopy = entry;
  writeQueue = self->_writeQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2770EBFFC;
  v7[3] = &unk_27A702450;
  v7[4] = self;
  v8 = entryCopy;
  v6 = entryCopy;
  dispatch_sync(writeQueue, v7);
}

- (void)addExistingEntryImpl:(id)impl
{
  implCopy = impl;
  v4 = objc_alloc_init(TSUZipWriterEntry);
  name = [implCopy name];
  [(TSUZipWriterEntry *)v4 setName:name];

  lastModificationDate = [implCopy lastModificationDate];
  [(TSUZipWriterEntry *)v4 setLastModificationDate:lastModificationDate];

  if ([implCopy isCompressed])
  {
    compressedSize = [implCopy compressedSize];
  }

  else
  {
    compressedSize = [implCopy size];
  }

  [(TSUZipWriterEntry *)v4 setSize:compressedSize];
  -[TSUZipWriterEntry setOffset:](v4, "setOffset:", [implCopy offset]);
  -[TSUZipWriterEntry setCRC:](v4, "setCRC:", [implCopy CRC]);
  [(NSMutableArray *)self->_entries addObject:v4];
  entriesMap = self->_entriesMap;
  name2 = [implCopy name];
  [(NSMutableDictionary *)entriesMap setObject:v4 forKeyedSubscript:name2];

  sortedEntries = self->_sortedEntries;
  self->_sortedEntries = 0;
}

- (void)setEntryInsertionOffset:(int64_t)offset
{
  writeQueue = self->_writeQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2770EC1B0;
  v4[3] = &unk_27A7025D0;
  v4[4] = self;
  v4[5] = offset;
  dispatch_sync(writeQueue, v4);
}

- (void)addBarrier:(id)barrier
{
  barrierCopy = barrier;
  v5 = barrierCopy;
  if (barrierCopy)
  {
    writeQueue = self->_writeQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_2770EC270;
    v7[3] = &unk_27A702858;
    v7[4] = self;
    v8 = barrierCopy;
    dispatch_async(writeQueue, v7);
  }
}

- (void)closeWithQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  writeQueue = self->_writeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2770EC4D8;
  block[3] = &unk_27A703470;
  block[4] = self;
  v12 = queueCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = queueCopy;
  dispatch_async(writeQueue, block);
}

- (void)writeCentralDirectory
{
  v14 = *MEMORY[0x277D85DE8];
  currentOffset = self->_currentOffset;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_entries;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(TSUZipWriter *)self writeCentralFileHeaderDataForEntry:*(*(&v9 + 1) + 8 * v8++), v9];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(TSUZipWriter *)self writeEndOfCentralDirectoryDataWithOffset:currentOffset size:self->_currentOffset - currentOffset entryCount:[(NSMutableArray *)self->_entries count]];
}

- (id)localFileHeaderDataForEntry:(id)entry
{
  entryCopy = entry;
  name = [entryCopy name];
  uTF8String = [name UTF8String];

  __src = uTF8String;
  v7 = strlen(uTF8String);
  if (v7 >= 0x10000)
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_277115670();
    }

    v7 = 0xFFFFLL;
  }

  v8 = self->_options & 1;
  v9 = v8 | ([entryCopy size] >> 32);
  v10 = v9 != 0;
  if (v9 || self->_calculateSize)
  {
    v25 = !self->_force32BitSize;
    if (self->_force32BitSize)
    {
      v11 = 0;
    }

    else
    {
      v11 = 20;
    }
  }

  else
  {
    v25 = 0;
    v11 = 0;
  }

  v12 = v7 + v11;
  v13 = malloc_type_malloc(v12 + 30, 0x90F2E374uLL);
  v14 = v13 + 30;
  *v13 = 67324752;
  v13[1] = 20;
  *(v13 + 4) = 0;
  lastModificationDate = [entryCopy lastModificationDate];
  tsu_DOSTime = [lastModificationDate tsu_DOSTime];

  HIDWORD(v17) = tsu_DOSTime;
  LODWORD(v17) = tsu_DOSTime;
  *(v13 + 10) = v17 >> 16;
  *(v13 + 14) = [entryCopy CRC];
  if (!v10)
  {
    *(v13 + 18) = [entryCopy size];
LABEL_16:
    v20 = [entryCopy size];
    goto LABEL_18;
  }

  if (self->_force32BitSize)
  {
    v18 = [entryCopy size];
    force32BitSize = self->_force32BitSize;
    *(v13 + 18) = v18;
    if (!force32BitSize)
    {
      v20 = -1;
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v20 = -1;
  *(v13 + 18) = -1;
LABEL_18:
  *(v13 + 22) = v20;
  *(v13 + 13) = v7;
  *(v13 + 14) = v11;
  memcpy(v14, __src, v7);
  if (v25)
  {
    v21 = &v14[v7];
    *v21 = 1;
    *(v21 + 1) = 16;
    v22 = [entryCopy size];
    *(v21 + 4) = v22;
    *(v21 + 12) = v22;
  }

  v23 = dispatch_data_create(v13, v12 + 30, 0, *MEMORY[0x277D85CB0]);

  return v23;
}

- (void)writeCentralFileHeaderDataForEntry:(id)entry
{
  entryCopy = entry;
  name = [entryCopy name];
  uTF8String = [name UTF8String];

  v6 = strlen(uTF8String);
  if (v6 >= 0x10000)
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_277115684();
    }

    v6 = 0xFFFFLL;
  }

  selfCopy = self;
  v7 = self->_options & 2;
  v8 = v7 | ([entryCopy size] >> 32);
  v9 = v7 | ([entryCopy offset] >> 32);
  v10 = 4 * ((v8 | v9) != 0);
  if (v8)
  {
    v10 = 20;
  }

  v11 = v9 != 0;
  if (v9)
  {
    v12 = v10 | 8;
  }

  else
  {
    v12 = v10;
  }

  v13 = v6 + v12;
  v14 = malloc_type_malloc(v6 + v12 + 46, 0x6A38B073uLL);
  v15 = v14 + 46;
  *v14 = 33639248;
  *(v14 + 4) = 1310782;
  lastModificationDate = [entryCopy lastModificationDate];
  tsu_DOSTime = [lastModificationDate tsu_DOSTime];

  HIDWORD(v18) = tsu_DOSTime;
  LODWORD(v18) = tsu_DOSTime;
  *(v14 + 3) = v18 >> 16;
  *(v14 + 4) = [entryCopy CRC];
  if (v8)
  {
    v19 = -1;
    *(v14 + 5) = -1;
  }

  else
  {
    *(v14 + 5) = [entryCopy size];
    v19 = [entryCopy size];
  }

  *(v14 + 6) = v19;
  *(v14 + 14) = v6;
  *(v14 + 15) = v12;
  *(v14 + 4) = 0;
  *(v14 + 20) = 0;
  if (v11)
  {
    *(v14 + 42) = -1;
    memcpy(v15, uTF8String, v6);
    *&v15[v6] = 1;
    v20 = &v15[v6 + 4];
    *&v15[v6 + 2] = 0;
    v21 = &v15[v6 + 2];
    if (!v8)
    {
      goto LABEL_20;
    }
  }

  else
  {
    *(v14 + 42) = [entryCopy offset];
    memcpy(v15, uTF8String, v6);
    if (!v8)
    {
      goto LABEL_21;
    }

    v20 = &v15[v6 + 4];
    *&v15[v6] = 1;
    v21 = &v15[v6 + 2];
  }

  v22 = &v15[v6];
  *v21 = 16;
  *v20 = [entryCopy size];
  *(v22 + 12) = [entryCopy size];
  if (!v11)
  {
    goto LABEL_21;
  }

  v20 = v22 + 20;
LABEL_20:
  *v21 += 8;
  *v20 = [entryCopy offset];
LABEL_21:
  v23 = dispatch_data_create(v14, v13 + 46, 0, *MEMORY[0x277D85CB0]);
  [(TSUZipWriter *)selfCopy writeData:v23];
}

- (void)writeEndOfCentralDirectoryDataWithOffset:(int64_t)offset size:(int64_t)size entryCount:(unint64_t)count
{
  countCopy = count;
  sizeCopy = size;
  offsetCopy = offset;
  if (count > 0xFFFE)
  {
    v9 = 1;
  }

  else
  {
    v9 = (LOBYTE(self->_options) >> 2) & 1;
  }

  if (size > 4294967294)
  {
    v10 = 1;
  }

  else
  {
    v10 = (LOBYTE(self->_options) >> 2) & 1;
  }

  if (offset > 4294967294)
  {
    v11 = 1;
  }

  else
  {
    v11 = (LOBYTE(self->_options) >> 2) & 1;
  }

  if ((v9 & 1) != 0 || (v10 & 1) != 0 || v11)
  {
    currentOffset = self->_currentOffset;
    [(TSUZipWriter *)self writeZip64EndOfCentralDirectoryWithOffset:offset size:size entryCount:count];
    [(TSUZipWriter *)self writeZip64EndOfCentralDirectoryLocatorWithOffset:currentOffset];
  }

  v13 = malloc_type_malloc(0x16uLL, 0x1497331BuLL);
  *v13 = 101010256;
  if (v9)
  {
    v14 = -1;
  }

  else
  {
    v14 = countCopy;
  }

  v13[4] = v14;
  v13[5] = v14;
  if (v10)
  {
    v15 = -1;
  }

  else
  {
    v15 = sizeCopy;
  }

  if (v11)
  {
    v16 = -1;
  }

  else
  {
    v16 = offsetCopy;
  }

  *(v13 + 3) = v15;
  *(v13 + 4) = v16;
  v13[10] = 0;
  v17 = dispatch_data_create(v13, 0x16uLL, 0, *MEMORY[0x277D85CB0]);
  [(TSUZipWriter *)self writeData:v17];
}

- (void)writeZip64EndOfCentralDirectoryWithOffset:(int64_t)offset size:(int64_t)size entryCount:(unint64_t)count
{
  v9 = malloc_type_malloc(0x38uLL, 0x1666DF56uLL);
  *v9 = 101075792;
  *(v9 + 4) = 44;
  v9[2] = 0;
  v9[3] = count;
  *(v9 + 3) = 1310782;
  v9[4] = count;
  v9[5] = size;
  v9[6] = offset;
  v10 = dispatch_data_create(v9, 0x38uLL, 0, *MEMORY[0x277D85CB0]);
  [(TSUZipWriter *)self writeData:v10];
}

- (void)writeZip64EndOfCentralDirectoryLocatorWithOffset:(int64_t)offset
{
  v5 = malloc_type_malloc(0x14uLL, 0x11B077FEuLL);
  *v5 = 117853008;
  v5[1] = 0;
  *(v5 + 1) = offset;
  v5[4] = 1;
  v6 = dispatch_data_create(v5, 0x14uLL, 0, *MEMORY[0x277D85CB0]);
  [(TSUZipWriter *)self writeData:v6];
}

- (void)writeData:(id)data queue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  size = dispatch_data_get_size(data);
  self->_currentOffset += size;
  writtenOffset = self->_writtenOffset;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2770ED3D4;
  v14[3] = &unk_27A703538;
  v15 = queueCopy;
  v16 = completionCopy;
  v12 = queueCopy;
  v13 = completionCopy;
  [(TSUZipWriter *)self p_writeData:data offset:writtenOffset completion:v14];
  self->_writtenOffset += size;
}

- (void)p_writeData:(id)data offset:(int64_t)offset completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  channelQueue = self->_channelQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2770ED580;
  v13[3] = &unk_27A703588;
  v13[4] = self;
  v14 = dataCopy;
  v15 = completionCopy;
  offsetCopy = offset;
  v11 = completionCopy;
  v12 = dataCopy;
  dispatch_async(channelQueue, v13);
}

- (id)prepareWriteChannelWithCloseCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipWriter prepareWriteChannelWithCloseCompletionHandler:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipWriter.m"];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:783 isFatal:0 description:"Abstract method not overridden by %{public}@", v7];

  +[TSUAssertionHandler logBacktraceThrottled];
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [v10 stringWithFormat:@"Abstract method not overridden by %@: %s", v12, "-[TSUZipWriter prepareWriteChannelWithCloseCompletionHandler:]"];
  v14 = [v8 exceptionWithName:v9 reason:v13 userInfo:0];
  v15 = v14;

  objc_exception_throw(v14);
}

- (unint64_t)archiveLength
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  writeQueue = self->_writeQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2770ED9BC;
  v5[3] = &unk_27A702428;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(writeQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)handleWriteError:(id)error
{
  errorCopy = error;
  v6 = errorCopy;
  if (errorCopy)
  {
    if ([errorCopy code] != 3072 || (objc_msgSend(v6, "domain"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277CCA050]), v7, (v8 & 1) == 0))
    {
      if (TSUDefaultCat_init_token != -1)
      {
        sub_277115698();
      }
    }

    if (!self->_error)
    {
      objc_storeStrong(&self->_error, error);
      channelQueue = self->_channelQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2770EDB20;
      block[3] = &unk_27A7023D8;
      block[4] = self;
      dispatch_async(channelQueue, block);
    }
  }
}

- (void)enumerateEntriesUsingBlock:(id)block
{
  blockCopy = block;
  writeQueue = self->_writeQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2770EDBFC;
  v7[3] = &unk_27A702858;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_sync(writeQueue, v7);
}

- (id)sortedEntriesImpl
{
  sortedEntries = self->_sortedEntries;
  if (!sortedEntries)
  {
    v4 = [(NSMutableArray *)self->_entries sortedArrayUsingComparator:&unk_28862B620];
    v5 = self->_sortedEntries;
    self->_sortedEntries = v4;

    sortedEntries = self->_sortedEntries;
  }

  return sortedEntries;
}

- (NSArray)sortedEntries
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_2770ED6B8;
  v10 = sub_2770ED6C8;
  v11 = 0;
  writeQueue = self->_writeQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2770EDF94;
  v5[3] = &unk_27A702428;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(writeQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)isClosed
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  writeQueue = self->_writeQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2770EE08C;
  v5[3] = &unk_27A702428;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(writeQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)entryWithName:(id)name
{
  nameCopy = name;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_2770ED6B8;
  v16 = sub_2770ED6C8;
  v17 = 0;
  writeQueue = self->_writeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2770EE1B0;
  block[3] = &unk_27A7019E0;
  v10 = nameCopy;
  v11 = &v12;
  block[4] = self;
  v6 = nameCopy;
  dispatch_sync(writeQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)truncateToNumberOfEntries:(unint64_t)entries completion:(id)completion
{
  completionCopy = completion;
  writeQueue = self->_writeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2770EE2A8;
  block[3] = &unk_27A703138;
  v10 = completionCopy;
  entriesCopy = entries;
  block[4] = self;
  v8 = completionCopy;
  dispatch_async(writeQueue, block);
}

- (void)truncateToNumberOfEntriesImpl:(unint64_t)impl completion:(id)completion
{
  completionCopy = completion;
  if ([(TSUZipWriter *)self entriesCountImpl]<= impl)
  {
    v12 = completionCopy;
    if (!completionCopy)
    {
      goto LABEL_9;
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }

  else
  {
    sortedEntriesImpl = [(TSUZipWriter *)self sortedEntriesImpl];
    if ([sortedEntriesImpl count] > impl)
    {
      implCopy = impl;
      do
      {
        v8 = [sortedEntriesImpl objectAtIndexedSubscript:implCopy];
        [(NSMutableArray *)self->_entries removeObject:v8];
        entriesMap = self->_entriesMap;
        name = [v8 name];
        [(NSMutableDictionary *)entriesMap removeObjectForKey:name];

        ++implCopy;
      }

      while (implCopy < [sortedEntriesImpl count]);
    }

    v11 = [sortedEntriesImpl objectAtIndexedSubscript:impl];
    -[TSUZipWriter setEntryInsertionOffsetImpl:](self, "setEntryInsertionOffsetImpl:", [v11 offset]);
    -[TSUZipWriter truncateToOffsetImpl:completion:](self, "truncateToOffsetImpl:completion:", [v11 offset], completionCopy);
  }

  v12 = completionCopy;
LABEL_9:
}

- (void)truncateToOffset:(int64_t)offset completion:(id)completion
{
  completionCopy = completion;
  writeQueue = self->_writeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2770EE4AC;
  block[3] = &unk_27A703138;
  v10 = completionCopy;
  offsetCopy = offset;
  block[4] = self;
  v8 = completionCopy;
  dispatch_async(writeQueue, block);
}

- (void)truncateToOffsetImpl:(int64_t)impl completion:(id)completion
{
  completionCopy = completion;
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipWriter truncateToOffsetImpl:completion:]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipWriter.m"];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:920 isFatal:0 description:"Abstract method not overridden by %{public}@", v8];

  +[TSUAssertionHandler logBacktraceThrottled];
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v11 = MEMORY[0x277CCACA8];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [v11 stringWithFormat:@"Abstract method not overridden by %@: %s", v13, "-[TSUZipWriter truncateToOffsetImpl:completion:]"];
  v15 = [v9 exceptionWithName:v10 reason:v14 userInfo:0];
  v16 = v15;

  objc_exception_throw(v15);
}

@end