@interface TITypologyLog
+ (BOOL)isTraceLogFilename:(id)filename;
+ (BOOL)isTypologyLogFilename:(id)filename;
+ (id)_adjustFilename:(id)filename oldPrefix:(id)prefix newPrefix:(id)newPrefix oldSuffix:(id)suffix newSuffix:(id)newSuffix;
+ (id)traceLogFilenameFromTypologyLogFilename:(id)filename;
+ (id)traceLogURLFromTypologyLogURL:(id)l;
+ (id)typologyLogFilenameFromTraceLogFilename:(id)filename;
+ (id)typologyLogFromTypologyLogFile:(id)file andTraceLogFile:(id)logFile error:(id *)error;
+ (id)typologyLogURLFromTraceLogURL:(id)l;
- (BOOL)_writeToTraceLogFile:(id)file error:(id *)error;
- (BOOL)_writeToTypologyLogFile:(id)file withAccessibilityInfo:(id)info includeTraceLogContent:(BOOL)content error:(id *)error;
- (BOOL)loggedRecordOfClass:(Class)class;
- (BOOL)writeToTypologyLogFile:(id)file andTraceLogFile:(id)logFile withAccessibilityInfo:(id)info error:(id *)error;
- (NSMutableSet)loggedRecordClasses;
- (TITypologyLog)init;
- (TITypologyLog)initWithPropertyList:(id)list;
- (TITypologyLog)initWithTypologyLog:(id)log;
- (TITypologyLog)initWithUUID:(id)d partIndex:(unint64_t)index date:(id)date systemVersion:(id)version buildVersion:(id)buildVersion clientIdentifier:(id)identifier config:(id)config;
- (TITypologyLogDelegate)delegate;
- (id)_recommendedFilenameWithPrefix:(id)prefix andSuffix:(id)suffix;
- (id)copyWithZone:(_NSZone *)zone;
- (id)fileCreationOptions;
- (id)parsedTraceRecordMatchingUUID:(id)d;
- (id)propertyList;
- (id)propertyListWithTrace;
- (id)recordSummary;
- (id)textSummary;
- (id)timestamp;
- (id)trace;
- (id)traceLogHeader;
- (id)traceRecordMatchingUUID:(id)d;
- (id)typologyRecordMatchingUUID:(id)d;
- (id)typologyRecordUUIDsIncludedInRange:(id)range endUUID:(id)d;
- (id)typologyRecordsMatchingUUIDRange:(id)range endUUID:(id)d;
- (void)_logRecord:(id)record trace:(id)trace;
- (void)enumerateParsedTraceRecordsWithBlock:(id)block;
- (void)enumerateParsedTraceRecordsWithBlockIncludingStop:(id)stop;
- (void)enumerateTraceRecordsWithBlock:(id)block;
- (void)enumerateTraceRecordsWithBlockIncludingStop:(id)stop;
- (void)enumerateTypologyRecordsWithBlock:(id)block;
- (void)enumerateTypologyRecordsWithBlockIncludingStop:(id)stop;
- (void)logRecord:(id)record trace:(id)trace;
- (void)parseTraceLogContent:(id)content;
- (void)traceHeaderParsed:(id)parsed;
- (void)traceRecordParsed:(id)parsed;
@end

@implementation TITypologyLog

- (TITypologyLogDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)loggedRecordOfClass:(Class)class
{
  loggedRecordClasses = [(TITypologyLog *)self loggedRecordClasses];
  LOBYTE(class) = [loggedRecordClasses containsObject:class];

  return class;
}

- (NSMutableSet)loggedRecordClasses
{
  loggedRecordClasses = self->_loggedRecordClasses;
  if (!loggedRecordClasses)
  {
    v4 = [MEMORY[0x1E695DFA8] set];
    v5 = self->_loggedRecordClasses;
    self->_loggedRecordClasses = v4;

    loggedRecordClasses = self->_loggedRecordClasses;
  }

  return loggedRecordClasses;
}

