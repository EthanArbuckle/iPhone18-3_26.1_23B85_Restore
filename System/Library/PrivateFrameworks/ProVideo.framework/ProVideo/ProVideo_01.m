float64_t pv_transform_info_make(uint64_t a1, float64x2_t *a2, float64x2_t a3)
{
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  __asm { FMOV            V1.2D, #-0.5 }

  v9 = *(a1 + 80);
  *&v34[16] = *(a1 + 64);
  *&v34[32] = v9;
  v10 = *(a1 + 112);
  v35 = *(a1 + 96);
  v36 = v10;
  v11 = *(a1 + 16);
  v31 = *a1;
  v32 = v11;
  v12 = *(a1 + 48);
  v33 = *(a1 + 32);
  *v34 = v12;
  v23 = vmulq_f64(a3, _Q1);
  v24 = 0u;
  pv_simd_matrix_translate(&v31, &v23, &v37);
  *&v34[32] = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  *v34 = 0;
  v31 = 0u;
  v32 = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  *&v34[8] = _Q0;
  *&v34[24] = _Q0;
  v27 = v41;
  v28 = v42;
  v29 = v43;
  v30 = v44;
  v23 = v37;
  v24 = v38;
  v25 = v39;
  v26 = v40;
  pv_transform_info_make(&v23, &v31);
  __asm { FMOV            V0.2D, #0.5 }

  v15 = v32;
  v31 = vaddq_f64(vmulq_f64(a3, _Q0), v31);
  v16 = *&v34[32];
  v17 = v35;
  v18 = *v34;
  a2[4] = *&v34[16];
  a2[5] = v16;
  v19 = v36;
  a2[6] = v17;
  a2[7] = v19;
  result = v33.f64[0];
  v21 = v31;
  a2[2] = v33;
  a2[3] = v18;
  *a2 = v21;
  a2[1] = v15;
  return result;
}

double pv_simd_float4x4_from_pv_transform_info(float64x2_t *a1)
{
  *v20.columns[1].f32 = vcvt_f32_f64(a1[2]);
  v2 = vmul_f32(*v20.columns[1].f32, *v20.columns[1].f32);
  v3 = vcvt_f32_f64(a1[3]);
  v4 = vmul_f32(v3, v3);
  v5 = vmuls_lane_f32(v20.columns[1].f32[0], *v20.columns[1].f32, 1);
  v6 = vmuls_lane_f32(v3.f32[0], v3, 1);
  v7 = vmul_f32(*v20.columns[1].f32, v3).f32[0];
  v8 = vmuls_lane_f32(v20.columns[1].f32[1], v3, 1);
  v20.columns[0].i32[3] = 0;
  v20.columns[0].f32[0] = v4.f32[1] + ((v2.f32[0] - v2.f32[1]) - v4.f32[0]);
  v20.columns[2].i32[3] = 0;
  v20.columns[0].f32[1] = (v5 + v6) + (v5 + v6);
  v20.columns[0].f32[2] = (v7 - v8) + (v7 - v8);
  v9 = (v5 - v6) + (v5 - v6);
  v10 = vmuls_lane_f32(v3.f32[0], *v20.columns[1].f32, 1);
  v3.f32[0] = vmuls_lane_f32(v20.columns[1].f32[0], v3, 1);
  v20.columns[1].i32[3] = 0;
  v20.columns[1].f32[0] = v9;
  v20.columns[1].f32[1] = (v4.f32[1] + (v2.f32[1] - v4.f32[0])) - v2.f32[0];
  v20.columns[1].f32[2] = (v10 + v3.f32[0]) + (v10 + v3.f32[0]);
  v20.columns[2].f32[0] = (v7 + v8) + (v7 + v8);
  v20.columns[2].f32[1] = (v10 - v3.f32[0]) + (v10 - v3.f32[0]);
  v20.columns[2].f32[2] = (vaddv_f32(v4) - v2.f32[0]) - v2.f32[1];
  v20.columns[3] = xmmword_2603427D0;
  v11 = a1[4].f64[0];
  v3.f32[0] = a1[4].f64[1];
  v4.f32[0] = a1[5].f64[0];
  v12 = pv_simd_matrix_scale(v20, v11, v3.f32[0], v4.f32[0]);
  v17 = *a1;
  *v17.f32 = vcvt_f32_f64(*a1);
  v16 = a1[1].f64[0];
  v17.f32[2] = v16;

  return pv_simd_matrix_translate(v12, v13, v14, v15, v17);
}

double pv_simd_double4x4_from_pv_transform_info@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24)
{
  v27 = *(a1 + 32);
  v26 = *(a1 + 48);
  v28 = vmuld_n_f64(v27.f64[0], v27.f64[0]);
  v29 = *(a1 + 40);
  v30 = vmuld_lane_f64(v29, v27, 1);
  v31 = vmuld_n_f64(v26.f64[0], v26.f64[0]);
  v32 = vmuld_lane_f64(*(a1 + 56), v26, 1);
  *&v33 = v32 + v28 - v30 - v31;
  v34 = vmuld_lane_f64(v27.f64[0], v27, 1);
  v35 = vmuld_lane_f64(v26.f64[0], v26, 1);
  v36 = vmuld_n_f64(v27.f64[0], v26.f64[0]);
  v37 = vmuld_lane_f64(v29, v26, 1);
  *(&v33 + 1) = v34 + v35 + v34 + v35;
  *a2 = v33;
  *(a2 + 16) = COERCE_UNSIGNED_INT64(v36 - v37 + v36 - v37);
  *&v33 = v34 - v35 + v34 - v35;
  v38 = vmuld_lane_f64(v26.f64[0], v27, 1);
  v26.f64[0] = vmuld_lane_f64(v27.f64[0], v26, 1);
  *(&v33 + 1) = v32 + v30 - v31 - v28;
  *(a2 + 32) = v33;
  *(a2 + 48) = COERCE_UNSIGNED_INT64(v38 + v26.f64[0] + v38 + v26.f64[0]);
  v27.f64[0] = v36 + v37 + v36 + v37;
  v27.f64[1] = v38 - v26.f64[0] + v38 - v26.f64[0];
  *(a2 + 64) = v27;
  *(a2 + 80) = COERCE_UNSIGNED_INT64(v31 + v32 - v28 - v30);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = xmmword_260342700;
  v39 = *(a1 + 64);
  v40 = *(a1 + 80);
  v41 = *(a2 + 80);
  a21 = *(a2 + 64);
  a22 = v41;
  v42 = *(a2 + 112);
  a23 = *(a2 + 96);
  a24 = v42;
  v43 = *(a2 + 16);
  a17 = *a2;
  a18 = v43;
  v44 = *(a2 + 48);
  a19 = *(a2 + 32);
  a20 = v44;
  pv_simd_matrix_scale(&a17, a2, v39, *(&v39 + 1), v40);
  v45 = *a1;
  v46 = *(a1 + 16);
  vars0 = *a2;
  v52[0] = v45;
  v52[1] = v46;
  pv_simd_matrix_translate(&vars0, v52, &a17);
  v47 = a22;
  *(a2 + 64) = a21;
  *(a2 + 80) = v47;
  v48 = a24;
  *(a2 + 96) = a23;
  *(a2 + 112) = v48;
  v49 = a18;
  *a2 = a17;
  *(a2 + 16) = v49;
  result = *&a19;
  v51 = a20;
  *(a2 + 32) = a19;
  *(a2 + 48) = v51;
  return result;
}

BOOL pv_simd_almost_equal_elements(uint64_t a1, uint64_t a2, double a3)
{
  *&v47 = 0;
  v6 = *(a1 + 48);
  v44 = *(a1 + 32);
  v45 = v6;
  v46 = 0u;
  pv_simd_quaternion_get_euler_angles(&v44, 4, &v46);
  *&v45 = 0;
  v7 = *(a2 + 48);
  v43[0] = *(a2 + 32);
  v43[1] = v7;
  v44 = 0u;
  pv_simd_quaternion_get_euler_angles(v43, 4, &v44);
  v8 = 0;
  v11 = *a1;
  v12 = *a2;
  *&v9 = *(a1 + 16);
  *&v10 = *(a2 + 16);
  v11.i64[1] = vextq_s8(v11, v11, 8uLL).u64[0];
  v12.i64[1] = vextq_s8(v12, v12, 8uLL).u64[0];
  while (1)
  {
    v42[0] = v11;
    v42[1] = v9;
    v13 = *(v42 + (v8 & 3));
    v41[0] = v12;
    v41[1] = v10;
    if (vabdd_f64(v13, *(v41 + (v8 & 3))) >= a3)
    {
      break;
    }

    if (++v8 == 3)
    {
      v33 = *&v47;
      v34 = *&v45;
      v35 = *(&v46 + 1);
      v36 = v44;
        ;
      }

        ;
      }

      if (vabdd_f64(i, j) < a3)
      {
          ;
        }

          ;
        }

        if (vabdd_f64(k, m) < a3)
        {
            ;
          }

            ;
          }

          if (vabdd_f64(n, ii) < a3)
          {
            v22 = 0;
            v23 = *(a1 + 64);
            v24 = *(a2 + 64);
            *&v20 = *(a1 + 80);
            *&v21 = *(a2 + 80);
            v23.i64[1] = vextq_s8(v23, v23, 8uLL).u64[0];
            v24.i64[1] = vextq_s8(v24, v24, 8uLL).u64[0];
            while (1)
            {
              v40[0] = v23;
              v40[1] = v20;
              v25 = *(v40 + (v22 & 3));
              v39[0] = v24;
              v39[1] = v21;
              if (vabdd_f64(v25, *(v39 + (v22 & 3))) >= a3)
              {
                break;
              }

              if (++v22 == 3)
              {
                v26 = 0;
                v27 = *(a1 + 96);
                v28 = *(a2 + 96);
                *&v20 = *(a1 + 112);
                *&v21 = *(a2 + 112);
                v27.i64[1] = vextq_s8(v27, v27, 8uLL).u64[0];
                v28.i64[1] = vextq_s8(v28, v28, 8uLL).u64[0];
                do
                {
                  v38[0] = v27;
                  v38[1] = v20;
                  v29 = *(v38 + (v26 & 3));
                  v37[0] = v28;
                  v37[1] = v21;
                  v30 = vabdd_f64(v29, *(v37 + (v26 & 3)));
                  result = v30 < a3;
                }

                while (v30 < a3 && v26++ != 2);
                return result;
              }
            }
          }
        }
      }

      return 0;
    }
  }

  return 0;
}

float64_t pv_transform_info_lerp@<D0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *(a4 + 32) = 0u;
  v10 = (a4 + 32);
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 80) = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  *(a4 + 56) = _Q0;
  *(a4 + 72) = _Q0;
  v16 = a1[1];
  v17 = *a2;
  v18 = a2[1];
  v42 = *a1;
  v43 = v16;
  v40 = v17;
  v41 = v18;
  pv_simd_lerp(&v42, &v40, v39, a5);
  v19 = v39[1];
  *a4 = v39[0];
  *(a4 + 16) = v19;
  if (!a3)
  {
    v20 = a1[2];
    v21 = a1[3];
    v22 = a2[2];
    v23 = a2[3];
    if (vaddvq_f64(vaddq_f64(vmulq_f64(v20, v22), vmulq_f64(v21, v23))) >= 0.0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v42 = vnegq_f64(v22);
    v43 = vnegq_f64(v23);
    v40 = v20;
    v41 = v21;
    v24 = &v40;
    v25 = &v42;
    goto LABEL_6;
  }

  v20 = a1[2];
  v21 = a1[3];
  v22 = a2[2];
  v23 = a2[3];
  if (vaddvq_f64(vaddq_f64(vmulq_f64(v20, v22), vmulq_f64(v21, v23))) >= 0.0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v42 = v20;
  v43 = v21;
  v40 = v22;
  v41 = v23;
  v24 = &v42;
  v25 = &v40;
LABEL_6:
  _simd_slerp_internal(v24, v25, v38, a5);
  v26 = v38[1];
  *v10 = v38[0];
  v10[1] = v26;
  v27 = a1[5];
  v28 = a2[4];
  v29 = a2[5];
  v42 = a1[4];
  v43 = v27;
  v40 = v28;
  v41 = v29;
  pv_simd_lerp(&v42, &v40, v37, a5);
  v30 = v37[1];
  *(a4 + 64) = v37[0];
  *(a4 + 80) = v30;
  v31 = a1[7];
  v32 = a2[6];
  v33 = a2[7];
  v42 = a1[6];
  v43 = v31;
  v40 = v32;
  v41 = v33;
  pv_simd_lerp(&v42, &v40, v36, a5);
  result = v36[0].f64[0];
  v35 = v36[1];
  *(a4 + 96) = v36[0];
  *(a4 + 112) = v35;
  return result;
}

void _simd_slerp_internal(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>, double a4@<D0>)
{
  v6 = 1.0;
  v7 = 1.0 - a4;
  v8 = a1[1];
  v9 = a2[1];
  v10 = vsubq_f64(*a1, *a2);
  v11 = vsubq_f64(v8, v9);
  v10.f64[0] = sqrt(vaddvq_f64(vaddq_f64(vmulq_f64(v10, v10), vmulq_f64(v11, v11))));
  v37 = v9;
  v38 = *a2;
  v33 = v8;
  v35 = *a1;
  v12 = vaddq_f64(*a1, *a2);
  v13 = vaddq_f64(v8, v9);
  v14 = atan2(v10.f64[0], sqrt(vaddvq_f64(vaddq_f64(vmulq_f64(v12, v12), vmulq_f64(v13, v13)))));
  v15 = v14 + v14;
  v16 = v14 + v14 == 0.0;
  v17 = 1.0;
  if (!v16)
  {
    v17 = sin(v15) / v15;
  }

  v18 = 1.0 / v17;
  if (v7 * v15 != 0.0)
  {
    v6 = sin(v7 * v15) / (v7 * v15);
  }

  v19 = v7 * (v18 * v6);
  v20 = vmulq_n_f64(v33, v19);
  v21 = vmulq_n_f64(v35, v19);
  v22 = v15 * a4;
  v23 = 1.0;
  if (v22 != 0.0)
  {
    v34 = v21;
    v36 = v20;
    v24 = sin(v22);
    v21 = v34;
    v20 = v36;
    v23 = v24 / v22;
  }

  v25 = v18 * v23 * a4;
  v26 = vmulq_n_f64(v37, v25);
  v27 = vaddq_f64(v21, vmulq_n_f64(v38, v25));
  v28 = vaddq_f64(v20, v26);
  v29 = vaddvq_f64(vaddq_f64(vmulq_f64(v27, v27), vmulq_f64(v28, v28)));
  if (v29 == 0.0)
  {
    v30 = xmmword_260342700;
    v31 = 0uLL;
  }

  else
  {
    v32 = 1.0 / sqrt(v29);
    v30 = vmulq_n_f64(v28, v32);
    v31 = vmulq_n_f64(v27, v32);
  }

  *a3 = v31;
  a3[1] = v30;
}

__n128 pv_simd_double4_from_PCVector4d@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  v3 = a1[1];
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 pv_PCVector4d_from_simd_double4(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

void PVImagePropertiesForColorSpace(PVColorSpace *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = a1;
  *(a3 + 16) = [(PVColorSpace *)v6 cgColorSpace];
  if (![(PVColorSpace *)v6 isP3d65GammaColorSpace]|| (a2) && [(PVColorSpace *)v6 isWideGamutSpace])
  {
    *a3 = 0x1052476841;
    v5 = 4353;
  }

  else
  {
    *a3 = 0x842475241;
    v5 = 8194;
  }

  *(a3 + 8) = v5;
}

void ConvertToHDR(HGColorConform **a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v17 = a2;
  v7 = a3;
  v8 = *a1;
  if (v8)
  {
    (*(*v8 + 16))(v8);
  }

  if ([v17 isRec709GammaColorSpace] & 1) != 0 || (objc_msgSend(v18, "isP3d65GammaColorSpace"))
  {
    v9 = [v18 isP3d65GammaColorSpace];
  }

  else
  {
    v10 = [v18 isWideGamutSpace];
    if (v10)
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    if (v10)
    {
      v11 = 3;
    }

    else
    {
      v11 = 0;
    }

    v12 = [v18 nclcTriplet];
    v13 = [v12 hgColorPrimary];
    v14 = [v18 nclcTriplet];
    PVCreateColorConform(v13, [v14 hgTransferFunction], 0, v11, 1, 0, 0, &v19);

    v15 = v19;
    (*(*v19 + 120))(v19, 0, v8);
    if (v8 != v15)
    {
      if (v8)
      {
        (*(*v8 + 24))(v8);
      }

      v8 = v15;
      (*(*v15 + 16))(v15);
    }

    (*(*v15 + 24))(v15);
  }

  v16 = HGObject::operator new(0x1B0uLL);
  HGHLG::SDRToHLG::SDRToHLG(v16, v9, 1);
  (*(*v16 + 120))(v16, 0, v8);
  *a4 = v16;
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }
}

void sub_25F92ED60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  if (v10)
  {
    (*(*v10 + 24))(v10);
  }

  _Unwind_Resume(a1);
}

void ColorConformInput(HGColorConform **a1@<X0>, void *a2@<X1>, void *a3@<X2>, int a4@<W3>, void *a5@<X4>, HGColorConform **a6@<X8>)
{
  v11 = a2;
  v12 = a3;
  if (([v11 isEqual:v12] & 1) == 0 && v11 | v12 && a4 != 3)
  {
    v13 = [v11 copy];
    v14 = *a1;
    *a6 = *a1;
    if (v14)
    {
      (*(*v14 + 16))(v14);
    }

    v15 = [(PVColorSpace *)v13 isExtendedSRGBColorSpace]|| [(PVColorSpace *)v13 isSRGBColorSpace];
    v16 = [(PVColorSpace *)v12 isExtendedSRGBColorSpace]|| [(PVColorSpace *)v12 isSRGBColorSpace];
    if ([v11 isExtendedSRGBColorSpace] && -[PVColorSpace isSRGBColorSpace](v12, "isSRGBColorSpace") || objc_msgSend(v11, "isExtendedSRGBColorSpace") && -[PVColorSpace isRec709GammaColorSpace](v12, "isRec709GammaColorSpace"))
    {
      if (a4 == 2)
      {
        PVLogError(@"xrSRGB to sRGB Gamut Mapping not Supported. Clamping", @"ProVideo.ColorConform", a5);
      }

      v17 = HGObject::operator new(0x1C0uLL);
      HGColorClamp::HGColorClamp(v17);
    }

    if (v15 && [(PVColorSpace *)v12 isRec709GammaColorSpace]|| v16 && [(PVColorSpace *)v13 isRec709GammaColorSpace])
    {
      goto LABEL_29;
    }

    v55 = [(PVColorSpace *)v12 nclcTriplet];
    v18 = [(PVColorSpace *)v13 nclcTriplet];
    if ([v18 isInvalid])
    {

LABEL_27:
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Null NCLC Triplets for conversion from (%@) to (%@)", v13, v12];
      PVLogError(v20, @"ProVideo.ColorConform", a5);

LABEL_28:
LABEL_29:

      goto LABEL_30;
    }

    v19 = [v55 isInvalid];

    if (v19)
    {
      goto LABEL_27;
    }

    if ([(PVColorSpace *)v13 isRec2100PQColorSpace]|| [(PVColorSpace *)v13 isP3PQGammaColorSpace])
    {
      v21 = [(PVColorSpace *)v13 nclcTriplet];
      v22 = [v21 hgColorPrimary];
      v23 = [(PVColorSpace *)v13 nclcTriplet];
      PVCreateColorConform(v22, [v23 hgTransferFunction], 0, 3, 8, 0, 0, &v57);

      v24 = v57;
      (*(*v57 + 120))(v57, 0, v14);
      v25 = HGObject::operator new(0x1B0uLL);
      HGPQ::OOTF::OOTF(v25, 1, 100.0, 100.0);
      (*(*v25 + 120))(v25, 0, v24);
      v26 = HGObject::operator new(0x1C0uLL);
      HGHLG::InverseOOTF::InverseOOTF(v26);
    }

    v27 = 0;
    v28 = [(PVColorSpace *)v13 isRec2020LinearColorSpace];
    if (([(PVColorSpace *)v13 isRec2100HLGColorSpace]|| [(PVColorSpace *)v13 isP3HLGGammaColorSpace]) && ![(PVColorSpace *)v12 isHDRSpace]&& ![(PVColorSpace *)v12 isRec2020GammaColorSpace])
    {
      v29 = [(PVColorSpace *)v13 nclcTriplet];
      v30 = [v29 hgColorPrimary];
      v31 = [(PVColorSpace *)v13 nclcTriplet];
      PVCreateColorConform(v30, [v31 hgTransferFunction], 0, 3, 8, 0, 0, &v57);

      v32 = v57;
      v33 = *a6;
      (*(*v57 + 120))(v57, 0, *a6);
      v27 = [(PVColorSpace *)v12 isRec2020LinearColorSpace];
      if (v33 != v32)
      {
        if (v33)
        {
          (*(*v33 + 24))(v33);
        }

        *a6 = v32;
        (*(*v32 + 16))(v32);
      }

      (*(*v32 + 24))(v32);
    }

    else if (!v28)
    {
LABEL_51:
      if (!v27)
      {
        if ([v11 isProResLogColorSpace])
        {
          if (ToSpaceProcessInHDR(v12))
          {
            v36 = HGObject::operator new(0x320uLL);
            HGColorConform::HGColorConform(v36);
            HGColorConform::SetConversion(v36, 0, 0xE, 1, 3);
            v37 = *a6;
            (*(*v36 + 120))(v36, 0, *a6);
            if (v37 != v36)
            {
              if (v37)
              {
                (*(*v37 + 24))(v37);
              }

              *a6 = v36;
              (*(*v36 + 16))(v36);
            }

            v38 = HGObject::operator new(0x1B0uLL);
            HGPQ::OOTF::OOTF(v38, 1, 100.0, 100.0);
            (*(*v38 + 120))(v38, 0, v36);
            v39 = HGObject::operator new(0x1C0uLL);
            HGHLG::InverseOOTF::InverseOOTF(v39);
          }

          {
            LODWORD(v57) = 9;
            std::make_unique[abi:ne200100]<HGColorConformLook3DLUT,HGColorConformLook3DLUT::Preset,0>(&v57, &ColorConformInput(HGRef<HGNode>,PVColorSpace const*,PVColorSpace const*,PVColorSpaceConformIntent,NSError * {__autoreleasing}*)::LUTData);
            __cxa_atexit(std::unique_ptr<HGColorConformLook3DLUT>::~unique_ptr[abi:ne200100], &ColorConformInput(HGRef<HGNode>,PVColorSpace const*,PVColorSpace const*,PVColorSpaceConformIntent,NSError * {__autoreleasing}*)::LUTData, &dword_25F8F0000);
          }

          v40 = HGObject::operator new(0x320uLL);
          HGColorConform::HGColorConform(v40);
          HGColorConform::SetLook3DLutConversion(v40, ColorConformInput(HGRef<HGNode>,PVColorSpace const*,PVColorSpace const*,PVColorSpaceConformIntent,NSError * {__autoreleasing}*)::LUTData, 0, 0);
          v41 = *a6;
          (*(*v40 + 120))(v40, 0, *a6);
          if (v41 != v40)
          {
            if (v41)
            {
              (*(*v41 + 24))(v41);
            }

            *a6 = v40;
            (*(*v40 + 16))(v40);
          }

          v42 = +[PVColorSpace rec709GammaColorSpace];

          (*(*v40 + 24))(v40);
          v13 = v42;
        }

        if (!NeedsConversionToHDR(v13, v12))
        {
          goto LABEL_79;
        }

        v43 = *a6;
        v56 = v43;
        if (v43)
        {
          (*(*v43 + 16))(v43);
        }

        ConvertToHDR(&v56, v13, v12, &v57);
        v44 = *a6;
        v45 = v57;
        if (*a6 == v57)
        {
          if (v44)
          {
            (*(*v57 + 24))(v57);
          }
        }

        else
        {
          if (v44)
          {
            (*(*v44 + 24))(v44);
          }

          *a6 = v45;
          v57 = 0;
        }

        if (v56)
        {
          (*(*v56 + 24))(v56);
        }

        v46 = +[PVColorSpace rec2020LinearColorSpace];

        v13 = v46;
        if (![(PVColorSpace *)v12 isRec2020LinearColorSpace])
        {
LABEL_79:
          v47 = [(PVColorSpace *)v13 nclcTriplet];
          v48 = [v47 hgColorPrimary];
          v49 = [(PVColorSpace *)v13 nclcTriplet];
          PVCreateColorConform(v48, [v49 hgTransferFunction], 0, objc_msgSend(v55, "hgColorPrimary"), objc_msgSend(v55, "hgTransferFunction"), 0, 0, &v57);

          v50 = v57;
          v51 = *a6;
          (*(*v57 + 120))(v57, 0, *a6);
          if (v51 != v50)
          {
            if (v51)
            {
              (*(*v51 + 24))(v51);
            }

            *a6 = v50;
            (*(*v50 + 16))(v50);
          }

          (*(*v50 + 24))(v50);
        }
      }

      if ([(PVColorSpace *)v13 isWideGamutSpace])
      {
        v52 = [(PVColorSpace *)v12 isWideGamutSpace];
        v53 = a4 == 1 ? v52 : 1;
        if ((v53 & 1) == 0)
        {
          v54 = HGObject::operator new(0x1C0uLL);
          HGColorClamp::HGColorClamp(v54);
        }
      }

      goto LABEL_28;
    }

    if (![(PVColorSpace *)v12 isHDRSpace]&& !v27)
    {
      v34 = HGObject::operator new(0x1B0uLL);
      HGHLG::HLGToSDR::HLGToSDR(v34, 2);
      v35 = *a6;
      (*(*v34 + 120))(v34, 0, *a6);
      LOBYTE(v27) = [(PVColorSpace *)v12 isRec709GammaColorSpace];
      HGHLG::HLGToSDR::SetOutputIsRec709Gamma(v34, v27);
      if (v35 != v34)
      {
        if (v35)
        {
          (*(*v35 + 24))(v35);
        }

        *a6 = v34;
        (*(*v34 + 16))(v34);
      }

      (*(*v34 + 24))(v34);
    }

    goto LABEL_51;
  }

  *a6 = *a1;
  *a1 = 0;
LABEL_30:
}

{
  v13 = a2;
  v11 = a3;
  v12 = *a1;
  v14 = v12;
  if (v12)
  {
    (*(*v12 + 16))(v12);
  }

  ColorConformInput(&v14, v13, v11, a4, a5, a6);
  if (v14)
  {
    (*(*v14 + 24))(v14);
  }
}

void sub_25F92FE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{

  if (*v15)
  {
    (*(**v15 + 24))(*v15);
  }

  _Unwind_Resume(a1);
}

uint64_t ToSpaceProcessInHDR(PVColorSpace *a1)
{
  v1 = a1;
  v2 = [(PVColorSpace *)v1 isHDRSpace]|| [(PVColorSpace *)v1 isRec2020LinearColorSpace];

  return v2;
}

uint64_t *std::unique_ptr<HGColorConformLook3DLUT>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t NeedsConversionToHDR(PVColorSpace *a1, PVColorSpace *a2)
{
  v3 = a1;
  v4 = a2;
  if ([(PVColorSpace *)v3 isHDRSpace]|| [(PVColorSpace *)v3 isRec2020LinearColorSpace]|| !ToSpaceProcessInHDR(v4))
  {
    v6 = 0;
  }

  else
  {
    v5 = [(PVColorSpace *)v3 nclcTriplet];
    v6 = [v5 isInvalid] ^ 1;
  }

  return v6;
}

id PVCreateColorInColorSpace(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  v10 = [v9 cgColorSpace];
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = a2;
  PCColor::PCColor(&v20, v14, v13, v12, v11, v10);
  v19 = 0;
  v18 = 0.0;
  v15 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF430]);
  PCColor::getRGB(&v20, &v19 + 1, &v18, &v19, v15);
  v16 = [MEMORY[0x277D75348] colorWithRed:*(&v19 + 1) green:v18 blue:*&v19 alpha:a5];
  PCCFRef<CGColorSpace *>::~PCCFRef(&v20.var1._obj);

  return v16;
}

id PVCreateColorWithInverseToneMap(void *a1)
{
  v1 = a1;
  v2 = [v1 CGColor];
  ColorSpace = CGColorGetColorSpace(v2);
  if (CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB)
  {
    NSLog(&cfstr_UnexpectedNonR.isa);
    goto LABEL_6;
  }

  v4 = +[PVColorSpace sRGBColorSpace];
  if (ColorSpace == [v4 cgColorSpace])
  {
  }

  else
  {
    v5 = +[PVColorSpace extendedSRGBColorSpace];
    v6 = [v5 cgColorSpace];

    if (ColorSpace != v6)
    {
      NSLog(&cfstr_UnexpectedNonS.isa);
LABEL_6:
      v7 = v1;
      goto LABEL_9;
    }
  }

  Components = CGColorGetComponents(v2);
  v9 = *Components;
  v10 = Components[1];
  v11 = Components[2];
  PCColor::PCColor(&v18, v9, v10, v11, ColorSpace);
  v17 = 0;
  v16 = 0.0;
  v12 = +[PVColorSpace rec2020GammaColorSpace];
  PCColor::getRGB(&v18, &v17 + 1, &v17, &v16, [v12 cgColorSpace]);
  v15[0] = *(&v17 + 1);
  LODWORD(v15[1]) = v17;
  v15[2] = v16;
  FxApplyBT2446A(v15, v14);
  v7 = PVCreateColorInColorSpace(v12, v14[0], v14[1], v14[2], Components[3]);

  PCCFRef<CGColorSpace *>::~PCCFRef(&v18.var1._obj);
LABEL_9:

  return v7;
}

void sub_25F930894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);

  _Unwind_Resume(a1);
}

void PVCreateColorConform(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, HGColorConform **a8@<X8>)
{
  v16 = HGObject::operator new(0x320uLL);
  HGColorConform::HGColorConform(v16);
  *a8 = v16;
  if ((HGColorConform::SetConversion(v16, a1, a2, a3, a4, a5, a6) & 1) == 0)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"unable to setup color conform:\n <>From (primaries:%d, transfer:%d, matrix:%d)\n <>To   (primaries:%d, transfer:%d, matrix:%d)", a1, a2, a3, a4, a5, a6];
    PVLogError(v17, @"ProVideo.ColorConform", a7);
  }
}

void sub_25F9309F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id a16)
{
  if (v16)
  {
    (*(*v16 + 24))(v16);
  }

  _Unwind_Resume(a1);
}

uint64_t std::make_unique[abi:ne200100]<HGColorConformLook3DLUT,HGColorConformLook3DLUT::Preset,0>@<X0>(unsigned int *a1@<X0>, void *a2@<X8>)
{
  v4 = HGObject::operator new(0x78uLL);
  result = HGColorConformLook3DLUT::HGColorConformLook3DLUT(v4, *a1);
  *a2 = v4;
  return result;
}

CGColorSpace **PCCFRef<CGColorSpace *>::~PCCFRef(CGColorSpace **a1)
{
  v2 = *a1;
  if (v2)
  {
    PCCFRefTraits<CGColorSpace *>::release(v2);
  }

  return a1;
}

void PVRenderJob::PVRenderJob(uint64_t a1, void *a2)
{
  v3 = a2;
  HGObject::HGObject(a1);
  *a1 = &unk_2871CDEE8;
  v4 = v3;
  *(a1 + 72) = 0u;
  *(a1 + 16) = v4;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  PVPerfStats::FrameStats::FrameStats(a1 + 136);
  PerfTimer::PerfTimer((a1 + 224));
  PerfTimer::PerfTimer((a1 + 240));
  PerfTimer::PerfTimer((a1 + 256));
  *(a1 + 272) = 0;
  v5 = [*(a1 + 16) videoCompositingContext];
  v6 = [v5 renderGraphDumpLevel];

  HGLogger::setLevel("graph", v6);
  operator new();
}

void sub_25F930CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  if (a10)
  {
    (*(*a10 + 3))(a10);
  }

  v15 = *(v10 + 200);
  if (v15)
  {
    *(v10 + 208) = v15;
    operator delete(v15);
  }

  v16 = *(v10 + 104);
  if (v16)
  {
    (*(*v16 + 24))(v16);
  }

  v17 = *(v10 + 96);
  if (v17)
  {
    (*(*v17 + 24))(v17);
  }

  a10 = v13;
  std::vector<HGRef<HGBitmap>>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = v13 - 3;
  std::vector<HGRef<HGNode>>::__destroy_vector::operator()[abi:ne200100](&a10);
  if (*v12)
  {
    (*(**v12 + 24))(*v12);
  }

  HGObject::~HGObject(v10);
  _Unwind_Resume(a1);
}

