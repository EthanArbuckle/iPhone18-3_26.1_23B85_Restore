__n128 std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::helpers::getDebugDescriptionForAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)::$_1> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *a2 = *(a1 + 32);
  *(a2 + 16) = v2;
  result = *(a1 + 64);
  v4 = *(a1 + 80);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

uint64_t rf::helpers::getTransformFromAnchor(uint64_t a1)
{
  v1 = *(a1 + 256);
  if (v1 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v4 = &v3;
  return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne200100INS1_9__variant15__value_visitorIZN2rf7helpers22getTransformFromAnchorERKNS_7variantIJNS6_9data_flow12CustomAnchorENS9_11PlaneAnchorENS9_11ImageAnchorENS9_12ObjectAnchorENS9_10FaceAnchorENS9_10BodyAnchorEEEEE3__0EEJRKNS0_6__implIJSA_SB_SC_SD_SE_SF_EEEEEEDcOT_DpOT0____fmatrix[v1])(&v4, a1);
}

void rf::helpers::getTransformFromAnchor(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, _OWORD *a6@<X8>)
{
  v11 = a5;
  v12 = *a2;
  REAnchoringComponentGetScaleFactor();
  v27 = v13;
  v14 = *a2;
  REComponentGetEntity();
  SceneNullable = REEntityGetSceneNullable();
  *v35.columns[0].i64 = v11[2](v11, SceneNullable);
  v29 = __invert_f4(v35);
  *&v31 = a2;
  *(&v31 + 1) = a3;
  *&v32 = a4;
  *(&v32 + 1) = &v29;
  v16 = *(a1 + 256);
  if (v16 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  *&v30[0] = &v31;
  (off_2874092C8[v16])(v28, v30, a1);
  v17 = 0;
  *&v18 = 0;
  v19 = v28[0];
  LODWORD(v20) = 0;
  HIDWORD(v20) = v27;
  *(&v18 + 1) = v27;
  v21 = v28[1];
  v22 = v28[2];
  v23 = v28[3];
  v30[0] = v27;
  v30[1] = v20;
  v30[2] = v18;
  v30[3] = xmmword_26185E1B0;
  do
  {
    *(&v31 + v17 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, COERCE_FLOAT(v30[v17])), v21, *&v30[v17], 1), v22, v30[v17], 2), v23, v30[v17], 3);
    ++v17;
  }

  while (v17 != 4);
  v24 = v32;
  v25 = v33;
  v26 = v34;
  *a6 = v31;
  a6[1] = v24;
  a6[2] = v25;
  a6[3] = v26;
}

uint64_t rf::helpers::isRemotelyOwned()
{
  result = REEntityGetComponent();
  if (result)
  {
    return RENetworkComponentIsAuthoritative() ^ 1;
  }

  return result;
}

uint64_t rf::helpers::classificationMatches(int a1, unint64_t a2)
{
  v2 = (a2 >> 2) & 1;
  v3 = (a2 >> 3) & 1;
  v4 = (a2 >> 4) & 1;
  if (a1 != 5)
  {
    LODWORD(v4) = 0;
  }

  if (a1 != 4)
  {
    LODWORD(v3) = v4;
  }

  if (a1 != 3)
  {
    LODWORD(v2) = v3;
  }

  v5 = a2 & 1;
  v6 = (a2 >> 1) & 1;
  if (a1 != 2)
  {
    LODWORD(v6) = 0;
  }

  if (a1 != 1)
  {
    v5 = v6;
  }

  if (a1 <= 2)
  {
    LODWORD(v2) = v5;
  }

  if (a2 == -1)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t rf::helpers::getInternalActiveCamera()
{
  REPerspectiveCameraComponentGetComponentType();
  ComponentsOfClass = RESceneGetComponentsOfClass();
  v2 = v1;
  RECustomMatrixCameraComponentGetComponentType();
  v3 = RESceneGetComponentsOfClass();
  v5 = v4;
  v6 = 0;
  if (v2)
  {
    while (1)
    {
      v7 = *ComponentsOfClass;
      Entity = REComponentGetEntity();
      if (REEntityIsActive())
      {
        Name = REEntityGetName();
        if (strlen(Name) != 15 || (*Name == 0x6C75616665445F5FLL ? (v10 = *(Name + 7) == 0x6172656D6143746CLL) : (v10 = 0), !v10 || (RECameraViewDescriptorsComponentGetComponentType(), REEntityGetComponentByClass(), RECameraViewDescriptorsComponentGetRenderOrder() != 0x80000000)))
        {
          RENetworkComponentGetComponentType();
          if (!REEntityGetComponentByClass() || (RENetworkComponentIsAuthoritative() & 1) != 0)
          {
            return Entity;
          }
        }
      }

      v11 = REEntityGetName();
      if (strlen(v11) == 15 && *v11 == 0x6C75616665445F5FLL && *(v11 + 7) == 0x6172656D6143746CLL)
      {
        RECameraViewDescriptorsComponentGetComponentType();
        REEntityGetComponentByClass();
        if (RECameraViewDescriptorsComponentGetRenderOrder() == 0x80000000)
        {
          v6 = Entity;
        }
      }

      ++ComponentsOfClass;
      if (!--v2)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
LABEL_21:
    if (v5)
    {
      while (1)
      {
        v13 = *v3;
        v14 = REComponentGetEntity();
        if (REEntityIsActive())
        {
          v15 = REEntityGetName();
          if (strlen(v15) != 15 || (*v15 == 0x6C75616665445F5FLL ? (v16 = *(v15 + 7) == 0x6172656D6143746CLL) : (v16 = 0), !v16 || (RECameraViewDescriptorsComponentGetComponentType(), REEntityGetComponentByClass(), RECameraViewDescriptorsComponentGetRenderOrder() != 0x80000000)))
          {
            RENetworkComponentGetComponentType();
            if (!REEntityGetComponentByClass() || (RENetworkComponentIsAuthoritative() & 1) != 0)
            {
              break;
            }
          }
        }

        v17 = REEntityGetName();
        if (strlen(v17) == 15 && *v17 == 0x6C75616665445F5FLL && *(v17 + 7) == 0x6172656D6143746CLL)
        {
          RECameraViewDescriptorsComponentGetComponentType();
          REEntityGetComponentByClass();
          if (RECameraViewDescriptorsComponentGetRenderOrder() == 0x80000000)
          {
            v6 = v14;
          }
        }

        ++v3;
        if (!--v5)
        {
          return v6;
        }
      }

      return v14;
    }
  }

  return v6;
}

uint64_t rf::helpers::getCameraComponentTransformInScene@<X0>(uint64_t a1@<X8>)
{
  result = rf::helpers::getInternalActiveCamera();
  if (result)
  {
    REEntityGetComponent();
    result = RETransformComponentGetWorldMatrix4x4F();
    *a1 = v3;
    *(a1 + 16) = v4;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
    v7 = 1;
  }

  else
  {
    v7 = 0;
    *a1 = 0;
  }

  *(a1 + 64) = v7;
  return result;
}

std::string *rf::helpers::getFullPath@<X0>(std::string::value_type *a1@<X0>, std::string::size_type a2@<X1>, std::string::value_type *a3@<X2>, std::string::size_type a4@<X3>, std::string *a5@<X8>)
{
  v11 = a1;
  v12 = a2;
  v9 = a3;
  v10 = a4;
  v6 = &str_3_0;
  if (!std::string_view::starts_with[abi:ne200100](&v11, "/", 1uLL) && !std::string_view::starts_with[abi:ne200100](&v9, "/", 1uLL))
  {
    v6 = "/";
  }

  v7 = strlen(v6);
  if (std::string_view::starts_with[abi:ne200100](&v11, "reality", 7uLL) || std::string_view::starts_with[abi:ne200100](&v11, "usd:", 4uLL))
  {
    return rf::concatStringViews<std::string_view,std::string_view,std::string_view>(v11, v12, v6, v7, v9, v10, a5);
  }

  else
  {
    return rf::concatStringViews<std::string_view>(v9, v10, a5);
  }
}

std::string *rf::concatStringViews<std::string_view,std::string_view,std::string_view>@<X0>(std::string::value_type *__s@<X0>, std::string::size_type __n@<X1>, const std::string::value_type *a3@<X2>, std::string::size_type a4@<X3>, const std::string::value_type *a5@<X4>, std::string::size_type a6@<X5>, std::string *a7@<X8>)
{
  a7->__r_.__value_.__r.__words[0] = 0;
  a7->__r_.__value_.__l.__size_ = 0;
  a7->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a7, __s, __n);
  std::string::append(a7, a3, a4);
  return std::string::append(a7, a5, a6);
}

void sub_261811AC8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *rf::concatStringViews<std::string_view>@<X0>(std::string::value_type *__s@<X0>, std::string::size_type __n@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  return std::string::append(a3, __s, __n);
}

void sub_261811B1C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

float rf::helpers::rotationThatFitsRect(float a1, float32x2_t a2, double a3)
{
  v5 = *(&a3 + 1);
  if (((vmvn_s8(vcge_f32(*&a3, a2)).u32[0] & 1) != 0 || a2.f32[1] > *(&a3 + 1)) && (a2.f32[0] > *(&a3 + 1) || a2.f32[1] > *&a3))
  {
    rf::getMessage("The size is too small.", __p);
    rf::internal::logAssert(__p);
    if (v39 < 0)
    {
      operator delete(__p[0]);
    }

    rf::internal::debugBreakHandler(v31);
  }

  v6 = atan(1.0) * 4.0;
  if (v6 < a1 || -v6 > a1)
  {
    rf::getMessage("The rotation is invalid.", __p);
    rf::internal::logAssert(__p);
    if (v39 < 0)
    {
      operator delete(__p[0]);
    }

    rf::internal::debugBreakHandler(v32);
  }

  v8 = a2;
  v9 = sqrtf(vaddv_f32(vmul_f32(v8, v8)));
  if (v9 >= 0.00000011921)
  {
    v10 = a1;
    v11 = v6;
    v12 = 1.0;
    v13 = *&a3 / v9;
    if (v6 * 0.75 < a1 || (v12 = -1.0, v11 * -0.76 > v10))
    {
      v14 = v12 * v6;
      goto LABEL_13;
    }

    if (v11 * 0.25 >= v10)
    {
      v27 = v11 * -0.25;
      v28 = v27 <= v10;
      v29 = 0.0;
      if (v27 > v10)
      {
        v29 = -1.0;
      }

      v14 = (v29 * 0.5) * v6;
      if (v28)
      {
LABEL_13:
        v37 = v8;
        v34 = v14;
        v15 = a1 - v14;
        v16 = v5 / v9;
        if (v13 >= 1.0)
        {
          v19 = 0.0;
          if (v16 >= 1.0)
          {
            return a1;
          }

          goto LABEL_33;
        }

        v17 = acosf(v13);
        if (vcgt_f32(*&a3, v37).u8[0])
        {
          v18 = acosf(a2.f32[0] / v9) - v17;
          if (v15 >= 0.0)
          {
            v21 = v18 < v15;
LABEL_28:
            if (v21)
            {
              v19 = v18;
            }

            else
            {
              v19 = v15;
            }

LABEL_31:
            v13 = *&a3 / v9;
LABEL_32:
            if (v16 >= 1.0)
            {
              return v34 + v19;
            }

LABEL_33:
            v33 = v19;
            v22 = v13;
            v23 = acosf(v5 / v9);
            if (vcgt_f32(*&a3, v37).i32[1])
            {
              v24 = acosf(a2.f32[1] / v9) - v16;
              if (v15 >= 0.0)
              {
                v26 = v24 < v15;
LABEL_47:
                if (!v26)
                {
                  v24 = v15;
                }

LABEL_49:
                v25 = v22;
                goto LABEL_50;
              }

              v24 = -v24;
            }

            else
            {
              v24 = 0.0;
              v25 = v22;
              if (v37.f32[0] >= v5)
              {
LABEL_50:
                if (v25 >= 1.0)
                {
                  return v34 + v24;
                }

                v19 = v33;
                if (vabds_f32(v33, v15) >= vabds_f32(v24, v15))
                {
                  return v34 + v24;
                }

                return v34 + v19;
              }

              v24 = (acosf(a2.f32[0] / v9) - v23) + (v6 * 0.5);
              if (v15 < 0.0)
              {
                v24 = -v24;
                if (v15 <= v24)
                {
                  v24 = v15;
                }

                goto LABEL_49;
              }
            }

            v26 = v15 < v24;
            goto LABEL_47;
          }

          v18 = -v18;
        }

        else
        {
          v19 = 0.0;
          v13 = *&a3 / v9;
          if ((vcgt_f32(*&a3, vdup_lane_s32(v37, 1)).u8[0] & 1) == 0)
          {
            goto LABEL_32;
          }

          v18 = (acosf(a2.f32[1] / v9) - v17) + (v6 * 0.5);
          if (v15 < 0.0)
          {
            v20 = -v18;
            if (v15 <= v20)
            {
              v19 = v15;
            }

            else
            {
              v19 = v20;
            }

            goto LABEL_31;
          }
        }

        v21 = v15 < v18;
        goto LABEL_28;
      }
    }

    else
    {
      v14 = v6 * 0.5;
    }

    v8 = vrev64_s32(a2);
    goto LABEL_13;
  }

  return a1;
}

void sub_261811E78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t rf::helpers::rayPlaneHitTestInBounds(float32x4_t a1, float32x4_t a2, simd_float4 a3, float32x4_t a4, simd_float4 a5, float32x4_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, simd_float4 a15, simd_float4 a16, simd_float4 a17, simd_float4 a18, float32x4_t a19)
{
  v19 = vmulq_f32(a4, a2);
  v20 = v19.f32[2] + vaddv_f32(*v19.f32);
  if (v20 <= -0.00000011921 && (v21 = vmulq_f32(a4, vsubq_f32(a6, a1)), v22 = (v21.f32[2] + vaddv_f32(*v21.f32)) / v20, v22 >= 0.0))
  {
    v29 = v22;
    v30 = vmlaq_n_f32(a1, a2, v22);
    v32.columns[0] = a3;
    v32.columns[1] = a4;
    v32.columns[2] = a5;
    v32.columns[3] = a6;
    v33 = __invert_f4(v32);
    v31 = vaddq_f32(v33.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v33.columns[0], v30.f32[0]), v33.columns[1], *v30.f32, 1), v33.columns[2], v30, 2));
    v33.columns[0] = a15;
    v33.columns[1] = a16;
    v33.columns[2] = a17;
    v33.columns[3] = a18;
    v34 = __invert_f4(v33);
    v25 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v34.columns[0], v31.f32[0]), v34.columns[1], *v31.f32, 1), v34.columns[2], v31, 2), v34.columns[3], v31, 3);
    v34.columns[1].i64[0] = 0x3F0000003F000000;
    v34.columns[1].i64[1] = 0x3F0000003F000000;
    v26 = vmulq_f32(a19, v34.columns[1]);
    if (v25.f32[0] >= -v26.f32[0] && v25.f32[0] <= v26.f32[0])
    {
      v23 = 0x100000000;
      if (v25.f32[2] >= -v26.f32[2] && v25.f32[2] <= v26.f32[2])
      {
        v24 = LODWORD(v29);
      }

      else
      {
        v23 = 0;
        v24 = 0;
      }
    }

    else
    {
      v23 = 0;
      v24 = 0;
    }
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  return v24 | v23;
}

uint64_t *rf::helpers::getNearestPlaneAnchorConstPtr(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float32x4_t a9)
{
  if (!*(a1 + 40))
  {
    return 0;
  }

  v9 = *(a2 + 16);
  if (!v9)
  {
    return 0;
  }

  v10 = a1;
  v11 = 0;
  v12 = 3.4028e38;
  v13 = 3.4028e38;
  do
  {
    if (*(v9 + 76) == 1)
    {
      v14 = v10[2].u64[1];
      if (v14 == -1)
      {
        v28 = v10[1];
        if ((v10[2].i8[0] & 2) == 0 || (a9.i64[0] = v9[12], a9.i32[2] = *(v9 + 26), a9 = vmulq_f32(a9, vnegq_f32(v28)), (a9.f32[2] + vaddv_f32(*a9.f32)) >= 0.93969))
        {
          v30 = *(v9 + 14);
          v31 = *(v9 + 15);
          a1 = rf::helpers::rayPlaneHitTestInBounds(*v10, v28, *(v9 + 5), *(v9 + 6), *(v9 + 7), *(v9 + 8), a1, -1, a3, a4, a5, a6, a7, a8, *(v9 + 11), *(v9 + 12), *(v9 + 11), *(v9 + 12), *(v9 + 13));
          if (HIDWORD(a1) != 0 && v13 > *&a1)
          {
            v11 = v9 + 6;
            v13 = *&a1;
          }
        }
      }

      else
      {
        a1 = rf::helpers::classificationMatches(*(v9 + 65), v14);
        if (a1)
        {
          a9 = *(v9 + 6);
          v15 = vmulq_f32(v10[1], a9);
          v16 = v15.f32[2] + vaddv_f32(*v15.f32);
          if (v16 <= -0.00000011921)
          {
            v17 = *(v9 + 8);
            v18 = vmulq_f32(a9, vsubq_f32(v17, *v10));
            v19 = (v18.f32[2] + vaddv_f32(*v18.f32)) / v16;
            if (v19 >= 0.0)
            {
              v36 = v19;
              v20 = 0;
              v21 = *(v9 + 5);
              v22 = *(v9 + 7);
              v23 = *(v9 + 12);
              v24 = *(v9 + 13);
              v25 = *(v9 + 14);
              v37[0] = *(v9 + 11);
              v37[1] = v23;
              v37[2] = v24;
              v37[3] = v25;
              do
              {
                v38.columns[v20] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, COERCE_FLOAT(v37[v20])), a9, *&v37[v20], 1), v22, v37[v20], 2), v17, v37[v20], 3);
                ++v20;
              }

              while (v20 != 4);
              v32 = v38.columns[0];
              v33 = v38.columns[1];
              v34 = v38.columns[3];
              v35 = v38.columns[2];
              v39 = __invert_f4(v38);
              v26 = *v10;
              v27 = vmlaq_n_f32(*v10, v10[1], v36);
              v39.columns[0] = vaddq_f32(v39.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v39.columns[0], v27.f32[0]), v39.columns[1], *v27.f32, 1), v39.columns[2], v27, 2));
              v39.columns[0].i32[3] = 0;
              v39.columns[2].i64[0] = 0x3F0000003F000000;
              v39.columns[2].i64[1] = 0x3F0000003F000000;
              v39.columns[1] = vmulq_f32(*(v9 + 15), v39.columns[2]);
              v39.columns[2] = vnegq_f32(v39.columns[1]);
              v39.columns[2].i32[3] = 0;
              v39.columns[0] = vmaxnmq_f32(v39.columns[0], v39.columns[2]);
              v39.columns[0].i32[3] = 0;
              v39.columns[1].i32[3] = 0;
              v39.columns[0] = vminnmq_f32(v39.columns[0], v39.columns[1]);
              v26.i32[3] = 1.0;
              v39.columns[0] = vsubq_f32(vaddq_f32(v34, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, v39.columns[0].f32[0]), v33, *v39.columns[0].f32, 1), v35, v39.columns[0], 2)), v26);
              a9 = vmulq_f32(v39.columns[0], v39.columns[0]);
              a9.f32[0] = vaddv_f32(vadd_f32(*a9.f32, *&vextq_s8(a9, a9, 8uLL)));
              if (a9.f32[0] < v12)
              {
                v11 = v9 + 6;
                v13 = v36;
                v12 = a9.f32[0];
              }
            }
          }
        }
      }
    }

    v9 = *v9;
  }

  while (v9);
  return v11;
}