- (id)typologyRecordUUIDsIncludedInRange:(id)range endUUID:(id)d
{
  v29 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  dCopy = d;
  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  records = [(TITypologyLog *)self records];
  currentEntries = [records currentEntries];

  v10 = [currentEntries countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v25;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v25 != v13)
      {
        objc_enumerationMutation(currentEntries);
      }

      v15 = *(*(&v24 + 1) + 8 * v14);
      recordID = [v15 recordID];
      v17 = [recordID isEqual:rangeCopy];

      v12 |= v17;
      if (v12)
      {
        recordID2 = [v15 recordID];
        [v23 addObject:recordID2];
      }

      recordID3 = [v15 recordID];
      v20 = [recordID3 isEqual:dCopy];

      if (v20)
      {
        break;
      }

      if (v11 == ++v14)
      {
        v11 = [currentEntries countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v21 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v23];

  return v21;
}

- (id)typologyRecordsMatchingUUIDRange:(id)range endUUID:(id)d
{
  v28 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  dCopy = d;
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  records = [(TITypologyLog *)self records];
  currentEntries = [records currentEntries];

  v10 = [currentEntries countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v24;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v24 != v13)
      {
        objc_enumerationMutation(currentEntries);
      }

      v15 = *(*(&v23 + 1) + 8 * v14);
      recordID = [v15 recordID];
      v17 = [recordID isEqual:rangeCopy];

      v12 |= v17;
      if (v12)
      {
        [v22 addObject:v15];
      }

      recordID2 = [v15 recordID];
      v19 = [recordID2 isEqual:dCopy];

      if (v19)
      {
        break;
      }

      if (v11 == ++v14)
      {
        v11 = [currentEntries countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v20 = [v22 copy];

  return v20;
}

- (id)parsedTraceRecordMatchingUUID:(id)d
{
  v3 = [(TITypologyLog *)self traceRecordMatchingUUID:d];
  [v3 parse];

  return v3;
}

- (id)traceRecordMatchingUUID:(id)d
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  traceRecords = [(TITypologyLog *)self traceRecords];
  currentEntries = [traceRecords currentEntries];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = currentEntries;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        recordUUID = [v11 recordUUID];
        v13 = [recordUUID isEqual:dCopy];

        if (v13)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (id)typologyRecordMatchingUUID:(id)d
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  records = [(TITypologyLog *)self records];
  currentEntries = [records currentEntries];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = currentEntries;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        recordID = [v11 recordID];
        v13 = [recordID isEqual:dCopy];

        if (v13)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (void)enumerateParsedTraceRecordsWithBlockIncludingStop:(id)stop
{
  stopCopy = stop;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__TITypologyLog_enumerateParsedTraceRecordsWithBlockIncludingStop___block_invoke;
  v6[3] = &unk_1E6F4CB08;
  v7 = stopCopy;
  v5 = stopCopy;
  [(TITypologyLog *)self enumerateTraceRecordsWithBlockIncludingStop:v6];
}

void __67__TITypologyLog_enumerateParsedTraceRecordsWithBlockIncludingStop___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 parse];
  (*(*(a1 + 32) + 16))();
}

- (void)enumerateParsedTraceRecordsWithBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__TITypologyLog_enumerateParsedTraceRecordsWithBlock___block_invoke;
  v6[3] = &unk_1E6F4CAE0;
  v7 = blockCopy;
  v5 = blockCopy;
  [(TITypologyLog *)self enumerateTraceRecordsWithBlock:v6];
}

void __54__TITypologyLog_enumerateParsedTraceRecordsWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 parse];
  (*(*(a1 + 32) + 16))();
}

- (void)enumerateTraceRecordsWithBlockIncludingStop:(id)stop
{
  v18 = *MEMORY[0x1E69E9840];
  stopCopy = stop;
  v16 = 0;
  traceRecords = [(TITypologyLog *)self traceRecords];
  currentEntries = [traceRecords currentEntries];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = currentEntries;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v13 != v10)
      {
        objc_enumerationMutation(v7);
      }

      if (v16)
      {
        break;
      }

      stopCopy[2](stopCopy, *(*(&v12 + 1) + 8 * v11++), &v16);
      if (v9 == v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumerateTraceRecordsWithBlock:(id)block
{
  v17 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  traceRecords = [(TITypologyLog *)self traceRecords];
  currentEntries = [traceRecords currentEntries];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = currentEntries;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        blockCopy[2](blockCopy, *(*(&v12 + 1) + 8 * v11++));
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)enumerateTypologyRecordsWithBlockIncludingStop:(id)stop
{
  v18 = *MEMORY[0x1E69E9840];
  stopCopy = stop;
  v16 = 0;
  records = [(TITypologyLog *)self records];
  currentEntries = [records currentEntries];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = currentEntries;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v13 != v10)
      {
        objc_enumerationMutation(v7);
      }

      if (v16)
      {
        break;
      }

      stopCopy[2](stopCopy, *(*(&v12 + 1) + 8 * v11++), &v16);
      if (v9 == v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumerateTypologyRecordsWithBlock:(id)block
{
  v17 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  records = [(TITypologyLog *)self records];
  currentEntries = [records currentEntries];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = currentEntries;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        blockCopy[2](blockCopy, *(*(&v12 + 1) + 8 * v11++));
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)traceRecordParsed:(id)parsed
{
  parsedCopy = parsed;
  traceRecords = [(TITypologyLog *)self traceRecords];
  [traceRecords addEntry:parsedCopy];
}

- (void)traceHeaderParsed:(id)parsed
{
  v4 = [parsed objectForKey:@"Version"];
  if (v4)
  {
    v5 = v4;
    self->_traceLogVersion = [v4 unsignedIntegerValue];
    v4 = v5;
  }
}

- (void)logRecord:(id)record trace:(id)trace
{
  recordCopy = record;
  traceCopy = trace;
  v7 = +[TIPreferencesController sharedPreferencesController];
  v8 = [v7 BOOLForKey:54];

  if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [(TITypologyLog *)self _logRecord:recordCopy trace:traceCopy];
  }
}

- (void)_logRecord:(id)record trace:(id)trace
{
  recordCopy = record;
  traceCopy = trace;
  v7 = recordCopy;
  if (!recordCopy)
  {
    v7 = objc_alloc_init(TITypologyRecord);
  }

  v24 = v7;
  clientIdentifier = [(TITypologyLog *)self clientIdentifier];
  if (!clientIdentifier)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_7;
    }

    clientIdentifier = [(TITypologyRecord *)v24 keyboardState];
    v8ClientIdentifier = [clientIdentifier clientIdentifier];
    [(TITypologyLog *)self setClientIdentifier:v8ClientIdentifier];
  }

