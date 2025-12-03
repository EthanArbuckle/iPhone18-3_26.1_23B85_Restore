@interface CAMeshTransform(PUPerspectiveTransform)
+ (id)pu_meshTransformApplyingNormalizedPerspectiveTransform:()PUPerspectiveTransform;
@end

@implementation CAMeshTransform(PUPerspectiveTransform)

+ (id)pu_meshTransformApplyingNormalizedPerspectiveTransform:()PUPerspectiveTransform
{
  v3 = objc_alloc_init(MEMORY[0x1E69793F8]);
  v15 = vmulq_f32(self, 0);
  v4 = vaddq_f32(a3, vmlaq_f32(v15, 0, a2));
  v19 = 0uLL;
  v20 = vcvtq_f64_f32(vdiv_f32(*v4.i8, *&vdupq_laneq_s32(v4, 2)));
  v21 = 0;
  [v3 addVertex:&v19];
  v5 = vaddq_f32(a3, vaddq_f32(a2, v15));
  v19 = xmmword_1B3D092D0;
  v20 = vcvtq_f64_f32(vdiv_f32(*v5.i8, *&vdupq_laneq_s32(v5, 2)));
  v21 = 0;
  [v3 addVertex:&v19];
  v6 = vaddq_f32(a3, vaddq_f32(a2, self));
  __asm { FMOV            V1.2D, #1.0 }

  v19 = _Q1;
  v20 = vcvtq_f64_f32(vdiv_f32(*v6.i8, *&vdupq_laneq_s32(v6, 2)));
  v21 = 0;
  [v3 addVertex:&v19];
  v12 = vaddq_f32(a3, vmlaq_f32(self, 0, a2));
  v19 = xmmword_1B3D0CFD0;
  v20 = vcvtq_f64_f32(vdiv_f32(*v12.i8, *&vdupq_laneq_s32(v12, 2)));
  v21 = 0;
  [v3 addVertex:&v19];
  v19 = xmmword_1B3D0CFE0;
  v20 = 0uLL;
  [v3 addFace:&v19];
  [v3 setSubdivisionSteps:0];
  [v3 setDepthNormalization:*MEMORY[0x1E69796F8]];
  v13 = [v3 copy];

  return v13;
}

@end