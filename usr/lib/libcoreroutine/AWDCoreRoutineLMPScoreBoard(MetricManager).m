@interface AWDCoreRoutineLMPScoreBoard(MetricManager)
- (BOOL)valid:()MetricManager;
- (id)_init;
- (id)description;
@end

@implementation AWDCoreRoutineLMPScoreBoard(MetricManager)

- (id)_init
{
  v2.receiver = a1;
  v2.super_class = &off_2846267E8;
  return objc_msgSendSuper2(&v2, sel_init);
}

- (BOOL)valid:()MetricManager
{
  v11[1] = *MEMORY[0x277D85DE8];
  if ([a1 conformsToProtocol:&unk_284624910])
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = 0;
      goto LABEL_9;
    }

    v4 = @"Failed metric submission because the metric does not have an ID.";
    if (!a3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = NSStringFromProtocol(&unk_284624910);
    v4 = [v5 stringWithFormat:@"Failed metric submission because the metric does not conform to the %@ protocol.", v6];

    if (!a3)
    {
      goto LABEL_9;
    }
  }

  if (v4)
  {
    v7 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CCA450];
    v11[0] = v4;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    *a3 = [v7 errorWithDomain:@"RTMetricManagerErrorDomain" code:1 userInfo:v8];
  }

LABEL_9:

  return v4 == 0;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [a1 instances];
  v6 = [v5 count];
  v7 = [a1 instances];
  v8 = [v7 valueForKey:@"description"];
  v9 = [v8 componentsJoinedByString:@"|"];
  v10 = [v2 stringWithFormat:@"%@, count %lu {%@}", v4, v6, v9];

  return v10;
}

@end