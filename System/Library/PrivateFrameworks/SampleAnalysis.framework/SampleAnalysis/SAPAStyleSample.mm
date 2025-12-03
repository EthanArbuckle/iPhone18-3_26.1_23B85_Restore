@interface SAPAStyleSample
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
- (BOOL)addSelfToBuffer:(void *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (unint64_t)sizeInBytesForSerializedVersion;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
@end

@implementation SAPAStyleSample

- (BOOL)addSelfToBuffer:(void *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v5 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleSample" userInfo:0];
  objc_exception_throw(v5);
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  v3 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleSample" userInfo:0];
  objc_exception_throw(v3);
}

- (unint64_t)sizeInBytesForSerializedVersion
{
  v2 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleSample" userInfo:0];
  objc_exception_throw(v2);
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  if (!buffer)
  {
    v10 = @"NULL buffer";
    goto LABEL_8;
  }

  if (*buffer != 2171757396)
  {
    v10 = @"Bad SASample magic";
    goto LABEL_8;
  }

  v5 = objc_alloc_init(SAPAStyleSample);
  if (!v5)
  {
    v10 = @"Could not create new sample from buffer";
LABEL_8:
    v11 = [SAException exceptionWithName:@"Decoding failure" reason:v10 userInfo:0];
    objc_exception_throw(v11);
  }

  v6 = v5;
  v7 = [SATimestamp timestampWithMachAbsTime:0 machAbsTimeSec:0 machContTime:*(buffer + 1) machContTimeSec:0.0 wallTime:*(buffer + 2)];
  timestamp = v6->_timestamp;
  v6->_timestamp = v7;

  return v6;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  v41 = *MEMORY[0x1E69E9840];
  if (!buffer)
  {
    v29 = @"Passed NULL buffer";
    goto LABEL_24;
  }

  if (*buffer != 2171757396)
  {
    v29 = @"Bad SASample magic";
LABEL_24:
    bufferDictionary = [SAException exceptionWithName:@"Decoding failure" reason:v29 userInfo:0, bufferDictionary];
    objc_exception_throw(bufferDictionary);
  }

  v10 = *(buffer + 3);
  v11 = objc_opt_class();
  v12 = SASerializableNewMutableArrayFromIndexList(buffer + 32, v10, dictionary, bufferDictionary, v11);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v13)
  {
    v15 = v13;
    v16 = *v36;
    do
    {
      v17 = 0;
      do
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v35 + 1) + 8 * v17);
        if (v18)
        {
          Property = objc_getProperty(*(*(&v35 + 1) + 8 * v17), v14, 8, 1);
          [(SAThreadState *)Property applyPAStyleSampleTimestamp:?];
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v21 = objc_getProperty(v18, v20, 16, 1);
        }

        else
        {
          v21 = 0;
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
        }

        v22 = v21;
        v23 = [v22 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v32;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v32 != v25)
              {
                objc_enumerationMutation(v22);
              }

              [(SAThreadState *)*(*(&v31 + 1) + 8 * i) applyPAStyleSampleTimestamp:?];
            }

            v24 = [v22 countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v24);
        }

        ++v17;
      }

      while (v17 != v15);
      v27 = [v12 countByEnumeratingWithState:&v35 objects:v40 count:16];
      v15 = v27;
    }

    while (v27);
  }

  v28 = *MEMORY[0x1E69E9840];
}

@end