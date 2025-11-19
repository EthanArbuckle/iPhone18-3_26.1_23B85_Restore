@interface SAThread
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4;
+ (id)threadWithId:(uint64_t)a1;
- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5;
- (BOOL)isProcessorIdleThread;
- (NSString)debugDescription;
- (SAThread)initWithId:(unint64_t)a3;
- (id)firstThreadStateOnOrAfterTime:(id)a3 sampleIndex:(unint64_t)a4;
- (id)firstThreadStateOnOrAfterTime:(id)a3 withSampleIndex:(BOOL)a4;
- (id)lastThreadStateOnOrBeforeTime:(id)a3 sampleIndex:(unint64_t)a4;
- (id)patchedStackForTruncatedStack:(id)a3;
- (unint64_t)indexOfFirstThreadStateOnOrAfterTime:(id)a3 sampleIndex:(unint64_t)a4;
- (unint64_t)indexOfFirstThreadStateOnOrAfterTime:(id)a3 withSampleIndex:(BOOL)a4;
- (unint64_t)indexOfLastThreadStateOnOrBeforeTime:(id)a3 sampleIndex:(unint64_t)a4;
- (unint64_t)indexOfLastThreadStateOnOrBeforeTime:(id)a3 withSampleIndex:(BOOL)a4;
- (unint64_t)sampleCountInTimestampRangeStart:(id)a3 end:(id)a4;
- (void)addSelfToSerializationDictionary:(id)a3;
- (void)cpuTimeForThreadStateIndex:(uint64_t)a3@<X2> inTimestampRangeStart:(uint64_t)a4@<X3> end:(void *)a5@<X8>;
- (void)enumerateThreadStatesBetweenStartTime:(id)a3 startSampleIndex:(unint64_t)a4 endTime:(id)a5 endSampleIndex:(unint64_t)a6 reverseOrder:(BOOL)a7 block:(id)a8;
- (void)forwardFillMonotonicallyIncreasingData;
- (void)insertState:(void *)a3 atIndex:;
- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6;
@end

@implementation SAThread

- (BOOL)isProcessorIdleThread
{
  v2 = [(NSMutableArray *)self->_threadStates lastObject];
  if (v2)
  {
    v3 = v2[40] >> 7;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (SAThread)initWithId:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = SAThread;
  v4 = [(SAThread *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_threadId = a3;
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    threadStates = v5->_threadStates;
    v5->_threadStates = v6;
  }

  return v5;
}

+ (id)threadWithId:(uint64_t)a1
{
  v2 = [objc_alloc(objc_opt_self()) initWithId:a2];

  return v2;
}

- (unint64_t)indexOfFirstThreadStateOnOrAfterTime:(id)a3 sampleIndex:(unint64_t)a4
{
  if (![(NSMutableArray *)self->_threadStates count])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (a3)
  {
    threadStates = self->_threadStates;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __61__SAThread_indexOfFirstThreadStateOnOrAfterTime_sampleIndex___block_invoke;
    v12[3] = &unk_1E86F7040;
    v12[4] = a3;
    a3 = SABinarySearchArray(threadStates, 1280, v12);
  }

  if (a4 != 0x7FFFFFFFFFFFFFFFLL && a3 < [(NSMutableArray *)self->_threadStates count])
  {
    do
    {
      v8 = [(NSMutableArray *)self->_threadStates objectAtIndexedSubscript:a3];
      if ([v8 startSampleIndex] == 0x7FFFFFFFFFFFFFFFLL)
      {
      }

      else
      {
        v9 = [(NSMutableArray *)self->_threadStates objectAtIndexedSubscript:a3];
        v10 = [v9 endSampleIndex];

        if (v10 >= a4)
        {
          break;
        }
      }

      a3 = a3 + 1;
    }

    while (a3 < [(NSMutableArray *)self->_threadStates count]);
  }

  if (a3 >= [(NSMutableArray *)self->_threadStates count])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return a3;
  }
}

uint64_t __61__SAThread_indexOfFirstThreadStateOnOrAfterTime_sampleIndex___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = [a2 startTimestamp];
  LOBYTE(v4) = [v4 lt:v5];

  if (v4)
  {
    return -1;
  }

  v7 = *(a1 + 32);
  v8 = [a2 endTimestamp];
  LODWORD(v7) = [v7 gt:v8];

  return v7;
}

- (id)firstThreadStateOnOrAfterTime:(id)a3 sampleIndex:(unint64_t)a4
{
  v5 = [(SAThread *)self indexOfFirstThreadStateOnOrAfterTime:a3 sampleIndex:a4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NSMutableArray *)self->_threadStates objectAtIndexedSubscript:v5];
  }

  return v6;
}

