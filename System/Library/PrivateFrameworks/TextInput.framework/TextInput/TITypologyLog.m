@interface TITypologyLog
+ (BOOL)isTraceLogFilename:(id)a3;
+ (BOOL)isTypologyLogFilename:(id)a3;
+ (id)_adjustFilename:(id)a3 oldPrefix:(id)a4 newPrefix:(id)a5 oldSuffix:(id)a6 newSuffix:(id)a7;
+ (id)traceLogFilenameFromTypologyLogFilename:(id)a3;
+ (id)traceLogURLFromTypologyLogURL:(id)a3;
+ (id)typologyLogFilenameFromTraceLogFilename:(id)a3;
+ (id)typologyLogFromTypologyLogFile:(id)a3 andTraceLogFile:(id)a4 error:(id *)a5;
+ (id)typologyLogURLFromTraceLogURL:(id)a3;
- (BOOL)_writeToTraceLogFile:(id)a3 error:(id *)a4;
- (BOOL)_writeToTypologyLogFile:(id)a3 withAccessibilityInfo:(id)a4 includeTraceLogContent:(BOOL)a5 error:(id *)a6;
- (BOOL)loggedRecordOfClass:(Class)a3;
- (BOOL)writeToTypologyLogFile:(id)a3 andTraceLogFile:(id)a4 withAccessibilityInfo:(id)a5 error:(id *)a6;
- (NSMutableSet)loggedRecordClasses;
- (TITypologyLog)init;
- (TITypologyLog)initWithPropertyList:(id)a3;
- (TITypologyLog)initWithTypologyLog:(id)a3;
- (TITypologyLog)initWithUUID:(id)a3 partIndex:(unint64_t)a4 date:(id)a5 systemVersion:(id)a6 buildVersion:(id)a7 clientIdentifier:(id)a8 config:(id)a9;
- (TITypologyLogDelegate)delegate;
- (id)_recommendedFilenameWithPrefix:(id)a3 andSuffix:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)fileCreationOptions;
- (id)parsedTraceRecordMatchingUUID:(id)a3;
- (id)propertyList;
- (id)propertyListWithTrace;
- (id)recordSummary;
- (id)textSummary;
- (id)timestamp;
- (id)trace;
- (id)traceLogHeader;
- (id)traceRecordMatchingUUID:(id)a3;
- (id)typologyRecordMatchingUUID:(id)a3;
- (id)typologyRecordUUIDsIncludedInRange:(id)a3 endUUID:(id)a4;
- (id)typologyRecordsMatchingUUIDRange:(id)a3 endUUID:(id)a4;
- (void)_logRecord:(id)a3 trace:(id)a4;
- (void)enumerateParsedTraceRecordsWithBlock:(id)a3;
- (void)enumerateParsedTraceRecordsWithBlockIncludingStop:(id)a3;
- (void)enumerateTraceRecordsWithBlock:(id)a3;
- (void)enumerateTraceRecordsWithBlockIncludingStop:(id)a3;
- (void)enumerateTypologyRecordsWithBlock:(id)a3;
- (void)enumerateTypologyRecordsWithBlockIncludingStop:(id)a3;
- (void)logRecord:(id)a3 trace:(id)a4;
- (void)parseTraceLogContent:(id)a3;
- (void)traceHeaderParsed:(id)a3;
- (void)traceRecordParsed:(id)a3;
@end

@implementation TITypologyLog