LABEL_7:
  currentKeyboardState = [(TITypologyRecord *)v24 currentKeyboardState];

  if (currentKeyboardState)
  {
    [(TITypologyRecord *)v24 removeContextFromKeyboardState];
    currentKeyboardState2 = [(TITypologyRecord *)v24 currentKeyboardState];
    [(TITypologyLog *)self setLastKeyboardState:currentKeyboardState2];
  }

  v12 = [TITraceLogRecord alloc];
  recordID = [(TITypologyRecord *)v24 recordID];
  v14 = [(TITraceLogRecord *)v12 initWithRecordUUID:recordID logText:traceCopy logVersion:3];

  records = [(TITypologyLog *)self records];
  [records addEntry:v24];

  traceRecords = [(TITypologyLog *)self traceRecords];
  [traceRecords addEntry:v14];

  loggedRecordClasses = [(TITypologyLog *)self loggedRecordClasses];
  [loggedRecordClasses addObject:objc_opt_class()];

  records2 = [(TITypologyLog *)self records];
  v19 = [records2 count];
  records3 = [(TITypologyLog *)self records];
  maxCount = [records3 maxCount];

  if (v19 == maxCount)
  {
    delegate = [(TITypologyLog *)self delegate];
    [delegate didReachMaximumEntries:self];
  }
}

- (id)recordSummary
{
  v32 = *MEMORY[0x1E69E9840];
  string = [MEMORY[0x1E696AD60] string];
  [string appendString:@"\n"];
  [string appendString:@"TYPOLOGY LOG\n"];
  [string appendString:@"------------\n"];
  uuid = [(TITypologyLog *)self uuid];
  uUIDString = [uuid UUIDString];
  v6 = uUIDString;
  if (uUIDString)
  {
    v7 = uUIDString;
  }

  else
  {
    v7 = &stru_1EF56D550;
  }

  [string appendFormat:@"uuid = %@\n", v7];

  date = [(TITypologyLog *)self date];
  v9 = date;
  if (date)
  {
    v10 = date;
  }

  else
  {
    v10 = &stru_1EF56D550;
  }

  [string appendFormat:@"date = %@\n", v10];

  systemVersion = [(TITypologyLog *)self systemVersion];
  v12 = systemVersion;
  if (systemVersion)
  {
    v13 = systemVersion;
  }

  else
  {
    v13 = &stru_1EF56D550;
  }

  [string appendFormat:@"systemVersion = %@\n", v13];

  clientIdentifier = [(TITypologyLog *)self clientIdentifier];
  v15 = clientIdentifier;
  if (clientIdentifier)
  {
    v16 = clientIdentifier;
  }

  else
  {
    v16 = &stru_1EF56D550;
  }

  [string appendFormat:@"clientIdentifier = %@\n", v16];

  textSummary = [(TITypologyLog *)self textSummary];
  [string appendFormat:@"textSummary = %@\n", textSummary];

  [string appendString:@"------------\n"];
  records = [(TITypologyLog *)self records];
  currentEntries = [records currentEntries];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v20 = currentEntries;
  v21 = [v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v28;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(v20);
        }

        shortDescription = [*(*(&v27 + 1) + 8 * i) shortDescription];
        [string appendFormat:@"%@\n", shortDescription];
      }

      v22 = [v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v22);
  }

  [string appendString:@"\n"];

  return string;
}

- (id)textSummary
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  records = [(TITypologyLog *)self records];
  currentEntries = [records currentEntries];
  lastObject = [currentEntries lastObject];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    lastKeyboardState = [(TITypologyLog *)self lastKeyboardState];

    if (lastKeyboardState)
    {
      v8 = objc_alloc_init(TITypologyRecordGroupMarker);
      lastKeyboardState2 = [(TITypologyLog *)self lastKeyboardState];
      [(TITypologyRecordGroupMarker *)v8 setKeyboardState:lastKeyboardState2];

      [(TITypologyLog *)self logRecord:v8];
    }
  }

  records2 = [(TITypologyLog *)self records];
  currentEntries2 = [records2 currentEntries];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __28__TITypologyLog_textSummary__block_invoke;
  v14[3] = &unk_1E6F4CAB8;
  v12 = v3;
  v15 = v12;
  [currentEntries2 enumerateObjectsUsingBlock:v14];

  return v12;
}

void __28__TITypologyLog_textSummary__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = [v5 textSummary];
    [v3 appendString:v4];
  }
}

- (id)_recommendedFilenameWithPrefix:(id)prefix andSuffix:(id)suffix
{
  prefixCopy = prefix;
  suffixCopy = suffix;
  uuid = [(TITypologyLog *)self uuid];
  uUIDString = [uuid UUIDString];

  timestamp = [(TITypologyLog *)self timestamp];
  if ([(TITypologyLog *)self partIndex])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-%@.%lu.%@", prefixCopy, timestamp, uUIDString, -[TITypologyLog partIndex](self, "partIndex"), suffixCopy];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-%@.%@", prefixCopy, timestamp, uUIDString, suffixCopy, v13];
  }
  v11 = ;

  return v11;
}

