@interface SIRINLUTurnInput
- (SIRINLUTurnInput)initWithAsrOutputs:(id)outputs salientEntities:(id)entities turnContext:(id)context;
- (SIRINLUTurnInput)initWithAsrOutputs:(id)outputs salientEntities:(id)entities turnContext:(id)context locale:(id)locale tapToEdit:(BOOL)edit startTimestamp:(unint64_t)timestamp;
- (SIRINLUTurnInput)initWithAsrOutputs:(id)outputs systemDialogActs:(id)acts activeTasks:(id)tasks executedTasks:(id)executedTasks salientEntities:(id)entities;
- (SIRINLUTurnInput)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SIRINLUTurnInput

- (id)description
{
  asrOutputs = [(SIRINLUTurnInput *)self asrOutputs];
  v4 = [SIRINLUPrintUtils indentArray:asrOutputs numSpaces:4];

  systemDialogActs = [(SIRINLUTurnInput *)self systemDialogActs];
  v6 = [SIRINLUPrintUtils indentArray:systemDialogActs numSpaces:4];

  activeTasks = [(SIRINLUTurnInput *)self activeTasks];
  v8 = [SIRINLUPrintUtils indentArray:activeTasks numSpaces:4];

  executedTasks = [(SIRINLUTurnInput *)self executedTasks];
  v10 = [SIRINLUPrintUtils indentArray:executedTasks numSpaces:4];

  salientEntities = [(SIRINLUTurnInput *)self salientEntities];
  v12 = [SIRINLUPrintUtils indentArray:salientEntities numSpaces:4];

  v13 = MEMORY[0x1E696AEC0];
  turnContext = [(SIRINLUTurnInput *)self turnContext];
  locale = [(SIRINLUTurnInput *)self locale];
  v16 = [v13 stringWithFormat:@"{TurnInput\n  asrOutputs:\n%@\n  systemDialogActs:\n%@\n  activeTasks:\n%@\n  executedTasks:\n%@\n  salientEntities:\n%@\n  turnContext:\n%@\n  locale:\n%@\n  tapToEdit:\n%i\n  startTimestamp:\n%llu\n}", v4, v6, v8, v10, v12, turnContext, locale, -[SIRINLUTurnInput tapToEdit](self, "tapToEdit"), -[SIRINLUTurnInput startTimestamp](self, "startTimestamp")];

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  asrOutputs = [(SIRINLUTurnInput *)self asrOutputs];
  [coderCopy encodeObject:asrOutputs forKey:@"asrOutputs"];

  systemDialogActs = [(SIRINLUTurnInput *)self systemDialogActs];
  [coderCopy encodeObject:systemDialogActs forKey:@"systemDialogActs"];

  activeTasks = [(SIRINLUTurnInput *)self activeTasks];
  [coderCopy encodeObject:activeTasks forKey:@"activeTasks"];

  executedTasks = [(SIRINLUTurnInput *)self executedTasks];
  [coderCopy encodeObject:executedTasks forKey:@"executedTasks"];

  salientEntities = [(SIRINLUTurnInput *)self salientEntities];
  [coderCopy encodeObject:salientEntities forKey:@"salientEntities"];

  turnContext = [(SIRINLUTurnInput *)self turnContext];
  [coderCopy encodeObject:turnContext forKey:@"turnContext"];

  locale = [(SIRINLUTurnInput *)self locale];
  [coderCopy encodeObject:locale forKey:@"locale"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_tapToEdit];
  [coderCopy encodeObject:v13 forKey:@"tapToEdit"];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_startTimestamp];
  [coderCopy encodeObject:v12 forKey:@"startTimestamp"];
}

