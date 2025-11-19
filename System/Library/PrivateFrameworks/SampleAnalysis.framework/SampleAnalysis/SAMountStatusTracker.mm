@interface SAMountStatusTracker
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4;
- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5;
- (SAMountStatusTracker)init;
- (uint64_t)hasUnresponsiveMountsForThreadID:(uint64_t)result;
- (uint64_t)iterateAllTimestamps:(uint64_t)result;
- (uint64_t)populateReferencesUsingPAStyleSerializedMountStatusTracker:(void *)a3 andDeserializationDictionary:(void *)a4 andDataBufferDictionary:;
- (void)addMountStatus:(void *)a3 forTimestamp:;
- (void)addSelfToSerializationDictionary:(id)a3;
- (void)enumerateMountsBlockingThread:(uint64_t)a3 betweenStartTime:(void *)a4 endTime:(uint64_t)a5 block:;
- (void)enumerateUnresponsiveMountsBetweenStartTime:(void *)a3 endTime:(uint64_t)a4 block:;
- (void)fillInThreadsSeen;
- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6;
@end

@implementation SAMountStatusTracker

- (SAMountStatusTracker)init
{
  v8.receiver = self;
  v8.super_class = SAMountStatusTracker;
  v2 = [(SAMountStatusTracker *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    mountStatusDict = v2->_mountStatusDict;
    v2->_mountStatusDict = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    threadsSeen = v2->_threadsSeen;
    v2->_threadsSeen = v5;
  }

  return v2;
}

- (void)addMountStatus:(void *)a3 forTimestamp:
{
  v71 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    obj = a2;
    v4 = [obj countByEnumeratingWithState:&v61 objects:v70 count:16];
    if (!v4)
    {
      goto LABEL_50;
    }

    v6 = *v62;
    *&v5 = 134218754;
    v51 = v5;
    v53 = *v62;
    while (1)
    {
      v7 = 0;
      v58 = v4;
      do
      {
        if (*v62 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v61 + 1) + 8 * v7);
        v9 = *([v8 mount] + 48);
        v10 = *([v8 mount] + 52) + (v9 << 32);
        v11 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:v10];
        v12 = [*(a1 + 16) objectForKey:v11];
        if (v12)
        {
          v13 = v12;
          if (*([v8 status] + 516) || *(objc_msgSend(v8, "status") + 520))
          {
            v14 = *__error();
            v15 = _sa_logt();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              v56 = v11;
              v44 = v7;
              v45 = [v8 mount] + 88;
              v46 = *([v8 status] + 516);
              v47 = *([v8 status] + 520);
              *v65 = v51;
              *&v65[4] = v10;
              *&v65[12] = 2080;
              *&v65[14] = v45;
              v7 = v44;
              v11 = v56;
              v66 = 1024;
              v67 = v46;
              v6 = v53;
              v68 = 1024;
              v69 = v47;
              _os_log_debug_impl(&dword_1E0E2F000, v15, OS_LOG_TYPE_DEBUG, "Existing mount 0x%llx %s unresponsive for %d seconds, blocking %d threads", v65, 0x22u);
            }

            *__error() = v14;
          }

          v16 = [v8 status];
          goto LABEL_30;
        }

        v59 = v7;
        v17 = SANSStringForCString([v8 mount] + 88);
        v18 = SANSStringForCString([v8 mount] + 72);
        v19 = v18;
        if (v17)
        {
          v20 = v18 == 0;
        }

        else
        {
          v20 = 1;
        }

        if (v20)
        {

          v13 = 0;
          v7 = v59;
          goto LABEL_45;
        }

        if (*([v8 status] + 516) || *(objc_msgSend(v8, "status") + 520))
        {
          v21 = *__error();
          v22 = _sa_logt();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            v48 = [v8 mount] + 88;
            v57 = *([v8 status] + 516);
            v49 = *([v8 status] + 520);
            *v65 = v51;
            *&v65[4] = v10;
            *&v65[12] = 2080;
            *&v65[14] = v48;
            v66 = 1024;
            v67 = v57;
            v6 = v53;
            v68 = 1024;
            v69 = v49;
            _os_log_debug_impl(&dword_1E0E2F000, v22, OS_LOG_TYPE_DEBUG, "New mount 0x%llx %s unresponsive for %d seconds, blocking %d threads", v65, 0x22u);
          }

          *__error() = v21;
        }

        v23 = [SAMountStatus alloc];
        if (v23)
        {
          *v65 = v23;
          *&v65[8] = SAMountStatus;
          v13 = objc_msgSendSuper2(v65, sel_init);
          if (v13)
          {
            v24 = [v17 copy];
            v25 = *(v13 + 2);
            *(v13 + 2) = v24;

            objc_storeStrong(v13 + 3, v19);
            v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v27 = *(v13 + 1);
            *(v13 + 1) = v26;
          }
        }

        else
        {
          v13 = 0;
        }

        [*(a1 + 16) setObject:v13 forKey:v11];

        v28 = [v8 status];
        if (v13)
        {
          v16 = v28;
          v7 = v59;
LABEL_30:
          v29 = *(v13 + 1);
          v30 = [SAMountSnapshot alloc];
          if (v30 && v16)
          {
            v60 = v7;
            *v65 = v30;
            *&v65[8] = SAMountSnapshot;
            v31 = objc_msgSendSuper2(v65, sel_init);
            v32 = v31;
            if (v31)
            {
              v55 = v29;
              objc_storeStrong(v31 + 1, a3);
              [a3 machAbsTimeSeconds];
              LODWORD(v33) = *(v16 + 516);
              v32[2] = v34 - v33;
              v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
              if (*(v16 + 520))
              {
                v36 = 0;
                do
                {
                  v37 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:*(v16 + 528 + 8 * v36)];
                  if (([v35 containsObject:v37] & 1) == 0)
                  {
                    [v35 addObject:v37];
                  }

                  ++v36;
                }

                while (v36 < *(v16 + 520));
              }

              v38 = *(v32 + 3);
              *(v32 + 3) = v35;

              v6 = v53;
              v29 = v55;
            }

            v30 = v32;
            v39 = v30;
            v7 = v60;
          }

          else
          {
            v39 = 0;
          }

          [v29 addObject:v39];
          goto LABEL_42;
        }

        v7 = v59;