uint64_t rf::helpers::getNearestPlaneAnchor@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float32x4_t a10@<Q0>)
{
  v17 = *MEMORY[0x277D85DE8];
  result = rf::helpers::getNearestPlaneAnchorConstPtr(a1, a2, a3, a4, a5, a6, a7, a8, a10);
  if (result)
  {
    v13 = v12;
    std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v15, result);
    v16 = v13;
    std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a9, v15);
    *(a9 + 272) = v16;
    *(a9 + 288) = 1;
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v15);
  }

  else
  {
    *a9 = 0;
    *(a9 + 288) = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void *rf::helpers::tryGetAnchorFromAllAnchors(uint64_t a1, uint64_t a2)
{
  v4 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>((a1 + 80), a2);
  result = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>((a1 + 120), a2);
  if (v4)
  {
    return v4 + 6;
  }

  v4 = result;
  if (result)
  {
    return v4 + 6;
  }

  return result;
}

uint64_t rf::helpers::validateAnchorState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x277D85DE8];
  AnchorIdentifier = REAnchorComponentGetAnchorIdentifier();
  v34 = 0;
  v35 = 0;
  uuid_clear(uu);
  *uu = AnchorIdentifier;
  v34 = 1;
  REComponentGetEntity();
  if (!REAnchoringComponentGetMode() && REAnchoringComponentGetDescriptorType() != 1)
  {
    REAnchorComponentGetWorldTransform();
    *v29 = v14;
    v30 = v15;
    v31 = v16;
    v32 = v17;
    REAnchoringComponentGetWorldTransformOfDescriptorTransform();
    v28[0] = v18;
    v28[1] = v19;
    v28[2] = v20;
    v28[3] = v21;
    result = re::areAlmostEqual<float>(v29, v28);
    goto LABEL_51;
  }

  AnchorFromAllAnchors = rf::helpers::tryGetAnchorFromAllAnchors(a3, uu);
  v8 = v7;
  DescriptorType = REAnchoringComponentGetDescriptorType();
  result = 0;
  if (DescriptorType <= 5)
  {
    if (DescriptorType > 2)
    {
      if (DescriptorType == 3)
      {
        if (v8)
        {
          result = rf::helpers::planeAnchorMatches(AnchorFromAllAnchors);
          goto LABEL_51;
        }
      }

      else if (DescriptorType == 4)
      {
        if (v8)
        {
          result = rf::helpers::imageAnchorMatches(AnchorFromAllAnchors, a1, 0);
          goto LABEL_51;
        }
      }

      else if (v8)
      {
        result = rf::helpers::objectAnchorMatches(AnchorFromAllAnchors);
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    if (DescriptorType)
    {
      if (DescriptorType != 1)
      {
        if (DescriptorType != 2)
        {
          goto LABEL_51;
        }

        if (v8)
        {
          DescriptorAnchorIdentifier = REAnchoringComponentGetDescriptorAnchorIdentifier();
          LOBYTE(v30) = 0;
          *(&v30 + 1) = 0;
          uuid_clear(v29);
          *v29 = DescriptorAnchorIdentifier;
          LOBYTE(v30) = 1;
          if (v34)
          {
            v12 = *uu;
          }

          else
          {
            v12 = uu;
          }

          v13 = uuid_compare(v12, DescriptorAnchorIdentifier);
          result = 0;
          if (!v13)
          {
            result = rf::helpers::getTrackedFromAnchor(AnchorFromAllAnchors);
          }

          goto LABEL_51;
        }

LABEL_50:
        result = 0;
        goto LABEL_51;
      }

LABEL_26:
      if ((REAnchoringComponentGetIsDescriptorWorldTransformDirty() & 1) == 0)
      {
        result = REAnchorComponentGetAnchoredLocally();
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    v22 = rf::helpers::kCameraIdentifier(0);
    goto LABEL_36;
  }

  if (DescriptorType <= 9)
  {
    switch(DescriptorType)
    {
      case 6:
        if ((v8 & 1) == 0)
        {
          goto LABEL_50;
        }

        v23 = *(AnchorFromAllAnchors + 64) == 4;
        break;
      case 7:
        if ((v8 & 1) == 0)
        {
          goto LABEL_50;
        }

        v23 = *(AnchorFromAllAnchors + 64) == 5;
        break;
      case 9:
        goto LABEL_29;
      default:
        goto LABEL_51;
    }

    v26 = v23;
    result = (v26 & *(AnchorFromAllAnchors + 99));
    goto LABEL_51;
  }

  if (DescriptorType != 10)
  {
    if (DescriptorType != 11)
    {
      if (DescriptorType != 13)
      {
        goto LABEL_51;
      }

      goto LABEL_26;
    }

LABEL_29:
    result = 1;
    goto LABEL_51;
  }

  v22 = rf::helpers::kHeadIdentifier(0);
LABEL_36:
  v24 = uu;
  if (v34)
  {
    v24 = *uu;
  }

  if (*(v22 + 16))
  {
    v25 = *v22;
  }

  else
  {
    v25 = v22;
  }

  result = uuid_compare(v24, v25) == 0;
LABEL_51:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL re::areAlmostEqual<float>(float *a1, float *a2)
{
  if (*a1 != *a2 && vabds_f32(*a1, *a2) >= (((fabsf(*a1) + fabsf(*a2)) + 1.0) * 0.00001))
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a2[1];
  if (v2 != v3 && vabds_f32(v2, v3) >= (((fabsf(v2) + fabsf(v3)) + 1.0) * 0.00001))
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a2[2];
  if (v4 != v5 && vabds_f32(v4, v5) >= (((fabsf(v4) + fabsf(v5)) + 1.0) * 0.00001))
  {
    return 0;
  }

  v6 = a1[3];
  v7 = a2[3];
  if (v6 != v7 && vabds_f32(v6, v7) >= (((fabsf(v6) + fabsf(v7)) + 1.0) * 0.00001))
  {
    return 0;
  }

  v8 = a1[4];
  v9 = a2[4];
  if (v8 != v9 && vabds_f32(v8, v9) >= (((fabsf(v8) + fabsf(v9)) + 1.0) * 0.00001))
  {
    return 0;
  }

  v10 = a1[5];
  v11 = a2[5];
  if (v10 != v11 && vabds_f32(v10, v11) >= (((fabsf(v10) + fabsf(v11)) + 1.0) * 0.00001))
  {
    return 0;
  }

  v12 = a1[6];
  v13 = a2[6];
  if (v12 != v13 && vabds_f32(v12, v13) >= (((fabsf(v12) + fabsf(v13)) + 1.0) * 0.00001))
  {
    return 0;
  }

  v14 = a1[7];
  v15 = a2[7];
  if (v14 != v15 && vabds_f32(v14, v15) >= (((fabsf(v14) + fabsf(v15)) + 1.0) * 0.00001))
  {
    return 0;
  }

  v16 = a1[8];
  v17 = a2[8];
  if (v16 != v17 && vabds_f32(v16, v17) >= (((fabsf(v16) + fabsf(v17)) + 1.0) * 0.00001))
  {
    return 0;
  }

  v18 = a1[9];
  v19 = a2[9];
  if (v18 != v19 && vabds_f32(v18, v19) >= (((fabsf(v18) + fabsf(v19)) + 1.0) * 0.00001))
  {
    return 0;
  }

  v20 = a1[10];
  v21 = a2[10];
  if (v20 != v21 && vabds_f32(v20, v21) >= (((fabsf(v20) + fabsf(v21)) + 1.0) * 0.00001))
  {
    return 0;
  }

  v22 = a1[11];
  v23 = a2[11];
  if (v22 != v23 && vabds_f32(v22, v23) >= (((fabsf(v22) + fabsf(v23)) + 1.0) * 0.00001))
  {
    return 0;
  }

  v24 = a1[12];
  v25 = a2[12];
  if (v24 != v25 && vabds_f32(v24, v25) >= (((fabsf(v24) + fabsf(v25)) + 1.0) * 0.00001))
  {
    return 0;
  }

  v26 = a1[13];
  v27 = a2[13];
  if (v26 != v27 && vabds_f32(v26, v27) >= (((fabsf(v26) + fabsf(v27)) + 1.0) * 0.00001))
  {
    return 0;
  }

  v28 = a1[14];
  v29 = a2[14];
  if (v28 != v29 && vabds_f32(v28, v29) >= (((fabsf(v28) + fabsf(v29)) + 1.0) * 0.00001))
  {
    return 0;
  }

  v30 = a1[15];
  v31 = a2[15];
  return v30 == v31 || vabds_f32(v30, v31) < (((fabsf(v30) + fabsf(v31)) + 1.0) * 0.00001);
}

BOOL rf::helpers::planeAnchorMatches(uint64_t a1)
{
  Entity = REComponentGetEntity();
  if (*rf::PlacementComponentTypeInfo::instance(Entity) && REEntityGetCustomComponent())
  {
    return 1;
  }

  if (*(a1 + 256) != 1)
  {
    return 0;
  }

  DescriptorAlignment = REAnchoringComponentGetDescriptorAlignment();
  DescriptorClassification = REAnchoringComponentGetDescriptorClassification();
  REAnchoringComponentGetDescriptorBounds();
  if (DescriptorAlignment != 255)
  {
    v7 = *(a1 + 208);
    if (v7)
    {
      if (v7 != 1 || (DescriptorAlignment & 2) == 0)
      {
        return 0;
      }
    }

    else if ((DescriptorAlignment & 1) == 0)
    {
      return 0;
    }
  }

  v9 = v6;
  v8 = rf::helpers::classificationMatches(*(a1 + 212), DescriptorClassification);
  result = 0;
  if (v8)
  {
    if (*(a1 + 192) >= *&v9)
    {
      return *(a1 + 200) >= *(&v9 + 1);
    }
  }

  return result;
}

uint64_t rf::helpers::imageAnchorMatches(uint64_t a1, uint64_t a2, int a3)
{
  v33 = *MEMORY[0x277D85DE8];
  if (*(a1 + 256) == 2)
  {
    if (!REAnchoringComponentGetDescriptorResourceStyle())
    {
      rf::getMessage("AnchorManagementConsumer: Image anchoring target should not have kREAnchoringResourceNone", v24);
      rf::internal::logAssert(v24);
      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      rf::internal::debugBreakHandler(v20);
      v23 = 0;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      *__p = 0u;
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      rf::helpers::imageAnchorMatches(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&,REComponent *,BOOL)::$_0::operator()(&v22);
      if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &v22;
      }

      else
      {
        v21 = v22.__r_.__value_.__r.__words[0];
      }

      v26 = 136315138;
      v27 = v21;
      _os_log_send_and_compose_impl();
      std::string::~string(&v22);
      _os_crash_msg();
      __break(1u);
    }

    DescriptorResourceGroup = REAnchoringComponentGetDescriptorResourceGroup();
    v6 = strlen(DescriptorResourceGroup);
    DescriptorResourceName = REAnchoringComponentGetDescriptorResourceName();
    v8 = strlen(DescriptorResourceName);
    rf::helpers::getFullPath(DescriptorResourceGroup, v6, DescriptorResourceName, v8, __p);
    v9 = *(a1 + 159);
    if (v9 >= 0)
    {
      v10 = *(a1 + 159);
    }

    else
    {
      v10 = *(a1 + 144);
    }

    v11 = BYTE7(v29);
    v12 = SBYTE7(v29);
    if (SBYTE7(v29) < 0)
    {
      v11 = __p[1];
    }

    if (v10 == v11)
    {
      if (v9 >= 0)
      {
        v13 = (a1 + 136);
      }

      else
      {
        v13 = *(a1 + 136);
      }

      if ((SBYTE7(v29) & 0x80u) == 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      v15 = memcmp(v13, v14, v10) == 0;
    }

    else
    {
      v15 = 0;
    }

    if (*(a1 + 99))
    {
      v17 = 1;
    }

    else
    {
      v17 = (a3 ^ 1) & *(a1 + 128);
    }

    v16 = v15 & v17;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v16 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

void sub_261812D34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL rf::helpers::objectAnchorMatches(uint64_t a1)
{
  if (*(a1 + 256) != 3)
  {
    return 0;
  }

  DescriptorResourceGroup = REAnchoringComponentGetDescriptorResourceGroup();
  v3 = strlen(DescriptorResourceGroup);
  DescriptorResourceName = REAnchoringComponentGetDescriptorResourceName();
  v5 = strlen(DescriptorResourceName);
  rf::helpers::getFullPath(DescriptorResourceGroup, v3, DescriptorResourceName, v5, &__p);
  v6 = *(a1 + 151);
  if (v6 >= 0)
  {
    v7 = *(a1 + 151);
  }

  else
  {
    v7 = *(a1 + 136);
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v9 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (v7 == size)
  {
    v12 = *(a1 + 128);
    v11 = (a1 + 128);
    v10 = v12;
    if (v6 >= 0)
    {
      v13 = v11;
    }

    else
    {
      v13 = v10;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v15 = memcmp(v13, p_p, v7) == 0;
    if (v9 < 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v15 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_18:
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return v15;
}

uint64_t rf::helpers::cacheAnchorBeforeTravelMode(uint64_t result, uint64_t a2)
{
  if (result)
  {
    result = REAnchoringComponentGetDescriptorType();
    if (result == 1)
    {
      REAnchorComponentGetAnchorIdentifier();
      REAnchoringComponentSetDescriptorCachedAnchorIdentifier();

      return MEMORY[0x282153798](a2);
    }
  }

  return result;
}

uint64_t rf::helpers::isAnchoringTypeAuthorizedForPeer(uint64_t a1, void *a2)
{
  if (!a1)
  {
    rf::getMessage("Anchoring component should not be nullptr", __p);
    rf::internal::logAssert(__p);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    rf::internal::debugBreakHandler(v7);
  }

  DescriptorType = REAnchoringComponentGetDescriptorType();
  REComponentGetEntity();
  if (!a1)
  {
    rf::getMessage("Entity should not be nullptr", __p);
    rf::internal::logAssert(__p);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    rf::internal::debugBreakHandler(v8);
  }

  if (!a2[3])
  {
    return 1;
  }

  RENetworkComponentGetComponentType();
  result = REEntityGetComponentByClass();
  if (!result)
  {
    return result;
  }

  __p[0] = RENetworkComponentOwnerPeerID();
  result = std::__hash_table<std::__hash_value_type<unsigned long,std::any>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::any>>>::find<unsigned long>(a2, __p);
  if (!result)
  {
    return result;
  }

  v6 = std::__hash_table<std::__hash_value_type<unsigned long,std::any>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::any>>>::find<unsigned long>(a2, __p);
  if (!v6)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  if ((DescriptorType - 3) < 3)
  {
    return (*(v6 + 24) >> 1) & 1;
  }

  if (DescriptorType == 2)
  {
    return 1;
  }

  if (DescriptorType == 1)
  {
    return (*(v6 + 24) >> 1) & 1;
  }

  return 0;
}

void sub_261812FFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t rf::helpers::needAnchoringInClientProcessForEntity(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    v4 = 0;
    return v4 & 1;
  }

  if (*a1 != 1 || (REAnchoringComponentGetComponentType(), !REEntityGetComponentByClass()))
  {
LABEL_13:
    v4 = 0;
    return v4 & 1;
  }

  DescriptorType = REAnchoringComponentGetDescriptorType();
  if (DescriptorType <= 2)
  {
    if (DescriptorType == 1)
    {
      v4 = a1[1];
      return v4 & 1;
    }

    if (DescriptorType == 2)
    {
      v4 = 1;
      return v4 & 1;
    }

    goto LABEL_13;
  }

  if (DescriptorType == 3)
  {
    v4 = a1[2];
    return v4 & 1;
  }

  if (DescriptorType == 4)
  {
    v4 = a1[3];
    return v4 & 1;
  }

  if (DescriptorType != 5)
  {
    goto LABEL_13;
  }

  v4 = a1[4];
  return v4 & 1;
}

uint64_t rf::helpers::authorizedTypeForEntitledAnchoringTypesConfig(int a1, char *a2)
{
  v2 = 0;
  if (a1 > 4)
  {
    switch(a1)
    {
      case 5:
        v2 = a2[3];
        break;
      case 8:
        v2 = a2[4];
        break;
      case 12:
        v2 = a2[5];
        break;
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        v2 = *a2;
        break;
      case 3:
        v2 = a2[1];
        break;
      case 4:
        v2 = a2[2];
        break;
    }
  }

  return v2 & 1;
}

uint64_t rf::helpers::needAnchoringInServerProcessForEntity(uint64_t result)
{
  if (result)
  {
    REClientAnchorSyncComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      result = REClientAnchorSyncComponentIsAnchored();
      if (result)
      {
        REAnchoringComponentGetComponentType();
        result = REEntityGetComponentByClass();
        if (result)
        {
          return REAnchoringComponentGetDescriptorType() - 6 < 0xFFFFFFFB;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t rf::helpers::isAnchoringTypeAuthorizedForSelf(uint64_t a1, unint64_t a2)
{
  if (a1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      return 0;
    }
  }

  else
  {
    rf::getMessage("Anchoring component should not be nullptr", __p);
    rf::internal::logAssert(__p);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    rf::internal::debugBreakHandler(v4);
    if ((a2 & 0x8000000000000000) == 0)
    {
      return 0;
    }
  }

  DescriptorType = REAnchoringComponentGetDescriptorType();
  if ((DescriptorType - 3) < 3)
  {
    return (a2 >> 1) & 1;
  }

  if (DescriptorType != 2)
  {
    if (DescriptorType != 1)
    {
      return 0;
    }

    return (a2 >> 1) & 1;
  }

  return 1;
}

void sub_261813254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t rf::helpers::shouldAnchorEntityInClientProcess(uint64_t a1, _BYTE *a2, unint64_t a3)
{
  result = rf::helpers::needAnchoringInClientProcessForEntity(a2, a1);
  if (result)
  {
    REAnchoringComponentGetComponentType();
    ComponentByClass = REEntityGetComponentByClass();

    return rf::helpers::isAnchoringTypeAuthorizedForSelf(ComponentByClass, a3);
  }

  return result;
}

uint64_t rf::helpers::shouldAnchorEntityRequiringClientAnchoring(uint64_t a1, void *a2)
{
  REClientAnchorSyncComponentGetComponentType();
  REEntityGetComponentByClass();
  REAnchoringComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  result = rf::helpers::isAnchoringTypeAuthorizedForPeer(ComponentByClass, a2);
  if (result)
  {

    return REClientAnchorSyncComponentIsAnchored();
  }

  return result;
}

uint64_t rf::helpers::createRFWorldAnchor@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  DescriptorType = REAnchoringComponentGetDescriptorType();
  v6 = *a1;
  REAnchoringComponentGetWorldTransformOfDescriptorTransform();
  v10 = v9;
  v31 = v7;
  v32 = v11;
  v12 = vmulq_f32(v7, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v10, v10, 0xCuLL), v10, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL))), vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL), vextq_s8(vextq_s8(v8, v8, 0xCuLL), v8, 8uLL)));
  if ((v12.f32[2] + vaddv_f32(*v12.f32)) <= 0.0)
  {
    v13 = -1.0;
  }

  else
  {
    v13 = 1.0;
  }

  v14 = vmulq_f32(v7, v7);
  v29 = v10;
  v30 = v8;
  v15 = vmulq_f32(v8, v8);
  v16 = vadd_f32(vzip1_s32(*v14.i8, *v15.i8), vzip2_s32(*v14.i8, *v15.i8));
  v17 = vextq_s8(v14, v14, 8uLL);
  *v17.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v17.f32, *&vextq_s8(v15, v15, 8uLL)), v16));
  v18 = vmulq_f32(v10, v10);
  v17.i32[2] = sqrtf(v18.f32[2] + vaddv_f32(*v18.f32));
  v19 = vmulq_n_f32(v17, v13);
  v20 = v19.f32[1];
  if (fabsf(v19.f32[0]) <= 0.00001)
  {
    v19.f32[0] = 1.0;
  }

  v28 = *v19.f32;
  *v19.i64 = fabsf(v19.f32[1]);
  if (*v19.i64 <= 0.00001)
  {
    v19.f32[0] = 1.0;
  }

  else
  {
    v19.f32[0] = v20;
  }

  v27 = *v19.f32;
  *v19.i64 = fabsf(v19.f32[2]);
  if (*v19.i64 <= 0.00001)
  {
    v19.f32[0] = 1.0;
  }

  else
  {
    v19.f32[0] = v19.f32[2];
  }

  v26 = *v19.f32;
  LOBYTE(v34) = 0;
  *(&v34 + 1) = 0;
  uuid_clear(uu);
  v35 = vdivq_f32(v31, vdupq_lane_s32(v28, 0));
  v36 = vdivq_f32(v30, vdupq_lane_s32(v27, 0));
  v37 = vdivq_f32(v29, vdupq_lane_s32(v26, 0));
  *v38 = v32;
  *&v38[16] = 16842752;
  *&v38[20] = 0;
  v38[24] = 0;
  v39 = 0;
  LOBYTE(v40) = DescriptorType == 13;
  BYTE8(v41) = 0;
  *&v42 = 0;
  uuid_clear(&v40 + 8);
  BYTE8(v42) = 0;
  BYTE8(v44) = 0;
  v49 = v37;
  v50[0] = *v38;
  *(v50 + 9) = *&v38[9];
  v45 = *uu;
  v46 = v34;
  v47 = v35;
  v48 = v36;
  v21 = v39;
  v39 = 0;
  v51 = v21;
  v54 = v42;
  v55 = v43;
  v56 = v44;
  v52 = v40;
  v53 = v41;
  v57 = 0;
  if (DescriptorType == 13)
  {
    v22 = *a1;
    DescriptorAnchorIdentifier = REAnchoringComponentGetDescriptorAnchorIdentifier();
    if (uuid_compare(UUID_NULL, DescriptorAnchorIdentifier))
    {
      LOBYTE(v34) = 0;
      *(&v34 + 1) = 0;
      uuid_clear(uu);
      *uu = *DescriptorAnchorIdentifier;
      if (v57)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v45 = *uu;
      v46 = v34;
    }
  }

  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a2, &v45);
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v45);
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void rf::helpers::publishAnchorStateEventDidAnchor(uint64_t a1, unsigned int a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (REEntityGetSceneNullable())
  {
    RESceneGetEventBus();
    *&v6 = a1;
    *(&v6 + 1) = a2;
    MEMORY[0x26670C400]("REAnchorStateDidAnchorEvent");
    REEventBusPublish();
  }

  else
  {
    v4 = rf::realityFusionLogObject(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v6) = 136315138;
      *(&v6 + 4) = REEntityGetName();
      _os_log_impl(&dword_2617CB000, v4, OS_LOG_TYPE_DEFAULT, "AnchorManagementConsumer: Failed to publish DidAnchor event for entity %s because failed to get scene", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void rf::helpers::publishAnchorStateEventWillUnanchor(uint64_t a1, unsigned int a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (REEntityGetSceneNullable())
  {
    RESceneGetEventBus();
    *&v6 = a1;
    *(&v6 + 1) = a2;
    MEMORY[0x26670C400]("REAnchorStateWillUnanchorEvent");
    REEventBusPublish();
  }

  else
  {
    v4 = rf::realityFusionLogObject(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v6) = 136315138;
      *(&v6 + 4) = REEntityGetName();
      _os_log_impl(&dword_2617CB000, v4, OS_LOG_TYPE_DEFAULT, "AnchorManagementConsumer: Failed to publish WillUnanchor event for entity %s because failed to get scene", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void rf::helpers::publishAnchorStateEventDidFailToAnchor(uint64_t a1, unsigned int a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (REEntityGetSceneNullable())
  {
    RESceneGetEventBus();
    *&v6 = a1;
    *(&v6 + 1) = a2;
    MEMORY[0x26670C400]("REAnchorStateDidFailToAnchorEvent");
    REEventBusPublish();
  }

  else
  {
    v4 = rf::realityFusionLogObject(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v6) = 136315138;
      *(&v6 + 4) = REEntityGetName();
      _os_log_impl(&dword_2617CB000, v4, OS_LOG_TYPE_DEFAULT, "AnchorManagementConsumer: Failed to publish DidFailToAnchor event for entity %s because failed to get scene", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::helpers::getTransformFromAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *a2 = *(a1 + 32);
  *(a2 + 16) = v2;
  result = *(a1 + 64);
  v4 = *(a1 + 80);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::helpers::getTransformFromAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *a2 = *(a1 + 32);
  *(a2 + 16) = v2;
  result = *(a1 + 64);
  v4 = *(a1 + 80);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::helpers::getTransformFromAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *a2 = *(a1 + 32);
  *(a2 + 16) = v2;
  result = *(a1 + 64);
  v4 = *(a1 + 80);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::helpers::getTransformFromAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *a2 = *(a1 + 32);
  *(a2 + 16) = v2;
  result = *(a1 + 64);
  v4 = *(a1 + 80);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::helpers::getTransformFromAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *a2 = *(a1 + 32);
  *(a2 + 16) = v2;
  result = *(a1 + 64);
  v4 = *(a1 + 80);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::helpers::getTransformFromAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *a2 = *(a1 + 32);
  *(a2 + 16) = v2;
  result = *(a1 + 64);
  v4 = *(a1 + 80);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::helpers::getTransformFromAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&,REComponent * const&,re::Matrix4x4<float> const&,rf::helpers::HandAnchorPlacementDefaults const&,simd_float4x4({block_pointer})(REScene *))::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>@<Q0>(uint64_t ***a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  v5 = *a1;
  v6 = ***a1;
  REAnchoringComponentGetDescriptorType();
  v7 = **v5;
  Entity = REComponentGetEntity();
  if (*rf::PlacementComponentTypeInfo::instance(Entity))
  {
    REEntityGetCustomComponent();
  }

  v9 = **v5;
  if (rf::helpers::isWorldAnchoringType())
  {
    v10 = **v5;
    REAnchoringComponentGetWorldScaleOfDescriptorTransform();
    v26 = vmulq_lane_f32(a2[3], *v11.f32, 1);
    v27 = vmulq_n_f32(a2[2], v11.f32[0]);
    v24 = vmulq_laneq_f32(a2[4], v11, 2);
    v25 = a2[5];
    v12 = **v5;
    if (REAnchoringComponentGetCoordinateSpaceOfDescriptorTransform())
    {
      v13 = **v5;
      CoordinateSpaceOfDescriptorTransform = REAnchoringComponentGetCoordinateSpaceOfDescriptorTransform();
      v15 = CoordinateSpaceOfDescriptorTransform[1];
      v16 = CoordinateSpaceOfDescriptorTransform[2];
      v17 = CoordinateSpaceOfDescriptorTransform[3];
      v28[0] = *CoordinateSpaceOfDescriptorTransform;
      v28[1] = v15;
      v28[2] = v16;
      v28[3] = v17;
      v18 = **v5;
      REAnchoringComponentGetDescriptorTransform();
      v32 = __invert_f4(v31);
      v19 = 0;
      v29 = v32;
      do
      {
        *(&v30 + v19 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, COERCE_FLOAT(*&v29.columns[v19])), v26, *v29.columns[v19].f32, 1), v24, v29.columns[v19], 2), v25, v29.columns[v19], 3);
        ++v19;
      }

      while (v19 != 4);
      if (!re::areAlmostEqual<float>(v28, &v30))
      {
        v20 = **v5;
        REAnchoringComponentUpdateCoordinateSpaceOfDescriptorTransform();
      }
    }

    *a3 = v27;
    a3[1] = v26;
    result = v25;
    a3[2] = v24;
    a3[3] = v25;
  }

  else
  {
    v22 = a2[3];
    *a3 = a2[2];
    a3[1] = v22;
    result = a2[4];
    v23 = a2[5];
    a3[2] = result;
    a3[3] = v23;
  }

  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::helpers::getTransformFromAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&,REComponent * const&,re::Matrix4x4<float> const&,rf::helpers::HandAnchorPlacementDefaults const&,simd_float4x4({block_pointer})(REScene *))::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>@<Q0>(uint64_t ***a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  v5 = *a1;
  v6 = ***a1;
  REAnchoringComponentGetDescriptorType();
  v7 = **v5;
  Entity = REComponentGetEntity();
  if (*rf::PlacementComponentTypeInfo::instance(Entity))
  {
    REEntityGetCustomComponent();
  }

  v9 = **v5;
  if (rf::helpers::isWorldAnchoringType())
  {
    v10 = **v5;
    REAnchoringComponentGetWorldScaleOfDescriptorTransform();
    v26 = vmulq_lane_f32(a2[3], *v11.f32, 1);
    v27 = vmulq_n_f32(a2[2], v11.f32[0]);
    v24 = vmulq_laneq_f32(a2[4], v11, 2);
    v25 = a2[5];
    v12 = **v5;
    if (REAnchoringComponentGetCoordinateSpaceOfDescriptorTransform())
    {
      v13 = **v5;
      CoordinateSpaceOfDescriptorTransform = REAnchoringComponentGetCoordinateSpaceOfDescriptorTransform();
      v15 = CoordinateSpaceOfDescriptorTransform[1];
      v16 = CoordinateSpaceOfDescriptorTransform[2];
      v17 = CoordinateSpaceOfDescriptorTransform[3];
      v28[0] = *CoordinateSpaceOfDescriptorTransform;
      v28[1] = v15;
      v28[2] = v16;
      v28[3] = v17;
      v18 = **v5;
      REAnchoringComponentGetDescriptorTransform();
      v32 = __invert_f4(v31);
      v19 = 0;
      v29 = v32;
      do
      {
        *(&v30 + v19 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, COERCE_FLOAT(*&v29.columns[v19])), v26, *v29.columns[v19].f32, 1), v24, v29.columns[v19], 2), v25, v29.columns[v19], 3);
        ++v19;
      }

      while (v19 != 4);
      if (!re::areAlmostEqual<float>(v28, &v30))
      {
        v20 = **v5;
        REAnchoringComponentUpdateCoordinateSpaceOfDescriptorTransform();
      }
    }

    *a3 = v27;
    a3[1] = v26;
    result = v25;
    a3[2] = v24;
    a3[3] = v25;
  }

  else
  {
    v22 = a2[3];
    *a3 = a2[2];
    a3[1] = v22;
    result = a2[4];
    v23 = a2[5];
    a3[2] = result;
    a3[3] = v23;
  }

  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::helpers::getTransformFromAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&,REComponent * const&,re::Matrix4x4<float> const&,rf::helpers::HandAnchorPlacementDefaults const&,simd_float4x4({block_pointer})(REScene *))::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>@<Q0>(uint64_t ***a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  v5 = *a1;
  v6 = ***a1;
  REAnchoringComponentGetDescriptorType();
  v7 = **v5;
  Entity = REComponentGetEntity();
  if (*rf::PlacementComponentTypeInfo::instance(Entity))
  {
    REEntityGetCustomComponent();
  }

  v9 = **v5;
  if (rf::helpers::isWorldAnchoringType())
  {
    v10 = **v5;
    REAnchoringComponentGetWorldScaleOfDescriptorTransform();
    v26 = vmulq_lane_f32(a2[3], *v11.f32, 1);
    v27 = vmulq_n_f32(a2[2], v11.f32[0]);
    v24 = vmulq_laneq_f32(a2[4], v11, 2);
    v25 = a2[5];
    v12 = **v5;
    if (REAnchoringComponentGetCoordinateSpaceOfDescriptorTransform())
    {
      v13 = **v5;
      CoordinateSpaceOfDescriptorTransform = REAnchoringComponentGetCoordinateSpaceOfDescriptorTransform();
      v15 = CoordinateSpaceOfDescriptorTransform[1];
      v16 = CoordinateSpaceOfDescriptorTransform[2];
      v17 = CoordinateSpaceOfDescriptorTransform[3];
      v28[0] = *CoordinateSpaceOfDescriptorTransform;
      v28[1] = v15;
      v28[2] = v16;
      v28[3] = v17;
      v18 = **v5;
      REAnchoringComponentGetDescriptorTransform();
      v32 = __invert_f4(v31);
      v19 = 0;
      v29 = v32;
      do
      {
        *(&v30 + v19 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, COERCE_FLOAT(*&v29.columns[v19])), v26, *v29.columns[v19].f32, 1), v24, v29.columns[v19], 2), v25, v29.columns[v19], 3);
        ++v19;
      }

      while (v19 != 4);
      if (!re::areAlmostEqual<float>(v28, &v30))
      {
        v20 = **v5;
        REAnchoringComponentUpdateCoordinateSpaceOfDescriptorTransform();
      }
    }

    *a3 = v27;
    a3[1] = v26;
    result = v25;
    a3[2] = v24;
    a3[3] = v25;
  }

  else
  {
    v22 = a2[3];
    *a3 = a2[2];
    a3[1] = v22;
    result = a2[4];
    v23 = a2[5];
    a3[2] = result;
    a3[3] = v23;
  }

  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::helpers::getTransformFromAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&,REComponent * const&,re::Matrix4x4<float> const&,rf::helpers::HandAnchorPlacementDefaults const&,simd_float4x4({block_pointer})(REScene *))::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>@<Q0>(uint64_t ***a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  v5 = *a1;
  v6 = ***a1;
  REAnchoringComponentGetDescriptorType();
  v7 = **v5;
  Entity = REComponentGetEntity();
  if (*rf::PlacementComponentTypeInfo::instance(Entity))
  {
    REEntityGetCustomComponent();
  }

  v9 = **v5;
  if (rf::helpers::isWorldAnchoringType())
  {
    v10 = **v5;
    REAnchoringComponentGetWorldScaleOfDescriptorTransform();
    v26 = vmulq_lane_f32(a2[3], *v11.f32, 1);
    v27 = vmulq_n_f32(a2[2], v11.f32[0]);
    v24 = vmulq_laneq_f32(a2[4], v11, 2);
    v25 = a2[5];
    v12 = **v5;
    if (REAnchoringComponentGetCoordinateSpaceOfDescriptorTransform())
    {
      v13 = **v5;
      CoordinateSpaceOfDescriptorTransform = REAnchoringComponentGetCoordinateSpaceOfDescriptorTransform();
      v15 = CoordinateSpaceOfDescriptorTransform[1];
      v16 = CoordinateSpaceOfDescriptorTransform[2];
      v17 = CoordinateSpaceOfDescriptorTransform[3];
      v28[0] = *CoordinateSpaceOfDescriptorTransform;
      v28[1] = v15;
      v28[2] = v16;
      v28[3] = v17;
      v18 = **v5;
      REAnchoringComponentGetDescriptorTransform();
      v32 = __invert_f4(v31);
      v19 = 0;
      v29 = v32;
      do
      {
        *(&v30 + v19 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, COERCE_FLOAT(*&v29.columns[v19])), v26, *v29.columns[v19].f32, 1), v24, v29.columns[v19], 2), v25, v29.columns[v19], 3);
        ++v19;
      }

      while (v19 != 4);
      if (!re::areAlmostEqual<float>(v28, &v30))
      {
        v20 = **v5;
        REAnchoringComponentUpdateCoordinateSpaceOfDescriptorTransform();
      }
    }

    *a3 = v27;
    a3[1] = v26;
    result = v25;
    a3[2] = v24;
    a3[3] = v25;
  }

  else
  {
    v22 = a2[3];
    *a3 = a2[2];
    a3[1] = v22;
    result = a2[4];
    v23 = a2[5];
    a3[2] = result;
    a3[3] = v23;
  }

  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::helpers::getTransformFromAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&,REComponent * const&,re::Matrix4x4<float> const&,rf::helpers::HandAnchorPlacementDefaults const&,simd_float4x4({block_pointer})(REScene *))::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>@<Q0>(uint64_t ***a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  v5 = *a1;
  v6 = ***a1;
  REAnchoringComponentGetDescriptorType();
  v7 = **v5;
  Entity = REComponentGetEntity();
  if (*rf::PlacementComponentTypeInfo::instance(Entity))
  {
    REEntityGetCustomComponent();
  }

  v9 = **v5;
  if (rf::helpers::isWorldAnchoringType())
  {
    v10 = **v5;
    REAnchoringComponentGetWorldScaleOfDescriptorTransform();
    v26 = vmulq_lane_f32(a2[3], *v11.f32, 1);
    v27 = vmulq_n_f32(a2[2], v11.f32[0]);
    v24 = vmulq_laneq_f32(a2[4], v11, 2);
    v25 = a2[5];
    v12 = **v5;
    if (REAnchoringComponentGetCoordinateSpaceOfDescriptorTransform())
    {
      v13 = **v5;
      CoordinateSpaceOfDescriptorTransform = REAnchoringComponentGetCoordinateSpaceOfDescriptorTransform();
      v15 = CoordinateSpaceOfDescriptorTransform[1];
      v16 = CoordinateSpaceOfDescriptorTransform[2];
      v17 = CoordinateSpaceOfDescriptorTransform[3];
      v28[0] = *CoordinateSpaceOfDescriptorTransform;
      v28[1] = v15;
      v28[2] = v16;
      v28[3] = v17;
      v18 = **v5;
      REAnchoringComponentGetDescriptorTransform();
      v32 = __invert_f4(v31);
      v19 = 0;
      v29 = v32;
      do
      {
        *(&v30 + v19 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, COERCE_FLOAT(*&v29.columns[v19])), v26, *v29.columns[v19].f32, 1), v24, v29.columns[v19], 2), v25, v29.columns[v19], 3);
        ++v19;
      }

      while (v19 != 4);
      if (!re::areAlmostEqual<float>(v28, &v30))
      {
        v20 = **v5;
        REAnchoringComponentUpdateCoordinateSpaceOfDescriptorTransform();
      }
    }

    *a3 = v27;
    a3[1] = v26;
    result = v25;
    a3[2] = v24;
    a3[3] = v25;
  }

  else
  {
    v22 = a2[3];
    *a3 = a2[2];
    a3[1] = v22;
    result = a2[4];
    v23 = a2[5];
    a3[2] = result;
    a3[3] = v23;
  }

  return result;
}

