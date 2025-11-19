@interface TSUZipWriter
- (BOOL)isClosed;
- (NSArray)sortedEntries;
- (TSUZipWriter)initWithOptions:(unint64_t)a3;
- (id)entryWithName:(id)a3;
- (id)localFileHeaderDataForEntry:(id)a3;
- (id)p_writeChannel;
- (id)prepareWriteChannelWithCloseCompletionHandler:(id)a3;
- (id)sortedEntriesImpl;
- (unint64_t)archiveLength;
- (unint64_t)entriesCount;
- (void)addBarrier:(id)a3;
- (void)addData:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)addDataImpl:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)addExistingEntry:(id)a3;
- (void)addExistingEntryImpl:(id)a3;
- (void)beginEntryWithName:(id)a3 force32BitSize:(BOOL)a4 lastModificationDate:(id)a5 size:(unint64_t)a6 CRC:(unsigned int)a7 forceCalculatingSizeAndCRCForPreservingLastModificationDate:(BOOL)a8;
- (void)beginEntryWithNameImpl:(id)a3 force32BitSize:(BOOL)a4 lastModificationDate:(id)a5 size:(unint64_t)a6 CRC:(unsigned int)a7 forceCalculatingSizeAndCRCForPreservingLastModificationDate:(BOOL)a8;
- (void)closeWithQueue:(id)a3 completion:(id)a4;
- (void)enumerateEntriesUsingBlock:(id)a3;
- (void)finishEntry;
- (void)flushCurrentEntryWithQueue:(id)a3 completion:(id)a4;
- (void)flushEntryData;
- (void)handleWriteError:(id)a3;
- (void)p_writeData:(id)a3 offset:(int64_t)a4 completion:(id)a5;
- (void)setEntryInsertionOffset:(int64_t)a3;
- (void)truncateToNumberOfEntries:(unint64_t)a3 completion:(id)a4;
- (void)truncateToNumberOfEntriesImpl:(unint64_t)a3 completion:(id)a4;
- (void)truncateToOffset:(int64_t)a3 completion:(id)a4;
- (void)truncateToOffsetImpl:(int64_t)a3 completion:(id)a4;
- (void)writeCentralDirectory;
- (void)writeCentralFileHeaderDataForEntry:(id)a3;
- (void)writeData:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)writeEndOfCentralDirectoryDataWithOffset:(int64_t)a3 size:(int64_t)a4 entryCount:(unint64_t)a5;
- (void)writeEntryWithName:(id)a3 force32BitSize:(BOOL)a4 lastModificationDate:(id)a5 size:(unint64_t)a6 CRC:(unsigned int)a7 fromReadChannel:(id)a8 completion:(id)a9;
- (void)writeEntryWithName:(id)a3 force32BitSize:(BOOL)a4 lastModificationDate:(id)a5 size:(unint64_t)a6 CRC:(unsigned int)a7 fromReadChannel:(id)a8 writeHandler:(id)a9;
- (void)writeZip64EndOfCentralDirectoryLocatorWithOffset:(int64_t)a3;
- (void)writeZip64EndOfCentralDirectoryWithOffset:(int64_t)a3 size:(int64_t)a4 entryCount:(unint64_t)a5;
@end

@implementation TSUZipWriter