- (unint64_t)indexOfLastThreadStateOnOrBeforeTime:(id)a3 sampleIndex:(unint64_t)a4
{
  if (![(NSMutableArray *)self->_threadStates count])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  threadStates = self->_threadStates;
  if (a3)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __61__SAThread_indexOfLastThreadStateOnOrBeforeTime_sampleIndex___block_invoke;
    v14[3] = &unk_1E86F7040;
    v14[4] = a3;
    v8 = SABinarySearchArray(threadStates, 1536, v14);
    if (!v8)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v8 = [(NSMutableArray *)threadStates count];
  }

  v9 = v8 - 1;
  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v9;
  }

  while (1)
  {
    v11 = [(NSMutableArray *)self->_threadStates objectAtIndexedSubscript:v9];
    if ([v11 startSampleIndex] == 0x7FFFFFFFFFFFFFFFLL)
    {
    }

    else
    {
      v12 = [(NSMutableArray *)self->_threadStates objectAtIndexedSubscript:v9];
      v13 = [v12 startSampleIndex];

      if (v13 <= a4)
      {
        return v9;
      }
    }

    if (!v9)
    {
      break;
    }

    --v9;
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

uint64_t __61__SAThread_indexOfLastThreadStateOnOrBeforeTime_sampleIndex___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = [a2 startTimestamp];
  LOBYTE(v4) = [v4 lt:v5];

  if (v4)
  {
    return -1;
  }

  v7 = *(a1 + 32);
  v8 = [a2 endTimestamp];
  LODWORD(v7) = [v7 gt:v8];

  return v7;
}

- (id)lastThreadStateOnOrBeforeTime:(id)a3 sampleIndex:(unint64_t)a4
{
  v5 = [(SAThread *)self indexOfLastThreadStateOnOrBeforeTime:a3 sampleIndex:a4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NSMutableArray *)self->_threadStates objectAtIndexedSubscript:v5];
  }

  return v6;
}

- (id)firstThreadStateOnOrAfterTime:(id)a3 withSampleIndex:(BOOL)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return [(SAThread *)self firstThreadStateOnOrAfterTime:a3 sampleIndex:v4];
}

- (unint64_t)indexOfFirstThreadStateOnOrAfterTime:(id)a3 withSampleIndex:(BOOL)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return [(SAThread *)self indexOfFirstThreadStateOnOrAfterTime:a3 sampleIndex:v4];
}

- (unint64_t)indexOfLastThreadStateOnOrBeforeTime:(id)a3 withSampleIndex:(BOOL)a4
{
  v4 = a4;
  v7 = [(NSMutableArray *)self->_threadStates lastObject];
  v8 = v7;
  if (v7)
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v4 || (v10 = 0x7FFFFFFFFFFFFFFFLL, v9 = [v7 endSampleIndex], v9 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v10 = [(SAThread *)self indexOfLastThreadStateOnOrBeforeTime:a3 sampleIndex:v9];
    }
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

- (void)enumerateThreadStatesBetweenStartTime:(id)a3 startSampleIndex:(unint64_t)a4 endTime:(id)a5 endSampleIndex:(unint64_t)a6 reverseOrder:(BOOL)a7 block:(id)a8
{
  v13 = [(SAThread *)self indexOfFirstThreadStateOnOrAfterTime:a3 sampleIndex:a4];
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = v13;
    v15 = [(SAThread *)self indexOfLastThreadStateOnOrBeforeTime:a5 sampleIndex:a6];
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = v15;
      if (v14 <= v15)
      {
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __109__SAThread_enumerateThreadStatesBetweenStartTime_startSampleIndex_endTime_endSampleIndex_reverseOrder_block___block_invoke;
        v19[3] = &unk_1E86F7068;
        v19[4] = self;
        v19[5] = a8;
        v17 = MEMORY[0x1E12EBE50](v19);
        if (a7)
        {
          do
          {
            if (v16 + 1 <= v14)
            {
              break;
            }

            v18 = v17[2](v17, v16--);
          }

          while ((v18 & 1) == 0);
        }

        else
        {
          do
          {
            if (v17[2](v17, v14))
            {
              break;
            }

            ++v14;
          }

          while (v14 <= v16);
        }
      }
    }
  }
}

uint64_t __109__SAThread_enumerateThreadStatesBetweenStartTime_startSampleIndex_endTime_endSampleIndex_reverseOrder_block___block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v3 = *(a1 + 40);
  v4 = [*(*(a1 + 32) + 8) objectAtIndexedSubscript:a2];
  (*(v3 + 16))(v3, v4, a2, &v6);

  return v6;
}

uint64_t __93__SAThread_enumerateThreadStatesBetweenStartTime_endTime_reverseOrder_withSampleIndex_block___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 40) != 1 || (result = [a2 startSampleIndex], result != 0x7FFFFFFFFFFFFFFFLL))
  {
    v4 = *(*(a1 + 32) + 16);

    return v4();
  }

  return result;
}

