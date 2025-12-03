@interface PLArchiveEntry
+ (id)storageQueue;
+ (void)load;
- (BOOL)fullMode;
- (BOOL)removed;
- (BOOL)syncedOff;
- (NSString)compressedPath;
- (NSString)name;
- (NSString)path;
- (PLArchiveEntry)initWithMetadata:(id)metadata;
- (PLArchiveEntry)initWithStartDate:(id)date endDate:(id)endDate andUUID:(id)d;
- (double)systemTimeOffset;
- (id)initEntryWithRawData:(id)data;
- (int64_t)mainDBSizeAtStart;
- (int64_t)stage;
- (unint64_t)numAttempts;
- (void)log;
- (void)setMainDBSizeAtStart:(int64_t)start;
- (void)setNumAttempts:(unint64_t)attempts;
- (void)setRemovedDate:(id)date;
- (void)setStage:(int64_t)stage;
- (void)setSyncedOffDate:(id)date;
- (void)setSystemTimeOffset:(double)offset;
@end

@implementation PLArchiveEntry

+ (void)load
{
  if (!+[PLUtilities isPowerexceptionsd])
  {
    v3.receiver = self;
    v3.super_class = &OBJC_METACLASS___PLArchiveEntry;
    objc_msgSendSuper2(&v3, sel_load);
  }
}

- (PLArchiveEntry)initWithStartDate:(id)date endDate:(id)endDate andUUID:(id)d
{
  v17[3] = *MEMORY[0x1E69E9840];
  v16[0] = @"StartDate";
  v16[1] = @"EndDate";
  v17[0] = date;
  v17[1] = endDate;
  v16[2] = @"UUID";
  v17[2] = d;
  v8 = MEMORY[0x1E695DF20];
  dCopy = d;
  endDateCopy = endDate;
  dateCopy = date;
  v12 = [v8 dictionaryWithObjects:v17 forKeys:v16 count:3];

  v13 = [(PLArchiveEntry *)self initEntryWithRawData:v12];
  [(PLArchiveEntry *)v13 log];

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (PLArchiveEntry)initWithMetadata:(id)metadata
{
  v35[7] = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  v33.receiver = self;
  v33.super_class = PLArchiveEntry;
  v5 = [(PLEntry *)&v33 init];
  if (v5)
  {
    v31 = v5;
    v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:metadataCopy];
    v7 = [v6 objectForKeyedSubscript:@"systemTimeOffset"];
    [v7 doubleValue];
    v9 = v8;

    v10 = MEMORY[0x1E695DF00];
    v11 = [v6 objectForKeyedSubscript:@"systemTimeStart"];
    [v11 doubleValue];
    v12 = [v10 dateWithTimeIntervalSince1970:?];

    v13 = MEMORY[0x1E695DF00];
    v14 = [v6 objectForKeyedSubscript:@"systemTimeEnd"];
    [v14 doubleValue];
    v15 = [v13 dateWithTimeIntervalSince1970:?];

    v34[0] = @"StartDate";
    v30 = v12;
    v28 = [v12 dateByAddingTimeInterval:-v9];
    v35[0] = v28;
    v34[1] = @"EndDate";
    v29 = v15;
    v16 = [v15 dateByAddingTimeInterval:-v9];
    v35[1] = v16;
    v34[2] = @"UUID";
    v32 = metadataCopy;
    v17 = [PLUtilities extractDateStringAndUUIDStringFromFilePath:metadataCopy];
    lastObject = [v17 lastObject];
    v35[2] = lastObject;
    v34[3] = @"SystemTimeOffset";
    v19 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
    v35[3] = v19;
    v34[4] = @"SystemTimeOffsetModified";
    v20 = [v6 objectForKeyedSubscript:@"systemTimeModified"];
    v35[4] = v20;
    v34[5] = @"FullMode";
    v21 = [v6 objectForKeyedSubscript:@"fullMode"];
    v35[5] = v21;
    v34[6] = @"SyncedOffDate";
    v22 = [v6 objectForKeyedSubscript:@"hasBeenLinkedToCR"];
    if (v22)
    {
      [MEMORY[0x1E695DF00] monotonicDate];
    }

    else
    {
      [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:0.0];
    }
    v24 = ;
    v35[6] = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:7];

    v23 = [(PLArchiveEntry *)v31 initEntryWithRawData:v25];
    [(PLArchiveEntry *)v23 log];

    metadataCopy = v32;
  }

  else
  {
    v23 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v23;
}

