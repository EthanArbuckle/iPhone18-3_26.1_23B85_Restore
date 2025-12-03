@interface SAModel
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (NSArray)executions;
- (NSArray)loadedChanges;
- (NSString)debugDescription;
- (SAModel)initWithIdentifier:(id)identifier;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
- (void)writeJSONDictionaryEntriesToStream:(id)stream;
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

- (SAModel)initWithIdentifier:(id)identifier
{
  v13.receiver = self;
  v13.super_class = SAModel;
  v4 = [(SAModel *)&v13 init];
  if (v4)
  {
    v5 = [identifier copy];
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
  identifier = [(SAModel *)self identifier];
  v5 = [v3 initWithFormat:@"Model %@ with %lu load changes, %lu executions", identifier, -[NSMutableArray count](self->_loadedChanges, "count"), -[NSMutableArray count](self->_executions, "count")];

  return v5;
}

- (void)writeJSONDictionaryEntriesToStream:(id)stream
{
  SAJSONWriteDictionaryFirstEntry(stream, @"identifier", self->_identifier);
  if (self->_maxMemoryCostBytes)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    SAJSONWriteDictionaryEntry(stream, @"maxMemoryCostBytes", v5);
  }

  if ([(NSMutableArray *)self->_loadedChanges count])
  {
    loadedChanges = [(SAModel *)self loadedChanges];
    SAJSONWriteDictionaryEntry(stream, @"loadedChanges", loadedChanges);
  }

  if ([(NSMutableArray *)self->_executions count])
  {
    executions = [(SAModel *)self executions];
    SAJSONWriteDictionaryEntry(stream, @"executions", executions);
  }
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  lengthCopy = length;
  selfCopy = self;
  v68 = *MEMORY[0x1E69E9840];
  if ([(SAModel *)self sizeInBytesForSerializedVersion]!= length)
  {
    v16 = *__error();
    v17 = _sa_logt();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [selfCopy debugDescription];
      buffer = [v18 UTF8String];
      *buf = 136315650;
      bufferCopy3 = buffer;
      v60 = 2048;
      sizeInBytesForSerializedVersion = [selfCopy sizeInBytesForSerializedVersion];
      v62 = 2048;
      v63 = lengthCopy;
      _os_log_error_impl(&dword_1E0E2F000, v17, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v16;
    loadedChanges = [selfCopy debugDescription];
    uTF8String = [loadedChanges UTF8String];
    [selfCopy sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(194, "%s: size %lu != buffer length %lu", v19, v20, v21, v22, v23, v24, uTF8String);

    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  *&buffer->var0 = 257;
  *(&buffer->var1 + 1) = SASerializableIndexForPointerFromSerializationDictionary(selfCopy[3], dictionary);
  *(&buffer->var2 + 2) = selfCopy[4];
  loadedChanges = [selfCopy loadedChanges];
  if ([loadedChanges count] >= 0xFFFFFFFF)
  {
LABEL_9:
    v25 = *__error();
    v26 = _sa_logt();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      uTF8String = [selfCopy debugDescription];
      buffer = [uTF8String UTF8String];
      v27 = [loadedChanges count];
      *buf = 136315394;
      bufferCopy3 = buffer;
      v60 = 2048;
      sizeInBytesForSerializedVersion = v27;
      _os_log_error_impl(&dword_1E0E2F000, v26, OS_LOG_TYPE_ERROR, "%s has %lu loaded changes", buf, 0x16u);
    }

    *__error() = v25;
    selfCopy = [selfCopy debugDescription];
    uTF8String2 = [selfCopy UTF8String];
    [loadedChanges count];
    _SASetCrashLogMessage(203, "%s has %lu loaded changes", v29, v30, v31, v32, v33, v34, uTF8String2);

    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  uTF8String = [selfCopy executions];
  if ([uTF8String count] >= 0xFFFFFFFF)
  {
LABEL_12:
    v11 = *__error();
    v35 = _sa_logt();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      loadedChanges = [selfCopy debugDescription];
      buffer = [loadedChanges UTF8String];
      v36 = [uTF8String count];
      *buf = 136315394;
      bufferCopy3 = buffer;
      v60 = 2048;
      sizeInBytesForSerializedVersion = v36;
      _os_log_error_impl(&dword_1E0E2F000, v35, OS_LOG_TYPE_ERROR, "%s has %lu executions", buf, 0x16u);
    }

    *__error() = v11;
    selfCopy = [selfCopy debugDescription];
    lengthCopy = [selfCopy UTF8String];
    [uTF8String count];
    _SASetCrashLogMessage(206, "%s has %lu executions", v37, v38, v39, v40, v41, v42, lengthCopy);

    _os_crash();
    __break(1u);
LABEL_15:
    v57 = *__error();
    v43 = _sa_logt();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = [selfCopy debugDescription];
      uTF8String3 = [v44 UTF8String];
      v45 = [loadedChanges count];
      v46 = [uTF8String count];
      v47 = [uTF8String count];
      *buf = 136316162;
      bufferCopy3 = uTF8String3;
      v60 = 2048;
      sizeInBytesForSerializedVersion = v45;
      v62 = 2048;
      v63 = v46;
      v64 = 2048;
      v65 = v11 + 8 * v47 - buffer;
      v66 = 2048;
      v67 = lengthCopy;
      _os_log_error_impl(&dword_1E0E2F000, v43, OS_LOG_TYPE_ERROR, "%s: after serializing (with %lu loadedChanges, %lu executions), ended with length %ld, should be %lu", buf, 0x34u);
    }

    *__error() = v57;
    v48 = [selfCopy debugDescription];
    uTF8String4 = [v48 UTF8String];
    [loadedChanges count];
    [uTF8String count];
    [uTF8String count];
    _SASetCrashLogMessage(212, "%s: after serializing (with %lu loadedChanges, %lu executions), ended with length %ld, should be %lu", v50, v51, v52, v53, v54, v55, uTF8String4);

    _os_crash();
    __break(1u);
  }

  v11 = &buffer->var4 + 8 * [loadedChanges count] + 2;
  if (v11 + 8 * [uTF8String count] - buffer != lengthCopy)
  {
    goto LABEL_15;
  }

  v12 = [loadedChanges count];
  *(&buffer->var3 + 2) = v12;
  SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(&buffer->var4 + 2, v12, loadedChanges, dictionary);
  v13 = [uTF8String count];
  *(&buffer->var3 + 6) = v13;
  SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(v11, v13, uTF8String, dictionary);

  v14 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  v28 = *MEMORY[0x1E69E9840];
  classDictionaryKey = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, self, classDictionaryKey);

  if (v6)
  {
    [(NSString *)self->_identifier addSelfToSerializationDictionary:dictionary];
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

          [*(*(&v22 + 1) + 8 * v11++) addSelfToSerializationDictionary:dictionary];
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

          [*(*(&v18 + 1) + 8 * v16++) addSelfToSerializationDictionary:{dictionary, v18}];
        }

        while (v14 != v16);
        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v14);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  *&v31[5] = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_11;
  }

  if (length <= 0x19)
  {
    v8 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v30 = 2048;
      *v31 = 26;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAModel struct %lu", buf, 0x16u);
    }

    *__error() = v8;
    _SASetCrashLogMessage(242, "bufferLength %lu < serialized SAModel struct %lu", v9, v10, v11, v12, v13, v14, length);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  bufferCopy = buffer;
  if (8 * (*(buffer + 22) + *(buffer + 18)) + 26 > length)
  {
LABEL_8:
    v15 = *__error();
    v16 = _sa_logt();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(bufferCopy + 18);
      v18 = *(bufferCopy + 22);
      *buf = 134218496;
      lengthCopy2 = length;
      v30 = 1024;
      *v31 = v17;
      v31[2] = 1024;
      *&v31[3] = v18;
      _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAModel struct with %u loaded changes and %u executions", buf, 0x18u);
    }

    *__error() = v15;
    v26 = *(bufferCopy + 18);
    v27 = *(bufferCopy + 22);
    _SASetCrashLogMessage(243, "bufferLength %lu < serialized SAModel struct with %u loaded changes and %u executions", v19, v20, v21, v22, v23, v24, length);
    _os_crash();
    __break(1u);
