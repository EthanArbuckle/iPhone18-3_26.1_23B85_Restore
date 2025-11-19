@interface SADispatchQueue
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4;
+ (void)dispatchQueueWithId:(uint64_t)a1;
- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5;
- (NSString)debugDescription;
- (unint64_t)sizeInBytesForSerializedVersion;
- (void)addSelfToSerializationDictionary:(id)a3;
- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6;
@end

@implementation SADispatchQueue

+ (void)dispatchQueueWithId:(uint64_t)a1
{
  v3 = objc_alloc(objc_opt_self());
  v4 = [(SARecipe *)v3 initWithId:a2];

  return v4;
}

- (NSString)debugDescription
{
  dispatchQueueLabel = self->_dispatchQueueLabel;
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (dispatchQueueLabel)
  {
    v5 = [v4 initWithFormat:@"DispatchQueue %@(%llu)", self->_dispatchQueueLabel, -[SARecipe identifier](self, "identifier")];
  }

  else
  {
    v5 = [v4 initWithFormat:@"DispatchQueue %llu", -[SARecipe identifier](self, "identifier"), v7];
  }

  return v5;
}

- (unint64_t)sizeInBytesForSerializedVersion
{
  v2 = [(SARecipe *)self states];
  v3 = 8 * [v2 count];

  return v3 + 24;
}

- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5
{
  v8 = self;
  v60 = *MEMORY[0x1E69E9840];
  if ([(SADispatchQueue *)self sizeInBytesForSerializedVersion]!= a4)
  {
    v18 = *__error();
    v19 = _sa_logt();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [v8 debugDescription];
      *buf = 136315650;
      v57 = [v20 UTF8String];
      v58 = 2048;
      *v59 = [v8 sizeInBytesForSerializedVersion];
      *&v59[8] = 2048;
      *&v59[10] = a4;
      _os_log_error_impl(&dword_1E0E2F000, v19, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v18;
    v21 = [v8 debugDescription];
    v22 = [v21 UTF8String];
    [v8 sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(5457, "%s: size %lu != buffer length %lu", v23, v24, v25, v26, v27, v28, v22);

    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  *&a3->var0 = 513;
  *(&a3->var1 + 1) = [v8 identifier];
  BYTE6(a3->var2) = BYTE6(a3->var2) & 0xFE | *(v8 + 24);
  v9 = [v8 states];
  v10 = [v9 count];

  if (v10 >= 0xFFFFFFFF)
  {
LABEL_8:
    v15 = *__error();
    v29 = _sa_logt();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [v8 debugDescription];
      v31 = [v30 UTF8String];
      v32 = [v8 states];
      v33 = [v32 count];
      *buf = 136315394;
      v57 = v31;
      v58 = 2048;
      *v59 = v33;
      _os_log_error_impl(&dword_1E0E2F000, v29, OS_LOG_TYPE_ERROR, "%s: %lu dispatchQueueStates", buf, 0x16u);
    }

    *__error() = v15;
    a3 = [v8 debugDescription];
    v34 = [($4D1F5B0DD0F603BB13AEFAC7E2434278 *)a3 UTF8String];
    v8 = [v8 states];
    [v8 count];
    _SASetCrashLogMessage(5467, "%s: %lu dispatchQueueStates", v35, v36, v37, v38, v39, v40, v34);

    _os_crash();
    __break(1u);
LABEL_11:
    v41 = *__error();
    v42 = _sa_logt();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = [v8 debugDescription];
      v44 = [v43 UTF8String];
      v45 = *(&a3->var2 + 2);
      v46 = [v8 sizeInBytesForSerializedVersion];
      *buf = 136315906;
      v57 = v44;
      v58 = 1024;
      *v59 = v45;
      *&v59[4] = 2048;
      *&v59[6] = v15;
      *&v59[14] = 2048;
      *&v59[16] = v46;
      _os_log_error_impl(&dword_1E0E2F000, v42, OS_LOG_TYPE_ERROR, "%s: after serializing (with %u dispatchQueueStates), ended with length %ld, should be %lu", buf, 0x26u);
    }

    *__error() = v41;
    v47 = [v8 debugDescription];
    v48 = [v47 UTF8String];
    v49 = *(&a3->var2 + 2);
    [v8 sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(5474, "%s: after serializing (with %u dispatchQueueStates), ended with length %ld, should be %lu", v50, v51, v52, v53, v54, v55, v48);

    _os_crash();
    __break(1u);
  }

  v11 = [v8 states];
  *(&a3->var2 + 2) = [v11 count];

  v12 = *(&a3->var2 + 2);
  v13 = [v8 states];
  SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(&a3->var3, v12, v13, a5);

  v14 = *(&a3->var2 + 2);
  v15 = 8 * v14 + 24;
  if (v15 != [v8 sizeInBytesForSerializedVersion])
  {
    goto LABEL_11;
  }

  *(&a3->var3 + v14) = SASerializableIndexForPointerFromSerializationDictionary(*(v8 + 32), a5);
  v16 = *MEMORY[0x1E69E9840];
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
    v7 = [(SARecipe *)self states];
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

          [*(*(&v13 + 1) + 8 * v11++) addSelfToSerializationDictionary:a3];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    [(NSString *)self->_dispatchQueueLabel addSelfToSerializationDictionary:a3];
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4
{
  v30 = *MEMORY[0x1E69E9840];
  if (*a3 >= 3u)
  {
    goto LABEL_11;
  }

  if (a4 <= 0xF)
  {
    v8 = *__error();
    v5 = _sa_logt();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v27 = a4;
      v28 = 2048;
      v29 = 16;
      _os_log_error_impl(&dword_1E0E2F000, v5, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SADispatchQueue struct %lu", buf, 0x16u);
    }

    *__error() = v8;
    _SASetCrashLogMessage(5497, "bufferLength %lu < serialized SADispatchQueue struct %lu", v9, v10, v11, v12, v13, v14, a4);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  v5 = a3;
  if (8 * *(a3 + 10) + 16 > a4)
  {
LABEL_8:
    v15 = *__error();
    v16 = _sa_logt();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(v5 + 10);
      *buf = 134218240;
      v27 = a4;
      v28 = 1024;
      LODWORD(v29) = v17;
      _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SADispatchQueue struct with %u dispatchQueueStates", buf, 0x12u);
    }

    *__error() = v15;
    v25 = *(v5 + 10);
    _SASetCrashLogMessage(5498, "bufferLength %lu < serialized SADispatchQueue struct with %u dispatchQueueStates", v18, v19, v20, v21, v22, v23, a4);
    _os_crash();
    __break(1u);
LABEL_11:
    v24 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SADispatchQueue version" userInfo:0];
    objc_exception_throw(v24);
  }

  result = [SADispatchQueue dispatchQueueWithId:?];
  *(result + 24) = *(v5 + 14) & 1;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6
{
  *&v55[13] = *MEMORY[0x1E69E9840];
  if (*a3 >= 4u)
  {
    goto LABEL_21;
  }

  if (a4 <= 0xF)
  {
    v24 = *__error();
    v9 = _sa_logt();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v53 = a4;
      v54 = 2048;
      *v55 = 16;
      _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SADispatchQueue struct %lu", buf, 0x16u);
    }

    *__error() = v24;
    _SASetCrashLogMessage(5511, "bufferLength %lu < serialized SADispatchQueue struct %lu", v25, v26, v27, v28, v29, v30, a4);
    _os_crash();
    __break(1u);
    goto LABEL_15;
  }

  v9 = a3;
  v7 = *(a3 + 10);
  v10 = 8 * v7;
  v6 = 8 * v7 + 16;
  if (v6 > a4)
  {
LABEL_15:
    v31 = *__error();
    v32 = _sa_logt();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = *(v9 + 10);
      *buf = 134218496;
      v53 = a4;
      v54 = 1024;
      *v55 = v33;
      v55[2] = 2048;
      *&v55[3] = v6;
      _os_log_error_impl(&dword_1E0E2F000, v32, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SADispatchQueue struct v1 with %u dispatchQueueStates (%llu)", buf, 0x1Cu);
    }

    *__error() = v31;
    v50 = *(v9 + 10);
    _SASetCrashLogMessage(5513, "bufferLength %lu < serialized SADispatchQueue struct v1 with %u dispatchQueueStates (%llu)", v34, v35, v36, v37, v38, v39, a4);
    _os_crash();
    __break(1u);
LABEL_18:
    v40 = *__error();
    v41 = _sa_logt();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = *(v9 + 10);
      *buf = 134218496;
      v53 = a4;
      v54 = 1024;
      *v55 = v42;
      v55[2] = 2048;
      *&v55[3] = v7;
      _os_log_error_impl(&dword_1E0E2F000, v41, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SADispatchQueue struct v2 with %u dispatchQueueStates (%llu)", buf, 0x1Cu);
    }

    *__error() = v40;
    v51 = *(v9 + 10);
    _SASetCrashLogMessage(5520, "bufferLength %lu < serialized SADispatchQueue struct v2 with %u dispatchQueueStates (%llu)", v43, v44, v45, v46, v47, v48, a4);
    _os_crash();
    __break(1u);
LABEL_21:
    v49 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SADispatchQueue version" userInfo:0];
    objc_exception_throw(v49);
  }

  v14 = a3 + 16;
  v15 = objc_opt_class();
  v17 = SASerializableNewMutableArrayFromIndexList(v9 + 16, v7, a5, a6, v15);
  if (self)
  {
    objc_setProperty_atomic(self, v16, v17, 8);
  }

  if (*(v9 + 1) < 2u)
  {
    v23 = *MEMORY[0x1E69E9840];
    return;
  }

  v7 = v10 + 24;
  if (v10 + 24 > a4)
  {
    goto LABEL_18;
  }

  v18 = *&v14[8 * *(v9 + 10)];
  v19 = objc_opt_class();
  v20 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v18, a5, a6, v19, 0);
  dispatchQueueLabel = self->_dispatchQueueLabel;
  self->_dispatchQueueLabel = v20;
  v22 = *MEMORY[0x1E69E9840];
}

@end