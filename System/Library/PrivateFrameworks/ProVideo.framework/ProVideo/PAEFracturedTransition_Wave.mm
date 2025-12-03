@interface PAEFracturedTransition_Wave
- (PAEFracturedTransition_Wave)initWithAPIManager:(id)manager;
@end

@implementation PAEFracturedTransition_Wave

- (PAEFracturedTransition_Wave)initWithAPIManager:(id)manager
{
  v10.receiver = self;
  v10.super_class = PAEFracturedTransition_Wave;
  result = [(PAEFracturedTransition *)&v10 initWithAPIManager:manager];
  if (result)
  {
    fxParams = result->super._fxParams;
    fxParams->var0 = 1;
    fxParams->var1 = 67.0;
    *&fxParams->var11 = 0x3C23D70A3F800000;
    fxParams->var3 = 2;
    fxParams->var2 = 0;
    *&fxParams->var19 = 1056964608;
    fxParams->var16 = 1.0;
    fxParams->var14 = 0;
    __asm { FMOV            V0.2D, #1.0 }

    *fxParams->var15 = _Q0;
    *&fxParams->var15[2] = _Q0;
    *&fxParams->var4 = 65537;
    fxParams->var10 = 2;
    *&fxParams->var8 = 0x3F8000003DE147AELL;
    fxParams->var21 = 1;
    fxParams->var22 = 0.1;
  }

  return result;
}

@end