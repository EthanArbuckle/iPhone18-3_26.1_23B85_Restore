@interface PLModelMigrationActionProcessor
- (PLModelMigrationActionProcessor)initWithUUID:(id)d pathManager:(id)manager migrationActionType:(int64_t)type analyticsEventManager:(id)eventManager logger:(id)logger progressUnitCount:(unint64_t)count;
- (id)_generateActionMarker;
- (id)_generateActionMarkerBase;
- (id)_generateActionTagMarker;
- (id)_progressLogMessage;
- (id)_startLogEntryWithName:(id)name;
- (void)_initialLog;
- (void)_performActionWithName:(id)name ifRequired:(id)required recordTimedCoreAnalyticsEvent:(id)event coreAnalyticsEventKey:(id)key block:(id)block;
- (void)_stopLogEntryWithPerfCheck:(id)check;
- (void)dealloc;
@end

@implementation PLModelMigrationActionProcessor

- (void)_performActionWithName:(id)name ifRequired:(id)required recordTimedCoreAnalyticsEvent:(id)event coreAnalyticsEventKey:(id)key block:(id)block
{
  v91 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  eventCopy = event;
  keyCopy = key;
  blockCopy = block;
  if (required.var0)
  {
    if ([(PLModelMigrationActionProcessor *)self isSuccess])
    {
      v16 = [(PLModelMigrationActionProcessor *)self _startLogEntryWithName:nameCopy];
      [(PLModelMigrationActionProcessor *)self setSuccess:blockCopy[2](blockCopy)];
      if (![(PLModelMigrationActionProcessor *)self isSuccess])
      {
        v17 = PLMigrationGetLog();
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);

        if (v18)
        {
          if (self->_logger)
          {
            v89 = 0u;
            v90 = 0u;
            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
            v83 = 0u;
            v84 = 0u;
            v81 = 0u;
            v82 = 0u;
            v79 = 0u;
            v80 = 0u;
            v77 = 0u;
            v78 = 0u;
            v75 = 0u;
            v76 = 0u;
            v73 = 0u;
            v74 = 0u;
            v71 = 0u;
            v72 = 0u;
            v69 = 0u;
            v70 = 0u;
            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            v63 = 0u;
            v64 = 0u;
            v61 = 0u;
            v62 = 0u;
            memset(buf, 0, sizeof(buf));
            v19 = PLMigrationGetLog();
            os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
            _generateActionTagMarker = [(PLModelMigrationActionProcessor *)self _generateActionTagMarker];
            v21 = _generateActionTagMarker;
            v22 = self->_type - 1;
            if (v22 > 5)
            {
              v23 = @"pre schema";
            }

            else
            {
              v23 = off_1E7569918[v22];
            }

            v54 = 138543618;
            v55 = _generateActionTagMarker;
            v56 = 2114;
            v57 = v23;
            LODWORD(v53) = 22;
            v41 = _os_log_send_and_compose_impl();

            [(PLFileBackedLogger *)self->_logger logWithMessage:v41 fromCodeLocation:"PLModelMigrationActionProcessor.m" type:210, 16, &v54, v53];
            if (v41 != buf)
            {
              free(v41);
            }
          }

          else
          {
            v36 = PLMigrationGetLog();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              _generateActionTagMarker2 = [(PLModelMigrationActionProcessor *)self _generateActionTagMarker];
              v38 = _generateActionTagMarker2;
              v39 = self->_type - 1;
              if (v39 > 5)
              {
                v40 = @"pre schema";
              }

              else
              {
                v40 = off_1E7569918[v39];
              }

              *buf = 138543618;
              *&buf[4] = _generateActionTagMarker2;
              *&buf[12] = 2114;
              *&buf[14] = v40;
              _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ Action: failed!", buf, 0x16u);
            }
          }
        }
      }

      selfCopy = self;
      if (![(PLModelMigrationActionProcessor *)selfCopy ignoreProgressUpdates])
      {
        progress = [(PLModelMigrationActionProcessor *)selfCopy progress];
        v44 = progress;
        if (progress)
        {
          completedUnitCount = [progress completedUnitCount];
          if (completedUnitCount >= [v44 totalUnitCount])
          {
            v46 = PLMigrationGetLog();
            v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);

            if (v47)
            {
              logger = [(PLModelMigrationActionProcessor *)selfCopy logger];

              if (logger)
              {
                v89 = 0u;
                v90 = 0u;
                v87 = 0u;
                v88 = 0u;
                v85 = 0u;
                v86 = 0u;
                v83 = 0u;
                v84 = 0u;
                v81 = 0u;
                v82 = 0u;
                v79 = 0u;
                v80 = 0u;
                v77 = 0u;
                v78 = 0u;
                v75 = 0u;
                v76 = 0u;
                v73 = 0u;
                v74 = 0u;
                v71 = 0u;
                v72 = 0u;
                v69 = 0u;
                v70 = 0u;
                v67 = 0u;
                v68 = 0u;
                v65 = 0u;
                v66 = 0u;
                v63 = 0u;
                v64 = 0u;
                v61 = 0u;
                v62 = 0u;
                memset(buf, 0, sizeof(buf));
                v49 = PLMigrationGetLog();
                os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
                v54 = 138543362;
                v55 = v44;
                LODWORD(v53) = 12;
                v50 = _os_log_send_and_compose_impl();

                v51 = [(PLModelMigrationActionProcessor *)selfCopy logger:&v54];
                [v51 logWithMessage:v50 fromCodeLocation:"PLModelMigrationActionProcessor.m" type:{86, 0}];

                if (v50 != buf)
                {
                  free(v50);
                }
              }

              else
              {
                v52 = PLMigrationGetLog();
                if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  *&buf[4] = v44;
                  _os_log_impl(&dword_19BF1F000, v52, OS_LOG_TYPE_DEFAULT, "Progress report exceeded totalUnitCount: %{public}@", buf, 0xCu);
                }
              }
            }
          }

          else
          {
            [v44 setCompletedUnitCount:{objc_msgSend(v44, "completedUnitCount") + 1}];
          }
        }
      }

      [(PLModelMigrationActionProcessor *)selfCopy _stopLogEntryWithPerfCheck:v16];
      if (eventCopy && keyCopy)
      {
        [(PLCoreAnalyticsEventManager *)selfCopy->_analyticsEventManager stopRecordingTimedEventWithToken:keyCopy forKey:eventCopy onEventWithName:selfCopy->_token];
      }