void PVRenderJob::~PVRenderJob(PVRenderJob *this)
{
  *this = &unk_2871CDEE8;
  v2 = (this + 72);
  v3 = *(this + 9);
  v4 = *(this + 10);
  if (v3 != v4)
  {
    do
    {
      if (*v3)
      {
        (*(**v3 + 24))(*v3);
        v4 = *(this + 10);
      }

      *v3++ = 0;
    }

    while (v3 != v4);
    v3 = *v2;
  }

  while (v4 != v3)
  {
    std::allocator<HGRef<HGBitmap>>::destroy[abi:ne200100](v2, --v4);
  }

  v5 = *(this + 6);
  *(this + 10) = v3;
  v6 = *(this + 7);
  if (v5 != v6)
  {
    do
    {
      if (*v5)
      {
        (*(**v5 + 24))(*v5);
        v6 = *(this + 7);
      }

      *v5++ = 0;
    }

    while (v5 != v6);
    v5 = *(this + 6);
  }

  while (v6 != v5)
  {
    std::allocator<HGRef<HGNode>>::destroy[abi:ne200100](this + 48, --v6);
  }

  *(this + 7) = v5;
  v7 = *(this + 4);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 14);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 15);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 5);
  if (v10)
  {
    (*(*v10 + 24))(v10);
  }

  v11 = *(this + 25);
  if (v11)
  {
    *(this + 26) = v11;
    operator delete(v11);
  }

  v12 = *(this + 13);
  if (v12)
  {
    (*(*v12 + 24))(v12);
  }

  v13 = *(this + 12);
  if (v13)
  {
    (*(*v13 + 24))(v13);
  }

  v15 = v2;
  std::vector<HGRef<HGBitmap>>::__destroy_vector::operator()[abi:ne200100](&v15);
  v15 = (this + 48);
  std::vector<HGRef<HGNode>>::__destroy_vector::operator()[abi:ne200100](&v15);
  v14 = *(this + 5);
  if (v14)
  {
    (*(*v14 + 24))(v14);
  }

  HGObject::~HGObject(this);
}

{
  PVRenderJob::~PVRenderJob(this);

  HGObject::operator delete(v1);
}

void PVRenderJob::InitFrameStats(PVRenderJob *this, int a2, CMTime *a3, char a4)
{
  v6 = *a3;
  v7 = &unk_2871CE898;
  PVPerfStats::FrameStats::Init((this + 136), 11, a2, &v6);
  *(this + 192) = a4;
}

HGSynchronizable *PVRenderJob::CancelJob(PVRenderJob *this, int a2)
{
  result = PVRenderJob::State(this);
  if (result != 5)
  {
    v5 = *(this + 14);
    LOBYTE(v6) = 0;
    HGSynchronizable::Lock(v5);
    *(this + 32) = PVRenderJob::State(this);
    PVRenderJob::SetState(this, 5);
    if (a2)
    {
      [*(this + 2) finishCancelledJob];
    }

    if (*(this + 13))
    {
      PVRenderManager::CancelRenderJob(*(this + 12), this + 13);
    }

    return HGSynchronizable::Unlock(v5);
  }

  return result;
}

uint64_t PVRenderJob::State(PVRenderJob *this)
{
  v2 = *(this + 4);
  HGSynchronizable::Lock(v2);
  v3 = *(this + 6);
  HGSynchronizable::Unlock(v2);
  return v3;
}

HGSynchronizable *PVRenderJob::SetState(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
  HGSynchronizable::Lock(v4);
  *(a1 + 24) = a2;
  return HGSynchronizable::Unlock(v4);
}

void PVRenderJob::GraphBuildingJobNotification(PVRenderJob *this, HGRenderJob *a2)
{
  v3 = objc_autoreleasePoolPush();
  UserData = HGRenderJob::GetUserData(this);
  State = HGRenderJob::GetState(this);
  if (State <= 1)
  {
    if ((State + 1000) >= 3)
    {
      goto LABEL_10;
    }

    HGRenderJob::SetNotifyFunc(this, 0);
    v6 = UserData;
    v7 = 6;
    goto LABEL_9;
  }

  switch(State)
  {
    case 6:
      HGRenderJob::SetNotifyFunc(this, 0);
      v6 = UserData;
      v7 = 5;
LABEL_9:
      PVRenderJob::SetState(v6, v7);
      PVRenderJob::FinishRequest(UserData);
      break;
    case 4:
      PerfTimer::End((UserData + 224));
      PVPerfStats::FrameStats::SetValueForIndex(UserData + 136, 0, *(UserData + 232) - *(UserData + 224));
      PVRenderJob::SetupRenderer(UserData);
      PVRenderJob::BuildGraph(UserData);
      PVRenderJob::SubmitRenderJob(UserData);
      break;
    case 2:
      PerfTimer::Start((UserData + 224));
      break;
  }

LABEL_10:

  objc_autoreleasePoolPop(v3);
}

uint64_t PVRenderJob::SetupRenderer(PVRenderJob *this)
{
  RenderContext = HGRenderJob::GetRenderContext(*(this + 13));
  Renderer = HGRenderContext::GetRenderer(RenderContext);
  v4 = Renderer;
  if (Renderer)
  {
    (*(*Renderer + 16))(Renderer);
    v7 = *(this + 5);
    v6 = (this + 40);
    v5 = v7;
    if (v7 == v4)
    {
      (*(*v4 + 24))(v4);
      v4 = *v6;
      goto LABEL_8;
    }
  }

  else
  {
    v8 = *(this + 5);
    v6 = (this + 40);
    v5 = v8;
    if (!v8)
    {
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  *v6 = v4;
LABEL_8:
  v9 = *(*v4 + 16);

  return v9(v4);
}

void sub_25F9314D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

void PVRenderJob::BuildGraph(PVRenderJob *this)
{
  HGTraceGuard::HGTraceGuard(v6, "kPVInstructionGraphToHeliumGraphLogContext", 1, "Build Helium Render Graph from Delegate");
  PVRenderJob::SetState(this, 1);
  if (HGLogger::getLevel("PVSignPost", v2) >= 1)
  {
    if (objc_opt_respondsToSelector())
    {
      [*(this + 2) packedFamilyCode];
    }

    kdebug_trace();
  }

  PerfTimer::PerfTimer(&v5);
  PerfTimer::Start(&v5);
  PVRenderJob::SetJobsRendererParameters(this, *(this + 13));
  [*(this + 2) buildGraph:this + 48 renderContext:HGRenderJob::GetRenderContext(*(this + 13)) frameStats:this + 136];
  PerfTimer::End(&v5);
  PVPerfStats::FrameStats::SetValueForIndex(this + 136, 2u, v5._end - v5._start);
  if (HGLogger::getLevel("PVSignPost", v3) >= 1)
  {
    kdebug_trace();
  }

  v4 = *(this + 4);
  HGSynchronizable::Lock(v4);
  if (*(this + 6) == 1)
  {
    *(this + 6) = 2;
  }

  HGSynchronizable::Unlock(v4);
  HGTraceGuard::~HGTraceGuard(v6);
}

void sub_25F931678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

HGSynchronizable *PVRenderJob::SubmitRenderJob(PVRenderJob *this)
{
  if (PVRenderJob::State(this) == 5)
  {

    return PVRenderJob::FinishRequest(this);
  }

  else
  {
    v3 = (this + 104);
    Renderer = HGRenderJob::GetRenderer(*(this + 13));
    v5 = HGObject::operator new(0x160uLL);
    HGRenderJob::HGRenderJob(v5);
    HGUserJob::SetPriority(v5, 0);
    if (objc_opt_respondsToSelector())
    {
      v6 = [*(this + 2) jobPriority];
    }

    else
    {
      v6 = 5;
    }

    if (objc_opt_respondsToSelector())
    {
      v7 = [*(this + 2) renderThreadPriority];
    }

    else
    {
      v7 = 3;
    }

    if (objc_opt_respondsToSelector())
    {
      v8 = [*(this + 2) renderContextPriority];
    }

    else
    {
      v8 = 5;
    }

    HGRenderJob::SetPriority(v5, v6);
    HGRenderJob::SetGLContextPriority(v5, v8);
    HGRenderJob::SetRenderer(v5, Renderer);
    HGRenderJob::SetNotifyFunc(v5, PVRenderJob::RenderJobNotification);
    HGRenderJob::SetRenderThreadPriority(v5, v7);
    UserTag = HGRenderJob::GetUserTag(*v3);
    HGRenderJob::SetUserTag(v5, UserTag);
    HGRenderJob::SetUserData(v5, this);
    PVRenderJob::SetJobsRendererParameters(this, v5);
    for (i = *(this + 6); i != *(this + 7); ++i)
    {
      v11 = *i;
      if (*i)
      {
        (*(*v11 + 16))(*i);
      }

      v12 = HGObject::operator new(0xD0uLL);
      HGRenderNode::HGRenderNode(v12);
      HGRenderNode::SetNode(v12, v11);
      HGRenderNode::SetDestination(v12, 0);
      v13 = HGRenderJob::GetUserTag(v5);
      HGRenderNode::SetUserTag(v12, v13);
      HGRenderJob::AddRenderNode(v5, v12);
      if (v12)
      {
        (*(*v12 + 24))(v12);
      }

      if (v11)
      {
        (*(*v11 + 24))(v11);
      }
    }

    if (PVRenderJob::State(this) == 5)
    {
      result = PVRenderJob::FinishRequest(this);
    }

    else
    {
      v14 = *(this + 14);
      HGSynchronizable::Lock(v14);
      if (PVRenderJob::State(this) != 5)
      {
        v15 = *v3;
        if (*v3 != v5)
        {
          if (v15)
          {
            (*(*v15 + 24))(v15);
          }

          *v3 = v5;
          if (v5)
          {
            (*(*v5 + 16))(v5);
          }
        }

        PVRenderManager::EnqueueRenderJob(*(this + 12), this + 13);
      }

      result = HGSynchronizable::Unlock(v14);
    }

    if (v5)
    {
      return (*(*v5 + 24))(v5);
    }
  }

  return result;
}

void sub_25F9319F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PVRenderJob::FinishRequest(PVRenderJob *this)
{
  result = PVRenderJob::State(this);
  if (result != 7)
  {
    v4 = result;
    if (HGLogger::getLevel("PVSignPost", v3) >= 1)
    {
      if (objc_opt_respondsToSelector())
      {
        [*(this + 2) packedFamilyCode];
      }

      kdebug_trace();
    }

    PerfTimer::PerfTimer(&v9);
    PerfTimer::Start(&v9);
    if (v4 != 6)
    {
      if (v4 == 5)
      {
        [*(this + 2) finishCancelledJob];
      }

      else if (v4 == 4)
      {
        [*(this + 2) finishCompletedJob];
      }

      else
      {
        NSLog(&cfstr_WarningFinishi.isa);
      }
    }

    PerfTimer::End(&v9);
    PVPerfStats::FrameStats::SetValueForIndex(this + 136, 8u, v9._end - v9._start);
    PVPerfStats::FrameStats::MarkEndTimeForIndex((this + 136), 9u);
    if (HGLogger::getLevel("PVSignPost", v5) >= 1)
    {
      kdebug_trace();
    }

    if (this)
    {
      (*(*this + 16))(this);
    }

    v6 = *(this + 2);
    v8 = this;
    (*(*this + 16))(this);
    [v6 renderJobFinished:&v8];
    if (v8)
    {
      (*(*v8 + 24))(v8);
    }

    v7 = *(this + 15);
    HGSynchronizable::Lock(v7);
    PVRenderJob::SetState(this, 7);
    HGSynchronizable::Notify(v7);
    HGSynchronizable::Unlock(v7);
    return (*(*this + 24))(this);
  }

  return result;
}

void PVRenderJob::RenderJobNotification(PVRenderJob *this, HGRenderJob *a2)
{
  v3 = objc_autoreleasePoolPush();
  UserData = HGRenderJob::GetUserData(this);
  State = HGRenderJob::GetState(this);
  if (State <= 1)
  {
    if ((State + 1000) >= 3)
    {
      goto LABEL_19;
    }

    if (*(UserData + 128) == 3)
    {
      PVRenderJob::StopRenderTimer(UserData);
    }

    HGRenderJob::SetNotifyFunc(this, 0);
    v9 = UserData;
    v10 = 6;
    goto LABEL_17;
  }

  if (State > 5)
  {
    if (State != 6)
    {
      if (State != 8)
      {
        goto LABEL_19;
      }

      PVRenderJob::StopRenderTimer(UserData);
      PVRenderJob::SetState(UserData, 4);
      Renderer = HGRenderJob::GetRenderer(this);
      Stats = HGRenderer::GetStats(Renderer, 11);
      PVPerfStats::FrameStats::SetValueForIndex(UserData + 136, 0xAu, Stats);
      v13 = HGRenderJob::GetRenderer(this);
      v14 = (*(*v13 + 112))(v13);
      PVPerfStats::FrameStats::SetValueForIndex(UserData + 136, 6u, v14 / 1000.0);
      goto LABEL_18;
    }

    if (*(UserData + 128) == 3)
    {
      PVRenderJob::StopRenderTimer(UserData);
    }

    HGRenderJob::SetNotifyFunc(this, 0);
    v9 = UserData;
    v10 = 5;
LABEL_17:
    PVRenderJob::SetState(v9, v10);
LABEL_18:
    PVRenderJob::FinishRequest(UserData);
    goto LABEL_19;
  }

  if (State == 2)
  {
    PVRenderJob::StartWaitToRenderTimer(UserData, v6);
  }

  else if (State == 4)
  {
    PVRenderJob::StopWaitToRenderTimer(UserData);
    PVRenderJob::SetupBitmapsOnRenderNodes(UserData, v7);
    PVRenderJob::StartRenderTimer(UserData, v8);
    PVRenderJob::SetState(UserData, 3);
  }

LABEL_19:

  objc_autoreleasePoolPop(v3);
}

void PVRenderJob::StartWaitToRenderTimer(PVRenderJob *this, const char *a2)
{
  if (HGLogger::getLevel("PVSignPost", a2) >= 1)
  {
    if (objc_opt_respondsToSelector())
    {
      [*(this + 2) packedFamilyCode];
    }

    kdebug_trace();
  }

  PerfTimer::Start(this + 15);
}

uint64_t PVRenderJob::StopWaitToRenderTimer(PVRenderJob *this)
{
  PerfTimer::End(this + 15);
  PVPerfStats::FrameStats::SetValueForIndex(this + 136, 3u, *(this + 31) - *(this + 30));
  result = HGLogger::getLevel("PVSignPost", v2);
  if (result >= 1)
  {

    return kdebug_trace();
  }

  return result;
}

void *PVRenderJob::SetupBitmapsOnRenderNodes(PVRenderJob *this, const char *a2)
{
  if (HGLogger::getLevel("PVSignPost", a2) >= 1)
  {
    if (objc_opt_respondsToSelector())
    {
      [*(this + 2) packedFamilyCode];
    }

    kdebug_trace();
  }

  PerfTimer::PerfTimer(&v12);
  PerfTimer::Start(&v12);
  [*(this + 2) setupDestinationBuffers:this + 72 renderContext:HGRenderJob::GetRenderContext(*(this + 13)) frameStats:this + 136];
  PerfTimer::End(&v12);
  PVPerfStats::FrameStats::SetValueForIndex(this + 136, 4u, v12._end - v12._start);
  if (HGLogger::getLevel("PVSignPost", v3) >= 1)
  {
    kdebug_trace();
  }

  result = HGRenderJob::GetRenderNodeList(*(this + 13));
  v5 = result[1] - *result;
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = v5 >> 3;
    if (v8 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    do
    {
      v10 = *(*v6 + 8 * v7);
      v11 = *(*(this + 9) + 8 * v7);
      if (v11)
      {
        (*(*v11 + 16))(v11);
      }

      result = HGRenderNode::SetBitmap(v10, v11);
      if (v11)
      {
        result = (*(*v11 + 24))(v11);
      }

      ++v7;
    }

    while (v9 != v7);
  }

  return result;
}

void sub_25F932214(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

void PVRenderJob::StartRenderTimer(PVRenderJob *this, const char *a2)
{
  if (HGLogger::getLevel("PVSignPost", a2) >= 1)
  {
    if (objc_opt_respondsToSelector())
    {
      [*(this + 2) packedFamilyCode];
    }

    kdebug_trace();
  }

  PerfTimer::Start(this + 16);
}

uint64_t PVRenderJob::StopRenderTimer(PVRenderJob *this)
{
  PerfTimer::End(this + 16);
  PVPerfStats::FrameStats::SetValueForIndex(this + 136, 7u, *(this + 33) - *(this + 32));
  result = HGLogger::getLevel("PVSignPost", v2);
  if (result >= 1)
  {
    HGRenderer::GetStats(*(this + 5), 11);

    return kdebug_trace();
  }

  return result;
}

HGSynchronizable *PVRenderJob::StartHandlingRequest(PVRenderJob *this)
{
  if (PVRenderJob::State(this) == 5)
  {

    return PVRenderJob::FinishRequest(this);
  }

  else
  {
    v3 = HGObject::operator new(0x160uLL);
    HGRenderJob::HGRenderJob(v3);
    HGUserJob::SetPriority(v3, 7);
    HGRenderJob::SetNotifyFunc(v3, PVRenderJob::GraphBuildingJobNotification);
    v4 = [*(this + 2) videoCompositingContext];
    v5 = [v4 renderDevice];

    if (v5 == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2 * (v5 == 0);
    }

    if (objc_opt_respondsToSelector())
    {
      v7 = [*(this + 2) jobPriority];
    }

    else
    {
      v7 = 5;
    }

    if (objc_opt_respondsToSelector())
    {
      v8 = [*(this + 2) graphBuildThreadPriority];
    }

    else
    {
      v8 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v9 = [*(this + 2) renderContextPriority];
    }

    else
    {
      v9 = 5;
    }

    HGRenderJob::SetPriority(v3, v7);
    HGRenderJob::SetGLContextPriority(v3, v9);
    HGUserJob::SetState(v3, v6);
    HGRenderJob::SetUserData(v3, this);
    HGRenderJob::SetUserTag(v3, [*(this + 2) jobTypeTag]);
    HGRenderJob::SetCustomJobThreadPriority(v3, v8);
    HGRenderJob::SetRenderThreadPriority(v3, 0);
    if (PVRenderJob::State(this) == 5)
    {
      result = PVRenderJob::FinishRequest(this);
    }

    else
    {
      v10 = *(this + 14);
      HGSynchronizable::Lock(v10);
      if (PVRenderJob::State(this) != 5)
      {
        v11 = *(this + 13);
        if (v11 != v3)
        {
          if (v11)
          {
            (*(*v11 + 24))(v11);
          }

          *(this + 13) = v3;
          if (v3)
          {
            (*(*v3 + 16))(v3);
          }
        }

        PVRenderManager::EnqueueRenderJob(*(this + 12), this + 13);
      }

      result = HGSynchronizable::Unlock(v10);
    }

    if (v3)
    {
      return (*(*v3 + 24))(v3);
    }
  }

  return result;
}

void sub_25F9325FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

HGSynchronizable *PVRenderJob::WaitForFinish(PVRenderJob *this)
{
  v2 = *(this + 15);
  HGSynchronizable::Lock(v2);
  if (PVRenderJob::State(this) != 7)
  {
    HGSynchronizable::Wait(v2);
  }

  return HGSynchronizable::Unlock(v2);
}

void PVRenderJob::SetJobsRendererParameters(PVRenderJob *this, HGRenderJob *a2)
{
  v19 = [*(this + 2) videoCompositingContext];
  v3 = [v19 concatenationFlag];
  v4 = [v19 renderGraphDumpLevel];
  v5 = [v19 dotGraphLevel];
  v6 = [v19 bufferFormat];
  if (v6 == 28)
  {
    v7 = 3;
  }

  else
  {
    v7 = 1;
  }

  if (v6 == 27)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v19 shaderFormat] != 27;
  HGRenderJob::SetDumpHeliumGraphLevel(a2, v4);
  HGRenderJob::SetDumpHeliumDotGraphLevel(a2, v5);
  HGRenderJob::SetProcessingBufferPrecision(a2, v8);
  HGRenderJob::SetMetalShaderPrecision(a2, v9);
  HGRenderJob::SetGraphConcatenationFlag(a2, v3);
  Renderer = HGRenderJob::GetRenderer(a2);
  if (Renderer)
  {
    v11 = [v19 gpuRenderAPI];
    v12 = [v19 numCPUThreads];
    v13 = [v19 tileSize];
    v14 = [v19 pageSize];
    v15 = [v19 traceGLLevel];
    v16 = [v19 textureBorder];
    v17 = +[PVEnvironment PV_TEXTURE_BORDER_WIDTH];
    if (v11 >= 2)
    {
      NSLog(&cfstr_WarningUnknown.isa, v11);
      v11 = 0;
    }

    (*(*Renderer + 120))(Renderer, 43, v11);
    (*(*Renderer + 120))(Renderer, 5, v12);
    (*(*Renderer + 120))(Renderer, 1, v13);
    (*(*Renderer + 120))(Renderer, 2, v13);
    (*(*Renderer + 120))(Renderer, 29, v15);
    (*(*Renderer + 120))(Renderer, 18, v14);
    if (v16)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    (*(*Renderer + 120))(Renderer, 21, v18);
  }
}

void std::vector<HGRef<HGBitmap>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        std::allocator<HGRef<HGBitmap>>::destroy[abi:ne200100](v1, --v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_25F932B44(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x2666E9F00](v3, 0x10A1C40BBCAB520);

  _Unwind_Resume(a1);
}

void sub_25F932C10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = PVRenderEffectLoader;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_25F932EE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::deque<PVLoadedEffectItem>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  v3 = (*(a1[1] + ((v2 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v2);

  --a1[5];

  return std::deque<PVLoadedEffectItem>::__maybe_remove_back_spare[abi:ne200100](a1, 1);
}

void *std::deque<PVLoadedEffectItem>::erase(int64x2_t *a1, char *a2, uint64_t a3)
{
  v4 = a1[2].u64[0];
  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 >> 8));
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6 + 16 * v4;
  }

  v35 = v6;
  v36 = v7;
  if (a3 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((a3 - *a2) >> 4) + 32 * (a2 - v6) - ((v7 - *v6) >> 4);
  }

  v9 = std::__deque_iterator<PVLoadedEffectItem,PVLoadedEffectItem*,PVLoadedEffectItem&,PVLoadedEffectItem**,long,256l>::operator+[abi:ne200100](&v35, v8);
  v11 = v9;
  v12 = v10;
  v13 = a1[2].i64[1];
  if (v8 <= (v13 - 1) >> 1)
  {
    v18 = (v10 - *v9) >> 4;
    if (v18 < 0)
    {
      v27 = 254 - v18;
      v20 = &v9[-(v27 >> 8)];
      v21 = *v20 + 16 * ~v27;
    }

    else
    {
      v19 = v18 + 1;
      v20 = &v9[v19 >> 8];
      v21 = *v20 + 16 * v19;
    }

    std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<PVLoadedEffectItem,PVLoadedEffectItem*,PVLoadedEffectItem&,PVLoadedEffectItem**,long,256l>,std::__deque_iterator<PVLoadedEffectItem,PVLoadedEffectItem*,PVLoadedEffectItem&,PVLoadedEffectItem**,long,256l>,0>(v35, v36, v9, v10, v20, v21, v37);
    v28 = v36;

    a1[2] = vaddq_s64(a1[2], xmmword_260342880);
    std::deque<PVLoadedEffectItem>::__maybe_remove_front_spare[abi:ne200100](a1, 1);
  }

  else
  {
    v14 = (v10 - *v9) >> 4;
    if (v14 < 0)
    {
      v22 = 254 - v14;
      v16 = &v9[-(v22 >> 8)];
      v17 = &(*v16)[2 * ~v22];
    }

    else
    {
      v15 = v14 + 1;
      v16 = &v9[v15 >> 8];
      v17 = &(*v16)[2 * v15];
    }

    v23 = a1[2].i64[0] + v13;
    v24 = a1->i64[1];
    v25 = (v24 + 8 * (v23 >> 8));
    if (a1[1].i64[0] == v24)
    {
      v26 = 0;
    }

    else
    {
      v26 = &(*v25)[2 * v23];
    }

    v37[0].n128_u64[0] = v11;
    v37[0].n128_u64[1] = v12;
    std::__for_each_segment[abi:ne200100]<std::__deque_iterator<PVLoadedEffectItem,PVLoadedEffectItem*,PVLoadedEffectItem&,PVLoadedEffectItem**,long,256l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<PVLoadedEffectItem,PVLoadedEffectItem*,PVLoadedEffectItem&,PVLoadedEffectItem**,long,256l>,std::__deque_iterator<PVLoadedEffectItem,PVLoadedEffectItem*,PVLoadedEffectItem&,PVLoadedEffectItem**,long,256l>>>(v16, v17, v25, v26, v37);
    v29 = v37[0].n128_u64[1];

    --a1[2].i64[1];
    std::deque<PVLoadedEffectItem>::__maybe_remove_back_spare[abi:ne200100](a1, 1);
  }

  v30 = a1[2].u64[0];
  v31 = a1->i64[1];
  v32 = (v31 + 8 * (v30 >> 8));
  if (a1[1].i64[0] == v31)
  {
    v33 = 0;
  }

  else
  {
    v33 = *v32 + 16 * v30;
  }

  v37[0].n128_u64[0] = v32;
  v37[0].n128_u64[1] = v33;
  return std::__deque_iterator<PVLoadedEffectItem,PVLoadedEffectItem*,PVLoadedEffectItem&,PVLoadedEffectItem**,long,256l>::operator+[abi:ne200100](v37, v8);
}

void *std::__deque_iterator<PVLoadedEffectItem,PVLoadedEffectItem*,PVLoadedEffectItem&,PVLoadedEffectItem**,long,256l>::operator+[abi:ne200100](uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 4);
    if (v4 < 1)
    {
      result -= (255 - v4) >> 8;
    }

    else
    {
      result += v4 >> 8;
    }
  }

  return result;
}

int64x2_t std::deque<PVLoadedEffectItem>::push_front(int64x2_t *a1, id *a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    std::deque<PVLoadedEffectItem>::__add_front_capacity(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 >> 8));
  v7 = *v6 + 16 * v4;
  if (a1[1].i64[0] == v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  if (v8 == *v6)
  {
    v8 = *(v6 - 1) + 4096;
  }

  *(v8 - 16) = *a2;
  *(v8 - 8) = a2[1];
  result = vaddq_s64(a1[2], xmmword_260342890);
  a1[2] = result;
  return result;
}

void PVLoadedEffectItem::PVLoadedEffectItem(PVLoadedEffectItem *this, PVEffect *a2)
{
  v3 = a2;
  *this = v3;
  *(this + 1) = 0;
  v4 = MEMORY[0x277CBEAA8];
  v5 = v3;
  v6 = [v4 date];
  v7 = *(this + 1);
  *(this + 1) = v6;
}

uint64_t std::deque<PVLoadedEffectItem>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 8];
    v7 = *v6 + 16 * v5;
    v8 = *(v2 + (((a1[5] + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + v5);
    if (v7 != v8)
    {
      do
      {

        v9 = *v7;
        v7 += 16;

        if (v7 - *v6 == 4096)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 128;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_16;
    }

    v12 = 256;
  }

  a1[4] = v12;
LABEL_16:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return std::__split_buffer<unsigned long *>::~__split_buffer(a1);
}

uint64_t std::deque<PVLoadedEffectItem>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 32 * (v2 - v3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x100)
  {
    a2 = 1;
  }

  if (v5 < 0x200)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

uint64_t std::deque<PVLoadedEffectItem>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x100)
  {
    a2 = 1;
  }

  if (v2 < 0x200)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 256;
  }

  return v4 ^ 1u;
}

__n128 std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<PVLoadedEffectItem,PVLoadedEffectItem*,PVLoadedEffectItem&,PVLoadedEffectItem**,long,256l>,std::__deque_iterator<PVLoadedEffectItem,PVLoadedEffectItem*,PVLoadedEffectItem&,PVLoadedEffectItem**,long,256l>,0>@<Q0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X4>, void *a5@<X5>, uint64_t a6@<X6>, __n128 *a7@<X8>)
{
  if (a1 == a3)
  {
    v11 = a2;
    v12 = a4;
    v13 = a5;
    v14 = a6;
  }

  else
  {
    v17 = a3 - 1;
    v16 = *a3;
    v18 = a4;
    v13 = a5;
    v14 = a6;
    while (1)
    {
      std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<PVLoadedEffectItem *,std::__deque_iterator<PVLoadedEffectItem,PVLoadedEffectItem *,PVLoadedEffectItem&,PVLoadedEffectItem **,long,256l>,0>(v16, v18, v13, v14, &v21);
      v14 = v22.n128_i64[1];
      v13 = v22.n128_u64[0];
      if (v17 == a1)
      {
        break;
      }

      v19 = *v17--;
      v16 = v19;
      v18 = v19 + 4096;
    }

    v12 = *v17 + 4096;
    v11 = a2;
  }

  std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<PVLoadedEffectItem *,std::__deque_iterator<PVLoadedEffectItem,PVLoadedEffectItem *,PVLoadedEffectItem&,PVLoadedEffectItem **,long,256l>,0>(v11, v12, v13, v14, &v21);
  result = v22;
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<PVLoadedEffectItem *,std::__deque_iterator<PVLoadedEffectItem,PVLoadedEffectItem *,PVLoadedEffectItem&,PVLoadedEffectItem **,long,256l>,0>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v5 = a3;
  if (a1 == a2)
  {
    v8 = a1;
  }

  else
  {
    v8 = a2;
    v9 = a4 - *a3;
    if ((a2 - a1) >> 4 >= v9 >> 4)
    {
      v10 = v9 >> 4;
    }

    else
    {
      v10 = (a2 - a1) >> 4;
    }

    v11 = a2 - 16 * v10;
    result = std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<PVLoadedEffectItem *,PVLoadedEffectItem *,PVLoadedEffectItem *>(&v19, v11, a2, a4);
    if (v11 != a1)
    {
      do
      {
        v15 = *--v5;
        v14 = v15;
        v16 = (v11 - a1) >> 4;
        if (v16 >= 256)
        {
          v16 = 256;
        }

        v17 = v11 - 16 * v16;
        result = std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<PVLoadedEffectItem *,PVLoadedEffectItem *,PVLoadedEffectItem *>(&v19, v17, v11, v14 + 4096);
        v11 = v17;
      }

      while (v17 != a1);
    }

    a4 = v13;
    if (*v5 + 4096 == v13)
    {
      v18 = v5[1];
      ++v5;
      a4 = v18;
    }
  }

  *a5 = v8;
  a5[1] = v5;
  a5[2] = a4;
  return result;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<PVLoadedEffectItem *,PVLoadedEffectItem *,PVLoadedEffectItem *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(v7 - 16);
      v7 -= 16;
      objc_storeStrong((a4 - 16), v8);
      objc_storeStrong((a4 - 8), *(v7 + 8));
      a4 -= 16;
    }

    while (v7 != a2);
  }

  return a3;
}

double std::__for_each_segment[abi:ne200100]<std::__deque_iterator<PVLoadedEffectItem,PVLoadedEffectItem*,PVLoadedEffectItem&,PVLoadedEffectItem**,long,256l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<PVLoadedEffectItem,PVLoadedEffectItem*,PVLoadedEffectItem&,PVLoadedEffectItem**,long,256l>,std::__deque_iterator<PVLoadedEffectItem,PVLoadedEffectItem*,PVLoadedEffectItem&,PVLoadedEffectItem**,long,256l>>>(id **a1, id *a2, id **a3, id *a4, id **a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = a5[1];
  }

  else
  {
    v10 = a1 + 1;
    v7 = *a5;
    v8 = a5[1];
    for (i = *a1 + 512; ; i = v12 + 512)
    {
      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<PVLoadedEffectItem *,std::__deque_iterator<PVLoadedEffectItem,PVLoadedEffectItem *,PVLoadedEffectItem&,PVLoadedEffectItem **,long,256l>,0>(v8, a2, i, v7, &v14);
      v8 = *(&v15 + 1);
      v7 = v15;
      *a5 = v15;
      a5[1] = v8;
      if (v10 == a3)
      {
        break;
      }

      v12 = *v10++;
      a2 = v12;
    }

    a2 = *v10;
  }

  std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<PVLoadedEffectItem *,std::__deque_iterator<PVLoadedEffectItem,PVLoadedEffectItem *,PVLoadedEffectItem&,PVLoadedEffectItem **,long,256l>,0>(v8, a2, a4, v7, &v14);
  result = *&v15;
  *a5 = v15;
  return result;
}

