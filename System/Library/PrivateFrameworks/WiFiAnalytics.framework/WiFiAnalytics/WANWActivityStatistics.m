@interface WANWActivityStatistics
- (PBCodable)awdReport;
- (WANWActivityStatistics)initWithPBCodableData:(id)a3;
- (WANWActivityStatistics)initWithWAActivityReport:(const void *)a3 length:(unint64_t)a4;
- (id)expandKeyNameLengths:(id)a3;
- (id)getTransformedFlattened:(int)a3;
- (unsigned)awdMetricID;
@end

@implementation WANWActivityStatistics

- (WANWActivityStatistics)initWithPBCodableData:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = WANWActivityStatistics;
  v5 = [(WANWActivityStatistics *)&v13 init];
  v6 = v5;
  if (v4 && v5 && [v4 length])
  {
    v7 = [[WiFiAnalyticsAWDWiFiNWActivity alloc] initWithData:v4];
    awdReport = v6->_awdReport;
    v6->_awdReport = &v7->super;

    v6->_fromInitWithPBCodableData = 1;
  }

  else
  {
    v9 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v4 length];
      *buf = 136446978;
      v15 = "[WANWActivityStatistics initWithPBCodableData:]";
      v16 = 1024;
      v17 = 63;
      v18 = 1024;
      v19 = v6 != 0;
      v20 = 2048;
      v21 = v10;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:initWithPBCodableData Failed self %d length %lu", buf, 0x22u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

- (WANWActivityStatistics)initWithWAActivityReport:(const void *)a3 length:(unint64_t)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = WANWActivityStatistics;
  v6 = [(WANWActivityStatistics *)&v21 init];
  v7 = v6;
  if (v6)
  {
    v6->_fromInitWithPBCodableData = 0;
    v8 = objc_autoreleasePoolPush();
    v9 = [MEMORY[0x1E695DEF0] dataWithBytes:a3 length:a4];
    if (!v9)
    {
      v11 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v23 = "[WANWActivityStatistics initWithWAActivityReport:length:]";
        v24 = 1024;
        v25 = 97;
        _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:resultData failed", buf, 0x12u);
      }

      goto LABEL_18;
    }

    v20 = 0;
    v10 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:&v20];
    v11 = v20;
    awdReport = v7->_awdReport;
    v7->_awdReport = v10;

    if (v7->_awdReport)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      v18 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v23 = "[WANWActivityStatistics initWithWAActivityReport:length:]";
        v24 = 1024;
        v25 = 100;
        v26 = 2112;
        v27 = v11;
        _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to unarchive WAMessageAWD: %@", buf, 0x1Cu);
      }

LABEL_18:
      objc_autoreleasePoolPop(v8);
      v15 = 0;
      goto LABEL_12;
    }

    objc_autoreleasePoolPop(v8);
    v14 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v23 = "[WANWActivityStatistics initWithWAActivityReport:length:]";
      v24 = 1024;
      v25 = 102;
      _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_INFO, "%{public}s::%d:Success", buf, 0x12u);
    }
  }

  v15 = v7;
LABEL_12:

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (unsigned)awdMetricID
{
  if (self->_awdMetricID)
  {
    return self->_awdMetricID;
  }

  else
  {
    return 589927;
  }
}

- (PBCodable)awdReport
{
  v33 = *MEMORY[0x1E69E9840];
  fromInitWithPBCodableData = self->_fromInitWithPBCodableData;
  awdReport = self->_awdReport;
  if (fromInitWithPBCodableData)
  {
    v5 = awdReport;
    goto LABEL_18;
  }

  if (!awdReport)
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v27 = "[WANWActivityStatistics awdReport]";
      v28 = 1024;
      v29 = 124;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:_awdReport missing Debug", buf, 0x12u);
    }

    awdReport = self->_awdReport;
    if (!awdReport)
    {
      v20 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v27 = "[WANWActivityStatistics awdReport]";
        v28 = 1024;
        v29 = 128;
        v21 = "%{public}s::%d:_awdReport missing";
LABEL_25:
        _os_log_impl(&dword_1C8460000, v20, OS_LOG_TYPE_ERROR, v21, buf, 0x12u);
      }

