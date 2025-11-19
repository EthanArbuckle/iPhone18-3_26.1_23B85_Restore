@interface _PASDatabaseJournal
+ (id)_binderForDictionary:(id)a3;
+ (id)journalForInMemoryDb;
+ (id)journalWithDbPath:(id)a3;
- (BOOL)_executeFile:(id)a3 onDb:(id)a4 becameLocked:(BOOL *)a5;
- (BOOL)_executeNextRecordFromFile:(id)a3 onDb:(id)a4 becameLocked:(BOOL *)a5 deleteFile:(BOOL *)a6;
- (BOOL)deleteAllJournaledQueries;
- (BOOL)executeQueriesOnDatabase:(id)a3;
- (BOOL)startJournaling;
- (BOOL)stopJournaling;
- (id)_getCurrentFile;
- (id)description;
- (void)_addCurrentFileToLog;
- (void)_closeCurrentFile;
- (void)runQuery:(id)a3 values:(id)a4 onDb:(id)a5;
@end

@implementation _PASDatabaseJournal

- (BOOL)stopJournaling
{
  if (self->_inMemory)
  {
    v2 = 0;
  }

  else
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    queue = self->_queue;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __37___PASDatabaseJournal_stopJournaling__block_invoke;
    v5[3] = &unk_1E77F25E8;
    v5[4] = self;
    v5[5] = &v6;
    dispatch_sync(queue, v5);
    v2 = *(v7 + 24);
    _Block_object_dispose(&v6, 8);
  }

  return v2 & 1;
}

- (BOOL)startJournaling
{
  if (self->_inMemory)
  {
    v2 = 0;
  }

  else
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    queue = self->_queue;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __38___PASDatabaseJournal_startJournaling__block_invoke;
    v5[3] = &unk_1E77F25E8;
    v5[4] = self;
    v5[5] = &v6;
    dispatch_sync(queue, v5);
    v2 = *(v7 + 24);
    _Block_object_dispose(&v6, 8);
  }

  return v2 & 1;
}

- (BOOL)deleteAllJournaledQueries
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48___PASDatabaseJournal_deleteAllJournaledQueries__block_invoke;
  v5[3] = &unk_1E77F25E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)executeQueriesOnDatabase:(id)a3
{
  v5 = a3;
  v6 = v5;
  v7 = 1;
  if (!self->_inMemory)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 1;
    queue = self->_queue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __48___PASDatabaseJournal_executeQueriesOnDatabase___block_invoke;
    v10[3] = &unk_1E77F1DC0;
    v10[4] = self;
    v12 = &v14;
    v13 = a2;
    v11 = v5;
    dispatch_sync(queue, v10);
    v7 = *(v15 + 24);

    _Block_object_dispose(&v14, 8);
  }

  return v7 & 1;
}

- (BOOL)_executeFile:(id)a3 onDb:(id)a4 becameLocked:(BOOL *)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if (self->_inMemory)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"_PASDatabaseJournal.m" lineNumber:242 description:{@"Invalid parameter not satisfying: %@", @"!_inMemory"}];
  }

  v20 = 1;
  v11 = [(NSString *)self->_directoryPath stringByAppendingPathComponent:v9];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v22 = v11;
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "executing journal file: %@", buf, 0xCu);
  }

    ;
  }

  if (v20 != 1)
  {
    goto LABEL_15;
  }

  v13 = [MEMORY[0x1E696AC08] defaultManager];
  v19 = 0;
  [v13 removeItemAtPath:v11 error:&v19];
  v14 = v19;

  if (!v14)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v11;
      _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_PASDatabaseJournal deleted journal file: %@", buf, 0xCu);
    }

LABEL_15:
    v14 = 0;
    v15 = 1;
    goto LABEL_16;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v22 = v11;
    v23 = 2112;
    v24 = v14;
    _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_PASDatabaseJournal unable to delete journal file: %@: %@", buf, 0x16u);
  }

  v15 = 0;
LABEL_16:

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)_executeNextRecordFromFile:(id)a3 onDb:(id)a4 becameLocked:(BOOL *)a5 deleteFile:(BOOL *)a6
{
  v37 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = objc_autoreleasePoolPush();
  v12 = [v9 read];
  if (!v12)
  {
    objc_autoreleasePoolPop(v11);
    goto LABEL_6;
  }

  v13 = v12;
  v14 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = [v14 setWithObjects:{v15, v16, v17, objc_opt_class(), 0}];
  v32 = 0;
  v19 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v18 fromData:v13 error:&v32];
  v20 = v32;

  objc_autoreleasePoolPop(v11);
  if (!v19)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v34 = v9;
      v35 = 2112;
      v36 = v20;
      _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Got nil after trying to unarchive a db journal at %@: %@", buf, 0x16u);
    }

    goto LABEL_13;
  }

  v21 = [v19 objectForKeyedSubscript:@"__query"];

  if (!v21)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = v9;
      _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "No __query key set in journal file: %@", buf, 0xCu);
    }

