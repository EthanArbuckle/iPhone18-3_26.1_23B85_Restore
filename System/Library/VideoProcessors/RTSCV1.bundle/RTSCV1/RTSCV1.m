uint64_t portIndexFromPortType(const void *a1, int *a2)
{
  if (!a1)
  {
    portIndexFromPortType_cold_2(&v7);
    return v7;
  }

  if (!a2)
  {
    portIndexFromPortType_cold_1(&v6);
    return v6;
  }

  if (CFEqual(a1, kFigCapturePortType_BackFacingCamera))
  {
    result = 0;
    *a2 = 0;
    return result;
  }

  if (CFEqual(a1, kFigCapturePortType_BackFacingTelephotoCamera))
  {
    result = 0;
    v5 = 1;
LABEL_17:
    *a2 = v5;
    return result;
  }

  if (CFEqual(a1, kFigCapturePortType_BackFacingSuperWideCamera))
  {
    result = 0;
    v5 = 2;
    goto LABEL_17;
  }

  if (CFEqual(a1, kFigCapturePortType_FrontFacingCamera))
  {
    result = 0;
    v5 = 3;
    goto LABEL_17;
  }

  if (CFEqual(a1, kFigCapturePortType_FrontFacingSuperWideCamera))
  {
    result = 0;
    v5 = 4;
    goto LABEL_17;
  }

  if (CFEqual(a1, kFigCapturePortType_FrontFacingInfraredCamera))
  {
    result = 0;
    v5 = 5;
    goto LABEL_17;
  }

  if (CFEqual(a1, kFigCapturePortType_BackFacingSparseTimeOfFlightCamera))
  {
    result = 0;
    v5 = 6;
    goto LABEL_17;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t FigMotionISPMotionDataFromCFData(const __CFData *a1, const UInt8 **a2)
{
  if (!a2)
  {
    FigMotionISPMotionDataFromCFData_cold_5(&v9);
    return v9;
  }

  Length = CFDataGetLength(a1);
  if (Length <= 7)
  {
    FigMotionISPMotionDataFromCFData_cold_4(&v9);
    return v9;
  }

  v5 = Length;
  BytePtr = CFDataGetBytePtr(a1);
  if (!BytePtr)
  {
    FigMotionISPMotionDataFromCFData_cold_3(&v9);
    return v9;
  }

  v7 = BytePtr;
  if (v5 != 40 * *(BytePtr + 1) + 8)
  {
    FigMotionISPMotionDataFromCFData_cold_1(&v9);
    return v9;
  }

  if (*BytePtr)
  {
    FigMotionISPMotionDataFromCFData_cold_2(&v9);
    return v9;
  }

  result = 0;
  *a2 = v7;
  return result;
}

uint64_t FigMotionGetSensorValidCropRect(const __CFDictionary *a1)
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

uint64_t FigMotionComputeFramePTSOffsetFromISPCrop(const __CFDictionary *a1, double *a2)
{
  v15 = 0;
  if (!a1 || !a2)
  {
    FigMotionComputeFramePTSOffsetFromISPCrop_cold_6(v12);
    return LODWORD(v12[0]);
  }

  Value = CFDictionaryGetValue(a1, kFigCaptureStreamMetadata_RollingShutterSkew);
  if (!Value)
  {
    FigMotionComputeFramePTSOffsetFromISPCrop_cold_5(v12);
    return LODWORD(v12[0]);
  }

  valuePtr = 0;
  CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  v5 = CFDictionaryGetValue(a1, kFigCaptureStreamMetadata_RawSensorHeight);
  if (!v5)
  {
    FigMotionComputeFramePTSOffsetFromISPCrop_cold_4(v12);
    return LODWORD(v12[0]);
  }

  CFNumberGetValue(v5, kCFNumberSInt32Type, &v15);
  if (v15 <= 0)
  {
    FigMotionComputeFramePTSOffsetFromISPCrop_cold_3(v12);
    return LODWORD(v12[0]);
  }

  size = CGRectZero.size;
  origin = CGRectZero.origin;
  v13 = CGRectZero.origin;
  v14 = size;
  SensorValidCropRect = FigMotionGetSensorValidCropRect(a1);
  if (SensorValidCropRect)
  {
    v8 = SensorValidCropRect;
    FigMotionComputeFramePTSOffsetFromISPCrop_cold_1();
  }

  else
  {
    if (CFDictionaryContainsKey(a1, kFigCaptureStreamMetadata_SensorReadoutRect))
    {
      v12[0] = origin;
      v12[1] = size;
      if (!FigCFDictionaryGetCGRectIfPresent())
      {
        FigMotionComputeFramePTSOffsetFromISPCrop_cold_2(v12, &v17);
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

uint64_t FigMotionGetMotionDataFromISP(CFDictionaryRef theDict, float64x2_t *a2, uint64_t a3, int a4, int *a5, float32x2_t *a6, uint64_t a7, int a8, int *a9)
{
  if (!theDict)
  {
    FigMotionGetMotionDataFromISP_cold_3(&time);
    return LODWORD(time.value);
  }

  if (a2 && a5)
  {
    Value = CFDictionaryGetValue(theDict, kFigCaptureStreamMetadata_ISPMotionData);
    if (Value)
    {
      v41 = 0;
      v18 = FigMotionISPMotionDataFromCFData(Value, &v41);
      if (v18)
      {
        ISPHallData = v18;
        FigMotionGetMotionDataFromISP_cold_1();
        return ISPHallData;
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
  ISPHallData = 0;
  if (a7 && a9)
  {
    v37 = CFDictionaryGetValue(theDict, kFigCaptureStreamMetadata_ISPHallData);
    if (v37)
    {
      ISPHallData = FigMotionGetISPHallData(v37, a7, a9, a8);
      if (ISPHallData)
      {
        FigMotionGetMotionDataFromISP_cold_2();
      }
    }

    else
    {
      ISPHallData = 0;
      *a9 = 0;
    }
  }

  return ISPHallData;
}

uint64_t FigMotionGetISPHallData(const __CFData *a1, uint64_t a2, int *a3, int a4)
{
  Length = CFDataGetLength(a1);
  if (Length <= 7)
  {
    FigMotionGetISPHallData_cold_3(&time);
  }

  else
  {
    v9 = Length;
    BytePtr = CFDataGetBytePtr(a1);
    if (*BytePtr >= 2u)
    {
      FigMotionGetISPHallData_cold_2(&time);
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
        FigMotionGetISPHallData_cold_4(&time);
        return LODWORD(time.value);
      }

      FigMotionGetISPHallData_cold_1(&time);
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

void FigMotionComputeQuaternionForTimeStamp(uint64_t a1, void *a2, char *a3, double a4)
{
  v8 = a1 + 0x2000;
  v9 = *(a1 + 10257) == 0;
  if (a2)
  {
    *a2 = 0x3FF0000000000000;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
  }

  v10 = 0;
  v11 = flt_11AB8[v9];
  v12 = a1 + 8;
  v13 = 1.0;
  v14 = -1;
  do
  {
    v15 = *(v12 + 8 * v10) - a4;
    v16 = fabsf(v15);
    if (v13 > v16)
    {
      v13 = v16;
      v14 = v10;
    }

    ++v10;
  }

  while (v10 != 256);
  if (v13 > v11 && !*(a1 + 10256))
  {
    low_freq_error_logging();
  }

  if (v14 != -1)
  {
    v17 = *(v12 + 8 * v14);
    if (v17 >= a4)
    {
      v23 = (v14 - 1);
      if (v14 + 255 <= 0)
      {
        v23 = -(1 - v14);
      }

      v21 = v23;
      v20 = *(v12 + 8 * v14);
      v17 = *(v12 + 8 * v23);
      v19 = v14;
    }

    else
    {
      if (v14 + 1 <= 0)
      {
        v18 = --(v14 + 1);
      }

      else
      {
        v18 = (v14 + 1);
      }

      v19 = v18;
      v20 = *(v12 + 8 * v18);
      v21 = v14;
    }

    v24 = vabdd_f64(v20, a4);
    v25 = v11;
    v27 = v20 >= a4 && v24 <= v25 && v17 <= a4;
    v28 = vabdd_f64(v17, a4);
    if (v27 && v28 <= v25)
    {
      if (vabdd_f64(v20, v17) > 0.000001)
      {
        v33 = (a4 - v17) / (v20 - v17);
        FigMotionInterpolateQuaternionsByAngle(a1 + 2056 + 32 * v21, (a1 + 2056 + 32 * v19), v33);
        *a2 = v34;
        a2[1] = v35;
        a2[2] = v36;
        a2[3] = v37;
        goto LABEL_34;
      }

      v30 = a1 + 32 * v21;
    }

    else
    {
      v30 = a1 + 32 * v14;
    }

    v31 = (v30 + 2056);
    v32 = v31[1];
    *a2 = *v31;
    *(a2 + 1) = v32;
LABEL_34:
    v22 = 1;
    goto LABEL_35;
  }

  if (!*(v8 + 2064))
  {
    low_freq_error_logging();
  }

  v22 = 0;
LABEL_35:
  *a3 = v22;
}

uint64_t low_freq_error_logging()
{
  FigGetUpTime();
  result = FigHostTimeToNanoseconds();
  if (low_freq_error_logging_last_log)
  {
    v1 = (result - low_freq_error_logging_last_log) >= 0x3B9ACA00;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    if (low_freq_error_logging_filtered)
    {
      low_freq_error_logging_filtered = 0;
    }

    low_freq_error_logging_last_log = result;
  }

  else
  {
    ++low_freq_error_logging_filtered;
  }

  return result;
}

void FigMotionInterpolateQuaternionsByAngle(uint64_t a1, double *a2, float a3)
{
  v22 = *a1;
  v23 = vnegq_f64(*(a1 + 8));
  v24 = -*(a1 + 24);
  v5 = FigMotionMultiplyQuaternions(&v22, a2);
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
    FigMotionMultiplyQuaternions(a1, &v22);
  }

  else
  {
    v11 = *a1;
    v12 = *(a1 + 8);
    v13 = *(a1 + 16);
    v14 = *(a1 + 24);
  }
}

uint64_t FigMotionComputeLensMovementAndSagForTimeStamp(uint64_t a1, float32x2_t *a2, float32x2_t *a3, int a4, double a5, float a6)
{
  *a2 = 0;
  if (a3)
  {
    *a3 = 0;
  }

  v8 = 0;
  v9 = a1 + (a4 << 12);
  v10 = v9 + 8;
  v11 = 1.0;
  v12 = -1;
  do
  {
    v13 = *(v10 + 8 * v8) - a5;
    v14 = fabsf(v13);
    if (v11 > v14)
    {
      v11 = v14;
      v12 = v8;
    }

    ++v8;
  }

  while (v8 != 512);
  if (v12 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v38 = v6;
  v39 = v7;
  v15 = *(a1 + 8 * a4 + 16392);
  if (!a3 || v15)
  {
    v16 = v9 + 8200;
    v17 = v12;
    v18 = *(v10 + 8 * v12);
    if (v18 >= a5)
    {
      v27 = v12 + 511;
      v20 = -v27 < 0;
      v28 = -v27 & 0x1FF;
      v29 = v27 & 0x1FF;
      if (v20)
      {
        v30 = v29;
      }

      else
      {
        v30 = -v28;
      }

      v25 = v30;
      v24 = v18;
      v18 = *(v10 + 8 * v30);
      v23 = v17;
    }

    else
    {
      v19 = v12 + 1;
      v20 = -v19 < 0;
      v21 = -v19 & 0x1FF;
      v22 = v19 & 0x1FF;
      if (!v20)
      {
        v22 = -v21;
      }

      v23 = v22;
      v24 = *(v10 + 8 * v22);
      v25 = v17;
    }

    if (v24 >= a5 && (vabdd_f64(v24, a5) <= 0.00200000009 ? (v31 = v18 <= a5) : (v31 = 0), v31 && vabdd_f64(v18, a5) <= 0.00200000009))
    {
      if (vabdd_f64(v24, v18) > 0.000001)
      {
        v34 = v24 - v18;
        v35 = (a5 - v18) / v34;
        v36 = vmla_n_f32(vmul_n_f32(*(v16 + 8 * v23), v35), *(v16 + 8 * v25), 1.0 - v35);
        *a2 = v36;
        if (a3)
        {
          *&v34 = 1.0 - v35;
          *a3 = vmla_f32(vmul_n_f32(*(v15 + 8 * v23), v35), vdup_lane_s32(*&v34, 0), *(v15 + 8 * v25));
          goto LABEL_29;
        }

        goto LABEL_36;
      }

      v32 = *(v16 + 8 * v25);
      *a2 = v32;
      if (a3)
      {
        v33 = *(v15 + 8 * v25);
        goto LABEL_28;
      }
    }

    else
    {
      v32 = *(v16 + 8 * v17);
      *a2 = v32;
      if (a3)
      {
        v33 = *(v15 + 8 * v17);
LABEL_28:
        *a3 = v33;
LABEL_29:
        result = 0;
        *a2 = vmul_n_f32(*a2, a6);
        *a3 = vmul_n_f32(*a3, a6);
        return result;
      }
    }

    v36 = v32;
LABEL_36:
    result = 0;
    *a2 = vmul_n_f32(v36, a6);
    return result;
  }

  FigMotionComputeLensMovementAndSagForTimeStamp_cold_1(&v37);
  return v37;
}

float64_t FigMotionMultiplyQuaternions(double *a1, double *a2)
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
  FigMotionNormalizeQuaternion(&v12);
  return v12.f64[0];
}

uint64_t FigMotionNormalizeQuaternion(float64x2_t *a1)
{
  if (a1)
  {
    _Q1 = a1[1];
    _D3 = _Q1.f64[1];
    __asm { FMLA            D2, D3, V1.D[1] }

    v8 = sqrt(_D2);
    if (v8 <= 0.00000001)
    {
      FigMotionNormalizeQuaternion_cold_1(&v12);
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
    FigMotionNormalizeQuaternion_cold_2(&v13);
    return v13;
  }

  return v9;
}

uint64_t OUTLINED_FUNCTION_4()
{

  return fig_log_get_emitter();
}

void sub_2AF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = RTSCProcessorV1;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_33B4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

float32x2_t rts_interpolateCameraModel@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v7 = vmulq_f32(*a1, *a2);
  v8 = vextq_s8(v7, v7, 8uLL);
  *v7.f32 = vadd_f32(*v7.f32, *v8.f32);
  v7.f32[0] = vaddv_f32(*v7.f32);
  v8.i64[0] = 0;
  v9 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v7, v8)), 0), vnegq_f32(*a2), *a2);
  v10 = 1.0;
  v42 = *a1;
  v11 = 1.0 - a4;
  v12 = vsubq_f32(*a1, v9);
  v13 = vmulq_f32(v12, v12);
  v41 = v9;
  v14 = vaddq_f32(*a1, v9);
  v15 = vmulq_f32(v14, v14);
  v16 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v13.i8, *&vextq_s8(v13, v13, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v15.i8, *&vextq_s8(v15, v15, 8uLL)))));
  v17 = v16 + v16;
  v18 = (v16 + v16) == 0.0;
  v19 = 1.0;
  if (!v18)
  {
    v19 = sinf(v17) / v17;
  }

  v20 = v19;
  v21 = vrecpe_f32(LODWORD(v19));
  v22 = vmul_f32(v21, vrecps_f32(LODWORD(v20), v21));
  LODWORD(v23) = vmul_f32(v22, vrecps_f32(LODWORD(v20), v22)).u32[0];
  if ((v11 * v17) != 0.0)
  {
    v39 = v23;
    v22.f32[0] = sinf(v11 * v17);
    v23 = v39;
    v10 = v22.f32[0] / (v11 * v17);
  }

  v22.f32[0] = v11 * (v23 * v10);
  v24 = vdupq_lane_s32(v22, 0);
  v25 = a4;
  v26 = v17 * a4;
  v27 = 1.0;
  if (v26 != 0.0)
  {
    v38 = v24;
    v40 = v23;
    v28 = sinf(v26);
    v24 = v38;
    v23 = v40;
    v25 = a4;
    v27 = v28 / v26;
  }

  v29 = vmlaq_f32(vmulq_n_f32(v41, (v23 * v27) * v25), v42, v24);
  v30 = vmulq_f32(v29, v29);
  v31 = vadd_f32(*v30.i8, *&vextq_s8(v30, v30, 8uLL));
  if (vaddv_f32(v31) == 0.0)
  {
    v32 = xmmword_11B30;
  }

  else
  {
    v33 = vadd_f32(v31, vdup_lane_s32(v31, 1)).u32[0];
    v34 = vrsqrte_f32(v33);
    v35 = vmul_f32(v34, vrsqrts_f32(v33, vmul_f32(v34, v34)));
    v32 = vmulq_n_f32(v29, vmul_f32(v35, vrsqrts_f32(v33, vmul_f32(v35, v35))).f32[0]);
  }

  *a3 = v32;
  result = vmla_n_f32(*(a1 + 16), vsub_f32(*(a2 + 16), *(a1 + 16)), v25);
  v37 = vmla_n_f32(*(a1 + 24), vsub_f32(*(a2 + 24), *(a1 + 24)), v25);
  *(a3 + 16) = result;
  *(a3 + 24) = v37;
  return result;
}

double simd_matrix3x3(float32x4_t a1)
{
  _S4 = a1.i32[1];
  _S5 = a1.i32[2];
  __asm { FMLS            S3, S5, V0.S[2] }

  _S6 = a1.i32[3];
  __asm { FMLA            S3, S6, V0.S[3] }

  v10 = vmuls_lane_f32(a1.f32[2], a1, 3);
  __asm
  {
    FMLA            S2, S4, V0.S[1]
    FMLA            S2, S6, V0.S[3]
    FMLA            S2, S5, V0.S[1]
    FMLA            S6, S5, V0.S[2]
  }

  *(&_D3 + 1) = (v10 + (a1.f32[0] * a1.f32[1])) + (v10 + (a1.f32[0] * a1.f32[1]));
  __asm { FMLS            S5, S4, V0.S[1] }

  return _D3;
}

double rts_computeBoundingMarginsForHomography(int32x4_t a1, int32x4_t a2, int32x4_t a3, float32x4_t a4, double a5, int32x2_t a6, double a7)
{
  v7 = 0;
  v8 = vzip1q_s32(a1, a3);
  v27[0] = vzip1q_s32(v8, a2);
  v27[1] = vzip2q_s32(v8, vdupq_lane_s32(*a2.i8, 1));
  v27[2] = vzip1q_s32(vzip2q_s32(a1, a3), vdupq_laneq_s32(a2, 2));
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  do
  {
    *(&v28 + v7 * 16) = vaddq_f32(vdupq_laneq_s32(v27[v7], 2), vmlaq_lane_f32(vmulq_n_f32(xmmword_11AE0, COERCE_FLOAT(v27[v7])), xmmword_11AF0, *&v27[v7], 1));
    ++v7;
  }

  while (v7 != 3);
  v9.i64[0] = 0x3400000034000000;
  v9.i64[1] = 0x3400000034000000;
  v10 = vmaxnmq_f32(v30, v9);
  v11 = vrecpeq_f32(v10);
  v12 = vmulq_f32(v11, vrecpsq_f32(v10, v11));
  v13 = vmulq_f32(v12, vrecpsq_f32(v10, v12));
  v14 = vmulq_f32(v28, v13);
  v15 = vmulq_f32(v29, v13);
  if (fmaxf(*&a7, *(&a7 + 1)) <= 0.0)
  {
    __asm { FMOV            V2.4S, #-1.0 }
  }

  else
  {
    v23 = vsubq_f32(v14, vdupq_lane_s32(a6, 0));
    v24 = vsubq_f32(v15, vdupq_lane_s32(a6, 1));
    v25 = v14;
    v26 = a4;
    _simd_hypot_f4(v23, v24);
    _simd_hypot_f4(vdivq_f32(v23, vdupq_lane_s32(*&a7, 0)), vdivq_f32(v24, vdupq_lane_s32(*&a7, 1)));
    v14 = v25;
    a4 = v26;
  }

  *&result = vmulq_f32(vsubq_f32(v14, a4), xmmword_11BA0).u64[0];
  return result;
}

float rts_estimatePanningSpeed(void *a1)
{
  v1 = a1;
  [v1 panningRate];
  v13 = v2;
  v3 = vmulq_f32(v2, v2);
  v3.f32[0] = sqrtf(v3.f32[2] + vaddv_f32(*v3.f32));
  v14 = *v3.f32;
  [v1 panningCovariance];
  if (*v14.i32 <= 0.0000001)
  {
    v9 = 0.00001;
  }

  else
  {
    v7 = vdivq_f32(v13, vdupq_lane_s32(v14, 0));
    v8 = vmulq_f32(v7, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, v7.f32[0]), v5, *v7.f32, 1), v6, v7, 2));
    v9 = (v8.f32[2] + vaddv_f32(*v8.f32)) + 0.00001;
  }

  [v1 timeVariance];
  v11 = v10;

  return sqrtf(fmaxf((-v9 / v11) + (*v14.i32 * *v14.i32), 0.0));
}

uint64_t OUTLINED_FUNCTION_5_0()
{

  return fig_log_get_emitter();
}

double simd_quaternion(float32x4_t a1, float32x4_t a2)
{
  v2 = vmulq_f32(a1, a2);
  if ((v2.f32[2] + vaddv_f32(*v2.f32)) >= 0.0)
  {
    v34 = vaddq_f32(a1, a2);
    v35 = vmulq_f32(v34, v34);
    *&v36 = v35.f32[2] + vaddv_f32(*v35.f32);
    *v35.f32 = vrsqrte_f32(v36);
    *v35.f32 = vmul_f32(*v35.f32, vrsqrts_f32(v36, vmul_f32(*v35.f32, *v35.f32)));
    v37 = vmulq_n_f32(v34, vmul_f32(*v35.f32, vrsqrts_f32(v36, vmul_f32(*v35.f32, *v35.f32))).f32[0]);
    v38 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL), vnegq_f32(a1)), v37, vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL));
    v33 = vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL).u64[0];
  }

  else
  {
    v4 = vmulq_f32(a1, a1);
    v3 = vaddv_f32(*v4.f32);
    v4.i32[1] = 0;
    *&v5 = v4.f32[2] + v3;
    v6 = vrsqrte_f32(COERCE_UNSIGNED_INT(v4.f32[2] + v3));
    v7 = vmul_f32(v6, vrsqrts_f32(v5, vmul_f32(v6, v6)));
    v8 = vmulq_n_f32(a1, vmul_f32(v7, vrsqrts_f32(v5, vmul_f32(v7, v7))).f32[0]);
    v9 = vmulq_f32(a2, a2);
    *&v10 = v9.f32[2] + vaddv_f32(*v9.f32);
    *v9.f32 = vrsqrte_f32(v10);
    *v9.f32 = vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32)));
    v11 = vaddq_f32(v8, vmulq_n_f32(a2, vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32))).f32[0]));
    v12 = vmulq_f32(v11, v11);
    v13 = v12.f32[2] + vaddv_f32(*v12.f32);
    if (v13 <= 1.4211e-14)
    {
      v39 = vabsq_f32(a1);
      v40 = v39.f32[1];
      v41 = v39.f32[2];
      if (v39.f32[0] > v39.f32[1] || v39.f32[0] > v39.f32[2])
      {
        v42 = vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL);
        if (v40 <= v41)
        {
          v43 = vmulq_f32(a1, xmmword_11D20);
          v44 = xmmword_11B50;
        }

        else
        {
          v43 = vmulq_f32(a1, xmmword_11D30);
          v44 = xmmword_11B70;
        }
      }

      else
      {
        v42 = vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL);
        v43 = vmulq_f32(a1, xmmword_11B80);
        v44 = xmmword_11B40;
      }

      v45 = vmlaq_f32(v43, v44, v42);
      v46 = vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL);
      v47 = vmulq_f32(v45, v45);
      *&v48 = v47.f32[1] + (v47.f32[2] + v47.f32[0]);
      *v47.f32 = vrsqrte_f32(v48);
      *v47.f32 = vmul_f32(*v47.f32, vrsqrts_f32(v48, vmul_f32(*v47.f32, *v47.f32)));
      v33 = vmulq_n_f32(v46, vmul_f32(*v47.f32, vrsqrts_f32(v48, vmul_f32(*v47.f32, *v47.f32))).f32[0]).u64[0];
    }

    else
    {
      v14 = v13;
      v15 = vrsqrte_f32(LODWORD(v13));
      v16 = vmul_f32(v15, vrsqrts_f32(LODWORD(v14), vmul_f32(v15, v15)));
      v17 = vmulq_n_f32(v11, vmul_f32(v16, vrsqrts_f32(LODWORD(v14), vmul_f32(v16, v16))).f32[0]);
      v18 = vaddq_f32(a1, v17);
      v19 = vmulq_f32(v18, v18);
      *&v20 = v19.f32[2] + vaddv_f32(*v19.f32);
      *v19.f32 = vrsqrte_f32(v20);
      *v19.f32 = vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32)));
      v21 = vmulq_n_f32(v18, vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32))).f32[0]);
      v22 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), vnegq_f32(a1)), v21, vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL));
      v23 = vmulq_f32(v21, a1);
      v24 = vaddq_f32(a2, v17);
      v25 = vmulq_f32(v24, v24);
      v4.f32[0] = v25.f32[2] + vaddv_f32(*v25.f32);
      *v25.f32 = vrsqrte_f32(*v4.f32);
      *v25.f32 = vmul_f32(*v25.f32, vrsqrts_f32(*v4.f32, vmul_f32(*v25.f32, *v25.f32)));
      v26 = vmulq_n_f32(v24, vmul_f32(*v25.f32, vrsqrts_f32(*v4.f32, vmul_f32(*v25.f32, *v25.f32))).f32[0]);
      v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), vnegq_f32(v17)), v26, vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL));
      v28 = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
      v29 = vmulq_f32(v17, v26);
      v28.f32[3] = v29.f32[2] + vaddv_f32(*v29.f32);
      v30 = vnegq_f32(v28);
      v31 = vtrn2q_s32(v28, vtrn1q_s32(v28, v30));
      v32 = vrev64q_s32(v28);
      v32.i32[0] = v30.i32[1];
      v32.i32[3] = v30.i32[2];
      v33 = vaddq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, v23.f32[2] + vaddv_f32(*v23.f32)), v32, *v22.f32, 1), vmlaq_laneq_f32(vmulq_n_f32(vextq_s8(v28, v30, 8uLL), v22.f32[0]), vextq_s8(v31, v31, 8uLL), v22, 2)).u64[0];
    }
  }

  return *&v33;
}

