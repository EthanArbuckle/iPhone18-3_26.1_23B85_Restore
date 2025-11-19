@interface WRTimestampAndThread
- (id)encodedDict;
- (id)initWithEncodedDict:(uint64_t *)a3 error:;
- (id)initWithPID:(void *)a3 threadID:(void *)a4 machContTimeNs:(void *)a5 date:;
- (void)insertIntoSortedArray:(uint64_t)a1;
@end

@implementation WRTimestampAndThread

uint64_t __46__WRTimestampAndThread_insertIntoSortedArray___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 machContTimeNs];
  if (v6 <= [v5 machContTimeNs])
  {
    v8 = [v4 machContTimeNs];
    if (v8 >= [v5 machContTimeNs])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)initWithPID:(void *)a3 threadID:(void *)a4 machContTimeNs:(void *)a5 date:
{
  v10 = a5;
  if (a1)
  {
    v13.receiver = a1;
    v13.super_class = WRTimestampAndThread;
    v11 = objc_msgSendSuper2(&v13, sel_init);
    a1 = v11;
    if (v11)
    {
      *(v11 + 2) = a2;
      v11[4] = a3;
      v11[2] = a4;
      objc_storeStrong(v11 + 3, a5);
    }
  }

  return a1;
}

- (id)encodedDict
{
  if (a1)
  {
    v2 = [a1 date];

    v3 = objc_alloc(MEMORY[0x277CBEAC0]);
    v4 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(a1, "pid")}];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(a1, "threadID")}];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(a1, "machContTimeNs")}];
    v7 = v6;
    if (v2)
    {
      v8 = MEMORY[0x277CCABB0];
      v9 = [a1 date];
      [v9 timeIntervalSinceReferenceDate];
      v10 = [v8 numberWithDouble:?];
      v11 = [v3 initWithObjectsAndKeys:{v4, @"tat_pid", v5, @"tat_threadId", v7, @"tat_machContTimeNs", v10, @"tat_date", 0}];
    }

    else
    {
      v11 = [v3 initWithObjectsAndKeys:{v4, @"tat_pid", v5, @"tat_threadId", v6, @"tat_machContTimeNs", 0}];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)initWithEncodedDict:(uint64_t *)a3 error:
{
  v5 = a2;
  if (!a1)
  {
    v36 = 0;
    goto LABEL_21;
  }

  v40 = 0;
  if (a3)
  {
    *a3 = 0;
  }

  else
  {
    a3 = &v40;
  }

  v6 = OUTLINED_FUNCTION_89();
  v9 = DictGetNumber(v6, v7, v8);
  v10 = v9;
  if (v9)
  {
    v11 = [v9 intValue];
  }

  else
  {
    v11 = -1;
  }

  v12 = OUTLINED_FUNCTION_89();
  v21 = DictGetNumber(v12, v13, v14);
  if (!v21)
  {
    if (*a3)
    {
      WRMakeError(7, @"WRTimestampAndThread: No threadID in dict", v15, v16, v17, v18, v19, v20, v39);
      *a3 = v36 = 0;
    }

    else
    {
      v36 = 0;
    }

    goto LABEL_20;
  }

  v22 = OUTLINED_FUNCTION_89();
  v31 = DictGetNumber(v22, v23, v24);
  if (!v31)
  {
    if (*a3)
    {
      WRMakeError(7, @"WRTimestampAndThread: No machContTimeNs in dict", v25, v26, v27, v28, v29, v30, v39);
      *a3 = v36 = 0;
    }

    else
    {
      v36 = 0;
    }

    goto LABEL_19;
  }

  v32 = OUTLINED_FUNCTION_89();
  v35 = DictGetNumber(v32, v33, v34);
  if (v35)
  {
    a3 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v35 doubleValue];
    v36 = [a3 initWithTimeIntervalSinceReferenceDate:?];
    goto LABEL_23;
  }

  v36 = 0;
  if (!*a3)
  {
LABEL_23:
    [v21 unsignedLongLongValue];
    v38 = [OUTLINED_FUNCTION_67() unsignedLongLongValue];
    a1 = [(WRTimestampAndThread *)a1 initWithPID:v11 threadID:a3 machContTimeNs:v38 date:v36];

    v36 = a1;
  }

LABEL_19:
LABEL_20:

LABEL_21:
  return v36;
}

- (void)insertIntoSortedArray:(uint64_t)a1
{
  if (a1)
  {
    v17 = a2;
    v2 = [v17 count];
    v8 = [OUTLINED_FUNCTION_80(v2 v3];
    [OUTLINED_FUNCTION_80(v8 v9];
  }
}

@end