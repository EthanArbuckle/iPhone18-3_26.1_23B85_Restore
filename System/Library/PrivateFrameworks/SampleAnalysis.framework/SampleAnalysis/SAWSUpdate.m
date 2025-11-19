@interface SAWSUpdate
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4;
- (BOOL)addSelfToBuffer:(void *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5;
- (void)addSelfToSerializationDictionary:(id)a3;
@end

@implementation SAWSUpdate

- (void)addSelfToSerializationDictionary:(id)a3
{
  v5 = +[SAWSUpdate classDictionaryKey];
  SASerializableAddInstanceToSerializationDictionaryWithClassKey(a3, self, v5);
}

- (BOOL)addSelfToBuffer:(void *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  if ([(SAWSUpdate *)self sizeInBytesForSerializedVersion]!= a4)
  {
    v11 = *__error();
    v12 = _sa_logt();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [(SAWSUpdate *)self debugDescription];
      *buf = 136315650;
      v24 = [v13 UTF8String];
      v25 = 2048;
      v26 = [(SAWSUpdate *)self sizeInBytesForSerializedVersion];
      v27 = 2048;
      v28 = a4;
      _os_log_error_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v11;
    v14 = [(SAWSUpdate *)self debugDescription];
    v15 = [v14 UTF8String];
    [(SAWSUpdate *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(986, "%s: size %lu != buffer length %lu", v16, v17, v18, v19, v20, v21, v15);

    _os_crash();
    __break(1u);
LABEL_8:
    v22 = [SAException exceptionWithName:@"Encoding failure" reason:@"No buffer or completedSerializationDictionary" userInfo:0];
    objc_exception_throw(v22);
  }

  if (!a3 || !a5)
  {
    goto LABEL_8;
  }

  *a3 = 287545748;
  *(a3 + 1) = *&self->_frameStartTime;
  *(a3 + 2) = *&self->_deferStartTime;
  *(a3 + 3) = *&self->_workStartTime;
  *(a3 + 4) = *&self->_workEndTime;
  v9 = *MEMORY[0x1E69E9840];
  return 1;
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4
{
  if (!a3)
  {
    v6 = @"NULL buffer";
    goto LABEL_6;
  }

  if (*a3 != 287545748)
  {
    v6 = @"Bad SASerializedWSUpdateMagic magic";
LABEL_6:
    v7 = [SAException exceptionWithName:@"Decoding failure" reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  result = objc_alloc_init(SAWSUpdate);
  *(result + 1) = *(a3 + 1);
  *(result + 2) = *(a3 + 2);
  *(result + 3) = *(a3 + 3);
  *(result + 4) = *(a3 + 4);
  return result;
}

@end