LABEL_44:

      goto LABEL_45;
    }

    v24 = PLMigrationGetLog();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

    if (v25)
    {
      if (!self->_logger)
      {
        v16 = PLMigrationGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          _generateActionTagMarker3 = [(PLModelMigrationActionProcessor *)self _generateActionTagMarker];
          v32 = _generateActionTagMarker3;
          v33 = self->_type - 1;
          if (v33 > 5)
          {
            v34 = @"pre schema";
          }

          else
          {
            v34 = off_1E7569918[v33];
          }

          *buf = 138543874;
          *&buf[4] = _generateActionTagMarker3;
          *&buf[12] = 2114;
          *&buf[14] = v34;
          *&buf[22] = 2114;
          *&buf[24] = nameCopy;
          _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ Action: skipping due to previous migration action failure: %{public}@", buf, 0x20u);
        }

        goto LABEL_44;
      }

      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      memset(buf, 0, sizeof(buf));
      v26 = PLMigrationGetLog();
      os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
      _generateActionTagMarker4 = [(PLModelMigrationActionProcessor *)self _generateActionTagMarker];
      v28 = _generateActionTagMarker4;
      v29 = self->_type - 1;
      if (v29 > 5)
      {
        v30 = @"pre schema";
      }

      else
      {
        v30 = off_1E7569918[v29];
      }

      v54 = 138543874;
      v55 = _generateActionTagMarker4;
      v56 = 2114;
      v57 = v30;
      v58 = 2114;
      v59 = nameCopy;
      LODWORD(v53) = 32;
      v35 = _os_log_send_and_compose_impl();

      [(PLFileBackedLogger *)self->_logger logWithMessage:v35 fromCodeLocation:"PLModelMigrationActionProcessor.m" type:219, 16, &v54, v53];
      if (v35 != buf)
      {
        free(v35);
      }
    }
  }

