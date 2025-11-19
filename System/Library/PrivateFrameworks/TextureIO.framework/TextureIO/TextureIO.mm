uint64_t pixelBytes(uint64_t a1)
{
  if (a1 <= 551)
  {
    v1 = a1 - 1;
    result = 1;
    switch(v1)
    {
      case 0:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
        return result;
      case 19:
      case 21:
      case 22:
      case 23:
      case 24:
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
      case 39:
      case 40:
      case 41:
      case 42:
        return 2;
      case 52:
      case 53:
      case 54:
      case 59:
      case 61:
      case 62:
      case 63:
      case 64:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 79:
      case 80:
      case 89:
      case 90:
      case 91:
      case 92:
        return 4;
      case 102:
      case 103:
      case 104:
      case 109:
      case 111:
      case 112:
      case 113:
      case 114:
        return 8;
      case 122:
      case 123:
      case 124:
        return 16;
      default:
        goto LABEL_11;
    }
  }

  if ((a1 - 552) < 2)
  {
    return 8;
  }

  if ((a1 - 554) < 2)
  {
    return 4;
  }

  if ((a1 - 2147483649) >= 2)
  {
LABEL_11:
    pixelBytes_cold_1();
  }

  return 3;
}

TXRImageIndependent *newScaledImageWithLancosFilter(void *a1, void *a2, uint64_t a3, void *a4, __n128 a5)
{
  v8 = a1;
  v9 = a2;
  [v8 dimensions];
  if (v10 >= 2)
  {
    if (a4)
    {
      v11 = @"Mipmap Generation of 3D textures not suppoted";
      v12 = 0;
LABEL_7:
      _newTXRErrorWithCodeAndErrorString(v12, v11);
      *a4 = v13 = 0;
      goto LABEL_19;
    }

LABEL_8:
    v13 = 0;
    goto LABEL_19;
  }

  if (+[TXRPixelFormatInfo isCompressed:](TXRPixelFormatInfo, "isCompressed:", [v8 pixelFormat]))
  {
    if (a4)
    {
      v11 = @"Cannot scale image with pixel format";
      v12 = 8;
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      newScaledImageWithLancosFilter_cold_2();
    }

    flags = 32;
  }

  else
  {
    flags = 0;
  }

  v14 = +[TXRPixelFormatInfo packedMemoryLayoutForFormat:dimensions:](TXRPixelFormatInfo, "packedMemoryLayoutForFormat:dimensions:", [v8 pixelFormat], a5.n128_f64[0]);
  v16 = v15;
  v17 = [v9 newBufferWithLength:v15];
  v33 = [v17 map];
  v18 = [v33 bytes];
  v19 = [v8 buffer];
  v20 = [v19 map];

  v21 = [v20 bytes];
  dest.data = v18;
  v22.i64[0] = a5.n128_u32[0];
  v22.i64[1] = a5.n128_u32[1];
  *&dest.height = vextq_s8(v22, v22, 8uLL);
  dest.rowBytes = v14;
  src.data = (v21 + [v8 offset]);
  [v8 dimensions];
  src.height = v23;
  [v8 dimensions];
  src.width = v24;
  src.rowBytes = [v8 bytesPerRow];
  v25 = [v8 pixelFormat];
  if (v25 == 80 || v25 == 70)
  {
    v26 = vImageScale_ARGB8888(&src, &dest, 0, flags);
LABEL_16:
    if (v26)
    {
      newScaledImageWithLancosFilter_cold_1();
    }

    v13 = -[TXRImageIndependent initWithDimensions:pixelFormat:alphaInfo:bytesPerRow:bytesPerImage:buffer:offset:]([TXRImageIndependent alloc], "initWithDimensions:pixelFormat:alphaInfo:bytesPerRow:bytesPerImage:buffer:offset:", [v8 pixelFormat], objc_msgSend(v8, "alphaInfo"), v14, v16, v17, 0, a5.n128_f64[0]);
    goto LABEL_18;
  }

  if ([v8 pixelFormat] == 110)
  {
    v26 = vImageScale_ARGB16U(&src, &dest, 0, flags);
    goto LABEL_16;
  }

  if ([v8 pixelFormat] == 112)
  {
    v26 = vImageScale_ARGB16S(&src, &dest, 0, flags);
    goto LABEL_16;
  }

  if ([v8 pixelFormat] == 125)
  {
    v26 = vImageScale_ARGBFFFF(&src, &dest, 0, flags);
    goto LABEL_16;
  }

  if ([v8 pixelFormat] == 55)
  {
    v26 = vImageScale_PlanarF(&src, &dest, 0, flags);
    goto LABEL_16;
  }

  v28 = [v8 pixelFormat];
  if (v28 == 10 || v28 == 1)
  {
    v26 = vImageScale_Planar8(&src, &dest, 0, flags);
    goto LABEL_16;
  }

  v29 = objc_alloc_init(TXRDefaultBufferAllocator);
  v30 = [TXRDataConverter newImageFromSourceImage:v8 newPixelFormat:125 bufferAllocator:v29 multiplyAlpha:0 gammaDegamma:1 error:a4];
  v31 = newScaledImageWithLancosFilter(v30, v9, a3, a4, a5);

  v13 = +[TXRDataConverter newImageFromSourceImage:newPixelFormat:bufferAllocator:multiplyAlpha:gammaDegamma:error:](TXRDataConverter, "newImageFromSourceImage:newPixelFormat:bufferAllocator:multiplyAlpha:gammaDegamma:error:", v31, [v8 pixelFormat], v9, 0, 1, a4);
LABEL_18:

LABEL_19:

  return v13;
}

id _newTXRErrorWithCodeAndErrorString(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObject:a2 forKey:@"TXRErrorKey"];
  v4 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TXRErrorDomain" code:a1 userInfo:v3];

  return v4;
}

id _newTXRErrorWithCodeAndUserInfo(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = a2;
  v5 = [[v3 alloc] initWithDomain:@"TXRErrorDomain" code:a1 userInfo:v4];

  return v5;
}

id _newTXRErrorWithCode(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TXRErrorDomain" code:a1 userInfo:0];

  return v1;
}

uint64_t fastConvert(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *__dst, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (a1)
  {
    if (a2)
    {
      return fastConvertWithOptions<true,true>(a3, a4, a5, __dst, a7, a8, a9, a10);
    }

    else
    {
      return fastConvertWithOptions<true,false>(a3, a4, a5, __dst, a7, a8, a9, a10);
    }
  }

  else if (a2)
  {
    return fastConvertWithOptions<false,true>(a3, a4, a5, __dst, a7, a8, a9, a10);
  }

  else
  {
    return fastConvertWithOptions<false,false>(a3, a4, a5, __dst, a7, a8, a9, a10);
  }
}

float convertFromFloat4Fast<(TXRPixelFormat)71,true>(uint64_t a1, float32x4_t a2)
{
  __asm { FMOV            V1.4S, #1.0 }

  v8 = vminnmq_f32(vmaxnmq_f32(a2, 0), _Q1);
  v9 = -v8.f32[0];
  if (v8.f32[0] >= 0.0)
  {
    v9 = v8.f32[0];
  }

  v10 = v9;
  v29 = v8;
  if (v10 <= 0.003131)
  {
    v11 = v10 * 12.92;
  }

  else
  {
    v11 = pow(v10, 0.416666667) * 1.055 + -0.055;
    v8 = v29;
  }

  v12 = v11;
  if (v8.f32[0] < 0.0)
  {
    v12 = -v12;
  }

  **a1 = (v12 * 255.0);
  v13 = v8.f32[1];
  v14 = -v8.f32[1];
  if (v8.f32[1] >= 0.0)
  {
    v14 = v8.f32[1];
  }

  v15 = v14;
  if (v15 <= 0.003131)
  {
    v16 = v15 * 12.92;
  }

  else
  {
    v16 = pow(v15, 0.416666667) * 1.055 + -0.055;
    v8.i64[1] = v29.i64[1];
  }

  v17 = v16;
  if (v13 < 0.0)
  {
    v17 = -v17;
  }

  *(*a1 + 1) = (v17 * 255.0);
  v18 = v8.f32[2];
  v19 = -v8.f32[2];
  if (v8.f32[2] >= 0.0)
  {
    v19 = v8.f32[2];
  }

  v20 = v19;
  if (v20 <= 0.003131)
  {
    v21 = v20 * 12.92;
  }

  else
  {
    v21 = pow(v20, 0.416666667) * 1.055 + -0.055;
    v8.i32[3] = v29.i32[3];
  }

  v22 = v21;
  if (v18 < 0.0)
  {
    v22 = -v22;
  }

  *(*a1 + 2) = (v22 * 255.0);
  v23 = v8.f32[3];
  v24 = -v8.f32[3];
  if (v8.f32[3] >= 0.0)
  {
    v24 = v8.f32[3];
  }

  v25 = v24;
  if (v25 <= 0.003131)
  {
    v26 = v25 * 12.92;
  }

  else
  {
    v26 = pow(v25, 0.416666667) * 1.055 + -0.055;
  }

  v27 = v26;
  if (v23 < 0.0)
  {
    v27 = -v27;
  }

  result = v27 * 255.0;
  *(*a1 + 3) = result;
  *a1 += 4;
  return result;
}

float convertFromFloat4Fast<(TXRPixelFormat)81,true>(uint64_t a1, float32x4_t a2)
{
  __asm { FMOV            V1.4S, #1.0 }

  v8 = vminnmq_f32(vmaxnmq_f32(a2, 0), _Q1);
  v9 = v8.f32[2];
  v10 = -v8.f32[2];
  if (v8.f32[2] >= 0.0)
  {
    v10 = v8.f32[2];
  }

  v11 = v10;
  v29 = v8;
  if (v11 <= 0.003131)
  {
    v12 = v11 * 12.92;
  }

  else
  {
    v12 = pow(v11, 0.416666667) * 1.055 + -0.055;
    v8 = v29;
  }

  v13 = v12;
  if (v9 < 0.0)
  {
    v13 = -v13;
  }

  **a1 = (v13 * 255.0);
  v14 = v8.f32[1];
  v15 = -v8.f32[1];
  if (v8.f32[1] >= 0.0)
  {
    v15 = v8.f32[1];
  }

  v16 = v15;
  if (v16 <= 0.003131)
  {
    v17 = v16 * 12.92;
  }

  else
  {
    v17 = pow(v16, 0.416666667) * 1.055 + -0.055;
    v8 = v29;
  }

  v18 = v17;
  if (v14 < 0.0)
  {
    v18 = -v18;
  }

  *(*a1 + 1) = (v18 * 255.0);
  v19 = -v8.f32[0];
  if (v8.f32[0] >= 0.0)
  {
    v19 = v8.f32[0];
  }

  v20 = v19;
  if (v20 <= 0.003131)
  {
    v21 = v20 * 12.92;
  }

  else
  {
    v21 = pow(v20, 0.416666667) * 1.055 + -0.055;
    v8 = v29;
  }

  v22 = v21;
  if (v8.f32[0] < 0.0)
  {
    v22 = -v22;
  }

  *(*a1 + 2) = (v22 * 255.0);
  v23 = v8.f32[3];
  v24 = -v8.f32[3];
  if (v8.f32[3] >= 0.0)
  {
    v24 = v8.f32[3];
  }

  v25 = v24;
  if (v25 <= 0.003131)
  {
    v26 = v25 * 12.92;
  }

  else
  {
    v26 = pow(v25, 0.416666667) * 1.055 + -0.055;
  }

  v27 = v26;
  if (v23 < 0.0)
  {
    v27 = -v27;
  }

  result = v27 * 255.0;
  *(*a1 + 3) = result;
  *a1 += 4;
  return result;
}

uint64_t RGBFloat32ToShareExponent32(int8x16_t a1)
{
  v1 = 65408.0;
  if (*a1.i32 < 65408.0)
  {
    v1 = *a1.i32;
  }

  if (*a1.i32 <= 0.0)
  {
    v2 = 0.0;
  }

  else
  {
    v2 = v1;
  }

  v3 = vext_s8(*a1.i8, *&vextq_s8(a1, a1, 8uLL), 4uLL);
  v4 = vdup_n_s32(0x477F8000u);
  v5 = vand_s8(vbsl_s8(vcge_f32(v3, v4), v4, v3), vcgtz_f32(v3));
  v6 = *&v5.i32[1];
  v21 = v5;
  if (*v5.i32 >= *&v5.i32[1])
  {
    v6 = *v5.i32;
  }

  if (v6 <= v2)
  {
    v7 = v2;
  }

  else
  {
    v7 = v6;
  }

  if ((LODWORD(v7) >> 23) - 127 <= 0xFFFFFFF0)
  {
    v8 = -16;
  }

  else
  {
    v8 = (LODWORD(v7) >> 23) - 127;
  }

  v9 = exp2((v8 - 8));
  v10 = vcvtmd_s64_f64(v7 / v9 + 0.5);
  if (v10 == 512)
  {
    v9 = v9 + v9;
    v11 = v8 + 17;
  }

  else
  {
    if (v10 >= 0x200)
    {
      RGBFloat32ToShareExponent32();
    }

    v11 = v8 + 16;
  }

  v12 = vcvtmd_s64_f64(v2 / v9 + 0.5);
  if (v12 >= 0x200)
  {
    RGBFloat32ToShareExponent32();
  }

  __asm { FMOV            V1.2D, #0.5 }

  v18 = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vaddq_f64(vdivq_f64(vcvtq_f64_f32(v21), vdupq_lane_s64(*&v9, 0)), _Q1))));
  if (v18.i32[0] >= 0x200u)
  {
    RGBFloat32ToShareExponent32();
  }

  if (v18.i32[1] >= 0x200u)
  {
    RGBFloat32ToShareExponent32();
  }

  v19 = vshl_u32(v18, 0x1200000009);
  return vorr_s8(v19, vdup_lane_s32(v19, 1)).u32[0] | (v11 << 27) | v12;
}

