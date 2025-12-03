@interface SAExclaveCallstack
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (NSString)debugDescription;
- (id)initWithExclave:(void *)exclave leafFrame:;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
@end

@implementation SAExclaveCallstack

- (id)initWithExclave:(void *)exclave leafFrame:
{
  if (!self)
  {
    return 0;
  }

  v8.receiver = self;
  v8.super_class = SAExclaveCallstack;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(v5 + 1, a2);
    objc_storeStrong(v6 + 2, exclave);
  }

  return v6;
}

- (NSString)debugDescription
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (self)
  {
    Property = objc_getProperty(self, v3, 8, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = [Property debugDescription];
  if (self)
  {
    v8 = objc_getProperty(self, v6, 16, 1);
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 debugDescription];
  v10 = [v4 initWithFormat:@"%@ callstack with leaf %@", v7, v9];

  return v10;
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v32 = *MEMORY[0x1E69E9840];
  if ([(SAExclaveCallstack *)self sizeInBytesForSerializedVersion]== length)
  {
    *&buffer->var0 = 257;
    if (self)
    {
      Property = objc_getProperty(self, v9, 8, 1);
      *(&buffer->var1 + 1) = SASerializableIndexForPointerFromSerializationDictionary(Property, dictionary);
      v12 = objc_getProperty(self, v11, 16, 1);
      goto LABEL_4;
    }
  }

  else
  {
    v16 = *__error();
    v17 = _sa_logt();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [(SAExclaveCallstack *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v18 UTF8String];
      v28 = 2048;
      sizeInBytesForSerializedVersion = [(SAExclaveCallstack *)self sizeInBytesForSerializedVersion];
      v30 = 2048;
      lengthCopy = length;
      _os_log_error_impl(&dword_1E0E2F000, v17, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v16;
    buffer = [(SAExclaveCallstack *)self debugDescription];
    dictionary = [($93CF9441C607C7AF89C984194EE6CD4E *)buffer UTF8String];
    [(SAExclaveCallstack *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(499, "%s: size %lu != buffer length %lu", v19, v20, v21, v22, v23, v24, dictionary);

    _os_crash();
    __break(1u);
  }

  v25 = SASerializableIndexForPointerFromSerializationDictionary(0, dictionary);
  v12 = 0;
  *(&buffer->var1 + 1) = v25;
LABEL_4:
  *(&buffer->var2 + 2) = SASerializableIndexForPointerFromSerializationDictionary(v12, dictionary);
  if (self)
  {
    *(&buffer->var3 + 2) = self->_threadNumericID;
    invocationID = self->_invocationID;
  }

  else
  {
    invocationID = 0;
    *(&buffer->var3 + 2) = 0;
  }

  *(&buffer->var4 + 2) = invocationID;
  v14 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  classDictionaryKey = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, self, classDictionaryKey);

  if (v6)
  {
    if (self)
    {
      [objc_getProperty(self v7];
      Property = objc_getProperty(self, v8, 16, 1);
    }

    else
    {
      [0 addSelfToSerializationDictionary:dictionary];
      Property = 0;
    }

    [Property addSelfToSerializationDictionary:dictionary];
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  v21 = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_7;
  }

  if (length <= 0x21)
  {
    v8 = *__error();
    v9 = _sa_logt();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy = length;
      v19 = 2048;
      v20 = 34;
      _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAExclaveCallstack struct %lu", buf, 0x16u);
    }

    *__error() = v8;
    _SASetCrashLogMessage(526, "bufferLength %lu < serialized SAExclaveCallstack struct %lu", v10, v11, v12, v13, v14, v15, length);
    _os_crash();
    __break(1u);
LABEL_7:
    v16 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAExclaveCallstack version" userInfo:0];
    objc_exception_throw(v16);
  }

  result = objc_alloc_init(SAExclaveCallstack);
  *(result + 3) = *(buffer + 18);
  *(result + 4) = *(buffer + 26);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  v33 = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_9;
  }

  if (length <= 0x21)
  {
    v20 = *__error();
    v21 = _sa_logt();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy = length;
      v31 = 2048;
      v32 = 34;
      _os_log_error_impl(&dword_1E0E2F000, v21, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAExclaveCallstack struct %lu", buf, 0x16u);
    }

    *__error() = v20;
    _SASetCrashLogMessage(541, "bufferLength %lu < serialized SAExclaveCallstack struct %lu", v22, v23, v24, v25, v26, v27, length);
    _os_crash();
    __break(1u);
LABEL_9:
    v28 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAExclaveCallstack version" userInfo:0];
    objc_exception_throw(v28);
  }

  v11 = *(buffer + 2);
  v12 = objc_opt_class();
  v13 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v11, dictionary, bufferDictionary, v12);
  exclave = self->_exclave;
  self->_exclave = v13;

  v15 = *(buffer + 10);
  v16 = objc_opt_class();
  v17 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v15, dictionary, bufferDictionary, v16, 0);
  leafFrame = self->_leafFrame;
  self->_leafFrame = v17;
  v19 = *MEMORY[0x1E69E9840];
}

@end