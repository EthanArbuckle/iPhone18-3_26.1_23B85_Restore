@interface SAPAStyleThreadData
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4;
- (BOOL)addSelfToBuffer:(void *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5;
- (unint64_t)sizeInBytesForSerializedVersion;
- (void)addSelfToSerializationDictionary:(id)a3;
- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6;
@end

@implementation SAPAStyleThreadData

- (BOOL)addSelfToBuffer:(void *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5
{
  v5 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleThreadData" userInfo:0];
  objc_exception_throw(v5);
}

- (void)addSelfToSerializationDictionary:(id)a3
{
  v3 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleThreadData" userInfo:0];
  objc_exception_throw(v3);
}

- (unint64_t)sizeInBytesForSerializedVersion
{
  v2 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleThreadData" userInfo:0];
  objc_exception_throw(v2);
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4
{
  if (!a3)
  {
    v10 = @"NULL buffer";
    goto LABEL_24;
  }

  if ((*a3 - 287528979) >= 7)
  {
    v10 = @"Bad magic";
LABEL_24:
    v11 = [SAException exceptionWithName:@"Decoding failure" reason:v10 userInfo:0];
    objc_exception_throw(v11);
  }

  v5 = objc_alloc_init(SAPAStyleThreadData);
  v6 = [SAThreadState stateWithoutReferencesFromPAStyleSerializedThread:a3];
  threadState = v5->_threadState;
  v5->_threadState = v6;

  v8 = *a3;
  if (*a3 > 0x11235818uLL)
  {
    v5->_dispatchQueueId = *(a3 + 6);
    v5->_threadId = *(a3 + 5);
    if ((*(a3 + 115) & 8) == 0)
    {
      return v5;
    }

    goto LABEL_11;
  }

  if (*a3 == 287528984)
  {
    v5->_dispatchQueueId = *(a3 + 6);
    v5->_threadId = *(a3 + 5);
    if ((*(a3 + 99) & 8) == 0)
    {
      return v5;
    }

    goto LABEL_11;
  }

  if (v8 <= 0x11235816)
  {
    if (v8 > 287528980)
    {
      if (v8 == 287528981)
      {
        v5->_dispatchQueueId = *(a3 + 4);
        v5->_threadId = *(a3 + 3);
        if ((*(a3 + 80) & 8) == 0)
        {
          return v5;
        }
      }

      else
      {
        v5->_dispatchQueueId = *(a3 + 5);
        v5->_threadId = *(a3 + 4);
        if ((*(a3 + 88) & 8) == 0)
        {
          return v5;
        }
      }

      goto LABEL_11;
    }

    if (v8 == 287528979 || v8 == 287528980)
    {
      v5->_dispatchQueueId = *(a3 + 2);
      v5->_threadId = *(a3 + 7);
    }
  }

  else
  {
    v5->_dispatchQueueId = *(a3 + 6);
    v5->_threadId = *(a3 + 5);
    if ((*(a3 + 96) & 8) != 0)
    {
LABEL_11:
      v5->_isGlobalForcedIdle = 1;
    }
  }

  return v5;
}

- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6
{
  if (!a3)
  {
    v7 = @"NULL buffer";
    goto LABEL_8;
  }

  if ((*a3 - 287528979) >= 7)
  {
    v7 = @"Bad magic";
LABEL_8:
    v8 = [SAException exceptionWithName:@"Decoding failure" reason:v7 userInfo:0, a6];
    objc_exception_throw(v8);
  }

  threadState = self->_threadState;

  [(SAThreadState *)threadState populateReferencesUsingPAStyleSerializedThread:a3 andDeserializationDictionary:a5 andDataBufferDictionary:a6];
}

@end