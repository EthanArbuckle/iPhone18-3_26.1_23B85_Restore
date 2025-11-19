@interface SAPowerModeTransition
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4;
- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5;
- (NSString)debugDescription;
- (id)initWithLowPowerMode:(void *)a3 timestamp:;
- (void)addSelfToSerializationDictionary:(id)a3;
- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6;
- (void)writeJSONDictionaryEntriesToStream:(id)a3;
@end

@implementation SAPowerModeTransition

- (id)initWithLowPowerMode:(void *)a3 timestamp:
{
  if (!a1)
  {
    return 0;
  }

  v8.receiver = a1;
  v8.super_class = SAPowerModeTransition;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  v6 = v5;
  if (v5)
  {
    *(v5 + 9) = a2;
    *(v5 + 8) = 1;
    objc_storeStrong(v5 + 2, a3);
  }

  return v6;
}

- (NSString)debugDescription
{
  v2 = MEMORY[0x1E696AEC0];
  if (self->_lowPowerModeChanged)
  {
    if (self->_lowPowerMode)
    {
      v3 = "low";
    }

    else
    {
      v3 = "default";
    }
  }

  else
  {
    v3 = "unknown";
  }

  v4 = [(SATimestamp *)self->_timestamp debugDescription];
  v5 = [v2 stringWithFormat:@"%s power mode at %@", v3, v4];

  return v5;
}

- (void)writeJSONDictionaryEntriesToStream:(id)a3
{
  if (self->_lowPowerModeChanged)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_lowPowerMode];
    SAJSONWriteDictionaryFirstEntry(a3, @"lowPowerMode", v5);

    timestamp = self->_timestamp;
    if (timestamp)
    {

      SAJSONWriteDictionaryEntry(a3, @"timestamp", timestamp);
    }
  }
}

- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  if ([(SAPowerModeTransition *)self sizeInBytesForSerializedVersion]!= a4)
  {
    v11 = *__error();
    v12 = _sa_logt();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [(SAPowerModeTransition *)self debugDescription];
      *buf = 136315650;
      v23 = [v13 UTF8String];
      v24 = 2048;
      v25 = [(SAPowerModeTransition *)self sizeInBytesForSerializedVersion];
      v26 = 2048;
      v27 = a4;
      _os_log_error_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v11;
    v14 = [(SAPowerModeTransition *)self debugDescription];
    v15 = [v14 UTF8String];
    [(SAPowerModeTransition *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(78, "%s: size %lu != buffer length %lu", v16, v17, v18, v19, v20, v21, v15);

    _os_crash();
    __break(1u);
  }

  *&a3->var0 = 257;
  *(&a3->var1 + 1) = self->_lowPowerMode;
  *(&a3->var1 + 2) = self->_lowPowerModeChanged;
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

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4
{
  v21 = *MEMORY[0x1E69E9840];
  if (*a3 >= 2u)
  {
    goto LABEL_7;
  }

  if (a4 <= 0x11)
  {
    v8 = *__error();
    v9 = _sa_logt();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v18 = a4;
      v19 = 2048;
      v20 = 18;
      _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAPowerModeTransition struct %lu", buf, 0x16u);
    }

    *__error() = v8;
    _SASetCrashLogMessage(103, "bufferLength %lu < serialized SAPowerModeTransition struct %lu", v10, v11, v12, v13, v14, v15, a4);
    _os_crash();
    __break(1u);
LABEL_7:
    v16 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAPowerModeTransition version" userInfo:0];
    objc_exception_throw(v16);
  }

  result = objc_alloc_init(SAPowerModeTransition);
  *(result + 9) = *(a3 + 2);
  *(result + 8) = *(a3 + 3);
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

  if (a4 <= 0x11)
  {
    v15 = *__error();
    v16 = _sa_logt();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v25 = a4;
      v26 = 2048;
      v27 = 18;
      _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAPowerModeTransition struct %lu", buf, 0x16u);
    }

    *__error() = v15;
    _SASetCrashLogMessage(117, "bufferLength %lu < serialized SAPowerModeTransition struct %lu", v17, v18, v19, v20, v21, v22, a4);
    _os_crash();
    __break(1u);
LABEL_9:
    v23 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAPowerModeTransition version" userInfo:0];
    objc_exception_throw(v23);
  }

  v10 = *(a3 + 10);
  v11 = objc_opt_class();
  v12 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v10, a5, a6, v11, 0);
  timestamp = self->_timestamp;
  self->_timestamp = v12;
  v14 = *MEMORY[0x1E69E9840];
}

@end