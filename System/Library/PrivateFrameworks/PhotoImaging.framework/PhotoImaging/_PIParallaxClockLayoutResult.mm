@interface _PIParallaxClockLayoutResult
- (NSString)description;
@end

@implementation _PIParallaxClockLayoutResult

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(_PIParallaxClockLayoutResult *)self clockLayerOrder];
  v6 = [(_PIParallaxClockLayoutResult *)self clockIntersection];
  v7 = @"NO";
  if (v6 == 1)
  {
    v7 = @"YES";
  }

  v8 = [v3 stringWithFormat:@"<%@:%p layerOrder:%@ intersectsForeground:%@>", v4, self, v5, v7];

  return v8;
}

@end