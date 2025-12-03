@interface _PIParallaxColorAnalysisResult
- (NSString)description;
@end

@implementation _PIParallaxColorAnalysisResult

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  [(_PIParallaxColorAnalysisResult *)self medianLuminance];
  v6 = v5;
  dominantColors = [(_PIParallaxColorAnalysisResult *)self dominantColors];
  v8 = [v3 stringWithFormat:@"<%@: %p lum = %.3f colors = %@>", v4, self, v6, dominantColors];;

  return v8;
}

@end