LABEL_45:
  ++self->_tag;
}

- (id)_progressLogMessage
{
  progress = self->_progress;
  if (progress)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@", action progress:(%.2lf %%)", -[NSProgress completedUnitCount](progress, "completedUnitCount") * 100.0 / -[NSProgress totalUnitCount](self->_progress, "totalUnitCount")];
  }

  else
  {
    v4 = &stru_1F0F06D80;
  }

  return v4;
}

- (void)_stopLogEntryWithPerfCheck:(id)check
{
  v64 = *MEMORY[0x1E69E9840];
  checkCopy = check;
  token = self->_token;
  v6 = CFAbsoluteTimeGetCurrent() - token;
  if (token <= 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v6;
  }

  stop = [checkCopy stop];
  v9 = PLMigrationGetLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (!v10)
  {
    goto LABEL_21;
  }

  if (!self->_logger)
  {
    v16 = PLMigrationGetLog();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
LABEL_20:

      goto LABEL_21;
    }

    _generateActionTagMarker = [(PLModelMigrationActionProcessor *)self _generateActionTagMarker];
    v18 = self->_type - 1;
    if (v18 > 5)
    {
      v19 = @"pre schema";
      if (checkCopy)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v19 = off_1E7569918[v18];
      if (checkCopy)
      {
LABEL_12:
        v20 = [checkCopy perfCheckLogStringWithPerfCheckInfo:stop];
LABEL_19:
        _progressLogMessage = [(PLModelMigrationActionProcessor *)self _progressLogMessage];
        *buf = 138544386;
        *&buf[4] = _generateActionTagMarker;
        *&buf[12] = 2114;
        *&buf[14] = v19;
        *&buf[22] = 2048;
        *&buf[24] = v7;
        *&buf[32] = 2114;
        *&buf[34] = v20;
        *&buf[42] = 2114;
        *&buf[44] = _progressLogMessage;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished %{public}@ action: %.2lfs%{public}@%{public}@", buf, 0x34u);

        goto LABEL_20;
      }
    }

    v20 = @", <perf check disabled>";
    goto LABEL_19;
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  memset(buf, 0, sizeof(buf));
  v11 = PLMigrationGetLog();
  os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  _generateActionTagMarker2 = [(PLModelMigrationActionProcessor *)self _generateActionTagMarker];
  v13 = self->_type - 1;
  if (v13 > 5)
  {
    v14 = @"pre schema";
    if (checkCopy)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v14 = off_1E7569918[v13];
    if (checkCopy)
    {
LABEL_8:
      v15 = [checkCopy perfCheckLogStringWithPerfCheckInfo:stop];
      goto LABEL_15;
    }
  }

  v15 = @", <perf check disabled>";
LABEL_15:
  _progressLogMessage2 = [(PLModelMigrationActionProcessor *)self _progressLogMessage];
  v25 = 138544386;
  v26 = _generateActionTagMarker2;
  v27 = 2114;
  v28 = v14;
  v29 = 2048;
  v30 = v7;
  v31 = 2114;
  v32 = v15;
  v33 = 2114;
  v34 = _progressLogMessage2;
  LODWORD(v24) = 52;
  v22 = _os_log_send_and_compose_impl();

  [(PLFileBackedLogger *)self->_logger logWithMessage:v22 fromCodeLocation:"PLModelMigrationActionProcessor.m" type:183, 0, &v25, v24];
  if (v22 != buf)
  {
    free(v22);
  }

LABEL_21:
}