void std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<PVLoadedEffectItem *,std::__deque_iterator<PVLoadedEffectItem,PVLoadedEffectItem *,PVLoadedEffectItem&,PVLoadedEffectItem **,long,256l>,0>(id *location@<X4>, id *a2@<X1>, id *a3@<X2>, id *a4@<X3>, id **a5@<X8>)
{
  v5 = a4;
  i = a2;
  if (a2 != a3)
  {
    v9 = *a4 - location + 4096;
    if ((a3 - a2) >> 4 >= v9 >> 4)
    {
      v10 = v9 >> 4;
    }

    else
    {
      v10 = (a3 - a2) >> 4;
    }

    for (i = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<PVLoadedEffectItem *,PVLoadedEffectItem *,PVLoadedEffectItem *>(&v16, a2, &a2[2 * v10], location); i != a3; i = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<PVLoadedEffectItem *,PVLoadedEffectItem *,PVLoadedEffectItem *>(&v16, i, &i[2 * v14], v12))
    {
      v13 = v5[1];
      ++v5;
      v12 = v13;
      v14 = (a3 - i) >> 4;
      if (v14 >= 256)
      {
        v14 = 256;
      }
    }

    location = v11;
    if (*v5 + 4096 == v11)
    {
      v15 = v5[1];
      ++v5;
      location = v15;
    }
  }

  *a5 = i;
  a5[1] = v5;
  a5[2] = location;
}

id *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<PVLoadedEffectItem *,PVLoadedEffectItem *,PVLoadedEffectItem *>(int a1, id *a2, id *a3, id *location)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    objc_storeStrong(location, *v5);
    objc_storeStrong(location + 1, v5[1]);
    v5 += 2;
    location += 2;
  }

  while (v5 != v6);
  return v6;
}

void *std::__find_segment_if[abi:ne200100]<std::__deque_iterator<PVLoadedEffectItem,PVLoadedEffectItem*,PVLoadedEffectItem&,PVLoadedEffectItem**,long,256l>,std::__find_segment<PVLoadedEffectItem>,std::__identity>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  if (a1 == a3)
  {
    if (a2 != a4)
    {
      while (*a2 != *a5)
      {
        a2 += 2;
        if (a2 == a4)
        {
          a2 = a4;
          break;
        }
      }
    }

    if (a1)
    {
      if ((*a1 + 4096) == a2)
      {
        ++a1;
      }

      return a1;
    }

    return 0;
  }

  else
  {
    v5 = *a1 + 4096;
    if (v5 == a2)
    {
      goto LABEL_20;
    }

    while (*a2 != *a5)
    {
      a2 += 2;
      if (a2 == v5)
      {
        goto LABEL_20;
      }
    }

    if (a2 != v5)
    {
      return a1;
    }

LABEL_20:
    while (1)
    {
      v7 = a1[1];
      if (a1 + 1 == a3)
      {
        break;
      }

      v6 = 0;
      ++a1;
      do
      {
        if (v7[v6] == *a5)
        {
          break;
        }

        v6 += 2;
      }

      while (v6 != 512);
      if (v6 != 512)
      {
        return a1;
      }
    }

    if (v7 != a4)
    {
      v8 = 0;
      v9 = a1[1];
      do
      {
        if (*v9 == *a5)
        {
          break;
        }

        v8 += 16;
        v9 += 2;
      }

      while (v9 != a4);
      if (v8 == 4096)
      {
        a1 += 2;
        return a1;
      }
    }
  }

  return a3;
}

const void **std::deque<PVLoadedEffectItem>::__add_front_capacity(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 32 * (v2 - v1) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x100)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(a1, v10);
  }

  *(a1 + 32) = v5 + 256;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return std::__split_buffer<PVLoadedEffectItem *>::emplace_front<PVLoadedEffectItem *&>(a1, v11);
}

void sub_25F934380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **std::__split_buffer<PVLoadedEffectItem *>::emplace_front<PVLoadedEffectItem *&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<PVLoadedEffectItem *>::emplace_back<PVLoadedEffectItem *>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void sub_25F93713C(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x2666E9F00](v3, 0x10A1C40BBCAB520);

  _Unwind_Resume(a1);
}

uint64_t pv_buffer_size_for_string_representation(PVCGPointQuad *a1, int a2)
{
  b = a1->b;
  v5.a = a1->a;
  v5.b = b;
  d = a1->d;
  v5.c = a1->c;
  v5.d = d;
  return pv_get_string_representation(&v5, 0, 0, a2) + 1;
}

uint64_t pv_get_string_representation(PVCGPointQuad *a1, char *a2, uint64_t a3, int a4)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = *"";
  v14 = ___Z28pv_get_string_representation13PVCGPointQuadPcmj_block_invoke;
  v15 = &unk_279AA55A0;
  v18 = a2;
  v19 = a3;
  v16 = v21;
  v17 = &v22;
  v20 = a4;
  c = a1->c;
  a = a1->a;
  d = a1->d;
  b = a1->b;
  v4 = v13;
  v5 = 0;
  do
  {
    if (v5 > 1)
    {
      v6 = c;
      if (v5 != 2)
      {
        v6 = d;
      }
    }

    else
    {
      v6 = a;
      if (v5)
      {
        v6 = b;
      }
    }

    (v14)(v4, v5, v6, v6.n128_f64[1]);
    v5 = (v5 + 1);
  }

  while (v5 != 4);

  v7 = *(v23 + 6);
  _Block_object_dispose(v21, 8);
  _Block_object_dispose(&v22, 8);
  return v7;
}

void sub_25F9375E0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 96), 8);
  _Block_object_dispose((v1 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t ___Z28pv_get_string_representation13PVCGPointQuadPcmj_block_invoke(uint64_t a1, unsigned int a2, double a3, double a4)
{
  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = *(*(*(a1 + 32) + 8) + 24);
    v8 = (v6 + v7);
    v9 = *(a1 + 56) - v7;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = snprintf(v8, v9, "%s: (", pv_get_string_representation[a2]);
  v11 = *(a1 + 48);
  *(*(*(a1 + 40) + 8) + 24) += v10;
  *(*(*(a1 + 32) + 8) + 24) += v10;
  v12.n128_f64[0] = a3;
  v12.n128_f64[1] = a4;
  if (v11)
  {
    v13 = *(*(*(a1 + 32) + 8) + 24);
    v14 = (v11 + v13);
    v15 = *(a1 + 56) - v13;
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  string_representation = pv_get_string_representation(v14, v15, *(a1 + 64), v12);
  v17 = *(a1 + 48);
  *(*(*(a1 + 40) + 8) + 24) += string_representation;
  *(*(*(a1 + 32) + 8) + 24) += string_representation;
  if (v17)
  {
    v18 = *(*(*(a1 + 32) + 8) + 24);
    v19 = (v17 + v18);
    v20 = *(a1 + 56) - v18;
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  result = snprintf(v19, v20, ")");
  *(*(*(a1 + 40) + 8) + 24) += result;
  *(*(*(a1 + 32) + 8) + 24) += result;
  if (a2 <= 2)
  {
    v22 = *(a1 + 48);
    if (v22)
    {
      v23 = *(*(*(a1 + 32) + 8) + 24);
      v24 = (v22 + v23);
      v25 = *(a1 + 56) - v23;
    }

    else
    {
      v25 = 0;
      v24 = 0;
    }

    result = snprintf(v24, v25, "\n");
    *(*(*(a1 + 40) + 8) + 24) += result;
    *(*(*(a1 + 32) + 8) + 24) += result;
  }

  return result;
}

CGFloat PVCGPointQuad_get_point_at_index(PVCGPointQuad *a1, int a2)
{
  p_b = MEMORY[0x277CBF348];
  p_c = &a1->c;
  p_d = &a1->d;
  if (a2 != 3)
  {
    p_d = MEMORY[0x277CBF348];
  }

  if (a2 != 2)
  {
    p_c = p_d;
  }

  if (a2 == 1)
  {
    p_b = &a1->b;
  }

  if (!a2)
  {
    p_b = a1;
  }

  if (a2 > 1)
  {
    p_b = p_c;
  }

  return p_b->a.x;
}

CGFloat *PVCGPointQuad_set_point_at_index(CGFloat *result, CGPoint a2, int a3)
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v3 = result + 4;
      v4 = 5;
      goto LABEL_11;
    }

    if (a3 == 3)
    {
      v3 = result + 6;
      v4 = 7;
      goto LABEL_11;
    }
  }

  else
  {
    if (!a3)
    {
      v4 = 1;
      v3 = result;
      goto LABEL_11;
    }

    if (a3 == 1)
    {
      v3 = result + 2;
      v4 = 3;
LABEL_11:
      *v3 = a2.x;
      result[v4] = a2.y;
    }
  }

  return result;
}

BOOL pv_almost_equal(PVCGPointQuad *a1, PVCGPointQuad *a2, double a3)
{
  v3 = 0;
  a = a1->a;
  v5 = a2->a;
  v6 = 1;
  while (1)
  {
    v7 = v6;
    v35 = a;
    v8 = *(&v35 & 0xFFFFFFFFFFFFFFF7 | (8 * (v3 & 1)));
    v34 = v5;
    if (vabdd_f64(v8, *(&v34 & 0xFFFFFFFFFFFFFFF7 | (8 * (v3 & 1)))) >= a3)
    {
      break;
    }

    v6 = 0;
    v3 = 1;
    if ((v7 & 1) == 0)
    {
      v9 = 0;
      b = a1->b;
      v11 = a2->b;
      v12 = 1;
      while (1)
      {
        v13 = v12;
        v33 = b;
        v14 = *(&v33 & 0xFFFFFFFFFFFFFFF7 | (8 * (v9 & 1)));
        v32 = v11;
        if (vabdd_f64(v14, *(&v32 & 0xFFFFFFFFFFFFFFF7 | (8 * (v9 & 1)))) >= a3)
        {
          break;
        }

        v12 = 0;
        v9 = 1;
        if ((v13 & 1) == 0)
        {
          v15 = 0;
          c = a1->c;
          v17 = a2->c;
          v18 = 1;
          while (1)
          {
            v19 = v18;
            v31 = c;
            v20 = *(&v31 & 0xFFFFFFFFFFFFFFF7 | (8 * (v15 & 1)));
            v30 = v17;
            if (vabdd_f64(v20, *(&v30 & 0xFFFFFFFFFFFFFFF7 | (8 * (v15 & 1)))) >= a3)
            {
              break;
            }

            v18 = 0;
            v15 = 1;
            if ((v19 & 1) == 0)
            {
              v21 = 0;
              d = a1->d;
              v23 = a2->d;
              v24 = 1;
              do
              {
                v29 = d;
                v25 = *(&v29 & 0xFFFFFFFFFFFFFFF7 | (8 * (v21 & 1)));
                v28 = v23;
                v26 = vabdd_f64(v25, *(&v28 & 0xFFFFFFFFFFFFFFF7 | (8 * (v21 & 1))));
                result = v26 < a3;
                if ((v24 & 1) == 0)
                {
                  break;
                }

                v24 = 0;
                v21 = 1;
              }

              while (v26 < a3);
              return result;
            }
          }

          return 0;
        }
      }

      return 0;
    }
  }

  return 0;
}

id PVCGPointQuad_to_NSArray(PVCGPointQuad *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  c = a1->c;
  a = a1->a;
  d = a1->d;
  b = a1->b;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = *"";
  v11 = ___ZL22PVCGPointQuad_to_array13PVCGPointQuadP7CGPoint_block_invoke;
  v12 = &__block_descriptor_40_e22_v28__0_CGPoint_dd_8I24l;
  v13 = v14;
  v1 = v10;
  v2 = 0;
  do
  {
    if (v2 > 1)
    {
      v3 = c;
      if (v2 != 2)
      {
        v3 = d;
      }
    }

    else
    {
      v3 = a;
      if (v2)
      {
        v3 = b;
      }
    }

    (v11)(v1, v2, v3, v3.n128_f64[1]);
    v2 = (v2 + 1);
  }

  while (v2 != 4);

  v4 = pv_CGPoint_array_to_NSArray(v14, 4u);

  return v4;
}

BOOL pv_is_finite(PVCGPointQuad *a1)
{
  if (!pv_is_finite(a1->a) || !pv_is_finite(a1->b) || !pv_is_finite(a1->c))
  {
    return 0;
  }

  d = a1->d;

  return pv_is_finite(d);
}

void *PVCGPointQuad_from_CGRect@<X0>(CGRect a1@<0:D0, 8:D1, 16:D2, 24:D3>, _OWORD *a2@<X8>)
{
  v2 = 0;
  v11[7] = *MEMORY[0x277D85DE8];
  v3 = v11;
  x = a1.origin.x;
  v11[0] = *&a1.origin.y;
  *&v11[1] = a1.origin.x + a1.size.width;
  v11[2] = *&a1.origin.y;
  v4 = a1.origin.y + a1.size.height;
  *&v11[3] = a1.origin.x + a1.size.width;
  *&v11[4] = v4;
  a2[3] = 0u;
  a2[2] = 0u;
  a2[1] = 0u;
  v11[5] = *&a1.origin.x;
  *&v11[6] = v4;
  *a2 = 0u;
  do
  {
    v5 = *v3;
    if (v2 == 2)
    {
      result = a2 + 2;
    }

    else
    {
      result = a2 + 3;
    }

    if (v2 == 2)
    {
      v7 = 40;
    }

    else
    {
      v7 = 56;
    }

    if (v2)
    {
      v8 = a2 + 1;
    }

    else
    {
      v8 = a2;
    }

    if (v2)
    {
      v9 = 24;
    }

    else
    {
      v9 = 8;
    }

    if (v2 <= 1)
    {
      result = v8;
      v7 = v9;
    }

    *result = *(v3 - 1);
    *(a2 + v7) = v5;
    ++v2;
    v3 += 2;
  }

  while (v2 != 4);
  return result;
}

uint64_t pv_is_CGPoint_in_quad(CGPoint a1, PVCGPointQuad *a2)
{
  y = a1.y;
  x = a1.x;
  v27 = *MEMORY[0x277D85DE8];
  c = a2->c;
  a = a2->a;
  d = a2->d;
  b = a2->b;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = *"";
  v22 = ___ZL22PVCGPointQuad_to_array13PVCGPointQuadP7CGPoint_block_invoke;
  v23 = &__block_descriptor_40_e22_v28__0_CGPoint_dd_8I24l;
  v24 = v25;
  v4 = v21;
  v5 = 0;
  do
  {
    if (v5 > 1)
    {
      v6 = c;
      if (v5 != 2)
      {
        v6 = d;
      }
    }

    else
    {
      v6 = a;
      if (v5)
      {
        v6 = b;
      }
    }

    (v22)(v4, v5, v6, v6.n128_f64[1]);
    v5 = (v5 + 1);
  }

  while (v5 != 4);

  v7 = 0;
  v8 = 0;
  v9 = v26;
  LODWORD(v10) = 3;
  do
  {
    v11 = v10;
    v10 = v7;
    v12 = *v9;
    v13 = *&v26[v11];
    v14 = *v9 <= y && y < v13;
    if (v14 || (y < v12 ? (v15 = v13 > y) : (v15 = 1), !v15))
    {
      if (x < *(v9 - 1) + (y - v12) * (*&v25[16 * v11] - *(v9 - 1)) / (*&v26[v11] - v12))
      {
        v8 ^= 1u;
      }
    }

    ++v7;
    v9 += 2;
  }

  while (v10 != 3);
  return v8 & 1;
}

void pv_bounding_CGRect(PVCGPointQuad *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  c = a1->c;
  a = a1->a;
  d = a1->d;
  b = a1->b;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = *"";
  v16 = ___ZL22PVCGPointQuad_to_array13PVCGPointQuadP7CGPoint_block_invoke;
  v17 = &__block_descriptor_40_e22_v28__0_CGPoint_dd_8I24l;
  v18 = v19;
  v1 = v15;
  v2 = 0;
  do
  {
    if (v2 > 1)
    {
      v3 = c;
      if (v2 != 2)
      {
        v3 = d;
      }
    }

    else
    {
      v3 = a;
      if (v2)
      {
        v3 = b;
      }
    }

    (v16)(v1, v2, v3, v3.n128_f64[1]);
    v2 = (v2 + 1);
  }

  while (v2 != 4);

  v4 = 0;
  v5 = -1.79769313e308;
  v6 = 1.79769313e308;
  v7 = 1.79769313e308;
  v8 = -1.79769313e308;
  do
  {
    v9 = *&v19[v4];
    v10 = *&v19[v4 + 8];
    if (v9 < v6)
    {
      v6 = *&v19[v4];
    }

    if (v9 > v5)
    {
      v5 = *&v19[v4];
    }

    if (v10 > v8)
    {
      v8 = *&v19[v4 + 8];
    }

    if (v10 < v7)
    {
      v7 = *&v19[v4 + 8];
    }

    v4 += 16;
  }

  while (v4 != 64);
}

double pv_CGPoint_get_quad_center(PVCGPointQuad *a1)
{
  a = a1->a;
  b = a1->b;
  c = a1->c;
  d = a1->d;
  v8 = 0uLL;
  v6 = c;
  v7 = a;
  if (pv_simd_line_intersection(&v8, a, c, b, d))
  {
    return v8.f64[0];
  }

  else
  {
    return pv_simd_lerp(v7, v6, 0.5);
  }
}

void pv_transform_PVCGPointQuad_between_coordinate_systems(__n128 *a1@<X0>, int a2@<W1>, int a3@<W2>, _OWORD *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v37 = 0;
  v38 = &v37;
  v39 = 0x6010000000;
  v40 = &unk_260C3B1FE;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = *"";
  v9 = a1[1];
  v27 = *a1;
  v11 = *a1;
  v10 = a1[1];
  v28 = v9;
  v12 = a1[3];
  v20 = v10;
  v29 = a1[2];
  v21 = a1[2];
  v22 = v11;
  v30 = v12;
  v31 = a5;
  v32 = a6;
  v24 = ___Z53pv_transform_PVCGPointQuad_between_coordinate_systems13PVCGPointQuad6CGSize25_PVCoordinateSystemOriginS0_S1__block_invoke;
  v25 = &unk_279AA55C8;
  v33 = a7;
  v34 = a8;
  v35 = a2;
  v36 = a3;
  v26 = &v37;
  v19 = a1[3];
  v13 = v23;
  v14 = 0;
  do
  {
    if (v14 > 1)
    {
      v15 = v21;
      if (v14 != 2)
      {
        v15 = v19;
      }
    }

    else
    {
      v15 = v22;
      if (v14)
      {
        v15 = v20;
      }
    }

    (v24)(v13, v14, v15, v15.n128_f64[1]);
    v14 = (v14 + 1);
  }

  while (v14 != 4);

  v16 = v38;
  v17 = *(v38 + 3);
  *a4 = *(v38 + 2);
  a4[1] = v17;
  v18 = *(v16 + 5);
  a4[2] = *(v16 + 4);
  a4[3] = v18;
  _Block_object_dispose(&v37, 8);
}

CGAffineTransform *___Z53pv_transform_PVCGPointQuad_between_coordinate_systems13PVCGPointQuad6CGSize25_PVCoordinateSystemOriginS0_S1__block_invoke(uint64_t a1, int a2)
{
  v4 = *MEMORY[0x277CBF348];
  v5 = *(MEMORY[0x277CBF348] + 8);
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v8 = (a1 + 80);
      v9 = (a1 + 72);
    }

    else
    {
      v6 = *MEMORY[0x277CBF348];
      v7 = *(MEMORY[0x277CBF348] + 8);
      if (a2 != 3)
      {
        goto LABEL_11;
      }

      v8 = (a1 + 96);
      v9 = (a1 + 88);
    }
  }

  else if (a2)
  {
    v6 = *MEMORY[0x277CBF348];
    v7 = *(MEMORY[0x277CBF348] + 8);
    if (a2 != 1)
    {
      goto LABEL_11;
    }

    v8 = (a1 + 64);
    v9 = (a1 + 56);
  }

  else
  {
    v9 = (a1 + 40);
    v8 = (a1 + 48);
  }

  v7 = *v8;
  v6 = *v9;
LABEL_11:
  v11 = *(a1 + 136);
  v10 = *(a1 + 140);
  v13 = *(a1 + 104);
  v12 = *(a1 + 112);
  v15 = *(a1 + 120);
  v14 = *(a1 + 128);
  if (v11 == 2)
  {
    if (!v10)
    {
      v5 = v12 * 0.5;
      v4 = v13 * 0.5;
    }

    v25 = v10 == 1;
    if (v10 == 1)
    {
      v26 = v12 * 0.5;
    }

    else
    {
      v26 = v5;
    }

    if (v10 == 1)
    {
      v27 = v13 * 0.5;
    }

    else
    {
      v27 = v4;
    }
  }

  else
  {
    v16 = v13 * -0.5;
    v17 = v12 * 0.5;
    if (v10)
    {
      v18 = *(MEMORY[0x277CBF348] + 8);
    }

    else
    {
      v18 = *(a1 + 112);
    }

    v19 = v10 == 2 || v10 == 0;
    if (v10 == 2)
    {
      v20 = v13 * -0.5;
    }

    else
    {
      v17 = v18;
      v20 = *MEMORY[0x277CBF348];
    }

    v21 = v12 * -0.5;
    if (v10 == 1)
    {
      v22 = *(a1 + 112);
    }

    else
    {
      v22 = *(MEMORY[0x277CBF348] + 8);
    }

    v23 = v10 == 2;
    v24 = v10 != 2 && v10 == 1;
    if (!v23)
    {
      v21 = v22;
      v16 = *MEMORY[0x277CBF348];
    }

    if (v11)
    {
      v24 = 0;
    }

    else
    {
      v5 = v21;
    }

    if (!v11)
    {
      v4 = v16;
    }

    if (v11 == 1)
    {
      v25 = v19;
    }

    else
    {
      v25 = v24;
    }

    if (v11 == 1)
    {
      v26 = v17;
    }

    else
    {
      v26 = v5;
    }

    if (v11 == 1)
    {
      v27 = v20;
    }

    else
    {
      v27 = v4;
    }
  }

  memset(&v34, 0, sizeof(v34));
  CGAffineTransformMakeScale(&v34, v15 / v13, v14 / v12);
  v35 = v34;
  result = CGAffineTransformTranslate(&v36, &v35, v27, v26);
  v34 = v36;
  if (v25)
  {
    v35 = v34;
    result = CGAffineTransformScale(&v36, &v35, 1.0, -1.0);
    v34 = v36;
  }

  v29 = *(*(a1 + 32) + 8);
  v30 = v29 + 4;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v31 = v29 + 8;
      v32 = 5;
    }

    else
    {
      if (a2 != 3)
      {
        return result;
      }

      v31 = v29 + 10;
      v32 = 7;
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v31 = v29 + 6;
    v32 = 3;
  }

  else
  {
    v32 = 1;
    v31 = v29 + 4;
  }

  v33 = v34.ty + v6 * v34.b + v7 * v34.d;
  *v31 = v34.tx + v6 * v34.a + v7 * v34.c;
  v30[v32] = v33;
  return result;
}

void PVCGPointQuad_scale(PVCGPointQuad *a1@<X0>, CGPoint a2@<0:D0, 8:D1>, _OWORD *a3@<X8>)
{
  y = a2.y;
  x = a2.x;
  v34 = 0x6010000000;
  b = a1->b;
  a = a1->a;
  v37 = b;
  d = a1->d;
  v10 = a1->a;
  v9 = a1->b;
  c = a1->c;
  v39 = d;
  v32 = 0;
  v33 = &v32;
  v35 = &unk_260C3B1FE;
  v31.a = v10;
  v31.b = v9;
  v11 = a1->d;
  v31.c = a1->c;
  v31.d = v11;
  *&v12 = pv_CGPoint_get_quad_center(&v31);
  *(&v12 + 1) = v13;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = *"";
  v25 = ___Z19PVCGPointQuad_scale13PVCGPointQuad7CGPoint_block_invoke;
  v26 = &unk_279AA55F0;
  v27 = v12;
  v29 = x;
  v30 = y;
  v28 = &v32;
  v22 = a1->c;
  v23 = a1->a;
  v20 = a1->d;
  v21 = a1->b;
  v14 = v24;
  v15 = 0;
  do
  {
    if (v15 > 1)
    {
      v16 = v22;
      if (v15 != 2)
      {
        v16 = v20;
      }
    }

    else
    {
      v16 = v23;
      if (v15)
      {
        v16 = v21;
      }
    }

    v25(v14, v15, v16, v16.n128_f64[1]);
    v15 = (v15 + 1);
  }

  while (v15 != 4);

  v17 = v33;
  v18 = *(v33 + 3);
  *a3 = *(v33 + 2);
  a3[1] = v18;
  v19 = *(v17 + 5);
  a3[2] = *(v17 + 4);
  a3[3] = v19;
  _Block_object_dispose(&v32, 8);
}

float64x2_t ___Z19PVCGPointQuad_scale13PVCGPointQuad7CGPoint_block_invoke(uint64_t a1, int a2, float64x2_t result, float64_t a4)
{
  v4 = *(*(a1 + 48) + 8);
  v5 = v4 + 4;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v6 = v4 + 8;
      v7 = 5;
    }

    else
    {
      if (a2 != 3)
      {
        return result;
      }

      v6 = v4 + 10;
      v7 = 7;
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v6 = v4 + 6;
    v7 = 3;
  }

  else
  {
    v7 = 1;
    v6 = v4 + 4;
  }

  result.f64[1] = a4;
  result = vaddq_f64(*(a1 + 32), vmulq_f64(vsubq_f64(result, *(a1 + 32)), *(a1 + 56)));
  *v6 = result.f64[0];
  v5[v7] = result.f64[1];
  return result;
}

uint64_t ___ZL22PVCGPointQuad_to_array13PVCGPointQuadP7CGPoint_block_invoke(uint64_t result, unsigned int a2, double a3, double a4)
{
  v4 = (*(result + 32) + 16 * a2);
  *v4 = a3;
  v4[1] = a4;
  return result;
}

void sub_25F938988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_25F938B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_25F938D94(_Unwind_Exception *a1)
{
  v4 = v3;
  MEMORY[0x2666E9F00](v4, 0x10A1C40BBCAB520);

  _Unwind_Resume(a1);
}

void sub_25F939770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (a2)
  {
    (*(*a2 + 24))(a2);
  }

  if (a3)
  {
    (*(*a3 + 24))(a3);
  }

  HGSynchronizer::~HGSynchronizer(va);

  _Unwind_Resume(a1);
}

void sub_25F939890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, HGSynchronizable *a11)
{
  HGSynchronizer::~HGSynchronizer(&a11);

  _Unwind_Resume(a1);
}

void sub_25F939A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25F939D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = PVLivePlayerAVAssetSource;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_25F93A8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37)
{
  _Block_object_dispose((v43 - 144), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *PVDocumentAccessController::INSTANCE(PVDocumentAccessController *this)
{
  {
    PVDocumentAccessController::PVDocumentAccessController(&PVDocumentAccessController::INSTANCE(void)::s_docAccessCtl);
    __cxa_atexit(PVDocumentAccessController::~PVDocumentAccessController, &PVDocumentAccessController::INSTANCE(void)::s_docAccessCtl, &dword_25F8F0000);
  }

  return &PVDocumentAccessController::INSTANCE(void)::s_docAccessCtl;
}

void PVDocumentAccessController::PVDocumentAccessController(PVDocumentAccessController *this)
{
  *this = 0;
  v2 = HGObject::operator new(0x2F0uLL);
  HGRenderQueue::HGRenderQueue(v2);
  v3 = *this;
  if (*this == v2)
  {
    if (v2)
    {
      (*(*v2 + 24))(v2);
      v3 = *this;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 24))(v3);
    }

    *this = v2;
    v3 = v2;
  }

  HGRenderQueue::SetRunMode(v3, 0);
  HGRenderQueue::SetSerializeRendersFlag(*this, 1);
  HGRenderQueue::SetNumGPUReadbackExecUnitsPerGPURenderer(*this, 0);
  HGRenderQueue::SetNumPBOsPerGPUReadbackExecUnit(*this, 0);
  HGRenderQueue::SetGPUReadbackQueueThrottleSize(*this, 0);
  HGRenderQueue::SetSerializeGPUReadbacksFlag(*this, 1);
  HGRenderQueue::SetPreferredResource(*this, 0);
  HGRenderQueue::SetDebugQueueVerboseMask(*this, 0);
  v4 = HGObject::operator new(0xB0uLL);
  HGCPURenderContext::HGCPURenderContext(v4);
  HGRenderQueue::AddRenderContext(*this, v4);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  HGRenderQueue::Start(*this);
}

void sub_25F93B244(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  if (*v1)
  {
    (*(**v1 + 24))(*v1);
  }

  _Unwind_Resume(exception_object);
}

void PVDocumentAccessController::~PVDocumentAccessController(HGRenderQueue **this)
{
  HGRenderQueue::CancelAllRenderJobs(*this, 1);
  HGRenderQueue::Drain(*this);
  HGRenderQueue::Shutdown(*this);
  if (*this)
  {
    (*(**this + 24))(*this);
  }
}

HGSynchronizable *DocumentAccessJob::Wait(DocumentAccessJob *this)
{
  v2 = *(this + 37);
  HGSynchronizable::Lock(v2);
  if ((*(this + 352) & 1) == 0)
  {
    HGSynchronizable::Wait(v2);
  }

  return HGSynchronizable::Unlock(v2);
}

void PVDocumentAccessController::LoadEffectDocument(PVDocumentAccessController *this, PVMotionEffect *a2)
{
  v3 = a2;
  v2 = HGObject::operator new(0x168uLL);
  LoadEffectJob::LoadEffectJob(v2, v3);
}

void sub_25F93B63C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  (*(*v10 + 24))(v10);

  _Unwind_Resume(a1);
}

void sub_25F93B748(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25F93B844(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x2666E9F00](v3, 0x10A1C40BBCAB520);
  HGRenderJob::~HGRenderJob(v1);
  _Unwind_Resume(a1);
}

void PVDocumentAccessControllerNotificationFunc(HGRenderJob *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (HGRenderJob::GetState(a1) == 4)
  {
    (*(*a1 + 40))(a1);
    DocumentAccessJob::SignalComplete(a1);
  }

  objc_autoreleasePoolPop(v2);
}

void DocumentAccessJob::~DocumentAccessJob(HGRenderJob *this)
{
  *this = &unk_2871CDF38;
  v2 = *(this + 37);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    *(this + 37) = 0;
  }

  HGRenderJob::~HGRenderJob(this);
}

HGSynchronizable *DocumentAccessJob::SignalComplete(DocumentAccessJob *this)
{
  v2 = *(this + 37);
  HGSynchronizable::Lock(v2);
  *(this + 352) = 1;
  HGSynchronizable::Notify(v2);
  return HGSynchronizable::Unlock(v2);
}

void sub_25F93BA60(_Unwind_Exception *a1)
{
  DocumentAccessJob::~DocumentAccessJob(v2);

  _Unwind_Resume(a1);
}

void LoadEffectJob::RunJob(HGRenderJob *this)
{
  v1 = HGRenderJob::GetUserData(this);
  [v1 loadEffectInternal_NoLock];
}

void ReleaseDocumentJob::RunJob(HGRenderJob *this)
{
  UserData = HGRenderJob::GetUserData(this);

  OZXFreeDocument(UserData, 1);
}

void InitializeMotionJob::~InitializeMotionJob(HGRenderJob *this)
{
  DocumentAccessJob::~DocumentAccessJob(this);

  HGObject::operator delete(v1);
}

void LoadEffectJob::~LoadEffectJob(HGRenderJob *this)
{
  DocumentAccessJob::~DocumentAccessJob(this);

  HGObject::operator delete(v1);
}

void ReleaseDocumentJob::~ReleaseDocumentJob(HGRenderJob *this)
{
  DocumentAccessJob::~DocumentAccessJob(this);

  HGObject::operator delete(v1);
}

void sub_25F93BD98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = PVCGImageBufferImpl;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_25F93C208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a15)
  {
    (*(*a15 + 24))(a15);
  }

  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  _Unwind_Resume(a1);
}

void sub_25F93C520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(a1);
}

void sub_25F93D378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  HGObject::operator delete(v30);
  (*(*v29 + 24))(v29);
  if (v28)
  {
    (*(*v28 + 24))(v28);
  }

  HGTransform::~HGTransform(&a9);
  HGTransform::~HGTransform(&a27);
  if (v27)
  {
    (*(*v27 + 24))(v27);
  }

  v33 = *(v31 - 112);
  if (v33)
  {
    (*(*v33 + 24))(v33);
  }

  v34 = *(v31 - 104);
  if (v34)
  {
    (*(*v34 + 24))(v34);
  }

  _Unwind_Resume(a1);
}

