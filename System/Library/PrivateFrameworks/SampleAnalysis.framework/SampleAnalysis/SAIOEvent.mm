@interface SAIOEvent
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4;
+ (id)typeString:(unsigned int)a3;
+ (void)parseKTrace:findingIOEvents:;
- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5;
- (BOOL)isRead;
- (NSString)debugDescription;
- (SAIOEvent)initWithStartTime:(id)a3 threadID:(unint64_t)a4 blockNumber:(unint64_t)a5 size:(unint64_t)a6 type:(unint64_t)a7 tier:(unsigned int)a8;
- (void)addSelfToSerializationDictionary:(id)a3;
- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6;
- (void)writeJSONDictionaryEntriesToStream:(id)a3;
@end

@implementation SAIOEvent

- (BOOL)isRead
{
  rawType = self->_rawType;
  LOBYTE(self) = 1;
  if (rawType > 167773439)
  {
    if (rawType > 167773695)
    {
      if (rawType == 167773696)
      {
        return self;
      }

      v3 = 1552;
    }

    else
    {
      if (rawType == 167773440)
      {
        return self;
      }

      v3 = 1296;
    }
  }

  else if (rawType > 167772927)
  {
    if (rawType == 167772928)
    {
      return self;
    }

    v3 = 784;
  }

  else
  {
    if (rawType == 167772672)
    {
      return self;
    }

    v3 = 528;
  }

  if (rawType == (v3 | 0xA000000))
  {
    LOBYTE(self) = 0;
  }

  else
  {
    LODWORD(self) = (rawType >> 3) & 1;
  }

  return self;
}

+ (void)parseKTrace:findingIOEvents:
{
  objc_opt_self();
  v1 = objc_alloc_init(MEMORY[0x1E695DF90]);
  ktrace_events_range();
  v0 = v1;
  ktrace_events_single();
}

void __41__SAIOEvent_parseKTrace_findingIOEvents___block_invoke(void *a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
  v5 = a1[6];
  v6 = [SATimestamp timestampWithKTraceEvent:a2 fromSession:?];
  v7 = *(a2 + 48);
  if ((v7 & 4) != 0)
  {
    v15 = a1[4];
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v4];
    v8 = [v15 objectForKeyedSubscript:v16];

    if (v8)
    {
      [(SAIOEvent *)v8 setEndTimestamp:v6];
      v17 = a1[4];
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v4];
      [v17 removeObjectForKey:v18];

      (*(a1[5] + 16))();
    }
  }

  else
  {
    v8 = [[SAIOEvent alloc] initWithStartTime:v6 threadID:*(a2 + 40) blockNumber:*(a2 + 24) size:*(a2 + 32) type:v7 & 0xFFFFFFF8 tier:(v7 >> 10) & 0xF];
    v9 = a1[4];
    v10 = 0x1E696A000uLL;
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v4];
    v12 = [v9 objectForKeyedSubscript:v11];

    if (v12)
    {
      v20 = *__error();
      v21 = _sa_logt();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        v22 = a1[4];
        [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v4];
        v23 = v27 = v20;
        v24 = [v22 objectForKeyedSubscript:v23];
        v25 = [v24 debugDescription];
        v26 = [(SAIOEvent *)v8 debugDescription];
        *buf = 138412546;
        v29 = v25;
        v30 = 2112;
        v31 = v26;
        _os_log_fault_impl(&dword_1E0E2F000, v21, OS_LOG_TYPE_FAULT, "Existing IOEvent %@ when adding new event %@", buf, 0x16u);

        v10 = 0x1E696A000;
        v20 = v27;
      }

      *__error() = v20;
    }

    v13 = a1[4];
    v14 = [*(v10 + 3480) numberWithUnsignedLongLong:v4];
    [v13 setObject:v8 forKeyedSubscript:v14];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (SAIOEvent)initWithStartTime:(id)a3 threadID:(unint64_t)a4 blockNumber:(unint64_t)a5 size:(unint64_t)a6 type:(unint64_t)a7 tier:(unsigned int)a8
{
  v9 = a7;
  v17.receiver = self;
  v17.super_class = SAIOEvent;
  v14 = [(SAIOEvent *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_startTimestamp, a3);
    v15->_size = a6;
    v15->_threadID = a4;
    v15->_tier = a8;
    v15->_rawType = v9;
    v15->_blockNumber = a5;
  }

  return v15;
}

+ (id)typeString:(unsigned int)a3
{
  if (a3 > 167773439)
  {
    if (a3 > 167773695)
    {
      if (a3 == 167773696)
      {
        return @"ReadMigration";
      }

      if (a3 == 167773712)
      {
        return @"WriteMigration";
      }
    }

    else
    {
      if (a3 == 167773440)
      {
        return @"ReadTransform";
      }

      if (a3 == 167773456)
      {
        return @"WriteTransform";
      }
    }
  }

  else if (a3 > 167772927)
  {
    if (a3 == 167772928)
    {
      return @"ReadMeta";
    }

    if (a3 == 167772944)
    {
      return @"WriteMeta";
    }
  }

  else
  {
    if (a3 == 167772672)
    {
      return @"ReadChunk";
    }

    if (a3 == 167772688)
    {
      return @"WriteChunk";
    }
  }

  v4 = (a3 & 0x3020068) - 50462720;
  if (v4 > 0x4F)
  {
    return @"Other";
  }

  else
  {
    return *(off_1E86F5328 + v4);
  }
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  threadID = self->_threadID;
  v5 = [(SAIOEvent *)self type];
  size = self->_size;
  tier = self->_tier;
  v8 = [(SATimestamp *)self->_startTimestamp debugDescription];
  v9 = [(SATimestamp *)self->_endTimestamp debugDescription];
  v10 = [v3 stringWithFormat:@"IO Event [thread:0x%llx, type:%@, size 0x%llx tier:%d]\nstart:%@\n  end:%@", threadID, v5, size, tier, v8, v9];

  return v10;
}

