@interface IPAPhotoAdjustmentStackSerializer
- (id)_dataFromAdjustmentStack:(id)stack error:(id *)error;
- (id)dataFromPhotoAdjustmentStack:(id)stack error:(id *)error;
- (id)photoAdjustmentStackFromData:(id)data error:(id *)error;
@end

@implementation IPAPhotoAdjustmentStackSerializer

- (id)photoAdjustmentStackFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v5 = objc_opt_class();
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  v6 = _PFAssertFailHandler();
  return [(IPAPhotoAdjustmentStackSerializer *)v6 dataFromPhotoAdjustmentStack:v7 error:v8, v9];
}

- (id)dataFromPhotoAdjustmentStack:(id)stack error:(id *)error
{
  stackCopy = stack;
  v5 = objc_opt_class();
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  v6 = _PFAssertFailHandler();
  return [(IPAPhotoAdjustmentStackSerializer *)v6 _adjustmentStackFromData:v7 error:v8, v9];
}

- (id)_dataFromAdjustmentStack:(id)stack error:(id *)error
{
  stackCopy = stack;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(IPAPhotoAdjustmentStackSerializer *)self dataFromPhotoAdjustmentStack:stackCopy error:error];

    return v7;
  }

  else
  {
    objc_opt_class();
    v9 = _PFAssertFailHandler();
    return [(IPAVideoAdjustmentStackSerializer *)v9 videoAdjustmentStackFromData:v10 error:v11, v12];
  }
}

@end