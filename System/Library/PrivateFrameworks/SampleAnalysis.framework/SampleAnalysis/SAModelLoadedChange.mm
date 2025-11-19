@interface SAModelLoadedChange
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4;
- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5;
- (NSString)debugDescription;
- (SAModelLoadedChange)initWithTimestamp:(id)a3 endTime:(id)a4 userInitiated:(BOOL)a5 loadedRequesters:(id)a6 inMemory:(BOOL)a7;
- (void)addSelfToSerializationDictionary:(id)a3;
- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6;
- (void)writeJSONDictionaryEntriesToStream:(id)a3;
@end

@implementation SAModelLoadedChange

- (SAModelLoadedChange)initWithTimestamp:(id)a3 endTime:(id)a4 userInitiated:(BOOL)a5 loadedRequesters:(id)a6 inMemory:(BOOL)a7
{
  v18.receiver = self;
  v18.super_class = SAModelLoadedChange;
  v12 = [(SAModelLoadedChange *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_timestamp, a3);
    objc_storeStrong(&v13->_endTime, a4);
    v13->_userInitiated = a5;
    v14 = [a6 copy];
    loadedRequesters = v13->_loadedRequesters;
    v13->_loadedRequesters = v14;

    v13->_inMemory = a7;
    v16 = v13;
  }

  return v13;
}

- (NSString)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(SAModelLoadedChange *)self loaded];
  v5 = [(SAModelLoadedChange *)self userInitiated];
  v6 = [(SAModelLoadedChange *)self loadedRequesters];
  v7 = [v6 componentsJoinedByString:{@", "}];
  v8 = [(SAModelLoadedChange *)self timestamp];
  v9 = [v8 debugDescription];
  v10 = [v3 initWithFormat:@"load change (loaded:%d UI:%d) requested by %@ at %@", v4, v5, v7, v9];

  return v10;
}

- (void)writeJSONDictionaryEntriesToStream:(id)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[SAModelLoadedChange loaded](self, "loaded")}];
  SAJSONWriteDictionaryFirstEntry(a3, @"loaded", v5);

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[SAModelLoadedChange userInitiated](self, "userInitiated")}];
  SAJSONWriteDictionaryEntry(a3, @"userInitiated", v6);

  timestamp = self->_timestamp;
  if (timestamp)
  {
    SAJSONWriteDictionaryEntry(a3, @"timestamp", timestamp);
  }

  if ([(NSArray *)self->_loadedRequesters count])
  {
    loadedRequesters = self->_loadedRequesters;

    SAJSONWriteDictionaryEntry(a3, @"loadedRequesters", loadedRequesters);
  }
}

- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5
{
  v7 = a4;
  v57 = *MEMORY[0x1E69E9840];
  if ([(SAModelLoadedChange *)self sizeInBytesForSerializedVersion]!= a4)
  {
    v14 = *__error();
    v15 = _sa_logt();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [(SAModelLoadedChange *)self debugDescription];
      *buf = 136315650;
      v50 = [v16 UTF8String];
      v51 = 2048;
      v52 = [(SAModelLoadedChange *)self sizeInBytesForSerializedVersion];
      v53 = 2048;
      v54 = v7;
      _os_log_error_impl(&dword_1E0E2F000, v15, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v14;
    v17 = [(SAModelLoadedChange *)self debugDescription];
    v5 = [v17 UTF8String];
    [(SAModelLoadedChange *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(306, "%s: size %lu != buffer length %lu", v18, v19, v20, v21, v22, v23, v5);

    _os_crash();
    __break(1u);
    goto LABEL_11;
  }

  *&a3->var0 = 257;
  *(&a3->var1 + 1) = SASerializableIndexForPointerFromSerializationDictionary(self->_timestamp, a5);
  BYTE2(a3->var2) = BYTE2(a3->var2) & 0xFE | [(SAModelLoadedChange *)self loaded];
  if ([(SAModelLoadedChange *)self userInitiated])
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  BYTE2(a3->var2) = BYTE2(a3->var2) & 0xFD | v10;
  if ([(NSArray *)self->_loadedRequesters count]>= 0xFFFFFFFF)
  {
LABEL_11:
    v24 = *__error();
    v25 = _sa_logt();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [(SAModelLoadedChange *)self debugDescription];
      v5 = [v26 UTF8String];
      v27 = [(NSArray *)self->_loadedRequesters count];
      *buf = 136315394;
      v50 = v5;
      v51 = 2048;
      v52 = v27;
      _os_log_error_impl(&dword_1E0E2F000, v25, OS_LOG_TYPE_ERROR, "%s has %lu requesters", buf, 0x16u);
    }

    *__error() = v24;
    v7 = [(SAModelLoadedChange *)self debugDescription];
    a3 = [v7 UTF8String];
    [(NSArray *)self->_loadedRequesters count];
    _SASetCrashLogMessage(315, "%s has %lu requesters", v28, v29, v30, v31, v32, v33, a3);

    _os_crash();
    __break(1u);
LABEL_14:
    v34 = *__error();
    v35 = _sa_logt();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = [(SAModelLoadedChange *)self debugDescription];
      v37 = [v36 UTF8String];
      v38 = [(NSArray *)self->_loadedRequesters count];
      v39 = [(NSArray *)self->_loadedRequesters count];
      *buf = 136315906;
      v50 = v37;
      v51 = 2048;
      v52 = v38;
      v53 = 2048;
      v54 = &v5[8 * v39] - a3;
      v55 = 2048;
      v56 = v7;
      _os_log_error_impl(&dword_1E0E2F000, v35, OS_LOG_TYPE_ERROR, "%s: after serializing (with %lu loadedRequesters), ended with length %ld, should be %lu", buf, 0x2Au);
    }

    *__error() = v34;
    v40 = [(SAModelLoadedChange *)self debugDescription];
    v41 = [v40 UTF8String];
    [(NSArray *)self->_loadedRequesters count];
    v48 = &v5[8 * [(NSArray *)self->_loadedRequesters count]] - a3;
    _SASetCrashLogMessage(320, "%s: after serializing (with %lu loadedRequesters), ended with length %ld, should be %lu", v42, v43, v44, v45, v46, v47, v41);

    _os_crash();
    __break(1u);
  }

  v5 = &a3->var2 + 7;
  if ((8 * [(NSArray *)self->_loadedRequesters count]+ 15) != v7)
  {
    goto LABEL_14;
  }

  v11 = [(NSArray *)self->_loadedRequesters count];
  *(&a3->var2 + 3) = v11;
  SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(&a3->var2 + 7, v11, self->_loadedRequesters, a5);
  v12 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(a3, self, v5);

  if (v6)
  {
    [(SATimestamp *)self->_timestamp addSelfToSerializationDictionary:a3];
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
  v30 = *MEMORY[0x1E69E9840];
  if (*a3 >= 2u)
  {
    goto LABEL_11;
  }

  if (a4 <= 0xE)
  {
    v8 = *__error();
    v5 = _sa_logt();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v27 = a4;
      v28 = 2048;
      v29 = 15;
      _os_log_error_impl(&dword_1E0E2F000, v5, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAModelLoadedChange struct %lu", buf, 0x16u);
    }

    *__error() = v8;
    _SASetCrashLogMessage(344, "bufferLength %lu < serialized SAModelLoadedChange struct %lu", v9, v10, v11, v12, v13, v14, a4);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  v5 = a3;
  if (8 * *(a3 + 11) + 15 > a4)
  {
LABEL_8:
    v15 = *__error();
    v16 = _sa_logt();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(v5 + 11);
      *buf = 134218240;
      v27 = a4;
      v28 = 1024;
      LODWORD(v29) = v17;
      _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAModelLoadedChange struct with %u requesters", buf, 0x12u);
    }

    *__error() = v15;
    v25 = *(v5 + 11);
    _SASetCrashLogMessage(345, "bufferLength %lu < serialized SAModelLoadedChange struct with %u requesters", v18, v19, v20, v21, v22, v23, a4);
    _os_crash();
    __break(1u);
LABEL_11:
    v24 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAModelLoadedChange version" userInfo:0];
    objc_exception_throw(v24);
  }

  result = objc_alloc_init(SAModelLoadedChange);
  *(result + 9) = (*(v5 + 10) & 2) != 0;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6
{
  v43 = *MEMORY[0x1E69E9840];
  if (*a3 >= 2u)
  {
    goto LABEL_15;
  }

  if (a4 <= 0xE)
  {
    v21 = *__error();
    v7 = _sa_logt();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v40 = a4;
      v41 = 2048;
      v42 = 15;
      _os_log_error_impl(&dword_1E0E2F000, v7, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAModelLoadedChange struct %lu", buf, 0x16u);
    }

    *__error() = v21;
    _SASetCrashLogMessage(358, "bufferLength %lu < serialized SAModelLoadedChange struct %lu", v22, v23, v24, v25, v26, v27, a4);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  v7 = a3;
  if (8 * *(a3 + 11) + 15 > a4)
  {
LABEL_12:
    v28 = *__error();
    v29 = _sa_logt();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = *(v7 + 11);
      *buf = 134218240;
      v40 = a4;
      v41 = 1024;
      LODWORD(v42) = v30;
      _os_log_error_impl(&dword_1E0E2F000, v29, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAModelLoadedChange struct with %u requesters", buf, 0x12u);
    }

    *__error() = v28;
    v38 = *(v7 + 11);
    _SASetCrashLogMessage(359, "bufferLength %lu < serialized SAModelLoadedChange struct with %u requesters", v31, v32, v33, v34, v35, v36, a4);
    _os_crash();
    __break(1u);
LABEL_15:
    v37 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAModelLoadedChange version" userInfo:0];
    objc_exception_throw(v37);
  }

  v11 = *(a3 + 2);
  v12 = objc_opt_class();
  v13 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v11, a5, a6, v12, 0);
  timestamp = self->_timestamp;
  self->_timestamp = v13;

  if (*(v7 + 10))
  {
    v15 = *(v7 + 11);
    v16 = objc_opt_class();
    v17 = SASerializableNewMutableArrayFromIndexList(v7 + 15, v15, a5, a6, v16);
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