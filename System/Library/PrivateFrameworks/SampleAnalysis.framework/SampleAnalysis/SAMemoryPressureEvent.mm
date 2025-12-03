@interface SAMemoryPressureEvent
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
+ (void)parseKTrace:findingMemoryPressureEvents:;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
@end

@implementation SAMemoryPressureEvent

+ (void)parseKTrace:findingMemoryPressureEvents:
{
  objc_opt_self();
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x3032000000;
  v3[3] = __Block_byref_object_copy__8;
  v3[4] = __Block_byref_object_dispose__8;
  v4 = 0;
  if (!ktrace_get_machine())
  {
    v0 = *__error();
    v1 = _sa_logt();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v1, OS_LOG_TYPE_ERROR, "Unable to get machine from ktrace session", buf, 2u);
    }

    goto LABEL_9;
  }

  if (!ktrace_machine_hw_page_size())
  {
    v0 = *__error();
    v1 = _sa_logt();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v1, OS_LOG_TYPE_ERROR, "Unable to get hw page size from ktrace session", buf, 2u);
    }

LABEL_9:

    *__error() = v0;
    goto LABEL_10;
  }

  ktrace_events_single();
  ktrace_events_single();
LABEL_10:
  _Block_object_dispose(v3, 8);
}

uint64_t __65__SAMemoryPressureEvent_parseKTrace_findingMemoryPressureEvents___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(SAMemoryPressureEvent);
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1 + 40);
  v9 = [SATimestamp timestampWithKTraceEvent:a2 fromSession:?];
  v10 = *(*(*(a1 + 32) + 8) + 40);
  if (v10)
  {
    objc_setProperty_atomic(v10, v8, v9, 16);
  }

  v11 = *(*(*(a1 + 32) + 8) + 40);
  v12 = *(a1 + 48);
  v13 = *(a2 + 8);
  v14 = *(a2 + 24);
  result = [v11 availableBytes];
  if (v11)
  {
    v11[3] = result + (v14 + v13) * v12;
  }

  return result;
}

void __65__SAMemoryPressureEvent_parseKTrace_findingMemoryPressureEvents___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    *(v2 + 8) = *(a2 + 24);
    v4 = *(*(*(a1 + 40) + 8) + 40);
    v5 = *(a1 + 48);
    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    v8 = [v4 availableBytes];
    if (v4)
    {
      v4[3] = v8 + (v7 + v6) * v5;
    }

    v9 = *(*(*(a1 + 40) + 8) + 40);
    (*(*(a1 + 32) + 16))();
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;
  }
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v28 = *MEMORY[0x1E69E9840];
  if ([(SAMemoryPressureEvent *)self sizeInBytesForSerializedVersion]!= length)
  {
    v11 = *__error();
    v12 = _sa_logt();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [(SAMemoryPressureEvent *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v13 UTF8String];
      v24 = 2048;
      sizeInBytesForSerializedVersion = [(SAMemoryPressureEvent *)self sizeInBytesForSerializedVersion];
      v26 = 2048;
      lengthCopy = length;
      _os_log_error_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v11;
    v14 = [(SAMemoryPressureEvent *)self debugDescription];
    uTF8String2 = [v14 UTF8String];
    [(SAMemoryPressureEvent *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(116, "%s: size %lu != buffer length %lu", v16, v17, v18, v19, v20, v21, uTF8String2);

    _os_crash();
    __break(1u);
  }

  *&buffer->var0 = 257;
  *(&buffer->var1 + 1) = SASerializableIndexForPointerFromSerializationDictionary(self->_timestamp, dictionary);
  *(&buffer->var2 + 2) = self->_availableBytes;
  BYTE2(buffer->var3) = self->_memoryStatusLevel;
  v9 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  classDictionaryKey = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, self, classDictionaryKey);

  if (v6)
  {
    timestamp = self->_timestamp;

    [(SATimestamp *)timestamp addSelfToSerializationDictionary:dictionary];
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  v21 = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_9;
  }

  if (length <= 0x12)
  {
    v8 = *__error();
    v9 = _sa_logt();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy = length;
      v19 = 2048;
      v20 = 19;
      _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAIOEvent struct %lu", buf, 0x16u);
    }

    *__error() = v8;
    _SASetCrashLogMessage(141, "bufferLength %lu < serialized SAIOEvent struct %lu", v10, v11, v12, v13, v14, v15, length);
    _os_crash();
    __break(1u);
LABEL_9:
    v16 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAMemoryPressureEvent version" userInfo:0];
    objc_exception_throw(v16);
  }

  result = objc_alloc_init(SAMemoryPressureEvent);
  if (result)
  {
    *(result + 3) = *(buffer + 10);
    *(result + 8) = *(buffer + 18);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  v28 = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_9;
  }

  if (length <= 0x12)
  {
    v15 = *__error();
    v16 = _sa_logt();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy = length;
      v26 = 2048;
      v27 = 19;
      _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAMemoryPressureEvent struct %lu", buf, 0x16u);
    }

    *__error() = v15;
    _SASetCrashLogMessage(155, "bufferLength %lu < serialized SAMemoryPressureEvent struct %lu", v17, v18, v19, v20, v21, v22, length);
    _os_crash();
    __break(1u);
LABEL_9:
    v23 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAMemoryPressureEvent version" userInfo:0];
    objc_exception_throw(v23);
  }

  v10 = *(buffer + 2);
  v11 = objc_opt_class();
  v12 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v10, dictionary, bufferDictionary, v11);
  timestamp = self->_timestamp;
  self->_timestamp = v12;
  v14 = *MEMORY[0x1E69E9840];
}

@end