- (TITypologyLogDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)loggedRecordOfClass:(Class)a3
{
  v4 = [(TITypologyLog *)self loggedRecordClasses];
  LOBYTE(a3) = [v4 containsObject:a3];

  return a3;
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

- (id)typologyRecordUUIDsIncludedInRange:(id)a3 endUUID:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = [(TITypologyLog *)self records];
  v9 = [v8 currentEntries];

  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v24 + 1) + 8 * v14);
      v16 = [v15 recordID];
      v17 = [v16 isEqual:v6];

      v12 |= v17;
      if (v12)
      {
        v18 = [v15 recordID];
        [v23 addObject:v18];
      }

      v19 = [v15 recordID];
      v20 = [v19 isEqual:v7];

      if (v20)
      {
        break;
      }

      if (v11 == ++v14)
      {
        v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
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

- (id)typologyRecordsMatchingUUIDRange:(id)a3 endUUID:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [(TITypologyLog *)self records];
  v9 = [v8 currentEntries];

  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v23 + 1) + 8 * v14);
      v16 = [v15 recordID];
      v17 = [v16 isEqual:v6];

      v12 |= v17;
      if (v12)
      {
        [v22 addObject:v15];
      }

      v18 = [v15 recordID];
      v19 = [v18 isEqual:v7];

      if (v19)
      {
        break;
      }

      if (v11 == ++v14)
      {
        v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
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

- (id)parsedTraceRecordMatchingUUID:(id)a3
{
  v3 = [(TITypologyLog *)self traceRecordMatchingUUID:a3];
  [v3 parse];

  return v3;
}

- (id)traceRecordMatchingUUID:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TITypologyLog *)self traceRecords];
  v6 = [v5 currentEntries];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v6;
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
        v12 = [v11 recordUUID];
        v13 = [v12 isEqual:v4];

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

- (id)typologyRecordMatchingUUID:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TITypologyLog *)self records];
  v6 = [v5 currentEntries];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v6;
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
        v12 = [v11 recordID];
        v13 = [v12 isEqual:v4];

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

- (void)enumerateParsedTraceRecordsWithBlockIncludingStop:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__TITypologyLog_enumerateParsedTraceRecordsWithBlockIncludingStop___block_invoke;
  v6[3] = &unk_1E6F4CB08;
  v7 = v4;
  v5 = v4;
  [(TITypologyLog *)self enumerateTraceRecordsWithBlockIncludingStop:v6];
}

void __67__TITypologyLog_enumerateParsedTraceRecordsWithBlockIncludingStop___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 parse];
  (*(*(a1 + 32) + 16))();
}

- (void)enumerateParsedTraceRecordsWithBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__TITypologyLog_enumerateParsedTraceRecordsWithBlock___block_invoke;
  v6[3] = &unk_1E6F4CAE0;
  v7 = v4;
  v5 = v4;
  [(TITypologyLog *)self enumerateTraceRecordsWithBlock:v6];
}

void __54__TITypologyLog_enumerateParsedTraceRecordsWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 parse];
  (*(*(a1 + 32) + 16))();
}

- (void)enumerateTraceRecordsWithBlockIncludingStop:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0;
  v5 = [(TITypologyLog *)self traceRecords];
  v6 = [v5 currentEntries];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
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

      v4[2](v4, *(*(&v12 + 1) + 8 * v11++), &v16);
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

- (void)enumerateTraceRecordsWithBlock:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TITypologyLog *)self traceRecords];
  v6 = [v5 currentEntries];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
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

        v4[2](v4, *(*(&v12 + 1) + 8 * v11++));
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)enumerateTypologyRecordsWithBlockIncludingStop:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0;
  v5 = [(TITypologyLog *)self records];
  v6 = [v5 currentEntries];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
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

      v4[2](v4, *(*(&v12 + 1) + 8 * v11++), &v16);
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

- (void)enumerateTypologyRecordsWithBlock:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TITypologyLog *)self records];
  v6 = [v5 currentEntries];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
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

        v4[2](v4, *(*(&v12 + 1) + 8 * v11++));
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)traceRecordParsed:(id)a3
{
  v4 = a3;
  v5 = [(TITypologyLog *)self traceRecords];
  [v5 addEntry:v4];
}

- (void)traceHeaderParsed:(id)a3
{
  v4 = [a3 objectForKey:@"Version"];
  if (v4)
  {
    v5 = v4;
    self->_traceLogVersion = [v4 unsignedIntegerValue];
    v4 = v5;
  }
}

- (void)logRecord:(id)a3 trace:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = +[TIPreferencesController sharedPreferencesController];
  v8 = [v7 BOOLForKey:54];

  if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [(TITypologyLog *)self _logRecord:v9 trace:v6];
  }
}

