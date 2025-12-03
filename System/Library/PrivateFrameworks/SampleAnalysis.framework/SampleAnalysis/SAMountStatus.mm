@interface SAMountStatus
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)enumerateSnapshotsBetweenStartTime:(void *)time endTime:(uint64_t)endTime block:;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
- (void)populateReferencesUsingPAStyleSerializedMountStatus:(void *)status andDeserializationDictionary:(void *)dictionary andDataBufferDictionary:;
@end

@implementation SAMountStatus

- (void)enumerateSnapshotsBetweenStartTime:(void *)time endTime:(uint64_t)endTime block:
{
  v25 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = *(self + 8);
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v10 = v8;
      v11 = *v21;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v20 + 1) + 8 * v12);
        if (!a2 || (!v13 ? (Property = 0) : (Property = objc_getProperty(*(*(&v20 + 1) + 8 * v12), v9, 8, 1)), ([Property lt:a2] & 1) == 0))
        {
          if (time)
          {
            if (v13)
            {
              v15 = *(v13 + 16);
              [time machAbsTimeSeconds];
              if (v15 > v16)
              {
                break;
              }
            }
          }

          v19 = 0;
          (*(endTime + 16))(endTime, v13, &v19);
          if (v19)
          {
            break;
          }
        }

        if (v10 == ++v12)
        {
          v17 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
          v10 = v17;
          if (v17)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v42 = *MEMORY[0x1E69E9840];
  if ([(SAMountStatus *)self sizeInBytesForSerializedVersion]!= length)
  {
    v12 = *__error();
    v13 = _sa_logt();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [(SAMountStatus *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v14 UTF8String];
      v38 = 2048;
      sizeInBytesForSerializedVersion = [(SAMountStatus *)self sizeInBytesForSerializedVersion];
      v40 = 2048;
      lengthCopy = length;
      _os_log_error_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v12;
    v15 = [(SAMountStatus *)self debugDescription];
    uTF8String2 = [v15 UTF8String];
    [(SAMountStatus *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(580, "%s: size %lu != buffer length %lu", v17, v18, v19, v20, v21, v22, uTF8String2);

    _os_crash();
    __break(1u);
LABEL_7:
    v23 = *__error();
    v24 = _sa_logt();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [(SAMountStatus *)self debugDescription];
      uTF8String3 = [v25 UTF8String];
      v27 = [(NSMutableArray *)self->_snapshots count];
      *buf = 136315394;
      uTF8String = uTF8String3;
      v38 = 2048;
      sizeInBytesForSerializedVersion = v27;
      _os_log_error_impl(&dword_1E0E2F000, v24, OS_LOG_TYPE_ERROR, "%s: %lu snapshot", buf, 0x16u);
    }

    *__error() = v23;
    v28 = [(SAMountStatus *)self debugDescription];
    uTF8String4 = [v28 UTF8String];
    [(NSMutableArray *)self->_snapshots count];
    _SASetCrashLogMessage(588, "%s: %lu snapshot", v30, v31, v32, v33, v34, v35, uTF8String4);

    _os_crash();
    __break(1u);
  }

  *&buffer->var0 = 257;
  *(&buffer->var2 + 1) = SASerializableIndexForPointerFromSerializationDictionary(self->_path, dictionary);
  *(&buffer->var3 + 4) = SASerializableIndexForPointerFromSerializationDictionary(self->_type, dictionary);
  if ([(NSMutableArray *)self->_snapshots count]>= 0xFFFF)
  {
    goto LABEL_7;
  }

  v9 = [(NSMutableArray *)self->_snapshots count];
  buffer->var2 = v9;
  SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(&buffer->var4 + 4, v9, self->_snapshots, dictionary);
  v10 = *MEMORY[0x1E69E9840];
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
    v7 = self->_snapshots;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    [(NSString *)self->_path addSelfToSerializationDictionary:dictionary];
    [(NSString *)self->_type addSelfToSerializationDictionary:dictionary];
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  v30 = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_13;
  }

  if (length <= 0x13)
  {
    v8 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v28 = 2048;
      v29 = 20;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAMountStatus struct %lu", buf, 0x16u);
    }

    *__error() = v8;
    _SASetCrashLogMessage(616, "bufferLength %lu < serialized SAMountStatus struct %lu", v9, v10, v11, v12, v13, v14, length);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  bufferCopy = buffer;
  if (8 * *(buffer + 1) + 20 > length)
  {
LABEL_10:
    v15 = *__error();
    v16 = _sa_logt();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(bufferCopy + 2);
      *buf = 134218240;
      lengthCopy2 = length;
      v28 = 1024;
      LODWORD(v29) = v17;
      _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAMountStatus struct with %u snapshots", buf, 0x12u);
    }

    *__error() = v15;
    v25 = *(bufferCopy + 2);
    _SASetCrashLogMessage(617, "bufferLength %lu < serialized SAMountStatus struct with %u snapshots", v18, v19, v20, v21, v22, v23, length);
    _os_crash();
    __break(1u);
LABEL_13:
    v24 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAMountStatus version" userInfo:0];
    objc_exception_throw(v24);
  }

  v6 = *MEMORY[0x1E69E9840];

  return objc_alloc_init(SAMountStatus);
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  v59 = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_17;
  }

  if (length <= 0x13)
  {
    v24 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v57 = 2048;
      v58 = 20;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAMountStatus struct %lu", buf, 0x16u);
    }

    *__error() = v24;
    _SASetCrashLogMessage(629, "bufferLength %lu < serialized SAMountStatus struct %lu", v25, v26, v27, v28, v29, v30, length);
    _os_crash();
    __break(1u);
    goto LABEL_11;
  }

  bufferCopy = buffer;
  if (8 * *(buffer + 1) + 20 > length)
  {
LABEL_11:
    v31 = *__error();
    self = _sa_logt();
    if (os_log_type_enabled(&self->super, OS_LOG_TYPE_ERROR))
    {
      v32 = *(bufferCopy + 2);
      *buf = 134218240;
      lengthCopy2 = length;
      v57 = 1024;
      LODWORD(v58) = v32;
      _os_log_error_impl(&dword_1E0E2F000, &self->super, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAMountStatus struct with %u snapshots", buf, 0x12u);
    }

    *__error() = v31;
    v53 = *(bufferCopy + 2);
    _SASetCrashLogMessage(630, "bufferLength %lu < serialized SAMountStatus struct with %u snapshots", v33, v34, v35, v36, v37, v38, length);
    _os_crash();
    __break(1u);
    goto LABEL_14;
  }

  v11 = *(buffer + 4);
  v12 = objc_opt_class();
  v13 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v11, dictionary, bufferDictionary, v12);
  path = self->_path;
  self->_path = v13;

  v15 = *(bufferCopy + 12);
  v16 = objc_opt_class();
  v17 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v15, dictionary, bufferDictionary, v16);
  type = self->_type;
  self->_type = v17;

  v19 = *(bufferCopy + 2);
  if (v19 == 0xFFFF)
  {
LABEL_14:
    v39 = *__error();
    v40 = _sa_logt();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = [(SAMountStatus *)self debugDescription];
      uTF8String = [v41 UTF8String];
      v43 = *(bufferCopy + 2);
      *buf = 136315394;
      lengthCopy2 = uTF8String;
      v57 = 1024;
      LODWORD(v58) = v43;
      _os_log_error_impl(&dword_1E0E2F000, v40, OS_LOG_TYPE_ERROR, "%s: %u snapshots", buf, 0x12u);
    }

    *__error() = v39;
    v44 = [(SAMountStatus *)self debugDescription];
    uTF8String2 = [v44 UTF8String];
    v54 = *(bufferCopy + 2);
    _SASetCrashLogMessage(635, "%s: %u snapshots", v46, v47, v48, v49, v50, v51, uTF8String2);

    _os_crash();
    __break(1u);
