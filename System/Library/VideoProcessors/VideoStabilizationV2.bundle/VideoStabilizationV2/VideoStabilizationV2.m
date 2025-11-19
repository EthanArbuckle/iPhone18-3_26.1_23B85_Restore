float64_t GVSApplyFaceCorrectionQuaternionToStabilizedQuaternion(int8x16_t a1, double a2, double a3, double a4, double a5)
{
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  v5 = vextq_s8(a1, a1, 8uLL).u64[0];
  v7[0] = vcvtq_f64_f32(vext_s8(v5, *a1.i8, 4uLL));
  v7[1] = vcvtq_f64_f32(vext_s8(*a1.i8, v5, 4uLL));
  return FigMotionMultiplyQuaternions(v8, v7);
}

uint64_t GVSExtractGDCPolynomialFromCameraInfoByPortType(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (!v5 || !v6)
  {
    GVSExtractGDCPolynomialFromCameraInfoByPortType_cold_6(&v27);
LABEL_21:
    v25 = v27;
    goto LABEL_13;
  }

  if (!a3)
  {
    GVSExtractGDCPolynomialFromCameraInfoByPortType_cold_5(&v27);
    goto LABEL_21;
  }

  v8 = [v6 objectForKeyedSubscript:kFigCaptureStreamMetadata_PortType];
  v9 = [v5 objectForKeyedSubscript:v8];
  v10 = [v9 objectForKeyedSubscript:kFigCaptureCameraInfoKey_GeometricDistortionCoefficients];
  v11 = v10;
  if (!v9)
  {
    GVSExtractGDCPolynomialFromCameraInfoByPortType_cold_4(&v27);
LABEL_18:
    v25 = v27;

    goto LABEL_13;
  }

  if (!v10)
  {
    GVSExtractGDCPolynomialFromCameraInfoByPortType_cold_3(&v27);
    goto LABEL_18;
  }

  v12 = [v10 objectForKeyedSubscript:kFigCaptureStreamGDCCoefficientsKey_BasePolynomial];
  v13 = [v11 objectForKeyedSubscript:kFigCaptureStreamGDCCoefficientsKey_DynamicPolynomial];
  v14 = [v7 objectForKeyedSubscript:kFigCaptureStreamMetadata_DynamicDistortionFactor];
  if (([v8 isEqualToString:kFigCapturePortType_BackFacingCamera] & 1) == 0)
  {
    [v8 isEqualToString:kFigCapturePortType_BackFacingTelephotoCamera];
  }

  if ([v12 length] != &stru_20.vmsize)
  {
    GVSExtractGDCPolynomialFromCameraInfoByPortType_cold_1();
    goto LABEL_21;
  }

  if ([v13 length] != &stru_20.vmsize)
  {
    GVSExtractGDCPolynomialFromCameraInfoByPortType_cold_2();
    goto LABEL_21;
  }

  v15 = [v12 bytes];
  v16 = [v13 bytes];
  [v14 floatValue];
  v18 = (v16 + 32);
  v19 = (v15 + 32);
  v20 = (a3 + 32);
  v21 = 8;
  do
  {
    *(v20 - 8) = *(v19 - 8) + (v17 * *(v18 - 8));
    v22 = *v18++;
    v23 = v22;
    v24 = *v19++;
    *v20++ = v24 + (v17 * v23);
    --v21;
  }

  while (v21);

  v25 = 0;
LABEL_13:

  return v25;
}

uint64_t GVSCheckDistortedTransformFits(float *a1, double *a2, int *a3, uint64_t a4, char a5, BOOL *a6)
{
  if (a1 && a2 && a3 && a4 && a6)
  {
    __asm { FMOV            V0.4S, #1.0 }

    v67 = _Q0;
    if ((*(a4 + 208) & 1) == 0)
    {
      v15 = 0;
      v16 = *a3;
      v17 = a3[1];
      v18 = (v16 + a3[2]) + -1.0;
      v19 = (v17 + a3[3]) + -1.0;
      v20 = (v18 - v16) / 6.0;
      v21 = (v19 - v17) / 6.0;
      v22 = (a4 + 32);
      do
      {
        *&v23 = v16 + (v20 * v15);
        *&v24 = v17;
        *(&v24 + 1) = v17 + (v21 * v15);
        *(&v23 + 1) = v18;
        *(&v23 + 2) = v16;
        *(&v23 + 3) = v18 + (-v20 * v15);
        *(&v24 + 2) = v19 + (-v21 * v15);
        *(&v24 + 3) = v19;
        *(v22 - 1) = v23;
        *v22 = v24;
        ++v15;
        v22 += 2;
      }

      while (v15 != 6);
      if ([*(a4 + 8) isValid])
      {
        v25 = (a4 + 32);
        v26 = 6;
        do
        {
          [*(a4 + 8) computeScalingAtPointsQuad:{*v25[-1].i64, *v25->i64}];
          v70 = v27;
          v72 = vsubq_f32(v67, v27);
          [*(a4 + 8) distortionCenter];
          v68 = vmulq_n_f32(v72, v28);
          [*(a4 + 8) distortionCenter];
          v30 = vmlaq_f32(vmulq_lane_f32(v72, v29, 1), v70, *v25);
          v25[-1] = vmlaq_f32(v68, v70, v25[-1]);
          *v25 = v30;
          v25 += 2;
          --v26;
        }

        while (v26);
      }

      *(a4 + 208) = 1;
    }

    v31.i64[0] = 0x3F0000003F000000;
    v31.i64[1] = 0x3F0000003F000000;
    v32 = vaddq_f32(*(a4 + 224), v31);
    v33 = a2[1];
    v34 = *a2;
    v35 = v32.f32[3] + v34;
    v31.f32[0] = *a2 + a2[2];
    v36 = (v31.f32[0] + -1.0) - v32.f32[1];
    v31.f32[0] = v33;
    v37 = v32.f32[0] + v31.f32[0];
    v31.f32[0] = v33 + a2[3];
    v38 = (v31.f32[0] + -1.0) - v32.f32[2];
    [*a4 distortionCenter];
    v66 = v39;
    [*a4 distortionCenter];
    v65 = v40;
    v41 = 0;
    v42 = (a4 + 32);
    v69 = vdupq_n_s32(0x322BCC77u);
    while (1)
    {
      v43 = v42[-1];
      v44 = a1 + 8;
      v45 = vld1q_dup_f32(v44);
      v46 = vmlaq_n_f32(vmlaq_n_f32(v45, *v42, a1[7]), v43, a1[6]);
      v47.i64[0] = 0x8000000080000000;
      v47.i64[1] = 0x8000000080000000;
      v48 = vorrq_s8(vandq_s8(v46, v47), vabsq_f32(vmaxnmq_f32(vabsq_f32(v46), v69)));
      v49 = vrecpeq_f32(v48);
      v50 = vmulq_f32(v49, vrecpsq_f32(v48, v49));
      v51 = vmulq_f32(v50, vrecpsq_f32(v48, v50));
      v52 = a1 + 2;
      v53 = vld1q_dup_f32(v52);
      v54 = vmulq_f32(v51, vmlaq_n_f32(vmlaq_n_f32(v53, *v42, a1[1]), v43, *a1));
      v55 = a1 + 5;
      v56 = vld1q_dup_f32(v55);
      v71 = vmulq_f32(v51, vmlaq_n_f32(vmlaq_n_f32(v56, *v42, a1[4]), v43, a1[3]));
      v73 = v54;
      if ([*a4 isValid])
      {
        [*a4 computeScalingAtPointsQuad:{*v73.i64, *v71.i64}];
        v58 = vsubq_f32(v67, v57);
        v59 = vmlaq_f32(vmulq_n_f32(v58, v66), v57, v73);
        v60 = vmlaq_f32(vmulq_lane_f32(v58, *&v65, 1), v57, v71);
      }

      else
      {
        v60 = v71;
        v59 = v73;
      }

      v61 = vmaxvq_f32(v59);
      if (v35 >= vminvq_f32(v59) || v61 >= v36)
      {
        break;
      }

      v63 = v37 < vminvq_f32(v60);
      if (vmaxvq_f32(v60) >= v38)
      {
        v63 = 0;
      }

      *a6 = v63;
      result = 0;
      if (v63 && v41 <= 4)
      {
        ++v41;
        v42 += 2;
        if ((a5 & 1) == 0)
        {
          continue;
        }
      }

      return result;
    }

    result = 0;
    *a6 = 0;
  }

  else
  {
    GVSCheckDistortedTransformFits_cold_1(&v74);
    return v74;
  }

  return result;
}

uint64_t GVSEstimatePaddingForDistortedTransformFits(void *a1, double *a2, float32x4_t *a3)
{
  v5 = a1;
  v6 = v5;
  if (!v5 || !a2 || !a3)
  {
    GVSEstimatePaddingForDistortedTransformFits_cold_2(&v46);
LABEL_13:
    v33 = v46;
    goto LABEL_10;
  }

  if (([v5 isValid] & 1) == 0)
  {
    GVSEstimatePaddingForDistortedTransformFits_cold_1(&v46);
    goto LABEL_13;
  }

  v7 = 0;
  v8 = a2[2];
  v9 = a2[3];
  *&v10 = (v8 + -1.0) / 36.0;
  v11 = (v9 + -1.0) / 36.0;
  v12 = a2[1];
  *&v13 = *a2;
  *&v12 = v12;
  *&v8 = v8 + *&v13 + -1.0;
  v14 = v9 + *&v12 + -1.0;
  *&v14 = v14;
  v15.i64[0] = __PAIR64__(LODWORD(v8), v13);
  v15.i64[1] = __PAIR64__(v13, LODWORD(v8));
  v38 = v15;
  *v15.f32 = vdup_lane_s32(*&v12, 0);
  *&v8 = v11;
  *&v15.u32[2] = vdup_lane_s32(*&v14, 0);
  v37 = v15;
  v15.i32[0] = 0;
  v15.i32[2] = 0;
  v16.i32[3] = 0;
  v16.i64[0] = v10;
  v16.f32[2] = -*&v10;
  v15.i32[1] = LODWORD(v8);
  v15.f32[3] = -*&v8;
  v35 = v16;
  v36 = v15;
  v17 = &v44;
  do
  {
    v39 = vaddq_f32(v38, vmulq_n_f32(v35, v7));
    v40 = vaddq_f32(v37, vmulq_n_f32(v36, v7));
    [v6 computeScalingAtPointsQuad:{*&v35, *&v36, *&v37, *&v38}];
    v41 = v18;
    v42[v7] = v18;
    [v6 distortionCenter];
    v17[-1] = vmulq_f32(v41, vsubq_f32(v39, vdupq_lane_s32(v19, 0)));
    [v6 distortionCenter];
    *v17 = vmulq_f32(v41, vsubq_f32(v40, vdupq_lane_s32(v20, 1)));
    v17 += 2;
    ++v7;
  }

  while (v7 != 36);
  v21 = 0;
  v42[36] = vextq_s8(v42[0], v42[0], 4uLL);
  v45[65] = vextq_s8(v43, v43, 4uLL);
  v45[66] = vextq_s8(v44, v44, 4uLL);
  v22 = v45;
  v23 = 0uLL;
  do
  {
    v24 = v22[-7];
    v25 = v22[-6];
    v26 = vsubq_f32(v22[5], v24);
    v27 = vsubq_f32(v22[6], v25);
    v28 = vmlaq_f32(vmulq_f32(v27, v27), v26, v26);
    v29 = vmlaq_f32(vmulq_f32(vsubq_f32(v22[-1], v24), vnegq_f32(v27)), vsubq_f32(*v22, v25), v26);
    v30 = vrsqrteq_f32(v28);
    v31 = v42[v21 + 3];
    v32 = vrecpeq_f32(v31);
    v23 = vmaxnmq_f32(v23, vmulq_f32(vmulq_f32(v29, vmulq_f32(v30, vrsqrtsq_f32(v28, vmulq_f32(v30, v30)))), vmulq_f32(v32, vrecpsq_f32(v31, v32))));
    ++v21;
    v22 += 2;
  }

  while (v21 != 31);
  v33 = 0;
  *a3 = v23;
LABEL_10:

  return v33;
}

uint64_t OUTLINED_FUNCTION_1()
{

  return fig_log_get_emitter();
}

uint64_t OUTLINED_FUNCTION_2()
{

  return fig_log_get_emitter();
}

uint64_t OUTLINED_FUNCTION_5()
{

  return fig_log_get_emitter();
}

float64_t GVSComputeGaussianAverageQuaternion(uint64_t a1, int a2, int a3, int a4, unint64_t a5, unint64_t a6, float a7, float a8)
{
  v8 = a6;
  v9 = a5;
  v11 = *(a1 + 8);
  v12 = *(*a1 + 8 * a2);
  v13 = *(a1 + 68);
  v14 = *(a1 + 64) + a3;
  if (v14 <= v13)
  {
    v14 = *(a1 + 68);
  }

  v15 = *(a1 + 76);
  v16 = *(a1 + 72);
  if (v14 >= v16)
  {
    v14 = *(a1 + 72);
  }

  v17 = v14;
  v18 = v12 + 32 * v14;
  v19 = *(v18 + 16);
  v78 = *v18;
  v79 = v19;
  v20.i64[0] = *(*(a1 + 16) + 8 * v14);
  v20.i64[1] = *(v11 + 8 * v14);
  v75 = v20;
  v70 = (a5 | a6) != 0;
  if (v15 <= 1)
  {
    GVSComputeGaussianAverageQuaternion_cold_2();
  }

  else
  {
    v21 = a7 * 3.0;
    if ((a7 * 3.0) <= 0.01)
    {
      GVSComputeGaussianAverageQuaternion_cold_1();
    }

    else
    {
      v71 = v12;
      v24 = *(a1 + 84);
      if (v24 >= v14)
      {
        v25 = v14;
      }

      else
      {
        v25 = *(a1 + 84);
      }

      if (v16 - v14 >= v24)
      {
        v26 = *(a1 + 84);
      }

      else
      {
        v26 = v16 - v14;
      }

      v27 = *(a1 + 40);
      v76 = *(v27 + 8 * v14);
      v28 = 0.0;
      v29 = 0.0;
      if (v24 > v14 && v25 + 1 <= v24)
      {
        v30 = *(*(a1 + 48) + 4 * v13);
        v31 = v76 - *(v27 + 8 * v13);
        v32 = v24 - v25;
        do
        {
          v31 = v30 + v31;
          if ((v31 * 30.0) > v21)
          {
            break;
          }

          v33 = v30 * expf(((v31 * 30.0) / a7) * (((v31 * 30.0) / a7) * -0.5));
          if (v33 >= 0.0000001)
          {
            v29 = v29 + v33;
          }

          --v32;
        }

        while (v32);
      }

      v34 = -v25;
      if (v16 - v17 < v24)
      {
        v35 = *(*(a1 + 48) + 4 * v16);
        v36 = *(v27 + 8 * v16) - v76;
        v37 = v24 - v26;
        v28 = 0.0;
        do
        {
          v36 = v35 + v36;
          if ((v36 * 30.0) > v21)
          {
            break;
          }

          v38 = v35 * expf(((v36 * 30.0) / a7) * (((v36 * 30.0) / a7) * -0.5));
          if (v38 >= 0.0000001)
          {
            v28 = v28 + v38;
          }

          --v37;
        }

        while (v37);
      }

      v39 = *(a1 + 56) + 80 * v17;
      if (a7 == a8)
      {
        v40 = a4;
      }

      else
      {
        v40 = 0;
      }

      v41 = 0.0;
      if (v40 == 1)
      {
        v42 = *v39;
        if (*v39 > 0.0)
        {
          v34 = *(v39 + 64) + 1;
          v43 = *(v39 + 24);
          v78 = *(v39 + 8);
          v79 = v43;
          v75 = *(v39 + 48);
          v29 = 0.0;
          v41 = v42;
        }
      }

      v77 = 0;
      if (v34 > v26)
      {
        v9 = a5;
        v8 = a6;
LABEL_58:
        FigMotionNormalizeQuaternion(&v78);
        goto LABEL_59;
      }

      v44 = 0;
      v69 = a8 * 0.5;
      v68 = v26 - 2;
      v74 = v26 - v34;
      v45 = 4 * v17;
      v46 = v26 - v34 + 1;
      v47 = v26 - 2 - v34;
      v48 = 8 * v17 + 8 * v34;
      v49 = v17 + v34;
      v50 = v45 + 4 * v34;
      v51 = v71 + 32 * v49;
      v52 = 30.0 / a7;
      do
      {
        v53 = *(*(a1 + 40) + v48 + 8 * v44) - v76;
        if (fabsf(v52 * v53) < 3.0)
        {
          v54 = expf((v52 * v53) * ((v52 * v53) * -0.5));
          if (*(*(a1 + 24) + v49 + v44) == 1)
          {
            v54 = v54 * ((expf(((v53 * 30.0) / v69) * (((v53 * 30.0) / v69) * -0.5)) * 7.0) + 1.0);
          }

          v55 = v54 * *(*(a1 + 48) + v50 + 4 * v44);
          if (!v44)
          {
            v55 = v29 + v55;
          }

          if (v74 == v44)
          {
            v55 = v28 + v55;
          }

          if (*(*(a1 + 32) + v49 + v44) == 1 && v55 >= 0.0000001)
          {
            v56 = v41 + v55;
            v57 = v41 / (v41 + v55);
            v72 = v57;
            if (v57 <= 0.0)
            {
              v61 = *(v51 + 16);
              v78 = *v51;
              v79 = v61;
            }

            else
            {
              v78.f64[0] = GVSInterpolateQuaternionsLERP(v51, &v78, 0, &v77, v57);
              v78.f64[1] = v58;
              *&v79 = v59;
              *(&v79 + 1) = v60;
            }

            if (v70)
            {
              v62.i64[0] = *(*(a1 + 16) + v48 + 8 * v44);
              v62.i64[1] = *(*(a1 + 8) + v48 + 8 * v44);
              v75 = vmlaq_n_f32(vmulq_n_f32(v75, v72), v62, 1.0 - v72);
            }

            v41 = v56;
          }
        }

        if (v47 == v44)
        {
          v63 = v40;
        }

        else
        {
          v63 = 0;
        }

        if (v63 == 1 && *(a1 + 80) == *(a1 + 76))
        {
          v64 = v78;
          *(v39 + 24) = v79;
          *(v39 + 8) = v64;
          *(v39 + 48) = v75;
          *v39 = v41;
          *(v39 + 64) = v68;
        }

        ++v44;
        v51 += 32;
      }

      while (v46 != v44);
      v9 = a5;
      v8 = a6;
      if (!v77)
      {
        goto LABEL_58;
      }
    }
  }

LABEL_59:
  if (v9)
  {
    *v9 = vextq_s8(v75, v75, 8uLL).u64[0];
  }

  if (v8)
  {
    *v8 = v75.i64[0];
  }

  return v78.f64[0];
}

double GVSComputeSmoothedHorizonQuaternion(uint64_t a1, int a2, float a3)
{
  v3 = *(a1 + 60);
  if (*(a1 + 56) + a2 <= v3)
  {
    v4 = *(a1 + 60);
  }

  else
  {
    v4 = *(a1 + 56) + a2;
  }

  v5 = *(a1 + 64);
  if (v4 >= v5)
  {
    v4 = *(a1 + 64);
  }

  v6 = *(*a1 + 16 * v4);
  if (*(a1 + 68) <= 1)
  {
    v41 = *(*a1 + 16 * v4);
    GVSComputeSmoothedHorizonQuaternion_cold_2();
LABEL_28:
    v6 = v41;
    goto LABEL_25;
  }

  if (a3 <= 0.001)
  {
    v41 = *(*a1 + 16 * v4);
    GVSComputeSmoothedHorizonQuaternion_cold_1();
    goto LABEL_28;
  }

  v8 = v4;
  v9 = *(a1 + 40);
  v10 = *(v9 + 8 * v4);
  v11 = *(a1 + 72);
  v12 = v4 - v11;
  v13 = v11 + v8;
  v40 = 0.0;
  v14 = 0.0;
  v15 = v12;
  if (v12 < v3)
  {
    v16 = v10 - *(v9 + 8 * v3);
    v17 = fminf(fmaxf((v16 + (*(*(a1 + 48) + 4 * v3) * 0.5)) / a3, 0.0), 1.0);
    v14 = (0.6 - ((v17 - ((v17 * v17) * (v17 * v17))) + ((v17 * ((v17 * v17) * (v17 * v17))) * 0.6))) * a3;
    v15 = *(a1 + 60);
  }

  if (v13 > v5)
  {
    v18 = *(v9 + 8 * v5) - v10;
    v19 = fminf(fmaxf((v18 + (*(*(a1 + 48) + 4 * v5) * 0.5)) / a3, 0.0), 1.0);
    v40 = (0.6 - ((v19 - ((v19 * v19) * (v19 * v19))) + ((v19 * ((v19 * v19) * (v19 * v19))) * 0.6))) * a3;
    v13 = *(a1 + 64);
  }

  if (v15 <= v13)
  {
    v20 = 0;
    if (v3 <= v12)
    {
      v3 = v12;
    }

    v21 = v3;
    v22 = v13 - v3;
    v23 = 8 * v3;
    v24 = 4 * v3;
    v25 = 16 * v3;
    v26 = v13 - v3 + 1;
    v27 = 0.0;
    v28 = 1.0 / a3;
    do
    {
      v29 = *(*(a1 + 40) + v23 + 8 * v20) - v10;
      v30 = v28 * v29;
      v31 = fabsf(v30);
      if (v31 < 1.0)
      {
        v32 = ((((v30 * v30) * v31) * -4.0) + 1.0) + (((v30 * v30) * (v30 * v30)) * 3.0);
        if (v32 >= 0.0000001 && *(*(a1 + 32) + v21 + v20) == 1)
        {
          v33 = v32 * *(*(a1 + 48) + v24 + 4 * v20);
          if (!v20)
          {
            v33 = v14 + v33;
          }

          if (v22 == v20)
          {
            v33 = v40 + v33;
          }

          v34 = v27 + v33;
          *v35.i64 = GVSInterpolateQuatfNLERP(*(*a1 + v25 + 16 * v20), v6, v27 / (v27 + v33));
          v6 = v35;
          v27 = v34;
        }
      }

      ++v20;
    }

    while (v26 != v20);
  }

LABEL_25:
  v36 = vmulq_f32(v6, v6);
  *v36.i8 = vadd_f32(*v36.i8, *&vextq_s8(v36, v36, 8uLL));
  v36.i32[0] = vadd_f32(*v36.i8, vdup_lane_s32(*v36.i8, 1)).u32[0];
  v37 = vrsqrte_f32(v36.u32[0]);
  v38 = vmul_f32(v37, vrsqrts_f32(v36.u32[0], vmul_f32(v37, v37)));
  *&result = vmulq_n_f32(v6, vmul_f32(v38, vrsqrts_f32(v36.u32[0], vmul_f32(v38, v38))).f32[0]).u64[0];
  return result;
}

void GVSComputeSmoothRamp(float a1, float a2, float a3)
{
  if (a3 < a2)
  {
    GVSComputeSmoothRamp_cold_1();
  }

  else if (a3 > a2)
  {
    powf(fminf(fmaxf(a1, 0.0), a3) / a3, a3 / (a3 - a2));
  }
}

float GVSComputeSmoothedDigitalZoomFactor(uint64_t a1, int a2, float a3)
{
  v3 = *(a1 + 28);
  v4 = *(a1 + 24) + a2;
  if (v4 <= v3)
  {
    v4 = *(a1 + 28);
  }

  v5 = *(a1 + 32);
  if (v4 >= v5)
  {
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = v4;
  }

  v7 = (*a1 + 20 * v6);
  v8 = v7[1];
  if (*(a1 + 36) <= 1)
  {
    GVSComputeSmoothedDigitalZoomFactor_cold_2();
  }

  else if ((a3 * 3.0) <= 0.01)
  {
    GVSComputeSmoothedDigitalZoomFactor_cold_1();
  }

  else
  {
    v27 = v7[1];
    v9 = *v7;
    v10 = *(a1 + 40);
    if (v6 - v10 > v3)
    {
      v3 = v6 - v10;
    }

    v11 = v10 + v6;
    if (v11 < v5)
    {
      v5 = v11;
    }

    v12 = 0.0;
    v13 = v9;
    if (v3 <= v5)
    {
      v14 = *(a1 + 8);
      v15 = *(v14 + 8 * v6);
      v16 = (v14 + 8 * v3);
      v17 = (*a1 + 20 * v3);
      v18 = v5 - v3 + 1;
      v19 = 30.0 / a3;
      v13 = v9;
      do
      {
        v20 = *v16 - v15;
        v21 = v19 * v20;
        if (fabsf(v21) < 3.0)
        {
          v22 = expf(v21 * (v21 * -0.5));
          if (v22 >= 0.0000001)
          {
            v23 = v12 <= 0.0;
            v24 = -0.0;
            if (v12 > 0.0)
            {
              v24 = v12;
            }

            v12 = v24 + v22;
            if (v23)
            {
              v13 = v22 * *v17;
            }

            else
            {
              v13 = v13 + (*v17 * v22);
            }
          }
        }

        ++v16;
        v17 += 5;
        --v18;
      }

      while (v18);
    }

    v25 = v13 / v12;
    if (v12 < 0.0000001)
    {
      v25 = v13;
    }

    return v27 * expf(v25 - v9);
  }

  return v8;
}

float GVSComputeDilatedTotalZoomFactor(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 28);
  if (*(a1 + 24) + a3 <= v3)
  {
    v4 = *(a1 + 28);
  }

  else
  {
    v4 = *(a1 + 24) + a3;
  }

  v5 = *(a1 + 32);
  if (v4 >= v5)
  {
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = v4;
  }

  v7 = *(*a1 + 20 * v6 + 12);
  if (*(a1 + 36) <= 1)
  {
    GVSComputeDilatedTotalZoomFactor_cold_2();
  }

  else if (a2 < 1)
  {
    GVSComputeDilatedTotalZoomFactor_cold_1();
  }

  else
  {
    v8 = v6 - a2;
    if (v6 - a2 <= v3)
    {
      v8 = *(a1 + 28);
    }

    if (v6 + a2 < v5)
    {
      v5 = v6 + a2;
    }

    if (v8 <= v5)
    {
      v9 = (*a1 + 20 * v8 + 12);
      v10 = v5 - v8 + 1;
      do
      {
        v11 = *v9;
        v9 += 5;
        v7 = fmaxf(v7, v11);
        --v10;
      }

      while (v10);
    }
  }

  return v7;
}

