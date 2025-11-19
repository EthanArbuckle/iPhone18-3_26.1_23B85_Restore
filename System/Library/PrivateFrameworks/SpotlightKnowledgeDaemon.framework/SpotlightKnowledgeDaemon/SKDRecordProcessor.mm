@interface SKDRecordProcessor
- (BOOL)willProcessRecord:(id)a3 bundleID:(id)a4;
- (SKDEventLogger)logger;
- (SKDRecordProcessor)initWithName:(id)a3;
- (id)fetchedAttributes;
- (id)processRecord:(id)a3 bundleID:(id)a4;
- (void)setLogger:(id)a3;
@end

@implementation SKDRecordProcessor

- (SKDRecordProcessor)initWithName:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SKDRecordProcessor;
  v5 = [(SKDRecordProcessor *)&v17 init];
  v6 = v5;
  if (v5)
  {
    atomic_store(0, &v5->_is_suspended);
    atomic_store(1u, &v5->_is_enabled);
    v7 = [v4 copy];
    name = v6->_name;
    v6->_name = v7;

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"processed_%@", v6->_name];
    marker = v6->_marker;
    v6->_marker = v9;

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.spotlightknowledge.processor.%@", v6->_name];
    v12 = [v11 UTF8String];
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create(v12, v13);
    queue = v6->_queue;
    v6->_queue = v14;
  }

  return v6;
}

- (id)fetchedAttributes
{
  v3 = [(SKDRecordProcessor *)self requiredAttributes];
  v4 = v3;
  v5 = MEMORY[0x277CBEBF8];
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [(SKDRecordProcessor *)self processedAttributes];
  v8 = [v6 arrayByAddingObjectsFromArray:v7];

  return v8;
}

- (BOOL)willProcessRecord:(id)a3 bundleID:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(SKDRecordProcessor *)self marker];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v9 = [(SKDRecordProcessor *)self requiredAttributes];
    v10 = v9;
    if (v9)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v11 = v9;
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

            v14 = [v5 objectForKeyedSubscript:{*(*(&v17 + 1) + 8 * i), v17}];

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

- (id)processRecord:(id)a3 bundleID:(id)a4
{
  v5 = a4;
  v6 = [SKDRecordUpdate alloc];
  v7 = [(SKDRecordProcessor *)self name];
  v8 = [(SKDRecordUpdate *)v6 initWithStatus:2 identifier:v7 bundleID:v5];

  v9 = [(SKDRecordProcessor *)self name];
  [(SKDItemUpdate *)v8 setPipeline:v9];

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

- (void)setLogger:(id)a3
{
  v9 = a3;
  objc_storeStrong(&self->_logger, a3);
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