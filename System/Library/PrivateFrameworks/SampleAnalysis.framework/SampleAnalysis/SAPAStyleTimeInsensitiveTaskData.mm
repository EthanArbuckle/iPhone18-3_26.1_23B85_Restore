@interface SAPAStyleTimeInsensitiveTaskData
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4;
- (BOOL)addSelfToBuffer:(void *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5;
- (unint64_t)sizeInBytesForSerializedVersion;
- (void)addSelfToSerializationDictionary:(id)a3;
- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6;
@end

@implementation SAPAStyleTimeInsensitiveTaskData

- (BOOL)addSelfToBuffer:(void *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5
{
  v5 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleTimeInsensitiveTaskData" userInfo:0];
  objc_exception_throw(v5);
}

- (void)addSelfToSerializationDictionary:(id)a3
{
  v3 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleTimeInsensitiveTaskData" userInfo:0];
  objc_exception_throw(v3);
}

- (unint64_t)sizeInBytesForSerializedVersion
{
  v2 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleTimeInsensitiveTaskData" userInfo:0];
  objc_exception_throw(v2);
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4
{
  if (!a3)
  {
    v9 = @"Trying to init with nil serializedTimeInsensitiveTask_v5";
    goto LABEL_6;
  }

  if ((*a3 - 4080925381) >= 3)
  {
    v9 = @"Bad SAPAStyleTimeInsensitiveTaskData magic";
LABEL_6:
    v10 = [SAException exceptionWithName:@"Decoding failure" reason:v9 userInfo:0];
    objc_exception_throw(v10);
  }

  v5 = objc_alloc_init(SAPAStyleTimeInsensitiveTaskData);
  v6 = [SATask taskWithoutReferencesFromPAStyleSerializedTask:a3];
  task = v5->_task;
  v5->_task = v6;

  return v5;
}

- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6
{
  if (!a5 || !a6)
  {
    v7 = @"Invalid args";
    goto LABEL_11;
  }

  if (!a3)
  {
    v7 = @"Passed NULL serializedTimeInsensitiveTask_v5";
    goto LABEL_11;
  }

  if ((*a3 - 4080925381) >= 3)
  {
    v7 = @"Bad SAPAStyleTimeInsensitiveTaskData magic";
LABEL_11:
    v8 = [SAException exceptionWithName:@"Decoding failure" reason:v7 userInfo:0, a6];
    objc_exception_throw(v8);
  }

  task = self->_task;

  [(SATask *)task populateReferencesUsingPAStyleSerializedTask:a3 andDeserializationDictionary:a5 andDataBufferDictionary:a6];
}

@end