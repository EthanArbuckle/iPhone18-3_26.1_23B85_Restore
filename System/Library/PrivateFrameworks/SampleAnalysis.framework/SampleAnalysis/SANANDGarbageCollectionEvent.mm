@interface SANANDGarbageCollectionEvent
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
+ (void)parseKTrace:(void *)trace findingGarbageCollectionEvents:;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (NSString)debugDescription;
- (NSString)reason;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
- (void)writeJSONDictionaryEntriesToStream:(id)stream;
@end

@implementation SANANDGarbageCollectionEvent

+ (void)parseKTrace:(void *)trace findingGarbageCollectionEvents:
{
  traceCopy = trace;
  objc_opt_self();
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3032000000;
  v5[3] = __Block_byref_object_copy__9;
  v5[4] = __Block_byref_object_dispose__9;
  v6 = 0;
  v4 = traceCopy;
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
  reason = [(SANANDGarbageCollectionEvent *)self reason];
  reasonCode = self->_reasonCode;
  v6 = [(SATimestamp *)self->_startTimestamp debugDescription];
  v7 = [(SATimestamp *)self->_endTimestamp debugDescription];
  v8 = [v3 initWithFormat:@"GC reason:%@(%llu) %@ - %@", reason, reasonCode, v6, v7];

  return v8;
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v28 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  if ([(SANANDGarbageCollectionEvent *)self sizeInBytesForSerializedVersion]!= length)
  {
    v11 = *__error();
    v12 = _sa_logt();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [(SANANDGarbageCollectionEvent *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v13 UTF8String];
      v24 = 2048;
      sizeInBytesForSerializedVersion = [(SANANDGarbageCollectionEvent *)self sizeInBytesForSerializedVersion];
      v26 = 2048;
      lengthCopy = length;
      _os_log_error_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v11;
    v14 = [(SANANDGarbageCollectionEvent *)self debugDescription];
    uTF8String2 = [v14 UTF8String];
    [(SANANDGarbageCollectionEvent *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(128, "%s: size %lu != buffer length %lu", v16, v17, v18, v19, v20, v21, uTF8String2);

    _os_crash();
    __break(1u);
  }

  *&buffer->var0 = 257;
  *(&buffer->var1 + 1) = SASerializableIndexForPointerFromSerializationDictionary(self->_startTimestamp, dictionaryCopy);
  *(&buffer->var2 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_endTimestamp, dictionaryCopy);
  *(&buffer->var3 + 2) = self->_reasonCode;

  v9 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  classDictionaryKey = [objc_opt_class() classDictionaryKey];
  v5 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionaryCopy, self, classDictionaryKey);

  if (v5)
  {
    [(SATimestamp *)self->_startTimestamp addSelfToSerializationDictionary:dictionaryCopy];
    [(SATimestamp *)self->_endTimestamp addSelfToSerializationDictionary:dictionaryCopy];
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  v21 = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_9;
  }

  if (length <= 0x19)
  {
    v8 = *__error();
    v9 = _sa_logt();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy = length;
      v19 = 2048;
      v20 = 26;
      _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAIOEvent struct %lu", buf, 0x16u);
    }

    *__error() = v8;
    _SASetCrashLogMessage(154, "bufferLength %lu < serialized SAIOEvent struct %lu", v10, v11, v12, v13, v14, v15, length);
    _os_crash();
    __break(1u);
LABEL_9:
    v16 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SANANDGarbageCollectionEvent version" userInfo:0];
    objc_exception_throw(v16);
  }

  result = objc_alloc_init(SANANDGarbageCollectionEvent);
  if (result)
  {
    *(result + 3) = *(buffer + 18);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  v35 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  bufferDictionaryCopy = bufferDictionary;
  if (*buffer >= 2u)
  {
    goto LABEL_9;
  }

  if (length <= 0x19)
  {
    v21 = *__error();
    v22 = _sa_logt();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy = length;
      v33 = 2048;
      v34 = 26;
      _os_log_error_impl(&dword_1E0E2F000, v22, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SANANDGarbageCollectionEvent struct %lu", buf, 0x16u);
    }

    *__error() = v21;
    _SASetCrashLogMessage(168, "bufferLength %lu < serialized SANANDGarbageCollectionEvent struct %lu", v23, v24, v25, v26, v27, v28, length);
    _os_crash();
    __break(1u);
LABEL_9:
    v29 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SANANDGarbageCollectionEvent version" userInfo:0];
    objc_exception_throw(v29);
  }

  v11 = bufferDictionaryCopy;
  v12 = *(buffer + 2);
  v13 = objc_opt_class();
  v14 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v12, dictionaryCopy, v11, v13, 0);
  startTimestamp = self->_startTimestamp;
  self->_startTimestamp = v14;

  v16 = *(buffer + 10);
  v17 = objc_opt_class();
  v18 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v16, dictionaryCopy, v11, v17, 0);
  endTimestamp = self->_endTimestamp;
  self->_endTimestamp = v18;

  v20 = *MEMORY[0x1E69E9840];
}

- (void)writeJSONDictionaryEntriesToStream:(id)stream
{
  streamCopy = stream;
  startTimestamp = self->_startTimestamp;
  v9 = streamCopy;
  if (startTimestamp)
  {
    SAJSONWriteDictionaryFirstEntry(streamCopy, @"startTimestamp", startTimestamp);
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
      SAJSONWriteDictionaryFirstEntry(streamCopy, @"endTimestamp", v7);
    }
  }

  reason = [(SANANDGarbageCollectionEvent *)self reason];
  if (reason)
  {
    SAJSONWriteDictionaryEntry(v9, @"reason", reason);
  }
}

@end