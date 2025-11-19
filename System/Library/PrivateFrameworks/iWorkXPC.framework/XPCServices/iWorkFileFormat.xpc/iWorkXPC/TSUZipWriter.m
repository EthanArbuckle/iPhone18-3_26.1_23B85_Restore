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

    v16 = +[NSDate date];
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
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000A42D8;
  v5[3] = &unk_1001C5A40;
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
      +[TSUAssertionHandler _atomicIncrementAssertCount];
      if (TSUAssertCat_init_token != -1)
      {
        sub_100160018();
      }

      if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_10016002C();
      }

      TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Write channel semaphore should not be initialized.", v9, v10, v11, v12, v13, v14, v15, "[TSUZipWriter p_writeChannel]");
      v16 = [NSString stringWithUTF8String:"[TSUZipWriter p_writeChannel]"];
      v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipWriter.m"];
      [TSUAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:110 isFatal:1 description:"Write channel semaphore should not be initialized."];

      TSUCrashBreakpoint(v18);
      abort();
    }

    v4 = dispatch_semaphore_create(0);
    writeChannelCompletionSemaphore = self->_writeChannelCompletionSemaphore;
    self->_writeChannelCompletionSemaphore = v4;

    objc_initWeak(&location, self);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000A4540;
    v19[3] = &unk_1001CE3E8;
    objc_copyWeak(&v20, &location);
    v6 = [(TSUZipWriter *)self prepareWriteChannelWithCloseCompletionHandler:v19];
    v7 = self->_writeChannel;
    self->_writeChannel = v6;

    objc_destroyWeak(&v20);
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
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A4678;
  block[3] = &unk_1001CE410;
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

- (void)addData:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  writeQueue = self->_writeQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000A4BAC;
  v15[3] = &unk_1001CE478;
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
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100160230();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100160244();
    }

    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Already closed.", v17, v18, v19, v20, v21, v22, v23, "[TSUZipWriter addDataImpl:queue:completion:]");
    v24 = [NSString stringWithUTF8String:"[TSUZipWriter addDataImpl:queue:completion:]"];
    v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipWriter.m"];
    [TSUAssertionHandler handleFailureInFunction:v24 file:v25 lineNumber:233 isFatal:1 description:"Already closed."];

    TSUCrashBreakpoint(v26);
    abort();
  }

  v11 = v10;
  v12 = self->_error;
  if (v12)
  {
    if (v11)
    {
      if (v9)
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000A4F84;
        block[3] = &unk_1001CC3D8;
        v32 = v11;
        v31 = v12;
        dispatch_async(v9, block);
      }

      else
      {
        (v11)[2](v11, v12);
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
      if (v11)
      {
        if (v9)
        {
          v28[0] = _NSConcreteStackBlock;
          v28[1] = 3221225472;
          v28[2] = sub_1000A4F98;
          v28[3] = &unk_1001C6968;
          v29 = v11;
          dispatch_async(v9, v28);
        }

        else
        {
          v11[2](v11, 0);
        }
      }

      goto LABEL_10;
    }

    [(TSUZipWriter *)self writeData:localFileHeaderData];
    v16 = self->_localFileHeaderData;
    self->_localFileHeaderData = 0;

    [(TSUZipWriter *)self flushEntryData];
  }

  [(TSUZipWriter *)self writeData:v8 queue:v9 completion:v11];
LABEL_10:
  if (self->_calculateSize)
  {
    [(TSUZipWriterEntry *)self->_currentEntry setSize:[(TSUZipWriterEntry *)self->_currentEntry size]+ size];
  }

  if (self->_calculateCRC)
  {
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_1000A4FAC;
    applier[3] = &unk_1001C9310;
    applier[4] = self;
    dispatch_data_apply(v8, applier);
  }

LABEL_15:
}

