@interface SAFanSpeed
+ (_DWORD)fanSpeedWithPAStyleSerializedFanSpeed:(uint64_t)a1;
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4;
- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5;
- (SAFanSpeed)init;
- (SAFanSpeed)initWithTimestamp:(id)a3;
- (id)initEmpty;
- (void)addSelfToSerializationDictionary:(id)a3;
- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6;
@end

@implementation SAFanSpeed

- (SAFanSpeed)init
{
  v3 = +[SATimestamp timestamp];
  v4 = [(SAFanSpeed *)self initWithTimestamp:v3];

  return v4;
}

- (SAFanSpeed)initWithTimestamp:(id)a3
{
  objc_opt_self();
  if (numFans_onceToken != -1)
  {
    dispatch_once(&numFans_onceToken, &__block_literal_global_15);
  }

  return 0;
}

- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  if ([(SAFanSpeed *)self sizeInBytesForSerializedVersion]!= a4)
  {
    v11 = *__error();
    v12 = _sa_logt();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [(SAFanSpeed *)self debugDescription];
      *buf = 136315650;
      v23 = [v13 UTF8String];
      v24 = 2048;
      v25 = [(SAFanSpeed *)self sizeInBytesForSerializedVersion];
      v26 = 2048;
      v27 = a4;
      _os_log_error_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v11;
    v14 = [(SAFanSpeed *)self debugDescription];
    v15 = [v14 UTF8String];
    [(SAFanSpeed *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(207, "%s: size %lu != buffer length %lu", v16, v17, v18, v19, v20, v21, v15);

    _os_crash();
    __break(1u);
  }

  *&a3->var0 = 257;
  *(&a3->var1 + 1) = self->_fanSpeed;
  *(&a3->var2 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_timestamp, a5);
  v9 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)a3
{
  v5 = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(a3, self, v5);

  if (v6)
  {
    timestamp = self->_timestamp;

    [(SATimestamp *)timestamp addSelfToSerializationDictionary:a3];
  }
}

- (id)initEmpty
{
  v3.receiver = self;
  v3.super_class = SAFanSpeed;
  return [(SAFanSpeed *)&v3 init];
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4
{
  v21 = *MEMORY[0x1E69E9840];
  if (*a3 >= 2u)
  {
    goto LABEL_7;
  }

  if (a4 <= 0xD)
  {
    v8 = *__error();
    v9 = _sa_logt();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v18 = a4;
      v19 = 2048;
      v20 = 14;
      _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAFanSpeed struct %lu", buf, 0x16u);
    }

    *__error() = v8;
    _SASetCrashLogMessage(236, "bufferLength %lu < serialized SAFanSpeed struct %lu", v10, v11, v12, v13, v14, v15, a4);
    _os_crash();
    __break(1u);
LABEL_7:
    v16 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAFanSpeed version" userInfo:0];
    objc_exception_throw(v16);
  }

  result = [[SAFanSpeed alloc] initEmpty];
  *(result + 2) = *(a3 + 2);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6
{
  v28 = *MEMORY[0x1E69E9840];
  if (*a3 >= 2u)
  {
    goto LABEL_9;
  }

  if (a4 <= 0xD)
  {
    v15 = *__error();
    v16 = _sa_logt();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v25 = a4;
      v26 = 2048;
      v27 = 14;
      _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAFanSpeed struct %lu", buf, 0x16u);
    }

    *__error() = v15;
    _SASetCrashLogMessage(249, "bufferLength %lu < serialized SAFanSpeed struct %lu", v17, v18, v19, v20, v21, v22, a4);
    _os_crash();
    __break(1u);
LABEL_9:
    v23 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAFanSpeed version" userInfo:0];
    objc_exception_throw(v23);
  }

  v10 = *(a3 + 6);
  v11 = objc_opt_class();
  v12 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v10, a5, a6, v11);
  timestamp = self->_timestamp;
  self->_timestamp = v12;
  v14 = *MEMORY[0x1E69E9840];
}

+ (_DWORD)fanSpeedWithPAStyleSerializedFanSpeed:(uint64_t)a1
{
  objc_opt_self();
  v3 = [[SAFanSpeed alloc] initEmpty];
  v3[2] = *(a2 + 16);
  v4 = [SATimestamp timestampWithMachAbsTime:0 machAbsTimeSec:0 machContTime:*(a2 + 8) machContTimeSec:0.0 wallTime:0.0];
  v5 = *(v3 + 2);
  *(v3 + 2) = v4;

  return v3;
}

@end