LABEL_42:
        if (*([v8 status] + 520))
        {
          v40 = 0;
          do
          {
            v41 = [v8 status];
            v42 = *(a1 + 8);
            v43 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v41 + 8 * v40 + 528)];
            [v42 addObject:v43];

            ++v40;
          }

          while (v40 < *([v8 status] + 520));
        }

LABEL_45:

        ++v7;
      }

      while (v7 != v58);
      v4 = [obj countByEnumeratingWithState:&v61 objects:v70 count:16];
      if (!v4)
      {
LABEL_50:

        break;
      }
    }
  }

  v50 = *MEMORY[0x1E69E9840];
}

- (uint64_t)hasUnresponsiveMountsForThreadID:(uint64_t)result
{
  if (result)
  {
    v2 = *(result + 8);
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a2];
    v4 = [v2 containsObject:v3];

    return v4;
  }

  return result;
}

- (void)enumerateMountsBlockingThread:(uint64_t)a3 betweenStartTime:(void *)a4 endTime:(uint64_t)a5 block:
{
  v34 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v9 = [*(a1 + 16) allKeys];
    v10 = [v9 sortedArrayUsingComparator:&__block_literal_global_12];

    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v10;
    v11 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v11)
    {
      v12 = *v26;
LABEL_4:
      v13 = 0;
      while (1)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [*(a1 + 16) objectForKeyedSubscript:*(*(&v25 + 1) + 8 * v13)];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __85__SAMountStatusTracker_enumerateMountsBlockingThread_betweenStartTime_endTime_block___block_invoke_2;
        v20[3] = &unk_1E86F8548;
        v24 = a2;
        v22 = a5;
        v15 = v14;
        v21 = v15;
        v23 = &v29;
        [(SAMountStatus *)v15 enumerateSnapshotsBetweenStartTime:a3 endTime:a4 block:v20];
        v16 = *(v30 + 24);

        if (v16)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v11)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    _Block_object_dispose(&v29, 8);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __85__SAMountStatusTracker_enumerateMountsBlockingThread_betweenStartTime_endTime_block___block_invoke_2(void *a1, uint64_t a2, _BYTE *a3)
{
  if (a2)
  {
    v5 = *(a2 + 24);
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a1[7]];
    LODWORD(v5) = [v5 containsObject:v6];

    if (v5)
    {
      Property = a1[4];
      v9 = a1[5];
      if (Property)
      {
        Property = objc_getProperty(Property, v7, 16, 1);
      }

      v11 = Property;
      v12 = a1[4];
      if (v12)
      {
        v13 = objc_getProperty(v12, v10, 24, 1);
      }

      else
      {
        v13 = 0;
      }

      (*(v9 + 16))(v9, v11, v13, *(a1[6] + 8) + 24);

      *a3 = 1;
    }
  }
}