double std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::helpers::getTransformFromAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&,REComponent * const&,re::Matrix4x4<float> const&,rf::helpers::HandAnchorPlacementDefaults const&,simd_float4x4({block_pointer})(REScene *))::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>@<D0>(uint64_t ***a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *a1;
  v6 = ***a1;
  REAnchoringComponentGetDescriptorType();
  v7 = **v5;
  Entity = REComponentGetEntity();
  if (*rf::PlacementComponentTypeInfo::instance(Entity))
  {
    REEntityGetCustomComponent();
  }

  v9 = 0;
  v10 = *(a2 + 128);
  v12.i64[0] = 0;
  v11.i32[0] = 0;
  v11.i32[3] = 0;
  *(v11.i64 + 4) = v10.u32[0];
  v12.i64[1] = v10.u32[0];
  v13 = *(a2 + 48);
  v14 = *(a2 + 64);
  v15 = *(a2 + 80);
  v20[0] = *(a2 + 32);
  v20[1] = v13;
  v20[2] = v14;
  v20[3] = v15;
  do
  {
    v21[v9] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(v20[v9])), v11, *&v20[v9], 1), v12, v20[v9], 2), xmmword_26185E1B0, v20[v9], 3);
    ++v9;
  }

  while (v9 != 4);
  result = *v21;
  v17 = v21[1];
  v18 = v21[2];
  v19 = v21[3];
  *a3 = v21[0];
  a3[1] = v17;
  a3[2] = v18;
  a3[3] = v19;
  return result;
}

uint64_t std::string_view::compare[abi:ne200100](void *a1, unint64_t a2, size_t a3, void *__s2, size_t a5)
{
  v5 = a1[1];
  v6 = v5 >= a2;
  v7 = v5 - a2;
  if (!v6)
  {
    std::__throw_out_of_range[abi:ne200100]("string_view::substr");
  }

  if (v7 >= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v7;
  }

  if (a5 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = a5;
  }

  LODWORD(result) = memcmp((*a1 + a2), __s2, v10);
  if (v9 < a5)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  if (v9 == a5)
  {
    v12 = 0;
  }

  if (result)
  {
    return result;
  }

  else
  {
    return v12;
  }
}

uint64_t rf::data_flow::consumer::anonymous namespace::AttributesNeededForTheseModes(int a1, int a2)
{
  if ((a1 - 2) >= 8)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0x200010101090304uLL >> (8 * (a1 - 2));
  }

  v3 = v2 | 8;
  v4 = v2 | 1;
  if (a2 != 5)
  {
    v4 = v2;
  }

  if (a2 != 4)
  {
    v3 = v4;
  }

  v5 = v2 | 4;
  if (a2 == 3)
  {
    v2 |= 2u;
  }

  if (a2 == 2)
  {
    v2 = v5;
  }

  if (a2 > 3)
  {
    return v3;
  }

  return v2;
}

uint64_t std::optional<rf::data_flow::MeshBuffer>::operator=[abi:ne200100]<rf::data_flow::MeshBuffer const&,void>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *a2;
  if (v4 == 1)
  {
    v6 = *a1;
    *a1 = v5;

    *(a1 + 8) = *(a2 + 8);
  }

  else
  {
    *a1 = v5;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = 1;
  }

  return a1;
}

void rf::data_flow::consumer::MeshVisualizer::DebugVisMesh::~DebugVisMesh(id *this)
{
  if (*(this + 168) == 1)
  {
  }

  if (*(this + 136) == 1)
  {
  }

  if (*(this + 104) == 1)
  {
  }

  if (*(this + 72) == 1)
  {
  }
}

uint64_t rf::data_flow::consumer::MeshVisualizer::setupMaterials(uint64_t result)
{
  v1 = result;
  v2 = *(result + 64);
  if (v2 == 1)
  {
    v6 = *(result + 40);
    result = REAssetHandleIsLoaded();
    if (!result)
    {
      return result;
    }

    v7 = *(v1 + 40);
    AssetHandle = REAssetManagerMaterialMemoryAssetCreate();
    v8 = *(v1 + 48);
    *(v1 + 48) = AssetHandle;
    if (v8)
    {
      RERelease();
    }

    AssetHandle = 0;
    result = RESharedPtr<REAsset>::~RESharedPtr(&AssetHandle);
    v5 = 2;
  }

  else
  {
    if (v2)
    {
      return result;
    }

    AssetHandle = REAssetManagerCreateAssetHandle();
    v3 = *(v1 + 40);
    *(v1 + 40) = AssetHandle;
    if (v3)
    {
      RERelease();
    }

    AssetHandle = 0;
    RESharedPtr<REAsset>::~RESharedPtr(&AssetHandle);
    v4 = *(v1 + 40);
    result = REAssetHandleLoadAsync();
    v5 = 1;
  }

  *(v1 + 64) = v5;
  return result;
}

void sub_2618144A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  RESharedPtr<REAsset>::~RESharedPtr(va);
  _Unwind_Resume(a1);
}

uint64_t rf::data_flow::consumer::MeshVisualizer::setMaterial(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (*(result + 64) == 2)
  {
    v9 = result;
    v10 = *(result + 48);
    result = REPrimitiveRenderSetMeshMaterial();
    if (a4)
    {
      v11 = rf::data_flow::consumer::MeshVisualizer::setMaterial(RERenderManager *,unsigned long,rf::data_flow::consumer::MeshVisualizationMode,rf::data_flow::consumer::MeshVisualizationMode)::solidTechniqueNames[a4 - 1];
      result = REPrimitiveRenderSetMeshMaterialTechniqueMapping();
    }

    if (a5)
    {
      v12 = rf::data_flow::consumer::MeshVisualizer::setMaterial(RERenderManager *,unsigned long,rf::data_flow::consumer::MeshVisualizationMode,rf::data_flow::consumer::MeshVisualizationMode)::wireTechniqueNames[a5 - 1];
      result = REPrimitiveRenderSetMeshMaterialTechniqueMapping();
    }

    *(v9 + 72) = a3;
    *(v9 + 80) = a2;
    *(v9 + 56) = a4;
    *(v9 + 60) = a5;
  }

  return result;
}

uint64_t rf::data_flow::consumer::MeshVisualizer::updateDebugVisMesh(uint64_t this, const rf::data_flow::consumer::Mesh *a2)
{
  v2 = *(this + 56);
  v3 = *(this + 60);
  if (*(this + 56))
  {
    v5 = this;
    if (this)
    {
      LOBYTE(v103[0]) = 0;
      v104 = 0;
      LOBYTE(v105) = 0;
      v108 = 0;
      LOBYTE(v109[0]) = 0;
      v110 = 0;
      LOBYTE(v111) = 0;
      v114 = 0;
      v115 = 1;
      v116 = *(v5 + 88);
      if ((v6 & 0xAAAAAAAA) != 0)
      {
        v88 = v5;
        if (*(a2 + 25) != 36)
        {
          rf::getMessage("Bad index buffer format!", &v119);
          rf::internal::logAssert(&v119);
          if (SBYTE7(v120) < 0)
          {
            operator delete(v119);
          }

          rf::internal::debugBreakHandler(v80);
        }

        v85 = [*(a2 + 24) contents];
        if ((v6 & 2) != 0)
        {
          if (*(a2 + 29) != 45)
          {
            rf::getMessage("Bad per face attribute buffer format for classification!", &v119);
            rf::internal::logAssert(&v119);
            if (SBYTE7(v120) < 0)
            {
              operator delete(v119);
            }

            rf::internal::debugBreakHandler(v81);
          }

          v90 = [*(a2 + 28) contents];
        }

        else
        {
          v90 = 0;
        }

        if (v6 >= 8)
        {
          if (*(a2 + 37) != 45)
          {
            rf::getMessage("Bad per face attribute buffer format for material!", &v119);
            rf::internal::logAssert(&v119);
            if (SBYTE7(v120) < 0)
            {
              operator delete(v119);
            }

            rf::internal::debugBreakHandler(v82);
          }

          v89 = [*(a2 + 36) contents];
        }

        else
        {
          v89 = 0;
        }

        if (((v6 & 2) == 0 || *(v5 + 304) == 1) && (v6 < 8 || *(v5 + 305) == 1))
        {
          v7 = *(a2 + 26);
          v87 = 1;
          if (!v7)
          {
LABEL_143:
            v115 = 0;
            goto LABEL_205;
          }
        }

        else
        {
          v8 = *(a2 + 26);
          if (v8 < 3)
          {
            goto LABEL_143;
          }

          v7 = 0;
          v9 = v8 / 3;
          v11 = v89;
          v10 = v90;
          do
          {
            if (v6 & 2) != 0 && ((v12 = *v10, *v10) ? (v13 = *(v5 + 280) > v12) : (v13 = 0), v13 && ((*(*(v5 + 272) + ((v12 >> 3) & 0x18)) >> v12)) || v6 >= 8 && ((v14 = *v11, *v11) ? (v15 = *(v5 + 200) > v14) : (v15 = 0), v15 && ((*(*(v5 + 192) + ((v14 >> 3) & 0x18)) >> v14)))
            {
              v7 += 3;
            }

            ++v11;
            ++v10;
            --v9;
          }

          while (v9);
          v87 = 0;
          if (!v7)
          {
            goto LABEL_143;
          }
        }

        v16 = [*(a2 + 24) device];
        v101 = [v16 newBufferWithLength:4 * v7 options:0];

        v91 = [v101 contents];
        v120 = 0u;
        v119 = 0u;
        v121 = 1065353216;
        std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>>>::__rehash<true>(&v119, v7);
        memset(v117, 0, sizeof(v117));
        v118 = 1065353216;
        std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>>>::__rehash<true>(v117, v7);
        v84 = v7;
        v86 = a2;
        v17 = *(a2 + 26);
        if (v17 >= 3)
        {
          v18 = 0;
          v19 = 0;
          v94 = 0;
          while (1)
          {
            if (v87)
            {
LABEL_49:
              v20 = 0;
LABEL_50:
              v21 = v18;
              if ((v6 & 2) != 0)
              {
                v22 = *(v90 + v94);
              }

              else
              {
                v22 = 255;
              }

              if (v6 >= 8)
              {
                v23 = *(v89 + v94);
              }

              else
              {
                v23 = 255;
              }

              v24 = *(v85 + 12 * v94 + 4 * v20);
              v25 = v24 + 2654435769;
              if ((v6 & 2) != 0)
              {
                v25 ^= (v25 >> 2) + 2654435769u + (v25 << 6) + v22;
              }

              if (v6 >= 8)
              {
                v26 = (v23 + 2654435769 + (v25 >> 2) + (v25 << 6)) ^ v25;
              }

              else
              {
                v26 = v25;
              }

              if (!*(&v119 + 1))
              {
                goto LABEL_103;
              }

              v27 = vcnt_s8(*(&v119 + 8));
              v27.i16[0] = vaddlv_u8(v27);
              if (v27.u32[0] > 1uLL)
              {
                v28 = v26;
                if (v26 >= *(&v119 + 1))
                {
                  v28 = v26 % *(&v119 + 1);
                }
              }

              else
              {
                v28 = (*(&v119 + 1) + 0x3FFFFFFFFFFFLL) & v26;
              }

              v29 = *(v119 + 8 * v28);
              if (!v29 || (v30 = *v29) == 0)
              {
LABEL_83:
                if (v27.u32[0] > 1uLL)
                {
                  v32 = v26;
                  if (v26 >= *(&v119 + 1))
                  {
                    v32 = v26 % *(&v119 + 1);
                  }
                }

                else
                {
                  v32 = (*(&v119 + 1) + 0x3FFFFFFFFFFFLL) & v26;
                }

                v33 = *(v119 + 8 * v32);
                if (v33)
                {
                  for (i = *v33; i; i = *i)
                  {
                    v35 = i[1];
                    if (v35 == v26)
                    {
                      if (*(i + 4) == v24 && *(i + 22) == v6 && ((v6 & 2) == 0 || *(i + 20) == v22) && (v6 < 8 || *(i + 21) == v23))
                      {
                        if (!v117[1])
                        {
                          goto LABEL_120;
                        }

                        v36 = vcnt_s8(v117[1]);
                        v36.i16[0] = vaddlv_u8(v36);
                        if (v36.u32[0] > 1uLL)
                        {
                          v37 = v19;
                          if (v117[1] <= v19)
                          {
                            v37 = v19 % LODWORD(v117[1]);
                          }
                        }

                        else
                        {
                          v37 = (LODWORD(v117[1]) - 1) & v19;
                        }

                        v38 = *(v117[0] + 8 * v37);
                        if (!v38 || (v39 = *v38) == 0)
                        {
LABEL_120:
                          operator new();
                        }

                        while (1)
                        {
                          v40 = v39[1];
                          if (v40 == v19)
                          {
                            if (*(v39 + 4) == v19)
                            {
                              v41 = v19++;
                              goto LABEL_121;
                            }
                          }

                          else
                          {
                            if (v36.u32[0] > 1uLL)
                            {
                              if (v40 >= v117[1])
                              {
                                v40 %= v117[1];
                              }
                            }

                            else
                            {
                              v40 &= v117[1] - 1;
                            }

                            if (v40 != v37)
                            {
                              goto LABEL_120;
                            }
                          }

                          v39 = *v39;
                          if (!v39)
                          {
                            goto LABEL_120;
                          }
                        }
                      }
                    }

                    else
                    {
                      if (v27.u32[0] > 1uLL)
                      {
                        if (v35 >= *(&v119 + 1))
                        {
                          v35 %= *(&v119 + 1);
                        }
                      }

                      else
                      {
                        v35 &= *(&v119 + 1) - 1;
                      }

                      if (v35 != v32)
                      {
                        break;
                      }
                    }
                  }
                }

LABEL_103:
                operator new();
              }

              while (1)
              {
                v31 = v30[1];
                if (v31 == v26)
                {
                  if (*(v30 + 4) == v24 && *(v30 + 22) == v6 && ((v6 & 2) == 0 || *(v30 + 20) == v22) && (v6 < 8 || *(v30 + 21) == v23))
                  {
                    v41 = *(v30 + 6);
LABEL_121:
                    v18 = v21 + 1;
                    *(v91 + 4 * v21) = v41;
                    if (++v20 == 3)
                    {
                      v17 = *(v86 + 26);
                      v5 = v88;
                      goto LABEL_141;
                    }

                    goto LABEL_50;
                  }
                }

                else
                {
                  if (v27.u32[0] > 1uLL)
                  {
                    if (v31 >= *(&v119 + 1))
                    {
                      v31 %= *(&v119 + 1);
                    }
                  }

                  else
                  {
                    v31 &= *(&v119 + 1) - 1;
                  }

                  if (v31 != v28)
                  {
                    goto LABEL_83;
                  }
                }

                v30 = *v30;
                if (!v30)
                {
                  goto LABEL_83;
                }
              }
            }

            if ((v6 & 2) != 0 && ((v42 = *(v90 + v94), *(v90 + v94)) ? (v43 = *(v5 + 280) > v42) : (v43 = 0), v43))
            {
              v44 = *(*(v5 + 272) + ((v42 >> 3) & 0x18)) & (1 << v42);
              if (v6 < 8 || v44)
              {
                if (v44)
                {
                  goto LABEL_49;
                }

                goto LABEL_141;
              }
            }

            else if (v6 < 8)
            {
              goto LABEL_141;
            }

            v45 = *(v89 + v94);
            if (*(v89 + v94))
            {
              v46 = *(v5 + 200) > v45;
            }

            else
            {
              v46 = 0;
            }

            if (v46 && ((*(*(v5 + 192) + ((v45 >> 3) & 0x18)) >> v45) & 1) != 0)
            {
              goto LABEL_49;
            }

LABEL_141:
            if (++v94 >= v17 / 3)
            {
              goto LABEL_145;
            }
          }
        }

        v19 = 0;
        v18 = 0;
LABEL_145:
        if (v18 != v84)
        {
          rf::getMessage("Error writing new index stream!", v122);
          rf::internal::logAssert(v122);
          if (v123 < 0)
          {
            operator delete(v122[0]);
          }

          rf::internal::debugBreakHandler(v83);
          v5 = v88;
        }

        v47 = [*(v86 + 24) device];
        v48 = 12 * v19;
        v99 = [v47 newBufferWithLength:v48 options:0];
        v98 = v19;

        v49 = [*(v86 + 16) contents];
        v50 = [v99 contents];
        if (v6)
        {
          v54 = [*(v86 + 24) device];
          v104 = 1;
          v103[0] = [v54 newBufferWithLength:v48 options:0];
          v103[1] = 30;
          v103[2] = v19;

          v97 = [*(v86 + 20) contents];
          v51 = [v103[0] contents];
          v5 = v88;
          if ((v6 & 4) == 0)
          {
LABEL_148:
            v52 = 0;
            v53 = 0;
            if ((v6 & 2) == 0)
            {
LABEL_149:
              v96 = 0;
              goto LABEL_156;
            }

LABEL_152:
            v56 = [*(v86 + 24) device];
            v57 = [v56 newBufferWithLength:16 * v19 options:0];
            if (v108 == 1)
            {
            }

            else
            {
              v108 = 1;
            }

            v105 = v57;
            v106 = 31;
            v107 = v19;

            v96 = [v57 contents];
LABEL_156:
            if (v6 >= 8)
            {
              v58 = [*(v86 + 24) device];
              v59 = [v58 newBufferWithLength:16 * v19 options:0];
              if (v114 == 1)
              {
              }

              else
              {
                v114 = 1;
              }

              v111 = v59;
              v112 = 31;
              v113 = v19;

              v95 = [v59 contents];
            }

            else
            {
              v95 = 0;
            }

            if (!v19)
            {
              goto LABEL_204;
            }

            v60 = 0;
            v93 = (v5 + 256);
            v92 = (v5 + 176);
            while (1)
            {
              if (!v117[1])
              {
                goto LABEL_180;
              }

              v61 = vcnt_s8(v117[1]);
              v61.i16[0] = vaddlv_u8(v61);
              if (v61.u32[0] > 1uLL)
              {
                v62 = v60;
                if (v117[1] <= v60)
                {
                  v62 = v60 % LODWORD(v117[1]);
                }
              }

              else
              {
                v62 = (v117[1] + 0xFFFFFFFFLL) & v60;
              }

              v63 = *(v117[0] + 8 * v62);
              if (!v63 || (v64 = *v63) == 0)
              {
LABEL_180:
                operator new();
              }

              while (1)
              {
                v65 = v64[1];
                if (v65 == v60)
                {
                  break;
                }

                if (v61.u32[0] > 1uLL)
                {
                  if (v65 >= v117[1])
                  {
                    v65 %= v117[1];
                  }
                }

                else
                {
                  v65 &= v117[1] - 1;
                }

                if (v65 != v62)
                {
                  goto LABEL_180;
                }

LABEL_179:
                v64 = *v64;
                if (!v64)
                {
                  goto LABEL_180;
                }
              }

              if (v60 != *(v64 + 4))
              {
                goto LABEL_179;
              }

              v66 = (3 * *(v64 + 5));
              v67 = (3 * v60);
              *(v50 + 4 * v67) = *(v49 + 4 * v66);
              v68 = (v66 + 1);
              v69 = (v67 + 1);
              *(v50 + 4 * v69) = *(v49 + 4 * v68);
              v70 = (v66 + 2);
              v71 = (v67 + 2);
              *(v50 + 4 * v71) = *(v49 + 4 * v70);
              if ((v6 & 1) == 0)
              {
                if ((v6 & 4) == 0)
                {
                  goto LABEL_183;
                }

LABEL_202:
                *(v53 + 4 * v67) = *(v52 + 4 * v66);
                *(v53 + 4 * v69) = *(v52 + 4 * v68);
                *(v53 + 4 * v71) = *(v52 + 4 * v70);
                if ((v6 & 2) == 0)
                {
                  goto LABEL_191;
                }

LABEL_184:
                v72 = *(v64 + 24);
                v73 = v88[28];
                if ((v88[29] - v73) >> 4 > v72)
                {
                  v74 = v72 == 0;
                  *(v64 + 24);
                }

                else
                {
                  v74 = 1;
                }

                v75 = (v73 + 16 * v72);
                if (v74)
                {
                  v75 = v93;
                }

                *(v96 + 4 * (4 * v60)) = *v75;
                goto LABEL_191;
              }

              *(v51 + 4 * v67) = *(v97 + 4 * v66);
              *(v51 + 4 * v69) = *(v97 + 4 * v68);
              *(v51 + 4 * v71) = *(v97 + 4 * v70);
              if ((v6 & 4) != 0)
              {
                goto LABEL_202;
              }

LABEL_183:
              if ((v6 & 2) != 0)
              {
                goto LABEL_184;
              }

LABEL_191:
              if (v6 >= 8)
              {
                v76 = *(v64 + 25);
                v77 = v88[18];
                if ((v88[19] - v77) >> 4 > v76)
                {
                  v78 = v76 == 0;
                  *(v64 + 25);
                }

                else
                {
                  v78 = 1;
                }

                v79 = (v77 + 16 * v76);
                if (v78)
                {
                  v79 = v92;
                }

                *(v95 + 4 * (4 * v60)) = *v79;
              }

              if (++v60 == v98)
              {
LABEL_204:
                std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(v117);
                std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(&v119);
LABEL_205:
                operator new();
              }
            }
          }
        }

        else
        {
          v97 = 0;
          v51 = 0;
          if ((v6 & 4) == 0)
          {
            goto LABEL_148;
          }
        }

        v55 = [*(v86 + 24) device];
        v110 = 1;
        v109[0] = [v55 newBufferWithLength:v48 options:0];
        v109[1] = 30;
        v109[2] = v19;

        v52 = [*(v86 + 32) contents];
        v53 = [v109[0] contents];
        if ((v6 & 2) == 0)
        {
          goto LABEL_149;
        }

        goto LABEL_152;
      }

      if (*(a2 + 152) == 1)
      {
        *(a2 + 16);
        v100 = *(a2 + 136);
        if (*(a2 + 216) == 1)
        {
          *(a2 + 24);
          v102 = *(a2 + 200);
          if (v6 >= 4)
          {
            if (*(a2 + 280) != 1)
            {
              goto LABEL_219;
            }

            std::optional<rf::data_flow::MeshBuffer>::operator=[abi:ne200100]<rf::data_flow::MeshBuffer const&,void>(v109, a2 + 256);
          }

          if ((v6 & 1) == 0)
          {
            goto LABEL_205;
          }

          if (*(a2 + 184))
          {
            std::optional<rf::data_flow::MeshBuffer>::operator=[abi:ne200100]<rf::data_flow::MeshBuffer const&,void>(v103, a2 + 160);
            goto LABEL_205;
          }
        }
      }

LABEL_219:
      std::__throw_bad_optional_access[abi:ne200100]();
    }
  }

  return this;
}

void sub_26181576C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (*(v16 - 97) < 0)
  {
    operator delete(*(v16 - 120));
  }

  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(v16 - 208);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(v16 - 160);
  rf::data_flow::consumer::MeshVisualizer::DebugVisMesh::~DebugVisMesh(va);
  _Unwind_Resume(a1);
}

uint64_t rf::data_flow::consumer::anonymous namespace::hasNeededMeshAttributesForTheseModes(_BYTE *a1, int a2, int a3)
{
  if (a1[152] != 1)
  {
    return 0;
  }

  if (a1[216] == 1)
  {
    if (((v4 & 1) == 0 || a1[184] == 1) && ((v4 & 2) == 0 || a1[248] == 1) && ((v4 & 4) == 0 || a1[280] == 1) && (v4 < 8 || a1[312] == 1))
    {
      return 1;
    }
  }

  return 0;
}

