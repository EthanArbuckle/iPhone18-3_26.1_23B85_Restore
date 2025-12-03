@interface PIRawAdjustmentController
- (NSString)inputDecoderVersion;
- (void)setInputDecoderVersion:(id)version;
@end

@implementation PIRawAdjustmentController

- (NSString)inputDecoderVersion
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = [adjustment objectForKeyedSubscript:@"inputDecoderVersion"];

  return v3;
}

- (void)setInputDecoderVersion:(id)version
{
  v5 = [version copy];
  adjustment = [(PIAdjustmentController *)self adjustment];
  [adjustment setObject:v5 forKeyedSubscript:@"inputDecoderVersion"];
}

@end