- (void)writeJSONDictionaryEntriesToStream:(id)a3
{
  v5 = [(SAIOEvent *)self type];
  SAJSONWriteDictionaryFirstEntry(a3, @"type", v5);

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_size];
  SAJSONWriteDictionaryEntry(a3, @"size", v6);

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_tier];
  SAJSONWriteDictionaryEntry(a3, @"tier", v7);

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_threadID];
  SAJSONWriteDictionaryEntry(a3, @"threadID", v8);

  SAJSONWriteDictionaryEntry(a3, @"startTime", self->_startTimestamp);
  endTimestamp = self->_endTimestamp;

  SAJSONWriteDictionaryEntry(a3, @"endTime", endTimestamp);
}

- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  if ([(SAIOEvent *)self sizeInBytesForSerializedVersion]!= a4)
  {
    v11 = *__error();
    v12 = _sa_logt();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [(SAIOEvent *)self debugDescription];
      *buf = 136315650;
      v23 = [v13 UTF8String];
      v24 = 2048;
      v25 = [(SAIOEvent *)self sizeInBytesForSerializedVersion];
      v26 = 2048;
      v27 = a4;
      _os_log_error_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v11;
    v14 = [(SAIOEvent *)self debugDescription];
    v15 = [v14 UTF8String];
    [(SAIOEvent *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(224, "%s: size %lu != buffer length %lu", v16, v17, v18, v19, v20, v21, v15);

    _os_crash();
    __break(1u);
  }

  *&a3->var0 = 513;
  *(&a3->var1 + 1) = SASerializableIndexForPointerFromSerializationDictionary(self->_startTimestamp, a5);
  *(&a3->var2 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_endTimestamp, a5);
  *(&a3->var3 + 2) = self->_size;
  *(&a3->var7 + 2) = self->_threadID;
  *(&a3->var5 + 2) = self->_blockNumber;
  *(&a3->var6 + 2) = self->_rawType;
  *(&a3->var6 + 6) = self->_tier;
  *(&a3->var4 + 2) = 0;
  v9 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)a3
{
  v5 = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(a3, self, v5);

  if (v6)
  {
    [(SATimestamp *)self->_startTimestamp addSelfToSerializationDictionary:a3];
    endTimestamp = self->_endTimestamp;

    [(SATimestamp *)endTimestamp addSelfToSerializationDictionary:a3];
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4
{
  v29 = *MEMORY[0x1E69E9840];
  if (*a3 >= 3u)
  {
    goto LABEL_13;
  }

  if (a4 <= 0x31)
  {
    v8 = *__error();
    v9 = _sa_logt();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v26 = a4;
      v27 = 2048;
      v28 = 50;
      _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAIOEvent struct %lu", buf, 0x16u);
    }

    *__error() = v8;
    _SASetCrashLogMessage(256, "bufferLength %lu < serialized SAIOEvent struct %lu", v10, v11, v12, v13, v14, v15, a4);
    _os_crash();
    __break(1u);
LABEL_10:
    v16 = *__error();
    v17 = _sa_logt();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v26 = a4;
      v27 = 2048;
      v28 = 58;
      _os_log_error_impl(&dword_1E0E2F000, v17, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAIOEvent_v2 struct %lu", buf, 0x16u);
    }

    *__error() = v16;
    _SASetCrashLogMessage(266, "bufferLength %lu < serialized SAIOEvent_v2 struct %lu", v18, v19, v20, v21, v22, v23, a4);
    _os_crash();
    __break(1u);
LABEL_13:
    v24 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAIOEvent version" userInfo:0];
    objc_exception_throw(v24);
  }

  result = objc_alloc_init(SAIOEvent);
  *(result + 6) = *(a3 + 34);
  *(result + 4) = *(a3 + 18);
  *(result + 3) = *(a3 + 42);
  *(result + 2) = *(a3 + 46);
  if (*(a3 + 1) >= 2u)
  {
    if (a4 > 0x39)
    {
      *(result + 5) = *(a3 + 50);
      goto LABEL_6;
    }

    goto LABEL_10;
  }

LABEL_6:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6
{
  v33 = *MEMORY[0x1E69E9840];
  if (*a3 >= 3u)
  {
    goto LABEL_9;
  }

  if (a4 <= 0x31)
  {
    v20 = *__error();
    v21 = _sa_logt();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v30 = a4;
      v31 = 2048;
      v32 = 50;
      _os_log_error_impl(&dword_1E0E2F000, v21, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAIOEvent struct %lu", buf, 0x16u);
    }

    *__error() = v20;
    _SASetCrashLogMessage(279, "bufferLength %lu < serialized SAIOEvent struct %lu", v22, v23, v24, v25, v26, v27, a4);
    _os_crash();
    __break(1u);
LABEL_9:
    v28 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAIOEvent version" userInfo:0];
    objc_exception_throw(v28);
  }

  v11 = *(a3 + 2);
  v12 = objc_opt_class();
  v13 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v11, a5, a6, v12);
  startTimestamp = self->_startTimestamp;
  self->_startTimestamp = v13;

  v15 = *(a3 + 10);
  v16 = objc_opt_class();
  v17 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v15, a5, a6, v16);
  endTimestamp = self->_endTimestamp;
  self->_endTimestamp = v17;
  v19 = *MEMORY[0x1E69E9840];
}

@end