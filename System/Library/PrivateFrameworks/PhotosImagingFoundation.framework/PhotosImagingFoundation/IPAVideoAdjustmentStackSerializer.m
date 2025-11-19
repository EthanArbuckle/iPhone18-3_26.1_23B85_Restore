@interface IPAVideoAdjustmentStackSerializer
- (id)_dataFromAdjustmentStack:(id)a3 error:(id *)a4;
- (id)dataFromVideoAdjustmentStack:(id)a3 error:(id *)a4;
- (id)videoAdjustmentStackFromData:(id)a3 error:(id *)a4;
@end

@implementation IPAVideoAdjustmentStackSerializer

- (id)videoAdjustmentStackFromData:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = objc_opt_class();
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  v6 = _PFAssertFailHandler();
  return [(IPAVideoAdjustmentStackSerializer *)v6 dataFromVideoAdjustmentStack:v7 error:v8, v9];
}

- (id)dataFromVideoAdjustmentStack:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = objc_opt_class();
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  v6 = _PFAssertFailHandler();
  return [(IPAVideoAdjustmentStackSerializer *)v6 _adjustmentStackFromData:v7 error:v8, v9];
}

- (id)_dataFromAdjustmentStack:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(IPAVideoAdjustmentStackSerializer *)self dataFromVideoAdjustmentStack:v6 error:a4];

    return v7;
  }

  else
  {
    objc_opt_class();
    v9 = _PFAssertFailHandler();
    return [(IPAAdjustmentStackSerializer *)v9 propertyListFromData:v10 error:v11, v12];
  }
}

@end