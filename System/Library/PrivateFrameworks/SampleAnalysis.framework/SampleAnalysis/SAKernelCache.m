@interface SAKernelCache
+ (id)kernelCacheWithUUID:(id)a3 loadAddress:(unint64_t)a4;
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4;
+ (void)_doKernelCachesWork:(uint64_t)a1;
- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5;
- (BOOL)matchesUUID:(unsigned __int8)a3[16] loadAddress:(unint64_t)a4;
- (NSString)debugDescription;
- (unint64_t)endAddress;
- (unint64_t)startAddress;
- (void)addSelfToSerializationDictionary:(id)a3;
- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6;
- (void)writeJSONDictionaryEntriesToStream:(id)a3;
@end

@implementation SAKernelCache

+ (void)_doKernelCachesWork:(uint64_t)a1
{
  objc_opt_self();
  if (qword_1EDD03218 != -1)
  {
    dispatch_once(&qword_1EDD03218, &__block_literal_global_424);
  }

  obj = qword_1EDD03210;
  objc_sync_enter(obj);
  (*(a2 + 16))(a2, qword_1EDD03210);
  objc_sync_exit(obj);
}

void __37__SAKernelCache__doKernelCachesWork___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
  v1 = qword_1EDD03210;
  qword_1EDD03210 = v0;
}

+ (id)kernelCacheWithUUID:(id)a3 loadAddress:(unint64_t)a4
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__SAKernelCache_kernelCacheWithUUID_loadAddress___block_invoke;
  v6[3] = &unk_1E86F68D8;
  v6[5] = &v7;
  v6[6] = a4;
  v6[4] = a3;
  [(SAKernelCache *)a1 _doKernelCachesWork:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __49__SAKernelCache_kernelCacheWithUUID_loadAddress___block_invoke(void *a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = [a2 objectForKeyedSubscript:a1[4]];
  if (!v3)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    [a2 setObject:v3 forKeyedSubscript:a1[4]];
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v47;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v47 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v46 + 1) + 8 * i);
        if ([v9 loadAddress] == a1[6])
        {
          objc_storeStrong((*(a1[5] + 8) + 40), v9);
          v18 = v4;
          goto LABEL_30;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = [SAKernelCache alloc];
  if (v10)
  {
    v11 = a1[4];
    v12 = a1[6];
    v50.receiver = v10;
    v50.super_class = SAKernelCache;
    v13 = objc_msgSendSuper2(&v50, sel_init);
    v14 = v13;
    if (v13)
    {
      objc_storeStrong(v13 + 1, v11);
      v14[3] = v12;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a1[5] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  v17 = [v4 firstObject];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 binaryLoadInfos];
    if ([v19 count])
    {
      v38 = v4;
      v40 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v19, "count")}];
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v37 = v19;
      obj = v19;
      v20 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v43;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v43 != v22)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v42 + 1) + 8 * j);
            v25 = [v24 loadAddress];
            v26 = v18;
            v27 = v25 - [v18 loadAddress];
            v28 = [*(*(a1[5] + 8) + 40) loadAddress];
            v29 = [v24 segment];

            if (v29)
            {
              v30 = [v24 segment];
              v31 = [v24 isInKernelAddressSpace];
              v32 = [v24 exclave];
              [SABinaryLoadInfo binaryLoadInfoWithSegment:v30 loadAddress:v28 + v27 isInKernelAddressSpace:v31 exclave:v32];
            }

            else
            {
              v30 = [v24 binary];
              v33 = [v24 isInKernelAddressSpace];
              v32 = [v24 exclave];
              [SABinaryLoadInfo binaryLoadInfoWithBinary:v30 loadAddress:v28 + v27 isInKernelAddressSpace:v33 exclave:v32];
            }
            v34 = ;

            [v40 addObject:v34];
            v18 = v26;
          }

          v21 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
        }

        while (v21);
      }

      v35 = [v40 copy];
      [*(*(a1[5] + 8) + 40) setBinaryLoadInfos:v35];

      v19 = v37;
      v4 = v38;
    }
  }

  [v4 addObject:*(*(a1[5] + 8) + 40)];