__n128 pv_simd_double4x4_from_PCMatrix44d@<Q0>(unint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[4];
  v5 = a1[5];
  v36.n128_u64[0] = *a1;
  v36.n128_u64[1] = v4;
  v6 = a1[9];
  v7 = a1[12];
  v8 = a1[13];
  v37 = a1[8];
  v38 = v7;
  v33.n128_u64[0] = v3;
  v33.n128_u64[1] = v5;
  v34 = v6;
  v35 = v8;
  v9 = a1[3];
  v10 = a1[6];
  v11 = a1[7];
  v30.n128_u64[0] = a1[2];
  v30.n128_u64[1] = v10;
  v12 = a1[11];
  v13 = a1[14];
  v14 = a1[15];
  v31 = a1[10];
  v32 = v13;
  v27.n128_u64[0] = v9;
  v27.n128_u64[1] = v11;
  v28 = v12;
  v29 = v14;
  pv_simd_double4_from_PCVector4d(&v36, v26);
  v21 = v26[1];
  v22 = v26[0];
  pv_simd_double4_from_PCVector4d(&v33, v25);
  v19 = v25[1];
  v20 = v25[0];
  pv_simd_double4_from_PCVector4d(&v30, v24);
  v17 = v24[1];
  v18 = v24[0];
  pv_simd_double4_from_PCVector4d(&v27, v23);
  result = v23[0];
  v16 = v23[1];
  *a2 = v22;
  a2[1] = v21;
  a2[2] = v20;
  a2[3] = v19;
  a2[4] = v18;
  a2[5] = v17;
  a2[6] = result;
  a2[7] = v16;
  return result;
}

double pv_PCMatrix44d_from_simd_double4x4(__int128 *a1, uint64_t a2)
{
  v3 = 0;
  v38 = 0x3FF0000000000000;
  v35 = 0x3FF0000000000000;
  v32 = 0x3FF0000000000000;
  *v31 = 0x3FF0000000000000;
  memset(&v31[8], 0, 32);
  v33 = 0u;
  v34 = 0u;
  v36 = 0u;
  v37 = 0u;
  do
  {
    v4 = (a2 + v3);
    v5 = *&v31[v3 + 16];
    *v4 = *&v31[v3];
    v4[1] = v5;
    v3 += 32;
  }

  while (v3 != 128);
  v6 = *a1;
  v7 = a1[1];
  v17 = a1[3];
  v18 = a1[2];
  v19 = a1[5];
  v20 = a1[4];
  v21 = a1[7];
  v22 = a1[6];
  memset(v31, 0, 32);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = v6;
  v24 = v7;
  pv_PCVector4d_from_simd_double4(&v23, v31);
  v23 = v18;
  v24 = v17;
  pv_PCVector4d_from_simd_double4(&v23, &v29);
  v23 = v20;
  v24 = v19;
  pv_PCVector4d_from_simd_double4(&v23, &v27);
  v23 = v22;
  v24 = v21;
  pv_PCVector4d_from_simd_double4(&v23, &v25);
  v8 = *&v31[8];
  v9 = v29;
  *a2 = *v31;
  *(a2 + 8) = v9;
  v10 = *&v31[16];
  *(a2 + 32) = v8;
  *(a2 + 40) = *(&v9 + 1);
  v11 = v30;
  *(a2 + 64) = v10;
  *(a2 + 72) = v11;
  *(a2 + 96) = *(&v10 + 1);
  *(a2 + 104) = *(&v11 + 1);
  v12 = *(&v27 + 1);
  v13 = v25;
  *(a2 + 16) = v27;
  *(a2 + 24) = v13;
  v15 = *(&v28 + 1);
  result = *&v28;
  *(a2 + 48) = v12;
  *(a2 + 56) = *(&v13 + 1);
  v16 = v26;
  *(a2 + 80) = result;
  *(a2 + 88) = v16;
  *(a2 + 112) = v15;
  *(a2 + 120) = *(&v16 + 1);
  return result;
}

uint64_t pv_simd_quaternion_get_euler_angles(int a1, uint64_t a2, float32x4_t a3)
{
  v3 = vmulq_f32(a3, a3).f32[0];
  v4 = vmuls_lane_f32(a3.f32[1], *a3.f32, 1);
  v5 = vmuls_lane_f32(a3.f32[2], a3, 2);
  v6 = vmuls_lane_f32(a3.f32[3], a3, 3);
  v7 = vmuls_lane_f32(a3.f32[0], *a3.f32, 1);
  v8 = vmuls_lane_f32(a3.f32[2], a3, 3);
  v9 = vmuls_lane_f32(a3.f32[0], a3, 2);
  v10 = vmuls_lane_f32(a3.f32[1], a3, 3);
  v11.i32[3] = 0;
  v11.f32[0] = v6 + ((v3 - v4) - v5);
  v15.columns[2].i32[3] = 0;
  v11.f32[1] = (v7 + v8) + (v7 + v8);
  v11.f32[2] = (v9 - v10) + (v9 - v10);
  v12 = vmuls_lane_f32(a3.f32[1], a3, 2);
  v13 = vmuls_lane_f32(a3.f32[0], a3, 3);
  v15.columns[1].i32[3] = 0;
  v15.columns[1].f32[0] = (v7 - v8) + (v7 - v8);
  v15.columns[1].f32[1] = (v6 + (v4 - v5)) - v3;
  v15.columns[1].f32[2] = (v12 + v13) + (v12 + v13);
  v15.columns[2].f32[0] = (v9 + v10) + (v9 + v10);
  v15.columns[2].f32[1] = (v12 - v13) + (v12 - v13);
  v15.columns[2].f32[2] = ((v5 + v6) - v3) - v4;
  v15.columns[0] = v11;
  return pv_simd_matrix_get_euler_angles(a1, a2, v15);
}

uint64_t pv_simd_quaternion_get_euler_angles(float64x2_t *a1, int a2, uint64_t a3)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = vmuld_n_f64(v4.f64[0], v4.f64[0]);
  v6 = a1->f64[1];
  v7 = vmuld_lane_f64(v6, *a1, 1);
  v8 = vmuld_n_f64(v3.f64[0], v3.f64[0]);
  v9 = vmuld_lane_f64(a1[1].f64[1], v3, 1);
  v10.f64[0] = v9 + v5 - v7 - v8;
  v11 = vmuld_lane_f64(v4.f64[0], v4, 1);
  v12 = vmuld_lane_f64(v3.f64[0], v3, 1);
  v13 = vmuld_n_f64(a1->f64[0], v3.f64[0]);
  v14 = vmuld_lane_f64(v6, v3, 1);
  v10.f64[1] = v11 + v12 + v11 + v12;
  v17[0] = v10;
  v17[1] = COERCE_UNSIGNED_INT64(v13 - v14 + v13 - v14);
  v10.f64[0] = v11 - v12 + v11 - v12;
  v15 = vmuld_lane_f64(v3.f64[0], v4, 1);
  v3.f64[0] = vmuld_lane_f64(v4.f64[0], v3, 1);
  v10.f64[1] = v9 + v7 - v8 - v5;
  v17[2] = v10;
  v17[3] = COERCE_UNSIGNED_INT64(v15 + v3.f64[0] + v15 + v3.f64[0]);
  v4.f64[0] = v13 + v14 + v13 + v14;
  v4.f64[1] = v15 - v3.f64[0] + v15 - v3.f64[0];
  v17[4] = v4;
  v17[5] = COERCE_UNSIGNED_INT64(v8 + v9 - v5 - v7);
  v18 = 0;
  v19 = 0;
  v20 = xmmword_260342700;
  return pv_simd_matrix_get_euler_angles(v17, a2, a3);
}

BOOL pv_is_finite(simd_quatd a1, __int128 *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  return pv_is_finite(v4);
}

id NSStringFromPVCGPointQuad(CGPoint *a1, int a2)
{
  v4 = a1[1];
  v13.a = *a1;
  v13.b = v4;
  v5 = a1[3];
  v13.c = a1[2];
  v13.d = v5;
  v6 = pv_buffer_size_for_string_representation(&v13, a2);
  v7 = malloc_type_calloc(v6, 1uLL, 0x100004077774924uLL);
  v8 = a1[1];
  v13.a = *a1;
  v13.b = v8;
  v9 = a1[3];
  v13.c = a1[2];
  v13.d = v9;
  string_representation = pv_get_string_representation(&v13, v7, v6, a2);
  v11 = 0;
  if ((string_representation & 0x80000000) != 0 || string_representation >= v6 || (v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v7 length:string_representation encoding:4 freeWhenDone:1]) == 0)
  {
    free(v7);
  }

  return v11;
}

double pv_simd_normalize(simd_float3x3 a1)
{
  v3[2] = a1.columns[2];
  if (fabsf(a1.columns[2].f32[2]) >= 0.00001)
  {
    for (i = 0; i != 3; ++i)
    {
      v3[i] = vmulq_n_f32(v3[i], 1.0 / a1.columns[2].f32[2]);
    }

    return *v3;
  }

  return result;
}

__n128 pv_simd_normalize@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 80);
  if (fabs(v2) >= 0.0000001)
  {
    v3 = 0;
    v4 = 1.0 / v2;
    do
    {
      v5 = (a1 + v3);
      v6 = vmulq_n_f64(*(a1 + v3 + 16), v4);
      *v5 = vmulq_n_f64(*(a1 + v3), v4);
      v5[1] = v6;
      v3 += 32;
    }

    while (v3 != 96);
  }

  v7 = *(a1 + 48);
  a2[2] = *(a1 + 32);
  a2[3] = v7;
  v8 = *(a1 + 80);
  a2[4] = *(a1 + 64);
  a2[5] = v8;
  result = *a1;
  v10 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v10;
  return result;
}

double pv_simd_normalize(simd_float4x4 a1)
{
  v3[2] = a1.columns[2];
  v3[3] = a1.columns[3];
  if (fabsf(a1.columns[3].f32[3]) >= 0.00001)
  {
    for (i = 0; i != 3; ++i)
    {
      v3[i] = vmulq_n_f32(v3[i], 1.0 / a1.columns[3].f32[3]);
    }

    return *v3;
  }

  return result;
}

__n128 pv_simd_normalize@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 120);
  if (fabs(v2) >= 0.0000001)
  {
    v3 = 0;
    v4 = 1.0 / v2;
    do
    {
      v5 = (a1 + v3);
      v6 = vmulq_n_f64(*(a1 + v3 + 16), v4);
      *v5 = vmulq_n_f64(*(a1 + v3), v4);
      v5[1] = v6;
      v3 += 32;
    }

    while (v3 != 96);
  }

  v7 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v7;
  v8 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v8;
  v9 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v9;
  result = *(a1 + 32);
  v11 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v11;
  return result;
}

double pv_simd_negate(simd_float3x3 a1)
{
  v1 = 0;
  v3[2] = a1.columns[2];
  do
  {
    v3[v1] = vnegq_f32(v3[v1]);
    ++v1;
  }

  while (v1 != 3);
  return *v3;
}

__n128 pv_simd_negate@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  for (i = 0; i != 96; i += 32)
  {
    v3 = (a1 + i);
    v4 = vnegq_f64(*(a1 + i + 16));
    *v3 = vnegq_f64(*(a1 + i));
    v3[1] = v4;
  }

  v5 = *(a1 + 48);
  a2[2] = *(a1 + 32);
  a2[3] = v5;
  v6 = *(a1 + 80);
  a2[4] = *(a1 + 64);
  a2[5] = v6;
  result = *a1;
  v8 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v8;
  return result;
}

double pv_simd_negate(simd_float4x4 a1)
{
  v1 = 0;
  v3[2] = a1.columns[2];
  v3[3] = a1.columns[3];
  do
  {
    v3[v1] = vnegq_f32(v3[v1]);
    ++v1;
  }

  while (v1 != 4);
  return *v3;
}

__n128 pv_simd_negate@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  for (i = 0; i != 128; i += 32)
  {
    v3 = (a1 + i);
    v4 = vnegq_f64(*(a1 + i + 16));
    *v3 = vnegq_f64(*(a1 + i));
    v3[1] = v4;
  }

  v5 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v5;
  v6 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v6;
  v7 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v9;
  return result;
}

__n128 pv_simd_matrix_get_rotation_matrix(simd_float3x3 a1)
{
  v1 = vmulq_f32(a1.columns[0], a1.columns[0]);
  v2 = sqrtf(v1.f32[2] + vaddv_f32(*v1.f32));
  if (fabsf(v2) < 0.00001 || (v3 = vmulq_f32(a1.columns[1], a1.columns[1]), v4 = vmulq_f32(a1.columns[2], a1.columns[2]), v5 = vcgt_f32(vdup_n_s32(0x3727C5ACu), vabs_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v4, v4, 8uLL), *&vextq_s8(v3, v3, 8uLL)), vadd_f32(vzip1_s32(*v4.i8, *v3.i8), vzip2_s32(*v4.i8, *v3.i8)))))), (v5.i8[4] & 1) != 0) || (v5.i8[0] & 1) != 0)
  {
    a1.columns[0] = *MEMORY[0x277D860B0];
  }

  else
  {
    a1.columns[0].i64[0] = vmulq_n_f32(a1.columns[0], 1.0 / v2).u64[0];
  }

  return a1.columns[0];
}

float64x2_t pv_simd_matrix_get_rotation_matrix@<Q0>(float64x2_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = sqrt(vmulq_f64(v3, v3).f64[0] + vaddvq_f64(vmulq_f64(v2, v2)));
  if (fabs(v4) < 0.0000001 || (v5 = a1[2], v6 = a1[3], v7 = a1[4], v8 = a1[5], v9 = vsqrtq_f64(vaddq_f64(vzip1q_s64(vmulq_f64(v8, v8), vmulq_f64(v6, v6)), vpaddq_f64(vmulq_f64(v7, v7), vmulq_f64(v5, v5)))), v10 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3E7AD7F29ABCAF48uLL), vabsq_f64(v9))), (v10.i8[4] & 1) != 0) || (v10.i8[0] & 1) != 0)
  {
    v13 = MEMORY[0x277D86098];
    v14 = *(MEMORY[0x277D86098] + 48);
    a2[2] = *(MEMORY[0x277D86098] + 32);
    a2[3] = v14;
    v15 = *(v13 + 80);
    a2[4] = *(v13 + 64);
    a2[5] = v15;
    result = *v13;
    v16 = *(v13 + 16);
    *a2 = *v13;
    a2[1] = v16;
  }

  else
  {
    v11 = 1.0 / v4;
    *a2 = vmulq_n_f64(v2, v11);
    a2[1] = vmulq_n_f64(v3, v11);
    a2[2] = vmulq_n_f64(v5, 1.0 / v9.f64[1]);
    a2[3] = vmulq_n_f64(v6, 1.0 / v9.f64[1]);
    result = vmulq_n_f64(v8, 1.0 / v9.f64[0]);
    a2[4] = vmulq_n_f64(v7, 1.0 / v9.f64[0]);
    a2[5] = result;
  }

  return result;
}

double pv_simd_matrix_get_rotation_matrix(simd_float4x4 a1)
{
  a1.columns[0].i32[3] = 0;
  a1.columns[1].i32[3] = 0;
  a1.columns[2].i32[3] = 0;
  *&result = pv_simd_matrix_get_rotation_matrix(*a1.columns[0].f32).n128_u64[0];
  return result;
}

double pv_simd_matrix_get_rotation_matrix@<D0>(float64x2_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v8[0] = *a1;
  v8[1] = v2;
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v5;
  v8[5] = v6;
  *&result = *&pv_simd_matrix_get_rotation_matrix(v8, a2);
  return result;
}

double pv_simd_matrix_rotate(simd_float4x4 a1, float32x4_t a2)
{
  v2 = 0;
  v3 = vmulq_f32(a2, a2).f32[0];
  v4 = vmuls_lane_f32(a2.f32[1], *a2.f32, 1);
  v5 = vmuls_lane_f32(a2.f32[2], a2, 2);
  v6 = vmuls_lane_f32(a2.f32[3], a2, 3);
  v7 = vmuls_lane_f32(a2.f32[0], *a2.f32, 1);
  v8 = vmuls_lane_f32(a2.f32[2], a2, 3);
  v9 = vmuls_lane_f32(a2.f32[0], a2, 2);
  v10 = vmuls_lane_f32(a2.f32[1], a2, 3);
  v11.i32[3] = 0;
  v11.f32[0] = v6 + ((v3 - v4) - v5);
  v11.f32[1] = (v7 + v8) + (v7 + v8);
  v12 = (v7 - v8) + (v7 - v8);
  v13 = vmuls_lane_f32(a2.f32[1], a2, 2);
  v14 = vmuls_lane_f32(a2.f32[0], a2, 3);
  a2.i32[3] = 0;
  a2.f32[0] = v12;
  a2.f32[1] = (v6 + (v4 - v5)) - v3;
  *&v15 = ((v5 + v6) - v3) - v4;
  v16.f32[0] = (v9 + v10) + (v9 + v10);
  v16.f32[1] = (v13 - v14) + (v13 - v14);
  v16.i64[1] = v15;
  v18[2] = a1.columns[2];
  v18[3] = a1.columns[3];
  memset(v19, 0, sizeof(v19));
  do
  {
    v11.f32[2] = (v9 - v10) + (v9 - v10);
    a2.f32[2] = (v13 + v14) + (v13 + v14);
    v19[v2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v11, COERCE_FLOAT(v18[v2])), a2, *&v18[v2], 1), v16, v18[v2], 2), xmmword_2603427D0, v18[v2], 3);
    ++v2;
  }

  while (v2 != 4);
  return *v19;
}

__int128 *pv_simd_matrix_rotate@<X0>(__int128 *result@<X0>, float64x2_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v18 = a2[1];
  v5 = vmuld_n_f64(v4.f64[0], v4.f64[0]);
  v14.f64[0] = a2->f64[1];
  v6 = vmuld_lane_f64(v14.f64[0], *a2, 1);
  v7 = vmuld_n_f64(v18.f64[0], v18.f64[0]);
  v8 = vmuld_lane_f64(a2[1].f64[1], v18, 1);
  v13.f64[0] = v8 + v5 - v6 - v7;
  v9 = vmuld_lane_f64(v4.f64[0], v4, 1);
  v10 = vmuld_lane_f64(v18.f64[0], v18, 1);
  v11 = vmuld_n_f64(a2->f64[0], v18.f64[0]);
  v12 = vmuld_lane_f64(v14.f64[0], v18, 1);
  v13.f64[1] = v9 + v10 + v9 + v10;
  v14 = *&v14.f64[0];
  v17.f64[0] = v9 - v10 + v9 - v10;
  v15 = vmuld_lane_f64(v18.f64[0], *a2, 1);
  v16 = vmuld_lane_f64(a2->f64[0], v18, 1);
  v17.f64[1] = v8 + v6 - v7 - v5;
  v18.f64[1] = 0.0;
  v20.f64[1] = 0.0;
  v20.f64[0] = v7 + v8 - v5 - v6;
  vars0 = *result;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  do
  {
    v22 = *(&vars0 + v3 * 16);
    v21 = *(&vars0 + v3 * 16 + 16);
    v23 = &a3[v3];
    v19.f64[1] = v15 - v16 + v15 - v16;
    v19.f64[0] = v11 + v12 + v11 + v12;
    *v23 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v13, v22.f64[0]), v17, v22, 1), v19, v21.f64[0]), 0, v21, 1);
    v14.f64[0] = v11 - v12 + v11 - v12;
    v18.f64[0] = v15 + v16 + v15 + v16;
    v23[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v14, v22.f64[0]), v18, v22, 1), v20, v21.f64[0]), xmmword_260342700, v21, 1);
    v3 += 2;
  }

  while (v3 != 8);
  return result;
}

double pv_simd_matrix_rotate(__n128 a1, __n128 a2, __n128 a3, __n128 a4, float a5, float32x4_t a6)
{
  *&v14[32] = a3;
  *&v14[48] = a4;
  *v14 = a1;
  *&v14[16] = a2;
  v6 = vmulq_f32(a6, a6);
  *&v7 = v6.f32[2] + vaddv_f32(*v6.f32);
  *v6.f32 = vrsqrte_f32(v7);
  *v6.f32 = vmul_f32(*v6.f32, vrsqrts_f32(v7, vmul_f32(*v6.f32, *v6.f32)));
  LODWORD(v12) = vmul_f32(*v6.f32, vrsqrts_f32(v7, vmul_f32(*v6.f32, *v6.f32))).u32[0];
  v8 = __sincosf_stret(a5 * 0.5);
  v9 = vmulq_n_f32(vmulq_n_f32(a6, v12), v8.__sinval);
  v9.i32[3] = LODWORD(v8.__cosval);
  v10 = *v14;

  return pv_simd_matrix_rotate(v10, v9);
}

__int128 *pv_simd_matrix_rotate@<X0>(__int128 *a1@<X0>, float64x2_t *a2@<X1>, _OWORD *a3@<X8>, double a4@<D0>)
{
  v16 = a2[1];
  v17 = *a2;
  v6 = vmulq_f64(v16, v16);
  v6.f64[0] = 1.0 / sqrt(v6.f64[0] + vaddvq_f64(vmulq_f64(v17, v17)));
  v15 = v6;
  v8 = __sincos_stret(a4 * 0.5);
  v7.f64[0] = v8.__sinval;
  *&v9.f64[0] = *&vmulq_f64(v7, vmulq_f64(v16, v15));
  v9.f64[1] = v8.__cosval;
  v10 = a1[5];
  v19[4] = a1[4];
  v19[5] = v10;
  v11 = a1[7];
  v19[6] = a1[6];
  v19[7] = v11;
  v12 = a1[1];
  v19[0] = *a1;
  v19[1] = v12;
  v13 = a1[3];
  v19[2] = a1[2];
  v19[3] = v13;
  v18[0] = vmulq_n_f64(vmulq_n_f64(v17, v15.f64[0]), v8.__sinval);
  v18[1] = v9;
  return pv_simd_matrix_rotate(v19, v18, a3);
}

uint64_t pv_simd_matrix_get_euler_angles(int a1, uint64_t a2, simd_float3x3 a3)
{
  a3.columns[0].i32[3] = 0;
  a3.columns[1].i32[3] = 0;
  a3.columns[2].i32[3] = 0;
  rotation_matrix = pv_simd_matrix_get_rotation_matrix(a3);
  pv_simd_matrix_get_euler_angles(a1, a2, rotation_matrix, v6, v7);
  return 1;
}

uint64_t pv_simd_matrix_get_euler_angles(int a1, uint64_t a2, __n128 a3, __n128 a4, __n128 a5)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v39 = a4.n128_f32[1];
      v14 = a3.n128_f32[1];
      v24 = asinf(fminf(fmaxf(a3.n128_f32[1], -1.0), 1.0));
      if (fabsf(v14) >= 0.99999)
      {
        v17 = atan2f(a5.n128_f32[0], a5.n128_f32[2]);
        LODWORD(v13) = 0;
        goto LABEL_25;
      }

      v27 = atan2f(-a5.n128_f32[1], v39);
      v15 = a3.n128_f32[0];
      v16 = -a3.n128_f32[2];
LABEL_19:
      v17 = atan2f(v16, v15);
      *&v13 = v27;
LABEL_25:
      *(&v13 + 1) = v17;
LABEL_30:
      v20 = v24;
      goto LABEL_33;
    }

    if (a1 == 4)
    {
      v46 = a5.n128_f32[2];
      v37 = a4.n128_u64[0];
      v18 = a4.n128_f32[2];
      v25 = asinf(fminf(fmaxf(a4.n128_f32[2], -1.0), 1.0));
      if (fabsf(v18) >= 0.99999)
      {
        v12 = atan2f(a3.n128_f32[1], a3.n128_f32[0]);
        v13 = LODWORD(v25);
        goto LABEL_32;
      }

      v41 = atan2f(-a3.n128_f32[2], v46);
      v7 = *(&v37 + 1);
      v8 = -*&v37;
      goto LABEL_22;
    }

    if (a1 != 5)
    {
      return 1;
    }

    v45 = a5.n128_f32[2];
    v29 = a3.n128_u64[0];
    v9 = a3.n128_f32[2];
    v23 = asinf(-fminf(fmaxf(a3.n128_f32[2], -1.0), 1.0));
    if (fabsf(v9) >= 0.99999)
    {
      v12 = atan2f(-a4.n128_f32[0], a4.n128_f32[1]);
      LODWORD(v13) = 0;
      goto LABEL_28;
    }

    v26 = atan2f(a4.n128_f32[2], v45);
    v10 = *(&v29 + 1);
    v11 = *&v29;
LABEL_14:
    v12 = atan2f(v10, v11);
    *&v13 = v26;
LABEL_28:
    *(&v13 + 1) = v23;
    goto LABEL_32;
  }

  switch(a1)
  {
    case 0:
      v30 = a3.n128_u32[0];
      v23 = asinf(fminf(fmaxf(a5.n128_f32[0], -1.0), 1.0));
      if (fabsf(a5.n128_f32[0]) >= 0.99999)
      {
        v19 = atan2f(a4.n128_f32[2], a4.n128_f32[1]);
        v20 = 0.0;
        v13 = __PAIR64__(LODWORD(v23), LODWORD(v19));
        goto LABEL_33;
      }

      v26 = atan2f(-a5.n128_f32[1], a5.n128_f32[2]);
      v11 = *&v30;
      v10 = -a4.n128_f32[0];
      goto LABEL_14;
    case 1:
      v32 = a3.n128_u32[0];
      v24 = asinf(-fminf(fmaxf(a4.n128_f32[0], -1.0), 1.0));
      if (fabsf(a4.n128_f32[0]) >= 0.99999)
      {
        v13 = COERCE_UNSIGNED_INT(atan2f(-a5.n128_f32[1], a5.n128_f32[2]));
        goto LABEL_30;
      }

      v27 = atan2f(a4.n128_f32[2], a4.n128_f32[1]);
      v16 = a5.n128_f32[0];
      v15 = *&v32;
      goto LABEL_19;
    case 2:
      v38 = a4.n128_u32[1];
      v6 = a5.n128_f32[1];
      v25 = asinf(-fminf(fmaxf(a5.n128_f32[1], -1.0), 1.0));
      if (fabsf(v6) < 0.99999)
      {
        v41 = atan2f(a5.n128_f32[0], a5.n128_f32[2]);
        v7 = *&v38;
        v8 = a3.n128_f32[1];
LABEL_22:
        v12 = atan2f(v8, v7);
        v13 = __PAIR64__(LODWORD(v41), LODWORD(v25));
LABEL_32:
        v20 = v12;
        goto LABEL_33;
      }

      v21 = atan2f(-a3.n128_f32[2], a3.n128_f32[0]);
      v20 = 0.0;
      v13 = __PAIR64__(LODWORD(v21), LODWORD(v25));
LABEL_33:
      *(a2 + 8) = v20;
      *a2 = v13;
      break;
  }

  return 1;
}

uint64_t pv_simd_matrix_get_euler_angles(float64x2_t *a1, int a2, uint64_t a3)
{
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v12[0] = *a1;
  v12[1] = v5;
  v12[2] = v6;
  v12[3] = v7;
  v12[4] = v8;
  v12[5] = v9;
  pv_simd_matrix_get_rotation_matrix(v12, v11);
  pv_simd_matrix_get_euler_angles(v11, a2, a3);
  return 1;
}

uint64_t pv_simd_matrix_get_euler_angles(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        v22 = asin(fmin(fmax(*(a1 + 8), -1.0), 1.0));
        v23 = vextq_s8(*a3, *a3, 8uLL).u64[0];
        *(a3 + 16) = v22;
        if (fabs(*(a1 + 8)) >= 0.9999999)
        {
          *(&v39 + 1) = v23;
          *&v39 = 0;
          *(a3 + 16) = v22;
          *a3 = v39;
          v40 = atan2(*(a1 + 64), *(a1 + 80));
          v32.i64[0] = 0;
LABEL_32:
          *(a3 + 16) = v22;
          *&v32.i64[1] = v40;
          *a3 = v32;
          return 1;
        }

        v52 = v23;
        v24 = atan2(-*(a1 + 72), *(a1 + 40));
        *(&v25 + 1) = v52;
        *&v25 = v24;
        v53 = v24;
        *(a3 + 16) = v22;
        *a3 = v25;
        v26 = -*(a1 + 16);
LABEL_18:
        v31 = atan2(v26, *a1);
        *v32.i64 = v53;
        *&v32.i64[1] = v31;
LABEL_31:
        *&v40 = vextq_s8(v32, v32, 8uLL).u64[0];
        goto LABEL_32;
      case 4:
        v33 = asin(fmin(fmax(*(a1 + 48), -1.0), 1.0));
        v34 = *(a3 + 16);
        *a3 = v33;
        if (fabs(*(a1 + 48)) >= 0.9999999)
        {
          v49 = *&v33;
          *(a3 + 16) = v34;
          *a3 = *&v33;
          goto LABEL_29;
        }

        v47 = v34;
        v55 = v33;
        v35 = atan2(-*(a1 + 16), *(a1 + 80));
        *v36.i64 = v55;
        *&v36.i64[1] = v35;
        v49 = v36;
        v37 = v36;
        *(a3 + 16) = v47;
        break;
      case 5:
        v11 = asin(-fmin(fmax(*(a1 + 16), -1.0), 1.0));
        v12 = *(a3 + 16);
        v13 = *a3;
        *&v13.i64[1] = v11;
        v14 = vextq_s8(v13, v13, 8uLL).u64[0];
        *(a3 + 8) = v11;
        if (fabs(*(a1 + 16)) < 0.9999999)
        {
          v45 = v12;
          v50 = v14;
          v15 = atan2(*(a1 + 48), *(a1 + 80));
          v16.i64[1] = v50;
          *v16.i64 = v15;
          v49 = v16;
          *(a3 + 16) = v45;
          *a3 = v16;
LABEL_29:
          v10 = *a1;
          v9 = *(a1 + 8);
          goto LABEL_30;
        }

        v37.i64[1] = v14;
        v37.i64[0] = 0;
        v49 = v37;
        *(a3 + 16) = v12;
        break;
      default:
        return 1;
    }

    *a3 = v37;
    v9 = -*(a1 + 32);
    v10.i64[0] = *(a1 + 40);
    goto LABEL_30;
  }

  switch(a2)
  {
    case 0:
      v17 = asin(fmin(fmax(*(a1 + 64), -1.0), 1.0));
      v18 = *(a3 + 16);
      v19 = *a3;
      *&v19.i64[1] = v17;
      v51 = vextq_s8(v19, v19, 8uLL).u64[0];
      *(a3 + 8) = v17;
      v20 = *(a1 + 64);
      if (fabs(*&v20) < 0.9999999)
      {
        v46 = v18;
        v21 = atan2(-*(&v20 + 1), *(a1 + 80));
        v10.i64[1] = v51;
        *v10.i64 = v21;
        v49 = v10;
        *(a3 + 16) = v46;
        *a3 = v10;
        v9 = -*(a1 + 32);
        v10.i64[0] = *a1;
        goto LABEL_30;
      }

      v38 = atan2(*(a1 + 48), *(a1 + 40));
      v32.i64[1] = v51;
      *v32.i64 = v38;
      goto LABEL_24;
    case 1:
      v22 = asin(-fmin(fmax(*(a1 + 32), -1.0), 1.0));
      v27 = *a3;
      *(a3 + 16) = v22;
      v28 = *(a1 + 32);
      if (fabs(*&v28) >= 0.9999999)
      {
        v32.i64[0] = atan2(-*(a1 + 72), *(a1 + 80));
        v40 = 0.0;
        goto LABEL_32;
      }

      v54 = vextq_s8(v27, v27, 8uLL).u64[0];
      v29 = atan2(*(a1 + 48), *(&v28 + 1));
      *(&v30 + 1) = v54;
      *&v30 = v29;
      v53 = v29;
      *(a3 + 16) = v22;
      *a3 = v30;
      v26 = *(a1 + 64);
      goto LABEL_18;
    case 2:
      v5 = asin(-fmin(fmax(*(a1 + 72), -1.0), 1.0));
      v6 = *(a3 + 16);
      v48 = v5;
      *a3 = v5;
      if (fabs(*(a1 + 72)) < 0.9999999)
      {
        v44 = v6;
        v7 = atan2(*(a1 + 64), *(a1 + 80));
        v8 = v48;
        *&v10.i64[1] = v7;
        v49 = v10;
        *(a3 + 16) = v44;
        *a3 = v10;
        v9 = *(a1 + 8);
        v10.i64[0] = *(a1 + 40);
LABEL_30:
        v42 = atan2(v9, *v10.i64);
        v32 = v49;
        v22 = v42;
        goto LABEL_31;
      }

      v41 = atan2(-*(a1 + 16), *a1);
      *v32.i64 = v48;
      *&v32.i64[1] = v41;
LABEL_24:
      *&v40 = vextq_s8(v32, v32, 8uLL).u64[0];
      v22 = 0.0;
      goto LABEL_32;
  }

  return 1;
}

