@interface UIColor(PCXColorAdditions)
+ (uint64_t)pcxColorWithCalibratedHue:()PCXColorAdditions saturation:brightness:alpha:;
+ (uint64_t)pcxColorWithCalibratedRed:()PCXColorAdditions green:blue:alpha:;
+ (uint64_t)pcxColorWithCalibratedWhite:()PCXColorAdditions alpha:;
+ (uint64_t)pcxColorWithColorSpace:()PCXColorAdditions components:count:;
+ (uint64_t)pcxColorWithColorSpace:()PCXColorAdditions hue:saturation:brightness:alpha:;
+ (uint64_t)pcxColorWithDeviceHue:()PCXColorAdditions saturation:brightness:alpha:;
+ (uint64_t)pcxColorWithDeviceRed:()PCXColorAdditions green:blue:alpha:;
+ (uint64_t)pcxColorWithDeviceWhite:()PCXColorAdditions alpha:;
+ (uint64_t)pcxColorWithGenericGamma22White:()PCXColorAdditions alpha:;
+ (uint64_t)pcxColorWithSRGBRed:()PCXColorAdditions green:blue:alpha:;
- (CGColor)pcxColorUsingColorSpace:()PCXColorAdditions;
- (double)pcxAlphaComponent;
- (double)pcxBlueComponent;
- (double)pcxBrightnessComponent;
- (double)pcxGreenComponent;
- (double)pcxHueComponent;
- (double)pcxRedComponent;
- (double)pcxSaturationComponent;
@end

@implementation UIColor(PCXColorAdditions)

- (double)pcxHueComponent
{
  v2 = 0.0;
  [self getHue:&v2 saturation:0 brightness:0 alpha:0];
  return v2;
}

- (double)pcxSaturationComponent
{
  v2 = 0.0;
  [self getHue:0 saturation:&v2 brightness:0 alpha:0];
  return v2;
}

- (double)pcxBrightnessComponent
{
  v2 = 0.0;
  [self getHue:0 saturation:0 brightness:&v2 alpha:0];
  return v2;
}

- (double)pcxRedComponent
{
  v2 = 0.0;
  [self getRed:&v2 green:0 blue:0 alpha:0];
  return v2;
}

- (double)pcxGreenComponent
{
  v2 = 0.0;
  [self getRed:0 green:&v2 blue:0 alpha:0];
  return v2;
}

- (double)pcxBlueComponent
{
  v2 = 0.0;
  [self getRed:0 green:0 blue:&v2 alpha:0];
  return v2;
}

- (double)pcxAlphaComponent
{
  v2 = 0.0;
  [self getRed:0 green:0 blue:0 alpha:&v2];
  return v2;
}

- (CGColor)pcxColorUsingColorSpace:()PCXColorAdditions
{
  result = CGColorCreateCopyByMatchingToColorSpace(a3, kCGRenderingIntentPerceptual, [self CGColor], 0);
  if (result)
  {
    v5 = result;
    Components = CGColorGetComponents(result);
    v7 = [MEMORY[0x277D75348] pcxColorWithColorSpace:a3 components:Components count:CGColorGetNumberOfComponents(v5)];
    CGColorRelease(v5);
    return v7;
  }

  return result;
}

+ (uint64_t)pcxColorWithSRGBRed:()PCXColorAdditions green:blue:alpha:
{
  v7[4] = *MEMORY[0x277D85DE8];
  *v7 = a2;
  *&v7[1] = a3;
  *&v7[2] = a4;
  *&v7[3] = a5;
  if (sRGBColorSpace_once != -1)
  {
    +[UIColor(PCXColorAdditions) pcxColorWithSRGBRed:green:blue:alpha:];
  }

  return [self pcxColorWithColorSpace:sRGBColorSpace_result components:v7 count:4];
}

+ (uint64_t)pcxColorWithGenericGamma22White:()PCXColorAdditions alpha:
{
  v5[2] = *MEMORY[0x277D85DE8];
  *v5 = a2;
  *&v5[1] = a3;
  if (GenericGrayGamma22ColorSpace_once != -1)
  {
    +[UIColor(PCXColorAdditions) pcxColorWithGenericGamma22White:alpha:];
  }

  return [self pcxColorWithColorSpace:GenericGrayGamma22ColorSpace_result components:v5 count:2];
}

+ (uint64_t)pcxColorWithCalibratedWhite:()PCXColorAdditions alpha:
{
  v5[2] = *MEMORY[0x277D85DE8];
  *v5 = a2;
  *&v5[1] = a3;
  if (CalibratedGray_once != -1)
  {
    +[UIColor(PCXColorAdditions) pcxColorWithCalibratedWhite:alpha:];
  }

  return [self pcxColorWithColorSpace:CalibratedGray_result components:v5 count:2];
}

