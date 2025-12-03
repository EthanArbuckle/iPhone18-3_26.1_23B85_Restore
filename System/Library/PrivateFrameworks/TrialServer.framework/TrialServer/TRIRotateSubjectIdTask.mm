@interface TRIRotateSubjectIdTask
+ (id)parseFromData:(id)data;
- (BOOL)isEqual:(id)equal;
- (TRIRotateSubjectIdTask)initWithCoder:(id)coder;
- (TRIRotateSubjectIdTask)initWithDeviceId:(id)id nextRotationDate:(id)date forceUpdate:(BOOL)update;
- (id)_asPersistedTask;
- (id)runTaskUsingContext:(id)context;
- (id)serialize;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRIRotateSubjectIdTask

- (TRIRotateSubjectIdTask)initWithDeviceId:(id)id nextRotationDate:(id)date forceUpdate:(BOOL)update
{
  idCopy = id;
  dateCopy = date;
  if (idCopy && [idCopy length] <= 7)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIRotateSubjectIdTask.m" lineNumber:50 description:{@"TRIRotateSubjectIdTask instantiated with unreasonably short deviceId: %@", idCopy}];
  }

  v16.receiver = self;
  v16.super_class = TRIRotateSubjectIdTask;
  v12 = [(TRIRotateSubjectIdTask *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_deviceId, id);
    objc_storeStrong(&v13->_nextRotationDate, date);
    v13->_forceUpdate = update;
  }

  return v13;
}

- (id)runTaskUsingContext:(id)context
{
  v50 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = MEMORY[0x277D737E8];
  paths = [contextCopy paths];
  v7 = [v5 defaultProviderWithPaths:paths];

  if (self->_forceUpdate)
  {
    goto LABEL_8;
  }

  date = [MEMORY[0x277CBEAA8] date];
  nextRotationDate = [v7 nextRotationDate];
  if (!nextRotationDate || (v10 = nextRotationDate, [v7 nextRotationDate], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "compare:", date), v11, v10, v12 != 1))
  {

LABEL_8:
    client = [contextCopy client];
    date = [client trackingId];

    subject = [v7 subject];
    [v7 rotateSubject];
    deviceId = self->_deviceId;
    subject2 = [v7 subject];
    v19 = subject2;
    if (deviceId)
    {
      [subject2 setDeviceId:deviceId];
    }

    else
    {
      deviceId = [subject2 deviceId];
      v21 = self->_deviceId;
      self->_deviceId = deviceId;
    }

    if (self->_nextRotationDate)
    {
      [v7 setNextRotationDate:?];
    }

    else
    {
      nextRotationDate2 = [v7 nextRotationDate];
      nextRotationDate = self->_nextRotationDate;
      self->_nextRotationDate = nextRotationDate2;
    }

    if (![v7 save])
    {
      v32 = 3;
      v26 = v7;
LABEL_30:
      v14 = [TRITaskRunResult resultWithRunStatus:v32 reportResultToServer:1 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];

      v7 = v26;
      goto LABEL_31;
    }

    v24 = MEMORY[0x277D737E8];
    paths2 = [contextCopy paths];
    v26 = [v24 defaultProviderWithPaths:paths2];

    subject3 = [v26 subject];
    hasDeviceId = [subject3 hasDeviceId];
    v29 = hasDeviceId;
    if (hasDeviceId && subject)
    {
      subject4 = [v26 subject];
      v31 = [subject isEqual:subject4];

      if (v31)
      {
LABEL_25:
        subject5 = [v26 subject];
        deviceId2 = [subject5 deviceId];

        v41 = TRILogCategory_Server();
        v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
        if (deviceId2)
        {
          if (v42)
          {
            *buf = 0;
            v43 = "subject rotated but device id was not changed";
LABEL_35:
            _os_log_error_impl(&dword_26F567000, v41, OS_LOG_TYPE_ERROR, v43, buf, 2u);
          }
        }

        else if (v42)
        {
          *buf = 0;
          v43 = "subject rotated but device id is nil";
          goto LABEL_35;
        }

        v32 = 3;
        goto LABEL_30;
      }
    }

    else
    {

      if ((v29 & 1) == 0)
      {
        goto LABEL_25;
      }

      if (!subject)
      {
        goto LABEL_24;
      }
    }

    client2 = [contextCopy client];
    v34 = [client2 shouldLogAtLevel:20];

    if (v34)
    {
      client3 = [contextCopy client];
      logger = [client3 logger];
      v37 = [MEMORY[0x277D73B40] metricWithName:@"SubjectIdEnd"];
      v47 = v37;
      v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
      [logger logWithTrackingId:date metrics:v38 dimensions:0 trialSystemTelemetry:0];
    }

LABEL_24:
    [MEMORY[0x277D737F0] notifySubjectRotation];
    v32 = 2;
    goto LABEL_30;
  }

  v13 = TRILogCategory_Server();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    nextRotationDate3 = [v7 nextRotationDate];
    *buf = 138412290;
    v49 = nextRotationDate3;
    _os_log_debug_impl(&dword_26F567000, v13, OS_LOG_TYPE_DEBUG, "Not yet rotating subject id.  Next rotation date is %@", buf, 0xCu);
  }

  v14 = [TRITaskRunResult resultWithRunStatus:2 reportResultToServer:0 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];
