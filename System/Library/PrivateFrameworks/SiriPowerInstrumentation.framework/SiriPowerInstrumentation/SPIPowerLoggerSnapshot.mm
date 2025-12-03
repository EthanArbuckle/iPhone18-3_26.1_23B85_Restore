@interface SPIPowerLoggerSnapshot
- (SPIPowerLoggerSnapshot)initWithPowerLogger:(id)logger usage:(SPIResourceUsage *)usage captureTimestamp:(unint64_t)timestamp;
- (void)buildAndEmitWithMessageBuilder:(id)builder eventContext:(id)context;
- (void)logWithEventContext:(id)context;
@end

@implementation SPIPowerLoggerSnapshot

- (SPIPowerLoggerSnapshot)initWithPowerLogger:(id)logger usage:(SPIResourceUsage *)usage captureTimestamp:(unint64_t)timestamp
{
  loggerCopy = logger;
  v14.receiver = self;
  v14.super_class = SPIPowerLoggerSnapshot;
  v10 = [(SPIPowerLoggerSnapshot *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v12 = *&usage->cpuCycles;
    *(v10 + 3) = usage->memPhysFootprint;
    *(v10 + 8) = v12;
    objc_storeStrong(v10 + 4, logger);
    v11->_captureTimestamp = timestamp;
  }

  return v11;
}

- (void)logWithEventContext:(id)context
{
  contextCopy = context;
  v5 = objc_alloc_init(SPISELFMessageBuilder);
  [(SPIPowerLoggerSnapshot *)self buildAndEmitWithMessageBuilder:v5 eventContext:contextCopy];
}

- (void)buildAndEmitWithMessageBuilder:(id)builder eventContext:(id)context
{
  contextCopy = context;
  builderCopy = builder;
  powerLogger = [(SPIPowerLoggerSnapshot *)self powerLogger];
  [builderCopy addProcess:{objc_msgSend(powerLogger, "process")}];

  [(SPIPowerLoggerSnapshot *)self usage];
  [builderCopy addProcessUsage:v11];
  [builderCopy addContext:contextCopy];

  buildMessage = [builderCopy buildMessage];

  mEMORY[0x277D552C0] = [MEMORY[0x277D552C0] sharedStream];
  [mEMORY[0x277D552C0] emitMessage:buildMessage timestamp:{-[SPIPowerLoggerSnapshot captureTimestamp](self, "captureTimestamp")}];
}

@end