- (void)_logRecord:(id)a3 trace:(id)a4
{
  v23 = a3;
  v6 = a4;
  v7 = v23;
  if (!v23)
  {
    v7 = objc_alloc_init(TITypologyRecord);
  }

  v24 = v7;
  v8 = [(TITypologyLog *)self clientIdentifier];
  if (!v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_7;
    }

    v8 = [(TITypologyRecord *)v24 keyboardState];
    v9 = [v8 clientIdentifier];
    [(TITypologyLog *)self setClientIdentifier:v9];
  }

LABEL_7:
  v10 = [(TITypologyRecord *)v24 currentKeyboardState];

  if (v10)
  {
    [(TITypologyRecord *)v24 removeContextFromKeyboardState];
    v11 = [(TITypologyRecord *)v24 currentKeyboardState];
    [(TITypologyLog *)self setLastKeyboardState:v11];
  }

  v12 = [TITraceLogRecord alloc];
  v13 = [(TITypologyRecord *)v24 recordID];
  v14 = [(TITraceLogRecord *)v12 initWithRecordUUID:v13 logText:v6 logVersion:3];

  v15 = [(TITypologyLog *)self records];
  [v15 addEntry:v24];

  v16 = [(TITypologyLog *)self traceRecords];
  [v16 addEntry:v14];

  v17 = [(TITypologyLog *)self loggedRecordClasses];
  [v17 addObject:objc_opt_class()];

  v18 = [(TITypologyLog *)self records];
  v19 = [v18 count];
  v20 = [(TITypologyLog *)self records];
  v21 = [v20 maxCount];

  if (v19 == v21)
  {
    v22 = [(TITypologyLog *)self delegate];
    [v22 didReachMaximumEntries:self];
  }
}

- (id)recordSummary
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] string];
  [v3 appendString:@"\n"];
  [v3 appendString:@"TYPOLOGY LOG\n"];
  [v3 appendString:@"------------\n"];
  v4 = [(TITypologyLog *)self uuid];
  v5 = [v4 UUIDString];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_1EF56D550;
  }

  [v3 appendFormat:@"uuid = %@\n", v7];

  v8 = [(TITypologyLog *)self date];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_1EF56D550;
  }

  [v3 appendFormat:@"date = %@\n", v10];

  v11 = [(TITypologyLog *)self systemVersion];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_1EF56D550;
  }

  [v3 appendFormat:@"systemVersion = %@\n", v13];

  v14 = [(TITypologyLog *)self clientIdentifier];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = &stru_1EF56D550;
  }

  [v3 appendFormat:@"clientIdentifier = %@\n", v16];

  v17 = [(TITypologyLog *)self textSummary];
  [v3 appendFormat:@"textSummary = %@\n", v17];

  [v3 appendString:@"------------\n"];
  v18 = [(TITypologyLog *)self records];
  v19 = [v18 currentEntries];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v20 = v19;
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

        v25 = [*(*(&v27 + 1) + 8 * i) shortDescription];
        [v3 appendFormat:@"%@\n", v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v22);
  }

  [v3 appendString:@"\n"];

  return v3;
}

- (id)textSummary
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = [(TITypologyLog *)self records];
  v5 = [v4 currentEntries];
  v6 = [v5 lastObject];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [(TITypologyLog *)self lastKeyboardState];

    if (v7)
    {
      v8 = objc_alloc_init(TITypologyRecordGroupMarker);
      v9 = [(TITypologyLog *)self lastKeyboardState];
      [(TITypologyRecordGroupMarker *)v8 setKeyboardState:v9];

      [(TITypologyLog *)self logRecord:v8];
    }
  }

  v10 = [(TITypologyLog *)self records];
  v11 = [v10 currentEntries];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __28__TITypologyLog_textSummary__block_invoke;
  v14[3] = &unk_1E6F4CAB8;
  v12 = v3;
  v15 = v12;
  [v11 enumerateObjectsUsingBlock:v14];

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

