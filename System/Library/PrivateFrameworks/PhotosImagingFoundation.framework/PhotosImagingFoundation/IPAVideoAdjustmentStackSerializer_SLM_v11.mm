@interface IPAVideoAdjustmentStackSerializer_SLM_v11
- (id)dataFromVideoAdjustmentStack:(id)stack error:(id *)error;
- (id)videoAdjustmentStackFromData:(id)data error:(id *)error;
@end

@implementation IPAVideoAdjustmentStackSerializer_SLM_v11

- (id)dataFromVideoAdjustmentStack:(id)stack error:(id *)error
{
  stackCopy = stack;
  adjustments = [stackCopy adjustments];
  if ([adjustments count] == 1)
  {
    v14 = [adjustments objectAtIndexedSubscript:0];
    identifier = [v14 identifier];
    if ([identifier isEqualToString:@"SloMo"])
    {
      settings = [v14 settings];
      v27 = 0;
      v23 = [(IPAVideoAdjustmentStackSerializer_SLM_v11 *)self dataFromArchive:settings error:&v27];
      v24 = v27;
    }

    else
    {
      v24 = IPAAdjustmentError(1000, @"SLM serializer only for singleton SLM adjustments: %@", v16, v17, v18, v19, v20, v21, stackCopy);
      v23 = 0;
    }

    if (!error)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v24 = IPAAdjustmentError(1000, @"SLM serializer only for singleton SLM adjustments: %@", v8, v9, v10, v11, v12, v13, stackCopy);
    v23 = 0;
    if (!error)
    {
      goto LABEL_10;
    }
  }

  if (v24)
  {
    v25 = v24;
    *error = v24;
  }

LABEL_10:

  return v23;
}

- (id)videoAdjustmentStackFromData:(id)data error:(id *)error
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v4 = [IPAAdjustmentStackSerializer propertyListFromData:data error:&v12];
  v5 = v12;
  if (v4)
  {
    v6 = objc_opt_new();
    [v6 setIdentifier:@"SloMo"];
    [v6 setSettings:v4];
    v7 = objc_opt_new();
    v13[0] = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    [v7 setAdjustments:v8];
  }

  else
  {
    v7 = 0;
  }

  v10 = *MEMORY[0x277CC08F0];
  v11 = *(MEMORY[0x277CC08F0] + 16);
  [v7 setNaturalDuration:&v10];

  return v7;
}

@end