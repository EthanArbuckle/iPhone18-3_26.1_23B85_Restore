@interface CIImage(PUPerspectiveTransform)
- (id)pu_imageWithPerspectiveTransform:()PUPerspectiveTransform extent:;
- (uint64_t)pu_imageWithPerspectiveTransform:()PUPerspectiveTransform;
@end

@implementation CIImage(PUPerspectiveTransform)

- (uint64_t)pu_imageWithPerspectiveTransform:()PUPerspectiveTransform
{
  [self extent];

  return [self pu_imageWithPerspectiveTransform:a2 extent:{a3, a4, v5, v6, v7, v8}];
}

- (id)pu_imageWithPerspectiveTransform:()PUPerspectiveTransform extent:
{
  v12 = MEMORY[0x1E695F648];
  selfCopy = self;
  v14 = [v12 filterWithName:@"CIPerspectiveTransformWithExtent"];
  v41.origin.x = a5;
  v41.origin.y = a6;
  v41.size.width = a7;
  v41.size.height = a8;
  MinX = CGRectGetMinX(v41);
  v42.origin.x = a5;
  v42.origin.y = a6;
  v42.size.width = a7;
  v42.size.height = a8;
  MaxX = CGRectGetMaxX(v42);
  v43.origin.x = a5;
  v43.origin.y = a6;
  v43.size.width = a7;
  v43.size.height = a8;
  MinY = CGRectGetMinY(v43);
  v44.origin.x = a5;
  v44.origin.y = a6;
  v44.size.width = a7;
  v44.size.height = a8;
  MaxY = CGRectGetMaxY(v44);
  v19 = MinX;
  v20 = MinY;
  v21 = vmulq_n_f32(a2, v19);
  v22 = vaddq_f32(a4, vmlaq_n_f32(v21, a3, v20));
  *&MaxY = MaxY;
  v23 = vaddq_f32(a4, vmlaq_n_f32(v21, a3, *&MaxY));
  v34 = vcvtq_f64_f32(vdiv_f32(*v23.i8, *&vdupq_laneq_s32(v23, 2)));
  *v23.i32 = MaxX;
  v24 = vmulq_n_f32(a2, *v23.i32);
  v25 = vaddq_f32(a4, vmlaq_n_f32(v24, a3, *&MaxY));
  v36 = vcvtq_f64_f32(vdiv_f32(*v25.i8, *&vdupq_laneq_s32(v25, 2)));
  v26 = vaddq_f32(a4, vmlaq_n_f32(v24, a3, v20));
  v39 = vcvtq_f64_f32(vdiv_f32(*v26.i8, *&vdupq_laneq_s32(v26, 2)));
  v27 = [MEMORY[0x1E695F688] vectorWithX:vcvtq_f64_f32(vdiv_f32(*v22.i8 Y:{*&vdupq_laneq_s32(v22, 2)))}];
  v28 = [MEMORY[0x1E695F688] vectorWithX:*&v34 Y:?];
  v29 = [MEMORY[0x1E695F688] vectorWithX:*&v36 Y:?];
  v30 = [MEMORY[0x1E695F688] vectorWithX:*&v39 Y:?];
  [v14 setValue:selfCopy forKey:*MEMORY[0x1E695FAB0]];

  v31 = [MEMORY[0x1E695F688] vectorWithCGRect:{a5, a6, a7, a8}];
  [v14 setValue:v31 forKey:@"inputExtent"];

  [v14 setValue:v27 forKey:@"inputBottomLeft"];
  [v14 setValue:v28 forKey:@"inputTopLeft"];
  [v14 setValue:v29 forKey:@"inputTopRight"];
  [v14 setValue:v30 forKey:@"inputBottomRight"];
  outputImage = [v14 outputImage];

  return outputImage;
}

@end