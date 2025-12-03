@interface SASwiftTask
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (NSString)debugDescription;
- (unint64_t)sizeInBytesForSerializedVersion;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
@end

@implementation SASwiftTask

- (NSString)debugDescription
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SwiftTask %llu", -[SARecipe identifier](self, "identifier")];

  return v2;
}

- (unint64_t)sizeInBytesForSerializedVersion
{
  states = [(SARecipe *)self states];
  v3 = 8 * [states count];

  return v3 + 14;
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v48 = *MEMORY[0x1E69E9840];
  if ([(SASwiftTask *)self sizeInBytesForSerializedVersion]!= length)
  {
    v16 = *__error();
    v17 = _sa_logt();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [(SASwiftTask *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v18 UTF8String];
      v44 = 2048;
      sizeInBytesForSerializedVersion = [(SASwiftTask *)self sizeInBytesForSerializedVersion];
      v46 = 2048;
      lengthCopy = length;
      _os_log_error_impl(&dword_1E0E2F000, v17, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v16;
    v19 = [(SASwiftTask *)self debugDescription];
    uTF8String2 = [v19 UTF8String];
    [(SASwiftTask *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(5568, "%s: size %lu != buffer length %lu", v21, v22, v23, v24, v25, v26, uTF8String2);

    _os_crash();
    __break(1u);
LABEL_7:
    v27 = *__error();
    v28 = _sa_logt();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [(SASwiftTask *)self debugDescription];
      uTF8String3 = [v29 UTF8String];
      states = [(SARecipe *)self states];
      v32 = [states count];
      *buf = 136315394;
      uTF8String = uTF8String3;
      v44 = 2048;
      sizeInBytesForSerializedVersion = v32;
      _os_log_error_impl(&dword_1E0E2F000, v28, OS_LOG_TYPE_ERROR, "%s: %lu swiftTaskStates", buf, 0x16u);
    }

    *__error() = v27;
    v33 = [(SASwiftTask *)self debugDescription];
    uTF8String4 = [v33 UTF8String];
    states2 = [(SARecipe *)self states];
    [states2 count];
    _SASetCrashLogMessage(5575, "%s: %lu swiftTaskStates", v36, v37, v38, v39, v40, v41, uTF8String4);

    _os_crash();
    __break(1u);
  }

  *&buffer->var0 = 257;
  *(&buffer->var1 + 1) = [(SARecipe *)self identifier];
  states3 = [(SARecipe *)self states];
  v10 = [states3 count];

  if (v10 >= 0xFFFFFFFF)
  {
    goto LABEL_7;
  }

  states4 = [(SARecipe *)self states];
  *(&buffer->var2 + 2) = [states4 count];

  v12 = *(&buffer->var2 + 2);
  states5 = [(SARecipe *)self states];
  SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(&buffer->var2 + 6, v12, states5, dictionary);

  v14 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  v18 = *MEMORY[0x1E69E9840];
  classDictionaryKey = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, self, classDictionaryKey);

  if (v6)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    states = [(SARecipe *)self states];
    v8 = [states countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(states);
          }

          [*(*(&v13 + 1) + 8 * v11++) addSelfToSerializationDictionary:dictionary];
        }

        while (v9 != v11);
        v9 = [states countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  v30 = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_11;
  }

  if (length <= 0xD)
  {
    v8 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v28 = 2048;
      v29 = 14;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SASwiftTask struct %lu", buf, 0x16u);
    }

    *__error() = v8;
    _SASetCrashLogMessage(5598, "bufferLength %lu < serialized SASwiftTask struct %lu", v9, v10, v11, v12, v13, v14, length);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  bufferCopy = buffer;
  if (8 * *(buffer + 10) + 14 > length)
  {
LABEL_8:
    v15 = *__error();
    v16 = _sa_logt();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(bufferCopy + 10);
      *buf = 134218240;
      lengthCopy2 = length;
      v28 = 1024;
      LODWORD(v29) = v17;
      _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SASwiftTask struct with %u swiftTaskStates", buf, 0x12u);
    }

    *__error() = v15;
    v25 = *(bufferCopy + 10);
    _SASetCrashLogMessage(5599, "bufferLength %lu < serialized SASwiftTask struct with %u swiftTaskStates", v18, v19, v20, v21, v22, v23, length);
    _os_crash();
    __break(1u);
LABEL_11:
    v24 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SASwiftTask version" userInfo:0];
    objc_exception_throw(v24);
  }

  result = [(SADispatchQueue *)SASwiftTask dispatchQueueWithId:?];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  *&v38[13] = *MEMORY[0x1E69E9840];
  if (*buffer >= 4u)
  {
    goto LABEL_15;
  }

  if (length <= 0xD)
  {
    v16 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v37 = 2048;
      *v38 = 14;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SASwiftTask struct %lu", buf, 0x16u);
    }

    *__error() = v16;
    _SASetCrashLogMessage(5611, "bufferLength %lu < serialized SASwiftTask struct %lu", v17, v18, v19, v20, v21, v22, length);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  bufferCopy = buffer;
  v9 = *(buffer + 10);
  v6 = 8 * v9 + 14;
  if (v6 > length)
  {
LABEL_12:
    v23 = *__error();
    v24 = _sa_logt();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = *(bufferCopy + 10);
      *buf = 134218496;
      lengthCopy2 = length;
      v37 = 1024;
      *v38 = v25;
      v38[2] = 2048;
      *&v38[3] = v6;
      _os_log_error_impl(&dword_1E0E2F000, v24, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SASwiftTask struct v1 with %u swiftTaskStates (%llu)", buf, 0x1Cu);
    }

    *__error() = v23;
    v33 = *(bufferCopy + 10);
    _SASetCrashLogMessage(5613, "bufferLength %lu < serialized SASwiftTask struct v1 with %u swiftTaskStates (%llu)", v26, v27, v28, v29, v30, v31, length);
    _os_crash();
    __break(1u);
LABEL_15:
    v32 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SASwiftTask version" userInfo:0];
    objc_exception_throw(v32);
  }

  v13 = objc_opt_class();
  v14 = SASerializableNewMutableArrayFromIndexList(bufferCopy + 14, v9, dictionary, bufferDictionary, v13);
  if (self)
  {
    v34 = v14;
    objc_setProperty_atomic(self, v14, v14, 8);
    v14 = v34;
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end