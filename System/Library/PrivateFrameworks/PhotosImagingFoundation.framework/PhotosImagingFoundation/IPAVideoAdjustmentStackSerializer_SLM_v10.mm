@interface IPAVideoAdjustmentStackSerializer_SLM_v10
- (id)dataFromVideoAdjustmentStack:(id)stack error:(id *)error;
- (id)videoAdjustmentStackFromData:(id)data error:(id *)error;
@end

@implementation IPAVideoAdjustmentStackSerializer_SLM_v10

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
      v23 = [(IPAVideoAdjustmentStackSerializer_SLM_v10 *)self dataFromArchive:settings error:&v27];
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
  v15[1] = *MEMORY[0x277D85DE8];
  v14 = 0;
  v5 = [IPAAdjustmentStackSerializer unarchiveData:data error:&v14];
  v6 = v14;
  if (v5)
  {
    v7 = objc_opt_new();
    [v7 setIdentifier:@"SloMo"];
    [v7 setSettings:v5];
    v8 = objc_opt_new();
    v15[0] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [v8 setAdjustments:v9];

    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (v6)
  {
    v10 = v6;
    *error = v6;
  }

LABEL_7:
  v12 = *MEMORY[0x277CC08F0];
  v13 = *(MEMORY[0x277CC08F0] + 16);
  [v8 setNaturalDuration:&v12];

  return v8;
}

@end