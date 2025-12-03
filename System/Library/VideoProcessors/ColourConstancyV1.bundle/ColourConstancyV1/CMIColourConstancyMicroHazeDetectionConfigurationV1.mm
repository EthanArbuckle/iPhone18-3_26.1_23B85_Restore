@interface CMIColourConstancyMicroHazeDetectionConfigurationV1
- (CMIColourConstancyMicroHazeDetectionConfigurationV1)initWithFusionMapWidth:(int)width fusionMapHeight:(int)height;
@end

@implementation CMIColourConstancyMicroHazeDetectionConfigurationV1

- (CMIColourConstancyMicroHazeDetectionConfigurationV1)initWithFusionMapWidth:(int)width fusionMapHeight:(int)height
{
  v10.receiver = self;
  v10.super_class = CMIColourConstancyMicroHazeDetectionConfigurationV1;
  v6 = [(CMIColourConstancyMicroHazeDetectionConfigurationV1 *)&v10 init];
  v7 = v6;
  if (v6)
  {
    *(v6 + 2) = width;
    *(v6 + 3) = height;
    *(v6 + 2) = 0xC00000010;
    *(v6 + 3) = 0x4000000000000020;
    *(v6 + 4) = 0x3000000040;
    *(v6 + 40) = xmmword_21820;
    *(v6 + 56) = xmmword_21830;
    *(v6 + 72) = xmmword_21840;
    *(v6 + 88) = xmmword_21850;
    *(v6 + 104) = xmmword_21860;
    v8 = v6;
  }

  return v7;
}

@end