- (BOOL)_writeToTraceLogFile:(id)file error:(id *)error
{
  v56[1] = *MEMORY[0x1E69E9840];
  fileCopy = file;
  uRLByDeletingLastPathComponent = [fileCopy URLByDeletingLastPathComponent];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v54 = 0;
  v9 = [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v54];
  v10 = v54;

  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    path = [fileCopy path];
    traceLogHeader = [(TITypologyLog *)self traceLogHeader];
    v17 = [traceLogHeader dataUsingEncoding:4];
    fileCreationOptions = [(TITypologyLog *)self fileCreationOptions];
    v19 = [defaultManager2 createFileAtPath:path contents:v17 attributes:fileCreationOptions];

    if (v19)
    {
      v53 = 0;
      v20 = [MEMORY[0x1E696AC00] fileHandleForWritingToURL:fileCopy error:&v53];
      v21 = v53;
      v10 = v21;
      if (!v20 || v21)
      {
        v12 = 0;
        if (error && v21)
        {
          v37 = v21;
          v12 = 0;
          *error = v10;
        }
      }

      else
      {
        v51 = 0;
        v52 = 0;
        [v20 seekToEndReturningOffset:&v52 error:&v51];
        v10 = v51;
        string = [MEMORY[0x1E696AD60] string];
        v23 = string;
        if (!v10)
        {
          v45 = 0;
          v46 = &v45;
          v47 = 0x3032000000;
          v48 = __Block_byref_object_copy__7142;
          v49 = __Block_byref_object_dispose__7143;
          v50 = 0;
          v41[0] = MEMORY[0x1E69E9820];
          v41[1] = 3221225472;
          v41[2] = __44__TITypologyLog__writeToTraceLogFile_error___block_invoke;
          v41[3] = &unk_1E6F4CA90;
          v24 = string;
          v42 = v24;
          v25 = v20;
          v43 = v25;
          v44 = &v45;
          [(TITypologyLog *)self enumerateTraceRecordsWithBlockIncludingStop:v41];
          v10 = v46[5];

          _Block_object_dispose(&v45, 8);
          if (!v10)
          {
            v26 = [v24 dataUsingEncoding:4];
            v40 = 0;
            [v25 writeData:v26 error:&v40];
            v10 = v40;
          }
        }

        v39 = 0;
        [v20 closeAndReturnError:&v39];
        v27 = v39;
        v28 = v27;
        if (v27 && !v10)
        {
          v10 = v27;
        }

        if (error && v10)
        {
          v29 = v10;
          *error = v10;
        }

        v12 = v10 == 0;
      }
    }

    else
    {
      if (error)
      {
        v30 = MEMORY[0x1E696ABC0];
        v31 = *MEMORY[0x1E696A250];
        v32 = *__error();
        v55 = @"Error";
        v33 = MEMORY[0x1E696AEC0];
        v34 = __error();
        v35 = [v33 stringWithCString:strerror(*v34) encoding:1];
        v56[0] = v35;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:&v55 count:1];
        *error = [v30 errorWithDomain:v31 code:v32 userInfo:v36];
      }

      v10 = 0;
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    if (error && v10)
    {
      v13 = v10;
      v12 = 0;
      *error = v10;
    }
  }

  return v12;
}

void __44__TITypologyLog__writeToTraceLogFile_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = [v3 logTextWithHeader];
  [v5 appendString:v6];

  if ([*(a1 + 32) length] >= 0x7D1)
  {
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) dataUsingEncoding:4];
    v9 = *(*(a1 + 48) + 8);
    obj = 0;
    [v7 writeData:v8 error:&obj];
    objc_storeStrong((v9 + 40), obj);

    [*(a1 + 32) setString:&stru_1EF56D550];
  }

  objc_autoreleasePoolPop(v4);
}

- (BOOL)_writeToTypologyLogFile:(id)file withAccessibilityInfo:(id)info includeTraceLogContent:(BOOL)content error:(id *)error
{
  v46[1] = *MEMORY[0x1E69E9840];
  fileCopy = file;
  infoCopy = info;
  if (content)
  {
    [(TITypologyLog *)self propertyListWithTrace];
  }

  else
  {
    [(TITypologyLog *)self propertyList];
  }
  v12 = ;
  v13 = [v12 mutableCopy];

  if (infoCopy)
  {
    v14 = [v13 objectForKey:@"config"];
    v15 = [v14 mutableCopy];

    [v15 addEntriesFromDictionary:infoCopy];
    [v13 setObject:v15 forKey:@"config"];
  }

  uRLByDeletingLastPathComponent = [fileCopy URLByDeletingLastPathComponent];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v44 = 0;
  v18 = [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v44];
  v19 = v44;

  if (!v18 || v19)
  {
    v28 = 0;
    if (error && v19)
    {
      v29 = v19;
      v28 = 0;
      *error = v19;
    }
  }

  else
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    path = [fileCopy path];
    data = [MEMORY[0x1E695DEF0] data];
    fileCreationOptions = [(TITypologyLog *)self fileCreationOptions];
    v24 = [defaultManager2 createFileAtPath:path contents:data attributes:fileCreationOptions];

    if (v24)
    {
      v25 = [MEMORY[0x1E695DFC0] outputStreamWithURL:fileCopy append:1];
      [v25 open];
      streamError = [v25 streamError];
      if (streamError)
      {
        v19 = streamError;
        if (error)
        {
          v27 = streamError;
          v28 = 0;
          *error = v19;
        }

        else
        {
          v28 = 0;
        }
      }

      else
      {
        v43 = 0;
        v37 = [MEMORY[0x1E696AE40] writePropertyList:v13 toStream:v25 format:100 options:0 error:&v43];
        v38 = v43;
        v19 = v38;
        if (!v37 && !v38)
        {
          v19 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:512 userInfo:&unk_1EF7CF708];
        }

        [v25 close];
        streamError2 = [v25 streamError];
        v40 = streamError2;
        if (streamError2 && !v19)
        {
          v19 = streamError2;
        }

        if (error && v19)
        {
          v41 = v19;
          *error = v19;
        }

        v28 = v19 == 0;
      }
    }

    else
    {
      if (error)
      {
        v30 = MEMORY[0x1E696ABC0];
        v31 = *MEMORY[0x1E696A250];
        v32 = *__error();
        v45 = @"Error";
        v33 = MEMORY[0x1E696AEC0];
        v34 = __error();
        v35 = [v33 stringWithCString:strerror(*v34) encoding:1];
        v46[0] = v35;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1];
        *error = [v30 errorWithDomain:v31 code:v32 userInfo:v36];
      }

      v19 = 0;
      v28 = 0;
    }
  }

  return v28;
}

