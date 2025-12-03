@interface SPISELFMessageBuilder
- (SPISELFMessageBuilder)init;
- (id)buildMessage;
- (void)addContext:(id)context;
- (void)addProcessUsage:(SPIResourceUsage *)usage;
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

- (void)addProcessUsage:(SPIResourceUsage *)usage
{
  v6 = objc_alloc_init(POWSchemaProvisionalPOWProcessUsage);
  [(POWSchemaProvisionalPOWProcessUsage *)v6 setCpuCycles:usage->cpuCycles];
  [(POWSchemaProvisionalPOWProcessUsage *)v6 setCpuInstructions:usage->cpuInstructions];
  [(POWSchemaProvisionalPOWProcessUsage *)v6 setMemoryFootprint:usage->memPhysFootprint];
  usageMsg = [(SPISELFMessageBuilder *)self usageMsg];
  [usageMsg setProcessUsage:v6];
}

- (void)addContext:(id)context
{
  contextCopy = context;
  usageMsg = [(SPISELFMessageBuilder *)self usageMsg];
  [contextCopy setContextForUsage:usageMsg];
}

- (id)buildMessage
{
  powClientEventMsg = [(SPISELFMessageBuilder *)self powClientEventMsg];
  usageMsg = [(SPISELFMessageBuilder *)self usageMsg];
  [powClientEventMsg setUsage:usageMsg];

  return [(SPISELFMessageBuilder *)self powClientEventMsg];
}

@end