double pv_simd_matrix_translate(double a1, double a2, __n128 a3, __n128 a4, float32x4_t a5)
{
  v5 = 0;
  a5.i32[3] = 1.0;
  v7[2] = a3;
  v7[3] = a4;
  memset(v8, 0, sizeof(v8));
  do
  {
    v8[v5] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_2603429B0, COERCE_FLOAT(v7[v5])), xmmword_2603429C0, *&v7[v5], 1), xmmword_2603429D0, v7[v5], 2), a5, v7[v5], 3);
    ++v5;
  }

  while (v5 != 4);
  return *v8;
}

__int128 *pv_simd_matrix_translate@<X0>(__int128 *result@<X0>, float64x2_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = a2[1];
  v5.f64[1] = 1.0;
  vars0 = *result;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  do
  {
    v7 = *(&vars0 + v3 * 16);
    v6 = *(&vars0 + v3 * 16 + 16);
    v8 = &a3[v3];
    *v8 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(xmmword_2603426F0, v7.f64[0]), xmmword_260342700, v7, 1), 0, v6.f64[0]), v4, v6, 1);
    v8[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(0, v7.f64[0]), 0, v7, 1), xmmword_2603426F0, v6.f64[0]), v5, v6, 1);
    v3 += 2;
  }

  while (v3 != 8);
  return result;
}

double pv_simd_matrix_scale(simd_float4x4 a1, float a2, float32_t a3, float a4)
{
  v4 = 0;
  v5 = LODWORD(a2);
  v6.i32[0] = 0;
  v6.i64[1] = 0;
  v6.f32[1] = a3;
  v7.i64[0] = 0;
  v7.i64[1] = LODWORD(a4);
  v9[2] = a1.columns[2];
  v9[3] = a1.columns[3];
  memset(v10, 0, sizeof(v10));
  do
  {
    v10[v4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, COERCE_FLOAT(v9[v4])), v6, *&v9[v4], 1), v7, v9[v4], 2), xmmword_2603427D0, v9[v4], 3);
    ++v4;
  }

  while (v4 != 4);
  return *v10;
}

__int128 *pv_simd_matrix_scale@<X0>(__int128 *result@<X0>, _OWORD *a2@<X8>, unint64_t a3@<D0>, float64_t a4@<D1>, unint64_t a5@<D2>)
{
  v5 = 0;
  v6 = a3;
  v7.f64[0] = 0.0;
  v7.f64[1] = a4;
  vars0 = *result;
  *a2 = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[6] = 0u;
  a2[7] = 0u;
  do
  {
    v9 = *(&vars0 + v5 * 16);
    v8 = *(&vars0 + v5 * 16 + 16);
    v10 = &a2[v5];
    *v10 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v6, v9.f64[0]), v7, v9, 1), 0, v8.f64[0]), 0, v8, 1);
    v10[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(0, v9.f64[0]), 0, v9, 1), a5, v8.f64[0]), xmmword_260342700, v8, 1);
    v5 += 2;
  }

  while (v5 != 8);
  return result;
}

double pv_simd_matrix_get_row(simd_float3x3 a1, int a2)
{
  v2 = a1.columns[0];
  if (a2 == 2)
  {
    *&result = vzip2q_s32(a1.columns[0], a1.columns[1]).u64[0];
  }

  else if (a2 == 1)
  {
    *&result = vtrn2q_s32(a1.columns[0], a1.columns[1]).u64[0];
  }

  else
  {
    result = 0.0;
    if (!a2)
    {
      *&result = vzip1q_s32(v2, a1.columns[1]).u64[0];
    }
  }

  return result;
}

int64x2_t *pv_simd_matrix_get_row@<X0>(int64x2_t *result@<X0>, int a2@<W1>, int64x2_t *a3@<X8>)
{
  if (a2 == 2)
  {
    v5 = result[1];
    v6 = result[3];
    v4 = result[5];
    goto LABEL_7;
  }

  if (a2 == 1)
  {
    v3 = vzip2q_s64(*result, result[2]);
    v4 = vdupq_laneq_s64(result[4], 1);
  }

  else
  {
    v3 = 0uLL;
    v4 = 0uLL;
    if (!a2)
    {
      v5 = *result;
      v6 = result[2];
      v4 = result[4];
LABEL_7:
      v3 = vzip1q_s64(v5, v6);
    }
  }

  *a3 = v3;
  a3[1] = v4;
  return result;
}

{
  v3 = 0uLL;
  v4 = 0uLL;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v3 = vzip2q_s64(*result, result[2]);
        v4.i64[0] = vdupq_laneq_s64(result[4], 1).u64[0];
        v5 = &result[6].i64[1];
LABEL_8:
        v4.i64[1] = *v5;
        goto LABEL_12;
      }

      goto LABEL_12;
    }

    v6 = *result;
    v7 = result[2];
    v8 = result[4];
    v9 = result[6];
LABEL_11:
    v3 = vzip1q_s64(v6, v7);
    v4 = vzip1q_s64(v8, v9);
    goto LABEL_12;
  }

  if (a2 == 2)
  {
    v6 = result[1];
    v7 = result[3];
    v8 = result[5];
    v9 = result[7];
    goto LABEL_11;
  }

  if (a2 == 3)
  {
    v3 = vzip2q_s64(result[1], result[3]);
    v4.i64[0] = vdupq_laneq_s64(result[5], 1).u64[0];
    v5 = &result[7].i64[1];
    goto LABEL_8;
  }

LABEL_12:
  *a3 = v3;
  a3[1] = v4;
  return result;
}

double pv_simd_matrix_get_row(simd_float4x4 a1, int a2)
{
  v2 = a1.columns[0];
  result = 0.0;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      *&result = vzip2q_s32(v2, a1.columns[1]).u64[0];
    }

    else if (a2 == 3)
    {
      *&result = vuzp2q_s32(vuzp2q_s32(v2, a1.columns[1]), v2).u64[0];
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      *&result = vtrn2q_s32(v2, a1.columns[1]).u64[0];
    }
  }

  else
  {
    *&result = vzip1q_s32(v2, a1.columns[1]).u64[0];
  }

  return result;
}

double pv_simd_matrix_set_row(int a1, int32x4_t a2, int32x4_t a3, double a4, int32x4_t a5)
{
  if (a1)
  {
    v5 = vzip1q_s32(a2, a3);
    v5.i32[2] = LODWORD(a4);
    if (a1 == 1)
    {
      v6 = a5;
    }

    else
    {
      v6 = vtrn2q_s32(a2, a3);
      v6.i32[2] = HIDWORD(a4);
    }
  }

  else
  {
    v6 = vtrn2q_s32(a2, a3);
    v6.i32[2] = HIDWORD(a4);
    v5 = a5;
  }

  *&result = vzip1q_s32(v5, v6).u64[0];
  return result;
}

__n128 pv_simd_matrix_set_row@<Q0>(uint64_t a1@<X0>, int8x16_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  if (!a3)
  {
    result.n128_u64[0] = vextq_s8(v4, v4, 8uLL).u64[0];
    v5 = *(a1 + 16);
    v7 = *(a1 + 48);
    v8 = *(a1 + 80);
    v13 = vzip2q_s64(*a1, *(a1 + 32));
    v12 = vextq_s8(v13, v13, 8uLL).u64[0];
    v14 = vextq_s8(*(a1 + 64), *(a1 + 64), 8uLL).u64[0];
    v10.i64[0] = a2->i64[0];
    v9.i64[0] = a2[1].i64[0];
    goto LABEL_7;
  }

  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v9 = *(a1 + 64);
  v8 = *(a1 + 80);
  v10 = vzip1q_s64(*a1, v6);
  result.n128_u64[0] = vextq_s8(v10, v10, 8uLL).u64[0];
  if (a3 == 1)
  {
    v12 = vextq_s8(v4, v4, 8uLL).u64[0];
    v13.i64[0] = a2->i64[0];
    v14 = a2[1].u64[0];
LABEL_7:
    v4 = vzip1q_s64(v5, v7);
    v15 = vextq_s8(v4, v4, 8uLL);
    goto LABEL_8;
  }

  v13 = vzip2q_s64(*a1, v6);
  v12 = vextq_s8(v13, v13, 8uLL).u64[0];
  v14 = vextq_s8(v9, v9, 8uLL).u64[0];
  if (a3 != 2)
  {
    goto LABEL_7;
  }

  v15 = vextq_s8(v4, v4, 8uLL);
  *&v8 = a2[1].i64[0];
LABEL_8:
  v10.i64[1] = v13.i64[0];
  result.n128_u64[1] = v12;
  v9.i64[1] = v14;
  v4.i64[1] = v15.i64[0];
  *a4 = v10;
  *(a4 + 16) = v4;
  *(a4 + 32) = result;
  *(a4 + 48) = v15;
  *(a4 + 64) = v9;
  *(a4 + 80) = v8;
  return result;
}

double pv_simd_matrix_set_row(int a1, int32x4_t a2, int32x4_t a3, __n128 a4, __n128 a5, int32x4_t a6)
{
  if (!a1)
  {
    v7.i64[0] = vtrn2q_s32(a2, a3).u64[0];
    v7.i64[1] = __PAIR64__(a5.n128_u32[1], a4.n128_u32[1]);
    v6 = a6;
    goto LABEL_5;
  }

  v6.i64[0] = vzip1q_s32(a2, a3).u64[0];
  v6.i64[1] = __PAIR64__(a5.n128_u32[0], a4.n128_u32[0]);
  if (a1 == 1)
  {
    v7 = a6;
LABEL_5:
    v8.i64[0] = vzip2q_s32(a2, a3).u64[0];
    v8.i64[1] = __PAIR64__(a5.n128_u32[2], a4.n128_u32[2]);
    goto LABEL_6;
  }

  v7.i64[0] = vtrn2q_s32(a2, a3).u64[0];
  v7.i64[1] = __PAIR64__(a5.n128_u32[1], a4.n128_u32[1]);
  if (a1 == 2)
  {
    v8 = a6;
  }

  else
  {
    v8.i64[0] = vzip2q_s32(a2, a3).u64[0];
    v8.i64[1] = __PAIR64__(a5.n128_u32[2], a4.n128_u32[2]);
    if (a1 == 3)
    {
      goto LABEL_7;
    }
  }

LABEL_6:
  a6.i64[0] = vuzp2q_s32(vuzp2q_s32(a2, a3), a2).u64[0];
  a6.i32[2] = a4.n128_i32[3];
  a6.i32[3] = a5.n128_i32[3];
LABEL_7:
  *&result = vzip1q_s32(vzip1q_s32(v6, v8), vzip1q_s32(v7, a6)).u64[0];
  return result;
}

int64x2_t pv_simd_matrix_set_row@<Q0>(int64x2_t *a1@<X0>, int64x2_t *a2@<X1>, int a3@<W2>, int64x2_t *a4@<X8>)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v11 = a1[4];
  v10 = a1[5];
  v12 = a1[7];
  if (!a3)
  {
    v15 = vzip2q_s64(v6, v8);
    v16.i64[0] = vdupq_laneq_s64(v11, 1).u64[0];
    v16.i64[1] = a1[6].i64[1];
    v13 = *a2;
    v14 = a2[1];
    goto LABEL_5;
  }

  v13 = vzip1q_s64(v6, v8);
  v14 = vzip1q_s64(v11, a1[6]);
  if (a3 == 1)
  {
    v15 = *a2;
    v16 = a2[1];
LABEL_5:
    v17 = vzip1q_s64(v7, v9);
    v18 = vzip1q_s64(v10, v12);
    goto LABEL_6;
  }

  v15 = vzip2q_s64(v6, v8);
  v16.i64[0] = vdupq_laneq_s64(v11, 1).u64[0];
  v16.i64[1] = a1[6].i64[1];
  if (a3 == 2)
  {
    v17 = *a2;
    v18 = a2[1];
  }

  else
  {
    v17 = vzip1q_s64(v7, v9);
    v18 = vzip1q_s64(v10, v12);
    if (a3 == 3)
    {
      goto LABEL_7;
    }
  }

LABEL_6:
  v5 = vzip2q_s64(v7, v9);
  v4.i64[0] = vdupq_laneq_s64(v10, 1).u64[0];
  v4.i64[1] = a1[7].i64[1];
LABEL_7:
  v19 = vzip1q_s64(v13, v15);
  v20 = vzip2q_s64(v13, v15);
  *a4 = v19;
  a4[1] = vzip1q_s64(v17, v5);
  v21 = vzip1q_s64(v14, v16);
  result = vzip2q_s64(v14, v16);
  a4[2] = v20;
  a4[3] = vzip2q_s64(v17, v5);
  a4[4] = v21;
  a4[5] = vzip1q_s64(v18, v4);
  a4[6] = result;
  a4[7] = vzip2q_s64(v18, v4);
  return result;
}

void pv_simd_matrix_lerp(simd_float4x4 a1, simd_float4x4 a2, int a3, float a4)
{
  v21 = xmmword_260342820;
  v22 = unk_260342830;
  v23 = xmmword_260342840;
  v24 = unk_260342850;
  v17 = pv_transform_info_identity;
  v18 = *algn_2603427F0;
  v19 = xmmword_260342800;
  v20 = unk_260342810;
  pv_transform_info_make(a1, &v17);
  v13 = xmmword_260342820;
  v14 = unk_260342830;
  v15 = xmmword_260342840;
  v16 = unk_260342850;
  v9 = pv_transform_info_identity;
  v10 = *algn_2603427F0;
  v11 = xmmword_260342800;
  v12 = unk_260342810;
  pv_transform_info_make(a2, &v9);
  v7[4] = v21;
  v7[5] = v22;
  v7[6] = v23;
  v7[7] = v24;
  v7[0] = v17;
  v7[1] = v18;
  v7[2] = v19;
  v7[3] = v20;
  v6[4] = v13;
  v6[5] = v14;
  v6[6] = v15;
  v6[7] = v16;
  v6[0] = v9;
  v6[1] = v10;
  v6[2] = v11;
  v6[3] = v12;
  pv_transform_info_lerp(v7, v6, a3, v8, a4);
  pv_simd_float4x4_from_pv_transform_info(v8);
}

void pv_simd_matrix_lerp(__int128 *a1@<X0>, _OWORD *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v9 = a1[4];
  v40 = xmmword_260342820;
  v41 = qword_260342830;
  v42 = xmmword_260342840;
  v43 = qword_260342850;
  v36 = pv_transform_info_identity;
  v37 = *algn_2603427F0;
  v38 = xmmword_260342800;
  v39 = qword_260342810;
  v10 = a1[5];
  v32 = v9;
  v33 = v10;
  v11 = a1[7];
  v34 = a1[6];
  v35 = v11;
  v12 = a1[1];
  v28 = *a1;
  v29 = v12;
  v13 = a1[3];
  v30 = a1[2];
  v31 = v13;
  pv_transform_info_make(&v28, &v36);
  v32 = xmmword_260342820;
  v33 = qword_260342830;
  v34 = xmmword_260342840;
  v35 = qword_260342850;
  v28 = pv_transform_info_identity;
  v29 = *algn_2603427F0;
  v30 = xmmword_260342800;
  v31 = qword_260342810;
  v14 = a2[5];
  v27[4] = a2[4];
  v27[5] = v14;
  v15 = a2[7];
  v27[6] = a2[6];
  v27[7] = v15;
  v16 = a2[1];
  v27[0] = *a2;
  v27[1] = v16;
  v17 = a2[3];
  v27[2] = a2[2];
  v27[3] = v17;
  pv_transform_info_make(v27, &v28);
  v26[4] = v40;
  v26[5] = v41;
  v26[6] = v42;
  v26[7] = v43;
  v26[0] = v36;
  v26[1] = v37;
  v26[2] = v38;
  v26[3] = v39;
  v22 = v32;
  v23 = v33;
  v24 = v34;
  v25 = v35;
  v18 = v28;
  v19 = v29;
  v20 = v30;
  v21 = v31;
  pv_transform_info_lerp(v26, &v18, a3, v27, a5);
  pv_simd_double4x4_from_pv_transform_info(v27, a4, 0, unk_260342818, 0, 0, 0, 0, pv_transform_info_identity, *(&pv_transform_info_identity + 1), 0, unk_260342858, 0, 0, 0x3FF0000000000000, unk_260342838, xmmword_260342820, v18, v19, v20, v21, v22, v23, v24);
}

double pv_simd_matrix_convert_coordinate_system(int a1, int a2, simd_float4x4 a3, float32x4_t a4, float32x2_t a5)
{
  v5 = 0;
  if ((a1 != 1) != (a2 != 1))
  {
    v6 = -1;
  }

  else
  {
    v6 = 0;
  }

  __asm
  {
    FMOV            V7.4S, #1.0
    FMOV            V16.4S, #-1.0
  }

  _Q7.i32[1] = vbslq_s8(vdupq_n_s32(v6), _Q16, *&_Q7).i32[1];
  for (i = 1; ; i = 0)
  {
    v14 = i;
    v18 = a4.i64[0];
    v15 = *(&v18 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v5 & 1)));
    v17 = a5;
    if (vabds_f32(v15, *(&v17 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v5 & 1)))) >= 0.0001)
    {
      break;
    }

    v5 = 1;
    if ((v14 & 1) == 0)
    {
      return pv_simd_matrix_scale(a3, _Q7.f32[0], _Q7.f32[1], _Q7.f32[2]);
    }
  }

  *a4.f32 = vdiv_f32(a5, *a4.f32);
  a4.i32[2] = 1.0;
  _Q7 = vmulq_f32(_Q7, a4);
  return pv_simd_matrix_scale(a3, _Q7.f32[0], _Q7.f32[1], _Q7.f32[2]);
}

__int128 *pv_simd_matrix_convert_coordinate_system@<X0>(__int128 *result@<X0>, int a2@<W1>, int a3@<W2>, _OWORD *a4@<X8>, float64x2_t a5@<Q0>, float64x2_t a6@<Q1>, float64x2_t a7, __int128 a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15)
{
  v15 = 0;
  if ((a2 != 1) != (a3 != 1))
  {
    v16 = -1;
  }

  else
  {
    v16 = 0;
  }

  __asm { FMOV            V4.2D, #1.0 }

  v22 = vbslq_s8(vdupq_n_s64(v16), xmmword_2603429E0, _Q4);
  v23 = vextq_s8(v22, v22, 8uLL).u64[0];
  v24.f64[0] = 1.0;
  for (i = 1; ; i = 0)
  {
    v26 = i;
    a7 = a5;
    v27 = *(&a7 & 0xFFFFFFFFFFFFFFF7 | (8 * (v15 & 1)));
    vars0 = a6;
    if (vabdd_f64(v27, *(&vars0 & 0xFFFFFFFFFFFFFFF7 | (8 * (v15 & 1)))) >= 0.0001)
    {
      break;
    }

    v15 = 1;
    if ((v26 & 1) == 0)
    {
      v28 = 0;
      v29 = result[5];
      a12 = result[4];
      a13 = v29;
      v30 = result[7];
      a14 = result[6];
      a15 = v30;
      v31 = result[1];
      a8 = *result;
      a9 = v31;
      v32 = result[3];
      a10 = result[2];
      a11 = v32;
      v33.f64[0] = 0.0;
      v22.f64[1] = 0.0;
      v24.f64[1] = 0.0;
      *&v33.f64[1] = v23;
      *a4 = 0u;
      a4[1] = 0u;
      a4[2] = 0u;
      a4[3] = 0u;
      a4[4] = 0u;
      a4[5] = 0u;
      a4[6] = 0u;
      a4[7] = 0u;
      do
      {
        v35 = *(&a8 + v28 * 16);
        v34 = *(&a8 + v28 * 16 + 16);
        v36 = &a4[v28];
        *v36 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v22, v35.f64[0]), v33, v35, 1), 0, v34.f64[0]), 0, v34, 1);
        v36[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(0, v35.f64[0]), 0, v35, 1), v24, v34.f64[0]), xmmword_260342700, v34, 1);
        v28 += 2;
      }

      while (v28 != 8);
      return result;
    }
  }

  v37 = 0;
  *&v22.f64[1] = v23;
  v38 = vmulq_f64(v22, vdivq_f64(a6, a5));
  v39 = result[5];
  a12 = result[4];
  a13 = v39;
  v40 = result[7];
  a14 = result[6];
  a15 = v40;
  v41 = result[1];
  a8 = *result;
  a9 = v41;
  v42 = result[3];
  a10 = result[2];
  a11 = v42;
  v43.f64[0] = 0.0;
  v43.f64[1] = v38.f64[1];
  v24.f64[1] = 0.0;
  *a4 = 0u;
  a4[1] = 0u;
  a4[2] = 0u;
  a4[3] = 0u;
  a4[4] = 0u;
  a4[5] = 0u;
  a4[6] = 0u;
  a4[7] = 0u;
  do
  {
    v45 = *(&a8 + v37 * 16);
    v44 = *(&a8 + v37 * 16 + 16);
    v46 = &a4[v37];
    *v46 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*&v38.f64[0], v45.f64[0]), v43, v45, 1), 0, v44.f64[0]), 0, v44, 1);
    v46[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(0, v45.f64[0]), 0, v45, 1), v24, v44.f64[0]), xmmword_260342700, v44, 1);
    v37 += 2;
  }

  while (v37 != 8);
  return result;
}

double pv_simd_matrix_transform_vector(float32x4_t a1, int8x16_t a2, int8x16_t a3, __n128 a4, float32x4_t a5, float32x4_t a6)
{
  *a6.f32 = vadd_f32(a4.n128_u64[0], vadd_f32(vmul_laneq_f32(*a3.i8, a5, 2), vadd_f32(vmul_n_f32(*a1.f32, a5.f32[0]), vmul_lane_f32(*a2.i8, *a5.f32, 1))));
  v6 = vextq_s8(a3, a3, 8uLL).u64[0];
  v7 = vextq_s8(a2, a2, 8uLL).u64[0];
  v8 = vext_s8(*a5.f32, *&vextq_s8(a5, a5, 8uLL), 4uLL);
  v9 = vmul_f32(vzip1_s32(v7, v6), v8);
  a6.f32[2] = a4.n128_f32[2] + (v9.f32[1] + (vmuls_lane_f32(a5.f32[0], a1, 2) + v9.f32[0]));
  v10 = vmul_f32(vzip2_s32(v7, v6), v8);
  a1.f32[0] = a4.n128_f32[3] + (v10.f32[1] + (vmuls_lane_f32(a5.f32[0], a1, 3) + v10.f32[0]));
  a1.i64[0] = vdivq_f32(a6, vdupq_lane_s32(*a1.f32, 0)).u64[0];
  return *a1.i64;
}

float64x2_t pv_simd_matrix_transform_vector@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, float64x2_t *a3@<X8>)
{
  v3 = *(a2 + 16);
  v4 = *(a1 + 16);
  v5 = *(a1 + 48);
  v6 = *(a1 + 80);
  v7 = vaddq_f64(*(a1 + 96), vaddq_f64(vaddq_f64(vmulq_n_f64(*a1, *a2), vmulq_laneq_f64(*(a1 + 32), *a2, 1)), vmulq_n_f64(*(a1 + 64), *v3.i64)));
  v8 = vmulq_f64(*a2, vzip1q_s64(v4, v5));
  v8.f64[0] = *(a1 + 112) + vaddvq_f64(v8) + vmuld_n_f64(*v3.i64, *v6.i64);
  v9 = vmulq_f64(vextq_s8(*a2, v3, 8uLL), vzip2q_s64(v5, v6));
  v9.f64[0] = *(a1 + 120) + vmuld_lane_f64(*a2, v4, 1) + v9.f64[0] + v9.f64[1];
  v10 = vdivq_f64(v7, vdupq_lane_s64(*&v9.f64[0], 0));
  result = vdivq_f64(v8, v9);
  *a3 = v10;
  a3[1] = result;
  return result;
}

float64x2_t pv_simd_matrix_transform_vector@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  v3 = a2[1];
  v4 = vaddq_f64(vaddq_f64(vmulq_n_f64(a1[1], a2->f64[0]), vmulq_laneq_f64(a1[3], *a2, 1)), vmulq_n_f64(a1[5], v3.f64[0]));
  v5 = vmulq_laneq_f64(a1[7], v3, 1);
  result = vaddq_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(*a1, a2->f64[0]), vmulq_laneq_f64(a1[2], *a2, 1)), vmulq_n_f64(a1[4], v3.f64[0])), vmulq_laneq_f64(a1[6], v3, 1));
  *a3 = result;
  a3[1] = vaddq_f64(v4, v5);
  return result;
}

BOOL pv_is_finite(simd_float3x3 a1)
{
  v2 = a1.columns[2];
  v3 = a1.columns[1];
  if (!pv_is_finite(a1.columns[0]) || !pv_is_finite(v3))
  {
    return 0;
  }

  return pv_is_finite(v2);
}

BOOL pv_is_finite(simd_float4x4 a1)
{
  v2 = a1.columns[3];
  v3 = a1.columns[2];
  v4 = a1.columns[1];
  if (!pv_is_finite(a1.columns[0]) || !pv_is_finite(v4) || !pv_is_finite(v3))
  {
    return 0;
  }

  return pv_is_finite(v2);
}

void sub_25F9416E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  HGObject::operator delete(v19);
  if (a19)
  {
    (*(*a19 + 24))(a19);
  }

  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  _Unwind_Resume(a1);
}

void sub_25F941E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = PVRendererBase;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_25F941F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<HGRef<PVRenderJob>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25F942068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  if (v11)
  {
    (*(*v11 + 24))(v11);
  }

  _Unwind_Resume(a1);
}

void sub_25F9424BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, HGSynchronizable *a11)
{
  HGSynchronizer::~HGSynchronizer(&a11);

  _Unwind_Resume(a1);
}

void sub_25F9428D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  HGSynchronizer::~HGSynchronizer((v18 - 64));
  _Unwind_Resume(a1);
}

void sub_25F9429BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  HGSynchronizer::~HGSynchronizer((v18 - 64));
  _Unwind_Resume(a1);
}

void PVPerfStats::~PVPerfStats(PVPerfStats *this)
{
  v2 = *(this + 80);
  *(this + 80) = 0;
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x81C40B8603338);
  }

  v3 = *(this + 71);
  if (v3)
  {
    *(this + 72) = v3;
    operator delete(v3);
  }

  v4 = *(this + 60);
  if (v4)
  {
    *(this + 61) = v4;
    operator delete(v4);
  }

  v5 = *(this + 49);
  if (v5)
  {
    *(this + 50) = v5;
    operator delete(v5);
  }

  v6 = *(this + 38);
  if (v6)
  {
    *(this + 39) = v6;
    operator delete(v6);
  }

  v7 = *(this + 27);
  if (v7)
  {
    *(this + 28) = v7;
    operator delete(v7);
  }

  v8 = *(this + 16);
  if (v8)
  {
    *(this + 17) = v8;
    operator delete(v8);
  }

  v9 = (this + 32);
  std::vector<PVPerfStats::FrameStats>::__destroy_vector::operator()[abi:ne200100](&v9);
}

uint64_t std::vector<HGRef<PVRenderJob>>::__init_with_size[abi:ne200100]<HGRef<PVRenderJob>*,HGRef<PVRenderJob>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<HGRef<PVRenderJob>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25F942D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<HGRef<PVRenderJob>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<HGRef<PVRenderJob>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<HGRef<PVRenderJob>>,HGRef<PVRenderJob>*,HGRef<PVRenderJob>*,HGRef<PVRenderJob>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      *v4 = *v6;
      if (v7)
      {
        (*(*v7 + 16))(v7);
        v4 = v12;
      }

      ++v6;
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<HGRef<PVRenderJob>>,HGRef<PVRenderJob>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<HGRef<PVRenderJob>>,HGRef<PVRenderJob>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<HGRef<PVRenderJob>>,HGRef<PVRenderJob>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t *std::_AllocatorDestroyRangeReverse<std::allocator<HGRef<PVRenderJob>>,HGRef<PVRenderJob>*>::operator()[abi:ne200100](uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      result = std::allocator<HGRef<PVRenderJob>>::destroy[abi:ne200100](v5, --v3);
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t std::allocator<HGRef<PVRenderJob>>::destroy[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    return (*(*result + 24))(result);
  }

  return result;
}

void std::vector<HGRef<PVRenderJob>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        std::allocator<HGRef<PVRenderJob>>::destroy[abi:ne200100](v1, --v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<HGRef<PVRenderJob>>::__emplace_back_slow_path<HGRef<PVRenderJob> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(a1, v7);
  }

  v8 = (8 * v2);
  v17 = 0;
  v18 = v8;
  v19 = (8 * v2);
  v9 = *a2;
  *v8 = *a2;
  if (v9)
  {
    (*(*v9 + 16))(v9);
    v8 = v18;
    v10 = v19;
  }

  else
  {
    v10 = 8 * v2;
  }

  *&v19 = v10 + 8;
  v11 = *(a1 + 8);
  v12 = (v8 + *a1 - v11);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HGRef<PVRenderJob>>,HGRef<PVRenderJob>*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<HGRef<PVRenderJob>>::~__split_buffer(&v17);
  return v16;
}

