@interface TRISequenceTask
+ (BOOL)_isTask:(id)task equalTo:(id)to;
+ (id)parseFromData:(id)data;
+ (id)task;
- (BOOL)isEqual:(id)equal;
- (NSArray)dependencies;
- (NSString)debugDescription;
- (NSString)taskName;
- (TRISequenceTask)initWithCoder:(id)coder;
- (TRISequenceTask)initWithTask:(id)task dependency:(id)dependency;
- (id)_asPersistedTask;
- (id)dimensions;
- (id)metrics;
- (id)serialize;
- (id)trialSystemTelemetry;
- (int)retryCount;
- (unint64_t)hash;
- (void)addTaskToEndOfSequence:(id)sequence;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRISequenceTask

+ (id)task
{
  v2 = objc_opt_new();

  return v2;
}

- (TRISequenceTask)initWithTask:(id)task dependency:(id)dependency
{
  taskCopy = task;
  dependencyCopy = dependency;
  v13.receiver = self;
  v13.super_class = TRISequenceTask;
  v10 = [(TRISequenceTask *)&v13 init];
  if (v10)
  {
    if (!taskCopy && dependencyCopy)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v10 file:@"TRISequenceTask.m" lineNumber:37 description:@"task must not be nil if dependency is nil"];
    }

    objc_storeStrong(&v10->_task, task);
    objc_storeStrong(&v10->_dependentTask, dependency);
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

- (void)addTaskToEndOfSequence:(id)sequence
{
  sequenceCopy = sequence;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = sequenceCopy[4];
    task = sequenceCopy;
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

    v8 = sequenceCopy;
    task = self->_task;
    self->_task = v8;
  }
}

- (NSArray)dependencies
{
  if (self->_dependentTask)
  {
    dependencies3 = objc_opt_new();
    [dependencies3 addObject:self->_dependentTask];
    dependencies = [(TRITask *)self->_task dependencies];

    if (dependencies)
    {
      dependencies2 = [(TRITask *)self->_task dependencies];
      [dependencies3 addObjectsFromArray:dependencies2];
    }
  }

  else
  {
    dependencies3 = [(TRITask *)self->_task dependencies];
  }

  return dependencies3;
}

- (NSString)debugDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(TRITask *)self->_task debugDescription];
  v4 = [v2 stringWithFormat:@"<SequenceTask: %@>", v3];

  return v4;
}

+ (BOOL)_isTask:(id)task equalTo:(id)to
{
  taskCopy = task;
  toCopy = to;
  v7 = toCopy;
  if (taskCopy | toCopy)
  {
    v8 = 0;
    if (taskCopy && toCopy)
    {
      v8 = [taskCopy isEqual:toCopy];
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TRISequenceTask;
    if ([(TRIBaseTask *)&v8 isEqual:equalCopy])
    {
      v5 = equalCopy;
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

    taskType = [(TRITask *)self->_task taskType];
    task = [v3 task];
    [task setType:taskType];

    serialize = [(TRITask *)self->_task serialize];
    task2 = [v3 task];
    [task2 setSerialized:serialize];
  }

  if (self->_dependentTask)
  {
    v9 = objc_opt_new();
    [v3 setDependentTask:v9];

    taskType2 = [(TRITask *)self->_dependentTask taskType];
    dependentTask = [v3 dependentTask];
    [dependentTask setType:taskType2];

    serialize2 = [(TRITask *)self->_dependentTask serialize];
    dependentTask2 = [v3 dependentTask];
    [dependentTask2 setSerialized:serialize2];
  }

  return v3;
}

- (id)serialize
{
  _asPersistedTask = [(TRISequenceTask *)self _asPersistedTask];
  data = [_asPersistedTask data];

  if (!data)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRISequenceTask.m" lineNumber:194 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return data;
}

+ (id)parseFromData:(id)data
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v3 = [(TRIPBMessage *)TRISequencePersistedTask parseFromData:data error:&v13];
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
    task = [v3 task];
    v6 = __33__TRISequenceTask_parseFromData___block_invoke(task);

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
    dependentTask = [v3 dependentTask];
    v8 = __33__TRISequenceTask_parseFromData___block_invoke(dependentTask);

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

- (TRISequenceTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TRISequenceTask;
  v5 = [(TRISequenceTask *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pb"];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRISequenceTask.m" lineNumber:250 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  serialize = [(TRISequenceTask *)self serialize];
  [coderCopy encodeObject:serialize forKey:@"pb"];
}

@end