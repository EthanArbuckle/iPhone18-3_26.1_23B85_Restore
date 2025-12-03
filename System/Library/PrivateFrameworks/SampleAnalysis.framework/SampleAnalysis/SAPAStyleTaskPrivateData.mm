@interface SAPAStyleTaskPrivateData
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
- (BOOL)addSelfToBuffer:(void *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (unint64_t)sizeInBytesForSerializedVersion;
- (void)addSelfToSerializationDictionary:(id)dictionary;
@end

@implementation SAPAStyleTaskPrivateData

- (BOOL)addSelfToBuffer:(void *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v5 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleTaskPrivateData" userInfo:0];
  objc_exception_throw(v5);
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  v3 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleTaskPrivateData" userInfo:0];
  objc_exception_throw(v3);
}

- (unint64_t)sizeInBytesForSerializedVersion
{
  v2 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleTaskPrivateData" userInfo:0];
  objc_exception_throw(v2);
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  if (!buffer)
  {
    v11 = @"NULL serializedTaskPrivateData";
    goto LABEL_12;
  }

  if ((*buffer - 2255827088) >= 3)
  {
    v11 = @"Bad SAPAStyleTaskPrivateData magic";
LABEL_12:
    v12 = [SAException exceptionWithName:@"Decoding failure" reason:v11 userInfo:0];
    objc_exception_throw(v12);
  }

  v5 = objc_alloc_init(SAPAStyleTaskPrivateData);
  v6 = v5;
  if (*buffer <= 0x86753090uLL)
  {
    if (newInstanceWithoutReferencesFromSerializedBuffer_bufferLength__onceToken != -1)
    {
      dispatch_once(&newInstanceWithoutReferencesFromSerializedBuffer_bufferLength__onceToken, &__block_literal_global_4);
    }

    v6->_suspend_count = *(buffer + 2);
    v7 = *MEMORY[0x1E69E9AC8] * *(buffer + 3);
    v6->_faults = *(buffer + 4);
    v6->_pageins = *(buffer + 5);
    v6->_cow_faults = *(buffer + 6);
    v8 = *(buffer + 7);
    v9 = *(buffer + 8);
    v6->_task_size_bytes = v7;
    v6->_ss_flags = v8;
    v6->_latency_qos = v9;
  }

  else
  {
    v5->_suspend_count = *(buffer + 6);
    v5->_task_size_bytes = *(buffer + 1);
    v5->_faults = *(buffer + 7);
    v5->_pageins = *(buffer + 8);
    v5->_cow_faults = *(buffer + 9);
    v5->_ss_flags = *(buffer + 2);
    v5->_latency_qos = *(buffer + 10);
    if (*buffer > 0x86753091uLL)
    {
      v5->_terminatedThreadsUserTimeInNs = *(buffer + 44);
      v5->_terminatedThreadsSystemTimeInNs = *(buffer + 52);
      v5->_terminatedThreadsInstructions = *(buffer + 60);
      v5->_terminatedThreadsCycles = *(buffer + 68);
    }
  }

  return v6;
}

@end