- (id)initEntryWithRawData:(id)data
{
  v4 = [data mutableCopy];
  v5 = [v4 objectForKeyedSubscript:@"SystemTimeOffset"];

  if (!v5)
  {
    v6 = MEMORY[0x1E696AD98];
    date = [MEMORY[0x1E695DF00] date];
    monotonicDate = [MEMORY[0x1E695DF00] monotonicDate];
    [date timeIntervalSinceDate:monotonicDate];
    v9 = [v6 numberWithDouble:?];
    [v4 setObject:v9 forKeyedSubscript:@"SystemTimeOffset"];
  }

  v10 = [v4 objectForKeyedSubscript:@"SystemTimeOffsetModified"];

  if (!v10)
  {
    [v4 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"SystemTimeOffsetModified"];
  }

  v11 = [v4 objectForKeyedSubscript:@"FullMode"];

  if (!v11)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{+[PLDefaults fullMode](PLDefaults, "fullMode")}];
    [v4 setObject:v12 forKeyedSubscript:@"FullMode"];
  }

  v13 = [v4 objectForKeyedSubscript:@"Stage"];

  if (!v13)
  {
    [v4 setObject:&unk_1F5405A30 forKeyedSubscript:@"Stage"];
  }

  v14 = [v4 objectForKeyedSubscript:@"NumAttempts"];

  if (!v14)
  {
    [v4 setObject:&unk_1F5405A48 forKeyedSubscript:@"NumAttempts"];
  }

  v15 = [v4 objectForKeyedSubscript:@"SyncedOffDate"];

  if (!v15)
  {
    v16 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:0.0];
    [v4 setObject:v16 forKeyedSubscript:@"SyncedOffDate"];
  }

  v17 = [v4 objectForKeyedSubscript:@"RemovedDate"];

  if (!v17)
  {
    v18 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:0.0];
    [v4 setObject:v18 forKeyedSubscript:@"RemovedDate"];
  }

  v19 = [v4 objectForKeyedSubscript:@"MainDBSizeAtStart"];

  if (!v19)
  {
    [v4 setObject:&unk_1F5405A48 forKeyedSubscript:@"MainDBSizeAtStart"];
  }

  v20 = +[PLArchiveEntry entryKey];
  v23.receiver = self;
  v23.super_class = PLArchiveEntry;
  v21 = [(PLEntry *)&v23 initWithEntryKey:v20 withRawData:v4];

  return v21;
}

- (NSString)path
{
  v3 = MEMORY[0x1E695DF00];
  startDate = [(PLArchiveEntry *)self startDate];
  [(PLArchiveEntry *)self systemTimeOffset];
  v5 = [startDate dateByAddingTimeInterval:?];
  endDate = [(PLArchiveEntry *)self endDate];
  [(PLArchiveEntry *)self systemTimeOffset];
  v7 = [endDate dateByAddingTimeInterval:?];
  v8 = [v3 filenameDateStringWithStartDate:v5 endDate:v7];

  v9 = MEMORY[0x1E696AEC0];
  v10 = +[PLUtilities containerPath];
  v11 = [v10 stringByAppendingString:@"/Library/BatteryLife/Archives/powerlog_%@_%@.PLSQL"];
  uuid = [(PLArchiveEntry *)self uuid];
  v13 = [v9 stringWithFormat:v11, v8, uuid];

  return v13;
}

- (NSString)compressedPath
{
  path = [(PLArchiveEntry *)self path];
  v3 = [path stringByAppendingString:@".gz"];

  return v3;
}

- (NSString)name
{
  path = [(PLArchiveEntry *)self path];
  lastPathComponent = [path lastPathComponent];

  return lastPathComponent;
}

- (void)setSystemTimeOffset:(double)offset
{
  [(PLArchiveEntry *)self systemTimeOffset];
  if (v5 != offset)
  {
    path = [(PLArchiveEntry *)self path];
    compressedPath = [(PLArchiveEntry *)self compressedPath];
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__0;
    v24 = __Block_byref_object_dispose__0;
    selfCopy = self;
    v25 = selfCopy;
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    *&v19[3] = offset;
    v9 = +[PowerlogCore sharedCore];
    storage = [v9 storage];
    v11 = v21[5];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __38__PLArchiveEntry_setSystemTimeOffset___block_invoke;
    v18[3] = &unk_1E8519198;
    v18[4] = &v20;
    v18[5] = v19;
    [storage updateEntry:v11 withBlock:v18];

    v12 = +[PowerlogCore sharedCore];
    storage2 = [v12 storage];
    [storage2 flushCachesWithReason:@"ArchiveEntryUpdate"];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path2 = [(PLArchiveEntry *)selfCopy path];
    [defaultManager moveItemAtPath:path toPath:path2 error:0];

    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    compressedPath2 = [(PLArchiveEntry *)selfCopy compressedPath];
    [defaultManager2 moveItemAtPath:compressedPath toPath:compressedPath2 error:0];

    _Block_object_dispose(v19, 8);
    _Block_object_dispose(&v20, 8);
  }
}

