@interface IPAVideoAdjustmentStackSerializer
- (id)_dataFromAdjustmentStack:(id)stack error:(id *)error;
- (id)dataFromVideoAdjustmentStack:(id)stack error:(id *)error;
- (id)videoAdjustmentStackFromData:(id)data error:(id *)error;
@end

@implementation IPAVideoAdjustmentStackSerializer

- (id)videoAdjustmentStackFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v5 = objc_opt_class();
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  v6 = _PFAssertFailHandler();
  return [(IPAVideoAdjustmentStackSerializer *)v6 dataFromVideoAdjustmentStack:v7 error:v8, v9];
}

- (id)dataFromVideoAdjustmentStack:(id)stack error:(id *)error
{
  stackCopy = stack;
  v5 = objc_opt_class();
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  v6 = _PFAssertFailHandler();
  return [(IPAVideoAdjustmentStackSerializer *)v6 _adjustmentStackFromData:v7 error:v8, v9];
}

- (id)_dataFromAdjustmentStack:(id)stack error:(id *)error
{
  stackCopy = stack;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(IPAVideoAdjustmentStackSerializer *)self dataFromVideoAdjustmentStack:stackCopy error:error];

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