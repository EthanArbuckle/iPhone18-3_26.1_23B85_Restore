@interface SAWSUpdateDataStore
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
- (BOOL)addSelfToBuffer:(void *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (SAWSUpdateDataStore)init;
- (unint64_t)sizeInBytesForSerializedVersion;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)dealloc;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
- (void)printFrameRateReportWithStartSampleIndex:(uint64_t)index endSampleIndex:(uint64_t)sampleIndex startDisplayIndex:(void *)displayIndex sampleDataStore:(void *)store toStream:;
@end

@implementation SAWSUpdateDataStore

void __48__SAWSUpdateDataStore__getWSUpdateArraySnapshot__block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 8))
  {
    v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:*(*(a1 + 32) + 8)];
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

- (SAWSUpdateDataStore)init
{
  v8.receiver = self;
  v8.super_class = SAWSUpdateDataStore;
  v2 = [(SAWSUpdateDataStore *)&v8 init];
  v3 = v2;
  if (v2)
  {
    wsUpdateArray = v2->_wsUpdateArray;
    v2->_wsUpdateArray = 0;

    v5 = dispatch_queue_create("WS Update Callback Serial queue", 0);
    wsUpdateCallbackQueue = v3->_wsUpdateCallbackQueue;
    v3->_wsUpdateCallbackQueue = v5;
  }

  return v3;
}