+ (uint64_t)pcxColorWithDeviceWhite:()PCXColorAdditions alpha:
{
  v5[2] = *MEMORY[0x277D85DE8];
  *v5 = a2;
  *&v5[1] = a3;
  if (DeviceRGB_once != -1)
  {
    +[UIColor(PCXColorAdditions) pcxColorWithDeviceWhite:alpha:];
  }

  return [self pcxColorWithColorSpace:DeviceRGB_result components:v5 count:2];
}

+ (uint64_t)pcxColorWithDeviceRed:()PCXColorAdditions green:blue:alpha:
{
  v7[4] = *MEMORY[0x277D85DE8];
  *v7 = a2;
  *&v7[1] = a3;
  *&v7[2] = a4;
  *&v7[3] = a5;
  if (DeviceRGB_once != -1)
  {
    +[UIColor(PCXColorAdditions) pcxColorWithDeviceWhite:alpha:];
  }

  return [self pcxColorWithColorSpace:DeviceRGB_result components:v7 count:4];
}

+ (uint64_t)pcxColorWithDeviceHue:()PCXColorAdditions saturation:brightness:alpha:
{
  if (DeviceRGB_once != -1)
  {
    +[UIColor(PCXColorAdditions) pcxColorWithDeviceWhite:alpha:];
  }

  v10 = DeviceRGB_result;

  return [self pcxColorWithColorSpace:v10 hue:a2 saturation:a3 brightness:a4 alpha:a5];
}

+ (uint64_t)pcxColorWithCalibratedRed:()PCXColorAdditions green:blue:alpha:
{
  v7[4] = *MEMORY[0x277D85DE8];
  *v7 = a2;
  *&v7[1] = a3;
  *&v7[2] = a4;
  *&v7[3] = a5;
  if (CalibratedRGB_once != -1)
  {
    +[UIColor(PCXColorAdditions) pcxColorWithCalibratedRed:green:blue:alpha:];
  }

  return [self pcxColorWithColorSpace:CalibratedRGB_result components:v7 count:4];
}

+ (uint64_t)pcxColorWithCalibratedHue:()PCXColorAdditions saturation:brightness:alpha:
{
  if (CalibratedRGB_once != -1)
  {
    +[UIColor(PCXColorAdditions) pcxColorWithCalibratedRed:green:blue:alpha:];
  }

  v10 = CalibratedRGB_result;

  return [self pcxColorWithColorSpace:v10 hue:a2 saturation:a3 brightness:a4 alpha:a5];
}

+ (uint64_t)pcxColorWithColorSpace:()PCXColorAdditions components:count:
{
  if (CGColorSpaceGetNumberOfComponents(space) + 1 != a5)
  {
    return 0;
  }

  v7 = CGColorCreate(space, a4);
  v8 = [MEMORY[0x277D75348] colorWithCGColor:v7];
  CFRelease(v7);
  return v8;
}

+ (uint64_t)pcxColorWithColorSpace:()PCXColorAdditions hue:saturation:brightness:alpha:
{
  v30 = *MEMORY[0x277D85DE8];
  *&a2 = a2;
  v7 = a3;
  v8 = a4;
  v9 = vaddq_f32(vdupq_lane_s32(*&a2, 0), xmmword_26034D9F0);
  v10 = v9;
  v10.i32[3] = 0;
  v11 = vsubq_f32(v9, vrndmq_f32(v10));
  v11.i32[3] = 0;
  __asm { FMOV            V4.4S, #6.0 }

  v17 = vmulq_f32(vminnmq_f32(v11, xmmword_26034DA00), _Q4);
  __asm { FMOV            V4.4S, #-3.0 }

  v19 = vabsq_f32(vaddq_f32(v17, _Q4));
  __asm { FMOV            V4.4S, #-1.0 }

  v21 = vaddq_f32(v19, _Q4);
  v21.i32[3] = 0;
  v22 = vmaxnmq_f32(v21, 0);
  v22.i32[3] = 0;
  v23 = vmulq_n_f32(vaddq_f32(vminnmq_f32(v22, xmmword_260344BA0), _Q4), v7);
  __asm { FMOV            V1.4S, #1.0 }

  v25 = vmulq_n_f32(vaddq_f32(v23, _Q1), v8);
  v27 = vcvtq_f64_f32(*v25.f32);
  v28 = v25.f32[2];
  v29 = a5;
  return [self pcxColorWithColorSpace:a7 components:&v27 count:4];
}

@end