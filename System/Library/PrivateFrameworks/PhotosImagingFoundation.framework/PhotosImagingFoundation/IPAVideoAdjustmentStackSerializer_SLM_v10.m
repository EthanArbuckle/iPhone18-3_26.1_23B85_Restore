@interface IPAVideoAdjustmentStackSerializer_SLM_v10
- (id)dataFromVideoAdjustmentStack:(id)a3 error:(id *)a4;
- (id)videoAdjustmentStackFromData:(id)a3 error:(id *)a4;
@end

@implementation IPAVideoAdjustmentStackSerializer_SLM_v10

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
      v23 = [(IPAVideoAdjustmentStackSerializer_SLM_v10 *)self dataFromArchive:v22 error:&v27];
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
  v15[1] = *MEMORY[0x277D85DE8];
  v14 = 0;
  v5 = [IPAAdjustmentStackSerializer unarchiveData:a3 error:&v14];
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

    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if (v6)
  {
    v10 = v6;
    *a4 = v6;
  }

LABEL_7:
  v12 = *MEMORY[0x277CC08F0];
  v13 = *(MEMORY[0x277CC08F0] + 16);
  [v8 setNaturalDuration:&v12];

  return v8;
}

@end