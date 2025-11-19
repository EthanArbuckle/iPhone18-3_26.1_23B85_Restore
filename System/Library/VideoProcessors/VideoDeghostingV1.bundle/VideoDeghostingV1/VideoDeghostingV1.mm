void sub_1F6C(id a1, MTLCommandBuffer *a2)
{
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }
}

void sub_1FA0(id a1, MTLCommandBuffer *a2)
{
  v2 = a2;
  if ([(MTLCommandBuffer *)v2 status]== &dword_4)
  {
    [(MTLCommandBuffer *)v2 GPUEndTime];
    [(MTLCommandBuffer *)v2 GPUStartTime];
  }

  else
  {
    [(MTLCommandBuffer *)v2 status];
  }

  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_2B2C()
{

  return fig_log_get_emitter();
}

void sub_3F48(id a1, MTLCommandBuffer *a2)
{
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }
}

void sub_3F7C(id a1, MTLCommandBuffer *a2)
{
  v2 = a2;
  if ([(MTLCommandBuffer *)v2 status]== &dword_4)
  {
    [(MTLCommandBuffer *)v2 GPUEndTime];
    [(MTLCommandBuffer *)v2 GPUStartTime];
  }

  else
  {
    [(MTLCommandBuffer *)v2 status];
  }

  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }
}

void sub_44E4(id a1, MTLCommandBuffer *a2)
{
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }
}

void sub_4518(id a1, MTLCommandBuffer *a2)
{
  v2 = a2;
  if ([(MTLCommandBuffer *)v2 status]== &dword_4)
  {
    [(MTLCommandBuffer *)v2 GPUEndTime];
    [(MTLCommandBuffer *)v2 GPUStartTime];
  }

  else
  {
    [(MTLCommandBuffer *)v2 status];
  }

  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_4C5C()
{

  return kdebug_trace();
}

uint64_t sub_4C9C()
{

  return fig_log_get_emitter();
}

void sub_6244(id a1, MTLCommandBuffer *a2)
{
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }
}

void sub_6278(id a1, MTLCommandBuffer *a2)
{
  v2 = a2;
  if ([(MTLCommandBuffer *)v2 status]== &dword_4)
  {
    [(MTLCommandBuffer *)v2 GPUEndTime];
    [(MTLCommandBuffer *)v2 GPUStartTime];
  }

  else
  {
    [(MTLCommandBuffer *)v2 status];
  }

  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }
}

void sub_67A0(id a1, MTLCommandBuffer *a2)
{
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }
}

void sub_67D4(id a1, MTLCommandBuffer *a2)
{
  v2 = a2;
  if ([(MTLCommandBuffer *)v2 status]== &dword_4)
  {
    [(MTLCommandBuffer *)v2 GPUEndTime];
    [(MTLCommandBuffer *)v2 GPUStartTime];
  }

  else
  {
    [(MTLCommandBuffer *)v2 status];
  }

  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }
}

void sub_6C48(id a1, MTLCommandBuffer *a2)
{
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }
}

void sub_6C7C(id a1, MTLCommandBuffer *a2)
{
  v2 = a2;
  if ([(MTLCommandBuffer *)v2 status]== &dword_4)
  {
    [(MTLCommandBuffer *)v2 GPUEndTime];
    [(MTLCommandBuffer *)v2 GPUStartTime];
  }

  else
  {
    [(MTLCommandBuffer *)v2 status];
  }

  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }
}

void sub_71CC(id a1, MTLCommandBuffer *a2)
{
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }
}

void sub_7200(id a1, MTLCommandBuffer *a2)
{
  v2 = a2;
  if ([(MTLCommandBuffer *)v2 status]== &dword_4)
  {
    [(MTLCommandBuffer *)v2 GPUEndTime];
    [(MTLCommandBuffer *)v2 GPUStartTime];
  }

  else
  {
    [(MTLCommandBuffer *)v2 status];
  }

  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }
}

void sub_74D4(id a1, MTLCommandBuffer *a2)
{
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }
}

void sub_7508(id a1, MTLCommandBuffer *a2)
{
  v2 = a2;
  if ([(MTLCommandBuffer *)v2 status]== &dword_4)
  {
    [(MTLCommandBuffer *)v2 GPUEndTime];
    [(MTLCommandBuffer *)v2 GPUStartTime];
  }

  else
  {
    [(MTLCommandBuffer *)v2 status];
  }

  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }
}

void sub_82EC(void *a1, void *a2)
{
  v6 = a2;
  if ([v6 status] == &dword_4)
  {
    [v6 GPUEndTime];
    [v6 GPUStartTime];
  }

  else
  {
    [v6 status];
  }

  if (gGMFigKTraceEnabled == 1)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    kdebug_trace();
  }
}

uint64_t sub_9598(const __CFData *a1, const UInt8 **a2)
{
  if (!a2)
  {
    sub_1CA60(&v9);
    return v9;
  }

  Length = CFDataGetLength(a1);
  if (Length <= 7)
  {
    sub_1C9B4(&v9);
    return v9;
  }

  v5 = Length;
  BytePtr = CFDataGetBytePtr(a1);
  if (!BytePtr)
  {
    sub_1C908(&v9);
    return v9;
  }

  v7 = BytePtr;
  if (v5 != 40 * *(BytePtr + 1) + 8)
  {
    sub_1C7B0(&v9);
    return v9;
  }

  if (*BytePtr)
  {
    sub_1C85C(&v9);
    return v9;
  }

  result = 0;
  *a2 = v7;
  return result;
}

uint64_t sub_9658(const __CFDictionary *a1, int width, uint64_t a3, int a4, uint64_t a5, float *a6)
{
  if (!a1)
  {
    sub_1CD88(&v17);
    return LODWORD(v17.x);
  }

  if (!a6)
  {
    sub_1CCDC(&v17);
    return LODWORD(v17.x);
  }

  size = CGRectZero.size;
  origin = CGRectZero.origin;
  v19 = CGRectZero.origin;
  v20 = size;
  v10 = sub_9784(a1);
  if (v10)
  {
    v13 = v10;
    sub_1CB0C();
    return v13;
  }

  if (CFDictionaryContainsKey(a1, kFigCaptureStreamMetadata_ValidBufferRect))
  {
    v17 = origin;
    v18 = size;
    FigCFDictionaryGetCGRectIfPresent();
    if (size.height > 0.0 && v18.width > 0.0)
    {
      width = v18.width;
    }
  }

  v12 = v20.width;
  if (v12 <= 0.0)
  {
    sub_1CC30(&v17);
    return LODWORD(v17.x);
  }

  if (a4 <= 0)
  {
    sub_1CB84(&v17);
    return LODWORD(v17.x);
  }

  v13 = 0;
  *a6 = width / (a4 * v12);
  return v13;
}