float GVSComputeSmoothedDilatedDigitalZoomFactor(uint64_t a1, int a2, int a3)
{
  v5 = *(a1 + 28);
  v4 = *(a1 + 32);
  v6 = *(a1 + 24) + a3;
  if (v6 <= v5)
  {
    v6 = *(a1 + 28);
  }

  if (v6 >= v4)
  {
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;
  v9 = *a1 + 20 * v7;
  v10 = *(v9 + 4);
  v11 = *(v9 + 16);
  if (a2 < 1)
  {
    GVSComputeSmoothedDilatedDigitalZoomFactor_cold_2();
  }

  else if (*(a1 + 36) <= 1)
  {
    GVSComputeSmoothedDilatedDigitalZoomFactor_cold_1();
  }

  else
  {
    if (v8 - a2 > v5)
    {
      v5 = v8 - a2;
    }

    if (v8 + a2 < v4)
    {
      v4 = v8 + a2;
    }

    v12 = 0.0;
    if (v5 <= v4)
    {
      v13 = 1.0 / (a2 / 3.0);
      v14 = v5 - v8;
      v15 = (*a1 + 20 * v5 + 16);
      v16 = v4 - v5 + 1;
      do
      {
        v17 = expf((v13 * v14) * ((v13 * v14) * -0.5));
        if (v17 >= 0.0000001)
        {
          v18 = v12 <= 0.0;
          if (v12 <= 0.0)
          {
            v19 = -0.0;
          }

          else
          {
            v19 = v12;
          }

          v12 = v19 + v17;
          if (v18)
          {
            v11 = v17 * *v15;
          }

          else
          {
            v11 = v11 + (*v15 * v17);
          }
        }

        ++v14;
        v15 += 5;
        --v16;
      }

      while (v16);
    }

    if (v12 >= 0.0000001)
    {
      v11 = v11 / v12;
    }
  }

  return v10 * expf(v11 - *(*a1 + 20 * v8));
}

void GVSComputeSmoothedFaceQuaternion(uint64_t a1, int a2, float a3)
{
  v4 = *(a1 + 36);
  v5 = *(a1 + 32) + a2;
  if (v5 <= v4)
  {
    v5 = *(a1 + 36);
  }

  v6 = *(a1 + 40);
  if (v5 >= v6)
  {
    v5 = *(a1 + 40);
  }

  v44 = *(*a1 + 48 * v5);
  if (*(a1 + 44) <= 1)
  {
    GVSComputeSmoothedFaceQuaternion_cold_2();
  }

  else
  {
    v7 = a3 * 3.0;
    if ((a3 * 3.0) <= 0.01)
    {
      GVSComputeSmoothedFaceQuaternion_cold_1();
    }

    else
    {
      v9 = v5;
      v10 = *(a1 + 48);
      if (v10 >= v5)
      {
        v11 = v5;
      }

      else
      {
        v11 = *(a1 + 48);
      }

      if (v6 - v5 >= v10)
      {
        v12 = *(a1 + 48);
      }

      else
      {
        v12 = v6 - v5;
      }

      v13 = *(a1 + 16);
      v42 = *(v13 + 8 * v5);
      v14 = 0.0;
      v15 = 0.0;
      if (v10 > v5 && v11 + 1 <= v10)
      {
        v16 = *(*(a1 + 24) + 4 * v4);
        v17 = v42 - *(v13 + 8 * v4);
        v18 = v10 - v11;
        do
        {
          v17 = v16 + v17;
          if ((v17 * 30.0) > v7)
          {
            break;
          }

          v19 = v16 * expf(((v17 * 30.0) / a3) * (((v17 * 30.0) / a3) * -0.5));
          if (v19 >= 0.0000001)
          {
            v15 = v15 + v19;
          }

          --v18;
        }

        while (v18);
      }

      v20 = -v11;
      if (v6 - v9 < v10)
      {
        v21 = *(*(a1 + 24) + 4 * v6);
        v22 = *(v13 + 8 * v6) - v42;
        v23 = v10 - v12;
        v14 = 0.0;
        do
        {
          v22 = v21 + v22;
          if ((v22 * 30.0) > v7)
          {
            break;
          }

          v24 = v21 * expf(((v22 * 30.0) / a3) * (((v22 * 30.0) / a3) * -0.5));
          if (v24 >= 0.0000001)
          {
            v14 = v14 + v24;
          }

          --v23;
        }

        while (v23);
      }

      v45 = 0;
      if (v12 >= v20)
      {
        v25 = 0;
        v26 = v12 - v20;
        v27 = v9 + v20;
        v28 = v11 + v12;
        v29 = 48 * v27;
        v30 = v28 + 1;
        v43 = v44;
        v31 = 30.0 / a3;
        v32 = 0.0;
        do
        {
          v33 = *(*(a1 + 16) + 8 * v27) - v42;
          v34 = v31 * v33;
          if (fabsf(v34) >= 3.0)
          {
            goto LABEL_34;
          }

          v35 = expf(v34 * (v34 * -0.5)) * *(*(a1 + 24) + 4 * v27);
          if (!v25)
          {
            v35 = v15 + v35;
          }

          v36 = v14 + v35;
          if (v26)
          {
            v36 = v35;
          }

          v37 = *(*a1 + v29);
          v38 = vmulq_f32(v44, v37);
          v39 = v36 * fmaxf(vaddv_f32(vadd_f32(*v38.i8, *&vextq_s8(v38, v38, 8uLL))), 0.0);
          if (v39 >= 0.0000001)
          {
            v40 = v32 + v39;
            v41 = v32 / (v32 + v39);
            if (v41 > 0.0)
            {
              *v37.i64 = GVSInterpolateQuatfLERP(&v45, v37, v43, v41);
            }

            v43 = v37;
          }

          else
          {
LABEL_34:
            v40 = v32;
          }

          --v26;
          v25 -= 8;
          ++v27;
          v29 += 48;
          v32 = v40;
          --v30;
        }

        while (v30);
      }
    }
  }
}

uint64_t sbp_gvs_invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 24))
  {
    v1 = DerivedStorage;
    *(DerivedStorage + 24) = 1;
    *DerivedStorage = 0;
    *(DerivedStorage + 8) = 0;
    v2 = *(DerivedStorage + 88);
    if (v2)
    {
      AffineTransformFinish(v2);
      AffineTransformContextRelease(*(v1 + 88));
      *(v1 + 88) = 0;
      if (*(v1 + 228))
      {
        v3 = 0;
        v4 = (v1 + 288);
        do
        {
          v5 = *(v4 - 4);
          if (v5)
          {
            CFRelease(v5);
            *(v4 - 4) = 0;
          }

          if (*v4)
          {
            CFRelease(*v4);
            *v4 = 0;
          }

          ++v3;
          ++v4;
        }

        while (v3 < *(v1 + 228));
      }
    }

    v6 = *(v1 + 112);
    if (v6)
    {
      [v6 finishProcessing];
      [*(v1 + 112) purgeResources];
      v7 = *(v1 + 112);
      *(v1 + 112) = 0;
    }

    v8 = *(v1 + 29728);
    if (v8)
    {
      *(v1 + 29728) = 0;
      free(v8);
    }

    v9 = *(v1 + 96);
    *(v1 + 96) = 0;

    v10 = *(v1 + 400);
    *(v1 + 400) = 0;

    v11 = *(v1 + 27128);
    *(v1 + 27128) = 0;

    v12 = *(v1 + 29568);
    *(v1 + 29568) = 0;

    v13 = *(v1 + 28896);
    *(v1 + 28896) = 0;

    v14 = *(v1 + 28904);
    *(v1 + 28904) = 0;

    v15 = *(v1 + 29136);
    *(v1 + 29136) = 0;

    v16 = *(v1 + 29744);
    *(v1 + 29744) = 0;

    v17 = *(v1 + 29752);
    *(v1 + 29752) = 0;

    [*(v1 + 48) removeAllObjects];
    [*(v1 + 64) removeAllObjects];
    [*(v1 + 56) removeAllObjects];
    v18 = *(v1 + 48);
    *(v1 + 48) = 0;

    v19 = *(v1 + 64);
    *(v1 + 64) = 0;

    v20 = *(v1 + 56);
    *(v1 + 56) = 0;

    v21 = *(v1 + 72);
    if (v21)
    {
      CFRelease(v21);
      v22 = *(v1 + 72);
      *(v1 + 72) = 0;
    }

    v23 = *(v1 + 416);
    if (v23)
    {
      CFRelease(v23);
      *(v1 + 416) = 0;
    }

    v24 = *(v1 + 28864);
    if (v24)
    {
      CFRelease(v24);
      *(v1 + 28864) = 0;
    }

    if ((*(v1 + 27148) - 1) <= 2)
    {
      _cinematic_freeRingBuffers(v1);
    }

    sbp_gvs_freeDerivedVectorsAndSphereLensMovements(v1);
    if (*(v1 + 29612))
    {
      sbp_ltm_deallocateLtcCorrectionTexture(v1);
      [*(v1 + 29648) purgeResources];
      v25 = *(v1 + 29648);
      *(v1 + 29648) = 0;
    }

    v26 = *(v1 + 30064);
    *(v1 + 30064) = 0;

    v27 = *(v1 + 30080);
    *(v1 + 30080) = 0;

    v28 = *(v1 + 30072);
    *(v1 + 30072) = 0;

    v29 = *(v1 + 30128);
    *(v1 + 30128) = 0;

    v30 = *(v1 + 30136);
    *(v1 + 30136) = 0;

    v31 = *(v1 + 30144);
    *(v1 + 30144) = 0;

    v32 = *(v1 + 30152);
    *(v1 + 30152) = 0;

    *(v1 + 30200) = 2143289344;
    __asm { FMOV            V0.2S, #1.0 }

    *(v1 + 30208) = _D0;
    *(v1 + 30216) = *&kCMTimeInvalid.value;
    *(v1 + 30232) = kCMTimeInvalid.epoch;
    v38 = *(v1 + 30288);
    *(v1 + 30288) = 0;
  }

  return 0;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization(const __CFDictionary *a1, void *a2)
{
  v316 = 0;
  valuePtr = 0;
  if (!a2)
  {
    FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_69(&rect);
    goto LABEL_419;
  }

  v3 = a2;
  FigSampleBufferProcessorGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    x_low = v5;
    FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_1();
    goto LABEL_120;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = *(DerivedStorage + 48);
  *(DerivedStorage + 48) = v7;

  if (!*(DerivedStorage + 48))
  {
    FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_68(&rect);
    goto LABEL_419;
  }

  v9 = objc_alloc_init(NSMutableDictionary);
  v10 = *(DerivedStorage + 56);
  *(DerivedStorage + 56) = v9;

  if (!*(DerivedStorage + 56))
  {
    FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_67(&rect);
    goto LABEL_419;
  }

  v11 = objc_alloc_init(NSMutableDictionary);
  v12 = *(DerivedStorage + 64);
  *(DerivedStorage + 64) = v11;

  if (!*(DerivedStorage + 64))
  {
    FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_66(&rect);
    goto LABEL_419;
  }

  v13 = DerivedStorage + 27108;
  *(DerivedStorage + 44) = 0;
  *(DerivedStorage + 28) = 1028443341;
  *(DerivedStorage + 212) = 1;
  *(DerivedStorage + 28137) = 0;
  v306 = (DerivedStorage + 10680);
  *(DerivedStorage + 10684) = 0;
  v14 = objc_alloc_init(GVSGravityDataContext);
  v15 = *(DerivedStorage + 27128);
  *(DerivedStorage + 27128) = v14;

  v16 = *(DerivedStorage + 27128);
  if (!v16)
  {
    FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_65();
    v111 = 0;
    goto LABEL_381;
  }

  [v16 setExtractGravityData:0];
  LODWORD(v17) = 10.0;
  [*(DerivedStorage + 27128) setGravityFilterTimescale:v17];
  *(DerivedStorage + 40) = 0;
  *(DerivedStorage + 29156) = 1061675650;
  *(DerivedStorage + 84) = 0;
  *(DerivedStorage + 27416) = 0x3FEFAE147AE147AELL;
  *(DerivedStorage + 28132) = -1;
  *(DerivedStorage + 329) = 0;
  *(DerivedStorage + 392) = 256;
  *(DerivedStorage + 168) = 3;
  *(DerivedStorage + 200) = 1;
  *(DerivedStorage + 203) = 0;
  *(DerivedStorage + 176) = 6;
  *(DerivedStorage + 188) = 32;
  *(DerivedStorage + 196) = 1065353216;
  *(DerivedStorage + 28808) = -1082130432;
  *(DerivedStorage + 27148) = 0;
  v311 = (DerivedStorage + 27148);
  *(DerivedStorage + 29460) = 0xF3F000000;
  v309 = (DerivedStorage + 29536);
  *(DerivedStorage + 29536) = 0x4000000000000000;
  v18 = (DerivedStorage + 29544);
  +[GVSMotionBlurFilter defaultSettings];
  origin = rect.origin;
  *(DerivedStorage + 29560) = rect.size.width;
  *(DerivedStorage + 29544) = origin;
  *(DerivedStorage + 29172) = 1053609165;
  *(DerivedStorage + 29184) = 0x3F36B3CC4EE655AALL;
  *(DerivedStorage + 216) = 0;
  *v13 = 1065252553;
  *(DerivedStorage + 29776) = 0;
  *(DerivedStorage + 28800) = 1;
  v308 = v3;
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, kFigCaptureSampleBufferProcessorOption_SensorIDDictionary);
    if (Value)
    {
      Value = CFRetain(Value);
    }

    *(DerivedStorage + 416) = Value;
    v21 = CFDictionaryGetValue(a1, kFigVideoStabilizationSampleBufferProcessorOption_DistortionCompensationEnabledPortTypes);
    v22 = CFDictionaryGetValue(a1, kFigVideoStabilizationSampleBufferProcessorOption_DistortionCorrectionEnabledPortTypes);
    v23 = v21;
    v24 = v22;
    v25 = objc_alloc_init(NSMutableDictionary);
    v302 = v23;
    if (v25)
    {
      v301 = a1;
      v327 = 0u;
      v328 = 0u;
      v325 = 0u;
      v326 = 0u;
      v26 = v23;
      v27 = [v26 countByEnumeratingWithState:&v325 objects:&rect count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v326;
        do
        {
          for (i = 0; i != v28; i = i + 1)
          {
            if (*v326 != v29)
            {
              objc_enumerationMutation(v26);
            }

            [v25 setObject:&off_55C00 forKeyedSubscript:*(*(&v325 + 1) + 8 * i)];
          }

          v28 = [v26 countByEnumeratingWithState:&v325 objects:&rect count:16];
        }

        while (v28);
      }

      v323 = 0u;
      v324 = 0u;
      v321 = 0u;
      v322 = 0u;
      v300 = v24;
      v31 = v24;
      v32 = [v31 countByEnumeratingWithState:&v321 objects:&v317 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v322;
        while (2)
        {
          for (j = 0; j != v33; j = j + 1)
          {
            if (*v322 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v321 + 1) + 8 * j);
            v37 = [v25 allKeys];
            v38 = [v37 containsObject:v36];

            if (v38)
            {
              FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_2(v31);
              v39 = 0;
              goto LABEL_28;
            }

            [v25 setObject:&off_55C18 forKeyedSubscript:v36];
          }

          v33 = [v31 countByEnumeratingWithState:&v321 objects:&v317 count:16];
          if (v33)
          {
            continue;
          }

          break;
        }
      }

      v39 = v25;
LABEL_28:
      v3 = v308;
      v13 = DerivedStorage + 27108;
      a1 = v301;
      v24 = v300;
    }

    else
    {
      FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_3();
      v39 = 0;
    }

    v40 = *(DerivedStorage + 29136);
    *(DerivedStorage + 29136) = v39;

    if (*(DerivedStorage + 29136))
    {
      FigCFDictionaryGetInt32IfPresent();
      v41 = [(__CFDictionary *)a1 objectForKeyedSubscript:kFigCaptureSampleBufferProcessorOption_MetalCommandQueue];
      FigCFDictionaryGetInt32IfPresent();
      v42 = [[FigMetalContext alloc] initWithoutLibraryUsingOptionalCommandQueue:v41];
      v43 = *(DerivedStorage + 96);
      *(DerivedStorage + 96) = v42;

      v44 = *(DerivedStorage + 96);
      if (v44)
      {
        if (*(DerivedStorage + 108))
        {
          v45 = FigDispatchQueueCreateWithPriority();
          if (!v45)
          {
            FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_4(&rect);
            goto LABEL_430;
          }

          v46 = v45;
          v47 = [*(DerivedStorage + 96) commandQueue];
          [v47 setSubmissionQueue:v46];
          [v47 setCompletionQueue:v46];

          v44 = *(DerivedStorage + 96);
        }

        [v44 setQueuePriority:*(DerivedStorage + 104)];
        FigCFDictionaryGetFloatIfPresent();
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetFloatIfPresent();
        FigCFDictionaryGetBooleanIfPresent();
        FigCFDictionaryGetBooleanIfPresent();
        FigCFDictionaryGetBooleanIfPresent();
        FigCFDictionaryGetBooleanIfPresent();
        FigCFDictionaryGetBooleanIfPresent();
        *(DerivedStorage + 328) = *(DerivedStorage + 224);
        FigCFDictionaryGetBooleanIfPresent();
        LOBYTE(v317) = 0;
        if (FigCFDictionaryGetBooleanIfPresent() && v317)
        {
          if (*v311 != 4)
          {
            FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_5(&v317, &rect);
            goto LABEL_430;
          }

          *(DerivedStorage + 200) = 0;
        }

        FigCFDictionaryGetBooleanIfPresent();
        v48 = CFDictionaryGetValue(a1, kFigVideoStabilizationSampleBufferProcessorOption_LivePhotoCleanOutputRect);
        if (v48)
        {
          size = CGRectZero.size;
          rect.origin = CGRectZero.origin;
          rect.size = size;
          if (!CGRectMakeWithDictionaryRepresentation(v48, &rect))
          {
            FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_6(&rect, &v317);
            x_low = v317;
LABEL_431:

            goto LABEL_120;
          }

          v50 = rect.size;
          *(DerivedStorage + 29488) = rect.origin;
          *(DerivedStorage + 29504) = v50;
          *(v13 + 2372) = 1;
        }

        FigCFDictionaryGetBooleanIfPresent();
        FigCFDictionaryGetBooleanIfPresent();
        v51 = CFDictionaryGetValue(a1, kFigCaptureSampleBufferProcessorOption_CameraInfoByPortType);
        v52 = *(DerivedStorage + 28864);
        *(DerivedStorage + 28864) = v51;
        if (v51)
        {
          CFRetain(v51);
        }

        if (v52)
        {
          CFRelease(v52);
        }

        FigCFDictionaryGetFloatIfPresent();
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetBooleanIfPresent();
        FigCFDictionaryGetBooleanIfPresent();
        FigCFDictionaryGetBooleanIfPresent();
        if (!*(v13 + 2996))
        {
          goto LABEL_51;
        }

        FigCFDictionaryGetInt64IfPresent();
        if (!FigCFDictionaryGetValue())
        {
          *(DerivedStorage + 30112) = xmmword_43580;
LABEL_51:
          *(v13 + 2998) = 0;
          if (!*(v13 + 2997) || *(v13 + 2996))
          {
            v303 = v41;
            *(v13 + 2999) = 257;
            *(v13 + 3060) = *(v13 + 2356) + 1;
            *(v13 + 3064) = xmmword_43590;
            *(DerivedStorage + 30216) = *&kCMTimeNegativeInfinity.value;
            *(DerivedStorage + 30232) = kCMTimeNegativeInfinity.epoch;
            *(DerivedStorage + 29608) = 0;
            v53 = CFDictionaryGetValue(a1, kFigVideoStabilizationSampleBufferProcessorOption_VideoSTFParameters);
            v54 = [v53 objectForKeyedSubscript:@"Version"];
            *(v13 + 2500) = [v54 intValue];

            if (*(v13 + 2500) >= 1)
            {
              v55 = [v53 objectForKeyedSubscript:@"LTMStabilizationMode"];
              if (v55)
              {
                v56 = [v53 objectForKeyedSubscript:@"LTMStabilizationMode"];
                *(v13 + 2504) = [v56 unsignedIntValue];
              }

              else
              {
                *(v13 + 2504) = 3;
              }

              v57 = [v53 objectForKeyedSubscript:@"TCRMode"];
              if (v57)
              {
                v58 = [v53 objectForKeyedSubscript:@"TCRMode"];
                *(v13 + 2508) = [v58 unsignedIntValue];
              }

              else
              {
                *(v13 + 2508) = 1;
              }

              v59 = [v53 objectForKeyedSubscript:@"TCRGlobalStrength"];
              if (v59)
              {
                v60 = [v53 objectForKeyedSubscript:@"TCRGlobalStrength"];
                [v60 floatValue];
                *(v13 + 2520) = v61;
              }

              else
              {
                *(v13 + 2520) = 1050253722;
              }

              v62 = [v53 objectForKeyedSubscript:@"TCRSkyMaskStrength"];
              if (v62)
              {
                v63 = [v53 objectForKeyedSubscript:@"TCRSkyMaskStrength"];
                [v63 floatValue];
                *(v13 + 2524) = v64;
              }

              else
              {
                *(v13 + 2524) = 1058642330;
              }

              v65 = [v53 objectForKeyedSubscript:@"TCRExtraMaskStrength"];
              if (v65)
              {
                v66 = [v53 objectForKeyedSubscript:@"TCRExtraMaskStrength"];
                [v66 floatValue];
                *(v13 + 2528) = v67;
              }

              else
              {
                *(v13 + 2528) = 1058642330;
              }

              v68 = [v53 objectForKeyedSubscript:@"TemporalFilterWindowTime"];
              if (v68)
              {
                v69 = [v53 objectForKeyedSubscript:@"TemporalFilterWindowTime"];
                [v69 floatValue];
                *(v13 + 2512) = v70;
              }

              else
              {
                *(v13 + 2512) = 1065353216;
              }

              v71 = [v53 objectForKeyedSubscript:@"TemporalFilterWindowTime60Fps"];
              if (v71)
              {
                v72 = [v53 objectForKeyedSubscript:@"TemporalFilterWindowTime60Fps"];
                [v72 floatValue];
                *(v13 + 2516) = v73;
              }

              else
              {
                *(v13 + 2516) = 1061997773;
              }

              v74 = [v53 objectForKeyedSubscript:@"EnableCvisLtcCorrectionLutCompression"];
              *(v13 + 2532) = [v74 BOOLValue];

              v75 = [v53 objectForKeyedSubscript:@"EnableCvisLtmWithGlobalToneMapping"];
              if (v75)
              {
                v76 = [v53 objectForKeyedSubscript:@"EnableCvisLtmWithGlobalToneMapping"];
                *(v13 + 2564) = [v76 BOOLValue];
              }

              else
              {
                *(v13 + 2564) = 0;
              }
            }

            FigCFDictionaryGetBooleanIfPresent();
            *(v13 + 2696) = 0;
            *(v13 + 2708) = 1066192077;
            *(DerivedStorage + 29808) = 0x3F00000040200000;
            v77 = a1;
            v78 = [(__CFDictionary *)v77 objectForKeyedSubscript:kFigVideoStabilizationSampleBufferProcessorOption_FaceStabilizationEnabled];
            *(v13 + 3140) = [v78 BOOLValue];

            if (*(v13 + 3140) == 1)
            {
              v79 = a1;
              v80 = [(__CFDictionary *)v77 objectForKeyedSubscript:kFigVideoStabilizationSampleBufferProcessorOption_FaceStabilizationSigmaMultiplierForFaceFiltering];
              v81 = [(__CFDictionary *)v77 objectForKeyedSubscript:kFigVideoStabilizationSampleBufferProcessorOption_FaceStabilizationSigmaMultiplierForBiasTracking];
              [v80 floatValue];
              *(v13 + 3144) = v82;
              [v81 floatValue];
              v84 = *(v13 + 3144);
              if (fminf(v84, v83) <= 0.0)
              {
                v83 = 1.0;
                v84 = 0.8;
              }

              v85 = fminf(fmaxf(v84, 0.0), 1.0);
              *(v13 + 3144) = v85;
              v86 = fminf(fmaxf(v83, 0.0), 1.0);
              *(v13 + 3148) = v86;
              if (v85 > v86)
              {
                *(v13 + 3144) = v86;
              }

              v87 = [(__CFDictionary *)v77 objectForKeyedSubscript:kFigVideoStabilizationSampleBufferProcessorOption_FaceStabilizationSigmaModulationExponent];
              v88 = [(__CFDictionary *)v77 objectForKeyedSubscript:kFigVideoStabilizationSampleBufferProcessorOption_FaceStabilizationSigmaModulationSmoothTransitionMultiplier];
              [v87 floatValue];
              *(v13 + 3152) = v89;
              [v88 floatValue];
              v91 = *(v13 + 3152);
              if (v91 <= 0.0)
              {
                v90 = 0.4;
                v91 = 1.75;
              }

              *(v13 + 3152) = fmaxf(v91, 1.0);
              *(v13 + 3156) = fminf(fmaxf(v90, 0.0), 1.0);

              a1 = v79;
            }

            v92 = CFDictionaryGetValue(v77, kFigVideoStabilizationSampleBufferProcessorOption_InputPixelBufferAttributes);
            if (v92)
            {
              v93 = v92;
              if (FigCFDictionaryGetInt32IfPresent())
              {
                if (FigCFDictionaryGetInt32IfPresent())
                {
                  v94 = CFDictionaryGetValue(v93, kCVPixelBufferPixelFormatTypeKey);
                  if (v94)
                  {
                    v95 = v94;
                    v96 = a1;
                    v97 = CFGetTypeID(v94);
                    if (v97 == CFNumberGetTypeID())
                    {
                      ValueAtIndex = v95;
                    }

                    else
                    {
                      v99 = CFGetTypeID(v95);
                      if (v99 != CFArrayGetTypeID())
                      {
LABEL_118:
                        x_low = 4294954516;
LABEL_119:

LABEL_120:
                        v111 = 0;
                        goto LABEL_358;
                      }

                      if (CFArrayGetCount(v95) < 1)
                      {
                        FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_10(&rect);
                        goto LABEL_438;
                      }

                      ValueAtIndex = CFArrayGetValueAtIndex(v95, 0);
                    }

                    CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
                    a1 = v96;
                    if (CFDictionaryGetValue(v77, kFigVideoStabilizationSampleBufferProcessorOption_OutputPixelBufferAttributes))
                    {
                      v100 = CFDictionaryGetValue(v77, kFigVideoStabilizationSampleBufferProcessorOption_GeneratedTransformsOutputDimensionsOverride);
                      if (v100 && *(v13 + 2612))
                      {
                        rect.origin = CGSizeZero;
                        CGSizeMakeWithDictionaryRepresentation(v100, &rect);
                        v101 = vmovn_s64(vcvtq_s64_f64(rect.origin));
                        *(DerivedStorage + 29688) = v101;
                        v102 = v101.i32[1];
LABEL_103:
                        v18 = (DerivedStorage + 29544);
                        if (v102 >= 1440)
                        {
                          *(DerivedStorage + 188) = 42;
                        }

                        if (*(v13 + 2580) >= 1921)
                        {
                          *(DerivedStorage + 188) = 64;
                        }

                        v103 = CFDictionaryGetValue(v77, kFigCaptureSampleBufferProcessorProperty_PixelBufferPoolAllocationSemaphore);
                        v104 = *(DerivedStorage + 72);
                        *(DerivedStorage + 72) = v103;

                        v105 = *(DerivedStorage + 72);
                        if (v105)
                        {
                          CFRetain(v105);
                        }

                        v106 = CFDictionaryGetValue(v77, kFigVideoStabilizationSampleBufferProcessorOption_TransformPlatform);
                        if (!v106)
                        {
                          goto LABEL_112;
                        }

                        v107 = v106;
                        LODWORD(rect.origin.x) = -1;
                        Type = CFNumberGetType(v106);
                        CFNumberGetValue(v107, Type, &rect);
                        if (LODWORD(rect.origin.x) <= 3)
                        {
                          *(DerivedStorage + 172) = LODWORD(rect.origin.x);
LABEL_112:

                          goto LABEL_113;
                        }

                        goto LABEL_118;
                      }

                      if (FigCFDictionaryGetInt32IfPresent())
                      {
                        if (FigCFDictionaryGetInt32IfPresent())
                        {
                          v102 = *(v13 + 2584);
                          goto LABEL_103;
                        }

                        FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_11(&rect);
                      }

                      else
                      {
                        FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_12(&rect);
                      }
                    }

                    else
                    {
                      FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_13(&rect);
                    }
                  }

                  else
                  {
                    FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_14(&rect);
                  }
                }

                else
                {
                  FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_15(&rect);
                }
              }

              else
              {
                FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_16(&rect);
              }
            }

            else
            {
              FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_17(&rect);
            }

LABEL_438:
            x_low = LODWORD(rect.origin.x);
            goto LABEL_119;
          }

          FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_9(&rect);
          goto LABEL_430;
        }

        if (FigCFDictionaryGetCountOfKey())
        {
          if (FigCFDictionaryGetCountOfKey())
          {
            LODWORD(rect.origin.x) = 0;
            FigCFDictionaryGetInt32IfPresent();
            *(DerivedStorage + 30112) = SLODWORD(rect.origin.x);
            LODWORD(v317) = 0;
            FigCFDictionaryGetInt32IfPresent();
            *(DerivedStorage + 30120) = v317;
            goto LABEL_51;
          }

          FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_7(&rect);
        }

        else
        {
          FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_8(&rect);
        }
      }

      else
      {
        FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_18(&rect);
      }

LABEL_430:
      x_low = LODWORD(rect.origin.x);
      goto LABEL_431;
    }

    FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_19(&rect);
LABEL_419:
    v111 = 0;
    x_low = LODWORD(rect.origin.x);
    goto LABEL_358;
  }

LABEL_113:
  if ((*(DerivedStorage + 172) - 1) <= 2)
  {
    *(DerivedStorage + 120) = CFDictionaryGetValue(a1, kFigVideoStabilizationSampleBufferProcessorOption_IspProcessingSession);
  }

  v109 = *v309;
  if (*v309)
  {
    if (v109 == 1)
    {
      *(v13 + 2432) = 1148846080;
      *(v13 + 2436) = 1;
      *(v13 + 2452) = 0;
      goto LABEL_127;
    }

    v112 = v109 <= 9;
  }

  else
  {
    v112 = *(DerivedStorage + 29460) <= 0.999;
  }

  v113 = !v112;
  LOBYTE(v18->x) = v113;
LABEL_127:
  *v306 = FigMotionHardwareAvailable() == 0;
  *(v13 + 32) = -1;
  *(v13 + 1172) = *(v13 + 1172);
  v114 = 0.0 * 0.0174532925;
  *(v13 + 2628) = v114;
  if (*(v13 + 2500) >= 1 && *(v13 + 2504))
  {
    *(v13 + 2533) = 1;
    *(v13 + 2536) = 0;
  }

  *(v13 + 1709) = *(v13 + 1709) == 1;
  *(v13 + 1710) = *(v13 + 1710) == 1;
  *(DerivedStorage + 203) = *(DerivedStorage + 203) == 1;
  *(v13 + 1772) = -1;
  if ([*(DerivedStorage + 29136) count])
  {
    v115 = 1;
  }

  else
  {
    v115 = *(v13 + 1772) > 0;
  }

  *(v13 + 2044) = v115;
  if (*v306)
  {
    *(DerivedStorage + 84) = 1;
  }

  *(v13 + 2684) = 0;
  v116 = CFDictionaryGetValue(a1, kFigVideoStabilizationSampleBufferProcessorOption_VideoGreenGhostMitigationParameters);
  v111 = v116;
  if (v116)
  {
    v117 = v13;
    v119 = v316;
    v118 = HIDWORD(v316);
    v120 = [v116 objectForKeyedSubscript:@"BrightLightMitigationParameters"];
    v121 = [v111 objectForKeyedSubscript:@"LowLightMitigationParameters"];
    *(v117 + 2940) = 1;
    *(v117 + 2944) = 0;
    if (v120)
    {
      v286 = *(DerivedStorage + 28864);
      v287 = [*(DerivedStorage + 96) commandQueue];
      v288 = _loadAndConfigureVideoDeghosting(v286, v287, v120, v118 | (v119 << 32), (DerivedStorage + 30088));
      v289 = *(DerivedStorage + 30072);
      *(DerivedStorage + 30072) = v288;

      if (!*(DerivedStorage + 30072))
      {
        FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_20();
      }
    }

    if (v121)
    {
      v290 = [v121 objectForKeyedSubscript:@"LuxLevelThresholdOFF"];
      [v290 floatValue];
      *(DerivedStorage + 30052) = v291;

      v292 = *(DerivedStorage + 28864);
      v293 = [*(DerivedStorage + 96) commandQueue];
      v294 = _loadAndConfigureVideoDeghosting(v292, v293, v121, v118 | (v119 << 32), (DerivedStorage + 30092));
      v295 = *(DerivedStorage + 30080);
      *(DerivedStorage + 30080) = v294;

      if (!*(DerivedStorage + 30080))
      {
        FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_21();
      }
    }

    LODWORD(rect.origin.x) = 0;
    LODWORD(v317) = 0;
    if (FigCFDictionaryGetIntIfPresent() && FigCFDictionaryGetIntIfPresent())
    {
      [*(DerivedStorage + 30080) setSensorBinningFactorHorizontal:LODWORD(rect.origin.x)];
      [*(DerivedStorage + 30080) setSensorBinningFactorVertical:v317];
      [*(DerivedStorage + 30072) setSensorBinningFactorHorizontal:LODWORD(rect.origin.x)];
      [*(DerivedStorage + 30072) setSensorBinningFactorVertical:v317];
    }

    v13 = DerivedStorage + 27108;
    *(DerivedStorage + 30056) = 2;

    v18 = (DerivedStorage + 29544);
  }

  else
  {
    *(v13 + 2940) = 0;
    v120 = *(DerivedStorage + 30064);
    *(DerivedStorage + 30064) = 0;
  }

  _resetFirstFrameParameters(DerivedStorage);
  v123 = v316;
  v122 = HIDWORD(v316);
  v124 = *v311;
  if (*v311 == 5)
  {
    if (*(DerivedStorage + 172))
    {
      FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_22(&rect);
      goto LABEL_364;
    }

    if (*(v13 + 2612))
    {
      FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_23(&rect);
      goto LABEL_364;
    }

    if (*(v13 + 1709))
    {
      *(v13 + 1709) = 0;
    }

    if (*(v13 + 1710))
    {
      *(v13 + 1710) = 0;
    }
  }

  if (v124 != 4 && *(v13 + 36))
  {
    FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_24(&rect);
    goto LABEL_364;
  }

  if ((*(v13 + 2372) || *(DerivedStorage + 224)) && *(DerivedStorage + 172))
  {
    FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_25(&rect);
    goto LABEL_364;
  }

  if ((v124 - 1) >= 3 && *(v13 + 1020))
  {
    fig_log_get_emitter();
    v299 = v2;
    LODWORD(v298) = 0;
    FigDebugAssert3();
    fig_log_get_emitter();
    x_low = FigSignalErrorAtGM();
    goto LABEL_158;
  }

  v332 = 0uLL;
  v331 = 0uLL;
  sbp_configureOverscanParameters(DerivedStorage, v122, v123, &v331, &v332);
  if (DWORD2(v332) + 2 * v332 != v122 || HIDWORD(v332) + 2 * DWORD1(v332) != v123)
  {
    FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_26(&rect);
LABEL_364:
    x_low = LODWORD(rect.origin.x);
    goto LABEL_158;
  }

  *(DerivedStorage + 128) = v122;
  *(DerivedStorage + 132) = v123;
  *(DerivedStorage + 136) = v332;
  *(DerivedStorage + 152) = v331;
  v125 = *(DerivedStorage + 168);
  if ((v125 - 1) > 1)
  {
    if (v125 == 4)
    {
      *(DerivedStorage + 188) = 1;
    }
  }

  else
  {
    *(DerivedStorage + 176) = 1;
    *(v13 + 28) = 0;
  }

  v126 = *(DerivedStorage + 172);
  if (v126 != 3 && v126)
  {
    v127 = *(DerivedStorage + 176);
    if (v127 != 1)
    {
      v128 = *(DerivedStorage + 148);
      v129 = *(DerivedStorage + 188);
      goto LABEL_174;
    }

LABEL_172:
    v131 = v111;
    *(DerivedStorage + 180) = xmmword_435A0;
    v130 = 1;
    v132 = 1;
    goto LABEL_179;
  }

  v127 = *(DerivedStorage + 176);
  if (v127 == 1)
  {
    goto LABEL_172;
  }

  v128 = *(DerivedStorage + 148);
  v129 = *(DerivedStorage + 188);
  if (v127 >= 2)
  {
    v130 = (v128 - 2) / v129 + 2;
    goto LABEL_175;
  }

LABEL_174:
  v130 = (v128 + v129 - 1) / v129;
LABEL_175:
  v131 = v111;
  *(DerivedStorage + 180) = v130;
  if (*(v13 + 2044) == 1)
  {
    v132 = (*(DerivedStorage + 144) - 2) / v129 + 2;
  }

  else
  {
    v129 = 0;
    v132 = 1;
  }

  *(DerivedStorage + 192) = v129;
  *(DerivedStorage + 184) = v132;
  if (v127 > 6)
  {
    x_low = 4294954514;
    goto LABEL_366;
  }