LABEL_13:
    v25 = 0;
    goto LABEL_14;
  }

  v22 = [v19 objectForKeyedSubscript:@"__query"];
  v23 = [_PASDatabaseJournal _binderForDictionary:v19];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __79___PASDatabaseJournal__executeNextRecordFromFile_onDb_becameLocked_deleteFile___block_invoke;
  v28[3] = &unk_1E77F1D70;
  v29 = v19;
  v30 = a6;
  v31 = a5;
  v24 = v19;
  [v10 prepAndRunQuery:v22 onPrep:v23 onRow:0 onError:v28];

LABEL_6:
  v25 = 1;
LABEL_14:

  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

- (void)runQuery:(id)a3 values:(id)a4 onDb:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_inMemory)
  {
    v11 = [_PASDatabaseJournal _binderForDictionary:v9];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __44___PASDatabaseJournal_runQuery_values_onDb___block_invoke_39;
    v14[3] = &unk_1E77F2868;
    v12 = &v15;
    v15 = v8;
    [v10 prepAndRunQuery:v15 onPrep:v11 onRow:0 onError:v14];
  }

  else
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44___PASDatabaseJournal_runQuery_values_onDb___block_invoke;
    block[3] = &unk_1E77F1D48;
    v12 = &v17;
    v17 = v8;
    v18 = v9;
    v19 = self;
    v20 = v10;
    dispatch_sync(queue, block);

    v11 = v18;
  }
}

- (void)_closeCurrentFile
{
  [(_PASDatabaseJournalFile *)self->_currentFile destroyAndUnlinkIfEmpty];
  currentFile = self->_currentFile;
  self->_currentFile = 0;
}

- (void)_addCurrentFileToLog
{
  currentFile = self->_currentFile;
  if (!currentFile || ![(_PASDatabaseJournalFile *)currentFile isAlive]|| [(_PASDatabaseJournalFile *)self->_currentFile length]>= 0x100000)
  {
    v4 = MEMORY[0x1E696AEC0];
    directoryPath = self->_directoryPath;
    serialNumber = self->_serialNumber;
    self->_serialNumber = serialNumber + 1;
    v7 = [v4 stringWithFormat:@"J-%20llu.%@.dbJournal", serialNumber, self->_uuid];
    v10 = [(NSString *)directoryPath stringByAppendingPathComponent:v7];

    v8 = [[_PASDatabaseJournalFile alloc] initWithPath:v10];
    v9 = self->_currentFile;
    self->_currentFile = v8;
  }
}

- (id)_getCurrentFile
{
  currentFile = self->_currentFile;
  if (!currentFile)
  {
    [(_PASDatabaseJournal *)self _addCurrentFileToLog];
    currentFile = self->_currentFile;
  }

  return currentFile;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@ in %@>", v5, self->_directoryPath];

  return v6;
}

+ (id)_binderForDictionary:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44___PASDatabaseJournal__binderForDictionary___block_invoke;
  v7[3] = &unk_1E77F2818;
  v8 = v3;
  v4 = v3;
  v5 = MEMORY[0x1AC566DD0](v7);

  return v5;
}

+ (id)journalForInMemoryDb
{
  v2 = objc_opt_new();
  v3 = dispatch_queue_create("com.apple.proactive.databasejournal.inmemory", 0);
  v4 = *(v2 + 8);
  *(v2 + 8) = v3;

  v5 = *(v2 + 16);
  *(v2 + 16) = 0;

  *(v2 + 24) = 0;
  v6 = [MEMORY[0x1E696AFB0] UUID];
  v7 = [v6 UUIDString];
  v8 = *(v2 + 32);
  *(v2 + 32) = v7;

  *(v2 + 41) = 1;

  return v2;
}

+ (id)journalWithDbPath:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  pthread_mutex_lock(&journalWithDbPath__lock);
  if (!journalWithDbPath__instances)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:5 capacity:1];
    v6 = journalWithDbPath__instances;
    journalWithDbPath__instances = v5;
  }

  v7 = [a1 _journalPathForDbPath:v4];
  v8 = [v7 lastPathComponent];
  v9 = [v8 stringByDeletingPathExtension];

  v10 = [journalWithDbPath__instances objectForKey:v9];
  if (!v10)
  {
    v10 = objc_opt_new();
    v11 = [@"com.apple.proactive.databasejournal." stringByAppendingString:v9];
    v12 = dispatch_queue_create([v11 UTF8String], 0);
    v13 = *(v10 + 8);
    *(v10 + 8) = v12;

    objc_storeStrong((v10 + 16), v7);
    *(v10 + 24) = 0;
    v14 = [MEMORY[0x1E696AFB0] UUID];
    v15 = [v14 UUIDString];
    v16 = *(v10 + 32);
    *(v10 + 32) = v15;

    v17 = [MEMORY[0x1E696AC08] defaultManager];
    v18 = *(v10 + 16);
    v23 = 0;
    v19 = [v17 createDirectoryAtPath:v18 withIntermediateDirectories:1 attributes:0 error:&v23];
    v20 = v23;

    if (v19)
    {
      [journalWithDbPath__instances setObject:v10 forKey:v9];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v25 = v20;
        _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_PASDatabaseJournal unable to create directory for storing journals: %@", buf, 0xCu);
      }

      v10 = 0;
    }
  }

  pthread_mutex_unlock(&journalWithDbPath__lock);

  v21 = *MEMORY[0x1E69E9840];

  return v10;
}

@end