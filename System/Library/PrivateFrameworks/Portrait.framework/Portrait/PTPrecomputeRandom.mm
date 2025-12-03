@interface PTPrecomputeRandom
+ (PTUnitDisk)computeUnitDiskPoints:numberOfPatternCircles:;
+ (id)computeGaussian:(id)gaussian sideLength:(int)length;
+ (id)computeRandomUChars:(id)chars rayCount:(int)count;
@end

@implementation PTPrecomputeRandom

+ (PTUnitDisk)computeUnitDiskPoints:numberOfPatternCircles:
{
  v2 = v1;
  v28 = *MEMORY[0x277D85DE8];
  v3 = v0;
  v27[0] = 0;
  if (v2 < 1)
  {
    v5 = 1;
  }

  else
  {
    v4 = 0.0;
    v5 = 1;
    v6 = 1.0;
    v7 = 1;
    do
    {
      v8 = round(3.14159265 / asin(v6 / (v7 + v7)));
      if (v8 > 0.0)
      {
        if (v7)
        {
          v9 = -1.0;
        }

        else
        {
          v9 = v6;
        }

        v10 = v4;
        v11 = &v27[v5] + 1;
        v12 = 1;
        v13 = v7 / v2;
        do
        {
          v4 = v10 + (v12 - 1) * 6.28318531 / v8 * v9;
          v14 = __sincosf_stret(v4);
          _S1 = v13 * v14.__cosval;
          __asm { FCVT            H1, S1 }

          *(v11 - 1) = LOWORD(_S1);
          _S0 = v13 * v14.__sinval;
          __asm { FCVT            H0, S0 }

          *v11 = LOWORD(_S0);
          v21 = v12;
          v11 += 2;
          ++v5;
          ++v12;
        }

        while (v21 < v8);
      }

      _ZF = v7++ == v2;
      v6 = 1.0;
    }

    while (!_ZF);
  }

  device = [v3 device];
  v23 = [device newBufferWithBytes:v27 length:4 * v5 options:0];

  _D0 = 0.5 / v2;
  __asm { FCVT            H0, D0 }

  v25 = v5 | (LODWORD(_D0) << 32);
  v26 = v23;
  result.rayCount = v25;
  result.xy = v26;
  return result;
}

+ (id)computeRandomUChars:(id)chars rayCount:(int)count
{
  v34 = *MEMORY[0x277D85DE8];
  charsCopy = chars;
  v6 = 0;
  v7 = xmmword_2244C5EC0;
  v8 = xmmword_2244C5ED0;
  v9 = xmmword_2244C5EE0;
  v10 = xmmword_2244C5EF0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = vdupq_n_s32(count);
  v26 = 0u;
  v27 = 0u;
  v12.i64[0] = 0x1000000010;
  v12.i64[1] = 0x1000000010;
  do
  {
    v13 = vmulq_s32(v10, v11);
    v14 = vmulq_s32(v9, v11);
    v15 = vmulq_s32(v8, v11);
    v16 = vmulq_s32(v7, v11);
    *v13.i8 = vshr_n_u16(vmovn_s32(vsraq_n_u32(v13, vcltzq_s32(v13), 0x19uLL)), 7uLL);
    v13.u64[1] = vshr_n_u16(vmovn_s32(vsraq_n_u32(v14, vcltzq_s32(v14), 0x19uLL)), 7uLL);
    *v14.i8 = vshr_n_u16(vmovn_s32(vsraq_n_u32(v15, vcltzq_s32(v15), 0x19uLL)), 7uLL);
    v14.u64[1] = vshr_n_u16(vmovn_s32(vsraq_n_u32(v16, vcltzq_s32(v16), 0x19uLL)), 7uLL);
    *(&v26 + v6) = vuzp1q_s8(v13, v14);
    v6 += 16;
    v10 = vaddq_s32(v10, v12);
    v9 = vaddq_s32(v9, v12);
    v8 = vaddq_s32(v8, v12);
    v7 = vaddq_s32(v7, v12);
  }

  while (v6 != 128);
  v17 = [PTRandom alloc];
  v18 = [(PTRandom *)v17 initWithSeed:0x7FFFFFFFLL, v26, v27, v28, v29, v30, v31, v32, v33];
  v19 = 127;
  do
  {
    v20 = [(PTRandom *)v18 nextUint:v19];
    v21 = *(&v26 + v19);
    *(&v26 + v19) = *(&v26 + v20);
    *(&v26 + v20) = v21;
  }

  while (v19-- > 1);
  device = [charsCopy device];
  v24 = [device newBufferWithBytes:&v26 length:128 options:0];

  return v24;
}

+ (id)computeGaussian:(id)gaussian sideLength:(int)length
{
  gaussianCopy = gaussian;
  LODWORD(v6) = length * length;
  v7 = [MEMORY[0x277CBEB28] dataWithLength:(2 * length * length)];
  bytes = [v7 bytes];
  v9 = [[PTRandom alloc] initWithSeed:2354123123];
  if (length)
  {
    if (v6 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v6;
    }

    v10 = bytes;
    do
    {
      [(PTRandom *)v9 nextGauss];
      __asm { FCVT            H0, D0 }

      *v10++ = _D0;
      --v6;
    }

    while (v6);
  }

  v16 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:25 width:length height:length mipmapped:0];
  [v16 setUsage:1];
  device = [gaussianCopy device];
  v18 = [device newTextureWithDescriptor:v16];

  memset(v20, 0, 24);
  v20[3] = length;
  v20[4] = length;
  v20[5] = 1;
  [v18 replaceRegion:v20 mipmapLevel:0 withBytes:bytes bytesPerRow:2 * length];

  return v18;
}

@end