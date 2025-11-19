@interface SKDPipelineLogger
- (SKDEventLogger)analyticsLogger;
- (SKDEventLogger)powerLogger;
- (SKDPipelineLogger)initWithDomain:(id)a3;
- (id)trackingEventBeginWithName:(id)a3 event:(id)a4;
- (void)flush;
- (void)logEvent:(id)a3 level:(unint64_t)a4;
- (void)trackingEventEnd:(id)a3;
@end

@implementation SKDPipelineLogger

- (SKDPipelineLogger)initWithDomain:(id)a3
{
  v6.receiver = self;
  v6.super_class = SKDPipelineLogger;
  v3 = [(SKDEventLogger *)&v6 initWithDomain:a3];
  if (v3)
  {
    if (initWithDomain__onceLogToken != -1)
    {
      [SKDPipelineLogger initWithDomain:];
    }

    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:v3 selector:sel__logLevelDidChange name:*MEMORY[0x277CCA858] object:0];
  }

  return v3;
}

void __36__SKDPipelineLogger_initWithDomain___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"SKDEventLog"];
  v1 = gSKDEventLogDefaults;
  gSKDEventLogDefaults = v0;

  v2 = [gSKDEventLogDefaults integerForKey:@"LogLevel"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 5;
  }

  atomic_store(v3, &gSKDEventLogCurrentLevel);
  v4 = os_log_create([@"com.apple.spotlightknowledged.pipeline" UTF8String], objc_msgSend(@"Default", "UTF8String"));
  v5 = gDefaultLog;
  gDefaultLog = v4;
}

- (void)flush
{
  v3 = [(SKDPipelineLogger *)self powerLogger];
  [v3 flush];

  v4 = [(SKDPipelineLogger *)self analyticsLogger];
  [v4 flush];
}

- (void)logEvent:(id)a3 level:(unint64_t)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(SKDPipelineLogger *)self powerLogger];
  [v7 logEvent:v6 level:a4];

  v8 = [(SKDPipelineLogger *)self analyticsLogger];
  [v8 logEvent:v6 level:a4];

  v9 = [v6 status];
  v10 = [v6 identifier];
  v11 = v10;
  v12 = @"default";
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  v14 = [v6 typeMessage];
  v15 = [v6 statusMessage];
  v16 = [v6 message];

  if (v9 == 4)
  {
    v17 = gDefaultLog;
    if (os_log_type_enabled(gDefaultLog, OS_LOG_TYPE_ERROR))
    {
      v26 = 138413058;
      v27 = v14;
      v28 = 2112;
      v29 = v15;
      v30 = 2112;
      v31 = v13;
      v32 = 2112;
      v33 = v16;
      v18 = "skg-events: e=%@;s=%@;i=%@;err=%@\n";
LABEL_6:
      _os_log_error_impl(&dword_231B25000, v17, OS_LOG_TYPE_ERROR, v18, &v26, 0x2Au);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  v19 = atomic_load(&gSKDEventLogCurrentLevel);
  if (v19 < a4 || !v16)
  {
    goto LABEL_23;
  }

  if (a4 > 5)
  {
    if (a4 - 7 < 2)
    {
      v20 = gDefaultLog;
      if (os_log_type_enabled(gDefaultLog, OS_LOG_TYPE_DEBUG))
      {
        v26 = 138413058;
        v27 = v14;
        v28 = 2112;
        v29 = v15;
        v30 = 2112;
        v31 = v13;
        v32 = 2112;
        v33 = v16;
        _os_log_debug_impl(&dword_231B25000, v20, OS_LOG_TYPE_DEBUG, "skg-events: e=%@;s=%@;i=%@;m=%@;\n", &v26, 0x2Au);
      }

      goto LABEL_23;
    }

    if (a4 != 6)
    {
      goto LABEL_23;
    }

    v24 = gDefaultLog;
    if (!os_log_type_enabled(gDefaultLog, OS_LOG_TYPE_INFO))
    {
      goto LABEL_23;
    }

    v26 = 138413058;
    v27 = v14;
    v28 = 2112;
    v29 = v15;
    v30 = 2112;
    v31 = v13;
    v32 = 2112;
    v33 = v16;
    v22 = v24;
    v23 = OS_LOG_TYPE_INFO;
LABEL_22:
    _os_log_impl(&dword_231B25000, v22, v23, "skg-events: e=%@;s=%@;i=%@;m=%@;\n", &v26, 0x2Au);
    goto LABEL_23;
  }

  if (a4 - 2 < 3)
  {
    v17 = gDefaultLog;
    if (!os_log_type_enabled(gDefaultLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    v26 = 138413058;
    v27 = v14;
    v28 = 2112;
    v29 = v15;
    v30 = 2112;
    v31 = v13;
    v32 = 2112;
    v33 = v16;
    v18 = "skg-events: e=%@;s=%@;i=%@;m=%@;\n";
    goto LABEL_6;
  }

  if (a4 == 5)
  {
    v21 = gDefaultLog;
    if (os_log_type_enabled(gDefaultLog, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138413058;
      v27 = v14;
      v28 = 2112;
      v29 = v15;
      v30 = 2112;
      v31 = v13;
      v32 = 2112;
      v33 = v16;
      v22 = v21;
      v23 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_22;
    }
  }

LABEL_23:

  v25 = *MEMORY[0x277D85DE8];
}

- (id)trackingEventBeginWithName:(id)a3 event:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [SKDPipelineTrackingEvent alloc];
  v9 = [(SKDEventLogger *)self domain];
  v10 = [(SKDPipelineTrackingEvent *)v8 initWithName:v6 event:v7 domain:v9];

  [(SKDPipelineTrackingEvent *)v10 begin];
  if (v10)
  {
    v11 = [(SKDPipelineLogger *)self analyticsLogger];
    v12 = [v11 trackingEventBeginWithName:v6 event:v7];
    [(SKDPipelineTrackingEvent *)v10 setAnalyticsTracker:v12];
  }

  return v10;
}

- (void)trackingEventEnd:(id)a3
{
  v7 = a3;
  [v7 end];
  v4 = [v7 analyticsTracker];

  if (v4)
  {
    v5 = [(SKDPipelineLogger *)self analyticsLogger];
    v6 = [v7 analyticsTracker];
    [v5 trackingEventEnd:v6];
  }
}

- (SKDEventLogger)powerLogger
{
  powerLogger = self->_powerLogger;
  if (!powerLogger)
  {
    v4 = objc_alloc_init(SKDPowerLogProvider);
    v5 = [[SKDPowerLogger alloc] initWithDomain:@"Spotlight" powerProvider:v4];
    v6 = self->_powerLogger;
    self->_powerLogger = &v5->super;

    powerLogger = self->_powerLogger;
  }

  return powerLogger;
}

- (SKDEventLogger)analyticsLogger
{
  analyticsLogger = self->_analyticsLogger;
  if (!analyticsLogger)
  {
    v4 = objc_alloc_init(SKDAnalyticsLogProvider);
    v5 = [[SKDAnalyticsLogger alloc] initWithDomain:@"SpotlightKnowledge" analyticsProvider:v4];
    v6 = self->_analyticsLogger;
    self->_analyticsLogger = &v5->super;

    analyticsLogger = self->_analyticsLogger;
  }

  return analyticsLogger;
}

@end