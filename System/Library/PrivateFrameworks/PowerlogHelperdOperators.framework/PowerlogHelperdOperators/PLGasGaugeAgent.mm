@interface PLGasGaugeAgent
+ (id)entryEventPointDefinitionGasGaugePower;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (PLGasGaugeAgent)init;
- (void)dealloc;
- (void)initOperatorDependancies;
- (void)logEventPointMetricMonitorInstantKeys;
@end

@implementation PLGasGaugeAgent

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLGasGaugeAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLGasGaugeAgent)init
{
  if (+[PLSMCAgent supportsBasicSMC])
  {
    v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v3)
    {
      [(PLGasGaugeAgent *)v3 init:v4];
    }

    v11 = 0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = PLGasGaugeAgent;
    self = [(PLAgent *)&v13 init];
    v11 = self;
  }

  return v11;
}

- (void)initOperatorDependancies
{
  v3 = [objc_alloc(MEMORY[0x277D3F1C8]) initWithOperator:self forService:@"AppleHDQGasGaugeControl"];
  ggComposition = self->_ggComposition;
  self->_ggComposition = v3;

  v5 = [(PLIOKitOperatorComposition *)self->_ggComposition service];
  connect = 0;
  if (!v5)
  {
    goto LABEL_5;
  }

  if (!IOServiceOpen(v5, *MEMORY[0x277D85F48], 0, &connect))
  {
    [(PLIOKitOperatorComposition *)self->_ggComposition setConn:connect];
  }

  if (!connect)
  {
LABEL_5:
    v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v6)
    {
      [(PLGasGaugeAgent *)v6 initOperatorDependancies:v7];
    }
  }
}

- (void)dealloc
{
  v3 = [(PLIOKitOperatorComposition *)self->_ggComposition conn];
  if (v3)
  {
    IOServiceClose(v3);
  }

  v4.receiver = self;
  v4.super_class = PLGasGaugeAgent;
  [(PLAgent *)&v4 dealloc];
}

+ (id)entryEventPointDefinitions
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"MetricMonitorInstantKeys";
  v2 = +[PLGasGaugeAgent entryEventPointDefinitionGasGaugePower];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)entryEventPointDefinitionGasGaugePower
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v11 = *MEMORY[0x277D3F568];
  v12 = &unk_28714BB48;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[0] = v2;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"GasGaugePower";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_RealFormat];
  v10 = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)logEventPointMetricMonitorInstantKeys
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = [(PLOperator *)PLGasGaugeAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"MetricMonitorInstantKeys"];
  v4 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v3];
  v5 = [(PLIOKitOperatorComposition *)self->_ggComposition conn];
  v6 = hdqRead16(v5, 0x14u);
  v7 = hdqRead16(v5, 8u);
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v12 = 0;
  }

  else
  {
    v10 = [v6 intValue];
    v11 = v10 / 1000.0 * ([v8 intValue] / 1000.0);
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:v11 * 1000.0];
  }

  if (v12)
  {
    [v4 setObject:v12 forKeyedSubscript:@"GasGaugePower"];
    v23[0] = v4;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    [(PLOperator *)self postEntries:v13];
  }

  else
  {
    v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v14)
    {
      [(PLGasGaugeAgent *)v14 logEventPointMetricMonitorInstantKeys:v15];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

@end