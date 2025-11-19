@interface AWDCoreRoutineModelAlgorithmSet(MetricManager)
- (BOOL)valid:()MetricManager;
- (id)_init;
@end

@implementation AWDCoreRoutineModelAlgorithmSet(MetricManager)

- (id)_init
{
  v2.receiver = a1;
  v2.super_class = &off_2846250E8;
  return objc_msgSendSuper2(&v2, sel_init);
}

- (BOOL)valid:()MetricManager
{
  v12[1] = *MEMORY[0x277D85DE8];
  if ([a1 conformsToProtocol:&unk_284624910])
  {
    if (objc_opt_respondsToSelector())
    {
      if ([a1 instancesCount])
      {
        v5 = 0;
        goto LABEL_12;
      }

      v5 = @"Failed metric submission because the metric set contained no metrics.";
      if (!a3)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v5 = @"Failed metric submission because the metric does not have an ID.";
      if (!a3)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = NSStringFromProtocol(&unk_284624910);
    v5 = [v6 stringWithFormat:@"Failed metric submission because the metric does not conform to the %@ protocol.", v7];

    if (!a3)
    {
      goto LABEL_12;
    }
  }

  if (v5)
  {
    v8 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA450];
    v12[0] = v5;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    *a3 = [v8 errorWithDomain:@"RTMetricManagerErrorDomain" code:1 userInfo:v9];
  }

LABEL_12:

  return v5 == 0;
}

@end