BOOL writeContentsJsonAtPath(void *a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a2;
  v7 = a1;
  v8 = [[v5 alloc] initWithFormat:@"%@/Contents.json", v6];

  v9 = [objc_alloc(MEMORY[0x277CBEB78]) initToFileAtPath:v8 append:0];
  [v9 open];
  v10 = [MEMORY[0x277CCAAA0] writeJSONObject:v7 toStream:v9 options:1 error:a3];

  [v9 close];
  return v10 != 0;
}

uint64_t componentsPerPixel(uint64_t a1)
{
  if (a1 <= 551)
  {
    v1 = a1 - 1;
    result = 1;
    switch(v1)
    {
      case 0:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 19:
      case 21:
      case 22:
      case 23:
      case 24:
      case 52:
      case 53:
      case 54:
        return result;
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
      case 59:
      case 61:
      case 62:
      case 63:
      case 64:
      case 102:
      case 103:
      case 104:
        return 2;
      case 39:
      case 91:
      case 92:
        return 3;
      case 40:
      case 41:
      case 42:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 79:
      case 80:
      case 89:
      case 90:
      case 109:
      case 111:
      case 112:
      case 113:
      case 114:
      case 122:
      case 123:
      case 124:
        return 4;
      default:
        goto LABEL_9;
    }
  }

  if ((a1 - 552) < 2)
  {
    return 4;
  }

  if ((a1 - 554) >= 2 && (a1 - 2147483649) >= 2)
  {
LABEL_9:
    componentsPerPixel_cold_1();
  }

  return 3;
}

