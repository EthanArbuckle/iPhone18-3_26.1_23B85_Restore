@interface SAPAStyleMountStatus
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
- (BOOL)addSelfToBuffer:(void *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (unint64_t)sizeInBytesForSerializedVersion;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
@end

@implementation SAPAStyleMountStatus

- (BOOL)addSelfToBuffer:(void *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v5 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleMountStatus" userInfo:0];
  objc_exception_throw(v5);
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  v3 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleMountStatus" userInfo:0];
  objc_exception_throw(v3);
}

- (unint64_t)sizeInBytesForSerializedVersion
{
  v2 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleMountStatus" userInfo:0];
  objc_exception_throw(v2);
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  if (*buffer != 3735928559)
  {
    v8 = [SAException exceptionWithName:@"Decoding failure" reason:@"Bad PAMountStatus magic" userInfo:0];
    objc_exception_throw(v8);
  }

  v4 = objc_alloc_init(SAPAStyleMountStatus);
  v5 = objc_alloc_init(SAMountStatus);
  mountStatus = v4->_mountStatus;
  v4->_mountStatus = v5;

  return v4;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  if (*buffer != 3735928559)
  {
    v9 = [SAException exceptionWithName:@"Decoding failure" reason:@"Bad PAMountStatus magic" userInfo:0, bufferDictionary, v6, v7];
    objc_exception_throw(v9);
  }

  mountStatus = self->_mountStatus;

  [(SAMountStatus *)mountStatus populateReferencesUsingPAStyleSerializedMountStatus:buffer andDeserializationDictionary:dictionary andDataBufferDictionary:bufferDictionary];
}

@end