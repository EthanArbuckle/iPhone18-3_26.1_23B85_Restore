@interface PFParallaxColor
+ (PFParallaxColor)blackColor;
+ (PFParallaxColor)colorWithCGColor:(CGColor *)color;
+ (PFParallaxColor)colorWithRGBValues:(id)values error:(id *)error;
+ (PFParallaxColor)colorWithTone:(double)tone hue:(double)hue;
+ (PFParallaxColor)whiteColor;
- (BOOL)isCool;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToParallaxColor:(id)color;
- (BOOL)isWarm;
- (CGColor)CGColor;
- (CGPoint)pt;
- (NSArray)RGBValues;
- (PFParallaxColor)complementaryColor;
- (PFParallaxColor)initWithCoder:(id)coder;
- (PFParallaxColor)initWithHue:(double)hue tone:(double)tone;
- (PFParallaxColor)initWithLuma:(double)luma hue:(double)hue chroma:(double)chroma;
- (PFParallaxColor)initWithRed:(double)red green:(double)green blue:(double)blue;
- (double)deltaE94DistanceToColor:(id)color;
- (double)distanceToColor:(id)color;
- (double)tone;
- (id)debugQuickLookObject;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PFParallaxColor

- (PFParallaxColor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"rgbValues"];

  v6 = [v5 objectAtIndexedSubscript:0];
  [v6 doubleValue];
  v8 = v7;
  v9 = [v5 objectAtIndexedSubscript:1];
  [v9 doubleValue];
  v11 = v10;
  v12 = [v5 objectAtIndexedSubscript:2];
  [v12 doubleValue];
  v14 = [(PFParallaxColor *)self initWithRed:v8 green:v11 blue:v13];

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  rGBValues = [(PFParallaxColor *)self RGBValues];
  [coderCopy encodeObject:rGBValues forKey:@"rgbValues"];
}

- (id)debugQuickLookObject
{
  v2 = [MEMORY[0x1E695F610] colorWithCGColor:{-[PFParallaxColor CGColor](self, "CGColor")}];
  debugQuickLookObject = [v2 debugQuickLookObject];

  return debugQuickLookObject;
}

- (CGColor)CGColor
{
  v9 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_cgColor)
  {
    v3 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
    v4 = *&selfCopy->_srgb[16];
    v6 = *selfCopy->_srgb;
    v7 = v4;
    v8 = 0x3FF0000000000000;
    selfCopy->_cgColor = CGColorCreate(v3, &v6);
    CGColorSpaceRelease(v3);
  }

  objc_sync_exit(selfCopy);

  return selfCopy->_cgColor;
}

- (PFParallaxColor)complementaryColor
{
  [(PFParallaxColor *)self red];
  v4 = 1.0 - v3;
  [(PFParallaxColor *)self green];
  v6 = 1.0 - v5;
  [(PFParallaxColor *)self blue];
  v8 = [[PFParallaxColor alloc] initWithRed:v4 green:v6 blue:1.0 - v7];

  return v8;
}

- (NSArray)RGBValues
{
  v8[3] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:*self->_srgb];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:{*&self->_srgb[8], v3}];
  v8[1] = v4;
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:*&self->_srgb[16]];
  v8[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  return v6;
}

- (double)deltaE94DistanceToColor:(id)color
{
  colorCopy = color;
  [(PFParallaxColor *)self luma];
  v29 = v5;
  [(PFParallaxColor *)self pt];
  v27 = v6;
  [(PFParallaxColor *)self pt];
  v7.f64[1] = *(&v27 + 1);
  v8.f64[0] = v29;
  *&v8.f64[1] = v27;
  v9.f64[0] = 255.0;
  v7.f64[0] = -128.0;
  v26 = v9;
  v28 = v7;
  v30 = vmlaq_f64(v7, v9, v10);
  v25 = vmlaq_f64(xmmword_1B36A1DB0, xmmword_1B36A1DA0, v8);
  [colorCopy luma];
  v24 = v11;
  [colorCopy pt];
  v23 = v12;
  [colorCopy pt];
  v22 = v13;

  v14.f64[0] = v24;
  v14.f64[1] = v23;
  v15 = vmlaq_f64(xmmword_1B36A1DB0, xmmword_1B36A1DA0, v14);
  v16 = v25.f64[0] - v15.f64[0];
  v17 = v15;
  *v14.f64 = COERCE_DOUBLE(*&vsubq_f64(v25, v15).f64[1]);
  v18 = vmlaq_f64(v28, v26, v22);
  *v15.f64 = v30.f64[0] - v18.f64[0];
  v19 = vcvt_f32_f64(vsqrtq_f64(vaddq_f64(vzip2q_s64(vmulq_f64(v25, v25), vmulq_f64(v17, v17)), vzip1q_s64(vmulq_f64(v30, v30), vmulq_f64(v18, v18)))));
  v20 = v19.f32[0] - v19.f32[1];
  *v14.f64 = fmax((((*v15.f64 * *v15.f64) + (*v14.f64 * *v14.f64)) - (v20 * v20)), 0.0);
  v15.f64[0] = sqrtf(vmuls_lane_f32(v19.f32[0], v19, 1));
  v19.f32[0] = v15.f64[0] * 0.045 + 1.0;
  *v15.f64 = v15.f64[0] * 0.015 + 1.0;
  return sqrtf((*v14.f64 / (*v15.f64 * *v15.f64)) + (((v20 / v19.f32[0]) * (v20 / v19.f32[0])) + (v16 * v16)));
}