- (void)flushEntryData
{
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

        [(TSUZipWriter *)self writeData:*(*(&v9 + 1) + 8 * v7), v9];
        v7 = v7 + 1;
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
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A5230;
  block[3] = &unk_1001CE550;
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
          sub_1001604FC();
        }

        if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
        {
          sub_100160510();
        }

        v4 = [NSError tsu_fileWriteUnknownErrorWithUserInfo:0];
        [(TSUZipWriter *)self handleWriteError:v4];

        return;
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

  v13 = self->_currentEntry;
  self->_currentEntry = 0;
}

- (void)writeEntryWithName:(id)a3 force32BitSize:(BOOL)a4 lastModificationDate:(id)a5 size:(unint64_t)a6 CRC:(unsigned int)a7 fromReadChannel:(id)a8 writeHandler:(id)a9
{
  v15 = a3;
  v16 = a5;
  v17 = a8;
  v18 = a9;
  if (!v17)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100160550();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100160564();
    }

    v19 = [NSString stringWithUTF8String:"[TSUZipWriter writeEntryWithName:force32BitSize:lastModificationDate:size:CRC:fromReadChannel:writeHandler:]"];
    v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipWriter.m"];
    [TSUAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:365 isFatal:0 description:"invalid nil value for '%{public}s'", "readChannel"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  writeQueue = self->_writeQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A5C74;
  block[3] = &unk_1001CE628;
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
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A602C;
  v7[3] = &unk_1001C9338;
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
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000A61E0;
  v4[3] = &unk_1001CD228;
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
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000A62A0;
    v7[3] = &unk_1001C5A18;
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
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A6508;
  block[3] = &unk_1001CE550;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(writeQueue, block);
}

- (void)writeCentralDirectory
{
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

        [(TSUZipWriter *)self writeCentralFileHeaderDataForEntry:*(*(&v9 + 1) + 8 * v8), v9];
        v8 = v8 + 1;
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
      sub_100160818();
    }

    if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10016082C();
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
LABEL_18:
    v20 = [v4 size];
    goto LABEL_20;
  }

  if (self->_force32BitSize)
  {
    v18 = [v4 size];
    force32BitSize = self->_force32BitSize;
    *(v13 + 18) = v18;
    if (!force32BitSize)
    {
      v20 = -1;
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v20 = -1;
  *(v13 + 18) = -1;
LABEL_20:
  *(v13 + 22) = v20;
  *(v13 + 13) = v7;
  *(v13 + 14) = v11;
  memcpy(v14, __src, v7);
  if (v25)
  {
    v21 = &v14[v7];
    *v21 = TSUZip64ExtraFieldSignature;
    *(v21 + 1) = 16;
    v22 = [v4 size];
    *(v21 + 4) = v22;
    *(v21 + 12) = v22;
  }

  v23 = dispatch_data_create(v13, v12 + 30, 0, _dispatch_data_destructor_free);

  return v23;
}

- (void)writeCentralFileHeaderDataForEntry:(id)a3
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
      sub_10016086C();
    }

    if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10016082C();
    }

    v7 = 0xFFFFLL;
  }

  v27 = self;
  v8 = self->_options & 2;
  v9 = v8 | ([v4 size] >> 32);
  v10 = v8 | ([v4 offset] >> 32);
  v11 = 4 * ((v9 | v10) != 0);
  if (v9)
  {
    v11 = 20;
  }

  v12 = v10 != 0;
  if (v10)
  {
    v13 = v11 | 8;
  }

  else
  {
    v13 = v11;
  }

  v14 = v7 + v13;
  v15 = malloc_type_malloc(v7 + v13 + 46, 0x6A38B073uLL);
  v16 = v15 + 46;
  *v15 = 33639248;
  *(v15 + 4) = 1310782;
  v17 = [v4 lastModificationDate];
  v18 = [v17 tsu_DOSTime];

  HIDWORD(v19) = v18;
  LODWORD(v19) = v18;
  *(v15 + 3) = v19 >> 16;
  *(v15 + 4) = [v4 CRC];
  if (v9)
  {
    v20 = -1;
    *(v15 + 5) = -1;
  }

  else
  {
    *(v15 + 5) = [v4 size];
    v20 = [v4 size];
  }

  *(v15 + 6) = v20;
  *(v15 + 14) = v7;
  *(v15 + 15) = v13;
  *(v15 + 4) = 0;
  *(v15 + 20) = 0;
  v21 = v12;
  if (v12)
  {
    *(v15 + 42) = -1;
    memcpy(v16, __src, v7);
    *&v16[v7] = TSUZip64ExtraFieldSignature;
    v22 = &v16[v7 + 4];
    *&v16[v7 + 2] = 0;
    v23 = &v16[v7 + 2];
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v15 + 42) = [v4 offset];
    memcpy(v16, __src, v7);
    if (!v9)
    {
      goto LABEL_23;
    }

    v22 = &v16[v7 + 4];
    *&v16[v7] = TSUZip64ExtraFieldSignature;
    v23 = &v16[v7 + 2];
  }

  v24 = &v16[v7];
  *v23 = 16;
  *v22 = [v4 size];
  *(v24 + 12) = [v4 size];
  if (v21)
  {
    v22 = v24 + 20;
LABEL_22:
    *v23 += 8;
    *v22 = [v4 offset];
  }

