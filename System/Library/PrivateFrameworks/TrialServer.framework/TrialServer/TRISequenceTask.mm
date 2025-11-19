@interface TRISequenceTask
+ (BOOL)_isTask:(id)a3 equalTo:(id)a4;
+ (id)parseFromData:(id)a3;
+ (id)task;
- (BOOL)isEqual:(id)a3;
- (NSArray)dependencies;
- (NSString)debugDescription;
- (NSString)taskName;
- (TRISequenceTask)initWithCoder:(id)a3;
- (TRISequenceTask)initWithTask:(id)a3 dependency:(id)a4;
- (id)_asPersistedTask;
- (id)dimensions;
- (id)metrics;
- (id)serialize;
- (id)trialSystemTelemetry;
- (int)retryCount;
- (unint64_t)hash;
- (void)addTaskToEndOfSequence:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRISequenceTask

+ (id)task
{
  v2 = objc_opt_new();

  return v2;
}

- (TRISequenceTask)initWithTask:(id)a3 dependency:(id)a4
{
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = TRISequenceTask;
  v10 = [(TRISequenceTask *)&v13 init];
  if (v10)
  {
    if (!v8 && v9)
    {
      v12 = [MEMORY[0x277CCA890] currentHandler];
      [v12 handleFailureInMethod:a2 object:v10 file:@"TRISequenceTask.m" lineNumber:37 description:@"task must not be nil if dependency is nil"];
    }

    objc_storeStrong(&v10->_task, a3);
    objc_storeStrong(&v10->_dependentTask, a4);
  }

  return v10;
}

- (NSString)taskName
{
  if (self->_task)
  {
    [(TRITask *)self->_task taskName];
  }

  else
  {
    v3 = objc_opt_class();
    NSStringFromClass(v3);
  }
  v2 = ;

  return v2;
}

- (id)metrics
{
  task = self->_task;
  if (task)
  {
    if ([(TRITask *)task conformsToProtocol:&unk_287FDB4A0])
    {
      task = self->_task;
    }

    else
    {
      task = 0;
    }
  }

  return [(TRITask *)task metrics];
}

- (id)dimensions
{
  task = self->_task;
  if (task)
  {
    if ([(TRITask *)task conformsToProtocol:&unk_287FDB4A0])
    {
      task = self->_task;
    }

    else
    {
      task = 0;
    }
  }

  return [(TRITask *)task dimensions];
}

- (id)trialSystemTelemetry
{
  task = self->_task;
  if (task)
  {
    if ([(TRITask *)task conformsToProtocol:&unk_287FDB4A0])
    {
      task = self->_task;
    }

    else
    {
      task = 0;
    }
  }

  return [(TRITask *)task trialSystemTelemetry];
}

- (int)retryCount
{
  task = self->_task;
  if (task)
  {
    if ([(TRITask *)task conformsToProtocol:&unk_287FDBB78])
    {
      task = self->_task;
    }

    else
    {
      task = 0;
    }
  }

  return [(TRITask *)task retryCount];
}

- (void)addTaskToEndOfSequence:(id)a3
{
  v9 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v9[4];
    task = v9;
    [(TRISequenceTask *)self addTaskToEndOfSequence:v4];
    [(TRISequenceTask *)self addTaskToEndOfSequence:*(task + 3)];
  }

  else
  {
    if (self->_task)
    {
      v6 = [[TRISequenceTask alloc] initWithTask:self->_task dependency:self->_dependentTask];
      dependentTask = self->_dependentTask;
      self->_dependentTask = v6;
    }

    v8 = v9;
    task = self->_task;
    self->_task = v8;
  }
}

- (NSArray)dependencies
{
  if (self->_dependentTask)
  {
    v3 = objc_opt_new();
    [v3 addObject:self->_dependentTask];
    v4 = [(TRITask *)self->_task dependencies];

    if (v4)
    {
      v5 = [(TRITask *)self->_task dependencies];
      [v3 addObjectsFromArray:v5];
    }
  }

  else
  {
    v3 = [(TRITask *)self->_task dependencies];
  }

  return v3;
}

- (NSString)debugDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(TRITask *)self->_task debugDescription];
  v4 = [v2 stringWithFormat:@"<SequenceTask: %@>", v3];

  return v4;
}

