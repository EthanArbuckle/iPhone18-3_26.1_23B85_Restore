@interface SARecipe
- (uint64_t)addState:(_BYTE *)a3 hasConcurrentExecution:;
- (uint64_t)addStates:(_BYTE *)a3 hasConcurrentExecution:;
- (uint64_t)indexOfFirstStateOnOrAfterTime:(unint64_t)a3 sampleIndex:;
- (uint64_t)indexOfLastStateOnOrBeforeTime:(unint64_t)a3 sampleIndex:;
- (void)enumerateStatesBetweenStartTime:(unint64_t)a3 startSampleIndex:(uint64_t)a4 endTime:(unint64_t)a5 endSampleIndex:(char)a6 reverseOrder:(uint64_t)a7 block:;
- (void)initWithId:(void *)a1;
@end

@implementation SARecipe

- (void)initWithId:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v8.receiver = a1;
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

- (uint64_t)addState:(_BYTE *)a3 hasConcurrentExecution:
{
  if (result)
  {
    v5 = result;
    if (a3)
    {
      v6 = [*(result + 8) lastObject];
      v7 = v6;
      if (v6)
      {
        v8 = [v6 thread];
        v9 = [a2 thread];
        if (v8 == v9)
        {
          v13 = 0;
        }

        else
        {
          v14 = [v7 threadState];
          v10 = [v14 endTimestamp];
          v11 = [a2 threadState];
          v12 = [v11 startTimestamp];
          v13 = [v10 ge:v12];
        }
      }

      else
      {
        v13 = 0;
      }

      *a3 = v13;
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

- (uint64_t)addStates:(_BYTE *)a3 hasConcurrentExecution:
{
  if (result)
  {
    v5 = result;
    if ([a2 count])
    {
      if (a3)
      {
        v6 = [*(v5 + 8) lastObject];
        v7 = v6;
        if (v6)
        {
          v8 = [v6 thread];
          v9 = [a2 firstObject];
          v10 = [v9 thread];
          if (v8 == v10)
          {
            v14 = 0;
          }

          else
          {
            v25 = [v7 threadState];
            v24 = [v25 endTimestamp];
            v11 = [a2 firstObject];
            [v11 threadState];
            v12 = v26 = v8;
            v13 = [v12 startTimestamp];
            v14 = [v24 ge:v13];

            v8 = v26;
          }
        }

        else
        {
          v14 = 0;
        }

        *a3 = v14;
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

- (void)enumerateStatesBetweenStartTime:(unint64_t)a3 startSampleIndex:(uint64_t)a4 endTime:(unint64_t)a5 endSampleIndex:(char)a6 reverseOrder:(uint64_t)a7 block:
{
  if (a1)
  {
    v12 = [(SARecipe *)a1 indexOfFirstStateOnOrAfterTime:a2 sampleIndex:a3];
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = v12;
      v14 = [(SARecipe *)a1 indexOfLastStateOnOrBeforeTime:a4 sampleIndex:a5];
      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = v14;
        if (v13 <= v14)
        {
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __103__SARecipe_enumerateStatesBetweenStartTime_startSampleIndex_endTime_endSampleIndex_reverseOrder_block___block_invoke;
          v18[3] = &unk_1E86F7068;
          v18[4] = a1;
          v18[5] = a7;
          v16 = MEMORY[0x1E12EBE50](v18);
          if (a6)
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

- (uint64_t)indexOfFirstStateOnOrAfterTime:(unint64_t)a3 sampleIndex:
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

    if (a3 != 0x7FFFFFFFFFFFFFFFLL && v6 < [*(v4 + 8) count])
    {
      do
      {
        v7 = [*(v4 + 8) objectAtIndexedSubscript:v6];
        v8 = [v7 threadState];
        if ([v8 startSampleIndex] == 0x7FFFFFFFFFFFFFFFLL)
        {
        }

        else
        {
          v9 = [*(v4 + 8) objectAtIndexedSubscript:v6];
          v10 = [v9 threadState];
          v11 = [v10 endSampleIndex];

          if (v11 >= a3)
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

- (uint64_t)indexOfLastStateOnOrBeforeTime:(unint64_t)a3 sampleIndex:
{
  if (!a1)
  {
    return 0;
  }

  if (![*(a1 + 8) count])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = *(a1 + 8);
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
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v8;
  }

  while (1)
  {
    v10 = [*(a1 + 8) objectAtIndexedSubscript:v8];
    v11 = [v10 threadState];
    if ([v11 startSampleIndex] == 0x7FFFFFFFFFFFFFFFLL)
    {
    }

    else
    {
      v12 = [*(a1 + 8) objectAtIndexedSubscript:v8];
      v13 = [v12 threadState];
      v14 = [v13 startSampleIndex];

      if (v14 <= a3)
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