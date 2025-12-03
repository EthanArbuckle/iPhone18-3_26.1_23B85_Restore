@interface SABootInfo
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (NSString)debugDescription;
- (id)initWithUUID:(void *)d wallTime:(void *)time bootArgs:(void *)args kernelVersion:(void *)version osProductVersion:(void *)productVersion osProductVersionExtra:(double)extra osBuildVersion:;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
- (void)writeJSONDictionaryEntriesToStream:(id)stream;
@end

@implementation SABootInfo

- (id)initWithUUID:(void *)d wallTime:(void *)time bootArgs:(void *)args kernelVersion:(void *)version osProductVersion:(void *)productVersion osProductVersionExtra:(double)extra osBuildVersion:
{
  if (!self)
  {
    return 0;
  }

  v18.receiver = self;
  v18.super_class = SABootInfo;
  v15 = objc_msgSendSuper2(&v18, sel_init);
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(v15 + 1, a2);
    *(v16 + 2) = extra;
    objc_storeStrong(v16 + 3, d);
    objc_storeStrong(v16 + 4, time);
    objc_storeStrong(v16 + 5, args);
    objc_storeStrong(v16 + 6, version);
    objc_storeStrong(v16 + 7, productVersion);
  }

  return v16;
}

void __32__SABootInfo_initForCurrentBoot__block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  objc_storeStrong((*(a1[4] + 8) + 40), a2);
  objc_storeStrong((*(a1[5] + 8) + 40), a3);
  v7 = (*(a1[6] + 8) + 40);

  objc_storeStrong(v7, a4);
}