- (TSUZipWriter)initWithOptions:(unint64_t)a3
{
  v19.receiver = self;
  v19.super_class = TSUZipWriter;
  v4 = [(TSUZipWriter *)&v19 init];
  v5 = v4;
  if (v4)
  {
    v4->_options = a3;
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

    v16 = [MEMORY[0x277CBEAA8] date];
    newEntryLastModificationDate = v5->_newEntryLastModificationDate;
    v5->_newEntryLastModificationDate = v16;
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

- (void)beginEntryWithName:(id)a3 force32BitSize:(BOOL)a4 lastModificationDate:(id)a5 size:(unint64_t)a6 CRC:(unsigned int)a7 forceCalculatingSizeAndCRCForPreservingLastModificationDate:(BOOL)a8
{
  v14 = a3;
  v15 = a5;
  writeQueue = self->_writeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2770EAC50;
  block[3] = &unk_27A7033F8;
  block[4] = self;
  v20 = v14;
  v24 = a4;
  v21 = v15;
  v22 = a6;
  v23 = a7;
  v25 = a8;
  v17 = v15;
  v18 = v14;
  dispatch_async(writeQueue, block);
}

- (void)beginEntryWithNameImpl:(id)a3 force32BitSize:(BOOL)a4 lastModificationDate:(id)a5 size:(unint64_t)a6 CRC:(unsigned int)a7 forceCalculatingSizeAndCRCForPreservingLastModificationDate:(BOOL)a8
{
  v8 = a8;
  v9 = *&a7;
  v39 = a3;
  v14 = a5;
  if (self->_isClosed)
  {
    sub_27711528C(v14, v15, v16, v17, v18, v19, v20, v21);
  }

  v22 = v14;
  if (!self->_error)
  {
    [(TSUZipWriter *)self finishEntry];
    v23 = [(NSMutableDictionary *)self->_entriesMap objectForKeyedSubscript:v39];

    if (v23)
    {
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipWriter beginEntryWithNameImpl:force32BitSize:lastModificationDate:size:CRC:forceCalculatingSizeAndCRCForPreservingLastModificationDate:]"];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipWriter.m"];
      [TSUAssertionHandler handleFailureInFunction:v24 file:v25 lineNumber:166 isFatal:0 description:"Already have an entry with name: %@", v39];

      +[TSUAssertionHandler logBacktraceThrottled];
    }

    else
    {
      v26 = objc_alloc_init(TSUZipWriterEntry);
      currentEntry = self->_currentEntry;
      self->_currentEntry = v26;

      [(TSUZipWriterEntry *)self->_currentEntry setName:v39];
      [(TSUZipWriterEntry *)self->_currentEntry setOffset:self->_currentOffset];
      if (a6)
      {
        v28 = v8;
      }

      else
      {
        v28 = 1;
      }

      self->_calculateSize = v28;
      if (v8)
      {
        v29 = 0;
      }

      else
      {
        v29 = a6;
      }

      [(TSUZipWriterEntry *)self->_currentEntry setSize:v29];
      self->_force32BitSize = self->_calculateSize && a4;
      if (v9)
      {
        v30 = v8;
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
      if (v8)
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

- (void)addData:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  writeQueue = self->_writeQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2770EAFE0;
  v15[3] = &unk_27A703420;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(writeQueue, v15);
}

- (void)addDataImpl:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_isClosed)
  {
    sub_277115330(v10, v11, v12, v13, v14, v15, v16, v17);
  }

  v18 = v10;
  v19 = self->_error;
  if (v19)
  {
    if (v18)
    {
      if (v9)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_2770EB29C;
        block[3] = &unk_27A702378;
        v29 = v18;
        v28 = v19;
        dispatch_async(v9, block);
      }

      else
      {
        (v18)[2](v18, v19);
      }
    }

    goto LABEL_15;
  }

  size = dispatch_data_get_size(v8);
  entryDatas = self->_entryDatas;
  if (entryDatas)
  {
    localFileHeaderData = self->_localFileHeaderData;
    if (dispatch_data_get_size(localFileHeaderData) + size + self->_entryDataSize < 0x40000)
    {
      [(NSMutableArray *)entryDatas addObject:v8];
      self->_entryDataSize += size;
      if (v18)
      {
        if (v9)
        {
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = sub_2770EB2B0;
          v25[3] = &unk_27A702350;
          v26 = v18;
          dispatch_async(v9, v25);
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

  [(TSUZipWriter *)self writeData:v8 queue:v9 completion:v18];
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
    dispatch_data_apply(v8, v24);
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

- (void)flushCurrentEntryWithQueue:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  writeQueue = self->_writeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2770EB504;
  block[3] = &unk_27A703470;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
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
  v11 = [(TSUZipWriterEntry *)v9 name];
  [(NSMutableDictionary *)entriesMap setObject:v9 forKeyedSubscript:v11];

  sortedEntries = self->_sortedEntries;
  self->_sortedEntries = 0;

  v4 = self->_currentEntry;
  self->_currentEntry = 0;
LABEL_20:
}

- (void)writeEntryWithName:(id)a3 force32BitSize:(BOOL)a4 lastModificationDate:(id)a5 size:(unint64_t)a6 CRC:(unsigned int)a7 fromReadChannel:(id)a8 completion:(id)a9
{
  v10 = *&a7;
  v13 = a4;
  v16 = a9;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2770EBB28;
  v18[3] = &unk_27A703498;
  v19 = v16;
  v17 = v16;
  [(TSUZipWriter *)self writeEntryWithName:a3 force32BitSize:v13 lastModificationDate:a5 size:a6 CRC:v10 fromReadChannel:a8 writeHandler:v18];
}

- (void)writeEntryWithName:(id)a3 force32BitSize:(BOOL)a4 lastModificationDate:(id)a5 size:(unint64_t)a6 CRC:(unsigned int)a7 fromReadChannel:(id)a8 writeHandler:(id)a9
{
  v15 = a3;
  v16 = a5;
  v17 = a8;
  v18 = a9;
  if (!v17)
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
  v27 = v15;
  v33 = a4;
  v32 = a7;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v31 = a6;
  v22 = v18;
  v23 = v17;
  v24 = v16;
  v25 = v15;
  dispatch_async(writeQueue, block);
}

- (void)addExistingEntry:(id)a3
{
  v4 = a3;
  writeQueue = self->_writeQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2770EBFFC;
  v7[3] = &unk_27A702450;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(writeQueue, v7);
}

- (void)addExistingEntryImpl:(id)a3
{
  v11 = a3;
  v4 = objc_alloc_init(TSUZipWriterEntry);
  v5 = [v11 name];
  [(TSUZipWriterEntry *)v4 setName:v5];

  v6 = [v11 lastModificationDate];
  [(TSUZipWriterEntry *)v4 setLastModificationDate:v6];

  if ([v11 isCompressed])
  {
    v7 = [v11 compressedSize];
  }

  else
  {
    v7 = [v11 size];
  }

  [(TSUZipWriterEntry *)v4 setSize:v7];
  -[TSUZipWriterEntry setOffset:](v4, "setOffset:", [v11 offset]);
  -[TSUZipWriterEntry setCRC:](v4, "setCRC:", [v11 CRC]);
  [(NSMutableArray *)self->_entries addObject:v4];
  entriesMap = self->_entriesMap;
  v9 = [v11 name];
  [(NSMutableDictionary *)entriesMap setObject:v4 forKeyedSubscript:v9];

  sortedEntries = self->_sortedEntries;
  self->_sortedEntries = 0;
}

- (void)setEntryInsertionOffset:(int64_t)a3
{
  writeQueue = self->_writeQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2770EC1B0;
  v4[3] = &unk_27A7025D0;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(writeQueue, v4);
}

- (void)addBarrier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    writeQueue = self->_writeQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_2770EC270;
    v7[3] = &unk_27A702858;
    v7[4] = self;
    v8 = v4;
    dispatch_async(writeQueue, v7);
  }
}

- (void)closeWithQueue:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  writeQueue = self->_writeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2770EC4D8;
  block[3] = &unk_27A703470;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
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

- (id)localFileHeaderDataForEntry:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = [v5 UTF8String];

  __src = v6;
  v7 = strlen(v6);
  if (v7 >= 0x10000)
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_277115670();
    }

    v7 = 0xFFFFLL;
  }

  v8 = self->_options & 1;
  v9 = v8 | ([v4 size] >> 32);
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
  v15 = [v4 lastModificationDate];
  v16 = [v15 tsu_DOSTime];

  HIDWORD(v17) = v16;
  LODWORD(v17) = v16;
  *(v13 + 10) = v17 >> 16;
  *(v13 + 14) = [v4 CRC];
  if (!v10)
  {
    *(v13 + 18) = [v4 size];
LABEL_16:
    v20 = [v4 size];
    goto LABEL_18;
  }

  if (self->_force32BitSize)
  {
    v18 = [v4 size];
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
    v22 = [v4 size];
    *(v21 + 4) = v22;
    *(v21 + 12) = v22;
  }

  v23 = dispatch_data_create(v13, v12 + 30, 0, *MEMORY[0x277D85CB0]);

  return v23;
}

