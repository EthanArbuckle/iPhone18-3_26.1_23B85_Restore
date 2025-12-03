@interface UBDeadlockInfo
- (UBDeadlockInfo)initWithNode:(id)node timeSpentDeadlocked:(double)deadlocked tasksInvolved:(id)involved numThreadsInvolved:(unint64_t)threadsInvolved;
- (id)debugDescription;
@end

@implementation UBDeadlockInfo

- (UBDeadlockInfo)initWithNode:(id)node timeSpentDeadlocked:(double)deadlocked tasksInvolved:(id)involved numThreadsInvolved:(unint64_t)threadsInvolved
{
  nodeCopy = node;
  involvedCopy = involved;
  v19.receiver = self;
  v19.super_class = UBDeadlockInfo;
  v13 = [(UBDeadlockInfo *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_node, node);
    v14->_timeSpentDeadlocked = deadlocked;
    objc_storeStrong(&v14->_tasksInvolved, involved);
    v14->_numThreadsInvolved = threadsInvolved;
    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    tasksBlocked = v14->_tasksBlocked;
    v14->_tasksBlocked = v15;

    v17 = v14;
  }

  return v14;
}

- (id)debugDescription
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  selfCopy = self;
  tasksInvolved = [(UBDeadlockInfo *)self tasksInvolved];
  v5 = [tasksInvolved countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(tasksInvolved);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        name = [v9 name];
        if (name)
        {
          [v3 addObject:name];
        }

        else
        {
          v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"pid [%d]", objc_msgSend(v9, "pid")];
          [v3 addObject:v11];
        }
      }

      v6 = [tasksInvolved countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v12 = objc_alloc(MEMORY[0x277CCACA8]);
  v13 = [v3 componentsJoinedByString:{@", "}];
  tasksBlocked = [(UBDeadlockInfo *)selfCopy tasksBlocked];
  v15 = [v12 initWithFormat:@"Deadlock in %@, blocking %lu tasks", v13, objc_msgSend(tasksBlocked, "count")];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end