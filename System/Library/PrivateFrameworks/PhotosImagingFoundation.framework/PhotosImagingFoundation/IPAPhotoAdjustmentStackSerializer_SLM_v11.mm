@interface IPAPhotoAdjustmentStackSerializer_SLM_v11
- (id)dataFromPhotoAdjustmentStack:(id)stack error:(id *)error;
- (id)photoAdjustmentStackFromData:(id)data error:(id *)error;
@end

@implementation IPAPhotoAdjustmentStackSerializer_SLM_v11

- (id)dataFromPhotoAdjustmentStack:(id)stack error:(id *)error
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
      v23 = [(IPAPhotoAdjustmentStackSerializer_SLM_v11 *)self dataFromArchive:settings error:&v27];
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

- (id)photoAdjustmentStackFromData:(id)data error:(id *)error
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = 0;
  v4 = [IPAAdjustmentStackSerializer propertyListFromData:data error:&v11];
  v5 = v11;
  if (v4)
  {
    v6 = objc_opt_new();
    [v6 setIdentifier:@"SlowMotion"];
    v7 = [v4 objectForKeyedSubscript:@"slowMotion"];
    [v6 setSettings:v7];
    v8 = objc_opt_new();
    v12[0] = v6;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    [v8 setAdjustments:v9];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end