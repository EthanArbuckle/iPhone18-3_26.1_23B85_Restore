@interface SAPAStyleThreadData
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
- (BOOL)addSelfToBuffer:(void *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (unint64_t)sizeInBytesForSerializedVersion;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
@end

@implementation SAPAStyleThreadData

- (BOOL)addSelfToBuffer:(void *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v5 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleThreadData" userInfo:0];
  objc_exception_throw(v5);
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  v3 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleThreadData" userInfo:0];
  objc_exception_throw(v3);
}

- (unint64_t)sizeInBytesForSerializedVersion
{
  v2 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleThreadData" userInfo:0];
  objc_exception_throw(v2);
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  if (!buffer)
  {
    v10 = @"NULL buffer";
    goto LABEL_24;
  }

  if ((*buffer - 287528979) >= 7)
  {
    v10 = @"Bad magic";
LABEL_24:
    v11 = [SAException exceptionWithName:@"Decoding failure" reason:v10 userInfo:0];
    objc_exception_throw(v11);
  }

  v5 = objc_alloc_init(SAPAStyleThreadData);
  v6 = [SAThreadState stateWithoutReferencesFromPAStyleSerializedThread:buffer];
  threadState = v5->_threadState;
  v5->_threadState = v6;

  v8 = *buffer;
  if (*buffer > 0x11235818uLL)
  {
    v5->_dispatchQueueId = *(buffer + 6);
    v5->_threadId = *(buffer + 5);
    if ((*(buffer + 115) & 8) == 0)
    {
      return v5;
    }

    goto LABEL_11;
  }

  if (*buffer == 287528984)
  {
    v5->_dispatchQueueId = *(buffer + 6);
    v5->_threadId = *(buffer + 5);
    if ((*(buffer + 99) & 8) == 0)
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
        v5->_dispatchQueueId = *(buffer + 4);
        v5->_threadId = *(buffer + 3);
        if ((*(buffer + 80) & 8) == 0)
        {
          return v5;
        }
      }

      else
      {
        v5->_dispatchQueueId = *(buffer + 5);
        v5->_threadId = *(buffer + 4);
        if ((*(buffer + 88) & 8) == 0)
        {
          return v5;
        }
      }

      goto LABEL_11;
    }

    if (v8 == 287528979 || v8 == 287528980)
    {
      v5->_dispatchQueueId = *(buffer + 2);
      v5->_threadId = *(buffer + 7);
    }
  }

  else
  {
    v5->_dispatchQueueId = *(buffer + 6);
    v5->_threadId = *(buffer + 5);
    if ((*(buffer + 96) & 8) != 0)
    {
LABEL_11:
      v5->_isGlobalForcedIdle = 1;
    }
  }

  return v5;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  if (!buffer)
  {
    v7 = @"NULL buffer";
    goto LABEL_8;
  }

  if ((*buffer - 287528979) >= 7)
  {
    v7 = @"Bad magic";
LABEL_8:
    bufferDictionary = [SAException exceptionWithName:@"Decoding failure" reason:v7 userInfo:0, bufferDictionary];
    objc_exception_throw(bufferDictionary);
  }

  threadState = self->_threadState;

  [(SAThreadState *)threadState populateReferencesUsingPAStyleSerializedThread:buffer andDeserializationDictionary:dictionary andDataBufferDictionary:bufferDictionary];
}

@end