- (void)enumerateUnresponsiveMountsBetweenStartTime:(void *)a3 endTime:(uint64_t)a4 block:
{
  v40 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = [*(a1 + 16) allKeys];
    v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_37];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v7)
    {
      v8 = *v36;
      v18 = a4 + 16;
      do
      {
        v9 = 0;
        do
        {
          if (*v36 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = [*(a1 + 16) objectForKeyedSubscript:{*(*(&v35 + 1) + 8 * v9), v18}];
          v29 = 0;
          v30 = &v29;
          v31 = 0x3032000000;
          v32 = __Block_byref_object_copy__6;
          v33 = __Block_byref_object_dispose__6;
          v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v25 = 0;
          v26 = &v25;
          v27 = 0x2020000000;
          v28 = 0;
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __82__SAMountStatusTracker_enumerateUnresponsiveMountsBetweenStartTime_endTime_block___block_invoke_38;
          v24[3] = &unk_1E86F8570;
          v24[4] = &v25;
          v24[5] = &v29;
          [(SAMountStatus *)v10 enumerateSnapshotsBetweenStartTime:a2 endTime:a3 block:v24];
          if (*(v26 + 24) == 1)
          {
            v23 = 0;
            if (v10)
            {
              v12 = objc_getProperty(v10, v11, 16, 1);
              Property = objc_getProperty(v10, v13, 24, 1);
            }

            else
            {
              v12 = 0;
              Property = 0;
            }

            v15 = Property;
            (*(a4 + 16))(a4, v12, v15, v30[5], &v23);

            if (v23)
            {
              _Block_object_dispose(&v25, 8);
              _Block_object_dispose(&v29, 8);

              goto LABEL_17;
            }
          }

          _Block_object_dispose(&v25, 8);
          _Block_object_dispose(&v29, 8);

          ++v9;
        }

        while (v7 != v9);
        v16 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
        v7 = v16;
      }

      while (v16);
    }

LABEL_17:
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __82__SAMountStatusTracker_enumerateUnresponsiveMountsBetweenStartTime_endTime_block___block_invoke_38(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if ([*(a2 + 24) count])
    {
      v4 = *(a2 + 16);
      [*(a2 + 8) machAbsTimeSeconds];
      if (v4 < v6)
      {
        *(*(*(a1 + 32) + 8) + 24) = 1;
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v7 = objc_getProperty(a2, v5, 24, 1);
        v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v15;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v15 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v14 + 1) + 8 * i);
              if (([*(*(*(a1 + 40) + 8) + 40) containsObject:{v12, v14}] & 1) == 0)
              {
                [*(*(*(a1 + 40) + 8) + 40) addObject:v12];
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
          }

          while (v9);
        }
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5
{
  v44 = *MEMORY[0x1E69E9840];
  if ([(SAMountStatusTracker *)self sizeInBytesForSerializedVersion]!= a4)
  {
    v12 = *__error();
    v13 = _sa_logt();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [(SAMountStatusTracker *)self debugDescription];
      *buf = 136315650;
      v39 = [v14 UTF8String];
      v40 = 2048;
      v41 = [(SAMountStatusTracker *)self sizeInBytesForSerializedVersion];
      v42 = 2048;
      v43 = a4;
      _os_log_error_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v12;
    v15 = [(SAMountStatusTracker *)self debugDescription];
    v16 = [v15 UTF8String];
    [(SAMountStatusTracker *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(456, "%s: size %lu != buffer length %lu", v17, v18, v19, v20, v21, v22, v16);

    _os_crash();
    __break(1u);
LABEL_7:
    v23 = *__error();
    v24 = _sa_logt();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [(SAMountStatusTracker *)self debugDescription];
      v26 = [v25 UTF8String];
      v27 = [(NSMutableDictionary *)self->_mountStatusDict count];
      *buf = 136315394;
      v39 = v26;
      v40 = 2048;
      v41 = v27;
      _os_log_error_impl(&dword_1E0E2F000, v24, OS_LOG_TYPE_ERROR, "%s: %lu mountStatuDicts", buf, 0x16u);
    }

    *__error() = v23;
    v28 = [(SAMountStatusTracker *)self debugDescription];
    v29 = [v28 UTF8String];
    [(NSMutableDictionary *)self->_mountStatusDict count];
    _SASetCrashLogMessage(461, "%s: %lu mountStatuDicts", v30, v31, v32, v33, v34, v35, v29);

    _os_crash();
    __break(1u);
  }

  *&a3->var0 = 257;
  if ([(NSMutableDictionary *)self->_mountStatusDict count]>= 0xFFFF)
  {
    goto LABEL_7;
  }

  a3->var2 = [(NSMutableDictionary *)self->_mountStatusDict count];
  mountStatusDict = self->_mountStatusDict;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __105__SAMountStatusTracker_Serialization__addSelfToBuffer_bufferLength_withCompletedSerializationDictionary___block_invoke;
  v36[3] = &unk_1E86F8598;
  v37 = 0;
  v36[4] = a5;
  v36[5] = a3 + 1;
  [(NSMutableDictionary *)mountStatusDict enumerateKeysAndObjectsUsingBlock:v36];
  v10 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t __105__SAMountStatusTracker_Serialization__addSelfToBuffer_bufferLength_withCompletedSerializationDictionary___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  *(*(a1 + 40) + 16 * *(a1 + 48)) = [a2 unsignedLongLongValue];
  result = SASerializableIndexForPointerFromSerializationDictionary(a3, *(a1 + 32));
  *(*(a1 + 40) + 16 * *(a1 + 48) + 8) = result;
  return result;
}

- (void)addSelfToSerializationDictionary:(id)a3
{
  v5 = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(a3, self, v5);

  if (v6)
  {
    mountStatusDict = self->_mountStatusDict;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __72__SAMountStatusTracker_Serialization__addSelfToSerializationDictionary___block_invoke;
    v8[3] = &unk_1E86F85C0;
    v8[4] = a3;
    [(NSMutableDictionary *)mountStatusDict enumerateKeysAndObjectsUsingBlock:v8];
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4
{
  v30 = *MEMORY[0x1E69E9840];
  if (*a3 >= 2u)
  {
    goto LABEL_13;
  }

  if (a4 <= 3)
  {
    v8 = *__error();
    v5 = _sa_logt();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v27 = a4;
      v28 = 2048;
      v29 = 4;
      _os_log_error_impl(&dword_1E0E2F000, v5, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAMountStatusTracker struct %lu", buf, 0x16u);
    }

    *__error() = v8;
    _SASetCrashLogMessage(494, "bufferLength %lu < serialized SAMountStatusTracker struct %lu", v9, v10, v11, v12, v13, v14, a4);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  v5 = a3;
  if (((8 * *(a3 + 1)) | 4uLL) > a4)
  {
LABEL_10:
    v15 = *__error();
    v16 = _sa_logt();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(v5 + 2);
      *buf = 134218240;
      v27 = a4;
      v28 = 2048;
      v29 = v17;
      _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAMountStatusTracker struct with %lu mounts", buf, 0x16u);
    }

    *__error() = v15;
    v25 = *(v5 + 2);
    _SASetCrashLogMessage(495, "bufferLength %lu < serialized SAMountStatusTracker struct with %lu mounts", v18, v19, v20, v21, v22, v23, a4);
    _os_crash();
    __break(1u);
LABEL_13:
    v24 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAMountStatusTracker version" userInfo:0];
    objc_exception_throw(v24);
  }

  v6 = *MEMORY[0x1E69E9840];

  return objc_alloc_init(SAMountStatusTracker);
}

- (void)fillInThreadsSeen
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  threadsSeen = self->_threadsSeen;
  self->_threadsSeen = v3;

  mountStatusDict = self->_mountStatusDict;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__SAMountStatusTracker_Serialization__fillInThreadsSeen__block_invoke;
  v6[3] = &unk_1E86F85C0;
  v6[4] = self;
  [(NSMutableDictionary *)mountStatusDict enumerateKeysAndObjectsUsingBlock:v6];
}

void __56__SAMountStatusTracker_Serialization__fillInThreadsSeen__block_invoke(uint64_t a1, const char *a2, id self)
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  if (self)
  {
    Property = objc_getProperty(self, a2, 8, 1);
  }

  else
  {
    Property = 0;
  }

  v5 = Property;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v23;
    do
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v22 + 1) + 8 * v10);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        if (v11)
        {
          v11 = objc_getProperty(v11, v7, 24, 1);
        }

        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v19;
          do
          {
            v16 = 0;
            do
            {
              if (*v19 != v15)
              {
                objc_enumerationMutation(v12);
              }

              [*(*(a1 + 32) + 8) addObject:{*(*(&v18 + 1) + 8 * v16++), v18}];
            }

            while (v14 != v16);
            v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v14);
        }

        ++v10;
      }

      while (v10 != v8);
      v8 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v8);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6
{
  v43 = *MEMORY[0x1E69E9840];
  if (*a3 >= 2u)
  {
    goto LABEL_16;
  }

  if (a4 <= 3)
  {
    v21 = *__error();
    v7 = _sa_logt();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v40 = a4;
      v41 = 2048;
      v42 = 4;
      _os_log_error_impl(&dword_1E0E2F000, v7, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAMountStatusTracker struct %lu", buf, 0x16u);
    }

    *__error() = v21;
    _SASetCrashLogMessage(518, "bufferLength %lu < serialized SAMountStatusTracker struct %lu", v22, v23, v24, v25, v26, v27, a4);
    _os_crash();
    __break(1u);
    goto LABEL_13;
  }

  v7 = a3;
  if (((8 * *(a3 + 1)) | 4uLL) > a4)
  {
LABEL_13:
    v28 = *__error();
    v29 = _sa_logt();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = *(v7 + 2);
      *buf = 134218240;
      v40 = a4;
      v41 = 2048;
      v42 = v30;
      _os_log_error_impl(&dword_1E0E2F000, v29, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAMountStatusTracker struct with %lu mounts", buf, 0x16u);
    }

    *__error() = v28;
    v38 = *(v7 + 2);
    _SASetCrashLogMessage(519, "bufferLength %lu < serialized SAMountStatusTracker struct with %lu mounts", v31, v32, v33, v34, v35, v36, a4);
    _os_crash();
    __break(1u);
LABEL_16:
    v37 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAMountStatusTracker version" userInfo:0];
    objc_exception_throw(v37);
  }

  v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:*(a3 + 1)];
  mountStatusDict = self->_mountStatusDict;
  self->_mountStatusDict = v11;

  if (*(v7 + 2))
  {
    v13 = 0;
    v14 = (v7 + 12);
    do
    {
      v15 = *v14;
      v16 = objc_opt_class();
      v17 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v15, a5, a6, v16, 0);
      v18 = self->_mountStatusDict;
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v14 - 1)];
      [(NSMutableDictionary *)v18 setObject:v17 forKeyedSubscript:v19];

      ++v13;
      v14 += 2;
    }

    while (v13 < *(v7 + 2));
  }

  v20 = *MEMORY[0x1E69E9840];

  [(SAMountStatusTracker *)self fillInThreadsSeen];
}