uint64_t __38__PLArchiveEntry_setSystemTimeOffset___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:*(*(*(a1 + 40) + 8) + 24)];
  [*(*(*(a1 + 32) + 8) + 40) setObject:v2 forKeyedSubscript:@"SystemTimeOffset"];

  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = MEMORY[0x1E695E118];

  return [v3 setObject:v4 forKeyedSubscript:@"SystemTimeOffsetModified"];
}

- (double)systemTimeOffset
{
  v2 = [(PLEntry *)self objectForKeyedSubscript:@"SystemTimeOffset"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (BOOL)fullMode
{
  v2 = [(PLEntry *)self objectForKeyedSubscript:@"FullMode"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setStage:(int64_t)stage
{
  if ([(PLArchiveEntry *)self stage]!= stage)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__0;
    v16 = __Block_byref_object_dispose__0;
    selfCopy = self;
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v11[3] = stage;
    v5 = +[PowerlogCore sharedCore];
    storage = [v5 storage];
    v7 = v13[5];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __27__PLArchiveEntry_setStage___block_invoke;
    v10[3] = &unk_1E8519198;
    v10[4] = &v12;
    v10[5] = v11;
    [storage updateEntry:v7 withBlock:v10];

    v8 = +[PowerlogCore sharedCore];
    storage2 = [v8 storage];
    [storage2 flushCachesWithReason:@"ArchiveEntryUpdate"];

    _Block_object_dispose(v11, 8);
    _Block_object_dispose(&v12, 8);
  }
}

void __27__PLArchiveEntry_setStage___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:*(*(*(a1 + 40) + 8) + 24)];
  [*(*(*(a1 + 32) + 8) + 40) setObject:v2 forKeyedSubscript:@"Stage"];
}

- (int64_t)stage
{
  v2 = [(PLEntry *)self objectForKeyedSubscript:@"Stage"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setNumAttempts:(unint64_t)attempts
{
  if ([(PLArchiveEntry *)self numAttempts]!= attempts)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__0;
    v16 = __Block_byref_object_dispose__0;
    selfCopy = self;
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v11[3] = attempts;
    v5 = +[PowerlogCore sharedCore];
    storage = [v5 storage];
    v7 = v13[5];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __33__PLArchiveEntry_setNumAttempts___block_invoke;
    v10[3] = &unk_1E8519198;
    v10[4] = &v12;
    v10[5] = v11;
    [storage updateEntry:v7 withBlock:v10];

    v8 = +[PowerlogCore sharedCore];
    storage2 = [v8 storage];
    [storage2 flushCachesWithReason:@"ArchiveEntryUpdate"];

    _Block_object_dispose(v11, 8);
    _Block_object_dispose(&v12, 8);
  }
}

void __33__PLArchiveEntry_setNumAttempts___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(*(a1 + 40) + 8) + 24)];
  [*(*(*(a1 + 32) + 8) + 40) setObject:v2 forKeyedSubscript:@"NumAttempts"];
}

