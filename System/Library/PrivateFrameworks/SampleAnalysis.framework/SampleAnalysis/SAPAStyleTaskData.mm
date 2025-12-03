@interface SAPAStyleTaskData
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
- (BOOL)addSelfToBuffer:(void *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (unint64_t)sizeInBytesForSerializedVersion;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
@end

@implementation SAPAStyleTaskData

- (BOOL)addSelfToBuffer:(void *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v5 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleTaskData" userInfo:0];
  objc_exception_throw(v5);
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  v3 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleTaskData" userInfo:0];
  objc_exception_throw(v3);
}

- (unint64_t)sizeInBytesForSerializedVersion
{
  v2 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleTaskData" userInfo:0];
  objc_exception_throw(v2);
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  if (!buffer)
  {
    v5 = @"NULL serializedTask_v2";
    goto LABEL_8;
  }

  if (*buffer >> 1 != 143727010)
  {
    v5 = @"Bad SAPAStyleTaskData magic";
LABEL_8:
    v6 = [SAException exceptionWithName:@"Decoding failure" reason:v5 userInfo:0];
    objc_exception_throw(v6);
  }

  return objc_alloc_init(SAPAStyleTaskData);
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  v88 = *MEMORY[0x1E69E9840];
  if (!buffer || !dictionary || !bufferDictionary)
  {
    v68 = @"Invalid args";
    goto LABEL_79;
  }

  v9 = *(buffer + 1);
  if (v9 > 0xFFFFFFFFFFFFFFFDLL || *(buffer + 2) == -2)
  {
    v68 = @"Invalid index found";
    goto LABEL_79;
  }

  v11 = objc_opt_class();
  v12 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v9, dictionary, bufferDictionary, v11, 0);
  if (!v12)
  {
    v68 = @"Could not get time insensitive instance";
    goto LABEL_79;
  }

  v13 = v12;
  v14 = *(buffer + 2);
  v15 = objc_opt_class();
  v73 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v14, dictionary, bufferDictionary, v15, 0);
  if (*buffer != 287454020)
  {
    if (*buffer == 287454021)
    {
      v16 = 36;
      goto LABEL_11;
    }

    v68 = @"Bad SAPAStyleTaskData magic";
LABEL_79:
    v69 = [SAException exceptionWithName:@"Decoding failure" reason:v68 userInfo:0];
    objc_exception_throw(v69);
  }

  v16 = 32;