LABEL_17:
    v52 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAMountStatus version" userInfo:0];
    objc_exception_throw(v52);
  }

  v20 = objc_opt_class();
  v21 = SASerializableNewMutableArrayFromIndexList(bufferCopy + 20, v19, dictionary, bufferDictionary, v20);
  snapshots = self->_snapshots;
  self->_snapshots = v21;
  v23 = *MEMORY[0x1E69E9840];
}

- (void)populateReferencesUsingPAStyleSerializedMountStatus:(void *)status andDeserializationDictionary:(void *)dictionary andDataBufferDictionary:
{
  v36 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v8 = *(a2 + 8);
    v9 = objc_opt_class();
    v10 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v8, status, dictionary, v9);
    v11 = self[2];
    self[2] = v10;

    v12 = *(a2 + 16);
    v13 = objc_opt_class();
    v14 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v12, status, dictionary, v13);
    v15 = self[3];
    self[3] = v14;

    v16 = *(a2 + 24);
    v17 = objc_opt_class();
    v18 = SASerializableNewMutableArrayFromIndexList(a2 + 28, v16, status, dictionary, v17);
    v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a2 + 24)];
    v20 = self[1];
    self[1] = v19;

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v21 = v18;
    v22 = [v21 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v22)
    {
      v24 = v22;
      v25 = *v32;
      do
      {
        v26 = 0;
        do
        {
          if (*v32 != v25)
          {
            objc_enumerationMutation(v21);
          }

          Property = *(*(&v31 + 1) + 8 * v26);
          v28 = self[1];
          if (Property)
          {
            Property = objc_getProperty(Property, v23, 8, 1);
          }

          v29 = Property;
          [v28 addObject:{v29, v31}];

          ++v26;
        }

        while (v24 != v26);
        v24 = [v21 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v24);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

@end