@interface RTSCWeightedInterpolationModel
- (RTSCWeightedInterpolationModel)initWithPoint:(RTSCWeightedInterpolationModel *)self weights:(SEL)a2;
@end

@implementation RTSCWeightedInterpolationModel

- (RTSCWeightedInterpolationModel)initWithPoint:(RTSCWeightedInterpolationModel *)self weights:(SEL)a2
{
  v13 = v3;
  v4 = v2;
  v14.receiver = self;
  v14.super_class = RTSCWeightedInterpolationModel;
  result = [(RTSCWeightedInterpolationModel *)&v14 init];
  if (result)
  {
    result[1].super.isa = 0;
    result[2].super.isa = 0;
    *v6.i32 = fmaxf(v13.f32[0], v13.f32[1]);
    if (*v6.i32 <= 0.00000011921)
    {
      __asm { FMOV            V0.2S, #1.0 }
    }

    else
    {
      _D0 = vmaxnm_f32(vdiv_f32(v13, vdup_lane_s32(v6, 0)), 0);
    }

    __asm { FMOV            V2.2S, #-1.0 }

    result[1].super.isa = vmul_f32(vsub_f32(0x4000000040000000, _D0), v4);
    result[2].super.isa = vmul_f32(vadd_f32(_D0, _D2), v4);
  }

  return result;
}

@end