LABEL_179:
  v133 = (v13 + 1172);
  *(DerivedStorage + 205) = *(DerivedStorage + 328);
  if (*(v13 + 2612) || *v311 == 5)
  {
    v134 = malloc_type_malloc(36 * v132 * v130 + 36, 0x10000408AA14F5FuLL);
    *(DerivedStorage + 29728) = v134;
    if (!v134)
    {
      FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_61();
      x_low = 4294954510;
      goto LABEL_366;
    }

    if (*(v13 + 2612))
    {
      goto LABEL_199;
    }

    v126 = *(DerivedStorage + 172);
  }

  if ((v126 - 1) >= 3)
  {
    if (!v126)
    {
      v146 = [*(DerivedStorage + 96) commandQueue];
      *(DerivedStorage + 88) = AffineTransformContextAlloc(v146);

      v147 = *(DerivedStorage + 88);
      if (!v147)
      {
        FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_31(&rect);
LABEL_417:
        x_low = LODWORD(rect.origin.x);
        goto LABEL_418;
      }

      AffineTransformSetOptions(v147, (*(DerivedStorage + 44) > 0));
      sbp_initializeGPUWithRenderMethod(DerivedStorage);
      if (*(DerivedStorage + 224))
      {
        LODWORD(v317) = 0;
        v330 = 0;
        AffineTransformGetBlurBuffersDimensions(*(DerivedStorage + 88), *(v13 + 2580), *(v13 + 2584), &v317, &v330);
        *(DerivedStorage + 228) = 4;
        v148 = (DerivedStorage + 288);
        v149 = 32;
        while (1)
        {
          PixelBuffer = CreatePixelBuffer();
          *(v148 - 4) = PixelBuffer;
          if (!PixelBuffer)
          {
            FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_30(&rect);
            goto LABEL_417;
          }

          if (*(v13 + 2997))
          {
            v151 = CreatePixelBuffer();
            *v148 = v151;
            if (!v151)
            {
              break;
            }
          }

          v152 = v149 - 31;
          ++v149;
          ++v148;
          if (v152 >= *(DerivedStorage + 228))
          {
            *(DerivedStorage + 232) = vmovn_s64(vcvtq_s64_f64(*(DerivedStorage + 29488)));
            *&v153 = *(DerivedStorage + 152);
            *(&v153 + 1) = *(DerivedStorage + 29688);
            *(DerivedStorage + 240) = v153;
            goto LABEL_197;
          }
        }

        FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_29(&rect);
        goto LABEL_417;
      }

LABEL_197:
      AffineTransformConfigureBlurBorderPixels(*(DerivedStorage + 88), (DerivedStorage + 224));
      if (*v311 == 3)
      {
        goto LABEL_200;
      }

      AffineTransformSetOverscanFill(*(DerivedStorage + 88), *(DerivedStorage + 136), *(DerivedStorage + 140));
    }

LABEL_199:
    if (*v311 != 3)
    {
      v155 = *(DerivedStorage + 28864);
      if (v155 && (CFDictionaryGetValue(v155, kFigCapturePortType_BackFacingTelephotoCamera) || CFDictionaryGetValue(*(DerivedStorage + 28864), kFigCapturePortType_BackFacingSuperWideCamera)) && !FigMotionGetBravoDataFromDictionary(*(DerivedStorage + 28864), v13 + 1172))
      {
        if (!*v133)
        {
          *v133 = 6;
        }

        FigMotionAdjustBravoDataForReferenceCamera(v13 + 1172);
      }

      v156 = *v133;
      v154 = 1;
      if (*v133)
      {
        *(v13 + 1029) = 1;
        v154 = (v156 & 4) == 0;
      }

      goto LABEL_212;
    }

LABEL_200:
    if (*v133)
    {
      *v133 = 0;
    }

    v154 = 1;
LABEL_212:
    if (*(v13 + 1692) == 1 && (((*v311 - 4) > 0xFFFFFFFC) & ~v154) == 0)
    {
      *(v13 + 1692) = 0;
    }

    if (*(DerivedStorage + 392) != 1)
    {
LABEL_222:
      if (*(v13 + 2628) > 0.0)
      {
        [*(DerivedStorage + 27128) setExtractGravityData:1];
        if (!*(v13 + 1029))
        {
          *(v13 + 1029) = 1;
        }
      }

      v111 = v131;
      if (*(v13 + 2696) == 1)
      {
        *(v13 + 2704) = fminf(fmaxf(*(v13 + 2704), 0.0), 1.0);
        *(v13 + 2708) = fmaxf(*(v13 + 2708), 1.0);
        v160 = *(v13 + 2356);
        v161 = (v160 / *(v13 + 2352)) / 30.0;
        v162 = vcvtms_s32_f32(v161 * *(v13 + 2712));
        v163 = v162 & ~(v162 >> 31);
        if (v163 >= (v160 + ((v161 * -3.0) * *(v13 + 2700))))
        {
          v163 = (v160 + ((v161 * -3.0) * *(v13 + 2700)));
        }

        *(v13 + 2712) = v163;
      }

      v164 = *(v13 + 1772);
      v3 = v308;
      if (v164 < 1)
      {
        if (v164)
        {
          goto LABEL_237;
        }

        v165 = objc_alloc_init(NSDictionary);
      }

      else
      {
        v165 = [[NSMutableDictionary alloc] initWithDictionary:*(DerivedStorage + 29136)];
        v166 = [[NSNumber alloc] initWithUnsignedInt:v164 & 3];
        [v165 setObject:v166 forKeyedSubscript:kFigCapturePortType_BackFacingCamera];

        v167 = *(v13 + 1772);
        if ((v167 & 4) != 0)
        {
          v168 = [[NSNumber alloc] initWithUnsignedInt:v164 & 3];
          [v165 setObject:v168 forKeyedSubscript:kFigCapturePortType_BackFacingTelephotoCamera];

          v167 = *(v13 + 1772);
        }

        if ((v167 & 8) != 0)
        {
          v169 = [[NSNumber alloc] initWithUnsignedInt:v164 & 3];
          [v165 setObject:v169 forKeyedSubscript:kFigCapturePortType_BackFacingSuperWideCamera];
        }
      }

      v170 = *(DerivedStorage + 29136);
      *(DerivedStorage + 29136) = v165;

LABEL_237:
      v319 = 0u;
      v320 = 0u;
      v317 = 0u;
      v318 = 0u;
      v171 = *(DerivedStorage + 29136);
      v172 = [v171 countByEnumeratingWithState:&v317 objects:&rect count:16];
      if (v172)
      {
        v173 = v172;
        v174 = 0;
        v175 = *v318;
        do
        {
          for (k = 0; k != v173; k = k + 1)
          {
            if (*v318 != v175)
            {
              objc_enumerationMutation(v171);
            }

            v177 = [*(DerivedStorage + 29136) objectForKeyedSubscript:*(*(&v317 + 1) + 8 * k)];
            v174 |= [v177 unsignedIntValue];
          }

          v173 = [v171 countByEnumeratingWithState:&v317 objects:&rect count:16];
        }

        while (v173);

        if (v174)
        {
          v178 = objc_alloc_init(GVSDistortionModelEven14);
          v179 = *(DerivedStorage + 28896);
          *(DerivedStorage + 28896) = v178;
        }

        v13 = DerivedStorage + 27108;
        v18 = (DerivedStorage + 29544);
        if ((v174 & 2) == 0)
        {
          goto LABEL_249;
        }

        v180 = objc_alloc_init(GVSDistortionModelEven14);
        v171 = *(DerivedStorage + 28904);
        *(DerivedStorage + 28904) = v180;
      }

LABEL_249:
      if (!*(v13 + 1029) && (*(DerivedStorage + 28896) || *(DerivedStorage + 28904)))
      {
        *(v13 + 1029) = 1;
      }

      if (LOBYTE(v18->x) != 1)
      {
LABEL_257:
        v186 = *(DerivedStorage + 180);
        if (v186 < 1 || (v187 = *(DerivedStorage + 184), v187 < 1))
        {
          FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_35();
          if (v296)
          {
LABEL_263:
            v190 = *(DerivedStorage + 152);
            if (v190 <= *(DerivedStorage + 156))
            {
              v190 = *(DerivedStorage + 156);
            }

            *(v13 + 2068) = vcvts_n_f32_s32(v190, 1uLL) / 10.0;
            v191 = *(v13 + 40);
            if ((v191 - 1) > 2)
            {
              goto LABEL_315;
            }

            if (v191 == 2)
            {
              v192 = 1;
            }

            else
            {
              v192 = (*(DerivedStorage + 29464) + 1);
            }

            *(v13 + 2288) = v192;
            if (*(v13 + 2504))
            {
              v193 = *(v13 + 2356) / *(v13 + 2352);
              v194 = 2516;
              if (v193 < 50.0)
              {
                v194 = 2512;
              }

              v195 = ((*(v13 + v194) * v193) * 0.5);
              v196 = *(v13 + 2500);
              v197 = [*(DerivedStorage + 96) commandQueue];
              v198 = [STFIBPProvider STFVideoProcessorForVersion:v196 ringBufferSize:v192 historySize:v195 cmdQueue:v197];
              v199 = *(DerivedStorage + 29648);
              *(DerivedStorage + 29648) = v198;

              x = *(DerivedStorage + 29648);
              if (x != 0.0)
              {
                goto LABEL_273;
              }

              if (!FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_36())
              {
                x = rect.origin.x;
LABEL_273:
                [*&x setLtmStabilizationMode:*(v13 + 2504)];
                [*(DerivedStorage + 29648) setTcrMode:*(v13 + 2508)];
                LODWORD(v201) = *(v13 + 2524);
                [*(DerivedStorage + 29648) setTcrSkyMaskStrength:v201];
                LODWORD(v202) = *(v13 + 2520);
                [*(DerivedStorage + 29648) setTcrGlobalStrength:v202];
                LODWORD(v203) = *(v13 + 2528);
                [*(DerivedStorage + 29648) setTcrExtraMaskStrength:v203];
                LODWORD(v204) = *(v13 + 2512);
                [*(DerivedStorage + 29648) setTemporalWindowTimeDefault:v204];
              }
            }

            v205 = *(v13 + 2288);
            if (!*(v13 + 2684))
            {
              *(v13 + 2684) = v205;
            }

            v206 = *(v13 + 2356);
            *(v13 + 2344) = v206 + 1;
            v207 = malloc_type_calloc(v205, 8uLL, 0x2004093837F09uLL);
            *(DerivedStorage + 29368) = v207;
            if (v207)
            {
              if (*(v13 + 2940) == 1)
              {
                v208 = malloc_type_calloc(*(v13 + 2288), 0x18uLL, 0x10A00403F27F3CFuLL);
                *(DerivedStorage + 29376) = v208;
                if (!v208)
                {
                  fig_log_get_emitter();
                  v297 = FigSignalErrorAtGM();
                  if (v297)
                  {
                    x_low = v297;
                    goto LABEL_372;
                  }

                  goto LABEL_308;
                }
              }

              *(DerivedStorage + 29408) = 0;
              *(DerivedStorage + 29416) = 0;
              if (*(v13 + 1029))
              {
                v209 = malloc_type_calloc(*(v13 + 2344), 8uLL, 0x2004093837F09uLL);
                *(DerivedStorage + 29408) = v209;
                if (!v209)
                {
                  FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_44();
                  goto LABEL_371;
                }

                v210 = malloc_type_calloc(*(v13 + 2344), 8uLL, 0x2004093837F09uLL);
                *(DerivedStorage + 29416) = v210;
                if (!v210)
                {
                  FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_43();
                  goto LABEL_371;
                }

                LODWORD(v211) = *(v13 + 2344);
                if (v211 >= 1)
                {
                  v212 = 0;
                  while (1)
                  {
                    *(*(DerivedStorage + 29408) + 8 * v212) = malloc_type_malloc(8 * *(DerivedStorage + 180), 0x100004000313F17uLL);
                    if (!*(*(DerivedStorage + 29408) + 8 * v212))
                    {
                      FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_42();
                      goto LABEL_371;
                    }

                    *(*(DerivedStorage + 29416) + 8 * v212) = malloc_type_malloc(0x38uLL, 0x100004000313F17uLL);
                    if (!*(*(DerivedStorage + 29416) + 8 * v212))
                    {
                      break;
                    }

                    ++v212;
                    v211 = *(v13 + 2344);
                    if (v212 >= v211)
                    {
                      goto LABEL_287;
                    }
                  }

                  FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_41();
                  goto LABEL_371;
                }

LABEL_287:
                if (*(DerivedStorage + 28896) || *(DerivedStorage + 28904))
                {
                  v213 = malloc_type_calloc(v211, 0xF0uLL, 0x10800406B7F651AuLL);
                  *(DerivedStorage + 29424) = v213;
                  if (!v213)
                  {
                    FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_39();
                    goto LABEL_371;
                  }

                  LODWORD(v211) = *(v13 + 2344);
                  if (v211 >= 1)
                  {
                    v214 = 0;
                    v215 = 0;
                    while (1)
                    {
                      if (*(DerivedStorage + 28896))
                      {
                        v216 = objc_alloc_init(GVSDistortionModelEven14);
                        v217 = *(DerivedStorage + 29424);
                        v218 = *(v217 + v214);
                        *(v217 + v214) = v216;

                        if (!*(*(DerivedStorage + 29424) + v214))
                        {
                          FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_37();
                          goto LABEL_371;
                        }
                      }

                      if (*(DerivedStorage + 28904))
                      {
                        v219 = objc_alloc_init(GVSDistortionModelEven14);
                        v220 = *(DerivedStorage + 29424) + v214;
                        v221 = *(v220 + 8);
                        *(v220 + 8) = v219;

                        if (!*(*(DerivedStorage + 29424) + v214 + 8))
                        {
                          break;
                        }
                      }

                      ++v215;
                      v211 = *(v13 + 2344);
                      v214 += 240;
                      if (v215 >= v211)
                      {
                        goto LABEL_297;
                      }
                    }

                    FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_38();
                    goto LABEL_371;
                  }
                }

LABEL_297:
                if (*(v13 + 2628) > 0.0)
                {
                  v222 = malloc_type_calloc(v211, 0xCuLL, 0x10000403E1C8BA9uLL);
                  *(DerivedStorage + 29432) = v222;
                  if (!v222)
                  {
                    FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_40();
                    goto LABEL_371;
                  }
                }
              }

              v223 = (2 * v206) | 1u;
              if (*(v13 + 2696))
              {
                v224 = 2;
              }

              else
              {
                v224 = 0;
              }

              if (*(v13 + 2628) > 0.0)
              {
                ++v224;
              }

              if (*(v13 + 3140))
              {
                v225 = v224 | 4;
              }

              else
              {
                v225 = v224;
              }

              v226 = [[GVSSmoothingBuffers alloc] initWithSize:v223 options:v225];
              v227 = *(DerivedStorage + 29400);
              *(DerivedStorage + 29400) = v226;

              if (*(DerivedStorage + 29400))
              {
LABEL_308:
                if ((*v311 & 0xFFFFFFFE) == 2)
                {
                  *(DerivedStorage + 10681) = 1;
                }

                if (*(v13 + 2940) != 1)
                {
                  goto LABEL_315;
                }

                v228 = *(DerivedStorage + 30072);
                if (v228 && (v229 = [v228 initGhostInformationLookAheadForSize:*(v13 + 2288)], v229))
                {
                  x_low = v229;
                  FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_46();
                }

                else
                {
                  v230 = *(DerivedStorage + 30080);
                  if (!v230)
                  {
                    goto LABEL_315;
                  }

                  v231 = [v230 initGhostInformationLookAheadForSize:*(v13 + 2288)];
                  if (!v231)
                  {
                    goto LABEL_315;
                  }

                  x_low = v231;
                  FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_47();
                }

LABEL_374:
                FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_62();
                goto LABEL_358;
              }

              FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_45();
            }

            else
            {
              FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_48();
            }

LABEL_371:
            x_low = 4294954510;
LABEL_372:
            _cinematic_freeRingBuffers(DerivedStorage);
            fig_log_get_emitter();
LABEL_373:
            FigDebugAssert3();
            goto LABEL_374;
          }

          x_low = v317;
LABEL_434:
          sbp_gvs_freeDerivedVectorsAndSphereLensMovements(DerivedStorage);
          fig_log_get_emitter();
          goto LABEL_373;
        }

        if (*(v13 + 1029))
        {
          v188 = malloc_type_calloc(v186, 8uLL, 0x100004000313F17uLL);
          *(DerivedStorage + 28144) = v188;
          if (!v188)
          {
            FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_33();
LABEL_433:
            x_low = 4294954510;
            goto LABEL_434;
          }

          LODWORD(v186) = *(DerivedStorage + 180);
          v187 = *(DerivedStorage + 184);
        }

        v189 = malloc_type_calloc(v186 * v187, 0x24uLL, 0x10000408AA14F5FuLL);
        *(DerivedStorage + 27408) = v189;
        if (v189)
        {
          goto LABEL_263;
        }

        FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_34();
        goto LABEL_433;
      }

      v181 = [GVSMotionBlurFilter alloc];
      v182 = *v18;
      rect.size.width = v18[1].x;
      rect.origin = v182;
      v183 = [(GVSMotionBlurFilter *)v181 initWithSettings:&rect];
      v184 = *(DerivedStorage + 29568);
      *(DerivedStorage + 29568) = v183;

      v185 = *(DerivedStorage + 29568);
      if (v185)
      {
        if (*v309 == 11)
        {
          [v185 suspend];
        }

        goto LABEL_257;
      }

      FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_49(&rect);
      goto LABEL_364;
    }

    if ((*v311 - 1) > 3)
    {
      *(DerivedStorage + 392) = 0;
      goto LABEL_222;
    }

    v157 = *(DerivedStorage + 28864);
    v329 = 0;
    x_low = GVSExtractCameraGeometryFromCameraInfoByPortType(v157, &v329);
    v158 = v329;
    v159 = v329;
    if (!x_low)
    {
      objc_storeStrong((DerivedStorage + 400), v158);
      if ((*v133 & 2) != 0)
      {
        *v133 &= ~2u;
      }

      *(v13 + 1029) = 1;

      goto LABEL_222;
    }

    FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_32();
LABEL_366:
    v111 = v131;
    goto LABEL_374;
  }

  *&v321 = &off_55C30;
  *(&v321 + 1) = &off_55C60;
  *&v325 = &off_55C48;
  *(&v325 + 1) = &off_55C78;
  *&v322 = &off_55C90;
  *&v326 = &off_55CA8;
  v135 = [NSDictionary dictionaryWithObjects:&v325 forKeys:&v321 count:3];
  v136 = [VISISPRendererV2 alloc];
  v137 = *(DerivedStorage + 120);
  v138 = [*(DerivedStorage + 96) commandQueue];
  v139 = [(VISISPRendererV2 *)v136 initWithISPProcessingSession:v137 metalContext:0 metalCommandQueue:v138];
  v140 = *(DerivedStorage + 112);
  *(DerivedStorage + 112) = v139;

  v141 = *(DerivedStorage + 112);
  if (v141)
  {
    HIWORD(v314) = v123;
    LOWORD(v314) = v122;
    [v141 setInputSize:v314];
    HIWORD(v313) = WORD2(*(DerivedStorage + 29688));
    LOWORD(v313) = *(DerivedStorage + 29688);
    [*(DerivedStorage + 112) setOutputSize:v313];
    v142 = vrev64_s32(*(DerivedStorage + 188));
    HIWORD(v312) = v142.i16[2];
    LOWORD(v312) = v142.i16[0];
    [*(DerivedStorage + 112) setGridSize:v312];
    [*(DerivedStorage + 112) setExtendedOutputRowsToFill:*(DerivedStorage + 44)];
    v143 = *(DerivedStorage + 112);
    v144 = [NSNumber numberWithInt:*(DerivedStorage + 172)];
    v145 = [v135 objectForKeyedSubscript:v144];
    x_low = [v143 prepareToProcess:{objc_msgSend(v145, "unsignedIntValue")}];

    v18 = (DerivedStorage + 29544);
    if (!x_low)
    {

      goto LABEL_199;
    }

    FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_27();
  }

  else
  {
    FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_28(&rect);
    x_low = LODWORD(rect.origin.x);
  }

LABEL_418:
  v111 = v131;
  v3 = v308;
LABEL_158:
  if (x_low)
  {
    goto LABEL_374;
  }

LABEL_315:
  if (*(v13 + 2996) || *(v13 + 2997))
  {
    v307 = v111;
    v232 = [*(DerivedStorage + 96) commandQueue];
    v233 = [NSString stringWithFormat:@"%@V%d", @"SmartStyle", 1];
    v234 = [NSString stringWithFormat:@"%@/%@.bundle", @"/System/Library/VideoProcessors", v233];
    v310 = [NSString stringWithFormat:@"CMI%@V%d", @"SmartStyleProcessor", 1];
    v235 = [NSBundle bundleWithPath:v234];
    v305 = v233;
    if (v235)
    {
      v236 = v235;
    }

    else
    {
      v237 = [NSString stringWithFormat:@"/AppleInternal/VideoProcessors/%@.bundle", v233];
      v236 = [NSBundle bundleWithPath:v237];

      if (!v236)
      {
        FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_58(&rect);
        v247 = 0;
        v268 = 0;
        x_low = LODWORD(rect.origin.x);
        goto LABEL_350;
      }
    }

    if ([v236 loadAndReturnError:0])
    {
      v238 = [NSString stringWithFormat:@"CMISmartStyleProcessorInputOutputV%d", 1];
      *(DerivedStorage + 30160) = [v236 classNamed:v238];

      if (*(DerivedStorage + 30160))
      {
        v239 = *(DerivedStorage + 30240);
        v240 = [FigMetalAllocatorBackend alloc];
        v241 = +[FigMetalContext metalDevice];
        v242 = [v240 initWithDevice:v241 allocatorType:2];

        if (v242)
        {
          v243 = objc_opt_new();
          if (v243)
          {
            v244 = v243;
            [v243 setMemSize:5242880];
            [v244 setWireMemory:1];
            [v244 setLabel:@"VIS-SmartStyle-FigMetalAllocatorBackend"];
            [v244 setMemoryPoolId:v239];
            if ([v242 setupWithDescriptor:v244])
            {
              FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_50();
            }

            else
            {
              v245 = objc_opt_new();
              if (v245)
              {
                v246 = v245;
                [v245 setAllocatorBackend:v242];
                v247 = v246;

                v248 = v310;
                v249 = [objc_alloc(objc_msgSend(v236 classNamed:{v310)), "initWithOptionalMetalCommandQueue:", v232}];
                v250 = *(DerivedStorage + 30128);
                *(DerivedStorage + 30128) = v249;

                v251 = *(DerivedStorage + 30128);
                if (!v251)
                {
                  v268 = 0;
                  x_low = 4294954510;
                  goto LABEL_351;
                }

                v304 = v234;
                [v251 setInstanceLabel:@"VIS-Integrate"];
                v252 = *(DerivedStorage + 30112);
                v253 = [v236 classNamed:v310];
                v254 = v232;
                if (v252 == 7)
                {
                  [v253 getDefaultProcessorConfigurationForStreamingSquareAspectRatio];
                }

                else
                {
                  [v253 getDefaultProcessorConfigurationForStreaming];
                }
                v255 = ;
                [*(DerivedStorage + 30128) setConfiguration:v255];

                v256 = [*(DerivedStorage + 30128) configuration];

                if (v256)
                {
                  [*(DerivedStorage + 30128) setExternalMemoryResource:v247];
                  *&v317 = @"MemoryPoolId";
                  v257 = [NSNumber numberWithUnsignedLongLong:*(DerivedStorage + 30240)];
                  *&rect.origin.x = v257;
                  v258 = [NSDictionary dictionaryWithObjects:&rect forKeys:&v317 count:1];
                  v259 = [*(DerivedStorage + 30128) tuningParameters];
                  v260 = [v258 cmi_dictionaryMergedWithDefaultDict:v259];
                  [*(DerivedStorage + 30128) setTuningParameters:v260];

                  v261 = [*(DerivedStorage + 30128) setup];
                  if (v261)
                  {
                    x_low = v261;
                    FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_51();
                    v268 = 0;
                    v13 = DerivedStorage + 27108;
                    v232 = v254;
                    v234 = v304;
                    goto LABEL_350;
                  }

                  v262 = [*(DerivedStorage + 30128) prepareToProcess:2];
                  v232 = v254;
                  v248 = v310;
                  if (v262)
                  {
                    x_low = v262;
                    FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_52();
                    v268 = 0;
                  }

                  else
                  {
                    v263 = [objc_alloc(objc_msgSend(v236 classNamed:{v310)), "initWithOptionalMetalCommandQueue:", v254}];
                    v264 = *(DerivedStorage + 30136);
                    *(DerivedStorage + 30136) = v263;

                    v265 = *(DerivedStorage + 30136);
                    if (v265)
                    {
                      [v265 setInstanceLabel:@"VIS-Apply"];
                      v266 = *(DerivedStorage + 30112);
                      v267 = [v236 classNamed:v310];
                      if (v266 == 7)
                      {
                        [v267 getDefaultProcessorConfigurationForStreamingSquareAspectRatio];
                      }

                      else
                      {
                        [v267 getDefaultProcessorConfigurationForStreaming];
                      }
                      v268 = ;
                      if (v268)
                      {
                        [*(DerivedStorage + 30136) setExternalMemoryResource:v247];
                        *&v321 = @"MemoryPoolId";
                        v269 = [NSNumber numberWithUnsignedLongLong:*(DerivedStorage + 30240)];
                        *&v325 = v269;
                        v270 = [NSDictionary dictionaryWithObjects:&v325 forKeys:&v321 count:1];
                        v271 = [*(DerivedStorage + 30136) tuningParameters];
                        v272 = [v270 cmi_dictionaryMergedWithDefaultDict:v271];
                        [*(DerivedStorage + 30136) setTuningParameters:v272];

                        v248 = v310;
                        v13 = DerivedStorage + 27108;
                        LODWORD(v269) = *(DerivedStorage + 30168);
                        if (v269 <= [objc_msgSend(v236 classNamed:{v310), "getRequiredInputBufferSizeForFilterType:", 3}])
                        {
                          v273 = [objc_msgSend(v236 classNamed:{v310), "getRequiredInputBufferSizeForFilterType:", 3}];
                        }

                        else
                        {
                          v273 = *(DerivedStorage + 30168);
                        }

                        [v268 setTemporalFilterInputBufferSize:v273];
                        [*(DerivedStorage + 30136) setConfiguration:v268];
                        v274 = [*(DerivedStorage + 30136) setup];
                        v232 = v254;
                        if (!v274)
                        {
                          v275 = [*(DerivedStorage + 30136) prepareToProcess:4];
                          v234 = v304;
                          if (!v275)
                          {
                            v276 = *(DerivedStorage + 30120);
                            CFPreferenceBooleanWithDefault = FigGetCFPreferenceBooleanWithDefault();
                            if (CFPreferenceBooleanWithDefault | FigGetCFPreferenceBooleanWithDefault())
                            {
                              v278 = v276;
                            }

                            else
                            {
                              v278 = 0;
                            }

                            v279 = [[CMISmartStyleUtilitiesV1 alloc] initWithOptionalMetalCommandQueue:v232 useCase:v278 processingType:1 optionalExternalMemoryResource:v247];
                            v280 = *(DerivedStorage + 30144);
                            *(DerivedStorage + 30144) = v279;

                            if (*(DerivedStorage + 30144))
                            {
                              if (!*(DerivedStorage + 30107) || (v281 = [[CMISmartStyleUtilitiesV1 alloc] initWithOptionalMetalCommandQueue:v232 useCase:v278 processingType:0 optionalExternalMemoryResource:v247], v282 = *(DerivedStorage + 30152), *(DerivedStorage + 30152) = v281, v282, *(DerivedStorage + 30152)))
                              {
                                x_low = 0;
LABEL_350:
                                v248 = v310;
                                goto LABEL_351;
                              }
                            }

LABEL_401:
                            x_low = 4294954510;
                            goto LABEL_350;
                          }

                          x_low = v275;
                          FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_54();
LABEL_351:

                          v111 = v307;
                          v3 = v308;
                          if (x_low)
                          {
                            FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_59();
                            goto LABEL_358;
                          }

                          goto LABEL_352;
                        }

                        x_low = v274;
                        FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_53();
LABEL_410:
                        v234 = v304;
                        goto LABEL_351;
                      }

LABEL_404:
                      x_low = 4294954510;
                      v13 = DerivedStorage + 27108;
                      v232 = v254;
                      goto LABEL_410;
                    }

                    v268 = 0;
                    x_low = 4294954510;
                  }

                  v13 = DerivedStorage + 27108;
                  goto LABEL_410;
                }

                v268 = 0;
                goto LABEL_404;
              }

              FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_55(v244);
            }
          }

          else
          {
            FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_56();
          }
        }

        else
        {
          FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_57();
        }
      }
    }

    v247 = 0;
    v268 = 0;
    goto LABEL_401;
  }

LABEL_352:
  if (*(v13 + 3140) == 1)
  {
    if (*v311 == 1)
    {
      v283 = objc_alloc_init(GVSFaceStabilizationProcessor);
      v284 = *(DerivedStorage + 30288);
      *(DerivedStorage + 30288) = v283;

      if (!*(DerivedStorage + 30288))
      {
        FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_60();
LABEL_381:
        x_low = 4294954510;
        goto LABEL_358;
      }
    }

    else
    {
      *(v13 + 3140) = 0;
    }
  }

  x_low = 0;
  *v3 = 0;
LABEL_358:

  return x_low;
}

void _sampleBufferImagePreStabilizationCallback(void *a1, uint64_t a2, opaqueCMSampleBuffer *a3)
{
  v5 = a1;
  v7 = v5;
  if (a3)
  {
    CMSampleBufferGetImageBuffer(a3);
  }

  else if (!a2)
  {
    goto LABEL_5;
  }

  WeakRetained = objc_loadWeakRetained(v7 + 9);
  [WeakRetained willStartProcessingBuffer:a3 withStatus:a2];

  v5 = v7;
LABEL_5:
}

uint64_t sbp_gvs_setPostOutputCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 24))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    *(DerivedStorage + 8) = a2;
    *(DerivedStorage + 16) = a3;
    [*(DerivedStorage + 112) setDelegate:a3];
    return 0;
  }
}

void _sampleBufferImageReadyCallback(void *a1, uint64_t a2, opaqueCMSampleBuffer *a3)
{
  v5 = a1;
  v16 = v5;
  if (a3)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(a3);
    v5 = v16;
  }

  else
  {
    ImageBuffer = 0;
  }

  if ([v5[8] transformPlatform] == 1 || objc_msgSend(v16[8], "transformPlatform") == 2)
  {
    v7 = 1;
    if (a2)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v7 = [v16[8] transformPlatform] == 3;
    if (a2)
    {
      goto LABEL_27;
    }
  }

  if (v7)
  {
    if (a3)
    {
      FigSimpleMutexLock();
      if ([v16[4] containsObject:ImageBuffer])
      {
        [v16[4] removeObject:ImageBuffer];
        FigSimpleMutexUnlock();
        WeakRetained = objc_loadWeakRetained(v16 + 9);
        [WeakRetained didCompleteProcessingOfBuffer:a3 withStatus:0];
      }

      else
      {
        [v16[5] addObject:ImageBuffer];
        [v16[6] addObject:a3];
        FigSimpleMutexUnlock();
      }

      goto LABEL_31;
    }

    if (*(v16 + 17))
    {
      FigSimpleMutexLock();
      v9 = [v16[5] count];
      FigSimpleMutexUnlock();
      if (!v9)
      {
        goto LABEL_31;
      }

      v10 = 0;
      v11 = v9;
      while (1)
      {
        v12 = v11;
        v11 = v9;
        usleep(0x3E8u);
        if (v12 == v9)
        {
          v10 += 1000;
        }

        else
        {
          v10 = 0;
        }

        if (v10 < 0x493E0)
        {
          goto LABEL_25;
        }

        FigSimpleMutexLock();
        if (![v16[5] count])
        {
          goto LABEL_24;
        }

        v13 = [v16[6] objectAtIndexedSubscript:0];

        [v16[5] objectAtIndexedSubscript:0];
        if (!v13)
        {
          break;
        }

        CFRetain(v13);
        [v16[6] removeObjectAtIndex:0];
        [v16[5] removeObjectAtIndex:0];
        FigSimpleMutexUnlock();
        v14 = objc_loadWeakRetained(v16 + 9);
        [v14 didCompleteProcessingOfBuffer:v13 withStatus:4294954514];

        CFRelease(v13);
LABEL_25:
        FigSimpleMutexLock();
        v9 = [v16[5] count];
        FigSimpleMutexUnlock();
        if (!v9)
        {
          goto LABEL_31;
        }
      }

      [v16[6] removeObjectAtIndex:0];
      [v16[5] removeObjectAtIndex:0];
LABEL_24:
      FigSimpleMutexUnlock();
      goto LABEL_25;
    }
  }

LABEL_27:
  if (a2 || a3)
  {
    v15 = objc_loadWeakRetained(v16 + 9);
    [v15 didCompleteProcessingOfBuffer:a3 withStatus:a2];
  }

LABEL_31:
}

uint64_t sbp_gvs_setProperty(uint64_t a1, const void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 24))
  {
    v6 = DerivedStorage;
    if (!CFEqual(a2, kFigVideoStabilizationSampleBufferProcessorProperty_VideoStabilizationDisabled))
    {
      v9 = v6 + 27148;
      if (CFEqual(a2, kFigVideoStabilizationSampleBufferProcessorProperty_SphereVideoEnabled))
      {
        if (!a3)
        {
          goto LABEL_14;
        }

        TypeID = CFBooleanGetTypeID();
        if (TypeID != CFGetTypeID(a3))
        {
          goto LABEL_14;
        }

        Value = CFBooleanGetValue(a3);
        if (*(v6 + 32))
        {
          if (!Value || *(v6 + 28137))
          {
            a3 = 0;
            *(v6 + 28136) = Value;
            return a3;
          }

          sbp_gvs_setProperty_cold_1(&v22);
        }

        else
        {
          sbp_gvs_setProperty_cold_2(&v22);
        }
      }

      else
      {
        if (CFEqual(a2, kFigVideoStabilizationSampleBufferProcessorProperty_FrameRateConversionEnabled))
        {
          if (a3)
          {
            v13 = CFBooleanGetTypeID();
            if (v13 == CFGetTypeID(a3) && (v14 = CFBooleanGetValue(a3)) != 0 && *v9 == 1)
            {
              a3 = 0;
              *(v9 + 2630) = v14;
              *(v9 + 2640) = 0;
              *(v9 + 2632) = 0xFFFFFFFFLL;
              *(v9 + 2648) = 1;
            }

            else
            {
              return 0;
            }
          }

          return a3;
        }

        if (CFEqual(a2, kFigVideoStabilizationSampleBufferProcessorProperty_LongPressModeEnabled))
        {
          if (a3 && (v15 = CFBooleanGetTypeID(), v15 == CFGetTypeID(a3)))
          {
            if (*(v6 + 32))
            {
              if (*(v6 + 328))
              {
                if (*(v6 + 29504) > 0.0 && *(v6 + 29512) > 0.0)
                {
                  v16 = CFBooleanGetValue(a3) != 0;
                  a3 = sbp_enableLongPressMode(v6, v16);
                  if (a3)
                  {
                    sbp_gvs_setProperty_cold_3();
                  }

                  return a3;
                }

                sbp_gvs_setProperty_cold_4(&v22);
              }

              else
              {
                sbp_gvs_setProperty_cold_5(&v22);
              }
            }

            else
            {
              sbp_gvs_setProperty_cold_6(&v22);
            }
          }

          else
          {
            sbp_gvs_setProperty_cold_7(&v22);
          }
        }

        else if (CFEqual(a2, kFigVideoStabilizationSampleBufferProcessorProperty_P3ToBT2020ConversionEnabled) && !*(v6 + 172))
        {
          if (a3 && (v19 = CFBooleanGetTypeID(), v19 == CFGetTypeID(a3)))
          {
            if (*(v6 + 32))
            {
              v20 = CFBooleanGetValue(a3) != 0;
              a3 = sbp_enableP3ToBT2020Conversion(v6, v20);
              if (a3)
              {
                sbp_gvs_setProperty_cold_8();
              }

              return a3;
            }

            sbp_gvs_setProperty_cold_9(&v22);
          }

          else
          {
            sbp_gvs_setProperty_cold_10(&v22);
          }
        }

        else if (CFEqual(a2, kFigVideoStabilizationSampleBufferProcessorProperty_FlipHorizontalOrientation))
        {
          if (a3 && (v17 = CFBooleanGetTypeID(), v17 == CFGetTypeID(a3)))
          {
            v18 = CFBooleanGetValue(a3);
            if (!v18 || !*(v6 + 172))
            {
              a3 = 0;
              *(v6 + 203) = v18;
              return a3;
            }

            sbp_gvs_setProperty_cold_11(&v22);
          }

          else
          {
            sbp_gvs_setProperty_cold_12(&v22);
          }
        }

        else
        {
          if (!CFEqual(a2, kFigVideoStabilizationSampleBufferProcessorProperty_IMUToCameraExtrinsic))
          {
            return 4294954512;
          }

          if (a3 && (v21 = CFDataGetTypeID(), v21 == CFGetTypeID(a3)))
          {
            if (*(v6 + 32))
            {
              a3 = sbp_setCameraExtrinsicAlignment(v6, a3);
              if (a3)
              {
                sbp_gvs_setProperty_cold_13();
              }

              return a3;
            }

            sbp_gvs_setProperty_cold_14(&v22);
          }

          else
          {
            sbp_gvs_setProperty_cold_15(&v22);
          }
        }
      }

      return v22;
    }

    if (a3)
    {
      v7 = CFBooleanGetTypeID();
      if (v7 == CFGetTypeID(a3))
      {
        v8 = CFBooleanGetValue(a3);
        a3 = 0;
        *(v6 + 84) = v8;
        return a3;
      }
    }
  }

LABEL_14:
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t sbp_gvs_processSampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ImageBuffer = CMSampleBufferGetImageBuffer(a2);
  if (*(DerivedStorage + 24))
  {
    sbp_gvs_processSampleBuffer_cold_1(time);
LABEL_335:
    a2 = 0;
    StabilizedSampleBuffer = LODWORD(time[0]);
    goto LABEL_451;
  }

  v12 = ImageBuffer;
  if (!ImageBuffer)
  {
    sbp_gvs_processSampleBuffer_cold_2();
  }

  if (!*(DerivedStorage + 29720) && !sbp_gvs_verifyInputBuffer(v12))
  {
    sbp_gvs_processSampleBuffer_cold_57();
    goto LABEL_341;
  }

  if (gGMFigKTraceEnabled == 1)
  {
    _getPresentationTimeStampForSampleBuffer(a2, 0, v6, v7, v8, v9, v10, v11, v300, v301, v302, v303, v304, v305, v306, v309, v311, sbuf);
    time[0] = origin;
    *&time[1] = v325.width;
    CMTimeGetSeconds(time);
    kdebug_trace();
  }

  if (CMGetAttachment(a2, kFigVideoStabilizationSampleBufferAttachmentKey_DepthSampleBuffer, 0))
  {
    v13 = CMSampleBufferGetImageBuffer(a2);
    if (sbp_gvs_verifyInputBuffer(v13))
    {
      if (*(DerivedStorage + 32) && !*(DerivedStorage + 29536))
      {
        *(DerivedStorage + 29544) = 0;
        v14 = *(DerivedStorage + 29568);
        *(DerivedStorage + 29568) = 0;
      }

      goto LABEL_13;
    }

    sbp_gvs_processSampleBuffer_cold_3();
LABEL_341:
    a2 = 0;
    StabilizedSampleBuffer = 4294954514;
    goto LABEL_451;
  }

LABEL_13:
  MetadataDictionary = _getMetadataDictionary(a2);
  if (!MetadataDictionary)
  {
    sbp_gvs_processSampleBuffer_cold_56(time);
    goto LABEL_335;
  }

  v16 = MetadataDictionary;
  v17 = *(DerivedStorage + 27148);
  if (v17 != 5 && v17 != 2)
  {
    goto LABEL_28;
  }

  v18 = kFigCaptureSampleBufferAttachmentKey_SmartStyleFutureLearnedCoefficientsArray;
  v19 = CMGetAttachment(a2, kFigCaptureSampleBufferAttachmentKey_SmartStyleFutureLearnedCoefficientsArray, 0);
  if (v19)
  {
    *(DerivedStorage + 30192) = CFRetain(v19);
    v20 = *(DerivedStorage + 27148);
    if (v20 != 5)
    {
      goto LABEL_20;
    }

    CMRemoveAttachment(a2, v18);
  }

  v20 = *(DerivedStorage + 27148);
LABEL_20:
  if (v20 == 2)
  {
    Value = CFDictionaryGetValue(v16, kFigCaptureVideoStabilizationMetadata_CinematicFutureMetadataInitializationArray);
    v22 = Value;
    if (*(DerivedStorage + 32))
    {
      if (!Value)
      {
        sbp_gvs_processSampleBuffer_cold_5(time);
        goto LABEL_335;
      }

      if (CFArrayGetCount(Value) <= 0)
      {
        sbp_gvs_processSampleBuffer_cold_4(time);
        goto LABEL_335;
      }

      *(DerivedStorage + 29472) = CFRetain(v22);
    }

    else
    {
      if (Value)
      {
        sbp_gvs_processSampleBuffer_cold_6(time);
        goto LABEL_335;
      }

      if (([*(DerivedStorage + 29400) centerIndex] & 0x80000000) != 0)
      {
        sbp_gvs_processSampleBuffer_cold_7(time);
        goto LABEL_335;
      }
    }

    v16 = CFDictionaryGetValue(v16, kFigCaptureVideoStabilizationMetadata_CinematicFutureMetadata);
  }

