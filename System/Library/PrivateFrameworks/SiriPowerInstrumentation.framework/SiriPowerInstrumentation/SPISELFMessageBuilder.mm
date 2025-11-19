@interface SPISELFMessageBuilder
- (SPISELFMessageBuilder)init;
- (id)buildMessage;
- (void)addContext:(id)a3;
- (void)addProcessUsage:(SPIResourceUsage *)a3;
@end

@implementation SPISELFMessageBuilder

- (SPISELFMessageBuilder)init
{
  v7.receiver = self;
  v7.super_class = SPISELFMessageBuilder;
  v3 = [(SPISELFMessageBuilder *)&v7 init];
  if (v3 == self)
  {
    v4 = objc_alloc_init(POWSchemaProvisionalPOWUsage);
    [(SPISELFMessageBuilder *)v3 setUsageMsg:v4];

    v5 = objc_alloc_init(POWSchemaProvisionalPOWClientEvent);
    [(SPISELFMessageBuilder *)v3 setPowClientEventMsg:v5];
  }

  return v3;
}

- (void)addProcessUsage:(SPIResourceUsage *)a3
{
  v6 = objc_alloc_init(POWSchemaProvisionalPOWProcessUsage);
  [(POWSchemaProvisionalPOWProcessUsage *)v6 setCpuCycles:a3->cpuCycles];
  [(POWSchemaProvisionalPOWProcessUsage *)v6 setCpuInstructions:a3->cpuInstructions];
  [(POWSchemaProvisionalPOWProcessUsage *)v6 setMemoryFootprint:a3->memPhysFootprint];
  v5 = [(SPISELFMessageBuilder *)self usageMsg];
  [v5 setProcessUsage:v6];
}

- (void)addContext:(id)a3
{
  v4 = a3;
  v5 = [(SPISELFMessageBuilder *)self usageMsg];
  [v4 setContextForUsage:v5];
}

- (id)buildMessage
{
  v3 = [(SPISELFMessageBuilder *)self powClientEventMsg];
  v4 = [(SPISELFMessageBuilder *)self usageMsg];
  [v3 setUsage:v4];

  return [(SPISELFMessageBuilder *)self powClientEventMsg];
}

@end