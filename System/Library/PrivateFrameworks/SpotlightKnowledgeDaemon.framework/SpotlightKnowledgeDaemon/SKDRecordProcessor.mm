@interface SKDRecordProcessor
- (BOOL)willProcessRecord:(id)record bundleID:(id)d;
- (SKDEventLogger)logger;
- (SKDRecordProcessor)initWithName:(id)name;
- (id)fetchedAttributes;
- (id)processRecord:(id)record bundleID:(id)d;
- (void)setLogger:(id)logger;
@end

@implementation SKDRecordProcessor

- (SKDRecordProcessor)initWithName:(id)name
{
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = SKDRecordProcessor;
  v5 = [(SKDRecordProcessor *)&v17 init];
  v6 = v5;
  if (v5)
  {
    atomic_store(0, &v5->_is_suspended);
    atomic_store(1u, &v5->_is_enabled);
    v7 = [nameCopy copy];
    name = v6->_name;
    v6->_name = v7;

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"processed_%@", v6->_name];
    marker = v6->_marker;
    v6->_marker = v9;

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.spotlightknowledge.processor.%@", v6->_name];
    uTF8String = [v11 UTF8String];
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create(uTF8String, v13);
    queue = v6->_queue;
    v6->_queue = v14;
  }

  return v6;
}

- (id)fetchedAttributes
{
  requiredAttributes = [(SKDRecordProcessor *)self requiredAttributes];
  v4 = requiredAttributes;
  v5 = MEMORY[0x277CBEBF8];
  if (requiredAttributes)
  {
    v5 = requiredAttributes;
  }

  v6 = v5;

  processedAttributes = [(SKDRecordProcessor *)self processedAttributes];
  v8 = [v6 arrayByAddingObjectsFromArray:processedAttributes];

  return v8;
}

- (BOOL)willProcessRecord:(id)record bundleID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  marker = [(SKDRecordProcessor *)self marker];
  v7 = [recordCopy objectForKeyedSubscript:marker];

  if (v7)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    requiredAttributes = [(SKDRecordProcessor *)self requiredAttributes];
    v10 = requiredAttributes;
    if (requiredAttributes)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v11 = requiredAttributes;
      v8 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        v12 = *v18;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v18 != v12)
            {
              objc_enumerationMutation(v11);
            }

            v14 = [recordCopy objectForKeyedSubscript:{*(*(&v17 + 1) + 8 * i), v17}];

            if (v14)
            {
              LOBYTE(v8) = 1;
              goto LABEL_14;
            }
          }

          v8 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }

    else
    {
      LOBYTE(v8) = 1;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)processRecord:(id)record bundleID:(id)d
{
  dCopy = d;
  v6 = [SKDRecordUpdate alloc];
  name = [(SKDRecordProcessor *)self name];
  v8 = [(SKDRecordUpdate *)v6 initWithStatus:2 identifier:name bundleID:dCopy];

  name2 = [(SKDRecordProcessor *)self name];
  [(SKDItemUpdate *)v8 setPipeline:name2];

  return v8;
}

- (SKDEventLogger)logger
{
  logger = self->_logger;
  if (!logger)
  {
    v4 = [SKDPipelineLogger alloc];
    v5 = [objc_opt_class() description];
    v6 = [(SKDPipelineLogger *)v4 initWithDomain:v5];

    [(SKDRecordProcessor *)self setLogger:v6];
    logger = self->_logger;
  }

  return logger;
}

- (void)setLogger:(id)logger
{
  loggerCopy = logger;
  objc_storeStrong(&self->_logger, logger);
  logger = self->_logger;
  if ([(SKDRecordProcessor *)self enabled])
  {
    +[SKDPipelineEvent stateEnabledEvent];
  }

  else
  {
    +[SKDPipelineEvent stateDisabledEvent];
  }
  v6 = ;
  [(SKDEventLogger *)logger logEvent:v6];

  v7 = self->_logger;
  if ([(SKDRecordProcessor *)self suspended])
  {
    +[SKDPipelineEvent stateInactiveEvent];
  }

  else
  {
    +[SKDPipelineEvent stateActiveEvent];
  }
  v8 = ;
  [(SKDEventLogger *)v7 logEvent:v8];
}

@end