- (id)_startLogEntryWithName:(id)name
{
  v60 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  self->_token = CFAbsoluteTimeGetCurrent();
  start = [MEMORY[0x1E69BF318] start];
  v6 = PLMigrationGetLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    if (self->_logger)
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      memset(buf, 0, sizeof(buf));
      v8 = PLMigrationGetLog();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      _generateActionTagMarker = [(PLModelMigrationActionProcessor *)self _generateActionTagMarker];
      v10 = self->_type - 1;
      if (v10 > 5)
      {
        v11 = @"pre schema";
      }

      else
      {
        v11 = off_1E7569918[v10];
      }

      qos_class_self();
      v16 = PLShortStringFromQoSClass();
      v21 = 138544130;
      v22 = _generateActionTagMarker;
      v23 = 2114;
      v24 = v11;
      v25 = 2114;
      v26 = nameCopy;
      v27 = 2114;
      v28 = v16;
      LODWORD(v20) = 42;
      v17 = _os_log_send_and_compose_impl();

      [(PLFileBackedLogger *)self->_logger logWithMessage:v17 fromCodeLocation:"PLModelMigrationActionProcessor.m" type:176, 0, &v21, v20];
      if (v17 != buf)
      {
        free(v17);
      }
    }

    else
    {
      v12 = PLMigrationGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        _generateActionTagMarker2 = [(PLModelMigrationActionProcessor *)self _generateActionTagMarker];
        v14 = self->_type - 1;
        if (v14 > 5)
        {
          v15 = @"pre schema";
        }

        else
        {
          v15 = off_1E7569918[v14];
        }

        qos_class_self();
        v18 = PLShortStringFromQoSClass();
        *buf = 138544130;
        *&buf[4] = _generateActionTagMarker2;
        *&buf[12] = 2114;
        *&buf[14] = v15;
        *&buf[22] = 2114;
        *&buf[24] = nameCopy;
        LOWORD(v30) = 2114;
        *(&v30 + 2) = v18;
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Start of %{public}@ action: %{public}@ at %{public}@ QoS", buf, 0x2Au);
      }
    }
  }

  return start;
}

- (id)_generateActionTagMarker
{
  v3 = MEMORY[0x1E696AEC0];
  _generateActionMarkerBase = [(PLModelMigrationActionProcessor *)self _generateActionMarkerBase];
  v5 = [v3 stringWithFormat:@"tag:%@:%04d", _generateActionMarkerBase, self->_tag];

  return v5;
}

- (id)_generateActionMarker
{
  v2 = MEMORY[0x1E696AEC0];
  _generateActionMarkerBase = [(PLModelMigrationActionProcessor *)self _generateActionMarkerBase];
  v4 = [v2 stringWithFormat:@"tag:%@     ", _generateActionMarkerBase];

  return v4;
}

- (id)_generateActionMarkerBase
{
  v2 = MEMORY[0x1E696AEC0];
  uuidTruncated = self->_uuidTruncated;
  v4 = self->_type - 1;
  if (v4 > 5)
  {
    v5 = @"ps";
  }

  else
  {
    v5 = off_1E75698E8[v4];
  }

  v6 = v5;
  v7 = [v2 stringWithFormat:@"%@:%@", uuidTruncated, v6];

  return v7;
}

