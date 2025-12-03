@interface WRTimestampAndThread
- (id)encodedDict;
- (id)initWithEncodedDict:(uint64_t *)dict error:;
- (id)initWithPID:(void *)d threadID:(void *)iD machContTimeNs:(void *)ns date:;
- (void)insertIntoSortedArray:(uint64_t)array;
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

- (id)initWithPID:(void *)d threadID:(void *)iD machContTimeNs:(void *)ns date:
{
  nsCopy = ns;
  if (self)
  {
    v13.receiver = self;
    v13.super_class = WRTimestampAndThread;
    v11 = objc_msgSendSuper2(&v13, sel_init);
    self = v11;
    if (v11)
    {
      *(v11 + 2) = a2;
      v11[4] = d;
      v11[2] = iD;
      objc_storeStrong(v11 + 3, ns);
    }
  }

  return self;
}

- (id)encodedDict
{
  if (self)
  {
    date = [self date];

    v3 = objc_alloc(MEMORY[0x277CBEAC0]);
    v4 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(self, "pid")}];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(self, "threadID")}];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(self, "machContTimeNs")}];
    v7 = v6;
    if (date)
    {
      v8 = MEMORY[0x277CCABB0];
      date2 = [self date];
      [date2 timeIntervalSinceReferenceDate];
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

- (id)initWithEncodedDict:(uint64_t *)dict error:
{
  v5 = a2;
  if (!self)
  {
    selfCopy = 0;
    goto LABEL_21;
  }

  v40 = 0;
  if (dict)
  {
    *dict = 0;
  }

  else
  {
    dict = &v40;
  }

  v6 = OUTLINED_FUNCTION_89();
  v9 = DictGetNumber(v6, v7, v8);
  v10 = v9;
  if (v9)
  {
    intValue = [v9 intValue];
  }

  else
  {
    intValue = -1;
  }

  v12 = OUTLINED_FUNCTION_89();
  v21 = DictGetNumber(v12, v13, v14);
  if (!v21)
  {
    if (*dict)
    {
      WRMakeError(7, @"WRTimestampAndThread: No threadID in dict", v15, v16, v17, v18, v19, v20, v39);
      *dict = selfCopy = 0;
    }

    else
    {
      selfCopy = 0;
    }

    goto LABEL_20;
  }

  v22 = OUTLINED_FUNCTION_89();
  v31 = DictGetNumber(v22, v23, v24);
  if (!v31)
  {
    if (*dict)
    {
      WRMakeError(7, @"WRTimestampAndThread: No machContTimeNs in dict", v25, v26, v27, v28, v29, v30, v39);
      *dict = selfCopy = 0;
    }

    else
    {
      selfCopy = 0;
    }

    goto LABEL_19;
  }

  v32 = OUTLINED_FUNCTION_89();
  v35 = DictGetNumber(v32, v33, v34);
  if (v35)
  {
    dict = objc_alloc(MEMORY[0x277CBEAA8]);
    [v35 doubleValue];
    selfCopy = [dict initWithTimeIntervalSinceReferenceDate:?];
    goto LABEL_23;
  }

  selfCopy = 0;
  if (!*dict)
  {
LABEL_23:
    [v21 unsignedLongLongValue];
    unsignedLongLongValue = [OUTLINED_FUNCTION_67() unsignedLongLongValue];
    self = [(WRTimestampAndThread *)self initWithPID:intValue threadID:dict machContTimeNs:unsignedLongLongValue date:selfCopy];

    selfCopy = self;
  }

LABEL_19:
LABEL_20:

LABEL_21:
  return selfCopy;
}

- (void)insertIntoSortedArray:(uint64_t)array
{
  if (array)
  {
    v17 = a2;
    v2 = [v17 count];
    v8 = [OUTLINED_FUNCTION_80(v2 v3];
    [OUTLINED_FUNCTION_80(v8 v9];
  }
}

@end