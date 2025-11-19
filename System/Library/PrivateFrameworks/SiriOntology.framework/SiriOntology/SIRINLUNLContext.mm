@interface SIRINLUNLContext
- (SIRINLUNLContext)initWithCoder:(id)a3;
- (SIRINLUNLContext)initWithSystemDialogActs:(id)a3 activeTasks:(id)a4 executedTasks:(id)a5;
- (SIRINLUNLContext)initWithSystemDialogActs:(id)a3 activeTasks:(id)a4 executedTasks:(id)a5 salientEntities:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SIRINLUNLContext

- (id)description
{
  v3 = [(SIRINLUNLContext *)self systemDialogActs];
  v4 = [SIRINLUPrintUtils indentArray:v3 numSpaces:4];

  v5 = [(SIRINLUNLContext *)self activeTasks];
  v6 = [SIRINLUPrintUtils indentArray:v5 numSpaces:4];

  v7 = [(SIRINLUNLContext *)self executedTasks];
  v8 = [SIRINLUPrintUtils indentArray:v7 numSpaces:4];

  v9 = [(SIRINLUNLContext *)self salientEntities];
  v10 = [SIRINLUPrintUtils indentArray:v9 numSpaces:4];

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{NLContext\n  systemDialogActs:\n%@\n  activeTasks:\n%@\n  executedTasks:\n%@\n  salientEntities:\n%@\n}", v4, v6, v8, v10];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SIRINLUNLContext *)self systemDialogActs];
  [v4 encodeObject:v5 forKey:@"systemDialogActs"];

  v6 = [(SIRINLUNLContext *)self activeTasks];
  [v4 encodeObject:v6 forKey:@"activeTasks"];

  v7 = [(SIRINLUNLContext *)self executedTasks];
  [v4 encodeObject:v7 forKey:@"executedTasks"];

  v8 = [(SIRINLUNLContext *)self salientEntities];
  [v4 encodeObject:v8 forKey:@"salientEntities"];
}

- (SIRINLUNLContext)initWithCoder:(id)a3
{
  v4 = a3;
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
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"systemDialogActs"];
    systemDialogActs = v5->_systemDialogActs;
    v5->_systemDialogActs = v15;

    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"activeTasks"];
    activeTasks = v5->_activeTasks;
    v5->_activeTasks = v20;

    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"executedTasks"];
    executedTasks = v5->_executedTasks;
    v5->_executedTasks = v25;

    v27 = MEMORY[0x1E695DFD8];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v30 = [v4 decodeObjectOfClasses:v29 forKey:@"salientEntities"];
    salientEntities = v5->_salientEntities;
    v5->_salientEntities = v30;
  }

  return v5;
}

- (SIRINLUNLContext)initWithSystemDialogActs:(id)a3 activeTasks:(id)a4 executedTasks:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SIRINLUNLContext;
  v12 = [(SIRINLUNLContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_systemDialogActs, a3);
    objc_storeStrong(&v13->_activeTasks, a4);
    objc_storeStrong(&v13->_executedTasks, a5);
  }

  return v13;
}

- (SIRINLUNLContext)initWithSystemDialogActs:(id)a3 activeTasks:(id)a4 executedTasks:(id)a5 salientEntities:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = SIRINLUNLContext;
  v15 = [(SIRINLUNLContext *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_systemDialogActs, a3);
    objc_storeStrong(&v16->_activeTasks, a4);
    objc_storeStrong(&v16->_executedTasks, a5);
    objc_storeStrong(&v16->_salientEntities, a6);
  }

  return v16;
}

@end