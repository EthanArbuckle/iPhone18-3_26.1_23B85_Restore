@interface SARecipeState
+ (id)classDictionaryKey;
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
+ (id)stateWithThread:(void *)thread threadStateIndex:;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (SAThreadState)threadState;
- (id)initWithThread:(void *)thread threadStateIndex:;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
@end

@implementation SARecipeState

- (SAThreadState)threadState
{
  threadStates = [(SAThread *)self->_thread threadStates];
  v4 = [threadStates objectAtIndexedSubscript:self->_threadStateIndex];

  return v4;
}

+ (id)stateWithThread:(void *)thread threadStateIndex:
{
  v5 = objc_alloc(objc_opt_self());
  v6 = [(SARecipeState *)v5 initWithThread:a2 threadStateIndex:thread];

  return v6;
}

- (id)initWithThread:(void *)thread threadStateIndex:
{
  if (!self)
  {
    return 0;
  }

  v8.receiver = self;
  v8.super_class = SARecipeState;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(v5 + 1, a2);
    v6[2] = thread;
  }

  return v6;
}

+ (id)classDictionaryKey
{
  v3 = *__error();
  v4 = _sa_logt();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    ClassName = object_getClassName(self);
    _os_log_error_impl(&dword_1E0E2F000, v4, OS_LOG_TYPE_ERROR, "SARecipeState classDictionaryKey not overridden by %s", buf, 0xCu);
  }

  *__error() = v3;
  v5 = object_getClassName(self);
  _SASetCrashLogMessage(5646, "SARecipeState classDictionaryKey not overridden by %s", v6, v7, v8, v9, v10, v11, v5);
  result = _os_crash();
  __break(1u);
  return result;
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v43 = *MEMORY[0x1E69E9840];
  if ([(SARecipeState *)self sizeInBytesForSerializedVersion]!= length)
  {
    v12 = *__error();
    v13 = _sa_logt();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [(SARecipeState *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v14 UTF8String];
      v39 = 2048;
      sizeInBytesForSerializedVersion = [(SARecipeState *)self sizeInBytesForSerializedVersion];
      v41 = 2048;
      lengthCopy = length;
      _os_log_error_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v12;
    v15 = [(SARecipeState *)self debugDescription];
    uTF8String2 = [v15 UTF8String];
    [(SARecipeState *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(5654, "%s: size %lu != buffer length %lu", v17, v18, v19, v20, v21, v22, uTF8String2);

    _os_crash();
    __break(1u);
LABEL_7:
    v23 = *__error();
    v24 = _sa_logt();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [(SARecipeState *)self debugDescription];
      uTF8String3 = [v25 UTF8String];
      threadStateIndex = self->_threadStateIndex;
      *buf = 136315394;
      uTF8String = uTF8String3;
      v39 = 2048;
      sizeInBytesForSerializedVersion = threadStateIndex;
      _os_log_error_impl(&dword_1E0E2F000, v24, OS_LOG_TYPE_ERROR, "%s: %lu threadStateIndex", buf, 0x16u);
    }

    *__error() = v23;
    v28 = [(SARecipeState *)self debugDescription];
    uTF8String4 = [v28 UTF8String];
    v36 = self->_threadStateIndex;
    _SASetCrashLogMessage(5659, "%s: %lu threadStateIndex", v30, v31, v32, v33, v34, v35, uTF8String4);

    _os_crash();
    __break(1u);
  }

  *&buffer->var0 = 257;
  v9 = self->_threadStateIndex;
  if (v9 >= 0xFFFFFFFF)
  {
    goto LABEL_7;
  }

  *(&buffer->var2 + 2) = v9;
  *(&buffer->var1 + 1) = SASerializableIndexForPointerFromSerializationDictionary(self->_thread, dictionary);
  v10 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  classDictionaryKey = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, self, classDictionaryKey);

  if (v6)
  {
    thread = self->_thread;

    [(SAThread *)thread addSelfToSerializationDictionary:dictionary];
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  v21 = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_7;
  }

  if (length <= 0xD)
  {
    v8 = *__error();
    v9 = _sa_logt();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy = length;
      v19 = 2048;
      v20 = 14;
      _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SARecipeState struct %lu", buf, 0x16u);
    }

    *__error() = v8;
    _SASetCrashLogMessage(5680, "bufferLength %lu < serialized SARecipeState struct %lu", v10, v11, v12, v13, v14, v15, length);
    _os_crash();
    __break(1u);
LABEL_7:
    v16 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SARecipeState version" userInfo:0];
    objc_exception_throw(v16);
  }

  result = objc_alloc_init(objc_opt_class());
  *(result + 2) = *(buffer + 10);
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

  if (length <= 0xD)
  {
    v15 = *__error();
    v16 = _sa_logt();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy = length;
      v26 = 2048;
      v27 = 14;
      _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SARecipeState struct %lu", buf, 0x16u);
    }

    *__error() = v15;
    _SASetCrashLogMessage(5694, "bufferLength %lu < serialized SARecipeState struct %lu", v17, v18, v19, v20, v21, v22, length);
    _os_crash();
    __break(1u);
LABEL_9:
    v23 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SARecipeState version" userInfo:0];
    objc_exception_throw(v23);
  }

  v10 = *(buffer + 2);
  v11 = objc_opt_class();
  v12 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v10, dictionary, bufferDictionary, v11);
  thread = self->_thread;
  self->_thread = v12;
  v14 = *MEMORY[0x1E69E9840];
}

@end