- (unint64_t)sampleCountInTimestampRangeStart:(id)a3 end:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  if (a3 && a4 && ([a3 le:a4] & 1) == 0)
  {
    v13 = *__error();
    v14 = _sa_logt();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [a3 debugDescription];
      v16 = [v15 UTF8String];
      v17 = [a4 debugDescription];
      *buf = 136315394;
      v28 = v16;
      v29 = 2080;
      v30 = [v17 UTF8String];
      _os_log_error_impl(&dword_1E0E2F000, v14, OS_LOG_TYPE_ERROR, "start time %s after end time %s", buf, 0x16u);
    }

    *__error() = v13;
    v18 = [a3 debugDescription];
    v19 = [v18 UTF8String];
    v20 = [a4 debugDescription];
    [v20 UTF8String];
    _SASetCrashLogMessage(259, "start time %s after end time %s", v21, v22, v23, v24, v25, v26, v19);

    _os_crash();
    __break(1u);
  }

  result = [(NSMutableArray *)self->_threadStates count];
  if (result)
  {
    v8 = [(SAThread *)self indexOfFirstThreadStateOnOrAfterTime:a3 sampleIndex:0x7FFFFFFFFFFFFFFFLL];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      result = 0;
    }

    else
    {
      v9 = v8;
      v10 = [(SAThread *)self indexOfLastThreadStateOnOrBeforeTime:a4 sampleIndex:0x7FFFFFFFFFFFFFFFLL];
      if (v10 >= v9)
      {
        v11 = v10 - v9 + 1;
      }

      else
      {
        v11 = 0;
      }

      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        result = 0;
      }

      else
      {
        result = v11;
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)cpuTimeForThreadStateIndex:(uint64_t)a3@<X2> inTimestampRangeStart:(uint64_t)a4@<X3> end:(void *)a5@<X8>
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (!a1)
  {
    return;
  }

  v10 = [a1 threadStates];
  v11 = [v10 count];

  if (v11 < a2)
  {
    return;
  }

  v12 = [a1 threadStates];
  v43 = [v12 objectAtIndexedSubscript:a2];

  v13 = [v43 endSampleIndex];
  if (!a2)
  {
    goto LABEL_19;
  }

  v14 = [v43 startTimestamp];
  v15 = [v14 gt:a3];

  if (!v15)
  {
    goto LABEL_19;
  }

  v16 = [a1 threadStates];
  v17 = [v16 objectAtIndexedSubscript:a2 - 1];

  if (v13 == 0x7FFFFFFFFFFFFFFFLL || [v17 startSampleIndex] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = v17;
  }

  else
  {
    v18 = a2 - 2;
    while (v18 != -1)
    {
      v19 = [a1 threadStates];
      v20 = [v19 objectAtIndexedSubscript:v18];

      --v18;
      v17 = v20;
      if ([v20 startSampleIndex] != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_13;
      }
    }

    v20 = 0;
  }

LABEL_13:
  v21 = [v20 endTimestamp];
  v22 = [v21 lt:a3];

  if (v22)
  {

LABEL_19:
    v20 = [a1 creationTimestamp];
    if (!v20)
    {
      goto LABEL_24;
    }

    v27 = [a1 creationTimestamp];
    v28 = [v27 ge:a3];

    if (v28)
    {
      *a5 = [v43 cpuTimeNs];
      a5[1] = [v43 instructions];
      v26 = [v43 cycles];
      v20 = 0;
      goto LABEL_22;
    }

    v20 = 0;
    goto LABEL_24;
  }

  if (!v20)
  {
    goto LABEL_19;
  }

  if (![v43 isIdleWorkQueue] || objc_msgSend(v20, "isIdleWorkQueue"))
  {
    v23 = [v43 cpuTimeNs];
    *a5 = v23 - [v20 cpuTimeNs];
    v24 = [v43 instructions];
    a5[1] = v24 - [v20 instructions];
    v25 = [v43 cycles];
    v26 = v25 - [v20 cycles];
LABEL_22:
    a5[2] = v26;
  }

LABEL_24:
  if (([v43 isIdleWorkQueue] & 1) == 0)
  {
    v29 = [a1 threadStates];
    if ([v29 count] - 1 <= a2)
    {
LABEL_42:

      goto LABEL_43;
    }

    v30 = [v43 endTimestamp];
    v31 = [v30 lt:a4];

    if (v31)
    {
      v32 = [a1 threadStates];
      v29 = [v32 objectAtIndexedSubscript:a2 + 1];

      if (v13 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([v29 startSampleIndex] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v33 = a2 + 2;
          while (1)
          {
            v34 = [a1 threadStates];
            v35 = [v34 count] - 1;

            if (v33 - 1 >= v35)
            {
              break;
            }

            v36 = [a1 threadStates];
            v37 = [v36 objectAtIndexedSubscript:v33];

            ++v33;
            v29 = v37;
            if ([v37 startSampleIndex] != 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_36;
            }
          }

          v37 = 0;
        }

        else
        {
          v37 = v29;
        }

LABEL_36:
        v38 = [v37 startTimestamp];
        v39 = [v38 gt:a4];

        if (v39)
        {

          v29 = 0;
          goto LABEL_42;
        }

        v29 = v37;
      }

      if (v29 && [v29 isIdleWorkQueue])
      {
        v40 = [v29 cpuTimeNs];
        *a5 += v40 - [v43 cpuTimeNs];
        v41 = [v29 instructions];
        a5[1] += v41 - [v43 instructions];
        v42 = [v29 cycles];
        a5[2] += v42 - [v43 cycles];
      }

      goto LABEL_42;
    }
  }

