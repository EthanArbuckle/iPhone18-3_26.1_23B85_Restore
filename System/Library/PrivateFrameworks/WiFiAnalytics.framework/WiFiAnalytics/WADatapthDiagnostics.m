@interface WADatapthDiagnostics
- (PBCodable)awdReport;
- (WADatapthDiagnostics)initWithWADatapthDiagnosticsReport:(const void *)a3 length:(unint64_t)a4;
- (unsigned)awdMetricID;
@end

@implementation WADatapthDiagnostics

- (WADatapthDiagnostics)initWithWADatapthDiagnosticsReport:(const void *)a3 length:(unint64_t)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = WADatapthDiagnostics;
  v6 = [(WADatapthDiagnostics *)&v20 init];
  v7 = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x1E695DEF0] dataWithBytes:a3 length:a4];
  if (!v8)
  {
    v10 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v22 = "[WADatapthDiagnostics initWithWADatapthDiagnosticsReport:length:]";
      v23 = 1024;
      v24 = 50;
      _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_ERROR, "%{public}s::%d:resultData failed", buf, 0x12u);
    }

    goto LABEL_16;
  }

  v6->_action = 2;
  v19 = 0;
  v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v8 error:&v19];
  v10 = v19;
  awdReport = v6->_awdReport;
  v6->_awdReport = v9;

  if (v6->_awdReport)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    v17 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v22 = "[WADatapthDiagnostics initWithWADatapthDiagnosticsReport:length:]";
      v23 = 1024;
      v24 = 56;
      v25 = 2112;
      v26 = v10;
      _os_log_impl(&dword_1C8460000, v17, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to unarchive WAMessage: %@", buf, 0x1Cu);
    }

LABEL_16:
    objc_autoreleasePoolPop(v7);
    v14 = 0;
    goto LABEL_10;
  }

  objc_autoreleasePoolPop(v7);
  v13 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136446466;
    v22 = "[WADatapthDiagnostics initWithWADatapthDiagnosticsReport:length:]";
    v23 = 1024;
    v24 = 58;
    _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_INFO, "%{public}s::%d:Success", buf, 0x12u);
  }

  v14 = v6;
LABEL_10:

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (unsigned)awdMetricID
{
  if (self->_awdMetricID)
  {
    return self->_awdMetricID;
  }

  else
  {
    return 589928;
  }
}

- (PBCodable)awdReport
{
  v19 = *MEMORY[0x1E69E9840];
  awdReport = self->_awdReport;
  if (!awdReport)
  {
    v11 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 136446466;
      v14 = "[WADatapthDiagnostics awdReport]";
      v15 = 1024;
      v16 = 75;
      v12 = "%{public}s::%d:_awdReport missing";
LABEL_13:
      _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, v12, &v13, 0x12u);
    }

LABEL_14:

    v8 = 0;
    goto LABEL_6;
  }

  v4 = [(PBCodable *)awdReport stallNotifications];
  v5 = [v4 count];

  if (v5)
  {
    v11 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 136446466;
      v14 = "[WADatapthDiagnostics awdReport]";
      v15 = 1024;
      v16 = 78;
      v12 = "%{public}s::%d:_awdReport 0 stallNotifications";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  [(WADatapthDiagnostics *)self setAwdMetricID:589928];
  v6 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = self->_awdReport;
    v13 = 136446722;
    v14 = "[WADatapthDiagnostics awdReport]";
    v15 = 1024;
    v16 = 85;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Generated wifi datapath diagnostics report: %{public}@", &v13, 0x1Cu);
  }

  v8 = self->_awdReport;
LABEL_6:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

@end