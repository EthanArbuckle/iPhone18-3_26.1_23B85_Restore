@interface SAExclave
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4;
- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5;
- (NSString)debugDescription;
- (uint64_t)fixupFrameInstructionsWithNewInstructions:(_BYTE *)a3 foundNewBinaryInfo:;
- (unint64_t)sizeInBytesForSerializedVersion;
- (void)addSelfToSerializationDictionary:(id)a3;
- (void)enumerateFrames:(uint64_t)a1;
- (void)fillInName:(id)self textLayout:(uint64_t)a4 dataGatheringOptions:;
- (void)initWithIdentifier:(void *)a1;
- (void)initWithKCData:(const char *)a3 name:(void *)a4 textLayout:(uint64_t)a5 dataGatheringOptions:;
- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6;
@end

@implementation SAExclave

- (void)initWithIdentifier:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v8.receiver = a1;
  v8.super_class = SAExclave;
  v3 = objc_msgSendSuper2(&v8, sel_init);
  v4 = v3;
  if (v3)
  {
    v3[2] = a2;
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v6 = v4[6];
    v4[6] = v5;
  }

  return v4;
}

- (void)initWithKCData:(const char *)a3 name:(void *)a4 textLayout:(uint64_t)a5 dataGatheringOptions:
{
  if (!a1)
  {
    return 0;
  }

  v8 = [(SAExclave *)a1 initWithIdentifier:?];
  v9 = v8;
  if (v8)
  {
    [(SAExclave *)v8 fillInName:a3 textLayout:a4 dataGatheringOptions:a5];
  }

  return v9;
}

- (void)fillInName:(id)self textLayout:(uint64_t)a4 dataGatheringOptions:
{
  v65 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_37;
  }

  if (!a2 || *(a1 + 8))
  {
    if (self)
    {
      goto LABEL_5;
    }

LABEL_37:
    v48 = *MEMORY[0x1E69E9840];
    return;
  }

  v21 = SANSStringForCString(a2);
  v22 = *(a1 + 8);
  *(a1 + 8) = v21;

  if (!self)
  {
    goto LABEL_37;
  }

