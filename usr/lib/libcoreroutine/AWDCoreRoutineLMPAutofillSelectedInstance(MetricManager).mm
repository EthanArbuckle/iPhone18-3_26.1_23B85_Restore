@interface AWDCoreRoutineLMPAutofillSelectedInstance(MetricManager)
- (BOOL)valid:()MetricManager;
- (char)_init;
- (id)description;
@end

@implementation AWDCoreRoutineLMPAutofillSelectedInstance(MetricManager)

- (char)_init
{
  v6.receiver = self;
  v6.super_class = &off_284625FC8;
  v1 = objc_msgSendSuper2(&v6, sel_init);
  v2 = v1;
  if (v1)
  {
    v3 = *MEMORY[0x277D81A10];
    v4 = *&v1[v3];
    *&v1[v3] = 0;
  }

  return v2;
}

- (BOOL)valid:()MetricManager
{
  v11[1] = *MEMORY[0x277D85DE8];
  if ([self conformsToProtocol:&unk_284624910])
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
  v0 = MEMORY[0x277CCACA8];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = [v0 stringWithFormat:@"%@", v2];

  return v3;
}

@end