- (id)_recommendedFilenameWithPrefix:(id)a3 andSuffix:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TITypologyLog *)self uuid];
  v9 = [v8 UUIDString];

  v10 = [(TITypologyLog *)self timestamp];
  if ([(TITypologyLog *)self partIndex])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-%@.%lu.%@", v6, v10, v9, -[TITypologyLog partIndex](self, "partIndex"), v7];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-%@.%@", v6, v10, v9, v7, v13];
  }
  v11 = ;

  return v11;
}

- (BOOL)_writeToTraceLogFile:(id)a3 error:(id *)a4
{
  v56[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 URLByDeletingLastPathComponent];
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v54 = 0;
  v9 = [v8 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:&v54];
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
    v14 = [MEMORY[0x1E696AC08] defaultManager];
    v15 = [v6 path];
    v16 = [(TITypologyLog *)self traceLogHeader];
    v17 = [v16 dataUsingEncoding:4];
    v18 = [(TITypologyLog *)self fileCreationOptions];
    v19 = [v14 createFileAtPath:v15 contents:v17 attributes:v18];

    if (v19)
    {
      v53 = 0;
      v20 = [MEMORY[0x1E696AC00] fileHandleForWritingToURL:v6 error:&v53];
      v21 = v53;
      v10 = v21;
      if (!v20 || v21)
      {
        v12 = 0;
        if (a4 && v21)
        {
          v37 = v21;
          v12 = 0;
          *a4 = v10;
        }
      }

      else
      {
        v51 = 0;
        v52 = 0;
        [v20 seekToEndReturningOffset:&v52 error:&v51];
        v10 = v51;
        v22 = [MEMORY[0x1E696AD60] string];
        v23 = v22;
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
          v24 = v22;
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

        if (a4 && v10)
        {
          v29 = v10;
          *a4 = v10;
        }

        v12 = v10 == 0;
      }
    }

    else
    {
      if (a4)
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
        *a4 = [v30 errorWithDomain:v31 code:v32 userInfo:v36];
      }

      v10 = 0;
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    if (a4 && v10)
    {
      v13 = v10;
      v12 = 0;
      *a4 = v10;
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

- (BOOL)_writeToTypologyLogFile:(id)a3 withAccessibilityInfo:(id)a4 includeTraceLogContent:(BOOL)a5 error:(id *)a6
{
  v46[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  if (a5)
  {
    [(TITypologyLog *)self propertyListWithTrace];
  }

  else
  {
    [(TITypologyLog *)self propertyList];
  }
  v12 = ;
  v13 = [v12 mutableCopy];

  if (v11)
  {
    v14 = [v13 objectForKey:@"config"];
    v15 = [v14 mutableCopy];

    [v15 addEntriesFromDictionary:v11];
    [v13 setObject:v15 forKey:@"config"];
  }

  v16 = [v10 URLByDeletingLastPathComponent];
  v17 = [MEMORY[0x1E696AC08] defaultManager];
  v44 = 0;
  v18 = [v17 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:&v44];
  v19 = v44;

  if (!v18 || v19)
  {
    v28 = 0;
    if (a6 && v19)
    {
      v29 = v19;
      v28 = 0;
      *a6 = v19;
    }
  }

  else
  {
    v20 = [MEMORY[0x1E696AC08] defaultManager];
    v21 = [v10 path];
    v22 = [MEMORY[0x1E695DEF0] data];
    v23 = [(TITypologyLog *)self fileCreationOptions];
    v24 = [v20 createFileAtPath:v21 contents:v22 attributes:v23];

    if (v24)
    {
      v25 = [MEMORY[0x1E695DFC0] outputStreamWithURL:v10 append:1];
      [v25 open];
      v26 = [v25 streamError];
      if (v26)
      {
        v19 = v26;
        if (a6)
        {
          v27 = v26;
          v28 = 0;
          *a6 = v19;
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
        v39 = [v25 streamError];
        v40 = v39;
        if (v39 && !v19)
        {
          v19 = v39;
        }

        if (a6 && v19)
        {
          v41 = v19;
          *a6 = v19;
        }

        v28 = v19 == 0;
      }
    }

    else
    {
      if (a6)
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
        *a6 = [v30 errorWithDomain:v31 code:v32 userInfo:v36];
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
  v2 = [(TITypologyLog *)self delegate];
  v3 = [v2 isInternalDeviceWithForcedTypologyLoggingForTesting];

  if (v3)
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

- (BOOL)writeToTypologyLogFile:(id)a3 andTraceLogFile:(id)a4 withAccessibilityInfo:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v10)
  {
    if (!a6)
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
    *a6 = v17;
    goto LABEL_18;
  }

  v24 = 0;
  v13 = [(TITypologyLog *)self _writeToTypologyLogFile:v10 withAccessibilityInfo:v12 includeTraceLogContent:v11 == 0 error:&v24];
  v14 = v24;
  v15 = v14;
  if (!v13)
  {
    if (!a6)
    {
      v18 = 0;
      goto LABEL_18;
    }

    v20 = v14;
    v17 = v15;
    goto LABEL_15;
  }

  if (v11)
  {
    v23 = v14;
    v16 = [(TITypologyLog *)self _writeToTraceLogFile:v11 error:&v23];
    v17 = v23;

    if (v16)
    {
      v18 = 1;
LABEL_17:
      v15 = v17;
      goto LABEL_18;
    }

    if (!a6)
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

- (void)parseTraceLogContent:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(TITraceLogParser);
  [(TITraceLogParser *)v5 setDelegate:self];
  [(TITraceLogParser *)v5 parseTraceLogContent:v4];

  [(TITraceLogParser *)v5 setDelegate:0];
}

- (id)timestamp
{
  v3 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US"];
  v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v4 setLocale:v3];
  [v4 setDateFormat:@"yyyyMMdd'T'HHmmss"];
  v5 = [(TITypologyLog *)self date];
  v6 = [v4 stringFromDate:v5];

  return v6;
}

- (id)traceLogHeader
{
  v3 = [MEMORY[0x1E696AD60] string];
  [v3 appendFormat:@"Version: %lu\n", 3];
  v4 = [(TITypologyLog *)self date];
  v5 = [MEMORY[0x1E695DF58] currentLocale];
  v6 = [v4 descriptionWithLocale:v5];
  [v3 appendFormat:@"Date: %@\n", v6];

  v7 = [(TITypologyLog *)self systemVersion];
  v8 = [(TITypologyLog *)self buildVersion];
  [v3 appendFormat:@"iOS version: %@ (%@)\n", v7, v8];

  [v3 appendString:@"\n"];

  return v3;
}

- (id)trace
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__7142;
  v12 = __Block_byref_object_dispose__7143;
  v13 = [MEMORY[0x1E696AD60] string];
  v3 = v9[5];
  v4 = [(TITypologyLog *)self traceLogHeader];
  [v3 appendString:v4];

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
  v3 = [(TITypologyLog *)self propertyList];
  v4 = [v3 mutableCopy];

  v5 = [(TITypologyLog *)self trace];
  [v4 setObject:v5 forKey:@"traceLogs"];

  return v4;
}

- (id)propertyList
{
  v38[10] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(TITypologyLogArchiverDelegate);
  v4 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  v36 = v3;
  [v4 setDelegate:v3];
  v5 = [(TITypologyLog *)self records];
  v6 = [v5 currentEntries];
  v7 = [v6 mutableCopy];
  [v4 encodeObject:v7 forKey:*MEMORY[0x1E696A508]];

  [v4 finishEncoding];
  v8 = [v4 encodedData];
  v37[0] = @"versionNumber";
  v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[TITypologyLog typologyLogVersion](self, "typologyLogVersion")}];
  v38[0] = v35;
  v37[1] = @"uuid";
  v34 = [(TITypologyLog *)self uuid];
  v9 = [v34 UUIDString];
  v33 = v9;
  if (v9)
  {
    v10 = v9;
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
  v11 = [(TITypologyLog *)self date];
  v12 = v11;
  if (!v11)
  {
    v11 = [MEMORY[0x1E695DF00] date];
  }

  v38[3] = v11;
  v37[4] = @"systemVersion";
  v13 = [(TITypologyLog *)self systemVersion];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = &stru_1EF56D550;
  }

  v38[4] = v15;
  v37[5] = @"buildVersion";
  v16 = [(TITypologyLog *)self buildVersion];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = &stru_1EF56D550;
  }

  v38[5] = v18;
  v37[6] = @"clientIdentifier";
  v19 = [(TITypologyLog *)self clientIdentifier];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = &stru_1EF56D550;
  }

  v38[6] = v21;
  v37[7] = @"records";
  v22 = v8;
  if (!v8)
  {
    v22 = [MEMORY[0x1E695DEF0] data];
  }

  v38[7] = v22;
  v37[8] = @"config";
  v23 = [(TITypologyLog *)self config];
  v24 = v23;
  v25 = MEMORY[0x1E695E0F8];
  if (v23)
  {
    v25 = v23;
  }

  v38[8] = v25;
  v37[9] = @"textSummary";
  v26 = [(TITypologyLog *)self textSummary];
  v27 = v26;
  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = &stru_1EF56D550;
  }

  v38[9] = v28;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:10];

  if (!v8)
  {
  }

  if (!v12)
  {
  }

  return v29;
}

