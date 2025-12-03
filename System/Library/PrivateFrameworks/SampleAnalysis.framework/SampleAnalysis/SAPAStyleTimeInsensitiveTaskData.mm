@interface SAPAStyleTimeInsensitiveTaskData
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
- (BOOL)addSelfToBuffer:(void *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (unint64_t)sizeInBytesForSerializedVersion;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
@end

@implementation SAPAStyleTimeInsensitiveTaskData

- (BOOL)addSelfToBuffer:(void *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v5 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleTimeInsensitiveTaskData" userInfo:0];
  objc_exception_throw(v5);
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  v3 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleTimeInsensitiveTaskData" userInfo:0];
  objc_exception_throw(v3);
}

- (unint64_t)sizeInBytesForSerializedVersion
{
  v2 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleTimeInsensitiveTaskData" userInfo:0];
  objc_exception_throw(v2);
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  if (!buffer)
  {
    v9 = @"Trying to init with nil serializedTimeInsensitiveTask_v5";
    goto LABEL_6;
  }

  if ((*buffer - 4080925381) >= 3)
  {
    v9 = @"Bad SAPAStyleTimeInsensitiveTaskData magic";
LABEL_6:
    v10 = [SAException exceptionWithName:@"Decoding failure" reason:v9 userInfo:0];
    objc_exception_throw(v10);
  }

  v5 = objc_alloc_init(SAPAStyleTimeInsensitiveTaskData);
  v6 = [SATask taskWithoutReferencesFromPAStyleSerializedTask:buffer];
  task = v5->_task;
  v5->_task = v6;

  return v5;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  if (!dictionary || !bufferDictionary)
  {
    v7 = @"Invalid args";
    goto LABEL_11;
  }

  if (!buffer)
  {
    v7 = @"Passed NULL serializedTimeInsensitiveTask_v5";
    goto LABEL_11;
  }

  if ((*buffer - 4080925381) >= 3)
  {
    v7 = @"Bad SAPAStyleTimeInsensitiveTaskData magic";
LABEL_11:
    bufferDictionary = [SAException exceptionWithName:@"Decoding failure" reason:v7 userInfo:0, bufferDictionary];
    objc_exception_throw(bufferDictionary);
  }

  task = self->_task;

  [(SATask *)task populateReferencesUsingPAStyleSerializedTask:buffer andDeserializationDictionary:dictionary andDataBufferDictionary:bufferDictionary];
}

@end