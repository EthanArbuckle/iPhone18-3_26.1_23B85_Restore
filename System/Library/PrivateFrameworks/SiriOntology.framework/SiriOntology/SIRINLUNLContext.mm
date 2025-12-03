@interface SIRINLUNLContext
- (SIRINLUNLContext)initWithCoder:(id)coder;
- (SIRINLUNLContext)initWithSystemDialogActs:(id)acts activeTasks:(id)tasks executedTasks:(id)executedTasks;
- (SIRINLUNLContext)initWithSystemDialogActs:(id)acts activeTasks:(id)tasks executedTasks:(id)executedTasks salientEntities:(id)entities;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SIRINLUNLContext

- (id)description
{
  systemDialogActs = [(SIRINLUNLContext *)self systemDialogActs];
  v4 = [SIRINLUPrintUtils indentArray:systemDialogActs numSpaces:4];

  activeTasks = [(SIRINLUNLContext *)self activeTasks];
  v6 = [SIRINLUPrintUtils indentArray:activeTasks numSpaces:4];

  executedTasks = [(SIRINLUNLContext *)self executedTasks];
  v8 = [SIRINLUPrintUtils indentArray:executedTasks numSpaces:4];

  salientEntities = [(SIRINLUNLContext *)self salientEntities];
  v10 = [SIRINLUPrintUtils indentArray:salientEntities numSpaces:4];

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{NLContext\n  systemDialogActs:\n%@\n  activeTasks:\n%@\n  executedTasks:\n%@\n  salientEntities:\n%@\n}", v4, v6, v8, v10];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  systemDialogActs = [(SIRINLUNLContext *)self systemDialogActs];
  [coderCopy encodeObject:systemDialogActs forKey:@"systemDialogActs"];

  activeTasks = [(SIRINLUNLContext *)self activeTasks];
  [coderCopy encodeObject:activeTasks forKey:@"activeTasks"];

  executedTasks = [(SIRINLUNLContext *)self executedTasks];
  [coderCopy encodeObject:executedTasks forKey:@"executedTasks"];

  salientEntities = [(SIRINLUNLContext *)self salientEntities];
  [coderCopy encodeObject:salientEntities forKey:@"salientEntities"];
}

- (SIRINLUNLContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v33.receiver = self;
  v33.super_class = SIRINLUNLContext;
  v5 = [(SIRINLUNLContext *)&v33 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v6 setWithObjects:{v7, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"systemDialogActs"];
    systemDialogActs = v5->_systemDialogActs;
    v5->_systemDialogActs = v15;

    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"activeTasks"];
    activeTasks = v5->_activeTasks;
    v5->_activeTasks = v20;

    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"executedTasks"];
    executedTasks = v5->_executedTasks;
    v5->_executedTasks = v25;

    v27 = MEMORY[0x1E695DFD8];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v30 = [coderCopy decodeObjectOfClasses:v29 forKey:@"salientEntities"];
    salientEntities = v5->_salientEntities;
    v5->_salientEntities = v30;
  }

  return v5;
}

- (SIRINLUNLContext)initWithSystemDialogActs:(id)acts activeTasks:(id)tasks executedTasks:(id)executedTasks
{
  actsCopy = acts;
  tasksCopy = tasks;
  executedTasksCopy = executedTasks;
  v15.receiver = self;
  v15.super_class = SIRINLUNLContext;
  v12 = [(SIRINLUNLContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_systemDialogActs, acts);
    objc_storeStrong(&v13->_activeTasks, tasks);
    objc_storeStrong(&v13->_executedTasks, executedTasks);
  }

  return v13;
}

- (SIRINLUNLContext)initWithSystemDialogActs:(id)acts activeTasks:(id)tasks executedTasks:(id)executedTasks salientEntities:(id)entities
{
  actsCopy = acts;
  tasksCopy = tasks;
  executedTasksCopy = executedTasks;
  entitiesCopy = entities;
  v18.receiver = self;
  v18.super_class = SIRINLUNLContext;
  v15 = [(SIRINLUNLContext *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_systemDialogActs, acts);
    objc_storeStrong(&v16->_activeTasks, tasks);
    objc_storeStrong(&v16->_executedTasks, executedTasks);
    objc_storeStrong(&v16->_salientEntities, entities);
  }

  return v16;
}

@end