- (SIRINLUTurnInput)initWithCoder:(id)coder
{
  coderCopy = coder;
  v45.receiver = self;
  v45.super_class = SIRINLUTurnInput;
  v5 = [(SIRINLUTurnInput *)&v45 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v44 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v8 = [coderCopy decodeObjectOfClasses:v44 forKey:@"asrOutputs"];
    asrOutputs = v5->_asrOutputs;
    v5->_asrOutputs = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v10 setWithObjects:{v11, v12, v13, v14, v15, v16, v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"systemDialogActs"];
    systemDialogActs = v5->_systemDialogActs;
    v5->_systemDialogActs = v19;

    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"activeTasks"];
    activeTasks = v5->_activeTasks;
    v5->_activeTasks = v24;

    v26 = MEMORY[0x1E695DFD8];
    v27 = objc_opt_class();
    v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"executedTasks"];
    executedTasks = v5->_executedTasks;
    v5->_executedTasks = v29;

    v31 = MEMORY[0x1E695DFD8];
    v32 = objc_opt_class();
    v33 = [v31 setWithObjects:{v32, objc_opt_class(), 0}];
    v34 = [coderCopy decodeObjectOfClasses:v33 forKey:@"salientEntities"];
    salientEntities = v5->_salientEntities;
    v5->_salientEntities = v34;

    v36 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v37 = [coderCopy decodeObjectOfClasses:v36 forKey:@"turnContext"];
    turnContext = v5->_turnContext;
    v5->_turnContext = v37;

    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    locale = v5->_locale;
    v5->_locale = v39;

    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tapToEdit"];
    v5->_tapToEdit = [v41 BOOLValue];
    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startTimestamp"];
    v5->_startTimestamp = [v42 unsignedLongLongValue];
  }

  return v5;
}

- (SIRINLUTurnInput)initWithAsrOutputs:(id)outputs salientEntities:(id)entities turnContext:(id)context locale:(id)locale tapToEdit:(BOOL)edit startTimestamp:(unint64_t)timestamp
{
  outputsCopy = outputs;
  entitiesCopy = entities;
  contextCopy = context;
  localeCopy = locale;
  v22.receiver = self;
  v22.super_class = SIRINLUTurnInput;
  v18 = [(SIRINLUTurnInput *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_asrOutputs, outputs);
    objc_storeStrong(&v19->_salientEntities, entities);
    objc_storeStrong(&v19->_turnContext, context);
    objc_storeStrong(&v19->_locale, locale);
    v19->_tapToEdit = edit;
    v19->_startTimestamp = timestamp;
  }

  return v19;
}

- (SIRINLUTurnInput)initWithAsrOutputs:(id)outputs systemDialogActs:(id)acts activeTasks:(id)tasks executedTasks:(id)executedTasks salientEntities:(id)entities
{
  outputsCopy = outputs;
  actsCopy = acts;
  tasksCopy = tasks;
  executedTasksCopy = executedTasks;
  entitiesCopy = entities;
  v22.receiver = self;
  v22.super_class = SIRINLUTurnInput;
  v17 = [(SIRINLUTurnInput *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_asrOutputs, outputs);
    objc_storeStrong(&v18->_systemDialogActs, acts);
    objc_storeStrong(&v18->_activeTasks, tasks);
    objc_storeStrong(&v18->_executedTasks, executedTasks);
    objc_storeStrong(&v18->_salientEntities, entities);
    locale = v18->_locale;
    v18->_locale = &stru_1F3FA57D0;

    v18->_tapToEdit = 0;
    v18->_startTimestamp = 0;
  }

  return v18;
}

- (SIRINLUTurnInput)initWithAsrOutputs:(id)outputs salientEntities:(id)entities turnContext:(id)context
{
  outputsCopy = outputs;
  entitiesCopy = entities;
  contextCopy = context;
  v16.receiver = self;
  v16.super_class = SIRINLUTurnInput;
  v12 = [(SIRINLUTurnInput *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_asrOutputs, outputs);
    objc_storeStrong(&v13->_salientEntities, entities);
    objc_storeStrong(&v13->_turnContext, context);
    locale = v13->_locale;
    v13->_locale = &stru_1F3FA57D0;

    v13->_tapToEdit = 0;
    v13->_startTimestamp = 0;
  }

  return v13;
}

@end