- (void)dealloc
{
  v72 = *MEMORY[0x1E69E9840];
  stop = [(PLTimedPerfCheck *)self->_lifetimePerfCheck stop];
  [(NSProgress *)self->_progress setCompletedUnitCount:[(NSProgress *)self->_progress totalUnitCount]];
  v4 = PLMigrationGetLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    if (self->_logger)
    {
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      memset(buf, 0, sizeof(buf));
      v6 = PLMigrationGetLog();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      _generateActionMarker = [(PLModelMigrationActionProcessor *)self _generateActionMarker];
      type = self->_type;
      if ((type - 1) > 5)
      {
        v9 = @"pre schema";
      }

      else
      {
        v9 = off_1E7569918[type - 1];
      }

      v14 = PLStringFromPLMigrationActionTypeShort(type);
      lifetimeToken = self->_lifetimeToken;
      v16 = CFAbsoluteTimeGetCurrent() - lifetimeToken;
      if (lifetimeToken <= 0.0)
      {
        v17 = 0.0;
      }

      else
      {
        v17 = v16;
      }

      lifetimePerfCheck = self->_lifetimePerfCheck;
      if (lifetimePerfCheck)
      {
        v19 = [(PLTimedPerfCheck *)lifetimePerfCheck perfCheckLogStringWithPerfCheckInfo:stop];
      }

      else
      {
        v19 = @", <perf check disabled>";
      }

      _progressLogMessage = [(PLModelMigrationActionProcessor *)self _progressLogMessage];
      v31 = 138544642;
      v32 = _generateActionMarker;
      v33 = 2114;
      v34 = v9;
      v35 = 2114;
      v36 = v14;
      v37 = 2048;
      v38 = v17;
      v39 = 2114;
      v40 = v19;
      v41 = 2114;
      v42 = _progressLogMessage;
      LODWORD(v29) = 62;
      v21 = _os_log_send_and_compose_impl();

      [(PLFileBackedLogger *)self->_logger logWithMessage:v21 fromCodeLocation:"PLModelMigrationActionProcessor.m" type:151, 0, &v31, v29];
      if (v21 != buf)
      {
        free(v21);
      }
    }

    else
    {
      v10 = PLMigrationGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        _generateActionMarker2 = [(PLModelMigrationActionProcessor *)self _generateActionMarker];
        v12 = self->_type;
        if ((v12 - 1) > 5)
        {
          v13 = @"pre schema";
        }

        else
        {
          v13 = off_1E7569918[v12 - 1];
        }

        v22 = PLStringFromPLMigrationActionTypeShort(v12);
        v23 = self->_lifetimeToken;
        v24 = CFAbsoluteTimeGetCurrent() - v23;
        if (v23 <= 0.0)
        {
          v25 = 0.0;
        }

        else
        {
          v25 = v24;
        }

        v26 = self->_lifetimePerfCheck;
        if (v26)
        {
          v27 = [(PLTimedPerfCheck *)v26 perfCheckLogStringWithPerfCheckInfo:stop];
        }

        else
        {
          v27 = @", <perf check disabled>";
        }

        _progressLogMessage2 = [(PLModelMigrationActionProcessor *)self _progressLogMessage];
        *buf = 138544642;
        *&buf[4] = _generateActionMarker2;
        *&buf[12] = 2114;
        *&buf[14] = v13;
        *&buf[22] = 2114;
        *&buf[24] = v22;
        *&buf[32] = 2048;
        *&buf[34] = v25;
        *&buf[42] = 2114;
        *&buf[44] = v27;
        *&buf[52] = 2114;
        *&buf[54] = _progressLogMessage2;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Completed %{public}@ actions (type: %{public}@) %.2lfs%{public}@%{public}@", buf, 0x3Eu);
      }
    }
  }

  if (self->_loggerCloseRequired)
  {
    [(PLFileBackedLogger *)self->_logger close];
  }

  v30.receiver = self;
  v30.super_class = PLModelMigrationActionProcessor;
  [(PLModelMigrationActionProcessor *)&v30 dealloc];
}