LABEL_30:

  v36 = *MEMORY[0x1E69E9840];
}

- (BOOL)matchesUUID:(unsigned __int8)a3[16] loadAddress:(unint64_t)a4
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_loadAddress == a4)
  {
    *uu1 = 0;
    v8 = 0;
    [(NSUUID *)self->_uuid getUUIDBytes:uu1];
    result = uuid_compare(uu1, a3) == 0;
  }

  else
  {
    result = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)startAddress
{
  v2 = [(NSArray *)self->_binaryLoadInfos firstObject];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 loadAddress];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (unint64_t)endAddress
{
  v2 = [(NSArray *)self->_binaryLoadInfos lastObject];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 length];
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0x10000000;
    }

    v6 = v5 + [v3 loadAddress];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)debugDescription
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"0x%llx Kernel cache <%@> (%lu binaries)", self->_loadAddress, self->_uuid, -[NSArray count](self->_binaryLoadInfos, "count")];

  return v2;
}

- (void)writeJSONDictionaryEntriesToStream:(id)a3
{
  v5 = [(NSUUID *)self->_uuid UUIDString];
  SAJSONWriteDictionaryFirstEntry(a3, @"uuid", v5);

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_loadAddress];
  SAJSONWriteDictionaryEntry(a3, @"loadAddress", v6);

  if (self->_binaryLoadInfos)
  {
    [a3 appendString:{@", binaryLoadInfos:"}];
    binaryLoadInfos = self->_binaryLoadInfos;

    SAJSONWriteArray(a3, binaryLoadInfos);
  }
}

- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  *&a3->var0 = 257;
  *(&a3->var3 + 1) = self->_loadAddress;
  [(NSUUID *)self->_uuid getUUIDBytes:a3->var2];
  if ([(SAKernelCache *)self sizeInBytesForSerializedVersion]== a4)
  {
    if ([(NSArray *)self->_binaryLoadInfos count]< 0xFFFF)
    {
      v10 = [(NSArray *)self->_binaryLoadInfos count];
      a3->var3 = v10;
      SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(&a3->var4 + 4, v10, self->_binaryLoadInfos, a5);
      goto LABEL_8;
    }

    a4 = *__error();
    v16 = _sa_logt();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      a5 = [(SAKernelCache *)self debugDescription];
      *buf = 136315394;
      v32 = [a5 UTF8String];
      v33 = 1024;
      LODWORD(v34) = 0xFFFF;
      _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "%s: more than %d binaries", buf, 0x12u);
    }

    *__error() = a4;
    v17 = [(SAKernelCache *)self debugDescription];
    v18 = [v17 UTF8String];
    _SASetCrashLogMessage(5434, "%s: more than %d binaries", v19, v20, v21, v22, v23, v24, v18);

    v11 = _os_crash();
    __break(1u);
LABEL_12:
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v32 = a4;
      v33 = 2048;
      v34 = 28;
      _os_log_error_impl(&dword_1E0E2F000, a5, OS_LOG_TYPE_ERROR, "bufferLength %lu != serialized SAKernelCache struct %lu", buf, 0x16u);
    }

    *__error() = v5;
    _SASetCrashLogMessage(5440, "bufferLength %lu != serialized SAKernelCache struct %lu", v25, v26, v27, v28, v29, v30, a4);
    _os_crash();
    __break(1u);
  }

  v5 = *__error();
  v11 = _sa_logt();
  a5 = v11;
  if (a4 != 28)
  {
    goto LABEL_12;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(SAKernelCache *)self debugDescription];
    v13 = [(NSArray *)self->_binaryLoadInfos count];
    *buf = 138412546;
    v32 = v12;
    v33 = 2048;
    v34 = v13;
    _os_log_impl(&dword_1E0E2F000, a5, OS_LOG_TYPE_DEFAULT, "WARNING: SAKernelCache %@ got its %lu binaries after starting serialization!", buf, 0x16u);
  }

  *__error() = v5;
  a3->var3 = 0;