LABEL_28:
  if (*(DerivedStorage + 32))
  {
    ValueAtIndex = v16;
    if (*(DerivedStorage + 29472))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 29472), 0);
    }

    v24 = CFDictionaryGetValue(ValueAtIndex, kFigCaptureStreamMetadata_PortType);
    if (*(DerivedStorage + 28280))
    {
      v25 = bravoTransitionCameraIndexFromPortType(v24, (DerivedStorage + 28724));
      if (v25)
      {
        StabilizedSampleBuffer = v25;
        sbp_gvs_processSampleBuffer_cold_8();
        a2 = 0;
        goto LABEL_451;
      }
    }

    v26 = *(DerivedStorage + 128);
    v27.i64[0] = v26;
    v27.i64[1] = SHIDWORD(v26);
    __asm { FMOV            V1.2D, #-1.0 }

    v32 = vaddq_f64(vcvtq_f64_s64(v27), _Q1);
    __asm { FMOV            V1.2D, #0.5 }

    *(DerivedStorage + 336) = vmulq_f64(v32, _Q1);
    if (FigCFEqual())
    {
      v34 = 1;
    }

    else
    {
      v34 = FigCFEqual() != 0;
    }

    *(DerivedStorage + 352) = v34;
    if ((*(DerivedStorage + 329) & 1) == 0)
    {
      *(DerivedStorage + 360) = GVSGetDefaultExtrinsicToIMU(v34);
      *(DerivedStorage + 368) = v35;
      *(DerivedStorage + 376) = v36;
      *(DerivedStorage + 384) = v37;
      v34 = *(DerivedStorage + 352);
    }

    v38 = *(DerivedStorage + 27148);
    v40 = (v38 - 1) < 3 && v34 == 0;
    *(DerivedStorage + 27136) = v40;
    v41 = *(DerivedStorage + 27140);
    if (v41 <= 1)
    {
      *(DerivedStorage + 27136) = v41 == 1;
    }

    if (*(DerivedStorage + 28136))
    {
      v42 = 1;
    }

    else
    {
      v42 = v38 == 3;
    }

    v43 = v42;
    *(DerivedStorage + 27106) = v43;
  }

  origin.x = 0.0;
  if (!_getMetadataDictionary(a2))
  {
    sbp_gvs_processSampleBuffer_cold_55(&origin, time);
    goto LABEL_335;
  }

  FigCFDictionaryGetInt64IfPresent();
  CMSampleBufferGetPresentationTimeStamp(time, a2);
  *(DerivedStorage + 29760) = CMTimeGetSeconds(time);
  *(DerivedStorage + 29768) = origin.x;
  if (!*(DerivedStorage + 29778))
  {
    goto LABEL_62;
  }

  FrameRateConversionStatus = _getFrameRateConversionStatus(a2);
  if (!FrameRateConversionStatus)
  {
    goto LABEL_62;
  }

  v45 = FrameRateConversionStatus;
  if (!*(DerivedStorage + 32))
  {
    v72 = (DerivedStorage + 29780);
    v73 = *(DerivedStorage + 29784);
    if (FrameRateConversionStatus != *(DerivedStorage + 29800))
    {
      if (!v73)
      {
        *v72 = *(DerivedStorage + 29388);
      }

      *(DerivedStorage + 29784) = ++v73;
    }

    if (v73 == 2)
    {
      sbuf = a2;
      v113 = *v72;
      if (*v72 == *(DerivedStorage + 29388))
      {
        v46 = 0;
      }

      else
      {
        v319 = a1;
        v143 = kFigCaptureSampleBufferAttachmentKey_MetadataDictionary;
        do
        {
          v144 = *(*(DerivedStorage + 29368) + 8 * v113);
          if (v144)
          {
            if (CMGetAttachment(v144, v143, 0))
            {
              FigCFDictionarySetInt32();
            }

            else
            {
              sbp_gvs_processSampleBuffer_cold_9();
            }
          }

          v145 = *(DerivedStorage + 29396);
          v113 += v145 + 1;
          do
          {
            v113 -= v145;
          }

          while (v113 >= v145);
        }

        while (*(DerivedStorage + 29388) != v113);
        v46 = 0;
        a1 = v319;
      }

      a2 = sbuf;
      goto LABEL_58;
    }

    if (v73 == 1)
    {
      ++*(DerivedStorage + 29788);
    }
  }

  v46 = 1;
LABEL_58:
  if (*(DerivedStorage + 29780) == *(DerivedStorage + 29384) || *(DerivedStorage + 29788) == *(DerivedStorage + 29792))
  {
    *(DerivedStorage + 29800) = v45;
LABEL_61:
    *(DerivedStorage + 29788) = 0;
    *(DerivedStorage + 29780) = 0xFFFFFFFFLL;
    goto LABEL_62;
  }

  *(DerivedStorage + 29800) = v45;
  if ((v46 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_62:
  v47 = *(DerivedStorage + 27148);
  if ((v47 - 1) < 3)
  {
    v320 = DerivedStorage;
    v48 = CMBaseObjectGetDerivedStorage();
    v49 = v48;
    v50 = v48 + 27148;
    *&v343 = 0;
    v51 = *(v48 + 29396);
    if (!*(v48 + 32))
    {
      goto LABEL_385;
    }

    v316 = a1;
    v52 = *(v48 + 104);
    v53 = *v50;
    if (*v50 == 3)
    {
      v54 = 1071644672;
      goto LABEL_113;
    }

    if (v53 != 2)
    {
      if (v53 == 1)
      {
        v54 = 1050253722;
LABEL_113:
        *(v48 + 29528) = v54;
        v83 = 1.0;
        goto LABEL_373;
      }

      fig_log_get_emitter();
      StabilizedSampleBuffer = 4294954515;
      FigDebugAssert3();
LABEL_115:
      a2 = 0;
      a1 = v316;
      DerivedStorage = v320;
      goto LABEL_486;
    }

    *(v48 + 29528) = 1050253722;
    v74 = *(v48 + 29472);
    sbuf = a2;
    if (v74)
    {
      Count = CFArrayGetCount(v74);
      if (Count > 0)
      {
        if (*(v50 + 2316) < Count)
        {
          sbp_gvs_processSampleBuffer_cold_25(time);
LABEL_328:
          StabilizedSampleBuffer = LODWORD(time[0]);
        }

        else
        {
          v76 = 0;
          v77 = Count & 0x7FFFFFFF;
          while (1)
          {
            v78 = CFArrayGetValueAtIndex(v74, v76);
            if (!v78)
            {
              sbp_gvs_processSampleBuffer_cold_24(time);
              goto LABEL_328;
            }

            v79 = sbp_gvs_cinematicAddMetadataToQuaternionAndSphereRingBuffers(v49, v78);
            if (v79)
            {
              break;
            }

            if (v77 == ++v76)
            {
              StabilizedSampleBuffer = 0;
              goto LABEL_104;
            }
          }

          StabilizedSampleBuffer = v79;
          sbp_gvs_processSampleBuffer_cold_23();
        }

LABEL_104:
        v80 = *(v49 + 29472);
        if (v80)
        {
          CFRelease(v80);
          *(v49 + 29472) = 0;
        }

        if (StabilizedSampleBuffer)
        {
          sbp_gvs_processSampleBuffer_cold_28();
          goto LABEL_115;
        }

        v81 = *(v49 + 29400);
        if (v81)
        {
          [v81 getSmoothingAnalysisArrays];
          if (SHIDWORD(v336) < v337)
          {
            v82 = *(v334 + 8 * v337) - *(v334 + 8 * SHIDWORD(v336));
            if (v82 > 0.0)
            {
              v83 = (*(*(&time[1] + 1) + 144 * v337 + 72) - *(*(&time[1] + 1) + 144 * SHIDWORD(v336) + 72)) / v82;
              *(v50 + 2372) = v83 > 2.0;
              if (v83 > 2.0)
              {
                v52 = 0;
                goto LABEL_373;
              }

              goto LABEL_371;
            }

            sbp_gvs_processSampleBuffer_cold_29();
          }
        }

        *(v50 + 2372) = 0;
        v83 = 1.0;
LABEL_371:
        if (!*(v49 + 416))
        {
          sbp_gvs_processSampleBuffer_cold_30();
        }

LABEL_373:
        if (*(v49 + 88))
        {
          [*(v49 + 96) setQueuePriority:v52];
          AffineTransformContextSetPriority(*(v49 + 88), v52);
        }

        v257 = *(v50 + 2380);
        v258 = *(v50 + 2312);
        v259 = 16.0;
        if (v258 < 1.0)
        {
          v259 = 20.0;
          if (v258 > 0.5)
          {
            v259 = ((v258 + -0.5) * -8.0) + 20.0;
          }
        }

        v260 = fmaxf(v257, v258 * v259);
        a1 = v316;
        if (v83 > 30.0)
        {
          v260 = fmaxf(v257, v260 + (((v260 - v257) / -190.0) * (v83 + -30.0)));
        }

        *(v50 + 2376) = v260;
        *(v50 + 2308) = v260;
        if (*(v50 + 3100) == 1)
        {
          v261 = v260 * *(v50 + 3104);
          *(v50 + 3136) = v261;
          v262 = v260 * *(v50 + 3108);
          v263 = *(v50 + 3116) * (v262 - v261);
          if ((v261 - v263) > v257)
          {
            v257 = v261 - v263;
          }

          *(v50 + 3120) = v257;
          v264 = v262 + v263;
          *(v50 + 3124) = v264;
          if (v257 >= v264)
          {
            sbp_gvs_processSampleBuffer_cold_31();
            goto LABEL_488;
          }

          *(v50 + 3128) = v261;
          *(v50 + 3132) = fminf(fmaxf(v262, v261), v260);
        }

LABEL_385:
        if (*v50 != 1)
        {
          goto LABEL_391;
        }

        if (a2)
        {
          v265 = CMGetAttachment(a2, kFigVideoStabilizationSampleBufferAttachmentKey_OutputBiasRotationQuaternion, 0);
          if (v265)
          {
            v266 = v265;
            if ([v265 length] == &dword_10)
            {
              v267 = [v266 bytes];
              *(v49 + 28256) = *v267;
              *(v49 + 28264) = v267[1];
              *(v49 + 28272) = v267[2];
              *(v49 + 28248) = v267[3];

              v268 = 1;
LABEL_390:
              *(v50 + 1092) = v268;
LABEL_391:
              if (v16)
              {
                v269 = sbp_gvs_cinematicAddMetadataToQuaternionAndSphereRingBuffers(v49, v16);
                if (v269)
                {
                  StabilizedSampleBuffer = v269;
                  sbp_gvs_processSampleBuffer_cold_34();
                  goto LABEL_480;
                }

                if (!*(v50 + 2464))
                {
                  goto LABEL_429;
                }

                if (*(v50 + 2493) == 1 && (*(v50 + 2526) & 1) == 0)
                {
                  v276 = CMGetAttachment(a2, kFigVideoStabilizationSampleBufferProcessorOption_SystemPressure, 0);
                  v277 = [v276 intValue];
                  *(v50 + 2496) = v277;
                  *(v50 + 2526) |= v277 > 2;
                }

                if (*(v50 + 2527))
                {
                  goto LABEL_407;
                }

                if (CFDictionaryContainsKey(v16, kFigCaptureStreamMetadata_LTMLookUpTables))
                {
                  if ([*(v49 + 29648) prepareToProcessWithMetadata:v16])
                  {
                    sbp_gvs_processSampleBuffer_cold_35();
                  }

                  *(v50 + 2527) = 1;
                  goto LABEL_407;
                }

                v278 = *(v50 + 2532);
                *(v50 + 2532) = v278 + 1;
                if (v278 < 3)
                {
LABEL_407:
                  if (!*(v49 + 29656) && !*(v50 + 2532) && *(v50 + 2527) == 1)
                  {
                    v279 = [*(v49 + 29648) allocateLTCsCorrectionTex:*(v50 + 2492) forISPProcessing:*(v49 + 172) == 3];
                    v280 = *(v49 + 29656);
                    *(v49 + 29656) = v279;

                    if (!*(v49 + 29656))
                    {
                      sbp_gvs_processSampleBuffer_cold_36();
                    }

                    if (sbp_ltm_checkPerVideoDisablement(v49, v16))
                    {
                      sbp_gvs_processSampleBuffer_cold_37();
                    }
                  }

                  if ((*(v50 + 2526) & 1) != 0 || *(v50 + 2527) != 1)
                  {
                    if (*(v50 + 2496) >= 3)
                    {
                      *(v50 + 2536) = 0;
                    }

                    if (*(v50 + 2525) == 1)
                    {
                      *(v50 + 2536) = 1;
                    }

                    *(v50 + 2528) = 0;
                  }

                  else
                  {
                    if (!*(v49 + 29648))
                    {
                      sbp_gvs_processSampleBuffer_cold_38(v49);
                    }

                    if (gGMFigKTraceEnabled == 1)
                    {
                      _getPresentationTimeStampForSampleBuffer(a2, 0, v270, v271, v272, v273, v274, v275, v300, v301, v302, v303, v304, v305, v306, v309, v311, sbuf);
                      time[0] = origin;
                      *&time[1] = v325.width;
                      CMTimeGetSeconds(time);
                      kdebug_trace();
                    }

                    if ([*(v49 + 29648) bufferFrame:a2])
                    {
                      sbp_gvs_processSampleBuffer_cold_39();
                    }

                    if (gGMFigKTraceEnabled == 1)
                    {
                      kdebug_trace();
                    }
                  }

                  goto LABEL_429;
                }
              }

              else if (!*(v50 + 2464))
              {
LABEL_429:
                _setAttachedMediaToSampleBuffer(a2, kFigCaptureStreamMetadataOutputKey_PreLTMThumbnail, 0);
                _setAttachedMediaToSampleBuffer(a2, kFigCaptureStreamMetadataOutputKey_LTMThumbnail, 0);
                _setAttachedMediaToSampleBuffer(a2, kFigCaptureStreamMetadataOutputKey_WeightSegmentMap, 0);
                v281 = CFRetain(a2);
                v282 = *(v50 + 2240);
                *(*(v49 + 29368) + 8 * v282) = v281;
                do
                {
                  v283 = v282 - v51;
                  v284 = v282 + 1;
                  LODWORD(v282) = v282 - v51;
                }

                while (v284 >= v51);
                *(v50 + 2240) = v51 + v283 + 1;
                v285 = *(v50 + 2244);
                if (v285 < v51)
                {
                  *(v50 + 2244) = ++v285;
                }

                if (*(v50 + 2900) == 1)
                {
                  v286 = (v51 + v283 + *(v50 + 2248)) % v51;
                  if (*(v49 + 32))
                  {
                    *&time[0] = 0;
                    FigCFDictionaryGetDoubleIfPresent();
                    if (*time > *(v50 + 2904) && (v287 = *(v49 + 30072)) != 0 || (v287 = *(v49 + 30080)) != 0)
                    {
                      objc_storeStrong((v49 + 30064), v287);
                    }

                    v285 = *(v50 + 2244);
                  }

                  *(*(v49 + 29376) + 24 * v286 + 16) = 0;
                  if (v285 >= 3)
                  {
                    _runVideoDeghostingDetection(*(v49 + 30064), v49 + 29368);
                  }
                }

                if (!*(v50 + 2956))
                {
                  goto LABEL_443;
                }

                if (_shouldBypassSmartStyle(a2))
                {
                  if (*v50 != 2)
                  {
                    v292 = _removeSmartStyleAttachments(v49, a2);
                    if (v292)
                    {
                      StabilizedSampleBuffer = v292;
                      sbp_gvs_processSampleBuffer_cold_45();
LABEL_480:
                      a2 = 0;
                      goto LABEL_404;
                    }
                  }

                  goto LABEL_443;
                }

                if (!*(v50 + 2960))
                {
                  if (*(v49 + 172) == 3)
                  {
                    v295 = _runSmartStyleApplyOnUnstabilizedImage(v49, a2);
                    if (v295)
                    {
                      StabilizedSampleBuffer = v295;
                      sbp_gvs_processSampleBuffer_cold_44();
                      goto LABEL_480;
                    }
                  }

LABEL_443:
                  if (*(v50 + 2244) < v51)
                  {
                    v288 = *(v49 + 88);
                    DerivedStorage = v320;
                    if (v288)
                    {
                      v289 = CMSampleBufferGetImageBuffer(a2);
                      AffineTransformCacheSourcePixelBuffer(v288, v289);
                    }

                    a2 = 0;
                    StabilizedSampleBuffer = 0;
                    goto LABEL_450;
                  }

                  DerivedStorage = v320;
                  if (!sbp_gvs_gaussianAverageGetStabilizedSampleBuffer(v49, &v343))
                  {
                    StabilizedSampleBuffer = 0;
LABEL_449:
                    a2 = v343;
                    goto LABEL_450;
                  }

                  sbp_gvs_processSampleBuffer_cold_46();
                  a2 = *&time[0];
                  goto LABEL_485;
                }

                if (*v50 != 2)
                {
                  v293 = _enqueueCoefficientsForSmartStyleFilterForwardLearning(v49, a2);
                  if (v293)
                  {
                    StabilizedSampleBuffer = v293;
                    sbp_gvs_processSampleBuffer_cold_40();
                    goto LABEL_480;
                  }
                }

                if (*(v49 + 172) != 3)
                {
                  goto LABEL_443;
                }

                v294 = *(v50 + 3036);
                if (*(v50 + 3028) < *(v50 + 3024) && v294 < *(v50 + 3032))
                {
                  *(v50 + 3036) = v294 + 1;
                  goto LABEL_443;
                }

                v296 = (*(v50 + 2240) + *(v50 + 2248) + ~v294) % *(v50 + 2248);
                v297 = *(v49 + 29368);
                v298 = *(v297 + 8 * v296);
                if (v298)
                {
                  if (_runSmartStyleFilterForwardLearning(v49, *(v297 + 8 * v296)))
                  {
                    sbp_gvs_processSampleBuffer_cold_41();
                  }

                  v299 = _runSmartStyleApplyOnUnstabilizedImage(v49, v298);
                  if (v299)
                  {
                    StabilizedSampleBuffer = v299;
                    sbp_gvs_processSampleBuffer_cold_42();
                    goto LABEL_480;
                  }

                  goto LABEL_443;
                }

                sbp_gvs_processSampleBuffer_cold_43();
LABEL_488:
                a2 = 0;
                StabilizedSampleBuffer = 4294954516;
LABEL_404:
                DerivedStorage = v320;
                if (StabilizedSampleBuffer)
                {
                  goto LABEL_486;
                }

                goto LABEL_450;
              }

              sbp_ltm_deallocateLtcCorrectionTexture(v49);
              a2 = 0;
              StabilizedSampleBuffer = 0;
              goto LABEL_404;
            }

            sbp_gvs_processSampleBuffer_cold_32(v266);
          }
        }

        else
        {
          sbp_gvs_processSampleBuffer_cold_33();
        }

        v268 = 0;
        goto LABEL_390;
      }

      sbp_gvs_processSampleBuffer_cold_26(time);
    }

    else
    {
      sbp_gvs_processSampleBuffer_cold_27(time);
    }

    StabilizedSampleBuffer = LODWORD(time[0]);
    goto LABEL_104;
  }

  if (v47 == 4)
  {
    v58 = CMBaseObjectGetDerivedStorage();
    v59 = v58;
    v60 = v58 + 3393;
    v341 = 0;
    v342 = 0;
    v61 = v58[22].i32[0];
    origin = 0;
    v325 = 0;
    v326 = 0u;
    v327 = 0u;
    v328 = 0u;
    v329 = 0u;
    v330 = 0u;
    v331 = 0u;
    v332 = 0u;
    v62 = &v58[1336];
    if (v58[3517].i8[1])
    {
      v63 = &v58[1336];
    }

    else
    {
      v63 = 0;
    }

    if (v58[3517].i8[1])
    {
      v64 = v58[3518];
    }

    else
    {
      v64 = 0;
    }

    v84 = GVSExtractMetadataFromTopToBottomRows(v16, &v58[53], *&v58[3391], v63, &v58[42], v58 + 16, &origin, time, 0, &v341, v64, 0, v61);
    if (v84)
    {
      StabilizedSampleBuffer = v84;
      sbp_gvs_processSampleBuffer_cold_13();
      goto LABEL_345;
    }

    v317 = a1;
    *(v59 + 28232) = vdiv_f32(vneg_f32(v341), vdup_lane_s32(*(&origin.x + 4), 0));
    if (v60->i8[0])
    {
      v85 = &time[2 * v61];
      v86 = *v85;
      *(v59 + 28112) = v85[1];
      *(v59 + 28096) = v86;
      if (v60[124].i8[1])
      {
        if (BYTE4(origin.y))
        {
          *&v343 = 0;
          v87 = FigMotionComputeLensMovementForTimeStamp(v62, &v343, SDWORD2(v332), *(&v328 + 1), *&v325.width);
          *(v59 + 28232) = vsub_f32(*(v59 + 28232), vdiv_f32(*&v343, vdup_lane_s32(*(&origin.x + 4), 0)));
          if (v87)
          {
            goto LABEL_166;
          }
        }
      }

      goto LABEL_163;
    }

    if (*(v59 + 392) != 1)
    {
      if (a2)
      {
        v121 = CMGetAttachment(a2, kFigVideoStabilizationSampleBufferAttachmentKey_StabilizedOutputCenterQuaternion, 0);
        if (v121)
        {
          v122 = v121;
          BytePtr = CFDataGetBytePtr(v121);
          if (CFDataGetLength(v122) == 32)
          {
            v124 = *(BytePtr + 1);
            *(v59 + 28096) = *BytePtr;
            *(v59 + 28112) = v124;
            if (FigMotionGetQuaternionLength((v59 + 28096)) > 0.00000001)
            {
              goto LABEL_163;
            }

            sbp_gvs_processSampleBuffer_cold_15(&v343);
          }

          else
          {
            sbp_gvs_processSampleBuffer_cold_14(&v343);
          }
        }

        else
        {
          sbp_gvs_processSampleBuffer_cold_16(&v343);
        }
      }

      else
      {
        sbp_gvs_processSampleBuffer_cold_17(&v343);
      }

      if (v343)
      {
        goto LABEL_137;
      }

LABEL_163:
      if (*(v59 + 10682))
      {
        v125 = *(v59 + 84);
        *(v59 + 202) = *(v59 + 84) != 0;
        if (!v125)
        {
LABEL_168:
          if (v60[124].i8[1])
          {
            v128 = *(v59 + 176);
            v129 = *(v59 + 28144);
            v130 = (v59 + 28152);
            if (v128 == 1)
            {
              *v130 = *v129;
            }

            else if (v128 >= 1)
            {
              v131 = 0;
              v132 = (*(v59 + 180) - 1);
              do
              {
                v130[v131] = v129[((v132 * v131) / (v128 - 1))];
                ++v131;
              }

              while (v128 != v131);
            }
          }

          v133 = *(v59 + 28896);
          if (v133 || *(v59 + 28904))
          {
            [v133 reset];
            [*(v59 + 28904) reset];
            sbp_gvs_extractDistortionData(*(v59 + 28864), v16, &origin, *(v59 + 29136), v59 + 28896, vsubq_f64(*(v59 + 336), vcvtq_f64_f32(vmul_n_f32(*(v59 + 28232), *(&origin.x + 1)))));
          }

          if (*(v59 + 10682))
          {
            sbufb = a2;
            *&v343 = vmul_n_f32(*(v59 + 28232), *(&origin.x + 1));
            *(v59 + 196) = 1065353216;
            if (v61 >= 1)
            {
              v134 = v59 + 27872;
              v135 = v59 + 28152;
              v136 = (v59 + 27152);
              v137 = time;
              while (1)
              {
                *v134 = FigMotionMultiplyByInverseOfQuaternion((v59 + 28096), v137);
                *(v134 + 8) = v138;
                *(v134 + 16) = v139;
                *(v134 + 24) = v140;
                v141 = v60[124].i8[1] ? v135 : 0;
                v142 = GVSComputeTransformFromCameraMotion(v134, (v59 + 336), &origin, v141, &v343, v136);
                if (v142)
                {
                  break;
                }

                if (*(v59 + 200))
                {
                  limitTransformToOverscan(v59 + 128, &v330 + 1, v136, *(&v325.width + 1));
                }

                v136 += 9;
                v135 += 8;
                v137 += 4;
                v134 += 32;
                if (!--v61)
                {
                  goto LABEL_186;
                }
              }

              StabilizedSampleBuffer = v142;
              sbp_gvs_processSampleBuffer_cold_21();
              a2 = 0;
LABEL_189:
              a1 = v317;
              if (StabilizedSampleBuffer)
              {
                goto LABEL_486;
              }

LABEL_450:
              ++*(DerivedStorage + 36);
              *(DerivedStorage + 32) = 0;
              goto LABEL_451;
            }

LABEL_186:
            a2 = sbufb;
          }

          if (sbp_gvs_createStabilizedSampleBuffer(v59, a2, &origin, &v342))
          {
            sbp_gvs_processSampleBuffer_cold_22();
            a2 = v343;
            StabilizedSampleBuffer = v346;
          }

          else
          {
            StabilizedSampleBuffer = 0;
            a2 = v342;
          }

          goto LABEL_189;
        }

LABEL_167:
        v126 = &time[2 * ((*(v59 + 176) + (*(v59 + 176) >> 31)) >> 1)];
        v127 = v126[1];
        *(v59 + 28096) = *v126;
        *(v59 + 28112) = v127;
        goto LABEL_168;
      }

LABEL_166:
      *(v59 + 202) = 1;
      goto LABEL_167;
    }

    v343 = 0u;
    v344 = 0u;
    if (a2)
    {
      v92 = CMGetAttachment(a2, kFigVideoStabilizationSampleBufferAttachmentKey_StabilizedOutputCameraGeometry, 0);
      v93 = v92;
      if (v92 && [v92 length] == &stru_20.segname[8])
      {
        v94 = [v93 bytes];
        v343 = *v94;
        v344 = *(v94 + 1);
        v95 = *(v94 + 32);

        v96 = 0;
        goto LABEL_136;
      }

      sbp_gvs_processSampleBuffer_cold_18();
      v96 = v346;
    }

    else
    {
      sbp_gvs_processSampleBuffer_cold_19();
      v96 = 0;
    }

    v95 = 0;
LABEL_136:
    v97 = v344;
    *(v59 + 28096) = v343;
    *(v59 + 28112) = v97;
    *(v59 + 28232) = vneg_f32(v95);
    if (v96)
    {
LABEL_137:
      sbp_gvs_processSampleBuffer_cold_20();
      goto LABEL_166;
    }

    goto LABEL_163;
  }

  if (v47 != 5)
  {
    v65 = CMBaseObjectGetDerivedStorage();
    v66 = v65;
    v67 = v65 + 3392;
    v68 = &v65[1335] + 2;
    v341 = 0;
    v331 = 0u;
    v332 = 0u;
    v329 = 0u;
    v330 = 0u;
    v327 = 0u;
    v328 = 0u;
    v325 = 0;
    v326 = 0u;
    origin = 0;
    v69 = v65[22].i32[0];
    if (v65[3517].i8[1])
    {
      v70 = &v65[1336];
    }

    else
    {
      v70 = 0;
    }

    if (v65[3517].i8[1])
    {
      v71 = v65[3518];
    }

    else
    {
      v71 = 0;
    }

    v88 = &v65[3535];
    if (!v65[3535].i32[0])
    {
      v88 = 0;
    }

    v89 = GVSExtractMetadataFromTopToBottomRows(v16, &v65[53], *&v65[3391], v70, &v65[42], v65 + 16, &origin, time, 0, 0, v71, v88, v69);
    if (v89)
    {
      StabilizedSampleBuffer = v89;
      sbp_gvs_processSampleBuffer_cold_47();
      a2 = 0;
      goto LABEL_325;
    }

    v90 = *v68;
    v321 = DerivedStorage;
    if (*v68)
    {
      *(v66 + 202) = *(v66 + 84) != 0;
      v310 = (v66 + 202);
      v91 = (v66 + 32);
      if (!*(v66 + 32) && v68[1])
      {
        goto LABEL_142;
      }
    }

    else
    {
      *(v66 + 202) = 1;
      v310 = (v66 + 202);
      v91 = (v66 + 32);
      if (!*(v66 + 32))
      {
        goto LABEL_142;
      }
    }

    v98 = &time[2 * v69];
    v99 = *v98;
    *(v66 + 28112) = v98[1];
    *(v66 + 28096) = v99;
    if (v69 >= 1)
    {
      v100 = (v66 + 27648);
      v101 = time;
      v102 = v69;
      do
      {
        v103 = v101[1];
        *(v100 - 14) = *v101;
        *(v100 - 13) = v103;
        v104 = *v101;
        v105 = v101[1];
        v101 += 2;
        *v100 = v104;
        v100[1] = v105;
        v100 += 2;
        --v102;
      }

      while (v102);
    }

LABEL_142:
    sbufa = a2;
    if (v67[125].i8[1])
    {
      v106 = *(v66 + 176);
      v107 = *(v66 + 28144);
      v108 = (v66 + 28152);
      if (v106 == 1)
      {
        *v108 = *v107;
      }

      else if (v106 >= 1)
      {
        v109 = 0;
        v110 = (*(v66 + 180) - 1);
        do
        {
          v108[v109] = v107[((v110 * v109) / (v106 - 1))];
          ++v109;
        }

        while (v106 != v109);
      }
    }

    v323 = v69;
    v312 = v68;
    v318 = a1;
    if (!v90)
    {
      goto LABEL_321;
    }

    if (*v91)
    {
      v111 = *&v67[252].i32[1];
      v112 = v69;
      goto LABEL_310;
    }

    v114 = *(&v328 + 1) - *(v66 + 29360);
    if (v114 <= 0.0)
    {
      v115 = 1.0;
    }

    else
    {
      v115 = 0.0333333333 / v114;
    }

    *(v66 + 29352) = v115;
    v116 = *(v66 + 176);
    v117 = v115 * 0.0192 + 0.7808;
    v118 = v117;
    if (BYTE4(origin.y))
    {
      v119 = v115 * 0.005 + 0.945;
      if (v67[125].i8[0])
      {
        v119 = v119 + 0.02;
        v118 = v118 + 0.1;
        v120 = 1;
      }

      else
      {
        v120 = 0;
      }
    }

    else
    {
      v120 = 0;
      v119 = v115 * 0.005 + 0.945;
    }

    v146 = fminf(v118, 0.999);
    v308 = fminf(v119, 0.999);
    v147 = (v308 - v146);
    v148 = v146;
    if (v67[265].i32[0])
    {
      v148 = *&v67[252].i32[1];
    }

    v322 = v148;
    v149 = fmin(v117, 0.999);
    v150 = v147 / (v115 * 30.0);
    v151 = v147 / (v115 * 10.0);
    if (v116 < 1)
    {
      v153 = 0.0;
      v157 = 2.0;
      v154 = 2.0;
    }

    else
    {
      v343 = 0u;
      v344 = 0u;
      v152 = (v66 + 27648);
      v153 = 0.0;
      v154 = 2.0;
      v155 = time;
      v156 = v116;
      v157 = 2.0;
      do
      {
        *&v343 = FigMotionMultiplyByInverseOfQuaternion(v155, v152 - 28);
        *(&v343 + 1) = v158;
        *&v344 = v159;
        *(&v344 + 1) = v160;
        v161 = fabs(*&v343);
        if (v161 < v154)
        {
          v154 = v161;
        }

        *&v343 = FigMotionMultiplyByInverseOfQuaternion(v155, v152);
        *(&v343 + 1) = v162;
        *&v344 = v163;
        *(&v344 + 1) = v164;
        v165 = fabs(*&v343);
        if (v165 < v157)
        {
          v157 = v165;
        }

        v342 = 0;
        GVSComputeTranslationFromCameraMotion(&v343, &v342, *(&origin.x + 1));
        HIDWORD(v117) = HIDWORD(v342);
        v153 = COERCE_DOUBLE(vadd_f32(*&v153, v342));
        v152 += 4;
        v155 += 4;
        --v156;
      }

      while (v156);
    }

    v166 = v149;
    *&v117 = v150;
    v307 = *&v117;
    v167 = v151;
    *&v117 = v116;
    v168 = v67 + 257;
    v169 = COERCE_DOUBLE(vdiv_f32(*&v153, vdup_lane_s32(*&v117, 0)));
    if (v116)
    {
      v170 = v169;
    }

    else
    {
      v170 = v153;
    }

    v171 = acos(v157);
    v172 = *(v66 + 29352);
    v173 = acos(v154);
    v174 = sqrt(v172);
    v175 = v67[275].i32[1];
    *(v66 + 29260 + 8 * v175) = v170;
    v176 = v67[276].i32[0];
    v112 = v323;
    if (v176 <= 9)
    {
      v67[276].i32[0] = ++v176;
    }

    v177 = v171 * v172;
    v178 = v173 * v174;
    LOBYTE(v343) = 0;
    LOBYTE(v342) = 0;
    if (v176 == 10)
    {
      v179 = 0;
      v180 = 0.0;
      v181 = &v343;
      v182 = 1;
      do
      {
        v183 = 0;
        v184 = v182;
        v185 = 10;
        v186 = 0.0;
        v187 = v175;
        do
        {
          v188 = *(v66 + 29260 + 8 * v187 + 4 * v179);
          v186 = v186 + v188;
          if (v188 >= 0.0)
          {
            ++v183;
          }

          else
          {
            --v183;
          }

          v187 = (v187 + 9) % 10;
          --v185;
        }

        while (v185);
        if (v183 >= 0)
        {
          v189 = v183;
        }

        else
        {
          v189 = -v183;
        }

        if (v189 == 10)
        {
          v190 = fabsf(v186) / 10.0;
          if (v190 >= 0.75)
          {
            v181->i8[0] = 1;
            v180 = fmaxf(v180, v190);
          }
        }

        v182 = 0;
        v181 = &v342;
        v179 = 1;
      }

      while ((v184 & 1) != 0);
      v191 = v343 | v342;
    }

    else
    {
      v191 = 0;
      v180 = 0.0;
    }

    v67[253].i8[2] = v191 & 1;
    v192 = v177 <= 0.00447213968;
    v67[253].i8[1] = v177 <= 0.00447213968;
    v67[253].i8[0] = v178 <= 0.0109545059;
    v193 = v67[264].i32[1];
    if (v178 > 0.0109545059)
    {
      v192 = 0;
    }

    v168->i8[v193] = v192;
    v194 = v67[265].i32[0];
    if (v194 > 59)
    {
      v195 = v67[265].u32[0];
    }

    else
    {
      v195 = v194 + 1;
      v67[265].i32[0] = v194 + 1;
      if (v194 < 0)
      {
        goto LABEL_240;
      }
    }

    if (!v168->i8[0])
    {
      v67[253].i8[3] = 0;
LABEL_250:
      if (v120)
      {
        if (v67[253].i8[2] == 1 && *(v66 + 201))
        {
          v200 = v322 - v167;
        }

        else
        {
          v200 = fminf(v146, v322 + v307);
          v201 = fmaxf(v146, v322 - v167);
          if (v322 > v146)
          {
            v200 = v201;
          }
        }

LABEL_259:
        v202 = fminf(v308, fmaxf(v166, v200));
        v67[275].i32[1] = (v175 + 1) % 10;
        v67[264].i32[1] = (v193 + 1) % 60;
        if (v177 >= *(v66 + 29184))
        {
          v208 = 0.08 / v115 + v322;
          v207 = fminf(v202, v208);
          v67[253].i32[1] = 0;
          v209 = 0.005 / v115;
          *v67[254].i32 = v209;
        }

        else
        {
          v203 = v67[253].i32[1];
          v204 = llround(v115);
          if (v204 <= 1)
          {
            v204 = 1;
          }

          if (v203 < v204 || v177 >= 0.00019999999)
          {
            v207 = fminf(v202, v322);
          }

          else
          {
            v205 = fminf(*v67[254].i32 * 1.3, 1.0);
            *v67[254].i32 = v205;
            v206 = v322 - v205 / v115;
            v207 = fmaxf(*&v67[254].i32[1], v206);
          }

          v67[253].i32[1] = v203 + 1;
        }

        if (v67->i8[0])
        {
          v210 = *(v66 + 27416);
          v211 = fabs(FigMotionMultiplyByInverseOfQuaternion((v66 + 28096), &time[2 * v116]));
          if (v211 >= v210 || (v212 = acos(v210), v213 = acos(v211), v111 = v212 / (v213 + v213), v207 < v111))
          {
            v111 = v207;
          }

          goto LABEL_309;
        }

        if (v116 < 1)
        {
          v111 = 1.0;
        }

        else
        {
          v214 = (v66 + 27424);
          v111 = 1.0;
          v215 = time;
          do
          {
            v216 = *(v66 + 27416);
            v217 = fabs(FigMotionMultiplyByInverseOfQuaternion(v214, v215));
            if (v217 >= v216 || (v218 = acos(v216), v219 = acos(v217), v220 = v218 / (v219 + v219), v207 < v220))
            {
              v220 = v207;
            }

            if (v220 < v111)
            {
              v111 = v220;
            }

            v214 += 4;
            v215 += 4;
            v207 = v220;
            --v116;
          }

          while (v116);
        }

        v221 = v120 ^ 1;
        if (!*(v66 + 200))
        {
          v221 = 1;
        }

        if ((v221 & 1) == 0)
        {
          v112 = v323;
          if (v111 <= 0.7808)
          {
LABEL_309:
            *&v67[252].i32[1] = v111;
LABEL_310:
            FigMotionInterpolateQuaternionsByAngle(&time[2 * v112], (v66 + 28096), v111);
            *(v66 + 28096) = v229;
            *(v66 + 28104) = v230;
            *(v66 + 28112) = v231;
            *(v66 + 28120) = v232;
            *(v66 + 196) = 1065353216;
            if (v112 >= 1)
            {
              v233 = time;
              v234 = 27872;
              v235 = 28152;
              v236 = 27152;
              v237 = 27648;
              v238 = 27424;
              while (1)
              {
                v239 = v66 + 28096;
                if (!v67->i8[0])
                {
                  v239 = v66 + v238;
                  FigMotionInterpolateQuaternionsByAngle(v233, (v66 + v238), *&v67[252].i32[1]);
                  *v239 = v240;
                  *(v239 + 8) = v241;
                  *(v239 + 16) = v242;
                  *(v239 + 24) = v243;
                  FigMotionInterpolateQuaternionsByAngle(v233, (v66 + v237), 0.05);
                  *(v239 + 224) = v244;
                  *(v239 + 232) = v245;
                  *(v239 + 240) = v246;
                  *(v239 + 248) = v247;
                }

                v248 = v67;
                v249 = v66 + v238;
                *(v249 + 448) = FigMotionMultiplyByInverseOfQuaternion(v239, v233);
                *(v249 + 456) = v250;
                *(v249 + 464) = v251;
                *(v249 + 472) = v252;
                v67 = v248;
                v253 = v248[125].i8[1] ? (v66 + v235) : 0;
                v254 = GVSComputeTransformFromCameraMotion((v66 + v234), (v66 + 336), &origin, v253, 0, (v66 + v236));
                if (v254)
                {
                  break;
                }

                if (*(v66 + 200))
                {
                  limitTransformToOverscan(v66 + 128, &v330 + 1, v66 + v236, *(&v325.width + 1));
                }

                v233 += 4;
                v234 += 32;
                v235 += 8;
                v236 += 36;
                v237 += 32;
                v238 += 32;
                if (!--v323)
                {
                  goto LABEL_321;
                }
              }

              StabilizedSampleBuffer = v254;
              sbp_gvs_processSampleBuffer_cold_52();
              a2 = 0;
              a1 = v318;
              DerivedStorage = v321;
              v68 = v312;
LABEL_325:
              v68[1] = *v68;
              *(v66 + 29360) = *(&v328 + 1);
              if (StabilizedSampleBuffer)
              {
                goto LABEL_486;
              }

              goto LABEL_450;
            }

LABEL_321:
            if (*v310)
            {
              v255 = &time[2 * ((*(v66 + 176) + (*(v66 + 176) >> 31)) >> 1)];
              v256 = v255[1];
              *(v66 + 28096) = *v255;
              *(v66 + 28112) = v256;
            }

            a1 = v318;
            DerivedStorage = v321;
            v68 = v312;
            if (sbp_gvs_createStabilizedSampleBuffer(v66, sbufa, &origin, &v341))
            {
              sbp_gvs_processSampleBuffer_cold_53();
              a2 = v343;
              StabilizedSampleBuffer = v342;
            }

            else
            {
              StabilizedSampleBuffer = 0;
              a2 = v341;
            }

            goto LABEL_325;
          }

          v345 = 1;
          v222 = *(v66 + 176);
          *(v66 + 201) = 0;
          if (v222 < 1)
          {
            v227 = v111;
LABEL_307:
            v111 = v227;
          }

          else
          {
            v223 = 0;
            v224 = v66 + 27424;
            v225 = v111;
            while (1)
            {
              v226 = v67[125].i8[1] ? (v66 + 28152 + 8 * v223) : 0;
              if (sbp_gvs_iir_ComputeCorrection(v66, &time[2 * v223], (v224 + 32 * v223), &origin, v226, &v345, v225))
              {
                break;
              }

              if (v345)
              {
                v227 = v225;
              }

              else
              {
                *(v66 + 201) = 1;
                if (v225 < 0.7808)
                {
                  sbp_gvs_processSampleBuffer_cold_50();
                  v227 = 0.7808;
                  if ((v228 & 1) == 0)
                  {
                    goto LABEL_337;
                  }
                }

                else
                {
                  v227 = 0.7808;
                  if ((v225 + -0.7808) > 0.01)
                  {
                    v227 = 0.7808;
                    while (1)
                    {
                      LOBYTE(v346) = 0;
                      if (sbp_gvs_iir_ComputeCorrection(v66, &time[2 * v223], (v224 + 32 * v223), &origin, v226, &v346, (v227 + v225) * 0.5))
                      {
                        break;
                      }

                      if (v346)
                      {
                        v227 = (v227 + v225) * 0.5;
                      }

                      else
                      {
                        v225 = (v227 + v225) * 0.5;
                      }

                      if ((v225 - v227) <= 0.01)
                      {
                        goto LABEL_302;
                      }
                    }

                    sbp_gvs_processSampleBuffer_cold_49();
LABEL_337:
                    sbp_gvs_processSampleBuffer_cold_51();
                    goto LABEL_308;
                  }
                }
              }

LABEL_302:
              ++v223;
              v225 = v227;
              if (v223 == v222)
              {
                goto LABEL_307;
              }
            }

            sbp_gvs_processSampleBuffer_cold_48();
          }
        }

LABEL_308:
        v112 = v323;
        goto LABEL_309;
      }

      v199 = v322 - v167;
LABEL_256:
      v200 = fmaxf(v146, v199);
      goto LABEL_259;
    }

    v196 = 0;
    while (v195 - 1 != v196)
    {
      v197 = *(v66 + 29193 + v196++);
      if ((v197 & 1) == 0)
      {
        v67[253].i8[3] = v196 >= v195;
        if (v196 < v195)
        {
          goto LABEL_250;
        }

        goto LABEL_247;
      }
    }

LABEL_240:
    v67[253].i8[3] = 1;
LABEL_247:
    if (v67[253].i8[2] != 1)
    {
      v200 = v322 + v307;
      goto LABEL_259;
    }

    v198 = fminf(v180 / *v67[255].i32, 1.0);
    v199 = v322 - ((v198 * (v198 * v198)) * v167);
    goto LABEL_256;
  }

  *&v343 = 0;
  if (a2)
  {
    if (a1)
    {
      v55 = CMBaseObjectGetDerivedStorage();
      v339 = 0u;
      v340 = 0u;
      memset(time, 0, sizeof(time));
      v334 = 0u;
      v335 = 0u;
      v336 = 0u;
      v337 = 0u;
      v338 = 0u;
      *&v338 = *(v55 + 128);
      if (*(v55 + 224))
      {
        CMGetAttachment(a2, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
        size = CGRectZero.size;
        origin = CGRectZero.origin;
        v325 = size;
        if (FigCFDictionaryGetCGRectIfPresent())
        {
          DWORD2(v337) = llround(origin.x);
          HIDWORD(v337) = llround(origin.y);
          LODWORD(v338) = llround(v325.width);
          DWORD1(v338) = llround(v325.height);
        }
      }

      StabilizedSampleBuffer = sbp_gvs_createStabilizedSampleBuffer(v55, a2, time, &v343);
      if (!StabilizedSampleBuffer)
      {
        goto LABEL_449;
      }

      sbp_gvs_processSampleBuffer_cold_10();
LABEL_345:
      a2 = 0;
      if (StabilizedSampleBuffer)
      {
        goto LABEL_486;
      }

      goto LABEL_450;
    }

    sbp_gvs_processSampleBuffer_cold_11(&origin);
    a2 = 0;
  }

  else
  {
    sbp_gvs_processSampleBuffer_cold_12(&origin);
  }

LABEL_485:
  StabilizedSampleBuffer = LODWORD(origin.x);
  if (!LODWORD(origin.x))
  {
    goto LABEL_450;
  }

LABEL_486:
  sbp_gvs_processSampleBuffer_cold_54();
LABEL_451:
  if (*(DerivedStorage + 8))
  {
    sbp_emitPendingFrames(a1, StabilizedSampleBuffer, a2);
    StabilizedSampleBuffer = 0;
  }

  if (a2)
  {
    CFRelease(a2);
  }

  v290 = *(DerivedStorage + 30192);
  if (v290)
  {
    CFRelease(v290);
    *(DerivedStorage + 30192) = 0;
  }

  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  return StabilizedSampleBuffer;
}

uint64_t sbp_enableLongPressMode(uint64_t a1, int a2)
{
  v4 = a1 + 28672;
  *(a1 + 29520) = 0;
  v5 = a2 ^ 1;
  if (*(a1 + 30105))
  {
    *(a1 + 30106) = v5;
  }

  *(a1 + 320) = *(a1 + 30104);
  *(a1 + 29480) = v5;
  v18 = 0uLL;
  v17 = 0uLL;
  v6 = sbp_configureOverscanParameters(a1, *(a1 + 128), *(a1 + 132), &v17, &v18);
  if (v6)
  {
    v15 = v6;
    sbp_enableLongPressMode_cold_1();
    return v15;
  }

  if (*(a1 + 136) != v18 || *(a1 + 140) != *(&v18 + 4) || *(a1 + 148) != HIDWORD(v18))
  {
    sbp_enableLongPressMode_cold_2(&v19);
    return v19;
  }

  *(a1 + 152) = v17;
  if (!*(v4 + 1048))
  {
    v7 = *(a1 + 228);
    if (v7 >= 1)
    {
      v8 = (a1 + 288);
      v9 = 1;
      do
      {
        if (v9)
        {
          v10 = *(v8 - 4);
          if (*(v4 + 1434))
          {
            v11 = 1;
          }

          else
          {
            v11 = v10 == 0;
          }

          v9 = !v11;
          if (*(v4 + 1434))
          {
            v12 = v10 == 0;
          }

          else
          {
            v12 = 1;
          }

          if (!v12)
          {
            v9 = *v8 != 0;
          }
        }

        else
        {
          v9 = 0;
        }

        ++v8;
        --v7;
      }

      while (v7);
      if (v9)
      {
        *(a1 + 224) = v5;
        AffineTransformConfigureBlurBorderPixels(*(a1 + 88), (a1 + 224));
        if (a2)
        {
          v13 = *(a1 + 136);
          v14 = *(a1 + 140);
        }

        else
        {
          v13 = 0;
          v14 = 0;
        }

        AffineTransformSetOverscanFill(*(a1 + 88), v13, v14);
        return 0;
      }
    }

    sbp_enableLongPressMode_cold_3(&v19);
    return v19;
  }

  return 0;
}

uint64_t sbp_enableP3ToBT2020Conversion(uint64_t a1, const char *a2)
{
  if (*(a1 + 172))
  {
    sbp_enableP3ToBT2020Conversion_cold_1(&v5);
    return v5;
  }

  else
  {
    v2 = a2;
    AffineTransformConfigureP3ToBT2020conversion(*(a1 + 88), a2);
    result = 0;
    *(a1 + 29776) = v2;
  }

  return result;
}

void _cinematic_freeRingBuffers(void *a1)
{
  v2 = (a1 + 3584);
  v3 = a1[3671];
  if (v3)
  {
    a1[3671] = 0;
    free(v3);
  }

  if (*(v2 + 1376) == 1)
  {
    v4 = a1[3672];
    if (v2[181] >= 1)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = *&v4[v5 + 8];
        *&v4[v5 + 8] = 0;

        v4 = a1[3672];
        *&v4[v5] = 0;
        ++v6;
        v5 += 24;
      }

      while (v6 < v2[181]);
      goto LABEL_9;
    }

    if (v4)
    {
LABEL_9:
      a1[3672] = 0;
      free(v4);
    }
  }

  v8 = a1[3676];
  if (v8)
  {
    v9 = v2[195];
    if (v9 < 1)
    {
      goto LABEL_17;
    }

    for (i = 0; i < v9; ++i)
    {
      v11 = a1[3676];
      v12 = *(v11 + 8 * i);
      if (v12)
      {
        *(v11 + 8 * i) = 0;
        free(v12);
        v9 = v2[195];
      }
    }

    v8 = a1[3676];
    if (v8)
    {
LABEL_17:
      a1[3676] = 0;
      free(v8);
    }
  }

  v13 = a1[3677];
  if (v13)
  {
    v14 = v2[195];
    if (v14 < 1)
    {
      goto LABEL_25;
    }

    for (j = 0; j < v14; ++j)
    {
      v16 = a1[3677];
      v17 = *(v16 + 8 * j);
      if (v17)
      {
        *(v16 + 8 * j) = 0;
        free(v17);
        v14 = v2[195];
      }
    }

    v13 = a1[3677];
    if (v13)
    {
LABEL_25:
      a1[3677] = 0;
      free(v13);
    }
  }

  v18 = a1[3678];
  if (v18)
  {
    if (v2[195] < 1)
    {
      goto LABEL_31;
    }

    v19 = 0;
    v20 = 0;
    do
    {
      v21 = a1[3678];
      v22 = *(v21 + v19);
      *(v21 + v19) = 0;

      v23 = a1[3678] + v19;
      v24 = *(v23 + 8);
      *(v23 + 8) = 0;

      ++v20;
      v19 += 240;
    }

    while (v20 < v2[195]);
    v18 = a1[3678];
    if (v18)
    {
LABEL_31:
      a1[3678] = 0;
      free(v18);
    }
  }

  v25 = a1[3679];
  if (v25)
  {
    a1[3679] = 0;
    free(v25);
  }

  v26 = a1[3675];
  a1[3675] = 0;
}

void sbp_gvs_freeDerivedVectorsAndSphereLensMovements(uint64_t a1)
{
  v2 = *(a1 + 28144);
  if (v2)
  {
    *(a1 + 28144) = 0;
    free(v2);
  }

  v3 = *(a1 + 27408);
  if (v3)
  {
    *(a1 + 27408) = 0;

    free(v3);
  }
}

void sbp_ltm_deallocateLtcCorrectionTexture(uint64_t a1)
{
  v2 = a1 + 28672;
  FigMetalDecRef();
  v3 = *(a1 + 29656);
  *(a1 + 29656) = 0;

  *(v2 + 1002) = 1;
  if (*(v2 + 972) >= 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 3;
  }

  *(v2 + 1012) = v4;
  *(v2 + 1004) = 0;
}

double _resetFirstFrameParameters(uint64_t a1)
{
  v2 = a1 + 27104;
  *(a1 + 32) = 1;
  *(a1 + 30096) = 1;
  *(a1 + 36) = 0;
  *(a1 + 10682) = 257;
  [*(a1 + 27128) reset];
  *v2 = 257;
  *(a1 + 29352) = 0x3FF0000000000000;
  FigMotionInitializeQuaternion((a1 + 28096));
  FigMotionInitializeQuaternion((a1 + 28248));
  *(v2 + 1136) = 0;
  *(a1 + 29164) = 0x3BA3D70A00000000;
  *(a1 + 29340) = 0;
  *(a1 + 29252) = 0;
  v3 = (a1 + 27872);
  v4 = 7;
  do
  {
    FigMotionInitializeQuaternion(v3 - 56);
    FigMotionInitializeQuaternion(v3 - 28);
    FigMotionInitializeQuaternion(v3);
    v3 += 4;
    --v4;
  }

  while (v4);
  v5 = *(v2 + 44);
  if ((v5 - 1) < 3)
  {
    *(v2 + 2416) = v5 == 2;
    if (*(v2 + 2508))
    {
      [*(a1 + 29648) reset];
    }

    FigMetalDecRef();
    v6 = *(a1 + 29656);
    *(a1 + 29656) = 0;

    *(v2 + 2569) = 0x1000000;
    *(v2 + 2576) = 0x300000000;
    *(v2 + 2540) = 0;
    *(v2 + 2288) = 0;
    *(a1 + 29384) = 0;
    if (*(v2 + 2674))
    {
      *(v2 + 2684) = 0;
      *(v2 + 2676) = 0xFFFFFFFFLL;
      *(v2 + 2692) = 1;
    }

    *(v2 + 2344) = 0;
    *(a1 + 29440) = 0;
    [*(a1 + 29400) reset];
    v7 = [*(a1 + 30136) utilities];
    [v7 resetCoefficientsFilter];

    v8 = *(a1 + 29400);
    if (v8)
    {
      [v8 getQuaternionSmoothingArrays];
    }

    v5 = *(v2 + 44);
  }

  if (v5 == 5)
  {
    v9 = [*(a1 + 30136) utilities];
    [v9 resetCoefficientsFilter];
  }

  v10 = *(a1 + 29568);
  if (v10)
  {
    [v10 reset];
  }

  v11 = *(a1 + 29744);
  if (v11)
  {
    [v11 reset];
  }

  v12 = *(a1 + 30064);
  if (v12)
  {
    [v12 resetState];
    v13 = *(a1 + 30064);
    *(a1 + 30064) = 0;
  }

  v14 = *(a1 + 30288);
  if (v14)
  {
    [v14 reset];
  }

  *(v2 + 1712) = 0;
  result = 0.0;
  *(a1 + 29760) = 0u;
  *(v2 + 1628) = 0;
  *(v2 + 1704) = -1082130432;
  *(a1 + 29824) = 0u;
  *(a1 + 29840) = 0u;
  *(a1 + 29856) = 0u;
  *(a1 + 29872) = 0u;
  *(a1 + 29888) = 0u;
  *(a1 + 29904) = 0u;
  *(a1 + 29920) = 0u;
  *(a1 + 29936) = 0u;
  *(a1 + 29952) = 0u;
  *(a1 + 29968) = 0u;
  *(a1 + 29984) = 0u;
  *(a1 + 30000) = 0u;
  *(a1 + 30016) = 0u;
  *(a1 + 30032) = 0u;
  return result;
}

__CFString *sbp_gvs_copyDebugDescription(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferProcessor_GyroVideoStabilization %p>", a1);
  return Mutable;
}

uint64_t sbp_gvs_copyProperty(uint64_t a1, const void *a2, uint64_t a3, __CFDictionary **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 24) || !a4)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v8 = DerivedStorage;
    if (CFEqual(a2, kFigSampleBufferProcessorProperty_SourcePixelBufferAttributes))
    {
      Mutable = CFDictionaryCreateMutable(0, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      qmemcpy(v21, "v024f024024x02fx024p02fp0v8&0f8&0vx&0fx&0v8-0f8-0v8/0f8/0v8|0f8|0vx-0fx-0vx/0fx/0vx|0fx|", 88);
      IOSurfacePropertiesDictionary = FigCreateIOSurfacePropertiesDictionary();
      valuePtr = 0;
      v11 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      for (i = 0; i != 88; i += 4)
      {
        v13 = *(v8 + 40);
        if (!v13 || v13 == *(v21 + i))
        {
          v14 = CFNumberCreate(0, kCFNumberSInt32Type, v21 + i);
          CFArrayAppendValue(v11, v14);
          CFRelease(v14);
        }
      }

      CFDictionaryAddValue(Mutable, kCVPixelBufferPixelFormatTypeKey, v11);
      CFRelease(v11);
      CFDictionaryAddValue(Mutable, kCVPixelBufferIOSurfacePropertiesKey, IOSurfacePropertiesDictionary);
      Value = CFDictionaryGetValue(IOSurfacePropertiesDictionary, kIOSurfaceCacheMode);
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
        PixelBufferCacheModeArray = FigCreatePixelBufferCacheModeArray();
        CFDictionaryAddValue(Mutable, kCVPixelBufferCacheModeKey, PixelBufferCacheModeArray);
        CFRelease(PixelBufferCacheModeArray);
      }

      CFRelease(IOSurfacePropertiesDictionary);
      result = 0;
      *a4 = Mutable;
    }

    else
    {
      if (CFEqual(a2, kFigVideoStabilizationSampleBufferProcessorProperty_VideoStabilizationDisabled))
      {
        v17 = &kCFBooleanTrue;
        v18 = *(v8 + 84);
      }

      else
      {
        if (!CFEqual(a2, kFigVideoStabilizationSampleBufferProcessorProperty_FlipHorizontalOrientation))
        {
          return 4294954512;
        }

        v17 = &kCFBooleanTrue;
        v18 = *(v8 + 203);
      }

      if (!v18)
      {
        v17 = &kCFBooleanFalse;
      }

      v19 = CFRetain(*v17);
      result = 0;
      *a4 = v19;
    }
  }

  return result;
}

