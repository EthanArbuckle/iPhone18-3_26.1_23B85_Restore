@interface TRISubscribeChannelTask
+ (id)parseFromData:(id)data;
+ (id)taskWithExperimentId:(id)id startTime:(id)time;
- (BOOL)isEqual:(id)equal;
- (TRISubscribeChannelTask)initWithCoder:(id)coder;
- (TRISubscribeChannelTask)initWithExperiment:(id)experiment;
- (id)_asPersistedTask;
- (id)runUsingContext:(id)context withTaskQueue:(id)queue;
- (id)serialize;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRISubscribeChannelTask

- (TRISubscribeChannelTask)initWithExperiment:(id)experiment
{
  experimentCopy = experiment;
  if (!experimentCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRISubscribeChannelTask.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"experimentId"}];
  }

  v11.receiver = self;
  v11.super_class = TRISubscribeChannelTask;
  v7 = [(TRISubscribeChannelTask *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_experimentId, experiment);
  }

  return v8;
}

+ (id)taskWithExperimentId:(id)id startTime:(id)time
{
  timeCopy = time;
  idCopy = id;
  v7 = [[TRISubscribeChannelTask alloc] initWithExperiment:idCopy];

  [(TRISubscribeChannelTask *)v7 setStartTime:timeCopy];

  return v7;
}

- (id)runUsingContext:(id)context withTaskQueue:(id)queue
{
  v21 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v6 = +[TRICKServerEnvironmentReader currentEnvironment];
  v7 = +[TRISystemConfiguration sharedInstance];
  populationType = [v7 populationType];

  if (populationType == 3 && v6 == 3)
  {
    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      experimentId = self->_experimentId;
      v19 = 138543362;
      v20 = experimentId;
      _os_log_impl(&dword_26F567000, v14, OS_LOG_TYPE_DEFAULT, "Skipping subscribing to cloud channel for experiment %{public}@ because it is deployed to UAT", &v19, 0xCu);
    }

    v11 = MEMORY[0x277CBEBF8];
    v12 = 4;
    v13 = 1;
  }

  else
  {
    pushServiceMuxer = [contextCopy pushServiceMuxer];
    [pushServiceMuxer subscribeForExperimentId:self->_experimentId];

    v11 = MEMORY[0x277CBEBF8];
    v12 = 2;
    v13 = 0;
  }

  v16 = [TRITaskRunResult resultWithRunStatus:v12 reportResultToServer:v13 nextTasks:v11 earliestRetryDate:0];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
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
    v8.super_class = TRISubscribeChannelTask;
    if ([(TRIBaseTask *)&v8 isEqual:equalCopy]&& [(TRISubscribeChannelTask *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v5 = equalCopy;
      if ([(NSString *)self->_experimentId isEqualToString:v5->_experimentId])
      {
        v6 = [MEMORY[0x277CBEAA8] triIsDate:self->_startTime equalToDate:v5->_startTime];
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
  v7.receiver = self;
  v7.super_class = TRISubscribeChannelTask;
  v3 = [(TRIBaseTask *)&v7 hash];
  v4 = [(NSString *)self->_experimentId hash];
  startTime = self->_startTime;
  if (startTime)
  {
    startTime = [(NSDate *)startTime hash];
  }

  return startTime + 1369 * v3 + 37 * v4;
}

- (id)_asPersistedTask
{
  v3 = objc_opt_new();
  [v3 setExperimentId:self->_experimentId];
  startTime = [(TRISubscribeChannelTask *)self startTime];

  if (startTime)
  {
    v5 = objc_alloc(MEMORY[0x277D73B88]);
    startTime2 = [(TRISubscribeChannelTask *)self startTime];
    v7 = [v5 initWithDate:startTime2];
    [v3 setStartTimestamp:v7];
  }

  return v3;
}

- (id)serialize
{
  _asPersistedTask = [(TRISubscribeChannelTask *)self _asPersistedTask];
  data = [_asPersistedTask data];

  if (!data)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRISubscribeChannelTask.m" lineNumber:114 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return data;
}

+ (id)parseFromData:(id)data
{
  v24 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v3 = [(TRIPBMessage *)TRISubscribeChannelPersistedTask parseFromData:data error:&v21];
  v4 = v21;
  if (!v3)
  {
    experimentId2 = TRILogCategory_Server();
    if (os_log_type_enabled(experimentId2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v23 = v4;
      _os_log_error_impl(&dword_26F567000, experimentId2, OS_LOG_TYPE_ERROR, "Unable to parse buffer as TRISubscribePersistedTask: %{public}@", buf, 0xCu);
    }

    goto LABEL_13;
  }

  if (([v3 hasExperimentId] & 1) == 0)
  {
    v12 = TRILogCategory_Server();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138412290;
      v23 = v19;
      _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "Cannot decode message of type %@ with missing field: experimentId", buf, 0xCu);
    }

    experimentId2 = TRILogCategory_Server();
    if (!os_log_type_enabled(experimentId2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 138412290;
    v23 = v14;
    v15 = "Cannot decode message of type %@ with missing field: experimentId";
    goto LABEL_19;
  }

  experimentId = [v3 experimentId];
  v6 = [experimentId length];

  if (!v6)
  {
    experimentId2 = TRILogCategory_Server();
    if (!os_log_type_enabled(experimentId2, OS_LOG_TYPE_ERROR))
    {
LABEL_13:
      v11 = 0;
      goto LABEL_14;
    }

    v20 = objc_opt_class();
    v14 = NSStringFromClass(v20);
    *buf = 138412290;
    v23 = v14;
    v15 = "Cannot decode message of type %@ with field of length 0: experimentId";
LABEL_19:
    _os_log_error_impl(&dword_26F567000, experimentId2, OS_LOG_TYPE_ERROR, v15, buf, 0xCu);

    goto LABEL_13;
  }

  v7 = objc_opt_class();
  experimentId2 = [v3 experimentId];
  if ([v3 hasStartTimestamp])
  {
    startTimestamp = [v3 startTimestamp];
    date = [startTimestamp date];
    v11 = [v7 taskWithExperimentId:experimentId2 startTime:date];
  }

  else
  {
    v11 = [v7 taskWithExperimentId:experimentId2 startTime:0];
  }

LABEL_14:

  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

- (TRISubscribeChannelTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TRISubscribeChannelTask;
  v5 = [(TRISubscribeChannelTask *)&v9 init];
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRISubscribeChannelTask.m" lineNumber:143 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  serialize = [(TRISubscribeChannelTask *)self serialize];
  [coderCopy encodeObject:serialize forKey:@"pb"];
}

@end