LABEL_23:
  v25 = dispatch_data_create(v15, v14 + 46, 0, _dispatch_data_destructor_free);
  [(TSUZipWriter *)v27 writeData:v25];
}

- (void)writeEndOfCentralDirectoryDataWithOffset:(int64_t)a3 size:(int64_t)a4 entryCount:(unint64_t)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v9 = (LOBYTE(self->_options) >> 2) & 1;
  if (a5 > 0xFFFE)
  {
    v10 = 1;
  }

  else
  {
    v10 = (LOBYTE(self->_options) >> 2) & 1;
  }

  if (a4 > 4294967294)
  {
    v11 = 1;
  }

  else
  {
    v11 = (LOBYTE(self->_options) >> 2) & 1;
  }

  if (a3 > 4294967294)
  {
    v12 = 1;
  }

  else
  {
    v12 = (LOBYTE(self->_options) >> 2) & 1;
  }

  if ((v10 & 1) != 0 || (v11 & 1) != 0 || v12)
  {
    currentOffset = self->_currentOffset;
    [(TSUZipWriter *)self writeZip64EndOfCentralDirectoryWithOffset:a3 size:a4 entryCount:a5];
    [(TSUZipWriter *)self writeZip64EndOfCentralDirectoryLocatorWithOffset:currentOffset];
  }

  v14 = malloc_type_malloc(0x16uLL, 0x1497331BuLL);
  *v14 = 101010256;
  if (v10)
  {
    v15 = -1;
  }

  else
  {
    v15 = v5;
  }

  v14[4] = v15;
  v14[5] = v15;
  if (v11)
  {
    v16 = -1;
  }

  else
  {
    v16 = v6;
  }

  if (v12)
  {
    v17 = -1;
  }

  else
  {
    v17 = v7;
  }

  *(v14 + 3) = v16;
  *(v14 + 4) = v17;
  v14[10] = 0;
  v18 = dispatch_data_create(v14, 0x16uLL, 0, _dispatch_data_destructor_free);
  [(TSUZipWriter *)self writeData:v18];
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
  v10 = dispatch_data_create(v9, 0x38uLL, 0, _dispatch_data_destructor_free);
  [(TSUZipWriter *)self writeData:v10];
}

- (void)writeZip64EndOfCentralDirectoryLocatorWithOffset:(int64_t)a3
{
  v5 = malloc_type_malloc(0x14uLL, 0x11B077FEuLL);
  *v5 = 117853008;
  v5[1] = 0;
  *(v5 + 1) = a3;
  v5[4] = 1;
  v6 = dispatch_data_create(v5, 0x14uLL, 0, _dispatch_data_destructor_free);
  [(TSUZipWriter *)self writeData:v6];
}