LABEL_8:
  v14 = *MEMORY[0x1E69E9840];
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
    v7 = self->_binaryLoadInfos;
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

          [*(*(&v13 + 1) + 8 * v11++) addSelfToSerializationDictionary:{a3, v13}];
        }

        while (v9 != v11);
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4
{
  *&v31[13] = *MEMORY[0x1E69E9840];
  if (*a3 >= 2u)
  {
    goto LABEL_11;
  }

  if (a4 <= 0x1B)
  {
    v10 = *__error();
    v5 = _sa_logt();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v29 = a4;
      v30 = 2048;
      *v31 = 28;
      _os_log_error_impl(&dword_1E0E2F000, v5, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAKernelCache struct %lu", buf, 0x16u);
    }

    *__error() = v10;
    _SASetCrashLogMessage(5463, "bufferLength %lu < serialized SAKernelCache struct %lu", v11, v12, v13, v14, v15, v16, a4);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  v5 = a3;
  if (8 * *(a3 + 9) + 28 > a4)
  {
LABEL_8:
    v17 = *__error();
    v18 = _sa_logt();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = *(v5 + 18);
      *buf = 134218496;
      v29 = a4;
      v30 = 1024;
      *v31 = v19;
      v31[2] = 2048;
      *&v31[3] = 8 * v19 + 28;
      _os_log_error_impl(&dword_1E0E2F000, v18, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAKernelCache struct plus %u load infos %lu", buf, 0x1Cu);
    }

    *__error() = v17;
    v27 = *(v5 + 18);
    _SASetCrashLogMessage(5464, "bufferLength %lu < serialized SAKernelCache struct plus %u load infos %lu", v20, v21, v22, v23, v24, v25, a4);
    _os_crash();
    __break(1u);
LABEL_11:
    v26 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAKernelCache version" userInfo:0];
    objc_exception_throw(v26);
  }

  v6 = uuidForBytes(a3 + 2);
  v7 = [SAKernelCache kernelCacheWithUUID:v6 loadAddress:*(v5 + 20)];

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6
{
  *&v39[13] = *MEMORY[0x1E69E9840];
  if (*a3 >= 2u)
  {
    goto LABEL_16;
  }

  if (a4 <= 0x1B)
  {
    v17 = *__error();
    v7 = _sa_logt();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v37 = a4;
      v38 = 2048;
      *v39 = 28;
      _os_log_error_impl(&dword_1E0E2F000, v7, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAKernelCache struct %lu", buf, 0x16u);
    }

    *__error() = v17;
    _SASetCrashLogMessage(5478, "bufferLength %lu < serialized SAKernelCache struct %lu", v18, v19, v20, v21, v22, v23, a4);
    _os_crash();
    __break(1u);
    goto LABEL_13;
  }

  v7 = a3;
  if (8 * *(a3 + 9) + 28 > a4)
  {
LABEL_13:
    v24 = *__error();
    v25 = _sa_logt();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = *(v7 + 18);
      *buf = 134218496;
      v37 = a4;
      v38 = 1024;
      *v39 = v26;
      v39[2] = 2048;
      *&v39[3] = 8 * v26 + 28;
      _os_log_error_impl(&dword_1E0E2F000, v25, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAKernelCache struct plus %u load infos %lu", buf, 0x1Cu);
    }

    *__error() = v24;
    v34 = *(v7 + 18);
    _SASetCrashLogMessage(5479, "bufferLength %lu < serialized SAKernelCache struct plus %u load infos %lu", v27, v28, v29, v30, v31, v32, a4);
    _os_crash();
    __break(1u);
LABEL_16:
    v33 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAInstruction version" userInfo:0];
    objc_exception_throw(v33);
  }

  if ([(NSArray *)self->_binaryLoadInfos count]|| (v12 = *(v7 + 18), !*(v7 + 18)))
  {
    v11 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v13 = objc_opt_class();
    v35 = SASerializableNewMutableArrayFromIndexList(v7 + 28, v12, a5, a6, v13);
    v14 = [v35 copy];
    binaryLoadInfos = self->_binaryLoadInfos;
    self->_binaryLoadInfos = v14;

    v16 = *MEMORY[0x1E69E9840];
  }
}

@end