@interface SAPAStyleSample
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4;
- (BOOL)addSelfToBuffer:(void *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5;
- (unint64_t)sizeInBytesForSerializedVersion;
- (void)addSelfToSerializationDictionary:(id)a3;
- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6;
@end

@implementation SAPAStyleSample

- (BOOL)addSelfToBuffer:(void *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5
{
  v5 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleSample" userInfo:0];
  objc_exception_throw(v5);
}

- (void)addSelfToSerializationDictionary:(id)a3
{
  v3 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleSample" userInfo:0];
  objc_exception_throw(v3);
}

- (unint64_t)sizeInBytesForSerializedVersion
{
  v2 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleSample" userInfo:0];
  objc_exception_throw(v2);
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4
{
  if (!a3)
  {
    v10 = @"NULL buffer";
    goto LABEL_8;
  }

  if (*a3 != 2171757396)
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
  v7 = [SATimestamp timestampWithMachAbsTime:0 machAbsTimeSec:0 machContTime:*(a3 + 1) machContTimeSec:0.0 wallTime:*(a3 + 2)];
  timestamp = v6->_timestamp;
  v6->_timestamp = v7;

  return v6;
}

- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6
{
  v41 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v29 = @"Passed NULL buffer";
    goto LABEL_24;
  }

  if (*a3 != 2171757396)
  {
    v29 = @"Bad SASample magic";
LABEL_24:
    v30 = [SAException exceptionWithName:@"Decoding failure" reason:v29 userInfo:0, a6];
    objc_exception_throw(v30);
  }

  v10 = *(a3 + 3);
  v11 = objc_opt_class();
  v12 = SASerializableNewMutableArrayFromIndexList(a3 + 32, v10, a5, a6, v11);
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