void sub_25F9430BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<HGRef<PVRenderJob>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HGRef<PVRenderJob>>,HGRef<PVRenderJob>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *a4 = *v7;
      if (v8)
      {
        (*(*v8 + 16))(v8);
        a4 = v13;
      }

      ++v7;
      v13 = ++a4;
    }

    while (v7 != a3);
    v11 = 1;
    while (v5 != a3)
    {
      std::allocator<HGRef<PVRenderJob>>::destroy[abi:ne200100](a1, v5++);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<HGRef<PVRenderJob>>,HGRef<PVRenderJob>*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

void **std::__split_buffer<HGRef<PVRenderJob>>::~__split_buffer(void **a1)
{
  std::__split_buffer<HGRef<PVRenderJob>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<HGRef<PVRenderJob>>::clear[abi:ne200100](uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 32);
      *(v3 + 16) = v1 - 8;
      result = std::allocator<HGRef<PVRenderJob>>::destroy[abi:ne200100](v4, (v1 - 8));
      v1 = *(v3 + 16);
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<HGRef<PVRenderJob> *,HGRef<PVRenderJob> *,HGRef<PVRenderJob> *>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *a4;
      v8 = *v5;
      if (*a4 != *v5)
      {
        if (v7)
        {
          (*(*v7 + 24))(v7);
          v8 = *v5;
        }

        *a4 = v8;
        *v5 = 0;
      }

      ++v5;
      ++a4;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_25F943378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_25F943420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_25F9434C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_25F943570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_25F943620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_25F9436D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_25F9437D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_25F943A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_25F943B54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

void *pv_CGPoint_array_from_NSArray(void *a1)
{
  v1 = a1;
  if ([v1 count])
  {
    v2 = malloc_type_malloc(16 * [v1 count], 0x1000040451B5BE8uLL);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = *"";
    v4[2] = __pv_CGPoint_array_from_NSArray_block_invoke;
    v4[3] = &__block_descriptor_40_e24_v32__0__NSValue_8Q16_B24l;
    v4[4] = v2;
    [v1 enumerateObjectsUsingBlock:v4];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id pv_CGPoint_array_to_NSArray(uint64_t a1, unsigned int a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
    v5 = (a1 + 8);
    v6 = a2;
    do
    {
      v7 = [MEMORY[0x277CCAE60] valueWithCGPoint:{*(v5 - 1), *v5}];
      [v2 addObject:v7];

      v5 += 2;
      --v6;
    }

    while (v6);
  }

  return v2;
}

__n128 pv_CGPoint_polygon_centroid(void *a1)
{
  v1 = a1;
  v2 = [v1 count];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = 0uLL;
    v6 = 1;
    __asm { FMOV            V0.2D, #3.0 }

    v23 = _Q0;
    v12 = 0uLL;
    do
    {
      v30 = v12;
      v31 = v5;
      v13 = [v1 objectAtIndexedSubscript:{v4, *&v23}];
      [v13 CGPointValue];
      v27 = v14;
      v28 = v15;
      *&v16.f64[0] = v14;
      v16.f64[1] = v15;
      v29 = v16;

      v17 = [v1 objectAtIndexedSubscript:v6];
      [v17 CGPointValue];
      v24 = v19;
      v25 = v18;
      v20.f64[0] = v18;
      v20.f64[1] = v19;
      v26 = v20;

      v21.f64[1] = *(&v27 + 1);
      v21.f64[0] = *&v27 * v24 - v28 * v25;
      v5 = vaddq_f64(v31, vmulq_n_f64(vaddq_f64(v29, v26), v21.f64[0]));
      v12 = vaddq_f64(v30, vmulq_f64(v21, v23));
      ++v4;
      v6 = (v6 + 1) % v3;
    }

    while (v3 != v4);
  }

  else
  {
    v5 = 0uLL;
    v12.f64[0] = 0.0;
  }

  v32 = vdivq_f64(v5, vdupq_lane_s64(*&v12.f64[0], 0));

  return v32;
}

float64x2_t *pv_CGPoint_scale_polygon(float64x2_t *result, unsigned int a2, CGPoint a3, float64x2_t *a4)
{
  if (a2)
  {
    v4 = a2;
    v5 = 0uLL;
    v6 = 1;
    __asm { FMOV            V4.2D, #3.0 }

    v12 = a2;
    v13 = result;
    v14 = 0uLL;
    do
    {
      v15 = *v13++;
      v16 = result[v6];
      v17 = vmulq_f64(v15, vextq_s8(v16, v16, 8uLL));
      v18 = vsubq_f64(v17, vdupq_laneq_s64(v17, 1));
      v14 = vaddq_f64(v14, vmulq_f64(v18, _Q4));
      v5 = vaddq_f64(v5, vmulq_n_f64(vaddq_f64(v15, v16), v18.f64[0]));
      v6 = (v6 + 1) % a2;
      --v12;
    }

    while (v12);
    *&v5.f64[1] = vextq_s8(v5, v5, 8uLL).u64[0];
    v19 = vdivq_f64(v5, vdupq_lane_s64(*&v14.f64[0], 0));
    y = a3.y;
    do
    {
      v21 = *result++;
      *a4++ = vaddq_f64(v19, vmulq_f64(a3, vsubq_f64(v21, v19)));
      --v4;
    }

    while (v4);
  }

  return result;
}

id pv_CGPoint_scale_polygon(void *a1, float64_t a2, float64_t a3)
{
  v3 = a1;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = pv_CGPoint_polygon_centroid(v3).n128_u64[0];
  v16 = v6;
  v17 = v5;
  v7 = [v3 count];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    *&v10.f64[0] = v17;
    v10.f64[1] = v16;
    v18 = v10;
    v10.f64[0] = a2;
    v10.f64[1] = a3;
    v20 = v10;
    do
    {
      v11 = [v3 objectAtIndexedSubscript:v9];
      [v11 CGPointValue];
      v13.f64[1] = v12;
      v22 = v13;

      v14 = [MEMORY[0x277CCAE60] valueWithCGPoint:{vaddq_f64(v18, vmulq_f64(v20, vsubq_f64(v22, v18)))}];
      [v4 addObject:v14];

      ++v9;
    }

    while (v8 != v9);
  }

  return v4;
}

double pv_bounding_CGRect(void *a1)
{
  v1 = a1;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0x7FEFFFFFFFFFFFFFLL;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v7[3] = 0xFFEFFFFFFFFFFFFFLL;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v6[3] = 0xFFEFFFFFFFFFFFFFLL;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v5[3] = 0x7FEFFFFFFFFFFFFFLL;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = *"";
  v4[2] = ___Z18pv_bounding_CGRectP7NSArrayIP7NSValueE_block_invoke;
  v4[3] = &unk_279AA5720;
  v4[4] = &v8;
  v4[5] = v7;
  v4[6] = v6;
  v4[7] = v5;
  [v1 enumerateObjectsUsingBlock:v4];
  v2 = v9[3];
  _Block_object_dispose(v5, 8);
  _Block_object_dispose(v6, 8);
  _Block_object_dispose(v7, 8);
  _Block_object_dispose(&v8, 8);

  return v2;
}

void sub_25F944190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 112), 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t ___Z18pv_bounding_CGRectP7NSArrayIP7NSValueE_block_invoke(void *a1, void *a2)
{
  result = [a2 CGPointValue];
  v6 = *(a1[4] + 8);
  if (v4 < *(v6 + 24))
  {
    *(v6 + 24) = v4;
  }

  v7 = *(a1[5] + 8);
  if (v4 > *(v7 + 24))
  {
    *(v7 + 24) = v4;
  }

  v8 = *(a1[6] + 8);
  if (v5 > *(v8 + 24))
  {
    *(v8 + 24) = v5;
  }

  v9 = *(a1[7] + 8);
  if (v5 < *(v9 + 24))
  {
    *(v9 + 24) = v5;
  }

  return result;
}

id pv_CGRect_to_NSArray(CGRect a1)
{
  v3[8] = *MEMORY[0x277D85DE8];
  v3[0] = *&a1.origin.x;
  v3[1] = *&a1.origin.y;
  *&v3[2] = a1.origin.x + a1.size.width;
  v3[3] = *&a1.origin.y;
  *&v3[4] = a1.origin.x + a1.size.width;
  *&v3[5] = a1.origin.y + a1.size.height;
  v3[6] = *&a1.origin.x;
  *&v3[7] = a1.origin.y + a1.size.height;
  v1 = pv_CGPoint_array_to_NSArray(v3, 4u);

  return v1;
}

uint64_t pv_is_CGPoint_in_polygon(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = [v5 count];
  v7 = v6;
  if (v6)
  {
    v8 = 0;
    v9 = 0;
    LODWORD(v10) = v6 - 1;
    do
    {
      v11 = v10;
      v10 = v8;
      v12 = [v5 objectAtIndexedSubscript:v8];
      [v12 CGPointValue];
      v14 = v13;
      v16 = v15;

      v17 = [v5 objectAtIndexedSubscript:v11];
      [v17 CGPointValue];
      v19 = v18;
      v21 = v20;

      v22 = v16 <= a3 && a3 < v21;
      if (v22 || (v21 <= a3 ? (v23 = a3 < v16) : (v23 = 0), v23))
      {
        if (a2 < v14 + (a3 - v16) * (v19 - v14) / (v21 - v16))
        {
          v9 ^= 1u;
        }
      }

      v8 = v10 + 1;
    }

    while (v7 != v10 + 1);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

CGPath *pv_create_closed_CGPath_with_points(void *a1)
{
  v1 = a1;
  Mutable = CGPathCreateMutable();
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = *"";
  v4[2] = __pv_create_closed_CGPath_with_points_block_invoke;
  v4[3] = &__block_descriptor_40_e24_v32__0__NSValue_8Q16_B24l;
  v4[4] = Mutable;
  [v1 enumerateObjectsUsingBlock:v4];

  CGPathCloseSubpath(Mutable);
  return Mutable;
}

uint64_t *PVThermalLevelEntry(int a1)
{
  v4 = a1;
  if ((atomic_load_explicit(&_MergedGlobals_3, memory_order_acquire) & 1) == 0)
  {
    PVThermalLevelEntry();
  }

  if (PVThermalLevelEntry(PVSPI_OSThermalPressureLevel)::onceToken != -1)
  {
    PVThermalLevelEntry();
  }

  v1 = qword_280C5CC50;
  if (!qword_280C5CC50)
  {
    goto LABEL_12;
  }

  v2 = &qword_280C5CC50;
  do
  {
    if (*(v1 + 32) >= v4)
    {
      v2 = v1;
    }

    v1 = *(v1 + 8 * (*(v1 + 32) < v4));
  }

  while (v1);
  if (v2 == &qword_280C5CC50 || v4 < *(v2 + 8))
  {
LABEL_12:
    v4 = 99999;
  }

  v5 = &v4;
  return std::__tree<std::__value_type<PVSPI_OSThermalPressureLevel,PVSPI_OSThermalPressureLevel_Entry>,std::__map_value_compare<PVSPI_OSThermalPressureLevel,std::__value_type<PVSPI_OSThermalPressureLevel,PVSPI_OSThermalPressureLevel_Entry>,std::less<PVSPI_OSThermalPressureLevel>,true>,std::allocator<std::__value_type<PVSPI_OSThermalPressureLevel,PVSPI_OSThermalPressureLevel_Entry>>>::__emplace_unique_key_args<PVSPI_OSThermalPressureLevel,std::piecewise_construct_t const&,std::tuple<PVSPI_OSThermalPressureLevel&&>,std::tuple<>>(&qword_280C5CC48, &v4) + 5;
}

id PVThermalMonitorLevelName(int a1)
{
  v1 = *PVThermalLevelEntry(a1);

  return v1;
}

void sub_25F945914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25F945A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25F945B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25F945CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZL19PVThermalLevelEntry28PVSPI_OSThermalPressureLevel_block_invoke()
{
  v14 = 0;
  v15 = &v14;
  v0 = std::__tree<std::__value_type<PVSPI_OSThermalPressureLevel,PVSPI_OSThermalPressureLevel_Entry>,std::__map_value_compare<PVSPI_OSThermalPressureLevel,std::__value_type<PVSPI_OSThermalPressureLevel,PVSPI_OSThermalPressureLevel_Entry>,std::less<PVSPI_OSThermalPressureLevel>,true>,std::allocator<std::__value_type<PVSPI_OSThermalPressureLevel,PVSPI_OSThermalPressureLevel_Entry>>>::__emplace_unique_key_args<PVSPI_OSThermalPressureLevel,std::piecewise_construct_t const&,std::tuple<PVSPI_OSThermalPressureLevel&&>,std::tuple<>>(&qword_280C5CC48, &v14);
  v1 = v0[5];
  v0[5] = @"nominal";

  v0[6] = 0xA00000000;
  v14 = 10;
  v15 = &v14;
  v2 = std::__tree<std::__value_type<PVSPI_OSThermalPressureLevel,PVSPI_OSThermalPressureLevel_Entry>,std::__map_value_compare<PVSPI_OSThermalPressureLevel,std::__value_type<PVSPI_OSThermalPressureLevel,PVSPI_OSThermalPressureLevel_Entry>,std::less<PVSPI_OSThermalPressureLevel>,true>,std::allocator<std::__value_type<PVSPI_OSThermalPressureLevel,PVSPI_OSThermalPressureLevel_Entry>>>::__emplace_unique_key_args<PVSPI_OSThermalPressureLevel,std::piecewise_construct_t const&,std::tuple<PVSPI_OSThermalPressureLevel&&>,std::tuple<>>(&qword_280C5CC48, &v14);
  v3 = v2[5];
  v2[5] = @"light";

  v2[6] = 0x1400000000;
  v14 = 20;
  v15 = &v14;
  v4 = std::__tree<std::__value_type<PVSPI_OSThermalPressureLevel,PVSPI_OSThermalPressureLevel_Entry>,std::__map_value_compare<PVSPI_OSThermalPressureLevel,std::__value_type<PVSPI_OSThermalPressureLevel,PVSPI_OSThermalPressureLevel_Entry>,std::less<PVSPI_OSThermalPressureLevel>,true>,std::allocator<std::__value_type<PVSPI_OSThermalPressureLevel,PVSPI_OSThermalPressureLevel_Entry>>>::__emplace_unique_key_args<PVSPI_OSThermalPressureLevel,std::piecewise_construct_t const&,std::tuple<PVSPI_OSThermalPressureLevel&&>,std::tuple<>>(&qword_280C5CC48, &v14);
  v5 = v4[5];
  v4[5] = @"moderate";

  v4[6] = 0x1E0000000ALL;
  v14 = 30;
  v15 = &v14;
  v6 = std::__tree<std::__value_type<PVSPI_OSThermalPressureLevel,PVSPI_OSThermalPressureLevel_Entry>,std::__map_value_compare<PVSPI_OSThermalPressureLevel,std::__value_type<PVSPI_OSThermalPressureLevel,PVSPI_OSThermalPressureLevel_Entry>,std::less<PVSPI_OSThermalPressureLevel>,true>,std::allocator<std::__value_type<PVSPI_OSThermalPressureLevel,PVSPI_OSThermalPressureLevel_Entry>>>::__emplace_unique_key_args<PVSPI_OSThermalPressureLevel,std::piecewise_construct_t const&,std::tuple<PVSPI_OSThermalPressureLevel&&>,std::tuple<>>(&qword_280C5CC48, &v14);
  v7 = v6[5];
  v6[5] = @"heavy";

  v6[6] = 0x2800000014;
  v14 = 40;
  v15 = &v14;
  v8 = std::__tree<std::__value_type<PVSPI_OSThermalPressureLevel,PVSPI_OSThermalPressureLevel_Entry>,std::__map_value_compare<PVSPI_OSThermalPressureLevel,std::__value_type<PVSPI_OSThermalPressureLevel,PVSPI_OSThermalPressureLevel_Entry>,std::less<PVSPI_OSThermalPressureLevel>,true>,std::allocator<std::__value_type<PVSPI_OSThermalPressureLevel,PVSPI_OSThermalPressureLevel_Entry>>>::__emplace_unique_key_args<PVSPI_OSThermalPressureLevel,std::piecewise_construct_t const&,std::tuple<PVSPI_OSThermalPressureLevel&&>,std::tuple<>>(&qword_280C5CC48, &v14);
  v9 = v8[5];
  v8[5] = @"trapping";

  v8[6] = 0x320000001ELL;
  v14 = 50;
  v15 = &v14;
  v10 = std::__tree<std::__value_type<PVSPI_OSThermalPressureLevel,PVSPI_OSThermalPressureLevel_Entry>,std::__map_value_compare<PVSPI_OSThermalPressureLevel,std::__value_type<PVSPI_OSThermalPressureLevel,PVSPI_OSThermalPressureLevel_Entry>,std::less<PVSPI_OSThermalPressureLevel>,true>,std::allocator<std::__value_type<PVSPI_OSThermalPressureLevel,PVSPI_OSThermalPressureLevel_Entry>>>::__emplace_unique_key_args<PVSPI_OSThermalPressureLevel,std::piecewise_construct_t const&,std::tuple<PVSPI_OSThermalPressureLevel&&>,std::tuple<>>(&qword_280C5CC48, &v14);
  v11 = v10[5];
  v10[5] = @"sleeping";

  v10[6] = 0x3200000028;
  v15 = &PVThermalLevelEntry(PVSPI_OSThermalPressureLevel)::kNotFoundMaxLevel;
  v12 = std::__tree<std::__value_type<PVSPI_OSThermalPressureLevel,PVSPI_OSThermalPressureLevel_Entry>,std::__map_value_compare<PVSPI_OSThermalPressureLevel,std::__value_type<PVSPI_OSThermalPressureLevel,PVSPI_OSThermalPressureLevel_Entry>,std::less<PVSPI_OSThermalPressureLevel>,true>,std::allocator<std::__value_type<PVSPI_OSThermalPressureLevel,PVSPI_OSThermalPressureLevel_Entry>>>::__emplace_unique_key_args<PVSPI_OSThermalPressureLevel,std::piecewise_construct_t const&,std::tuple<PVSPI_OSThermalPressureLevel&&>,std::tuple<>>(&qword_280C5CC48, &PVThermalLevelEntry(PVSPI_OSThermalPressureLevel)::kNotFoundMaxLevel);
  v13 = v12[5];
  v12[5] = @"unknown";

  v12[6] = 0x3200000000;
}

uint64_t *std::__tree<std::__value_type<PVSPI_OSThermalPressureLevel,PVSPI_OSThermalPressureLevel_Entry>,std::__map_value_compare<PVSPI_OSThermalPressureLevel,std::__value_type<PVSPI_OSThermalPressureLevel,PVSPI_OSThermalPressureLevel_Entry>,std::less<PVSPI_OSThermalPressureLevel>,true>,std::allocator<std::__value_type<PVSPI_OSThermalPressureLevel,PVSPI_OSThermalPressureLevel_Entry>>>::__emplace_unique_key_args<PVSPI_OSThermalPressureLevel,std::piecewise_construct_t const&,std::tuple<PVSPI_OSThermalPressureLevel&&>,std::tuple<>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_25F9464E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = PVHGBitmapImageBufferImpl;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t pv_get_string_representation(simd_float3x3 a1, char *a2, size_t a3, uint64_t a4)
{
  v22 = a1;
  v7.n128_f64[0] = pv_simd_matrix_get_row(a1, 0);
  if (a2)
  {
    v8 = a3;
  }

  else
  {
    v8 = 0;
  }

  string_representation = pv_get_string_representation(a2, v8, a4, v7);
  v10 = string_representation;
  v11 = 0;
  for (i = 1; i != 3; ++i)
  {
    v13 = v11 + string_representation;
    if (a2)
    {
      v14 = &a2[v13];
    }

    else
    {
      v14 = 0;
    }

    if (a2)
    {
      v15 = a3 - v13;
    }

    else
    {
      v15 = 0;
    }

    v16 = snprintf(v14, v15, ",\n", *v22.columns, *&v22.columns[1], *&v22.columns[2]);
    v11 = v13 + v16;
    v17 = v16 + v10;
    if (a2)
    {
      v18 = &a2[v11];
    }

    else
    {
      v18 = 0;
    }

    if (a2)
    {
      v19 = a3 - v11;
    }

    else
    {
      v19 = 0;
    }

    v20.n128_f64[0] = pv_simd_matrix_get_row(v22, i);
    string_representation = pv_get_string_representation(v18, v19, a4, v20);
    v10 = string_representation + v17;
  }

  return (string_representation + v17);
}

uint64_t pv_get_string_representation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = *(a1 + 48);
    v25 = *(a1 + 32);
    v26 = v11;
    v12 = *(a1 + 80);
    v27 = *(a1 + 64);
    v28 = v12;
    v13 = *(a1 + 16);
    v23 = *a1;
    v24 = v13;
    pv_simd_matrix_get_row(&v23, v8, v29);
    v14 = a2 ? (a2 + v10) : 0;
    v15 = a2 ? a3 - v10 : 0;
    v23 = v29[0];
    v24 = v29[1];
    string_representation = pv_get_string_representation(&v23, v14, v15, a4);
    v17 = (string_representation + v9);
    if (v8 == 2)
    {
      break;
    }

    v18 = v10 + string_representation;
    if (a2)
    {
      v19 = (a2 + v18);
    }

    else
    {
      v19 = 0;
    }

    if (a2)
    {
      v20 = a3 - v18;
    }

    else
    {
      v20 = 0;
    }

    v21 = snprintf(v19, v20, ",\n");
    v9 = v21 + v17;
    v10 = v18 + v21;
    ++v8;
  }

  return v17;
}

{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = *(a1 + 80);
    v28 = *(a1 + 64);
    v29 = v11;
    v12 = *(a1 + 112);
    v30 = *(a1 + 96);
    v31 = v12;
    v13 = *(a1 + 16);
    v24 = *a1;
    v25 = v13;
    v14 = *(a1 + 48);
    v26 = *(a1 + 32);
    v27 = v14;
    pv_simd_matrix_get_row(&v24, v8, v32);
    v15 = a2 ? (a2 + v10) : 0;
    v16 = a2 ? a3 - v10 : 0;
    v24 = v32[0];
    v25 = v32[1];
    string_representation = pv_get_string_representation(v24.i8, v15, v16, a4);
    v18 = (string_representation + v9);
    if (v8 == 3)
    {
      break;
    }

    v19 = v10 + string_representation;
    if (a2)
    {
      v20 = (a2 + v19);
    }

    else
    {
      v20 = 0;
    }

    if (a2)
    {
      v21 = a3 - v19;
    }

    else
    {
      v21 = 0;
    }

    v22 = snprintf(v20, v21, ",\n");
    v9 = v22 + v18;
    v10 = v19 + v22;
    ++v8;
  }

  return v18;
}

uint64_t pv_get_string_representation(simd_float4x4 a1, char *a2, size_t a3, uint64_t a4)
{
  v22 = a1;
  v7.n128_f64[0] = pv_simd_matrix_get_row(a1, 0);
  if (a2)
  {
    v8 = a3;
  }

  else
  {
    v8 = 0;
  }

  string_representation = pv_get_string_representation(a2, v8, a4, v7);
  v10 = string_representation;
  v11 = 0;
  for (i = 1; i != 4; ++i)
  {
    v13 = v11 + string_representation;
    if (a2)
    {
      v14 = &a2[v13];
    }

    else
    {
      v14 = 0;
    }

    if (a2)
    {
      v15 = a3 - v13;
    }

    else
    {
      v15 = 0;
    }

    v16 = snprintf(v14, v15, ",\n", *v22.columns, *&v22.columns[1], *&v22.columns[2], *&v22.columns[3]);
    v11 = v13 + v16;
    v17 = v16 + v10;
    if (a2)
    {
      v18 = &a2[v11];
    }

    else
    {
      v18 = 0;
    }

    if (a2)
    {
      v19 = a3 - v11;
    }

    else
    {
      v19 = 0;
    }

    v20.n128_f64[0] = pv_simd_matrix_get_row(v22, i);
    string_representation = pv_get_string_representation(v18, v19, a4, v20);
    v10 = string_representation + v17;
  }

  return (string_representation + v17);
}

void sub_25F946DC4(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x2666E9F00](v3, 0x10A1C40BBCAB520);

  _Unwind_Resume(a1);
}

void sub_25F946ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = PVEffectScheduler;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_25F9471C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_25F947858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

uint64_t LoadableInstruction::LoadInstructionGraphNodes(uint64_t result, uint64_t *a2)
{
  if ((*(result + 12) & 1) == 0)
  {
    *(result + 12) = 1;
    v2 = *(result + 16);
    v3 = *a2;
    v4 = v3;
    if (v3)
    {
      (*(*v3 + 16))(v3);
    }

    [v2 loadInstructionGraphNodes:&v4];
    result = v4;
    if (v4)
    {
      return (*(*v4 + 24))(v4);
    }
  }

  return result;
}

void sub_25F9479DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL LoadableInstruction::ShouldLoadForTime(LoadableInstruction *this, CMTime *a2, CMTime *a3, int a4)
{
  if (*(this + 12))
  {
    return 0;
  }

  v29 = v4;
  v30 = v5;
  v7 = a4;
  v11 = 28;
  if (a4)
  {
    v11 = 76;
  }

  v12 = (this + v11);
  v13 = v12[1];
  v26 = *v12;
  v27 = v13;
  v15 = *v12;
  v14 = v12[1];
  v28 = v12[2];
  *&v25.start.value = v15;
  *&v25.start.epoch = v14;
  *&v25.duration.timescale = v12[2];
  v19.start = *a2;
  v16 = CMTimeRangeContainsTime(&v25, &v19.start);
  result = v16 != 0;
  if (!v16 && (v7 & 1) == 0)
  {
    if (*(this + 24))
    {
      return 0;
    }

    memset(&v24, 0, sizeof(v24));
    v17 = +[PVDeviceCharacteristics isLowMemDevice];
    v18 = 0.9;
    if (!v17)
    {
      v18 = 3.0;
    }

    CMTimeMakeWithSeconds(&v24, v18, 30);
    memset(&v23, 0, sizeof(v23));
    *&v25.start.value = *&a2->value;
    v25.start.epoch = a2->epoch;
    v19.start = v24;
    CMTimeAdd(&v23, &v25.start, &v19.start);
    v25.start = v23;
    *&v19.start.value = *&a3->value;
    v19.start.epoch = a3->epoch;
    if (CMTimeCompare(&v25.start, &v19.start) < 0)
    {
      return 0;
    }

    else
    {
      memset(&v22, 0, sizeof(v22));
      v25.start = v24;
      lhs = *a3;
      rhs = *a2;
      CMTimeSubtract(&v19.start, &lhs, &rhs);
      CMTimeSubtract(&v22, &v25.start, &v19.start);
      memset(&v25, 0, sizeof(v25));
      CMTimeMakeWithSeconds(&v19.start, -3.0, a2->timescale);
      lhs = v22;
      CMTimeRangeMake(&v25, &v19.start, &lhs);
      v19 = v25;
      *&lhs.value = v26;
      lhs.epoch = v27;
      return CMTimeRangeContainsTime(&v19, &lhs) != 0;
    }
  }

  return result;
}

BOOL LoadableInstruction::ShouldReleaseForTime(LoadableInstruction *this, CMTime *a2, CMTime *a3)
{
  if (*(this + 12) != 1)
  {
    return 0;
  }

  v17 = v3;
  v18 = v4;
  v8 = *(this + 140);
  *&range.start.value = *(this + 124);
  *&range.start.epoch = v8;
  *&range.duration.timescale = *(this + 156);
  time = *a2;
  if (CMTimeRangeContainsTime(&range, &time))
  {
    return 0;
  }

  memset(&time, 0, sizeof(time));
  v10 = +[PVDeviceCharacteristics isLowMemDevice];
  v11 = 0.9;
  if (!v10)
  {
    v11 = 3.0;
  }

  CMTimeMakeWithSeconds(&time, v11, 30);
  memset(&v14, 0, sizeof(v14));
  *&range.start.value = *&a2->value;
  range.start.epoch = a2->epoch;
  v13 = time;
  CMTimeAdd(&v14, &range.start, &v13);
  range.start = v14;
  v13 = *a3;
  if (CMTimeCompare(&range.start, &v13) < 0)
  {
    return 1;
  }

  v12 = *(this + 140);
  *&range.start.value = *(this + 124);
  *&range.start.epoch = v12;
  *&range.duration.timescale = *(this + 156);
  v13 = **&MEMORY[0x277CC08F0];
  return CMTimeRangeContainsTime(&range, &v13) == 0;
}

uint64_t std::__tree<HGRef<LoadableInstruction>,LoadableInstructionCompare,std::allocator<HGRef<LoadableInstruction>>>::__emplace_unique_key_args<HGRef<LoadableInstruction>,HGRef<LoadableInstruction> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = *std::__tree<HGRef<LoadableInstruction>,LoadableInstructionCompare,std::allocator<HGRef<LoadableInstruction>>>::__find_equal<HGRef<LoadableInstruction>>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<HGRef<LoadableInstruction>,LoadableInstructionCompare,std::allocator<HGRef<LoadableInstruction>>>::__construct_node<HGRef<LoadableInstruction> const&>();
  }

  return v2;
}

void *std::__tree<HGRef<LoadableInstruction>,LoadableInstructionCompare,std::allocator<HGRef<LoadableInstruction>>>::__find_equal<HGRef<LoadableInstruction>>(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!LoadableInstruction::operator<(*a3, v4[4]))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!LoadableInstruction::operator<(v7[4], *a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<HGRef<LoadableInstruction>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<HGRef<LoadableInstruction>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<HGRef<LoadableInstruction>,0>(v2 + 4);
    }

    operator delete(v2);
  }

  return a1;
}

BOOL LoadableInstruction::operator<(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    [v3 timeRange];
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
  }

  *&time1.value = v8;
  time1.epoch = v9;
  v4 = *(a2 + 16);
  if (v4)
  {
    [v4 timeRange];
  }

  else
  {
    memset(&v6, 0, sizeof(v6));
  }

  time2 = v6;
  return CMTimeCompare(&time1, &time2) == -1;
}

uint64_t std::__destroy_at[abi:ne200100]<HGRef<LoadableInstruction>,0>(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    return (*(*result + 24))(result);
  }

  return result;
}

void std::__tree<HGRef<LoadableInstruction>,LoadableInstructionCompare,std::allocator<HGRef<LoadableInstruction>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<HGRef<LoadableInstruction>,LoadableInstructionCompare,std::allocator<HGRef<LoadableInstruction>>>::destroy(a1, *a2);
    std::__tree<HGRef<LoadableInstruction>,LoadableInstructionCompare,std::allocator<HGRef<LoadableInstruction>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<HGRef<LoadableInstruction>,0>(a2 + 4);

    operator delete(a2);
  }
}

void LoadableInstruction::LoadableInstruction(LoadableInstruction *this, PVVideoCompositionInstruction *a2, int a3)
{
  v5 = a2;
  HGObject::HGObject(this);
  *this = &unk_2871CE138;
  *(this + 12) = 0;
  v6 = v5;
  *(this + 2) = v6;
  *(this + 24) = a3;
  if (+[PVDeviceCharacteristics actualMemory]> 0x40000000)
  {
    CMTimeMakeWithSeconds(&v20.start, 3.0, 30);
    v23 = v20.start;
    CMTimeMakeWithSeconds(&v20.start, 1.0, 30);
    v22 = v20.start;
    CMTimeMakeWithSeconds(&v20.start, 3.1, 30);
  }

  else
  {
    CMTimeMakeWithSeconds(&v20.start, 0.9, 30);
    v23 = v20.start;
    CMTimeMakeWithSeconds(&v20.start, 0.5, 30);
    v22 = v20.start;
    CMTimeMakeWithSeconds(&v20.start, 1.0, 30);
  }

  v21 = v20.start;
  if (v6)
  {
    [(PVVideoCompositionInstruction *)v6 timeRange];
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
  }

  lhs = v16;
  *&lhs_16[0] = v17;
  rhs = v22;
  CMTimeSubtract(&start, &lhs, &rhs);
  if (v6)
  {
    [(PVVideoCompositionInstruction *)v6 timeRange];
  }

  else
  {
    memset(lhs_16, 0, sizeof(lhs_16));
    lhs = 0u;
  }

  rhs = *(lhs_16 + 8);
  v11 = v22;
  CMTimeAdd(&v14, &rhs, &v11);
  v11 = v22;
  CMTimeAdd(&rhs, &v14, &v11);
  CMTimeRangeMake(&v20, &start, &rhs);
  v7 = *&v20.start.epoch;
  *(this + 76) = *&v20.start.value;
  *(this + 92) = v7;
  *(this + 108) = *&v20.duration.timescale;
  if (a3)
  {
    if (v6)
    {
      [(PVVideoCompositionInstruction *)v6 timeRange];
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
      v16 = 0u;
    }

    lhs = v16;
    *&lhs_16[0] = v17;
    CMTimeMakeWithSeconds(&rhs, 0.9, 30);
    CMTimeSubtract(&start, &lhs, &rhs);
    if (v6)
    {
      [(PVVideoCompositionInstruction *)v6 timeRange];
    }

    else
    {
      memset(lhs_16, 0, sizeof(lhs_16));
      lhs = 0u;
    }

    v14 = *(lhs_16 + 8);
    CMTimeMakeWithSeconds(&v11, 0.9, 30);
    CMTimeAdd(&rhs, &v14, &v11);
    CMTimeRangeMake(&v20, &start, &rhs);
    v9 = *&v20.start.epoch;
    *(this + 28) = *&v20.start.value;
    *(this + 44) = v9;
    *(this + 60) = *&v20.duration.timescale;
    if (v6)
    {
      [(PVVideoCompositionInstruction *)v6 timeRange];
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
      v16 = 0u;
    }

    lhs = v16;
    *&lhs_16[0] = v17;
    CMTimeMakeWithSeconds(&rhs, 1.0, 30);
    CMTimeSubtract(&start, &lhs, &rhs);
    if (v6)
    {
      [(PVVideoCompositionInstruction *)v6 timeRange];
    }

    else
    {
      memset(lhs_16, 0, sizeof(lhs_16));
      lhs = 0u;
    }

    v14 = *(lhs_16 + 8);
    CMTimeMakeWithSeconds(&v11, 1.0, 30);
    CMTimeAdd(&rhs, &v14, &v11);
    CMTimeRangeMake(&v20, &start, &rhs);
  }

  else
  {
    if (v6)
    {
      [(PVVideoCompositionInstruction *)v6 timeRange];
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
      v16 = 0u;
    }

    lhs = v16;
    *&lhs_16[0] = v17;
    rhs = v23;
    CMTimeSubtract(&start, &lhs, &rhs);
    if (v6)
    {
      [(PVVideoCompositionInstruction *)v6 timeRange];
    }

    else
    {
      memset(lhs_16, 0, sizeof(lhs_16));
      lhs = 0u;
    }

    v14 = *(lhs_16 + 8);
    v11 = v23;
    CMTimeAdd(&rhs, &v14, &v11);
    CMTimeRangeMake(&v20, &start, &rhs);
    v8 = *&v20.start.epoch;
    *(this + 28) = *&v20.start.value;
    *(this + 44) = v8;
    *(this + 60) = *&v20.duration.timescale;
    if (v6)
    {
      [(PVVideoCompositionInstruction *)v6 timeRange];
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
      v16 = 0u;
    }

    lhs = v16;
    *&lhs_16[0] = v17;
    rhs = v21;
    CMTimeSubtract(&start, &lhs, &rhs);
    if (v6)
    {
      [(PVVideoCompositionInstruction *)v6 timeRange];
    }

    else
    {
      memset(lhs_16, 0, sizeof(lhs_16));
      lhs = 0u;
    }

    rhs = *(lhs_16 + 8);
    v11 = v21;
    CMTimeAdd(&v14, &rhs, &v11);
    v11 = v21;
    CMTimeAdd(&rhs, &v14, &v11);
    CMTimeRangeMake(&v20, &start, &rhs);
  }

  v10 = *&v20.start.epoch;
  *(this + 124) = *&v20.start.value;
  *(this + 140) = v10;
  *(this + 156) = *&v20.duration.timescale;
}

