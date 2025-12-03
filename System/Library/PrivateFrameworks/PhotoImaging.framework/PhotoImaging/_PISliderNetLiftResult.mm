@interface _PISliderNetLiftResult
- (NSString)description;
@end

@implementation _PISliderNetLiftResult

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  styleFeatureVectorData = [(_PISliderNetLiftResult *)self styleFeatureVectorData];
  v6 = [v3 stringWithFormat:@"<%@:%p> data=%@", v4, self, styleFeatureVectorData];

  return v6;
}

@end