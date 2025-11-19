@interface PAEFracturedTransition_Twirl
- (PAEFracturedTransition_Twirl)initWithAPIManager:(id)a3;
@end

@implementation PAEFracturedTransition_Twirl

- (PAEFracturedTransition_Twirl)initWithAPIManager:(id)a3
{
  v10.receiver = self;
  v10.super_class = PAEFracturedTransition_Twirl;
  result = [(PAEFracturedTransition *)&v10 initWithAPIManager:a3];
  if (result)
  {
    fxParams = result->super._fxParams;
    fxParams->var0 = 1;
    fxParams->var1 = 21.0;
    *&fxParams->var11 = 0x400000003F800000;
    fxParams->var3 = 11;
    fxParams->var2 = 1;
    *&fxParams->var19 = 0;
    fxParams->var16 = 0.0;
    fxParams->var14 = 0;
    __asm { FMOV            V0.2D, #1.0 }

    *fxParams->var15 = _Q0;
    *&fxParams->var15[2] = _Q0;
    *&fxParams->var4 = 16777473;
    fxParams->var9 = 0.0;
    fxParams->var10 = 2;
    fxParams->var8 = 0.0;
    fxParams->var21 = 0;
    fxParams->var22 = 0.21;
  }

  return result;
}

@end