- (NSString)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  v5.i64[0] = *&self->_wallTimeAtMachAbsZero;
  v6 = _CopyStringForTime(0, v5);
  v7 = [v3 initWithFormat:@"%@ %@ %@ (%@) build %@, kernel %@, bootargs %@", uUIDString, v6, self->_osProductVersion, self->_osProductVersionExtra, self->_osBuildVersion, self->_kernelVersion, self->_bootArgs];

  return v7;
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v28 = *MEMORY[0x1E69E9840];
  if ([(SABootInfo *)self sizeInBytesForSerializedVersion]!= length)
  {
    v11 = *__error();
    v12 = _sa_logt();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [(SABootInfo *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v13 UTF8String];
      v24 = 2048;
      sizeInBytesForSerializedVersion = [(SABootInfo *)self sizeInBytesForSerializedVersion];
      v26 = 2048;
      lengthCopy = length;
      _os_log_error_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v11;
    v14 = [(SABootInfo *)self debugDescription];
    uTF8String2 = [v14 UTF8String];
    [(SABootInfo *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(13198, "%s: size %lu != buffer length %lu", v16, v17, v18, v19, v20, v21, uTF8String2);

    _os_crash();
    __break(1u);
  }

  *&buffer->var0 = 257;
  *(&buffer->var1 + 1) = SASerializableIndexForPointerFromSerializationDictionary(self->_uuid, dictionary);
  *(&buffer->var2 + 2) = *&self->_wallTimeAtMachAbsZero;
  *(&buffer->var3 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_kernelVersion, dictionary);
  *(&buffer->var4 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_osProductVersion, dictionary);
  *(&buffer->var5 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_osProductVersionExtra, dictionary);
  *(&buffer->var6 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_osBuildVersion, dictionary);
  *(&buffer->var7 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_bootArgs, dictionary);
  v9 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  classDictionaryKey = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, self, classDictionaryKey);

  if (v6)
  {
    [(NSUUID *)self->_uuid addSelfToSerializationDictionary:dictionary];
    [(NSString *)self->_kernelVersion addSelfToSerializationDictionary:dictionary];
    [(NSString *)self->_osProductVersion addSelfToSerializationDictionary:dictionary];
    [(NSString *)self->_osProductVersionExtra addSelfToSerializationDictionary:dictionary];
    [(NSString *)self->_osBuildVersion addSelfToSerializationDictionary:dictionary];
    bootArgs = self->_bootArgs;

    [(NSString *)bootArgs addSelfToSerializationDictionary:dictionary];
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  v21 = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_7;
  }

  if (length <= 0x39)
  {
    v8 = *__error();
    v9 = _sa_logt();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy = length;
      v19 = 2048;
      v20 = 58;
      _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SABootInfo struct %lu", buf, 0x16u);
    }

    *__error() = v8;
    _SASetCrashLogMessage(13232, "bufferLength %lu < serialized SABootInfo struct %lu", v10, v11, v12, v13, v14, v15, length);
    _os_crash();
    __break(1u);
LABEL_7:
    v16 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SABootInfo version" userInfo:0];
    objc_exception_throw(v16);
  }

  result = objc_alloc_init(SABootInfo);
  *(result + 2) = *(buffer + 10);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  v49 = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_9;
  }

  if (length <= 0x39)
  {
    v36 = *__error();
    v37 = _sa_logt();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy = length;
      v47 = 2048;
      v48 = 58;
      _os_log_error_impl(&dword_1E0E2F000, v37, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SABootInfo struct %lu", buf, 0x16u);
    }

    *__error() = v36;
    _SASetCrashLogMessage(13245, "bufferLength %lu < serialized SABootInfo struct %lu", v38, v39, v40, v41, v42, v43, length);
    _os_crash();
    __break(1u);
LABEL_9:
    v44 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SABootInfo version" userInfo:0];
    objc_exception_throw(v44);
  }

  v11 = *(buffer + 2);
  v12 = objc_opt_class();
  v13 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v11, dictionary, bufferDictionary, v12);
  uuid = self->_uuid;
  self->_uuid = v13;

  v15 = *(buffer + 18);
  v16 = objc_opt_class();
  v17 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v15, dictionary, bufferDictionary, v16, 0);
  kernelVersion = self->_kernelVersion;
  self->_kernelVersion = v17;

  v19 = *(buffer + 26);
  v20 = objc_opt_class();
  v21 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v19, dictionary, bufferDictionary, v20, 0);
  osProductVersion = self->_osProductVersion;
  self->_osProductVersion = v21;

  v23 = *(buffer + 34);
  v24 = objc_opt_class();
  v25 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v23, dictionary, bufferDictionary, v24, 0);
  osProductVersionExtra = self->_osProductVersionExtra;
  self->_osProductVersionExtra = v25;

  v27 = *(buffer + 42);
  v28 = objc_opt_class();
  v29 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v27, dictionary, bufferDictionary, v28, 0);
  osBuildVersion = self->_osBuildVersion;
  self->_osBuildVersion = v29;

  v31 = *(buffer + 50);
  v32 = objc_opt_class();
  v33 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v31, dictionary, bufferDictionary, v32, 0);
  bootArgs = self->_bootArgs;
  self->_bootArgs = v33;
  v35 = *MEMORY[0x1E69E9840];
}

- (void)writeJSONDictionaryEntriesToStream:(id)stream
{
  uuid = [(SABootInfo *)self uuid];
  SAJSONWriteDictionaryFirstEntry(stream, @"uuid", uuid);

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_wallTimeAtMachAbsZero];
  SAJSONWriteDictionaryEntry(stream, @"wallTimeAtMachAbsZero", v6);

  kernelVersion = self->_kernelVersion;
  if (kernelVersion)
  {
    SAJSONWriteDictionaryEntry(stream, @"kernelVersion", kernelVersion);
  }

  osProductVersion = self->_osProductVersion;
  if (osProductVersion)
  {
    SAJSONWriteDictionaryEntry(stream, @"osProductVersion", osProductVersion);
  }

  osProductVersionExtra = self->_osProductVersionExtra;
  if (osProductVersionExtra)
  {
    SAJSONWriteDictionaryEntry(stream, @"osProductVersionExtra", osProductVersionExtra);
  }

  osBuildVersion = self->_osBuildVersion;
  if (osBuildVersion)
  {
    SAJSONWriteDictionaryEntry(stream, @"osBuildVersion", osBuildVersion);
  }

  bootArgs = self->_bootArgs;
  if (bootArgs)
  {

    SAJSONWriteDictionaryEntry(stream, @"bootArgs", bootArgs);
  }
}

@end