LABEL_11:
  v17 = buffer + v16;
  v18 = *(buffer + 3);
  v19 = objc_opt_class();
  v20 = SASerializableNewMutableArrayFromIndexList(v17, v18, dictionary, bufferDictionary, v19);
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v21 = [v20 countByEnumeratingWithState:&v82 objects:v87 count:16];
  if (v21)
  {
    v23 = v21;
    v24 = *v83;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v83 != v24)
        {
          objc_enumerationMutation(v20);
        }

        v26 = *(*(&v82 + 1) + 8 * i);
        if ([(SATaskState *)self->_taskState isPidSuspended])
        {
          if (!v26)
          {
            continue;
          }
        }

        else
        {
          if ([(SATaskState *)self->_taskState suspendCount])
          {
            v28 = v26 == 0;
          }

          else
          {
            v28 = 1;
          }

          if (v28)
          {
            continue;
          }
        }

        Property = objc_getProperty(v26, v27, 16, 1);
        if (Property)
        {
          Property[11] |= 0x40u;
        }
      }

      v23 = [v20 countByEnumeratingWithState:&v82 objects:v87 count:16];
    }

    while (v23);
  }

  if (*buffer >= 0x11223345uLL && *(buffer + 8))
  {
    v30 = *(buffer + 3);
    v31 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:*(buffer + 8)];
    if (*(buffer + 8))
    {
      v32 = 0;
      v33 = &v17[8 * v30];
      do
      {
        v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&v33[4 * v32]];
        [v31 addObject:v34];

        ++v32;
      }

      while (v32 < *(buffer + 8));
    }
  }

  else
  {
    v31 = 0;
  }

  v71 = v13;
  v35 = objc_getProperty(v13, v22, 8, 1);
  v70 = v31;
  v36 = [SATaskState stateWithPAStyleTaskPrivateData:v73 donatingUniquePids:v31];
  taskState = self->_taskState;
  self->_taskState = v36;

  if (v35)
  {
    [v35[1] addObject:{self->_taskState, v31, v13}];
    [v35[1] count];
  }

  selfCopy = self;
  v38 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v20, "count")}];
  v39 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = v20;
  v77 = [obj countByEnumeratingWithState:&v78 objects:v86 count:16];
  if (v77)
  {
    v40 = 0x1E696A000uLL;
    v76 = *v79;
    v74 = v39;
    do
    {
      v41 = 0;
      do
      {
        if (*v79 != v76)
        {
          objc_enumerationMutation(obj);
        }

        v42 = *(*(&v78 + 1) + 8 * v41);
        threads = [v35 threads];
        if (v42)
        {
          v44 = v42[3];
        }

        else
        {
          v44 = 0;
        }

        v45 = [*(v40 + 3480) numberWithUnsignedLongLong:v44];
        v46 = [threads objectForKeyedSubscript:v45];

        if (!v46)
        {
          if (v42)
          {
            v48 = v42[3];
          }

          else
          {
            v48 = 0;
          }

          v46 = [SAThread threadWithId:v48];
          [(SATask *)v35 addThread:v46];
        }

        if (v42)
        {
          v49 = objc_getProperty(v42, v47, 16, 1);
        }

        else
        {
          v49 = 0;
        }

        v50 = v49;
        [v38 addObject:v50];
        threadStates = [v46 threadStates];
        lastObject = [threadStates lastObject];

        if (lastObject != v50)
        {
          if (v46)
          {
            [v46[1] addObject:v50];
            v53 = ([v46[1] count] - 1);
            if (!v42)
            {
              goto LABEL_60;
            }
          }

          else
          {
            v53 = 0;
            if (!v42)
            {
              goto LABEL_60;
            }
          }

          if (v42[4])
          {
            v54 = v38;
            dispatchQueues = [v35 dispatchQueues];
            v56 = [*(v40 + 3480) numberWithUnsignedLongLong:v42[4]];
            v57 = [dispatchQueues objectForKeyedSubscript:v56];

            if (!v57)
            {
              v57 = [SADispatchQueue dispatchQueueWithId:?];
              [(SATask *)v35 addDispatchQueue:v57];
            }

            v58 = [(SARecipeState *)SADispatchQueueState stateWithThread:v46 threadStateIndex:v53];
            if (v57)
            {
              [v57[1] addObject:v58];
              [v57[1] count];
            }

            v38 = v54;
            v40 = 0x1E696A000uLL;
            if (v50)
            {
              objc_storeWeak(v50 + 14, v57);
            }

            v39 = v74;
          }
        }

LABEL_60:
        if ([v50 hasDispatchQueue])
        {
          dispatchQueue = [v50 dispatchQueue];
          v60 = v40;
          v61 = [*(v40 + 3480) numberWithUnsignedLongLong:{objc_msgSend(dispatchQueue, "identifier")}];
          v62 = [v39 containsObject:v61];

          if (v62)
          {
            if (dispatchQueue)
            {
              dispatchQueue[24] = 1;
            }
          }

          else
          {
            v63 = [*(v60 + 3480) numberWithUnsignedLongLong:{objc_msgSend(dispatchQueue, "identifier")}];
            [v39 addObject:v63];
          }

          v40 = 0x1E696A000;
        }

        ++v41;
      }

      while (v77 != v41);
      v64 = [obj countByEnumeratingWithState:&v78 objects:v86 count:16];
      v77 = v64;
    }

    while (v64);
  }

  v65 = [v38 copy];
  threadStates = selfCopy->_threadStates;
  selfCopy->_threadStates = v65;

  v67 = *MEMORY[0x1E69E9840];
}

@end