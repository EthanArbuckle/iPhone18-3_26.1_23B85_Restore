@interface SKDPipelineLogger
- (SKDEventLogger)analyticsLogger;
- (SKDEventLogger)powerLogger;
- (SKDPipelineLogger)initWithDomain:(id)domain;
- (id)trackingEventBeginWithName:(id)name event:(id)event;
- (void)flush;
- (void)logEvent:(id)event level:(unint64_t)level;
- (void)trackingEventEnd:(id)end;
@end

@implementation SKDPipelineLogger

- (SKDPipelineLogger)initWithDomain:(id)domain
{
  v6.receiver = self;
  v6.super_class = SKDPipelineLogger;
  v3 = [(SKDEventLogger *)&v6 initWithDomain:domain];
  if (v3)
  {
    if (initWithDomain__onceLogToken != -1)
    {
      [SKDPipelineLogger initWithDomain:];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__logLevelDidChange name:*MEMORY[0x277CCA858] object:0];
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
  powerLogger = [(SKDPipelineLogger *)self powerLogger];
  [powerLogger flush];

  analyticsLogger = [(SKDPipelineLogger *)self analyticsLogger];
  [analyticsLogger flush];
}

- (void)logEvent:(id)event level:(unint64_t)level
{
  v34 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  powerLogger = [(SKDPipelineLogger *)self powerLogger];
  [powerLogger logEvent:eventCopy level:level];

  analyticsLogger = [(SKDPipelineLogger *)self analyticsLogger];
  [analyticsLogger logEvent:eventCopy level:level];

  status = [eventCopy status];
  identifier = [eventCopy identifier];
  v11 = identifier;
  v12 = @"default";
  if (identifier)
  {
    v12 = identifier;
  }

  v13 = v12;

  typeMessage = [eventCopy typeMessage];
  statusMessage = [eventCopy statusMessage];
  message = [eventCopy message];

  if (status == 4)
  {
    v17 = gDefaultLog;
    if (os_log_type_enabled(gDefaultLog, OS_LOG_TYPE_ERROR))
    {
      v26 = 138413058;
      v27 = typeMessage;
      v28 = 2112;
      v29 = statusMessage;
      v30 = 2112;
      v31 = v13;
      v32 = 2112;
      v33 = message;
      v18 = "skg-events: e=%@;s=%@;i=%@;err=%@\n";
LABEL_6:
      _os_log_error_impl(&dword_231B25000, v17, OS_LOG_TYPE_ERROR, v18, &v26, 0x2Au);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  v19 = atomic_load(&gSKDEventLogCurrentLevel);
  if (v19 < level || !message)
  {
    goto LABEL_23;
  }

  if (level > 5)
  {
    if (level - 7 < 2)
    {
      v20 = gDefaultLog;
      if (os_log_type_enabled(gDefaultLog, OS_LOG_TYPE_DEBUG))
      {
        v26 = 138413058;
        v27 = typeMessage;
        v28 = 2112;
        v29 = statusMessage;
        v30 = 2112;
        v31 = v13;
        v32 = 2112;
        v33 = message;
        _os_log_debug_impl(&dword_231B25000, v20, OS_LOG_TYPE_DEBUG, "skg-events: e=%@;s=%@;i=%@;m=%@;\n", &v26, 0x2Au);
      }

      goto LABEL_23;
    }

    if (level != 6)
    {
      goto LABEL_23;
    }

    v24 = gDefaultLog;
    if (!os_log_type_enabled(gDefaultLog, OS_LOG_TYPE_INFO))
    {
      goto LABEL_23;
    }

    v26 = 138413058;
    v27 = typeMessage;
    v28 = 2112;
    v29 = statusMessage;
    v30 = 2112;
    v31 = v13;
    v32 = 2112;
    v33 = message;
    v22 = v24;
    v23 = OS_LOG_TYPE_INFO;
LABEL_22:
    _os_log_impl(&dword_231B25000, v22, v23, "skg-events: e=%@;s=%@;i=%@;m=%@;\n", &v26, 0x2Au);
    goto LABEL_23;
  }

  if (level - 2 < 3)
  {
    v17 = gDefaultLog;
    if (!os_log_type_enabled(gDefaultLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    v26 = 138413058;
    v27 = typeMessage;
    v28 = 2112;
    v29 = statusMessage;
    v30 = 2112;
    v31 = v13;
    v32 = 2112;
    v33 = message;
    v18 = "skg-events: e=%@;s=%@;i=%@;m=%@;\n";
    goto LABEL_6;
  }

  if (level == 5)
  {
    v21 = gDefaultLog;
    if (os_log_type_enabled(gDefaultLog, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138413058;
      v27 = typeMessage;
      v28 = 2112;
      v29 = statusMessage;
      v30 = 2112;
      v31 = v13;
      v32 = 2112;
      v33 = message;
      v22 = v21;
      v23 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_22;
    }
  }

LABEL_23:

  v25 = *MEMORY[0x277D85DE8];
}

- (id)trackingEventBeginWithName:(id)name event:(id)event
{
  nameCopy = name;
  eventCopy = event;
  v8 = [SKDPipelineTrackingEvent alloc];
  domain = [(SKDEventLogger *)self domain];
  v10 = [(SKDPipelineTrackingEvent *)v8 initWithName:nameCopy event:eventCopy domain:domain];

  [(SKDPipelineTrackingEvent *)v10 begin];
  if (v10)
  {
    analyticsLogger = [(SKDPipelineLogger *)self analyticsLogger];
    v12 = [analyticsLogger trackingEventBeginWithName:nameCopy event:eventCopy];
    [(SKDPipelineTrackingEvent *)v10 setAnalyticsTracker:v12];
  }

  return v10;
}

- (void)trackingEventEnd:(id)end
{
  endCopy = end;
  [endCopy end];
  analyticsTracker = [endCopy analyticsTracker];

  if (analyticsTracker)
  {
    analyticsLogger = [(SKDPipelineLogger *)self analyticsLogger];
    analyticsTracker2 = [endCopy analyticsTracker];
    [analyticsLogger trackingEventEnd:analyticsTracker2];
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