void sub_25F9489B4(_Unwind_Exception *a1)
{
  HGObject::~HGObject(v1);

  _Unwind_Resume(a1);
}

void LoadableInstruction::~LoadableInstruction(id *this)
{

  HGObject::~HGObject(this);
}

{

  HGObject::~HGObject(this);

  HGObject::operator delete(v2);
}

void pv_simd_make_quatf_with_eulers(float32x4_t a1)
{
  __sincosf_stret(0.5 * a1.f32[0]);
  __sincosf_stret(vmuls_lane_f32(0.5, *a1.f32, 1));
  __sincosf_stret(vmuls_lane_f32(0.5, a1, 2));
}

void pv_simd_make_quatd_with_eulers(float64x2_t *a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  v39 = *a1;
  v7 = __sincos_stret(0.5 * a1->f64[0]);
  v6.f64[0] = v7.__sinval;
  *&v33 = *&vmulq_f64(v6, 0);
  v34 = vmulq_n_f64(xmmword_2603426F0, v7.__sinval);
  v32 = vextq_s8(v34, v34, 8uLL).u64[0];
  v6.f64[0] = v33;
  v6.f64[1] = v7.__cosval;
  v35 = v6;
  v9 = __sincos_stret(vmuld_lane_f64(0.5, v39, 1));
  v8.f64[0] = v9.__sinval;
  *&v10.f64[0] = *&vmulq_f64(v8, 0);
  v40 = vmulq_n_f64(xmmword_260342700, v9.__sinval);
  v36 = vextq_s8(v40, v40, 8uLL).u64[0];
  v38 = v10.f64[0];
  v10.f64[1] = v9.__cosval;
  v37 = v10;
  v11 = __sincos_stret(a1[1].f64[0] * 0.5);
  v12 = vmulq_n_f64(0, v11.__sinval);
  v13 = v12.f64[0];
  v14 = vextq_s8(v12, v12, 8uLL).u64[0];
  *a3 = 0u;
  a3[1] = 0u;
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v19 = v12.f64[0];
      v21 = *&v14;
      sinval = v11.__sinval;
      v12 = v34;
      v22 = v35;
      v23 = v11;
      v16 = v38;
      v15 = *v40.i64;
      v18 = *&v36;
      v17 = v37;
    }

    else
    {
      sinval = v38;
      v12 = v40;
      v21 = *&v36;
      v23 = v37;
      if (a2 == 4)
      {
        sinval = v33;
        v19 = *v34.i64;
        v21 = *&v32;
        v22 = v37;
        v23 = v35;
      }

      else
      {
        if (a2 != 5)
        {
          return;
        }

        v19 = *v40.i64;
        v12 = v34;
        v22 = v35;
      }

      v15 = v13;
      v18 = *&v14;
      v16 = v11.__sinval;
      v17 = v11;
    }

    goto LABEL_16;
  }

  if (!a2)
  {
    sinval = v38;
    v19 = *v40.i64;
    v21 = *&v36;
    v23 = v37;
    v22 = v11;
LABEL_13:
    v16 = v33;
    v15 = *v34.i64;
    v18 = *&v32;
    v17 = v35;
    goto LABEL_16;
  }

  v16 = v38;
  v15 = *v40.i64;
  v18 = *&v36;
  v17 = v37;
  if (a2 == 1)
  {
    v19 = v12.f64[0];
    v21 = *&v14;
    sinval = v11.__sinval;
    v12 = v40;
    v22 = v37;
    v23 = v11;
    goto LABEL_13;
  }

  sinval = v33;
  v19 = *v34.i64;
  v21 = *&v32;
  v22 = v11;
  v23 = v35;
  if (a2 == 2)
  {
LABEL_16:
    v24 = vnegq_f64(v12);
    v25 = vextq_s8(v22, vnegq_f64(v22), 8uLL);
    v26 = vmulq_n_f64(v24, v21);
    v27 = vmlaq_n_f64(vmulq_n_f64(v22, v21), v25, v19);
    v28 = vaddq_f64(vmlaq_n_f64(v26, vextq_s8(v12, v24, 8uLL), v19), vmlaq_n_f64(vmulq_laneq_f64(v22, v23, 1), v25, sinval));
    v29 = vaddq_f64(v27, vmlaq_n_f64(vmulq_laneq_f64(v12, v23, 1), vextq_s8(v24, v12, 8uLL), sinval));
    v30 = vnegq_f64(v29);
    v31 = vextq_s8(v28, vnegq_f64(v28), 8uLL);
    *a3 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v29, v17, 1), vextq_s8(v30, v29, 8uLL), v16), vmlaq_n_f64(vmulq_n_f64(v28, v18), v31, v15));
    a3[1] = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v28, v17, 1), v31, v16), vmlaq_n_f64(vmulq_n_f64(v30, v18), vextq_s8(v29, v30, 8uLL), v15));
  }
}

void sub_25F9492F4(_Unwind_Exception *a1)
{
  HGObject::operator delete(v1);
  v4 = *(v2 - 64);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(v2 - 56);
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  _Unwind_Resume(a1);
}

void CachedImageInfo::CachedImageInfo(CachedImageInfo *this)
{
  this->cached = 0;
  this->size = *MEMORY[0x277CBF3A8];
  this->imageExists = 0;
  this->_source = 0;
  operator new();
}

void sub_25F949590(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v2, 0x10A1C40BBCAB520);
  objc_destroyWeak(v1);
  _Unwind_Resume(a1);
}

void CachedImageInfo::~CachedImageInfo(CachedImageInfo *this)
{
  lock = this->_lock;
  if (lock)
  {
    (*(lock->var0 + 1))(lock);
  }

  objc_destroyWeak(&this->_source);
}

void CachedImageInfo::SetSourceNode(CachedImageInfo *this, PVInstructionGraphImageSourceNode *a2)
{
  obj = a2;
  lock = this->_lock;
  HGSynchronizable::Lock(lock);
  objc_storeWeak(&this->_source, obj);
  HGSynchronizable::Unlock(lock);
}

HGSynchronizable *CachedImageInfo::Init(CachedImageInfo *this)
{
  lock = this->_lock;
  v11 = lock;
  v12 = 0;
  HGSynchronizable::Lock(lock);
  if (!this->cached)
  {
    v3 = objc_autoreleasePoolPush();
    v10 = *MEMORY[0x277CBF3A8];
    WeakRetained = objc_loadWeakRetained(&this->_source);
    v5 = [WeakRetained imageDelegate];
    v6 = objc_loadWeakRetained(&this->_source);
    v7 = [v6 url];
    v8 = objc_loadWeakRetained(&this->_source);
    this->imageExists = [v5 isImageValid:v7 renderingIntent:objc_msgSend(v8 size:{"renderingIntent"), &v10}];

    if (this->imageExists)
    {
      this->size = v10;
    }

    this->cached = 1;
    objc_autoreleasePoolPop(v3);
  }

  return HGSynchronizable::Unlock(lock);
}

void sub_25F9497A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

HGSynchronizable *CachedImageInfo::Init(CachedImageInfo *this, BOOL a2, CGSize a3)
{
  height = a3.height;
  width = a3.width;
  lock = this->_lock;
  HGSynchronizable::Lock(lock);
  if (!this->cached)
  {
    this->imageExists = a2;
    this->size.width = width;
    this->size.height = height;
    this->cached = 1;
  }

  return HGSynchronizable::Unlock(lock);
}

void sub_25F949C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = PVInputBitmapCache;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_25F949FC4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25F94A5A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  _Unwind_Resume(a1);
}

void sub_25F94A9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 24))(a11);
  }

  _Unwind_Resume(a1);
}

void sub_25F94B148(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(a1);
}

void sub_25F94D308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  (*(*v25 + 24))(v25);

  HGTraceGuard::~HGTraceGuard(&STACK[0x2A8]);
  _Unwind_Resume(a1);
}

uint64_t std::vector<HGRef<HGBitmap>>::__init_with_size[abi:ne200100]<HGRef<HGBitmap>*,HGRef<HGBitmap>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<HGRef<PVRenderJob>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25F94E38C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<HGRef<HGBitmap>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<HGRef<HGBitmap>>,HGRef<HGBitmap>*,HGRef<HGBitmap>*,HGRef<HGBitmap>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      *v4 = *v6;
      if (v7)
      {
        (*(*v7 + 16))(v7);
        v4 = v12;
      }

      ++v6;
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<HGRef<HGBitmap>>,HGRef<HGBitmap>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::vector<HGRef<HGBitmap>>::__assign_with_size[abi:ne200100]<HGRef<HGBitmap>*,HGRef<HGBitmap>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 3)
  {
    std::vector<HGRef<HGBitmap>>::__vdeallocate(a1);
    if (!(a4 >> 61))
    {
      v9 = *(a1 + 16) - *a1;
      v10 = v9 >> 2;
      if (v9 >> 2 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF8)
      {
        v11 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<HGRef<PVRenderJob>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v12 = *(a1 + 8) - v8;
  if (a4 <= v12 >> 3)
  {
    result = std::__copy_impl::operator()[abi:ne200100]<HGRef<HGBitmap> *,HGRef<HGBitmap> *,HGRef<HGBitmap> *>(&v18, a2, a3, v8);
    v15 = v14;
    v16 = *(a1 + 8);
    if (v16 != v14)
    {
      do
      {
        result = std::allocator<HGRef<HGBitmap>>::destroy[abi:ne200100](a1, --v16);
      }

      while (v16 != v15);
    }

    *(a1 + 8) = v15;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<HGRef<HGBitmap> *,HGRef<HGBitmap> *,HGRef<HGBitmap> *>(&v17, a2, (a2 + v12), v8);
    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<HGRef<HGBitmap>>,HGRef<HGBitmap>*,HGRef<HGBitmap>*,HGRef<HGBitmap>*>(a1, (a2 + v12), a3, *(a1 + 8));
    *(a1 + 8) = result;
  }

  return result;
}

void std::vector<HGRef<HGBitmap>>::__vdeallocate(uint64_t **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        std::allocator<HGRef<HGBitmap>>::destroy[abi:ne200100](a1, --v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t *std::__copy_impl::operator()[abi:ne200100]<HGRef<HGBitmap> *,HGRef<HGBitmap> *,HGRef<HGBitmap> *>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *a4;
      v8 = *v5;
      if (*a4 != *v5)
      {
        if (v7)
        {
          (*(*v7 + 24))(*a4);
          v8 = *v5;
        }

        *a4 = v8;
        if (v8)
        {
          (*(*v8 + 16))(v8);
        }
      }

      ++v5;
      ++a4;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_25F94EDF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_25F94EEE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_25F950B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61)
{
  v65 = *(v63 - 208);
  if (v65)
  {
    (*(*v65 + 24))(v65);
  }

  if (STACK[0x298])
  {
    (*(*STACK[0x298] + 24))(STACK[0x298]);
  }

  if (*v61)
  {
    (*(**v61 + 24))(*v61);
  }

  HGTraceGuard::~HGTraceGuard(&STACK[0x360]);
  _Unwind_Resume(a1);
}

void PVInputHGNodeMap<PVInstructionGraphSourceNode * {__strong}>::GetFrameDataPixelBuffer(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v13 = a2;
  v7 = *(a1 + 80);
  v6 = a1 + 80;
  v5 = v7;
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v6;
  do
  {
    v9 = *(v5 + 32);
    v10 = v9 >= v13;
    v11 = v9 < v13;
    if (v10)
    {
      v8 = v5;
    }

    v5 = *(v5 + 8 * v11);
  }

  while (v5);
  if (v8 != v6 && *(v8 + 32) <= v13)
  {
    v12 = *(v8 + 40);
    *a3 = v12;
    if (v12)
    {
      (*(*v12 + 16))(v12);
    }
  }

  else
  {
LABEL_9:
    HGCVBitmap::create(0, 1, 0, a3);
  }
}

void PVInputHGNodeMap<PVInstructionGraphSourceNode * {__strong}>::GetInputSize(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2;
  v8 = *(a1 + 32);
  v7 = a1 + 32;
  v6 = v8;
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v7;
  do
  {
    v10 = *(v6 + 32);
    _CF = v10 >= v5;
    v12 = v10 < v5;
    if (_CF)
    {
      v9 = v6;
    }

    v6 = *(v6 + 8 * v12);
  }

  while (v6);
  if (v9 != v7 && *(v9 + 32) <= v5)
  {
    v17 = *(v9 + 56);
    *a3 = *(v9 + 40);
    *(a3 + 16) = v17;
  }

  else
  {
LABEL_9:
    *a3 = 0;
    *(a3 + 8) = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    *(a3 + 16) = _Q0;
  }
}

void coloredDotHGNode(double a1, double a2, double a3, double a4)
{
  HGRectMakeWithCGRect(*&a1);
  v4 = HGObject::operator new(0x1A0uLL);
  HGSolidColor::HGSolidColor(v4);
}

void sub_25F951408(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  (*(*v1 + 24))(v1);
  _Unwind_Resume(a1);
}

void sub_25F952160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  _Unwind_Resume(a1);
}

void sub_25F9529A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v25 = *(v23 - 72);
  if (v25)
  {
    (*(*v25 + 24))(v25);
  }

  if (a19)
  {
    (*(*a19 + 24))(a19);
  }

  if (a11)
  {
    (*(*a11 + 24))(a11);
  }

  if (*v19)
  {
    (*(**v19 + 24))(*v19);
  }

  _Unwind_Resume(a1);
}

void sub_25F9530DC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_25F9535F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  HGObject::operator delete(v10);
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t PVNumbersAreEqualAsBooleans(void *a1, void *a2)
{
  v3 = a2;
  LODWORD(a1) = [a1 BOOLValue];
  v4 = [v3 BOOLValue];

  return a1 ^ v4 ^ 1;
}

BOOL PVNumbersAreEqualAsDoubles(void *a1, void *a2)
{
  v3 = a2;
  [a1 doubleValue];
  v5 = v4;
  [v3 doubleValue];
  v7 = v6;

  return vabdd_f64(v5, v7) < 0.0001;
}

BOOL PVNumbersAreEqualAsIntegers(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 integerValue];
  v5 = [v3 integerValue];

  return v4 == v5;
}

BOOL PVValuesAreEqualAsCGSizes(void *a1, void *a2)
{
  v3 = a2;
  [a1 CGSizeValue];
  v5 = v4;
  v7 = v6;
  [v3 CGSizeValue];
  v9 = v8;
  v11 = v10;

  return v7 == v11 && v5 == v9;
}

void sub_25F9538C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(a1);
}

void sub_25F953AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(a1);
}

void sub_25F953B88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = PVCVPixelBufferImageBufferImpl;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_25F953DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a17)
  {
    (*(*a17 + 24))(a17);
  }

  _Unwind_Resume(a1);
}

void sub_25F953FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  _Unwind_Resume(a1);
}

CGFloat CGAffineTransformFromPVAnimInfo@<D0>(CGFloat *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277CBF2C0];
  v5 = *MEMORY[0x277CBF2C0];
  v6 = *(MEMORY[0x277CBF2C0] + 16);
  *a2 = *MEMORY[0x277CBF2C0];
  *(a2 + 16) = v6;
  v7 = *(v4 + 32);
  *(a2 + 32) = v7;
  *&v14.a = v5;
  *&v14.c = v6;
  *&v14.tx = v7;
  CGAffineTransformTranslate(a2, &v14, a1[3], a1[4]);
  v8 = *(a2 + 16);
  *&v13.a = *a2;
  *&v13.c = v8;
  *&v13.tx = *(a2 + 32);
  CGAffineTransformScale(&v14, &v13, a1[5], a1[5]);
  v9 = *&v14.c;
  *a2 = *&v14.a;
  *(a2 + 16) = v9;
  *(a2 + 32) = *&v14.tx;
  v10 = *(a2 + 16);
  *&v13.a = *a2;
  *&v13.c = v10;
  *&v13.tx = *(a2 + 32);
  CGAffineTransformRotate(&v14, &v13, a1[6] * 3.14159265 / 180.0);
  v11 = *&v14.c;
  *a2 = *&v14.a;
  *(a2 + 16) = v11;
  result = v14.tx;
  *(a2 + 32) = *&v14.tx;
  return result;
}

CGFloat CGAffineTransformFromPointWithPVAnimInfo@<D0>(PVTransformAnimationInfo *a1@<X0>, CGPoint a2@<0:D0, 8:D1>, uint64_t a3@<X8>)
{
  v3 = *&a1->time.epoch;
  *&v6.time.value = *&a1->time.value;
  *&v6.time.epoch = v3;
  *&v6.translation.y = *&a1->translation.y;
  v6.rotation = a1->rotation;
  v4 = 1.0;
  *&v3 = 1.0;
  return CGAffineTransformFromPointWithPVAnimInfo(&v6, a2, *(&v3 - 8), a3);
}

CGFloat CGAffineTransformFromPointWithPVAnimInfo@<D0>(PVTransformAnimationInfo *a1@<X0>, CGPoint a2@<0:D0, 8:D1>, CGSize a3@<0:D2, 8:D3>, uint64_t a4@<X8>)
{
  height = a3.height;
  width = a3.width;
  y = a2.y;
  x = a2.x;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  CGAffineTransformMakeTranslation(a4, -a2.x, -a2.y);
  v10 = *(a4 + 16);
  *&t1.a = *a4;
  *&t1.c = v10;
  *&t1.tx = *(a4 + 32);
  CGAffineTransformMakeRotation(&v17, a1->rotation * 3.14159265 / 180.0);
  CGAffineTransformConcat(&v19, &t1, &v17);
  v11 = *&v19.c;
  *a4 = *&v19.a;
  *(a4 + 16) = v11;
  *(a4 + 32) = *&v19.tx;
  v12 = *(a4 + 16);
  *&t1.a = *a4;
  *&t1.c = v12;
  *&t1.tx = *(a4 + 32);
  CGAffineTransformMakeScale(&v17, a1->scale, a1->scale);
  CGAffineTransformConcat(&v19, &t1, &v17);
  v13 = *&v19.c;
  *a4 = *&v19.a;
  *(a4 + 16) = v13;
  *(a4 + 32) = *&v19.tx;
  v14 = *(a4 + 16);
  *&t1.a = *a4;
  *&t1.c = v14;
  *&t1.tx = *(a4 + 32);
  CGAffineTransformMakeTranslation(&v17, x + width * a1->translation.x, y + height * a1->translation.y);
  CGAffineTransformConcat(&v19, &t1, &v17);
  v15 = *&v19.c;
  *a4 = *&v19.a;
  *(a4 + 16) = v15;
  result = v19.tx;
  *(a4 + 32) = *&v19.tx;
  return result;
}

double PVTransformAnimationInfoIdentity@<D0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x277CC08F0];
  *a1 = *MEMORY[0x277CC08F0];
  v2 = *(v1 + 16);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = v2;
  result = 1.0;
  *(a1 + 40) = xmmword_2603426F0;
  return result;
}

void PVTransformAnimationInfoForLiveCapture(uint64_t a1@<X8>, CGFloat a2@<D2>, CGFloat a3@<D3>, CGFloat a4@<D4>, CGFloat a5@<D5>, double a6@<D6>)
{
  v12 = MEMORY[0x277CC08F0];
  *a1 = *MEMORY[0x277CC08F0];
  *(a1 + 16) = *(v12 + 16);
  *(a1 + 40) = xmmword_2603426F0;
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  v13 = -CGRectGetMinX(v17);
  *(a1 + 24) = v13;
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  v14 = -CGRectGetMinY(v18);
  *(a1 + 32) = v14;
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  Width = CGRectGetWidth(v19);
  if (Width != a6)
  {
    v16 = a6 / Width;
    *(a1 + 24) = v16 * v13;
    *(a1 + 32) = v16 * v14;
    *(a1 + 40) = v16;
  }
}

float64x2_t PVTransformAnimationInfoForPlayback@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, CGFloat a6@<D4>, CGFloat a7@<D5>, float64_t a8@<D6>, float64_t a9@<D7>)
{
  v14 = MEMORY[0x277CC08F0];
  *a1 = *MEMORY[0x277CC08F0];
  *(a1 + 16) = *(v14 + 16);
  *(a1 + 48) = 0;
  if (a2 > a3)
  {
    v15 = a2;
  }

  else
  {
    v15 = a3;
  }

  v38 = v15;
  if (a2 > a3)
  {
    v16 = a9 / a3;
  }

  else
  {
    v16 = a8 / a2;
  }

  v42.origin.x = a4;
  v42.origin.y = a5;
  v42.size.width = a6;
  v42.size.height = a7;
  v36 = a8 / CGRectGetWidth(v42);
  *(a1 + 40) = v36 / v16;
  CGAffineTransformMakeScale(&v41, v36, v36);
  if (a2 >= a3)
  {
    v17 = a3;
  }

  else
  {
    v17 = a2;
  }

  v37 = v17;
  __asm { FMOV            V1.2D, #0.5 }

  v33 = vmulq_f64(vaddq_f64(vmulq_n_f64(*&v41.a, a2), vmulq_n_f64(*&v41.c, a3)), _Q1);
  v35 = _Q1;
  v23 = a4;
  _Q1.f64[0] = a5;
  v24 = a6;
  v25 = a7;
  MinX = CGRectGetMinX(*(&_Q1 - 8));
  v43.origin.x = a4;
  v43.origin.y = a5;
  v43.size.width = a6;
  v43.size.height = a7;
  MinY = CGRectGetMinY(v43);
  v27.f64[0] = MinX;
  v27.f64[1] = MinY;
  v28.f64[0] = v38;
  v28.f64[1] = v37;
  v29.f64[0] = a8;
  v29.f64[1] = a9;
  result = vdivq_f64(vsubq_f64(vsubq_f64(vsubq_f64(v33, vmulq_n_f64(v27, v36)), vmulq_f64(v28, v35)), vmulq_f64(vsubq_f64(v29, v28), v35)), v29);
  *(a1 + 24) = result;
  return result;
}

uint64_t pv_buffer_size_for_string_representation(PVTransformAnimationInfo *a1, int a2)
{
  v2 = *&a1->time.epoch;
  *&v4.time.value = *&a1->time.value;
  *&v4.time.epoch = v2;
  *&v4.translation.y = *&a1->translation.y;
  v4.rotation = a1->rotation;
  return pv_get_string_representation(&v4, 0, 0, a2) + 1;
}

uint64_t pv_get_string_representation(PVTransformAnimationInfo *a1, char *a2, size_t a3, int a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = *MEMORY[0x277CBECE8];
  time = a1->time;
  v10 = CMTimeCopyDescription(v9, &time);
  v11 = snprintf(a2, a3, "time: %s\ntranslation:\n    x: %.*f\n    y: %.*f\nscale: %.*f\nrotation: %.*f° (%.*f)", [(__CFString *)v10 UTF8String], a4, a1->translation.x, a4, a1->translation.y, a4, a1->scale, a4, a1->rotation, a4, a1->rotation * 3.14159265 / 180.0);

  objc_autoreleasePoolPop(v8);
  return v11;
}

id NSStringFromPVTransformAnimationInfo(uint64_t a1, int a2)
{
  v4 = *(a1 + 16);
  *&v11.time.value = *a1;
  *&v11.time.epoch = v4;
  *&v11.translation.y = *(a1 + 32);
  v11.rotation = *(a1 + 48);
  string_representation = pv_get_string_representation(&v11, 0, 0, a2);
  v6 = malloc_type_calloc(string_representation + 1, 1uLL, 0x100004077774924uLL);
  v7 = *(a1 + 16);
  *&v11.time.value = *a1;
  *&v11.time.epoch = v7;
  *&v11.translation.y = *(a1 + 32);
  v11.rotation = *(a1 + 48);
  v8 = pv_get_string_representation(&v11, v6, string_representation + 1, a2);
  v9 = 0;
  if ((v8 & 0x80000000) != 0 || v8 > string_representation || (v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v6 length:v8 encoding:4 freeWhenDone:1]) == 0)
  {
    free(v6);
  }

  return v9;
}

void sub_25F956D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OZChannelDouble::OZChannelDouble(OZChannelDouble *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5, OZChannelImpl *a6, OZChannelInfo *a7)
{
  OZChannelDouble_FactoryBase = getOZChannelDouble_FactoryBase();
  OZChannel::OZChannel(this, OZChannelDouble_FactoryBase, a2, a3, a4, a5, a6, a7);
  *this = &unk_287245C60;
  *(this + 2) = &unk_287245FC0;
  OZChannelDoubleInfo = OZChannelDouble::createOZChannelDoubleInfo(v15);
  if (a7)
  {
    v17 = *(this + 17);
  }

  else
  {
    v17 = OZChannelDouble::_OZChannelDoubleInfo;
    *(this + 17) = OZChannelDouble::_OZChannelDoubleInfo;
  }

  *(this + 16) = v17;
  OZChannelDouble::createOZChannelDoubleImpl(OZChannelDoubleInfo);
  if (a6)
  {
    v18 = *(this + 15);
  }

  else
  {
    v18 = OZChannelDouble::_OZChannelDoubleImpl;
    *(this + 15) = OZChannelDouble::_OZChannelDoubleImpl;
  }

  *(this + 14) = v18;
}

