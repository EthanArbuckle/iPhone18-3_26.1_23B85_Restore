@interface SIRINLUTurnInput
- (SIRINLUTurnInput)initWithAsrOutputs:(id)a3 salientEntities:(id)a4 turnContext:(id)a5;
- (SIRINLUTurnInput)initWithAsrOutputs:(id)a3 salientEntities:(id)a4 turnContext:(id)a5 locale:(id)a6 tapToEdit:(BOOL)a7 startTimestamp:(unint64_t)a8;
- (SIRINLUTurnInput)initWithAsrOutputs:(id)a3 systemDialogActs:(id)a4 activeTasks:(id)a5 executedTasks:(id)a6 salientEntities:(id)a7;
- (SIRINLUTurnInput)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SIRINLUTurnInput

- (id)description
{
  v3 = [(SIRINLUTurnInput *)self asrOutputs];
  v4 = [SIRINLUPrintUtils indentArray:v3 numSpaces:4];

  v5 = [(SIRINLUTurnInput *)self systemDialogActs];
  v6 = [SIRINLUPrintUtils indentArray:v5 numSpaces:4];

  v7 = [(SIRINLUTurnInput *)self activeTasks];
  v8 = [SIRINLUPrintUtils indentArray:v7 numSpaces:4];

  v9 = [(SIRINLUTurnInput *)self executedTasks];
  v10 = [SIRINLUPrintUtils indentArray:v9 numSpaces:4];

  v11 = [(SIRINLUTurnInput *)self salientEntities];
  v12 = [SIRINLUPrintUtils indentArray:v11 numSpaces:4];

  v13 = MEMORY[0x1E696AEC0];
  v14 = [(SIRINLUTurnInput *)self turnContext];
  v15 = [(SIRINLUTurnInput *)self locale];
  v16 = [v13 stringWithFormat:@"{TurnInput\n  asrOutputs:\n%@\n  systemDialogActs:\n%@\n  activeTasks:\n%@\n  executedTasks:\n%@\n  salientEntities:\n%@\n  turnContext:\n%@\n  locale:\n%@\n  tapToEdit:\n%i\n  startTimestamp:\n%llu\n}", v4, v6, v8, v10, v12, v14, v15, -[SIRINLUTurnInput tapToEdit](self, "tapToEdit"), -[SIRINLUTurnInput startTimestamp](self, "startTimestamp")];

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SIRINLUTurnInput *)self asrOutputs];
  [v4 encodeObject:v5 forKey:@"asrOutputs"];

  v6 = [(SIRINLUTurnInput *)self systemDialogActs];
  [v4 encodeObject:v6 forKey:@"systemDialogActs"];

  v7 = [(SIRINLUTurnInput *)self activeTasks];
  [v4 encodeObject:v7 forKey:@"activeTasks"];

  v8 = [(SIRINLUTurnInput *)self executedTasks];
  [v4 encodeObject:v8 forKey:@"executedTasks"];

  v9 = [(SIRINLUTurnInput *)self salientEntities];
  [v4 encodeObject:v9 forKey:@"salientEntities"];

  v10 = [(SIRINLUTurnInput *)self turnContext];
  [v4 encodeObject:v10 forKey:@"turnContext"];

  v11 = [(SIRINLUTurnInput *)self locale];
  [v4 encodeObject:v11 forKey:@"locale"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_tapToEdit];
  [v4 encodeObject:v13 forKey:@"tapToEdit"];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_startTimestamp];
  [v4 encodeObject:v12 forKey:@"startTimestamp"];
}

- (SIRINLUTurnInput)initWithCoder:(id)a3
{
  v4 = a3;
  v45.receiver = self;
  v45.super_class = SIRINLUTurnInput;
  v5 = [(SIRINLUTurnInput *)&v45 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v44 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v8 = [v4 decodeObjectOfClasses:v44 forKey:@"asrOutputs"];
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
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"systemDialogActs"];
    systemDialogActs = v5->_systemDialogActs;
    v5->_systemDialogActs = v19;

    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"activeTasks"];
    activeTasks = v5->_activeTasks;
    v5->_activeTasks = v24;

    v26 = MEMORY[0x1E695DFD8];
    v27 = objc_opt_class();
    v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
    v29 = [v4 decodeObjectOfClasses:v28 forKey:@"executedTasks"];
    executedTasks = v5->_executedTasks;
    v5->_executedTasks = v29;

    v31 = MEMORY[0x1E695DFD8];
    v32 = objc_opt_class();
    v33 = [v31 setWithObjects:{v32, objc_opt_class(), 0}];
    v34 = [v4 decodeObjectOfClasses:v33 forKey:@"salientEntities"];
    salientEntities = v5->_salientEntities;
    v5->_salientEntities = v34;

    v36 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v37 = [v4 decodeObjectOfClasses:v36 forKey:@"turnContext"];
    turnContext = v5->_turnContext;
    v5->_turnContext = v37;

    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    locale = v5->_locale;
    v5->_locale = v39;

    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tapToEdit"];
    v5->_tapToEdit = [v41 BOOLValue];
    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startTimestamp"];
    v5->_startTimestamp = [v42 unsignedLongLongValue];
  }

  return v5;
}

- (SIRINLUTurnInput)initWithAsrOutputs:(id)a3 salientEntities:(id)a4 turnContext:(id)a5 locale:(id)a6 tapToEdit:(BOOL)a7 startTimestamp:(unint64_t)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v22.receiver = self;
  v22.super_class = SIRINLUTurnInput;
  v18 = [(SIRINLUTurnInput *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_asrOutputs, a3);
    objc_storeStrong(&v19->_salientEntities, a4);
    objc_storeStrong(&v19->_turnContext, a5);
    objc_storeStrong(&v19->_locale, a6);
    v19->_tapToEdit = a7;
    v19->_startTimestamp = a8;
  }

  return v19;
}

- (SIRINLUTurnInput)initWithAsrOutputs:(id)a3 systemDialogActs:(id)a4 activeTasks:(id)a5 executedTasks:(id)a6 salientEntities:(id)a7
{
  v21 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = SIRINLUTurnInput;
  v17 = [(SIRINLUTurnInput *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_asrOutputs, a3);
    objc_storeStrong(&v18->_systemDialogActs, a4);
    objc_storeStrong(&v18->_activeTasks, a5);
    objc_storeStrong(&v18->_executedTasks, a6);
    objc_storeStrong(&v18->_salientEntities, a7);
    locale = v18->_locale;
    v18->_locale = &stru_1F3FA57D0;

    v18->_tapToEdit = 0;
    v18->_startTimestamp = 0;
  }

  return v18;
}

- (SIRINLUTurnInput)initWithAsrOutputs:(id)a3 salientEntities:(id)a4 turnContext:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = SIRINLUTurnInput;
  v12 = [(SIRINLUTurnInput *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_asrOutputs, a3);
    objc_storeStrong(&v13->_salientEntities, a4);
    objc_storeStrong(&v13->_turnContext, a5);
    locale = v13->_locale;
    v13->_locale = &stru_1F3FA57D0;

    v13->_tapToEdit = 0;
    v13->_startTimestamp = 0;
  }

  return v13;
}

@end