@interface SAMountSnapshot
+ (SAMountSnapshot)mountSnapshotWithoutReferencesFromPAStyleMountSnapshot:(uint64_t)snapshot;
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
@end

@implementation SAMountSnapshot

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v52 = *MEMORY[0x1E69E9840];
  if ([(SAMountSnapshot *)self sizeInBytesForSerializedVersion]!= length)
  {
    v17 = *__error();
    v18 = _sa_logt();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [(SAMountSnapshot *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v19 UTF8String];
      v48 = 2048;
      sizeInBytesForSerializedVersion = [(SAMountSnapshot *)self sizeInBytesForSerializedVersion];
      v50 = 2048;
      lengthCopy = length;
      _os_log_error_impl(&dword_1E0E2F000, v18, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v17;
    v20 = [(SAMountSnapshot *)self debugDescription];
    uTF8String2 = [v20 UTF8String];
    [(SAMountSnapshot *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(683, "%s: size %lu != buffer length %lu", v22, v23, v24, v25, v26, v27, uTF8String2);

    _os_crash();
    __break(1u);
LABEL_14:
    v28 = *__error();
    v29 = _sa_logt();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [(SAMountSnapshot *)self debugDescription];
      uTF8String3 = [v30 UTF8String];
      v32 = [(NSArray *)self->_blockedThreadIDs count];
      *buf = 136315394;
      uTF8String = uTF8String3;
      v48 = 2048;
      sizeInBytesForSerializedVersion = v32;
      _os_log_error_impl(&dword_1E0E2F000, v29, OS_LOG_TYPE_ERROR, "%s: %lu blockedThreadIDs", buf, 0x16u);
    }

    *__error() = v28;
    v33 = [(SAMountSnapshot *)self debugDescription];
    uTF8String4 = [v33 UTF8String];
    [(NSArray *)self->_blockedThreadIDs count];
    _SASetCrashLogMessage(692, "%s: %lu blockedThreadIDs", v35, v36, v37, v38, v39, v40, uTF8String4);

    _os_crash();
    __break(1u);
  }

  *&buffer->var0 = 257;
  *(&buffer->var3 + 6) = *&self->_timestampOfLastResponse;
  *(&buffer->var2 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_timeWhenMeasured, dictionary);
  if ([(NSArray *)self->_blockedThreadIDs count]>= 0xFFFFFFFF)
  {
    goto LABEL_14;
  }

  *(&buffer->var1 + 1) = [(NSArray *)self->_blockedThreadIDs count];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v9 = self->_blockedThreadIDs;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = (&buffer->var4 + 6);
    v13 = *v42;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v42 != v13)
        {
          objc_enumerationMutation(v9);
        }

        *v12++ = [*(*(&v41 + 1) + 8 * i) unsignedLongLongValue];
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  classDictionaryKey = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, self, classDictionaryKey);

  if (v6)
  {
    timeWhenMeasured = self->_timeWhenMeasured;

    [(SATimestamp *)timeWhenMeasured addSelfToSerializationDictionary:dictionary];
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  v36 = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_14;
  }

  if (length <= 0x15)
  {
    v14 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v34 = 2048;
      v35 = 22;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAMountSnapshot struct %lu", buf, 0x16u);
    }

    *__error() = v14;
    _SASetCrashLogMessage(718, "bufferLength %lu < serialized SAMountSnapshot struct %lu", v15, v16, v17, v18, v19, v20, length);
    _os_crash();
    __break(1u);
    goto LABEL_11;
  }

  bufferCopy = buffer;
  if (8 * *(buffer + 2) + 22 > length)
  {
LABEL_11:
    v21 = *__error();
    v22 = _sa_logt();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = *(bufferCopy + 2);
      *buf = 134218240;
      lengthCopy2 = length;
      v34 = 2048;
      v35 = v23;
      _os_log_error_impl(&dword_1E0E2F000, v22, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAMountStatusTracker struct with %lu blockedThreads", buf, 0x16u);
    }

    *__error() = v21;
    v31 = *(bufferCopy + 2);
    _SASetCrashLogMessage(719, "bufferLength %lu < serialized SAMountStatusTracker struct with %lu blockedThreads", v24, v25, v26, v27, v28, v29, length);
    _os_crash();
    __break(1u);
LABEL_14:
    v30 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAMountSnapshot version" userInfo:0];
    objc_exception_throw(v30);
  }

  v6 = objc_alloc_init(SAMountSnapshot);
  v6->_timestampOfLastResponse = *(bufferCopy + 14);
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(bufferCopy + 2)];
  if (*(bufferCopy + 2))
  {
    v8 = 0;
    do
    {
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(bufferCopy + 22 + 8 * v8)];
      [v7 addObject:v9];

      ++v8;
    }

    while (v8 < *(bufferCopy + 2));
  }

  v10 = [v7 copy];
  blockedThreadIDs = v6->_blockedThreadIDs;
  v6->_blockedThreadIDs = v10;

  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  v38 = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_13;
  }

  if (length <= 0x15)
  {
    v16 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v36 = 2048;
      v37 = 22;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAMountSnapshot struct %lu", buf, 0x16u);
    }

    *__error() = v16;
    _SASetCrashLogMessage(739, "bufferLength %lu < serialized SAMountSnapshot struct %lu", v17, v18, v19, v20, v21, v22, length);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  bufferCopy = buffer;
  if (8 * *(buffer + 2) + 22 > length)
  {
LABEL_10:
    v23 = *__error();
    v24 = _sa_logt();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = *(bufferCopy + 2);
      *buf = 134218240;
      lengthCopy2 = length;
      v36 = 2048;
      v37 = v25;
      _os_log_error_impl(&dword_1E0E2F000, v24, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAMountStatusTracker struct with %lu blockedThreads", buf, 0x16u);
    }

    *__error() = v23;
    v33 = *(bufferCopy + 2);
    _SASetCrashLogMessage(740, "bufferLength %lu < serialized SAMountStatusTracker struct with %lu blockedThreads", v26, v27, v28, v29, v30, v31, length);
    _os_crash();
    __break(1u);
LABEL_13:
    v32 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAMountSnapshot version" userInfo:0];
    objc_exception_throw(v32);
  }

  v11 = *(buffer + 6);
  v12 = objc_opt_class();
  v13 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v11, dictionary, bufferDictionary, v12);
  timeWhenMeasured = self->_timeWhenMeasured;
  self->_timeWhenMeasured = v13;
  v15 = *MEMORY[0x1E69E9840];
}

+ (SAMountSnapshot)mountSnapshotWithoutReferencesFromPAStyleMountSnapshot:(uint64_t)snapshot
{
  objc_opt_self();
  v3 = objc_alloc_init(SAMountSnapshot);
  v3->_timestampOfLastResponse = *(a2 + 16);
  v4 = [SATimestamp timestampWithMachAbsTime:0 machAbsTimeSec:0 machContTime:*(a2 + 8) machContTimeSec:0.0 wallTime:0.0];
  timeWhenMeasured = v3->_timeWhenMeasured;
  v3->_timeWhenMeasured = v4;

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (*(a2 + 24))
  {
    v7 = 0;
    do
    {
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a2 + 28 + 8 * v7)];
      [v6 addObject:v8];

      ++v7;
    }

    while (v7 < *(a2 + 24));
  }

  v9 = [v6 copy];
  blockedThreadIDs = v3->_blockedThreadIDs;
  v3->_blockedThreadIDs = v9;

  return v3;
}

@end