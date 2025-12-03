@interface PIRedEyeAdjustmentController
- (BOOL)hasCorrections;
- (NSArray)inputCorrectionInfo;
- (void)setInputCorrectionInfo:(id)info;
@end

@implementation PIRedEyeAdjustmentController

- (void)setInputCorrectionInfo:(id)info
{
  v6 = [info copy];
  adjustment = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIRedEyeAdjustmentController inputCorrectionInfoKey];
  [adjustment setObject:v6 forKeyedSubscript:v5];
}

- (NSArray)inputCorrectionInfo
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIRedEyeAdjustmentController inputCorrectionInfoKey];
  v4 = [adjustment objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    array = v4;
  }

  else
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  v7 = array;

  return v7;
}

- (BOOL)hasCorrections
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v4 = +[PIRedEyeAdjustmentController inputCorrectionInfoKey];
  v5 = [adjustment objectForKeyedSubscript:v4];

  objc_opt_class();
  v6 = (objc_opt_isKindOfClass() & 1) != 0 && [v5 count] != 0;
  adjustment2 = [(PIAdjustmentController *)self adjustment];
  v8 = [adjustment2 objectForKeyedSubscript:@"enabled"];
  bOOLValue = [v8 BOOLValue];

  return bOOLValue & v6;
}

@end