@interface VUIMediaShowcasingConfig
- (VUIMediaShowcasingConfig)init;
@end

@implementation VUIMediaShowcasingConfig

- (VUIMediaShowcasingConfig)init
{
  v16.receiver = self;
  v16.super_class = VUIMediaShowcasingConfig;
  v2 = [(VUIMediaShowcasingConfig *)&v16 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DF6F0] isPhone];
    v4 = 0.5;
    if ((v3 & 1) == 0)
    {
      v5 = [MEMORY[0x1E69DF6F0] isTV];
      v4 = 2.0;
      if (v5)
      {
        v4 = 1.0;
      }
    }

    *(v2 + 8) = v4;
    __asm { FMOV            V0.2S, #-1.0 }

    *(v2 + 2) = _D0;
    *(v2 + 4) = 257;
    __asm { FMOV            V0.2D, #0.75 }

    *(v2 + 72) = _Q0;
    *(v2 + 88) = xmmword_1E4297300;
    *(v2 + 13) = 5;
    *(v2 + 14) = 0x3FD3333333333333;
    v12 = [MEMORY[0x1E69DF6F0] isTV];
    v13 = 1.0;
    if ((v12 & 1) == 0)
    {
      v14 = [MEMORY[0x1E69DF6F0] isMac];
      v13 = 0.400000006;
      if (!v14)
      {
        v13 = 0.75;
      }
    }

    *(v2 + 15) = v13;
    *(v2 + 24) = xmmword_1E4297320;
    *(v2 + 10) = 65793;
    *(v2 + 22) = 0x4014000000000000;
    *(v2 + 23) = 20;
    v2[14] = 0;
    *(v2 + 15) = 1065185444;
    *(v2 + 40) = xmmword_1E4297340;
    *(v2 + 8) = xmmword_1E4297310;
    *(v2 + 9) = xmmword_1E4297350;
    *(v2 + 10) = xmmword_1E4297330;
  }

  return v2;
}

@end