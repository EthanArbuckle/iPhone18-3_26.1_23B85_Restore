@interface SAModel
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4;
- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5;
- (NSArray)executions;
- (NSArray)loadedChanges;
- (NSString)debugDescription;
- (SAModel)initWithIdentifier:(id)a3;
- (void)addSelfToSerializationDictionary:(id)a3;
- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6;
- (void)writeJSONDictionaryEntriesToStream:(id)a3;
@end

@implementation SAModel

- (NSArray)loadedChanges
{
  v2 = [(NSMutableArray *)self->_loadedChanges copy];

  return v2;
}

- (NSArray)executions
{
  v2 = [(NSMutableArray *)self->_executions copy];

  return v2;
}

- (SAModel)initWithIdentifier:(id)a3
{
  v13.receiver = self;
  v13.super_class = SAModel;
  v4 = [(SAModel *)&v13 init];
  if (v4)
  {
    v5 = [a3 copy];
    identifier = v4->_identifier;
    v4->_identifier = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    loadedChanges = v4->_loadedChanges;
    v4->_loadedChanges = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    executions = v4->_executions;
    v4->_executions = v9;

    v11 = v4;
  }

  return v4;
}

- (NSString)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(SAModel *)self identifier];
  v5 = [v3 initWithFormat:@"Model %@ with %lu load changes, %lu executions", v4, -[NSMutableArray count](self->_loadedChanges, "count"), -[NSMutableArray count](self->_executions, "count")];

  return v5;
}

- (void)writeJSONDictionaryEntriesToStream:(id)a3
{
  SAJSONWriteDictionaryFirstEntry(a3, @"identifier", self->_identifier);
  if (self->_maxMemoryCostBytes)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    SAJSONWriteDictionaryEntry(a3, @"maxMemoryCostBytes", v5);
  }

  if ([(NSMutableArray *)self->_loadedChanges count])
  {
    v6 = [(SAModel *)self loadedChanges];
    SAJSONWriteDictionaryEntry(a3, @"loadedChanges", v6);
  }

  if ([(NSMutableArray *)self->_executions count])
  {
    v7 = [(SAModel *)self executions];
    SAJSONWriteDictionaryEntry(a3, @"executions", v7);
  }
}

- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5
{
  v7 = a4;
  v9 = self;
  v68 = *MEMORY[0x1E69E9840];
  if ([(SAModel *)self sizeInBytesForSerializedVersion]!= a4)
  {
    v16 = *__error();
    v17 = _sa_logt();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [v9 debugDescription];
      a3 = [v18 UTF8String];
      *buf = 136315650;
      v59 = a3;
      v60 = 2048;
      v61 = [v9 sizeInBytesForSerializedVersion];
      v62 = 2048;
      v63 = v7;
      _os_log_error_impl(&dword_1E0E2F000, v17, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v16;
    v10 = [v9 debugDescription];
    v5 = [v10 UTF8String];
    [v9 sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(194, "%s: size %lu != buffer length %lu", v19, v20, v21, v22, v23, v24, v5);

    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  *&a3->var0 = 257;
  *(&a3->var1 + 1) = SASerializableIndexForPointerFromSerializationDictionary(v9[3], a5);
  *(&a3->var2 + 2) = v9[4];
  v10 = [v9 loadedChanges];
  if ([v10 count] >= 0xFFFFFFFF)
  {
LABEL_9:
    v25 = *__error();
    v26 = _sa_logt();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v5 = [v9 debugDescription];
      a3 = [v5 UTF8String];
      v27 = [v10 count];
      *buf = 136315394;
      v59 = a3;
      v60 = 2048;
      v61 = v27;
      _os_log_error_impl(&dword_1E0E2F000, v26, OS_LOG_TYPE_ERROR, "%s has %lu loaded changes", buf, 0x16u);
    }

    *__error() = v25;
    v9 = [v9 debugDescription];
    v28 = [v9 UTF8String];
    [v10 count];
    _SASetCrashLogMessage(203, "%s has %lu loaded changes", v29, v30, v31, v32, v33, v34, v28);

    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  v5 = [v9 executions];
  if ([v5 count] >= 0xFFFFFFFF)
  {
LABEL_12:
    v11 = *__error();
    v35 = _sa_logt();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v10 = [v9 debugDescription];
      a3 = [v10 UTF8String];
      v36 = [v5 count];
      *buf = 136315394;
      v59 = a3;
      v60 = 2048;
      v61 = v36;
      _os_log_error_impl(&dword_1E0E2F000, v35, OS_LOG_TYPE_ERROR, "%s has %lu executions", buf, 0x16u);
    }

    *__error() = v11;
    v9 = [v9 debugDescription];
    v7 = [v9 UTF8String];
    [v5 count];
    _SASetCrashLogMessage(206, "%s has %lu executions", v37, v38, v39, v40, v41, v42, v7);

    _os_crash();
    __break(1u);
LABEL_15:
    v57 = *__error();
    v43 = _sa_logt();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = [v9 debugDescription];
      v56 = [v44 UTF8String];
      v45 = [v10 count];
      v46 = [v5 count];
      v47 = [v5 count];
      *buf = 136316162;
      v59 = v56;
      v60 = 2048;
      v61 = v45;
      v62 = 2048;
      v63 = v46;
      v64 = 2048;
      v65 = v11 + 8 * v47 - a3;
      v66 = 2048;
      v67 = v7;
      _os_log_error_impl(&dword_1E0E2F000, v43, OS_LOG_TYPE_ERROR, "%s: after serializing (with %lu loadedChanges, %lu executions), ended with length %ld, should be %lu", buf, 0x34u);
    }

    *__error() = v57;
    v48 = [v9 debugDescription];
    v49 = [v48 UTF8String];
    [v10 count];
    [v5 count];
    [v5 count];
    _SASetCrashLogMessage(212, "%s: after serializing (with %lu loadedChanges, %lu executions), ended with length %ld, should be %lu", v50, v51, v52, v53, v54, v55, v49);

    _os_crash();
    __break(1u);
  }

  v11 = &a3->var4 + 8 * [v10 count] + 2;
  if (v11 + 8 * [v5 count] - a3 != v7)
  {
    goto LABEL_15;
  }

  v12 = [v10 count];
  *(&a3->var3 + 2) = v12;
  SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(&a3->var4 + 2, v12, v10, a5);
  v13 = [v5 count];
  *(&a3->var3 + 6) = v13;
  SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(v11, v13, v5, a5);

  v14 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(a3, self, v5);

  if (v6)
  {
    [(NSString *)self->_identifier addSelfToSerializationDictionary:a3];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = self->_loadedChanges;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        v11 = 0;
        do
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v22 + 1) + 8 * v11++) addSelfToSerializationDictionary:a3];
        }

        while (v9 != v11);
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v9);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = self->_executions;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        v16 = 0;
        do
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v18 + 1) + 8 * v16++) addSelfToSerializationDictionary:{a3, v18}];
        }

        while (v14 != v16);
        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v14);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4
{
  *&v31[5] = *MEMORY[0x1E69E9840];
  if (*a3 >= 2u)
  {
    goto LABEL_11;
  }

  if (a4 <= 0x19)
  {
    v8 = *__error();
    v5 = _sa_logt();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v29 = a4;
      v30 = 2048;
      *v31 = 26;
      _os_log_error_impl(&dword_1E0E2F000, v5, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAModel struct %lu", buf, 0x16u);
    }

    *__error() = v8;
    _SASetCrashLogMessage(242, "bufferLength %lu < serialized SAModel struct %lu", v9, v10, v11, v12, v13, v14, a4);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  v5 = a3;
  if (8 * (*(a3 + 22) + *(a3 + 18)) + 26 > a4)
  {
LABEL_8:
    v15 = *__error();
    v16 = _sa_logt();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(v5 + 18);
      v18 = *(v5 + 22);
      *buf = 134218496;
      v29 = a4;
      v30 = 1024;
      *v31 = v17;
      v31[2] = 1024;
      *&v31[3] = v18;
      _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAModel struct with %u loaded changes and %u executions", buf, 0x18u);
    }

    *__error() = v15;
    v26 = *(v5 + 18);
    v27 = *(v5 + 22);
    _SASetCrashLogMessage(243, "bufferLength %lu < serialized SAModel struct with %u loaded changes and %u executions", v19, v20, v21, v22, v23, v24, a4);
    _os_crash();
    __break(1u);
LABEL_11:
    v25 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAModel version" userInfo:0];
    objc_exception_throw(v25);
  }

  result = objc_alloc_init(SAModel);
  *(result + 4) = *(v5 + 10);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6
{
  *&v48[5] = *MEMORY[0x1E69E9840];
  if (*a3 >= 2u)
  {
    goto LABEL_13;
  }

  if (a4 <= 0x19)
  {
    v25 = *__error();
    v7 = _sa_logt();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v46 = a4;
      v47 = 2048;
      *v48 = 26;
      _os_log_error_impl(&dword_1E0E2F000, v7, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAModel struct %lu", buf, 0x16u);
    }

    *__error() = v25;
    _SASetCrashLogMessage(256, "bufferLength %lu < serialized SAModel struct %lu", v26, v27, v28, v29, v30, v31, a4);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  v7 = a3;
  if (8 * (*(a3 + 22) + *(a3 + 18)) + 26 > a4)
  {
LABEL_10:
    v32 = *__error();
    v33 = _sa_logt();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = *(v7 + 18);
      v35 = *(v7 + 22);
      *buf = 134218496;
      v46 = a4;
      v47 = 1024;
      *v48 = v34;
      v48[2] = 1024;
      *&v48[3] = v35;
      _os_log_error_impl(&dword_1E0E2F000, v33, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAModel struct with %u loaded changes and %u executions", buf, 0x18u);
    }

    *__error() = v32;
    v43 = *(v7 + 18);
    v44 = *(v7 + 22);
    _SASetCrashLogMessage(257, "bufferLength %lu < serialized SAModel struct with %u loaded changes and %u executions", v36, v37, v38, v39, v40, v41, a4);
    _os_crash();
    __break(1u);
LABEL_13:
    v42 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAModel version" userInfo:0];
    objc_exception_throw(v42);
  }

  v11 = *(a3 + 2);
  v12 = objc_opt_class();
  v13 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v11, a5, a6, v12);
  identifier = self->_identifier;
  self->_identifier = v13;

  v15 = *(v7 + 18);
  v16 = objc_opt_class();
  v17 = SASerializableNewMutableArrayFromIndexList(v7 + 26, v15, a5, a6, v16);
  loadedChanges = self->_loadedChanges;
  self->_loadedChanges = v17;

  v19 = v7 + 26 + 8 * *(v7 + 18);
  v20 = *(v7 + 22);
  v21 = objc_opt_class();
  v22 = SASerializableNewMutableArrayFromIndexList(v19, v20, a5, a6, v21);
  executions = self->_executions;
  self->_executions = v22;
  v24 = *MEMORY[0x1E69E9840];
}

@end