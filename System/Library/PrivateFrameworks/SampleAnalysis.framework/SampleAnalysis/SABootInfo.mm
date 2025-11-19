@interface SABootInfo
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4;
- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5;
- (NSString)debugDescription;
- (id)initWithUUID:(void *)a3 wallTime:(void *)a4 bootArgs:(void *)a5 kernelVersion:(void *)a6 osProductVersion:(void *)a7 osProductVersionExtra:(double)a8 osBuildVersion:;
- (void)addSelfToSerializationDictionary:(id)a3;
- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6;
- (void)writeJSONDictionaryEntriesToStream:(id)a3;
@end

@implementation SABootInfo

- (id)initWithUUID:(void *)a3 wallTime:(void *)a4 bootArgs:(void *)a5 kernelVersion:(void *)a6 osProductVersion:(void *)a7 osProductVersionExtra:(double)a8 osBuildVersion:
{
  if (!a1)
  {
    return 0;
  }

  v18.receiver = a1;
  v18.super_class = SABootInfo;
  v15 = objc_msgSendSuper2(&v18, sel_init);
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(v15 + 1, a2);
    *(v16 + 2) = a8;
    objc_storeStrong(v16 + 3, a3);
    objc_storeStrong(v16 + 4, a4);
    objc_storeStrong(v16 + 5, a5);
    objc_storeStrong(v16 + 6, a6);
    objc_storeStrong(v16 + 7, a7);
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
  v4 = [(NSUUID *)self->_uuid UUIDString];
  v5.i64[0] = *&self->_wallTimeAtMachAbsZero;
  v6 = _CopyStringForTime(0, v5);
  v7 = [v3 initWithFormat:@"%@ %@ %@ (%@) build %@, kernel %@, bootargs %@", v4, v6, self->_osProductVersion, self->_osProductVersionExtra, self->_osBuildVersion, self->_kernelVersion, self->_bootArgs];

  return v7;
}

- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  if ([(SABootInfo *)self sizeInBytesForSerializedVersion]!= a4)
  {
    v11 = *__error();
    v12 = _sa_logt();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [(SABootInfo *)self debugDescription];
      *buf = 136315650;
      v23 = [v13 UTF8String];
      v24 = 2048;
      v25 = [(SABootInfo *)self sizeInBytesForSerializedVersion];
      v26 = 2048;
      v27 = a4;
      _os_log_error_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v11;
    v14 = [(SABootInfo *)self debugDescription];
    v15 = [v14 UTF8String];
    [(SABootInfo *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(13198, "%s: size %lu != buffer length %lu", v16, v17, v18, v19, v20, v21, v15);

    _os_crash();
    __break(1u);
  }

  *&a3->var0 = 257;
  *(&a3->var1 + 1) = SASerializableIndexForPointerFromSerializationDictionary(self->_uuid, a5);
  *(&a3->var2 + 2) = *&self->_wallTimeAtMachAbsZero;
  *(&a3->var3 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_kernelVersion, a5);
  *(&a3->var4 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_osProductVersion, a5);
  *(&a3->var5 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_osProductVersionExtra, a5);
  *(&a3->var6 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_osBuildVersion, a5);
  *(&a3->var7 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_bootArgs, a5);
  v9 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)a3
{
  v5 = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(a3, self, v5);

  if (v6)
  {
    [(NSUUID *)self->_uuid addSelfToSerializationDictionary:a3];
    [(NSString *)self->_kernelVersion addSelfToSerializationDictionary:a3];
    [(NSString *)self->_osProductVersion addSelfToSerializationDictionary:a3];
    [(NSString *)self->_osProductVersionExtra addSelfToSerializationDictionary:a3];
    [(NSString *)self->_osBuildVersion addSelfToSerializationDictionary:a3];
    bootArgs = self->_bootArgs;

    [(NSString *)bootArgs addSelfToSerializationDictionary:a3];
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4
{
  v21 = *MEMORY[0x1E69E9840];
  if (*a3 >= 2u)
  {
    goto LABEL_7;
  }

  if (a4 <= 0x39)
  {
    v8 = *__error();
    v9 = _sa_logt();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v18 = a4;
      v19 = 2048;
      v20 = 58;
      _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SABootInfo struct %lu", buf, 0x16u);
    }

    *__error() = v8;
    _SASetCrashLogMessage(13232, "bufferLength %lu < serialized SABootInfo struct %lu", v10, v11, v12, v13, v14, v15, a4);
    _os_crash();
    __break(1u);
LABEL_7:
    v16 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SABootInfo version" userInfo:0];
    objc_exception_throw(v16);
  }

  result = objc_alloc_init(SABootInfo);
  *(result + 2) = *(a3 + 10);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6
{
  v49 = *MEMORY[0x1E69E9840];
  if (*a3 >= 2u)
  {
    goto LABEL_9;
  }

  if (a4 <= 0x39)
  {
    v36 = *__error();
    v37 = _sa_logt();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v46 = a4;
      v47 = 2048;
      v48 = 58;
      _os_log_error_impl(&dword_1E0E2F000, v37, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SABootInfo struct %lu", buf, 0x16u);
    }

    *__error() = v36;
    _SASetCrashLogMessage(13245, "bufferLength %lu < serialized SABootInfo struct %lu", v38, v39, v40, v41, v42, v43, a4);
    _os_crash();
    __break(1u);
LABEL_9:
    v44 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SABootInfo version" userInfo:0];
    objc_exception_throw(v44);
  }

  v11 = *(a3 + 2);
  v12 = objc_opt_class();
  v13 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v11, a5, a6, v12);
  uuid = self->_uuid;
  self->_uuid = v13;

  v15 = *(a3 + 18);
  v16 = objc_opt_class();
  v17 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v15, a5, a6, v16, 0);
  kernelVersion = self->_kernelVersion;
  self->_kernelVersion = v17;

  v19 = *(a3 + 26);
  v20 = objc_opt_class();
  v21 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v19, a5, a6, v20, 0);
  osProductVersion = self->_osProductVersion;
  self->_osProductVersion = v21;

  v23 = *(a3 + 34);
  v24 = objc_opt_class();
  v25 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v23, a5, a6, v24, 0);
  osProductVersionExtra = self->_osProductVersionExtra;
  self->_osProductVersionExtra = v25;

  v27 = *(a3 + 42);
  v28 = objc_opt_class();
  v29 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v27, a5, a6, v28, 0);
  osBuildVersion = self->_osBuildVersion;
  self->_osBuildVersion = v29;

  v31 = *(a3 + 50);
  v32 = objc_opt_class();
  v33 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v31, a5, a6, v32, 0);
  bootArgs = self->_bootArgs;
  self->_bootArgs = v33;
  v35 = *MEMORY[0x1E69E9840];
}

- (void)writeJSONDictionaryEntriesToStream:(id)a3
{
  v5 = [(SABootInfo *)self uuid];
  SAJSONWriteDictionaryFirstEntry(a3, @"uuid", v5);

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_wallTimeAtMachAbsZero];
  SAJSONWriteDictionaryEntry(a3, @"wallTimeAtMachAbsZero", v6);

  kernelVersion = self->_kernelVersion;
  if (kernelVersion)
  {
    SAJSONWriteDictionaryEntry(a3, @"kernelVersion", kernelVersion);
  }

  osProductVersion = self->_osProductVersion;
  if (osProductVersion)
  {
    SAJSONWriteDictionaryEntry(a3, @"osProductVersion", osProductVersion);
  }

  osProductVersionExtra = self->_osProductVersionExtra;
  if (osProductVersionExtra)
  {
    SAJSONWriteDictionaryEntry(a3, @"osProductVersionExtra", osProductVersionExtra);
  }

  osBuildVersion = self->_osBuildVersion;
  if (osBuildVersion)
  {
    SAJSONWriteDictionaryEntry(a3, @"osBuildVersion", osBuildVersion);
  }

  bootArgs = self->_bootArgs;
  if (bootArgs)
  {

    SAJSONWriteDictionaryEntry(a3, @"bootArgs", bootArgs);
  }
}

@end