void rf::data_flow::consumer::MeshVisualizer::drawDebugVisMesh(rf::data_flow::consumer::MeshVisualizer *this, const rf::data_flow::consumer::Mesh *a2)
{
  {
    v4 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::piecewise_construct_t const&,std::tuple<rf::data_flow::RFUUID const&>,std::tuple<>>(this, a2);
    v6 = v4[6];
    v5 = v4[7];
    v9 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (*(v6 + 176))
    {
      v8 = *(this + 9);
      v7 = *(this + 10);
      REPrimitiveRenderAddStaticMesh();
      v5 = v9;
    }

    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_261815A18(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN2rf9data_flow8consumer14MeshVisualizer16drawDebugVisMeshERKNS1_4MeshE_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = **(a1 + 40);
  v7 = *v5;
  v6 = v5[1];
  REPrimitiveRenderStaticMeshAddStandardAttribute();
  v8 = **(a1 + 40);
  v10 = *(v8 + 24);
  v9 = *(v8 + 32);
  REPrimitiveRenderStaticMeshAddStandardAttribute();
  v11 = **(a1 + 40);
  if (*(v11 + 72) == 1)
  {
    v13 = *(v11 + 48);
    v12 = *(v11 + 56);
    REPrimitiveRenderStaticMeshAddStandardAttribute();
    v11 = **(a1 + 40);
  }

  if (*(v11 + 136) == 1)
  {
    v15 = *(v11 + 112);
    v14 = *(v11 + 120);
    REPrimitiveRenderStaticMeshAddStandardAttribute();
    v11 = **(a1 + 40);
  }

  if (*(v11 + 104) == 1)
  {
    v17 = *(v11 + 80);
    v16 = *(v11 + 88);
    REPrimitiveRenderStaticMeshAddStandardAttribute();
    v11 = **(a1 + 40);
  }

  if (*(v11 + 168) == 1)
  {
    v19 = *(v11 + 144);
    v18 = *(v11 + 152);
    REPrimitiveRenderStaticMeshAddStandardAttribute();
  }

  v20 = *(a1 + 48);
  v21 = v20[5];
  v22 = v20[6];
  v23 = v20[3];
  v24 = v20[4];
  REMakeSRTFromMatrix();
  REPrimitiveRenderStaticMeshAddUniformCustomAttributeFloat3();
  REPrimitiveRenderStaticMeshAddUniformCustomAttributeFloat4();
  REPrimitiveRenderStaticMeshAddUniformCustomAttributeFloat3();
  v25 = *(v4 + 56);
  if (v25 == 6 || *(v4 + 60) == 6)
  {
    v26 = 1.0 / (((*(v4 + 88) - *(**(a1 + 40) + 180)) / 50.0) + 1.0);
    REPrimitiveRenderStaticMeshAddUniformCustomAttributeFloat();
    v25 = *(v4 + 56);
  }

  if (v25 == 7)
  {
    v27 = *(v4 + 96);
    REPrimitiveRenderStaticMeshAddUniformCustomAttributeFloat4();
  }

  if (*(v4 + 60) == 7)
  {
    v28 = *(v4 + 112);
    REPrimitiveRenderStaticMeshAddUniformCustomAttributeFloat4();
  }

  if (*(v4 + 56) == 8)
  {
    v29 = (v4 + 128);
    vld1q_dup_f32(v29);
    REPrimitiveRenderStaticMeshAddUniformCustomAttributeFloat4();
    vld1q_dup_f32(v29);
    REPrimitiveRenderStaticMeshAddUniformCustomAttributeFloat4();
    v30 = *(v4 + 96);
    REPrimitiveRenderStaticMeshAddUniformCustomAttributeFloat4();
  }

  v31 = *(**(a1 + 40) + 16);
  REPrimitiveRenderStaticMeshSetVertexCount();
  v32 = *(**(a1 + 40) + 40);
  REPrimitiveRenderStaticMeshSetIndexCount();
  __asm
  {
    FMOV            V0.4S, #-25.0
    FMOV            V1.4S, #25.0
  }

  REAABBInit();

  return MEMORY[0x2821548D8](a2);
}

__n128 __copy_helper_block_ea8_32c81_ZTSKZN2rf9data_flow8consumer14MeshVisualizer16drawDebugVisMeshERKNS1_4MeshEE3__0(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[3].n128_u64[0] = a2[3].n128_u64[0];
  a1[2] = result;
  return result;
}

void *std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::piecewise_construct_t const&,std::tuple<rf::data_flow::RFUUID const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (!v4)
  {
    if (*(a2 + 16))
    {
      v13 = *a2;
    }

    else
    {
      v13 = a2;
    }

    v4 = ((*v13 >> 2) + (*v13 << 6) + v13[1] + 2654435769) ^ *v13;
    *(a2 + 24) = v4;
  }

  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_19;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v4)
    {
      break;
    }

    if (v7 > 1)
    {
      if (v11 >= *&v5)
      {
        v11 %= *&v5;
      }
    }

    else
    {
      v11 &= *&v5 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_19;
    }

LABEL_18:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  if (!rf::data_flow::RFUUID::Equality::operator()(a1, (v10 + 2), a2))
  {
    goto LABEL_18;
  }

  return v10;
}

void std::__shared_ptr_emplace<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287409338;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26670D060);
}

void std::__shared_ptr_emplace<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 192) == 1)
  {
  }

  if (*(a1 + 160) == 1)
  {
  }

  if (*(a1 + 128) == 1)
  {
  }

  if (*(a1 + 96) == 1)
  {
  }

  v2 = *(a1 + 24);
}

uint64_t *std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::__erase_unique<rf::data_flow::RFUUID>(void *a1, uint64_t a2)
{
  result = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t RFIsRealityFusionFeatureFlagEnabled(int a1)
{
  v1 = 1;
  if (a1 <= 3)
  {
    if ((a1 - 1) >= 2)
    {
      if (!a1)
      {
        MainBundle = CFBundleGetMainBundle();
        Identifier = CFBundleGetIdentifier(MainBundle);
        applesauce::CF::details::CFString_get_value<true>(Identifier, v8);
        if (v9 < 0)
        {
          if (v8[1] == 25)
          {
            v1 = *v8[0] != 0x6C7070612E6D6F63 || *(v8[0] + 1) != 0x74696C6165522E65 || *(v8[0] + 2) != 0x65736F706D6F4379 || *(v8[0] + 24) != 114;
          }

          operator delete(v8[0]);
        }

        return v1;
      }

      return 0;
    }

    return v1;
  }

  if (a1 != 4 && a1 != 6)
  {
    if (a1 != 255)
    {
      return 0;
    }

    return v1;
  }

  return _os_feature_enabled_impl();
}

uint64_t RFIsRealityFusionSupported()
{
  MainBundle = CFBundleGetMainBundle();
  Identifier = CFBundleGetIdentifier(MainBundle);
  applesauce::CF::details::CFString_get_value<true>(Identifier, v7);
  if ((v8 & 0x80000000) == 0)
  {
    return 1;
  }

  v2 = v7[1] != 25 || *v7[0] != 0x6C7070612E6D6F63 || *(v7[0] + 1) != 0x74696C6165522E65 || *(v7[0] + 2) != 0x65736F706D6F4379 || *(v7[0] + 24) != 114;
  operator delete(v7[0]);
  return v2;
}

void RFServiceManagerCreate(rf::AnchorDefinitionComponent *a1)
{
  v1 = rf::AnchorDefinitionComponent::instance(a1);
  v2 = rf::AnchorDefinitionComponent::retain(v1);
  v3 = rf::HandMetadataComponent::instance(v2);
  ++*(v3 + 18);
  v4 = rf::PlacementComponentTypeInfo::instance(v3);
  ++*(v4 + 34);
  v5 = rf::AnchorMetadataComponent::instance(v4);
  v6 = rf::AnchorMetadataComponent::retain(v5);
  v7 = rf::AnchorSourceComponent::instance(v6);
  v8 = rf::AnchorSourceComponent::retain(v7);
  v9 = rf::TrackableResourceComponent::instance(v8);
  rf::TrackableResourceComponent::retain(v9);
  v10 = _os_feature_enabled_impl();
  v11 = _os_feature_enabled_impl();
  v12 = _os_feature_enabled_impl();
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  rf::UserDefaults::UserDefaults(&v20, __p);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.re.UpdateMeshAssetSlowPath");
  v13 = rf::UserDefaults::BOOLValue(&v20, __p);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  rf::UserDefaults::~UserDefaults(&v20);
  if ((*&v13 & ((v13 & 0x100) >> 8)) != 0)
  {
    v14 = 0x1000000;
  }

  else
  {
    v14 = 0;
  }

  if (v12)
  {
    v15 = 0x10000;
  }

  else
  {
    v15 = 0;
  }

  if (v11)
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  LODWORD(__p[0]) = v16 | v10 | v15 | v14;
  v17 = *MEMORY[0x277CBECE8];
  if (qword_2810C4890 != -1)
  {
    dispatch_once(&qword_2810C4890, &__block_literal_global_6);
  }

  _CFRuntimeCreateInstance();
  operator new();
}

rf::AnchorMetadataComponent *RFServiceManagerCleanUp(rf::AnchorDefinitionComponent *a1)
{
  v1 = rf::AnchorDefinitionComponent::instance(a1);
  v2 = *(v1 + 38);
  v3 = __OFSUB__(v2--, 1);
  *(v1 + 38) = v2;
  if ((v2 < 0) ^ v3 | (v2 == 0))
  {
    v1 = rf::AnchorDefinitionComponent::deinit(v1);
  }

  v4 = rf::HandMetadataComponent::instance(v1);
  v5 = *(v4 + 18);
  v3 = __OFSUB__(v5--, 1);
  *(v4 + 18) = v5;
  if ((v5 < 0) ^ v3 | (v5 == 0))
  {
    *(v4 + 18) = 0;
    *v4 = 0;
  }

  v6 = rf::PlacementComponentTypeInfo::instance(v4);
  v7 = *(v6 + 34);
  v3 = __OFSUB__(v7--, 1);
  *(v6 + 34) = v7;
  if ((v7 < 0) ^ v3 | (v7 == 0))
  {
    *(v6 + 34) = 0;
    *v6 = 0;
  }

  v8 = rf::AnchorMetadataComponent::instance(v6);
  v9 = *(v8 + 36);
  v3 = __OFSUB__(v9--, 1);
  *(v8 + 36) = v9;
  if ((v9 < 0) ^ v3 | (v9 == 0))
  {
    v8 = rf::AnchorMetadataComponent::deinit(v8);
  }

  v10 = rf::AnchorSourceComponent::instance(v8);
  v11 = *(v10 + 36);
  v3 = __OFSUB__(v11--, 1);
  *(v10 + 36) = v11;
  if ((v11 < 0) ^ v3 | (v11 == 0))
  {
    v10 = rf::AnchorMetadataComponent::deinit(v10);
  }

  result = rf::TrackableResourceComponent::instance(v10);
  v13 = *(result + 36);
  v3 = __OFSUB__(v13--, 1);
  *(result + 36) = v13;
  if ((v13 < 0) ^ v3 | (v13 == 0))
  {

    return rf::AnchorMetadataComponent::deinit(result);
  }

  return result;
}

uint64_t RFServiceManagerGenerateSnapshot(uint64_t a1)
{
  v1 = *(a1 + 16);
  ServiceLocator = REECSManagerGetServiceLocator();
  v4 = 1;
  rf::Session::updateProviders(v1 + 16);
  rf::Session::consumeAndUpdateInternalConsumers(v1 + 16, &ServiceLocator);
  return v1 + 4576;
}

uint64_t RFServiceManagerUpdate(uint64_t a1)
{
  v1 = *(a1 + 16);
  ServiceLocator = REECSManagerGetServiceLocator();
  v4 = 1;
  rf::Session::updateProviders(v1 + 16);
  rf::Session::consumeAndUpdateInternalConsumers(v1 + 16, &ServiceLocator);
  return v1 + 4576;
}

void RFServiceManagerUpdateServices(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  RESceneGetECSManagerNullable();
  LODWORD(v4) = 0;
  *(&v4 + 1) = REECSManagerGetServiceLocator();
  v5 = 1;
  v6 = a2;
  v7 = 1;
  v8 = 0;
  rf::Session::processConsumerRequest(v3 + 16, &v4);
}

void RFServiceManagerAddSystems(uint64_t a1)
{
  v1 = *(a1 + 16);
  REECSManagerGetServiceLocator();

  rf::Session::addSystemToECSSystem();
}

void RFServiceManagerSetARKitDataProvider(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 16);
  if (cf)
  {
    CFRetain(cf);
    v4 = *(cf + 2);
    operator new();
  }

  v5 = std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::find<std::type_index>((v3 + 4480), &v6);
  if (v5)
  {
    *(v5[3] + 8) = 0;
  }

  std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::__erase_unique<std::type_index>((v3 + 4480), &v6);
}

void sub_261816A40(void *a1)
{
  __cxa_begin_catch(a1);
  CFRelease(*v1);
  __cxa_rethrow();
}