LABEL_43:
}

- (void)forwardFillMonotonicallyIncreasingData
{
  v78 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v2 = [a1 threadStates];
    v3 = [v2 countByEnumeratingWithState:&v43 objects:v77 count:16];
    if (v3)
    {
      v4 = v3;
      v29 = a1;
      v5 = 0;
      v6 = 0;
      v7 = *v44;
      v28 = v2;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          v9 = v6;
          if (*v44 != v7)
          {
            objc_enumerationMutation(v2);
          }

          v10 = *(*(&v43 + 1) + 8 * i);
          if (v6)
          {
            if ([*(*(&v43 + 1) + 8 * i) userTimeInNs] && (v11 = objc_msgSend(v10, "userTimeInNs"), v11 < objc_msgSend(v6, "userTimeInNs")) || objc_msgSend(v10, "systemTimeInNs") && (v12 = objc_msgSend(v10, "systemTimeInNs"), v12 < objc_msgSend(v6, "systemTimeInNs")) || objc_msgSend(v10, "instructions") && (v13 = objc_msgSend(v10, "instructions"), v13 < objc_msgSend(v6, "instructions")) || objc_msgSend(v10, "cycles") && (v14 = objc_msgSend(v10, "cycles"), v14 < objc_msgSend(v6, "cycles")))
            {
              v15 = *__error();
              v16 = _sa_logt();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
              {
                v41 = [v29 threadId];
                v42 = [v29 threadStates];
                v25 = [v42 count];
                v40 = [v9 debugDescription];
                v39 = [v10 debugDescription];
                v38 = [v9 cpuTimeNs];
                v37 = [v9 userTimeInNs];
                v36 = [v9 systemTimeInNs];
                v35 = [v10 cpuTimeNs];
                v34 = [v10 userTimeInNs];
                v33 = [v10 systemTimeInNs];
                v32 = [v9 instructions];
                v31 = [v10 instructions];
                v30 = [v9 cycles];
                v26 = [v10 cycles];
                *buf = 134221570;
                v48 = v41;
                v49 = 2048;
                v50 = v5;
                v51 = 2048;
                v52 = v25;
                v53 = 2112;
                v54 = v40;
                v55 = 2112;
                v56 = v39;
                v57 = 2048;
                v58 = v38;
                v59 = 2048;
                v60 = v37;
                v61 = 2048;
                v62 = v36;
                v63 = 2048;
                v64 = v35;
                v65 = 2048;
                v66 = v34;
                v67 = 2048;
                v68 = v33;
                v69 = 2048;
                v70 = v32;
                v71 = 2048;
                v72 = v31;
                v73 = 2048;
                v74 = v30;
                v75 = 2048;
                v76 = v26;
                _os_log_debug_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_DEBUG, "Thread 0x%llx monotonically increasing data decreased at index %lu of %lu between %@ and %@:\ncpu time %llu (%llu + %llu) -> %llu (%llu + %llu)\ninstructions %llu -> %llu\ncycles %llu -> %llu", buf, 0x98u);

                v2 = v28;
              }

              *__error() = v15;
            }

            v17 = [v10 userTimeInNs];
            if (v17 < [v9 userTimeInNs])
            {
              v18 = [v9 userTimeInNs];
              if (v10)
              {
                v10[17] = v18;
              }
            }

            v19 = [v10 systemTimeInNs];
            if (v19 < [v9 systemTimeInNs])
            {
              v20 = [v9 systemTimeInNs];
              if (v10)
              {
                v10[18] = v20;
              }
            }

            v21 = [v10 instructions];
            if (v21 < [v9 instructions])
            {
              v22 = [v9 instructions];
              if (v10)
              {
                v10[19] = v22;
              }
            }

            v23 = [v10 cycles];
            if (v23 < [v9 cycles])
            {
              v24 = [v9 cycles];
              if (v10)
              {
                v10[20] = v24;
              }
            }
          }

          v6 = v10;

          ++v5;
        }

        v4 = [v2 countByEnumeratingWithState:&v43 objects:v77 count:16];
      }

      while (v4);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)insertState:(void *)a3 atIndex:
{
  v53 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a3;
    v4 = a2;
    v5 = a1;
    [a1[1] insertObject:a2 atIndex:a3];
    v6 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v3, objc_msgSend(v5[1], "count") - v3}];
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v9 = v5[1];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __32__SAThread_insertState_atIndex___block_invoke;
    v45[3] = &unk_1E86F70B8;
    v10 = v7;
    v46 = v10;
    v11 = v8;
    v47 = v11;
    [v9 enumerateObjectsAtIndexes:v6 options:0 usingBlock:v45];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __32__SAThread_insertState_atIndex___block_invoke_2;
    v44[3] = &unk_1E86F7108;
    v44[4] = v5;
    v44[5] = v3;
    v12 = MEMORY[0x1E12EBE50](v44);
    (v12)[2](v12, v10);
    v13 = [v4 dispatchQueue];
    if (v13)
    {
      v14 = [(SARecipeState *)SADispatchQueueState stateWithThread:v5 threadStateIndex:v3];
      v15 = (v13 + 24);
      v16 = *(v13 + 24);
      if (v16)
      {
        v15 = 0;
      }

      v41 = v15;
      v42 = v14;
      [*(v13 + 8) addObject:v14];
      [*(v13 + 8) sortUsingComparator:&__block_literal_global_6];
      if ((v16 & 1) == 0)
      {
        v34 = v12;
        v35 = v11;
        v36 = v10;
        v37 = v4;
        v38 = v5;
        v39 = v3;
        v40 = v6;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v33 = v13;
        obj = *(v13 + 8);
        v17 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v49;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v49 != v19)
              {
                objc_enumerationMutation(obj);
              }

              v21 = *(*(&v48 + 1) + 8 * i);
              v22 = [0 thread];
              v23 = [v21 thread];
              v24 = v23;
              if (v22 == v23)
              {
              }

              else
              {
                v25 = [0 threadState];
                v26 = [v25 endTimestamp];
                v27 = [v21 threadState];
                v28 = [v27 startTimestamp];
                v29 = [v26 ge:v28];

                if (v29)
                {
                  *v41 = 1;
                  goto LABEL_17;
                }
              }
            }

            v18 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
          }

          while (v18);
        }