- (void)printFrameRateReportWithStartSampleIndex:(uint64_t)index endSampleIndex:(uint64_t)sampleIndex startDisplayIndex:(void *)displayIndex sampleDataStore:(void *)store toStream:
{
  if (self)
  {
    if (!store)
    {
      v12 = *__error();
      v13 = _sa_logt();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_DEFAULT, "WARNING: Invalid stream. Bailing", buf, 2u);
      }

      *__error() = v12;
    }

    [store appendString:@"\n\n"];
    if (index)
    {
      indexCopy = index;
    }

    else
    {
      indexCopy = -1;
    }

    if (indexCopy < a2)
    {
      v15 = *__error();
      v16 = _sa_logt();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_DEFAULT, "WARNING: Start index greater than end index. Bailing", buf, 2u);
      }

      *__error() = v15;
      v17 = @"Start Index > End Index. Could not print report\n";
      goto LABEL_69;
    }

    sampleTimestamps = [displayIndex sampleTimestamps];
    v19 = [sampleTimestamps count];

    if (v19 <= a2)
    {
      v17 = @"No WS Updates\n";
LABEL_69:
      [store appendString:v17];
      return;
    }

    sampleTimestamps2 = [displayIndex sampleTimestamps];
    v21 = [sampleTimestamps2 count];

    if (indexCopy >= v21)
    {
      sampleTimestamps3 = [displayIndex sampleTimestamps];
      index = [sampleTimestamps3 count] - 1;
    }

    sampleTimestamps4 = [displayIndex sampleTimestamps];
    v24 = [sampleTimestamps4 objectAtIndexedSubscript:a2];
    [v24 machAbsTimeSeconds];
    v26 = v25;

    sampleTimestamps5 = [displayIndex sampleTimestamps];
    v28 = [sampleTimestamps5 objectAtIndexedSubscript:index];
    [v28 machAbsTimeSeconds];
    v67 = v29;

    v30 = objc_autoreleasePoolPush();
    objc_opt_self();
    [store appendString:@"----FPS Report Legend:-----\nRaw Instantaneous FPS:\n    30FPS delimiter:    '|'\n    10FPS delimiter:    '+'\n    1FPS delimiter:     '-'\n\nDefer+Work Instantaneous FPS:                'X'\nWork Instantaneous FPS:                      '^'\nEqual Work and Defer+Work Instantaneous FPS: '*'\n"];
    [store appendString:@"\n====Frame Rate Report:====\n\n"];
    *buf = 0;
    v71 = buf;
    v72 = 0x3032000000;
    v73 = __Block_byref_object_copy__10;
    v74 = __Block_byref_object_dispose__10;
    v75 = 0;
    v31 = *(self + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__SAWSUpdateDataStore__getWSUpdateArraySnapshot__block_invoke;
    block[3] = &unk_1E86F8BB0;
    block[4] = self;
    block[5] = buf;
    dispatch_sync(v31, block);
    v32 = *(v71 + 5);
    _Block_object_dispose(buf, 8);

    if (v32 && [v32 count])
    {
      v64 = v30;
      v68 = [SAWSUpdateTimeToIndexMapping arrayOfMappingsFromWSUpdataDataArray:v32 andSampleDataStore:displayIndex];
      if (v68)
      {
        [store printWithFormat:@"%29s", "Frame Length [SampleRange]"];
        [store printWithFormat:@"%29s", "WS Wait Length [SampleRange]"];
        [store printWithFormat:@"%29s", "Defer Length [SampleRange]"];
        [store printWithFormat:@"%29s", "WS Work Length [SampleRange]"];
        [store printWithFormat:@"%16s\n", "Frame Rate"];
        if (![v32 count])
        {
          goto LABEL_75;
        }

        v33 = 0;
        v65 = sampleIndex - a2;
        v66 = v32;
        while (1)
        {
          v34 = [v32 objectAtIndexedSubscript:v33];
          v35 = [v68 objectAtIndexedSubscript:v33];
          v36 = v35;
          if (!v34)
          {
            break;
          }

          v37 = v34[4];
          if (v37 >= v26)
          {
            v38 = v34[1];
            if (v38 > v67)
            {
              goto LABEL_74;
            }

            v39 = v34[2] - v38;
            if (v39 > 0.0333333333)
            {
              [store printWithFormat:@"|\nWS Idle: %.2fms\n|\n", v39 * 1000.0];
              v38 = v34[1];
              v37 = v34[4];
            }

            [store printWithFormat:@"%13.2f ms", (v37 - v38) * 1000.0];
            [v36 printFrameIndexRangeToStream:store withTranslationDelta:v65];
            [store printWithFormat:@"%13.2f ms", (v34[2] - v34[1]) * 1000.0];
            [v36 printWaitIndexRangeToStream:store withTranslationDelta:v65];
            [store printWithFormat:@"%13.2f ms", (v34[3] - v34[2]) * 1000.0];
            [v36 printDeferIndexRangeToStream:store withTranslationDelta:v65];
            [store printWithFormat:@"%13.2f ms", (v34[4] - v34[3]) * 1000.0];
            [v36 printWorkIndexRangeToStream:store withTranslationDelta:v65];
            v40 = v34[3];
            v41 = (v34[4] - v34[1]) * 1000.0;
            if (v41 == 0.0)
            {
              v42 = 1000.0;
            }

            else
            {
              v42 = 1000.0 / v41;
            }

            v43 = v34[4] - v40;
            v44 = 1.0 / (v43 + v40 - v34[2]);
            if (v44 <= 60.0)
            {
              v45 = v44;
            }

            else
            {
              v45 = 60.0;
            }

            v46 = 1.0 / v43;
            if (v46 <= 60.0)
            {
              v47 = v46;
            }

            else
            {
              v47 = 60.0;
            }

            [store printWithFormat:@"%12.2f FPS", *&v42];
            v48 = 0;
            v49 = rint(v45);
            v50 = rint(v47);
            v51 = rint(v42);
            v52 = 0.0;
            do
            {
              if (v50 == v52 && v49 == v52)
              {
                v54 = @"*";
              }

              else
              {
                v54 = @"X";
              }

              if (v49 == v52)
              {
                v55 = v54;
              }

              else
              {
                v55 = @"^";
              }

              if (v49 != v52 && v50 != v52)
              {
                if (v51 < v52)
                {
                  v55 = @" ";
                }

                else
                {
                  HIDWORD(v58) = -286331153 * v48;
                  LODWORD(v58) = HIDWORD(v58);
                  v57 = v58 >> 1;
                  HIDWORD(v58) = -858993459 * v48;
                  LODWORD(v58) = HIDWORD(v58);
                  v59 = @"-";
                  if ((v58 >> 1) < 0x1999999A)
                  {
                    v59 = @"+";
                  }

                  if (v57 < 0x8888889)
                  {
                    v59 = @"|";
                  }

                  if (v34[2] - v34[1] <= 0.0333333333)
                  {
                    v55 = v59;
                  }

                  else
                  {
                    v55 = @" ";
                  }
                }
              }

              [store appendString:v55];
              v52 = v52 + 1.0;
              ++v48;
            }

            while (v48 != 61);
            [store appendString:@"\n"];
LABEL_60:
            v32 = v66;
          }

LABEL_61:

          if (++v33 >= [v32 count])
          {
            goto LABEL_75;
          }
        }

        if (v26 > 0.0)
        {
          goto LABEL_61;
        }

        if (v67 < 0.0)
        {
LABEL_74:

          goto LABEL_75;
        }

        v60 = *__error();
        v61 = _sa_logt();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E0E2F000, v61, OS_LOG_TYPE_DEFAULT, "WARNING: Missing data on current update", buf, 2u);
        }

        *__error() = v60;
        goto LABEL_60;
      }

      v62 = *__error();
      v63 = _sa_logt();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E0E2F000, v63, OS_LOG_TYPE_DEFAULT, "WARNING: Invalid index mapping array. Bailing...", buf, 2u);
      }

      *__error() = v62;
