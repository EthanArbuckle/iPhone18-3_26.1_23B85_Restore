@interface SAKPerfTrigger
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4;
- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5;
- (void)addSelfToSerializationDictionary:(id)a3;
- (void)writeJSONDictionaryEntriesToStream:(id)a3;
@end

@implementation SAKPerfTrigger

- (void)writeJSONDictionaryEntriesToStream:(id)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_type];
  SAJSONWriteDictionaryFirstEntry(a3, @"type", v5);

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_kperfSamplers];
  SAJSONWriteDictionaryEntry(a3, @"samplers", v6);

  if (self->_timerPeriodNs)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    SAJSONWriteDictionaryEntry(a3, @"timerPeriodNs", v7);
  }
}

- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  if ([(SAKPerfTrigger *)self sizeInBytesForSerializedVersion:a3]!= a4)
  {
    v10 = *__error();
    v11 = _sa_logt();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [(SAKPerfTrigger *)self debugDescription];
      *buf = 136315650;
      v23 = [v12 UTF8String];
      v24 = 2048;
      v25 = [(SAKPerfTrigger *)self sizeInBytesForSerializedVersion];
      v26 = 2048;
      v27 = a4;
      _os_log_error_impl(&dword_1E0E2F000, v11, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v10;
    v13 = [(SAKPerfTrigger *)self debugDescription];
    v14 = v13;
    v15 = [v13 UTF8String];
    [(SAKPerfTrigger *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(5346, "%s: size %lu != buffer length %lu", v16, v17, v18, v19, v20, v21, v15);

    _os_crash();
    __break(1u);
  }

  *&a3->var0 = 257;
  *(&a3->var1 + 1) = self->_type;
  *(&a3->var2 + 2) = self->_timerPeriodNs;
  *(&a3->var3 + 2) = self->_kperfSamplers;
  v8 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)a3
{
  v5 = [objc_opt_class() classDictionaryKey];
  SASerializableAddInstanceToSerializationDictionaryWithClassKey(a3, self, v5);
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4
{
  v21 = *MEMORY[0x1E69E9840];
  if (*a3 >= 2u)
  {
    goto LABEL_7;
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
      _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAKPerfTrigger struct %lu", buf, 0x16u);
    }

    *__error() = v8;
    _SASetCrashLogMessage(5371, "bufferLength %lu < serialized SAKPerfTrigger struct %lu", v10, v11, v12, v13, v14, v15, a4);
    _os_crash();
    __break(1u);
LABEL_7:
    v16 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAKPerfTrigger version" userInfo:0];
    objc_exception_throw(v16);
  }

  result = objc_alloc_init(SAKPerfTrigger);
  *(result + 8) = *(a3 + 2);
  *(result + 3) = *(a3 + 18);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

@end