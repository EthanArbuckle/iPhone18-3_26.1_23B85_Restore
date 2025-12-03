@interface _PIParallaxClockLayoutResult
- (NSString)description;
@end

@implementation _PIParallaxClockLayoutResult

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  clockLayerOrder = [(_PIParallaxClockLayoutResult *)self clockLayerOrder];
  clockIntersection = [(_PIParallaxClockLayoutResult *)self clockIntersection];
  v7 = @"NO";
  if (clockIntersection == 1)
  {
    v7 = @"YES";
  }

  v8 = [v3 stringWithFormat:@"<%@:%p layerOrder:%@ intersectsForeground:%@>", v4, self, clockLayerOrder, v7];

  return v8;
}

@end