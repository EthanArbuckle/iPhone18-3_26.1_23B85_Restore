@interface SAPAStyleSymbol
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
- (BOOL)addSelfToBuffer:(void *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (unint64_t)sizeInBytesForSerializedVersion;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
@end

@implementation SAPAStyleSymbol

- (BOOL)addSelfToBuffer:(void *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v5 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleSymbol" userInfo:0];
  objc_exception_throw(v5);
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  v3 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleSymbol" userInfo:0];
  objc_exception_throw(v3);
}

- (unint64_t)sizeInBytesForSerializedVersion
{
  v2 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleSymbol" userInfo:0];
  objc_exception_throw(v2);
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  if (*buffer >> 1 != 1278945817)
  {
    v6 = [SAException exceptionWithName:@"Decoding failure" reason:@"Bad PASymbol magic" userInfo:0];
    objc_exception_throw(v6);
  }

  result = objc_alloc_init(SAPAStyleSymbol);
  *(result + 3) = *(buffer + 3);
  *(result + 2) = *(buffer + 4);
  return result;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  if (*buffer >> 1 != 1278945817)
  {
    bufferDictionary = [SAException exceptionWithName:@"Decoding failure" reason:@"Bad PASymbol magic" userInfo:0, bufferDictionary];
    objc_exception_throw(bufferDictionary);
  }

  v10 = *(buffer + 1);
  v11 = objc_opt_class();
  v12 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v10, dictionary, bufferDictionary, v11, 0);
  name = self->_name;
  self->_name = v12;

  if (*buffer > 0x98765432uLL)
  {
    v14 = *(buffer + 5);
    if (v14)
    {
      v15 = objc_opt_class();
      v16 = SASerializableNewMutableArrayFromIndexList(buffer + 48, v14, dictionary, bufferDictionary, v15);
      sourceInfos = self->_sourceInfos;
      self->_sourceInfos = v16;
    }
  }
}

@end