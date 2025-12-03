@interface SAModelLoadedChange
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (NSString)debugDescription;
- (SAModelLoadedChange)initWithTimestamp:(id)timestamp endTime:(id)time userInitiated:(BOOL)initiated loadedRequesters:(id)requesters inMemory:(BOOL)memory;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
- (void)writeJSONDictionaryEntriesToStream:(id)stream;
@end

@implementation SAModelLoadedChange

- (SAModelLoadedChange)initWithTimestamp:(id)timestamp endTime:(id)time userInitiated:(BOOL)initiated loadedRequesters:(id)requesters inMemory:(BOOL)memory
{
  v18.receiver = self;
  v18.super_class = SAModelLoadedChange;
  v12 = [(SAModelLoadedChange *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_timestamp, timestamp);
    objc_storeStrong(&v13->_endTime, time);
    v13->_userInitiated = initiated;
    v14 = [requesters copy];
    loadedRequesters = v13->_loadedRequesters;
    v13->_loadedRequesters = v14;

    v13->_inMemory = memory;
    v16 = v13;
  }

  return v13;
}

- (NSString)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  loaded = [(SAModelLoadedChange *)self loaded];
  userInitiated = [(SAModelLoadedChange *)self userInitiated];
  loadedRequesters = [(SAModelLoadedChange *)self loadedRequesters];
  v7 = [loadedRequesters componentsJoinedByString:{@", "}];
  timestamp = [(SAModelLoadedChange *)self timestamp];
  v9 = [timestamp debugDescription];
  v10 = [v3 initWithFormat:@"load change (loaded:%d UI:%d) requested by %@ at %@", loaded, userInitiated, v7, v9];

  return v10;
}

- (void)writeJSONDictionaryEntriesToStream:(id)stream
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[SAModelLoadedChange loaded](self, "loaded")}];
  SAJSONWriteDictionaryFirstEntry(stream, @"loaded", v5);

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[SAModelLoadedChange userInitiated](self, "userInitiated")}];
  SAJSONWriteDictionaryEntry(stream, @"userInitiated", v6);

  timestamp = self->_timestamp;
  if (timestamp)
  {
    SAJSONWriteDictionaryEntry(stream, @"timestamp", timestamp);
  }

  if ([(NSArray *)self->_loadedRequesters count])
  {
    loadedRequesters = self->_loadedRequesters;

    SAJSONWriteDictionaryEntry(stream, @"loadedRequesters", loadedRequesters);
  }
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  lengthCopy = length;
  v57 = *MEMORY[0x1E69E9840];
  if ([(SAModelLoadedChange *)self sizeInBytesForSerializedVersion]!= length)
  {
    v14 = *__error();
    v15 = _sa_logt();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [(SAModelLoadedChange *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v16 UTF8String];
      v51 = 2048;
      sizeInBytesForSerializedVersion = [(SAModelLoadedChange *)self sizeInBytesForSerializedVersion];
      v53 = 2048;
      v54 = lengthCopy;
      _os_log_error_impl(&dword_1E0E2F000, v15, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v14;
    v17 = [(SAModelLoadedChange *)self debugDescription];
    uTF8String2 = [v17 UTF8String];
    [(SAModelLoadedChange *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(306, "%s: size %lu != buffer length %lu", v18, v19, v20, v21, v22, v23, uTF8String2);

    _os_crash();
    __break(1u);
    goto LABEL_11;
  }

  *&buffer->var0 = 257;
  *(&buffer->var1 + 1) = SASerializableIndexForPointerFromSerializationDictionary(self->_timestamp, dictionary);
  BYTE2(buffer->var2) = BYTE2(buffer->var2) & 0xFE | [(SAModelLoadedChange *)self loaded];
  if ([(SAModelLoadedChange *)self userInitiated])
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  BYTE2(buffer->var2) = BYTE2(buffer->var2) & 0xFD | v10;
  if ([(NSArray *)self->_loadedRequesters count]>= 0xFFFFFFFF)
  {
LABEL_11:
    v24 = *__error();
    v25 = _sa_logt();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [(SAModelLoadedChange *)self debugDescription];
      uTF8String2 = [v26 UTF8String];
      v27 = [(NSArray *)self->_loadedRequesters count];
      *buf = 136315394;
      uTF8String = uTF8String2;
      v51 = 2048;
      sizeInBytesForSerializedVersion = v27;
      _os_log_error_impl(&dword_1E0E2F000, v25, OS_LOG_TYPE_ERROR, "%s has %lu requesters", buf, 0x16u);
    }

    *__error() = v24;
    lengthCopy = [(SAModelLoadedChange *)self debugDescription];
    buffer = [lengthCopy UTF8String];
    [(NSArray *)self->_loadedRequesters count];
    _SASetCrashLogMessage(315, "%s has %lu requesters", v28, v29, v30, v31, v32, v33, buffer);

    _os_crash();
    __break(1u);
LABEL_14:
    v34 = *__error();
    v35 = _sa_logt();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = [(SAModelLoadedChange *)self debugDescription];
      uTF8String3 = [v36 UTF8String];
      v38 = [(NSArray *)self->_loadedRequesters count];
      v39 = [(NSArray *)self->_loadedRequesters count];
      *buf = 136315906;
      uTF8String = uTF8String3;
      v51 = 2048;
      sizeInBytesForSerializedVersion = v38;
      v53 = 2048;
      v54 = &uTF8String2[8 * v39] - buffer;
      v55 = 2048;
      v56 = lengthCopy;
      _os_log_error_impl(&dword_1E0E2F000, v35, OS_LOG_TYPE_ERROR, "%s: after serializing (with %lu loadedRequesters), ended with length %ld, should be %lu", buf, 0x2Au);
    }

    *__error() = v34;
    v40 = [(SAModelLoadedChange *)self debugDescription];
    uTF8String4 = [v40 UTF8String];
    [(NSArray *)self->_loadedRequesters count];
    v48 = &uTF8String2[8 * [(NSArray *)self->_loadedRequesters count]] - buffer;
    _SASetCrashLogMessage(320, "%s: after serializing (with %lu loadedRequesters), ended with length %ld, should be %lu", v42, v43, v44, v45, v46, v47, uTF8String4);

    _os_crash();
    __break(1u);
  }

  uTF8String2 = &buffer->var2 + 7;
  if ((8 * [(NSArray *)self->_loadedRequesters count]+ 15) != lengthCopy)
  {
    goto LABEL_14;
  }

  v11 = [(NSArray *)self->_loadedRequesters count];
  *(&buffer->var2 + 3) = v11;
  SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(&buffer->var2 + 7, v11, self->_loadedRequesters, dictionary);
  v12 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  v18 = *MEMORY[0x1E69E9840];
  classDictionaryKey = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, self, classDictionaryKey);

  if (v6)
  {
    [(SATimestamp *)self->_timestamp addSelfToSerializationDictionary:dictionary];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = self->_loadedRequesters;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v7);
          }

          [*(*(&v13 + 1) + 8 * v11++) addSelfToSerializationDictionary:{dictionary, v13}];
        }

        while (v9 != v11);
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

  if (length <= 0xE)
  {
    v8 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v28 = 2048;
      v29 = 15;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAModelLoadedChange struct %lu", buf, 0x16u);
    }

    *__error() = v8;
    _SASetCrashLogMessage(344, "bufferLength %lu < serialized SAModelLoadedChange struct %lu", v9, v10, v11, v12, v13, v14, length);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  bufferCopy = buffer;
  if (8 * *(buffer + 11) + 15 > length)
  {
LABEL_8:
    v15 = *__error();
    v16 = _sa_logt();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(bufferCopy + 11);
      *buf = 134218240;
      lengthCopy2 = length;
      v28 = 1024;
      LODWORD(v29) = v17;
      _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAModelLoadedChange struct with %u requesters", buf, 0x12u);
    }

    *__error() = v15;
    v25 = *(bufferCopy + 11);
    _SASetCrashLogMessage(345, "bufferLength %lu < serialized SAModelLoadedChange struct with %u requesters", v18, v19, v20, v21, v22, v23, length);
    _os_crash();
    __break(1u);