- (void)writeData:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  size = dispatch_data_get_size(a3);
  self->_currentOffset += size;
  writtenOffset = self->_writtenOffset;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000A7600;
  v14[3] = &unk_1001CE720;
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
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000A77AC;
  v13[3] = &unk_1001CE770;
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
  v4 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001CE790);
  }

  v5 = TSUAssertCat_log_t;
  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 67110146;
    v19 = v4;
    v20 = 2082;
    v21 = "[TSUZipWriter prepareWriteChannelWithCloseCompletionHandler:]";
    v22 = 2082;
    v23 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipWriter.m";
    v24 = 1024;
    v25 = 783;
    v26 = 2114;
    v27 = v8;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  v9 = [NSString stringWithUTF8String:"[TSUZipWriter prepareWriteChannelWithCloseCompletionHandler:]"];
  v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipWriter.m"];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  [TSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:783 isFatal:0 description:"Abstract method not overridden by %{public}@", v12];

  +[TSUAssertionHandler logBacktraceThrottled];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v14, "[TSUZipWriter prepareWriteChannelWithCloseCompletionHandler:]"];
  v16 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v15 userInfo:0];
  v17 = v16;

  objc_exception_throw(v16);
}

- (unint64_t)archiveLength
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  writeQueue = self->_writeQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000A7D20;
  v5[3] = &unk_1001C5A40;
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
    if ([v5 code] != 3072 || (objc_msgSend(v6, "domain"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", NSCocoaErrorDomain), v7, (v8 & 1) == 0))
    {
      if (TSUDefaultCat_init_token != -1)
      {
        sub_100160880();
      }

      v9 = TSUDefaultCat_log_t;
      if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_100160894(v9, v6);
      }
    }

    if (!self->_error)
    {
      objc_storeStrong(&self->_error, a3);
      channelQueue = self->_channelQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000A7EB0;
      block[3] = &unk_1001C5A68;
      block[4] = self;
      dispatch_async(channelQueue, block);
    }
  }
}

- (void)enumerateEntriesUsingBlock:(id)a3
{
  v4 = a3;
  writeQueue = self->_writeQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A7F8C;
  v7[3] = &unk_1001C5A18;
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
    v4 = [(NSMutableArray *)self->_entries sortedArrayUsingComparator:&stru_1001CE7F0];
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
  v9 = sub_1000A78E4;
  v10 = sub_1000A78F4;
  v11 = 0;
  writeQueue = self->_writeQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000A8324;
  v5[3] = &unk_1001C5A40;
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
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000A841C;
  v5[3] = &unk_1001C5A40;
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
  v15 = sub_1000A78E4;
  v16 = sub_1000A78F4;
  v17 = 0;
  writeQueue = self->_writeQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A8540;
  block[3] = &unk_1001CD200;
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
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A8638;
  block[3] = &unk_1001CE2B8;
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
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A883C;
  block[3] = &unk_1001CE2B8;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(writeQueue, block);
}

- (void)truncateToOffsetImpl:(int64_t)a3 completion:(id)a4
{
  v4 = a4;
  v5 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001CE810);
  }

  v6 = TSUAssertCat_log_t;
  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    v7 = v6;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 67110146;
    v20 = v5;
    v21 = 2082;
    v22 = "[TSUZipWriter truncateToOffsetImpl:completion:]";
    v23 = 2082;
    v24 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipWriter.m";
    v25 = 1024;
    v26 = 920;
    v27 = 2114;
    v28 = v9;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  v10 = [NSString stringWithUTF8String:"[TSUZipWriter truncateToOffsetImpl:completion:]"];
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipWriter.m"];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [TSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:920 isFatal:0 description:"Abstract method not overridden by %{public}@", v13];

  +[TSUAssertionHandler logBacktraceThrottled];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v15, "[TSUZipWriter truncateToOffsetImpl:completion:]"];
  v17 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v16 userInfo:0];
  v18 = v17;

  objc_exception_throw(v17);
}

@end