- (double)distanceToColor:(id)color
{
  colorCopy = color;
  [(PFParallaxColor *)self hue];
  v6 = v5 + 0.0;
  [colorCopy hue];
  v8 = vabdd_f64(v6, v7);
  [(PFParallaxColor *)self hue];
  v10 = v9 + 360.0;
  [colorCopy hue];
  v12 = vabdd_f64(v10, v11);
  [(PFParallaxColor *)self hue];
  v14 = v13 + -360.0;
  [colorCopy hue];
  v16 = v15;

  result = vabdd_f64(v14, v16);
  if (v12 < result)
  {
    result = v12;
  }

  if (v8 < result)
  {
    return v8;
  }

  return result;
}

- (BOOL)isEqualToParallaxColor:(id)color
{
  v3 = *(color + 2);
  v4 = vabdq_f64(*&self->_srgb[16], v3);
  v3.f64[0] = 0.0001;
  v5 = vcgtq_f64(vdupq_n_s64(0x3F1A36E2EB1C432DuLL), vabdq_f64(*self->_srgb, *(color + 1)));
  return (v5.i64[0] & vcgtq_f64(v3, v4).u64[0] & v5.i64[1]) >> 63;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PFParallaxColor *)self isEqualToParallaxColor:equalCopy];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(PFParallaxColor *)self red];
  v5 = v4;
  [(PFParallaxColor *)self green];
  v7 = v6;
  [(PFParallaxColor *)self blue];
  v9 = v8;
  [(PFParallaxColor *)self luminance];
  v11 = v10;
  [(PFParallaxColor *)self luma];
  v13 = v12;
  [(PFParallaxColor *)self hue];
  v15 = v14;
  [(PFParallaxColor *)self chroma];
  v17 = v16;
  [(PFParallaxColor *)self tone];
  return [v3 stringWithFormat:@"(R:%.3f G:%.3f B:%.3f L: %.3f, l:%.3f, h:%.3f c:%.3f t:%.3f)", v5, v7, v9, v11, v13, v15, v17, v18];
}

- (BOOL)isCool
{
  [(PFParallaxColor *)self hue];
  if (v3 >= 150.0)
  {
    return 1;
  }

  [(PFParallaxColor *)self hue];
  return v4 <= -30.0;
}

- (BOOL)isWarm
{
  [(PFParallaxColor *)self hue];
  if (v3 < 0.0)
  {
    return 0;
  }

  [(PFParallaxColor *)self hue];
  return v5 <= 120.0;
}

- (double)tone
{
  v2 = *self->_lhc;
  v3 = *&self->_lhc[16] / 0.707106781;
  if (v3 > v2)
  {
    return (v2 / v3 + 2.0 - sqrt(v2 / v3 * (v2 / v3) + 4.0)) * 0.5;
  }

  result = 1.0;
  if (v3 > 0.0)
  {
    return (v3 / v2 * 2.0 + 1.0 - sqrt(v3 / v2 * 4.0 * (v3 / v2) + 1.0)) / (v3 / v2 + v3 / v2);
  }

  return result;
}

- (PFParallaxColor)initWithHue:(double)hue tone:(double)tone
{
  v12.receiver = self;
  v12.super_class = PFParallaxColor;
  v6 = [(PFParallaxColor *)&v12 init];
  v7.f64[0] = (2.0 - tone) * tone;
  v7.f64[1] = hue * 3.14159265 / 180.0;
  *&v8 = (1.0 - tone) * 0.707106781;
  *v6->_lhc = v7;
  *&v6->_lhc[16] = v8;
  lhc_to_srgb(v11, v7, *&v8);
  v9 = v11[1];
  *v6->_srgb = v11[0];
  *&v6->_srgb[16] = v9;
  return v6;
}

