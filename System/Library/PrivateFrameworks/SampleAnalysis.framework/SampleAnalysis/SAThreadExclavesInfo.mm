@interface SAThreadExclavesInfo
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (NSString)debugDescription;
- (uint64_t)matchesStack:(uint64_t)result;
- (unint64_t)sizeInBytesForSerializedVersion;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)initWithCallstacks:(void *)callstacks;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
- (void)reverseOrderOfCallstacks;
@end

@implementation SAThreadExclavesInfo

- (void)initWithCallstacks:(void *)callstacks
{
  if (!callstacks)
  {
    return 0;
  }

  v7.receiver = callstacks;
  v7.super_class = SAThreadExclavesInfo;
  v3 = objc_msgSendSuper2(&v7, sel_init);
  if (v3)
  {
    v4 = [a2 copy];
    v5 = v3[2];
    v3[2] = v4;
  }

  return v3;
}

- (uint64_t)matchesStack:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v5 = [*(result + 16) count];
    if (a2)
    {
      Property = objc_getProperty(a2, v4, 16, 1);
    }

    else
    {
      Property = 0;
    }

    if ([Property count] == v5)
    {
      if (!v5)
      {
        return 1;
      }

      v7 = 0;
      while (1)
      {
        v9 = [*(v3 + 16) objectAtIndexedSubscript:v7];
        v10 = a2 ? objc_getProperty(a2, v8, 16, 1) : 0;
        v12 = [v10 objectAtIndexedSubscript:v7];
        v13 = v9 ? objc_getProperty(v9, v11, 8, 1) : 0;
        v15 = v13;
        v16 = v12 ? objc_getProperty(v12, v14, 8, 1) : 0;

        if (v15 != v16)
        {
          break;
        }

        if (v9 && objc_getProperty(v9, v17, 16, 1))
        {
          if (!v12)
          {
            break;
          }

          if (!objc_getProperty(v12, v17, 16, 1))
          {
            break;
          }

          v19 = objc_getProperty(v9, v18, 16, 1);
          v21 = objc_getProperty(v12, v20, 16, 1);

          if (v19 != v21)
          {
            break;
          }
        }

        else if (v12 && objc_getProperty(v12, v17, 16, 1))
        {
          break;
        }

        if (v5 == ++v7)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

- (void)reverseOrderOfCallstacks
{
  if (self)
  {
    reverseObjectEnumerator = [*(self + 16) reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
    v3 = *(self + 16);
    *(self + 16) = allObjects;
  }
}

- (NSString)debugDescription
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (self)
  {
    Property = objc_getProperty(self, v3, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v6 = [v4 initWithFormat:@"thread exclave info with %lu callstacks", objc_msgSend(Property, "count")];

  return v6;
}

- (unint64_t)sizeInBytesForSerializedVersion
{
  if (self)
  {
    self = objc_getProperty(self, a2, 16, 1);
  }

  return 8 * [(SAThreadExclavesInfo *)self count]+ 10;
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  lengthCopy = length;
  selfCopy = self;
  v40 = *MEMORY[0x1E69E9840];
  if ([(SAThreadExclavesInfo *)self sizeInBytesForSerializedVersion]!= length)
  {
    v14 = *__error();
    v15 = _sa_logt();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [selfCopy debugDescription];
      *buf = 136315650;
      uTF8String = [v16 UTF8String];
      v36 = 2048;
      sizeInBytesForSerializedVersion = [selfCopy sizeInBytesForSerializedVersion];
      v38 = 2048;
      v39 = lengthCopy;
      _os_log_error_impl(&dword_1E0E2F000, v15, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v14;
    v17 = [selfCopy debugDescription];
    buffer = [v17 UTF8String];
    [selfCopy sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(574, "%s: size %lu != buffer length %lu", v18, v19, v20, v21, v22, v23, buffer);

    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  *&buffer->var0 = 257;
  if (!selfCopy)
  {
    goto LABEL_12;
  }

  *(&buffer->var1 + 1) = selfCopy[2];
  for (i = objc_getProperty(selfCopy, v9, 16, 1); ; i = 0)
  {
    lengthCopy = i;
    if ([lengthCopy count] < 0xFFFFFFFF)
    {
      break;
    }

LABEL_9:
    v24 = *__error();
    v25 = _sa_logt();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      buffer = [selfCopy debugDescription];
      uTF8String2 = [($54D7D07E751DBEAE55462C0B4C71138B *)buffer UTF8String];
      v27 = [lengthCopy count];
      *buf = 136315394;
      uTF8String = uTF8String2;
      v36 = 2048;
      sizeInBytesForSerializedVersion = v27;
      _os_log_error_impl(&dword_1E0E2F000, v25, OS_LOG_TYPE_ERROR, "%s: %lu callstacks", buf, 0x16u);
    }

    *__error() = v24;
    selfCopy = [selfCopy debugDescription];
    dictionary = [selfCopy UTF8String];
    [lengthCopy count];
    _SASetCrashLogMessage(582, "%s: %lu callstacks", v28, v29, v30, v31, v32, v33, dictionary);

    _os_crash();
    __break(1u);
LABEL_12:
    *(&buffer->var1 + 1) = 0;
  }

  v11 = [lengthCopy count];
  *(&buffer->var2 + 2) = v11;
  SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(&buffer->var3 + 2, v11, lengthCopy, dictionary);

  v12 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  v20 = *MEMORY[0x1E69E9840];
  classDictionaryKey = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, self, classDictionaryKey);

  if (v6)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    if (self)
    {
      Property = objc_getProperty(self, v7, 16, 1);
    }

    else
    {
      Property = 0;
    }

    v9 = Property;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v15 + 1) + 8 * v13++) addSelfToSerializationDictionary:{dictionary, v15}];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  v21 = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_7;
  }

  if (length <= 9)
  {
    v8 = *__error();
    v9 = _sa_logt();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy = length;
      v19 = 2048;
      v20 = 10;
      _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAThreadExclavesInfo struct %lu", buf, 0x16u);
    }

    *__error() = v8;
    _SASetCrashLogMessage(607, "bufferLength %lu < serialized SAThreadExclavesInfo struct %lu", v10, v11, v12, v13, v14, v15, length);
    _os_crash();
    __break(1u);
LABEL_7:
    v16 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAThreadExclavesInfo version" userInfo:0];
    objc_exception_throw(v16);
  }

  result = objc_alloc_init(SAThreadExclavesInfo);
  *(result + 2) = *(buffer + 2);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  v39 = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_13;
  }

  if (length <= 9)
  {
    v16 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v37 = 2048;
      v38 = 10;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAThreadExclavesInfo struct %lu", buf, 0x16u);
    }

    *__error() = v16;
    _SASetCrashLogMessage(621, "bufferLength %lu < serialized SAThreadExclavesInfo struct %lu", v17, v18, v19, v20, v21, v22, length);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  bufferCopy = buffer;
  v8 = *(buffer + 6);
  if (8 * v8 + 10 > length)
  {
LABEL_10:
    v23 = *__error();
    v24 = _sa_logt();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = *(bufferCopy + 6);
      *buf = 134218240;
      lengthCopy2 = length;
      v37 = 1024;
      LODWORD(v38) = v25;
      _os_log_error_impl(&dword_1E0E2F000, v24, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAThreadExclavesInfo struct with %u callstacks", buf, 0x12u);
    }

    *__error() = v23;
    v33 = *(bufferCopy + 6);
    _SASetCrashLogMessage(623, "bufferLength %lu < serialized SAThreadExclavesInfo struct with %u callstacks", v26, v27, v28, v29, v30, v31, length);
    _os_crash();
    __break(1u);
LABEL_13:
    v32 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAThreadExclavesInfo version" userInfo:0];
    objc_exception_throw(v32);
  }

  v12 = objc_opt_class();
  v34 = SASerializableNewMutableArrayFromIndexList(bufferCopy + 10, v8, dictionary, bufferDictionary, v12);
  v13 = [v34 copy];
  callstacks = self->_callstacks;
  self->_callstacks = v13;

  v15 = *MEMORY[0x1E69E9840];
}

@end