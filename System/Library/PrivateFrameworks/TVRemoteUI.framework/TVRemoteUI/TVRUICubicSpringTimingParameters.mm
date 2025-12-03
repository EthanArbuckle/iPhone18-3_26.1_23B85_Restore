@interface TVRUICubicSpringTimingParameters
+ (id)standardTimingParameters;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TVRUICubicSpringTimingParameters

+ (id)standardTimingParameters
{
  v2 = [objc_alloc(MEMORY[0x277D753D0]) initWithControlPoint1:0.187800005 controlPoint2:{0.00230000005, 0.539900005, 0.962899983}];
  v3 = [[TVRUICubicSpringTimingParameters alloc] initWithMass:3.0 stiffness:500.0 damping:1000.0 initialVelocity:0.0, 0.0];
  [(TVRUICubicSpringTimingParameters *)v3 setSpringCubicTimingParameters:v2];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = TVRUICubicSpringTimingParameters;
  v4 = [(TVRUICubicSpringTimingParameters *)&v7 copyWithZone:zone];
  springCubicTimingParameters = [(TVRUICubicSpringTimingParameters *)self springCubicTimingParameters];
  [v4 setSpringCubicTimingParameters:springCubicTimingParameters];

  return v4;
}

@end