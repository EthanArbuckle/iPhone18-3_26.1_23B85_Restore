@interface PAEFracturedTransition_Flip
- (PAEFracturedTransition_Flip)initWithAPIManager:(id)a3;
@end

@implementation PAEFracturedTransition_Flip

- (PAEFracturedTransition_Flip)initWithAPIManager:(id)a3
{
  v10.receiver = self;
  v10.super_class = PAEFracturedTransition_Flip;
  result = [(PAEFracturedTransition *)&v10 initWithAPIManager:a3];
  if (result)
  {
    fxParams = result->super._fxParams;
    fxParams->var0 = 1;
    fxParams->var1 = 24.0;
    *&fxParams->var11 = 0x400000003F800000;
    fxParams->var3 = 2;
    fxParams->var2 = 0;
    *&fxParams->var19 = 0x23F1EB852;
    fxParams->var16 = 0.58;
    fxParams->var14 = 1;
    __asm { FMOV            V0.2D, #1.0 }

    *fxParams->var15 = _Q0;
    *&fxParams->var15[2] = _Q0;
    *&fxParams->var4 = 65793;
    fxParams->var10 = 2;
    *&fxParams->var8 = 0x3F8000003EA3D70ALL;
    fxParams->var21 = 0;
    fxParams->var22 = 0.21;
  }

  return result;
}

@end