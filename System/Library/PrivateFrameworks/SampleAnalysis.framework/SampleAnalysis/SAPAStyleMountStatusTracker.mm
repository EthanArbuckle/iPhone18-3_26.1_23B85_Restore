@interface SAPAStyleMountStatusTracker
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
- (BOOL)addSelfToBuffer:(void *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (unint64_t)sizeInBytesForSerializedVersion;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
@end

@implementation SAPAStyleMountStatusTracker

- (BOOL)addSelfToBuffer:(void *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v5 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleMountStatusTracker" userInfo:0];
  objc_exception_throw(v5);
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  v3 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleMountStatusTracker" userInfo:0];
  objc_exception_throw(v3);
}

- (unint64_t)sizeInBytesForSerializedVersion
{
  v2 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleMountStatusTracker" userInfo:0];
  objc_exception_throw(v2);
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  if (*buffer != 4027431597)
  {
    v8 = [SAException exceptionWithName:@"Decoding failure" reason:@"Bad PAMountStatusTracker magic" userInfo:0];
    objc_exception_throw(v8);
  }

  v4 = objc_alloc_init(SAPAStyleMountStatusTracker);
  v5 = objc_alloc_init(SAMountStatusTracker);
  tracker = v4->_tracker;
  v4->_tracker = v5;

  return v4;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  if (*buffer != 4027431597)
  {
    v9 = [SAException exceptionWithName:@"Decoding failure" reason:@"Bad PAMountStatusTracker magic" userInfo:0, bufferDictionary, v6, v7];
    objc_exception_throw(v9);
  }

  tracker = self->_tracker;

  [(SAMountStatusTracker *)tracker populateReferencesUsingPAStyleSerializedMountStatusTracker:buffer andDeserializationDictionary:dictionary andDataBufferDictionary:bufferDictionary];
}

@end