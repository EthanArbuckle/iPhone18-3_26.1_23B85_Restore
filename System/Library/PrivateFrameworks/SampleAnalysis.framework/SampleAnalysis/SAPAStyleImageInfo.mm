@interface SAPAStyleImageInfo
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4;
- (BOOL)addSelfToBuffer:(void *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5;
- (unint64_t)sizeInBytesForSerializedVersion;
- (void)addSelfToSerializationDictionary:(id)a3;
- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6;
@end

@implementation SAPAStyleImageInfo

- (BOOL)addSelfToBuffer:(void *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5
{
  v5 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleImageInfo" userInfo:0];
  objc_exception_throw(v5);
}

- (void)addSelfToSerializationDictionary:(id)a3
{
  v3 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleImageInfo" userInfo:0];
  objc_exception_throw(v3);
}

- (unint64_t)sizeInBytesForSerializedVersion
{
  v2 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleImageInfo" userInfo:0];
  objc_exception_throw(v2);
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4
{
  if (!a3)
  {
    v9 = @"NULL buffer for SAPAStyleImageInfo";
    goto LABEL_6;
  }

  if (*a3 != 2271560481)
  {
    v9 = @"Bad magic for SAPAStyleImageInfo";
LABEL_6:
    v10 = [SAException exceptionWithName:@"Decoding failure" reason:v9 userInfo:0];
    objc_exception_throw(v10);
  }

  v5 = objc_alloc_init(SAPAStyleImageInfo);
  v6 = [SABinaryLoadInfo binaryLoadInfoWithoutReferencesFromPAStyleSerializedImageInfo:a3];
  binaryLoadInfo = v5->_binaryLoadInfo;
  v5->_binaryLoadInfo = v6;

  return v5;
}

- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6
{
  if (!a5 || !a6)
  {
    v7 = *__error();
    v8 = _sa_logt();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_ERROR, "Invalid args", buf, 2u);
    }

    goto LABEL_15;
  }

  if (!a3)
  {
    v7 = *__error();
    v8 = _sa_logt();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 0;
      v9 = "WARNING: Passed NULL serializedImageInfo";
      v10 = &v12;
LABEL_14:
      _os_log_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
    }

LABEL_15:

    *__error() = v7;
    return;
  }

  if (*a3 != 2271560481)
  {
    v7 = *__error();
    v8 = _sa_logt();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v9 = "WARNING: Bad magic value";
      v10 = &v11;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  binaryLoadInfo = self->_binaryLoadInfo;

  [(SABinaryLoadInfo *)binaryLoadInfo populateReferencesUsingPAStyleSerializedImageInfo:a3 andDeserializationDictionary:a5 andDataBufferDictionary:a6];
}

@end