LABEL_11:
    v24 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAModelLoadedChange version" userInfo:0];
    objc_exception_throw(v24);
  }

  result = objc_alloc_init(SAModelLoadedChange);
  *(result + 9) = (*(bufferCopy + 10) & 2) != 0;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  v43 = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_15;
  }

  if (length <= 0xE)
  {
    v21 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v41 = 2048;
      v42 = 15;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAModelLoadedChange struct %lu", buf, 0x16u);
    }

    *__error() = v21;
    _SASetCrashLogMessage(358, "bufferLength %lu < serialized SAModelLoadedChange struct %lu", v22, v23, v24, v25, v26, v27, length);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  bufferCopy = buffer;
  if (8 * *(buffer + 11) + 15 > length)
  {
LABEL_12:
    v28 = *__error();
    v29 = _sa_logt();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = *(bufferCopy + 11);
      *buf = 134218240;
      lengthCopy2 = length;
      v41 = 1024;
      LODWORD(v42) = v30;
      _os_log_error_impl(&dword_1E0E2F000, v29, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAModelLoadedChange struct with %u requesters", buf, 0x12u);
    }

    *__error() = v28;
    v38 = *(bufferCopy + 11);
    _SASetCrashLogMessage(359, "bufferLength %lu < serialized SAModelLoadedChange struct with %u requesters", v31, v32, v33, v34, v35, v36, length);
    _os_crash();
    __break(1u);
LABEL_15:
    v37 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAModelLoadedChange version" userInfo:0];
    objc_exception_throw(v37);
  }

  v11 = *(buffer + 2);
  v12 = objc_opt_class();
  v13 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v11, dictionary, bufferDictionary, v12, 0);
  timestamp = self->_timestamp;
  self->_timestamp = v13;

  if (*(bufferCopy + 10))
  {
    v15 = *(bufferCopy + 11);
    v16 = objc_opt_class();
    v17 = SASerializableNewMutableArrayFromIndexList(bufferCopy + 15, v15, dictionary, bufferDictionary, v16);
    loadedRequesters = self->_loadedRequesters;
    self->_loadedRequesters = v17;
    v19 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v20 = *MEMORY[0x1E69E9840];
  }
}

@end