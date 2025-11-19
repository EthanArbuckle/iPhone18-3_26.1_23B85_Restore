@interface UBThreadExhaustionInfo
- (UBThreadExhaustionInfo)initWithTask:(id)a3 timeSpentBlocked:(double)a4 numThreadsInvolved:(unint64_t)a5;
- (id)debugDescription;
@end

@implementation UBThreadExhaustionInfo

- (UBThreadExhaustionInfo)initWithTask:(id)a3 timeSpentBlocked:(double)a4 numThreadsInvolved:(unint64_t)a5
{
  v9 = a3;
  v16.receiver = self;
  v16.super_class = UBThreadExhaustionInfo;
  v10 = [(UBThreadExhaustionInfo *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_task, a3);
    v11->_timeSpentBlocked = a4;
    v11->_numThreadsInvolved = a5;
    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    tasksBlocked = v11->_tasksBlocked;
    v11->_tasksBlocked = v12;

    v14 = v11;
  }

  return v11;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(UBThreadExhaustionInfo *)self task];
  v5 = [v4 debugDescription];
  v6 = [(UBThreadExhaustionInfo *)self tasksBlocked];
  v7 = [v3 initWithFormat:@"Thread Exhaustion in %@, blocking %lu tasks", v5, objc_msgSend(v6, "count")];

  return v7;
}

@end