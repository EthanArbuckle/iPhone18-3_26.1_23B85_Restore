@interface IPAVideoAdjustmentStackSerializer_SLM_v11
- (id)dataFromVideoAdjustmentStack:(id)a3 error:(id *)a4;
- (id)videoAdjustmentStackFromData:(id)a3 error:(id *)a4;
@end

@implementation IPAVideoAdjustmentStackSerializer_SLM_v11

- (id)dataFromVideoAdjustmentStack:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 adjustments];
  if ([v7 count] == 1)
  {
    v14 = [v7 objectAtIndexedSubscript:0];
    v15 = [v14 identifier];
    if ([v15 isEqualToString:@"SloMo"])
    {
      v22 = [v14 settings];
      v27 = 0;
      v23 = [(IPAVideoAdjustmentStackSerializer_SLM_v11 *)self dataFromArchive:v22 error:&v27];
      v24 = v27;
    }

    else
    {
      v24 = IPAAdjustmentError(1000, @"SLM serializer only for singleton SLM adjustments: %@", v16, v17, v18, v19, v20, v21, v6);
      v23 = 0;
    }

    if (!a4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v24 = IPAAdjustmentError(1000, @"SLM serializer only for singleton SLM adjustments: %@", v8, v9, v10, v11, v12, v13, v6);
    v23 = 0;
    if (!a4)
    {
      goto LABEL_10;
    }
  }

  if (v24)
  {
    v25 = v24;
    *a4 = v24;
  }

LABEL_10:

  return v23;
}

- (id)videoAdjustmentStackFromData:(id)a3 error:(id *)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v4 = [IPAAdjustmentStackSerializer propertyListFromData:a3 error:&v12];
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