LABEL_5:
  v6 = [objc_getProperty(self a2];
  v7 = [*(a1 + 24) count];
  if (*(a1 + 32))
  {
    v9 = v7 + 1;
  }

  else
  {
    v9 = v7;
  }

  if (v6 <= v9)
  {
    goto LABEL_37;
  }

  v10 = *(*(self + 1) + 8);
  *(a1 + 40) = v10;
  if ((v10 & 4) == 0 || (v11 = *(*(self + 1) + 16), v11 == -1))
  {
LABEL_21:
    LODWORD(v11) = -1;
LABEL_22:
    if ([objc_getProperty(self v8])
    {
      v25 = objc_alloc(MEMORY[0x1E695DF70]);
      v27 = [v25 initWithCapacity:{objc_msgSend(objc_getProperty(self, v26, 16, 1), "count") - (v11 != -1)}];
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v29 = objc_getProperty(self, v28, 16, 1);
      v30 = [v29 countByEnumeratingWithState:&v54 objects:v58 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = 0;
        v33 = *v55;
        v51 = v11;
        do
        {
          v34 = v32;
          v35 = 0;
          v52 = v34;
          v36 = v11 - v34;
          do
          {
            if (*v55 != v33)
            {
              objc_enumerationMutation(v29);
            }

            if (v36 != v35)
            {
              v37 = *(*(&v54 + 1) + 8 * v35);
              if (v37)
              {
                v38 = *(v37 + 8);
                v39 = v38 + 16;
              }

              else
              {
                v38 = 0;
                v39 = 16;
              }

              v40 = *v39;
              v41 = uuidForBytes(v38);
              v42 = [SABinary binaryWithUUID:v41 absolutePath:0];
              v43 = [(SABinary *)v42 segmentWithCleanName:0 length:0x7FFFFFFFFFFFFFFFLL offsetIntoBinary:?];
              v44 = [SABinaryLoadInfo binaryLoadInfoWithSegment:v43 loadAddress:v40 isInKernelAddressSpace:1 exclave:a1];
              [v27 addObject:v44];
            }

            ++v35;
          }

          while (v31 != v35);
          v32 = v52 + v31;
          v45 = [v29 countByEnumeratingWithState:&v54 objects:v58 count:16];
          v31 = v45;
          LODWORD(v11) = v51;
        }

        while (v45);
      }

      objc_opt_self();
      [v27 sortUsingComparator:&__block_literal_global_361];
      v46 = [v27 copy];
      v47 = *(a1 + 24);
      *(a1 + 24) = v46;
    }

    goto LABEL_37;
  }

  if ([objc_getProperty(self v8] <= v11)
  {
    v23 = *__error();
    v24 = _sa_logt();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v49 = [a1 debugDescription];
      *buf = 138412802;
      v60 = v49;
      v61 = 1024;
      v62 = v11;
      v63 = 2048;
      v64 = [objc_getProperty(self v50];
      _os_log_error_impl(&dword_1E0E2F000, v24, OS_LOG_TYPE_ERROR, "Exclave %@ has shared cache index %u, but only %lu load infos", buf, 0x1Cu);
    }

    *__error() = v23;
    goto LABEL_21;
  }

  v13 = [objc_getProperty(self v12];
  if (v13)
  {
    v14 = v13;
    v15 = uuidForBytes(*(v13 + 8));
    v16 = *(v14[1] + 16);
    v17 = objc_opt_self();
    v18 = [(SASharedCache *)v17 sharedCacheWithUUID:v15 slide:-1 slidBaseAddress:v16 dataGatheringOptions:a4];
    v19 = *(a1 + 32);
    *(a1 + 32) = v18;

    v20 = *(a1 + 32);
    if (v20)
    {
      *(v20 + 25) = 1;
    }

    goto LABEL_22;
  }

  uuidForBytes(0);
  objc_claimAutoreleasedReturnValue();
  __break(1u);
}

- (void)enumerateFrames:(uint64_t)a1
{
  if (a1)
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      [SAFrame enumerateFrameTree:v3 block:a2];
    }
  }
}

- (uint64_t)fixupFrameInstructionsWithNewInstructions:(_BYTE *)a3 foundNewBinaryInfo:
{
  if (result)
  {
    if (a3)
    {
      *a3 = 0;
    }

    v4 = result[6];
    if (v4)
    {
      return [SAFrame fixupLoadInfosInFrameTree:v4 binaryLoadInfos:result[3] libraryCache:result[4] uuidsWithNewInstructions:a2];
    }
  }

  return result;
}

- (NSString)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(SAExclave *)self identifier];
  v5 = [(SAExclave *)self name];
  v6 = [v3 initWithFormat:@"exclave 0x%llx %@", v4, v5];

  return v6;
}

- (unint64_t)sizeInBytesForSerializedVersion
{
  v2 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 48, 1);
  }

  v3 = [(SAExclave *)self count];
  v4 = [(SAExclave *)v2 loadInfos];
  v5 = 8 * ([v4 count] + v3);

  return v5 + 42;
}

- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5
{
  v7 = a4;
  v9 = self;
  v73 = *MEMORY[0x1E69E9840];
  if ([(SAExclave *)self sizeInBytesForSerializedVersion]!= a4)
  {
    v20 = *__error();
    v21 = _sa_logt();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [v9 debugDescription];
      v5 = [v22 UTF8String];
      *buf = 136315650;
      v67 = v5;
      v68 = 2048;
      *v69 = [v9 sizeInBytesForSerializedVersion];
      *&v69[8] = 2048;
      *v70 = v7;
      _os_log_error_impl(&dword_1E0E2F000, v21, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v20;
    v23 = [v9 debugDescription];
    v24 = [v23 UTF8String];
    [v9 sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(376, "%s: size %lu != buffer length %lu", v25, v26, v27, v28, v29, v30, v24);

    _os_crash();
    __break(1u);
    goto LABEL_11;
  }

  *&a3->var0 = 513;
  v10 = [v9 name];
  *(&a3->var1 + 1) = SASerializableIndexForPointerFromSerializationDictionary(v10, a5);

  *(&a3->var2 + 2) = [v9 identifier];
  if (!v9)
  {
    goto LABEL_20;
  }

  *(&a3->var3 + 2) = v9[5];
  for (i = objc_getProperty(v9, v11, 48, 1); ; i = 0)
  {
    v7 = i;
    if ([v7 count] >= 0xFFFFFFFF)
    {
LABEL_11:
      v31 = *__error();
      v32 = _sa_logt();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = [v9 debugDescription];
        v5 = [v33 UTF8String];
        v34 = [v7 count];
        *buf = 136315394;
        v67 = v5;
        v68 = 2048;
        *v69 = v34;
        _os_log_error_impl(&dword_1E0E2F000, v32, OS_LOG_TYPE_ERROR, "%s: %lu rootFrames", buf, 0x16u);
      }

      *__error() = v31;
      v9 = [v9 debugDescription];
      v35 = [v9 UTF8String];
      [v7 count];
      _SASetCrashLogMessage(386, "%s: %lu rootFrames", v36, v37, v38, v39, v40, v41, v35);

      _os_crash();
      __break(1u);
LABEL_14:
      v17 = *__error();
      v42 = _sa_logt();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = [v9 debugDescription];
        v44 = [v43 UTF8String];
        v45 = [v5 count];
        *buf = 136315394;
        v67 = v44;
        v68 = 2048;
        *v69 = v45;
        _os_log_error_impl(&dword_1E0E2F000, v42, OS_LOG_TYPE_ERROR, "%s: %lu loadInfos", buf, 0x16u);
      }

      *__error() = v17;
      v9 = [v9 debugDescription];
      a3 = [v9 UTF8String];
      [v5 count];
      _SASetCrashLogMessage(392, "%s: %lu loadInfos", v46, v47, v48, v49, v50, v51, a3);

      _os_crash();
      __break(1u);
      goto LABEL_17;
    }

    v13 = [v7 count];
    *(&a3->var4 + 2) = v13;
    SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(&a3->var5 + 2, v13, v7, a5);
    v5 = [v9 loadInfos];
    if ([v5 count] >= 0xFFFFFFFF)
    {
      goto LABEL_14;
    }

    v14 = [v5 count];
    *(&a3->var4 + 6) = v14;
    v15 = &a3->var5 + 8 * *(&a3->var4 + 2) + 2;
    SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(v15, v14, v5, a5);
    v16 = &v15[8 * *(&a3->var4 + 6)];
    v17 = v16 - a3 + 8;
    if (v17 <= [v9 sizeInBytesForSerializedVersion])
    {
      break;
    }

LABEL_17:
    v52 = *__error();
    v53 = _sa_logt();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v54 = [v9 debugDescription];
      v55 = [v54 UTF8String];
      v56 = *(&a3->var4 + 2);
      v57 = *(&a3->var4 + 6);
      v58 = [v9 sizeInBytesForSerializedVersion];
      *buf = 136316162;
      v67 = v55;
      v68 = 1024;
      *v69 = v56;
      *&v69[4] = 1024;
      *&v69[6] = v57;
      *v70 = 2048;
      *&v70[2] = v17;
      v71 = 2048;
      v72 = v58;
      _os_log_error_impl(&dword_1E0E2F000, v53, OS_LOG_TYPE_ERROR, "%s: after serializing (with %u rootFrames, %u loadInfos), ended with length %ld, should be %lu", buf, 0x2Cu);
    }

    *__error() = v52;
    v59 = [v9 debugDescription];
    a5 = [v59 UTF8String];
    v5 = *(&a3->var4 + 2);
    a3 = *(&a3->var4 + 6);
    [v9 sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(399, "%s: after serializing (with %u rootFrames, %u loadInfos), ended with length %ld, should be %lu", v60, v61, v62, v63, v64, v65, a5);

    _os_crash();
    __break(1u);
LABEL_20:
    *(&a3->var3 + 2) = 0;
  }

  *v16 = SASerializableIndexForPointerFromSerializationDictionary(v9[4], a5);

  v18 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(a3, self, v5);

  if (v6)
  {
    v7 = [(SAExclave *)self name];
    [v7 addSelfToSerializationDictionary:a3];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    if (self)
    {
      Property = objc_getProperty(self, v8, 48, 1);
    }

    else
    {
      Property = 0;
    }

    v10 = Property;
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      do
      {
        v14 = 0;
        do
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v25 + 1) + 8 * v14++) addSelfToSerializationDictionary:a3];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v12);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v15 = [(SAExclave *)self loadInfos];
    v16 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v22;
      do
      {
        v19 = 0;
        do
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [*(*(&v21 + 1) + 8 * v19++) addSelfToSerializationDictionary:a3];
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v17);
    }

    [(SASharedCache *)self->_sharedCache addSelfToSerializationDictionary:a3];
  }

  v20 = *MEMORY[0x1E69E9840];
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4
{
  v21 = *MEMORY[0x1E69E9840];
  if (*a3 >= 3u)
  {
    goto LABEL_7;
  }

  if (a4 <= 0x21)
  {
    v8 = *__error();
    v9 = _sa_logt();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v18 = a4;
      v19 = 2048;
      v20 = 34;
      _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAExclave struct %lu", buf, 0x16u);
    }

    *__error() = v8;
    _SASetCrashLogMessage(429, "bufferLength %lu < serialized SAExclave struct %lu", v10, v11, v12, v13, v14, v15, a4);
    _os_crash();
    __break(1u);
LABEL_7:
    v16 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAExclave version" userInfo:0];
    objc_exception_throw(v16);
  }

  result = objc_alloc_init(SAExclave);
  *(result + 2) = *(a3 + 10);
  *(result + 5) = *(a3 + 18);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6
{
  *&v67[5] = *MEMORY[0x1E69E9840];
  if (*a3 >= 3u)
  {
    goto LABEL_19;
  }

  if (a4 <= 0x21)
  {
    v32 = *__error();
    v7 = _sa_logt();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v65 = a4;
      v66 = 2048;
      *v67 = 34;
      _os_log_error_impl(&dword_1E0E2F000, v7, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAExclave struct %lu", buf, 0x16u);
    }

    *__error() = v32;
    _SASetCrashLogMessage(444, "bufferLength %lu < serialized SAExclave struct %lu", v33, v34, v35, v36, v37, v38, a4);
    _os_crash();
    __break(1u);
    goto LABEL_13;
  }

  v7 = a3;
  v8 = 8 * (*(a3 + 30) + *(a3 + 26));
  if (v8 + 34 > a4)
  {
LABEL_13:
    v39 = *__error();
    v40 = _sa_logt();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = *(v7 + 26);
      v42 = *(v7 + 30);
      *buf = 134218496;
      v65 = a4;
      v66 = 1024;
      *v67 = v41;
      v67[2] = 1024;
      *&v67[3] = v42;
      _os_log_error_impl(&dword_1E0E2F000, v40, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAExclave struct with %u root frames, %u image infos", buf, 0x18u);
    }

    *__error() = v39;
    v60 = *(v7 + 26);
    v62 = *(v7 + 30);
    _SASetCrashLogMessage(446, "bufferLength %lu < serialized SAExclave struct with %u root frames, %u image infos", v43, v44, v45, v46, v47, v48, a4);
    _os_crash();
    __break(1u);
LABEL_16:
    v49 = *__error();
    v50 = _sa_logt();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v51 = *(v7 + 26);
      v52 = *(v7 + 30);
      *buf = 134218496;
      v65 = a4;
      v66 = 1024;
      *v67 = v51;
      v67[2] = 1024;
      *&v67[3] = v52;
      _os_log_error_impl(&dword_1E0E2F000, v50, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAExclave struct v2 with %u root frames, %u image infos", buf, 0x18u);
    }

    *__error() = v49;
    v61 = *(v7 + 26);
    v63 = *(v7 + 30);
    _SASetCrashLogMessage(462, "bufferLength %lu < serialized SAExclave struct v2 with %u root frames, %u image infos", v53, v54, v55, v56, v57, v58, a4);
    _os_crash();
    __break(1u);
LABEL_19:
    v59 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAExclave version" userInfo:0];
    objc_exception_throw(v59);
  }

  v12 = *(a3 + 2);
  v13 = objc_opt_class();
  v14 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v12, a5, a6, v13, 0);
  name = self->_name;
  self->_name = v14;

  v16 = v7 + 34 + 8 * *(v7 + 26);
  v17 = *(v7 + 30);
  v18 = objc_opt_class();
  v19 = SASerializableNewMutableArrayFromIndexList(v16, v17, a5, a6, v18);
  v20 = [v19 copy];
  loadInfos = self->_loadInfos;
  self->_loadInfos = v20;

  v22 = *(v7 + 26);
  v23 = objc_opt_class();
  v24 = SASerializableNewMutableSetFromIndexList(v7 + 34, v22, a5, a6, v23);
  rootFrames = self->_rootFrames;
  self->_rootFrames = v24;

  if (*(v7 + 1) < 2u)
  {
    v26 = *MEMORY[0x1E69E9840];
    return;
  }

  if (v8 + 42 > a4)
  {
    goto LABEL_16;
  }

  v27 = *(v16 + 8 * *(v7 + 30));
  v28 = objc_opt_class();
  v29 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v27, a5, a6, v28, 0);
  sharedCache = self->_sharedCache;
  self->_sharedCache = v29;
  v31 = *MEMORY[0x1E69E9840];
}

@end