LABEL_31:

  v44 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = TRIRotateSubjectIdTask;
    if ([(TRIBaseTask *)&v13 isEqual:equalCopy])
    {
      v5 = equalCopy;
      if (self->_forceUpdate == v5->_forceUpdate)
      {
        v6 = self->_deviceId;
        v7 = v5->_deviceId;
        v8 = v7;
        if (v6 == v7)
        {

LABEL_15:
          v10 = [MEMORY[0x277CBEAA8] triIsDate:self->_nextRotationDate equalToDate:v5->_nextRotationDate];
LABEL_17:

          goto LABEL_18;
        }

        if (v6)
        {
          v9 = v7 == 0;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
        }

        else
        {
          v11 = [(NSString *)v6 isEqualToString:v7];

          if (v11)
          {
            goto LABEL_15;
          }
        }
      }

      v10 = 0;
      goto LABEL_17;
    }

    v10 = 0;
  }

LABEL_18:

  return v10;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = TRIRotateSubjectIdTask;
  v3 = [(TRIBaseTask *)&v9 hash];
  forceUpdate = self->_forceUpdate;
  deviceId = self->_deviceId;
  if (deviceId)
  {
    v6 = [(NSString *)deviceId hash];
  }

  else
  {
    v6 = 0;
  }

  nextRotationDate = self->_nextRotationDate;
  if (nextRotationDate)
  {
    nextRotationDate = [(NSDate *)nextRotationDate hash];
  }

  return nextRotationDate + 50653 * v3 + 1369 * forceUpdate + 37 * v6;
}

- (id)_asPersistedTask
{
  v3 = objc_opt_new();
  [v3 setForceUpdate:self->_forceUpdate];
  if (self->_deviceId)
  {
    [v3 setDeviceId:?];
  }

  if (self->_nextRotationDate)
  {
    v4 = [objc_alloc(MEMORY[0x277D73B88]) initWithDate:self->_nextRotationDate];
    [v3 setNextRotationTimestamp:v4];
  }

  return v3;
}

- (id)serialize
{
  _asPersistedTask = [(TRIRotateSubjectIdTask *)self _asPersistedTask];
  data = [_asPersistedTask data];

  if (!data)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIRotateSubjectIdTask.m" lineNumber:187 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return data;
}

+ (id)parseFromData:(id)data
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v4 = [(TRIPBMessage *)TRIRotateSubjectIdPersistedTask parseFromData:data error:&v16];
  v5 = v16;
  if (!v4)
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = v5;
      _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "Unable to parse buffer as TRIRotateSubjectIdPersistedTask: %{public}@", buf, 0xCu);
    }

    goto LABEL_13;
  }

  if (([v4 hasForceUpdate] & 1) == 0)
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138412290;
      v18 = v15;
      _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "Cannot decode message of type %@ with missing field: forceUpdate", buf, 0xCu);
    }

LABEL_13:
    v8 = 0;
    goto LABEL_21;
  }

  if (![v4 hasDeviceId])
  {
    v7 = 0;
    goto LABEL_15;
  }

  deviceId = [v4 deviceId];
  v7 = deviceId;
  if (!deviceId || [deviceId length]> 7)
  {
LABEL_15:
    v9 = objc_opt_class();
    hasNextRotationTimestamp = [v4 hasNextRotationTimestamp];
    if (hasNextRotationTimestamp)
    {
      self = [v4 nextRotationTimestamp];
      date = [self date];
    }

    else
    {
      date = 0;
    }

    v8 = [v9 taskWithDeviceId:v7 nextRotationDate:date forceUpdate:{objc_msgSend(v4, "forceUpdate")}];
    if (!hasNextRotationTimestamp)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  self = TRILogCategory_Server();
  if (os_log_type_enabled(self, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v18 = v7;
    _os_log_error_impl(&dword_26F567000, self, OS_LOG_TYPE_ERROR, "TRIRotateSubjectIdPersistedTask contains unreasonably short deviceId: %@", buf, 0xCu);
  }

  v8 = 0;
LABEL_20:

LABEL_21:
  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

- (TRIRotateSubjectIdTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TRIRotateSubjectIdTask;
  v5 = [(TRIRotateSubjectIdTask *)&v9 init];
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIRotateSubjectIdTask.m" lineNumber:216 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  serialize = [(TRIRotateSubjectIdTask *)self serialize];
  [coderCopy encodeObject:serialize forKey:@"pb"];
}

@end