LABEL_17:

        v3 = v39;
        v6 = v40;
        v4 = v37;
        v5 = v38;
        v11 = v35;
        v10 = v36;
        v13 = v33;
        v12 = v34;
      }
    }

    (v12)[2](v12, v11);
    v30 = [v4 swiftTask];
    if (v30)
    {
      v31 = [(SARecipeState *)SASwiftTaskState stateWithThread:v5 threadStateIndex:v3];
      [v30[1] addObject:v31];
      [v30[1] sortUsingComparator:&__block_literal_global_6];
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

void __32__SAThread_insertState_atIndex___block_invoke(uint64_t a1, void *a2)
{
  v5 = [a2 dispatchQueue];
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
  }

  v4 = [a2 swiftTask];
  if (v4)
  {
    [*(a1 + 40) addObject:v4];
  }
}

void __32__SAThread_insertState_atIndex___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v12 + 1) + 8 * v7) states];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __32__SAThread_insertState_atIndex___block_invoke_3;
        v11[3] = &unk_1E86F70E0;
        v9 = *(a1 + 40);
        v11[4] = *(a1 + 32);
        v11[5] = v9;
        [v8 enumerateObjectsWithOptions:2 usingBlock:v11];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __32__SAThread_insertState_atIndex___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 thread];
  v8 = *(a1 + 32);

  if (v7 == v8)
  {
    if ([a2 threadStateIndex] >= *(a1 + 40))
    {
      v9 = [a2 threadStateIndex];
      if (a2)
      {
        a2[2] = v9 + 1;
      }
    }

    else
    {
      *a4 = 1;
    }
  }
}