- (id)fileCreationOptions
{
  v7[1] = *MEMORY[0x1E69E9840];
  delegate = [(TITypologyLog *)self delegate];
  isInternalDeviceWithForcedTypologyLoggingForTesting = [delegate isInternalDeviceWithForcedTypologyLoggingForTesting];

  if (isInternalDeviceWithForcedTypologyLoggingForTesting)
  {
    v4 = 0;
  }

  else
  {
    v6 = *MEMORY[0x1E696A3A0];
    v7[0] = *MEMORY[0x1E696A378];
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  return v4;
}

- (BOOL)writeToTypologyLogFile:(id)file andTraceLogFile:(id)logFile withAccessibilityInfo:(id)info error:(id *)error
{
  fileCopy = file;
  logFileCopy = logFile;
  infoCopy = info;
  if (!fileCopy)
  {
    if (!error)
    {
      v18 = 0;
      v15 = 0;
      goto LABEL_18;
    }

    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:*__error() userInfo:&unk_1EF7CF6E0];
    v19 = v17;
    v15 = 0;
LABEL_15:
    v18 = 0;
    *error = v17;
    goto LABEL_18;
  }

  v24 = 0;
  v13 = [(TITypologyLog *)self _writeToTypologyLogFile:fileCopy withAccessibilityInfo:infoCopy includeTraceLogContent:logFileCopy == 0 error:&v24];
  v14 = v24;
  v15 = v14;
  if (!v13)
  {
    if (!error)
    {
      v18 = 0;
      goto LABEL_18;
    }

    v20 = v14;
    v17 = v15;
    goto LABEL_15;
  }

  if (logFileCopy)
  {
    v23 = v14;
    v16 = [(TITypologyLog *)self _writeToTraceLogFile:logFileCopy error:&v23];
    v17 = v23;

    if (v16)
    {
      v18 = 1;
LABEL_17:
      v15 = v17;
      goto LABEL_18;
    }

    if (!error)
    {
      v18 = 0;
      goto LABEL_17;
    }

    v21 = v17;
    v15 = v17;
    goto LABEL_15;
  }

  v18 = 1;
LABEL_18:

  return v18;
}

- (void)parseTraceLogContent:(id)content
{
  contentCopy = content;
  v5 = objc_alloc_init(TITraceLogParser);
  [(TITraceLogParser *)v5 setDelegate:self];
  [(TITraceLogParser *)v5 parseTraceLogContent:contentCopy];

  [(TITraceLogParser *)v5 setDelegate:0];
}

- (id)timestamp
{
  v3 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US"];
  v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v4 setLocale:v3];
  [v4 setDateFormat:@"yyyyMMdd'T'HHmmss"];
  date = [(TITypologyLog *)self date];
  v6 = [v4 stringFromDate:date];

  return v6;
}

- (id)traceLogHeader
{
  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"Version: %lu\n", 3];
  date = [(TITypologyLog *)self date];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v6 = [date descriptionWithLocale:currentLocale];
  [string appendFormat:@"Date: %@\n", v6];

  systemVersion = [(TITypologyLog *)self systemVersion];
  buildVersion = [(TITypologyLog *)self buildVersion];
  [string appendFormat:@"iOS version: %@ (%@)\n", systemVersion, buildVersion];

  [string appendString:@"\n"];

  return string;
}

- (id)trace
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__7142;
  v12 = __Block_byref_object_dispose__7143;
  string = [MEMORY[0x1E696AD60] string];
  v3 = v9[5];
  traceLogHeader = [(TITypologyLog *)self traceLogHeader];
  [v3 appendString:traceLogHeader];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __22__TITypologyLog_trace__block_invoke;
  v7[3] = &unk_1E6F4CA68;
  v7[4] = &v8;
  [(TITypologyLog *)self enumerateTraceRecordsWithBlock:v7];
  v5 = [v9[5] copy];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __22__TITypologyLog_trace__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 logTextWithHeader];
  [v2 appendString:v3];
}

- (id)propertyListWithTrace
{
  propertyList = [(TITypologyLog *)self propertyList];
  v4 = [propertyList mutableCopy];

  trace = [(TITypologyLog *)self trace];
  [v4 setObject:trace forKey:@"traceLogs"];

  return v4;
}