uint64_t sbp_configureOverscanParameters(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t *a5)
{
  v5 = a2 - *(a1 + 29688);
  v6 = (v5 >> 1);
  if ((v6 & 0x80000000) != 0 || (v8 = a3 - *(a1 + 29692), v9 = (v8 >> 1), (v9 & 0x80000000) != 0))
  {
    sbp_configureOverscanParameters_cold_10(&v25);
    return v25;
  }

  v12 = (a2 - (v5 & 0xFFFFFFFE)) | ((a3 - (v8 & 0xFFFFFFFE)) << 32);
  v13 = v6 | (v9 << 32);
  *a5 = v13;
  a5[1] = v12;
  *a4 = *a5;
  if (*(a1 + 29480))
  {
    v15 = *(a1 + 29688);
    v16 = *(a1 + 29692);
    v17 = *(a1 + 29488);
    v18 = *(a1 + 29496);
    v19 = *(a1 + 29504);
    v20 = *(a1 + 29512);
    v26.origin.x = v17;
    v26.origin.y = v18;
    v26.size.width = v19;
    v26.size.height = v20;
    if (CGRectIsEmpty(v26))
    {
      sbp_configureOverscanParameters_cold_9(&v25);
    }

    else
    {
      v21 = v19;
      if (v15 < v19)
      {
        sbp_configureOverscanParameters_cold_8(&v25);
      }

      else
      {
        v22 = v20;
        if (v16 < v20)
        {
          sbp_configureOverscanParameters_cold_7(&v25);
        }

        else if (v17)
        {
          sbp_configureOverscanParameters_cold_1(&v25);
        }

        else if (v18)
        {
          sbp_configureOverscanParameters_cold_2(&v25);
        }

        else if (v21)
        {
          sbp_configureOverscanParameters_cold_3(&v25);
        }

        else if (v22)
        {
          sbp_configureOverscanParameters_cold_4(&v25);
        }

        else if (v21 + 2 * v17 == v15)
        {
          if (v22 + 2 * v18 == v16)
          {
LABEL_13:
            v6 = (v6 + *(a1 + 29488));
            v9 = (v9 + *(a1 + 29496));
            v13 = v6 | (v9 << 32);
            goto LABEL_14;
          }

          sbp_configureOverscanParameters_cold_6(&v25);
        }

        else
        {
          sbp_configureOverscanParameters_cold_5(&v25);
        }
      }
    }

    v23 = v25;
    if (v25)
    {
      fig_log_get_emitter();
      FigDebugAssert3();
      return v23;
    }

    goto LABEL_13;
  }

LABEL_14:
  v23 = 0;
  *a4 = v13;
  *(a4 + 8) = (a2 - 2 * v6) | ((a3 - 2 * v9) << 32);
  return v23;
}

id sbp_initializeGPUWithRenderMethod(uint64_t a1)
{
  if ((*(a1 + 216) & 1) == 0)
  {
    if (*(a1 + 416))
    {
      FigCFDictionaryGetIntIfPresent();
    }

    else if (*(a1 + 27148) == 2)
    {
      *(a1 + 212) = 1;
    }
  }

  v2 = *(a1 + 88);
  v3 = *(a1 + 212);

  return AffineTransformSetRenderMethod(v2, v3);
}

BOOL sbp_gvs_verifyInputBuffer(__CVBuffer *a1)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  IOSurface = CVPixelBufferGetIOSurface(a1);
  Width = CVPixelBufferGetWidth(a1);
  if ((Width & 3) != 0)
  {
    return 0;
  }

  v6 = Width;
  result = 0;
  if (PixelFormatType <= 1534621231)
  {
    if (PixelFormatType <= 762869297)
    {
      if (PixelFormatType <= 645428785)
      {
        if (PixelFormatType <= 645424687)
        {
          if (PixelFormatType == 641230384)
          {
            goto LABEL_63;
          }

          v7 = 641234480;
        }

        else
        {
          if (PixelFormatType == 645424688 || PixelFormatType == 645424690)
          {
            goto LABEL_63;
          }

          v7 = 645428784;
        }
      }

      else if (PixelFormatType > 762865199)
      {
        if (PixelFormatType == 762865200 || PixelFormatType == 762865202)
        {
          goto LABEL_63;
        }

        v7 = 762869296;
      }

      else
      {
        if (PixelFormatType == 645428786 || PixelFormatType == 758670896)
        {
          goto LABEL_63;
        }

        v7 = 758674992;
      }

      goto LABEL_62;
    }

    if (PixelFormatType <= 796423729)
    {
      if (PixelFormatType > 796419631)
      {
        if (PixelFormatType == 796419632 || PixelFormatType == 796419634)
        {
          goto LABEL_63;
        }

        v7 = 796423728;
      }

      else
      {
        if (PixelFormatType == 762869298 || PixelFormatType == 792225328)
        {
          goto LABEL_63;
        }

        v7 = 792229424;
      }

      goto LABEL_62;
    }

    if (PixelFormatType <= 1380411456)
    {
      if (PixelFormatType == 796423730 || PixelFormatType == 875704422)
      {
        goto LABEL_63;
      }

      v7 = 875704438;
      goto LABEL_62;
    }

    if (PixelFormatType != 1380411457)
    {
      if (PixelFormatType == 1530422832)
      {
        goto LABEL_63;
      }

      v7 = 1530426928;
      goto LABEL_62;
    }

    return IOSurface || CVPixelBufferGetBytesPerRowOfPlane(a1, 0) == v6;
  }

  if (PixelFormatType > 2033463855)
  {
    if (PixelFormatType > 2088269359)
    {
      if (PixelFormatType > 2100852271)
      {
        if (PixelFormatType == 2100852272 || PixelFormatType == 2105046576)
        {
          goto LABEL_63;
        }

        v7 = 2105042480;
      }

      else
      {
        if (PixelFormatType == 2088269360 || PixelFormatType == 2088269362)
        {
          goto LABEL_63;
        }

        v7 = 2100848176;
      }

      goto LABEL_62;
    }

    if (PixelFormatType > 2084075055)
    {
      if (PixelFormatType == 2084075056 || PixelFormatType == 2088265264)
      {
        goto LABEL_63;
      }

      v7 = 2088265266;
      goto LABEL_62;
    }

    if (PixelFormatType != 2033463856 && PixelFormatType != 2037741171)
    {
      v7 = 2084070960;
      goto LABEL_62;
    }

LABEL_70:
    if (IOSurface)
    {
      return 1;
    }

    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
    v11 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
    v12 = CVPixelBufferGetBytesPerRowOfPlane(a1, 2uLL);
    if (BytesPerRowOfPlane == v6)
    {
      v13 = v12;
      result = 0;
      if (v11 == v6 >> 1 && v13 == v6 >> 1)
      {
        return 1;
      }

      return result;
    }

    return 0;
  }

  if (PixelFormatType <= 1885745711)
  {
    if (PixelFormatType > 1751411058)
    {
      if (PixelFormatType != 1751411059)
      {
        if (PixelFormatType == 1882468912)
        {
          goto LABEL_63;
        }

        v7 = 1882468914;
        goto LABEL_62;
      }

      return IOSurface || CVPixelBufferGetBytesPerRowOfPlane(a1, 0) == v6;
    }

    if (PixelFormatType == 1534621232)
    {
      goto LABEL_63;
    }

    if (PixelFormatType != 1714696752)
    {
      return result;
    }

    goto LABEL_70;
  }

  if (PixelFormatType > 2016686641)
  {
    if (PixelFormatType == 2016686642 || PixelFormatType == 2019963440)
    {
      goto LABEL_63;
    }

    v7 = 2019963442;
  }

  else
  {
    if (PixelFormatType == 1885745712 || PixelFormatType == 1885745714)
    {
      goto LABEL_63;
    }

    v7 = 2016686640;
  }

LABEL_62:
  if (PixelFormatType != v7)
  {
    return result;
  }

LABEL_63:
  if (IOSurface)
  {
    return 1;
  }

  v8 = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  v9 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
  result = 0;
  if (v8 == v6 && v9 == v6)
  {
    return 1;
  }

  return result;
}

CFTypeRef _getMetadataDictionary(const void *a1)
{
  if (a1)
  {
    v2 = kFigCaptureSampleBufferAttachmentKey_MetadataDictionary;

    return CMGetAttachment(a1, v2, 0);
  }

  else
  {
    _getMetadataDictionary_cold_1();
    return 0;
  }
}

uint64_t sbp_emitPendingFrames(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 29720))
  {
    if (!a2 && !a3)
    {
      return result;
    }
  }

  else if (!a2 && !a3 && !*(result + 29778) && !*(result + 25))
  {
    return result;
  }

  v7 = *(result + 8);
  v6 = *(result + 16);

  return v7(v6, a2, a3);
}

uint64_t _getFrameRateConversionStatus(const void *a1)
{
  if (_getMetadataDictionary(a1))
  {
    FigCFDictionaryGetInt32IfPresent();
    return 0;
  }

  else
  {
    _getFrameRateConversionStatus_cold_1();
    return 0;
  }
}

