@interface SARecipe
- (uint64_t)addState:(_BYTE *)state hasConcurrentExecution:;
- (uint64_t)addStates:(_BYTE *)states hasConcurrentExecution:;
- (uint64_t)indexOfFirstStateOnOrAfterTime:(unint64_t)time sampleIndex:;
- (uint64_t)indexOfLastStateOnOrBeforeTime:(unint64_t)time sampleIndex:;
- (void)enumerateStatesBetweenStartTime:(unint64_t)time startSampleIndex:(uint64_t)index endTime:(unint64_t)endTime endSampleIndex:(char)sampleIndex reverseOrder:(uint64_t)order block:;
- (void)initWithId:(void *)id;
@end

@implementation SARecipe

- (void)initWithId:(void *)id
{
  if (!id)
  {
    return 0;
  }

  v8.receiver = id;
  v8.super_class = SARecipe;
  v3 = objc_msgSendSuper2(&v8, sel_init);
  v4 = v3;
  if (v3)
  {
    v3[2] = a2;
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = v4[1];
    v4[1] = v5;
  }

  return v4;
}

- (uint64_t)addState:(_BYTE *)state hasConcurrentExecution:
{
  if (result)
  {
    v5 = result;
    if (state)
    {
      lastObject = [*(result + 8) lastObject];
      v7 = lastObject;
      if (lastObject)
      {
        thread = [lastObject thread];
        thread2 = [a2 thread];
        if (thread == thread2)
        {
          v13 = 0;
        }

        else
        {
          threadState = [v7 threadState];
          endTimestamp = [threadState endTimestamp];
          threadState2 = [a2 threadState];
          startTimestamp = [threadState2 startTimestamp];
          v13 = [endTimestamp ge:startTimestamp];
        }
      }

      else
      {
        v13 = 0;
      }

      *state = v13;
    }

    [*(v5 + 8) addObject:a2];
    return [*(v5 + 8) count] - 1;
  }

  return result;
}

uint64_t __47__SARecipe_insertState_hasConcurrentExecution___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 threadState];
  v5 = [v4 startTimestamp];
  v6 = [a3 threadState];
  v7 = [v6 startTimestamp];
  v8 = [v5 compare:v7];

  return v8;
}

- (uint64_t)addStates:(_BYTE *)states hasConcurrentExecution:
{
  if (result)
  {
    v5 = result;
    if ([a2 count])
    {
      if (states)
      {
        lastObject = [*(v5 + 8) lastObject];
        v7 = lastObject;
        if (lastObject)
        {
          thread = [lastObject thread];
          firstObject = [a2 firstObject];
          thread2 = [firstObject thread];
          if (thread == thread2)
          {
            v14 = 0;
          }

          else
          {
            threadState = [v7 threadState];
            endTimestamp = [threadState endTimestamp];
            firstObject2 = [a2 firstObject];
            [firstObject2 threadState];
            v12 = v26 = thread;
            startTimestamp = [v12 startTimestamp];
            v14 = [endTimestamp ge:startTimestamp];

            thread = v26;
          }
        }

        else
        {
          v14 = 0;
        }

        *states = v14;
      }

      [*(v5 + 8) addObjectsFromArray:a2];
      return [*(v5 + 8) count] - 1;
    }

    else
    {
      v15 = *__error();
      v16 = _sa_logt();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "0 recipeStates.count", buf, 2u);
      }

      *__error() = v15;
      _SASetCrashLogMessage(3552, "0 recipeStates.count", v17, v18, v19, v20, v21, v22, v23);
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

- (void)enumerateStatesBetweenStartTime:(unint64_t)time startSampleIndex:(uint64_t)index endTime:(unint64_t)endTime endSampleIndex:(char)sampleIndex reverseOrder:(uint64_t)order block:
{
  if (self)
  {
    v12 = [(SARecipe *)self indexOfFirstStateOnOrAfterTime:a2 sampleIndex:time];
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = v12;
      v14 = [(SARecipe *)self indexOfLastStateOnOrBeforeTime:index sampleIndex:endTime];
      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = v14;
        if (v13 <= v14)
        {
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __103__SARecipe_enumerateStatesBetweenStartTime_startSampleIndex_endTime_endSampleIndex_reverseOrder_block___block_invoke;
          v18[3] = &unk_1E86F7068;
          v18[4] = self;
          v18[5] = order;
          v16 = MEMORY[0x1E12EBE50](v18);
          if (sampleIndex)
          {
            do
            {
              if (v15 + 1 <= v13)
              {
                break;
              }

              v17 = v16[2](v16, v15--);
            }

            while ((v17 & 1) == 0);
          }

          else
          {
            do
            {
              if (v16[2](v16, v13))
              {
                break;
              }

              ++v13;
            }

            while (v13 <= v15);
          }
        }
      }
    }
  }
}

