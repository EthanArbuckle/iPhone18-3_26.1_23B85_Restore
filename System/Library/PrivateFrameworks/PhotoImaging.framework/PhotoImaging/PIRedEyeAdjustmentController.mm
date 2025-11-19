@interface PIRedEyeAdjustmentController
- (BOOL)hasCorrections;
- (NSArray)inputCorrectionInfo;
- (void)setInputCorrectionInfo:(id)a3;
@end

@implementation PIRedEyeAdjustmentController

- (void)setInputCorrectionInfo:(id)a3
{
  v6 = [a3 copy];
  v4 = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIRedEyeAdjustmentController inputCorrectionInfoKey];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

- (NSArray)inputCorrectionInfo
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIRedEyeAdjustmentController inputCorrectionInfoKey];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x1E695DEC8] array];
  }

  v7 = v6;

  return v7;
}

- (BOOL)hasCorrections
{
  v3 = [(PIAdjustmentController *)self adjustment];
  v4 = +[PIRedEyeAdjustmentController inputCorrectionInfoKey];
  v5 = [v3 objectForKeyedSubscript:v4];

  objc_opt_class();
  v6 = (objc_opt_isKindOfClass() & 1) != 0 && [v5 count] != 0;
  v7 = [(PIAdjustmentController *)self adjustment];
  v8 = [v7 objectForKeyedSubscript:@"enabled"];
  v9 = [v8 BOOLValue];

  return v9 & v6;
}

@end