void sub_261816A70(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *RFServiceManagerGetARKitDataProvider(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::find<std::type_index>((v1 + 4480), &v9);
  v3 = v2;
  if (v2)
  {
    v4 = v2[3];
    {
      v7 = v3[4];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v3 = *(v6 - 1);
      if (v3)
      {
        CFRetain(*(v6 - 1));
        CFRetain(v3);
        CFRelease(v3);
        CFRelease(v3);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void RFServiceManagerSetSyntheticARDataProvider(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 16);
  if (cf)
  {
    CFRetain(cf);
    v4 = *(cf + 2);
    operator new();
  }

  v5 = std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::find<std::type_index>((v3 + 4480), &v6);
  if (v5)
  {
    *(v5[3] + 8) = 0;
  }

  std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::__erase_unique<std::type_index>((v3 + 4480), &v6);
}

void sub_261816CD0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_261816CF0(void *a1)
{
  __cxa_begin_catch(a1);
  CFRelease(*v1);
  __cxa_rethrow();
}

void *RFServiceManagerGetSyntheticARDataProvider(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::find<std::type_index>((v1 + 4480), &v9);
  v3 = v2;
  if (v2)
  {
    v4 = v2[3];
    {
      v7 = v3[4];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v3 = *(v6 - 1);
      if (v3)
      {
        CFRetain(*(v6 - 1));
        CFRetain(v3);
        CFRelease(v3);
        CFRelease(v3);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void RFServiceManagerSetAnchorDataProvider(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 16);
  if (cf)
  {
    CFRetain(cf);
    v4 = *(cf + 2);
    operator new();
  }

  v5 = std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::find<std::type_index>((v3 + 4480), &v6);
  if (v5)
  {
    *(v5[3] + 8) = 0;
  }

  std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::__erase_unique<std::type_index>((v3 + 4480), &v6);
}

void sub_261816F64(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_261816F84(void *a1)
{
  __cxa_begin_catch(a1);
  CFRelease(*v1);
  __cxa_rethrow();
}

void *RFServiceManagerGetCameraMetadataProvider(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::find<std::type_index>((v1 + 4480), &v9);
  v3 = v2;
  if (v2)
  {
    v4 = v2[3];
    {
      v7 = v3[4];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v3 = *(v6 - 1);
      if (v3)
      {
        CFRetain(*(v6 - 1));
        CFRetain(v3);
        CFRelease(v3);
        CFRelease(v3);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void RFServiceManagerSetCameraMetadataProvider(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 16);
  if (cf)
  {
    CFRetain(cf);
    v4 = *(cf + 2);
    operator new();
  }

  v5 = std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::find<std::type_index>((v3 + 4480), &v6);
  if (v5)
  {
    *(v5[3] + 8) = 0;
  }

  std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::__erase_unique<std::type_index>((v3 + 4480), &v6);
}

void sub_2618171F4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_261817214(void *a1)
{
  __cxa_begin_catch(a1);
  CFRelease(*v1);
  __cxa_rethrow();
}

void *RFServiceManagerGetAnchorDataProvider(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::find<std::type_index>((v1 + 4480), &v9);
  v3 = v2;
  if (v2)
  {
    v4 = v2[3];
    {
      v7 = v3[4];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v3 = *(v6 - 1);
      if (v3)
      {
        CFRetain(*(v6 - 1));
        CFRetain(v3);
        CFRelease(v3);
        CFRelease(v3);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void RFServiceManagerSetMeshReconstructionService(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 16);
  if (cf)
  {
    CFRetain(cf);
    v4 = *(cf + 2);
    operator new();
  }

  v5 = std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::find<std::type_index>((v3 + 4440), &v6);
  if (v5)
  {
    *(v5[3] + 8) = 0;
  }

  std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>>>::__erase_unique<std::type_index>((v3 + 4440), &v6);
}

void sub_2618174B4(void *a1)
{
  __cxa_begin_catch(a1);
  CFRelease(*v1);
  __cxa_rethrow();
}

void sub_2618174E4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *RFServiceManagerGetMeshReconstructionService(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::find<std::type_index>((v1 + 4440), &v9);
  v3 = v2;
  if (v2)
  {
    v4 = v2[3];
    {
      v7 = v3[4];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v3 = *(v6 - 1);
      if (v3)
      {
        CFRetain(*(v6 - 1));
        CFRetain(v3);
        CFRelease(v3);
        CFRelease(v3);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void RFServiceManagerSetClientMeshReconstructionService(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 16);
  if (cf)
  {
    CFRetain(cf);
    v4 = *(cf + 2);
    operator new();
  }

  v5 = std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::find<std::type_index>((v3 + 4440), &v6);
  if (v5)
  {
    *(v5[3] + 8) = 0;
  }

  std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>>>::__erase_unique<std::type_index>((v3 + 4440), &v6);
}

void sub_261817774(void *a1)
{
  __cxa_begin_catch(a1);
  CFRelease(*v1);
  __cxa_rethrow();
}

void sub_2618177A4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *RFServiceManagerGetClientMeshReconstructionService(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::find<std::type_index>((v1 + 4440), &v9);
  v3 = v2;
  if (v2)
  {
    v4 = v2[3];
    {
      v7 = v3[4];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v3 = *(v6 - 1);
      if (v3)
      {
        CFRetain(*(v6 - 1));
        CFRetain(v3);
        CFRelease(v3);
        CFRelease(v3);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void RFServiceManagerSetAnchorManagementService(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 16);
  if (cf)
  {
    CFRetain(cf);
    v4 = *(cf + 2);
    operator new();
  }

  v5 = std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::find<std::type_index>((v3 + 4440), &v6);
  if (v5)
  {
    *(v5[3] + 8) = 0;
  }

  std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>>>::__erase_unique<std::type_index>((v3 + 4440), &v6);
}

void sub_261817A1C(void *a1)
{
  __cxa_begin_catch(a1);
  CFRelease(*v1);
  __cxa_rethrow();
}

void sub_261817A4C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

const void *RFServiceManagerGetAnchorManagementService(uint64_t a1)
{
  rf::Session::getConsumer<rf::data_flow::consumer::AnchorManagementConsumer>(&v3, *(a1 + 16) + 16);
  if (v3)
  {
    v1 = *(v3 - 1);
    if (v1)
    {
      CFRetain(*(v3 - 1));
      CFRetain(v1);
      CFRelease(v1);
      CFRelease(v1);
    }
  }

  else
  {
    v1 = 0;
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v1;
}

char **rf::Session::getConsumer<rf::data_flow::consumer::AnchorManagementConsumer>(char ***a1, uint64_t a2)
{
  result = std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::find<std::type_index>((a2 + 4424), &v7);
  {
    v6 = v4[4];
    *a1 = result;
    a1[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}

void RFServiceManagerSetLoggingService(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 16);
  if (cf)
  {
    CFRetain(cf);
    v4 = *(cf + 2);
    operator new();
  }

  v5 = std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::find<std::type_index>((v3 + 4440), &v6);
  if (v5)
  {
    *(v5[3] + 8) = 0;
  }

  std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>>>::__erase_unique<std::type_index>((v3 + 4440), &v6);
}

void sub_261817D04(void *a1)
{
  __cxa_begin_catch(a1);
  CFRelease(*v1);
  __cxa_rethrow();
}

void sub_261817D34(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *RFServiceManagerGetLoggingService(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::find<std::type_index>((v1 + 4440), &v9);
  v3 = v2;
  if (v2)
  {
    v4 = v2[3];
    {
      v7 = v3[4];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v3 = *(v6 - 2);
      if (v3)
      {
        CFRetain(*(v6 - 2));
        CFRetain(v3);
        CFRelease(v3);
        CFRelease(v3);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void RFServiceManagerSetQueryService(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 16);
  if (cf)
  {
    CFRetain(cf);
    v4 = *(cf + 2);
    operator new();
  }

  v5 = std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::find<std::type_index>((v3 + 4440), &v6);
  if (v5)
  {
    *(v5[3] + 8) = 0;
  }

  std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>>>::__erase_unique<std::type_index>((v3 + 4440), &v6);
}

void sub_261817F80(void *a1)
{
  __cxa_begin_catch(a1);
  CFRelease(*v1);
  __cxa_rethrow();
}

void sub_261817FB0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *RFServiceManagerGetQueryService(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::find<std::type_index>((v1 + 4440), &v9);
  v3 = v2;
  if (v2)
  {
    v4 = v2[3];
    {
      v7 = v3[4];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v3 = *(v6 - 1);
      if (v3)
      {
        CFRetain(*(v6 - 1));
        CFRetain(v3);
        CFRelease(v3);
        CFRelease(v3);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void RFServiceManagerSetDebugService(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 16);
  if (cf)
  {
    CFRetain(cf);
    v4 = *(cf + 2);
    operator new();
  }

  v5 = std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::find<std::type_index>((v3 + 4440), &v6);
  if (v5)
  {
    *(v5[3] + 8) = 0;
  }

  std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>>>::__erase_unique<std::type_index>((v3 + 4440), &v6);
}

void sub_261818220(void *a1)
{
  __cxa_begin_catch(a1);
  CFRelease(*v1);
  __cxa_rethrow();
}

void sub_261818250(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *RFServiceManagerGetDebugService(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::find<std::type_index>((v1 + 4440), &v9);
  v3 = v2;
  if (v2)
  {
    v4 = v2[3];
    {
      v7 = v3[4];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v3 = *(v6 - 2);
      if (v3)
      {
        CFRetain(*(v6 - 2));
        CFRetain(v3);
        CFRelease(v3);
        CFRelease(v3);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void RFServiceManagerSetEnvironmentProbePlacementService(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 16);
  if (cf)
  {
    CFRetain(cf);
    v4 = *(cf + 2);
    operator new();
  }

  v5 = std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::find<std::type_index>((v3 + 4440), &v6);
  if (v5)
  {
    *(v5[3] + 8) = 0;
  }

  std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>>>::__erase_unique<std::type_index>((v3 + 4440), &v6);
}

void sub_2618184C0(void *a1)
{
  __cxa_begin_catch(a1);
  CFRelease(*v1);
  __cxa_rethrow();
}

void sub_2618184F0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *RFServiceManagerGetEnvironmentProbePlacementService(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::find<std::type_index>((v1 + 4440), &v9);
  v3 = v2;
  if (v2)
  {
    v4 = v2[3];
    {
      v7 = v3[4];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v3 = *(v6 - 2);
      if (v3)
      {
        CFRetain(*(v6 - 2));
        CFRetain(v3);
        CFRelease(v3);
        CFRelease(v3);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void RFServiceManagerSetVFXCollisionService(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 16);
  if (cf)
  {
    CFRetain(cf);
    v4 = *(cf + 2);
    operator new();
  }

  v5 = std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::find<std::type_index>((v3 + 4440), &v6);
  if (v5)
  {
    *(v5[3] + 8) = 0;
  }

  std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>>>::__erase_unique<std::type_index>((v3 + 4440), &v6);
}

void sub_261818760(void *a1)
{
  __cxa_begin_catch(a1);
  CFRelease(*v1);
  __cxa_rethrow();
}

void sub_261818790(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *RFServiceManagerGetVFXCollisionService(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::find<std::type_index>((v1 + 4440), &v9);
  v3 = v2;
  if (v2)
  {
    v4 = v2[3];
    {
      v7 = v3[4];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v3 = *(v6 - 1);
      if (v3)
      {
        CFRetain(*(v6 - 1));
        CFRetain(v3);
        CFRelease(v3);
        CFRelease(v3);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void RFServiceManagerSetSyntheticEnvironmentService(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 16);
  if (cf)
  {
    CFRetain(cf);
    v4 = *(cf + 2);
    operator new();
  }

  v5 = std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::find<std::type_index>((v3 + 4440), &v6);
  if (v5)
  {
    *(v5[3] + 8) = 0;
  }

  std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>>>::__erase_unique<std::type_index>((v3 + 4440), &v6);
}

void sub_261818A00(void *a1)
{
  __cxa_begin_catch(a1);
  CFRelease(*v1);
  __cxa_rethrow();
}

void sub_261818A30(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *RFServiceManagerGetSyntheticEnvironmentService(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::find<std::type_index>((v1 + 4440), &v9);
  v3 = v2;
  if (v2)
  {
    v4 = v2[3];
    {
      v7 = v3[4];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v3 = *(v6 - 1);
      if (v3)
      {
        CFRetain(*(v6 - 1));
        CFRetain(v3);
        CFRelease(v3);
        CFRelease(v3);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void RFServiceManagerSetAtmospherePlacementService(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 16);
  if (cf)
  {
    CFRetain(cf);
    v4 = *(cf + 2);
    operator new();
  }

  v5 = std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::find<std::type_index>((v3 + 4440), &v6);
  if (v5)
  {
    *(v5[3] + 8) = 0;
  }

  std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>>>::__erase_unique<std::type_index>((v3 + 4440), &v6);
}

void sub_261818C7C(void *a1)
{
  __cxa_begin_catch(a1);
  CFRelease(*v1);
  __cxa_rethrow();
}

void sub_261818CAC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *RFServiceManagerGetAtmospherePlacementService(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::find<std::type_index>((v1 + 4440), &v9);
  v3 = v2;
  if (v2)
  {
    v4 = v2[3];
    {
      v7 = v3[4];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v3 = *(v6 - 2);
      if (v3)
      {
        CFRetain(*(v6 - 2));
        CFRetain(v3);
        CFRelease(v3);
        CFRelease(v3);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void RFServiceManagerSetRayCastingService(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 16);
  if (cf)
  {
    CFRetain(cf);
    v4 = *(cf + 2);
    operator new();
  }

  v5 = std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::find<std::type_index>((v3 + 4440), &v6);
  if (v5)
  {
    *(v5[3] + 8) = 0;
  }

  std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>>>::__erase_unique<std::type_index>((v3 + 4440), &v6);
}

void sub_261818EF8(void *a1)
{
  __cxa_begin_catch(a1);
  CFRelease(*v1);
  __cxa_rethrow();
}

void sub_261818F28(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *RFServiceManagerGetRayCastingService(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::find<std::type_index>((v1 + 4440), &v9);
  v3 = v2;
  if (v2)
  {
    v4 = v2[3];
    {
      v7 = v3[4];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v3 = *(v6 - 1);
      if (v3)
      {
        CFRetain(*(v6 - 1));
        CFRetain(v3);
        CFRelease(v3);
        CFRelease(v3);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void RFServiceManagerSetClientSharedDataService(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 16);
  if (cf)
  {
    CFRetain(cf);
    v4 = *(cf + 2);
    operator new();
  }

  v5 = std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::find<std::type_index>((v3 + 4440), &v6);
  if (v5)
  {
    *(v5[3] + 8) = 0;
  }

  std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>>>::__erase_unique<std::type_index>((v3 + 4440), &v6);
}

void sub_261819198(void *a1)
{
  __cxa_begin_catch(a1);
  CFRelease(*v1);
  __cxa_rethrow();
}

void sub_2618191C8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *RFServiceManagerGetClientSharedDataService(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::find<std::type_index>((v1 + 4440), &v9);
  v3 = v2;
  if (v2)
  {
    v4 = v2[3];
    {
      v7 = v3[4];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v3 = *(v6 - 1);
      if (v3)
      {
        CFRetain(*(v6 - 1));
        CFRetain(v3);
        CFRelease(v3);
        CFRelease(v3);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t RFServiceManagerSetUpdateTimeSampler(uint64_t a1, uint64_t a2)
{
  v14[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v9 = &unk_2874099C0;
  v10 = MEMORY[0x26670D530](a2);
  v13 = v12;
  v11 = &v9;
  v12[0] = &unk_2874099C0;
  v4 = v2 + 4536;
  v12[1] = MEMORY[0x26670D530](v10, v3);
  if (v12 != (v2 + 4536))
  {
    v5 = v13;
    v6 = *(v2 + 4560);
    if (v13 == v12)
    {
      if (v6 == v4)
      {
        (*(*v13 + 24))();
        (*(*v13 + 32))(v13);
        v13 = 0;
        (*(**(v2 + 4560) + 24))(*(v2 + 4560), v12);
        (*(**(v2 + 4560) + 32))(*(v2 + 4560));
        *(v2 + 4560) = 0;
        v13 = v12;
        (*(v14[0] + 24))(v14, v2 + 4536);
        (*(v14[0] + 32))(v14);
      }

      else
      {
        (*(*v13 + 24))();
        (*(*v13 + 32))(v13);
        v13 = *(v2 + 4560);
      }

      *(v2 + 4560) = v4;
    }

    else if (v6 == v4)
    {
      (*(*v6 + 24))(*(v2 + 4560), v12);
      (*(**(v2 + 4560) + 32))(*(v2 + 4560));
      *(v2 + 4560) = v13;
      v13 = v12;
    }

    else
    {
      v13 = *(v2 + 4560);
      *(v2 + 4560) = v5;
    }
  }

  std::__function::__value_func<double ()(void)>::~__value_func[abi:ne200100](v12);
  result = std::__function::__value_func<double ()(void)>::~__value_func[abi:ne200100](&v9);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2618195B8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t RFServiceManagerSetAnchorCleanUpCallback(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v5[0] = &unk_287409A40;
  v5[1] = MEMORY[0x26670D530](a2);
  v5[3] = v5;
  std::__function::__value_func<void ()(rf::data_flow::RFUUID const&)>::__value_func[abi:ne200100](v6, v5);
  std::function<void ()(rf::data_flow::RFUUID const&)>::operator=(v2 + 4152, v6);
  std::__function::__value_func<void ()(rf::data_flow::RFUUID const&)>::~__value_func[abi:ne200100](v6);
  result = std::__function::__value_func<void ()(rf::data_flow::RFUUID const&)>::~__value_func[abi:ne200100](v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_261819670(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<void ()(rf::data_flow::RFUUID const&)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<void ()(rf::data_flow::RFUUID const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t RFServiceManagerSetExternalAnchorCallback(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v5[0] = &unk_287409AD0;
  v5[1] = MEMORY[0x26670D530](a2);
  v5[3] = v5;
  std::__function::__value_func<void ()(rf::data_flow::RFUUID const&)>::__value_func[abi:ne200100](v6, v5);
  std::function<void ()(rf::data_flow::RFUUID const&)>::operator=(v2 + 4184, v6);
  std::__function::__value_func<void ()(rf::data_flow::RFUUID const&)>::~__value_func[abi:ne200100](v6);
  result = std::__function::__value_func<void ()(rf::data_flow::RFUUID const&)>::~__value_func[abi:ne200100](v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_261819740(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<void ()(rf::data_flow::RFUUID const&)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<void ()(rf::data_flow::RFUUID const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t RFServiceManagerSetRelocalizedAnchorCallback(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v5[0] = &unk_287409B50;
  v5[1] = MEMORY[0x26670D530](a2);
  v5[3] = v5;
  std::__function::__value_func<void ()(rf::data_flow::RFUUID const&)>::__value_func[abi:ne200100](v6, v5);
  std::function<void ()(rf::data_flow::RFUUID const&)>::operator=(v2 + 4216, v6);
  std::__function::__value_func<void ()(rf::data_flow::RFUUID const&)>::~__value_func[abi:ne200100](v6);
  result = std::__function::__value_func<void ()(rf::data_flow::RFUUID const&)>::~__value_func[abi:ne200100](v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_261819810(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<void ()(rf::data_flow::RFUUID const&)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<void ()(rf::data_flow::RFUUID const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void RFServiceManagerSetTransformResolver(uint64_t a1, void *a2)
{
  v6 = a2;
  rf::Session::getConsumer<rf::data_flow::consumer::AnchorManagementConsumer>(&v7, *(a1 + 16) + 16);
  v3 = v7;
  v4 = MEMORY[0x26670D530](v6);
  v5 = v3[72];
  v3[72] = v4;

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

uint64_t RFServiceManagerCopyAnchorMatchingIdentifier(uint64_t a1, const unsigned __int8 *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  rf::ARState::getAnchorWithIdentifier((*(a1 + 16) + 16), a2, v4);
  if (v4[272] == 1)
  {
    rf::makeCustomCFObject<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>&>();
  }

  v2 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_261819958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  if (a45 == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a11);
  }

  _Unwind_Resume(exception_object);
}

CFMutableArrayRef RFServiceManagerCopyAnchors(uint64_t a1)
{
  rf::ARState::getAnchors((*(a1 + 16) + 16), &v3);
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0xF0F0F0F0F0F0F0F1 * ((v4 - v3) >> 4), MEMORY[0x277CBF128]);
  if (v3 != v4)
  {
    rf::makeCustomCFObject<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>();
  }

  value = &v3;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__destroy_vector::operator()[abi:ne200100](&value);
  return Mutable;
}

void sub_261819A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void rf::makeCustomCFObject<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>()
{
  v0 = *MEMORY[0x277CBECE8];
  if (rf::ClassRegistration<rf::CustomCFObject<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>::_dispatchOnceFlag != -1)
  {
    dispatch_once(&rf::ClassRegistration<rf::CustomCFObject<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>::_dispatchOnceFlag, &__block_literal_global_34);
  }

  _CFRuntimeCreateInstance();
  operator new();
}

uint64_t RFServiceManagerVisitAnchors(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v5[0] = &unk_287409BF0;
  v5[1] = MEMORY[0x26670D530](a2);
  v5[3] = v5;
  rf::Session::visitAnchors(v2 + 16, v5);
  result = std::__function::__value_func<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const*)>::~__value_func[abi:ne200100](v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_261819C58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

CFMutableArrayRef RFServiceManagerCopyUpdatedAnchors(uint64_t a1)
{
  rf::ARState::getUpdatedAnchors(*(a1 + 16) + 16, &v3);
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0xF0F0F0F0F0F0F0F1 * ((v4 - v3) >> 4), MEMORY[0x277CBF128]);
  if (v3 != v4)
  {
    rf::makeCustomCFObject<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>();
  }

  value = &v3;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__destroy_vector::operator()[abi:ne200100](&value);
  return Mutable;
}

void sub_261819D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t RFServiceManagerVisitUpdatedAnchors(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v5[0] = &unk_287409C80;
  v5[1] = MEMORY[0x26670D530](a2);
  v5[3] = v5;
  rf::Session::visitUpdatedAnchors(v2 + 16, v5);
  result = std::__function::__value_func<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const*)>::~__value_func[abi:ne200100](v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_261819E00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

__int128 *RFServiceManagerGetCameraIdentifierPtr(rf::helpers *a1)
{
  result = rf::helpers::kCameraIdentifier(a1);
  if (*(result + 16))
  {
    return *result;
  }

  return result;
}

__int128 *RFServiceManagerGetBodyIdentifierPtr(rf::helpers *a1)
{
  result = rf::helpers::kBodyIdentifier(a1);
  if (*(result + 16))
  {
    return *result;
  }

  return result;
}

uint64_t RFServiceManagerCopyNearestPlane(uint64_t a1, char a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float32x4_t a9, __n128 a10, double a11)
{
  v23 = *MEMORY[0x277D85DE8];
  v12 = *(a1 + 16);
  v15[0] = a9;
  v15[1] = a10;
  v16 = a2;
  v17 = a3;
  v18 = a11;
  rf::helpers::getNearestPlaneAnchor(v15, v12 + 176, a3, a4, a5, a6, a7, a8, v20, a9);
  if (v22 == 1)
  {
    std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v15, v20);
    v19 = v21;
    *a4 = v21;
    rf::makeCustomCFObject<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>();
  }

  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_261819F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a11);
  if (LOBYTE(STACK[0x250]) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a47);
  }

  _Unwind_Resume(a1);
}

uint64_t *RFServiceManagerGetNearestPlanePtr(uint64_t a1, char a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float32x4_t a9, __n128 a10, double a11)
{
  v12 = *(a1 + 16);
  v15[0] = a9;
  v15[1] = a10;
  v16 = a2;
  v17 = a3;
  v18 = a11;
  result = rf::helpers::getNearestPlaneAnchorConstPtr(v15, v12 + 176, a3, a4, a5, a6, a7, a8, a9);
  *a4 = v14;
  return result;
}

uint64_t RFServiceManagerGetFloorPlaneForPlacement(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (*(v1 + 1728))
  {
    return v1 + 1456;
  }

  else
  {
    return 0;
  }
}

uint64_t RFServiceManagerSetServiceLocator(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  *(v2 + 4568) = a2;
  for (i = *(v2 + 4496); i; i = *i)
  {
    *(i[3] + 16) = a2;
  }

  return result;
}

void RFServiceManagerListenToAnchorPinnedGroupUpdate(uint64_t a1, _OWORD *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  rf::Session::getConsumer<rf::data_flow::consumer::AnchorListenerConsumer>(&v9, *(a1 + 16) + 16);
  v6 = v9;
  v13 = 0;
  v14 = 0;
  uuid_clear(uu);
  *uu = *a2;
  v7 = MEMORY[0x26670D530](v5);
  v11[0] = &unk_287409D00;
  v11[1] = v7;
  v11[3] = v11;
  rf::data_flow::consumer::AnchorListenerConsumer::listenToWorldAnchorPinnedGroupUpdate(v6, uu, v11);
  std::__function::__value_func<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>::~__value_func[abi:ne200100](v11);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_26181A0E8(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>::~__value_func[abi:ne200100](va);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  _Unwind_Resume(a1);
}

char **rf::Session::getConsumer<rf::data_flow::consumer::AnchorListenerConsumer>(char ***a1, uint64_t a2)
{
  result = std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::find<std::type_index>((a2 + 4424), &v7);
  {
    v6 = v4[4];
    *a1 = result;
    a1[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}

void RFServiceManagerListenToPinnedGroupTrackingStatusChange(uint64_t a1, void *a2)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v3 = a2;
  rf::Session::getConsumer<rf::data_flow::consumer::AnchorListenerConsumer>(&v7, *(a1 + 16) + 16);
  v4 = v7;
  v5 = MEMORY[0x26670D530](v3);
  v9[0] = &unk_287409D90;
  v9[1] = v5;
  v9[3] = v9;
  rf::data_flow::consumer::AnchorListenerConsumer::listenToPinnedGroupUpdate(v4, v9);
  std::__function::__value_func<void ()(rf::data_flow::PinnedGroup const*)>::~__value_func[abi:ne200100](v9);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_26181A29C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(rf::data_flow::PinnedGroup const*)>::~__value_func[abi:ne200100](va);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(rf::data_flow::RFUUID const&)>::operator=(uint64_t a1, uint64_t a2)
{
  v9[3] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(rf::data_flow::RFUUID const&)>::__value_func[abi:ne200100](v7, a2);
  if (v7 != a1)
  {
    v3 = v8;
    v4 = *(a1 + 24);
    if (v8 == v7)
    {
      if (v4 == a1)
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = 0;
        (*(**(a1 + 24) + 24))(*(a1 + 24), v7);
        (*(**(a1 + 24) + 32))(*(a1 + 24));
        *(a1 + 24) = 0;
        v8 = v7;
        (*(v9[0] + 24))(v9, a1);
        (*(v9[0] + 32))(v9);
      }

      else
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = *(a1 + 24);
      }

      *(a1 + 24) = a1;
    }

    else if (v4 == a1)
    {
      (*(*v4 + 24))(*(a1 + 24), v7);
      (*(**(a1 + 24) + 32))(*(a1 + 24));
      *(a1 + 24) = v8;
      v8 = v7;
    }

    else
    {
      v8 = *(a1 + 24);
      *(a1 + 24) = v3;
    }
  }

  std::__function::__value_func<void ()(rf::data_flow::RFUUID const&)>::~__value_func[abi:ne200100](v7);
  v5 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_26181A550(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(rf::data_flow::RFUUID const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void ___ZN2rf17ClassRegistrationINS_14CustomCFObjectINS_7SessionEEEE13registerClassEv_block_invoke()
{
  v0 = 0;
  v1 = 1;
  for (i = 114; i != 91; i = aStdStringViewR_14[v0++ + 51])
  {
    if (i == 93)
    {
      v3 = -1;
      goto LABEL_8;
    }

    if (!i)
    {
      v0 = 0;
      v6 = 0;
      goto LABEL_16;
    }

LABEL_9:
    ;
  }

  v3 = 1;
LABEL_8:
  v1 += v3;
  if (v1)
  {
    goto LABEL_9;
  }

  if (v0 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v0 >= 0x17)
  {
    operator new();
  }

  v6 = v0;
  if (v0)
  {
    memcpy(&__dst, "rf::Session]", v0);
  }

LABEL_16:
  *(&__dst + v0) = 0;
  xmmword_2810C4898 = 0u;
  xmmword_2810C48A8 = 0u;
  xmmword_2810C48B8 = 0u;
  unk_2810C48C8 = 0u;
  xmmword_2810C48D8 = 0u;
  unk_2810C48E8 = 0u;
  p_dst = &__dst;
  if (v6 < 0)
  {
    p_dst = __dst;
  }

  *(&xmmword_2810C4898 + 1) = p_dst;
  *&xmmword_2810C48A8 = rf::ClassRegistration<rf::CustomCFObject<rf::Session>>::initCallback;
  *&xmmword_2810C48B8 = rf::ClassRegistration<rf::CustomCFObject<rf::Session>>::finalizeCallback;
  qword_2810C48D0 = rf::ClassRegistration<rf::CustomCFObject<rf::Session>>::copyFormattingDescriptionCallback;
  *&xmmword_2810C48D8 = rf::ClassRegistration<rf::CustomCFObject<rf::Session>>::copyDebugDescriptionCallback;
  _MergedGlobals_7 = _CFRuntimeRegisterClass();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_26181A784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<rf::CustomCFObject<rf::Session>::BridgableObject,std::default_delete<rf::CustomCFObject<rf::Session>::BridgableObject>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v9 = (v2 + 4712);
    std::vector<std::shared_ptr<rf::data_flow::EnvironmentProbe>>::__destroy_vector::operator()[abi:ne200100](&v9);
    v3 = *(v2 + 4704);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    std::mutex::~mutex((v2 + 4632));
    std::deque<rf::data_flow::provider::InputData>::~deque[abi:ne200100]((v2 + 4584));
    std::__function::__value_func<double ()(void)>::~__value_func[abi:ne200100](v2 + 4536);
    v4 = *(v2 + 4528);
    *(v2 + 4528) = 0;
    if (v4)
    {
      rf::CoordinateSpaceTracker::~CoordinateSpaceTracker(v4);
      MEMORY[0x26670D060]();
    }

    v5 = *(v2 + 4520);
    *(v2 + 4520) = 0;
    if (v5)
    {
      rf::RealityFusionSystem::~RealityFusionSystem(v5);
      MEMORY[0x26670D060]();
    }

    std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::~__hash_table(v2 + 4480);
    std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::~__hash_table(v2 + 4440);
    v6 = *(v2 + 4416);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v7 = *(v2 + 4392);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    v8 = *(v2 + 4376);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    rf::ARState::~ARState((v2 + 16));

    JUMPOUT(0x26670D060);
  }

  return result;
}

uint64_t std::deque<rf::data_flow::provider::InputData>::~deque[abi:ne200100](void *a1)
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
    v6 = &v2[v5 >> 4];
    v7 = (*v6 + 2128 * (v5 & 0xF));
    v8 = *(v2 + (((a1[5] + v5) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2128 * ((*(a1 + 10) + v5) & 0xF);
    if (v7 != v8)
    {
      do
      {
        rf::data_flow::provider::InputData::~InputData(v7);
        v7 = (v9 + 2128);
        if (v7 - *v6 == 34048)
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
    v12 = 8;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_16;
    }

    v12 = 16;
  }

  a1[4] = v12;
LABEL_16:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return std::__split_buffer<REEntity **>::~__split_buffer(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__shared_ptr_pointer<rf::data_flow::provider::ARKitDataProvider *,rf::CustomCFObject<rf::data_flow::provider::ARKitDataProvider>::makeSharedPtr(void)::{lambda(rf::data_flow::provider::ARKitDataProvider *)#1},std::allocator<rf::data_flow::provider::ARKitDataProvider>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26670D060);
}

uint64_t std::__shared_ptr_pointer<rf::data_flow::provider::ARKitDataProvider *,rf::CustomCFObject<rf::data_flow::provider::ARKitDataProvider>::makeSharedPtr(void)::{lambda(rf::data_flow::provider::ARKitDataProvider *)#1},std::allocator<rf::data_flow::provider::ARKitDataProvider>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::find<std::type_index>(void *a1, uint64_t *a2)
{
  v3 = *(*a2 + 8);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v3;
    if (v3 >= *&v7)
    {
      v10 = v3 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v3;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    do
    {
      v13 = v12[1];
      if (v13 == v3)
      {
        if (std::type_info::operator==[abi:ne200100](v12[2], *a2))
        {
          return v12;
        }
      }

      else
      {
        if (v9 > 1)
        {
          if (v13 >= *&v7)
          {
            v13 %= *&v7;
          }
        }

        else
        {
          v13 &= *&v7 - 1;
        }

        if (v13 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

void std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::__erase_unique<std::type_index>(void *a1, uint64_t *a2)
{
  v3 = std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::find<std::type_index>(a1, a2);
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = a1[1];
  v6 = *v3;
  v7 = v3[1];
  v8 = vcnt_s8(v5);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    if (v7 >= *&v5)
    {
      v7 %= *&v5;
    }
  }

  else
  {
    v7 &= *&v5 - 1;
  }

  v9 = *(*a1 + 8 * v7);
  do
  {
    v10 = v9;
    v9 = *v9;
  }

  while (v9 != v3);
  if (v10 == a1 + 2)
  {
    goto LABEL_20;
  }

  v11 = v10[1];
  if (v8.u32[0] > 1uLL)
  {
    if (v11 >= *&v5)
    {
      v11 %= *&v5;
    }
  }

  else
  {
    v11 &= *&v5 - 1;
  }

  if (v11 != v7)
  {
LABEL_20:
    if (v6)
    {
      v12 = *(v6 + 8);
      if (v8.u32[0] > 1uLL)
      {
        v13 = *(v6 + 8);
        if (v12 >= *&v5)
        {
          v13 = v12 % *&v5;
        }
      }

      else
      {
        v13 = v12 & (*&v5 - 1);
      }

      if (v13 == v7)
      {
        goto LABEL_24;
      }
    }

    *(*a1 + 8 * v7) = 0;
    v6 = *v3;
  }

  if (v6)
  {
    v12 = *(v6 + 8);
LABEL_24:
    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v5)
      {
        v12 %= *&v5;
      }
    }

    else
    {
      v12 &= *&v5 - 1;
    }

    if (v12 != v7)
    {
      *(*a1 + 8 * v12) = v10;
      v6 = *v3;
    }
  }

  *v10 = v6;
  *v3 = 0;
  --a1[3];
  v14 = v3[4];
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  operator delete(v4);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[4];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::__emplace_unique_key_args<std::type_index,std::piecewise_construct_t const&,std::tuple<std::type_index&&>,std::tuple<>>(void *a1, uint64_t *a2)
{
  v3 = *(*a2 + 8);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_21;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v3;
    if (v3 >= *&v7)
    {
      v10 = v3 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v3;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v3)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_21;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  if (!std::type_info::operator==[abi:ne200100](v12[2], *a2))
  {
    goto LABEL_20;
  }

  return v12;
}

void std::__shared_ptr_pointer<rf::data_flow::provider::SyntheticARDataProvider *,rf::CustomCFObject<rf::data_flow::provider::SyntheticARDataProvider>::makeSharedPtr(void)::{lambda(rf::data_flow::provider::SyntheticARDataProvider *)#1},std::allocator<rf::data_flow::provider::SyntheticARDataProvider>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26670D060);
}

uint64_t std::__shared_ptr_pointer<rf::data_flow::provider::SyntheticARDataProvider *,rf::CustomCFObject<rf::data_flow::provider::SyntheticARDataProvider>::makeSharedPtr(void)::{lambda(rf::data_flow::provider::SyntheticARDataProvider *)#1},std::allocator<rf::data_flow::provider::SyntheticARDataProvider>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<rf::data_flow::provider::AnchorDataProvider *,rf::CustomCFObject<rf::data_flow::provider::AnchorDataProvider>::makeSharedPtr(void)::{lambda(rf::data_flow::provider::AnchorDataProvider *)#1},std::allocator<rf::data_flow::provider::AnchorDataProvider>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26670D060);
}

uint64_t std::__shared_ptr_pointer<rf::data_flow::provider::AnchorDataProvider *,rf::CustomCFObject<rf::data_flow::provider::AnchorDataProvider>::makeSharedPtr(void)::{lambda(rf::data_flow::provider::AnchorDataProvider *)#1},std::allocator<rf::data_flow::provider::AnchorDataProvider>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<rf::data_flow::provider::CameraMetadataProvider *,rf::CustomCFObject<rf::data_flow::provider::CameraMetadataProvider>::makeSharedPtr(void)::{lambda(rf::data_flow::provider::CameraMetadataProvider *)#1},std::allocator<rf::data_flow::provider::CameraMetadataProvider>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26670D060);
}

uint64_t std::__shared_ptr_pointer<rf::data_flow::provider::CameraMetadataProvider *,rf::CustomCFObject<rf::data_flow::provider::CameraMetadataProvider>::makeSharedPtr(void)::{lambda(rf::data_flow::provider::CameraMetadataProvider *)#1},std::allocator<rf::data_flow::provider::CameraMetadataProvider>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<rf::data_flow::consumer::MeshReconstructionConsumer *,rf::CustomCFObject<rf::data_flow::consumer::MeshReconstructionConsumer>::makeSharedPtr(void)::{lambda(rf::data_flow::consumer::MeshReconstructionConsumer *)#1},std::allocator<rf::data_flow::consumer::MeshReconstructionConsumer>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26670D060);
}

uint64_t std::__shared_ptr_pointer<rf::data_flow::consumer::MeshReconstructionConsumer *,rf::CustomCFObject<rf::data_flow::consumer::MeshReconstructionConsumer>::makeSharedPtr(void)::{lambda(rf::data_flow::consumer::MeshReconstructionConsumer *)#1},std::allocator<rf::data_flow::consumer::MeshReconstructionConsumer>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>>>::__erase_unique<std::type_index>(void *a1, uint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::provider::Provider>>>>::find<std::type_index>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *std::__hash_table<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::shared_ptr<rf::data_flow::consumer::Consumer>>>>::__emplace_unique_key_args<std::type_index,std::piecewise_construct_t const&,std::tuple<std::type_index&&>,std::tuple<>>(void *a1, uint64_t *a2)
{
  v3 = *(*a2 + 8);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_21;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v3;
    if (v3 >= *&v7)
    {
      v10 = v3 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v3;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v3)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_21;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  if (!std::type_info::operator==[abi:ne200100](v12[2], *a2))
  {
    goto LABEL_20;
  }

  return v12;
}

void std::__shared_ptr_pointer<rf::data_flow::consumer::ClientMeshReconstructionConsumer *,rf::CustomCFObject<rf::data_flow::consumer::ClientMeshReconstructionConsumer>::makeSharedPtr(void)::{lambda(rf::data_flow::consumer::ClientMeshReconstructionConsumer *)#1},std::allocator<rf::data_flow::consumer::ClientMeshReconstructionConsumer>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26670D060);
}

uint64_t std::__shared_ptr_pointer<rf::data_flow::consumer::ClientMeshReconstructionConsumer *,rf::CustomCFObject<rf::data_flow::consumer::ClientMeshReconstructionConsumer>::makeSharedPtr(void)::{lambda(rf::data_flow::consumer::ClientMeshReconstructionConsumer *)#1},std::allocator<rf::data_flow::consumer::ClientMeshReconstructionConsumer>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<rf::data_flow::consumer::AnchorManagementConsumer *,rf::CustomCFObject<rf::data_flow::consumer::AnchorManagementConsumer>::makeSharedPtr(void)::{lambda(rf::data_flow::consumer::AnchorManagementConsumer *)#1},std::allocator<rf::data_flow::consumer::AnchorManagementConsumer>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26670D060);
}

uint64_t std::__shared_ptr_pointer<rf::data_flow::consumer::AnchorManagementConsumer *,rf::CustomCFObject<rf::data_flow::consumer::AnchorManagementConsumer>::makeSharedPtr(void)::{lambda(rf::data_flow::consumer::AnchorManagementConsumer *)#1},std::allocator<rf::data_flow::consumer::AnchorManagementConsumer>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<rf::data_flow::consumer::LoggingConsumer *,rf::CustomCFObject<rf::data_flow::consumer::LoggingConsumer>::makeSharedPtr(void)::{lambda(rf::data_flow::consumer::LoggingConsumer *)#1},std::allocator<rf::data_flow::consumer::LoggingConsumer>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26670D060);
}

uint64_t std::__shared_ptr_pointer<rf::data_flow::consumer::LoggingConsumer *,rf::CustomCFObject<rf::data_flow::consumer::LoggingConsumer>::makeSharedPtr(void)::{lambda(rf::data_flow::consumer::LoggingConsumer *)#1},std::allocator<rf::data_flow::consumer::LoggingConsumer>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<rf::data_flow::consumer::QueryConsumer *,rf::CustomCFObject<rf::data_flow::consumer::QueryConsumer>::makeSharedPtr(void)::{lambda(rf::data_flow::consumer::QueryConsumer *)#1},std::allocator<rf::data_flow::consumer::QueryConsumer>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26670D060);
}

uint64_t std::__shared_ptr_pointer<rf::data_flow::consumer::QueryConsumer *,rf::CustomCFObject<rf::data_flow::consumer::QueryConsumer>::makeSharedPtr(void)::{lambda(rf::data_flow::consumer::QueryConsumer *)#1},std::allocator<rf::data_flow::consumer::QueryConsumer>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<rf::data_flow::consumer::DebugOptionConsumer *,rf::CustomCFObject<rf::data_flow::consumer::DebugOptionConsumer>::makeSharedPtr(void)::{lambda(rf::data_flow::consumer::DebugOptionConsumer *)#1},std::allocator<rf::data_flow::consumer::DebugOptionConsumer>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26670D060);
}

uint64_t std::__shared_ptr_pointer<rf::data_flow::consumer::DebugOptionConsumer *,rf::CustomCFObject<rf::data_flow::consumer::DebugOptionConsumer>::makeSharedPtr(void)::{lambda(rf::data_flow::consumer::DebugOptionConsumer *)#1},std::allocator<rf::data_flow::consumer::DebugOptionConsumer>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<rf::data_flow::consumer::EnvironmentProbeConsumer *,rf::CustomCFObject<rf::data_flow::consumer::EnvironmentProbeConsumer>::makeSharedPtr(void)::{lambda(rf::data_flow::consumer::EnvironmentProbeConsumer *)#1},std::allocator<rf::data_flow::consumer::EnvironmentProbeConsumer>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26670D060);
}

uint64_t std::__shared_ptr_pointer<rf::data_flow::consumer::EnvironmentProbeConsumer *,rf::CustomCFObject<rf::data_flow::consumer::EnvironmentProbeConsumer>::makeSharedPtr(void)::{lambda(rf::data_flow::consumer::EnvironmentProbeConsumer *)#1},std::allocator<rf::data_flow::consumer::EnvironmentProbeConsumer>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<rf::data_flow::consumer::VFXCollisionConsumer *,rf::CustomCFObject<rf::data_flow::consumer::VFXCollisionConsumer>::makeSharedPtr(void)::{lambda(rf::data_flow::consumer::VFXCollisionConsumer *)#1},std::allocator<rf::data_flow::consumer::VFXCollisionConsumer>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26670D060);
}

uint64_t std::__shared_ptr_pointer<rf::data_flow::consumer::VFXCollisionConsumer *,rf::CustomCFObject<rf::data_flow::consumer::VFXCollisionConsumer>::makeSharedPtr(void)::{lambda(rf::data_flow::consumer::VFXCollisionConsumer *)#1},std::allocator<rf::data_flow::consumer::VFXCollisionConsumer>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<rf::data_flow::consumer::SyntheticEnvironmentConsumer *,rf::CustomCFObject<rf::data_flow::consumer::SyntheticEnvironmentConsumer>::makeSharedPtr(void)::{lambda(rf::data_flow::consumer::SyntheticEnvironmentConsumer *)#1},std::allocator<rf::data_flow::consumer::SyntheticEnvironmentConsumer>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26670D060);
}

uint64_t std::__shared_ptr_pointer<rf::data_flow::consumer::SyntheticEnvironmentConsumer *,rf::CustomCFObject<rf::data_flow::consumer::SyntheticEnvironmentConsumer>::makeSharedPtr(void)::{lambda(rf::data_flow::consumer::SyntheticEnvironmentConsumer *)#1},std::allocator<rf::data_flow::consumer::SyntheticEnvironmentConsumer>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<rf::data_flow::consumer::AtmospherePlacementConsumer *,rf::CustomCFObject<rf::data_flow::consumer::AtmospherePlacementConsumer>::makeSharedPtr(void)::{lambda(rf::data_flow::consumer::AtmospherePlacementConsumer *)#1},std::allocator<rf::data_flow::consumer::AtmospherePlacementConsumer>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26670D060);
}

uint64_t std::__shared_ptr_pointer<rf::data_flow::consumer::AtmospherePlacementConsumer *,rf::CustomCFObject<rf::data_flow::consumer::AtmospherePlacementConsumer>::makeSharedPtr(void)::{lambda(rf::data_flow::consumer::AtmospherePlacementConsumer *)#1},std::allocator<rf::data_flow::consumer::AtmospherePlacementConsumer>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<rf::data_flow::consumer::RayCastingConsumer *,rf::CustomCFObject<rf::data_flow::consumer::RayCastingConsumer>::makeSharedPtr(void)::{lambda(rf::data_flow::consumer::RayCastingConsumer *)#1},std::allocator<rf::data_flow::consumer::RayCastingConsumer>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26670D060);
}

uint64_t std::__shared_ptr_pointer<rf::data_flow::consumer::RayCastingConsumer *,rf::CustomCFObject<rf::data_flow::consumer::RayCastingConsumer>::makeSharedPtr(void)::{lambda(rf::data_flow::consumer::RayCastingConsumer *)#1},std::allocator<rf::data_flow::consumer::RayCastingConsumer>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<rf::data_flow::consumer::ClientSharedDataConsumer *,rf::CustomCFObject<rf::data_flow::consumer::ClientSharedDataConsumer>::makeSharedPtr(void)::{lambda(rf::data_flow::consumer::ClientSharedDataConsumer *)#1},std::allocator<rf::data_flow::consumer::ClientSharedDataConsumer>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26670D060);
}

uint64_t std::__shared_ptr_pointer<rf::data_flow::consumer::ClientSharedDataConsumer *,rf::CustomCFObject<rf::data_flow::consumer::ClientSharedDataConsumer>::makeSharedPtr(void)::{lambda(rf::data_flow::consumer::ClientSharedDataConsumer *)#1},std::allocator<rf::data_flow::consumer::ClientSharedDataConsumer>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RFServiceManagerSetUpdateTimeSampler::$_0,std::allocator<RFServiceManagerSetUpdateTimeSampler::$_0>,double ()(void)>::~__func(uint64_t a1)
{

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<RFServiceManagerSetUpdateTimeSampler::$_0,std::allocator<RFServiceManagerSetUpdateTimeSampler::$_0>,double ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2874099C0;
  result = MEMORY[0x26670D530](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RFServiceManagerSetUpdateTimeSampler::$_0,std::allocator<RFServiceManagerSetUpdateTimeSampler::$_0>,double ()(void)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<RFServiceManagerSetUpdateTimeSampler::$_0,std::allocator<RFServiceManagerSetUpdateTimeSampler::$_0>,double ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<double ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::__function::__func<RFServiceManagerSetAnchorCleanUpCallback::$_0,std::allocator<RFServiceManagerSetAnchorCleanUpCallback::$_0>,void ()(rf::data_flow::RFUUID const&)>::~__func(uint64_t a1)
{

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<RFServiceManagerSetAnchorCleanUpCallback::$_0,std::allocator<RFServiceManagerSetAnchorCleanUpCallback::$_0>,void ()(rf::data_flow::RFUUID const&)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_287409A40;
  result = MEMORY[0x26670D530](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RFServiceManagerSetAnchorCleanUpCallback::$_0,std::allocator<RFServiceManagerSetAnchorCleanUpCallback::$_0>,void ()(rf::data_flow::RFUUID const&)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<RFServiceManagerSetAnchorCleanUpCallback::$_0,std::allocator<RFServiceManagerSetAnchorCleanUpCallback::$_0>,void ()(rf::data_flow::RFUUID const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 16))
  {
    v2 = *a2;
  }

  return (*(*(a1 + 8) + 16))();
}

uint64_t std::__function::__func<RFServiceManagerSetAnchorCleanUpCallback::$_0,std::allocator<RFServiceManagerSetAnchorCleanUpCallback::$_0>,void ()(rf::data_flow::RFUUID const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RFServiceManagerSetExternalAnchorCallback::$_0,std::allocator<RFServiceManagerSetExternalAnchorCallback::$_0>,void ()(rf::data_flow::RFUUID const&)>::~__func(uint64_t a1)
{

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<RFServiceManagerSetExternalAnchorCallback::$_0,std::allocator<RFServiceManagerSetExternalAnchorCallback::$_0>,void ()(rf::data_flow::RFUUID const&)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_287409AD0;
  result = MEMORY[0x26670D530](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RFServiceManagerSetExternalAnchorCallback::$_0,std::allocator<RFServiceManagerSetExternalAnchorCallback::$_0>,void ()(rf::data_flow::RFUUID const&)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<RFServiceManagerSetExternalAnchorCallback::$_0,std::allocator<RFServiceManagerSetExternalAnchorCallback::$_0>,void ()(rf::data_flow::RFUUID const&)>::operator()(rf *a1, rf::data_flow::RFUUID *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = rf::realityFusionLogObject(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    rf::data_flow::RFUUID::string(a2, __p);
    v5 = v10 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v12 = v5;
    _os_log_impl(&dword_2617CB000, v4, OS_LOG_TYPE_DEFAULT, "RFServiceManagerSetExternalAnchorCallback(): Anchor %{public}s marked external", buf, 0xCu);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a2 + 16))
  {
    v6 = *a2;
  }

  result = (*(*(a1 + 1) + 16))();
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<RFServiceManagerSetExternalAnchorCallback::$_0,std::allocator<RFServiceManagerSetExternalAnchorCallback::$_0>,void ()(rf::data_flow::RFUUID const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RFServiceManagerSetRelocalizedAnchorCallback::$_0,std::allocator<RFServiceManagerSetRelocalizedAnchorCallback::$_0>,void ()(rf::data_flow::RFUUID const&)>::~__func(uint64_t a1)
{

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<RFServiceManagerSetRelocalizedAnchorCallback::$_0,std::allocator<RFServiceManagerSetRelocalizedAnchorCallback::$_0>,void ()(rf::data_flow::RFUUID const&)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_287409B50;
  result = MEMORY[0x26670D530](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RFServiceManagerSetRelocalizedAnchorCallback::$_0,std::allocator<RFServiceManagerSetRelocalizedAnchorCallback::$_0>,void ()(rf::data_flow::RFUUID const&)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<RFServiceManagerSetRelocalizedAnchorCallback::$_0,std::allocator<RFServiceManagerSetRelocalizedAnchorCallback::$_0>,void ()(rf::data_flow::RFUUID const&)>::operator()(rf *a1, rf::data_flow::RFUUID *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = rf::realityFusionLogObject(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    rf::data_flow::RFUUID::string(a2, __p);
    v5 = v10 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v12 = v5;
    _os_log_impl(&dword_2617CB000, v4, OS_LOG_TYPE_DEFAULT, "RFServiceManagerSetRelocalizedAnchorCallback(): Anchor %{public}s relocalized", buf, 0xCu);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a2 + 16))
  {
    v6 = *a2;
  }

  result = (*(*(a1 + 1) + 16))();
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<RFServiceManagerSetRelocalizedAnchorCallback::$_0,std::allocator<RFServiceManagerSetRelocalizedAnchorCallback::$_0>,void ()(rf::data_flow::RFUUID const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ___ZN2rf17ClassRegistrationINS_14CustomCFObjectINSt3__17variantIJNS_9data_flow12CustomAnchorENS4_11PlaneAnchorENS4_11ImageAnchorENS4_12ObjectAnchorENS4_10FaceAnchorENS4_10BodyAnchorEEEEEEE13registerClassEv_block_invoke_0()
{
  rf::getTypeName<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>(__p);
  rf::ClassRegistration<rf::CustomCFObject<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>::_cfClass = 0u;
  xmmword_27FEB9CA0 = 0u;
  xmmword_27FEB9CB0 = 0u;
  unk_27FEB9CC0 = 0u;
  xmmword_27FEB9CD0 = 0u;
  unk_27FEB9CE0 = 0u;
  if (v2 >= 0)
  {
    v0 = __p;
  }

  else
  {
    v0 = __p[0];
  }

  *(&rf::ClassRegistration<rf::CustomCFObject<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>::_cfClass + 1) = v0;
  *&xmmword_27FEB9CA0 = rf::ClassRegistration<rf::CustomCFObject<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>::initCallback;
  *&xmmword_27FEB9CB0 = rf::ClassRegistration<rf::CustomCFObject<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>::finalizeCallback;
  qword_27FEB9CC8 = rf::ClassRegistration<rf::CustomCFObject<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>::copyFormattingDescriptionCallback;
  *&xmmword_27FEB9CD0 = rf::ClassRegistration<rf::CustomCFObject<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>::copyDebugDescriptionCallback;
  rf::ClassRegistration<rf::CustomCFObject<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>::_cfTypeID = _CFRuntimeRegisterClass();
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_26181C9D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<RFServiceManagerVisitAnchors::$_0,std::allocator<RFServiceManagerVisitAnchors::$_0>,void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const*)>::~__func(uint64_t a1)
{

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<RFServiceManagerVisitAnchors::$_0,std::allocator<RFServiceManagerVisitAnchors::$_0>,void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const*)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_287409BF0;
  result = MEMORY[0x26670D530](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RFServiceManagerVisitAnchors::$_0,std::allocator<RFServiceManagerVisitAnchors::$_0>,void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const*)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<RFServiceManagerVisitAnchors::$_0,std::allocator<RFServiceManagerVisitAnchors::$_0>,void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const*)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::__function::__func<RFServiceManagerVisitUpdatedAnchors::$_0,std::allocator<RFServiceManagerVisitUpdatedAnchors::$_0>,void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const*)>::~__func(uint64_t a1)
{

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<RFServiceManagerVisitUpdatedAnchors::$_0,std::allocator<RFServiceManagerVisitUpdatedAnchors::$_0>,void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const*)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_287409C80;
  result = MEMORY[0x26670D530](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RFServiceManagerVisitUpdatedAnchors::$_0,std::allocator<RFServiceManagerVisitUpdatedAnchors::$_0>,void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const*)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<RFServiceManagerVisitUpdatedAnchors::$_0,std::allocator<RFServiceManagerVisitUpdatedAnchors::$_0>,void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RFServiceManagerListenToAnchorPinnedGroupUpdate::$_0,std::allocator<RFServiceManagerListenToAnchorPinnedGroupUpdate::$_0>,void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>::~__func(uint64_t a1)
{

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<RFServiceManagerListenToAnchorPinnedGroupUpdate::$_0,std::allocator<RFServiceManagerListenToAnchorPinnedGroupUpdate::$_0>,void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_287409D00;
  result = MEMORY[0x26670D530](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RFServiceManagerListenToAnchorPinnedGroupUpdate::$_0,std::allocator<RFServiceManagerListenToAnchorPinnedGroupUpdate::$_0>,void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<RFServiceManagerListenToAnchorPinnedGroupUpdate::$_0,std::allocator<RFServiceManagerListenToAnchorPinnedGroupUpdate::$_0>,void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  if (*(a2 + 16))
  {
    a2 = *a2;
  }

  if (*(a3 + 16))
  {
    a3 = *a3;
  }

  return (*(v3 + 16))(v3, a2, a3);
}

uint64_t std::__function::__func<RFServiceManagerListenToAnchorPinnedGroupUpdate::$_0,std::allocator<RFServiceManagerListenToAnchorPinnedGroupUpdate::$_0>,void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::__function::__func<RFServiceManagerListenToPinnedGroupTrackingStatusChange::$_0,std::allocator<RFServiceManagerListenToPinnedGroupTrackingStatusChange::$_0>,void ()(rf::data_flow::PinnedGroup const*)>::~__func(uint64_t a1)
{

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<RFServiceManagerListenToPinnedGroupTrackingStatusChange::$_0,std::allocator<RFServiceManagerListenToPinnedGroupTrackingStatusChange::$_0>,void ()(rf::data_flow::PinnedGroup const*)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_287409D90;
  result = MEMORY[0x26670D530](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RFServiceManagerListenToPinnedGroupTrackingStatusChange::$_0,std::allocator<RFServiceManagerListenToPinnedGroupTrackingStatusChange::$_0>,void ()(rf::data_flow::PinnedGroup const*)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<RFServiceManagerListenToPinnedGroupTrackingStatusChange::$_0,std::allocator<RFServiceManagerListenToPinnedGroupTrackingStatusChange::$_0>,void ()(rf::data_flow::PinnedGroup const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *rf::helpers::updateSceneUnderstandingPhysicsComponentsWithMeshUpdates(uint64_t a1, void *a2, int a3, int a4)
{
  v41 = *MEMORY[0x277D85DE8];
  RESceneUnderstandingComponentGetComponentType();
  ComponentsOfClass = RESceneGetComponentsOfClass();
  v34 = v7;
  v36 = 0;
  v37 = 0;
  v35 = a2;
  v9 = std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::span<REComponent *,18446744073709551615ul>,rf::helpers::updateSceneUnderstandingPhysicsComponentsWithMeshUpdates(REScene *,std::unordered_map<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>,BOOL,BOOL)::$_0> &>(&ComponentsOfClass);
  v10 = (ComponentsOfClass + 8 * v34);
  if (v9 != v10)
  {
    v11 = v8;
    v12 = v8 + 2;
    do
    {
      v13 = *v9;
      REComponentGetEntity();
      REColliderComponentGetComponentType();
      if (!REEntityGetComponentByClass())
      {
        REColliderComponentGetComponentType();
        REEntityAddComponentByClass();
        REColliderComponentSetGroup();
        if (a4)
        {
          RENetworkMarkComponentDirty();
        }
      }

      if (a3)
      {
        RERigidBodyComponentGetComponentType();
        if (!REEntityGetComponentByClass())
        {
          RERigidBodyComponentGetComponentType();
          REEntityAddComponentByClass();
          RERigidBodyComponentSetMotionType();
          if (a4)
          {
            RENetworkMarkComponentDirty();
          }
        }
      }

      v14 = (*v11 + 8 * v11[1]);
      *uu = v12;
      v9 = std::ranges::__find_if_impl[abi:ne200100]<std::__wrap_iter<REComponent **>,std::__wrap_iter<REComponent **>,std::reference_wrapper<rf::helpers::updateSceneUnderstandingPhysicsComponentsWithMeshUpdates(REScene *,std::unordered_map<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>,BOOL,BOOL)::$_0>,std::identity>(v9 + 1, v14, uu);
    }

    while (v9 != v10);
  }

  result = std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::span<REComponent *,18446744073709551615ul>,rf::helpers::updateSceneUnderstandingPhysicsComponentsWithMeshUpdates(REScene *,std::unordered_map<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>,BOOL,BOOL)::$_0> &>(&ComponentsOfClass);
  v17 = result;
  v18 = (ComponentsOfClass + 8 * v34);
  if (result != v18)
  {
    v20 = v16;
    v21 = v16 + 2;
    do
    {
      v22 = *v17;
      IdentifierPtr = RESceneUnderstandingComponentGetIdentifierPtr();
      v39 = 0;
      v40 = 0;
      uuid_clear(uu);
      *uu = IdentifierPtr;
      v39 = 1;
      v24 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(a2, uu);
      v25 = v24;
      if (!v24)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      if (*(v24[6] + 392) == 1)
      {
        v26 = *v17;
        REComponentGetEntity();
        REColliderComponentGetComponentType();
        REEntityGetComponentByClass();
        Shape = REColliderComponentGetShape();
        v28 = v25[6];
        if ((*(v28 + 392) & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        if (Shape == *(v28 + 384))
        {
          goto LABEL_23;
        }

        REColliderComponentSetShape();
        if (a4)
        {
          RENetworkMarkComponentDirty();
        }
      }

      if (re::internal::enableSignposts(0, 0))
      {
        v29 = v25[6];
        if (!*(v29 + 24))
        {
          if (*(v29 + 16))
          {
            v32 = *v29;
          }

          else
          {
            v32 = v25[6];
          }

          *(v29 + 24) = ((*v32 >> 2) + (*v32 << 6) + v32[1] + 2654435769) ^ *v32;
        }

        v30 = *(v29 + 32);
        kdebug_trace();
      }

LABEL_23:
      v31 = (*v20 + 8 * v20[1]);
      *uu = v21;
      result = std::ranges::__find_if_impl[abi:ne200100]<std::__wrap_iter<REComponent **>,std::__wrap_iter<REComponent **>,std::reference_wrapper<rf::helpers::updateSceneUnderstandingPhysicsComponentsWithMeshUpdates(REScene *,std::unordered_map<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>,BOOL,BOOL)::$_0>,std::identity>(v17 + 1, v31, uu);
      v17 = result;
    }

    while (result != v18);
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void *std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::span<REComponent *,18446744073709551615ul>,rf::helpers::updateSceneUnderstandingPhysicsComponentsWithMeshUpdates(REScene *,std::unordered_map<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>,BOOL,BOOL)::$_0> &>(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    return *(a1 + 24);
  }

  v3 = (a1 + 16);
  result = std::ranges::__find_if_impl[abi:ne200100]<std::__wrap_iter<REComponent **>,std::__wrap_iter<REComponent **>,std::reference_wrapper<rf::helpers::updateSceneUnderstandingPhysicsComponentsWithMeshUpdates(REScene *,std::unordered_map<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>,BOOL,BOOL)::$_0>,std::identity>(*a1, (*a1 + 8 * *(a1 + 8)), &v3);
  *(a1 + 24) = result;
  *(a1 + 32) = 1;
  return result;
}

void *std::ranges::__find_if_impl[abi:ne200100]<std::__wrap_iter<REComponent **>,std::__wrap_iter<REComponent **>,std::reference_wrapper<rf::helpers::updateSceneUnderstandingPhysicsComponentsWithMeshUpdates(REScene *,std::unordered_map<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>,BOOL,BOOL)::$_0>,std::identity>(void *a1, void *a2, void ***a3)
{
  v3 = a2;
  v16 = *MEMORY[0x277D85DE8];
  if (a1 != a2)
  {
    v5 = a1;
    while (1)
    {
      v6 = *a3;
      v7 = *v5;
      if (RESceneUnderstandingComponentGetSourceType() != 2)
      {
        v8 = *v6;
        IdentifierPtr = RESceneUnderstandingComponentGetIdentifierPtr();
        v14 = 0;
        v15 = 0;
        uuid_clear(uu);
        *uu = IdentifierPtr;
        v14 = 1;
        v10 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(v8, uu);
        if (v10)
        {
          if (*(v10[6] + 392))
          {
            break;
          }
        }
      }

      if (++v5 == v3)
      {
        goto LABEL_9;
      }
    }

    v3 = v5;
  }

LABEL_9:
  v11 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t rf::data_flow::consumer::RoomAwareAnchorVisualizer::drawRoomAnchors(uint64_t result, uint64_t a2, __int128 ***a3)
{
  if (*(a2 + 912) == 1)
  {
    v3 = *a3;
    v4 = a3[1];
    if (*a3 != v4)
    {
      v5 = result;
      __asm { FMOV            V0.4S, #1.0 }

      do
      {
        v11 = *v3;
        rf::helpers::getTransformFromAnchor(v3[1]);
        v12 = 0;
        v13 = v26[0];
        v14 = v26[1];
        v15 = v26[2];
        v16 = v26[3];
        v27 = xmmword_26185DD00;
        v28 = xmmword_26185DD10;
        v29 = xmmword_26185DD20;
        v30 = xmmword_26185E1A0;
        do
        {
          v31[v12 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(*(&v27 + v12))), v14, *(&v27 + v12), 1), v15, *(&v27 + v12), 2), v16, *(&v27 + v12), 3);
          v12 += 16;
        }

        while (v12 != 64);
        v17 = 0;
        v18 = v31[0];
        v19 = v31[1];
        v20 = v31[2];
        v21 = v31[3];
        v27 = xmmword_261864000;
        v28 = xmmword_261864010;
        v29 = xmmword_261864020;
        v30 = xmmword_26185E1B0;
        do
        {
          v31[v17 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*(&v27 + v17))), v19, *(&v27 + v17), 1), v20, *(&v27 + v17), 2), v21, *(&v27 + v17), 3);
          v17 += 16;
        }

        while (v17 != 64);
        rf::helpers::drawAxis(v5[1], *v5, v26);
        v23 = v5[1];
        v22 = v5[2];
        if (*(v11 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v25, *v11, *(v11 + 1));
        }

        else
        {
          v24 = *v11;
          v25.__r_.__value_.__r.__words[2] = *(v11 + 2);
          *&v25.__r_.__value_.__l.__data_ = v24;
        }

        REDebugRendererDrawTextAtWorldTransform();
        if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v25.__r_.__value_.__l.__data_);
        }

        result = rf::helpers::drawAnchorCube(v5[1], *v5, v26);
        v3 += 2;
      }

      while (v3 != v4);
    }
  }

  return result;
}

void sub_26181D868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t rf::update(uint64_t *a1)
{
  LOBYTE(v15) = 1;
  v2 = a1[1];
  rf::Session::updateProviders(*a1);
  v3 = *(*a1 + 4368);
  *&v7 = *(*a1 + 4384);
  *(&v7 + 1) = v2;
  v8 = v15;
  rf::data_flow::DataGraph::evaluate<rf::UpdateRequest>(v3, &v7, v12);
  if (REECSManagerSceneCount())
  {
    Scene = REECSManagerGetScene();
    LODWORD(v7) = 0;
    v5 = *a1;
    *(&v7 + 1) = a1[1];
    LOBYTE(v8) = 1;
    v9 = Scene;
    v10 = 1;
    v11 = 0;
    rf::Session::processConsumerRequest(v5, &v7);
  }

  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  return std::__hash_table<std::__hash_value_type<unsigned long,std::any>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::any>>>::~__hash_table(v12);
}

void sub_26181D958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  rf::data_flow::details::Context::~Context(va);
  _Unwind_Resume(a1);
}

uint64_t *rf::RealityFusionSystem::RealityFusionSystem(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  ECSService = REServiceLocatorGetECSService();
  a1[1] = a3;
  *a1 = ECSService;
  a1[2] = a2;
  a1[3] = REECSManagerAddCustomSystem();
  return a1;
}

void rf::RealityFusionSystem::~RealityFusionSystem(rf::RealityFusionSystem *this)
{
  if (*(this + 3))
  {
    v2 = *this;
    REECSManagerRemoveCustomSystem();
    *(this + 3) = 0;
  }
}

void RFAnchorDataProviderCreate()
{
  v1 = 0;
  v0 = *MEMORY[0x277CBECE8];
  if (qword_2810C4900 != -1)
  {
    dispatch_once(&qword_2810C4900, &__block_literal_global_7);
  }

  _CFRuntimeCreateInstance();
  operator new();
}

uint64_t RFAnchorDataProviderAddLocalAnchor(uint64_t a1, uint64_t a2)
{
  v5[35] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v5, *(a2 + 16) + 16);
  rf::data_flow::provider::AnchorDataProvider::addAnchor(v2 + 8, v5);
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void *RFAnchorDataProviderAddAnchor(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  *uu = 0u;
  uuid_clear(uu);
  v33 = xmmword_26185DD00;
  v34 = xmmword_26185DD10;
  v35 = xmmword_26185DD20;
  v36 = xmmword_26185E1B0;
  *&v37 = 16842752;
  BYTE8(v37) = 0;
  *&v38 = 0;
  LOBYTE(v39) = 0;
  BYTE8(v40) = 0;
  *&v41 = 0;
  uuid_clear(&v39 + 8);
  BYTE8(v41) = 0;
  BYTE8(v43) = 0;
  v44 = 0;
  LOBYTE(v30) = 0;
  *(&v30 + 1) = 0;
  uuid_clear(out);
  if (a3)
  {
    *out = *a3;
  }

  else
  {
    uuid_generate_random(out);
  }

  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        *buf = *out;
        v12 = v30;
        v13 = xmmword_26185DD00;
        v14 = xmmword_26185DD10;
        v15 = xmmword_26185DD20;
        v16 = xmmword_26185E1B0;
        v17 = 16842752;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        std::string::basic_string[abi:ne200100]<0>(v21, "");
        std::string::basic_string[abi:ne200100]<0>(&v22 + 8, "");
        LOBYTE(v25) = 0;
        *(&v25 + 1) = 0;
        uuid_clear(&v24);
        *v26 = 0u;
        v27 = 0u;
        std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__assign_alt[abi:ne200100]<3ul,rf::data_flow::ObjectAnchor,rf::data_flow::ObjectAnchor>(uu, uu, buf);
        if (SHIBYTE(__p[1]) < 0)
        {
          operator delete(*(&v22 + 1));
        }

        if (SBYTE7(v22) < 0)
        {
          operator delete(v21[0]);
        }

        goto LABEL_28;
      case 4:
        *buf = *out;
        v12 = v30;
        v13 = xmmword_26185DD00;
        v14 = xmmword_26185DD10;
        v15 = xmmword_26185DD20;
        v16 = xmmword_26185E1B0;
        v17 = 16842752;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        *v21 = 0u;
        v22 = 0u;
        *__p = 0u;
        v24 = 0u;
        v25 = 0u;
        *v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__assign_alt[abi:ne200100]<4ul,rf::data_flow::FaceAnchor,rf::data_flow::FaceAnchor>(uu, uu, buf);

        goto LABEL_30;
      case 5:
        *buf = *out;
        v12 = v30;
        v13 = xmmword_26185DD00;
        v14 = xmmword_26185DD10;
        v15 = xmmword_26185DD20;
        v16 = xmmword_26185E1B0;
        v17 = 16842752;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        LODWORD(v21[0]) = 1065353216;
        std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__assign_alt[abi:ne200100]<5ul,rf::data_flow::BodyAnchor,rf::data_flow::BodyAnchor>(uu, uu, buf);

        goto LABEL_30;
    }
  }

  else
  {
    switch(a2)
    {
      case 0:
        *buf = *out;
        v12 = v30;
        v13 = xmmword_26185DD00;
        v14 = xmmword_26185DD10;
        v15 = xmmword_26185DD20;
        v16 = xmmword_26185E1B0;
        v17 = 16842752;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        LOBYTE(v21[0]) = 0;
        BYTE8(v22) = 0;
        __p[0] = 0;
        uuid_clear(&v21[1]);
        LOBYTE(__p[1]) = 0;
        BYTE8(v25) = 0;
        std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__assign_alt[abi:ne200100]<0ul,rf::data_flow::CustomAnchor,rf::data_flow::CustomAnchor>(uu, uu, buf);

        goto LABEL_30;
      case 1:
        *buf = *out;
        v12 = v30;
        v13 = xmmword_26185DD00;
        v14 = xmmword_26185DD10;
        v15 = xmmword_26185DD20;
        v16 = xmmword_26185E1B0;
        v17 = 16842752;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        *v21 = 0u;
        v22 = 0u;
        *__p = 0u;
        v24 = 0u;
        v25 = 0u;
        *v26 = 0u;
        v27 = 0u;
        std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__assign_alt[abi:ne200100]<1ul,rf::data_flow::PlaneAnchor,rf::data_flow::PlaneAnchor>(uu, uu, buf);
        if (v26[1])
        {
          *&v27 = v26[1];
          operator delete(v26[1]);
        }

        goto LABEL_28;
      case 2:
        *buf = *out;
        v12 = v30;
        v13 = xmmword_26185DD00;
        v14 = xmmword_26185DD10;
        v15 = xmmword_26185DD20;
        v16 = xmmword_26185E1B0;
        v17 = 16842752;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        LOBYTE(v21[0]) = 0;
        std::string::basic_string[abi:ne200100]<0>(&v21[1], "");
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        v25 = 0u;
        std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__assign_alt[abi:ne200100]<2ul,rf::data_flow::ImageAnchor,rf::data_flow::ImageAnchor>(uu, uu, buf);
        if (SBYTE7(v24) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v22) < 0)
        {
          operator delete(v21[1]);
        }

LABEL_28:

        goto LABEL_30;
    }
  }

  v7 = rf::realityFusionLogObject(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    *&buf[4] = a2;
    _os_log_error_impl(&dword_2617CB000, v7, OS_LOG_TYPE_ERROR, "RFAnchorDataProvider: Unknown RFAnchorType %lu", buf, 0xCu);
  }

LABEL_30:
  v8 = rf::data_flow::provider::AnchorDataProvider::addAnchor(*(a1 + 16) + 8, uu);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uu);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_26181E054(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t RFAnchorDataProviderUpdateLocalAnchor(uint64_t a1, uint64_t a2)
{
  v5[35] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v5, *(a2 + 16) + 16);
  rf::data_flow::provider::AnchorDataProvider::updateAnchor(v2 + 8, v5);
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void RFAnchorDataProviderRemoveAnchorByIdentifier(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  v6 = 0;
  v7 = 0;
  uuid_clear(uu);
  *uu = a2;
  v6 = 1;
  rf::data_flow::provider::AnchorDataProvider::removeAnchor((v3 + 8), uu);
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t RFAnchorDataProviderRemoveLocalAnchor(uint64_t a1, uint64_t a2)
{
  v5[35] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v5, *(a2 + 16) + 16);
  rf::data_flow::provider::AnchorDataProvider::removeAnchor(v2 + 8, v5);
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void RFAnchorDataProviderAddLocalAnchors(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v9[35] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 16);
  memset(v8, 0, sizeof(v8));
  v6 = a3;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::reserve(v8, a3);
  if (a3)
  {
    do
    {
      std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v9, *(*a2 + 16) + 16);
      std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::push_back[abi:ne200100](v8, v9);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v9);
      a2 += 8;
      --v6;
    }

    while (v6);
  }

  rf::data_flow::provider::AnchorDataProvider::addAnchors((v5 + 8), v8);
  v9[0] = v8;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__destroy_vector::operator()[abi:ne200100](v9);
  v7 = *MEMORY[0x277D85DE8];
}

void sub_26181E3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void *std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::reserve(void *result, unint64_t a2)
{
  if (0xF0F0F0F0F0F0F0F1 * ((result[2] - *result) >> 4) < a2)
  {
    v2 = result[1] - *result;
    v3 = result;
    std::allocator<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::allocate_at_least[abi:ne200100](result, a2);
  }

  return result;
}

void sub_26181E498(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void RFAnchorDataProviderUpdateLocalAnchors(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v9[35] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 16);
  memset(v8, 0, sizeof(v8));
  v6 = a3;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::reserve(v8, a3);
  if (a3)
  {
    do
    {
      std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v9, *(*a2 + 16) + 16);
      std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::push_back[abi:ne200100](v8, v9);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v9);
      a2 += 8;
      --v6;
    }

    while (v6);
  }

  rf::data_flow::provider::AnchorDataProvider::updateAnchors(v5 + 8, v8);
  v9[0] = v8;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__destroy_vector::operator()[abi:ne200100](v9);
  v7 = *MEMORY[0x277D85DE8];
}

void sub_26181E584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void RFAnchorDataProviderRemoveLocalAnchors(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v9[35] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 16);
  memset(v8, 0, sizeof(v8));
  v6 = a3;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::reserve(v8, a3);
  if (a3)
  {
    do
    {
      std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v9, *(*a2 + 16) + 16);
      std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::push_back[abi:ne200100](v8, v9);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v9);
      a2 += 8;
      --v6;
    }

    while (v6);
  }

  rf::data_flow::provider::AnchorDataProvider::removeAnchors((v5 + 8), v8);
  v9[0] = v8;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__destroy_vector::operator()[abi:ne200100](v9);
  v7 = *MEMORY[0x277D85DE8];
}

void sub_26181E68C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void ___ZN2rf17ClassRegistrationINS_14CustomCFObjectINS_9data_flow8provider18AnchorDataProviderEEEE13registerClassEv_block_invoke()
{
  v0 = 0;
  v1 = 1;
  for (i = 114; i != 91; i = aStdStringViewR_15[v0++ + 51])
  {
    if (i == 93)
    {
      v3 = -1;
      goto LABEL_8;
    }

    if (!i)
    {
      v0 = 0;
      v6 = 0;
      goto LABEL_16;
    }

LABEL_9:
    ;
  }

  v3 = 1;
LABEL_8:
  v1 += v3;
  if (v1)
  {
    goto LABEL_9;
  }

  if (v0 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v0 >= 0x17)
  {
    operator new();
  }

  v6 = v0;
  if (v0)
  {
    memcpy(&__dst, "rf::data_flow::provider::AnchorDataProvider]", v0);
  }

LABEL_16:
  *(&__dst + v0) = 0;
  xmmword_2810C4908 = 0u;
  xmmword_2810C4918 = 0u;
  xmmword_2810C4928 = 0u;
  unk_2810C4938 = 0u;
  xmmword_2810C4948 = 0u;
  unk_2810C4958 = 0u;
  p_dst = &__dst;
  if (v6 < 0)
  {
    p_dst = __dst;
  }

  *(&xmmword_2810C4908 + 1) = p_dst;
  *&xmmword_2810C4918 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::provider::AnchorDataProvider>>::initCallback;
  *&xmmword_2810C4928 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::provider::AnchorDataProvider>>::finalizeCallback;
  qword_2810C4940 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::provider::AnchorDataProvider>>::copyFormattingDescriptionCallback;
  *&xmmword_2810C4948 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::provider::AnchorDataProvider>>::copyDebugDescriptionCallback;
  _MergedGlobals_8 = _CFRuntimeRegisterClass();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_26181E84C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

rf::data_flow::provider::AnchorDataProvider *std::unique_ptr<rf::CustomCFObject<rf::data_flow::provider::AnchorDataProvider>::BridgableObject,std::default_delete<rf::CustomCFObject<rf::data_flow::provider::AnchorDataProvider>::BridgableObject>>::reset[abi:ne200100](rf::data_flow::provider::AnchorDataProvider *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    rf::data_flow::provider::AnchorDataProvider::unregisterCallbackFromComponent(result);

    JUMPOUT(0x26670D060);
  }

  return result;
}

void rf::synthetic::getSceneUnderstandingTypeString(unsigned int a1@<W0>, std::string *a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  {
    std::string::basic_string[abi:ne200100]<0>(v8, "plane");
    std::string::basic_string[abi:ne200100]<0>(v9, "image");
    std::string::basic_string[abi:ne200100]<0>(v10, "object");
    std::string::basic_string[abi:ne200100]<0>(v11, "mesh");
    std::string::basic_string[abi:ne200100]<0>(v12, "parametricRepresentation");
    rf::synthetic::getSceneUnderstandingTypeString(rf::synthetic::SceneUnderstandingType)::MAP_SUTYPE_STR = 0;
    *algn_27FEB9EE8 = 0;
    qword_27FEB9EF0 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&rf::synthetic::getSceneUnderstandingTypeString(rf::synthetic::SceneUnderstandingType)::MAP_SUTYPE_STR, v8, &v13, 5uLL);
    for (i = 0; i != -120; i -= 24)
    {
      if (v12[i + 23] < 0)
      {
        operator delete(*&v12[i]);
      }
    }
  }

  v4 = rf::synthetic::getSceneUnderstandingTypeString(rf::synthetic::SceneUnderstandingType)::MAP_SUTYPE_STR + 24 * a1;
  if (*(v4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *v4, *(v4 + 8));
  }

  else
  {
    v5 = *v4;
    a2->__r_.__value_.__r.__words[2] = *(v4 + 16);
    *&a2->__r_.__value_.__l.__data_ = v5;
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_26181EA68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v27 = &a26;
  v28 = -120;
  v29 = &a26;
  while (1)
  {
    v30 = *v29;
    v29 -= 24;
    if (v30 < 0)
    {
      operator delete(*(v27 - 23));
    }

    v27 = v29;
    v28 += 24;
    if (!v28)
    {
      _Unwind_Resume(a1);
    }
  }
}

uint64_t rf::synthetic::getSceneUnderstandingTypeFromString(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&_MergedGlobals_9, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_9))
  {
    std::string::basic_string[abi:ne200100]<0>(&v8, "plane");
    v10 = 0;
    std::string::basic_string[abi:ne200100]<0>(v11, "image");
    v11[24] = 1;
    std::string::basic_string[abi:ne200100]<0>(v12, "object");
    v12[24] = 2;
    std::string::basic_string[abi:ne200100]<0>(v13, "mesh");
    v13[24] = 3;
    std::string::basic_string[abi:ne200100]<0>(v14, "parametricRepresentation");
    v14[24] = 4;
    std::unordered_map<std::string,rf::synthetic::SceneUnderstandingType>::unordered_map(&v8, 5);
    for (i = 0; i != -160; i -= 32)
    {
      if (v14[i + 23] < 0)
      {
        operator delete(*&v14[i]);
      }
    }

    __cxa_guard_release(&_MergedGlobals_9);
  }

  if (std::__hash_table<std::__hash_value_type<std::string,rf::synthetic::SceneUnderstandingType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,rf::synthetic::SceneUnderstandingType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,rf::synthetic::SceneUnderstandingType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,rf::synthetic::SceneUnderstandingType>>>::find<std::string>(a1))
  {
    v2 = std::__hash_table<std::__hash_value_type<std::string,rf::synthetic::SceneUnderstandingType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,rf::synthetic::SceneUnderstandingType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,rf::synthetic::SceneUnderstandingType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,rf::synthetic::SceneUnderstandingType>>>::find<std::string>(a1);
    if (!v2)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    result = *(v2 + 40);
  }

  else
  {
    v4 = rf::realityFusionLogObject(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 23) >= 0)
      {
        v6 = a1;
      }

      else
      {
        v6 = *a1;
      }

      v8 = 136315138;
      v9 = v6;
      _os_log_error_impl(&dword_2617CB000, v4, OS_LOG_TYPE_ERROR, "getSceneUnderstandingTypeFromString(): Invalid Scene Understanding Type: %s", &v8, 0xCu);
    }

    result = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26181ECCC(_Unwind_Exception *a1)
{
  v3 = (v1 + 151);
  v4 = -160;
  v5 = v3;
  while (1)
  {
    v6 = *v5;
    v5 -= 32;
    if (v6 < 0)
    {
      operator delete(*(v3 - 23));
    }

    v3 = v5;
    v4 += 32;
    if (!v4)
    {
      __cxa_guard_abort(&_MergedGlobals_9);
      _Unwind_Resume(a1);
    }
  }
}

BOOL rf::synthetic::isSceneUnderstandingAnchor(unsigned int a1)
{
  {
    v7 = a1;
    a1 = v7;
    if (v8)
    {
      v9 = 256;
      v10 = 2;
      std::set<rf::synthetic::SceneUnderstandingType>::set[abi:ne200100](&rf::synthetic::isSceneUnderstandingAnchor(rf::synthetic::SceneUnderstandingType)::SU_ANCHOR_TYPES, &v9, 3);
      a1 = v7;
    }
  }

  v1 = qword_27FEB9F08;
  if (!qword_27FEB9F08)
  {
    return 0;
  }

  v2 = &qword_27FEB9F08;
  do
  {
    v3 = *(v1 + 25);
    v4 = v3 >= a1;
    v5 = v3 < a1;
    if (v4)
    {
      v2 = v1;
    }

    v1 = *(v1 + 8 * v5);
  }

  while (v1);
  return v2 != &qword_27FEB9F08 && *(v2 + 25) <= a1;
}

void rf::synthetic::getAlignmentString(unsigned __int8 a1@<W0>, std::string *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  {
    std::string::basic_string[abi:ne200100]<0>(v8, "horizontal");
    std::string::basic_string[abi:ne200100]<0>(v9, "vertical");
    rf::synthetic::getAlignmentString(rf::data_flow::PlaneAnchor::Alignment)::MAP_ALIGNMENT_STR = 0;
    *algn_27FEB9F28 = 0;
    qword_27FEB9F30 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&rf::synthetic::getAlignmentString(rf::data_flow::PlaneAnchor::Alignment)::MAP_ALIGNMENT_STR, v8, &v10, 2uLL);
    for (i = 0; i != -48; i -= 24)
    {
      if (v9[i + 23] < 0)
      {
        operator delete(*&v8[i + 24]);
      }
    }
  }

  v4 = rf::synthetic::getAlignmentString(rf::data_flow::PlaneAnchor::Alignment)::MAP_ALIGNMENT_STR + 24 * a1;
  if (*(v4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *v4, *(v4 + 8));
  }

  else
  {
    v5 = *v4;
    a2->__r_.__value_.__r.__words[2] = *(v4 + 16);
    *&a2->__r_.__value_.__l.__data_ = v5;
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_26181EF80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = (v15 + 47);
  v18 = -48;
  v19 = (v15 + 47);
  while (1)
  {
    v20 = *v19;
    v19 -= 24;
    if (v20 < 0)
    {
      operator delete(*(v17 - 23));
    }

    v17 = v19;
    v18 += 24;
    if (!v18)
    {
      _Unwind_Resume(a1);
    }
  }
}

uint64_t rf::synthetic::getAlignmentFromString(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_2810C4970, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2810C4970))
  {
    std::string::basic_string[abi:ne200100]<0>(&v8, "horizontal");
    v10 = 0;
    std::string::basic_string[abi:ne200100]<0>(v11, "vertical");
    v12 = 1;
    std::unordered_map<std::string,rf::data_flow::PlaneAnchor::Alignment>::unordered_map(&v8, 2);
    for (i = 0; i != -64; i -= 32)
    {
      if (v11[i + 23] < 0)
      {
        operator delete(*&v11[i]);
      }
    }

    __cxa_guard_release(&qword_2810C4970);
  }

  if (std::__hash_table<std::__hash_value_type<std::string,rf::data_flow::PlaneAnchor::Alignment>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,rf::data_flow::PlaneAnchor::Alignment>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,rf::data_flow::PlaneAnchor::Alignment>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,rf::data_flow::PlaneAnchor::Alignment>>>::find<std::string>(a1))
  {
    v2 = std::__hash_table<std::__hash_value_type<std::string,rf::data_flow::PlaneAnchor::Alignment>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,rf::data_flow::PlaneAnchor::Alignment>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,rf::data_flow::PlaneAnchor::Alignment>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,rf::data_flow::PlaneAnchor::Alignment>>>::find<std::string>(a1);
    if (!v2)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    result = *(v2 + 10);
  }

  else
  {
    v4 = rf::realityFusionLogObject(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 23) >= 0)
      {
        v6 = a1;
      }

      else
      {
        v6 = *a1;
      }

      v8 = 136315138;
      v9 = v6;
      _os_log_error_impl(&dword_2617CB000, v4, OS_LOG_TYPE_ERROR, "getAlignmentFromString(): Invalid Alignment: %s", &v8, 0xCu);
    }

    result = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26181F170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = (v14 + 55);
  v17 = -64;
  v18 = v16;
  while (1)
  {
    v19 = *v18;
    v18 -= 32;
    if (v19 < 0)
    {
      operator delete(*(v16 - 23));
    }

    v16 = v18;
    v17 += 32;
    if (!v17)
    {
      __cxa_guard_abort(&qword_2810C4970);
      _Unwind_Resume(a1);
    }
  }
}

void rf::synthetic::getPlaneClassificationString(unsigned __int8 a1@<W0>, std::string *a2@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  {
    std::string::basic_string[abi:ne200100]<0>(v8, "PlaneClassificationNone");
    std::string::basic_string[abi:ne200100]<0>(v9, "PlaneClassificationWall");
    std::string::basic_string[abi:ne200100]<0>(v10, "PlaneClassificationFloor");
    std::string::basic_string[abi:ne200100]<0>(v11, "PlaneClassificationCeiling");
    std::string::basic_string[abi:ne200100]<0>(v12, "PlaneClassificationTable");
    std::string::basic_string[abi:ne200100]<0>(v13, "PlaneClassificationSeat");
    std::string::basic_string[abi:ne200100]<0>(v14, "PlaneClassificationWindow");
    std::string::basic_string[abi:ne200100]<0>(v15, "PlaneClassificationDoor");
    rf::synthetic::getPlaneClassificationString(rf::data_flow::PlaneAnchor::Classification)::MAP_PLANE_CLASSIFICATION_STR = 0;
    *algn_27FEB9F48 = 0;
    qword_27FEB9F50 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&rf::synthetic::getPlaneClassificationString(rf::data_flow::PlaneAnchor::Classification)::MAP_PLANE_CLASSIFICATION_STR, v8, &v16, 8uLL);
    for (i = 0; i != -192; i -= 24)
    {
      if (v15[i + 23] < 0)
      {
        operator delete(*&v15[i]);
      }
    }
  }

  v4 = rf::synthetic::getPlaneClassificationString(rf::data_flow::PlaneAnchor::Classification)::MAP_PLANE_CLASSIFICATION_STR + 24 * a1;
  if (*(v4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *v4, *(v4 + 8));
  }

  else
  {
    v5 = *v4;
    a2->__r_.__value_.__r.__words[2] = *(v4 + 16);
    *&a2->__r_.__value_.__l.__data_ = v5;
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_26181F3A0(_Unwind_Exception *a1)
{
  v3 = (v1 + 191);
  v4 = -192;
  v5 = (v1 + 191);
  while (1)
  {
    v6 = *v5;
    v5 -= 24;
    if (v6 < 0)
    {
      operator delete(*(v3 - 23));
    }

    v3 = v5;
    v4 += 24;
    if (!v4)
    {
      _Unwind_Resume(a1);
    }
  }
}

uint64_t rf::synthetic::getPlaneClassificationFromString(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_2810C4978, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2810C4978))
  {
    std::string::basic_string[abi:ne200100]<0>(&v8, "PlaneClassificationNone");
    v10 = 0;
    std::string::basic_string[abi:ne200100]<0>(v11, "PlaneClassificationWall");
    v12 = 1;
    std::string::basic_string[abi:ne200100]<0>(v13, "PlaneClassificationFloor");
    v14 = 2;
    std::string::basic_string[abi:ne200100]<0>(v15, "PlaneClassificationCeiling");
    v16 = 3;
    std::string::basic_string[abi:ne200100]<0>(v17, "PlaneClassificationTable");
    v18 = 4;
    std::string::basic_string[abi:ne200100]<0>(v19, "PlaneClassificationSeat");
    v20 = 5;
    std::string::basic_string[abi:ne200100]<0>(v21, "PlaneClassificationWindow");
    v22 = 6;
    std::string::basic_string[abi:ne200100]<0>(v23, "PlaneClassificationDoor");
    v24 = 7;
    std::unordered_map<std::string,rf::data_flow::PlaneAnchor::Classification>::unordered_map(&v8, 8);
    for (i = 0; i != -256; i -= 32)
    {
      if (v23[i + 23] < 0)
      {
        operator delete(*&v23[i]);
      }
    }

    __cxa_guard_release(&qword_2810C4978);
  }

  if (std::__hash_table<std::__hash_value_type<std::string,rf::data_flow::PlaneAnchor::Classification>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,rf::data_flow::PlaneAnchor::Classification>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,rf::data_flow::PlaneAnchor::Classification>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,rf::data_flow::PlaneAnchor::Classification>>>::find<std::string>(a1))
  {
    v2 = std::__hash_table<std::__hash_value_type<std::string,rf::data_flow::PlaneAnchor::Classification>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,rf::data_flow::PlaneAnchor::Classification>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,rf::data_flow::PlaneAnchor::Classification>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,rf::data_flow::PlaneAnchor::Classification>>>::find<std::string>(a1);
    if (!v2)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    result = *(v2 + 10);
  }

  else
  {
    v4 = rf::realityFusionLogObject(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 23) >= 0)
      {
        v6 = a1;
      }

      else
      {
        v6 = *a1;
      }

      v8 = 136315138;
      v9 = v6;
      _os_log_error_impl(&dword_2617CB000, v4, OS_LOG_TYPE_ERROR, "getPlaneClassificationFromString(): Invalid Plane Classification string: %s", &v8, 0xCu);
    }

    result = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26181F658(_Unwind_Exception *a1)
{
  v3 = (v1 + 247);
  v4 = -256;
  v5 = v3;
  while (1)
  {
    v6 = *v5;
    v5 -= 32;
    if (v6 < 0)
    {
      operator delete(*(v3 - 23));
    }

    v3 = v5;
    v4 += 32;
    if (!v4)
    {
      __cxa_guard_abort(&qword_2810C4978);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t rf::synthetic::getClassificationFromString(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_2810C4980, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2810C4980))
  {
    std::string::basic_string[abi:ne200100]<0>(&v8, "ClassificationNone");
    v10 = 0;
    std::string::basic_string[abi:ne200100]<0>(v11, "ClassificationFloor");
    v11[24] = 1;
    std::string::basic_string[abi:ne200100]<0>(v12, "ClassificationWall");
    v12[24] = 2;
    std::string::basic_string[abi:ne200100]<0>(v13, "ClassificationCeiling");
    v13[24] = 3;
    std::string::basic_string[abi:ne200100]<0>(v14, "ClassificationDecoration");
    v14[24] = 4;
    std::string::basic_string[abi:ne200100]<0>(v15, "ClassificationElectricalAppliance");
    v15[24] = 5;
    std::string::basic_string[abi:ne200100]<0>(v16, "ClassificationDoor");
    v16[24] = 6;
    std::string::basic_string[abi:ne200100]<0>(v17, "ClassificationWindow");
    v17[24] = 7;
    std::string::basic_string[abi:ne200100]<0>(v18, "ClassificationBlind");
    v18[24] = 8;
    std::string::basic_string[abi:ne200100]<0>(v19, "ClassificationFireplace");
    v19[24] = 9;
    std::string::basic_string[abi:ne200100]<0>(v20, "ClassificationPerson");
    v20[24] = 10;
    std::string::basic_string[abi:ne200100]<0>(v21, "ClassificationMirror");
    v21[24] = 11;
    std::string::basic_string[abi:ne200100]<0>(v22, "ClassificationStairs");
    v22[24] = 12;
    std::string::basic_string[abi:ne200100]<0>(v23, "ClassificationBed");
    v23[24] = 13;
    std::string::basic_string[abi:ne200100]<0>(v24, "ClassificationCabinet");
    v24[24] = 14;
    std::string::basic_string[abi:ne200100]<0>(v25, "ClassificationChair");
    v25[24] = 15;
    std::string::basic_string[abi:ne200100]<0>(v26, "ClassificationCounter");
    v26[24] = 16;
    std::string::basic_string[abi:ne200100]<0>(v27, "ClassificationShelf");
    v27[24] = 17;
    std::string::basic_string[abi:ne200100]<0>(v28, "ClassificationSofa");
    v28[24] = 18;
    std::string::basic_string[abi:ne200100]<0>(v29, "ClassificationTable");
    v29[24] = 19;
    std::string::basic_string[abi:ne200100]<0>(v30, "ClassificationToilet");
    v30[24] = 20;
    std::string::basic_string[abi:ne200100]<0>(v31, "ClassificationSink");
    v31[24] = 21;
    std::string::basic_string[abi:ne200100]<0>(v32, "ClassificationBathtub");
    v32[24] = 22;
    std::string::basic_string[abi:ne200100]<0>(v33, "ClassificationShower");
    v33[24] = 23;
    std::string::basic_string[abi:ne200100]<0>(v34, "ClassificationRefrigerator");
    v34[24] = 24;
    std::string::basic_string[abi:ne200100]<0>(v35, "ClassificationStove");
    v35[24] = 25;
    std::string::basic_string[abi:ne200100]<0>(v36, "ClassificationWasherOrDryer");
    v36[24] = 26;
    std::string::basic_string[abi:ne200100]<0>(v37, "ClassificationOven");
    v37[24] = 27;
    std::string::basic_string[abi:ne200100]<0>(v38, "ClassificationDishwasher");
    v38[24] = 28;
    std::string::basic_string[abi:ne200100]<0>(v39, "ClassificationFurniture");
    v39[24] = 29;
    std::string::basic_string[abi:ne200100]<0>(v40, "ClassificationStorageBuiltin");
    v40[24] = 30;
    std::string::basic_string[abi:ne200100]<0>(v41, "ClassificationDoorFrame");
    v41[24] = 31;
    std::string::basic_string[abi:ne200100]<0>(v42, "ClassificationTVMonitor");
    v42[24] = 32;
    std::unordered_map<std::string,rf::synthetic::Classification>::unordered_map(&v8, 33);
    v7 = 1056;
    do
    {
      if (*(&v8 + v7 - 9) < 0)
      {
        operator delete(*(&v8 + v7 - 32));
      }

      v7 -= 32;
    }

    while (v7);
    __cxa_guard_release(&qword_2810C4980);
  }

  if (std::__hash_table<std::__hash_value_type<std::string,rf::synthetic::Classification>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,rf::synthetic::Classification>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,rf::synthetic::Classification>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,rf::synthetic::Classification>>>::find<std::string>(a1))
  {
    v2 = std::__hash_table<std::__hash_value_type<std::string,rf::synthetic::Classification>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,rf::synthetic::Classification>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,rf::synthetic::Classification>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,rf::synthetic::Classification>>>::find<std::string>(a1);
    if (!v2)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    result = *(v2 + 40);
  }

  else
  {
    v4 = rf::realityFusionLogObject(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 23) >= 0)
      {
        v6 = a1;
      }

      else
      {
        v6 = *a1;
      }

      v8 = 136315138;
      v9 = v6;
      _os_log_error_impl(&dword_2617CB000, v4, OS_LOG_TYPE_ERROR, "getClassificationFromString(): Invalid Classification string: %s", &v8, 0xCu);
    }

    result = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26181FC1C(_Unwind_Exception *a1)
{
  v3 = (v1 + 1047);
  v4 = -1056;
  v5 = v3;
  while (1)
  {
    v6 = *v5;
    v5 -= 32;
    if (v6 < 0)
    {
      operator delete(*(v3 - 23));
    }

    v3 = v5;
    v4 += 32;
    if (!v4)
    {
      __cxa_guard_abort(&qword_2810C4980);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t rf::synthetic::getMaterialFromString(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_2810C4988, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2810C4988))
  {
    std::string::basic_string[abi:ne200100]<0>(&v8, "MaterialAnimal");
    v10 = 0;
    std::string::basic_string[abi:ne200100]<0>(v11, "MaterialBrickwork");
    v11[24] = 1;
    std::string::basic_string[abi:ne200100]<0>(v12, "MaterialCarpet");
    v12[24] = 2;
    std::string::basic_string[abi:ne200100]<0>(v13, "MaterialCeilingTile");
    v13[24] = 3;
    std::string::basic_string[abi:ne200100]<0>(v14, "MaterialCeramic");
    v14[24] = 4;
    std::string::basic_string[abi:ne200100]<0>(v15, "MaterialConcrete");
    v15[24] = 5;
    std::string::basic_string[abi:ne200100]<0>(v16, "MaterialPolishedStone");
    v16[24] = 6;
    std::string::basic_string[abi:ne200100]<0>(v17, "MaterialFabric");
    v17[24] = 7;
    std::string::basic_string[abi:ne200100]<0>(v18, "MaterialFoliage");
    v18[24] = 8;
    std::string::basic_string[abi:ne200100]<0>(v19, "MaterialFood");
    v19[24] = 9;
    std::string::basic_string[abi:ne200100]<0>(v20, "MaterialGlass");
    v20[24] = 10;
    std::string::basic_string[abi:ne200100]<0>(v21, "MaterialLeather");
    v21[24] = 11;
    std::string::basic_string[abi:ne200100]<0>(v22, "MaterialMetal");
    v22[24] = 12;
    std::string::basic_string[abi:ne200100]<0>(v23, "MaterialMirror");
    v23[24] = 13;
    std::string::basic_string[abi:ne200100]<0>(v24, "MaterialPaint");
    v24[24] = 14;
    std::string::basic_string[abi:ne200100]<0>(v25, "MaterialPaper");
    v25[24] = 15;
    std::string::basic_string[abi:ne200100]<0>(v26, "MaterialClearPlastic");
    v26[24] = 16;
    std::string::basic_string[abi:ne200100]<0>(v27, "MaterialNonClearPlastic");
    v27[24] = 17;
    std::string::basic_string[abi:ne200100]<0>(v28, "MaterialRubber");
    v28[24] = 18;
    std::string::basic_string[abi:ne200100]<0>(v29, "MaterialSky");
    v29[24] = 19;
    std::string::basic_string[abi:ne200100]<0>(v30, "MaterialNaturalStone");
    v30[24] = 20;
    std::string::basic_string[abi:ne200100]<0>(v31, "MaterialTile");
    v31[24] = 21;
    std::string::basic_string[abi:ne200100]<0>(v32, "MaterialWater");
    v32[24] = 22;
    std::string::basic_string[abi:ne200100]<0>(v33, "MaterialWood");
    v33[24] = 23;
    std::string::basic_string[abi:ne200100]<0>(v34, "MaterialOther");
    v34[24] = 24;
    std::unordered_map<std::string,rf::synthetic::Material>::unordered_map(&v8, 25);
    v7 = 800;
    do
    {
      if (*(&v8 + v7 - 9) < 0)
      {
        operator delete(*(&v8 + v7 - 32));
      }

      v7 -= 32;
    }

    while (v7);
    __cxa_guard_release(&qword_2810C4988);
  }

  if (std::__hash_table<std::__hash_value_type<std::string,rf::synthetic::Material>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,rf::synthetic::Material>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,rf::synthetic::Material>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,rf::synthetic::Material>>>::find<std::string>(a1))
  {
    v2 = std::__hash_table<std::__hash_value_type<std::string,rf::synthetic::Material>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,rf::synthetic::Material>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,rf::synthetic::Material>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,rf::synthetic::Material>>>::find<std::string>(a1);
    if (!v2)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    result = *(v2 + 40);
  }

  else
  {
    v4 = rf::realityFusionLogObject(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 23) >= 0)
      {
        v6 = a1;
      }

      else
      {
        v6 = *a1;
      }

      v8 = 136315138;
      v9 = v6;
      _os_log_error_impl(&dword_2617CB000, v4, OS_LOG_TYPE_ERROR, "getMaterialFromString(): Invalid Material string: %s", &v8, 0xCu);
    }

    result = 24;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_261820154(_Unwind_Exception *a1)
{
  v3 = (v1 + 791);
  v4 = -800;
  v5 = v3;
  while (1)
  {
    v6 = *v5;
    v5 -= 32;
    if (v6 < 0)
    {
      operator delete(*(v3 - 23));
    }

    v3 = v5;
    v4 += 32;
    if (!v4)
    {
      __cxa_guard_abort(&qword_2810C4988);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_261820290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::allocator<std::string>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

BOOL std::unordered_map<std::string,rf::synthetic::SceneUnderstandingType>::unordered_map(_BOOL8 result, uint64_t a2)
{
  xmmword_2810C4990 = 0u;
  *&qword_2810C49A0 = 0u;
  dword_2810C49B0 = 1065353216;
  if (a2)
  {
    v2 = result;
    v12 = (result + 32 * a2);
    do
    {
      v3 = std::__string_hash<char>::operator()[abi:ne200100](&xmmword_2810C4990, v2);
      v4 = v3;
      v5 = *(&xmmword_2810C4990 + 1);
      if (!*(&xmmword_2810C4990 + 1))
      {
        goto LABEL_19;
      }

      v6 = vcnt_s8(*(&xmmword_2810C4990 + 8));
      v6.i16[0] = vaddlv_u8(v6);
      v7 = v6.u32[0];
      if (v6.u32[0] > 1uLL)
      {
        v8 = v3;
        if (v3 >= *(&xmmword_2810C4990 + 1))
        {
          v8 = v3 % *(&xmmword_2810C4990 + 1);
        }
      }

      else
      {
        v8 = (*(&xmmword_2810C4990 + 1) - 1) & v3;
      }

      v9 = *(xmmword_2810C4990 + 8 * v8);
      if (!v9 || (v10 = *v9) == 0)
      {
LABEL_19:
        operator new();
      }

      while (1)
      {
        v11 = v10[1];
        if (v11 == v4)
        {
          break;
        }

        if (v7 > 1)
        {
          if (v11 >= v5)
          {
            v11 %= v5;
          }
        }

        else
        {
          v11 &= v5 - 1;
        }

        if (v11 != v8)
        {
          goto LABEL_19;
        }

LABEL_18:
        v10 = *v10;
        if (!v10)
        {
          goto LABEL_19;
        }
      }

      result = std::equal_to<std::string>::operator()[abi:ne200100](&xmmword_2810C4990, v10 + 2, v2);
      if (!result)
      {
        goto LABEL_18;
      }

      v2 += 4;
    }

    while (v2 != v12);
  }

  return result;
}

void sub_2618208D4(_Unwind_Exception *a1)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,re::Matrix4x4<float>>,void *>>>::operator()[abi:ne200100](1, v1);
  std::__hash_table<std::__hash_value_type<std::string,rf::synthetic::SceneUnderstandingType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,rf::synthetic::SceneUnderstandingType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,rf::synthetic::SceneUnderstandingType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,rf::synthetic::SceneUnderstandingType>>>::~__hash_table();
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,rf::synthetic::SceneUnderstandingType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,rf::synthetic::SceneUnderstandingType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,rf::synthetic::SceneUnderstandingType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,rf::synthetic::SceneUnderstandingType>>>::~__hash_table()
{
  v0 = qword_2810C49A0;
  if (qword_2810C49A0)
  {
    do
    {
      v1 = *v0;
      if (*(v0 + 39) < 0)
      {
        operator delete(v0[2]);
      }

      operator delete(v0);
      v0 = v1;
    }

    while (v1);
  }

  v2 = xmmword_2810C4990;
  *&xmmword_2810C4990 = 0;
  if (v2)
  {

    operator delete(v2);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,rf::synthetic::SceneUnderstandingType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,rf::synthetic::SceneUnderstandingType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,rf::synthetic::SceneUnderstandingType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,rf::synthetic::SceneUnderstandingType>>>::find<std::string>(const void **a1)
{
  v2 = std::__string_hash<char>::operator()[abi:ne200100](&xmmword_2810C4990, a1);
  v3 = *(&xmmword_2810C4990 + 1);
  if (!*(&xmmword_2810C4990 + 1))
  {
    return 0;
  }

  v4 = v2;
  v5 = vcnt_s8(*(&xmmword_2810C4990 + 8));
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = v2;
    if (v2 >= *(&xmmword_2810C4990 + 1))
    {
      v7 = v2 % *(&xmmword_2810C4990 + 1);
    }
  }

  else
  {
    v7 = (*(&xmmword_2810C4990 + 1) - 1) & v2;
  }

  v8 = *(xmmword_2810C4990 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (i = *v8; i; i = *i)
  {
    v10 = i[1];
    if (v4 == v10)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](&xmmword_2810C4990, i + 2, a1))
      {
        return i;
      }
    }

    else
    {
      if (v6 > 1)
      {
        if (v10 >= v3)
        {
          v10 %= v3;
        }
      }

      else
      {
        v10 &= v3 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return i;
}

void *std::set<rf::synthetic::SceneUnderstandingType>::set[abi:ne200100](void *a1, unsigned __int8 *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v5 = a3;
    do
    {
      std::__tree<rf::synthetic::SceneUnderstandingType>::__emplace_hint_unique_key_args<rf::synthetic::SceneUnderstandingType,rf::synthetic::SceneUnderstandingType const&>(a1, v4, a2++);
      --v5;
    }

    while (v5);
  }

  return a1;
}

uint64_t std::__tree<rf::synthetic::SceneUnderstandingType>::__emplace_hint_unique_key_args<rf::synthetic::SceneUnderstandingType,rf::synthetic::SceneUnderstandingType const&>(void *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v3 = *std::__tree<rf::synthetic::SceneUnderstandingType>::__find_equal<rf::synthetic::SceneUnderstandingType>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<rf::synthetic::SceneUnderstandingType>::__find_equal<rf::synthetic::SceneUnderstandingType>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned __int8 *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 25), v6 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 25) < v15)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 25);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 25))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 25);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t *std::__tree<rf::synthetic::SceneUnderstandingType>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

void std::__tree<rf::synthetic::SceneUnderstandingType>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<rf::synthetic::SceneUnderstandingType>::destroy(a1, *a2);
    std::__tree<rf::synthetic::SceneUnderstandingType>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

BOOL std::unordered_map<std::string,rf::data_flow::PlaneAnchor::Alignment>::unordered_map(_BOOL8 result, uint64_t a2)
{
  xmmword_2810C49B8 = 0u;
  *&qword_2810C49C8 = 0u;
  dword_2810C49D8 = 1065353216;
  if (a2)
  {
    v2 = result;
    v12 = (result + 32 * a2);
    do
    {
      v3 = std::__string_hash<char>::operator()[abi:ne200100](&xmmword_2810C49B8, v2);
      v4 = v3;
      v5 = *(&xmmword_2810C49B8 + 1);
      if (!*(&xmmword_2810C49B8 + 1))
      {
        goto LABEL_19;
      }

      v6 = vcnt_s8(*(&xmmword_2810C49B8 + 8));
      v6.i16[0] = vaddlv_u8(v6);
      v7 = v6.u32[0];
      if (v6.u32[0] > 1uLL)
      {
        v8 = v3;
        if (v3 >= *(&xmmword_2810C49B8 + 1))
        {
          v8 = v3 % *(&xmmword_2810C49B8 + 1);
        }
      }

      else
      {
        v8 = (*(&xmmword_2810C49B8 + 1) - 1) & v3;
      }

      v9 = *(xmmword_2810C49B8 + 8 * v8);
      if (!v9 || (v10 = *v9) == 0)
      {
LABEL_19:
        operator new();
      }

      while (1)
      {
        v11 = v10[1];
        if (v11 == v4)
        {
          break;
        }

        if (v7 > 1)
        {
          if (v11 >= v5)
          {
            v11 %= v5;
          }
        }

        else
        {
          v11 &= v5 - 1;
        }

        if (v11 != v8)
        {
          goto LABEL_19;
        }

LABEL_18:
        v10 = *v10;
        if (!v10)
        {
          goto LABEL_19;
        }
      }

      result = std::equal_to<std::string>::operator()[abi:ne200100](&xmmword_2810C49B8, v10 + 2, v2);
      if (!result)
      {
        goto LABEL_18;
      }

      v2 += 4;
    }

    while (v2 != v12);
  }

  return result;
}

void sub_26182129C(_Unwind_Exception *a1)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,re::Matrix4x4<float>>,void *>>>::operator()[abi:ne200100](1, v1);
  std::__hash_table<std::__hash_value_type<std::string,rf::data_flow::PlaneAnchor::Alignment>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,rf::data_flow::PlaneAnchor::Alignment>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,rf::data_flow::PlaneAnchor::Alignment>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,rf::data_flow::PlaneAnchor::Alignment>>>::~__hash_table();
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,rf::data_flow::PlaneAnchor::Alignment>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,rf::data_flow::PlaneAnchor::Alignment>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,rf::data_flow::PlaneAnchor::Alignment>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,rf::data_flow::PlaneAnchor::Alignment>>>::~__hash_table()
{
  v0 = qword_2810C49C8;
  if (qword_2810C49C8)
  {
    do
    {
      v1 = *v0;
      if (*(v0 + 39) < 0)
      {
        operator delete(v0[2]);
      }

      operator delete(v0);
      v0 = v1;
    }

    while (v1);
  }

  v2 = xmmword_2810C49B8;
  *&xmmword_2810C49B8 = 0;
  if (v2)
  {

    operator delete(v2);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,rf::data_flow::PlaneAnchor::Alignment>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,rf::data_flow::PlaneAnchor::Alignment>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,rf::data_flow::PlaneAnchor::Alignment>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,rf::data_flow::PlaneAnchor::Alignment>>>::find<std::string>(const void **a1)
{
  v2 = std::__string_hash<char>::operator()[abi:ne200100](&xmmword_2810C49B8, a1);
  v3 = *(&xmmword_2810C49B8 + 1);
  if (!*(&xmmword_2810C49B8 + 1))
  {
    return 0;
  }

  v4 = v2;
  v5 = vcnt_s8(*(&xmmword_2810C49B8 + 8));
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = v2;
    if (v2 >= *(&xmmword_2810C49B8 + 1))
    {
      v7 = v2 % *(&xmmword_2810C49B8 + 1);
    }
  }

  else
  {
    v7 = (*(&xmmword_2810C49B8 + 1) - 1) & v2;
  }

  v8 = *(xmmword_2810C49B8 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (i = *v8; i; i = *i)
  {
    v10 = i[1];
    if (v4 == v10)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](&xmmword_2810C49B8, i + 2, a1))
      {
        return i;
      }
    }

    else
    {
      if (v6 > 1)
      {
        if (v10 >= v3)
        {
          v10 %= v3;
        }
      }

      else
      {
        v10 &= v3 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return i;
}

BOOL std::unordered_map<std::string,rf::data_flow::PlaneAnchor::Classification>::unordered_map(_BOOL8 result, uint64_t a2)
{
  xmmword_2810C49E0 = 0u;
  *&qword_2810C49F0 = 0u;
  dword_2810C4A00 = 1065353216;
  if (a2)
  {
    v2 = result;
    v12 = (result + 32 * a2);
    do
    {
      v3 = std::__string_hash<char>::operator()[abi:ne200100](&xmmword_2810C49E0, v2);
      v4 = v3;
      v5 = *(&xmmword_2810C49E0 + 1);
      if (!*(&xmmword_2810C49E0 + 1))
      {
        goto LABEL_19;
      }

      v6 = vcnt_s8(*(&xmmword_2810C49E0 + 8));
      v6.i16[0] = vaddlv_u8(v6);
      v7 = v6.u32[0];
      if (v6.u32[0] > 1uLL)
      {
        v8 = v3;
        if (v3 >= *(&xmmword_2810C49E0 + 1))
        {
          v8 = v3 % *(&xmmword_2810C49E0 + 1);
        }
      }

      else
      {
        v8 = (*(&xmmword_2810C49E0 + 1) - 1) & v3;
      }

      v9 = *(xmmword_2810C49E0 + 8 * v8);
      if (!v9 || (v10 = *v9) == 0)
      {
LABEL_19:
        operator new();
      }

      while (1)
      {
        v11 = v10[1];
        if (v11 == v4)
        {
          break;
        }

        if (v7 > 1)
        {
          if (v11 >= v5)
          {
            v11 %= v5;
          }
        }

        else
        {
          v11 &= v5 - 1;
        }

        if (v11 != v8)
        {
          goto LABEL_19;
        }

LABEL_18:
        v10 = *v10;
        if (!v10)
        {
          goto LABEL_19;
        }
      }

      result = std::equal_to<std::string>::operator()[abi:ne200100](&xmmword_2810C49E0, v10 + 2, v2);
      if (!result)
      {
        goto LABEL_18;
      }

      v2 += 4;
    }

    while (v2 != v12);
  }

  return result;
}

void sub_2618218F8(_Unwind_Exception *a1)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,re::Matrix4x4<float>>,void *>>>::operator()[abi:ne200100](1, v1);
  std::__hash_table<std::__hash_value_type<std::string,rf::data_flow::PlaneAnchor::Classification>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,rf::data_flow::PlaneAnchor::Classification>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,rf::data_flow::PlaneAnchor::Classification>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,rf::data_flow::PlaneAnchor::Classification>>>::~__hash_table();
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,rf::data_flow::PlaneAnchor::Classification>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,rf::data_flow::PlaneAnchor::Classification>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,rf::data_flow::PlaneAnchor::Classification>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,rf::data_flow::PlaneAnchor::Classification>>>::~__hash_table()
{
  v0 = qword_2810C49F0;
  if (qword_2810C49F0)
  {
    do
    {
      v1 = *v0;
      if (*(v0 + 39) < 0)
      {
        operator delete(v0[2]);
      }

      operator delete(v0);
      v0 = v1;
    }

    while (v1);
  }

  v2 = xmmword_2810C49E0;
  *&xmmword_2810C49E0 = 0;
  if (v2)
  {

    operator delete(v2);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,rf::data_flow::PlaneAnchor::Classification>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,rf::data_flow::PlaneAnchor::Classification>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,rf::data_flow::PlaneAnchor::Classification>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,rf::data_flow::PlaneAnchor::Classification>>>::find<std::string>(const void **a1)
{
  v2 = std::__string_hash<char>::operator()[abi:ne200100](&xmmword_2810C49E0, a1);
  v3 = *(&xmmword_2810C49E0 + 1);
  if (!*(&xmmword_2810C49E0 + 1))
  {
    return 0;
  }

  v4 = v2;
  v5 = vcnt_s8(*(&xmmword_2810C49E0 + 8));
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = v2;
    if (v2 >= *(&xmmword_2810C49E0 + 1))
    {
      v7 = v2 % *(&xmmword_2810C49E0 + 1);
    }
  }

  else
  {
    v7 = (*(&xmmword_2810C49E0 + 1) - 1) & v2;
  }

  v8 = *(xmmword_2810C49E0 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (i = *v8; i; i = *i)
  {
    v10 = i[1];
    if (v4 == v10)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](&xmmword_2810C49E0, i + 2, a1))
      {
        return i;
      }
    }

    else
    {
      if (v6 > 1)
      {
        if (v10 >= v3)
        {
          v10 %= v3;
        }
      }

      else
      {
        v10 &= v3 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return i;
}

BOOL std::unordered_map<std::string,rf::synthetic::Classification>::unordered_map(_BOOL8 result, uint64_t a2)
{
  xmmword_2810C4A08 = 0u;
  *&qword_2810C4A18 = 0u;
  dword_2810C4A28 = 1065353216;
  if (a2)
  {
    v2 = result;
    v12 = (result + 32 * a2);
    do
    {
      v3 = std::__string_hash<char>::operator()[abi:ne200100](&xmmword_2810C4A08, v2);
      v4 = v3;
      v5 = *(&xmmword_2810C4A08 + 1);
      if (!*(&xmmword_2810C4A08 + 1))
      {
        goto LABEL_19;
      }

      v6 = vcnt_s8(*(&xmmword_2810C4A08 + 8));
      v6.i16[0] = vaddlv_u8(v6);
      v7 = v6.u32[0];
      if (v6.u32[0] > 1uLL)
      {
        v8 = v3;
        if (v3 >= *(&xmmword_2810C4A08 + 1))
        {
          v8 = v3 % *(&xmmword_2810C4A08 + 1);
        }
      }

      else
      {
        v8 = (*(&xmmword_2810C4A08 + 1) - 1) & v3;
      }

      v9 = *(xmmword_2810C4A08 + 8 * v8);
      if (!v9 || (v10 = *v9) == 0)
      {
LABEL_19:
        operator new();
      }

      while (1)
      {
        v11 = v10[1];
        if (v11 == v4)
        {
          break;
        }

        if (v7 > 1)
        {
          if (v11 >= v5)
          {
            v11 %= v5;
          }
        }

        else
        {
          v11 &= v5 - 1;
        }

        if (v11 != v8)
        {
          goto LABEL_19;
        }

LABEL_18:
        v10 = *v10;
        if (!v10)
        {
          goto LABEL_19;
        }
      }

      result = std::equal_to<std::string>::operator()[abi:ne200100](&xmmword_2810C4A08, v10 + 2, v2);
      if (!result)
      {
        goto LABEL_18;
      }

      v2 += 4;
    }

    while (v2 != v12);
  }

  return result;
}

void sub_261821F54(_Unwind_Exception *a1)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,re::Matrix4x4<float>>,void *>>>::operator()[abi:ne200100](1, v1);
  std::__hash_table<std::__hash_value_type<std::string,rf::synthetic::Classification>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,rf::synthetic::Classification>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,rf::synthetic::Classification>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,rf::synthetic::Classification>>>::~__hash_table();
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,rf::synthetic::Classification>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,rf::synthetic::Classification>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,rf::synthetic::Classification>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,rf::synthetic::Classification>>>::~__hash_table()
{
  v0 = qword_2810C4A18;
  if (qword_2810C4A18)
  {
    do
    {
      v1 = *v0;
      if (*(v0 + 39) < 0)
      {
        operator delete(v0[2]);
      }

      operator delete(v0);
      v0 = v1;
    }

    while (v1);
  }

  v2 = xmmword_2810C4A08;
  *&xmmword_2810C4A08 = 0;
  if (v2)
  {

    operator delete(v2);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,rf::synthetic::Classification>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,rf::synthetic::Classification>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,rf::synthetic::Classification>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,rf::synthetic::Classification>>>::find<std::string>(const void **a1)
{
  v2 = std::__string_hash<char>::operator()[abi:ne200100](&xmmword_2810C4A08, a1);
  v3 = *(&xmmword_2810C4A08 + 1);
  if (!*(&xmmword_2810C4A08 + 1))
  {
    return 0;
  }

  v4 = v2;
  v5 = vcnt_s8(*(&xmmword_2810C4A08 + 8));
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = v2;
    if (v2 >= *(&xmmword_2810C4A08 + 1))
    {
      v7 = v2 % *(&xmmword_2810C4A08 + 1);
    }
  }

  else
  {
    v7 = (*(&xmmword_2810C4A08 + 1) - 1) & v2;
  }

  v8 = *(xmmword_2810C4A08 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (i = *v8; i; i = *i)
  {
    v10 = i[1];
    if (v4 == v10)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](&xmmword_2810C4A08, i + 2, a1))
      {
        return i;
      }
    }

    else
    {
      if (v6 > 1)
      {
        if (v10 >= v3)
        {
          v10 %= v3;
        }
      }

      else
      {
        v10 &= v3 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return i;
}