- (unint64_t)numAttempts
{
  v2 = [(PLEntry *)self objectForKeyedSubscript:@"NumAttempts"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setSyncedOffDate:(id)date
{
  dateCopy = date;
  syncedOffDate = [(PLArchiveEntry *)self syncedOffDate];
  if (([dateCopy isEqualToDate:syncedOffDate] & 1) != 0 || !+[PLDefaults fullMode](PLDefaults, "fullMode"))
  {
  }

  else
  {
    stage = [(PLArchiveEntry *)self stage];

    if (stage >= 5)
    {
      v15 = 0;
      v16 = &v15;
      v17 = 0x3032000000;
      v18 = __Block_byref_object_copy__0;
      v19 = __Block_byref_object_dispose__0;
      selfCopy = self;
      v13[0] = 0;
      v13[1] = v13;
      v13[2] = 0x3032000000;
      v13[3] = __Block_byref_object_copy__0;
      v13[4] = __Block_byref_object_dispose__0;
      v14 = dateCopy;
      v7 = +[PowerlogCore sharedCore];
      storage = [v7 storage];
      v9 = v16[5];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __35__PLArchiveEntry_setSyncedOffDate___block_invoke;
      v12[3] = &unk_1E8519198;
      v12[4] = &v15;
      v12[5] = v13;
      [storage updateEntry:v9 withBlock:v12];

      v10 = +[PowerlogCore sharedCore];
      storage2 = [v10 storage];
      [storage2 flushCachesWithReason:@"ArchiveEntryUpdate"];

      _Block_object_dispose(v13, 8);
      _Block_object_dispose(&v15, 8);
    }
  }
}

- (BOOL)syncedOff
{
  syncedOffDate = [(PLArchiveEntry *)self syncedOffDate];
  [syncedOffDate timeIntervalSince1970];
  v4 = v3 > 0.0;

  return v4;
}

- (void)setRemovedDate:(id)date
{
  dateCopy = date;
  removedDate = [(PLArchiveEntry *)self removedDate];
  if ([dateCopy isEqualToDate:removedDate])
  {
  }

  else
  {
    stage = [(PLArchiveEntry *)self stage];

    if (stage >= 5)
    {
      v15 = 0;
      v16 = &v15;
      v17 = 0x3032000000;
      v18 = __Block_byref_object_copy__0;
      v19 = __Block_byref_object_dispose__0;
      selfCopy = self;
      v13[0] = 0;
      v13[1] = v13;
      v13[2] = 0x3032000000;
      v13[3] = __Block_byref_object_copy__0;
      v13[4] = __Block_byref_object_dispose__0;
      v14 = dateCopy;
      v7 = +[PowerlogCore sharedCore];
      storage = [v7 storage];
      v9 = v16[5];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __33__PLArchiveEntry_setRemovedDate___block_invoke;
      v12[3] = &unk_1E8519198;
      v12[4] = &v15;
      v12[5] = v13;
      [storage updateEntry:v9 withBlock:v12];

      v10 = +[PowerlogCore sharedCore];
      storage2 = [v10 storage];
      [storage2 flushCachesWithReason:@"ArchiveEntryUpdate"];

      _Block_object_dispose(v13, 8);
      _Block_object_dispose(&v15, 8);
    }
  }
}

- (BOOL)removed
{
  removedDate = [(PLArchiveEntry *)self removedDate];
  [removedDate timeIntervalSince1970];
  v4 = v3 > 0.0;

  return v4;
}

- (void)setMainDBSizeAtStart:(int64_t)start
{
  if ([(PLArchiveEntry *)self mainDBSizeAtStart]!= start)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__0;
    v16 = __Block_byref_object_dispose__0;
    selfCopy = self;
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v11[3] = start;
    v5 = +[PowerlogCore sharedCore];
    storage = [v5 storage];
    v7 = v13[5];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __39__PLArchiveEntry_setMainDBSizeAtStart___block_invoke;
    v10[3] = &unk_1E8519198;
    v10[4] = &v12;
    v10[5] = v11;
    [storage updateEntry:v7 withBlock:v10];

    v8 = +[PowerlogCore sharedCore];
    storage2 = [v8 storage];
    [storage2 flushCachesWithReason:@"ArchiveEntryUpdate"];

    _Block_object_dispose(v11, 8);
    _Block_object_dispose(&v12, 8);
  }
}

void __39__PLArchiveEntry_setMainDBSizeAtStart___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithLongLong:*(*(*(a1 + 40) + 8) + 24)];
  [*(*(*(a1 + 32) + 8) + 40) setObject:v2 forKeyedSubscript:@"MainDBSizeAtStart"];
}

- (int64_t)mainDBSizeAtStart
{
  v2 = [(PLEntry *)self objectForKeyedSubscript:@"MainDBSizeAtStart"];
  longLongValue = [v2 longLongValue];

  return longLongValue;
}

- (void)log
{
  v4 = +[PowerlogCore sharedCore];
  storage = [v4 storage];
  [storage writeEntry:self withCompletionBlock:&__block_literal_global_3];
}

+ (id)storageQueue
{
  v2 = [PLCoreStorage storageQueueNameForClass:objc_opt_class()];
  v3 = [PLUtilities workQueueForKey:v2];

  return v3;
}

@end