+ (BOOL)_isTask:(id)a3 equalTo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 | v6)
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqual:v6];
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TRISequenceTask;
    if ([(TRIBaseTask *)&v8 isEqual:v4])
    {
      v5 = v4;
      if ([objc_opt_class() _isTask:self->_task equalTo:v5->_task])
      {
        v6 = [objc_opt_class() _isTask:self->_dependentTask equalTo:v5->_dependentTask];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = TRISequenceTask;
  v3 = [(TRIBaseTask *)&v8 hash];
  task = self->_task;
  if (task)
  {
    v5 = [(TRITask *)task hash];
  }

  else
  {
    v5 = 0;
  }

  dependentTask = self->_dependentTask;
  if (dependentTask)
  {
    dependentTask = [(TRITask *)dependentTask hash];
  }

  return dependentTask + 1369 * v3 + 37 * v5;
}

- (id)_asPersistedTask
{
  v3 = objc_opt_new();
  if (self->_task)
  {
    v4 = objc_opt_new();
    [v3 setTask:v4];

    v5 = [(TRITask *)self->_task taskType];
    v6 = [v3 task];
    [v6 setType:v5];

    v7 = [(TRITask *)self->_task serialize];
    v8 = [v3 task];
    [v8 setSerialized:v7];
  }

  if (self->_dependentTask)
  {
    v9 = objc_opt_new();
    [v3 setDependentTask:v9];

    v10 = [(TRITask *)self->_dependentTask taskType];
    v11 = [v3 dependentTask];
    [v11 setType:v10];

    v12 = [(TRITask *)self->_dependentTask serialize];
    v13 = [v3 dependentTask];
    [v13 setSerialized:v12];
  }

  return v3;
}

- (id)serialize
{
  v4 = [(TRISequenceTask *)self _asPersistedTask];
  v5 = [v4 data];

  if (!v5)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 handleFailureInMethod:a2 object:self file:@"TRISequenceTask.m" lineNumber:194 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return v5;
}

+ (id)parseFromData:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v3 = [(TRIPBMessage *)TRISequencePersistedTask parseFromData:a3 error:&v13];
  v4 = v13;
  if (!v3)
  {
    v6 = TRILogCategory_Server();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = v4;
      _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "Unable to parse buffer as TRISequencePersistedTask: %{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  if ([v3 hasTask])
  {
    v5 = [v3 task];
    v6 = __33__TRISequenceTask_parseFromData___block_invoke(v5);

    if (!v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v6 = 0;
  }

  if ([v3 hasDependentTask])
  {
    v7 = [v3 dependentTask];
    v8 = __33__TRISequenceTask_parseFromData___block_invoke(v7);

    if (!v8)
    {
LABEL_14:
      v10 = 0;
      goto LABEL_18;
    }

    if (!v6)
    {
      v9 = TRILogCategory_Server();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "TRISequencePersistedTask encodes dependent task without primary task", buf, 2u);
      }

      v6 = 0;
      v10 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = [[TRISequenceTask alloc] initWithTask:v6 dependency:v8];
LABEL_17:

LABEL_18:
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

id __33__TRISequenceTask_parseFromData___block_invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (([v1 hasType] & 1) == 0)
  {
    v6 = TRILogCategory_Server();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    LOWORD(v12[0]) = 0;
    v7 = "TRISequencePersistedTask is missing task type";
    goto LABEL_9;
  }

  if (([v1 hasSerialized] & 1) == 0)
  {
    v6 = TRILogCategory_Server();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    LOWORD(v12[0]) = 0;
    v7 = "TRISequencePersistedTask is missing serialized task bytes";
LABEL_9:
    v8 = v6;
    v9 = 2;
LABEL_10:
    _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, v7, v12, v9);
    goto LABEL_12;
  }

  v2 = +[TRITaskSupport sharedInstance];
  v3 = [v2 taskClassForTaskType:{objc_msgSend(v1, "type")}];

  if (v3)
  {
    v4 = [v1 serialized];
    v5 = [v3 parseFromData:v4];

    goto LABEL_13;
  }

  v6 = TRILogCategory_Server();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v12[0] = 67109120;
    v12[1] = [v1 type];
    v7 = "TRISequencePersistedTask encodes unsupported class type %d";
    v8 = v6;
    v9 = 8;
    goto LABEL_10;
  }

LABEL_12:

  v5 = 0;
LABEL_13:

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (TRISequenceTask)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TRISequenceTask;
  v5 = [(TRISequenceTask *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pb"];
    if (v6)
    {
      v7 = [objc_opt_class() parseFromData:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRISequenceTask.m" lineNumber:250 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  v5 = [(TRISequenceTask *)self serialize];
  [v7 encodeObject:v5 forKey:@"pb"];
}

@end