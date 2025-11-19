@interface _PISliderNetAdjustmentsResult
- (NSString)description;
@end

@implementation _PISliderNetAdjustmentsResult

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(_PISliderNetAdjustmentsResult *)self adjustments];
  v6 = [v3 stringWithFormat:@"<%@:%p> adjustments=%@", v4, self, v5];

  return v6;
}

@end