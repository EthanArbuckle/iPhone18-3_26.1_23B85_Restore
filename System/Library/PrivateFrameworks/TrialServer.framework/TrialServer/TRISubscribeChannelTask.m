@interface TRISubscribeChannelTask
+ (id)parseFromData:(id)a3;
+ (id)taskWithExperimentId:(id)a3 startTime:(id)a4;
- (BOOL)isEqual:(id)a3;
- (TRISubscribeChannelTask)initWithCoder:(id)a3;
- (TRISubscribeChannelTask)initWithExperiment:(id)a3;
- (id)_asPersistedTask;
- (id)runUsingContext:(id)a3 withTaskQueue:(id)a4;
- (id)serialize;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRISubscribeChannelTask

- (TRISubscribeChannelTask)initWithExperiment:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"TRISubscribeChannelTask.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"experimentId"}];
  }

  v11.receiver = self;
  v11.super_class = TRISubscribeChannelTask;
  v7 = [(TRISubscribeChannelTask *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_experimentId, a3);
  }

  return v8;
}

+ (id)taskWithExperimentId:(id)a3 startTime:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[TRISubscribeChannelTask alloc] initWithExperiment:v6];

  [(TRISubscribeChannelTask *)v7 setStartTime:v5];

  return v7;
}

- (id)runUsingContext:(id)a3 withTaskQueue:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[TRICKServerEnvironmentReader currentEnvironment];
  v7 = +[TRISystemConfiguration sharedInstance];
  v8 = [v7 populationType];

  if (v8 == 3 && v6 == 3)
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
    v10 = [v5 pushServiceMuxer];
    [v10 subscribeForExperimentId:self->_experimentId];

    v11 = MEMORY[0x277CBEBF8];
    v12 = 2;
    v13 = 0;
  }

  v16 = [TRITaskRunResult resultWithRunStatus:v12 reportResultToServer:v13 nextTasks:v11 earliestRetryDate:0];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
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
    v8.super_class = TRISubscribeChannelTask;
    if ([(TRIBaseTask *)&v8 isEqual:v4]&& [(TRISubscribeChannelTask *)v4 isMemberOfClass:objc_opt_class()])
    {
      v5 = v4;
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
  v4 = [(TRISubscribeChannelTask *)self startTime];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D73B88]);
    v6 = [(TRISubscribeChannelTask *)self startTime];
    v7 = [v5 initWithDate:v6];
    [v3 setStartTimestamp:v7];
  }

  return v3;
}

- (id)serialize
{
  v4 = [(TRISubscribeChannelTask *)self _asPersistedTask];
  v5 = [v4 data];

  if (!v5)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 handleFailureInMethod:a2 object:self file:@"TRISubscribeChannelTask.m" lineNumber:114 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return v5;
}

+ (id)parseFromData:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v3 = [(TRIPBMessage *)TRISubscribeChannelPersistedTask parseFromData:a3 error:&v21];
  v4 = v21;
  if (!v3)
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v23 = v4;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Unable to parse buffer as TRISubscribePersistedTask: %{public}@", buf, 0xCu);
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

    v8 = TRILogCategory_Server();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
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

  v5 = [v3 experimentId];
  v6 = [v5 length];

  if (!v6)
  {
    v8 = TRILogCategory_Server();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
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
    _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, v15, buf, 0xCu);

    goto LABEL_13;
  }

  v7 = objc_opt_class();
  v8 = [v3 experimentId];
  if ([v3 hasStartTimestamp])
  {
    v9 = [v3 startTimestamp];
    v10 = [v9 date];
    v11 = [v7 taskWithExperimentId:v8 startTime:v10];
  }

  else
  {
    v11 = [v7 taskWithExperimentId:v8 startTime:0];
  }

LABEL_14:

  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

- (TRISubscribeChannelTask)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TRISubscribeChannelTask;
  v5 = [(TRISubscribeChannelTask *)&v9 init];
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
    [v6 handleFailureInMethod:a2 object:self file:@"TRISubscribeChannelTask.m" lineNumber:143 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  v5 = [(TRISubscribeChannelTask *)self serialize];
  [v7 encodeObject:v5 forKey:@"pb"];
}

@end