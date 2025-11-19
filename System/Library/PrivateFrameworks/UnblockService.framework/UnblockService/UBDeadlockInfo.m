@interface UBDeadlockInfo
- (UBDeadlockInfo)initWithNode:(id)a3 timeSpentDeadlocked:(double)a4 tasksInvolved:(id)a5 numThreadsInvolved:(unint64_t)a6;
- (id)debugDescription;
@end

@implementation UBDeadlockInfo

- (UBDeadlockInfo)initWithNode:(id)a3 timeSpentDeadlocked:(double)a4 tasksInvolved:(id)a5 numThreadsInvolved:(unint64_t)a6
{
  v11 = a3;
  v12 = a5;
  v19.receiver = self;
  v19.super_class = UBDeadlockInfo;
  v13 = [(UBDeadlockInfo *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_node, a3);
    v14->_timeSpentDeadlocked = a4;
    objc_storeStrong(&v14->_tasksInvolved, a5);
    v14->_numThreadsInvolved = a6;
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
  v18 = self;
  v4 = [(UBDeadlockInfo *)self tasksInvolved];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [v9 name];
        if (v10)
        {
          [v3 addObject:v10];
        }

        else
        {
          v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"pid [%d]", objc_msgSend(v9, "pid")];
          [v3 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v12 = objc_alloc(MEMORY[0x277CCACA8]);
  v13 = [v3 componentsJoinedByString:{@", "}];
  v14 = [(UBDeadlockInfo *)v18 tasksBlocked];
  v15 = [v12 initWithFormat:@"Deadlock in %@, blocking %lu tasks", v13, objc_msgSend(v14, "count")];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end