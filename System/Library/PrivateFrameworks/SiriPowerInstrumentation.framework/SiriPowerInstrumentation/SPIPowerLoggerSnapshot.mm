@interface SPIPowerLoggerSnapshot
- (SPIPowerLoggerSnapshot)initWithPowerLogger:(id)a3 usage:(SPIResourceUsage *)a4 captureTimestamp:(unint64_t)a5;
- (void)buildAndEmitWithMessageBuilder:(id)a3 eventContext:(id)a4;
- (void)logWithEventContext:(id)a3;
@end

@implementation SPIPowerLoggerSnapshot

- (SPIPowerLoggerSnapshot)initWithPowerLogger:(id)a3 usage:(SPIResourceUsage *)a4 captureTimestamp:(unint64_t)a5
{
  v9 = a3;
  v14.receiver = self;
  v14.super_class = SPIPowerLoggerSnapshot;
  v10 = [(SPIPowerLoggerSnapshot *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v12 = *&a4->cpuCycles;
    *(v10 + 3) = a4->memPhysFootprint;
    *(v10 + 8) = v12;
    objc_storeStrong(v10 + 4, a3);
    v11->_captureTimestamp = a5;
  }

  return v11;
}

- (void)logWithEventContext:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SPISELFMessageBuilder);
  [(SPIPowerLoggerSnapshot *)self buildAndEmitWithMessageBuilder:v5 eventContext:v4];
}

- (void)buildAndEmitWithMessageBuilder:(id)a3 eventContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SPIPowerLoggerSnapshot *)self powerLogger];
  [v7 addProcess:{objc_msgSend(v8, "process")}];

  [(SPIPowerLoggerSnapshot *)self usage];
  [v7 addProcessUsage:v11];
  [v7 addContext:v6];

  v9 = [v7 buildMessage];

  v10 = [MEMORY[0x277D552C0] sharedStream];
  [v10 emitMessage:v9 timestamp:{-[SPIPowerLoggerSnapshot captureTimestamp](self, "captureTimestamp")}];
}

@end