LABEL_26:

      v5 = 0;
      goto LABEL_18;
    }
  }

  v7 = [(PBCodable *)awdReport activities];
  v8 = [v7 count];

  if (v8)
  {
    v20 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v27 = "[WANWActivityStatistics awdReport]";
      v28 = 1024;
      v29 = 132;
      v21 = "%{public}s::%d:_awdReport has activities already";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = [(WANWActivityStatistics *)self externallyVisibleActivityUUIDs];
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = self->_awdReport;
        v15 = [*(*(&v22 + 1) + 8 * i) UUIDString];
        [(PBCodable *)v14 addActivities:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v11);
  }

  [(WANWActivityStatistics *)self setAwdMetricID:589927];
  v16 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = self->_awdReport;
    *buf = 136446722;
    v27 = "[WANWActivityStatistics awdReport]";
    v28 = 1024;
    v29 = 143;
    v30 = 2114;
    v31 = v17;
    _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Generated wifi nw_activity report: %{public}@", buf, 0x1Cu);
  }

  v5 = self->_awdReport;
LABEL_18:
  v18 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)getTransformedFlattened:(int)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  if (os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    LOWORD(v18) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "getTransformedFlattened init", "", &v18, 2u);
  }

  v6 = [(WANWActivityStatistics *)self obj];

  if (!v6)
  {
    v7 = [_TtC13WiFiAnalytics21WANWActivityTransform alloc];
    v8 = [(WANWActivityStatistics *)self awdReport];
    v9 = [v8 dictionaryRepresentation];
    v10 = [(WANWActivityTransform *)v7 initWithSingle:v9];
    [(WANWActivityStatistics *)self setObj:v10];
  }

  if (os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    LOWORD(v18) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "getTransformedFlattened init", "", &v18, 2u);
  }

  if (os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    LOWORD(v18) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "getTransformedFlattened Transform", "", &v18, 2u);
  }

  v11 = [(WANWActivityStatistics *)self obj];

  if (v11)
  {
    v12 = 0;
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v14 = [(WANWActivityStatistics *)self obj];
        v15 = [v14 getTransformedMeasurementForLogging];
      }

      else
      {
        if (a3 != 3)
        {
          goto LABEL_27;
        }

        v14 = [(WANWActivityStatistics *)self obj];
        v15 = [v14 getTransformedMeasurementForP2PMetrics];
      }
    }

    else
    {
      if (a3)
      {
        if (a3 != 1)
        {
          goto LABEL_27;
        }

        v13 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v18 = 136446466;
          v19 = "[WANWActivityStatistics getTransformedFlattened:]";
          v20 = 1024;
          v21 = 222;
          _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_ERROR, "%{public}s::%d:Invalid style for single parameter, timeOffset invalid", &v18, 0x12u);
        }

        v14 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          LOWORD(v18) = 0;
          _os_log_fault_impl(&dword_1C8460000, v14, OS_LOG_TYPE_FAULT, "Invalid style for single parameter, timeOffset invalid", &v18, 2u);
        }

        goto LABEL_19;
      }

      v14 = [(WANWActivityStatistics *)self obj];
      v15 = [v14 getTransformedMeasurementForTelemetryWithIndex:0];
    }

    v12 = v15;
    goto LABEL_26;
  }

  v14 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v18 = 136446466;
    v19 = "[WANWActivityStatistics getTransformedFlattened:]";
    v20 = 1024;
    v21 = 236;
    _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to create WANWActivityTransform", &v18, 0x12u);
  }

LABEL_19:
  v12 = 0;
LABEL_26:

LABEL_27:
  if (os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    LOWORD(v18) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "getTransformedFlattened Transform", "", &v18, 2u);
  }

  objc_autoreleasePoolPop(v5);
  v16 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)expandKeyNameLengths:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(WANWActivityStatistics *)self obj];

  if (v6)
  {
    if (os_signpost_enabled(MEMORY[0x1E69E9C10]))
    {
      LOWORD(v12) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C8460000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "expandKeyNameLengths", "", &v12, 2u);
    }

    v7 = [(WANWActivityStatistics *)self obj];
    v8 = [v7 expandKeyNameLengthsFrom:v4];

    if (os_signpost_enabled(MEMORY[0x1E69E9C10]))
    {
      LOWORD(v12) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C8460000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "expandKeyNameLengths", "", &v12, 2u);
    }
  }

  else
  {
    v9 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446466;
      v13 = "[WANWActivityStatistics expandKeyNameLengths:]";
      v14 = 1024;
      v15 = 255;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:No WATransformForTelemetry alloctated", &v12, 0x12u);
    }

    v8 = 0;
  }

  objc_autoreleasePoolPop(v5);

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

@end