- (id)propertyList
{
  v38[10] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(TITypologyLogArchiverDelegate);
  v4 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  v36 = v3;
  [v4 setDelegate:v3];
  records = [(TITypologyLog *)self records];
  currentEntries = [records currentEntries];
  v7 = [currentEntries mutableCopy];
  [v4 encodeObject:v7 forKey:*MEMORY[0x1E696A508]];

  [v4 finishEncoding];
  encodedData = [v4 encodedData];
  v37[0] = @"versionNumber";
  v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[TITypologyLog typologyLogVersion](self, "typologyLogVersion")}];
  v38[0] = v35;
  v37[1] = @"uuid";
  uuid = [(TITypologyLog *)self uuid];
  uUIDString = [uuid UUIDString];
  v33 = uUIDString;
  if (uUIDString)
  {
    v10 = uUIDString;
  }

  else
  {
    v10 = &stru_1EF56D550;
  }

  v38[1] = v10;
  v37[2] = @"partIndex";
  v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[TITypologyLog partIndex](self, "partIndex")}];
  v38[2] = v32;
  v37[3] = @"date";
  date = [(TITypologyLog *)self date];
  v12 = date;
  if (!date)
  {
    date = [MEMORY[0x1E695DF00] date];
  }

  v38[3] = date;
  v37[4] = @"systemVersion";
  systemVersion = [(TITypologyLog *)self systemVersion];
  v14 = systemVersion;
  if (systemVersion)
  {
    v15 = systemVersion;
  }

  else
  {
    v15 = &stru_1EF56D550;
  }

  v38[4] = v15;
  v37[5] = @"buildVersion";
  buildVersion = [(TITypologyLog *)self buildVersion];
  v17 = buildVersion;
  if (buildVersion)
  {
    v18 = buildVersion;
  }

  else
  {
    v18 = &stru_1EF56D550;
  }

  v38[5] = v18;
  v37[6] = @"clientIdentifier";
  clientIdentifier = [(TITypologyLog *)self clientIdentifier];
  v20 = clientIdentifier;
  if (clientIdentifier)
  {
    v21 = clientIdentifier;
  }

  else
  {
    v21 = &stru_1EF56D550;
  }

  v38[6] = v21;
  v37[7] = @"records";
  data = encodedData;
  if (!encodedData)
  {
    data = [MEMORY[0x1E695DEF0] data];
  }

  v38[7] = data;
  v37[8] = @"config";
  config = [(TITypologyLog *)self config];
  v24 = config;
  v25 = MEMORY[0x1E695E0F8];
  if (config)
  {
    v25 = config;
  }

  v38[8] = v25;
  v37[9] = @"textSummary";
  textSummary = [(TITypologyLog *)self textSummary];
  v27 = textSummary;
  if (textSummary)
  {
    v28 = textSummary;
  }

  else
  {
    v28 = &stru_1EF56D550;
  }

  v38[9] = v28;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:10];

  if (!encodedData)
  {
  }

  if (!v12)
  {
  }

  return v29;
}

- (TITypologyLog)initWithPropertyList:(id)list
{
  listCopy = list;
  v68.receiver = self;
  v68.super_class = TITypologyLog;
  v5 = [(TITypologyLog *)&v68 init];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = listCopy;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = [v7 objectForKey:@"version"];
    v9 = v8;
    v10 = &unk_1EF7DC440;
    if (v8)
    {
      v10 = v8;
    }

    v11 = v10;

    objc_opt_class();
    v59 = v11;
    isKindOfClass = objc_opt_isKindOfClass();
    v65 = [v7 objectForKey:@"uuid"];
    if (isKindOfClass)
    {
      objc_opt_class();
      v13 = objc_opt_isKindOfClass();
    }

    else
    {
      v13 = 0;
    }

    v14 = [v7 objectForKey:@"partIndex"];
    v15 = v14;
    v16 = &unk_1EF7DC458;
    if (v14)
    {
      v16 = v14;
    }

    v17 = v16;

    v64 = v17;
    if (v13)
    {
      objc_opt_class();
      v18 = objc_opt_isKindOfClass();
      v19 = [v7 objectForKey:@"date"];
      if (v18)
      {
        objc_opt_class();
        v20 = objc_opt_isKindOfClass();
        v21 = [v7 objectForKey:@"systemVersion"];
        if (v20)
        {
          objc_opt_class();
          v22 = objc_opt_isKindOfClass();
          v23 = [v7 objectForKey:@"buildVersion"];
          if (v22)
          {
            objc_opt_class();
            v24 = objc_opt_isKindOfClass();
            v25 = [v7 objectForKey:@"clientIdentifier"];
            v62 = v21;
            if (v24)
            {
              objc_opt_class();
              v26 = objc_opt_isKindOfClass();
              [v7 objectForKey:@"records"];
              v63 = v19;
              v60 = v25;
              v66 = v61 = v23;
              if (v26)
              {
                objc_opt_class();
                v27 = objc_opt_isKindOfClass();
LABEL_25:
                v28 = MEMORY[0x1E695DFA8];
                v29 = objc_opt_class();
                v30 = objc_opt_class();
                v31 = objc_opt_class();
                v32 = objc_opt_class();
                v33 = [v28 setWithObjects:{v29, v30, v31, v32, objc_opt_class(), 0}];
                v34 = +[TITypologyRecord recordClasses];
                [v33 addObjectsFromArray:v34];

                v35 = 0;
                v36 = 0;
                if (v27 & 1) != 0 && (v67 = 0, [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v33 fromData:v66 error:&v67], v35 = objc_claimAutoreleasedReturnValue(), v36 = v67, objc_opt_class(), (objc_opt_isKindOfClass()))
                {
                  v37 = [v35 indexOfObjectPassingTest:&__block_literal_global_7204];
                  v38 = [v7 objectForKey:@"traceLogs"];
                  v39 = v38;
                  v40 = v59;
                  if (v37 == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    if (v38)
                    {
                      objc_opt_class();
                      v41 = objc_opt_isKindOfClass();
                      v42 = [v7 objectForKey:@"config"];
                      if ((v41 & 1) == 0)
                      {
LABEL_41:
                        v43 = v63;
                        goto LABEL_33;
                      }
                    }

                    else
                    {
                      v42 = [v7 objectForKey:@"config"];
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v5->_typologyLogVersion = [v59 unsignedIntegerValue];
                      v5->_traceLogVersion = 3;
                      v45 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v65];
                      uuid = v5->_uuid;
                      v5->_uuid = v45;

                      v5->_partIndex = [v64 unsignedIntegerValue];
                      v47 = [v63 copy];
                      date = v5->_date;
                      v5->_date = v47;

                      v49 = [v62 copy];
                      systemVersion = v5->_systemVersion;
                      v5->_systemVersion = v49;

                      v51 = [v61 copy];
                      buildVersion = v5->_buildVersion;
                      v5->_buildVersion = v51;

                      v53 = [v60 copy];
                      clientIdentifier = v5->_clientIdentifier;
                      v5->_clientIdentifier = v53;

                      v55 = [[TIRollingLog alloc] initWithMaxCount:750];
                      records = v5->_records;
                      v5->_records = v55;

                      [(TIRollingLog *)v5->_records addEntries:v35];
                      v57 = [[TIRollingLog alloc] initWithMaxCount:750];
                      traceRecords = v5->_traceRecords;
                      v5->_traceRecords = v57;

                      if (v39)
                      {
                        [(TITypologyLog *)v5 parseTraceLogContent:v39];
                      }

                      objc_storeStrong(&v5->_config, v42);
                      v43 = v63;
                      goto LABEL_34;
                    }

                    goto LABEL_41;
                  }
                }

                else
                {
                  v39 = [v7 objectForKey:@"traceLogs"];
                  v40 = v59;
                }

                v42 = [v7 objectForKey:@"config"];
                v43 = v63;
LABEL_33:

                v5 = 0;
LABEL_34:

                goto LABEL_35;
              }

LABEL_24:
              v27 = 0;
              goto LABEL_25;
            }

LABEL_23:
            v60 = v25;
            v61 = v23;
            v63 = v19;
            v66 = [v7 objectForKey:@"records"];
            goto LABEL_24;
          }

LABEL_22:
          v62 = v21;
          v25 = [v7 objectForKey:@"clientIdentifier"];
          goto LABEL_23;
        }

LABEL_21:
        v23 = [v7 objectForKey:@"buildVersion"];
        goto LABEL_22;
      }
    }

    else
    {
      v19 = [v7 objectForKey:@"date"];
    }

    v21 = [v7 objectForKey:@"systemVersion"];
    goto LABEL_21;
  }

