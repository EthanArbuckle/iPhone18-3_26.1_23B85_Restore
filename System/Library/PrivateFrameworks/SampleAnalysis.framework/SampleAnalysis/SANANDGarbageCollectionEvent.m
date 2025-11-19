@interface SANANDGarbageCollectionEvent
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4;
+ (void)parseKTrace:(void *)a3 findingGarbageCollectionEvents:;
- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5;
- (NSString)debugDescription;
- (NSString)reason;
- (void)addSelfToSerializationDictionary:(id)a3;
- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6;
- (void)writeJSONDictionaryEntriesToStream:(id)a3;
@end

@implementation SANANDGarbageCollectionEvent

+ (void)parseKTrace:(void *)a3 findingGarbageCollectionEvents:
{
  v3 = a3;
  objc_opt_self();
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3032000000;
  v5[3] = __Block_byref_object_copy__9;
  v5[4] = __Block_byref_object_dispose__9;
  v6 = 0;
  v4 = v3;
  ktrace_events_single();

  _Block_object_dispose(v5, 8);
}

void __75__SANANDGarbageCollectionEvent_parseKTrace_findingGarbageCollectionEvents___block_invoke(void *a1, uint64_t a2)
{
  v4 = a1[6];
  newValue = [SATimestamp timestampWithKTraceEvent:a2 fromSession:?];
  if (*(a2 + 48))
  {
    v9 = objc_alloc_init(SANANDGarbageCollectionEvent);
    v11 = v9;
    if (v9)
    {
      objc_setProperty_atomic(v9, v10, newValue, 8);
      v11->_reasonCode = *(a2 + 24);
    }

    (*(a1[4] + 16))();
    v12 = *(a1[5] + 8);
    v8 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  else
  {
    v6 = *(*(a1[5] + 8) + 40);
    if (v6)
    {
      objc_setProperty_atomic(v6, v5, newValue, 16);
      v7 = *(a1[5] + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = 0;
    }

    else
    {
      v13 = objc_alloc_init(SANANDGarbageCollectionEvent);
      v8 = v13;
      if (v13)
      {
        objc_setProperty_atomic(v13, v14, newValue, 16);
      }

      (*(a1[4] + 16))();
    }
  }
}

- (NSString)reason
{
  reasonCode = self->_reasonCode;
  if (reasonCode >= 0xB)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unknown(%llu)", self->_reasonCode];
  }

  else
  {
    v4 = qword_1E86F8B50[reasonCode];
  }

  return v4;
}

- (NSString)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(SANANDGarbageCollectionEvent *)self reason];
  reasonCode = self->_reasonCode;
  v6 = [(SATimestamp *)self->_startTimestamp debugDescription];
  v7 = [(SATimestamp *)self->_endTimestamp debugDescription];
  v8 = [v3 initWithFormat:@"GC reason:%@(%llu) %@ - %@", v4, reasonCode, v6, v7];

  return v8;
}

- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a5;
  if ([(SANANDGarbageCollectionEvent *)self sizeInBytesForSerializedVersion]!= a4)
  {
    v11 = *__error();
    v12 = _sa_logt();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [(SANANDGarbageCollectionEvent *)self debugDescription];
      *buf = 136315650;
      v23 = [v13 UTF8String];
      v24 = 2048;
      v25 = [(SANANDGarbageCollectionEvent *)self sizeInBytesForSerializedVersion];
      v26 = 2048;
      v27 = a4;
      _os_log_error_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v11;
    v14 = [(SANANDGarbageCollectionEvent *)self debugDescription];
    v15 = [v14 UTF8String];
    [(SANANDGarbageCollectionEvent *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(128, "%s: size %lu != buffer length %lu", v16, v17, v18, v19, v20, v21, v15);

    _os_crash();
    __break(1u);
  }

  *&a3->var0 = 257;
  *(&a3->var1 + 1) = SASerializableIndexForPointerFromSerializationDictionary(self->_startTimestamp, v8);
  *(&a3->var2 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_endTimestamp, v8);
  *(&a3->var3 + 2) = self->_reasonCode;

  v9 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)a3
{
  v6 = a3;
  v4 = [objc_opt_class() classDictionaryKey];
  v5 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(v6, self, v4);

  if (v5)
  {
    [(SATimestamp *)self->_startTimestamp addSelfToSerializationDictionary:v6];
    [(SATimestamp *)self->_endTimestamp addSelfToSerializationDictionary:v6];
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4
{
  v21 = *MEMORY[0x1E69E9840];
  if (*a3 >= 2u)
  {
    goto LABEL_9;
  }

  if (a4 <= 0x19)
  {
    v8 = *__error();
    v9 = _sa_logt();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v18 = a4;
      v19 = 2048;
      v20 = 26;
      _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAIOEvent struct %lu", buf, 0x16u);
    }

    *__error() = v8;
    _SASetCrashLogMessage(154, "bufferLength %lu < serialized SAIOEvent struct %lu", v10, v11, v12, v13, v14, v15, a4);
    _os_crash();
    __break(1u);
LABEL_9:
    v16 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SANANDGarbageCollectionEvent version" userInfo:0];
    objc_exception_throw(v16);
  }

  result = objc_alloc_init(SANANDGarbageCollectionEvent);
  if (result)
  {
    *(result + 3) = *(a3 + 18);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6
{
  v35 = *MEMORY[0x1E69E9840];
  v30 = a5;
  v10 = a6;
  if (*a3 >= 2u)
  {
    goto LABEL_9;
  }

  if (a4 <= 0x19)
  {
    v21 = *__error();
    v22 = _sa_logt();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v32 = a4;
      v33 = 2048;
      v34 = 26;
      _os_log_error_impl(&dword_1E0E2F000, v22, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SANANDGarbageCollectionEvent struct %lu", buf, 0x16u);
    }

    *__error() = v21;
    _SASetCrashLogMessage(168, "bufferLength %lu < serialized SANANDGarbageCollectionEvent struct %lu", v23, v24, v25, v26, v27, v28, a4);
    _os_crash();
    __break(1u);
LABEL_9:
    v29 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SANANDGarbageCollectionEvent version" userInfo:0];
    objc_exception_throw(v29);
  }

  v11 = v10;
  v12 = *(a3 + 2);
  v13 = objc_opt_class();
  v14 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v12, v30, v11, v13, 0);
  startTimestamp = self->_startTimestamp;
  self->_startTimestamp = v14;

  v16 = *(a3 + 10);
  v17 = objc_opt_class();
  v18 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v16, v30, v11, v17, 0);
  endTimestamp = self->_endTimestamp;
  self->_endTimestamp = v18;

  v20 = *MEMORY[0x1E69E9840];
}

- (void)writeJSONDictionaryEntriesToStream:(id)a3
{
  v4 = a3;
  startTimestamp = self->_startTimestamp;
  v9 = v4;
  if (startTimestamp)
  {
    SAJSONWriteDictionaryFirstEntry(v4, @"startTimestamp", startTimestamp);
    endTimestamp = self->_endTimestamp;
    if (endTimestamp)
    {
      SAJSONWriteDictionaryEntry(v9, @"endTimestamp", endTimestamp);
    }
  }

  else
  {
    v7 = self->_endTimestamp;
    if (v7)
    {
      SAJSONWriteDictionaryFirstEntry(v4, @"endTimestamp", v7);
    }
  }

  v8 = [(SANANDGarbageCollectionEvent *)self reason];
  if (v8)
  {
    SAJSONWriteDictionaryEntry(v9, @"reason", v8);
  }
}

@end