uint64_t OZChannelDouble::createOZChannelDoubleInfo(OZChannelDouble *this)
{
  if (atomic_load_explicit(&OZChannelDouble::createOZChannelDoubleInfo(void)::_OZChannelDoubleInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelDouble::createOZChannelDoubleInfo(void)::_OZChannelDoubleInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelDouble::createOZChannelDoubleInfo(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelDouble::_OZChannelDoubleInfo;
}

uint64_t OZChannelDouble::createOZChannelDoubleImpl(OZChannelDouble *this)
{
  if (atomic_load_explicit(&OZChannelDouble::createOZChannelDoubleImpl(void)::_OZChannelDoubleImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelDouble::createOZChannelDoubleImpl(void)::_OZChannelDoubleImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelDouble::createOZChannelDoubleImpl(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelDouble::_OZChannelDoubleImpl;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelDouble::createOZChannelDoubleInfo(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelDouble::_OZChannelDoubleInfo)
  {
    operator new();
  }
}

void OZChannelDoubleInfo::OZChannelDoubleInfo(OZChannelDoubleInfo *this)
{
  OZChannelInfo::OZChannelInfo(this, 0.0, 100.0, 1.0, 0.01, 1.0, "");
  PCSingleton::PCSingleton((v2 + 80), 100);
  *this = &unk_2871CE208;
  *(this + 10) = &unk_2871CE228;
}

void OZChannelDoubleInfo::~OZChannelDoubleInfo(OZChannelDoubleInfo *this)
{
  PCSingleton::~PCSingleton((this + 80));

  OZChannelInfo::~OZChannelInfo(this);
}

{
  PCSingleton::~PCSingleton((this + 80));
  OZChannelInfo::~OZChannelInfo(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZChannelDoubleInfo::~OZChannelDoubleInfo(OZChannelDoubleInfo *this)
{
  v1 = (this - 80);
  PCSingleton::~PCSingleton(this);

  OZChannelInfo::~OZChannelInfo(v1);
}

{
  v1 = (this - 80);
  PCSingleton::~PCSingleton(this);
  OZChannelInfo::~OZChannelInfo(v1);

  JUMPOUT(0x2666E9F00);
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelDouble::createOZChannelDoubleImpl(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelDouble::_OZChannelDoubleImpl)
  {
    operator new();
  }
}

void sub_25F957964(_Unwind_Exception *a1)
{
  OZChannelImpl::~OZChannelImpl(v2);
  MEMORY[0x2666E9F00](v2, v1);
  _Unwind_Resume(a1);
}

void OZChannelDoubleImpl::~OZChannelDoubleImpl(OZChannelDoubleImpl *this)
{
  PCSingleton::~PCSingleton((this + 40));

  OZChannelImpl::~OZChannelImpl(this);
}

{
  PCSingleton::~PCSingleton((this + 40));
  OZChannelImpl::~OZChannelImpl(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZChannelDoubleImpl::~OZChannelDoubleImpl(OZChannelDoubleImpl *this)
{
  v1 = (this - 40);
  PCSingleton::~PCSingleton(this);

  OZChannelImpl::~OZChannelImpl(v1);
}

{
  v1 = (this - 40);
  PCSingleton::~PCSingleton(this);
  OZChannelImpl::~OZChannelImpl(v1);

  JUMPOUT(0x2666E9F00);
}

uint64_t OZCurveDoubleSplineState::getInstance(OZCurveDoubleSplineState *this)
{
  if (atomic_load_explicit(&OZCurveDoubleSplineState::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZCurveDoubleSplineState::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZCurveDoubleSplineState::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZCurveDoubleSplineState::_instance;
}

void OZCurveDouble::~OZCurveDouble(OZCurve *this)
{
  OZCurve::~OZCurve(this);

  JUMPOUT(0x2666E9F00);
}

void OZCurveDoubleSplineState::~OZCurveDoubleSplineState(OZCurveDoubleSplineState *this)
{
  PCSingleton::~PCSingleton(this);

  JUMPOUT(0x2666E9F00);
}

void sub_25F957FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v12 = v11;

  for (i = 40; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t pv_buffer_size_for_string_representation(simd_quatd a1, __int128 *a2, uint64_t a3)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  return pv_buffer_size_for_string_representation(v5, a3);
}

uint64_t pv_get_string_representation(simd_quatd a1, char *a2, char *a3, size_t a4, uint64_t a5)
{
  v5 = *(a2 + 1);
  v7[0] = *a2;
  v7[1] = v5;
  return pv_get_string_representation(v7, a3, a4, a5);
}

void sub_25F9594DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  HGObject::operator delete(v20);
  (*(*v19 + 24))(v19);
  (*(*v18 + 24))(v18);
  if (*v17)
  {
    (*(**v17 + 24))(*v17);
  }

  HGTraceGuard::~HGTraceGuard(&a17);
  _Unwind_Resume(a1);
}

void sub_25F959FFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v27 = v25;
  if (v27)
  {
    (*(*v27 + 24))(v27);
  }

  _Unwind_Resume(a1);
}

void PVInputHGNodeMap<PVInstructionGraphSourceNode * {__strong}>::SetNode(uint64_t a1, void *a2, uint64_t *a3)
{
  v8[0] = a2;
  v8[2] = v8;
  v5 = std::__tree<std::__value_type<PVInstructionGraphSourceNode * {__strong},HGRef<HGNode>>,std::__map_value_compare<PVInstructionGraphSourceNode * {__strong},std::__value_type<PVInstructionGraphSourceNode * {__strong},HGRef<HGNode>>,std::less<PVInstructionGraphSourceNode * {__strong}>,true>,std::allocator<std::__value_type<PVInstructionGraphSourceNode * {__strong},HGRef<HGNode>>>>::__emplace_unique_key_args<PVInstructionGraphSourceNode * {__strong},std::piecewise_construct_t const&,std::tuple<PVInstructionGraphSourceNode * const {__strong}&>,std::tuple<>>(a1, v8);
  v6 = v5[5];
  v7 = *a3;
  if (v6 != *a3)
  {
    if (v6)
    {
      (*(*v6 + 24))(v6);
      v7 = *a3;
    }

    v5[5] = v7;
    if (v7)
    {
      (*(*v7 + 16))(v7);
    }
  }
}

void PVInputHGNodeMap<PVInstructionGraphSourceNode * {__strong}>::SetFrameDataPixelBuffer(uint64_t a1, void *a2, uint64_t *a3)
{
  v8[0] = a2;
  v8[2] = v8;
  v5 = std::__tree<std::__value_type<PVInstructionGraphSourceNode * {__strong},HGRef<HGNode>>,std::__map_value_compare<PVInstructionGraphSourceNode * {__strong},std::__value_type<PVInstructionGraphSourceNode * {__strong},HGRef<HGNode>>,std::less<PVInstructionGraphSourceNode * {__strong}>,true>,std::allocator<std::__value_type<PVInstructionGraphSourceNode * {__strong},HGRef<HGNode>>>>::__emplace_unique_key_args<PVInstructionGraphSourceNode * {__strong},std::piecewise_construct_t const&,std::tuple<PVInstructionGraphSourceNode * const {__strong}&>,std::tuple<>>(a1 + 72, v8);
  v6 = v5[5];
  v7 = *a3;
  if (v6 != *a3)
  {
    if (v6)
    {
      (*(*v6 + 24))(v6);
      v7 = *a3;
    }

    v5[5] = v7;
    if (v7)
    {
      (*(*v7 + 16))(v7);
    }
  }
}

__n128 PVInputHGNodeMap<PVInstructionGraphSourceNode * {__strong}>::SetInputSize(uint64_t a1, void *a2, __int128 *a3)
{
  v8[0] = a2;
  v8[2] = v8;
  v5 = std::__tree<std::__value_type<PVInstructionGraphSourceNode * {__strong},PCRect<double>>,std::__map_value_compare<PVInstructionGraphSourceNode * {__strong},std::__value_type<PVInstructionGraphSourceNode * {__strong},PCRect<double>>,std::less<PVInstructionGraphSourceNode * {__strong}>,true>,std::allocator<std::__value_type<PVInstructionGraphSourceNode * {__strong},PCRect<double>>>>::__emplace_unique_key_args<PVInstructionGraphSourceNode * {__strong},std::piecewise_construct_t const&,std::tuple<PVInstructionGraphSourceNode * const {__strong}&>,std::tuple<>>(a1 + 24, v8);
  v6 = *a3;
  *(v5 + 7) = a3[1];
  *(v5 + 5) = v6;

  return result;
}

void sub_25F95BFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  *(v29 + 8) = v25;

  if (a24)
  {
    (*(*a24 + 24))(a24);
  }

  if (a25)
  {
    (*(*a25 + 24))(a25);
  }

  _Unwind_Resume(a1);
}

void sub_25F95C5BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

void **PVInputHGNodeMap<PVInstructionGraphSourceNode * {__strong}>::~PVInputHGNodeMap(void **a1)
{
  std::__tree<std::__value_type<PVInstructionGraphSourceNode * {__strong},AVTimedMetadataGroup * {__strong}>,std::__map_value_compare<PVInstructionGraphSourceNode * {__strong},std::__value_type<PVInstructionGraphSourceNode * {__strong},AVTimedMetadataGroup * {__strong}>,std::less<PVInstructionGraphSourceNode * {__strong}>,true>,std::allocator<std::__value_type<PVInstructionGraphSourceNode * {__strong},AVTimedMetadataGroup * {__strong}>>>::destroy((a1 + 15), a1[16]);
  std::__tree<std::__value_type<PVInstructionGraphSourceNode * {__strong},int>,std::__map_value_compare<PVInstructionGraphSourceNode * {__strong},std::__value_type<PVInstructionGraphSourceNode * {__strong},int>,std::less<PVInstructionGraphSourceNode * {__strong}>,true>,std::allocator<std::__value_type<PVInstructionGraphSourceNode * {__strong},int>>>::destroy((a1 + 12), a1[13]);
  std::__tree<std::__value_type<PVInstructionGraphSourceNode * {__strong},HGRef<HGCVBitmap>>,std::__map_value_compare<PVInstructionGraphSourceNode * {__strong},std::__value_type<PVInstructionGraphSourceNode * {__strong},HGRef<HGCVBitmap>>,std::less<PVInstructionGraphSourceNode * {__strong}>,true>,std::allocator<std::__value_type<PVInstructionGraphSourceNode * {__strong},HGRef<HGCVBitmap>>>>::destroy((a1 + 9), a1[10]);
  std::__tree<std::__value_type<PVInstructionGraphSourceNode * {__strong},int>,std::__map_value_compare<PVInstructionGraphSourceNode * {__strong},std::__value_type<PVInstructionGraphSourceNode * {__strong},int>,std::less<PVInstructionGraphSourceNode * {__strong}>,true>,std::allocator<std::__value_type<PVInstructionGraphSourceNode * {__strong},int>>>::destroy((a1 + 6), a1[7]);
  std::__tree<std::__value_type<PVInstructionGraphSourceNode * {__strong},int>,std::__map_value_compare<PVInstructionGraphSourceNode * {__strong},std::__value_type<PVInstructionGraphSourceNode * {__strong},int>,std::less<PVInstructionGraphSourceNode * {__strong}>,true>,std::allocator<std::__value_type<PVInstructionGraphSourceNode * {__strong},int>>>::destroy((a1 + 3), a1[4]);
  std::__tree<std::__value_type<PVInstructionGraphSourceNode * {__strong},HGRef<HGNode>>,std::__map_value_compare<PVInstructionGraphSourceNode * {__strong},std::__value_type<PVInstructionGraphSourceNode * {__strong},HGRef<HGNode>>,std::less<PVInstructionGraphSourceNode * {__strong}>,true>,std::allocator<std::__value_type<PVInstructionGraphSourceNode * {__strong},HGRef<HGNode>>>>::destroy(a1, a1[1]);
  return a1;
}

void std::__tree<std::__value_type<PVInstructionGraphSourceNode * {__strong},AVTimedMetadataGroup * {__strong}>,std::__map_value_compare<PVInstructionGraphSourceNode * {__strong},std::__value_type<PVInstructionGraphSourceNode * {__strong},AVTimedMetadataGroup * {__strong}>,std::less<PVInstructionGraphSourceNode * {__strong}>,true>,std::allocator<std::__value_type<PVInstructionGraphSourceNode * {__strong},AVTimedMetadataGroup * {__strong}>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<PVInstructionGraphSourceNode * {__strong},AVTimedMetadataGroup * {__strong}>,std::__map_value_compare<PVInstructionGraphSourceNode * {__strong},std::__value_type<PVInstructionGraphSourceNode * {__strong},AVTimedMetadataGroup * {__strong}>,std::less<PVInstructionGraphSourceNode * {__strong}>,true>,std::allocator<std::__value_type<PVInstructionGraphSourceNode * {__strong},AVTimedMetadataGroup * {__strong}>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<PVInstructionGraphSourceNode * {__strong},AVTimedMetadataGroup * {__strong}>,std::__map_value_compare<PVInstructionGraphSourceNode * {__strong},std::__value_type<PVInstructionGraphSourceNode * {__strong},AVTimedMetadataGroup * {__strong}>,std::less<PVInstructionGraphSourceNode * {__strong}>,true>,std::allocator<std::__value_type<PVInstructionGraphSourceNode * {__strong},AVTimedMetadataGroup * {__strong}>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<PVInstructionGraphSourceNode * {__strong},int>,std::__map_value_compare<PVInstructionGraphSourceNode * {__strong},std::__value_type<PVInstructionGraphSourceNode * {__strong},int>,std::less<PVInstructionGraphSourceNode * {__strong}>,true>,std::allocator<std::__value_type<PVInstructionGraphSourceNode * {__strong},int>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<PVInstructionGraphSourceNode * {__strong},int>,std::__map_value_compare<PVInstructionGraphSourceNode * {__strong},std::__value_type<PVInstructionGraphSourceNode * {__strong},int>,std::less<PVInstructionGraphSourceNode * {__strong}>,true>,std::allocator<std::__value_type<PVInstructionGraphSourceNode * {__strong},int>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<PVInstructionGraphSourceNode * {__strong},int>,std::__map_value_compare<PVInstructionGraphSourceNode * {__strong},std::__value_type<PVInstructionGraphSourceNode * {__strong},int>,std::less<PVInstructionGraphSourceNode * {__strong}>,true>,std::allocator<std::__value_type<PVInstructionGraphSourceNode * {__strong},int>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<PVInstructionGraphSourceNode * {__strong},HGRef<HGCVBitmap>>,std::__map_value_compare<PVInstructionGraphSourceNode * {__strong},std::__value_type<PVInstructionGraphSourceNode * {__strong},HGRef<HGCVBitmap>>,std::less<PVInstructionGraphSourceNode * {__strong}>,true>,std::allocator<std::__value_type<PVInstructionGraphSourceNode * {__strong},HGRef<HGCVBitmap>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<PVInstructionGraphSourceNode * {__strong},HGRef<HGCVBitmap>>,std::__map_value_compare<PVInstructionGraphSourceNode * {__strong},std::__value_type<PVInstructionGraphSourceNode * {__strong},HGRef<HGCVBitmap>>,std::less<PVInstructionGraphSourceNode * {__strong}>,true>,std::allocator<std::__value_type<PVInstructionGraphSourceNode * {__strong},HGRef<HGCVBitmap>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<PVInstructionGraphSourceNode * {__strong},HGRef<HGCVBitmap>>,std::__map_value_compare<PVInstructionGraphSourceNode * {__strong},std::__value_type<PVInstructionGraphSourceNode * {__strong},HGRef<HGCVBitmap>>,std::less<PVInstructionGraphSourceNode * {__strong}>,true>,std::allocator<std::__value_type<PVInstructionGraphSourceNode * {__strong},HGRef<HGCVBitmap>>>>::destroy(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      (*(*v4 + 24))(v4);
    }

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<PVInstructionGraphSourceNode * {__strong},HGRef<HGNode>>,std::__map_value_compare<PVInstructionGraphSourceNode * {__strong},std::__value_type<PVInstructionGraphSourceNode * {__strong},HGRef<HGNode>>,std::less<PVInstructionGraphSourceNode * {__strong}>,true>,std::allocator<std::__value_type<PVInstructionGraphSourceNode * {__strong},HGRef<HGNode>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<PVInstructionGraphSourceNode * {__strong},HGRef<HGNode>>,std::__map_value_compare<PVInstructionGraphSourceNode * {__strong},std::__value_type<PVInstructionGraphSourceNode * {__strong},HGRef<HGNode>>,std::less<PVInstructionGraphSourceNode * {__strong}>,true>,std::allocator<std::__value_type<PVInstructionGraphSourceNode * {__strong},HGRef<HGNode>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<PVInstructionGraphSourceNode * {__strong},HGRef<HGNode>>,std::__map_value_compare<PVInstructionGraphSourceNode * {__strong},std::__value_type<PVInstructionGraphSourceNode * {__strong},HGRef<HGNode>>,std::less<PVInstructionGraphSourceNode * {__strong}>,true>,std::allocator<std::__value_type<PVInstructionGraphSourceNode * {__strong},HGRef<HGNode>>>>::destroy(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      (*(*v4 + 24))(v4);
    }

    operator delete(a2);
  }
}

void *std::__tree<std::__value_type<PVInstructionGraphSourceNode * {__strong},HGRef<HGNode>>,std::__map_value_compare<PVInstructionGraphSourceNode * {__strong},std::__value_type<PVInstructionGraphSourceNode * {__strong},HGRef<HGNode>>,std::less<PVInstructionGraphSourceNode * {__strong}>,true>,std::allocator<std::__value_type<PVInstructionGraphSourceNode * {__strong},HGRef<HGNode>>>>::__emplace_unique_key_args<PVInstructionGraphSourceNode * {__strong},std::piecewise_construct_t const&,std::tuple<PVInstructionGraphSourceNode * const {__strong}&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *std::__tree<std::__value_type<PVInstructionGraphSourceNode * {__strong},PCRect<double>>,std::__map_value_compare<PVInstructionGraphSourceNode * {__strong},std::__value_type<PVInstructionGraphSourceNode * {__strong},PCRect<double>>,std::less<PVInstructionGraphSourceNode * {__strong}>,true>,std::allocator<std::__value_type<PVInstructionGraphSourceNode * {__strong},PCRect<double>>>>::__emplace_unique_key_args<PVInstructionGraphSourceNode * {__strong},std::piecewise_construct_t const&,std::tuple<PVInstructionGraphSourceNode * const {__strong}&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<PVInstructionGraphSourceNode * {__strong},PCRect<double>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<PVInstructionGraphSourceNode * {__strong},PCRect<double>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void PVFrameStatsDescription::GetStringForLabels(_BYTE *a1@<X8>, int a2@<W1>)
{
  if (a2 == 1)
  {
    PVFrameStatsDescription::GetStringForLabelsJSON(a1);
  }

  else
  {
    if (a2)
    {
      v2 = "";
    }

    else
    {
      v2 = " Num |  FrameTime | Playback | RendPasses | WaitToBuildGraph | SetupInputs | BuildGraph | WaitToRender | SetupDest | DeferredBitmaps | ShaderCompile | RenderTime | FinishReq | TotalTime | TimeSinceLastStart | fTimeDiff |";
    }

    std::string::basic_string[abi:ne200100]<0>(a1, v2);
  }
}

void PVFrameStatsDescription::GetStringForLabelsJSON(_BYTE *a1@<X8>)
{
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"Num", @"FrameTime", @"Playback", @"RendPasses", @"WaitToBuildGraph", @"SetupInputs", @"BuildGraph", @"WaitToRender", @"SetupDest", @"DeferredBitmaps", @"ShaderCompile", @"RenderTime", @"FinishReq", @"TotalTime", @"TimeSinceLastStart", @"fTimeDiff", 0}];
  v7 = 0;
  v4 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v3 options:4 error:&v7];
  v5 = v7;
  if (v4)
  {
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v4 encoding:4];
    std::string::basic_string[abi:ne200100]<0>(a1, [v6 UTF8String]);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a1, "");
  }
}

void PVFrameStatsDescription::GetStringForStats(PVPerfStats::FrameStats *a1@<X2>, PVPerfStats::FrameStats *a2@<X3>, PVFrameStatsDescription *a3@<X0>, int a4@<W1>, _BYTE *a5@<X8>)
{
  if (a4 == 2)
  {
    PVFrameStatsDescription::GetStringForStatsPMR(a3, a1, a1);
  }

  else if (a4 == 1)
  {
    PVFrameStatsDescription::GetStringForStatsJSON(a3, a1, a2);
  }

  else if (a4)
  {
    std::string::basic_string[abi:ne200100]<0>(a5, "");
  }

  else
  {
    PVFrameStatsDescription::GetStringForStatsTEXT(a3, a1, a2);
  }
}

uint64_t PVFrameStatsDescription::GetStringForStatsTEXT(PVFrameStatsDescription *this, const PVPerfStats::FrameStats *a2, const PVPerfStats::FrameStats *a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v52);
  v5 = v53;
  *(&v53 + *(v53 - 24) + 8) = *(&v53 + *(v53 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v55[1].__locale_ + *(v5 - 24)) = 4;
  *(&v55[0].__locale_ + *(v5 - 24)) = 0;
  v6 = MEMORY[0x2666E9B60](&v53, *(a2 + 1));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " | ", 3);
  v7 = v53;
  *(&v53 + *(v53 - 24) + 8) = *(&v53 + *(v53 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v55[1].__locale_ + *(v7 - 24)) = 10;
  *(&v55[0].__locale_ + *(v7 - 24)) = 3;
  v51 = *(a2 + 8);
  Seconds = CMTimeGetSeconds(&v51);
  v9 = MEMORY[0x2666E9B30](&v53, Seconds);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " | ", 3);
  v10 = v53;
  *(&v53 + *(v53 - 24) + 8) = *(&v53 + *(v53 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v55[1].__locale_ + *(v10 - 24)) = 8;
  *(&v55[0].__locale_ + *(v10 - 24)) = 0;
  v11 = MEMORY[0x2666E9B20](&v53, *(a2 + 56));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " | ", 3);
  v12 = v53;
  *(&v53 + *(v53 - 24) + 8) = *(&v53 + *(v53 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v55[1].__locale_ + *(v12 - 24)) = 10;
  *(&v55[0].__locale_ + *(v12 - 24)) = 0;
  ValueForIndex = PVPerfStats::FrameStats::GetValueForIndex(a2, 0xAu);
  v14 = MEMORY[0x2666E9B50](&v53, ValueForIndex);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " | ", 3);
  v15 = v53;
  *(&v53 + *(v53 - 24) + 8) = *(&v53 + *(v53 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v55[1].__locale_ + *(v15 - 24)) = 16;
  *(&v55[0].__locale_ + *(v15 - 24)) = 3;
  v16 = PVPerfStats::FrameStats::GetValueForIndex(a2, 0);
  v17 = MEMORY[0x2666E9B30](&v53, v16 * 1000.0);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " | ", 3);
  v18 = v53;
  *(&v53 + *(v53 - 24) + 8) = *(&v53 + *(v53 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v55[1].__locale_ + *(v18 - 24)) = 11;
  *(&v55[0].__locale_ + *(v18 - 24)) = 3;
  v19 = PVPerfStats::FrameStats::GetValueForIndex(a2, 1u);
  v20 = MEMORY[0x2666E9B30](&v53, v19 * 1000.0);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " | ", 3);
  v21 = v53;
  *(&v53 + *(v53 - 24) + 8) = *(&v53 + *(v53 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v55[1].__locale_ + *(v21 - 24)) = 10;
  *(&v55[0].__locale_ + *(v21 - 24)) = 3;
  v22 = PVPerfStats::FrameStats::GetValueForIndex(a2, 2u);
  v23 = MEMORY[0x2666E9B30](&v53, v22 * 1000.0);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " | ", 3);
  v24 = v53;
  *(&v53 + *(v53 - 24) + 8) = *(&v53 + *(v53 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v55[1].__locale_ + *(v24 - 24)) = 12;
  *(&v55[0].__locale_ + *(v24 - 24)) = 3;
  v25 = PVPerfStats::FrameStats::GetValueForIndex(a2, 3u);
  v26 = MEMORY[0x2666E9B30](&v53, v25 * 1000.0);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " | ", 3);
  v27 = v53;
  *(&v53 + *(v53 - 24) + 8) = *(&v53 + *(v53 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v55[1].__locale_ + *(v27 - 24)) = 9;
  *(&v55[0].__locale_ + *(v27 - 24)) = 3;
  v28 = PVPerfStats::FrameStats::GetValueForIndex(a2, 4u);
  v29 = MEMORY[0x2666E9B30](&v53, v28 * 1000.0);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, " | ", 3);
  v30 = v53;
  *(&v53 + *(v53 - 24) + 8) = *(&v53 + *(v53 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v55[1].__locale_ + *(v30 - 24)) = 15;
  *(&v55[0].__locale_ + *(v30 - 24)) = 3;
  v31 = PVPerfStats::FrameStats::GetValueForIndex(a2, 5u);
  v32 = MEMORY[0x2666E9B30](&v53, v31 * 1000.0);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, " | ", 3);
  v33 = v53;
  *(&v53 + *(v53 - 24) + 8) = *(&v53 + *(v53 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v55[1].__locale_ + *(v33 - 24)) = 13;
  *(&v55[0].__locale_ + *(v33 - 24)) = 3;
  v34 = PVPerfStats::FrameStats::GetValueForIndex(a2, 6u);
  v35 = MEMORY[0x2666E9B30](&v53, v34 * 1000.0);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, " | ", 3);
  v36 = v53;
  *(&v53 + *(v53 - 24) + 8) = *(&v53 + *(v53 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v55[1].__locale_ + *(v36 - 24)) = 10;
  *(&v55[0].__locale_ + *(v36 - 24)) = 3;
  v37 = PVPerfStats::FrameStats::GetValueForIndex(a2, 7u);
  v38 = MEMORY[0x2666E9B30](&v53, v37 * 1000.0);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, " | ", 3);
  v39 = v53;
  *(&v53 + *(v53 - 24) + 8) = *(&v53 + *(v53 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v55[1].__locale_ + *(v39 - 24)) = 9;
  *(&v55[0].__locale_ + *(v39 - 24)) = 3;
  v40 = PVPerfStats::FrameStats::GetValueForIndex(a2, 8u);
  v41 = MEMORY[0x2666E9B30](&v53, v40 * 1000.0);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, " | ", 3);
  v42 = v53;
  *(&v53 + *(v53 - 24) + 8) = *(&v53 + *(v53 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v55[1].__locale_ + *(v42 - 24)) = 9;
  *(&v55[0].__locale_ + *(v42 - 24)) = 3;
  v43 = PVPerfStats::FrameStats::GetValueForIndex(a2, 9u);
  v44 = MEMORY[0x2666E9B30](&v53, v43 * 1000.0);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, " | ", 3);
  if (a3)
  {
    v51 = *(a2 + 8);
    CMTimeGetSeconds(&v51);
    v51 = *(a3 + 8);
    CMTimeGetSeconds(&v51);
  }

  v45 = v53;
  *(&v55[1].__locale_ + *(v53 - 24)) = 18;
  *(&v55[0].__locale_ + *(v45 - 24)) = 3;
  v46 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, " | ", 3);
  v47 = v53;
  *(&v55[1].__locale_ + *(v53 - 24)) = 9;
  *(&v55[0].__locale_ + *(v47 - 24)) = 0;
  v48 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, " |", 2);
  std::stringbuf::str();
  v52[0] = *MEMORY[0x277D82818];
  v49 = *(MEMORY[0x277D82818] + 72);
  *(v52 + *(v52[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v53 = v49;
  v54 = MEMORY[0x277D82878] + 16;
  if (v56 < 0)
  {
    operator delete(v55[7].__locale_);
  }

  v54 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v55);
  std::iostream::~basic_iostream();
  return MEMORY[0x2666E9E10](&v57);
}

void sub_25F95DE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t PVFrameStatsDescription::GetStringForStatsJSON(PVFrameStatsDescription *this, const PVPerfStats::FrameStats *a2, const PVPerfStats::FrameStats *a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v89);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v90, "[", 1);
  v5 = v90;
  *(&v90 + *(v90 - 24) + 8) = *(&v90 + *(v90 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v92[0].__locale_ + *(v5 - 24)) = 0;
  v6 = MEMORY[0x2666E9B60](&v90, *(a2 + 1));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ", ", 2);
  v7 = v90;
  *(&v90 + *(v90 - 24) + 8) = *(&v90 + *(v90 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v92[0].__locale_ + *(v7 - 24)) = 3;
  v87 = *(a2 + 8);
  Seconds = CMTimeGetSeconds(&v87);
  formatValue(Seconds, &__p);
  if (__p.epoch >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.value;
  }

  if (__p.epoch >= 0)
  {
    epoch_high = HIBYTE(__p.epoch);
  }

  else
  {
    epoch_high = *&__p.timescale;
  }

  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v90, p_p, epoch_high);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", ", 2);
  if (SHIBYTE(__p.epoch) < 0)
  {
    operator delete(__p.value);
  }

  v13 = v90;
  *(&v90 + *(v90 - 24) + 8) = *(&v90 + *(v90 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v92[0].__locale_ + *(v13 - 24)) = 0;
  LOBYTE(v12) = *(a2 + 56);
  formatValue(v12, &__p);
  if (__p.epoch >= 0)
  {
    value = &__p;
  }

  else
  {
    value = __p.value;
  }

  if (__p.epoch >= 0)
  {
    v15 = HIBYTE(__p.epoch);
  }

  else
  {
    v15 = *&__p.timescale;
  }

  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v90, value, v15);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ", ", 2);
  if (SHIBYTE(__p.epoch) < 0)
  {
    operator delete(__p.value);
  }

  v17 = v90;
  *(&v90 + *(v90 - 24) + 8) = *(&v90 + *(v90 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v92[0].__locale_ + *(v17 - 24)) = 0;
  ValueForIndex = PVPerfStats::FrameStats::GetValueForIndex(a2, 0xAu);
  formatValue(ValueForIndex, &__p);
  if (__p.epoch >= 0)
  {
    v19 = &__p;
  }

  else
  {
    v19 = __p.value;
  }

  if (__p.epoch >= 0)
  {
    v20 = HIBYTE(__p.epoch);
  }

  else
  {
    v20 = *&__p.timescale;
  }

  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v90, v19, v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ", ", 2);
  if (SHIBYTE(__p.epoch) < 0)
  {
    operator delete(__p.value);
  }

  v22 = v90;
  *(&v90 + *(v90 - 24) + 8) = *(&v90 + *(v90 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v92[0].__locale_ + *(v22 - 24)) = 3;
  v23 = PVPerfStats::FrameStats::GetValueForIndex(a2, 0);
  formatValue(v23 * 1000.0, &__p);
  if (__p.epoch >= 0)
  {
    v24 = &__p;
  }

  else
  {
    v24 = __p.value;
  }

  if (__p.epoch >= 0)
  {
    v25 = HIBYTE(__p.epoch);
  }

  else
  {
    v25 = *&__p.timescale;
  }

  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v90, v24, v25);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ", ", 2);
  if (SHIBYTE(__p.epoch) < 0)
  {
    operator delete(__p.value);
  }

  v27 = v90;
  *(&v90 + *(v90 - 24) + 8) = *(&v90 + *(v90 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v92[0].__locale_ + *(v27 - 24)) = 3;
  v28 = PVPerfStats::FrameStats::GetValueForIndex(a2, 1u);
  formatValue(v28 * 1000.0, &__p);
  if (__p.epoch >= 0)
  {
    v29 = &__p;
  }

  else
  {
    v29 = __p.value;
  }

  if (__p.epoch >= 0)
  {
    v30 = HIBYTE(__p.epoch);
  }

  else
  {
    v30 = *&__p.timescale;
  }

  v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v90, v29, v30);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, ", ", 2);
  if (SHIBYTE(__p.epoch) < 0)
  {
    operator delete(__p.value);
  }

  v32 = v90;
  *(&v90 + *(v90 - 24) + 8) = *(&v90 + *(v90 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v92[0].__locale_ + *(v32 - 24)) = 3;
  v33 = PVPerfStats::FrameStats::GetValueForIndex(a2, 2u);
  formatValue(v33 * 1000.0, &__p);
  if (__p.epoch >= 0)
  {
    v34 = &__p;
  }

  else
  {
    v34 = __p.value;
  }

  if (__p.epoch >= 0)
  {
    v35 = HIBYTE(__p.epoch);
  }

  else
  {
    v35 = *&__p.timescale;
  }

  v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v90, v34, v35);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, ", ", 2);
  if (SHIBYTE(__p.epoch) < 0)
  {
    operator delete(__p.value);
  }

  v37 = v90;
  *(&v90 + *(v90 - 24) + 8) = *(&v90 + *(v90 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v92[0].__locale_ + *(v37 - 24)) = 3;
  v38 = PVPerfStats::FrameStats::GetValueForIndex(a2, 3u);
  formatValue(v38 * 1000.0, &__p);
  if (__p.epoch >= 0)
  {
    v39 = &__p;
  }

  else
  {
    v39 = __p.value;
  }

  if (__p.epoch >= 0)
  {
    v40 = HIBYTE(__p.epoch);
  }

  else
  {
    v40 = *&__p.timescale;
  }

  v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v90, v39, v40);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, ", ", 2);
  if (SHIBYTE(__p.epoch) < 0)
  {
    operator delete(__p.value);
  }

  v42 = v90;
  *(&v90 + *(v90 - 24) + 8) = *(&v90 + *(v90 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v92[0].__locale_ + *(v42 - 24)) = 3;
  v43 = PVPerfStats::FrameStats::GetValueForIndex(a2, 4u);
  formatValue(v43 * 1000.0, &__p);
  if (__p.epoch >= 0)
  {
    v44 = &__p;
  }

  else
  {
    v44 = __p.value;
  }

  if (__p.epoch >= 0)
  {
    v45 = HIBYTE(__p.epoch);
  }

  else
  {
    v45 = *&__p.timescale;
  }

  v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v90, v44, v45);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, ", ", 2);
  if (SHIBYTE(__p.epoch) < 0)
  {
    operator delete(__p.value);
  }

  v47 = v90;
  *(&v90 + *(v90 - 24) + 8) = *(&v90 + *(v90 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v92[0].__locale_ + *(v47 - 24)) = 3;
  v48 = PVPerfStats::FrameStats::GetValueForIndex(a2, 5u);
  formatValue(v48 * 1000.0, &__p);
  if (__p.epoch >= 0)
  {
    v49 = &__p;
  }

  else
  {
    v49 = __p.value;
  }

  if (__p.epoch >= 0)
  {
    v50 = HIBYTE(__p.epoch);
  }

  else
  {
    v50 = *&__p.timescale;
  }

  v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v90, v49, v50);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, ", ", 2);
  if (SHIBYTE(__p.epoch) < 0)
  {
    operator delete(__p.value);
  }

  v52 = v90;
  *(&v90 + *(v90 - 24) + 8) = *(&v90 + *(v90 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v92[0].__locale_ + *(v52 - 24)) = 3;
  v53 = PVPerfStats::FrameStats::GetValueForIndex(a2, 6u);
  formatValue(v53 * 1000.0, &__p);
  if (__p.epoch >= 0)
  {
    v54 = &__p;
  }

  else
  {
    v54 = __p.value;
  }

  if (__p.epoch >= 0)
  {
    v55 = HIBYTE(__p.epoch);
  }

  else
  {
    v55 = *&__p.timescale;
  }

  v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v90, v54, v55);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, ", ", 2);
  if (SHIBYTE(__p.epoch) < 0)
  {
    operator delete(__p.value);
  }

  v57 = v90;
  *(&v90 + *(v90 - 24) + 8) = *(&v90 + *(v90 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v92[0].__locale_ + *(v57 - 24)) = 3;
  v58 = PVPerfStats::FrameStats::GetValueForIndex(a2, 7u);
  formatValue(v58 * 1000.0, &__p);
  if (__p.epoch >= 0)
  {
    v59 = &__p;
  }

  else
  {
    v59 = __p.value;
  }

  if (__p.epoch >= 0)
  {
    v60 = HIBYTE(__p.epoch);
  }

  else
  {
    v60 = *&__p.timescale;
  }

  v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v90, v59, v60);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, ", ", 2);
  if (SHIBYTE(__p.epoch) < 0)
  {
    operator delete(__p.value);
  }

  v62 = v90;
  *(&v90 + *(v90 - 24) + 8) = *(&v90 + *(v90 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v92[0].__locale_ + *(v62 - 24)) = 3;
  v63 = PVPerfStats::FrameStats::GetValueForIndex(a2, 8u);
  formatValue(v63 * 1000.0, &__p);
  if (__p.epoch >= 0)
  {
    v64 = &__p;
  }

  else
  {
    v64 = __p.value;
  }

  if (__p.epoch >= 0)
  {
    v65 = HIBYTE(__p.epoch);
  }

  else
  {
    v65 = *&__p.timescale;
  }

  v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v90, v64, v65);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, ", ", 2);
  if (SHIBYTE(__p.epoch) < 0)
  {
    operator delete(__p.value);
  }

  v67 = v90;
  *(&v90 + *(v90 - 24) + 8) = *(&v90 + *(v90 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v92[0].__locale_ + *(v67 - 24)) = 3;
  v68 = PVPerfStats::FrameStats::GetValueForIndex(a2, 9u);
  formatValue(v68 * 1000.0, &__p);
  if (__p.epoch >= 0)
  {
    v69 = &__p;
  }

  else
  {
    v69 = __p.value;
  }

  if (__p.epoch >= 0)
  {
    v70 = HIBYTE(__p.epoch);
  }

  else
  {
    v70 = *&__p.timescale;
  }

  v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v90, v69, v70);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, ", ", 2);
  if (SHIBYTE(__p.epoch) < 0)
  {
    operator delete(__p.value);
    if (a3)
    {
      goto LABEL_105;
    }
  }

  else if (a3)
  {
LABEL_105:
    v72 = *(a2 + 4);
    v73 = *(a3 + 4);
    __p = *(a2 + 8);
    v74 = CMTimeGetSeconds(&__p);
    __p = *(a3 + 8);
    v75 = CMTimeGetSeconds(&__p);
    v76 = (v72 - v73) * 1000.0;
    v77 = v74 - v75;
    v78 = v76;
    v79 = v77;
    goto LABEL_108;
  }

  v78 = 0.0;
  v79 = 0.0;
LABEL_108:
  *(&v92[0].__locale_ + *(v90 - 24)) = 3;
  formatValue(v78, &__p);
  if (__p.epoch >= 0)
  {
    v80 = &__p;
  }

  else
  {
    v80 = __p.value;
  }

  if (__p.epoch >= 0)
  {
    v81 = HIBYTE(__p.epoch);
  }

  else
  {
    v81 = *&__p.timescale;
  }

  v82 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v90, v80, v81);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, ", ", 2);
  if (SHIBYTE(__p.epoch) < 0)
  {
    operator delete(__p.value);
  }

  *(&v92[0].__locale_ + *(v90 - 24)) = 3;
  formatValue(v79, &__p);
  if (__p.epoch >= 0)
  {
    v83 = &__p;
  }

  else
  {
    v83 = __p.value;
  }

  if (__p.epoch >= 0)
  {
    v84 = HIBYTE(__p.epoch);
  }

  else
  {
    v84 = *&__p.timescale;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v90, v83, v84);
  if (SHIBYTE(__p.epoch) < 0)
  {
    operator delete(__p.value);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v90, "]", 1);
  std::stringbuf::str();
  v89[0] = *MEMORY[0x277D82818];
  v85 = *(MEMORY[0x277D82818] + 72);
  *(v89 + *(v89[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v90 = v85;
  v91 = MEMORY[0x277D82878] + 16;
  if (v93 < 0)
  {
    operator delete(v92[7].__locale_);
  }

  v91 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v92);
  std::iostream::~basic_iostream();
  return MEMORY[0x2666E9E10](&v94);
}