- (void)writeCentralFileHeaderDataForEntry:(id)a3
{
  v25 = a3;
  v4 = [v25 name];
  v5 = [v4 UTF8String];

  v6 = strlen(v5);
  if (v6 >= 0x10000)
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_277115684();
    }

    v6 = 0xFFFFLL;
  }

  v24 = self;
  v7 = self->_options & 2;
  v8 = v7 | ([v25 size] >> 32);
  v9 = v7 | ([v25 offset] >> 32);
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
  v16 = [v25 lastModificationDate];
  v17 = [v16 tsu_DOSTime];

  HIDWORD(v18) = v17;
  LODWORD(v18) = v17;
  *(v14 + 3) = v18 >> 16;
  *(v14 + 4) = [v25 CRC];
  if (v8)
  {
    v19 = -1;
    *(v14 + 5) = -1;
  }

  else
  {
    *(v14 + 5) = [v25 size];
    v19 = [v25 size];
  }

  *(v14 + 6) = v19;
  *(v14 + 14) = v6;
  *(v14 + 15) = v12;
  *(v14 + 4) = 0;
  *(v14 + 20) = 0;
  if (v11)
  {
    *(v14 + 42) = -1;
    memcpy(v15, v5, v6);
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
    *(v14 + 42) = [v25 offset];
    memcpy(v15, v5, v6);
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
  *v20 = [v25 size];
  *(v22 + 12) = [v25 size];
  if (!v11)
  {
    goto LABEL_21;
  }

  v20 = v22 + 20;
LABEL_20:
  *v21 += 8;
  *v20 = [v25 offset];
LABEL_21:
  v23 = dispatch_data_create(v14, v13 + 46, 0, *MEMORY[0x277D85CB0]);
  [(TSUZipWriter *)v24 writeData:v23];
}