uint64_t sbp_gvs_cinematicAddMetadataToQuaternionAndSphereRingBuffers(uint64_t a1, const __CFDictionary *a2)
{
  v4 = a1 + 27148;
  v5 = *(a1 + 176);
  v6 = *(a1 + 176);
  v7 = *(a1 + 29400);
  v218 = 0;
  v217 = 0;
  v216 = 0;
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  v214 = 0u;
  v215 = 0u;
  v219 = 0;
  v220 = 0;
  v221 = 0u;
  v222 = 0u;
  v223 = 0u;
  v224 = 0u;
  v225 = 0u;
  v226 = 0u;
  v227 = 0u;
  if (*(v4 + 989))
  {
    v8 = a1 + 10688;
  }

  else
  {
    v8 = 0;
  }

  if (*(v4 + 989))
  {
    v9 = *(*(a1 + 29408) + 8 * *(v4 + 2296));
  }

  else
  {
    v9 = 0;
  }

  v10 = (v4 + 1132);
  if (*(v4 + 1132))
  {
    v11 = v4 + 1132;
  }

  else
  {
    v11 = 0;
  }

  v12 = GVSExtractMetadataFromTopToBottomRows(a2, (a1 + 424), *(a1 + 27128), v8, a1 + 336, (a1 + 128), &v219, v213, &v217, &v216, v9, v11, v6);
  if (v12)
  {
    x_low = v12;
    sbp_gvs_cinematicAddMetadataToQuaternionAndSphereRingBuffers_cold_1();
    goto LABEL_141;
  }

  v14 = 0.0;
  if (*v10 && *(v4 + 1652) == 1)
  {
    v13.i32[0] = *(v4 + 1588);
    v15.f32[0] = FigMotionAdjustParallaxShiftForScalingFactor(*(v4 + 1584), *&v13, *(v4 + 1660), *&v220.x);
    v15.i32[1] = v16;
    v13 = vdup_lane_s32(*(&v219.x + 4), 0);
    v14 = COERCE_DOUBLE(vdiv_f32(v15, v13));
  }

  v17 = v216;
  v18 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  if (*(v4 + 2656) == 1)
  {
    LODWORD(point[0].x) = 1065353216;
    if (FigCFDictionaryGetFloatIfPresent())
    {
      *v230 = HIDWORD(v220.x);
      FigCFDictionaryGetFloatIfPresent();
      v19 = *(&v220.x + 1);
      v21 = *&point[0].x;
      if (*(&v220.x + 1) != *v230)
      {
        v21 = (*(&v220.x + 1) / *v230) * *&point[0].x;
        *&point[0].x = v21;
      }

      v20 = logf(v21);
      v22 = *(v4 + 2664);
      v23 = *(v4 + 2668);
      v24 = GVSComputeMinimumZoomFactor((&v226 + 8), (a1 + 152));
      v18 = fminf(fmaxf(v24 * powf(v19 / v24, 1.0 - fminf(fmaxf(v22, 0.0), 1.0)), v24), v23 * v24);
    }

    else
    {
      *(v4 + 2656) = 0;
    }
  }

  if (*(v4 + 989))
  {
    v25 = *(v4 + 2296);
    v26 = *(*(a1 + 29408) + 8 * v25);
    v27 = *(*(a1 + 29416) + 8 * v25);
    if (v6 == 1)
    {
      *v27 = *v26;
    }

    else if (v6 >= 1)
    {
      v30 = 0;
      v31 = (*(a1 + 180) - 1);
      do
      {
        v27[v30] = v26[((v31 * v30) / (v6 - 1))];
        ++v30;
      }

      while (v5 != v30);
    }

    if (*(v4 + 988) || *v4 == 3 || *v10)
    {
      if (v6 < 1)
      {
        v33 = 0;
      }

      else
      {
        v32 = *(*(a1 + 29416) + 8 * *(v4 + 2296));
        v33 = 0;
        v34 = v5;
        do
        {
          v35 = *v32++;
          v13.i32[1] = v35.i32[1];
          v33 = vadd_f32(v33, v35);
          --v34;
        }

        while (v34);
      }

      v13.f32[0] = v6;
      v29 = vsub_f32(vdiv_f32(v33, vdup_lane_s32(v13, 0)), v17);
      v28 = 1;
    }

    else
    {
      v28 = 0;
      v29 = 0;
    }

    v36 = *(a1 + 29424);
    v37 = *(v4 + 2296);
    if (v36)
    {
      v38 = (v36 + 240 * v37);
      if (*v38 || v38[1])
      {
        v196 = v29;
        [*v38 reset];
        [v38[1] reset];
        sbp_gvs_extractDistortionData(*(a1 + 28864), a2, &v219, *(a1 + 29136), v38, *(a1 + 336));
        v29 = v196;
        v37 = *(v4 + 2296);
      }
    }

    v39 = *(a1 + 29432);
    if (v39)
    {
      v40 = v39 + 12 * v37;
      v41 = v217;
      *(v40 + 8) = v218;
      *v40 = v41;
      v37 = *(v4 + 2296);
    }

    v42 = *(v4 + 2304);
    v43 = v37 + v42 + 1;
    do
    {
      v43 -= v42;
    }

    while (v43 >= v42);
    *(v4 + 2296) = v43;
    v44 = *(v4 + 2300);
    if (v44 < v42)
    {
      *(v4 + 2300) = v44 + 1;
    }
  }

  else
  {
    v28 = 0;
    v29 = 0;
  }

  if (*v4 == 3 && (v192 = v29, Value = CFDictionaryGetValue(a2, kFigVideoStabilizationSampleBufferProcessorMetadata_InputFrameCropOffset), v29 = v192, Value))
  {
    point[0].x = 0.0;
    point[0].y = 0.0;
    CGPointMakeWithDictionaryRepresentation(Value, point);
    v46 = *(a1 + 128);
    v47.i64[0] = v46;
    v47.i64[1] = SHIDWORD(v46);
    v29 = vsub_f32(v192, vcvt_f32_f64(vmulq_f64(point[0], vcvtq_f64_s64(v47))));
    v220.y = 0.0;
  }

  else
  {
    v17 = vsub_f32(v17, *&v220.y);
    if (!v28)
    {
      FigMotionInitializeQuaternion(&v214);
      goto LABEL_53;
    }
  }

  v193 = v29.f32[0];
  v48 = *(&v219.x + 1);
  LODWORD(point[0].x) = atanf(v29.f32[1] / *(&v219.x + 1));
  *(&point[0].x + 1) = -atanf(v193 / v48);
  LODWORD(point[0].y) = 0;
  FigMotionQuaternionFromDeltaRotation(point);
  *&v214 = v49;
  *(&v214 + 1) = v50;
  *&v215 = v51;
  *(&v215 + 1) = v52;
LABEL_53:
  if (*(v4 + 1092) == 1)
  {
    *&v214 = FigMotionMultiplyQuaternions(&v214, (a1 + 28248));
    *(&v214 + 1) = v53;
    *&v215 = v54;
    *(&v215 + 1) = v55;
  }

  v191 = v20;
  if (*(v4 + 2588) <= 0.0)
  {
    v74 = 0.0;
    v67 = INFINITY;
    v75 = NAN;
    v66 = NAN;
  }

  else
  {
    v56 = &v213[4 * v5];
    v57 = *(v56 + 1);
    *v230 = *v56;
    *&v230[16] = v57;
    point[0].x = FigMotionInverseOfQuaternion(v230);
    point[0].y = v58;
    point[1].x = v59;
    point[1].y = v60;
    LODWORD(v228) = GVSRotateVectorByQuaternion(&v217, point).u32[0];
    *(&v228 + 4) = __PAIR64__(v62, v61);
    GVSComputeRollPitchFromGravity(&v228);
    v66 = v63;
    v67 = *v64.i32;
    v68 = *(a1 + 29744);
    if (v68)
    {
      v69 = *(&v223 + 1);
      v70 = v68;
      *&v71 = v66;
      *&v72 = v67;
      [v70 updateRoll:v71 pitch:v72 atTime:v69];
      [v70 filteredRoll];
      v74 = v73;
    }

    else
    {
      *v64.i32 = roundf(v63 / 1.5708) + -2.0;
      *v65.i32 = *v64.i32 + (truncf(*v64.i32 * 0.25) * -4.0);
      v76.i64[0] = 0x8000000080000000;
      v76.i64[1] = 0x8000000080000000;
      v74 = (*vbslq_s8(v76, v65, v64).i32 + 2.0) * 1.5708;
    }

    v75 = _computeAdjustedRollForHorizonCorrection(v66, v67, v74, *(v4 + 2588));
  }

  v212 = 0;
  if (*v4 == 3)
  {
    FigCFDictionaryGetBooleanIfPresent();
    if (!v212)
    {
      FigCFDictionaryGetBooleanIfPresent();
    }
  }

  v210 = 0u;
  v211 = 0u;
  v208 = 0u;
  v209 = 0u;
  v77 = *(a1 + 29568);
  if (v77)
  {
    v78 = *(v4 + 2388);
    if (v78 == 11)
    {
      if (*&v222 <= 0.00435000006)
      {
        [v77 suspend];
      }

      else if (*&v222 >= 0.00499999989)
      {
        [v77 resume];
      }

      v78 = *(v4 + 2388);
    }

    v189 = v75;
    v190 = v66;
    v79 = v17;
    v80 = v67;
    v81 = v74;
    v82 = v19;
    v83 = v18;
    v84 = v14;
    if (v78 == 12)
    {
      point[0].x = 0.0;
      GVSComputeMotionBlur(a1 + 424, 0, &v219, (a1 + 360), point);
      x = point[0].x;
    }

    else
    {
      x = *&v224;
    }

    [*(a1 + 29568) updateBlurVector:x atTime:*(&v223 + 1)];
    v194 = v86;
    [*(a1 + 29568) accumulationFilterPole];
    v88 = v87;
    v89 = (v87 + 1.0) / ((v88 + v88) * *(&v219.x + 1));
    v231[0] = -atanf(vmuls_lane_f32(v89, v194, 1));
    v231[1] = atanf(v89 * v194.f32[0]);
    v231[2] = 0.0;
    FigMotionQuaternionFromDeltaRotation(v231);
    *v230 = v90;
    *&v230[8] = v91;
    *&v230[16] = v92;
    *&v230[24] = v93;
    v228 = 0u;
    v229 = 0u;
    FigMotionInitializeQuaternion(&v228);
    if (*(a1 + 32))
    {
      v94 = v229;
      *(a1 + 29576) = v228;
      *(a1 + 29592) = v94;
    }

    point[0].x = FigMotionMultiplyQuaternions((a1 + 29576), v230);
    point[0].y = v95;
    point[1].x = v96;
    point[1].y = v97;
    FigMotionInterpolateQuaternionsByAngle(&v228, &point[0].x, v88);
    point[0].x = v98;
    point[0].y = v99;
    point[1].x = v100;
    point[1].y = v101;
    v102 = point[1];
    *(a1 + 29576) = point[0];
    *(a1 + 29592) = v102;
    *&v210 = v98;
    *(&v210 + 1) = v99;
    *&v211 = v100;
    *(&v211 + 1) = v101;
    v103 = &v213[4 * *(a1 + 176)];
    v104 = *(v103 + 1);
    point[0] = *v103;
    point[1] = v104;
    *&v230[8] = vnegq_f64(*&point[0].y);
    *v230 = point[0].x;
    *&v230[24] = -v104.y;
    *&v208 = FigMotionMultiplyQuaternions(&point[0].x, &v210);
    *(&v208 + 1) = v105;
    *&v209 = v106;
    *(&v209 + 1) = v107;
    *&v208 = FigMotionMultiplyQuaternions(&v208, v230);
    *(&v208 + 1) = v108;
    *&v209 = v109;
    *(&v209 + 1) = v110;
    v14 = v84;
    v19 = v82;
    v18 = v83;
    v74 = v81;
    v67 = v80;
    v17 = v79;
    v75 = v189;
    v66 = v190;
  }

  else
  {
    FigMotionInitializeQuaternion(&v210);
    FigMotionInitializeQuaternion(&v208);
  }

  v207 = 0;
  FigCFDictionaryGetInt64IfPresent();
  [v7 openForNewData];
  if (([v7 centerIndex] & 0x80000000) != 0)
  {
    sbp_gvs_cinematicAddMetadataToQuaternionAndSphereRingBuffers_cold_2(point);
    x_low = LODWORD(point[0].x);
  }

  else
  {
    v195 = v5;
    if (*(v4 + 2656) == 1)
    {
      *&point[0].x = __PAIR64__(LODWORD(v19), LODWORD(v191));
      *&point[0].y = v18;
      *(&point[0].y + 4) = 0.0;
      [v7 setZoomSmoothingMetadataInput:point];
    }

    v204 = v225;
    v205 = v226;
    v206 = v227;
    v200 = v221;
    v201 = v222;
    v202 = v223;
    v203 = v224;
    point[0] = v219;
    point[1] = v220;
    [v7 setCameraMetadataInput:point];
    [v7 setDidHaveMotionDataInput:*(a1 + 10682) != 0];
    [v7 setAppliedCenterAdjustmentInput:{v214, v215}];
    [v7 setMotionBlurAdjustmentInput:{v208, v209}];
    [v7 setIsLivePhotoKeyFrameInput:v212 != 0];
    [v7 setSerialNumberInput:v207];
    [v7 setNormalizedOutputShiftInput:{COERCE_DOUBLE(vdiv_f32(vneg_f32(v17), vdup_lane_s32(*(&v219.x + 4), 0)))}];
    [v7 setNormalizedInputShiftInput:v14];
    if ((v5 & 0x80000000) == 0)
    {
      v113 = 0;
      v114 = 32 * (v5 + 1);
      do
      {
        v115 = [v7 originalQuaternionsInput] + v113;
        v116 = *&v213[v113 / 8 + 2];
        *v115 = *&v213[v113 / 8];
        v115[1] = v116;
        memset(point, 0, sizeof(point));
        point[0].x = FigMotionMultiplyByInverseOfQuaternion(&v214, &v210);
        point[0].y = v117;
        point[1].x = v118;
        point[1].y = v119;
        v120 = ([v7 quaternionsInput] + v113);
        v111 = FigMotionMultiplyQuaternions(&v213[v113 / 8], &point[0].x);
        *v120 = v111;
        v120[1] = v112;
        *(v120 + 2) = v121;
        *(v120 + 3) = v122;
        v113 += 32;
      }

      while (v114 != v113);
    }

    v123 = v195;
    if (*(v4 + 2588) > 0.0)
    {
      *&v111 = v66;
      *&v112 = v67;
      [v7 setRollPitchInput:{v111, v112}];
      *&v124 = v74;
      [v7 setRollHorizonTargetInput:v124];
      v125 = [v7 quaternionsInput];
      [v7 setHorizonQuaternionsInput:{_adjustQuaternionForRollCorrection(&v125[4 * v195], v75 - v66, v126, v127, v128, v129)}];
    }

    v130 = *(&v223 + 1);
    v198 = *(&v223 + 1);
    if (*v4 == 2)
    {
      FigCFDictionaryGetDoubleIfPresent();
      v130 = v198;
    }

    [v7 setOutputFrameTimeInput:v130];
    if ([v7 count] < 1)
    {
      goto LABEL_99;
    }

    v202 = 0u;
    v203 = 0u;
    v200 = 0u;
    v201 = 0u;
    memset(point, 0, sizeof(point));
    if (v7)
    {
      [v7 getSmoothingAnalysisArrays];
    }

    [v7 outputFrameTimeInput];
    v132 = v131 - *(v200 + 8 * v203);
    v133 = v132;
    *&v132 = v133;
    [v7 setFrameDurationInput:v132];
    if ([v7 count] >= 2)
    {
      [v7 frameDurationPrevious];
      v133 = (*&v134 + v133) * 0.5;
    }

    if (((*&v134 = v133, [v7 setFrameDurationPrevious:v134], *v10) || *(a1 + 392) == 1) && ((v135 = *(*&point[1].y + 144 * v203 + 136), !v7) ? (v136 = 0) : (objc_msgSend(v7, "cameraMetadataInput"), v136 = v197), v136 != v135))
    {
      v140 = 0;
    }

    else
    {
LABEL_99:
      v137 = *&v223;
      v138 = *(a1 + 29400);
      if ([v138 count] <= 1)
      {
        v140 = 1;
      }

      else
      {
        v202 = 0u;
        v203 = 0u;
        v200 = 0u;
        v201 = 0u;
        memset(point, 0, sizeof(point));
        if (v138)
        {
          [v138 getSmoothingAnalysisArrays];
          v139 = v203;
        }

        else
        {
          v139 = 0;
        }

        [v138 outputFrameTimeInput];
        v142 = v141 - *(v200 + 8 * v139);
        v143 = 1.0;
        if (v142 > 0.0 && !*(v4 + 2372))
        {
          v143 = 0.0333333333 / v142;
        }

        *(a1 + 29352) = v143;
        v144 = cos(0.000246 / v143);
        if (*(a1 + 176) < 1)
        {
          v140 = 1;
        }

        else
        {
          v145 = v144;
          v146 = 0;
          v147 = 0;
          do
          {
            v148 = [v138 originalQuaternionsInput];
            v149 = fabs(FigMotionMultiplyByInverseOfQuaternion(&v148[v146], (*(*&point[0].x + 8 * v147) + 32 * v139)));
            v140 = v149 >= v145;
            if (v149 < v145)
            {
              break;
            }

            ++v147;
            v146 += 32;
          }

          while (v147 < *(a1 + 176));
        }

        if (*(v4 + 2372))
        {
          *v230 = 0;
          Float32IfPresent = FigCFDictionaryGetFloat32IfPresent();
          v152 = fabsf(*v230) > 0.6 && Float32IfPresent != 0;
          if (v137 <= 0.0)
          {
            v153 = 0.00006324555;
          }

          else
          {
            v153 = 0.00006324555 / (0.023223 / v137);
          }

          v154 = cos(v153);
          if (*(a1 + 176) >= 2)
          {
            v156 = v154;
            v157 = 1;
            v158 = 32;
            do
            {
              v159 = fabs(FigMotionMultiplyByInverseOfQuaternion(([v138 originalQuaternionsInput] + v158 - 32), (objc_msgSend(v138, "originalQuaternionsInput") + v158)));
              v155 = v159 >= v156;
              if (v159 < v156)
              {
                break;
              }

              ++v157;
              v158 += 32;
            }

            while (v157 < *(a1 + 176));
          }

          else
          {
            v155 = 1;
          }

          v140 |= v152 || v155;
        }

        v123 = v195;
      }
    }

    [v7 setIsPhysicalTripodInput:v140 & 1];
    if (*(v4 + 3100) == 1)
    {
      v160 = [(__CFDictionary *)a2 objectForKeyedSubscript:kFigCaptureStreamMetadata_DetectedObjectsInfo];
      v161 = [v160 objectForKeyedSubscript:kFigCaptureStreamDetectedObjectsInfoKey_HumanFaces];
      v162 = [v161 objectForKeyedSubscript:kFigCaptureStreamDetectedObjectsKey_ObjectsArray];

      v163 = &v213[4 * v123];
      v164 = *v163;
      v165 = v163[1];
      v166 = v163[2];
      v167 = v163[3];
      x_high = HIDWORD(v219.x);
      v169 = COERCE_DOUBLE(vcvt_f32_f64(vaddq_f64(*(a1 + 336), vcvtq_f64_f32(v216))));
      v170 = COERCE_DOUBLE(vcvt_f32_s32(*(a1 + 128)));
      v171 = *(&v223 + 1);
      *v230 = 0uLL;
      __asm { FMOV            V0.2D, #1.0 }

      *&v230[16] = _Q0;
      FigCFDictionaryGetCGRectIfPresent();
      LODWORD(v176) = x_high;
      [*(a1 + 30288) updateFacePoseWithFaceDetections:v162 cameraPose:v164 focalLength:v165 imageCenter:v166 sourcePixelBufferDimensions:v167 finalCropRect:v176 currentCaptureTime:{v169, v170, *v230, *&v230[16], v171}];
      [*(a1 + 30288) facePose];
      point[0] = v177;
      point[1] = 0u;
      v200 = 0u;
      [v7 setFaceStabilizationDataInput:point];
      v178 = *(a1 + 176);
      v179 = v7;
      v180 = 0.0;
      if ([v179 count] >= 2)
      {
        v202 = 0u;
        v203 = 0u;
        v200 = 0u;
        v201 = 0u;
        memset(point, 0, sizeof(point));
        if (v179)
        {
          [v179 getSmoothingAnalysisArrays];
          v181 = v203;
        }

        else
        {
          v181 = 0;
        }

        [v179 outputFrameTimeInput];
        v183 = v182 - *(v200 + 8 * v181);
        v184 = [v179 originalQuaternionsInput];
        v185 = FigMotionMultiplyByInverseOfQuaternion(&v184[4 * v178], (*(*&point[0].x + 8 * v178) + 32 * v181));
        if (v183 >= 2.22044605e-16)
        {
          v180 = acos(v185) / v183;
        }
      }

      *&v186 = v180;
      [v179 setRotationRateInput:v186];
    }

    [*(a1 + 29400) commitData];
    x_low = 0;
  }

LABEL_141:
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  return x_low;
}

uint64_t sbp_ltm_checkPerVideoDisablement(uint64_t a1, CFDictionaryRef theDict)
{
  v3 = (a1 + 28672);
  *(a1 + 29673) = 0;
  if (theDict)
  {
    v5 = kFigCaptureStreamMetadata_LTMCurve;
    if (CFDictionaryContainsKey(theDict, kFigCaptureStreamMetadata_LTMCurve))
    {
      v6 = CFDictionaryGetValue(theDict, v5);
      v3[1001] = [v6 intValue] == 2;
    }
  }

  if (v3[1001] == 1)
  {
    v7 = v3[1000] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 | v3[1002];
  v3[1002] = v8;
  v9 = *(a1 + 29656);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8 == 0;
  }

  if (v10)
  {
    v12 = [*(a1 + 29648) allocateLTCsCorrectionTex:v3[968] forISPProcessing:*(a1 + 172) == 3];
    v13 = *(a1 + 29656);
    *(a1 + 29656) = v12;

    if (!*(a1 + 29656))
    {
      sbp_ltm_checkPerVideoDisablement_cold_1(&v14);
      return v14;
    }

    if ((v3[1002] & 1) == 0)
    {
      return 0;
    }

    goto LABEL_16;
  }

  result = 0;
  if (v9 && v8)
  {
LABEL_16:
    sbp_ltm_deallocateLtcCorrectionTexture(a1);
    return 0;
  }

  return result;
}

void _setAttachedMediaToSampleBuffer(const void *a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (a1)
  {
    if (v10)
    {
      v6 = kFigSampleBufferAttachmentKey_AttachedMedia;
      v7 = CMGetAttachment(a1, kFigSampleBufferAttachmentKey_AttachedMedia, 0);
      v8 = [v7 mutableCopy];
      if (!v8)
      {
        v8 = [[NSMutableDictionary alloc] initWithCapacity:1];
      }

      [v8 setObject:v5 forKeyedSubscript:v10];
      if ([v8 count])
      {
        v9 = [v8 copy];
        CMSetAttachment(a1, v6, v9, 1u);
      }

      else
      {
        CMRemoveAttachment(a1, v6);
      }
    }

    else
    {
      _setAttachedMediaToSampleBuffer_cold_1();
    }
  }

  else
  {
    _setAttachedMediaToSampleBuffer_cold_2();
  }
}

void _runVideoDeghostingDetection(void *a1, uint64_t a2)
{
  v3 = a1;
  if (v3)
  {
    v4 = *(a2 + 16);
    while (1)
    {
      v5 = v4;
      if ((*(*(a2 + 8) + 24 * v4 + 16) & 1) == 0)
      {
        break;
      }

      v6 = *(a2 + 28);
      v4 += v6 + 1;
      do
      {
        v4 -= v6;
      }

      while (v4 >= v6);
      if (*(a2 + 20) == v4)
      {
        goto LABEL_11;
      }
    }

    v15 = v3;
    _updateVideoDeghostingGhostInformationLookAhead([v3 ghostInformationLookAheadPointer], a2, v4, *(a2 + 20));
    v7 = *(*a2 + 8 * v5);
    [v15 setSampleBuffer:v7];
    if ([v15 detectAndTrack])
    {
      _runVideoDeghostingDetection_cold_1();
    }

    v8 = 3 * v5;
    v9 = *(a2 + 8) + 24 * v5;
    *(v9 + 16) = 1;
    *v9 = v7;
    v10 = [NSDictionary alloc];
    v11 = [v15 detectionResult];
    v12 = [v10 initWithDictionary:v11];
    v13 = *(a2 + 8) + 8 * v8;
    v14 = *(v13 + 8);
    *(v13 + 8) = v12;

    v3 = v15;
  }

LABEL_11:
}

uint64_t _enqueueCoefficientsForSmartStyleFilterForwardLearning(uint64_t a1, CMAttachmentBearerRef target)
{
  if (!a1)
  {
    _enqueueCoefficientsForSmartStyleFilterForwardLearning_cold_7();
    v2 = 0;
LABEL_15:
    v4 = 0;
LABEL_19:
    v7 = 4294954516;
    goto LABEL_10;
  }

  v2 = target;
  if (!target)
  {
    _enqueueCoefficientsForSmartStyleFilterForwardLearning_cold_6();
    goto LABEL_15;
  }

  v4 = CMGetAttachment(target, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
  if (!v4)
  {
    _enqueueCoefficientsForSmartStyleFilterForwardLearning_cold_5();
    v2 = 0;
    goto LABEL_19;
  }

  if (gGMFigKTraceEnabled == 1)
  {
    _enqueueCoefficientsForSmartStyleFilterForwardLearning_cold_1(v2);
  }

  v5 = CMGetAttachment(v2, kFigSampleBufferAttachmentKey_AttachedMedia, 0);
  v2 = v5;
  if (!v5)
  {
    _enqueueCoefficientsForSmartStyleFilterForwardLearning_cold_4();
    goto LABEL_19;
  }

  v6 = [v5 objectForKeyedSubscript:kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingLearnedCoefficients];

  if (!v6)
  {
    _enqueueCoefficientsForSmartStyleFilterForwardLearning_cold_3();
    goto LABEL_19;
  }

  v7 = _enqueueCoefficientsForSmartStyleFilterForwardLearningFromCoefficientsSampleBuffer(a1, v6, v4);
  if (v7)
  {
    _enqueueCoefficientsForSmartStyleFilterForwardLearning_cold_2();
  }

LABEL_10:
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  return v7;
}

uint64_t _removeSmartStyleAttachments(uint64_t a1, CMAttachmentBearerRef target)
{
  if (!a1)
  {
    _removeSmartStyleAttachments_cold_2();
    return 4294954516;
  }

  if (!target)
  {
    _removeSmartStyleAttachments_cold_1();
    return 4294954516;
  }

  result = CMGetAttachment(target, kFigSampleBufferAttachmentKey_AttachedMedia, 0);
  if (result)
  {
    v4 = result;
    v15[0] = kFigCaptureStreamMetadataOutputKey_HumanFullBodiesMask;
    v15[1] = kFigCaptureStreamMetadataOutputKey_HumanSkinsMask;
    v15[2] = kFigCaptureStreamMetadataOutputKey_HumanHairMask;
    v15[3] = kFigCaptureStreamMetadataOutputKey_SkyMask;
    v15[4] = kFigCaptureStreamMetadataOutputKey_PreLTMThumbnail;
    v15[5] = kFigCaptureStreamMetadataOutputKey_LTMThumbnail;
    v15[6] = kFigCaptureStreamMetadataOutputKey_WeightSegmentMap;
    v15[7] = kFigCaptureStreamMetadataOutputKey_PostColorProcessingThumbnail;
    v15[8] = kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingLinearThumbnail;
    v15[9] = kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingUnstyledThumbnail;
    v15[10] = kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingStyledThumbnail;
    v15[11] = kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingLearnedCoefficients;
    v15[12] = kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingReverseLearnedCoefficients;
    [NSArray arrayWithObjects:v15 count:13];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = v14 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          _setAttachedMediaToSampleBuffer(target, *(*(&v11 + 1) + 8 * i), 0);
        }

        v7 = [v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
      }

      while (v7);
    }

    return 0;
  }

  return result;
}

uint64_t sbp_gvs_gaussianAverageGetStabilizedSampleBuffer(uint64_t a1, void *a2)
{
  v4 = a1 + 27148;
  v266 = 0;
  v5 = *(a1 + 29400);
  if (v5 && ([v5 getQuaternionSmoothingArrays], v6 = *(a1 + 29400), v265 = 0u, v264 = 0u, v263 = 0u, v6))
  {
    [v6 getSmoothingAnalysisArrays];
  }

  else
  {
    DWORD2(v265) = 0;
    *(&v264 + 1) = 0;
    *(&v263 + 1) = 0;
  }

  if (!a2)
  {
    sbp_gvs_gaussianAverageGetStabilizedSampleBuffer_cold_17();
    v13 = 0;
    StabilizedSampleBuffer = 4294954516;
    goto LABEL_293;
  }

  v258 = a2;
  if (([*(a1 + 29400) centerIndex] & 0x80000000) != 0)
  {
    sbp_gvs_gaussianAverageGetStabilizedSampleBuffer_cold_16(&v269);
LABEL_144:
    v13 = 0;
LABEL_321:
    StabilizedSampleBuffer = v269;
    goto LABEL_292;
  }

  v7 = [*(a1 + 29400) centerIndex];
  if (v7 >= [*(a1 + 29400) size])
  {
    sbp_gvs_gaussianAverageGetStabilizedSampleBuffer_cold_1(&v269);
    goto LABEL_144;
  }

  if (*a1)
  {
    (*a1)(*(a1 + 16), 0, *(*(a1 + 29368) + 8 * *(v4 + 2236)));
  }

  sbuf = *(*(a1 + 29368) + 8 * *(v4 + 2236));
  v13 = -49;
  if (*(v4 + 989))
  {
    memcpy(*(a1 + 28144), *(*(a1 + 29408) + 8 * *(v4 + 2292)), 8 * *(a1 + 180));
    memcpy((a1 + 28152), *(*(a1 + 29416) + 8 * *(v4 + 2292)), 8 * *(a1 + 176));
    *(a1 + 28208) = 0x100000CFEEDFACFLL;
    *(a1 + 28216) = 0x100000CFEEDFACFLL;
    v14 = *(a1 + 29424);
    if (v14)
    {
      __copy_assignment_16_16_s0_s8_t16w224(a1 + 28896, v14 + 240 * *(v4 + 2292));
    }
  }

  v317 = 0;
  v15 = 0uLL;
  v316 = 0u;
  v315 = 0u;
  v314 = 0u;
  v313 = 0u;
  v312 = 0u;
  v16 = *(a1 + 29400);
  if (v16 && ([v16 getQuaternionSmoothingArrays], v17 = *(a1 + 29400), v15 = 0uLL, v311 = 0u, v310 = 0u, v308 = 0u, v309 = 0u, v307 = 0u, v17))
  {
    [v17 getRollSmoothingArraysForBaseTransform:*(a1 + 176)];
    v18 = *(a1 + 29400);
    v15 = 0uLL;
    v305 = 0u;
    v306 = 0u;
    v303 = 0u;
    v304 = 0u;
    v301 = 0u;
    v302 = 0u;
    if (v18)
    {
      [v18 getSmoothingAnalysisArrays];
      v19 = *(a1 + 29400);
      goto LABEL_19;
    }
  }

  else
  {
    v311 = v15;
    v310 = v15;
    v308 = v15;
    v309 = v15;
    v307 = v15;
  }

  v19 = 0;
  v305 = v15;
  v306 = v15;
  v303 = v15;
  v304 = v15;
  v301 = v15;
  v302 = v15;
LABEL_19:
  v300 = 1;
  v20 = *(v4 + 2308);
  v284 = 0u;
  v285 = 0u;
  v268 = 0;
  memset(v267, 0, sizeof(v267));
  if (v19)
  {
    [v19 getFaceSmoothingArrays];
  }

  v21 = *(v4 + 2380);
  v256 = DWORD1(v316);
  v257 = v316;
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  if (*(v4 + 2656) == 1)
  {
    v22 = *(a1 + 29400);
    if (v22)
    {
      v326 = 0u;
      v325 = 0u;
      v324 = 0u;
      v323 = 0u;
      v322 = 0u;
      v321 = 0u;
      [v22 getSmoothingAnalysisArrays];
      v23 = llroundf(1 * 0.8);
      if (v23 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = v23;
      }

      v25 = v24 - 1;
      v26 = *(v323 + 8 * SDWORD2(v325));
      if (v26 <= v26 + 1.01)
      {
        v27 = (v323 + 8 * SDWORD2(v325) + 8);
        v28 = v24 - 1;
        v29 = -1;
        while (v28)
        {
          v30 = *v27++;
          ++v29;
          --v28;
          if (v30 > v26 + 1.01)
          {
            goto LABEL_34;
          }
        }
      }

      v29 = v25;
LABEL_34:
      if (*(v4 + 2672) <= 0)
      {
        v31 = v29;
      }

      else
      {
        v31 = 0;
      }

      v32 = *(&v322 + 1);
      v318 = 0u;
      v319 = 0u;
      v320 = 0u;
      v33 = *(a1 + 29400);
      if (v33)
      {
        [v33 getZoomSmoothingArrays];
      }

      if ((v31 & 0x80000000) == 0)
      {
        for (i = 0; ; ++i)
        {
          v35 = i + DWORD2(v319);
          v36 = GVSComputeSmoothedDigitalZoomFactor(&v318, i, *(v4 + 2660));
          v37 = v318 + 20 * v35;
          LODWORD(v8) = *(v37 + 4);
          if (v36 < *&v8)
          {
            GVSComputeSmoothRamp(v36, *(v37 + 8), *&v8);
          }

          if (*(v4 + 2672) < 1)
          {
            *(v32 + 144 * v35 + 20) = v36;
            if (v31 == i)
            {
              goto LABEL_56;
            }
          }

          else
          {
            v38 = (v318 + 20 * v35);
            v39 = *v38;
            v38[3] = v39 + logf(v36 / v38[1]);
            if (v31 == i)
            {
              v40 = 0;
              do
              {
                v41 = v40 + DWORD2(v319);
                v42 = GVSComputeDilatedTotalZoomFactor(&v318, *(v4 + 2672), v40);
                *(v318 + 20 * v41 + 16) = v42;
                ++v40;
              }

              while (v31 + 1 != v40);
              goto LABEL_51;
            }
          }
        }
      }

      if (*(v4 + 2672) >= 1)
      {
LABEL_51:
        if ((v29 & 0x80000000) == 0)
        {
          v43 = 0;
          v44 = v29 + 1;
          do
          {
            v45 = v43 + DWORD2(v319);
            v46 = GVSComputeSmoothedDilatedDigitalZoomFactor(&v318, *(v4 + 2672), v43);
            v47 = v318 + 20 * v45;
            if (v46 < *(v47 + 8))
            {
              v46 = *(v47 + 8);
            }

            *(v32 + 144 * v45 + 20) = v46;
            ++v43;
          }

          while (v44 != v43);
        }
      }

LABEL_56:
      v13 = -49;
    }

    else if ((sbp_gvs_gaussianAverageGetStabilizedSampleBuffer_cold_2(&v321, &v318, &v269) & 1) == 0)
    {
      v130 = v269;
      goto LABEL_237;
    }
  }

  v48 = HIDWORD(v305);
  v49 = v306;
  if (SHIDWORD(v305) > v306)
  {
LABEL_61:
    if (SDWORD1(v306) >= 2)
    {
      if (SHIDWORD(v305) <= DWORD2(v305) - DWORD2(v306))
      {
        v48 = DWORD2(v305) - DWORD2(v306);
      }

      if (v306 >= DWORD2(v305) + DWORD2(v306))
      {
        v49 = DWORD2(v305) + DWORD2(v306);
      }

      v53 = v48;
      v54 = (*(&v301 + 1) + 32 * v48);
      v55 = v49;
      v56 = 32 * v48 + 32;
      v57 = v53 - 1;
      while (++v57 < v55)
      {
        v58 = v56 + 32;
        v59 = (*(&v301 + 1) + v56);
        v60 = FigMotionMultiplyByInverseOfQuaternion((*(&v301 + 1) + v56), v54);
        v56 = v58;
        v54 = v59;
        if (fabs(v60) < 0.999999244)
        {
          if (*(v4 + 2016) >= 1)
          {
            *(v4 + 2308) = *(v4 + 2376);
          }

          goto LABEL_71;
        }
      }
    }

    *(v4 + 2308) = 1050253722;
    v61 = *(v4 + 2016);
    if (v61 < 255)
    {
      v62 = v61 + 1;
    }

    else
    {
      v62 = 255;
    }

    *(v4 + 2016) = v62;
    v21 = 0.3;
  }

  else
  {
    v50 = v306 - HIDWORD(v305) + 1;
    v51 = (*(&v303 + 1) + SHIDWORD(v305));
    while (1)
    {
      v52 = *v51++;
      if ((v52 & 1) == 0)
      {
        break;
      }

      if (!--v50)
      {
        goto LABEL_61;
      }
    }

LABEL_71:
    *(v4 + 2016) = 0;
  }

  v63 = *(v4 + 2588);
  if (v63 > 0.0)
  {
    if (*(a1 + 29744))
    {
      v64 = *(a1 + 29752);
      if (v64)
      {
        v253 = v20;
        v65 = v64;
        [v65 reset];
        v66 = v311;
        v67 = SHIDWORD(v310);
        if (v311 >= SHIDWORD(v310))
        {
          k = *(*(&v308 + 1) + 4 * v311);
          v69 = *(*(&v309 + 1) + 8 * v311);
          HIDWORD(v70) = -1073143301;
          do
          {
            for (j = *(*(&v308 + 1) + 4 * v66); ; j = j + -6.2832)
            {
              v72 = k + 3.14159265;
              if (j <= v72)
              {
                break;
              }
            }

            v73 = k + -3.14159265;
              ;
            }

            v74 = *(*(&v309 + 1) + 8 * v66);
            v75 = v69 - v74;
            *&v75 = v75;
            *&v70 = 0.3 / (*&v75 + 0.3);
            *&v75 = k;
            [v65 updateValue:v75 withPole:v70];
            v77 = v76;
            v78 = v308;
            if (*(v308 + 8 * v66 + 4) >= 1.0472)
            {
              [v65 reset];
              v78 = v308;
            }

            v79 = (v78 + 8 * v66);
            v80 = *v79;
            v81 = _computeAdjustedRollForHorizonCorrection(*v79, v79[1], v77, v63);
            v82 = v307;
            *&v87 = _adjustQuaternionForRollCorrection((*(&v307 + 1) + 32 * v66), v81 - v80, v83, v84, v85, v86);
            *(v82 + 16 * v66) = v87;
            v69 = v74;
            v120 = v66-- <= v67;
          }

          while (!v120);
        }

        v20 = v253;
      }
    }
  }

  if (!*(a1 + 29568))
  {
    if (v306 <= 0)
    {
      sbp_gvs_gaussianAverageGetStabilizedSampleBuffer_cold_3();
    }

    else
    {
      v88 = v306;
      v89 = SHIDWORD(v305);
      v90 = v306 - 4;
      if (SDWORD2(v305) > v306 - 4)
      {
        v90 = DWORD2(v305);
      }

      if (DWORD2(v305) == HIDWORD(v305))
      {
        LODWORD(v91) = HIDWORD(v305);
      }

      else
      {
        LODWORD(v91) = v90;
      }

      if (v91 <= v306)
      {
        v92 = v91 - 4;
        v93 = *(&v302 + 1);
        v94 = v305;
        v91 = v91;
        v95 = v306 + 1;
        v96 = *(&v302 + 1) + 84;
        do
        {
          if (v92 <= v89)
          {
            v97 = v89;
          }

          else
          {
            v97 = v92;
          }

          v98 = v91 - 4;
          if (v91 - 4 <= v89)
          {
            v98 = v89;
          }

          if (v91 + 4 >= v88)
          {
            v99 = v88;
          }

          else
          {
            v99 = v91 + 4;
          }

          v100 = 0.0;
          v101 = 0.0;
          v102 = __OFSUB__(v99, v98);
          v103 = v99 - v98;
          if (v103 < 0 == v102)
          {
            v104 = v97 - 1;
            v105 = (v96 + 144 * v97);
            do
            {
              v100 = v100 + *(v105 - 1);
              v101 = v101 + *v105;
              ++v104;
              v105 += 36;
            }

            while (v104 < v99);
          }

          v106 = (v103 + 1);
          v107 = v100 / v106;
          v108 = v101 / v106;
          v109 = v93 + 144 * v91;
          LODWORD(v8) = *(v109 + 80);
          LODWORD(v9) = *(v109 + 84);
          *(v94 + 4 * v91++) = sqrtf(((*&v9 - v108) * (*&v9 - v108)) + ((*&v8 - v107) * (*&v8 - v107)));
          ++v92;
        }

        while (v95 != v91);
      }
    }
  }

  if (SDWORD1(v306) < 1)
  {
    goto LABEL_152;
  }

  v110 = SDWORD2(v305);
  v111 = (v303 + 8 * SDWORD2(v305));
  v112 = *v111 + 0.75;
  if (v306 - DWORD2(v305) >= 15)
  {
    v113 = 15;
  }

  else
  {
    v113 = v306 - DWORD2(v305);
  }

  if (v111[v113] <= v112)
  {
    v114 = 1 - v113;
    v115 = (8 * v113 + 8 * SDWORD2(v305) + v303 + 8);
    v116 = v306 - DWORD2(v305) - v113;
    while (v116)
    {
      v117 = *v115++;
      --v114;
      --v116;
      if (v117 > v112)
      {
        v113 = -v114;
        goto LABEL_122;
      }
    }

    v113 = v306 - DWORD2(v305);
  }

