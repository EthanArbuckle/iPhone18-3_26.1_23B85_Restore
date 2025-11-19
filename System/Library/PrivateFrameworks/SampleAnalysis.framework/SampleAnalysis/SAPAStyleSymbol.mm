@interface SAPAStyleSymbol
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4;
- (BOOL)addSelfToBuffer:(void *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5;
- (unint64_t)sizeInBytesForSerializedVersion;
- (void)addSelfToSerializationDictionary:(id)a3;
- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6;
@end

@implementation SAPAStyleSymbol

- (BOOL)addSelfToBuffer:(void *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5
{
  v5 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleSymbol" userInfo:0];
  objc_exception_throw(v5);
}

- (void)addSelfToSerializationDictionary:(id)a3
{
  v3 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleSymbol" userInfo:0];
  objc_exception_throw(v3);
}

- (unint64_t)sizeInBytesForSerializedVersion
{
  v2 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleSymbol" userInfo:0];
  objc_exception_throw(v2);
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4
{
  if (*a3 >> 1 != 1278945817)
  {
    v6 = [SAException exceptionWithName:@"Decoding failure" reason:@"Bad PASymbol magic" userInfo:0];
    objc_exception_throw(v6);
  }

  result = objc_alloc_init(SAPAStyleSymbol);
  *(result + 3) = *(a3 + 3);
  *(result + 2) = *(a3 + 4);
  return result;
}

- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6
{
  if (*a3 >> 1 != 1278945817)
  {
    v18 = [SAException exceptionWithName:@"Decoding failure" reason:@"Bad PASymbol magic" userInfo:0, a6];
    objc_exception_throw(v18);
  }

  v10 = *(a3 + 1);
  v11 = objc_opt_class();
  v12 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v10, a5, a6, v11, 0);
  name = self->_name;
  self->_name = v12;

  if (*a3 > 0x98765432uLL)
  {
    v14 = *(a3 + 5);
    if (v14)
    {
      v15 = objc_opt_class();
      v16 = SASerializableNewMutableArrayFromIndexList(a3 + 48, v14, a5, a6, v15);
      sourceInfos = self->_sourceInfos;
      self->_sourceInfos = v16;
    }
  }
}

@end