uint64_t sub_9784(const __CFDictionary *a1)
{
  if (CFDictionaryContainsKey(a1, kFigCaptureStreamMetadata_SensorRawValidBufferRect))
  {
    if (!FigCFDictionaryGetCGRectIfPresent())
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (CFDictionaryContainsKey(a1, kFigCaptureStreamMetadata_TotalSensorCropRect))
  {
    if (!FigCFDictionaryGetCGRectIfPresent())
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (CFDictionaryContainsKey(a1, kFigCaptureStreamMetadata_RawCropRect) && FigCFDictionaryGetCGRectIfPresent())
  {
    return 0;
  }

LABEL_10:
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t sub_98B8(const __CFDictionary *a1, double *a2)
{
  v15 = 0;
  if (!a1 || !a2)
  {
    sub_1D15C(v12);
    return LODWORD(v12[0]);
  }

  Value = CFDictionaryGetValue(a1, kFigCaptureStreamMetadata_RollingShutterSkew);
  if (!Value)
  {
    sub_1D0B0(v12);
    return LODWORD(v12[0]);
  }

  valuePtr = 0;
  CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  v5 = CFDictionaryGetValue(a1, kFigCaptureStreamMetadata_RawSensorHeight);
  if (!v5)
  {
    sub_1D004(v12);
    return LODWORD(v12[0]);
  }

  CFNumberGetValue(v5, kCFNumberSInt32Type, &v15);
  if (v15 <= 0)
  {
    sub_1CF58(v12);
    return LODWORD(v12[0]);
  }

  size = CGRectZero.size;
  origin = CGRectZero.origin;
  v13 = CGRectZero.origin;
  v14 = size;
  v6 = sub_9784(a1);
  if (v6)
  {
    v8 = v6;
    sub_1CE34();
  }

  else
  {
    if (CFDictionaryContainsKey(a1, kFigCaptureStreamMetadata_SensorReadoutRect))
    {
      v12[0] = origin;
      v12[1] = size;
      if (!FigCFDictionaryGetCGRectIfPresent())
      {
        sub_1CEAC(v12, &v17);
        return v17;
      }

      v7 = *(v12 + 1);
    }

    else
    {
      v7 = 0.0;
    }

    v8 = 0;
    *a2 = (v13.y - v7) * valuePtr / (v15 * 1000000.0);
  }

  return v8;
}

uint64_t sub_9A44(CFDictionaryRef theDict, float64x2_t *a2, uint64_t a3, int a4, int *a5, float32x2_t *a6, uint64_t a7, int a8, int *a9)
{
  if (!theDict)
  {
    sub_1D334(&time);
    return LODWORD(time.value);
  }

  if (a2 && a5)
  {
    Value = CFDictionaryGetValue(theDict, kFigCaptureStreamMetadata_ISPMotionData);
    if (Value)
    {
      v41 = 0;
      v18 = sub_9598(Value, &v41);
      if (v18)
      {
        v36 = v18;
        sub_1D208();
        return v36;
      }

      v20 = v41;
      LODWORD(v21) = *(v41 + 1);
      if (v21 >= a4)
      {
        LODWORD(v21) = a4;
      }

      *a5 = v21;
      if (v21 >= 1)
      {
        v22 = 0;
        v23 = (a3 + 8);
        v24 = a2 + 1;
        v25 = 0;
        v26 = 0.0;
        v27 = 44;
        v39 = vdupq_n_s64(0x3E10000000000000uLL);
        v28 = vdup_n_s32(0x37800000u);
        do
        {
          v29 = *&v20[v27 - 36];
          v30 = FigHostTimeToNanoseconds();
          CMTimeMake(&time, v30, 1000000000);
          v24[-1].f64[1] = CMTimeGetSeconds(&time);
          v20 = v41;
          v31 = &v41[v27];
          v32 = *&v41[v27 - 24];
          v33.i64[0] = v32;
          v33.i64[1] = SHIDWORD(v32);
          *v24 = vmulq_f64(vcvtq_f64_s64(v33), v39);
          v34 = *(v31 - 2);
          v33.i64[0] = v34;
          v33.i64[1] = SHIDWORD(v34);
          v24[1] = vmulq_f64(vcvtq_f64_s64(v33), v39);
          v19 = vmul_f32(vcvt_f32_s32(*(v31 - 2)), v28);
          v35 = *v31 * 0.000015259;
          if (a3)
          {
            *(v23 - 1) = v19;
            *v23 = v35;
          }

          v25 = vadd_f32(v25, v19);
          v26 = v26 + v35;
          ++v22;
          v21 = *a5;
          v23 += 3;
          v24 += 3;
          v27 += 40;
        }

        while (v22 < v21);
        if (!a6)
        {
          goto LABEL_19;
        }

        goto LABEL_17;
      }

      v25 = 0;
      v26 = 0.0;
      if (a6)
      {
LABEL_17:
        if (v21)
        {
          v19.f32[0] = v21;
          *a6 = vdiv_f32(v25, vdup_lane_s32(v19, 0));
          a6[1].f32[0] = v26 / v21;
        }
      }
    }

    else
    {
      *a5 = 0;
    }
  }

LABEL_19:
  v36 = 0;
  if (a7 && a9)
  {
    v37 = CFDictionaryGetValue(theDict, kFigCaptureStreamMetadata_ISPHallData);
    if (v37)
    {
      v36 = sub_9C8C(v37, a7, a9, a8);
      if (v36)
      {
        sub_1D2BC();
      }
    }

    else
    {
      v36 = 0;
      *a9 = 0;
    }
  }

  return v36;
}

uint64_t sub_9C8C(const __CFData *a1, uint64_t a2, int *a3, int a4)
{
  Length = CFDataGetLength(a1);
  if (Length <= 7)
  {
    sub_1D538(&time);
  }

  else
  {
    v9 = Length;
    BytePtr = CFDataGetBytePtr(a1);
    if (*BytePtr >= 2u)
    {
      sub_1D48C(&time);
    }

    else
    {
      v11 = 16;
      if (*BytePtr == 1)
      {
        v11 = 24;
      }

      if (v9 == v11 * *(BytePtr + 1) + 8)
      {
        if (a3)
        {
          goto LABEL_7;
        }

LABEL_26:
        sub_1D5E4(&time);
        return LODWORD(time.value);
      }

      sub_1D3E0(&time);
    }
  }

  value_low = LODWORD(time.value);
  if (LODWORD(time.value))
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    return value_low;
  }

  BytePtr = 0;
  if (!a3)
  {
    goto LABEL_26;
  }

LABEL_7:
  v12 = *(BytePtr + 1);
  if (v12 >= a4)
  {
    v12 = a4;
  }

  *a3 = v12;
  if (*BytePtr == 1)
  {
    if (v12 >= 1)
    {
      v19 = 0;
      v20 = (BytePtr + 16);
      v21 = (a2 + 12);
      do
      {
        v22 = *(v20 - 1);
        v23 = FigHostTimeToNanoseconds();
        CMTimeMake(&time, v23, 1000000000);
        *(v21 - 3) = CMTimeGetSeconds(&time);
        *(v21 - 1) = *v20 * 0.0039062;
        *v21 = v20[1] * 0.0039062;
        v21[1] = v20[2] * 0.0039062;
        v21[2] = v20[3] * 0.0039062;
        ++v19;
        v20 += 6;
        v21 += 6;
      }

      while (v19 < *a3);
    }
  }

  else
  {
    if (*BytePtr)
    {
      return 4294954515;
    }

    if (v12 >= 1)
    {
      v13 = 0;
      v14 = (a2 + 16);
      v15 = (BytePtr + 20);
      do
      {
        v16 = *(v15 - 3);
        v17 = FigHostTimeToNanoseconds();
        CMTimeMake(&time, v17, 1000000000);
        *(v14 - 2) = CMTimeGetSeconds(&time);
        *(v14 - 2) = *(v15 - 1) * 0.0039062;
        v18 = *v15;
        v15 += 4;
        *(v14 - 1) = v18 * 0.0039062;
        *v14 = 0.0;
        v14 += 3;
        ++v13;
      }

      while (v13 < *a3);
    }
  }

  return 0;
}

uint64_t sub_9F08(const __CFDictionary *a1, double *a2, float a3)
{
  if (!a1 || !a2)
  {
    sub_1D820(&time);
    return LODWORD(time.value);
  }

  v13 = 0.0;
  if (!FigCFDictionaryGetDoubleIfPresent())
  {
    sub_1D7C4(&time);
    return LODWORD(time.value);
  }

  v12 = 0.0;
  if (!FigCFDictionaryGetDoubleIfPresent())
  {
    sub_1D768(&time);
    return LODWORD(time.value);
  }

  v12 = v12 / 1000000.0;
  Value = CFDictionaryGetValue(a1, kFigCaptureSampleBufferAttachmentKey_OriginalPresentationTimeStamp);
  if (!Value)
  {
    sub_1D70C(&time);
    return LODWORD(time.value);
  }

  CMTimeMakeFromDictionary(&time, Value);
  Seconds = CMTimeGetSeconds(&time);
  v10 = 0.0;
  v8 = sub_98B8(a1, &v10);
  if (v8)
  {
    sub_1D690();
  }

  else
  {
    *a2 = Seconds + v10 + v13 * -0.5 + a3 * v12;
  }

  return v8;
}

float64_t sub_A044(double *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = vnegq_f64(*(a2 + 1));
  v5 = -*(a2 + 3);
  return sub_A3FC(&v3, a1);
}

uint64_t sub_A090(void *a1)
{
  if (!a1)
  {
    return 4294954516;
  }

  result = 0;
  *a1 = 0x3FF0000000000000;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  return result;
}

uint64_t sub_A0B4()
{
  FigGetUpTime();
  result = FigHostTimeToNanoseconds();
  if (qword_3BDD8)
  {
    v1 = (result - qword_3BDD8) >= 0x3B9ACA00;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    if (dword_3BDE0)
    {
      dword_3BDE0 = 0;
    }

    qword_3BDD8 = result;
  }

  else
  {
    ++dword_3BDE0;
  }

  return result;
}

void sub_A110(uint64_t a1, double *a2, float a3)
{
  v22 = *a1;
  v23 = vnegq_f64(*(a1 + 8));
  v24 = -*(a1 + 24);
  v5 = sub_A3FC(&v22, a2);
  v8 = v7;
  v10 = v9;
  if (fabs(v5) <= 1.0)
  {
    v15 = v6;
    v16 = acos(v5);
    v17 = sin(v16);
    v18 = a3;
    v19 = v16 * v18;
    if (v17 <= 0.00000001)
    {
      cosval = cos(v19);
    }

    else
    {
      v20 = __sincos_stret(v19);
      cosval = v20.__cosval;
      v18 = v20.__sinval / v17;
    }

    v22 = cosval;
    v23.f64[0] = v8 * v18;
    v23.f64[1] = v10 * v18;
    v24 = v15 * v18;
    sub_A3FC(a1, &v22);
  }

  else
  {
    v11 = *a1;
    v12 = *(a1 + 8);
    v13 = *(a1 + 16);
    v14 = *(a1 + 24);
  }
}

double sub_A204(uint64_t a1, int8x16_t a2, int32x4_t a3, float a4, float a5, int8x16_t a6)
{
  a6.i32[0] = *(a1 + 24);
  v6 = a3;
  *&v6.i32[1] = a5;
  v7 = vzip1q_s32(v6, v6);
  v7.i32[2] = a3.i32[0];
  v8 = a2;
  *&v8.i32[1] = a4;
  v9 = vzip1q_s32(v8, v8);
  v9.i32[2] = a2.i32[0];
  a2.i64[0] = *(a1 + 28);
  v10 = vextq_s8(vextq_s8(a6, a6, 4uLL), a2, 0xCuLL);
  v10.i32[3] = v10.i32[0];
  *a1 = vmlaq_f32(vmulq_f32(v10, v7), *a1, v9);
  *a2.i8 = vmla_n_f32(vmul_n_f32(*a2.i8, a5), *(a1 + 16), a4);
  *(a1 + 16) = a2.i64[0];
  return *a2.i64;
}

float sub_A25C(float *a1, float a2, float a3, float a4, float a5)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[6];
  v10 = a1[7];
  v11 = (a1[2] + (a5 * v6)) + (a3 * *a1);
  v12 = (a1[5] + (a5 * v8)) + (a3 * v7);
  a1[8] = (a1[8] + (a5 * v10)) + (a3 * v9);
  v13 = v5 * a2;
  a1[2] = v11;
  a1[3] = v7 * a2;
  result = v9 * a2;
  *a1 = v13;
  a1[1] = v6 * a4;
  a1[4] = v8 * a4;
  a1[5] = v12;
  a1[6] = result;
  a1[7] = v10 * a4;
  return result;
}

double sub_A2B8(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = a3[1];
  *(a4 + 32) = *(a3 + 8);
  *a4 = v6;
  *(a4 + 16) = v7;
  *&v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  sub_A25C(a4, 1.0 / *a2, -*&v7 / *a2, 1.0 / *a2, -v8 / *a2);
  v10.i32[0] = *a1;
  v11.i64[0] = *(a1 + 8);
  *v11.i32 = *v11.i64;
  v12 = *(a1 + 16);
  v13 = *a1;

  return sub_A204(a4, v10, v11, v13, v12, v9);
}

float sub_A348(double *a1, int a2, float *a3)
{
  v4 = a1[1];
  v3 = a1[2];
  v5 = *a1;
  if (a2)
  {
    v4 = -v4;
    v6 = -a1[3];
  }

  else
  {
    v6 = a1[3];
  }

  v7 = v3 + v3;
  v8 = v4 + v4;
  v9 = v6 + v6;
  v10 = v3;
  v11 = v4;
  v12 = v6;
  v13 = v12 * v9;
  v14 = (1.0 - (v11 * v8)) - v13;
  v15 = 1.0 - (v10 * v7);
  v16 = v15 - v13;
  a3[8] = v15 - (v11 * v8);
  v17 = v11 * v9;
  v18 = v5;
  v19 = v18 * v7;
  v20 = v17 - v19;
  a3[4] = v16;
  a3[5] = v19 + v17;
  v21 = (v10 * v8) - (v18 * v9);
  *a3 = v14;
  a3[1] = (v10 * v8) + (v18 * v9);
  v22 = v10 * v9;
  v23 = v18 * v8;
  a3[2] = v22 - v23;
  a3[3] = v21;
  result = v23 + v22;
  a3[6] = result;
  a3[7] = v20;
  return result;
}

float64_t sub_A3FC(double *a1, double *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = a1[2];
  v7 = a1[3];
  v9 = a2[2];
  v8 = a2[3];
  v10 = *a2 * v7 + *a1 * v8 + v3 * v9 - v6 * v4;
  v13 = *a2 * v6 + *a1 * v9 + v7 * v4 - v3 * v8;
  v14 = v10;
  v12.f64[0] = v2 * v5 - v3 * v4 - v6 * v9 - v7 * v8;
  v12.f64[1] = v3 * v5 + v2 * v4 + v6 * v8 - v7 * v9;
  sub_A480(&v12);
  return v12.f64[0];
}

uint64_t sub_A480(float64x2_t *a1)
{
  if (a1)
  {
    _Q1 = a1[1];
    _D3 = _Q1.f64[1];
    __asm { FMLA            D2, D3, V1.D[1] }

    v8 = sqrt(_D2);
    if (v8 <= 0.00000001)
    {
      sub_1D87C(&v12);
      return v12;
    }

    else
    {
      v9 = 0;
      v10 = 1.0 / v8;
      *a1 = vmulq_n_f64(*a1, v10);
      a1[1] = vmulq_n_f64(_Q1, v10);
    }
  }

  else
  {
    sub_1D928(&v13);
    return v13;
  }

  return v9;
}

uint64_t sub_A50C()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v24 = 0;
  valuePtr = 0.0;
  Value = CFDictionaryGetValue(v0, kFigCaptureStreamMetadata_ExposureTime);
  if (!Value)
  {
    sub_1DB34(v25);
    return LODWORD(v25[0]);
  }

  CFNumberGetValue(Value, kCFNumberFloat64Type, &valuePtr);
  v7 = CFDictionaryGetValue(v5, kFigCaptureStreamMetadata_FrameRollingShutterSkew);
  if (!v7)
  {
    sub_1DA88(v25);
    return LODWORD(v25[0]);
  }

  CFNumberGetValue(v7, kCFNumberSInt32Type, &v24);
  v8 = v24;
  v9 = valuePtr;
  *v2 = 0;
  v27 = 0;
  *v2 = 0;
  v10 = CFDictionaryGetValue(v5, kFigCaptureStreamMetadata_ISPHallData);
  if (v10)
  {
    v11 = sub_9C8C(v10, v25, &v27, 510);
    if (v11)
    {
      v21 = v11;
      sub_1D9D4();
      return v21;
    }

    v12 = v27;
    if (v27 >= 1)
    {
      v13 = 0;
      v14 = v4 + v9 * -0.5;
      v15 = v8 / 1000000.0 + v14;
      v16 = &v26;
      v17 = v27;
      do
      {
        v18 = *&v16[-1];
        if (v18 >= v14 && v18 <= v15)
        {
          *v2 = vadd_f32(*v16, *v2);
          ++v13;
        }

        v16 += 3;
        --v17;
      }

      while (v17);
      if (v13)
      {
        *&v15 = v13;
        *v2 = vdiv_f32(*v2, vdup_lane_s32(*&v15, 0));
      }

      else
      {
        v20 = v12 - 1;
        if (*v25 > v15)
        {
          v20 = 0;
        }

        *v2 = v25[3 * v20 + 1];
        sub_A0B4();
      }
    }
  }

  return 0;
}