LABEL_35:

  return v5;
}

BOOL __38__TITypologyLog_initWithPropertyList___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithTypologyLog:self];
}

- (TITypologyLog)initWithTypologyLog:(id)log
{
  logCopy = log;
  v32.receiver = self;
  v32.super_class = TITypologyLog;
  v5 = [(TITypologyLog *)&v32 init];
  v6 = v5;
  if (v5)
  {
    *(v5 + 8) = xmmword_186483E80;
    uuid = [logCopy uuid];
    v8 = [uuid copy];
    uuid = v6->_uuid;
    v6->_uuid = v8;

    v6->_partIndex = [logCopy partIndex];
    date = [logCopy date];
    v11 = [date copy];
    date = v6->_date;
    v6->_date = v11;

    systemVersion = [logCopy systemVersion];
    v14 = [systemVersion copy];
    systemVersion = v6->_systemVersion;
    v6->_systemVersion = v14;

    buildVersion = [logCopy buildVersion];
    v17 = [buildVersion copy];
    buildVersion = v6->_buildVersion;
    v6->_buildVersion = v17;

    clientIdentifier = [logCopy clientIdentifier];
    v20 = [clientIdentifier copy];
    clientIdentifier = v6->_clientIdentifier;
    v6->_clientIdentifier = v20;

    records = [logCopy records];
    v23 = [records copy];
    records = v6->_records;
    v6->_records = v23;

    traceRecords = [logCopy traceRecords];
    v26 = [traceRecords copy];
    traceRecords = v6->_traceRecords;
    v6->_traceRecords = v26;

    config = [logCopy config];
    v29 = [config copy];
    config = v6->_config;
    v6->_config = v29;
  }

  return v6;
}

- (TITypologyLog)initWithUUID:(id)d partIndex:(unint64_t)index date:(id)date systemVersion:(id)version buildVersion:(id)buildVersion clientIdentifier:(id)identifier config:(id)config
{
  dCopy = d;
  dateCopy = date;
  versionCopy = version;
  buildVersionCopy = buildVersion;
  configCopy = config;
  v36.receiver = self;
  v36.super_class = TITypologyLog;
  v19 = [(TITypologyLog *)&v36 init];
  v20 = v19;
  if (v19)
  {
    *(v19 + 8) = xmmword_186483E80;
    v21 = [dateCopy copy];
    date = v20->_date;
    v20->_date = v21;

    v23 = [[TIRollingLog alloc] initWithMaxCount:750];
    records = v20->_records;
    v20->_records = v23;

    v25 = [[TIRollingLog alloc] initWithMaxCount:750];
    traceRecords = v20->_traceRecords;
    v20->_traceRecords = v25;

    v27 = [dCopy copy];
    uuid = v20->_uuid;
    v20->_uuid = v27;

    v20->_partIndex = index;
    v29 = [versionCopy copy];
    systemVersion = v20->_systemVersion;
    v20->_systemVersion = v29;

    v31 = [buildVersionCopy copy];
    buildVersion = v20->_buildVersion;
    v20->_buildVersion = v31;

    v33 = [configCopy copy];
    config = v20->_config;
    v20->_config = v33;
  }

  return v20;
}

