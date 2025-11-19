@interface SAMountStatus
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4;
- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5;
- (void)addSelfToSerializationDictionary:(id)a3;
- (void)enumerateSnapshotsBetweenStartTime:(void *)a3 endTime:(uint64_t)a4 block:;
- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6;
- (void)populateReferencesUsingPAStyleSerializedMountStatus:(void *)a3 andDeserializationDictionary:(void *)a4 andDataBufferDictionary:;
@end

@implementation SAMountStatus

- (void)enumerateSnapshotsBetweenStartTime:(void *)a3 endTime:(uint64_t)a4 block:
{
  v25 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = *(a1 + 8);
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
          if (a3)
          {
            if (v13)
            {
              v15 = *(v13 + 16);
              [a3 machAbsTimeSeconds];
              if (v15 > v16)
              {
                break;
              }
            }
          }

          v19 = 0;
          (*(a4 + 16))(a4, v13, &v19);
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

- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5
{
  v42 = *MEMORY[0x1E69E9840];
  if ([(SAMountStatus *)self sizeInBytesForSerializedVersion]!= a4)
  {
    v12 = *__error();
    v13 = _sa_logt();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [(SAMountStatus *)self debugDescription];
      *buf = 136315650;
      v37 = [v14 UTF8String];
      v38 = 2048;
      v39 = [(SAMountStatus *)self sizeInBytesForSerializedVersion];
      v40 = 2048;
      v41 = a4;
      _os_log_error_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v12;
    v15 = [(SAMountStatus *)self debugDescription];
    v16 = [v15 UTF8String];
    [(SAMountStatus *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(580, "%s: size %lu != buffer length %lu", v17, v18, v19, v20, v21, v22, v16);

    _os_crash();
    __break(1u);
LABEL_7:
    v23 = *__error();
    v24 = _sa_logt();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [(SAMountStatus *)self debugDescription];
      v26 = [v25 UTF8String];
      v27 = [(NSMutableArray *)self->_snapshots count];
      *buf = 136315394;
      v37 = v26;
      v38 = 2048;
      v39 = v27;
      _os_log_error_impl(&dword_1E0E2F000, v24, OS_LOG_TYPE_ERROR, "%s: %lu snapshot", buf, 0x16u);
    }

    *__error() = v23;
    v28 = [(SAMountStatus *)self debugDescription];
    v29 = [v28 UTF8String];
    [(NSMutableArray *)self->_snapshots count];
    _SASetCrashLogMessage(588, "%s: %lu snapshot", v30, v31, v32, v33, v34, v35, v29);

    _os_crash();
    __break(1u);
  }

  *&a3->var0 = 257;
  *(&a3->var2 + 1) = SASerializableIndexForPointerFromSerializationDictionary(self->_path, a5);
  *(&a3->var3 + 4) = SASerializableIndexForPointerFromSerializationDictionary(self->_type, a5);
  if ([(NSMutableArray *)self->_snapshots count]>= 0xFFFF)
  {
    goto LABEL_7;
  }

  v9 = [(NSMutableArray *)self->_snapshots count];
  a3->var2 = v9;
  SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(&a3->var4 + 4, v9, self->_snapshots, a5);
  v10 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(a3, self, v5);

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

          [*(*(&v13 + 1) + 8 * v11++) addSelfToSerializationDictionary:{a3, v13}];
        }

        while (v9 != v11);
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    [(NSString *)self->_path addSelfToSerializationDictionary:a3];
    [(NSString *)self->_type addSelfToSerializationDictionary:a3];
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4
{
  v30 = *MEMORY[0x1E69E9840];
  if (*a3 >= 2u)
  {
    goto LABEL_13;
  }

  if (a4 <= 0x13)
  {
    v8 = *__error();
    v5 = _sa_logt();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v27 = a4;
      v28 = 2048;
      v29 = 20;
      _os_log_error_impl(&dword_1E0E2F000, v5, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAMountStatus struct %lu", buf, 0x16u);
    }

    *__error() = v8;
    _SASetCrashLogMessage(616, "bufferLength %lu < serialized SAMountStatus struct %lu", v9, v10, v11, v12, v13, v14, a4);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  v5 = a3;
  if (8 * *(a3 + 1) + 20 > a4)
  {
LABEL_10:
    v15 = *__error();
    v16 = _sa_logt();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(v5 + 2);
      *buf = 134218240;
      v27 = a4;
      v28 = 1024;
      LODWORD(v29) = v17;
      _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAMountStatus struct with %u snapshots", buf, 0x12u);
    }

    *__error() = v15;
    v25 = *(v5 + 2);
    _SASetCrashLogMessage(617, "bufferLength %lu < serialized SAMountStatus struct with %u snapshots", v18, v19, v20, v21, v22, v23, a4);
    _os_crash();
    __break(1u);
LABEL_13:
    v24 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAMountStatus version" userInfo:0];
    objc_exception_throw(v24);
  }

  v6 = *MEMORY[0x1E69E9840];

  return objc_alloc_init(SAMountStatus);
}

- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6
{
  v59 = *MEMORY[0x1E69E9840];
  if (*a3 >= 2u)
  {
    goto LABEL_17;
  }

  if (a4 <= 0x13)
  {
    v24 = *__error();
    v7 = _sa_logt();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v56 = a4;
      v57 = 2048;
      v58 = 20;
      _os_log_error_impl(&dword_1E0E2F000, v7, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAMountStatus struct %lu", buf, 0x16u);
    }

    *__error() = v24;
    _SASetCrashLogMessage(629, "bufferLength %lu < serialized SAMountStatus struct %lu", v25, v26, v27, v28, v29, v30, a4);
    _os_crash();
    __break(1u);
    goto LABEL_11;
  }

  v7 = a3;
  if (8 * *(a3 + 1) + 20 > a4)
  {
LABEL_11:
    v31 = *__error();
    self = _sa_logt();
    if (os_log_type_enabled(&self->super, OS_LOG_TYPE_ERROR))
    {
      v32 = *(v7 + 2);
      *buf = 134218240;
      v56 = a4;
      v57 = 1024;
      LODWORD(v58) = v32;
      _os_log_error_impl(&dword_1E0E2F000, &self->super, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAMountStatus struct with %u snapshots", buf, 0x12u);
    }

    *__error() = v31;
    v53 = *(v7 + 2);
    _SASetCrashLogMessage(630, "bufferLength %lu < serialized SAMountStatus struct with %u snapshots", v33, v34, v35, v36, v37, v38, a4);
    _os_crash();
    __break(1u);
    goto LABEL_14;
  }

  v11 = *(a3 + 4);
  v12 = objc_opt_class();
  v13 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v11, a5, a6, v12);
  path = self->_path;
  self->_path = v13;

  v15 = *(v7 + 12);
  v16 = objc_opt_class();
  v17 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v15, a5, a6, v16);
  type = self->_type;
  self->_type = v17;

  v19 = *(v7 + 2);
  if (v19 == 0xFFFF)
  {
LABEL_14:
    v39 = *__error();
    v40 = _sa_logt();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = [(SAMountStatus *)self debugDescription];
      v42 = [v41 UTF8String];
      v43 = *(v7 + 2);
      *buf = 136315394;
      v56 = v42;
      v57 = 1024;
      LODWORD(v58) = v43;
      _os_log_error_impl(&dword_1E0E2F000, v40, OS_LOG_TYPE_ERROR, "%s: %u snapshots", buf, 0x12u);
    }

    *__error() = v39;
    v44 = [(SAMountStatus *)self debugDescription];
    v45 = [v44 UTF8String];
    v54 = *(v7 + 2);
    _SASetCrashLogMessage(635, "%s: %u snapshots", v46, v47, v48, v49, v50, v51, v45);

    _os_crash();
    __break(1u);
LABEL_17:
    v52 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAMountStatus version" userInfo:0];
    objc_exception_throw(v52);
  }

  v20 = objc_opt_class();
  v21 = SASerializableNewMutableArrayFromIndexList(v7 + 20, v19, a5, a6, v20);
  snapshots = self->_snapshots;
  self->_snapshots = v21;
  v23 = *MEMORY[0x1E69E9840];
}

- (void)populateReferencesUsingPAStyleSerializedMountStatus:(void *)a3 andDeserializationDictionary:(void *)a4 andDataBufferDictionary:
{
  v36 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v8 = *(a2 + 8);
    v9 = objc_opt_class();
    v10 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v8, a3, a4, v9);
    v11 = a1[2];
    a1[2] = v10;

    v12 = *(a2 + 16);
    v13 = objc_opt_class();
    v14 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v12, a3, a4, v13);
    v15 = a1[3];
    a1[3] = v14;

    v16 = *(a2 + 24);
    v17 = objc_opt_class();
    v18 = SASerializableNewMutableArrayFromIndexList(a2 + 28, v16, a3, a4, v17);
    v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a2 + 24)];
    v20 = a1[1];
    a1[1] = v19;

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
          v28 = a1[1];
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