uint64_t portIndexFromPortType_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t portIndexFromPortType_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMotionISPMotionDataFromCFData_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMotionISPMotionDataFromCFData_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMotionISPMotionDataFromCFData_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMotionISPMotionDataFromCFData_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMotionISPMotionDataFromCFData_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMotionComputeFramePTSOffsetFromISPCrop_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t FigMotionComputeFramePTSOffsetFromISPCrop_cold_2(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t FigMotionComputeFramePTSOffsetFromISPCrop_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMotionComputeFramePTSOffsetFromISPCrop_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMotionComputeFramePTSOffsetFromISPCrop_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMotionComputeFramePTSOffsetFromISPCrop_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMotionGetMotionDataFromISP_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  return FigDebugAssert3();
}

uint64_t FigMotionGetMotionDataFromISP_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t FigMotionGetMotionDataFromISP_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMotionGetISPHallData_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMotionGetISPHallData_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMotionGetISPHallData_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMotionGetISPHallData_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMotionComputeLensMovementAndSagForTimeStamp_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMotionNormalizeQuaternion_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMotionNormalizeQuaternion_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

simd_float2x2 __invert_f2(simd_float2x2 a1)
{
  v3 = ___invert_f2(a1);
  v2 = v3.columns[1];
  v1 = v3.columns[0];
  result.columns[1] = v2;
  result.columns[0] = v1;
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

__float2 __sincosf_stret(float a1)
{
  v3 = ___sincosf_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}