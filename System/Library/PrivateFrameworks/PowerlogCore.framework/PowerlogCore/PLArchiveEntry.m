@interface PLArchiveEntry
+ (id)storageQueue;
+ (void)load;
- (BOOL)fullMode;
- (BOOL)removed;
- (BOOL)syncedOff;
- (NSString)compressedPath;
- (NSString)name;
- (NSString)path;
- (PLArchiveEntry)initWithMetadata:(id)a3;
- (PLArchiveEntry)initWithStartDate:(id)a3 endDate:(id)a4 andUUID:(id)a5;
- (double)systemTimeOffset;
- (id)initEntryWithRawData:(id)a3;
- (int64_t)mainDBSizeAtStart;
- (int64_t)stage;
- (unint64_t)numAttempts;
- (void)log;
- (void)setMainDBSizeAtStart:(int64_t)a3;
- (void)setNumAttempts:(unint64_t)a3;
- (void)setRemovedDate:(id)a3;
- (void)setStage:(int64_t)a3;
- (void)setSyncedOffDate:(id)a3;
- (void)setSystemTimeOffset:(double)a3;
@end

@implementation PLArchiveEntry

+ (void)load
{
  if (!+[PLUtilities isPowerexceptionsd])
  {
    v3.receiver = a1;
    v3.super_class = &OBJC_METACLASS___PLArchiveEntry;
    objc_msgSendSuper2(&v3, sel_load);
  }
}

- (PLArchiveEntry)initWithStartDate:(id)a3 endDate:(id)a4 andUUID:(id)a5
{
  v17[3] = *MEMORY[0x1E69E9840];
  v16[0] = @"StartDate";
  v16[1] = @"EndDate";
  v17[0] = a3;
  v17[1] = a4;
  v16[2] = @"UUID";
  v17[2] = a5;
  v8 = MEMORY[0x1E695DF20];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 dictionaryWithObjects:v17 forKeys:v16 count:3];

  v13 = [(PLArchiveEntry *)self initEntryWithRawData:v12];
  [(PLArchiveEntry *)v13 log];

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (PLArchiveEntry)initWithMetadata:(id)a3
{
  v35[7] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v33.receiver = self;
  v33.super_class = PLArchiveEntry;
  v5 = [(PLEntry *)&v33 init];
  if (v5)
  {
    v31 = v5;
    v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:v4];
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
    v32 = v4;
    v17 = [PLUtilities extractDateStringAndUUIDStringFromFilePath:v4];
    v18 = [v17 lastObject];
    v35[2] = v18;
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

    v4 = v32;
  }

  else
  {
    v23 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v23;
}

- (id)initEntryWithRawData:(id)a3
{
  v4 = [a3 mutableCopy];
  v5 = [v4 objectForKeyedSubscript:@"SystemTimeOffset"];

  if (!v5)
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = [MEMORY[0x1E695DF00] date];
    v8 = [MEMORY[0x1E695DF00] monotonicDate];
    [v7 timeIntervalSinceDate:v8];
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
  v4 = [(PLArchiveEntry *)self startDate];
  [(PLArchiveEntry *)self systemTimeOffset];
  v5 = [v4 dateByAddingTimeInterval:?];
  v6 = [(PLArchiveEntry *)self endDate];
  [(PLArchiveEntry *)self systemTimeOffset];
  v7 = [v6 dateByAddingTimeInterval:?];
  v8 = [v3 filenameDateStringWithStartDate:v5 endDate:v7];

  v9 = MEMORY[0x1E696AEC0];
  v10 = +[PLUtilities containerPath];
  v11 = [v10 stringByAppendingString:@"/Library/BatteryLife/Archives/powerlog_%@_%@.PLSQL"];
  v12 = [(PLArchiveEntry *)self uuid];
  v13 = [v9 stringWithFormat:v11, v8, v12];

  return v13;
}