- (uint64_t)indexOfFirstStateOnOrAfterTime:(unint64_t)time sampleIndex:
{
  if (result)
  {
    v4 = result;
    if (a2)
    {
      v5 = *(result + 8);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __55__SARecipe_indexOfFirstStateOnOrAfterTime_sampleIndex___block_invoke;
      v12[3] = &unk_1E86F7150;
      v12[4] = a2;
      v6 = SABinarySearchArray(v5, 1280, v12);
    }

    else
    {
      v6 = 0;
    }

    if (time != 0x7FFFFFFFFFFFFFFFLL && v6 < [*(v4 + 8) count])
    {
      do
      {
        v7 = [*(v4 + 8) objectAtIndexedSubscript:v6];
        threadState = [v7 threadState];
        if ([threadState startSampleIndex] == 0x7FFFFFFFFFFFFFFFLL)
        {
        }

        else
        {
          v9 = [*(v4 + 8) objectAtIndexedSubscript:v6];
          threadState2 = [v9 threadState];
          endSampleIndex = [threadState2 endSampleIndex];

          if (endSampleIndex >= time)
          {
            break;
          }
        }

        ++v6;
      }

      while (v6 < [*(v4 + 8) count]);
    }

    if (v6 >= [*(v4 + 8) count])
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

- (uint64_t)indexOfLastStateOnOrBeforeTime:(unint64_t)time sampleIndex:
{
  if (!self)
  {
    return 0;
  }

  if (![*(self + 8) count])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = *(self + 8);
  if (a2)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __55__SARecipe_indexOfLastStateOnOrBeforeTime_sampleIndex___block_invoke;
    v15[3] = &unk_1E86F7150;
    v15[4] = a2;
    v7 = SABinarySearchArray(v6, 1536, v15);
    if (!v7)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v7 = [v6 count];
  }

  v8 = v7 - 1;
  if (time == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v8;
  }

  while (1)
  {
    v10 = [*(self + 8) objectAtIndexedSubscript:v8];
    threadState = [v10 threadState];
    if ([threadState startSampleIndex] == 0x7FFFFFFFFFFFFFFFLL)
    {
    }

    else
    {
      v12 = [*(self + 8) objectAtIndexedSubscript:v8];
      threadState2 = [v12 threadState];
      startSampleIndex = [threadState2 startSampleIndex];

      if (startSampleIndex <= time)
      {
        return v8;
      }
    }

    if (!v8)
    {
      break;
    }

    --v8;
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

uint64_t __103__SARecipe_enumerateStatesBetweenStartTime_startSampleIndex_endTime_endSampleIndex_reverseOrder_block___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v2 = *(a1 + 40);
  v3 = [*(*(a1 + 32) + 8) objectAtIndexedSubscript:a2];
  (*(v2 + 16))(v2, v3, &v5);

  return v5;
}

uint64_t __55__SARecipe_indexOfFirstStateOnOrAfterTime_sampleIndex___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = [a2 threadState];
  v6 = [v5 startTimestamp];
  LOBYTE(v4) = [v4 lt:v6];

  if (v4)
  {
    return -1;
  }

  v8 = *(a1 + 32);
  v9 = [a2 threadState];
  v10 = [v9 endTimestamp];
  LODWORD(v8) = [v8 gt:v10];

  return v8;
}

uint64_t __55__SARecipe_indexOfLastStateOnOrBeforeTime_sampleIndex___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = [a2 threadState];
  v6 = [v5 startTimestamp];
  LOBYTE(v4) = [v4 lt:v6];

  if (v4)
  {
    return -1;
  }

  v8 = *(a1 + 32);
  v9 = [a2 threadState];
  v10 = [v9 endTimestamp];
  LODWORD(v8) = [v8 gt:v10];

  return v8;
}

@end