- (void)_initialLog
{
  v95 = *MEMORY[0x1E69E9840];
  self->_lifetimeToken = CFAbsoluteTimeGetCurrent();
  start = [MEMORY[0x1E69BF318] start];
  lifetimePerfCheck = self->_lifetimePerfCheck;
  self->_lifetimePerfCheck = start;

  _generateActionMarker = [(PLModelMigrationActionProcessor *)self _generateActionMarker];
  v6 = PLMigrationGetLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    if (self->_logger)
    {
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v72 = 0u;
      v70 = 0u;
      memset(v71, 0, sizeof(v71));
      memset(buf, 0, sizeof(buf));
      v8 = PLMigrationGetLog();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      v9 = self->_type - 1;
      if (v9 > 5)
      {
        v10 = @"pre schema";
      }

      else
      {
        v10 = off_1E7569918[v9];
      }

      currentBuildVersionString = [MEMORY[0x1E69BF1B8] currentBuildVersionString];
      v15 = PLStringFromPLMigrationActionTypeShort(self->_type);
      qos_class_self();
      v16 = PLShortStringFromQoSClass();
      libraryURL = [(PLPhotoLibraryPathManager *)self->_pathManager libraryURL];
      lastPathComponent = [libraryURL lastPathComponent];
      v68.st_dev = 138544642;
      *&v68.st_mode = _generateActionMarker;
      WORD2(v68.st_ino) = 2114;
      *(&v68.st_ino + 6) = v10;
      HIWORD(v68.st_gid) = 2114;
      *&v68.st_rdev = currentBuildVersionString;
      LOWORD(v68.st_atimespec.tv_sec) = 2114;
      *(&v68.st_atimespec.tv_sec + 2) = v15;
      WORD1(v68.st_atimespec.tv_nsec) = 2114;
      *(&v68.st_atimespec.tv_nsec + 4) = v16;
      WORD2(v68.st_mtimespec.tv_sec) = 2114;
      *(&v68.st_mtimespec.tv_sec + 6) = lastPathComponent;
      LODWORD(v32) = 62;
      v19 = _os_log_send_and_compose_impl();

      [(PLFileBackedLogger *)self->_logger logWithMessage:v19 fromCodeLocation:"PLModelMigrationActionProcessor.m" type:136, 0, &v68, v32];
      if (v19 != buf)
      {
        free(v19);
      }
    }

    else
    {
      v11 = PLMigrationGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = self->_type - 1;
        if (v12 > 5)
        {
          v13 = @"pre schema";
        }

        else
        {
          v13 = off_1E7569918[v12];
        }

        currentBuildVersionString2 = [MEMORY[0x1E69BF1B8] currentBuildVersionString];
        v21 = PLStringFromPLMigrationActionTypeShort(self->_type);
        qos_class_self();
        v22 = PLShortStringFromQoSClass();
        libraryURL2 = [(PLPhotoLibraryPathManager *)self->_pathManager libraryURL];
        lastPathComponent2 = [libraryURL2 lastPathComponent];
        *buf = 138544642;
        *&buf[4] = _generateActionMarker;
        *&buf[12] = 2114;
        *&buf[14] = v13;
        *&buf[22] = 2114;
        *&buf[24] = currentBuildVersionString2;
        *&buf[32] = 2114;
        *&buf[34] = v21;
        *&buf[42] = 2114;
        *&buf[44] = v22;
        *&buf[52] = 2114;
        *&buf[54] = lastPathComponent2;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Start of %{public}@ actions (OS Build: %{public}@) (type: %{public}@) (QoS: %{public}@): %{public}@", buf, 0x3Eu);
      }
    }
  }

  memset(&v68, 0, sizeof(v68));
  if (self->_type == 1)
  {
    libraryURL3 = [(PLPhotoLibraryPathManager *)self->_pathManager libraryURL];
    v26 = stat([libraryURL3 fileSystemRepresentation], &v68);

    if (!v26)
    {
      __bp[11] = 0;
      strcpy(__bp, "          ");
      strmode(v68.st_mode, __bp);
      __bp[10] = 0;
      v27 = PLMigrationGetLog();
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);

      if (v28)
      {
        if (self->_logger)
        {
          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          v72 = 0u;
          v70 = 0u;
          memset(v71, 0, sizeof(v71));
          memset(buf, 0, sizeof(buf));
          v29 = PLMigrationGetLog();
          os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
          v33 = 138547458;
          v34 = _generateActionMarker;
          v35 = 1024;
          st_dev = v68.st_dev;
          v37 = 2048;
          st_ino = v68.st_ino;
          v39 = 1024;
          st_mode = v68.st_mode;
          v41 = 2080;
          v42 = __bp;
          v43 = 1024;
          st_nlink = v68.st_nlink;
          v45 = 1024;
          st_uid = v68.st_uid;
          v47 = 1024;
          st_gid = v68.st_gid;
          v49 = 1024;
          st_rdev = v68.st_rdev;
          v51 = 2048;
          st_size = v68.st_size;
          v53 = 2048;
          tv_sec = v68.st_atimespec.tv_sec;
          v55 = 2048;
          v56 = v68.st_mtimespec.tv_sec;
          v57 = 2048;
          v58 = v68.st_ctimespec.tv_sec;
          v59 = 2048;
          v60 = v68.st_birthtimespec.tv_sec;
          v61 = 1024;
          st_blksize = v68.st_blksize;
          v63 = 2048;
          st_blocks = v68.st_blocks;
          v65 = 1024;
          st_flags = v68.st_flags;
          LODWORD(v32) = 140;
          v30 = _os_log_send_and_compose_impl();

          [(PLFileBackedLogger *)self->_logger logWithMessage:v30 fromCodeLocation:"PLModelMigrationActionProcessor.m" type:144, 0, &v33, v32];
          if (v30 != buf)
          {
            free(v30);
          }
        }

        else
        {
          v31 = PLMigrationGetLog();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138547458;
            *&buf[4] = _generateActionMarker;
            *&buf[12] = 1024;
            *&buf[14] = v68.st_dev;
            *&buf[18] = 2048;
            *&buf[20] = v68.st_ino;
            *&buf[28] = 1024;
            *&buf[30] = v68.st_mode;
            *&buf[34] = 2080;
            *&buf[36] = __bp;
            *&buf[44] = 1024;
            *&buf[46] = v68.st_nlink;
            *&buf[50] = 1024;
            *&buf[52] = v68.st_uid;
            *&buf[56] = 1024;
            *&buf[58] = v68.st_gid;
            *&buf[62] = 1024;
            LODWORD(v70) = v68.st_rdev;
            WORD2(v70) = 2048;
            *(&v70 + 6) = v68.st_size;
            HIWORD(v70) = 2048;
            *&v71[0] = v68.st_atimespec.tv_sec;
            WORD4(v71[0]) = 2048;
            *(v71 + 10) = v68.st_mtimespec.tv_sec;
            WORD1(v71[1]) = 2048;
            *(&v71[1] + 4) = v68.st_ctimespec.tv_sec;
            WORD6(v71[1]) = 2048;
            *(&v71[1] + 14) = v68.st_birthtimespec.tv_sec;
            WORD3(v71[2]) = 1024;
            DWORD2(v71[2]) = v68.st_blksize;
            WORD6(v71[2]) = 2048;
            *(&v71[2] + 14) = v68.st_blocks;
            WORD3(v71[3]) = 1024;
            DWORD2(v71[3]) = v68.st_flags;
            _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ stat: st_dev=%d st_ino=%llu st_mode=%d (%s) st_nlink=%d st_uid=%d st_gid=%d st_rdev=%d st_size=%lld st_atime=%ld st_mtime=%ld st_ctime=%ld st_birthtime=%ld st_blksize=%d st_block=%lld st_flags=%d", buf, 0x8Cu);
          }
        }
      }
    }
  }
}

