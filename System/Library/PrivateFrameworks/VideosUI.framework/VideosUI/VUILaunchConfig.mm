@interface VUILaunchConfig
- (VUILaunchConfig)init;
@end

@implementation VUILaunchConfig

- (VUILaunchConfig)init
{
  v7.receiver = self;
  v7.super_class = VUILaunchConfig;
  v2 = [(VUILaunchConfig *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2[8] = 1;
    *(v2 + 3) = 0x40F4A78000000000;
    *(v2 + 4) = 64;
    *(v2 + 3) = 16777472;
    v2[16] = 1;
    *(v2 + 17) = 257;
    v4 = *(v2 + 7);
    *(v2 + 6) = 0x404E000000000000;
    *(v2 + 7) = 0;

    *(v3 + 19) = 1;
    *(v3 + 9) = 257;
    v3[11] = 1;
    *(v3 + 5) = 0;
    v3[21] = 1;
    v5 = *(v3 + 9);
    *(v3 + 8) = 0x4014000000000000;
    *(v3 + 9) = 0;
  }

  return v3;
}

@end