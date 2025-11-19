@interface SAPAStyleTaskPrivateData
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4;
- (BOOL)addSelfToBuffer:(void *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5;
- (unint64_t)sizeInBytesForSerializedVersion;
- (void)addSelfToSerializationDictionary:(id)a3;
@end

@implementation SAPAStyleTaskPrivateData

- (BOOL)addSelfToBuffer:(void *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5
{
  v5 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleTaskPrivateData" userInfo:0];
  objc_exception_throw(v5);
}

- (void)addSelfToSerializationDictionary:(id)a3
{
  v3 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleTaskPrivateData" userInfo:0];
  objc_exception_throw(v3);
}

- (unint64_t)sizeInBytesForSerializedVersion
{
  v2 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleTaskPrivateData" userInfo:0];
  objc_exception_throw(v2);
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4
{
  if (!a3)
  {
    v11 = @"NULL serializedTaskPrivateData";
    goto LABEL_12;
  }

  if ((*a3 - 2255827088) >= 3)
  {
    v11 = @"Bad SAPAStyleTaskPrivateData magic";
LABEL_12:
    v12 = [SAException exceptionWithName:@"Decoding failure" reason:v11 userInfo:0];
    objc_exception_throw(v12);
  }

  v5 = objc_alloc_init(SAPAStyleTaskPrivateData);
  v6 = v5;
  if (*a3 <= 0x86753090uLL)
  {
    if (newInstanceWithoutReferencesFromSerializedBuffer_bufferLength__onceToken != -1)
    {
      dispatch_once(&newInstanceWithoutReferencesFromSerializedBuffer_bufferLength__onceToken, &__block_literal_global_4);
    }

    v6->_suspend_count = *(a3 + 2);
    v7 = *MEMORY[0x1E69E9AC8] * *(a3 + 3);
    v6->_faults = *(a3 + 4);
    v6->_pageins = *(a3 + 5);
    v6->_cow_faults = *(a3 + 6);
    v8 = *(a3 + 7);
    v9 = *(a3 + 8);
    v6->_task_size_bytes = v7;
    v6->_ss_flags = v8;
    v6->_latency_qos = v9;
  }

  else
  {
    v5->_suspend_count = *(a3 + 6);
    v5->_task_size_bytes = *(a3 + 1);
    v5->_faults = *(a3 + 7);
    v5->_pageins = *(a3 + 8);
    v5->_cow_faults = *(a3 + 9);
    v5->_ss_flags = *(a3 + 2);
    v5->_latency_qos = *(a3 + 10);
    if (*a3 > 0x86753091uLL)
    {
      v5->_terminatedThreadsUserTimeInNs = *(a3 + 44);
      v5->_terminatedThreadsSystemTimeInNs = *(a3 + 52);
      v5->_terminatedThreadsInstructions = *(a3 + 60);
      v5->_terminatedThreadsCycles = *(a3 + 68);
    }
  }

  return v6;
}

@end