LABEL_75:

      v30 = v64;
    }

    else
    {
      [store appendString:@"No WS Updates\n"];
    }

    objc_autoreleasePoolPop(v30);
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = SAWSUpdateDataStore;
  [(SAWSUpdateDataStore *)&v2 dealloc];
}

- (unint64_t)sizeInBytesForSerializedVersion
{
  wsUpdateArray = self->_wsUpdateArray;
  if (wsUpdateArray)
  {
    return 8 * [(NSMutableArray *)wsUpdateArray count]+ 16;
  }

  else
  {
    return 16;
  }
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = +[SAWSUpdateDataStore classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, self, v5);

  if (v6)
  {
    wsUpdateArray = self->_wsUpdateArray;
    if (wsUpdateArray)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v8 = wsUpdateArray;
      v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v15;
        do
        {
          v12 = 0;
          do
          {
            if (*v15 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [*(*(&v14 + 1) + 8 * v12++) addSelfToSerializationDictionary:{dictionary, v14}];
          }

          while (v10 != v12);
          v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v10);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)addSelfToBuffer:(void *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v34 = *MEMORY[0x1E69E9840];
  if ([(SAWSUpdateDataStore *)self sizeInBytesForSerializedVersion]!= length)
  {
    v15 = *__error();
    v16 = _sa_logt();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [(SAWSUpdateDataStore *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v17 UTF8String];
      v30 = 2048;
      sizeInBytesForSerializedVersion = [(SAWSUpdateDataStore *)self sizeInBytesForSerializedVersion];
      v32 = 2048;
      lengthCopy = length;
      _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v15;
    v18 = [(SAWSUpdateDataStore *)self debugDescription];
    uTF8String2 = [v18 UTF8String];
    [(SAWSUpdateDataStore *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(900, "%s: size %lu != buffer length %lu", v20, v21, v22, v23, v24, v25, uTF8String2);

    _os_crash();
    __break(1u);
    goto LABEL_13;
  }

  if (!buffer)
  {
LABEL_13:
    v26 = @"Trying to serialize to a NULL location";
    goto LABEL_15;
  }

  if (!dictionary)
  {
    v26 = @"No serialization dictionary provided";
LABEL_15:
    v27 = [SAException exceptionWithName:@"Encoding failure" reason:v26 userInfo:0];
    objc_exception_throw(v27);
  }

  *buffer = 840627559;
  *(buffer + 1) = [(NSMutableArray *)self->_wsUpdateArray count];
  wsUpdateArray = self->_wsUpdateArray;
  if (wsUpdateArray && [(NSMutableArray *)wsUpdateArray count])
  {
    v10 = *(buffer + 1);
    v11 = self->_wsUpdateArray;
    v12 = *MEMORY[0x1E69E9840];

    return SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(buffer + 16, v10, v11, dictionary);
  }

  else
  {
    v14 = *MEMORY[0x1E69E9840];
    return 1;
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  if (!buffer)
  {
    v5 = @"NULL buffer";
    goto LABEL_8;
  }

  if (*buffer != 840627559)
  {
    v5 = @"Bad SASerializedWSUpdateDataStore magic";
LABEL_8:
    v6 = [SAException exceptionWithName:@"Decoding failure" reason:v5 userInfo:0];
    objc_exception_throw(v6);
  }

  return objc_alloc_init(SAWSUpdateDataStore);
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  if (!buffer)
  {
    v14 = @"NULL buffer";
    goto LABEL_10;
  }

  if (*buffer != 840627559)
  {
    v14 = @"Bad SASerializedWSUpdateDataStore magic";
LABEL_10:
    bufferDictionary = [SAException exceptionWithName:@"Decoding failure" reason:v14 userInfo:0, bufferDictionary];
    objc_exception_throw(bufferDictionary);
  }

  v7 = *(buffer + 1);
  if (v7)
  {
    v11 = objc_opt_class();
    v12 = SASerializableNewMutableArrayFromIndexList(buffer + 16, v7, dictionary, bufferDictionary, v11);
    wsUpdateArray = self->_wsUpdateArray;
    self->_wsUpdateArray = v12;
  }
}

@end