- (void)writeEndOfCentralDirectoryDataWithOffset:(int64_t)a3 size:(int64_t)a4 entryCount:(unint64_t)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  if (a5 > 0xFFFE)
  {
    v9 = 1;
  }

  else
  {
    v9 = (LOBYTE(self->_options) >> 2) & 1;
  }

  if (a4 > 4294967294)
  {
    v10 = 1;
  }

  else
  {
    v10 = (LOBYTE(self->_options) >> 2) & 1;
  }

  if (a3 > 4294967294)
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
    [(TSUZipWriter *)self writeZip64EndOfCentralDirectoryWithOffset:a3 size:a4 entryCount:a5];
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
    v14 = v5;
  }

  v13[4] = v14;
  v13[5] = v14;
  if (v10)
  {
    v15 = -1;
  }

  else
  {
    v15 = v6;
  }

  if (v11)
  {
    v16 = -1;
  }

  else
  {
    v16 = v7;
  }

  *(v13 + 3) = v15;
  *(v13 + 4) = v16;
  v13[10] = 0;
  v17 = dispatch_data_create(v13, 0x16uLL, 0, *MEMORY[0x277D85CB0]);
  [(TSUZipWriter *)self writeData:v17];
}

- (void)writeZip64EndOfCentralDirectoryWithOffset:(int64_t)a3 size:(int64_t)a4 entryCount:(unint64_t)a5
{
  v9 = malloc_type_malloc(0x38uLL, 0x1666DF56uLL);
  *v9 = 101075792;
  *(v9 + 4) = 44;
  v9[2] = 0;
  v9[3] = a5;
  *(v9 + 3) = 1310782;
  v9[4] = a5;
  v9[5] = a4;
  v9[6] = a3;
  v10 = dispatch_data_create(v9, 0x38uLL, 0, *MEMORY[0x277D85CB0]);
  [(TSUZipWriter *)self writeData:v10];
}

