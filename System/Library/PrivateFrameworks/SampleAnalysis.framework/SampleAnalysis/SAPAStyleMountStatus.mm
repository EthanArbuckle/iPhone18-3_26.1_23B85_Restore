@interface SAPAStyleMountStatus
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4;
- (BOOL)addSelfToBuffer:(void *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5;
- (unint64_t)sizeInBytesForSerializedVersion;
- (void)addSelfToSerializationDictionary:(id)a3;
- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6;
@end

@implementation SAPAStyleMountStatus

- (BOOL)addSelfToBuffer:(void *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5
{
  v5 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleMountStatus" userInfo:0];
  objc_exception_throw(v5);
}

- (void)addSelfToSerializationDictionary:(id)a3
{
  v3 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleMountStatus" userInfo:0];
  objc_exception_throw(v3);
}

- (unint64_t)sizeInBytesForSerializedVersion
{
  v2 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleMountStatus" userInfo:0];
  objc_exception_throw(v2);
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4
{
  if (*a3 != 3735928559)
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

- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6
{
  if (*a3 != 3735928559)
  {
    v9 = [SAException exceptionWithName:@"Decoding failure" reason:@"Bad PAMountStatus magic" userInfo:0, a6, v6, v7];
    objc_exception_throw(v9);
  }

  mountStatus = self->_mountStatus;

  [(SAMountStatus *)mountStatus populateReferencesUsingPAStyleSerializedMountStatus:a3 andDeserializationDictionary:a5 andDataBufferDictionary:a6];
}

@end