LABEL_122:
  v118 = *(v4 + 2308);
  v119 = 1.0;
  if (*(a1 + 352))
  {
    v120 = v306 <= SHIDWORD(v305);
  }

  else
  {
    v120 = 1;
  }

  if (v120)
  {
LABEL_128:
    LODWORD(v8) = 1156579328;
    v123 = (1920.0 / *(a1 + 144)) * v119;
    if ((v113 & 0x80000000) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_149;
  }

  v121 = *(v303 + 8 * v306) - *(v303 + 8 * SHIDWORD(v305));
  if (v121 > 0.0)
  {
    v122 = v121;
    v119 = fminf(fmaxf((((v306 - HIDWORD(v305)) / v122) * 0.042088) + -1.5505, 1.0), 3.5);
    goto LABEL_128;
  }

  sbp_gvs_gaussianAverageGetStabilizedSampleBuffer_cold_4();
  v123 = 1.0;
  if ((v113 & 0x80000000) == 0)
  {
LABEL_129:
    v124 = 0;
    v125 = (*(&v302 + 1) + 144 * v110 + 12);
    v126 = 0.0;
    LODWORD(v8) = 10.0;
    LODWORD(v9) = 1.75;
    LODWORD(v10) = 0.5;
    LODWORD(v11) = 2.0;
    *&v12 = v118;
    do
    {
      v127 = (*(v305 + 4 * v110 + 4 * v124) * v123) - *(v4 + 2392);
      if (v127 <= 0.0 || (!*(v4 + 988) ? (v128 = 2.0) : *v125 ? (v128 = 0.5) : (v128 = 2.0), v118 = fmaxf(fminf(*(v4 + 2376), 10.0) - (v128 * v127), 1.75), v118 >= *&v12))
      {
        v118 = *&v12;
      }

      else
      {
        v126 = fmaxf(v126, vabds_f32(*(v4 + 2308), v118) / (v124 + 1));
      }

      v125 += 144;
      ++v124;
      *&v12 = v118;
    }

    while (v113 + 1 != v124);
    goto LABEL_150;
  }

LABEL_149:
  v126 = 0.0;
LABEL_150:
  if (v257 != v256)
  {
    goto LABEL_153;
  }

  *(v4 + 2308) = fmaxf(v21, fminf(*(v4 + 2308), v118));
LABEL_152:
  v126 = 0.0;
LABEL_153:
  v131 = llroundf((v306 - DWORD2(v305) + 1) * 0.8);
  if (v131 <= 1)
  {
    v132 = 1;
  }

  else
  {
    v132 = v131;
  }

  v133 = v132 - 1;
  v134 = *(v303 + 8 * SDWORD2(v305));
  v135 = v134 + 1.01;
  if (v134 <= v134 + 1.01)
  {
    v136 = (v303 + 8 * SDWORD2(v305) + 8);
    v137 = v132 - 1;
    v138 = -1;
    while (v137)
    {
      v139 = *v136++;
      v134 = v139;
      ++v138;
      --v137;
      if (v139 > v135)
      {
        goto LABEL_162;
      }
    }
  }

  v138 = v133;
LABEL_162:
  if (*(v4 + 3100) == 1)
  {
    if ((v138 & 0x80000000) == 0)
    {
      v140 = 0;
      do
      {
        LODWORD(v135) = *(v4 + 3136);
        [*(a1 + 30288) updateFaceFilteredQuaternionsWithFaceSmoothingArrays:v267 faceFilteringSigma:v140 centerFrameOffset:{v135, v134, v8, v9, v10, v11, v12}];
        v140 = (v140 + 1);
      }

      while (v138 + 1 != v140);
    }

    [*(a1 + 30288) updateFaceCorrectionStrengthWithFaceSmoothingArrays:v267];
  }

  if (v138 < 0)
  {
    v143 = 0;
    v183 = 1.0;
    v146 = 0;
    goto LABEL_205;
  }

  v260 = 0;
  v141 = 0;
  v142 = 0;
  v143 = 0;
  v144 = v20;
  v145 = 1.0;
  v146 = 0;
  v147 = 1;
LABEL_169:
  v251 = v147;
  v254 = v142;
  v261 = v144;
  v262 = v126;
  v148 = -v126;
  if (v141 <= v138)
  {
    v149 = v138;
  }

  else
  {
    v149 = v141;
  }

  v150 = v149 + 1;
  do
  {
    v328 = 1;
    v151 = v141 + 1;
    v152 = fmaxf(v21, fminf(*(v4 + 2376), *(v4 + 2308) + (v148 * (v141 + 1))));
    v153 = sbp_gvs_gaussianAverageComputeCorrection(a1, v141, 1, &v328, v152);
    if (v153)
    {
      v130 = v153;
      sbp_gvs_gaussianAverageGetStabilizedSampleBuffer_cold_5();
LABEL_318:
      v13 = -49;
      goto LABEL_237;
    }

    if (!v328)
    {
      v252 = v143;
      v255 = v20;
      v169 = v21;
      if (v152 < v21)
      {
        v171 = v21;
        sbp_gvs_gaussianAverageGetStabilizedSampleBuffer_cold_7();
        v169 = 0.0;
        if ((v175 & 1) == 0)
        {
          v176 = v329;
          v130 = v327[0];
LABEL_317:
          fig_log_get_emitter();
          v250 = v176;
          LODWORD(v249) = v130;
          FigDebugAssert3();
          goto LABEL_318;
        }
      }

      else
      {
        v170 = fminf(fmaxf(v141 * 0.4, 1.0), 10.0) * fmaxf(*(v4 + 2308) * 0.035, 0.1);
        v171 = v169;
        if ((v152 - v169) > v170)
        {
          while (1)
          {
            LOBYTE(v327[0]) = 0;
            v172 = sbp_gvs_gaussianAverageComputeCorrection(a1, v141, 1, v327, (v169 + v152) * 0.5);
            if (v172)
            {
              break;
            }

            if (LOBYTE(v327[0]))
            {
              v169 = (v169 + v152) * 0.5;
            }

            else
            {
              v152 = (v169 + v152) * 0.5;
            }

            if ((v152 - v169) <= v170)
            {
              goto LABEL_186;
            }
          }

          v130 = v172;
          sbp_gvs_gaussianAverageGetStabilizedSampleBuffer_cold_6();
          v176 = v329;
          goto LABEL_317;
        }
      }

LABEL_186:
      v173 = *(v4 + 2308);
      v126 = fmaxf(v262, vabds_f32(v173, v169) / v151);
      v144 = fminf(v261, v169);
      v20 = v255;
      v21 = v171;
      v143 = v252;
      if (v141 >= v138 || (v147 = 0, v141 = (v141 + 1), v142 = 1, v174 = v260 >= 4, ++v260, v174))
      {
        v300 = 0;
        v13 = -49;
LABEL_194:
        v177 = fmaxf(v21, fminf(*(v4 + 2376), v173 - v126));
        v178 = fminf(v177, fmaxf(v144, 1.75));
        if (v257 == v256)
        {
          v20 = v178;
        }

        else
        {
          v20 = v177;
        }

        v179 = sbp_gvs_gaussianAverageComputeCorrection(a1, 0, 0, &v300, v20);
        if (v179)
        {
          v130 = v179;
          sbp_gvs_gaussianAverageGetStabilizedSampleBuffer_cold_8();
          goto LABEL_237;
        }

        if (!v300)
        {
          v180 = *(a1 + 29424);
          if (!v180)
          {
            goto LABEL_322;
          }

          [*(v180 + 240 * *(v4 + 2292)) reset];
          [*(*(a1 + 29424) + 240 * *(v4 + 2292) + 8) reset];
          v181 = sbp_gvs_gaussianAverageComputeCorrection(a1, 0, 0, &v300, v20);
          if (v181)
          {
            v130 = v181;
            sbp_gvs_gaussianAverageGetStabilizedSampleBuffer_cold_9();
            goto LABEL_237;
          }

          if (!v300)
          {
LABEL_322:
            sbp_gvs_gaussianAverageGetStabilizedSampleBuffer_cold_10();
          }
        }

        v182 = fmaxf(*(v4 + 2380), v20);
        goto LABEL_236;
      }

      goto LABEL_169;
    }

    if (!v141)
    {
      v145 = *(a1 + 196);
      v154 = *(a1 + 28112);
      v284 = *(a1 + 28096);
      v285 = v154;
      v143 = *(a1 + 28224);
      v146 = *(a1 + 28232);
      v155 = *(a1 + 27360);
      v281 = *(a1 + 27344);
      v282 = v155;
      v283[0] = *(a1 + 27376);
      *(v283 + 12) = *(a1 + 27388);
      v156 = *(a1 + 27296);
      v277 = *(a1 + 27280);
      v278 = v156;
      v157 = *(a1 + 27328);
      v279 = *(a1 + 27312);
      v280 = v157;
      v158 = *(a1 + 27232);
      v273 = *(a1 + 27216);
      v274 = v158;
      v159 = *(a1 + 27264);
      v275 = *(a1 + 27248);
      v276 = v159;
      v160 = *(a1 + 27168);
      v269 = *(a1 + 27152);
      v270 = v160;
      v161 = *(a1 + 27200);
      v271 = *(a1 + 27184);
      v272 = v161;
      v162 = *(a1 + 28048);
      v296 = *(a1 + 28032);
      v297 = v162;
      v163 = *(a1 + 28080);
      v298 = *(a1 + 28064);
      v299 = v163;
      v164 = *(a1 + 27984);
      v292 = *(a1 + 27968);
      v293 = v164;
      v165 = *(a1 + 28016);
      v294 = *(a1 + 28000);
      v295 = v165;
      v166 = *(a1 + 27920);
      v288 = *(a1 + 27904);
      v289 = v166;
      v167 = *(a1 + 27952);
      v290 = *(a1 + 27936);
      v291 = v167;
      v168 = *(a1 + 27888);
      v20 = v152;
      v286 = *(a1 + 27872);
      v287 = v168;
    }

    v141 = (v141 + 1);
  }

  while (v150 != v151);
  v300 = v251;
  if (v254)
  {
    v173 = *(v4 + 2308);
    v13 = -49;
    v126 = v262;
    v144 = v261;
    goto LABEL_194;
  }

  v13 = -49;
  v183 = v145;
  v126 = v262;
LABEL_205:
  v201 = v126 == 0.0;
  v182 = v20;
  if (v201)
  {
    v184 = 10 * llroundf((*(v4 + 2316) / *(v4 + 2312)) / 30.0);
    if (v184 < v138)
    {
      v138 = v184;
    }

    v333 = 0u;
    v334 = 0u;
    v331 = 0u;
    v332 = 0u;
    v329 = 0u;
    v330 = 0u;
    v185 = *(a1 + 29400);
    v186 = 0.03337;
    if (v185)
    {
      [v185 getSmoothingAnalysisArrays];
      v187 = DWORD2(v333);
      v188 = v143;
      if (SDWORD2(v333) < v334)
      {
        v186 = *(v331 + 8 * SDWORD2(v333) + 8) - *(v331 + 8 * SDWORD2(v333));
      }
    }

    else
    {
      v188 = v143;
      v187 = 0;
    }

    v189 = fmaxf(*(v4 + 2380), v20);
    if (*v4 == 3)
    {
      v190 = 1.81;
      if ((v187 & 0x80000000) == 0)
      {
        v191 = v187;
        v192 = *(*(&v330 + 1) + 144 * v187 + 72) + -0.5;
        v193 = (v187 + 1);
        v194 = (v332 + v191);
        v195 = (*(&v330 + 1) + 144 * v191 + 72);
        while (*v195 >= v192)
        {
          if (*v194 == 1)
          {
            v190 = 28.4;
            break;
          }

          --v194;
          v195 -= 18;
          if (!--v193)
          {
            break;
          }
        }
      }

      v182 = fminf(*(v4 + 2376), fmaxf(v189 * powf(v190, v186), v189 + 0.05));
    }

    else
    {
      v182 = fminf(*(v4 + 2376), v189 + (v186 * 6.0));
      if (v182 <= v20)
      {
LABEL_303:
        v143 = v188;
        if (v138 >= 1 && v182 > v20)
        {
          v246 = v182 * 1.1;
          v247 = 1;
          do
          {
            LOBYTE(v327[0]) = 1;
            v248 = sbp_gvs_gaussianAverageComputeCorrection(a1, v247, 1, v327, v246);
            if (v248)
            {
              sbp_gvs_gaussianAverageGetStabilizedSampleBuffer_cold_12();
            }

            if (!(v248 | LOBYTE(v327[0])))
            {
              v182 = v20;
            }

            if (v138 == v247)
            {
              break;
            }

            if (v248)
            {
              break;
            }

            v247 = (v247 + 1);
          }

          while (LOBYTE(v327[0]));
        }

        goto LABEL_235;
      }

      v196 = 0;
      v197 = 10.0 / v20 * (v186 * 30.0) * 0.000436332313;
      while (1)
      {
        v328 = 0;
        if (sbp_gvs_gaussianAverageComputeCorrection(a1, 0, 1, &v328, v182))
        {
          break;
        }

        v198 = *(a1 + 28112);
        v327[0] = *(a1 + 28096);
        v327[1] = v198;
        v199 = FigMotionMultiplyByInverseOfQuaternion(&v284, v327);
        v200 = acos(v199);
        v201 = fabs(v200 + v200) > v197 || v328 == 0;
        if (!v201)
        {
          goto LABEL_303;
        }

        if (v196 > 3 || (v182 - v20) < 0.01)
        {
          v182 = v20;
          goto LABEL_303;
        }

        v182 = (v20 + v182) * 0.5;
        ++v196;
        if (v182 <= v20)
        {
          goto LABEL_303;
        }
      }

      sbp_gvs_gaussianAverageGetStabilizedSampleBuffer_cold_11();
    }

    v143 = v188;
  }

LABEL_235:
  *(a1 + 196) = v183;
  v202 = v285;
  *(a1 + 28096) = v284;
  *(a1 + 28112) = v202;
  *(a1 + 28224) = v143;
  *(a1 + 28232) = v146;
  v203 = v282;
  *(a1 + 27344) = v281;
  *(a1 + 27360) = v203;
  *(a1 + 27376) = v283[0];
  v204 = v278;
  *(a1 + 27280) = v277;
  *(a1 + 27296) = v204;
  v205 = v280;
  *(a1 + 27312) = v279;
  *(a1 + 27328) = v205;
  v206 = v274;
  *(a1 + 27216) = v273;
  *(a1 + 27232) = v206;
  v207 = v276;
  *(a1 + 27248) = v275;
  *(a1 + 27264) = v207;
  v208 = v270;
  *(a1 + 27152) = v269;
  *(a1 + 27168) = v208;
  v209 = v272;
  *(a1 + 27184) = v271;
  *(a1 + 27200) = v209;
  *(a1 + 27388) = *(v283 + 12);
  v210 = v297;
  *(a1 + 28032) = v296;
  *(a1 + 28048) = v210;
  v211 = v299;
  *(a1 + 28064) = v298;
  *(a1 + 28080) = v211;
  v212 = v293;
  *(a1 + 27968) = v292;
  *(a1 + 27984) = v212;
  v213 = v295;
  *(a1 + 28000) = v294;
  *(a1 + 28016) = v213;
  v214 = v289;
  *(a1 + 27904) = v288;
  *(a1 + 27920) = v214;
  v215 = v291;
  *(a1 + 27936) = v290;
  *(a1 + 27952) = v215;
  v216 = v287;
  *(a1 + 27872) = v286;
  *(a1 + 27888) = v216;
LABEL_236:
  v130 = 0;
  *(v4 + 2308) = v182;
  *(v4 + 2384) = v20;
LABEL_237:
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  v217 = *(&v263 + 1) + 144 * SDWORD2(v265);
  if (v130)
  {
    sbp_gvs_gaussianAverageGetStabilizedSampleBuffer_cold_13();
  }

  if (*v4 == 2 && *(*(&v264 + 1) + 8 * SDWORD2(v265)) != *(a1 + 29768))
  {
    *(v217 + 20) = 1065353216;
    if (_getMetadataDictionary(sbuf))
    {
      FigCFDictionaryGetFloatIfPresent();
    }

    v218 = 1;
    v13 = -49;
  }

  else
  {
    v218 = 0;
  }

  if (v130)
  {
    *(a1 + 202) = 1;
    goto LABEL_252;
  }

  if (*(a1 + 84))
  {
    v218 = 1;
  }

  *(a1 + 202) = v218;
  if (v218)
  {
LABEL_252:
    v219 = (*(8 * (*(a1 + 176) / 2)) + 32 * SDWORD2(v265));
    v220 = v219[1];
    *(a1 + 28096) = *v219;
    *(a1 + 28112) = v220;
  }

  v221 = *(a1 + 30064);
  if (v221)
  {
    v222 = v221;
    v223 = v222;
    if (*(a1 + 25))
    {
      _runVideoDeghostingDetection(v222, a1 + 29368);
    }

    v224 = v223;
    if (![v224 isHWAccelerated])
    {
      v233 = *(v4 + 2240);
      v234 = *(v4 + 2236);
      goto LABEL_289;
    }

    v225 = *(v4 + 2908);
    if (v225 < 0)
    {
      sbp_gvs_gaussianAverageGetStabilizedSampleBuffer_cold_14();
    }

    else
    {
      if (v225 && (*(v4 + 2948) & 1) != 0)
      {
        for (m = 0; m != v225; ++m)
        {
          v227 = *(v4 + 2248);
          v228 = *(v4 + 2240) + v227 + m;
          do
          {
            v228 -= v227;
          }

          while (v228 >= v227);
          v229 = *(v4 + 2236) + v227 + m;
          do
          {
            v229 -= v227;
          }

          while (v229 >= v227);
          _runVideoDeghostingRepairOnSingleFrame(v224, (a1 + 29368), v228, v229);
        }
      }

      v230 = *(v4 + 2240);
      v231 = *(v4 + 2236);
      v232 = *(v4 + 2248);
      v233 = v230;
      if (v231 == v230)
      {
        v233 = v230 + v225 + v232;
        do
        {
          v233 -= v232;
        }

        while (v233 >= v232);
      }

      v234 = v231 + v225 + v232;
      do
      {
        v234 -= v232;
      }

      while (v234 >= v232);
      v236 = v230 > v231 || v230 <= v234;
      v238 = v230 > v231 && v230 <= v234;
      if (v234 <= v231)
      {
        v238 = v236;
      }

      if (!v238 || !*(a1 + 25))
      {
LABEL_289:
        _runVideoDeghostingRepairOnSingleFrame(v224, (a1 + 29368), v233, v234);
      }
    }

    *(v4 + 2948) = 0;
  }

  StabilizedSampleBuffer = sbp_gvs_createStabilizedSampleBuffer(a1, sbuf, v217, &v266);
  if (StabilizedSampleBuffer)
  {
    sbp_gvs_gaussianAverageGetStabilizedSampleBuffer_cold_15();
    v13 = v286;
    goto LABEL_321;
  }

LABEL_292:
  *v258 = v266;
LABEL_293:
  v239 = *(v4 + 2236);
  v240 = *(*(a1 + 29368) + 8 * v239);
  if (v240)
  {
    CFRelease(v240);
    v239 = *(v4 + 2236);
    *(*(a1 + 29368) + 8 * v239) = 0;
  }

  v241 = *(v4 + 2248);
  v242 = v239 + v241 + 1;
  do
  {
    v242 -= v241;
  }

  while (v242 >= v241);
  *(v4 + 2236) = v242;
  --*(v4 + 2244);
  if (*(v4 + 989))
  {
    v243 = *(v4 + 2304);
    v244 = *(v4 + 2292) + v243 + 1;
    do
    {
      v244 -= v243;
    }

    while (v244 >= v243);
    *(v4 + 2292) = v244;
    --*(v4 + 2300);
  }

  dword_0 = 0;
  [*(a1 + 29400) incrementCenter];
  *(a1 + 10683) = v13;
  return StabilizedSampleBuffer;
}

float _computeAdjustedRollForHorizonCorrection(float result, float a2, float a3, float a4)
{
  if (a4 > 0.0 && a2 < 1.0472)
  {
      ;
    }

      ;
    }

    if (i < 0.0)
    {
      a4 = -a4;
    }

    v5 = i / a4;
    v6 = 0.0;
    if (v5 > 0.0)
    {
      if (v5 >= 1.0)
      {
        v6 = v5;
      }

      else
      {
        v7 = fminf(fmaxf((1.0472 - a2) / 0.2618, 0.0), 1.0);
        v6 = ((((v5 * v5) * 0.0) + ((1.0 - v7) * v5)) + ((((1.0 - v7) * -3.0) + 3.0) * (v5 * (v5 * v5)))) + (((((1.0 - v7) * 2.0) + -2.0) + 0.0) * (v5 * (v5 * (v5 * v5))));
      }
    }

    return (a4 * v6) + a3;
  }

  return result;
}

double _adjustQuaternionForRollCorrection(double *a1, float a2, double a3, double a4, double a5, __n128 a6)
{
  a6.n128_f32[0] = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *a1;
  v9 = a6;
  v9.n128_f32[1] = v6;
  v10 = v9;
  v10.n128_f32[2] = v7;
  v11 = v10;
  v11.f32[3] = v8;
  if (a2 != 0.0)
  {
    v21 = v10;
    v19 = a1[1];
    v20 = v11;
    v18 = v9.n128_u64[0];
    v12 = __sincosf_stret(a2 * 0.5);
    v13 = vmulq_n_f32(xmmword_435D0, v12.__sinval);
    v13.i32[3] = LODWORD(v12.__cosval);
    v14 = vnegq_f32(v13);
    v15 = vtrn2q_s32(v13, vtrn1q_s32(v13, v14));
    v16 = vrev64q_s32(v13);
    v16.i32[0] = v14.i32[1];
    v16.i32[3] = v14.i32[2];
    v11.i64[0] = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v13, v14, 8uLL), v18, 1), vextq_s8(v15, v15, 8uLL), v19), vmlaq_laneq_f32(vmulq_laneq_f32(v13, v20, 3), v16, v21, 2)).u64[0];
  }

  return *v11.i64;
}

int *_updateVideoDeghostingGhostInformationLookAhead(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (!a2)
  {
    return _updateVideoDeghostingGhostInformationLookAhead_cold_4();
  }

  if (!a1)
  {
    return _updateVideoDeghostingGhostInformationLookAhead_cold_3();
  }

  if (!*a1)
  {
    return _updateVideoDeghostingGhostInformationLookAhead_cold_2();
  }

  if (*(a1 + 8) < *(a2 + 24))
  {
    _updateVideoDeghostingGhostInformationLookAhead_cold_1();
  }

  v8 = 0;
  v15 = a3;
  *(a1 + 12) = 0;
  do
  {
    if (v8 < *(a1 + 8))
    {
      v9 = *(a2 + 8) + 24 * a3;
      if (*(v9 + 16) == 1)
      {
        v10 = *a1 + 24 * v8;
        *v10 = *v9;
        objc_storeStrong((v10 + 8), *(v9 + 8));
        *(v10 + 16) = *(v9 + 16);
      }

      else
      {
        v11 = *(*a2 + 8 * a3);
        v12 = *a1 + 24 * v8;
        *(v12 + 16) = 0;
        v13 = *(v12 + 8);
        *v12 = v11;
        *(v12 + 8) = 0;
      }
    }

    result = FigMotionIncreaseRingIndex(&v15, *(a2 + 28));
    v8 = *(a1 + 12) + 1;
    *(a1 + 12) = v8;
    a3 = v15;
  }

  while (v15 != a4);
  return result;
}

uint64_t sbp_gvs_getPixelBufferFromPool(__CVPixelBufferPool *a1, const __CFDictionary *a2, void *a3, unsigned int a4, _DWORD *a5, int a6, CVPixelBufferRef *a7)
{
  v13 = a3;
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  if (v13 && a6)
  {
    dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
    ++*a5;
  }

  PixelBufferWithAuxAttributes = CVPixelBufferPoolCreatePixelBufferWithAuxAttributes(kCFAllocatorDefault, a1, a2, a7);
  if (a4 && PixelBufferWithAuxAttributes == -6689)
  {
    v15 = 1000;
    do
    {
      usleep(0x3E8u);
      PixelBufferWithAuxAttributes = CVPixelBufferPoolCreatePixelBufferWithAuxAttributes(kCFAllocatorDefault, a1, a2, a7);
      if (PixelBufferWithAuxAttributes != -6689)
      {
        break;
      }

      v16 = v15 > a4;
      v15 += 1000;
    }

    while (!v16);
  }

  v17 = PixelBufferWithAuxAttributes;
  if (PixelBufferWithAuxAttributes)
  {
    sbp_gvs_getPixelBufferFromPool_cold_1(PixelBufferWithAuxAttributes, a7);
  }

  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  return v17;
}

uint64_t sbp_internalCreateSampleBufferWithNewPixelBuffer(__CVBuffer *a1, void *a2, void *a3, const CMSampleTimingInfo *a4, CMSampleBufferRef *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = [v9 objectForKeyedSubscript:v10];

  formatDescriptionOut = v11;
  if (!v11)
  {
    goto LABEL_12;
  }

  v26 = a4;
  v27 = a5;
  v28 = v9;
  v29 = v10;
  v12 = CMFormatDescriptionGetExtensions(v11);
  v13 = kCVImageBufferColorPrimariesKey;
  v14 = [v12 objectForKeyedSubscript:kCVImageBufferColorPrimariesKey];
  v15 = kCVImageBufferTransferFunctionKey;
  v30 = [v12 objectForKeyedSubscript:kCVImageBufferTransferFunctionKey];
  v16 = kCVImageBufferYCbCrMatrixKey;
  v17 = [v12 objectForKeyedSubscript:kCVImageBufferYCbCrMatrixKey];
  v18 = CVBufferCopyAttachment(a1, v13, 0);
  v19 = CVBufferCopyAttachment(a1, v15, 0);
  v20 = CVBufferCopyAttachment(a1, v16, 0);
  if (v14 == v18)
  {
    v21 = 1;
  }

  else
  {
    v21 = [v14 isEqual:v18];
  }

  v9 = v28;
  if (v30 != v19)
  {
    v21 &= [v30 isEqual:v19];
  }

  if (v17 != v20)
  {
    if (v21 & [v17 isEqual:v20])
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ((v21 & 1) == 0)
  {
LABEL_9:
    formatDescriptionOut = 0;
    [v28 setObject:0 forKeyedSubscript:{v29, v26, v27}];
    v11 = 0;
  }

LABEL_10:

  v10 = v29;
  a4 = v26;
  a5 = v27;
  if (v11)
  {
    v22 = kCFAllocatorDefault;
    goto LABEL_18;
  }

LABEL_12:
  v22 = kCFAllocatorDefault;
  v23 = CMVideoFormatDescriptionCreateForImageBuffer(kCFAllocatorDefault, a1, &formatDescriptionOut);
  if (v23)
  {
    v24 = v23;
    sbp_internalCreateSampleBufferWithNewPixelBuffer_cold_1();
    goto LABEL_20;
  }

  [v9 setObject:formatDescriptionOut forKeyedSubscript:v10];
  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
    v11 = formatDescriptionOut;
  }

  else
  {
    v11 = 0;
  }

LABEL_18:
  v24 = CMSampleBufferCreateForImageBuffer(v22, a1, 1u, 0, 0, v11, a4, a5);
  if (v24)
  {
    sbp_internalCreateSampleBufferWithNewPixelBuffer_cold_2();
  }

LABEL_20:

  return v24;
}

