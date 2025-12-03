@interface DecisionDetails
- (DecisionDetails)initWithReason:(const char *)reason code:(unint64_t)code evaluations:(id)evaluations;
- (void)dealloc;
@end

@implementation DecisionDetails

- (DecisionDetails)initWithReason:(const char *)reason code:(unint64_t)code evaluations:(id)evaluations
{
  v23 = *MEMORY[0x277D85DE8];
  evaluationsCopy = evaluations;
  v18.receiver = self;
  v18.super_class = DecisionDetails;
  v10 = [(DecisionDetails *)&v18 init];
  if (v10)
  {
    v11 = evaluationLogHandle;
    if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
    {
      reasonCopy = "??";
      if (reason)
      {
        reasonCopy = reason;
      }

      *buf = 134218242;
      codeCopy = code;
      v21 = 2080;
      v22 = reasonCopy;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "allocate awd %lld for reason %s", buf, 0x16u);
    }

    date = [MEMORY[0x277CBEAA8] date];
    timestamp = v10->_timestamp;
    v10->_timestamp = date;

    v10->_reasonCode = code;
    if (evaluationsCopy && [evaluationsCopy count])
    {
      objc_storeStrong(&v10->_evaluations, evaluations);
    }

    if (reason)
    {
      v15 = strdup(reason);
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