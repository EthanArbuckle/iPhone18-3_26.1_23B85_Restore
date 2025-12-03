@interface SAPAStyleImageInfo
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
- (BOOL)addSelfToBuffer:(void *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (unint64_t)sizeInBytesForSerializedVersion;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
@end

@implementation SAPAStyleImageInfo

- (BOOL)addSelfToBuffer:(void *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v5 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleImageInfo" userInfo:0];
  objc_exception_throw(v5);
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  v3 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleImageInfo" userInfo:0];
  objc_exception_throw(v3);
}

- (unint64_t)sizeInBytesForSerializedVersion
{
  v2 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleImageInfo" userInfo:0];
  objc_exception_throw(v2);
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  if (!buffer)
  {
    v9 = @"NULL buffer for SAPAStyleImageInfo";
    goto LABEL_6;
  }

  if (*buffer != 2271560481)
  {
    v9 = @"Bad magic for SAPAStyleImageInfo";
LABEL_6:
    v10 = [SAException exceptionWithName:@"Decoding failure" reason:v9 userInfo:0];
    objc_exception_throw(v10);
  }

  v5 = objc_alloc_init(SAPAStyleImageInfo);
  v6 = [SABinaryLoadInfo binaryLoadInfoWithoutReferencesFromPAStyleSerializedImageInfo:buffer];
  binaryLoadInfo = v5->_binaryLoadInfo;
  v5->_binaryLoadInfo = v6;

  return v5;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  if (!dictionary || !bufferDictionary)
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

  if (!buffer)
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

  if (*buffer != 2271560481)
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

  [(SABinaryLoadInfo *)binaryLoadInfo populateReferencesUsingPAStyleSerializedImageInfo:buffer andDeserializationDictionary:dictionary andDataBufferDictionary:bufferDictionary];
}

@end