uint64_t _updateSmartStyleGlobalMixFactor(float32x2_t *a1, void *a2)
{
  rect.origin.x = 0.0;
  rect.origin.y = 0.0;
  __asm { FMOV            V0.2D, #1.0 }

  rect.size = _Q0;
  v8 = [a2 objectForKeyedSubscript:kFigCaptureSampleBufferMetadata_FinalCropRectFromSource];
  v9 = v8;
  if (v8 && !CGRectMakeWithDictionaryRepresentation(v8, &rect))
  {
    _updateSmartStyleGlobalMixFactor_cold_1();
    v20 = 4294954516;
  }

  else
  {
    v10 = a1[3775];
    v11 = vmvn_s8(vceq_f32(v10, v10));
    if ((vpmax_u32(v11, v11).u32[0] & 0x80000000) != 0)
    {
      v20 = 0;
    }

    else
    {
      v12 = a1 + 3584;
      MidX = CGRectGetMidX(rect);
      MidY = CGRectGetMidY(rect);
      v14.f64[0] = MidX;
      v14.f64[1] = MidY;
      v15 = vcvt_f32_f64(v14);
      v16 = [*&a1[3767] configuration];
      v17 = [v16 styleEngineConfiguration];
      [v17 globalLinearSystemMixFactor];
      v19 = v18;

      v20 = 0;
      v21 = vsub_f32(v10, v15);
      v22 = fminf(fmaxf(sqrtf(vaddv_f32(vmul_f32(v21, v21))) / 0.16667, 0.0), 1.0);
      v23 = v19 + (((v22 * v22) * ((v22 * -2.0) + 3.0)) * (1.0 - v19));
      v12[192].f32[0] = v23;
      v12[192].f32[1] = v12[192].f32[1] + ((v23 - v12[192].f32[1]) * 0.1);
    }
  }

  return v20;
}

__n128 __copy_assignment_16_16_s0_s8_t16w224(uint64_t a1, uint64_t a2)
{
  objc_storeStrong(a1, *a2);
  objc_storeStrong((a1 + 8), *(a2 + 8));
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  v5 = *(a2 + 48);
  v6 = *(a2 + 64);
  v7 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v7;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  v8 = *(a2 + 112);
  v9 = *(a2 + 128);
  v10 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v10;
  *(a1 + 112) = v8;
  *(a1 + 128) = v9;
  result = *(a2 + 176);
  v12 = *(a2 + 192);
  v13 = *(a2 + 224);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = v13;
  *(a1 + 176) = result;
  *(a1 + 192) = v12;
  return result;
}

uint64_t sbp_gvs_createStabilizedSampleBuffer(uint64_t a1, CMSampleBufferRef sbuf, uint64_t a3, uint64_t a4)
{
  v224 = a4;
  v5 = sbuf;
  v7 = a1 + 27148;
  sourceBuffer = CMSampleBufferGetImageBuffer(sbuf);
  v232 = 0;
  v233 = 0;
  FrameRateConversionStatus = _getFrameRateConversionStatus(v5);
  if (gGMFigKTraceEnabled == 1)
  {
    sbp_gvs_createStabilizedSampleBuffer_cold_1(v5);
  }

  if (*(v7 + 2630))
  {
    if (FrameRateConversionStatus == 1 && !*(v7 + 2648))
    {
      value_low = 0;
      v118 = 1;
      *(v7 + 2648) = 1;
      v119 = v224;
LABEL_213:
      *(v7 + 2649) = v118;
      goto LABEL_214;
    }

    *(v7 + 2648) = 0;
  }

  v223 = v5;
  HIDWORD(v222) = FrameRateConversionStatus;
  if (*v7 == 5)
  {
    if (v5)
    {
      v9 = *(a1 + 29728);
      if (v9)
      {
        v10 = *(a1 + 27408);
        v11 = kFigVideoStabilizationSampleBufferAttachmentKey_GPUTransformsParameters;
        v12 = CMGetAttachment(v5, kFigVideoStabilizationSampleBufferAttachmentKey_GPUTransformsParameters, 0);
        if (v12)
        {
          v13 = v12;
          Length = CFDataGetLength(v12);
          v15 = 36 * *(a1 + 180) * *(a1 + 184);
          if (Length == v15 + 36)
          {
            v16 = Length;
            BytePtr = CFDataGetBytePtr(v13);
            memcpy(v9, BytePtr, v16);
            if (*(a1 + 128) == *v9)
            {
              if (*(a1 + 132) == v9[1])
              {
                if (*(a1 + 152) == v9[2])
                {
                  if (*(a1 + 156) == v9[3])
                  {
                    if (*(a1 + 144) == v9[4])
                    {
                      if (*(a1 + 148) == v9[5])
                      {
                        if (*(a1 + 180) == v9[7])
                        {
                          if (*(a1 + 184) == v9[8])
                          {
                            if (*(a1 + 188) == v9[6])
                            {
                              memcpy(v10, v9 + 9, v15);
                              CMRemoveAttachment(v5, v11);
                              goto LABEL_22;
                            }

                            sbp_gvs_createStabilizedSampleBuffer_cold_12(&v231);
                          }

                          else
                          {
                            sbp_gvs_createStabilizedSampleBuffer_cold_11(&v231);
                          }
                        }

                        else
                        {
                          sbp_gvs_createStabilizedSampleBuffer_cold_10(&v231);
                        }
                      }

                      else
                      {
                        sbp_gvs_createStabilizedSampleBuffer_cold_9(&v231);
                      }
                    }

                    else
                    {
                      sbp_gvs_createStabilizedSampleBuffer_cold_8(&v231);
                    }
                  }

                  else
                  {
                    sbp_gvs_createStabilizedSampleBuffer_cold_7(&v231);
                  }
                }

                else
                {
                  sbp_gvs_createStabilizedSampleBuffer_cold_6(&v231);
                }
              }

              else
              {
                sbp_gvs_createStabilizedSampleBuffer_cold_5(&v231);
              }
            }

            else
            {
              sbp_gvs_createStabilizedSampleBuffer_cold_4(&v231);
            }
          }

          else
          {
            sbp_gvs_createStabilizedSampleBuffer_cold_3(&v231);
          }
        }

        else
        {
          sbp_gvs_createStabilizedSampleBuffer_cold_13(&v231);
        }
      }

      else
      {
        sbp_gvs_createStabilizedSampleBuffer_cold_14(&v231);
      }
    }

    else
    {
      sbp_gvs_createStabilizedSampleBuffer_cold_15(&v231);
    }

    value_low = LODWORD(v231.duration.value);
    if (LODWORD(v231.duration.value))
    {
      goto LABEL_199;
    }
  }

  else
  {
    v157 = _getMetadataDictionary(v5);
    _getPresentationTimeStampForSampleBuffer(v5, v157, v158, v159, v160, v161, v162, v163, v214, v215, v216, v218, v219, v220, v222, v5, v224, sourceBuffer);
    v165 = *(a1 + 27408);
    v166 = *(a1 + 172);
    if (gGMFigKTraceEnabled == 1)
    {
      kdebug_trace();
    }

    if (v166 <= 3 && *(a1 + 176) == 1)
    {
      v167 = *(a1 + 27152);
      v168 = *(a1 + 27168);
      *(v165 + 32) = *(a1 + 27184);
      *v165 = v167;
      *(v165 + 16) = v168;
    }

    v169 = *(a3 + 4);
    v170 = vmul_n_f32(vsub_f32(*(a1 + 28208), *(a1 + 28224)), v169);
    v172 = *(a1 + 28232);
    v171 = vmul_n_f32(*&v172, v169);
    LODWORD(v172) = v171.i32[1];
    v5 = v223;
    if (*(v7 + 989))
    {
      v173 = *(a1 + 28144);
    }

    else
    {
      v173 = 0;
    }

    v184 = GVSComputeTransforms(a1 + 128, a1 + 336, a3, a1 + 27872, v173, v165, v170.f32[0], v170.f32[1], v171.f32[0], v172, v164);
    if (v184)
    {
      value_low = v184;
      fig_log_get_emitter();
      v215 = v221;
      LODWORD(v214) = value_low;
      FigDebugAssert3();
    }

    else
    {
      value_low = GVSApplyDistortionToTransforms((a1 + 128), (a1 + 28896), v165);
      if (value_low)
      {
        sbp_gvs_createStabilizedSampleBuffer_cold_2();
      }
    }

    if (gGMFigKTraceEnabled == 1)
    {
      kdebug_trace();
    }

    if (value_low)
    {
      fig_log_get_emitter();
      FigDebugAssert3();

      goto LABEL_133;
    }
  }

LABEL_22:
  if (!*(v7 + 2572))
  {
    if (*(a1 + 25) && (*v7 - 1) <= 2)
    {
      if (*(a1 + 72))
      {
        v174 = 0;
      }

      else
      {
        v174 = 66000;
      }
    }

    else
    {
      v174 = 0;
    }

    v175 = [*(a1 + 48) objectForKeyedSubscript:{@"OutputBufferPrimary", v214, v215}];
    v176 = [*(a1 + 56) objectForKeyedSubscript:@"OutputBufferPrimary"];
    value_low = sbp_gvs_getPixelBufferFromPool(v175, v176, *(a1 + 72), v174, (a1 + 80), 1, &v233);

    if (value_low)
    {
      sbp_gvs_createStabilizedSampleBuffer_cold_20();
      goto LABEL_133;
    }

    if ((*(v7 + 2628) & 1) == 0)
    {
      CVBufferPropagateAttachments(sourceBuffer, v233);
    }

    memset(&v231, 0, sizeof(v231));
    SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(v5, 1, &v231, 0);
    if (SampleTimingInfoArray)
    {
      value_low = SampleTimingInfoArray;
      sbp_gvs_createStabilizedSampleBuffer_cold_21();
      goto LABEL_133;
    }

    v178 = sbp_internalCreateSampleBufferWithNewPixelBuffer(v233, *(a1 + 64), @"OutputBufferPrimary", &v231, &v232);
    if (v178)
    {
      value_low = v178;
      sbp_gvs_createStabilizedSampleBuffer_cold_22();
      goto LABEL_133;
    }

    CMPropagateAttachments(v5, v232);
    v179 = _shouldBypassSmartStyle(v5);
    if (v179)
    {
      _setAttachedMediaToSampleBuffer(v5, kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingLearnedCoefficients, 0);
      v180 = kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingUnstyledThumbnail;
      _setAttachedMediaToSampleBuffer(v5, kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingUnstyledThumbnail, 0);
      _setAttachedMediaToSampleBuffer(v232, v180, 0);
      v181 = (v7 + 2956);
      if (*(v7 + 2956))
      {
        if (!*(v7 + 2958))
        {
LABEL_228:
          v191 = _removeSmartStyleAttachments(a1, v232);
          if (v191)
          {
            value_low = v191;
            sbp_gvs_createStabilizedSampleBuffer_cold_30();
            goto LABEL_133;
          }

          goto LABEL_235;
        }

        goto LABEL_226;
      }
    }

    else
    {
      v181 = (v7 + 2956);
      if (*(v7 + 2956))
      {
        v182 = *(a1 + 172);
        if (v182 == 3)
        {
          if ((*v7 - 1) > 2 || *(a1 + 25))
          {
            if (*(v7 + 2960))
            {
              sbp_gvs_createStabilizedSampleBuffer_cold_23(a1, v5);
            }

            v213 = _runSmartStyleApplyOnUnstabilizedImage(a1, v5);
            if (v213)
            {
              value_low = v213;
              sbp_gvs_createStabilizedSampleBuffer_cold_24();
              goto LABEL_133;
            }
          }
        }

        else if (!v182)
        {
          if (*(v7 + 2960))
          {
            sbp_gvs_createStabilizedSampleBuffer_cold_25(a1, v5);
          }

          v183 = _runSmartStyleIntegrate(a1, v5);
          if (v183)
          {
            value_low = v183;
            sbp_gvs_createStabilizedSampleBuffer_cold_26();
            goto LABEL_133;
          }
        }

        goto LABEL_224;
      }
    }

    if (!*(v7 + 2958))
    {
      goto LABEL_235;
    }

LABEL_224:
    if (!*(v7 + 2958))
    {
      goto LABEL_228;
    }

    if ((v179 & 1) == 0)
    {
      if (!*(v7 + 2959))
      {
        v192 = _runSmartStyleApplyOnUnstabilizedThumbnail(a1, v5);
        if (v192)
        {
          value_low = v192;
          sbp_gvs_createStabilizedSampleBuffer_cold_27();
          goto LABEL_133;
        }
      }

      StabilizedAttachmentsPixelBuffers = sbp_gvs_createStabilizedAttachmentsPixelBuffers(a1, v5, v232, (a3 + 88));
      if (StabilizedAttachmentsPixelBuffers)
      {
        goto LABEL_318;
      }

      if (!*(v7 + 2959))
      {
        v193 = _runSmartStyleReverseLearning(a1, v5, v232);
        if (v193)
        {
          value_low = v193;
          sbp_gvs_createStabilizedSampleBuffer_cold_28();
          goto LABEL_133;
        }
      }

      goto LABEL_235;
    }

LABEL_226:
    StabilizedAttachmentsPixelBuffers = sbp_gvs_createStabilizedAttachmentsPixelBuffers(a1, v5, v232, (a3 + 88));
    if (StabilizedAttachmentsPixelBuffers)
    {
LABEL_318:
      value_low = StabilizedAttachmentsPixelBuffers;
      sbp_gvs_createStabilizedSampleBuffer_cold_29();
      goto LABEL_133;
    }

LABEL_235:
    v227 = v181;
    v194 = kFigVideoStabilizationSampleBufferAttachmentKey_DepthSampleBuffer;
    v195 = CMGetAttachment(v5, kFigVideoStabilizationSampleBufferAttachmentKey_DepthSampleBuffer, 0);
    v196 = v195;
    if (v195)
    {
      ImageBuffer = CMSampleBufferGetImageBuffer(v195);
      CMSetAttachment(sourceBuffer, @"InputDepthPixelBuffer", ImageBuffer, 0);
    }

    v229 = v179;
    CMSampleBufferGetPresentationTimeStamp(&valuePtr.duration, v5);
    *(a1 + 29664) = CMTimeGetSeconds(&valuePtr.duration);
    StabilizedPixelBuffer = sbp_gvs_createStabilizedPixelBuffer(a1, v5, (a3 + 88), v233);
    if (StabilizedPixelBuffer)
    {
      value_low = StabilizedPixelBuffer;
      sbp_gvs_createStabilizedSampleBuffer_cold_31();
      goto LABEL_133;
    }

    v199 = v232;
    v200 = kFigVideoStabilizationSampleBufferAttachmentKey_VideoSTFAnalytics;
    v201 = CMGetAttachment(v5, kFigVideoStabilizationSampleBufferAttachmentKey_VideoSTFAnalytics, 0);
    CMSetAttachment(v199, v200, v201, 1u);
    if (v196)
    {
      v202 = CMGetAttachment(sourceBuffer, @"OutputDepthPixelBuffer", 0);
      if (v202)
      {
        v203 = v202;
        memset(&valuePtr, 0, sizeof(valuePtr));
        v204 = CMSampleBufferGetSampleTimingInfoArray(v196, 1, &valuePtr, 0);
        if (v204)
        {
          value_low = v204;
          sbp_gvs_createStabilizedSampleBuffer_cold_32();
          goto LABEL_133;
        }

        *bytes = 0;
        v205 = sbp_internalCreateSampleBufferWithNewPixelBuffer(v203, *(a1 + 64), @"OutputBufferDepth", &valuePtr, bytes);
        if (v205)
        {
          value_low = v205;
          sbp_gvs_createStabilizedSampleBuffer_cold_33();
          goto LABEL_133;
        }

        CMPropagateAttachments(v196, *bytes);
        CMSetAttachment(v232, v194, *bytes, 1u);
        CMRemoveAttachment(sourceBuffer, @"InputDepthPixelBuffer");
        CMRemoveAttachment(sourceBuffer, @"OutputDepthPixelBuffer");
        if (*bytes)
        {
          CFRelease(*bytes);
        }
      }
    }

    v206 = v229;
    if (*(a1 + 172))
    {
      v206 = 1;
    }

    if ((v206 & 1) == 0)
    {
      if (*v227)
      {
        v207 = CMGetAttachment(v232, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
        [v207 setObject:&__kCFBooleanTrue forKeyedSubscript:kFigCaptureSampleBufferMetadata_SmartStyleAppliedOnThisFrame];
      }

      if (*(v7 + 2958))
      {
        if (*(v7 + 2959))
        {
          v208 = _runSmartStyleReverseLearningAndComputeDeltaMap(a1, v5, v232);
          if (v208)
          {
            value_low = v208;
            sbp_gvs_createStabilizedSampleBuffer_cold_34();
            goto LABEL_133;
          }
        }

        v209 = CMGetAttachment(sourceBuffer, @"OutputSmartStyleDeltaMapPixelBuffer", 0);
        if (v209)
        {
          v210 = v209;
          memset(&valuePtr, 0, sizeof(valuePtr));
          v211 = CMSampleBufferGetSampleTimingInfoArray(v5, 1, &valuePtr, 0);
          if (v211)
          {
            value_low = v211;
            sbp_gvs_createStabilizedSampleBuffer_cold_35();
            goto LABEL_133;
          }

          *bytes = 0;
          v212 = sbp_internalCreateSampleBufferWithNewPixelBuffer(v210, *(a1 + 64), kFigVideoStabilizationSampleBufferAttachmentKey_OutputSmartStyleDeltaMapSampleBuffer, &valuePtr, bytes);
          if (v212)
          {
            value_low = v212;
            sbp_gvs_createStabilizedSampleBuffer_cold_36();
            goto LABEL_133;
          }

          _setAttachedMediaToSampleBuffer(v232, kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingDeltaMap, *bytes);
          CMRemoveAttachment(sourceBuffer, @"OutputSmartStyleDeltaMapPixelBuffer");
          if (*bytes)
          {
            CFRelease(*bytes);
          }
        }
      }

      if (CMGetAttachment(sourceBuffer, @"OutputSmartStyleUnstyledPixelBuffer", 0))
      {
        CMRemoveAttachment(sourceBuffer, @"OutputSmartStyleUnstyledPixelBuffer");
      }
    }

    goto LABEL_31;
  }

  if (!v5)
  {
    v232 = 0;
    if (*(a1 + 172))
    {
      goto LABEL_31;
    }

    goto LABEL_197;
  }

  v18 = CFRetain(v5);
  v232 = v18;
  if (*(a1 + 172))
  {
    goto LABEL_31;
  }

  v19 = v18;
  if (!v18)
  {
LABEL_197:
    sbp_gvs_createStabilizedSampleBuffer_cold_19(&v231);
    goto LABEL_198;
  }

  v20 = *(a1 + 27408);
  if (v20)
  {
    v21 = *(a1 + 29728);
    if (v21)
    {
      *&v22 = *(a1 + 128);
      *(&v22 + 1) = *(a1 + 152);
      *v21 = v22;
      *(v21 + 16) = *(a1 + 144);
      *(v21 + 24) = *(a1 + 188);
      v23 = *(a1 + 180);
      *(v21 + 28) = v23;
      v24 = *(a1 + 184);
      *(v21 + 32) = v24;
      v25 = 36 * v23 * v24;
      memcpy((v21 + 36), v20, v25);
      v26 = CFDataCreate(kCFAllocatorDefault, v21, v25 + 36);
      if (v26)
      {
        v27 = v26;
        CMSetAttachment(v19, kFigVideoStabilizationSampleBufferAttachmentKey_GPUTransformsParameters, v26, 1u);
        CFRelease(v27);
        goto LABEL_31;
      }

      sbp_gvs_createStabilizedSampleBuffer_cold_16(&v231);
    }

    else
    {
      sbp_gvs_createStabilizedSampleBuffer_cold_17(&v231);
    }
  }

  else
  {
    sbp_gvs_createStabilizedSampleBuffer_cold_18(&v231);
  }

LABEL_198:
  value_low = LODWORD(v231.duration.value);
  if (LODWORD(v231.duration.value))
  {
LABEL_199:
    fig_log_get_emitter();
LABEL_200:
    FigDebugAssert3();
    goto LABEL_133;
  }

LABEL_31:
  v28 = 0;
  v29 = v232;
  v30 = *(a1 + 180);
  v31 = *(a1 + 184);
  v32 = (v31 >> 1) * v30;
  v33 = v30 + (v30 >> 31);
  if (v31 <= 1)
  {
    v34 = 0;
  }

  else
  {
    v34 = v32;
  }

  v35 = *(a1 + 27408) + 36 * (v34 + (v33 >> 1));
  do
  {
    *(&v231.duration.value + v28) = *(v35 + v28);
    v28 += 4;
  }

  while (v28 != 36);
  v36 = CMGetAttachment(v29, kFigVideoStabilizationSampleBufferAttachmentKey_RemainingDigitalZoomAfterVIS, 0);
  if (v36)
  {
    LODWORD(valuePtr.duration.value) = 1065353216;
    CFNumberGetValue(v36, kCFNumberFloatType, &valuePtr);
    v37.i32[0] = valuePtr.duration.value;
    FigMotionApplyDigitalZoomToTransform(1, &v231, v37, *(a1 + 336), *(a1 + 344), v38, v39);
  }

  invert3x3Matrix(&v231, &valuePtr);
  *bytes = *&valuePtr.duration.value;
  *&bytes[16] = *&valuePtr.duration.epoch;
  timescale = valuePtr.presentationTimeStamp.timescale;
  v40 = CFDataCreate(kCFAllocatorDefault, bytes, 36);
  CMSetAttachment(v29, kFigVideoStabilizationSampleBufferAttachmentKey_CenterStabilizationInvertedTransform, v40, 1u);
  if (v40)
  {
    CFRelease(v40);
  }

  if (!a1)
  {
    sbp_gvs_createStabilizedSampleBuffer_cold_48();
    goto LABEL_70;
  }

  v41 = v232;
  if (!v232)
  {
    sbp_gvs_createStabilizedSampleBuffer_cold_47();
    goto LABEL_70;
  }

  if (!a3)
  {
    sbp_gvs_createStabilizedSampleBuffer_cold_46();
    goto LABEL_70;
  }

  if (*(v7 + 1669) || *(v7 + 1670))
  {
    if (*(a3 + 4) <= 0.0)
    {
      sbp_gvs_createStabilizedSampleBuffer_cold_45();
      goto LABEL_70;
    }

    if (*(a3 + 20) <= 0.0)
    {
      sbp_gvs_createStabilizedSampleBuffer_cold_44();
      goto LABEL_70;
    }

    v42 = (a1 + 28096);
    if (FigMotionGetQuaternionLength((a1 + 28096)) <= 0.00000001)
    {
      sbp_gvs_createStabilizedSampleBuffer_cold_43();
      goto LABEL_70;
    }

    if (!*(v7 + 1668))
    {
      v43 = *(a1 + 28112);
      *(a1 + 28824) = *v42;
      *(a1 + 28840) = v43;
      *(a1 + 28856) = 0;
      *(v7 + 1668) = 1;
    }

    if (*(v7 + 1669))
    {
      v44 = CMGetAttachment(v41, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
      if (!v44)
      {
        sbp_gvs_createStabilizedSampleBuffer_cold_40();
        goto LABEL_70;
      }

      v45 = v44;
      v239 = FigMotionMultiplyByInverseOfQuaternion((a1 + 28096), (a1 + 28824));
      v240.f64[0] = v46;
      v240.f64[1] = v47;
      v241 = v48;
      v238 = 0;
      if (GVSComputeTranslationFromCameraMotion(&v239, &v238, *(a3 + 4)))
      {
        sbp_gvs_createStabilizedSampleBuffer_cold_37();
        goto LABEL_70;
      }

      v49.f32[0] = -*(a3 + 20);
      if (!*(a1 + 203))
      {
        v49.i32[0] = *(a3 + 20);
      }

      v49.i32[1] = *(a3 + 20);
      *(a1 + 28856) = vmla_f32(*(a1 + 28856), v49, v238);
      v231.duration.value = vmul_f32(v49, *(a3 + 80));
      v50 = CFDataCreate(kCFAllocatorDefault, (a1 + 28856), 8);
      if (v50)
      {
        v51 = CFDataCreate(kCFAllocatorDefault, &v231, 8);
        if (v51)
        {
          v52 = v51;
          CFDictionarySetValue(v45, kFigVideoStabilizationSampleBufferAttachmentKey_EstimatedCenterMotionVector, v50);
          CFDictionarySetValue(v45, kFigVideoStabilizationSampleBufferAttachmentKey_EstimatedMotionBlurVector, v52);
          goto LABEL_59;
        }

        sbp_gvs_createStabilizedSampleBuffer_cold_38();
      }

      else
      {
        sbp_gvs_createStabilizedSampleBuffer_cold_39();
      }

LABEL_68:
      if (v50)
      {
        CFRelease(v50);
      }

      goto LABEL_70;
    }

    v50 = 0;
    v52 = 0;
LABEL_59:
    if (*(v7 + 1670))
    {
      v231.duration.flags = 0;
      *(&v231.duration.value + 4) = 0;
      *(&v231.duration.epoch + 4) = 0;
      *(&v231.presentationTimeStamp.value + 4) = 0x3F80000000000000;
      LODWORD(v231.duration.value) = 1065353216;
      LODWORD(v231.duration.epoch) = 1065353216;
      v53 = *(a1 + 28096);
      *&bytes[8] = vnegq_f64(*(v7 + 956));
      v54 = -*(a1 + 28120);
      *bytes = v53;
      *&bytes[24] = v54;
      *&v53 = *(v7 + 2540) * 0.75;
      v55 = *(a1 + 336);
      *&v239 = COERCE_UNSIGNED_INT(*(a3 + 4) * *(a3 + 20));
      v56 = *(a1 + 136);
      v57.i64[0] = v56;
      v57.i64[1] = SHIDWORD(v56);
      v240 = vsubq_f64(v55, vcvtq_f64_s64(v57));
      v236 = v53;
      v237 = v240;
      GVSInverseRotationMatrixFromQuaternion(bytes, &valuePtr);
      *v58.i64 = FigMotionComputeTransformFromRotation(&v239, &v236, &valuePtr.duration.value, &v231);
      if (*(a1 + 203))
      {
        *v59.i32 = *(a1 + 144);
        v58.i32[0] = -1.0;
        FigMotionPreMultiplyScalingTranslationToTransform(&v231, v58, v59, 1.0, 0.0, v60);
      }

      v238 = (*(a3 + 72) * 1000000000.0);
      v61 = CFDataCreate(kCFAllocatorDefault, &v231, 36);
      if (v61)
      {
        v62 = v61;
        CMSetAttachment(v41, kFigVideoStabilizationSampleBufferAttachmentKey_StabilizedTrajectoryHomography, v61, 1u);
        CFRelease(v62);
        v63 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &v238);
        if (v63)
        {
          v64 = v63;
          CMSetAttachment(v41, kFigVideoStabilizationSampleBufferAttachmentKey_StabilizedTrajectoryHomographyTimestamp, v63, 1u);
          CFRelease(v64);
          goto LABEL_65;
        }

        sbp_gvs_createStabilizedSampleBuffer_cold_41();
      }

      else
      {
        sbp_gvs_createStabilizedSampleBuffer_cold_42();
      }

LABEL_66:
      if (v52)
      {
        CFRelease(v52);
      }

      goto LABEL_68;
    }

LABEL_65:
    v65 = *(a1 + 28112);
    *(a1 + 28824) = *v42;
    *(a1 + 28840) = v65;
    goto LABEL_66;
  }

LABEL_70:
  v66 = v223;
  if (*v7 != 3 && *v7 != 5)
  {
    v67 = CMGetAttachment(v232, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
    if (v67)
    {
      v68 = v67;
      LOBYTE(valuePtr.duration.value) = 0;
      FigCFDictionaryGetBooleanIfPresent();
      if (LOBYTE(valuePtr.duration.value))
      {
        v71 = *(a1 + 180);
        v72 = *(a1 + 184);
        v73 = v71 + (v71 >> 31);
        v74 = (v72 >> 1) * v71;
        if (v72 <= 1)
        {
          v74 = 0;
        }

        v75 = *(a1 + 27408) + 36 * (v74 + (v73 >> 1));
        v76 = *(v75 + 32);
        v77 = *(v75 + 16);
        *&v231.duration.value = *v75;
        *&v231.duration.epoch = v77;
        v231.presentationTimeStamp.timescale = v76;
        v77.i32[0] = *(a3 + 20);
        if (*v77.i32 > 0.0)
        {
          FigMotionApplyDigitalZoomToTransform(0, &v231, v77, *(a1 + 336), *(a1 + 344), v69, v70);
        }

        v78 = *(a1 + 128) - *(v7 + 2540);
        v79 = v78;
        v80 = vcvts_n_f32_s32(*(a1 + 132) - *(v7 + 2544), 1uLL) + *(v7 + 2544);
        FigMotionPostMultiplyScalingTranslationToTransform(&v231, 1.0, vcvts_n_f32_s32(v78, 1uLL), -1.0, v80);
        *v81.i32 = -(v79 * 0.5);
        v82.i32[0] = 1.0;
        FigMotionPreMultiplyScalingTranslationToTransform(&v231, v82, v81, -1.0, v80, v83);
        v84 = CFDataCreate(kCFAllocatorDefault, &v231, 36);
        if (v84)
        {
          v85 = v84;
          CFDictionarySetValue(v68, kFigVideoStabilizationSampleBufferProcessorMetadata_VitalityTransformMatrix, v84);
          CFRelease(v85);
        }

        else
        {
          sbp_gvs_createStabilizedSampleBuffer_cold_49();
        }
      }
    }
  }

  if (*(a1 + 205) && *(a3 + 136) == 4 && *v7 != 5)
  {
    if (_getMetadataDictionary(v232))
    {
      FigCFDictionarySetCGRect();
    }

    else
    {
      sbp_gvs_createStabilizedSampleBuffer_cold_50();
    }
  }

  v86 = *v7;
  if ((*v7 - 1) <= 2)
  {
    if (*(v7 + 980))
    {
      v87 = v232;
      if (*(a1 + 392) == 1)
      {
        if (a1 && a3 && v232)
        {
          v88 = *(a1 + 28112);
          *&v231.duration.value = *(a1 + 28096);
          *&v231.duration.epoch = v88;
          *&v231.presentationTimeStamp.timescale = vneg_f32(*(a1 + 28232));
          *&v231.presentationTimeStamp.epoch = *(a3 + 4) * *(a3 + 20);
          v89 = [NSData dataWithBytes:&v231 length:48];
          if (v89)
          {
            v90 = v89;
            CMSetAttachment(v87, kFigVideoStabilizationSampleBufferAttachmentKey_StabilizedOutputCameraGeometry, v89, 1u);
          }

          else
          {
            sbp_gvs_createStabilizedSampleBuffer_cold_53();
          }
        }

        else
        {
          sbp_gvs_createStabilizedSampleBuffer_cold_54();
        }
      }

      else if (v232)
      {
        v91 = CFDataCreate(kCFAllocatorDefault, (a1 + 28096), 32);
        if (v91)
        {
          v92 = v91;
          CMSetAttachment(v87, kFigVideoStabilizationSampleBufferAttachmentKey_StabilizedOutputCenterQuaternion, v91, 1u);
          CFRelease(v92);
        }

        else
        {
          sbp_gvs_createStabilizedSampleBuffer_cold_51();
        }
      }

      else
      {
        sbp_gvs_createStabilizedSampleBuffer_cold_52();
      }
    }

    v86 = *v7;
  }

  if (v86 != 5)
  {
    goto LABEL_125;
  }

  v93 = *(a1 + 27408);
  v94 = CMGetAttachment(v232, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
  if (!v94)
  {
    sbp_gvs_createStabilizedSampleBuffer_cold_59(&v231);
    goto LABEL_304;
  }

  v95 = v94;
  v242 = 1;
  v96 = CFDictionaryContainsKey(v94, kFigMotionAttachmentsSampleBufferProcessorMetadata_StereoStitchingNarrowBufferRect);
  BooleanIfPresent = FigCFDictionaryGetBooleanIfPresent();
  v98 = v242;
  if (!BooleanIfPresent)
  {
    v98 = v96 == 0;
  }

  v99 = *(a1 + 144);
  v100.i64[0] = v99;
  v100.i64[1] = SHIDWORD(v99);
  v101 = vcvtq_f64_s64(v100);
  v102 = 0.0;
  if (v98)
  {
    v103.f64[0] = 0.0;
  }

  else
  {
    if (*(a1 + 180) <= 0)
    {
      sbp_gvs_createStabilizedSampleBuffer_cold_58(&v231);
      goto LABEL_304;
    }

    v217 = v101;
    if (!v96)
    {
      sbp_gvs_createStabilizedSampleBuffer_cold_57(&v231);
      goto LABEL_304;
    }

    size = CGRectNull.size;
    *&valuePtr.duration.value = CGRectNull.origin;
    *&valuePtr.duration.epoch = size;
    FigCFDictionaryGetCGRectIfPresent();
    if (*&valuePtr.presentationTimeStamp.value <= 0.0)
    {
      sbp_gvs_createStabilizedSampleBuffer_cold_56(&valuePtr, &v231);
      goto LABEL_304;
    }

    v106 = *(a1 + 180);
    v107 = *&valuePtr.duration.value;
    v108 = *&valuePtr.duration.value + *&valuePtr.duration.epoch + -1.0;
    *&v236 = v107;
    *v237.f64 = v108;
    v109 = (*&valuePtr.presentationTimeStamp.value + *&valuePtr.duration.timescale);
    v110 = *&valuePtr.duration.timescale;
    if (*&valuePtr.duration.timescale >= v109)
    {
      *&v226 = 0;
      *&v228 = 0x47EFFFFFE0000000;
      v113 = 0.0;
    }

    else
    {
      v111 = 0;
      v112 = (*&valuePtr.presentationTimeStamp.value / v106);
      v113 = 0.0;
      *&v105 = 0x47EFFFFFE0000000;
      v228 = v105;
      *&v105 = 0;
      v226 = v105;
      do
      {
        *(v237.f64 + 1) = v110;
        *(&v236 + 1) = v110;
        invert3x3Matrix(v93, &v231);
        _computeProjectedPoints(&v231, &v236, bytes);
        v114 = *&bytes[8];
        if (*&bytes[8] <= *&bytes[24])
        {
          v114 = *&bytes[24];
        }

        v115 = v226;
        if (!v111)
        {
          *&v115 = v114;
        }

        if (v113 <= *bytes)
        {
          v113 = *bytes;
        }

        v116 = v228;
        if (*&v228 >= *&bytes[16])
        {
          *&v116 = *&bytes[16];
        }

        v226 = v115;
        v228 = v116;
        v110 += v112;
        --v111;
        v93 += 36;
      }

      while (v110 < v109);
    }

    *(v237.f64 + 1) = (v109 - 1);
    *(&v236 + 1) = *(v237.f64 + 1);
    _computeProjectedPoints(&v231, &v236, bytes);
    v120.f64[0] = *bytes;
    if (v113 > *bytes)
    {
      v120.f64[0] = v113;
    }

    __asm { FMOV            V1.2D, #-1.0 }

    v126 = vaddq_f64(v217, _Q1);
    *&v127.f64[0] = v228;
    v127.f64[1] = *&bytes[8];
    v128 = *(a1 + 136);
    v129.i64[0] = v128;
    v129.i64[1] = SHIDWORD(v128);
    v130 = vcvtq_f64_s64(v129);
    *&v120.f64[1] = v226;
    v103 = vmaxnmq_f64(vsubq_f64(v120, v130), 0);
    v131 = vsubq_f64(vbslq_s8(vcgtq_f64(*&bytes[16], v127), v127, *&bytes[16]), v130);
    v132 = vsubq_f64(vbslq_s8(vcgtq_f64(v126, v131), v131, v126), v103);
    __asm { FMOV            V2.2D, #1.0 }

    v101 = vaddq_f64(v132, _Q2);
    v102 = v103.f64[1];
    v66 = v223;
  }

  v134 = v101.f64[1];
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(*(&v102 - 1));
  if (DictionaryRepresentation)
  {
    v136 = DictionaryRepresentation;
    CFDictionarySetValue(v95, kFigVideoStabilizationSampleBufferProcessorMetadata_StitchingCleanApertureRect, DictionaryRepresentation);
    CFRelease(v136);
    goto LABEL_125;
  }

  sbp_gvs_createStabilizedSampleBuffer_cold_55(&v231);
LABEL_304:
  value_low = LODWORD(v231.duration.value);
  if (LODWORD(v231.duration.value))
  {
    fig_log_get_emitter();
    goto LABEL_200;
  }

LABEL_125:
  if (!*(v7 + 2957))
  {
    v137 = *(a1 + 27408);
    if (v137)
    {
      __asm { FMOV            V2.2S, #-1.0 }

      v139 = vmla_f32(vcvt_f32_s32(*(a1 + 152)), 0x3F0000003F000000, vadd_f32(vcvt_f32_s32(*(a1 + 160)), _D2));
      v140 = *(a1 + 180);
      v141 = *(a1 + 184);
      v142 = v140 + (v140 >> 31);
      v143 = (v141 >> 1) * v140;
      if (v141 <= 1)
      {
        v143 = 0;
      }

      LODWORD(v231.duration.value) = 0;
      *bytes = 0;
      GVSComputePerspectiveProjectedPoint((v137 + 36 * (v143 + (v142 >> 1))), &v231, bytes, v139.f32[0], v139.f32[1]);
      v144 = __PAIR64__(*bytes, v231.duration.value);
    }

    else
    {
      sbp_gvs_createStabilizedSampleBuffer_cold_60();
      v144 = 0;
    }

    *(a1 + 30200) = vdiv_f32(v144, vcvt_f32_s32(*(a1 + 128)));
  }

  if (*v7 == 5)
  {
    value_low = 0;
LABEL_133:
    v119 = v224;
    goto LABEL_208;
  }

  if (a1 && v66 && a3)
  {
    v145 = GVSComputeOverscanUsage((a1 + 128), (a3 + 104), *(a1 + 27408)).f32[0];
    v147 = *(a3 + 96);
    v148 = *(a3 + 100);
    if (v145 >= v147)
    {
      v149 = 1.0;
    }

    else
    {
      v149 = v145 / v147;
    }

    if (v146 >= v148)
    {
      v150 = 1.0;
    }

    else
    {
      v150 = v146 / v148;
    }

    v151 = *(a3 + 136);
    if (v151 >= 5)
    {
      sbp_gvs_createStabilizedSampleBuffer_cold_64();
    }

    else
    {
      v152 = *(a3 + 140);
      if (v152 >= 3)
      {
        sbp_gvs_createStabilizedSampleBuffer_cold_63();
      }

      else
      {
        v153 = v152 - 1;
        if (v152 <= 0)
        {
          v153 = 0;
        }

        v154 = OverscanHistogramIndexMapping[2 * v151 + v153];
        if ((v154 & 0x80000000) != 0)
        {
          sbp_gvs_createStabilizedSampleBuffer_cold_62();
        }

        else
        {
          v155 = fminf(v149, v150);
          if (v155 >= 0.02)
          {
            if (v155 >= 0.04)
            {
              if (v155 >= 0.06)
              {
                if (v155 >= 0.11)
                {
                  if (v155 >= 0.16)
                  {
                    v156 = 6;
                    if (v155 < 0.21)
                    {
                      v156 = 5;
                    }
                  }

                  else
                  {
                    v156 = 4;
                  }
                }

                else
                {
                  v156 = 3;
                }
              }

              else
              {
                v156 = 2;
              }
            }

            else
            {
              v156 = 1;
            }
          }

          else
          {
            v156 = 0;
          }

          *(a1 + 4 * v154 + 30024) = v151 | (v152 << 16);
          v185 = a1 + 28 * v154 + 4 * v156;
          *(v185 + 29824) = *(v185 + 29824) + 1.0;
          v186 = *(v7 + 2376);
          if (v186 > 0.0)
          {
            v187 = a1 + 4 * vcvtms_s32_f32((*(v7 + 2384) / v186) * 6.0);
            *(v187 + 29992) = *(v187 + 29992) + 1.0;
          }

          LODWORD(v231.duration.value) = 0;
          if (CMGetAttachment(v66, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0))
          {
            FigCFDictionaryGetInt32IfPresent();
            *(v7 + 2872) = *(v7 + 2872) + SLODWORD(v231.duration.value);
          }

          else
          {
            sbp_gvs_createStabilizedSampleBuffer_cold_61();
          }
        }
      }
    }
  }

  else
  {
    sbp_gvs_createStabilizedSampleBuffer_cold_65();
  }

  v119 = v224;
  value_low = 0;
LABEL_208:
  if (*(v7 + 2630))
  {
    v118 = HIDWORD(v222) == 1 && *(v7 + 2648);
    goto LABEL_213;
  }

LABEL_214:
  CMRemoveAttachment(sourceBuffer, @"InputDepthPixelBuffer");
  CMRemoveAttachment(sourceBuffer, @"OutputDepthPixelBuffer");
  v188 = v232;
  if (value_low && v232)
  {
    CFRelease(v232);
    v188 = 0;
    v232 = 0;
  }

  *v119 = v188;
  if (v233)
  {
    CFRelease(v233);
  }

  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  return value_low;
}