uint64_t sub_A6DC(uint64_t a1, float64x2_t *a2, float a3, float a4)
{
  if (a1)
  {
    v7 = sub_A50C();
    if (v7)
    {
      sub_1DBE0();
    }

    else
    {
      *a2 = vaddq_f64(*a2, vcvtq_f64_f32(vmul_n_f32(0, a3 * a4)));
    }
  }

  else
  {
    sub_1DC58(&v9);
    return v9;
  }

  return v7;
}

BOOL sub_A76C(const __CFDictionary *a1, float64x2_t *a2)
{
  origin = CGRectZero.origin;
  size = CGRectZero.size;
  v3 = sub_9784(a1);
  if (!v3)
  {
    __asm { FMOV            V2.2D, #-1.0 }

    v9 = vaddq_f64(size, _Q2);
    __asm { FMOV            V2.2D, #0.5 }

    *a2 = vmlaq_f64(origin, _Q2, v9);
  }

  return v3 == 0;
}

float sub_A7D0(float *a1, float *a2, float *a3, float a4, float a5)
{
  v5 = (a1[8] + (a1[7] * a5)) + (a1[6] * a4);
  if (fabsf(v5) > 0.00000001)
  {
    v5 = 1.0 / v5;
  }

  *a2 = ((a1[2] + (a1[1] * a5)) + (*a1 * a4)) * v5;
  result = v5 * ((a1[5] + (a1[4] * a5)) + (a1[3] * a4));
  *a3 = result;
  return result;
}

uint64_t sub_CDBC(uint16x4_t a1)
{
  v3 = vmovl_u16(a1).u64[0];
  *(v2 - 66) = WORD2(v3);
  *(v2 - 68) = v3;
  return v1;
}

id sub_CDD8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v22 = *(v17 + 586);
  a15 = *(v17 + 584);
  a16 = v22;
  a17 = v20;
  a12 = v19;
  a13 = a1 / v19;
  a14 = v20;

  return [v18 dispatchThreads:&a15 threadsPerThreadgroup:&a12];
}

uint64_t sub_CE34()
{

  return fig_log_get_emitter();
}

id sub_CE88()
{

  return [v0 setBytes:v1 - 68 length:4 atIndex:0];
}

void sub_D544(id a1, MTLCommandBuffer *a2)
{
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }
}

void sub_D578(id a1, MTLCommandBuffer *a2)
{
  v2 = a2;
  if ([(MTLCommandBuffer *)v2 status]== &dword_4)
  {
    [(MTLCommandBuffer *)v2 GPUEndTime];
    [(MTLCommandBuffer *)v2 GPUStartTime];
  }

  else
  {
    [(MTLCommandBuffer *)v2 status];
  }

  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }
}

void sub_D840(id a1, MTLCommandBuffer *a2)
{
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }
}

void sub_D874(id a1, MTLCommandBuffer *a2)
{
  v2 = a2;
  if ([(MTLCommandBuffer *)v2 status]== &dword_4)
  {
    [(MTLCommandBuffer *)v2 GPUEndTime];
    [(MTLCommandBuffer *)v2 GPUStartTime];
  }

  else
  {
    [(MTLCommandBuffer *)v2 status];
  }

  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }
}

void sub_DD84(id a1, MTLCommandBuffer *a2)
{
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }
}

void sub_DDB8(id a1, MTLCommandBuffer *a2)
{
  v2 = a2;
  if ([(MTLCommandBuffer *)v2 status]== &dword_4)
  {
    [(MTLCommandBuffer *)v2 GPUEndTime];
    [(MTLCommandBuffer *)v2 GPUStartTime];
  }

  else
  {
    [(MTLCommandBuffer *)v2 status];
  }

  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }
}