- (id)patchedStackForTruncatedStack:(id)a3
{
  v4 = a3;
  v73 = *MEMORY[0x1E69E9840];
  v6 = [a3 objectAtIndexedSubscript:0];
  v7 = [v6 isTruncatedBacktraceFrame];

  if ((v7 & 1) == 0)
  {
    v42 = *__error();
    v43 = _sa_logt();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v3 = [v4 objectAtIndexedSubscript:0];
      v44 = [v3 debugDescription];
      *buf = 136315138;
      v68 = [v44 UTF8String];
      _os_log_error_impl(&dword_1E0E2F000, v43, OS_LOG_TYPE_ERROR, "%s is not a truncated frame", buf, 0xCu);
    }

    *__error() = v42;
    v45 = [v4 objectAtIndexedSubscript:0];
    v46 = [v45 debugDescription];
    v47 = [v46 UTF8String];
    _SASetCrashLogMessage(470, "%s is not a truncated frame", v48, v49, v50, v51, v52, v53, v47);

    _os_crash();
    __break(1u);
LABEL_48:
    v54 = *__error();
    v55 = _sa_logt();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v68 = v3;
      v69 = 2048;
      v70 = 0x7FFFFFFFFFFFFFFFLL;
      _os_log_error_impl(&dword_1E0E2F000, v55, OS_LOG_TYPE_ERROR, "best match length is %lu, but index is %lu", buf, 0x16u);
    }

    *__error() = v54;
    _SASetCrashLogMessage(532, "best match length is %lu, but index is %lu", v56, v57, v58, v59, v60, v61, v3);
    _os_crash();
    __break(1u);
  }

  if (!self->_resampledLeafUserFrame)
  {
    v28 = v4;
    goto LABEL_42;
  }

  v66 = [v4 count];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v62 = self;
  v9 = self->_resampledLeafUserFrame;
  if (v9)
  {
    v10 = v9;
    do
    {
      [v8 insertObject:v10 atIndex:0];
      parentFrame = v10->_parentFrame;
      v12 = parentFrame;

      v10 = v12;
    }

    while (parentFrame);
  }

  v63 = [v8 count];
  if (!v63)
  {
    goto LABEL_29;
  }

  v3 = 0;
  v13 = 0;
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v64 = v14;
    v65 = v3;
    if (v66 < 2)
    {
      v16 = 0;
    }

    else
    {
      v15 = 0;
      while (1)
      {
        v16 = v15 + 1;
        v17 = v4;
        v18 = [v4 objectAtIndexedSubscript:v15 + 1];
        v19 = [v18 address];
        v20 = v8;
        v21 = [v8 objectAtIndexedSubscript:v13 + v15];
        v22 = [v21 address];

        if (v19 != v22)
        {
          break;
        }

        if (v16 >= v63 - v13)
        {
          goto LABEL_16;
        }

        v23 = v15 + 2;
        ++v15;
        v4 = v17;
        v8 = v20;
        if (v23 >= v66)
        {
          goto LABEL_17;
        }
      }

      v16 = v15;
LABEL_16:
      v4 = v17;
      v8 = v20;
    }

LABEL_17:
    v14 = v64;
    v3 = v65;
    if (v16)
    {
      v24 = v16 >= v65;
    }

    else
    {
      v24 = 0;
    }

    if (v24)
    {
      v3 = v16;
      v14 = v13;
    }

    ++v13;
  }

  while (v13 != v63);
  if (!v3)
  {
LABEL_29:
    if ([v4 count] >= 3)
    {
      v27 = [v4 objectAtIndexedSubscript:2];
      if ([v27 isKernel])
      {
      }

      else
      {
        if ([v4 count] == 3)
        {
        }

        else
        {
          v29 = [v4 objectAtIndexedSubscript:3];
          v30 = [v29 isKernel];

          if ((v30 & 1) == 0)
          {
            goto LABEL_38;
          }
        }

        v31 = [v4 objectAtIndexedSubscript:2];
        v32 = [v31 address];
        v33 = [v8 lastObject];
        v34 = [v33 address];

        if (v32 == v34)
        {
          v14 = v63 - 1;
          v3 = 1;
          goto LABEL_27;
        }
      }
    }

LABEL_38:
    v35 = *__error();
    v36 = _sa_logt();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v39 = [(SAThread *)v62 debugDescription];
      v40 = [v8 debugDescription];
      v41 = [v4 debugDescription];
      *buf = 138412802;
      v68 = v39;
      v69 = 2112;
      v70 = v40;
      v71 = 2112;
      v72 = v41;
      _os_log_debug_impl(&dword_1E0E2F000, v36, OS_LOG_TYPE_DEBUG, "%@ no matching frames in resampled stack:%@\nvs\n%@", buf, 0x20u);
    }

    *__error() = v35;
    goto LABEL_41;
  }

LABEL_27:
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_48;
  }

  [v8 removeObjectsInRange:{v14, v63 - v14}];
  v26 = [v4 subarrayWithRange:{1, v66 - 1}];
  [v8 addObjectsFromArray:v26];

  v4 = v8;
LABEL_41:
  v28 = v4;

LABEL_42:
  v37 = *MEMORY[0x1E69E9840];

  return v28;
}

- (NSString)debugDescription
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Thread 0x%llx", self->_threadId];

  return v2;
}

- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5
{
  v57 = *MEMORY[0x1E69E9840];
  if ([(SAThread *)self sizeInBytesForSerializedVersion]!= a4)
  {
    v5 = *__error();
    v16 = _sa_logt();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [(SAThread *)self debugDescription];
      *buf = 136315650;
      v54 = [v17 UTF8String];
      v55 = 2048;
      *v56 = [(SAThread *)self sizeInBytesForSerializedVersion];
      *&v56[8] = 2048;
      *&v56[10] = a4;
      _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v5;
    v18 = [(SAThread *)self debugDescription];
    v19 = [v18 UTF8String];
    [(SAThread *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(4071, "%s: size %lu != buffer length %lu", v20, v21, v22, v23, v24, v25, v19);

    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  *&a3->var0 = 769;
  *(&a3->var1 + 1) = self->_threadId;
  v10 = BYTE6(a3->var4) & 0xFE | self->_isGlobalForcedIdle;
  BYTE6(a3->var4) = v10;
  BYTE6(a3->var4) = v10 & 0xFD | (2 * self->_isMainThread);
  *(&a3->var2 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_creationTimestamp, a5);
  *(&a3->var3 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_exitTimestamp, a5);
  if ([(NSMutableArray *)self->_threadStates count]>= 0xFFFFFFFF)
  {
LABEL_8:
    v26 = *__error();
    v27 = _sa_logt();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [(SAThread *)self debugDescription];
      v29 = [v28 UTF8String];
      v30 = [(NSMutableArray *)self->_threadStates count];
      *buf = 136315394;
      v54 = v29;
      v55 = 2048;
      *v56 = v30;
      _os_log_error_impl(&dword_1E0E2F000, v27, OS_LOG_TYPE_ERROR, "%s has %lu states", buf, 0x16u);
    }

    *__error() = v26;
    a3 = [(SAThread *)self debugDescription];
    v31 = [($6806D93BA7D51FFB199EB98EFF121020 *)a3 UTF8String];
    [(NSMutableArray *)self->_threadStates count];
    _SASetCrashLogMessage(4085, "%s has %lu states", v32, v33, v34, v35, v36, v37, v31);

    _os_crash();
    __break(1u);
LABEL_11:
    v38 = *__error();
    v39 = _sa_logt();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = [(SAThread *)self debugDescription];
      v41 = [v40 UTF8String];
      v42 = *(&a3->var4 + 2);
      v43 = [(SAThread *)self sizeInBytesForSerializedVersion];
      *buf = 136315906;
      v54 = v41;
      v55 = 1024;
      *v56 = v42;
      *&v56[4] = 2048;
      *&v56[6] = v5;
      *&v56[14] = 2048;
      *&v56[16] = v43;
      _os_log_error_impl(&dword_1E0E2F000, v39, OS_LOG_TYPE_ERROR, "%s: after serializing (with %u threadStates), ended with length %ld, should be %lu", buf, 0x26u);
    }

    *__error() = v38;
    v44 = [(SAThread *)self debugDescription];
    v45 = [v44 UTF8String];
    v46 = *(&a3->var4 + 2);
    [(SAThread *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(4092, "%s: after serializing (with %u threadStates), ended with length %ld, should be %lu", v47, v48, v49, v50, v51, v52, v45);

    _os_crash();
    __break(1u);
  }

  v11 = [(NSMutableArray *)self->_threadStates count];
  *(&a3->var4 + 2) = v11;
  SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(&a3->var5, v11, self->_threadStates, a5);
  v12 = *(&a3->var4 + 2);
  v5 = 8 * v12 + 48;
  if (v5 != [(SAThread *)self sizeInBytesForSerializedVersion])
  {
    goto LABEL_11;
  }

  v13 = &a3->var5 + 2 * v12;
  *v13 = SASerializableIndexForPointerFromSerializationDictionary(self->_resampledLeafUserFrame, a5);
  *(v13 + 1) = SASerializableIndexForPointerFromSerializationDictionary(self->_resampledleafOfCRootFramesReplacedBySwiftAsync, a5);
  v14 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(a3, self, v5);

  if (v6)
  {
    [(SATimestamp *)self->_creationTimestamp addSelfToSerializationDictionary:a3];
    [(SATimestamp *)self->_exitTimestamp addSelfToSerializationDictionary:a3];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = self->_threadStates;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v13 + 1) + 8 * v11++) addSelfToSerializationDictionary:{a3, v13}];
        }

        while (v9 != v11);
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    [(SAFrame *)self->_resampledLeafUserFrame addSelfToSerializationDictionary:a3];
    [(SAFrame *)self->_resampledleafOfCRootFramesReplacedBySwiftAsync addSelfToSerializationDictionary:a3];
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4
{
  v30 = *MEMORY[0x1E69E9840];
  if (*a3 >= 4u)
  {
    goto LABEL_11;
  }

  if (a4 <= 0x1F)
  {
    v8 = *__error();
    v5 = _sa_logt();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v27 = a4;
      v28 = 2048;
      v29 = 32;
      _os_log_error_impl(&dword_1E0E2F000, v5, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAThread struct %lu", buf, 0x16u);
    }

    *__error() = v8;
    _SASetCrashLogMessage(4121, "bufferLength %lu < serialized SAThread struct %lu", v9, v10, v11, v12, v13, v14, a4);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  v5 = a3;
  if (8 * *(a3 + 26) + 32 > a4)
  {
LABEL_8:
    v15 = *__error();
    v16 = _sa_logt();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(v5 + 26);
      *buf = 134218240;
      v27 = a4;
      v28 = 1024;
      LODWORD(v29) = v17;
      _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAThread struct with %u thread states", buf, 0x12u);
    }

    *__error() = v15;
    v25 = *(v5 + 26);
    _SASetCrashLogMessage(4122, "bufferLength %lu < serialized SAThread struct with %u thread states", v18, v19, v20, v21, v22, v23, a4);
    _os_crash();
    __break(1u);
LABEL_11:
    v24 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAThread version" userInfo:0];
    objc_exception_throw(v24);
  }

  result = [SAThread threadWithId:?];
  *(result + 16) = *(v5 + 30) & 1;
  *(result + 17) = (*(v5 + 30) & 2) != 0;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6
{
  v78 = *MEMORY[0x1E69E9840];
  if (*a3 >= 4u)
  {
    goto LABEL_24;
  }

  if (a4 <= 0x1F)
  {
    v36 = *__error();
    v7 = _sa_logt();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v75 = a4;
      v76 = 2048;
      v77 = 32;
      _os_log_error_impl(&dword_1E0E2F000, v7, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAThread struct %lu", buf, 0x16u);
    }

    *__error() = v36;
    _SASetCrashLogMessage(4136, "bufferLength %lu < serialized SAThread struct %lu", v37, v38, v39, v40, v41, v42, a4);
    _os_crash();
    __break(1u);
    goto LABEL_15;
  }

  v7 = a3;
  if (8 * *(a3 + 26) + 32 > a4)
  {
LABEL_15:
    v43 = *__error();
    v44 = _sa_logt();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = *(v7 + 26);
      *buf = 134218240;
      v75 = a4;
      v76 = 1024;
      LODWORD(v77) = v45;
      _os_log_error_impl(&dword_1E0E2F000, v44, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAThread struct with %u thread states", buf, 0x12u);
    }

    *__error() = v43;
    v71 = *(v7 + 26);
    _SASetCrashLogMessage(4137, "bufferLength %lu < serialized SAThread struct with %u thread states", v46, v47, v48, v49, v50, v51, a4);
    _os_crash();
    __break(1u);
    goto LABEL_18;
  }

  v11 = *(a3 + 10);
  v12 = objc_opt_class();
  v13 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v11, a5, a6, v12, 0);
  creationTimestamp = self->_creationTimestamp;
  self->_creationTimestamp = v13;

  v15 = *(v7 + 18);
  v16 = objc_opt_class();
  v17 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v15, a5, a6, v16, 0);
  exitTimestamp = self->_exitTimestamp;
  self->_exitTimestamp = v17;

  v19 = v7 + 32;
  v20 = *(v7 + 26);
  v21 = objc_opt_class();
  v22 = SASerializableNewMutableArrayFromIndexList(v7 + 32, v20, a5, a6, v21);
  threadStates = self->_threadStates;
  self->_threadStates = v22;

  if (*(v7 + 1) < 2u)
  {
LABEL_11:
    v35 = *MEMORY[0x1E69E9840];
    return;
  }

  v24 = *(v7 + 26);
  if (8 * v24 + 40 > a4)
  {
LABEL_18:
    v52 = *__error();
    v53 = _sa_logt();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v54 = *(v7 + 26);
      *buf = 134218240;
      v75 = a4;
      v76 = 1024;
      LODWORD(v77) = v54;
      _os_log_error_impl(&dword_1E0E2F000, v53, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAThread v2 struct with %u thread states", buf, 0x12u);
    }

    *__error() = v52;
    v72 = *(v7 + 26);
    _SASetCrashLogMessage(4147, "bufferLength %lu < serialized SAThread v2 struct with %u thread states", v55, v56, v57, v58, v59, v60, a4);
    _os_crash();
    __break(1u);
    goto LABEL_21;
  }

  v25 = *(v19 + 8 * v24);
  v26 = objc_opt_class();
  v27 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v25, a5, a6, v26, 0);
  resampledLeafUserFrame = self->_resampledLeafUserFrame;
  self->_resampledLeafUserFrame = v27;

  if (*(v7 + 1) < 3u)
  {
    goto LABEL_11;
  }

  v29 = *(v7 + 26);
  if (8 * v29 + 48 > a4)
  {
LABEL_21:
    v61 = *__error();
    v62 = _sa_logt();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      v63 = *(v7 + 26);
      *buf = 134218240;
      v75 = a4;
      v76 = 1024;
      LODWORD(v77) = v63;
      _os_log_error_impl(&dword_1E0E2F000, v62, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAThread v3 struct with %u thread states", buf, 0x12u);
    }

    *__error() = v61;
    v73 = *(v7 + 26);
    _SASetCrashLogMessage(4153, "bufferLength %lu < serialized SAThread v3 struct with %u thread states", v64, v65, v66, v67, v68, v69, a4);
    _os_crash();
    __break(1u);
LABEL_24:
    v70 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAThread version" userInfo:0];
    objc_exception_throw(v70);
  }

  v30 = *(v19 + 8 * v29 + 8);
  v31 = objc_opt_class();
  v32 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v30, a5, a6, v31, 0);
  resampledleafOfCRootFramesReplacedBySwiftAsync = self->_resampledleafOfCRootFramesReplacedBySwiftAsync;
  self->_resampledleafOfCRootFramesReplacedBySwiftAsync = v32;
  v34 = *MEMORY[0x1E69E9840];
}

@end