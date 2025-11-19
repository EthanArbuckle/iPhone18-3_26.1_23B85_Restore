@interface TITraceLog
- (NSMutableDictionary)recordEntryCache;
- (TITraceLog)initWithLogContents:(id)a3;
- (id)recordStringMatchingTypologyRecord:(id)a3;
- (id)recordStringMatchingUUID:(id)a3;
- (void)enumerateRecordsWithBlock:(id)a3;
- (void)enumerateTextRecordEntriesUsingBlock:(id)a3;
@end

@implementation TITraceLog

- (void)enumerateTextRecordEntriesUsingBlock:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E696AE88]);
  v6 = [(TITraceLog *)self logContents];
  v7 = [v5 initWithString:v6];

  v21 = 0;
  v20 = 0;
  [v7 scanString:@"RECORD ID: " intoString:&v20];
  v8 = v20;
  if (([v7 isAtEnd] & 1) == 0)
  {
    v9 = 0;
    do
    {
      v10 = v9;
      if (v21)
      {
        break;
      }

      v23 = 0;
      v11 = v7;
      [v11 scanUpToString:@"\n" intoString:&v23];
      v12 = v23;
      v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v12];
      v14 = v13;
      v22 = v12;
      [v11 scanUpToString:@"RECORD ID: " intoString:&v22];

      v15 = v22;
      v16 = [v15 copy];
      v17 = v16;

      v18 = v16;
      v9 = v13;

      if (v18 && v9)
      {
        v4[2](v4, v18, v9, &v21);
      }

      v19 = v18;
      [v11 scanString:@"RECORD ID: " intoString:&v19];
      v8 = v19;
    }

    while (![v11 isAtEnd]);
  }
}

- (NSMutableDictionary)recordEntryCache
{
  p_recordEntryCache = &self->_recordEntryCache;
  recordEntryCache = self->_recordEntryCache;
  if (!recordEntryCache)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__2972;
    v11 = __Block_byref_object_dispose__2973;
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __30__TITraceLog_recordEntryCache__block_invoke;
    v6[3] = &unk_1E6F4C030;
    v6[4] = &v7;
    [(TITraceLog *)self enumerateTextRecordEntriesUsingBlock:v6];
    objc_storeStrong(p_recordEntryCache, v8[5]);
    _Block_object_dispose(&v7, 8);

    recordEntryCache = self->_recordEntryCache;
  }

  return recordEntryCache;
}

- (void)enumerateRecordsWithBlock:(id)a3
{
  v4 = a3;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__TITraceLog_enumerateRecordsWithBlock___block_invoke;
  v6[3] = &unk_1E6F4C008;
  v7 = v4;
  v8 = v9;
  v5 = v4;
  [(TITraceLog *)self enumerateTextRecordEntriesUsingBlock:v6];

  _Block_object_dispose(v9, 8);
}

uint64_t __40__TITraceLog_enumerateRecordsWithBlock___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(*(*(result + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  return result;
}

- (id)recordStringMatchingTypologyRecord:(id)a3
{
  v4 = [a3 recordID];
  v5 = [(TITraceLog *)self recordStringMatchingUUID:v4];

  return v5;
}

- (id)recordStringMatchingUUID:(id)a3
{
  v4 = a3;
  v5 = [(TITraceLog *)self recordEntryCache];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (TITraceLog)initWithLogContents:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TITraceLog;
  v5 = [(TITraceLog *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    logContents = v5->_logContents;
    v5->_logContents = v6;
  }

  return v5;
}

@end