- (uint64_t)populateReferencesUsingPAStyleSerializedMountStatusTracker:(void *)a3 andDeserializationDictionary:(void *)a4 andDataBufferDictionary:
{
  v40 = *MEMORY[0x1E69E9840];
  if (!result)
  {
LABEL_14:
    v34 = *MEMORY[0x1E69E9840];
    return result;
  }

  v5 = result;
  if (*(a2 + 8) >= 0xFFFFu)
  {
    v21 = *__error();
    v22 = _sa_logt();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [v5 debugDescription];
      v24 = [v23 UTF8String];
      v25 = *(a2 + 8);
      *buf = 136315394;
      v37 = v24;
      v38 = 1024;
      v39 = v25;
      _os_log_error_impl(&dword_1E0E2F000, v22, OS_LOG_TYPE_ERROR, "%s: %u mounts", buf, 0x12u);
    }

    *__error() = v21;
    v26 = [v5 debugDescription];
    v27 = [v26 UTF8String];
    v35 = *(a2 + 8);
    _SASetCrashLogMessage(532, "%s: %u mounts", v28, v29, v30, v31, v32, v33, v27);

    result = _os_crash();
    __break(1u);
    goto LABEL_14;
  }

  v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:*(a2 + 8)];
  v9 = v5[2];
  v5[2] = v8;

  if (*(a2 + 8))
  {
    v10 = 0;
    do
    {
      v11 = (a2 + 12 + 16 * v10);
      v12 = v11[1];
      v13 = objc_opt_class();
      Property = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v12, a3, a4, v13, 0);
      v16 = Property;
      if (Property)
      {
        Property = objc_getProperty(Property, v15, 8, 1);
      }

      v17 = Property;
      v18 = v5[2];
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*v11];
      [v18 setObject:v17 forKeyedSubscript:v19];

      ++v10;
    }

    while (*(a2 + 8) > v10);
  }

  v20 = *MEMORY[0x1E69E9840];

  return [v5 fillInThreadsSeen];
}

- (uint64_t)iterateAllTimestamps:(uint64_t)result
{
  if (result)
  {
    v2 = *(result + 16);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __60__SAMountStatusTracker_Serialization__iterateAllTimestamps___block_invoke;
    v3[3] = &unk_1E86F85E8;
    v3[4] = a2;
    return [v2 enumerateKeysAndObjectsUsingBlock:v3];
  }

  return result;
}

void __60__SAMountStatusTracker_Serialization__iterateAllTimestamps___block_invoke(uint64_t a1, const char *a2, id self)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  if (self)
  {
    Property = objc_getProperty(self, a2, 8, 1);
  }

  else
  {
    Property = 0;
  }

  v5 = Property;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = *(a1 + 32);
        if (v11)
        {
          v13 = objc_getProperty(v11, v7, 8, 1);
        }

        else
        {
          v13 = 0;
        }

        (*(v12 + 16))(v12, v13);
        ++v10;
      }

      while (v8 != v10);
      v14 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v8 = v14;
    }

    while (v14);
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end