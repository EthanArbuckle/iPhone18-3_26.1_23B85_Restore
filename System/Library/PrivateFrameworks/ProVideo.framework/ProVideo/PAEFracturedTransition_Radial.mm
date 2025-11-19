@interface PAEFracturedTransition_Radial
- (PAEFracturedTransition_Radial)initWithAPIManager:(id)a3;
@end

@implementation PAEFracturedTransition_Radial

- (PAEFracturedTransition_Radial)initWithAPIManager:(id)a3
{
  v11.receiver = self;
  v11.super_class = PAEFracturedTransition_Radial;
  result = [(PAEFracturedTransition *)&v11 initWithAPIManager:a3];
  if (result)
  {
    fxParams = result->super._fxParams;
    fxParams->var0 = 1;
    fxParams->var1 = 23.0;
    __asm { FMOV            V0.2S, #1.0 }

    *&fxParams->var11 = _D0;
    fxParams->var3 = 14;
    fxParams->var2 = 0;
    *&fxParams->var19 = 0x23F333333;
    fxParams->var16 = 1.0;
    fxParams->var14 = 0;
    __asm { FMOV            V0.2D, #1.0 }

    *fxParams->var15 = _Q0;
    *&fxParams->var15[2] = _Q0;
    *&fxParams->var4 = 257;
    fxParams->var9 = 0.0;
    fxParams->var10 = 4;
    fxParams->var8 = 0.0;
    fxParams->var21 = 0;
    fxParams->var22 = 0.0;
  }

  return result;
}

@end