- (CGPoint)pt
{
  v2 = *&self->_lhc[16];
  v3 = __sincos_stret(*&self->_lhc[8]);
  v4 = v2 * v3.__sinval;
  v5 = v2 * v3.__cosval;
  result.y = v4;
  result.x = v5;
  return result;
}

- (PFParallaxColor)initWithLuma:(double)luma hue:(double)hue chroma:(double)chroma
{
  v17.receiver = self;
  v17.super_class = PFParallaxColor;
  v7 = [(PFParallaxColor *)&v17 init];
  v8 = fmod(hue, 360.0);
  v10 = v8 + -360.0;
  if (v8 <= 180.0)
  {
    v10 = v8;
  }

  if (v8 >= -180.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = v8 + 360.0;
  }

  v12.f64[0] = luma;
  v12.f64[1] = v11 * 3.14159265 / 180.0;
  *&v9 = chroma * 0.707106781;
  *v7->_lhc = v12;
  *&v7->_lhc[16] = v9;
  lhc_to_srgb(v16, v12, chroma * 0.707106781);
  v13 = v16[1];
  *v7->_srgb = v16[0];
  *&v7->_srgb[16] = v13;
  return v7;
}

- (PFParallaxColor)initWithRed:(double)red green:(double)green blue:(double)blue
{
  v44 = *&blue;
  v57.receiver = self;
  v57.super_class = PFParallaxColor;
  v5 = [(PFParallaxColor *)&v57 init];
  v6.f64[0] = red;
  v6.f64[1] = green;
  *v5->_srgb = v6;
  *&v5->_srgb[16] = v44;
  v55 = vnegq_f64(0);
  __asm { FMOV            V4.2D, #1.0 }

  v48 = vandq_s8(vorrq_s8(vandq_s8(v6, v55), _Q4), vorrq_s8(vcltzq_f64(v6), vcgtzq_f64(v6)));
  v51 = _Q4;
  v12 = vandq_s8(vorrq_s8(vandq_s8(v44, v55), _Q4), vorrq_s8(vcltzq_f64(v44), vcgtzq_f64(v44)));
  v46 = v12;
  v41 = vabsq_f64(v6);
  v42 = vabsq_f64(v44);
  v12.f64[0] = 12.92;
  v13 = vdivq_f64(v42, v12);
  v14 = vdivq_f64(v41, vdupq_n_s64(0x4029D70A3D70A3D7uLL));
  v43 = v14;
  v45 = v13;
  v14.f64[0] = 0.055;
  v15 = vaddq_f64(v42, v14);
  v16 = vdupq_n_s64(0x3FF0E147AE147AE1uLL);
  v17 = vdivq_f64(vaddq_f64(v41, vdupq_n_s64(0x3FAC28F5C28F5C29uLL)), v16);
  v16.f64[0] = 1.055;
  x = *&vdivq_f64(v15, v16);
  v40 = _simd_pow_d2(v17, vdupq_n_s64(0x4003333333333333uLL));
  v18 = _simd_pow_d2(x, xmmword_1B36A1E50);
  v19.f64[0] = 0.04045;
  v20 = vbslq_s8(vcltzq_s64(vcgtq_f64(v41, vdupq_n_s64(0x3FA4B5DCC63F1412uLL))), v40, v43);
  v21 = vmulq_f64(v46, vbslq_s8(vcltzq_s64(vcgtq_f64(v42, v19).u64[0]), v18, v45));
  v22 = vmulq_f64(v48, v20);
  v20.f64[0] = 0.017752387;
  v23.f64[1] = 0.757894462;
  v24 = vmlaq_laneq_f64(vmulq_n_f64(xmmword_1B36A1DE0, v22.f64[0]), xmmword_1B36A1DF0, v22, 1);
  v23.f64[0] = 0.109442094;
  v25 = vmlaq_laneq_f64(vmulq_f64(v22, v20), v23, v22, 1);
  v22.f64[0] = 0.872569225;
  v26 = vmlaq_f64(v25, v22, v21);
  v27 = vmlaq_n_f64(v24, xmmword_1B36A1E00, v21.f64[0]);
  v28 = vandq_s8(vorrq_s8(vandq_s8(v27, v55), v51), vorrq_s8(vcltzq_f64(v27), vcgtzq_f64(v27)));
  v52 = vbslq_s8(vorrq_s8(vcltzq_f64(v26), vcgtzq_f64(v26)), vorrq_s8(vandq_s8(v26, v55), v51), 0);
  v56 = v28;
  v49 = *&vabsq_f64(v26);
  v47 = _simd_pow_d2(vabsq_f64(v27), vdupq_n_s64(0x3FDB851EB851EB85uLL));
  v29 = vmulq_f64(_simd_pow_d2(v49, xmmword_1B36A1E60), v52);
  v30 = vmulq_f64(v47, v56);
  v31.f64[1] = 4.455;
  v31.f64[0] = 0.8056;
  v32 = vmulq_f64(v30, v31);
  v31.f64[0] = 0.3572;
  v33 = vmlaq_laneq_f64(v32, v31, v30, 1);
  v34 = vmlaq_laneq_f64(vmulq_n_f64(xmmword_1B36A1E10, v30.f64[0]), xmmword_1B36A1E20, v30, 1);
  v30.f64[1] = 0.396;
  v53 = vmlaq_n_f64(v34, xmmword_1B36A1E30, v29.f64[0]);
  v30.f64[0] = -1.1628;
  v56.f64[0] = vmlaq_f64(v33, v30, v29).f64[0];
  v35 = atan2(v56.f64[0], v53.f64[1]);
  *&v36 = v53.f64[0];
  *(&v36 + 1) = v35;
  *&v37 = sqrt(vmuld_lane_f64(v53.f64[1], v53, 1) + v56.f64[0] * v56.f64[0]);
  *v5->_lhc = v36;
  *&v5->_lhc[16] = v37;
  return v5;
}

- (void)dealloc
{
  CGColorRelease(self->_cgColor);
  v3.receiver = self;
  v3.super_class = PFParallaxColor;
  [(PFParallaxColor *)&v3 dealloc];
}

+ (PFParallaxColor)colorWithRGBValues:(id)values error:(id *)error
{
  v29[1] = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  if ([valuesCopy count] != 3)
  {
    if (!error)
    {
      goto LABEL_11;
    }

    v18 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A278];
    valuesCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"RGB array is invalid: %@", valuesCopy];
    v29[0] = valuesCopy;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    *error = [v18 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v20];

    goto LABEL_10;
  }

  v6 = 0;
  while (1)
  {
    v7 = [valuesCopy objectAtIndexedSubscript:v6];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      break;
    }

    if (++v6 == 3)
    {
      v9 = [valuesCopy objectAtIndexedSubscript:0];
      [v9 doubleValue];
      v11 = v10;

      v12 = [valuesCopy objectAtIndexedSubscript:1];
      [v12 doubleValue];
      v14 = v13;

      v15 = [valuesCopy objectAtIndexedSubscript:2];
      [v15 doubleValue];
      v17 = v16;

      error = [[PFParallaxColor alloc] initWithRed:v11 green:v14 blue:v17];
      goto LABEL_11;
    }
  }

  if (error)
  {
    v21 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E696A278];
    v22 = MEMORY[0x1E696AEC0];
    valuesCopy = [valuesCopy objectAtIndexedSubscript:v6];
    v23 = [v22 stringWithFormat:@"Color value at index %d is not a number: %@", v6, valuesCopy];
    v27 = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    *error = [v21 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v24];

LABEL_10:
    error = 0;
  }

LABEL_11:

  return error;
}

+ (PFParallaxColor)colorWithTone:(double)tone hue:(double)hue
{
  v4 = [[self alloc] initWithHue:hue tone:tone];

  return v4;
}

+ (PFParallaxColor)blackColor
{
  v2 = [[PFParallaxColor alloc] initWithRed:0.0 green:0.0 blue:0.0];

  return v2;
}

+ (PFParallaxColor)whiteColor
{
  v2 = [[PFParallaxColor alloc] initWithRed:1.0 green:1.0 blue:1.0];

  return v2;
}

+ (PFParallaxColor)colorWithCGColor:(CGColor *)color
{
  v5 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v5, kCGRenderingIntentDefault, color, 0);
  Components = CGColorGetComponents(CopyByMatchingToColorSpace);
  v8 = [[self alloc] initWithRed:*Components green:Components[1] blue:Components[2]];
  v8[10] = CopyByMatchingToColorSpace;
  CGColorSpaceRelease(v5);

  return v8;
}

@end