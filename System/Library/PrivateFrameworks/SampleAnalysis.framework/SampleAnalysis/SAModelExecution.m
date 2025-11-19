@interface SAModelExecution
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4;
- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5;
- (NSString)debugDescription;
- (void)addSelfToSerializationDictionary:(id)a3;
- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6;
- (void)writeJSONDictionaryEntriesToStream:(id)a3;
@end

@implementation SAModelExecution

- (NSString)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(SAModelExecution *)self requester];
  v5 = [(SAModelExecution *)self useCaseID];
  v6 = [(SAModelExecution *)self instructions];
  v7 = [(SAModelExecution *)self startTime];
  v8 = [v7 debugDescription];
  v9 = [(SAModelExecution *)self endTime];
  v10 = [v9 debugDescription];
  v11 = [v3 initWithFormat:@"execution on behalf of %@ use case %@, %llu instructions, from %@-%@", v4, v5, v6, v8, v10];

  return v11;
}

- (void)writeJSONDictionaryEntriesToStream:(id)a3
{
  requester = self->_requester;
  if (requester)
  {
    SAJSONWriteDictionaryFirstEntry(a3, @"requester", requester);
    useCaseID = self->_useCaseID;
    if (useCaseID)
    {
      SAJSONWriteDictionaryEntry(a3, @"useCaseID", useCaseID);
    }

    goto LABEL_6;
  }

  v7 = self->_useCaseID;
  if (v7)
  {
    SAJSONWriteDictionaryFirstEntry(a3, @"useCaseID", v7);
LABEL_6:
    startTime = self->_startTime;
    if (startTime)
    {
      SAJSONWriteDictionaryEntry(a3, @"startTime", startTime);
    }

    goto LABEL_8;
  }

  v10 = self->_startTime;
  if (v10)
  {
    SAJSONWriteDictionaryFirstEntry(a3, @"startTime", v10);
LABEL_8:
    endTime = self->_endTime;
    if (endTime)
    {
      SAJSONWriteDictionaryEntry(a3, @"endTime", endTime);
    }

    goto LABEL_10;
  }

  v11 = self->_endTime;
  if (v11)
  {
    SAJSONWriteDictionaryFirstEntry(a3, @"endTime", v11);
LABEL_10:
    if (!self->_instructions)
    {
      return;
    }

    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    SAJSONWriteDictionaryEntry(a3, @"instructions", v12);
    goto LABEL_12;
  }

  if (!self->_instructions)
  {
    return;
  }

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
  SAJSONWriteDictionaryFirstEntry(a3, @"instructions", v12);
LABEL_12:
}

- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  if ([(SAModelExecution *)self sizeInBytesForSerializedVersion]!= a4)
  {
    v11 = *__error();
    v12 = _sa_logt();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [(SAModelExecution *)self debugDescription];
      *buf = 136315650;
      v23 = [v13 UTF8String];
      v24 = 2048;
      v25 = [(SAModelExecution *)self sizeInBytesForSerializedVersion];
      v26 = 2048;
      v27 = a4;
      _os_log_error_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v11;
    v14 = [(SAModelExecution *)self debugDescription];
    v15 = [v14 UTF8String];
    [(SAModelExecution *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(432, "%s: size %lu != buffer length %lu", v16, v17, v18, v19, v20, v21, v15);

    _os_crash();
    __break(1u);
  }

  *&a3->var0 = 771;
  *(&a3->var1 + 1) = SASerializableIndexForPointerFromSerializationDictionary(self->_requester, a5);
  *(&a3->var2 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_startTime, a5);
  *(&a3->var3 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_endTime, a5);
  *(&a3->var4 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_useCaseID, a5);
  *(&a3->var5 + 2) = self->_instructions;
  v9 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)a3
{
  v5 = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(a3, self, v5);

  if (v6)
  {
    [(NSString *)self->_requester addSelfToSerializationDictionary:a3];
    [(SATimestamp *)self->_startTime addSelfToSerializationDictionary:a3];
    [(SATimestamp *)self->_endTime addSelfToSerializationDictionary:a3];
    useCaseID = self->_useCaseID;

    [(NSString *)useCaseID addSelfToSerializationDictionary:a3];
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4
{
  v21 = *MEMORY[0x1E69E9840];
  if (*a3 >= 4u)
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
      _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAModelExecution struct %lu", buf, 0x16u);
    }

    *__error() = v8;
    _SASetCrashLogMessage(462, "bufferLength %lu < serialized SAModelExecution struct %lu", v10, v11, v12, v13, v14, v15, a4);
    _os_crash();
    __break(1u);
LABEL_7:
    v16 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAModelExecution version" userInfo:0];
    objc_exception_throw(v16);
  }

  result = objc_alloc_init(SAModelExecution);
  *(result + 5) = *(a3 + 26);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6
{
  v50 = *MEMORY[0x1E69E9840];
  if (*a3 >= 4u)
  {
    goto LABEL_15;
  }

  if (a4 <= 0x21)
  {
    v29 = *__error();
    v30 = _sa_logt();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v47 = a4;
      v48 = 2048;
      v49 = 34;
      _os_log_error_impl(&dword_1E0E2F000, v30, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAModelExecution struct %lu", buf, 0x16u);
    }

    *__error() = v29;
    _SASetCrashLogMessage(475, "bufferLength %lu < serialized SAModelExecution struct %lu", v31, v32, v33, v34, v35, v36, a4);
    _os_crash();
    __break(1u);
LABEL_12:
    v37 = *__error();
    v38 = _sa_logt();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v47 = a4;
      _os_log_error_impl(&dword_1E0E2F000, v38, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAModelExecution v2 struct", buf, 0xCu);
    }

    *__error() = v37;
    _SASetCrashLogMessage(484, "bufferLength %lu < serialized SAModelExecution v2 struct", v39, v40, v41, v42, v43, v44, a4);
    _os_crash();
    __break(1u);
LABEL_15:
    v45 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAModelExecution version" userInfo:0];
    objc_exception_throw(v45);
  }

  v11 = *(a3 + 2);
  v12 = objc_opt_class();
  v13 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v11, a5, a6, v12, 0);
  requester = self->_requester;
  self->_requester = v13;

  v15 = *(a3 + 10);
  v16 = objc_opt_class();
  v17 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v15, a5, a6, v16, 0);
  startTime = self->_startTime;
  self->_startTime = v17;

  v19 = *(a3 + 18);
  v20 = objc_opt_class();
  v21 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v19, a5, a6, v20, 0);
  endTime = self->_endTime;
  self->_endTime = v21;

  if (*(a3 + 1) < 3u)
  {
    v28 = *MEMORY[0x1E69E9840];
    return;
  }

  if (a4 <= 0x29)
  {
    goto LABEL_12;
  }

  v23 = *(a3 + 26);
  v24 = objc_opt_class();
  v25 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v23, a5, a6, v24, 0);
  useCaseID = self->_useCaseID;
  self->_useCaseID = v25;
  v27 = *MEMORY[0x1E69E9840];
}

@end