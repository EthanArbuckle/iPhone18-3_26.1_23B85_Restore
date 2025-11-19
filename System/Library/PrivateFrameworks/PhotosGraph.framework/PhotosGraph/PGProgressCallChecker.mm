@interface PGProgressCallChecker
- (PGProgressCallChecker)initWithTaskName:(id)a3 loggingConnection:(id)a4;
- (id)memoryUsage;
- (void)checkCallsWithProgress:(double)a3 stop:(BOOL)a4;
@end

@implementation PGProgressCallChecker

- (void)checkCallsWithProgress:(double)a3 stop:(BOOL)a4
{
  v4 = a4;
  v50 = *MEMORY[0x277D85DE8];
  wasStopped = self->_wasStopped;
  if (wasStopped)
  {
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      taskName = self->_taskName;
      *&v38 = COERCE_DOUBLE(@" Also *stop* seems to have been reset!!!");
      if (v4)
      {
        *&v38 = COERCE_DOUBLE(&stru_2843F5C58);
      }

      v40 = 138412546;
      v41 = taskName;
      v42 = 2112;
      v43 = *&v38;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "%@: Progress called again although task was stopped!!!%@", &v40, 0x16u);
      LOBYTE(wasStopped) = self->_wasStopped;
    }
  }

  self->_wasStopped = wasStopped || v4;
  v9 = @", stopped";
  if (!v4)
  {
    v9 = &stru_2843F5C58;
  }

  v10 = v9;
  lastProgress = self->_lastProgress;
  if (lastProgress + -2.22044605e-16 > a3)
  {
    v12 = self->_loggingConnection;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = self->_taskName;
      v40 = 138412802;
      v41 = v13;
      v42 = 2048;
      v43 = lastProgress;
      v44 = 2048;
      v45 = a3;
      _os_log_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_INFO, "%@: Progress going backwards from %1.4f to %1.4f", &v40, 0x20u);
    }
  }

  self->_lastProgress = a3;
  Current = CFAbsoluteTimeGetCurrent();
  timestampOfLastCallToProgress = self->_timestampOfLastCallToProgress;
  v16 = Current - timestampOfLastCallToProgress;
  numberOfCallsToProgressSinceLastRecordedCall = self->_numberOfCallsToProgressSinceLastRecordedCall;
  if (Current - timestampOfLastCallToProgress >= 1.0)
  {
    if (*&numberOfCallsToProgressSinceLastRecordedCall != 0.0)
    {
      v26 = self->_loggingConnection;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = self->_taskName;
        v28 = timestampOfLastCallToProgress - self->_timestampOfLastRecordedCallToProgress;
        v40 = 138413058;
        v41 = v27;
        v42 = 2048;
        v43 = *&numberOfCallsToProgressSinceLastRecordedCall;
        v44 = 2048;
        v45 = v28;
        v46 = 2112;
        v47 = *&v10;
        _os_log_impl(&dword_22F0FC000, v26, OS_LOG_TYPE_DEFAULT, "%@: Progress --------, called %lu time(s) in %.2f sec%@", &v40, 0x2Au);
      }

      if (self->_reportMemoryUsage)
      {
        v29 = self->_loggingConnection;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = v29;
          v31 = [(PGProgressCallChecker *)self memoryUsage];
          v40 = 138412290;
          v41 = v31;
          _os_log_impl(&dword_22F0FC000, v30, OS_LOG_TYPE_DEFAULT, "Mem: %@", &v40, 0xCu);
        }
      }

      self->_numberOfCallsToProgressSinceLastRecordedCall = 0;
    }

    if (v16 >= 30.0)
    {
      v34 = self->_loggingConnection;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
      {
        v35 = self->_taskName;
        v40 = 138413058;
        v41 = v35;
        v42 = 2048;
        v43 = a3;
        v44 = 2048;
        v45 = Current - timestampOfLastCallToProgress;
        v46 = 2112;
        v47 = *&v10;
        _os_log_fault_impl(&dword_22F0FC000, v34, OS_LOG_TYPE_FAULT, "%@: Progress %1.4f, not called for %.2f sec%@", &v40, 0x2Au);
      }
    }

    else
    {
      v32 = self->_loggingConnection;
      if (v16 >= 5.0)
      {
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v39 = self->_taskName;
          v40 = 138413058;
          v41 = v39;
          v42 = 2048;
          v43 = a3;
          v44 = 2048;
          v45 = Current - timestampOfLastCallToProgress;
          v46 = 2112;
          v47 = *&v10;
          _os_log_error_impl(&dword_22F0FC000, v32, OS_LOG_TYPE_ERROR, "%@: Progress %1.4f, not called for %.2f sec%@", &v40, 0x2Au);
        }
      }

      else if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = self->_taskName;
        v40 = 138413058;
        v41 = v33;
        v42 = 2048;
        v43 = a3;
        v44 = 2048;
        v45 = Current - timestampOfLastCallToProgress;
        v46 = 2112;
        v47 = *&v10;
        _os_log_impl(&dword_22F0FC000, v32, OS_LOG_TYPE_DEFAULT, "%@: Progress %1.4f, not called for %.2f sec%@", &v40, 0x2Au);
      }
    }

    self->_timestampOfLastRecordedCallToProgress = Current;
  }

  else
  {
    v18 = numberOfCallsToProgressSinceLastRecordedCall + 1;
    self->_numberOfCallsToProgressSinceLastRecordedCall = v18;
    v19 = Current - self->_timestampOfLastRecordedCallToProgress;
    if (v19 >= 1.0 || v4)
    {
      v21 = self->_loggingConnection;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = self->_taskName;
        v40 = 138413314;
        v41 = v22;
        v42 = 2048;
        v43 = a3;
        v44 = 2048;
        v45 = *&v18;
        v46 = 2048;
        v47 = v19;
        v48 = 2112;
        v49 = v10;
        _os_log_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_DEFAULT, "%@: Progress %1.4f, called %lu times in %.2f sec%@", &v40, 0x34u);
      }

      if (self->_reportMemoryUsage)
      {
        v23 = self->_loggingConnection;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v23;
          v25 = [(PGProgressCallChecker *)self memoryUsage];
          v40 = 138412290;
          v41 = v25;
          _os_log_impl(&dword_22F0FC000, v24, OS_LOG_TYPE_DEFAULT, "Mem: %@", &v40, 0xCu);
        }
      }

      self->_timestampOfLastRecordedCallToProgress = Current;
      self->_numberOfCallsToProgressSinceLastRecordedCall = 0;
    }
  }

  self->_timestampOfLastCallToProgress = Current;

  v36 = *MEMORY[0x277D85DE8];
}

- (id)memoryUsage
{
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  *task_info_out = 0u;
  v8 = 0u;
  task_info_outCnt = 93;
  task_info(*MEMORY[0x277D85F48], 0x16u, task_info_out, &task_info_outCnt);
  v2 = [MEMORY[0x277D22C58] humanReadableMemorySizeWithSize:v16];
  v3 = [MEMORY[0x277D22C58] humanReadableMemorySizeWithSize:*(&v17 + 1)];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (%@)", v2, v3];

  return v4;
}

- (PGProgressCallChecker)initWithTaskName:(id)a3 loggingConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = PGProgressCallChecker;
  v8 = [(PGProgressCallChecker *)&v13 init];
  if (v8)
  {
    v9 = [v6 copy];
    taskName = v8->_taskName;
    v8->_taskName = v9;

    objc_storeStrong(&v8->_loggingConnection, a4);
    Current = CFAbsoluteTimeGetCurrent();
    v8->_timestampOfLastCallToProgress = Current;
    v8->_timestampOfLastRecordedCallToProgress = Current;
  }

  return v8;
}

@end