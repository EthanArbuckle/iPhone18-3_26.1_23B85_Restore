@interface SAWSUpdate
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
- (BOOL)addSelfToBuffer:(void *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (void)addSelfToSerializationDictionary:(id)dictionary;
@end

@implementation SAWSUpdate

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  v5 = +[SAWSUpdate classDictionaryKey];
  SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, self, v5);
}

- (BOOL)addSelfToBuffer:(void *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v29 = *MEMORY[0x1E69E9840];
  if ([(SAWSUpdate *)self sizeInBytesForSerializedVersion]!= length)
  {
    v11 = *__error();
    v12 = _sa_logt();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [(SAWSUpdate *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v13 UTF8String];
      v25 = 2048;
      sizeInBytesForSerializedVersion = [(SAWSUpdate *)self sizeInBytesForSerializedVersion];
      v27 = 2048;
      lengthCopy = length;
      _os_log_error_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v11;
    v14 = [(SAWSUpdate *)self debugDescription];
    uTF8String2 = [v14 UTF8String];
    [(SAWSUpdate *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(986, "%s: size %lu != buffer length %lu", v16, v17, v18, v19, v20, v21, uTF8String2);

    _os_crash();
    __break(1u);
LABEL_8:
    v22 = [SAException exceptionWithName:@"Encoding failure" reason:@"No buffer or completedSerializationDictionary" userInfo:0];
    objc_exception_throw(v22);
  }

  if (!buffer || !dictionary)
  {
    goto LABEL_8;
  }

  *buffer = 287545748;
  *(buffer + 1) = *&self->_frameStartTime;
  *(buffer + 2) = *&self->_deferStartTime;
  *(buffer + 3) = *&self->_workStartTime;
  *(buffer + 4) = *&self->_workEndTime;
  v9 = *MEMORY[0x1E69E9840];
  return 1;
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  if (!buffer)
  {
    v6 = @"NULL buffer";
    goto LABEL_6;
  }

  if (*buffer != 287545748)
  {
    v6 = @"Bad SASerializedWSUpdateMagic magic";
LABEL_6:
    v7 = [SAException exceptionWithName:@"Decoding failure" reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  result = objc_alloc_init(SAWSUpdate);
  *(result + 1) = *(buffer + 1);
  *(result + 2) = *(buffer + 2);
  *(result + 3) = *(buffer + 3);
  *(result + 4) = *(buffer + 4);
  return result;
}

@end