@interface SAPAStyleSourceInfo
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
- (BOOL)addSelfToBuffer:(void *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (unint64_t)sizeInBytesForSerializedVersion;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
@end

@implementation SAPAStyleSourceInfo

- (BOOL)addSelfToBuffer:(void *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v5 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleSourceInfo" userInfo:0];
  objc_exception_throw(v5);
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  v3 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleSourceInfo" userInfo:0];
  objc_exception_throw(v3);
}

- (unint64_t)sizeInBytesForSerializedVersion
{
  v2 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleSourceInfo" userInfo:0];
  objc_exception_throw(v2);
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  if (*buffer != 1126258297)
  {
    v6 = [SAException exceptionWithName:@"Decoding failure" reason:@"Bad PASymbolSourceInfo magic" userInfo:0];
    objc_exception_throw(v6);
  }

  result = objc_alloc_init(SAPAStyleSourceInfo);
  *(result + 2) = *(buffer + 1);
  *(result + 3) = *(buffer + 2);
  *(result + 2) = *(buffer + 8);
  *(result + 3) = *(buffer + 9);
  return result;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  if (*buffer != 1126258297)
  {
    bufferDictionary = [SAException exceptionWithName:@"Decoding failure" reason:@"Bad PASymbolSourceInfo magic" userInfo:0, bufferDictionary];
    objc_exception_throw(bufferDictionary);
  }

  v9 = *(buffer + 3);
  v10 = objc_opt_class();
  v11 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v9, dictionary, bufferDictionary, v10, 0);
  filePath = self->_filePath;
  self->_filePath = v11;
}

@end