- (NSString)compressedPath
{
  v2 = [(PLArchiveEntry *)self path];
  v3 = [v2 stringByAppendingString:@".gz"];

  return v3;
}

- (NSString)name
{
  v2 = [(PLArchiveEntry *)self path];
  v3 = [v2 lastPathComponent];

  return v3;
}

- (void)setSystemTimeOffset:(double)a3
{
  [(PLArchiveEntry *)self systemTimeOffset];
  if (v5 != a3)
  {
    v6 = [(PLArchiveEntry *)self path];
    v7 = [(PLArchiveEntry *)self compressedPath];
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__0;
    v24 = __Block_byref_object_dispose__0;
    v8 = self;
    v25 = v8;
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    *&v19[3] = a3;
    v9 = +[PowerlogCore sharedCore];
    v10 = [v9 storage];
    v11 = v21[5];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __38__PLArchiveEntry_setSystemTimeOffset___block_invoke;
    v18[3] = &unk_1E8519198;
    v18[4] = &v20;
    v18[5] = v19;
    [v10 updateEntry:v11 withBlock:v18];

    v12 = +[PowerlogCore sharedCore];
    v13 = [v12 storage];
    [v13 flushCachesWithReason:@"ArchiveEntryUpdate"];

    v14 = [MEMORY[0x1E696AC08] defaultManager];
    v15 = [(PLArchiveEntry *)v8 path];
    [v14 moveItemAtPath:v6 toPath:v15 error:0];

    v16 = [MEMORY[0x1E696AC08] defaultManager];
    v17 = [(PLArchiveEntry *)v8 compressedPath];
    [v16 moveItemAtPath:v7 toPath:v17 error:0];

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
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setStage:(int64_t)a3
{
  if ([(PLArchiveEntry *)self stage]!= a3)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__0;
    v16 = __Block_byref_object_dispose__0;
    v17 = self;
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v11[3] = a3;
    v5 = +[PowerlogCore sharedCore];
    v6 = [v5 storage];
    v7 = v13[5];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __27__PLArchiveEntry_setStage___block_invoke;
    v10[3] = &unk_1E8519198;
    v10[4] = &v12;
    v10[5] = v11;
    [v6 updateEntry:v7 withBlock:v10];

    v8 = +[PowerlogCore sharedCore];
    v9 = [v8 storage];
    [v9 flushCachesWithReason:@"ArchiveEntryUpdate"];

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
  v3 = [v2 integerValue];

  return v3;
}

- (void)setNumAttempts:(unint64_t)a3
{
  if ([(PLArchiveEntry *)self numAttempts]!= a3)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__0;
    v16 = __Block_byref_object_dispose__0;
    v17 = self;
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v11[3] = a3;
    v5 = +[PowerlogCore sharedCore];
    v6 = [v5 storage];
    v7 = v13[5];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __33__PLArchiveEntry_setNumAttempts___block_invoke;
    v10[3] = &unk_1E8519198;
    v10[4] = &v12;
    v10[5] = v11;
    [v6 updateEntry:v7 withBlock:v10];

    v8 = +[PowerlogCore sharedCore];
    v9 = [v8 storage];
    [v9 flushCachesWithReason:@"ArchiveEntryUpdate"];

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
  v3 = [v2 integerValue];

  return v3;
}

- (void)setSyncedOffDate:(id)a3
{
  v4 = a3;
  v5 = [(PLArchiveEntry *)self syncedOffDate];
  if (([v4 isEqualToDate:v5] & 1) != 0 || !+[PLDefaults fullMode](PLDefaults, "fullMode"))
  {
  }

  else
  {
    v6 = [(PLArchiveEntry *)self stage];

    if (v6 >= 5)
    {
      v15 = 0;
      v16 = &v15;
      v17 = 0x3032000000;
      v18 = __Block_byref_object_copy__0;
      v19 = __Block_byref_object_dispose__0;
      v20 = self;
      v13[0] = 0;
      v13[1] = v13;
      v13[2] = 0x3032000000;
      v13[3] = __Block_byref_object_copy__0;
      v13[4] = __Block_byref_object_dispose__0;
      v14 = v4;
      v7 = +[PowerlogCore sharedCore];
      v8 = [v7 storage];
      v9 = v16[5];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __35__PLArchiveEntry_setSyncedOffDate___block_invoke;
      v12[3] = &unk_1E8519198;
      v12[4] = &v15;
      v12[5] = v13;
      [v8 updateEntry:v9 withBlock:v12];

      v10 = +[PowerlogCore sharedCore];
      v11 = [v10 storage];
      [v11 flushCachesWithReason:@"ArchiveEntryUpdate"];

      _Block_object_dispose(v13, 8);
      _Block_object_dispose(&v15, 8);
    }
  }
}

- (BOOL)syncedOff
{
  v2 = [(PLArchiveEntry *)self syncedOffDate];
  [v2 timeIntervalSince1970];
  v4 = v3 > 0.0;

  return v4;
}

- (void)setRemovedDate:(id)a3
{
  v4 = a3;
  v5 = [(PLArchiveEntry *)self removedDate];
  if ([v4 isEqualToDate:v5])
  {
  }

  else
  {
    v6 = [(PLArchiveEntry *)self stage];

    if (v6 >= 5)
    {
      v15 = 0;
      v16 = &v15;
      v17 = 0x3032000000;
      v18 = __Block_byref_object_copy__0;
      v19 = __Block_byref_object_dispose__0;
      v20 = self;
      v13[0] = 0;
      v13[1] = v13;
      v13[2] = 0x3032000000;
      v13[3] = __Block_byref_object_copy__0;
      v13[4] = __Block_byref_object_dispose__0;
      v14 = v4;
      v7 = +[PowerlogCore sharedCore];
      v8 = [v7 storage];
      v9 = v16[5];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __33__PLArchiveEntry_setRemovedDate___block_invoke;
      v12[3] = &unk_1E8519198;
      v12[4] = &v15;
      v12[5] = v13;
      [v8 updateEntry:v9 withBlock:v12];

      v10 = +[PowerlogCore sharedCore];
      v11 = [v10 storage];
      [v11 flushCachesWithReason:@"ArchiveEntryUpdate"];

      _Block_object_dispose(v13, 8);
      _Block_object_dispose(&v15, 8);
    }
  }
}

- (BOOL)removed
{
  v2 = [(PLArchiveEntry *)self removedDate];
  [v2 timeIntervalSince1970];
  v4 = v3 > 0.0;

  return v4;
}

- (void)setMainDBSizeAtStart:(int64_t)a3
{
  if ([(PLArchiveEntry *)self mainDBSizeAtStart]!= a3)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__0;
    v16 = __Block_byref_object_dispose__0;
    v17 = self;
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v11[3] = a3;
    v5 = +[PowerlogCore sharedCore];
    v6 = [v5 storage];
    v7 = v13[5];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __39__PLArchiveEntry_setMainDBSizeAtStart___block_invoke;
    v10[3] = &unk_1E8519198;
    v10[4] = &v12;
    v10[5] = v11;
    [v6 updateEntry:v7 withBlock:v10];

    v8 = +[PowerlogCore sharedCore];
    v9 = [v8 storage];
    [v9 flushCachesWithReason:@"ArchiveEntryUpdate"];

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
  v3 = [v2 longLongValue];

  return v3;
}

- (void)log
{
  v4 = +[PowerlogCore sharedCore];
  v3 = [v4 storage];
  [v3 writeEntry:self withCompletionBlock:&__block_literal_global_3];
}

+ (id)storageQueue
{
  v2 = [PLCoreStorage storageQueueNameForClass:objc_opt_class()];
  v3 = [PLUtilities workQueueForKey:v2];

  return v3;
}

@end