- (void)writeZip64EndOfCentralDirectoryLocatorWithOffset:(int64_t)a3
{
  v5 = malloc_type_malloc(0x14uLL, 0x11B077FEuLL);
  *v5 = 117853008;
  v5[1] = 0;
  *(v5 + 1) = a3;
  v5[4] = 1;
  v6 = dispatch_data_create(v5, 0x14uLL, 0, *MEMORY[0x277D85CB0]);
  [(TSUZipWriter *)self writeData:v6];
}

- (void)writeData:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  size = dispatch_data_get_size(a3);
  self->_currentOffset += size;
  writtenOffset = self->_writtenOffset;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2770ED3D4;
  v14[3] = &unk_27A703538;
  v15 = v8;
  v16 = v9;
  v12 = v8;
  v13 = v9;
  [(TSUZipWriter *)self p_writeData:a3 offset:writtenOffset completion:v14];
  self->_writtenOffset += size;
}

- (void)p_writeData:(id)a3 offset:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  channelQueue = self->_channelQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2770ED580;
  v13[3] = &unk_27A703588;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(channelQueue, v13);
}

- (id)prepareWriteChannelWithCloseCompletionHandler:(id)a3
{
  v3 = a3;
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

- (void)handleWriteError:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    if ([v5 code] != 3072 || (objc_msgSend(v6, "domain"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277CCA050]), v7, (v8 & 1) == 0))
    {
      if (TSUDefaultCat_init_token != -1)
      {
        sub_277115698();
      }
    }

    if (!self->_error)
    {
      objc_storeStrong(&self->_error, a3);
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

- (void)enumerateEntriesUsingBlock:(id)a3
{
  v4 = a3;
  writeQueue = self->_writeQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2770EDBFC;
  v7[3] = &unk_27A702858;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (id)entryWithName:(id)a3
{
  v4 = a3;
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
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(writeQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)truncateToNumberOfEntries:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  writeQueue = self->_writeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2770EE2A8;
  block[3] = &unk_27A703138;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(writeQueue, block);
}

- (void)truncateToNumberOfEntriesImpl:(unint64_t)a3 completion:(id)a4
{
  v13 = a4;
  if ([(TSUZipWriter *)self entriesCountImpl]<= a3)
  {
    v12 = v13;
    if (!v13)
    {
      goto LABEL_9;
    }

    (*(v13 + 2))(v13, 0);
  }

  else
  {
    v6 = [(TSUZipWriter *)self sortedEntriesImpl];
    if ([v6 count] > a3)
    {
      v7 = a3;
      do
      {
        v8 = [v6 objectAtIndexedSubscript:v7];
        [(NSMutableArray *)self->_entries removeObject:v8];
        entriesMap = self->_entriesMap;
        v10 = [v8 name];
        [(NSMutableDictionary *)entriesMap removeObjectForKey:v10];

        ++v7;
      }

      while (v7 < [v6 count]);
    }

    v11 = [v6 objectAtIndexedSubscript:a3];
    -[TSUZipWriter setEntryInsertionOffsetImpl:](self, "setEntryInsertionOffsetImpl:", [v11 offset]);
    -[TSUZipWriter truncateToOffsetImpl:completion:](self, "truncateToOffsetImpl:completion:", [v11 offset], v13);
  }

  v12 = v13;
LABEL_9:
}

- (void)truncateToOffset:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  writeQueue = self->_writeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2770EE4AC;
  block[3] = &unk_27A703138;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(writeQueue, block);
}

- (void)truncateToOffsetImpl:(int64_t)a3 completion:(id)a4
{
  v4 = a4;
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