- (TITypologyLog)init
{
  v17.receiver = self;
  v17.super_class = TITypologyLog;
  v2 = [(TITypologyLog *)&v17 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 8) = xmmword_186483E80;
    v4 = objc_alloc_init(MEMORY[0x1E695DF00]);
    date = v3->_date;
    v3->_date = v4;

    v6 = [[TIRollingLog alloc] initWithMaxCount:750];
    records = v3->_records;
    v3->_records = v6;

    v8 = [[TIRollingLog alloc] initWithMaxCount:750];
    traceRecords = v3->_traceRecords;
    v3->_traceRecords = v8;

    v10 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    uuid = v3->_uuid;
    v3->_uuid = v10;

    v3->_partIndex = 0;
    v12 = MGCopyAnswer();
    systemVersion = v3->_systemVersion;
    v3->_systemVersion = v12;

    v14 = MGCopyAnswer();
    buildVersion = v3->_buildVersion;
    v3->_buildVersion = v14;
  }

  return v3;
}

+ (id)typologyLogURLFromTraceLogURL:(id)l
{
  lCopy = l;
  lastPathComponent = [lCopy lastPathComponent];
  v6 = [self typologyLogFilenameFromTraceLogFilename:lastPathComponent];
  if (v6)
  {
    uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
    v8 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)traceLogURLFromTypologyLogURL:(id)l
{
  lCopy = l;
  lastPathComponent = [lCopy lastPathComponent];
  v6 = [self traceLogFilenameFromTypologyLogFilename:lastPathComponent];
  if (v6)
  {
    uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
    v8 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_adjustFilename:(id)filename oldPrefix:(id)prefix newPrefix:(id)newPrefix oldSuffix:(id)suffix newSuffix:(id)newSuffix
{
  newSuffixCopy = newSuffix;
  suffixCopy = suffix;
  newPrefixCopy = newPrefix;
  prefixCopy = prefix;
  filenameCopy = filename;
  v16 = [filenameCopy stringByReplacingOccurrencesOfString:prefixCopy withString:newPrefixCopy options:8 range:{0, objc_msgSend(filenameCopy, "length")}];

  v17 = [v16 stringByReplacingOccurrencesOfString:suffixCopy withString:newSuffixCopy options:12 range:{0, objc_msgSend(v16, "length")}];

  return v17;
}

+ (id)typologyLogFilenameFromTraceLogFilename:(id)filename
{
  filenameCopy = filename;
  if ([self isTraceLogFilename:filenameCopy])
  {
    v5 = [self _adjustFilename:filenameCopy oldPrefix:@"typologyTrace-" newPrefix:@"typology-" oldSuffix:@".log" newSuffix:@".plist"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)traceLogFilenameFromTypologyLogFilename:(id)filename
{
  filenameCopy = filename;
  if ([self isTypologyLogFilename:filenameCopy])
  {
    v5 = [self _adjustFilename:filenameCopy oldPrefix:@"typology-" newPrefix:@"typologyTrace-" oldSuffix:@".plist" newSuffix:@".log"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isTraceLogFilename:(id)filename
{
  filenameCopy = filename;
  if ([filenameCopy hasPrefix:@"typologyTrace"])
  {
    v4 = [filenameCopy hasSuffix:@".log"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)isTypologyLogFilename:(id)filename
{
  filenameCopy = filename;
  if ([filenameCopy hasPrefix:@"typology"])
  {
    v4 = [filenameCopy hasSuffix:@".plist"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)typologyLogFromTypologyLogFile:(id)file andTraceLogFile:(id)logFile error:(id *)error
{
  fileCopy = file;
  logFileCopy = logFile;
  if (fileCopy)
  {
    v26 = 0;
    v10 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:fileCopy error:&v26];
    v11 = v26;
    if (v11)
    {
      v12 = v11;
      if (error)
      {
        v13 = v11;
        v14 = 0;
        *error = v12;
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_29;
    }

    v15 = [[TITypologyLog alloc] initWithPropertyList:v10];
    v16 = [v10 objectForKey:@"traceLogs"];

    if (logFileCopy && v16)
    {
      if (error)
      {
        [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:*__error() userInfo:&unk_1EF7CF6B8];
        v12 = 0;
        *error = v14 = 0;
LABEL_28:

LABEL_29:
        goto LABEL_30;
      }

      v12 = 0;
LABEL_20:
      v14 = 0;
      goto LABEL_28;
    }

    v17 = [v10 objectForKey:@"traceLogs"];

    if (v17)
    {
      goto LABEL_14;
    }

    if (!logFileCopy)
    {
      logFileCopy = [self traceLogURLFromTypologyLogURL:fileCopy];
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      path = [logFileCopy path];
      v23 = [defaultManager fileExistsAtPath:path];

      if (!v23)
      {
        v12 = 0;
        v18 = logFileCopy;
        logFileCopy = 0;
LABEL_26:

        goto LABEL_27;
      }

      if (!logFileCopy)
      {
LABEL_14:
        v12 = 0;
LABEL_27:
        v14 = v15;
        goto LABEL_28;
      }
    }

    v25 = 0;
    v18 = [MEMORY[0x1E696AEC0] stringWithContentsOfURL:logFileCopy encoding:4 error:&v25];
    v19 = v25;
    v12 = v19;
    if (error && v19)
    {
      v20 = v19;
      *error = v12;

      goto LABEL_20;
    }

    [(TITypologyLog *)v15 parseTraceLogContent:v18];
    goto LABEL_26;
  }

  if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:*__error() userInfo:&unk_1EF7CF690];
    *error = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

LABEL_30:

  return v14;
}

@end