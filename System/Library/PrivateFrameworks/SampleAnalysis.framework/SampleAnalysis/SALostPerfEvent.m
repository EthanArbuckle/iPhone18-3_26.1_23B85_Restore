@interface SALostPerfEvent
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4;
+ (void)parseKTrace:findingLostPerfEvents:;
- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5;
- (NSString)debugDescription;
- (SALostPerfEvent)initWithStartTime:(id)a3;
- (void)addSelfToSerializationDictionary:(id)a3;
- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6;
- (void)writeJSONDictionaryEntriesToStream:(id)a3;
@end

@implementation SALostPerfEvent

- (SALostPerfEvent)initWithStartTime:(id)a3
{
  v8.receiver = self;
  v8.super_class = SALostPerfEvent;
  v4 = [(SALostPerfEvent *)&v8 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_startTime, a3);
    v6 = v5;
  }

  return v5;
}

+ (void)parseKTrace:findingLostPerfEvents:
{
  objc_opt_self();
  v2[0] = 0;
  v2[1] = v2;
  v2[2] = 0x2020000000;
  v3 = 1;
  v0[0] = 0;
  v0[1] = v0;
  v0[2] = 0x3032000000;
  v0[3] = __Block_byref_object_copy__5;
  v0[4] = __Block_byref_object_dispose__5;
  v1 = 0;
  ktrace_events_single();
  _Block_object_dispose(v0, 8);

  _Block_object_dispose(v2, 8);
}

void __53__SALostPerfEvent_parseKTrace_findingLostPerfEvents___block_invoke(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a1[5] + 8);
  if (*(v6 + 24) == 1)
  {
    *(v6 + 24) = 0;
    v7 = [[SALostPerfEventV7 alloc] initWithStartTime:0 reason:v4];
    v8 = *(a1[6] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = *(*(a1[6] + 8) + 40);
    (*(a1[4] + 16))();
  }

  if (v4 != v5)
  {
    v11 = a1[7];
    newValue = [SATimestamp timestampWithKTraceEvent:a2 fromSession:?];
    v13 = *(*(a1[6] + 8) + 40);
    if (v13)
    {
      objc_setProperty_atomic(v13, v12, newValue, 16);
    }

    v14 = [[SALostPerfEventV7 alloc] initWithStartTime:newValue reason:v5];
    v15 = *(a1[6] + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v17 = *(*(a1[6] + 8) + 40);
    (*(a1[4] + 16))();
  }
}

- (NSString)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(SALostPerfEvent *)self lostPerf];
  v5 = [(SALostPerfEvent *)self startTime];
  v6 = [v5 debugDescription];
  v7 = [(SALostPerfEvent *)self endTime];
  v8 = [v7 debugDescription];
  v9 = [v3 initWithFormat:@"Lost perf %@ %@ - %@", v4, v6, v8];

  return v9;
}

- (void)writeJSONDictionaryEntriesToStream:(id)a3
{
  v5 = [(SALostPerfEvent *)self lostPerf];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"NOTSET";
  }

  SAJSONWriteDictionaryFirstEntry(a3, @"lostPerf", v7);

  startTime = self->_startTime;
  if (startTime)
  {
    SAJSONWriteDictionaryEntry(a3, @"startTime", startTime);
  }

  endTime = self->_endTime;
  if (endTime)
  {
    SAJSONWriteDictionaryEntry(a3, @"endTime", endTime);
  }

  v13 = [(SALostPerfEvent *)self domain];
  if (v13)
  {
    SAJSONWriteDictionaryEntry(a3, @"domain", v13);
  }

  v10 = [(SALostPerfEvent *)self type];
  if (v10)
  {
    SAJSONWriteDictionaryEntry(a3, @"type", v10);
  }

  v11 = [(SALostPerfEvent *)self mode];
  if (v11)
  {
    SAJSONWriteDictionaryEntry(a3, @"mode", v11);
  }

  v12 = [(SALostPerfEvent *)self source];
  if (v12)
  {
    SAJSONWriteDictionaryEntry(a3, @"source", v12);
  }
}

- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  if ([(SALostPerfEvent *)self sizeInBytesForSerializedVersion]!= a4)
  {
    v12 = *__error();
    v13 = _sa_logt();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [(SALostPerfEvent *)self debugDescription];
      *buf = 136315650;
      v24 = [v14 UTF8String];
      v25 = 2048;
      v26 = [(SALostPerfEvent *)self sizeInBytesForSerializedVersion];
      v27 = 2048;
      v28 = a4;
      _os_log_error_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v12;
    v15 = [(SALostPerfEvent *)self debugDescription];
    v16 = [v15 UTF8String];
    [(SALostPerfEvent *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(269, "%s: size %lu != buffer length %lu", v17, v18, v19, v20, v21, v22, v16);

    _os_crash();
    __break(1u);
  }

  *&a3->var0 = 257;
  *(&a3->var1 + 1) = SASerializableIndexForPointerFromSerializationDictionary(self->_startTime, a5);
  *(&a3->var2 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_endTime, a5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isa = self[1].super.isa;
  }

  else
  {
    isa = 0;
  }

  *(&a3->var3 + 2) = isa;
  v10 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)a3
{
  v5 = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(a3, self, v5);

  if (v6)
  {
    [(SATimestamp *)self->_startTime addSelfToSerializationDictionary:a3];
    endTime = self->_endTime;

    [(SATimestamp *)endTime addSelfToSerializationDictionary:a3];
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4
{
  v24 = *MEMORY[0x1E69E9840];
  if (*a3 >= 2u)
  {
    goto LABEL_13;
  }

  if (a4 <= 0x15)
  {
    v11 = *__error();
    v12 = _sa_logt();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v21 = a4;
      v22 = 2048;
      v23 = 22;
      _os_log_error_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SALostPerfEvent struct %lu", buf, 0x16u);
    }

    *__error() = v11;
    _SASetCrashLogMessage(301, "bufferLength %lu < serialized SALostPerfEvent struct %lu", v13, v14, v15, v16, v17, v18, a4);
    _os_crash();
    __break(1u);
LABEL_13:
    v19 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SALostPerfEvent version" userInfo:0];
    objc_exception_throw(v19);
  }

  if (*(a3 + 18))
  {
    v6 = [SALostPerfEventV7 alloc];
    v7 = *(a3 + 18);
    v8 = *MEMORY[0x1E69E9840];

    return [(SALostPerfEventV7 *)v6 initWithStartTime:0 reason:v7];
  }

  else
  {
    v10 = *MEMORY[0x1E69E9840];

    return objc_alloc_init(SALostPerfEvent);
  }
}

- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6
{
  v33 = *MEMORY[0x1E69E9840];
  if (*a3 >= 2u)
  {
    goto LABEL_9;
  }

  if (a4 <= 0x15)
  {
    v20 = *__error();
    v21 = _sa_logt();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v30 = a4;
      v31 = 2048;
      v32 = 22;
      _os_log_error_impl(&dword_1E0E2F000, v21, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SALostPerfEvent struct %lu", buf, 0x16u);
    }

    *__error() = v20;
    _SASetCrashLogMessage(318, "bufferLength %lu < serialized SALostPerfEvent struct %lu", v22, v23, v24, v25, v26, v27, a4);
    _os_crash();
    __break(1u);
LABEL_9:
    v28 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SALostPerfEvent version" userInfo:0];
    objc_exception_throw(v28);
  }

  v11 = *(a3 + 2);
  v12 = objc_opt_class();
  v13 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v11, a5, a6, v12, 0);
  startTime = self->_startTime;
  self->_startTime = v13;

  v15 = *(a3 + 10);
  v16 = objc_opt_class();
  v17 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v15, a5, a6, v16, 0);
  endTime = self->_endTime;
  self->_endTime = v17;
  v19 = *MEMORY[0x1E69E9840];
}

@end