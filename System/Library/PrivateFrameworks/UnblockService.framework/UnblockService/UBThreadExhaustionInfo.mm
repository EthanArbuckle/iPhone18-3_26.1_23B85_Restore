@interface UBThreadExhaustionInfo
- (UBThreadExhaustionInfo)initWithTask:(id)task timeSpentBlocked:(double)blocked numThreadsInvolved:(unint64_t)involved;
- (id)debugDescription;
@end

@implementation UBThreadExhaustionInfo

- (UBThreadExhaustionInfo)initWithTask:(id)task timeSpentBlocked:(double)blocked numThreadsInvolved:(unint64_t)involved
{
  taskCopy = task;
  v16.receiver = self;
  v16.super_class = UBThreadExhaustionInfo;
  v10 = [(UBThreadExhaustionInfo *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_task, task);
    v11->_timeSpentBlocked = blocked;
    v11->_numThreadsInvolved = involved;
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
  task = [(UBThreadExhaustionInfo *)self task];
  v5 = [task debugDescription];
  tasksBlocked = [(UBThreadExhaustionInfo *)self tasksBlocked];
  v7 = [v3 initWithFormat:@"Thread Exhaustion in %@, blocking %lu tasks", v5, objc_msgSend(tasksBlocked, "count")];

  return v7;
}

@end