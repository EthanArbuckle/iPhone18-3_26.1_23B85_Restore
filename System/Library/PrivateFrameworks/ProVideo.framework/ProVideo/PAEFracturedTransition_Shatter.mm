@interface PAEFracturedTransition_Shatter
- (PAEFracturedTransition_Shatter)initWithAPIManager:(id)manager;
@end

@implementation PAEFracturedTransition_Shatter

- (PAEFracturedTransition_Shatter)initWithAPIManager:(id)manager
{
  v11.receiver = self;
  v11.super_class = PAEFracturedTransition_Shatter;
  result = [(PAEFracturedTransition *)&v11 initWithAPIManager:manager];
  if (result)
  {
    fxParams = result->super._fxParams;
    fxParams->var0 = 1;
    fxParams->var1 = 38.0;
    __asm { FMOV            V0.2S, #1.0 }

    *&fxParams->var11 = _D0;
    fxParams->var3 = 10;
    fxParams->var2 = 0;
    *&fxParams->var19 = 0x100000000;
    fxParams->var16 = 1.38;
    fxParams->var14 = 0;
    __asm { FMOV            V0.2D, #1.0 }

    *fxParams->var15 = _Q0;
    *&fxParams->var15[2] = _Q0;
    *&fxParams->var4 = 1;
    fxParams->var10 = 4;
    *&fxParams->var8 = 0x3F8000003F3851ECLL;
    fxParams->var24 = 1;
    fxParams->var21 = 0;
    *&fxParams->var22 = 0x412000003DCCCCCDLL;
  }

  return result;
}

@end