uint64_t isSRGB(uint64_t a1)
{
  result = 1;
  if (a1 <= 552)
  {
    if (((a1 - 150) > 0x32 || ((1 << (a1 + 106)) & 0x7FDF2A002A809) == 0) && ((a1 - 81) > 0x36 || ((1 << (a1 - 81)) & 0x54100400001801) == 0))
    {
      v3 = a1 - 11;
      if (v3 > 0x3C || ((1 << v3) & 0x1040100000104001) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (a1 <= 2147483669)
    {
      if (a1 == 553 || a1 == 555)
      {
        return result;
      }

      return 0;
    }

    if (a1 != 2147483670 && a1 != 2147483686)
    {
      return 0;
    }
  }

  return result;
}

uint64_t isGammaEncoded(uint64_t a1)
{
  result = 1;
  if (a1 <= 152)
  {
    if ((a1 - 81) > 0x36 || ((1 << (a1 - 81)) & 0x54000000000001) == 0)
    {
      v3 = a1 - 11;
      if (v3 > 0x3C || ((1 << v3) & 0x1000000000100001) == 0)
      {
        return 0;
      }
    }
  }

  else if (((a1 - 153) > 0x2F || ((1 << (a1 + 103)) & 0xFFBE54005501) == 0) && a1 != 553 && a1 != 555)
  {
    return 0;
  }

  return result;
}

unint64_t getMemoryLayout(uint64_t a1, float a2)
{
  v2 = (a1 - 130) > 0xD || ((1 << (a1 + 126)) & 0x3C3F) == 0;
  if (!v2 || (a1 - 150) < 4 || (a1 & 0xFFFFFFFFFFFFFFF8) == 0xA0)
  {
LABEL_5:
    v3 = 17040392;
    switch(a1)
    {
      case 130:
      case 131:
      case 140:
      case 141:
      case 162:
      case 163:
      case 166:
      case 167:
      case 170:
      case 172:
      case 180:
      case 181:
      case 182:
      case 183:
        return (LODWORD(a2) + ((v3 >> 8) & 0xF) - 1) / ((v3 >> 8) & 0xF) * (v3 & 0x18);
      case 132:
      case 133:
      case 134:
      case 135:
      case 142:
      case 143:
      case 150:
      case 151:
      case 152:
      case 153:
      case 174:
      case 176:
      case 178:
      case 179:
      case 186:
      case 204:
        v3 = 17040400;
        return (LODWORD(a2) + ((v3 >> 8) & 0xF) - 1) / ((v3 >> 8) & 0xF) * (v3 & 0x18);
      case 160:
      case 161:
      case 164:
      case 165:
        v3 = 17041416;
        return (LODWORD(a2) + ((v3 >> 8) & 0xF) - 1) / ((v3 >> 8) & 0xF) * (v3 & 0x18);
      case 187:
      case 205:
        v3 = 17040656;
        return (LODWORD(a2) + ((v3 >> 8) & 0xF) - 1) / ((v3 >> 8) & 0xF) * (v3 & 0x18);
      case 188:
      case 206:
        v3 = 17106192;
        return (LODWORD(a2) + ((v3 >> 8) & 0xF) - 1) / ((v3 >> 8) & 0xF) * (v3 & 0x18);
      case 189:
      case 207:
        v3 = 17106448;
        return (LODWORD(a2) + ((v3 >> 8) & 0xF) - 1) / ((v3 >> 8) & 0xF) * (v3 & 0x18);
      case 190:
      case 208:
        v3 = 17171984;
        return (LODWORD(a2) + ((v3 >> 8) & 0xF) - 1) / ((v3 >> 8) & 0xF) * (v3 & 0x18);
      case 192:
      case 210:
        v3 = 17106960;
        return (LODWORD(a2) + ((v3 >> 8) & 0xF) - 1) / ((v3 >> 8) & 0xF) * (v3 & 0x18);
      case 193:
      case 211:
        v5 = 17171984;
        goto LABEL_16;
      case 194:
      case 212:
        v3 = 17303568;
        return (LODWORD(a2) + ((v3 >> 8) & 0xF) - 1) / ((v3 >> 8) & 0xF) * (v3 & 0x18);
      case 195:
      case 213:
        v3 = 17104912;
        return (LODWORD(a2) + ((v3 >> 8) & 0xF) - 1) / ((v3 >> 8) & 0xF) * (v3 & 0x18);
      case 196:
      case 214:
        v3 = 17173008;
        return (LODWORD(a2) + ((v3 >> 8) & 0xF) - 1) / ((v3 >> 8) & 0xF) * (v3 & 0x18);
      case 197:
      case 215:
        v3 = 17304080;
        return (LODWORD(a2) + ((v3 >> 8) & 0xF) - 1) / ((v3 >> 8) & 0xF) * (v3 & 0x18);
      case 198:
      case 216:
        v3 = 17435152;
        return (LODWORD(a2) + ((v3 >> 8) & 0xF) - 1) / ((v3 >> 8) & 0xF) * (v3 & 0x18);
      case 199:
      case 217:
        v5 = 17435152;
LABEL_16:
        v3 = v5 + 512;
        break;
      case 200:
      case 218:
        v3 = 17566736;
        break;
      default:
        +[TXRPixelFormatInfo packedMemoryLayoutForFormat:dimensions:];
    }

    return (LODWORD(a2) + ((v3 >> 8) & 0xF) - 1) / ((v3 >> 8) & 0xF) * (v3 & 0x18);
  }

  else
  {
    if (a1 <= 551)
    {
      v4 = 1;
      switch(a1)
      {
        case 1:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
          return v4 * LODWORD(a2);
        case 20:
        case 22:
        case 23:
        case 24:
        case 25:
        case 30:
        case 31:
        case 32:
        case 33:
        case 34:
        case 40:
        case 41:
        case 42:
        case 43:
          v4 = 2;
          return v4 * LODWORD(a2);
        case 53:
        case 54:
        case 55:
        case 60:
        case 62:
        case 63:
        case 64:
        case 65:
        case 70:
        case 71:
        case 72:
        case 73:
        case 74:
        case 80:
        case 81:
        case 90:
        case 91:
        case 92:
        case 93:
          goto LABEL_11;
        case 103:
        case 104:
        case 105:
        case 110:
        case 112:
        case 113:
        case 114:
        case 115:
          goto LABEL_34;
        case 123:
        case 124:
        case 125:
          v4 = 16;
          return v4 * LODWORD(a2);
        case 170:
        case 172:
        case 174:
        case 176:
        case 178:
        case 179:
        case 180:
        case 181:
        case 182:
        case 183:
        case 186:
        case 187:
        case 188:
        case 189:
        case 190:
        case 192:
        case 193:
        case 194:
        case 195:
        case 196:
        case 197:
        case 198:
        case 199:
        case 200:
        case 204:
        case 205:
        case 206:
        case 207:
        case 208:
        case 210:
        case 211:
        case 212:
        case 213:
        case 214:
        case 215:
        case 216:
        case 217:
        case 218:
          goto LABEL_5;
        default:
          goto LABEL_38;
      }
    }

    if ((a1 - 552) < 2)
    {
LABEL_34:
      v4 = 8;
    }

    else if ((a1 - 554) < 2)
    {
LABEL_11:
      v4 = 4;
    }

    else
    {
      if ((a1 - 2147483649) >= 2)
      {
LABEL_38:
        pixelBytes_cold_1();
      }

      v4 = 3;
    }

    return v4 * LODWORD(a2);
  }
}

void slowConvert(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, int32x4_t _Q1, int8x16_t _Q2, __n128 a12, uint64_t a13, float16x4_t *a14)
{
  v281 = a9.n128_u32[2];
  if (a9.n128_u32[2])
  {
    v16 = a2;
    v18 = 0;
    v294 = a9.n128_u32[1];
    v19 = a9.n128_u32[0];
    v290 = a3 & 0xFFFFFFFFFFFFFFFDLL;
    v291 = a9.n128_u32[0];
    if (a9.n128_u32[0] <= 1)
    {
      v19 = 1;
    }

    v289 = v19;
    v20 = 0uLL;
    _Q0 = xmmword_26F041F80;
    v22 = 31.0;
    v297 = a3 - 2147483649;
    while (1)
    {
      v283 = v18;
      if (v294)
      {
        break;
      }

LABEL_588:
      a6 += a5;
      a14 = (a14 + a13);
      v18 = v283 + 1;
      if (v283 + 1 == v281)
      {
        return;
      }
    }

    v23 = 0;
    v298 = a6;
    v299 = a14;
    while (1)
    {
      v295 = v23;
      if (v291)
      {
        break;
      }

LABEL_587:
      v298 += a4;
      v299 = (v299 + a8);
      v23 = v295 + 1;
      if (v295 + 1 == v294)
      {
        goto LABEL_588;
      }
    }

    if (a7 <= 64)
    {
      if (a7 <= 0x3E)
      {
        v24 = v289;
        v25 = v298;
        v26 = v299;
        if (((1 << a7) & 0x50800F01C2501C02) != 0)
        {
          goto LABEL_16;
        }
      }

LABEL_595:
      slowConvert_cold_6();
    }

    if ((a7 - 65) > 0x3C || (v24 = v289, v25 = v298, v26 = v299, ((1 << (a7 - 65)) & 0x1004A1001A0180E1) == 0))
    {
      v24 = v289;
      v25 = v298;
      v26 = v299;
      if ((a7 - 552) >= 4)
      {
        v24 = v289;
        v25 = v298;
        v26 = v299;
        if ((a7 - 2147483649) > 1)
        {
          goto LABEL_595;
        }
      }
    }

LABEL_16:
    while (a7 > 69)
    {
      if (a7 > 109)
      {
        if (a7 <= 552)
        {
          if (a7 > 114)
          {
            if (a7 == 115)
            {
              _Q6 = vcvtq_f32_f16(*v26);
            }

            else
            {
              if (a7 != 552)
              {
                goto LABEL_139;
              }

              v45.i32[0] = v26->i32[1];
              v45.i32[1] = HIWORD(v26->i32[0]);
              *_Q6.f32 = vdiv_f32(vcvt_f32_s32(vadd_s32(vand_s8(v45, 0x300000003), vdup_n_s32(0xFFFFFE80))), vdup_n_s32(0x43FF0000u));
              _Q6.f32[2] = ((v26->i32[0] & 0x3FF) - 384) / 510.0;
              v46 = ((HIWORD(v45.i32[0]) & 0x3FF) - 384);
LABEL_192:
              v124 = v46 / 510.0;
              v125 = 0.0;
              if (v124 >= 0.0)
              {
                v125 = v124;
              }

              _Q2.i32[0] = 1.0;
              if (v124 <= 1.0)
              {
                v126 = v125;
              }

              else
              {
                v126 = 1.0;
              }

              _Q6.f32[3] = v126;
            }
          }

          else if (a7 == 110)
          {
            _Q6 = vdivq_f32(vcvtq_f32_u32(vmovl_u16(*v26)), vdupq_n_s32(0x477FFF00u));
          }

          else
          {
            if (a7 != 112)
            {
              goto LABEL_139;
            }

            v38 = vdivq_f32(vcvtq_f32_s32(vmovl_s16(*v26)), vdupq_n_s32(0x46FFFE00u));
            __asm { FMOV            V1.4S, #-1.0 }

            _Q2 = vcgtq_f32(_Q1, v38);
            _Q6 = vbslq_s8(_Q2, _Q1, v38);
          }

LABEL_198:
          v76 = 8;
          goto LABEL_250;
        }

        if (a7 <= 554)
        {
          if (a7 == 553)
          {
            v64 = v26->u32[1];
            v65 = (v64 & 0x3FF) - 384;
            a12.n128_f32[0] = v65 / 510.0;
            if (v16)
            {
              v66 = -a12.n128_f32[0];
              if (a12.n128_f32[0] >= 0.0)
              {
                v66 = v65 / 510.0;
              }

              v67 = v66;
              if (v67 <= 0.04045)
              {
                v68 = v67 / 12.92;
              }

              else
              {
                v302 = a12;
                v68 = pow((v67 + 0.055) / 1.055, 2.4);
                a12 = v302;
              }

              v102 = v68;
              if (a12.n128_f32[0] >= 0.0)
              {
                v103 = v102;
              }

              else
              {
                v103 = -v102;
              }

              v104 = v26->i32[0];
              v105 = (HIWORD(v26->i32[0]) & 0x3FF) - 384;
              v106 = v105 / 510.0;
              v107 = -v106;
              if (v106 >= 0.0)
              {
                v107 = v105 / 510.0;
              }

              v108 = v107;
              v304 = v103;
              if (v108 <= 0.04045)
              {
                v109 = v108 / 12.92;
              }

              else
              {
                v109 = pow((v108 + 0.055) / 1.055, 2.4);
              }

              v112 = v109;
              if (v106 >= 0.0)
              {
                *_Q2.i32 = v112;
              }

              else
              {
                *_Q2.i32 = -v112;
              }

              v113 = (v104 & 0x3FF) - 384;
              v114 = v113 / 510.0;
              v115 = -v114;
              if (v114 >= 0.0)
              {
                v115 = v113 / 510.0;
              }

              v116 = v115;
              if (v116 <= 0.04045)
              {
                v117 = v116 / 12.92;
              }

              else
              {
                v287 = _Q2;
                v117 = pow((v116 + 0.055) / 1.055, 2.4);
                _Q2 = v287;
              }

              v16 = a2;
              _Q6.i64[0] = __PAIR64__(_Q2.u32[0], LODWORD(v304));
              v123 = v117;
              if (v114 < 0.0)
              {
                v123 = -v123;
              }

              _Q6.f32[2] = v123;
              v20 = 0uLL;
            }

            else
            {
              _Q6.f32[0] = v65 / 510.0;
              _Q6.f32[1] = ((HIWORD(v26->i32[0]) & 0x3FF) - 384) / 510.0;
              _Q6.f32[2] = ((v26->i32[0] & 0x3FF) - 384) / 510.0;
            }

            v46 = ((HIWORD(v64) & 0x3FF) - 384);
            goto LABEL_192;
          }

          *_Q6.f32 = vdiv_f32(vcvt_f32_s32(vadd_s32(vand_s8(vshl_u32(vdup_n_s32(v26->i32[0]), 0xFFFFFFF6FFFFFFECLL), 0x300000003), vdup_n_s32(0xFFFFFE80))), vdup_n_s32(0x43FF0000u));
          _Q6.f32[2] = ((v26->i32[0] & 0x3FF) - 384) / 510.0;
        }

        else
        {
          if (a7 != 555)
          {
            if (a7 == 2147483649)
            {
              _Q0.i8[0] = v26->i8[0];
              _Q0.f32[0] = _Q0.u32[0] / 255.0;
              _Q2.i8[0] = v26->i8[1];
              *_Q2.i32 = _Q2.u32[0] / 255.0;
              __asm { FMOV            V6.4S, #1.0 }

              _Q6.i32[0] = _Q0.i32[0];
              _Q0.i8[0] = v26->i8[2];
              goto LABEL_120;
            }

            if (a7 == 2147483650)
            {
              _Q0.i8[0] = v26->i8[2];
              _Q0.f32[0] = _Q0.u32[0] / 255.0;
              _Q2.i8[0] = v26->i8[1];
              *_Q2.i32 = _Q2.u32[0] / 255.0;
              __asm { FMOV            V6.4S, #1.0 }

              _Q6.i32[0] = _Q0.i32[0];
              _Q0.i8[0] = v26->i8[0];
LABEL_120:
              _Q6.i32[1] = _Q2.i32[0];
              _Q6.f32[2] = _Q0.u32[0] / 255.0;
              v76 = 3;
              goto LABEL_250;
            }

LABEL_139:
            _Q6 = *v26->i8;
            v76 = 16;
            goto LABEL_250;
          }

          v84 = v26->i32[0];
          v85 = ((v26->i32[0] >> 20) & 0x3FF) - 384;
          a12.n128_f32[0] = v85 / 510.0;
          if (v16)
          {
            v86 = -a12.n128_f32[0];
            if (a12.n128_f32[0] >= 0.0)
            {
              v86 = v85 / 510.0;
            }

            v87 = v86;
            if (v87 <= 0.04045)
            {
              v88 = v87 / 12.92;
            }

            else
            {
              v303 = a12;
              v88 = pow((v87 + 0.055) / 1.055, 2.4);
              a12 = v303;
            }

            v131 = v88;
            if (a12.n128_f32[0] >= 0.0)
            {
              v132 = v131;
            }

            else
            {
              v132 = -v131;
            }

            v133 = ((v84 >> 10) & 0x3FF) - 384;
            v134 = v133 / 510.0;
            v135 = -v134;
            if (v134 >= 0.0)
            {
              v135 = v133 / 510.0;
            }

            v136 = v135;
            v305 = v132;
            if (v136 <= 0.04045)
            {
              v137 = v136 / 12.92;
            }

            else
            {
              v137 = pow((v136 + 0.055) / 1.055, 2.4);
            }

            v138 = v137;
            if (v134 >= 0.0)
            {
              *_Q2.i32 = v138;
            }

            else
            {
              *_Q2.i32 = -v138;
            }

            v139 = (v84 & 0x3FF) - 384;
            v140 = v139 / 510.0;
            v141 = -v140;
            if (v140 >= 0.0)
            {
              v141 = v139 / 510.0;
            }

            v142 = v141;
            if (v142 <= 0.04045)
            {
              v143 = v142 / 12.92;
            }

            else
            {
              v288 = _Q2;
              v143 = pow((v142 + 0.055) / 1.055, 2.4);
              _Q2 = v288;
            }

            _Q6.i64[0] = __PAIR64__(_Q2.u32[0], LODWORD(v305));
            v144 = v143;
            if (v140 < 0.0)
            {
              v144 = -v144;
            }

            _Q6.f32[2] = v144;
            v20 = 0uLL;
          }

          else
          {
            *_Q2.i32 = ((v26->i32[0] & 0x3FF) - 384);
            _Q6.f32[0] = v85 / 510.0;
            _Q6.f32[1] = (((v84 >> 10) & 0x3FF) - 384) / 510.0;
            _Q6.f32[2] = *_Q2.i32 / 510.0;
          }
        }

LABEL_133:
        _Q6.i32[3] = 1.0;
        goto LABEL_249;
      }

      if (a7 <= 80)
      {
        if (a7 > 71)
        {
          if (a7 == 72)
          {
            _Q0.i32[0] = v26->i32[0];
            v54 = vdivq_f32(vcvtq_f32_s32(vmovl_s16(*&vmovl_s8(*_Q0.f32))), vdupq_n_s32(0x42FE0000u));
            __asm { FMOV            V1.4S, #-1.0 }

            _Q2 = vcgtq_f32(_Q1, v54);
            _Q6 = vbslq_s8(_Q2, _Q1, v54);
          }

          else
          {
            if (a7 != 80)
            {
              goto LABEL_139;
            }

            _Q0.i32[0] = v26->i32[0];
            v40 = vrev64q_s32(vdivq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*_Q0.f32))), vdupq_n_s32(0x437F0000u)));
LABEL_141:
            _Q6 = vextq_s8(v40, v40, 0xCuLL);
          }

          goto LABEL_249;
        }

        if (a7 == 70)
        {
          _Q0.i32[0] = v26->i32[0];
          v49 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*_Q0.f32)));
          v50 = vdupq_n_s32(0x437F0000u);
          goto LABEL_92;
        }

        _Q0.i32[0] = v26->i32[0];
        _Q6 = vdivq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*_Q0.f32))), vdupq_n_s32(0x437F0000u));
        if (!v16)
        {
          goto LABEL_249;
        }

        v34 = _Q6.f32[0];
        v300 = _Q6;
        if (_Q6.f32[0] <= 0.04045)
        {
          v36 = v34 / 12.92;
        }

        else
        {
          v35 = pow((v34 + 0.055) / 1.055, 2.4);
          _Q6 = v300;
          v36 = v35;
        }

        v93 = _Q6.f32[1];
        if (_Q6.f32[1] <= 0.04045)
        {
          v95 = v93 / 12.92;
        }

        else
        {
          v94 = pow((v93 + 0.055) / 1.055, 2.4);
          _Q6.i64[1] = v300.i64[1];
          v95 = v94;
        }

        v96 = _Q6.f32[2];
        if (_Q6.f32[2] <= 0.04045)
        {
          v98 = v96 / 12.92;
        }

        else
        {
          v97 = pow((v96 + 0.055) / 1.055, 2.4);
          _Q6.i32[3] = v300.i32[3];
          v98 = v97;
        }

        v99 = _Q6.f32[3];
      }

      else
      {
        if (a7 > 91)
        {
          if (a7 != 92)
          {
            if (a7 != 93)
            {
              if (a7 != 105)
              {
                goto LABEL_139;
              }

              *_Q6.f32 = *v26;
              _Q6.i64[1] = 0x3F80000000000000;
              goto LABEL_198;
            }

            v70 = v26->i32[0];
            v71 = ldexp(1.0, (v26->i32[0] >> 27) - 24);
            v20 = 0uLL;
            *&v71 = v71;
            v72 = (v70 & 0x1FF) * *&v71;
            *_Q2.i8 = vdup_n_s32(v70);
            v16 = a2;
            a12.n128_u32[1] = 1;
            *_Q2.i8 = vcvt_f32_u32(vand_s8(vshl_u32(*_Q2.i8, 0xFFFFFFEEFFFFFFF7), 0x100000001));
            __asm { FMOV            V6.4S, #1.0 }

            _Q6.f32[0] = v72;
            *&_Q6.i32[1] = vmul_n_f32(*_Q2.i8, *&v71);
            goto LABEL_249;
          }

          v78 = v26->i32[0];
          v79 = v26->i32[0] >> 21;
          v80 = v79 & 0x3F;
          v81 = v79 & 0x7C0;
          if ((v79 & 0x7C0) != 0)
          {
            if (v81 == 1792)
            {
              v82 = NAN;
              if ((v79 & 0x3F) == 0)
              {
                v82 = INFINITY;
              }

LABEL_227:
              v145 = (v78 >> 11) & 0x3F;
              v146 = (v78 >> 11) & 0x7C0;
              if (v146)
              {
                if (v146 == 1792)
                {
                  v147 = NAN;
                  _Q2.i32[0] = 2139095040;
                  if (!v145)
                  {
                    v147 = INFINITY;
                  }

                  goto LABEL_240;
                }

                v152 = (v146 << 17) + 939524096;
              }

              else
              {
                v148 = __clz(v145);
                v149 = v78 >> 11 << (6 - (v148 ^ 0x1F));
                v150 = 1157627904 - (v148 << 23);
                v151 = v149 & 0x3E;
                if (v145)
                {
                  v152 = v150;
                }

                else
                {
                  v152 = 0;
                }

                if (v145)
                {
                  v145 = v151;
                }

                else
                {
                  v145 = 0;
                }
              }

              LODWORD(v147) = v152 | (v145 << 17);
LABEL_240:
              v153 = v26->i32[0] & 0x1F;
              if ((v78 & 0x3E0) != 0)
              {
                v154 = ((v26->i32[0] & 0x3E0) << 18) + 939524096;
              }

              else
              {
                v155 = __clz(v153);
                v156 = v78 << (5 - (v155 ^ 0x1F));
                v157 = 1166016512 - (v155 << 23);
                v158 = v156 & 0x1E;
                if (v153)
                {
                  v154 = v157;
                }

                else
                {
                  v154 = 0;
                }

                if (v153)
                {
                  v153 = v158;
                }

                else
                {
                  v153 = 0;
                }
              }

              __asm { FMOV            V6.4S, #1.0 }

              _Q6.i64[0] = __PAIR64__(LODWORD(v147), LODWORD(v82));
              _Q6.i32[2] = v154 | (v153 << 18);
              goto LABEL_249;
            }

            v91 = (v81 << 17) + 939524096;
          }

          else if ((v79 & 0x3F) != 0)
          {
            v89 = __clz(v80);
            v90 = v79 << (6 - (v89 ^ 0x1F));
            v91 = 1157627904 - (v89 << 23);
            v80 = v90 & 0x3E;
          }

          else
          {
            v91 = 0;
          }

          LODWORD(v82) = v91 | (v80 << 17);
          goto LABEL_227;
        }

        if (a7 != 81)
        {
          if (a7 != 90)
          {
            goto LABEL_139;
          }

          _Q1.i32[0] = v26->i32[0];
          _Q1.i32[1] = v26->i32[0] >> 10;
          _Q1.i32[2] = v26->i32[0] >> 20;
          _Q2.i64[0] = 0x300000003;
          _Q2.i64[1] = 0x300000003;
          v48 = vandq_s8(_Q1, _Q2);
          v48.i32[3] = vshrq_n_u32(vdupq_n_s32(*v26), 0x1EuLL).i32[3];
          v49 = vcvtq_f32_u32(v48);
          v50 = xmmword_26F041770;
LABEL_92:
          _Q6 = vdivq_f32(v49, v50);
LABEL_249:
          v76 = 4;
          goto LABEL_250;
        }

        _Q0.i32[0] = v26->i32[0];
        v58 = vdivq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*_Q0.f32))), vdupq_n_s32(0x437F0000u));
        if (!v16)
        {
          v40 = vrev64q_s32(v58);
          goto LABEL_141;
        }

        v59 = *&v58.i32[2];
        v301 = v58;
        if (*&v58.i32[2] <= 0.04045)
        {
          v36 = v59 / 12.92;
        }

        else
        {
          v60 = pow((v59 + 0.055) / 1.055, 2.4);
          v58 = v301;
          v36 = v60;
        }

        v100 = *&v58.i32[1];
        if (*&v58.i32[1] <= 0.04045)
        {
          v95 = v100 / 12.92;
        }

        else
        {
          v101 = pow((v100 + 0.055) / 1.055, 2.4);
          v58 = v301;
          v95 = v101;
        }

        v110 = *v58.i32;
        if (*v58.i32 <= 0.04045)
        {
          v98 = v110 / 12.92;
        }

        else
        {
          v111 = pow((v110 + 0.055) / 1.055, 2.4);
          v58.i32[3] = v301.i32[3];
          v98 = v111;
        }

        v99 = *&v58.i32[3];
      }

      v118 = v99;
      if (v118 <= 0.04045)
      {
        v119 = v118 / 12.92;
      }

      else
      {
        v119 = pow((v118 + 0.055) / 1.055, 2.4);
      }

      _Q6.f32[0] = v36;
      v120 = v95;
      _Q6.f32[1] = v120;
      v121 = v98;
      _Q6.f32[2] = v121;
      v122 = v119;
      _Q6.f32[3] = v122;
      v76 = 4;
      v20 = 0uLL;