FILE *sub_E97C(const char *a1)
{
  v2 = [NSString stringWithFormat:@"%s", a1];
  v3 = [v2 stringByDeletingLastPathComponent];
  v4 = +[NSFileManager defaultManager];
  v14 = 0;
  v5 = [v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v14];
  v6 = v14;
  if (v5)
  {
    v7 = fopen(a1, "wb");
  }

  else
  {
    if (qword_3BDF0 != -1)
    {
      sub_2337C();
    }

    v8 = qword_3BDE8;
    if (os_log_type_enabled(qword_3BDE8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v11 = v3;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Failed to create directory %@. Error: %@", buf, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

FILE *sub_EF80(unsigned int a1, int a2, unsigned int a3, _BYTE *a4, const char *a5)
{
  result = sub_E97C(a5);
  if (result)
  {
    v10 = result;
    v11 = malloc_type_malloc(3 * a1, 0x100004077774924uLL);
    if (v11)
    {
      v12 = v11;
      fprintf(v10, "P6 %u %u 255\n", a1, a2);
      if (a2)
      {
        v13 = 0;
        do
        {
          v14 = a1;
          v15 = v12;
          for (i = a4; v14; --v14)
          {
            *v15 = *i;
            v15[1] = i[1];
            v15[2] = i[2];
            i += 4;
            v15 += 3;
          }

          fwrite(v12, 3uLL, a1, v10);
          a4 += a3;
          ++v13;
        }

        while (v13 != a2);
      }

      free(v12);
    }

    return fclose(v10);
  }

  return result;
}

void sub_132D8(id a1)
{
  qword_3BDE8 = os_log_create("com.apple.cameracapture", "legacyLog");

  _objc_release_x1();
}

float *sub_1331C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, float a9)
{
  v17 = malloc_type_malloc(0x18uLL, 0x10200405AF6BDC9uLL);
  if (a2 < 0)
  {
    sub_237EC();
  }

  if (a3 < 0)
  {
    sub_237C0();
  }

  if (a4 < 0)
  {
    sub_23794();
  }

  if (a5 < 0)
  {
    sub_23768();
  }

  if (a6 < 0)
  {
    sub_2373C();
  }

  if (a7 < 0)
  {
    sub_23710();
  }

  v18 = a2 * a1;
  v19 = (a2 * a1 / 100);
  v20 = a3 * a1;
  v21 = a3 * a1 / 100;
  v110[0] = v19;
  v110[1] = v21;
  v22 = a4 * a1;
  v23 = a4 * a1 / 100;
  v24 = a5 * a1;
  v25 = a5 * a1 / 100;
  v110[2] = v23;
  v110[3] = v25;
  v26 = a6 * a1;
  v27 = a6 * a1 / 100;
  v28 = a7 * a1;
  v29 = a7 * a1 / 100;
  v110[4] = v27;
  v110[5] = v29;
  v30 = v21 + v19 + v23 + v25;
  v31 = v30 + v27 + v29;
  if (v31 <= 0)
  {
    sub_236E4();
  }

  v32 = v17;
  v107 = v24;
  v108 = v22;
  v105 = v28;
  v106 = v26;
  *(v17 + 2) = v31;
  v33 = v30 + v27 + v29;
  *v17 = malloc_type_malloc(3 * v33, 0x100004033FC2DF1uLL);
  *(v32 + 3) = a8;
  if (v18 < 100)
  {
    v39 = 0;
    v37 = v33;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v36 = 1;
    v37 = v33;
    do
    {
      if (v35 >= *(v32 + 2))
      {
        sub_236B8();
      }

      ++v35;
      v38 = (*v32 + v36);
      *(v38 - 1) = 0;
      *v38 = v34 / v19;
      v38[1] = -1;
      v36 += 3;
      v34 += 255;
    }

    while (v19 != v35);
    v39 = v18 / 100;
  }

  if (v20 >= 100)
  {
    v40 = 0;
    v41 = v39;
    v42 = v20 / 100;
    v43 = 3 * v39;
    do
    {
      if (v41 >= *(v32 + 2))
      {
        sub_236B8();
      }

      ++v41;
      v44 = *v32 + v43;
      *v44 = -256;
      *(v44 + 2) = ~(v40 / v21);
      v43 += 3;
      v40 += 255;
      --v42;
    }

    while (v42);
    v39 = v41;
  }

  if (v108 >= 100)
  {
    v45 = 0;
    v46 = v39;
    v47 = 3 * v39;
    v48 = v23;
    do
    {
      if (v46 >= *(v32 + 2))
      {
        sub_236B8();
      }

      ++v46;
      v49 = *v32 + v47;
      *v49 = v45 / v23;
      *(v49 + 1) = 255;
      v47 += 3;
      v45 += 255;
      --v48;
    }

    while (v48);
    v39 = v46;
  }

  if (v107 >= 100)
  {
    v50 = 0;
    v51 = v39;
    v52 = 3 * v39;
    v53 = v25;
    do
    {
      if (v51 >= *(v32 + 2))
      {
        sub_236B8();
      }

      ++v51;
      v54 = *v32 + v52;
      *v54 = -1;
      *(v54 + 1) = ~(v50 / v25);
      v52 += 3;
      v50 += 255;
      --v53;
    }

    while (v53);
    v39 = v51;
  }

  if (v106 >= 100)
  {
    v55 = 0;
    v56 = v39;
    v57 = 3 * v39;
    v58 = v27;
    do
    {
      if (v56 >= *(v32 + 2))
      {
        sub_236B8();
      }

      ++v56;
      v59 = *v32 + v57;
      *v59 = 255;
      *(v59 + 2) = v55 / v27;
      v57 += 3;
      v55 += 255;
      --v58;
    }

    while (v58);
    v39 = v56;
  }

  if (v105 >= 100)
  {
    v60 = 0;
    v61 = v39;
    v62 = 3 * v39;
    v63 = v29;
    do
    {
      if (v61 >= *(v32 + 2))
      {
        sub_236B8();
      }

      ++v61;
      v64 = *v32 + v62;
      *v64 = ~(v60 / v29);
      *(v64 + 1) = -256;
      v62 += 3;
      v60 += 255;
      --v63;
    }

    while (v63);
  }

  if (a8 < 0 && v37 != 1)
  {
    v65 = 0;
    LODWORD(v66) = v37 >> 1;
    if (v37 >> 1 <= 1)
    {
      v66 = 1;
    }

    else
    {
      v66 = v66;
    }

    v67 = v66 + 2 * v66;
    v68 = 3 * v37 - 3;
    do
    {
      v69 = (*v32 + v65);
      v70 = *v32 + v68;
      v71 = *(v69 + 2);
      v72 = *v69;
      v73 = *(v70 + 2);
      *v69 = *v70;
      *(v69 + 2) = v73;
      *v70 = v72;
      *(v70 + 2) = v71;
      v65 += 3;
      v68 -= 3;
    }

    while (v67 != v65);
  }

  if (a8 >= 0)
  {
    v74 = a8;
  }

  else
  {
    v74 = -a8;
  }

  v75 = v74 - 1;
  LODWORD(v76) = 6 - v74;
  if (a8 < 0)
  {
    v76 = v76;
  }

  else
  {
    v76 = v75;
  }

  if (v76 >= 1)
  {
    v77 = 0;
    v78 = v110;
    do
    {
      v79 = v77;
      v81 = *v78++;
      v80 = v81;
      v77 += v81;
      --v76;
    }

    while (v76);
    if (v77 > 0)
    {
      v82 = *v32;
      v83 = v37 - 1;
      if (v77 != 1)
      {
        v84 = 0;
        v85 = (v82 + 3 * (v77 - 1));
        v86 = v79 + v80 - 2;
        v87 = *v32;
        do
        {
          v88 = *(v87 + 2);
          v89 = *v87;
          v90 = *(v85 + 2);
          *v87 = *v85;
          *(v87 + 2) = v90;
          *v85 = v89;
          *(v85 + 2) = v88;
          v87 = (v87 + 3);
          v85 = (v85 - 3);
          v91 = ++v84 < v86--;
        }

        while (v91);
      }

      if (v77 < v83)
      {
        v92 = (v82 + 3 * v83);
        v93 = (v82 + 3 * v77);
        v94 = v19 + v21 + v23 + v25 + v27 + v29 - 2;
        do
        {
          v95 = *(v93 + 2);
          v96 = *v93;
          v97 = *(v92 + 2);
          *v93 = *v92;
          *(v93 + 2) = v97;
          *v92 = v96;
          *(v92 + 2) = v95;
          v93 = (v93 + 3);
          v92 = (v92 - 3);
          v91 = ++v77 < v94--;
        }

        while (v91);
      }

      if (v37 != 1)
      {
        v98 = 0;
        v99 = (v82 + 3 * (v37 - 1));
        v100 = v19 + v21 + v23 + v25 + v27 + v29 - 2;
        do
        {
          v101 = *(v82 + 2);
          v102 = *v82;
          v103 = *(v99 + 2);
          *v82 = *v99;
          *(v82 + 2) = v103;
          *v99 = v102;
          *(v99 + 2) = v101;
          v82 = (v82 + 3);
          v99 = (v99 - 3);
          v91 = ++v98 < v100--;
        }

        while (v91);
      }
    }
  }

  v32[4] = a9;
  return v32;
}

void sub_13914(void ***a1)
{
  if (a1)
  {
    free(**a1);
    free(*a1);
    *a1 = 0;
  }
}

uint64_t sub_13954(uint64_t a1, int a2, float a3, double a4, double a5, float a6)
{
  if (a3 < 0.0 || a3 > 1.0)
  {
    sub_23818();
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v8 != 0.0)
  {
    v9 = v8 / 6.28318531;
    a3 = v9 + a3;
    v10 = 1.0;
    if (a3 < 0.0)
    {
LABEL_9:
      a3 = a3 + v10;
      goto LABEL_10;
    }

    if (a3 > 1.0)
    {
      v10 = -1.0;
      goto LABEL_9;
    }
  }

LABEL_10:
  v11 = a3 * (v7 - 1);
  v12 = v11;
  v13 = (v11 + 1) % v7;
  *&v14 = v11;
  v15 = v11 - *&v14;
  LOBYTE(v14) = *(*a1 + 3 * v12 + a2);
  LOBYTE(a6) = *(*a1 + 3 * v13 + a2);
  return (((v15 * (LODWORD(a6) / 255.0)) + ((1.0 - v15) * (v14 / 255.0))) * 255.0);
}

uint64_t sub_13A38(uint64_t result, int a2, int a3, float *a4, int a5, int a6, uint64_t a7, int a8, double a9, double a10, double a11, float a12, int a13)
{
  if (a3 >= 1)
  {
    v13 = a4;
    v14 = result;
    v15 = 0;
    v16 = a6;
    v17 = 1.1755e-38;
    v18 = 3.4028e38;
    v19 = a4;
    v20 = a2;
    do
    {
      v21 = a2;
      v22 = v19;
      if (a2 >= 1)
      {
        do
        {
          *&a10 = *v22;
          if (*v22 < v18)
          {
            v18 = *v22;
          }

          if (*&a10 > v17)
          {
            v17 = *v22;
          }

          v22 = (v22 + a6);
          --v21;
        }

        while (v21);
      }

      ++v15;
      v19 = (v19 + a5);
    }

    while (v15 != a3);
    v23 = 0;
    v24 = v17 - v18;
    v35 = a8;
    v25 = (a7 + 1);
    v36 = a3;
    v37 = a5;
    do
    {
      v26 = v13;
      v27 = v25;
      if (a2 >= 1)
      {
        do
        {
          v28 = fmaxf(fminf((*v26 - v18) / v24, 1.0), 0.0);
          *(v27 - 1) = sub_13954(v14, 0, v28, a10, a11, a12);
          *v27 = sub_13954(v14, 1, v28, v29, v30, v31);
          result = sub_13954(v14, 2, v28, v32, v33, v34);
          v27[1] = result;
          v27[2] = -1;
          v27 += a13;
          v26 = (v26 + v16);
          --v20;
        }

        while (v20);
      }

      ++v23;
      v20 = a2;
      v25 += v35;
      v13 = (v13 + v37);
    }

    while (v23 != v36);
  }

  return result;
}

uint64_t sub_150CC()
{

  return fig_log_get_emitter();
}

uint64_t sub_151E4(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  sub_2B5C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_15290(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  sub_2B5C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1533C(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  sub_2B5C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_153E8(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  sub_2B5C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_15494()
{
  sub_2B50();
  fig_log_get_emitter();
  sub_2AF8();
  v0 = FigSignalErrorAtGM();
  v8 = sub_2B44(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
}

void sub_15508()
{
  sub_2B50();
  fig_log_get_emitter();
  sub_2AF8();
  v0 = FigSignalErrorAtGM();
  v8 = sub_2B44(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
}

uint64_t sub_1557C(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_155D8(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_15634(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_15690(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_156EC(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_15748(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_157A4()
{
  sub_2B08();
  fig_log_get_emitter();
  sub_2AF8();
  *v0 = FigSignalErrorAtGM();
}

void sub_15828()
{
  sub_2B68();
  fig_log_get_emitter();
  sub_2AF8();
  *v0 = FigSignalErrorAtGM();
}

void sub_158B0()
{
  sub_2B68();
  fig_log_get_emitter();
  sub_2AF8();
  *v0 = FigSignalErrorAtGM();
}

void sub_15938()
{
  sub_2B08();
  fig_log_get_emitter();
  sub_2AF8();
  *v0 = FigSignalErrorAtGM();
}

void sub_159BC()
{
  sub_2B08();
  fig_log_get_emitter();
  sub_2AF8();
  *v0 = FigSignalErrorAtGM();
}

void sub_15A40()
{
  sub_2B08();
  fig_log_get_emitter();
  sub_2AF8();
  *v0 = FigSignalErrorAtGM();
}

void sub_15AC4()
{
  sub_2B08();
  fig_log_get_emitter();
  sub_2AF8();
  *v0 = FigSignalErrorAtGM();
}

void sub_15B48()
{
  sub_2B08();
  fig_log_get_emitter();
  sub_2AF8();
  *v0 = FigSignalErrorAtGM();
}

void sub_15BCC()
{
  sub_2B08();
  fig_log_get_emitter();
  sub_2AF8();
  *v0 = FigSignalErrorAtGM();
}

void sub_15C50()
{
  sub_2B08();
  fig_log_get_emitter();
  sub_2AF8();
  *v0 = FigSignalErrorAtGM();
}

void sub_15CD4()
{
  sub_2B08();
  fig_log_get_emitter();
  sub_2AF8();
  *v0 = FigSignalErrorAtGM();
}

void sub_15D58()
{
  sub_2B08();
  fig_log_get_emitter();
  sub_2AF8();
  *v0 = FigSignalErrorAtGM();
}

void sub_15DDC()
{
  sub_2B50();
  fig_log_get_emitter();
  sub_2AF8();
  v0 = FigSignalErrorAtGM();
  v8 = sub_2B44(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
}

uint64_t sub_15E50(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_15EAC(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_15F08(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_15F64(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_15FC0(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1601C(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_16078(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_160D4(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_16130()
{
  fig_log_get_emitter();
  sub_2AF8();
  return FigSignalErrorAtGM();
}

uint64_t sub_16184()
{
  fig_log_get_emitter();
  sub_2AF8();

  return FigSignalErrorAtGM();
}

uint64_t sub_161E4()
{
  fig_log_get_emitter();
  sub_2AF8();

  return FigSignalErrorAtGM();
}

uint64_t sub_16244()
{
  fig_log_get_emitter();
  sub_2AF8();

  return FigSignalErrorAtGM();
}

uint64_t sub_162A4()
{
  fig_log_get_emitter();
  sub_2AF8();

  return FigSignalErrorAtGM();
}

void sub_16304()
{
  sub_2B50();
  fig_log_get_emitter();
  sub_2AF8();
  v0 = FigSignalErrorAtGM();
  v8 = sub_2B44(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
}

void sub_16378()
{
  sub_2B50();
  fig_log_get_emitter();
  sub_2AF8();
  v0 = FigSignalErrorAtGM();
  v8 = sub_2B44(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
}

uint64_t sub_163EC(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_16448(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_164A4(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_16500(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_174AC(uint64_t a1, void *a2)
{
  fig_log_get_emitter();
  sub_4C0C();
  FigDebugAssert3();
}

void sub_1753C(uint64_t a1, void *a2)
{
  fig_log_get_emitter();
  sub_4C0C();
  FigDebugAssert3();
}

void sub_175CC(uint64_t a1, void *a2)
{
  fig_log_get_emitter();
  sub_4C0C();
  FigDebugAssert3();
}

void sub_1765C(void *a1)
{
  fig_log_get_emitter();
  sub_4BF4();
  FigDebugAssert3();
}

void sub_176DC(void *a1)
{
  fig_log_get_emitter();
  sub_4BF4();
  FigDebugAssert3();
}

void sub_1775C(void *a1)
{
  fig_log_get_emitter();
  sub_4BF4();
  FigDebugAssert3();
}

void sub_177DC(void *a1)
{
  fig_log_get_emitter();
  sub_4BF4();
  FigDebugAssert3();
}

void sub_1785C(void *a1)
{
  fig_log_get_emitter();
  sub_4BF4();
  FigDebugAssert3();
}

void sub_178DC(void *a1)
{
  fig_log_get_emitter();
  sub_4BF4();
  FigDebugAssert3();
}

void sub_1795C(void *a1)
{
  fig_log_get_emitter();
  sub_4BF4();
  FigDebugAssert3();
}

uint64_t sub_179DC()
{
  fig_log_get_emitter();
  sub_4BF4();
  return FigDebugAssert3();
}

void sub_17A54(void *a1)
{
  fig_log_get_emitter();
  sub_4BF4();
  FigDebugAssert3();
}

uint64_t sub_17AE4(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_17B40(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_17B9C(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_17BF8(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_17C54(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_17CB0(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_17D0C(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_17D68(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_17DC4(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  sub_2B5C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_17E70(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  sub_2B5C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_17F1C(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  sub_2B5C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_17FC8(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  sub_2B5C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_18074(void *a1, void *a2, _DWORD *a3)
{
  fig_log_get_emitter();
  sub_2AF8();
  *a3 = FigSignalErrorAtGM();
}

void sub_18100()
{
  sub_2B50();
  fig_log_get_emitter();
  sub_2AF8();
  v0 = FigSignalErrorAtGM();
  v8 = sub_2B44(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
}

void sub_18174()
{
  sub_2B50();
  fig_log_get_emitter();
  sub_2AF8();
  v0 = FigSignalErrorAtGM();
  v8 = sub_2B44(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
}

void sub_181E8()
{
  sub_2B50();
  fig_log_get_emitter();
  sub_2AF8();
  v0 = FigSignalErrorAtGM();
  v8 = sub_2B44(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
}

void sub_1825C()
{
  sub_2B50();
  fig_log_get_emitter();
  sub_2AF8();
  v0 = FigSignalErrorAtGM();
  v8 = sub_2B44(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
}

void sub_182D0()
{
  sub_2B50();
  fig_log_get_emitter();
  sub_2AF8();
  v0 = FigSignalErrorAtGM();
  v8 = sub_2B44(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
}

uint64_t sub_18344(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_183A0(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_183FC(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_18458(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_184B4()
{
  fig_log_get_emitter();
  sub_4BF4();
  return FigDebugAssert3();
}

uint64_t sub_1852C()
{
  fig_log_get_emitter();
  sub_4C0C();
  return FigDebugAssert3();
}

uint64_t sub_185AC()
{
  fig_log_get_emitter();
  sub_4C0C();
  return FigDebugAssert3();
}

uint64_t sub_1862C(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_186D8(void *a1, void *a2, void *a3, void *a4)
{
  sub_4C20();
  sub_5768();
  FigDebugAssert3();
}

void sub_18770(void *a1)
{
  sub_4C20();
  sub_5768();
  FigDebugAssert3();
}

void sub_187E0(void *a1, void *a2, void *a3, void *a4)
{
  sub_4C20();
  sub_5768();
  FigDebugAssert3();
}

void sub_18878(void *a1)
{
  sub_4C20();
  sub_5768();
  FigDebugAssert3();
}

void sub_188E8(void *a1, void *a2, void *a3, void *a4)
{
  sub_4C20();
  sub_5768();
  FigDebugAssert3();
}

uint64_t sub_18980()
{
  sub_4C20();
  sub_5768();
  return FigDebugAssert3();
}

uint64_t sub_189D8()
{
  sub_4C20();
  sub_5768();
  return FigDebugAssert3();
}

uint64_t sub_18A30()
{
  sub_4C20();
  sub_5768();
  return FigDebugAssert3();
}

uint64_t sub_18A88()
{
  sub_4C20();
  sub_5768();
  return FigDebugAssert3();
}

uint64_t sub_18AE0()
{
  sub_4C20();
  sub_5768();
  return FigDebugAssert3();
}

uint64_t sub_18B38()
{
  sub_4C20();
  sub_5768();
  return FigDebugAssert3();
}

uint64_t sub_18B90()
{
  sub_4C20();
  sub_5768();
  return FigDebugAssert3();
}

uint64_t sub_18BE8()
{
  sub_4C20();
  sub_5768();
  return FigDebugAssert3();
}

uint64_t sub_18C40()
{
  sub_4C20();
  sub_5768();
  return FigDebugAssert3();
}

uint64_t sub_18C98()
{
  sub_4C20();
  sub_5768();
  return FigDebugAssert3();
}

uint64_t sub_18CF0()
{
  sub_4C20();
  sub_5768();
  return FigDebugAssert3();
}

void sub_18D48(void *a1)
{
  sub_4C20();
  sub_5768();
  FigDebugAssert3();
}

void sub_18DB8(void *a1)
{
  sub_4C20();
  sub_5768();
  FigDebugAssert3();
}

void sub_18E28(void *a1)
{
  sub_4C20();
  sub_5768();
  FigDebugAssert3();
}

void sub_18E98(void *a1)
{
  sub_4C20();
  sub_5768();
  FigDebugAssert3();
}

void sub_18F08(void *a1)
{
  sub_4C20();
  sub_5768();
  FigDebugAssert3();
}

uint64_t sub_18F78()
{
  sub_4C20();
  sub_5768();
  return FigDebugAssert3();
}

uint64_t sub_18FD0()
{
  sub_4C20();
  sub_5768();
  return FigDebugAssert3();
}

uint64_t sub_19028()
{
  sub_4C20();
  sub_5768();
  return FigDebugAssert3();
}

uint64_t sub_19080(uint64_t a1, _DWORD *a2)
{
  sub_7914();
  sub_5768();
  FigDebugAssert3();
  sub_7924();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t sub_19108(_DWORD *a1)
{
  sub_7944();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_191B0(_DWORD *a1)
{
  sub_7914();
  sub_5768();
  FigDebugAssert3();
  sub_7924();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_19238(_DWORD *a1)
{
  sub_7914();
  sub_5768();
  FigDebugAssert3();
  sub_7924();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_192C0(_DWORD *a1)
{
  sub_7914();
  sub_5768();
  FigDebugAssert3();
  sub_7924();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_19348(_DWORD *a1)
{
  sub_7914();
  sub_5768();
  FigDebugAssert3();
  sub_7924();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_193D0(_DWORD *a1)
{
  sub_7914();
  sub_5768();
  FigDebugAssert3();
  sub_7924();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_19458(_DWORD *a1)
{
  sub_7914();
  sub_5768();
  FigDebugAssert3();
  sub_7924();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_194E0(_DWORD *a1)
{
  sub_7914();
  sub_5768();
  FigDebugAssert3();
  sub_7924();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_19568(_DWORD *a1)
{
  sub_7914();
  sub_5768();
  FigDebugAssert3();
  sub_7924();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_195F0(_DWORD *a1)
{
  sub_7914();
  sub_5768();
  FigDebugAssert3();
  sub_7924();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_196D8()
{
  sub_5768();
  FigDebugAssert3();
  sub_7944();
  return FigSignalErrorAtGM();
}

uint64_t sub_19760(_DWORD *a1)
{
  sub_795C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_197A8(_DWORD *a1)
{
  sub_795C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_197F0(void *a1, _DWORD *a2)
{
  sub_7914();
  sub_5768();
  FigDebugAssert3();
  sub_7944();
  *a2 = FigSignalErrorAtGM();
}

uint64_t sub_19890(_DWORD *a1)
{
  sub_7914();
  sub_5768();
  FigDebugAssert3();
  sub_7944();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_19918(_DWORD *a1)
{
  sub_7914();
  sub_5768();
  FigDebugAssert3();
  sub_7950();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_199A0(_DWORD *a1)
{
  sub_7914();
  sub_5768();
  FigDebugAssert3();
  sub_7950();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_19A28(_DWORD *a1)
{
  sub_7914();
  sub_5768();
  FigDebugAssert3();
  sub_7924();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_19AB0(_DWORD *a1)
{
  sub_795C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_19AF8(_DWORD *a1)
{
  sub_795C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_19B40(void *a1, void *a2, void *a3, _DWORD *a4)
{
  sub_5768();
  FigDebugAssert3();
  sub_7944();
  *a4 = FigSignalErrorAtGM();
}

void sub_19C00(void *a1, void *a2, _DWORD *a3)
{
  sub_5768();
  FigDebugAssert3();
  sub_7944();
  *a3 = FigSignalErrorAtGM();
}

void sub_19CB8(void *a1, _DWORD *a2)
{
  sub_7914();
  sub_5768();
  FigDebugAssert3();
  sub_7950();
  *a2 = FigSignalErrorAtGM();
}

uint64_t sub_19D58(_DWORD *a1)
{
  sub_7914();
  sub_5768();
  FigDebugAssert3();
  sub_7950();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_19EA0(_DWORD *a1)
{
  sub_7914();
  sub_5768();
  FigDebugAssert3();
  sub_7944();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_19F28(_DWORD *a1)
{
  sub_7914();
  sub_5768();
  FigDebugAssert3();
  sub_7944();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_19FB0(_DWORD *a1)
{
  sub_7914();
  sub_5768();
  FigDebugAssert3();
  sub_7950();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1A038(_DWORD *a1)
{
  sub_7914();
  sub_5768();
  FigDebugAssert3();
  sub_7950();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1A1E0(_DWORD *a1)
{
  sub_7944();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1A228(_DWORD *a1)
{
  sub_7914();
  sub_5768();
  FigDebugAssert3();
  sub_7944();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1A2B0(_DWORD *a1)
{
  sub_7914();
  sub_5768();
  FigDebugAssert3();
  sub_7950();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1A338(_DWORD *a1)
{
  sub_7914();
  sub_5768();
  FigDebugAssert3();
  sub_7950();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1A3C0(_DWORD *a1)
{
  sub_795C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1A408(_DWORD *a1)
{
  sub_795C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_1A450(void *a1, _DWORD *a2)
{
  sub_7914();
  sub_5768();
  FigDebugAssert3();
  sub_7950();
  *a2 = FigSignalErrorAtGM();
}

uint64_t sub_1A4F0(_DWORD *a1)
{
  sub_7914();
  sub_5768();
  FigDebugAssert3();
  sub_7950();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1A698(_DWORD *a1)
{
  sub_7914();
  sub_5768();
  FigDebugAssert3();
  sub_7944();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1A720(_DWORD *a1)
{
  sub_7914();
  sub_5768();
  FigDebugAssert3();
  sub_7944();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1A7A8(_DWORD *a1)
{
  sub_7914();
  sub_5768();
  FigDebugAssert3();
  sub_7944();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1A880()
{
  fig_log_get_emitter();
  sub_4C0C();
  return FigDebugAssert3();
}

void sub_1A900(uint64_t a1, void *a2, void *a3)
{
  fig_log_get_emitter();
  FigDebugAssert3();
  fig_log_get_emitter();
  FigSignalErrorAtGM();
}

void sub_1A9DC(uint64_t a1, void *a2, void *a3)
{
  fig_log_get_emitter();
  sub_4C0C();
  FigDebugAssert3();
}

void sub_1AA74(uint64_t a1, void *a2, void *a3)
{
  fig_log_get_emitter();
  sub_4C0C();
  FigDebugAssert3();
}

void sub_1AB0C(void *a1, void *a2)
{
  fig_log_get_emitter();
  sub_4BF4();
  FigDebugAssert3();
}

void sub_1AB9C(void *a1, void *a2)
{
  fig_log_get_emitter();
  sub_4BF4();
  FigDebugAssert3();
}

void sub_1AC2C(void *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  FigSignalErrorAtGM();
}

void sub_1ACDC(void *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  FigSignalErrorAtGM();
}

uint64_t sub_1AD88()
{
  fig_log_get_emitter();
  sub_4BF4();
  return FigDebugAssert3();
}

uint64_t sub_1AE00(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1AE5C(char a1, _BYTE *a2)
{
  fig_log_get_emitter();
  sub_4BF4();
  result = FigDebugAssert3();
  *a2 = a1 & 1;
  return result;
}

uint64_t sub_1AEEC(char a1, _BYTE *a2)
{
  fig_log_get_emitter();
  sub_4BF4();
  result = FigDebugAssert3();
  *a2 = a1 & 1;
  return result;
}

uint64_t sub_1AF7C(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1AFD8()
{
  fig_log_get_emitter();
  sub_4BF4();
  return FigDebugAssert3();
}

uint64_t sub_1B050()
{
  fig_log_get_emitter();
  sub_4BF4();
  return FigDebugAssert3();
}

uint64_t sub_1B0C8(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1B178()
{
  fig_log_get_emitter();
  sub_4C0C();
  return FigDebugAssert3();
}

uint64_t sub_1B1F8()
{
  fig_log_get_emitter();
  sub_4C0C();
  return FigDebugAssert3();
}

uint64_t sub_1B278()
{
  fig_log_get_emitter();
  sub_4BF4();
  return FigDebugAssert3();
}

uint64_t sub_1B2F0(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1B34C(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1B3A8(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1B454(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1B4B0(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1B55C(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1B5B8(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1B664(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1B710(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1B76C(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1B7C8(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1B824(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1B880(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1B8DC()
{
  fig_log_get_emitter();
  sub_4BF4();
  return FigDebugAssert3();
}

uint64_t sub_1B954()
{
  fig_log_get_emitter();
  sub_4BF4();
  return FigDebugAssert3();
}

uint64_t sub_1B9CC()
{
  fig_log_get_emitter();
  sub_4BF4();
  return FigDebugAssert3();
}

uint64_t sub_1BA44()
{
  fig_log_get_emitter();
  sub_4BF4();
  return FigDebugAssert3();
}

uint64_t sub_1BABC()
{
  fig_log_get_emitter();
  sub_4BF4();
  return FigDebugAssert3();
}

uint64_t sub_1BB34()
{
  fig_log_get_emitter();
  sub_4BF4();
  return FigDebugAssert3();
}

uint64_t sub_1BBAC()
{
  fig_log_get_emitter();
  sub_4BF4();
  return FigDebugAssert3();
}

uint64_t sub_1BC24()
{
  fig_log_get_emitter();
  sub_4BF4();
  return FigDebugAssert3();
}

uint64_t sub_1BC9C()
{
  fig_log_get_emitter();
  sub_4BF4();
  return FigDebugAssert3();
}

uint64_t sub_1BEB4(void *a1, uint64_t a2, double *a3, uint64_t a4, double a5, double a6)
{
  v11 = a1;
  origin = CGRectNull.origin;
  *v124 = CGRectNull.origin;
  size = CGRectNull.size;
  *&v124[16] = size;
  FigCFDictionaryGetCGRectIfPresent();
  v129.origin = *v124;
  v129.size = size;
  if (CGRectIsEmpty(v129))
  {
    goto LABEL_20;
  }

  v12 = kFigCaptureStreamMetadata_RawSensorWidth;
  v13 = [v11 objectForKeyedSubscript:kFigCaptureStreamMetadata_RawSensorWidth];
  v14 = [v13 intValue];

  v15 = kFigCaptureStreamMetadata_RawSensorHeight;
  v16 = [v11 objectForKeyedSubscript:kFigCaptureStreamMetadata_RawSensorHeight];
  v17 = [v16 intValue];

  v18 = v14 - 1;
  if (v14 < 1 || v17 < 1)
  {
    goto LABEL_20;
  }

  HIDWORD(v114) = v14;
  v20 = v11;
  if (!v20)
  {
    goto LABEL_68;
  }

  v126.origin = origin;
  v126.size = size;
  FigCFDictionaryGetCGRectIfPresent();
  v130.origin = origin;
  v130.size = size;
  if (CGRectIsEmpty(v130))
  {
    goto LABEL_68;
  }

  LODWORD(origin.x) = v18;
  v21 = [v20 objectForKeyedSubscript:v12];
  v22 = [v21 intValue];

  v23 = [v20 objectForKeyedSubscript:v15];
  v24 = [v23 intValue];

  if (v22 < 1 || v24 < 1)
  {
LABEL_68:
    v29 = 0;
LABEL_19:

LABEL_20:
    v34 = 0;
    goto LABEL_67;
  }

  LODWORD(size.width) = v17;
  v26 = a2;
  v27 = a3;
  v28 = [v20 objectForKeyedSubscript:kFigCaptureStreamMetadata_LocalHistogramClippingData];
  v29 = v28;
  if (!v28)
  {
    goto LABEL_19;
  }

  if ([v28 length] < 8)
  {
    goto LABEL_19;
  }

  v30 = [v29 bytes];
  v31 = [v29 length];
  v32 = v30[1];
  if (v31 < v32)
  {
    goto LABEL_19;
  }

  if (v32 < 0x2C || *v30 != 1)
  {
    goto LABEL_19;
  }

  v35 = [v29 bytes];
  if (*(v35 + 19) == -1)
  {
    goto LABEL_19;
  }

  v36 = v35;
  v110 = *&a4;
  if (*(v35 + 17) == -1)
  {
    v37 = 1;
  }

  else
  {
    v37 = 2;
  }

  if (*(v35 + 20) != -1)
  {
    ++v37;
  }

  v38 = *(v35 + 21) == -1 ? v37 : v37 + 1;
  v39 = *(v35 + 10);
  v40 = *(v35 + 11);
  if (2 * (v40 * v39 * v38) + 44 != v30[1])
  {
    goto LABEL_19;
  }

  v41 = *(v35 + 4);
  if (v41 < 0)
  {
    goto LABEL_19;
  }

  v42 = *(v35 + 5);
  if (v42 < 0)
  {
    goto LABEL_19;
  }

  v43 = v41 + (*(v35 + 6) - *(v35 + 8) + *(v35 + 8) * v39);
  v44 = v42 + (*(v35 + 7) - *(v35 + 9) + *(v35 + 9) * v40);
  if (v43 > v22 || v44 > v24)
  {
    goto LABEL_19;
  }

  v127.x = *(v35 + 4);
  v127.y = *(v35 + 5);
  v46 = (v43 - 1);
  v47 = (v44 - 1);
  if (!CGRectContainsPoint(v126, v127))
  {
    fig_log_get_emitter();
    sub_9564();
    FigDebugAssert3();
  }

  v128.x = v46;
  v128.y = v47;
  if (!CGRectContainsPoint(v126, v128))
  {
    fig_log_get_emitter();
    sub_9564();
    FigDebugAssert3();
  }

  if (*(v36 + 11))
  {
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = *(v36 + 19);
    v61 = HIDWORD(v114);
    do
    {
      if (*(v36 + 10))
      {
        v62 = 0;
        v63 = *(v36 + 12);
        do
        {
          if (*(v36 + v60 + 22) << v63 > v58)
          {
            v58 = *(v36 + v60 + 22) << v63;
            v57 = v59;
            v56 = v62;
          }

          v60 += v38;
          ++v62;
        }

        while (*(v36 + 10) != v62);
      }

      ++v59;
    }

    while (v59 != *(v36 + 11));
    *&v48 = v58;
  }

  else
  {
    v57 = 0;
    v56 = 0;
    v48 = 0.0;
    v61 = HIDWORD(v114);
  }

  *&v48 = *&v48 / v36[7];
  LODWORD(v49) = *(v26 + 4);
  v64 = v110;
  if (*&v48 < *&v49)
  {
    goto LABEL_20;
  }

  LOWORD(v48) = *(v36 + 6);
  LOWORD(v49) = *(v36 + 7);
  v65 = LODWORD(v48);
  v66 = LODWORD(v49);
  *&v48 = (*(v36 + 4) + v56 * *(v36 + 8));
  *&v49 = (*(v36 + 5) + v57 * *(v36 + 9));
  v67 = llroundf(*&v48);
  v68 = llroundf(*&v49);
  v69 = llroundf(v65);
  v70 = llroundf(v66);
  v131.origin.x = sub_957C(v48, v49, v50, v51, v52, v53, v54, v55, v104, v106, v108, v110, v112, v114, size.width, size.height, origin.x, origin.y, *v124);
  if (!CGRectIntersectsRect(v131, v137))
  {
    goto LABEL_20;
  }

  v132.origin.x = sub_957C(v71, v72, v73, v74, v75, v76, v77, v78, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125);
  if (!CGRectContainsRect(v132, v138))
  {
    fig_log_get_emitter();
    sub_9564();
    FigDebugAssert3();
  }

  v133.origin.x = v67;
  v133.origin.y = v68;
  v133.size.width = v69;
  v133.size.height = v70;
  v134 = CGRectIntersection(v133, *v124);
  x = v134.origin.x;
  y = v134.origin.y;
  width = v134.size.width;
  height = v134.size.height;
  if (CGRectIsEmpty(v134))
  {
    goto LABEL_20;
  }

  v83 = x + width + -1.0;
  v84 = y + height + -1.0;
  v85 = a5 * (v61 + -1.0);
  v86 = a6 * (v118 + -1.0);
  v87 = (v85 - v83) + v85;
  v88 = (v86 - v84) + v86;
  v89 = llroundf(*v26 * v65);
  v90 = llroundf(*v26 * v66);
  v91 = fmaxf(v87 - v89, 0.0);
  v92 = fmaxf(v88 - v90, 0.0);
  v93 = width + v87 + v89;
  if (v93 > v122)
  {
    v93 = v122;
  }

  v94 = v93;
  v95 = height + v88 + v90;
  if (v95 > (v118 - 1))
  {
    v95 = (v118 - 1);
  }

  v96 = v95;
  v97 = (v94 - v91) + 1.0;
  v98 = (v96 - v92) + 1.0;
  v135.origin.x = v91;
  v135.origin.y = v92;
  v135.size.width = v97;
  v135.size.height = v98;
  v136 = CGRectIntersection(v135, *v124);
  v99 = v136.origin.x;
  v100 = v136.origin.y;
  v101 = v136.size.width;
  v102 = v136.size.height;
  if (CGRectIsEmpty(v136))
  {
    fig_log_get_emitter();
    sub_9564();
    FigDebugAssert3();
    goto LABEL_20;
  }

  if (v27)
  {
    *v27 = x - *v124;
    v27[1] = y - *&v124[8];
    v27[2] = width;
    v27[3] = height;
  }

  if (v64 != 0.0)
  {
    **&v64 = v99 - *v124;
    *(*&v64 + 8) = v100 - *&v124[8];
    *(*&v64 + 16) = v101;
    *(*&v64 + 24) = v102;
  }

  v34 = 1;
LABEL_67:

  return v34;
}

uint64_t sub_1C5B8(const __CFDictionary *a1, int a2, int a3, int a4, int a5, int a6, float64x2_t *a7, float a8, float a9)
{
  value = 0;
  v19 = CGPointZero;
  point = v19;
  if (a1 && a7)
  {
    v16 = (a2 + -1.0) * 0.5;
    v17 = (a3 + -1.0) * 0.5;
    v22.f64[0] = v16;
    v22.f64[1] = v17;
    if (CFDictionaryGetValueIfPresent(a1, kFigCaptureStreamMetadata_OpticalCenter, &value) && CGPointMakeWithDictionaryRepresentation(value, &point) && sub_A76C(a1, &v19))
    {
      v22.f64[0] = v16 + (point.x - v19.x) * a9 * a4;
      v22.f64[1] = v17 + (point.y - v19.y) * a9 * a5;
    }

    if (!a6 || (result = sub_A6DC(a1, &v22, a8, a9), !result))
    {
      result = 0;
      *a7 = v22;
    }
  }

  else
  {
    sub_4C9C();
    FigDebugAssert3();
    sub_4C9C();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t sub_1C7B0(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1C85C(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1C908(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1C9B4(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1CA60(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1CB0C()
{
  fig_log_get_emitter();
  sub_A830();
  return FigDebugAssert3();
}

uint64_t sub_1CB84(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1CC30(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1CCDC(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1CD88(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1CE34()
{
  fig_log_get_emitter();
  sub_A830();
  return FigDebugAssert3();
}

uint64_t sub_1CEAC(uint64_t a1, _DWORD *a2)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t sub_1CF58(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1D004(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1D0B0(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1D15C(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1D208()
{
  sub_2B2C();
  sub_A864();
  sub_A848();
  FigDebugAssert3();
  sub_2B2C();
  sub_A848();
  return FigDebugAssert3();
}

uint64_t sub_1D2BC()
{
  fig_log_get_emitter();
  sub_A830();
  return FigDebugAssert3();
}

uint64_t sub_1D334(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1D3E0(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1D48C(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1D538(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1D5E4(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1D690()
{
  fig_log_get_emitter();
  sub_A830();
  return FigDebugAssert3();
}

uint64_t sub_1D70C(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1D768(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1D7C4(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1D820(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1D87C(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1D928(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1D9D4()
{
  sub_2B2C();
  sub_A864();
  sub_A848();
  FigDebugAssert3();
  sub_2B2C();
  sub_A848();
  return FigDebugAssert3();
}

uint64_t sub_1DA88(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1DB34(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1DBE0()
{
  fig_log_get_emitter();
  sub_A830();
  return FigDebugAssert3();
}

uint64_t sub_1DC58(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1E668()
{
  fig_log_get_emitter();
  sub_4C0C();
  return FigDebugAssert3();
}

uint64_t sub_1E6E8()
{
  fig_log_get_emitter();
  sub_4C0C();
  return FigDebugAssert3();
}

uint64_t sub_1E764()
{
  fig_log_get_emitter();
  sub_4C0C();
  return FigDebugAssert3();
}

uint64_t sub_1E7E0()
{
  fig_log_get_emitter();
  sub_4C0C();
  return FigDebugAssert3();
}

uint64_t sub_1E85C()
{
  fig_log_get_emitter();
  sub_4C0C();
  return FigDebugAssert3();
}

uint64_t sub_1E8DC()
{
  fig_log_get_emitter();
  sub_4C0C();
  return FigDebugAssert3();
}

uint64_t sub_1E95C()
{
  fig_log_get_emitter();
  sub_4C0C();
  return FigDebugAssert3();
}

uint64_t sub_1E9DC(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1EA38(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1EA94(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1EAF0(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1EB4C(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1EBA8(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1EC04(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1EC60(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1ECBC(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1ED18(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2007C()
{
  fig_log_get_emitter();
  sub_4BF4();
  return FigDebugAssert3();
}

void sub_200F4(void *a1)
{
  fig_log_get_emitter();
  sub_4BF4();
  FigDebugAssert3();
}

void sub_20184(void *a1)
{
  fig_log_get_emitter();
  sub_4BF4();
  FigDebugAssert3();
}

uint64_t sub_20214()
{
  fig_log_get_emitter();
  sub_2AF8();
  return FigSignalErrorAtGM();
}

uint64_t sub_20268()
{
  fig_log_get_emitter();
  sub_2AF8();
  return FigSignalErrorAtGM();
}

uint64_t sub_202BC()
{
  fig_log_get_emitter();
  sub_2AF8();
  return FigSignalErrorAtGM();
}

uint64_t sub_20310()
{
  fig_log_get_emitter();
  sub_2AF8();
  return FigSignalErrorAtGM();
}

uint64_t sub_20364()
{
  fig_log_get_emitter();
  sub_2AF8();
  return FigSignalErrorAtGM();
}

uint64_t sub_203B8()
{
  fig_log_get_emitter();
  sub_2AF8();
  return FigSignalErrorAtGM();
}

uint64_t sub_2040C()
{
  sub_CE34();
  sub_2B18();
  FigDebugAssert3();
  sub_CE34();
  sub_2B5C();
  return FigSignalErrorAtGM();
}

uint64_t sub_204B0()
{
  sub_CE34();
  sub_2B18();
  FigDebugAssert3();
  sub_CE34();
  sub_2B5C();
  return FigSignalErrorAtGM();
}

uint64_t sub_20554()
{
  sub_CE34();
  sub_2B18();
  FigDebugAssert3();
  sub_CE34();
  sub_2B5C();
  return FigSignalErrorAtGM();
}

uint64_t sub_205F8()
{
  sub_CE34();
  sub_2B18();
  FigDebugAssert3();
  sub_CE34();
  sub_2B5C();
  return FigSignalErrorAtGM();
}

uint64_t sub_2069C()
{
  sub_CE34();
  sub_2B18();
  FigDebugAssert3();
  sub_CE34();
  sub_2B5C();
  return FigSignalErrorAtGM();
}

uint64_t sub_20740()
{
  fig_log_get_emitter();
  sub_2AF8();
  return FigSignalErrorAtGM();
}

uint64_t sub_20794()
{
  fig_log_get_emitter();
  sub_2AF8();
  return FigSignalErrorAtGM();
}

uint64_t sub_207E8()
{
  fig_log_get_emitter();
  sub_2AF8();
  return FigSignalErrorAtGM();
}

uint64_t sub_2083C()
{
  fig_log_get_emitter();
  sub_2AF8();
  return FigSignalErrorAtGM();
}

uint64_t sub_20890()
{
  fig_log_get_emitter();
  sub_2AF8();
  return FigSignalErrorAtGM();
}

uint64_t sub_208E4()
{
  fig_log_get_emitter();
  sub_2AF8();
  return FigSignalErrorAtGM();
}

uint64_t sub_20938()
{
  fig_log_get_emitter();
  sub_4BF4();
  return FigDebugAssert3();
}

uint64_t sub_209B0()
{
  fig_log_get_emitter();
  sub_4BF4();
  return FigDebugAssert3();
}

uint64_t sub_20A28()
{
  fig_log_get_emitter();
  sub_4BF4();
  return FigDebugAssert3();
}

uint64_t sub_20AA0()
{
  fig_log_get_emitter();
  sub_4BF4();
  return FigDebugAssert3();
}

uint64_t sub_20B18()
{
  fig_log_get_emitter();
  sub_4C0C();
  return FigDebugAssert3();
}

uint64_t sub_20B98()
{
  fig_log_get_emitter();
  sub_4C0C();
  return FigDebugAssert3();
}

uint64_t sub_20C18()
{
  fig_log_get_emitter();
  sub_4C0C();
  return FigDebugAssert3();
}

uint64_t sub_20C98()
{
  fig_log_get_emitter();
  sub_4C0C();
  return FigDebugAssert3();
}

uint64_t sub_20D18()
{
  fig_log_get_emitter();
  sub_4C0C();
  return FigDebugAssert3();
}

uint64_t sub_20D98()
{
  fig_log_get_emitter();
  sub_4BF4();
  return FigDebugAssert3();
}

uint64_t sub_20E10()
{
  fig_log_get_emitter();
  sub_4BF4();
  return FigDebugAssert3();
}

uint64_t sub_20E88()
{
  fig_log_get_emitter();
  sub_4BF4();
  return FigDebugAssert3();
}

uint64_t sub_20F00()
{
  fig_log_get_emitter();
  sub_4C0C();
  return FigDebugAssert3();
}

uint64_t sub_20F80()
{
  fig_log_get_emitter();
  sub_4BF4();
  return FigDebugAssert3();
}

uint64_t sub_20FF8()
{
  fig_log_get_emitter();
  sub_4BF4();
  return FigDebugAssert3();
}

uint64_t sub_21070()
{
  fig_log_get_emitter();
  sub_4BF4();
  return FigDebugAssert3();
}

uint64_t sub_210E8()
{
  fig_log_get_emitter();
  sub_4BF4();
  return FigDebugAssert3();
}

uint64_t sub_21160()
{
  fig_log_get_emitter();
  sub_4BF4();
  return FigDebugAssert3();
}

uint64_t sub_211D8()
{
  fig_log_get_emitter();
  sub_4BF4();
  return FigDebugAssert3();
}

uint64_t sub_21250()
{
  fig_log_get_emitter();
  sub_4BF4();
  return FigDebugAssert3();
}

void sub_212C8(void *a1, _DWORD *a2)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  sub_2B5C();
  *a2 = FigSignalErrorAtGM();
}

uint64_t sub_2138C(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  sub_2B5C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_21438()
{
  fig_log_get_emitter();
  sub_4BF4();
  return FigDebugAssert3();
}

uint64_t sub_214B0()
{
  fig_log_get_emitter();
  sub_4BF4();
  return FigDebugAssert3();
}

uint64_t sub_21528()
{
  fig_log_get_emitter();
  sub_4BF4();
  return FigDebugAssert3();
}

void sub_215A0(void *a1, _DWORD *a2)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  sub_2B5C();
  *a2 = FigSignalErrorAtGM();
}

uint64_t sub_21664(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  sub_2B5C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_21710()
{
  fig_log_get_emitter();
  sub_4BF4();
  return FigDebugAssert3();
}

uint64_t sub_21788()
{
  fig_log_get_emitter();
  sub_4BF4();
  return FigDebugAssert3();
}

uint64_t sub_21800()
{
  fig_log_get_emitter();
  sub_4BF4();
  return FigDebugAssert3();
}

uint64_t sub_21878(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  sub_2B5C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_21924(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  sub_2B5C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_219D0(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  sub_2B5C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_21A7C(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  sub_2B5C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_21B28(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  sub_2B5C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_21BD4(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  sub_2B5C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_21C80(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  sub_2B5C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_21D2C(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  sub_2B5C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_21DD8(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  sub_2B5C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_21E84(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_21F34(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_21FE4(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_22094()
{
  fig_log_get_emitter();
  sub_A830();
  return FigDebugAssert3();
}

uint64_t sub_22198()
{
  fig_log_get_emitter();
  sub_2B18();
  FigDebugAssert3();
  fig_log_get_emitter();
  return FigSignalErrorAtGM();
}

uint64_t sub_2224C(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_222A8(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_22354(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_22400(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2245C(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_224B8(void *a1, _DWORD *a2)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  *a2 = FigSignalErrorAtGM();
}

uint64_t sub_2257C(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_22628(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_22684(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_226E0(uint64_t a1, void *a2)
{
  fig_log_get_emitter();
  sub_A830();
  FigDebugAssert3();
}

void sub_22774(uint64_t a1, void *a2)
{
  fig_log_get_emitter();
  sub_A830();
  FigDebugAssert3();
}

void sub_22808(uint64_t a1, void *a2)
{
  fig_log_get_emitter();
  sub_A830();
  FigDebugAssert3();
}

void sub_2289C(void *a1, void *a2, _DWORD *a3)
{
  fig_log_get_emitter();
  FigDebugAssert3();
  fig_log_get_emitter();
  *a3 = FigSignalErrorAtGM();
}

void sub_2298C(void *a1, _DWORD *a2)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  *a2 = FigSignalErrorAtGM();
}

void sub_22A50(void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  sub_2AF8();
  *a2 = FigSignalErrorAtGM();
}

uint64_t sub_22ACC(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_22B28()
{
  fig_log_get_emitter();
  sub_A830();
  return FigDebugAssert3();
}

uint64_t sub_22BA4()
{
  fig_log_get_emitter();
  sub_A830();
  return FigDebugAssert3();
}

uint64_t sub_22C20()
{
  fig_log_get_emitter();
  sub_A830();
  return FigDebugAssert3();
}

uint64_t sub_22C9C(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_22D48(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_22DF4(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_22EA0(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_22F4C(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_22FA8()
{
  fig_log_get_emitter();
  sub_A830();
  return FigDebugAssert3();
}

uint64_t sub_23024()
{
  fig_log_get_emitter();
  sub_A830();
  return FigDebugAssert3();
}

uint64_t sub_230A0()
{
  fig_log_get_emitter();
  sub_A830();
  return FigDebugAssert3();
}

uint64_t sub_2311C(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_231C8(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_23224(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_232D0(_DWORD *a1)
{
  sub_2B2C();
  sub_2B18();
  FigDebugAssert3();
  sub_2B2C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_23E98()
{
  fig_log_get_emitter();
  sub_4C0C();
  return FigDebugAssert3();
}

uint64_t sub_23F18()
{
  fig_log_get_emitter();
  sub_4C0C();
  return FigDebugAssert3();
}

uint64_t sub_23F98()
{
  fig_log_get_emitter();
  sub_4C0C();
  return FigDebugAssert3();
}

uint64_t sub_24014()
{
  fig_log_get_emitter();
  sub_4C0C();
  return FigDebugAssert3();
}

uint64_t sub_24090()
{
  fig_log_get_emitter();
  sub_4C0C();
  return FigDebugAssert3();
}

uint64_t sub_2410C()
{
  fig_log_get_emitter();
  sub_4C0C();
  return FigDebugAssert3();
}

uint64_t sub_24188()
{
  fig_log_get_emitter();
  sub_4C0C();
  return FigDebugAssert3();
}

uint64_t sub_24208()
{
  fig_log_get_emitter();
  sub_4C0C();
  return FigDebugAssert3();
}

uint64_t sub_24284(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_242E0(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2433C(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_24398(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_243F4(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_24450(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_244AC(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_24508(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_24564(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_245C0(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2461C(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_24678(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_246D4(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_24730(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2478C(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_2AF8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}