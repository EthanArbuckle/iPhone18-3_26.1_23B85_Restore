@interface SAPAStyleFrame
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
- (BOOL)addSelfToBuffer:(void *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (unint64_t)sizeInBytesForSerializedVersion;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
@end

@implementation SAPAStyleFrame

- (BOOL)addSelfToBuffer:(void *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v5 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleFrame" userInfo:0];
  objc_exception_throw(v5);
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  v3 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleFrame" userInfo:0];
  objc_exception_throw(v3);
}

- (unint64_t)sizeInBytesForSerializedVersion
{
  v2 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleFrame" userInfo:0];
  objc_exception_throw(v2);
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  if (!buffer)
  {
    v9 = [SAException exceptionWithName:@"Decoding failure" reason:@"Passed in NULL buffer" userInfo:0];
    objc_exception_throw(v9);
  }

  v5 = objc_alloc_init(SAPAStyleFrame);
  v6 = [SAFrame frameWithPAStyleSerializedFrame:buffer];
  frame = v5->_frame;
  v5->_frame = v6;

  return v5;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  if (!buffer)
  {
    v7 = @"Passed NULL buffer";
    goto LABEL_8;
  }

  if (*buffer != 826366246)
  {
    v7 = @"Bad PASampleFrame magic";
LABEL_8:
    bufferDictionary = [SAException exceptionWithName:@"Decoding failure" reason:v7 userInfo:0, bufferDictionary];
    objc_exception_throw(bufferDictionary);
  }

  frame = self->_frame;

  [(SAFrame *)frame populateReferencesUsingPAStyleSerializedFrame:buffer andDeserializationDictionary:dictionary andDataBufferDictionary:bufferDictionary];
}

@end