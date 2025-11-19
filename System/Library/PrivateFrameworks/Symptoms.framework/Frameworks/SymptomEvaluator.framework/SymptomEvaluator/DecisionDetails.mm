@interface DecisionDetails
- (DecisionDetails)initWithReason:(const char *)a3 code:(unint64_t)a4 evaluations:(id)a5;
- (void)dealloc;
@end

@implementation DecisionDetails

- (DecisionDetails)initWithReason:(const char *)a3 code:(unint64_t)a4 evaluations:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v18.receiver = self;
  v18.super_class = DecisionDetails;
  v10 = [(DecisionDetails *)&v18 init];
  if (v10)
  {
    v11 = evaluationLogHandle;
    if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v12 = "??";
      if (a3)
      {
        v12 = a3;
      }

      *buf = 134218242;
      v20 = a4;
      v21 = 2080;
      v22 = v12;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "allocate awd %lld for reason %s", buf, 0x16u);
    }

    v13 = [MEMORY[0x277CBEAA8] date];
    timestamp = v10->_timestamp;
    v10->_timestamp = v13;

    v10->_reasonCode = a4;
    if (v9 && [v9 count])
    {
      objc_storeStrong(&v10->_evaluations, a5);
    }

    if (a3)
    {
      v15 = strdup(a3);
      if (!v15)
      {
        [DecisionDetails initWithReason:buf code:? evaluations:?];
      }

      v10->_reason = v15;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)dealloc
{
  reason = self->_reason;
  if (reason)
  {
    free(reason);
    self->_reason = 0;
  }

  v4.receiver = self;
  v4.super_class = DecisionDetails;
  [(DecisionDetails *)&v4 dealloc];
}

- (void)initWithReason:(char *)a1 code:evaluations:.cold.1(char **a1)
{
  v2 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_FAULT, "strdup() failed", v3, 2u);
  }

  *a1 = 0;
  asprintf(a1, "strdup() failed");
  qword_27DDA0B50 = *a1;
  __break(1u);
}

@end