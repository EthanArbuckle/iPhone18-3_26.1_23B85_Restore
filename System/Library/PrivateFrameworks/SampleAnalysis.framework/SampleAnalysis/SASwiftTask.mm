@interface SASwiftTask
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4;
- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5;
- (NSString)debugDescription;
- (unint64_t)sizeInBytesForSerializedVersion;
- (void)addSelfToSerializationDictionary:(id)a3;
- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6;
@end

@implementation SASwiftTask

- (NSString)debugDescription
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SwiftTask %llu", -[SARecipe identifier](self, "identifier")];

  return v2;
}

- (unint64_t)sizeInBytesForSerializedVersion
{
  v2 = [(SARecipe *)self states];
  v3 = 8 * [v2 count];

  return v3 + 14;
}

- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5
{
  v48 = *MEMORY[0x1E69E9840];
  if ([(SASwiftTask *)self sizeInBytesForSerializedVersion]!= a4)
  {
    v16 = *__error();
    v17 = _sa_logt();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [(SASwiftTask *)self debugDescription];
      *buf = 136315650;
      v43 = [v18 UTF8String];
      v44 = 2048;
      v45 = [(SASwiftTask *)self sizeInBytesForSerializedVersion];
      v46 = 2048;
      v47 = a4;
      _os_log_error_impl(&dword_1E0E2F000, v17, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v16;
    v19 = [(SASwiftTask *)self debugDescription];
    v20 = [v19 UTF8String];
    [(SASwiftTask *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(5568, "%s: size %lu != buffer length %lu", v21, v22, v23, v24, v25, v26, v20);

    _os_crash();
    __break(1u);
LABEL_7:
    v27 = *__error();
    v28 = _sa_logt();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [(SASwiftTask *)self debugDescription];
      v30 = [v29 UTF8String];
      v31 = [(SARecipe *)self states];
      v32 = [v31 count];
      *buf = 136315394;
      v43 = v30;
      v44 = 2048;
      v45 = v32;
      _os_log_error_impl(&dword_1E0E2F000, v28, OS_LOG_TYPE_ERROR, "%s: %lu swiftTaskStates", buf, 0x16u);
    }

    *__error() = v27;
    v33 = [(SASwiftTask *)self debugDescription];
    v34 = [v33 UTF8String];
    v35 = [(SARecipe *)self states];
    [v35 count];
    _SASetCrashLogMessage(5575, "%s: %lu swiftTaskStates", v36, v37, v38, v39, v40, v41, v34);

    _os_crash();
    __break(1u);
  }

  *&a3->var0 = 257;
  *(&a3->var1 + 1) = [(SARecipe *)self identifier];
  v9 = [(SARecipe *)self states];
  v10 = [v9 count];

  if (v10 >= 0xFFFFFFFF)
  {
    goto LABEL_7;
  }

  v11 = [(SARecipe *)self states];
  *(&a3->var2 + 2) = [v11 count];

  v12 = *(&a3->var2 + 2);
  v13 = [(SARecipe *)self states];
  SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(&a3->var2 + 6, v12, v13, a5);

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

  if (a4 <= 0xD)
  {
    v8 = *__error();
    v5 = _sa_logt();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v27 = a4;
      v28 = 2048;
      v29 = 14;
      _os_log_error_impl(&dword_1E0E2F000, v5, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SASwiftTask struct %lu", buf, 0x16u);
    }

    *__error() = v8;
    _SASetCrashLogMessage(5598, "bufferLength %lu < serialized SASwiftTask struct %lu", v9, v10, v11, v12, v13, v14, a4);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  v5 = a3;
  if (8 * *(a3 + 10) + 14 > a4)
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
      _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SASwiftTask struct with %u swiftTaskStates", buf, 0x12u);
    }

    *__error() = v15;
    v25 = *(v5 + 10);
    _SASetCrashLogMessage(5599, "bufferLength %lu < serialized SASwiftTask struct with %u swiftTaskStates", v18, v19, v20, v21, v22, v23, a4);
    _os_crash();
    __break(1u);
LABEL_11:
    v24 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SASwiftTask version" userInfo:0];
    objc_exception_throw(v24);
  }

  result = [(SADispatchQueue *)SASwiftTask dispatchQueueWithId:?];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6
{
  *&v38[13] = *MEMORY[0x1E69E9840];
  if (*a3 >= 4u)
  {
    goto LABEL_15;
  }

  if (a4 <= 0xD)
  {
    v16 = *__error();
    v8 = _sa_logt();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v36 = a4;
      v37 = 2048;
      *v38 = 14;
      _os_log_error_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SASwiftTask struct %lu", buf, 0x16u);
    }

    *__error() = v16;
    _SASetCrashLogMessage(5611, "bufferLength %lu < serialized SASwiftTask struct %lu", v17, v18, v19, v20, v21, v22, a4);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  v8 = a3;
  v9 = *(a3 + 10);
  v6 = 8 * v9 + 14;
  if (v6 > a4)
  {
LABEL_12:
    v23 = *__error();
    v24 = _sa_logt();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = *(v8 + 10);
      *buf = 134218496;
      v36 = a4;
      v37 = 1024;
      *v38 = v25;
      v38[2] = 2048;
      *&v38[3] = v6;
      _os_log_error_impl(&dword_1E0E2F000, v24, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SASwiftTask struct v1 with %u swiftTaskStates (%llu)", buf, 0x1Cu);
    }

    *__error() = v23;
    v33 = *(v8 + 10);
    _SASetCrashLogMessage(5613, "bufferLength %lu < serialized SASwiftTask struct v1 with %u swiftTaskStates (%llu)", v26, v27, v28, v29, v30, v31, a4);
    _os_crash();
    __break(1u);
LABEL_15:
    v32 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SASwiftTask version" userInfo:0];
    objc_exception_throw(v32);
  }

  v13 = objc_opt_class();
  v14 = SASerializableNewMutableArrayFromIndexList(v8 + 14, v9, a5, a6, v13);
  if (self)
  {
    v34 = v14;
    objc_setProperty_atomic(self, v14, v14, 8);
    v14 = v34;
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end