- (TITypologyLog)initWithPropertyList:(id)a3
{
  v4 = a3;
  v68.receiver = self;
  v68.super_class = TITypologyLog;
  v5 = [(TITypologyLog *)&v68 init];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithTypologyLog:self];
}

- (TITypologyLog)initWithTypologyLog:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = TITypologyLog;
  v5 = [(TITypologyLog *)&v32 init];
  v6 = v5;
  if (v5)
  {
    *(v5 + 8) = xmmword_186483E80;
    v7 = [v4 uuid];
    v8 = [v7 copy];
    uuid = v6->_uuid;
    v6->_uuid = v8;

    v6->_partIndex = [v4 partIndex];
    v10 = [v4 date];
    v11 = [v10 copy];
    date = v6->_date;
    v6->_date = v11;

    v13 = [v4 systemVersion];
    v14 = [v13 copy];
    systemVersion = v6->_systemVersion;
    v6->_systemVersion = v14;

    v16 = [v4 buildVersion];
    v17 = [v16 copy];
    buildVersion = v6->_buildVersion;
    v6->_buildVersion = v17;

    v19 = [v4 clientIdentifier];
    v20 = [v19 copy];
    clientIdentifier = v6->_clientIdentifier;
    v6->_clientIdentifier = v20;

    v22 = [v4 records];
    v23 = [v22 copy];
    records = v6->_records;
    v6->_records = v23;

    v25 = [v4 traceRecords];
    v26 = [v25 copy];
    traceRecords = v6->_traceRecords;
    v6->_traceRecords = v26;

    v28 = [v4 config];
    v29 = [v28 copy];
    config = v6->_config;
    v6->_config = v29;
  }

  return v6;
}