LABEL_11:
    v25 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAModel version" userInfo:0];
    objc_exception_throw(v25);
  }

  result = objc_alloc_init(SAModel);
  *(result + 4) = *(bufferCopy + 10);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  *&v48[5] = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_13;
  }

  if (length <= 0x19)
  {
    v25 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v47 = 2048;
      *v48 = 26;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAModel struct %lu", buf, 0x16u);
    }

    *__error() = v25;
    _SASetCrashLogMessage(256, "bufferLength %lu < serialized SAModel struct %lu", v26, v27, v28, v29, v30, v31, length);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  bufferCopy = buffer;
  if (8 * (*(buffer + 22) + *(buffer + 18)) + 26 > length)
  {
LABEL_10:
    v32 = *__error();
    v33 = _sa_logt();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = *(bufferCopy + 18);
      v35 = *(bufferCopy + 22);
      *buf = 134218496;
      lengthCopy2 = length;
      v47 = 1024;
      *v48 = v34;
      v48[2] = 1024;
      *&v48[3] = v35;
      _os_log_error_impl(&dword_1E0E2F000, v33, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAModel struct with %u loaded changes and %u executions", buf, 0x18u);
    }

    *__error() = v32;
    v43 = *(bufferCopy + 18);
    v44 = *(bufferCopy + 22);
    _SASetCrashLogMessage(257, "bufferLength %lu < serialized SAModel struct with %u loaded changes and %u executions", v36, v37, v38, v39, v40, v41, length);
    _os_crash();
    __break(1u);
LABEL_13:
    v42 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAModel version" userInfo:0];
    objc_exception_throw(v42);
  }

  v11 = *(buffer + 2);
  v12 = objc_opt_class();
  v13 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v11, dictionary, bufferDictionary, v12);
  identifier = self->_identifier;
  self->_identifier = v13;

  v15 = *(bufferCopy + 18);
  v16 = objc_opt_class();
  v17 = SASerializableNewMutableArrayFromIndexList(bufferCopy + 26, v15, dictionary, bufferDictionary, v16);
  loadedChanges = self->_loadedChanges;
  self->_loadedChanges = v17;

  v19 = bufferCopy + 26 + 8 * *(bufferCopy + 18);
  v20 = *(bufferCopy + 22);
  v21 = objc_opt_class();
  v22 = SASerializableNewMutableArrayFromIndexList(v19, v20, dictionary, bufferDictionary, v21);
  executions = self->_executions;
  self->_executions = v22;
  v24 = *MEMORY[0x1E69E9840];
}

@end