@interface SAPAStyleSourceInfo
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4;
- (BOOL)addSelfToBuffer:(void *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5;
- (unint64_t)sizeInBytesForSerializedVersion;
- (void)addSelfToSerializationDictionary:(id)a3;
- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6;
@end

@implementation SAPAStyleSourceInfo

- (BOOL)addSelfToBuffer:(void *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5
{
  v5 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleSourceInfo" userInfo:0];
  objc_exception_throw(v5);
}

- (void)addSelfToSerializationDictionary:(id)a3
{
  v3 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleSourceInfo" userInfo:0];
  objc_exception_throw(v3);
}

- (unint64_t)sizeInBytesForSerializedVersion
{
  v2 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleSourceInfo" userInfo:0];
  objc_exception_throw(v2);
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4
{
  if (*a3 != 1126258297)
  {
    v6 = [SAException exceptionWithName:@"Decoding failure" reason:@"Bad PASymbolSourceInfo magic" userInfo:0];
    objc_exception_throw(v6);
  }

  result = objc_alloc_init(SAPAStyleSourceInfo);
  *(result + 2) = *(a3 + 1);
  *(result + 3) = *(a3 + 2);
  *(result + 2) = *(a3 + 8);
  *(result + 3) = *(a3 + 9);
  return result;
}

- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6
{
  if (*a3 != 1126258297)
  {
    v13 = [SAException exceptionWithName:@"Decoding failure" reason:@"Bad PASymbolSourceInfo magic" userInfo:0, a6];
    objc_exception_throw(v13);
  }

  v9 = *(a3 + 3);
  v10 = objc_opt_class();
  v11 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v9, a5, a6, v10, 0);
  filePath = self->_filePath;
  self->_filePath = v11;
}

@end