- (TITypologyLog)initWithUUID:(id)a3 partIndex:(unint64_t)a4 date:(id)a5 systemVersion:(id)a6 buildVersion:(id)a7 clientIdentifier:(id)a8 config:(id)a9
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a9;
  v36.receiver = self;
  v36.super_class = TITypologyLog;
  v19 = [(TITypologyLog *)&v36 init];
  v20 = v19;
  if (v19)
  {
    *(v19 + 8) = xmmword_186483E80;
    v21 = [v15 copy];
    date = v20->_date;
    v20->_date = v21;

    v23 = [[TIRollingLog alloc] initWithMaxCount:750];
    records = v20->_records;
    v20->_records = v23;

    v25 = [[TIRollingLog alloc] initWithMaxCount:750];
    traceRecords = v20->_traceRecords;
    v20->_traceRecords = v25;

    v27 = [v14 copy];
    uuid = v20->_uuid;
    v20->_uuid = v27;

    v20->_partIndex = a4;
    v29 = [v16 copy];
    systemVersion = v20->_systemVersion;
    v20->_systemVersion = v29;

    v31 = [v17 copy];
    buildVersion = v20->_buildVersion;
    v20->_buildVersion = v31;

    v33 = [v18 copy];
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

+ (id)typologyLogURLFromTraceLogURL:(id)a3
{
  v4 = a3;
  v5 = [v4 lastPathComponent];
  v6 = [a1 typologyLogFilenameFromTraceLogFilename:v5];
  if (v6)
  {
    v7 = [v4 URLByDeletingLastPathComponent];
    v8 = [v7 URLByAppendingPathComponent:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)traceLogURLFromTypologyLogURL:(id)a3
{
  v4 = a3;
  v5 = [v4 lastPathComponent];
  v6 = [a1 traceLogFilenameFromTypologyLogFilename:v5];
  if (v6)
  {
    v7 = [v4 URLByDeletingLastPathComponent];
    v8 = [v7 URLByAppendingPathComponent:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_adjustFilename:(id)a3 oldPrefix:(id)a4 newPrefix:(id)a5 oldSuffix:(id)a6 newSuffix:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [v15 stringByReplacingOccurrencesOfString:v14 withString:v13 options:8 range:{0, objc_msgSend(v15, "length")}];

  v17 = [v16 stringByReplacingOccurrencesOfString:v12 withString:v11 options:12 range:{0, objc_msgSend(v16, "length")}];

  return v17;
}

+ (id)typologyLogFilenameFromTraceLogFilename:(id)a3
{
  v4 = a3;
  if ([a1 isTraceLogFilename:v4])
  {
    v5 = [a1 _adjustFilename:v4 oldPrefix:@"typologyTrace-" newPrefix:@"typology-" oldSuffix:@".log" newSuffix:@".plist"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)traceLogFilenameFromTypologyLogFilename:(id)a3
{
  v4 = a3;
  if ([a1 isTypologyLogFilename:v4])
  {
    v5 = [a1 _adjustFilename:v4 oldPrefix:@"typology-" newPrefix:@"typologyTrace-" oldSuffix:@".plist" newSuffix:@".log"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isTraceLogFilename:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"typologyTrace"])
  {
    v4 = [v3 hasSuffix:@".log"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)isTypologyLogFilename:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"typology"])
  {
    v4 = [v3 hasSuffix:@".plist"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)typologyLogFromTypologyLogFile:(id)a3 andTraceLogFile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v26 = 0;
    v10 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:v8 error:&v26];
    v11 = v26;
    if (v11)
    {
      v12 = v11;
      if (a5)
      {
        v13 = v11;
        v14 = 0;
        *a5 = v12;
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_29;
    }

    v15 = [[TITypologyLog alloc] initWithPropertyList:v10];
    v16 = [v10 objectForKey:@"traceLogs"];

    if (v9 && v16)
    {
      if (a5)
      {
        [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:*__error() userInfo:&unk_1EF7CF6B8];
        v12 = 0;
        *a5 = v14 = 0;
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

    if (!v9)
    {
      v9 = [a1 traceLogURLFromTypologyLogURL:v8];
      v21 = [MEMORY[0x1E696AC08] defaultManager];
      v22 = [v9 path];
      v23 = [v21 fileExistsAtPath:v22];

      if (!v23)
      {
        v12 = 0;
        v18 = v9;
        v9 = 0;
LABEL_26:

        goto LABEL_27;
      }

      if (!v9)
      {
LABEL_14:
        v12 = 0;
LABEL_27:
        v14 = v15;
        goto LABEL_28;
      }
    }

    v25 = 0;
    v18 = [MEMORY[0x1E696AEC0] stringWithContentsOfURL:v9 encoding:4 error:&v25];
    v19 = v25;
    v12 = v19;
    if (a5 && v19)
    {
      v20 = v19;
      *a5 = v12;

      goto LABEL_20;
    }

    [(TITypologyLog *)v15 parseTraceLogContent:v18];
    goto LABEL_26;
  }

  if (a5)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:*__error() userInfo:&unk_1EF7CF690];
    *a5 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

LABEL_30:

  return v14;
}

@end