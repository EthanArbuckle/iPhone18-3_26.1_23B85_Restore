@interface PIRawAdjustmentController
- (NSString)inputDecoderVersion;
- (void)setInputDecoderVersion:(id)a3;
@end

@implementation PIRawAdjustmentController

- (NSString)inputDecoderVersion
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = [v2 objectForKeyedSubscript:@"inputDecoderVersion"];

  return v3;
}

- (void)setInputDecoderVersion:(id)a3
{
  v5 = [a3 copy];
  v4 = [(PIAdjustmentController *)self adjustment];
  [v4 setObject:v5 forKeyedSubscript:@"inputDecoderVersion"];
}

@end