- (PLModelMigrationActionProcessor)initWithUUID:(id)d pathManager:(id)manager migrationActionType:(int64_t)type analyticsEventManager:(id)eventManager logger:(id)logger progressUnitCount:(unint64_t)count
{
  dCopy = d;
  managerCopy = manager;
  eventManagerCopy = eventManager;
  loggerCopy = logger;
  v30.receiver = self;
  v30.super_class = PLModelMigrationActionProcessor;
  v19 = [(PLModelMigrationActionProcessor *)&v30 init];
  v20 = v19;
  if (v19)
  {
    v19->_success = 1;
    objc_storeStrong(&v19->_uuid, d);
    v21 = [dCopy substringToIndex:8];
    v22 = [v21 copy];
    uuidTruncated = v20->_uuidTruncated;
    v20->_uuidTruncated = v22;

    objc_storeStrong(&v20->_pathManager, manager);
    v20->_type = type;
    objc_storeStrong(&v20->_analyticsEventManager, eventManager);
    v20->_tag = 1;
    v20->_pid = getpid();
    if (count)
    {
      v24 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:count];
    }

    else
    {
      v24 = 0;
    }

    progress = v20->_progress;
    v20->_progress = v24;

    lifetimePerfCheck = v20->_lifetimePerfCheck;
    v20->_lifetimePerfCheck = 0;

    v20->_loggerCloseRequired = loggerCopy == 0;
    if (loggerCopy)
    {
      v27 = loggerCopy;
    }

    else
    {
      v27 = [MEMORY[0x1E69BF210] setupWithLibraryIdentifier:0 type:1];
    }

    logger = v20->_logger;
    v20->_logger = v27;

    [(PLModelMigrationActionProcessor *)v20 _initialLog];
  }

  return v20;
}

@end