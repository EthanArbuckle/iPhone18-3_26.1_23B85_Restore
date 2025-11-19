@interface AWDCoreRoutineFMCReturnToCarInstance(MetricManager)
- (BOOL)valid:()MetricManager;
- (char)_init;
- (id)description;
@end

@implementation AWDCoreRoutineFMCReturnToCarInstance(MetricManager)

- (char)_init
{
  v6.receiver = a1;
  v6.super_class = &off_284625B00;
  v1 = objc_msgSendSuper2(&v6, sel_init);
  v2 = v1;
  if (v1)
  {
    v3 = *MEMORY[0x277D819E8];
    v4 = *&v1[v3];
    *&v1[v3] = 0;

    *&v2[*MEMORY[0x277D819D8]] = 0;
    *&v2[*MEMORY[0x277D819E0]] = 0;
  }

  return v2;
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
  v5 = [v2 stringWithFormat:@"%@, horizontalAccuracy %d, horizontalDistance %d", v4, objc_msgSend(a1, "horizontalAccuracy"), objc_msgSend(a1, "horizontalDistance")];

  return v5;
}

@end