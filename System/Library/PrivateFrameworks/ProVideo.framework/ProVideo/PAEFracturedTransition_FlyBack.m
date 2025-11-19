@interface PAEFracturedTransition_FlyBack
- (PAEFracturedTransition_FlyBack)initWithAPIManager:(id)a3;
@end

@implementation PAEFracturedTransition_FlyBack

- (PAEFracturedTransition_FlyBack)initWithAPIManager:(id)a3
{
  v11.receiver = self;
  v11.super_class = PAEFracturedTransition_FlyBack;
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
    *&fxParams->var19 = 0x23F800000;
    fxParams->var16 = 1.0;
    fxParams->var14 = 0;
    __asm { FMOV            V0.2D, #1.0 }

    *fxParams->var15 = _Q0;
    *&fxParams->var15[2] = _Q0;
    *&fxParams->var4 = 1;
    fxParams->var10 = 2;
    *&fxParams->var8 = 0x3F80000040066666;
    fxParams->var21 = 0;
    fxParams->var22 = 0.21;
  }

  return result;
}

@end