LABEL_250:
      _Q0 = vmulq_laneq_f32(_Q6, _Q6, 3);
      if (a1)
      {
        v159 = -1;
      }

      else
      {
        v159 = 0;
      }

      _Q1 = vdupq_n_s32(v159);
      _Q4 = vbslq_s8(_Q1, _Q0, _Q6);
      _Q4.i32[3] = _Q6.i32[3];
      if (a3 <= 0x3E)
      {
        if (((1 << a3) & 0x10000F00C0100C02) != 0)
        {
          goto LABEL_261;
        }

        if (((1 << a3) & 0x4000000100401000) != 0)
        {
          goto LABEL_259;
        }
      }

      v161 = a3 - 70;
      if ((a3 - 70) <= 0x2A)
      {
        if (((1 << v161) & 0x10000100C03) != 0)
        {
          goto LABEL_261;
        }

        if (((1 << v161) & 0x40000000004) != 0)
        {
LABEL_259:
          __asm { FMOV            V0.4S, #-1.0 }

          _Q0 = vmaxnmq_f32(_Q4, _Q0);
          goto LABEL_262;
        }
      }

      if (v297 < 2)
      {
LABEL_261:
        _Q0 = vmaxnmq_f32(_Q4, v20);
LABEL_262:
        __asm { FMOV            V1.4S, #1.0 }

LABEL_263:
        _Q4 = vminnmq_f32(_Q0, _Q1);
        goto LABEL_264;
      }

      if (v290 == 553)
      {
        _Q0 = vmaxnmq_f32(_Q4, xmmword_26F041750);
        _Q1 = xmmword_26F041760;
        goto LABEL_263;
      }

      if (v290 == 552)
      {
        _Q0 = vmaxnmq_f32(_Q4, xmmword_26F041F90);
        _Q1 = xmmword_26F041FA0;
        goto LABEL_263;
      }

LABEL_264:
      if (a3 <= 69)
      {
        if (a3 > 31)
        {
          if (a3 <= 42)
          {
            if (a3 <= 40)
            {
              if (a3 == 32)
              {
                v197 = 127.0;
                goto LABEL_407;
              }

              if (a3 != 40)
              {
                goto LABEL_594;
              }

              *_Q0.f32 = vshl_u32(vcvt_s32_f32(vmul_f32(*_Q4.f32, 0x427C000041F80000)), 0x50000000BLL);
              v170 = _Q0.i32[1] | vmuls_lane_f32(v22, _Q4, 2) | _Q0.i32[0];
LABEL_397:
              *v25 = v170;
              goto LABEL_530;
            }

            if (a3 != 41)
            {
              _Q0 = vextq_s8(_Q4, _Q4, 4uLL);
              __asm { FMOV            V1.2S, #15.0 }

              *_Q0.f32 = vshl_u32(vcvt_s32_f32(vmul_f32(*_Q0.f32, _D1)), 0x400000008);
              _D1.i32[0] = vmuls_lane_f32(15.0, _Q4, 3);
              _D1.i32[1] = (15.0 * _Q4.f32[0]) << 12;
              *_Q0.f32 = vorr_s8(*_Q0.f32, _D1);
              *_Q0.f32 = vorr_s8(vdup_lane_s32(*_Q0.f32, 1), *_Q0.f32);
              LOWORD(v170) = _Q0.i16[0];
              goto LABEL_397;
            }

            _Q0 = vextq_s8(_Q4, _Q4, 8uLL);
            __asm { FMOV            V1.2S, #31.0 }

            *_Q0.f32 = vshl_u32(vcvt_s32_f32(vmul_f32(vzip1_s32(*_Q4.f32, *_Q0.f32), _D1)), 0x10000000BLL);
            v201 = _Q0.i16[2];
            v170 = _Q4.f32[3] | (vmuls_lane_f32(v22, *_Q4.f32, 1) << 6);
          }

          else
          {
            if (a3 > 59)
            {
              switch(a3)
              {
                case '<':
                  *v25 = (65535.0 * _Q4.f32[0]);
                  _Q0.f32[0] = vmuls_lane_f32(65535.0, *_Q4.f32, 1);
                  break;
                case '>':
                  *v25 = (32767.0 * _Q4.f32[0]);
                  _Q0.f32[0] = vmuls_lane_f32(32767.0, *_Q4.f32, 1);
                  break;
                case 'A':
                  __asm { FCVT            H0, S4 }

                  *v25 = _H0;
                  _Q0.i32[0] = _Q4.i32[1];
                  __asm { FCVT            H0, S0 }

                  *(v25 + 2) = _Q0.i16[0];
                  goto LABEL_585;
                default:
                  goto LABEL_594;
              }

              *(v25 + 2) = _Q0.f32[0];
LABEL_585:
              v202 = 4;
              goto LABEL_586;
            }

            if (a3 != 43)
            {
              if (a3 != 55)
              {
LABEL_594:
                slowConvert_cold_5();
              }

              *v25 = _Q4.i32[0];
              goto LABEL_585;
            }

            __asm { FMOV            V0.2S, #31.0 }

            *_Q0.f32 = vshl_u32(vcvt_s32_f32(vmul_f32(*_Q4.f32, _D0)), 0x50000000ALL);
            v201 = _Q0.i16[2];
            v170 = vmuls_lane_f32(v22, _Q4, 2) | (_Q4.f32[3] << 15);
          }

          LOWORD(v170) = v170 | _Q0.i16[0] | v201;
          goto LABEL_397;
        }

        if (a3 > 19)
        {
          if (a3 > 24)
          {
            if (a3 == 25)
            {
              __asm { FCVT            H0, S4 }

              *v25 = _Q0.i16[0];
              goto LABEL_530;
            }

            if (a3 != 30)
            {
              if (a3 != 31)
              {
                goto LABEL_594;
              }

              if (v16)
              {
                v164 = -_Q4.f32[0];
                if (_Q4.f32[0] >= 0.0)
                {
                  v164 = _Q4.f32[0];
                }

                v165 = v164;
                if (v165 <= 0.003131)
                {
                  *_Q0.i64 = v165 * 12.92;
                }

                else
                {
                  v306 = _Q4.i64[0];
                  *_Q0.i64 = pow(v165, 0.416666667);
                  _Q4.i64[0] = v306;
                  *_Q0.i64 = *_Q0.i64 * 1.055 + -0.055;
                }

                v259 = *_Q0.i64;
                if (_Q4.f32[0] < 0.0)
                {
                  v259 = -v259;
                }

                *v25 = (v259 * 255.0);
                v260 = _Q4.f32[1];
                v261 = -_Q4.f32[1];
                if (_Q4.f32[1] >= 0.0)
                {
                  v261 = _Q4.f32[1];
                }

                v262 = v261;
                if (v262 <= 0.003131)
                {
                  *_Q0.i64 = v262 * 12.92;
                }

                else
                {
                  *_Q0.i64 = pow(v262, 0.416666667) * 1.055 + -0.055;
                }

                v20 = 0uLL;
                v220 = *_Q0.i64;
                if (v260 < 0.0)
                {
                  v220 = -v220;
                }
              }

              else
              {
                *v25 = (_Q4.f32[0] * 255.0);
                v220 = _Q4.f32[1];
              }

              _Q0.f32[0] = v220 * 255.0;
LABEL_529:
              *(v25 + 1) = _Q0.f32[0];
LABEL_530:
              v202 = 2;
              goto LABEL_586;
            }

            v197 = 255.0;
LABEL_407:
            *v25 = (v197 * _Q4.f32[0]);
            _Q0.f32[0] = vmuls_lane_f32(v197, *_Q4.f32, 1);
            goto LABEL_529;
          }

          if (a3 == 20)
          {
            _Q0.f32[0] = 65535.0 * _Q4.f32[0];
          }

          else
          {
            if (a3 != 22)
            {
              goto LABEL_594;
            }

            _Q0.f32[0] = 32767.0 * _Q4.f32[0];
          }

          v170 = _Q0.f32[0];
          goto LABEL_397;
        }

        if (a3 > 10)
        {
          if (a3 == 11)
          {
            if (v16)
            {
              v198 = -_Q4.f32[0];
              if (_Q4.f32[0] >= 0.0)
              {
                v198 = _Q4.f32[0];
              }

              v199 = v198;
              if (v199 <= 0.003131)
              {
                *_Q0.i64 = v199 * 12.92;
              }

              else
              {
                v311 = _Q4.i32[0];
                *_Q0.i64 = pow(v199, 0.416666667);
                _Q4.i32[0] = v311;
                v20 = 0uLL;
                *_Q0.i64 = *_Q0.i64 * 1.055 + -0.055;
              }

              v258 = *_Q0.i64;
              if (_Q4.f32[0] >= 0.0)
              {
                _Q4.f32[0] = v258;
              }

              else
              {
                _Q4.f32[0] = -v258;
              }
            }

            _Q0.f32[0] = _Q4.f32[0] * 255.0;
          }

          else
          {
            if (a3 != 12)
            {
              goto LABEL_594;
            }

            v169 = 127.0;
LABEL_331:
            _Q0.f32[0] = v169 * _Q4.f32[0];
          }
        }

        else
        {
          if (a3 != 1)
          {
            if (a3 != 10)
            {
              goto LABEL_594;
            }

            v169 = 255.0;
            goto LABEL_331;
          }

          _Q0.f32[0] = vmuls_lane_f32(255.0, _Q4, 3);
        }

        *v25 = _Q0.f32[0];
        v202 = 1;
        goto LABEL_586;
      }

      if (a3 <= 109)
      {
        if (a3 <= 80)
        {
          if (a3 > 71)
          {
            if (a3 == 72)
            {
              v179 = vdupq_n_s32(0x42FE0000u);
              goto LABEL_345;
            }

            if (a3 != 80)
            {
              goto LABEL_594;
            }

            _Q0 = vcvtq_s32_f32(vmulq_f32(_Q4, vdupq_n_s32(0x437F0000u)));
            *_Q0.f32 = vrev32_s16(vmovn_s32(_Q0));
            *_Q0.f32 = vext_s8(*_Q0.f32, *_Q0.f32, 6uLL);
          }

          else
          {
            if (a3 != 70)
            {
              if (!v16)
              {
                *v25 = (_Q4.f32[0] * 255.0);
                *(v25 + 1) = vmuls_lane_f32(255.0, *_Q4.f32, 1);
                v210 = vmuls_lane_f32(255.0, _Q4, 2);
                goto LABEL_414;
              }

              v167 = -_Q4.f32[0];
              if (_Q4.f32[0] >= 0.0)
              {
                v167 = _Q4.f32[0];
              }

              v168 = v167;
              v307 = _Q4;
              if (v168 <= 0.003131)
              {
                *_Q0.i64 = v168 * 12.92;
              }

              else
              {
                *_Q0.i64 = pow(v168, 0.416666667);
                _Q4 = v307;
                *_Q0.i64 = *_Q0.i64 * 1.055 + -0.055;
              }

              v223 = *_Q0.i64;
              if (_Q4.f32[0] < 0.0)
              {
                v223 = -v223;
              }

              *v25 = (v223 * 255.0);
              v224 = _Q4.f32[1];
              v225 = -_Q4.f32[1];
              if (_Q4.f32[1] >= 0.0)
              {
                v225 = _Q4.f32[1];
              }

              v226 = v225;
              if (v226 <= 0.003131)
              {
                *_Q0.i64 = v226 * 12.92;
              }

              else
              {
                *_Q0.i64 = pow(v226, 0.416666667);
                _Q4.i64[1] = v307.i64[1];
                *_Q0.i64 = *_Q0.i64 * 1.055 + -0.055;
              }

              v227 = *_Q0.i64;
              if (v224 < 0.0)
              {
                v227 = -v227;
              }

              *(v25 + 1) = (v227 * 255.0);
              v228 = _Q4.f32[2];
              v229 = -_Q4.f32[2];
              if (_Q4.f32[2] >= 0.0)
              {
                v229 = _Q4.f32[2];
              }

              v230 = v229;
              if (v230 <= 0.003131)
              {
                *_Q0.i64 = v230 * 12.92;
              }

              else
              {
                *_Q0.i64 = pow(v230, 0.416666667);
                _Q4.i32[3] = v307.i32[3];
                *_Q0.i64 = *_Q0.i64 * 1.055 + -0.055;
              }

              v231 = *_Q0.i64;
              v232 = -v231;
              _NF = v228 < 0.0;
LABEL_467:
              if (_NF)
              {
                v231 = v232;
              }

              *(v25 + 2) = (v231 * 255.0);
              v241 = _Q4.f32[3];
              v242 = -_Q4.f32[3];
              if (_Q4.f32[3] >= 0.0)
              {
                v242 = _Q4.f32[3];
              }

              v243 = v242;
              if (v243 <= 0.003131)
              {
                *_Q0.i64 = v243 * 12.92;
              }

              else
              {
                *_Q0.i64 = pow(v243, 0.416666667) * 1.055 + -0.055;
              }

              v20 = 0uLL;
              v211 = *_Q0.i64;
              if (v241 < 0.0)
              {
                v211 = -v211;
              }

LABEL_476:
              _Q0.f32[0] = v211 * 255.0;
              *(v25 + 3) = _Q0.f32[0];
              goto LABEL_585;
            }

            v179 = vdupq_n_s32(0x437F0000u);
LABEL_345:
            _Q0 = vcvtq_s32_f32(vmulq_f32(_Q4, v179));
            *_Q0.f32 = vmovn_s32(_Q0);
          }

          *_Q0.f32 = vuzp1_s8(*_Q0.f32, *_Q0.f32);
          *v25 = _Q0.i32[0];
          goto LABEL_585;
        }

        if (a3 <= 91)
        {
          if (a3 != 81)
          {
            if (a3 != 90)
            {
              goto LABEL_594;
            }

            v171 = (1023.0 * _Q4.f32[0]);
            _Q0 = vextq_s8(_Q4, _Q4, 8uLL);
            _Q4.i32[0] = _Q0.i32[1];
            *_Q0.f32 = vshl_u32(vcvt_s32_f32(vmul_f32(*_Q4.f32, 0x447FC00040400000)), 0xA0000001ELL);
            v172 = _Q0.i32[1];
            v173 = _Q0.i32[0] | (v171 << 20) | v171;
LABEL_557:
            v177 = v173 | v172;
LABEL_584:
            *v25 = v177;
            goto LABEL_585;
          }

          v180 = _Q4.f32[2];
          if (v16)
          {
            v181 = -_Q4.f32[2];
            if (_Q4.f32[2] >= 0.0)
            {
              v181 = _Q4.f32[2];
            }

            v182 = v181;
            v308 = _Q4;
            if (v182 <= 0.003131)
            {
              *_Q0.i64 = v182 * 12.92;
            }

            else
            {
              *_Q0.i64 = pow(v182, 0.416666667);
              _Q4 = v308;
              *_Q0.i64 = *_Q0.i64 * 1.055 + -0.055;
            }

            v234 = *_Q0.i64;
            if (v180 < 0.0)
            {
              v234 = -v234;
            }

            *v25 = (v234 * 255.0);
            v235 = _Q4.f32[1];
            v236 = -_Q4.f32[1];
            if (_Q4.f32[1] >= 0.0)
            {
              v236 = _Q4.f32[1];
            }

            v237 = v236;
            if (v237 <= 0.003131)
            {
              *_Q0.i64 = v237 * 12.92;
            }

            else
            {
              *_Q0.i64 = pow(v237, 0.416666667);
              _Q4 = v308;
              *_Q0.i64 = *_Q0.i64 * 1.055 + -0.055;
            }

            v238 = *_Q0.i64;
            if (v235 < 0.0)
            {
              v238 = -v238;
            }

            *(v25 + 1) = (v238 * 255.0);
            v239 = -_Q4.f32[0];
            if (_Q4.f32[0] >= 0.0)
            {
              v239 = _Q4.f32[0];
            }

            v240 = v239;
            if (v240 <= 0.003131)
            {
              *_Q0.i64 = v240 * 12.92;
            }

            else
            {
              *_Q0.i64 = pow(v240, 0.416666667);
              _Q4 = v308;
              *_Q0.i64 = *_Q0.i64 * 1.055 + -0.055;
            }

            v231 = *_Q0.i64;
            v232 = -v231;
            _NF = _Q4.f32[0] < 0.0;
            goto LABEL_467;
          }

          *v25 = (_Q4.f32[2] * 255.0);
          *(v25 + 1) = vmuls_lane_f32(255.0, *_Q4.f32, 1);
          v210 = 255.0 * _Q4.f32[0];
LABEL_414:
          *(v25 + 2) = v210;
          v211 = _Q4.f32[3];
          goto LABEL_476;
        }

        if (a3 == 92)
        {
          if (_Q4.i32[2] < 0)
          {
            v206 = 0;
          }

          else
          {
            v203 = _Q4.i32[2] & 0x7F800000;
            v204 = _Q4.i32[2] & 0x7FFFFF;
            if ((_Q4.i32[2] & 0x7F800000u) <= 0x477FFFFF)
            {
              if (v203 >= 0x38000001)
              {
                v206 = ((v203 - 939524096) | v204) >> 18;
              }

              else
              {
                v206 = v204 >> (((939524096 - v203) >> 23) + 19);
              }
            }

            else if (v203 != 2139095040 || v204 == 0)
            {
              v206 = 992;
            }

            else
            {
              v206 = 1023;
            }
          }

          if (_Q4.i32[1] < 0)
          {
            v276 = 0;
          }

          else
          {
            v273 = _Q4.i32[1] & 0x7F800000;
            v274 = _Q4.i32[1] & 0x7FFFFF;
            if ((_Q4.i32[1] & 0x7F800000u) <= 0x477FFFFF)
            {
              if (v273 >= 0x38000001)
              {
                v276 = ((v273 - 939524096) | v274) >> 17;
              }

              else
              {
                v276 = v274 >> (((939524096 - v273) >> 23) + 18);
              }
            }

            else if (v273 != 2139095040 || v274 == 0)
            {
              v276 = 1984;
            }

            else
            {
              v276 = 2047;
            }
          }

          if (_Q4.i32[0] < 0)
          {
            v280 = 0;
          }

          else
          {
            v277 = _Q4.i32[0] & 0x7F800000;
            v278 = _Q4.i32[0] & 0x7FFFFF;
            if ((_Q4.i32[0] & 0x7F800000u) <= 0x477FFFFF)
            {
              if (v277 >= 0x38000001)
              {
                v280 = ((v277 - 939524096) | v278) >> 17;
              }

              else
              {
                v280 = v278 >> (((939524096 - v277) >> 23) + 18);
              }
            }

            else if (v277 != 2139095040 || v278 == 0)
            {
              v280 = 1984;
            }

            else
            {
              v280 = 2047;
            }
          }

          v177 = (v206 << 22) + (v276 << 11) + v280;
          goto LABEL_584;
        }

        if (a3 == 93)
        {
          v186 = 65408.0;
          if (_Q4.f32[0] < 65408.0)
          {
            v186 = _Q4.f32[0];
          }

          if (_Q4.f32[0] <= 0.0)
          {
            v187 = 0.0;
          }

          else
          {
            v187 = v186;
          }

          v188 = vextq_s8(_Q4, _Q4, 4uLL).u64[0];
          v189 = vdup_n_s32(0x477F8000u);
          v190 = vand_s8(vbsl_s8(vcge_f32(v188, v189), v189, v188), vcgtz_f32(v188));
          v191 = *&v190.i32[1];
          v310 = v190;
          if (*v190.i32 >= *&v190.i32[1])
          {
            v191 = *v190.i32;
          }

          if (v191 <= v187)
          {
            v192 = v187;
          }

          else
          {
            v192 = v191;
          }

          if ((LODWORD(v192) >> 23) - 127 <= 0xFFFFFFF0)
          {
            v193 = -16;
          }

          else
          {
            v193 = (LODWORD(v192) >> 23) - 127;
          }

          v194 = exp2((v193 - 8));
          _Q2.i64[0] = 0.5;
          v195 = vcvtmd_s64_f64(v192 / v194 + 0.5);
          if (v195 == 512)
          {
            v194 = v194 + v194;
            v196 = v193 + 17;
          }

          else
          {
            if (v195 >= 0x200)
            {
              RGBFloat32ToShareExponent32();
            }

            v196 = v193 + 16;
          }

          v218 = vcvtmd_s64_f64(v187 / v194 + 0.5);
          v16 = a2;
          if (v218 >= 0x200)
          {
            RGBFloat32ToShareExponent32();
          }

          __asm { FMOV            V1.2D, #0.5 }

          _Q0 = vcvtq_s64_f64(vrndmq_f64(vaddq_f64(vdivq_f64(vcvtq_f64_f32(v310), vdupq_lane_s64(*&v194, 0)), _Q1)));
          *_Q0.f32 = vmovn_s64(_Q0);
          if (_Q0.i32[0] >= 0x200u)
          {
            RGBFloat32ToShareExponent32();
          }

          if (_Q0.i32[1] >= 0x200u)
          {
            RGBFloat32ToShareExponent32();
          }

          v219 = vshl_u32(*_Q0.f32, 0x1200000009);
          *_Q0.f32 = vorr_s8(v219, vdup_lane_s32(v219, 1));
          *v25 = _Q0.i32[0] | (v196 << 27) | v218;
          v202 = 4;
          v20 = 0uLL;
          goto LABEL_586;
        }

        if (a3 != 105)
        {
          goto LABEL_594;
        }

        *v25 = _Q4.i64[0];
        goto LABEL_400;
      }

      if (a3 > 552)
      {
        if (a3 <= 554)
        {
          if (a3 == 553)
          {
            v183 = _Q4.f32[2];
            if (v16)
            {
              v184 = -_Q4.f32[2];
              if (_Q4.f32[2] >= 0.0)
              {
                v184 = _Q4.f32[2];
              }

              v185 = v184;
              v309 = _Q4;
              if (v185 <= 0.003131)
              {
                *_Q0.i64 = v185 * 12.92;
              }

              else
              {
                *_Q0.i64 = pow(v185, 0.416666667);
                _Q4 = v309;
                *_Q0.i64 = *_Q0.i64 * 1.055 + -0.055;
              }

              v244 = *_Q0.i64;
              if (v183 < 0.0)
              {
                v244 = -v244;
              }

              if (((v244 * 510.0) + 384.0) >= 0x3FF)
              {
                v245 = 1023;
              }

              else
              {
                v245 = ((v244 * 510.0) + 384.0);
              }

              v246 = _Q4.f32[1];
              v247 = -_Q4.f32[1];
              if (_Q4.f32[1] >= 0.0)
              {
                v247 = _Q4.f32[1];
              }

              v248 = v247;
              if (v248 <= 0.003131)
              {
                *_Q0.i64 = v248 * 12.92;
              }

              else
              {
                *_Q0.i64 = pow(v248, 0.416666667);
                _Q4 = v309;
                *_Q0.i64 = *_Q0.i64 * 1.055 + -0.055;
              }

              v249 = *_Q0.i64;
              if (v246 < 0.0)
              {
                v249 = -v249;
              }

              v250 = ((v249 * 510.0) + 384.0);
              if (v250 >= 0x3FF)
              {
                v250 = 1023;
              }

              *v25 = v245 | (v250 << 16);
              v251 = -_Q4.f32[0];
              if (_Q4.f32[0] >= 0.0)
              {
                v251 = _Q4.f32[0];
              }

              v252 = v251;
              if (v252 <= 0.003131)
              {
                *_Q0.i64 = v252 * 12.92;
              }

              else
              {
                *_Q0.i64 = pow(v252, 0.416666667);
                _Q4 = v309;
                *_Q0.i64 = *_Q0.i64 * 1.055 + -0.055;
              }

              v253 = *_Q0.i64;
              if (_Q4.f32[0] < 0.0)
              {
                v253 = -v253;
              }

              if (((v253 * 510.0) + 384.0) >= 0x3FF)
              {
                v216 = 1023;
              }

              else
              {
                v216 = ((v253 * 510.0) + 384.0);
              }

              v254 = _Q4.f32[3];
              v255 = -_Q4.f32[3];
              if (_Q4.f32[3] >= 0.0)
              {
                v255 = _Q4.f32[3];
              }

              v256 = v255;
              if (v256 <= 0.003131)
              {
                *_Q0.i64 = v256 * 12.92;
              }

              else
              {
                *_Q0.i64 = pow(v256, 0.416666667) * 1.055 + -0.055;
              }

              v20 = 0uLL;
              v217 = *_Q0.i64;
              if (v254 < 0.0)
              {
                v217 = -v217;
              }
            }

            else
            {
              _S1 = 1140785152;
              v213 = ((_Q4.f32[2] * 510.0) + 384.0);
              if (v213 >= 0x3FF)
              {
                v213 = 1023;
              }

              __asm { FMLA            S0, S1, V4.S[1] }

              v215 = _S0;
              if (_S0 >= 0x3FF)
              {
                v215 = 1023;
              }

              *v25 = v213 | (v215 << 16);
              if (((_Q4.f32[0] * 510.0) + 384.0) >= 0x3FF)
              {
                v216 = 1023;
              }

              else
              {
                v216 = ((_Q4.f32[0] * 510.0) + 384.0);
              }

              v217 = _Q4.f32[3];
            }

            _Q2.i32[0] = 1140785152;
            _Q0.f32[0] = (v217 * 510.0) + 384.0;
            v257 = _Q0.f32[0];
            if (_Q0.f32[0] >= 0x3FF)
            {
              v257 = 1023;
            }

            *(v25 + 4) = v216 | (v257 << 16);
            v202 = 8;
            v16 = a2;
            goto LABEL_586;
          }

          _S0 = 1140785152;
          __asm { FMLA            S2, S0, V4.S[2] }

          v175 = vshl_u32(vmin_u32(vcvt_s32_f32(vmla_f32(vdup_n_s32(0x43C00000u), vdup_n_s32(0x43FF0000u), *_Q4.f32)), 0x300000003), 0xA00000014);
          *_Q0.f32 = vorr_s8(v175, vdup_lane_s32(v175, 1));
          v176 = *_Q2.i32;
          if (*_Q2.i32 >= 0x3FF)
          {
            v176 = 1023;
          }

          v177 = _Q0.i32[0] | v176;
          goto LABEL_584;
        }

        if (a3 != 555)
        {
          if (a3 == 2147483649)
          {
            *v25 = (255.0 * _Q4.f32[0]);
            *(v25 + 1) = vmuls_lane_f32(255.0, *_Q4.f32, 1);
            _Q0.f32[0] = vmuls_lane_f32(255.0, _Q4, 2);
          }

          else
          {
            if (a3 != 2147483650)
            {
              goto LABEL_594;
            }

            *v25 = vmuls_lane_f32(255.0, _Q4, 2);
            *(v25 + 1) = vmuls_lane_f32(255.0, *_Q4.f32, 1);
            _Q0.f32[0] = 255.0 * _Q4.f32[0];
          }

          *(v25 + 2) = _Q0.f32[0];
          v202 = 3;
          goto LABEL_586;
        }

        if (v16)
        {
          v208 = -_Q4.f32[0];
          if (_Q4.f32[0] >= 0.0)
          {
            v208 = _Q4.f32[0];
          }

          v209 = v208;
          v312 = _Q4;
          if (v209 <= 0.003131)
          {
            *_Q0.i64 = v209 * 12.92;
          }

          else
          {
            *_Q0.i64 = pow(v209, 0.416666667);
            _Q4 = v312;
            *_Q0.i64 = *_Q0.i64 * 1.055 + -0.055;
          }

          v263 = *_Q0.i64;
          if (_Q4.f32[0] < 0.0)
          {
            v263 = -v263;
          }

          if (((v263 * 510.0) + 384.0) >= 0x3FF)
          {
            v264 = 1023;
          }

          else
          {
            v264 = ((v263 * 510.0) + 384.0);
          }

          v265 = _Q4.f32[1];
          v266 = -_Q4.f32[1];
          if (_Q4.f32[1] >= 0.0)
          {
            v266 = _Q4.f32[1];
          }

          v267 = v266;
          if (v267 <= 0.003131)
          {
            *_Q0.i64 = v267 * 12.92;
          }

          else
          {
            *_Q0.i64 = pow(v267, 0.416666667);
            _Q4.i32[2] = v312.i32[2];
            *_Q0.i64 = *_Q0.i64 * 1.055 + -0.055;
          }

          v268 = *_Q0.i64;
          if (v265 < 0.0)
          {
            v268 = -v268;
          }

          if (((v268 * 510.0) + 384.0) >= 0x3FF)
          {
            v269 = 1023;
          }

          else
          {
            v269 = ((v268 * 510.0) + 384.0);
          }

          v270 = _Q4.f32[2];
          v271 = -_Q4.f32[2];
          if (_Q4.f32[2] >= 0.0)
          {
            v271 = _Q4.f32[2];
          }

          v272 = v271;
          if (v272 <= 0.003131)
          {
            *_Q0.i64 = v272 * 12.92;
          }

          else
          {
            *_Q0.i64 = pow(v272, 0.416666667) * 1.055 + -0.055;
          }

          v20 = 0uLL;
          v173 = (v264 << 20) | (v269 << 10);
          v221 = *_Q0.i64;
          if (v270 < 0.0)
          {
            v221 = -v221;
          }

          v16 = a2;
        }

        else
        {
          v221 = _Q4.f32[2];
          v222 = vshl_u32(vmin_u32(vcvt_s32_f32(vmla_f32(vdup_n_s32(0x43C00000u), vdup_n_s32(0x43FF0000u), *_Q4.f32)), 0x300000003), 0xA00000014);
          *_Q2.i8 = vdup_lane_s32(v222, 1);
          v173 = vorr_s8(v222, *_Q2.i8).u32[0];
        }

        _Q2.i32[0] = 1140785152;
        _Q0.f32[0] = (v221 * 510.0) + 384.0;
        v172 = _Q0.f32[0];
        if (_Q0.f32[0] >= 0x3FF)
        {
          v172 = 1023;
        }

        goto LABEL_557;
      }

      if (a3 <= 114)
      {
        if (a3 == 110)
        {
          _Q0 = vcvtq_u32_f32(vmulq_f32(_Q4, vdupq_n_s32(0x477FFF00u)));
        }

        else
        {
          if (a3 != 112)
          {
            goto LABEL_594;
          }

          _Q0 = vcvtq_s32_f32(vmulq_f32(_Q4, vdupq_n_s32(0x46FFFE00u)));
        }

        *_Q0.f32 = vmovn_s32(_Q0);
        goto LABEL_399;
      }

      if (a3 == 115)
      {
        *_Q0.f32 = vcvt_f16_f32(_Q4);
LABEL_399:
        *v25 = _Q0.i64[0];
LABEL_400:
        v202 = 8;
        goto LABEL_586;
      }

      if (a3 != 125)
      {
        if (a3 != 552)
        {
          goto LABEL_594;
        }

        _Q0 = vextq_s8(_Q4, _Q4, 8uLL);
        _Q1 = _Q0;
        _Q1.i32[1] = _Q4.i32[0];
        *_Q2.i8 = vdup_n_s32(0x43FF0000u);
        v163 = vdup_n_s32(0x43C00000u);
        *_Q1.i8 = vmin_u32(vcvt_s32_f32(vmla_f32(v163, *_Q2.i8, *_Q1.i8)), 0x300000003);
        a12.n128_u64[0] = vmla_f32(v163, *_Q2.i8, vzip2_s32(*_Q4.f32, *_Q0.f32));
        *_Q0.f32 = vorr_s8(vshl_n_s32(vmin_u32(vcvt_s32_f32(a12.n128_u64[0]), 0x300000003), 0x10uLL), *_Q1.i8);
        goto LABEL_399;
      }

      *v25 = _Q4;
      v202 = 16;
LABEL_586:
      v26 = (v26 + v76);
      v25 += v202;
      if (!--v24)
      {
        goto LABEL_587;
      }
    }

    if (a7 <= 31)
    {
      if (a7 > 19)
      {
        if (a7 <= 24)
        {
          if (a7 == 20)
          {
            _Q0.i16[0] = v26->i16[0];
            _Q6.f32[0] = _Q0.u32[0] / 65535.0;
            goto LABEL_122;
          }

          if (a7 == 22)
          {
            v47 = v26->i16[0];
            if ((v47 / 32767.0) >= -1.0)
            {
              _Q6.f32[0] = v47 / 32767.0;
            }

            else
            {
              _Q6.f32[0] = -1.0;
            }

LABEL_122:
            _Q6.i32[1] = 0;
LABEL_123:
            _Q6.i32[2] = 0;
            v63 = 1.0;
            goto LABEL_124;
          }
        }

        else
        {
          switch(a7)
          {
            case 25:
              _H0 = v26->i16[0];
              __asm { FCVT            S6, H0 }

              goto LABEL_122;
            case 30:
              _Q0.i8[0] = v26->i8[0];
              *&v69 = _Q0.u32[0];
              _Q6.f32[0] = *&v69 / 255.0;
              LOBYTE(v69) = v26->i8[1];
              _Q6.f32[1] = v69 / 255.0;
              goto LABEL_123;
            case 31:
              _Q0.i8[0] = v26->i8[0];
              _Q0.f32[0] = _Q0.u32[0] / 255.0;
              _Q2.i8[0] = v26->i8[1];
              *_Q2.i32 = _Q2.u32[0];
              v27 = *_Q2.i32 / 255.0;
              _Q6.i32[0] = _Q0.i32[0];
              _Q6.f32[1] = *_Q2.i32 / 255.0;
              if (v16)
              {
                v29 = _Q0.f32[0];
                if (v29 <= 0.04045)
                {
                  v31 = v29 / 12.92;
                }

                else
                {
                  v286 = *_Q2.i32 / 255.0;
                  v30 = pow((v29 + 0.055) / 1.055, 2.4);
                  v27 = v286;
                  v31 = v30;
                }

                v127 = v27;
                if (v27 <= 0.04045)
                {
                  v128 = v127 / 12.92;
                }

                else
                {
                  v128 = pow((v127 + 0.055) / 1.055, 2.4);
                }

                v129 = v31;
                _Q6.f32[0] = v129;
                v130 = v128;
                _Q6.f32[1] = v130;
                v20 = 0uLL;
              }

              _Q6.i64[1] = 0x3F80000000000000;
              goto LABEL_125;
          }
        }

        goto LABEL_139;
      }

      if (a7 > 10)
      {
        if (a7 != 11)
        {
          if (a7 != 12)
          {
            goto LABEL_139;
          }

          if ((v26->i8[0] / 127.0) >= -1.0)
          {
            _Q6.f32[0] = v26->i8[0] / 127.0;
          }

          else
          {
            _Q6.f32[0] = -1.0;
          }

LABEL_67:
          _Q6.i32[1] = 0;
          _Q6.i32[2] = 0;
          _Q0.i32[0] = 1.0;
          goto LABEL_90;
        }

        _Q0.i8[0] = v26->i8[0];
        _Q0.f32[0] = _Q0.u32[0] / 255.0;
        v51 = _Q0.f32[0];
        if (v16)
        {
          v52 = _Q0.f32[0];
          if (v52 <= 0.04045)
          {
            v53 = v52 / 12.92;
          }

          else
          {
            v53 = pow((v52 + 0.055) / 1.055, 2.4);
            v20 = 0uLL;
          }

          v92 = v53;
          v51 = v92;
        }

        _Q6 = xmmword_26F041F80;
        _Q6.f32[0] = v51;
      }

      else
      {
        if (a7 != 1)
        {
          if (a7 != 10)
          {
            goto LABEL_139;
          }

          _Q0.i8[0] = v26->i8[0];
          _Q6.f32[0] = _Q0.u32[0] / 255.0;
          goto LABEL_67;
        }

        _Q0.i8[0] = v26->i8[0];
        _Q0.f32[0] = _Q0.u32[0] / 255.0;
        _Q6.i64[0] = 0;
        _Q6.i32[2] = 0;
LABEL_90:
        _Q6.i32[3] = _Q0.i32[0];
      }

      v76 = 1;
      goto LABEL_250;
    }

    if (a7 <= 42)
    {
      if (a7 > 40)
      {
        if (a7 == 41)
        {
          v56 = v26->u16[0];
          _Q0.f32[0] = (v56 >> 11) / v22;
          __asm { FMOV            V2.2S, #31.0 }

          *_Q1.i8 = vdiv_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(v56), -6), 0x1F0000001FLL)), *_Q2.i8);
          _Q6 = vextq_s8(vextq_s8(_Q0, _Q0, 4uLL), _Q1, 0xCuLL);
          v57 = v56 & 1;
          goto LABEL_109;
        }

        v41 = v26->u16[0];
        _Q0.i32[0] = v41;
        v42 = vshrq_n_u32(_Q0, 0xCuLL).u32[0];
        _Q0.i32[1] = v41 >> 8;
        _Q0.i32[2] = v41 >> 4;
        _Q0.i32[3] = v41;
        _Q2.i64[0] = 0xF0000000FLL;
        _Q2.i64[1] = 0xF0000000FLL;
        v43 = vandq_s8(_Q0, _Q2);
        v43.i32[0] = v42;
        __asm { FMOV            V1.4S, #15.0 }

        _Q6 = vdivq_f32(vcvtq_f32_u32(v43), _Q1);
        goto LABEL_125;
      }

      if (a7 == 32)
      {
        _Q2.i32[0] = -1.0;
        if ((v26->i8[0] / 127.0) >= -1.0)
        {
          _Q6.f32[0] = v26->i8[0] / 127.0;
        }

        else
        {
          _Q6.f32[0] = -1.0;
        }

        _Q6.f32[1] = v26->i8[1] / 127.0;
        goto LABEL_123;
      }

      if (a7 == 40)
      {
        v37 = v26->u16[0];
        *_Q2.i32 = (v37 & 0x1F);
        __asm { FMOV            V6.4S, #1.0 }

        _Q6.f32[0] = (v37 >> 11) / 31.0;
        v22 = 31.0;
        _Q6.f32[1] = ((v37 >> 5) & 0x3F) / 63.0;
        _Q6.f32[2] = *_Q2.i32 / 31.0;
        goto LABEL_125;
      }

      goto LABEL_139;
    }

    if (a7 <= 59)
    {
      if (a7 == 43)
      {
        v61 = v26->u16[0];
        __asm { FMOV            V1.2S, #31.0 }

        *_Q6.f32 = vdiv_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(v61), 0xFFFFFFFBFFFFFFF6), 0x1F0000001FLL)), _D1);
        _Q6.f32[2] = (v61 & 0x1F) / v22;
        v57 = v61 >> 15;
LABEL_109:
        v63 = v57;
LABEL_124:
        _Q6.f32[3] = v63;
LABEL_125:
        v76 = 2;
        goto LABEL_250;
      }

      if (a7 != 55)
      {
        goto LABEL_139;
      }

      _Q6.i64[0] = v26->u32[0];
    }

    else
    {
      if (a7 != 60)
      {
        if (a7 == 62)
        {
          v73.i32[0] = v26->i16[0];
          v73.i32[1] = v26->i16[1];
          v74 = vdiv_f32(vcvt_f32_s32(v73), vdup_n_s32(0x46FFFE00u));
          __asm { FMOV            V1.2S, #-1.0 }

          *_Q2.i8 = vcgt_f32(_D1, v74);
          *_Q6.f32 = vbsl_s8(*_Q2.i8, _D1, v74);
        }

        else
        {
          if (a7 != 65)
          {
            goto LABEL_139;
          }

          _Q0.i32[0] = v26->i32[0];
          _Q6.i64[0] = vcvtq_f32_f16(*_Q0.f32).u64[0];
        }

        _Q6.i64[1] = 0x3F80000000000000;
        goto LABEL_249;
      }

      _Q0.i16[0] = v26->i16[0];
      *&v83 = _Q0.u32[0];
      _Q6.f32[0] = *&v83 / 65535.0;
      LOWORD(v83) = v26->i16[1];
      _Q6.f32[1] = v83 / 65535.0;
    }

    _Q6.i32[2] = 0;
    goto LABEL_133;
  }
}

void RGBFloat32ToShareExponent32()
{
  __assert_rtn("RGBFloat32ToShareExponent32", "TXRFloatConvert.h", 114, "maxm <= MAX_RGB9E5_MANTISSA");
}

{
  __assert_rtn("RGBFloat32ToShareExponent32", "TXRFloatConvert.h", 123, "bm <= MAX_RGB9E5_MANTISSA");
}

{
  __assert_rtn("RGBFloat32ToShareExponent32", "TXRFloatConvert.h", 122, "gm <= MAX_RGB9E5_MANTISSA");
}

{
  __assert_rtn("RGBFloat32ToShareExponent32", "TXRFloatConvert.h", 121, "rm <= MAX_RGB9E5_MANTISSA");
}