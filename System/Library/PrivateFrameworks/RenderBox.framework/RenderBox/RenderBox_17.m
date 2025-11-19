uint64_t RB::CGContext::add_soft_mask(RB::CGContext::SoftMaskMode,RB::Rect,void const*,void (*)(RB::CGContext&,void const*))::$_0::__invoke()
{
  CGContextGetDelegate();
  CGContextGetRenderingState();
  CGContextGetGState();

  return CGSoftMaskDelegateDrawSoftMask();
}

const void **RB::CGContext::add_soft_mask(RB::CGContext::SoftMaskMode,RB::Rect,void const*,void (*)(RB::CGContext&,void const*))::$_1::__invoke(const void **result)
{
  if (result)
  {
    v1 = *result;
    if (v1)
    {
      CFRelease(v1);
    }

    JUMPOUT(0x19A8C09E0);
  }

  return result;
}

void RB::CGContext::add_alpha_mask(RB::CGContext *this, CGImage *a2, float32x2_t *a3)
{
  Type = *(this + 38);
  if (Type < 0)
  {
    Type = CGContextGetType();
    *(this + 38) = Type;
  }

  if ((Type - 1) > 1)
  {
    v9 = *this;
    v10 = COERCE_FLOAT(*a3);
    v11 = COERCE_FLOAT(HIDWORD(*a3));
    v12 = COERCE_FLOAT(*&a3[1]);
    v13 = COERCE_FLOAT(HIDWORD(*&a3[1]));
    v14 = RB::cg_image_alpha_mask(a2, a2);
    v15 = v10;
    v16 = v11;
    v17 = v12;
    v18 = v13;

    CGContextClipToMask(v9, *&v15, v14);
  }

  else
  {
    v7 = *a3;
    v8 = a3[1];
    v19[0] = a2;
    v19[1] = a3;
    RB::CGContext::add_soft_mask(this, 0, v19, RB::CGContext::add_soft_mask<RB::CGContext::add_alpha_mask(CGImage *,RB::Rect const&)::$_0>(RB::CGContext::SoftMaskMode,RB::Rect,RB::CGContext::add_alpha_mask(CGImage *,RB::Rect const&)::$_0 const&)::{lambda(RB::CGContext&,void const*)#1}::__invoke, v7, v8);
  }
}

CGContextRef RB::CGContext::create_bitmap@<X0>(int a1@<W0>, __int16 a2@<W1>, CGContextRef *a3@<X8>, double a4@<D0>, float a5@<S1>)
{
  *a3 = 0;
  if (a1)
  {
    if ((a2 & 0x100) != 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = 17;
    }

    if ((v7 & 0xE0) != 0)
    {
      v7 = v7 & 0xF | 0x10;
    }

    v17 = v7;
    v8 = 8;
    if (a1 == 1)
    {
      v9 = 8194;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    if (a1 == 2)
    {
      v10 = 16;
    }

    else
    {
      v10 = v8;
    }

    if (a1 == 2)
    {
      v11 = 4353;
    }

    else
    {
      v11 = v9;
    }

    v12 = a1 == 2;
    v13 = RB::ColorSpace::cg_color_space(&v17, v12);
    result = CGBitmapContextCreate(0, SLODWORD(a4), SHIDWORD(a4), v10, 0, v13, v11);
    *a3 = result;
    if (a5 > 1.0 && v12)
    {
      return CGContextSetEDRTargetHeadroom();
    }
  }

  else
  {
    result = CGBitmapContextCreate(0, SLODWORD(a4), SHIDWORD(a4), 8uLL, 0, 0, 7u);
    *a3 = result;
  }

  return result;
}

void sub_195DE1C58(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

void RB::CGContext::apply_scale(CGContext **a1, CGContext *a2, double a3)
{
  v11 = *MEMORY[0x1E69E9840];
  RB::vImageBuffer::vImageBuffer(&src, *a1);
  RB::vImageBuffer::vImageBuffer(&dest, a2);
  transform.a = *&a3;
  *&transform.b = 0;
  transform.d = *(&a3 + 1);
  *&transform.tx = 0;
  v5 = RB::CGContext::bitmap_format(a1);
  if ((v5 & 0x100000000) != 0)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *backColor = 0;
        vImageAffineWarp_ARGB8888(&src, &dest, 0, &transform, backColor, 8u);
      }

      else if (v5 == 2)
      {
        *backColor = 0;
        vImageAffineWarp_ARGB16F(&src, &dest, 0, &transform, backColor, 8u);
      }
    }

    else
    {
      vImageAffineWarp_Planar8(&src, &dest, 0, &transform, 0, 8u);
    }
  }

  RB::vImageBuffer::~vImageBuffer(&dest.data);
  RB::vImageBuffer::~vImageBuffer(&src.data);
}

void sub_195DE1D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  RB::vImageBuffer::~vImageBuffer(va);
  RB::vImageBuffer::~vImageBuffer((v7 - 72));
  _Unwind_Resume(a1);
}

void RB::CGContext::apply_projection_matrix(RB::CGContext *this, const RB::Rect *a2, const RB::ProjectionMatrix *a3)
{
  backColor[1] = *MEMORY[0x1E69E9840];
  v6 = RB::CGContext::bitmap_format(this);
  if ((v6 & 0x100000000) != 0)
  {
    v7 = v6;
    if (v6 == 1)
    {
      v8 = 32;
    }

    else
    {
      v8 = 8;
    }

    if (v6 == 2)
    {
      v9 = 64;
    }

    else
    {
      v9 = v8;
    }

    RB::vImageBuffer::vImageBuffer(&src, *this);
    v10 = *(a3 + 1);
    *v16 = *a3;
    *&v16[16] = v10;
    v17 = *(a3 + 8);
    RB::ProjectionMatrix::translate(v16, COERCE_FLOAT(*a2), COERCE_FLOAT(HIDWORD(*a2)));
    v11.n64_f32[0] = -COERCE_FLOAT(*a2);
    RB::ProjectionMatrix::translate_right(v16, v11, -COERCE_FLOAT(HIDWORD(*a2)));
    *&v12 = *v16;
    *(&v12 + 1) = *&v16[12];
    *&v13 = *&v16[24];
    *(&v13 + 1) = __PAIR64__(*&v16[20], *&v16[8]);
    *&transform.a = v12;
    *&transform.tx = v13;
    transform.v = v17;
    RB::vImageBuffer::vImageBuffer(&dest);
    if (dest.data)
    {
      vImageCopyBuffer(&src, &dest, v9 >> 3, 0);
      switch(v7)
      {
        case 2:
          backColor[0] = 0;
          vImagePerspectiveWarp_ARGB16F(&dest, &src, 0, &transform, 1, backColor, 4u);
          break;
        case 1:
          LODWORD(backColor[0]) = 0;
          vImagePerspectiveWarp_ARGB8888(&dest, &src, 0, &transform, 1, backColor, 4u);
          break;
        case 0:
          vImagePerspectiveWarp_Planar8(&dest, &src, 0, &transform, 1, 0, 4u);
          break;
      }
    }

    RB::vImageBuffer::~vImageBuffer(&dest.data);
    RB::vImageBuffer::~vImageBuffer(&src.data);
  }
}

void sub_195DE1F98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  RB::vImageBuffer::~vImageBuffer(va);
  RB::vImageBuffer::~vImageBuffer((v2 - 104));
  _Unwind_Resume(a1);
}

void RB::CGContext::apply_blur(RB::CGContext *this, float a2, char a3)
{
  v71[32] = *MEMORY[0x1E69E9840];
  if (a2 > 0.0)
  {
    v6 = RB::CGContext::bitmap_format(this);
    if ((v6 & 0x100000000) != 0)
    {
      v7 = v6;
      v8 = RB::vImageBuffer::vImageBuffer(&v70, *this);
      v10 = ceilf(a2 * 2.8);
      if (v10 > 1024.0)
      {
        v10 = 1024.0;
      }

      v11 = v10;
      if ((2 * v11) < 0x400)
      {
        MEMORY[0x1EEE9AC00](v8, v9);
        v12 = &v57.i8[-((v51 + 15) & 0x7FFFFFFF0)];
        bzero(v12, v51);
        if (v11)
        {
LABEL_8:
          *v13.i32 = a2 * a2;
          v14 = vdupq_n_s64(v11 - 1);
          v60 = vdupq_n_s32(v11);
          v15 = (v11 + 3) & 0x1FFFFFFFCLL;
          __asm { FMOV            V1.4S, #1.0 }

          v21 = vdivq_f32(_Q1, vdupq_lane_s32(v13, 0));
          v22 = xmmword_195E45750;
          v23 = xmmword_195E45760;
          v24 = xmmword_195E45770;
          v25 = v12 + 8;
          v26 = 0uLL;
          v27.i64[0] = 0xBF000000BF000000;
          v27.i64[1] = 0xBF000000BF000000;
          v58 = vdupq_n_s64(4uLL);
          v59 = vmulq_f32(v27, v21);
          v28 = 0uLL;
          v61 = v14;
          do
          {
            v66 = v23;
            v67 = v22;
            v63 = v26;
            v64 = v28;
            v29 = vcgeq_u64(v14, v23);
            v57 = v29;
            v30 = vmovn_s64(v29);
            *v29.i8 = vuzp1_s16(v30, *v29.i8);
            v62 = v29;
            v65 = v24;
            v31 = vcvtq_f32_s32(vsubq_s32(v24, v60));
            v69 = vmulq_f32(vmulq_f32(v31, v31), v59);
            v32.f32[0] = expf(v69.f32[1]);
            v68 = v32;
            v33.f32[0] = expf(v69.f32[0]);
            v33.i32[1] = v68.i32[0];
            v68 = v33;
            v34 = expf(v69.f32[2]);
            v35 = v68;
            v35.f32[2] = v34;
            v68 = v35;
            v36 = expf(v69.f32[3]);
            v37 = v68;
            v37.f32[3] = v36;
            v38 = *v62.i8;
            if (v62.i8[0])
            {
              *(v25 - 2) = v68.i32[0];
            }

            v39 = v67;
            if (vuzp1_s16(v30, v38).i8[2])
            {
              *(v25 - 1) = v37.i32[1];
            }

            v14 = v61;
            v40 = vcgeq_u64(v61, v39);
            v42 = v65;
            v41 = v66;
            v44 = v63;
            v43 = v64;
            if (vuzp1_s16(*&v40, vmovn_s64(v40)).i32[1])
            {
              *v25 = v37.i64[1];
            }

            v28 = vaddq_f64(v43, vcvt_hight_f64_f32(v37));
            v26 = vaddq_f64(v44, vcvtq_f64_f32(*v37.f32));
            v22 = vaddq_s64(v39, v58);
            v23 = vaddq_s64(v41, v58);
            v45.i64[0] = 0x400000004;
            v45.i64[1] = 0x400000004;
            v24 = vaddq_s32(v42, v45);
            v25 += 2;
            v15 -= 4;
          }

          while (v15);
          v46 = vaddvq_f64(vaddq_f64(vbslq_s8(v57, v26, v44), vbslq_s8(v40, v28, v43))) * 2.0 + 1.0;
          *&v12[4 * v11] = 1065353216;
          v47 = v11 + 1;
          if ((v11 + 1) > 2)
          {
            v48 = (v11 + 1);
          }

          else
          {
            v48 = 2;
          }

          v49 = v11 - 1;
          v50 = v48 - 1;
          do
          {
            *&v12[4 * v47++] = *&v12[4 * v49--];
            --v50;
          }

          while (v50);
LABEL_24:
          v52 = 0;
          v53 = 1.0 / v46;
          do
          {
            *&v12[v52] = *&v12[v52] * v53;
            v52 += 4;
          }

          while (4 * (2 * v11) + 4 != v52);
          if (v7)
          {
            if (v7 == 1)
            {
              RB::separable_convolve(&v70, &v70, v12, (2 * v11) | 1);
              if (a3)
              {
                vImageUnpremultiplyData_RGBA8888(&v70, &v70, 0);
                vImageOverwriteChannelsWithScalar_ARGB8888(0xFFu, &v70, &v70, 1u, 0);
              }
            }

            else if (v7 == 2)
            {
              _ZN2RB18separable_convolveIDv4_DF16_NS_15ConvolveSampler13clamp_to_zeroEEEvRKNS_18Typed_vImageBufferIT_EERS6_PKfjT0_(&v70.data, &v70, v12, (2 * v11) | 1);
              if (a3)
              {
                vImageUnpremultiplyData_RGBA16F(&v70, &v70, 0);
                v71[0] = 0x3C00000000000000;
                vImageOverwriteChannelsWithPixel_ARGB16U(v71, &v70, &v70, 1u, 0);
              }
            }
          }

          else
          {
            RB::separable_convolve(&v70, &v70, v12, (2 * v11) | 1);
            if ((a3 & 2) != 0)
            {
              v54 = 0;
              v55 = xmmword_195E45780;
              v56.i64[0] = 0x1010101010101010;
              v56.i64[1] = 0x1010101010101010;
              do
              {
                *&v71[v54] = vmvnq_s8(v55);
                v54 += 2;
                v55 = vaddq_s8(v55, v56);
              }

              while (v54 != 32);
              vImageTableLookUp_Planar8(&v70, &v70, v71, 0);
            }
          }

          if ((2 * v11) < 0x400)
          {
            goto LABEL_39;
          }

          goto LABEL_38;
        }
      }

      else
      {
        v12 = malloc_type_malloc(4 * ((2 * v11) | 1u), 0x100004052888210uLL);
        if (!v12)
        {
LABEL_38:
          free(v12);
LABEL_39:
          RB::vImageBuffer::~vImageBuffer(&v70.data);
          return;
        }

        if (v11)
        {
          goto LABEL_8;
        }
      }

      *&v12[4 * v11] = 1065353216;
      v46 = 1.0;
      goto LABEL_24;
    }
  }
}

void sub_195DE2434(_Unwind_Exception *a1)
{
  if (v3 >= 0x400)
  {
    free(v2);
  }

  RB::vImageBuffer::~vImageBuffer((v1 + 208));
  _Unwind_Resume(a1);
}

void _ZN2RB18separable_convolveIDv4_DF16_NS_15ConvolveSampler13clamp_to_zeroEEEvRKNS_18Typed_vImageBufferIT_EERS6_PKfjT0_(void **a1, char *a2, uint64_t a3, int a4)
{
  v5 = a1[2];
  if (v5 != *(a2 + 2) || (a4 & 1) == 0 || ((v7 = a2, a2 = a1[1], a2 == v7[1]) ? (v9 = *a1 == 0) : (v9 = 1), !v9 ? (v10 = *v7 == 0) : (v10 = 1), v10))
  {
    _ZN2RB18separable_convolveIDv4_DF16_NS_15ConvolveSampler13clamp_to_zeroEEEvRKNS_18Typed_vImageBufferIT_EERS6_PKfjT0__cold_1(a1, a2);
  }

  if (v5 && a2)
  {
    RB::vImageBuffer::vImageBuffer(&v13);
    if (v13)
    {
      v16 = a1;
      v17 = &v13;
      v18 = a3;
      v19 = a4;
      v12 = a1[1];
      v11 = a1[2];
      v20 = &v16;
      context = &v20;
      v22 = v11;
      v23 = v12;
      v24 = (v11 + 127) >> 7;
      v25 = (v12 + 127) >> 7;
      dispatch_apply_f(v25 * v24, 0, &context, _ZZN2RB20dispatch_apply_tilesIZNS_21dispatch_apply_pixelsIZZNS_18separable_convolveIDv4_DF16_NS_15ConvolveSampler13clamp_to_zeroEEEvRKNS_18Typed_vImageBufferIT_EERS8_PKfjT0_ENKUlRKNS6_IS3_EERSF_E_clESH_SI_EUlmmE_EEvmmRKS7_EUlmmmmE_EEvmmSM_ENUlPvmE_8__invokeESO_m);
      v16 = &v13;
      v17 = v7;
      v18 = a3;
      v19 = a4;
      v20 = &v16;
      context = &v20;
      v22 = v15;
      v23 = v14;
      v24 = (v15 + 127) >> 7;
      v25 = (v14 + 127) >> 7;
      dispatch_apply_f(v25 * v24, 0, &context, _ZZN2RB20dispatch_apply_tilesIZNS_21dispatch_apply_pixelsIZZNS_18separable_convolveIDv4_DF16_NS_15ConvolveSampler13clamp_to_zeroEEEvRKNS_18Typed_vImageBufferIT_EERS8_PKfjT0_ENKUlRKNS6_IS3_EERSF_E_clESH_SI_EUlmmE_EEvmmRKS7_EUlmmmmE_EEvmmSM_ENUlPvmE_8__invokeESO_m);
    }

    RB::vImageBuffer::~vImageBuffer(&v13);
  }
}

void RB::CGContext::apply_color_conversion(CGContext **a1, unsigned __int16 *a2)
{
  v2 = *a2;
  if ((v2 & 0x1C0) != 0 || ((v2 ^ (v2 >> 3)) & 7) != 0)
  {
    RB::vImageBuffer::vImageBuffer(&v10, *a1);
    v6 = RB::CGContext::bitmap_format(a1);
    if ((v6 & 0x100000000) != 0)
    {
      if (v6 == 1)
      {
        v9 = a2;
        v13 = &v10;
        v14 = &v9;
        context = &v13;
        v16 = v12;
        v17 = v11;
        v18 = (v12 + 127) >> 7;
        v19 = (v11 + 127) >> 7;
        v7 = v19 * v18;
        v8 = RB::dispatch_apply_tiles<void RB::Typed_vImageBuffer<unsigned int>::apply_pixel_values<RB::CGContext::apply_color_conversion(RB::ColorSpace::Conversion const&)::$_0>(RB::CGContext::apply_color_conversion(RB::ColorSpace::Conversion const&)::$_0 const&)::{lambda(unsigned long,unsigned long,unsigned long,unsigned long)#1}>(unsigned long,unsigned long,RB::CGContext::apply_color_conversion(RB::ColorSpace::Conversion const&)::$_0 const&)::{lambda(void *,unsigned long)#1}::__invoke;
        goto LABEL_10;
      }

      if (v6 == 2)
      {
        v9 = a2;
        v13 = &v10;
        v14 = &v9;
        context = &v13;
        v16 = v12;
        v17 = v11;
        v18 = (v12 + 127) >> 7;
        v19 = (v11 + 127) >> 7;
        v7 = v19 * v18;
        v8 = _ZZN2RB20dispatch_apply_tilesIZNS_18Typed_vImageBufferIDv4_DF16_E18apply_pixel_valuesIZNS_9CGContext22apply_color_conversionERKNS_10ColorSpace10ConversionEE3__1EEvRKT_EUlmmmmE_EEvmmSD_ENUlPvmE_8__invokeESF_m;
LABEL_10:
        dispatch_apply_f(v7, 0, &context, v8);
      }
    }

    RB::vImageBuffer::~vImageBuffer(&v10);
  }
}

void sub_195DE26C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  RB::vImageBuffer::~vImageBuffer(va);
  _Unwind_Resume(a1);
}

void RB::CGContext::apply_color_matrix(CGContext **this, float16x4_t *a2, int a3)
{
  v54 = *MEMORY[0x1E69E9840];
  if ((RB::ColorMatrix::is_identity(a2) & 1) == 0)
  {
    RB::vImageBuffer::vImageBuffer(&src, *this);
    v6 = RB::CGContext::bitmap_format(this);
    if ((v6 & 0x100000000) != 0 && v6 == 1)
    {
      if (RB::ColorMatrix::is_alpha_multiply(a2, a3))
      {
        context = 0uLL;
        v52.i64[0] = 0;
        v9.n64_u64[0] = RB::ColorMatrix::alpha_multiply_color(a2, a3).n64_u64[0];
        v10 = 0;
        p_dest = 0;
        v12 = vdup_lane_s16(v9.n64_u64[0], 3);
        v12.i16[3] = COERCE_UNSIGNED_INT(1.0);
        v13 = vmul_f16(v12, v9.n64_u64[0]);
        if (a3)
        {
          v14 = -1;
        }

        else
        {
          v14 = 0;
        }

        v15.i64[0] = 0x3F0000003F000000;
        v15.i64[1] = 0x3F0000003F000000;
        v16 = vrev32_s16(vmovn_s32(vcvtq_s32_f32(vmlaq_f32(v15, vdupq_n_s32(0x43800000u), vcvtq_f32_f16(vbsl_s8(vdup_n_s16(v14), v9.n64_u64[0], v13))))));
        v52.u64[1] = vext_s8(v16, v16, 6uLL);
      }

      else if ((a3 & 1) != 0 || !RB::ColorMatrix::is_alpha_identity(a2))
      {
        v29 = vdupq_n_s32(0x43800000u);
        v30.i64[0] = 0x3F0000003F000000;
        v30.i64[1] = 0x3F0000003F000000;
        v31.i64[0] = 0x3F0000003F000000;
        v31.i64[1] = 0x3F0000003F000000;
        v32.i64[0] = 0x3F0000003F000000;
        v32.i64[1] = 0x3F0000003F000000;
        v33 = vmovn_s32(vcvtq_s32_f32(vmlaq_f32(v31, v29, vcvtq_f32_f16(a2[2]))));
        v34 = vmovn_s32(vcvtq_s32_f32(vmlaq_f32(v32, v29, vcvtq_f32_f16(a2[1]))));
        v35 = vqtbl2q_s8(*(&v7 - 1), xmmword_195E45790);
        v32.i64[0] = 0x3F0000003F000000;
        v32.i64[1] = 0x3F0000003F000000;
        v36 = vcvtq_s32_f32(vmlaq_f32(v32, v29, vcvtq_f32_f16(*a2)));
        v32.i64[0] = 0x3F0000003F000000;
        v32.i64[1] = 0x3F0000003F000000;
        v37 = vmovn_s32(v36);
        v38 = vmovn_s32(vcvtq_s32_f32(vmlaq_f32(v32, v29, vcvtq_f32_f16(a2[3]))));
        context = v35;
        v52 = vqtbl2q_s8(*(&v7 - 1), xmmword_195E45790);
        v39 = a2[4];
        v40 = vmaxv_u16(vmvn_s8(vceqz_f16(v39)));
        if ((v40 & 0x8000) != 0)
        {
          v41 = vcvtq_s32_f32(vmlaq_f32(v30, vdupq_n_s32(0x47800000u), vcvtq_f32_f16(v39)));
          v42.i64[0] = 0x8000000080;
          v42.i64[1] = 0x8000000080;
          v43 = vrev64q_s32(vaddq_s32(v41, v42));
          *&dest.data = vextq_s8(v43, v43, 0xCuLL);
        }

        if ((a3 & 1) == 0)
        {
          vImageUnpremultiplyData_RGBA8888(&src, &src, 0);
        }

        v10 = a3 ^ 1;
        if ((v40 & 0x8000) != 0)
        {
          p_dest = &dest;
        }

        else
        {
          p_dest = 0;
        }
      }

      else
      {
        v10 = 0;
        p_dest = 0;
        v18 = vdupq_n_s32(0x43800000u);
        v19 = a2[4];
        v20.i64[0] = 0x3F0000003F000000;
        v20.i64[1] = 0x3F0000003F000000;
        v55.val[0] = vcvtq_s32_f32(vmlaq_f32(v20, v18, vcvtq_f32_f16(a2[2])));
        v55.val[1] = vcvtq_f32_f16(a2[1]);
        v20.i64[0] = 0x3F0000003F000000;
        v20.i64[1] = 0x3F0000003F000000;
        *v55.val[0].i8 = vmovn_s32(v55.val[0]);
        *v55.val[1].i8 = vmovn_s32(vcvtq_s32_f32(vmlaq_f32(v20, v18, v55.val[1])));
        v20.i64[0] = 0x3F0000003F000000;
        v20.i64[1] = 0x3F0000003F000000;
        v55.val[0] = vqtbl2q_s8(v55, xmmword_195E45790);
        v21.i64[0] = 0x3F0000003F000000;
        v21.i64[1] = 0x3F0000003F000000;
        v22 = vmlaq_f32(v21, v18, vcvtq_f32_f16(*a2));
        v55.val[1] = vcvtq_s32_f32(v22);
        v19.i16[3] = COERCE_UNSIGNED_INT(1.0);
        *v55.val[1].i8 = vmovn_s32(v55.val[1]);
        *v22.f32 = vmovn_s32(vcvtq_s32_f32(vmlaq_f32(v20, v18, vcvtq_f32_f16(v19))));
        context = v55.val[0];
        v52 = vqtbl2q_s8(*(&v55 + 16), xmmword_195E45790);
      }

      vImageMatrixMultiply_ARGB8888(&src, &src, context.i16, 256, 0, p_dest, 0);
      if (v10)
      {
        vImagePremultiplyData_RGBA8888(&src, &src, 0);
      }

      else
      {
        vImageClipToAlpha_RGBA8888(&src, &src, 0);
      }
    }

    else if ((v6 & 0x100000000) != 0 && v6 == 2)
    {
      RB::vImageBuffer::vImageBuffer(&dest, &src);
      if ((a3 & 1) != 0 || !RB::ColorMatrix::has_alpha(a2))
      {
        v17 = 0;
      }

      else
      {
        vImageUnpremultiplyData_RGBA16F(&dest, &dest, 0);
        v17 = 1;
      }

      v24 = a2[3];
      v23 = a2[4];
      if (v17 | a3)
      {
        v25 = -1;
      }

      else
      {
        v25 = 0;
      }

      v26 = vdup_n_s16(v25);
      v27 = vand_s8(v23, v26);
      v23.i16[3] = COERCE_UNSIGNED_INT(1.0);
      v28 = a2[2];
      v44 = *a2->i8;
      v45 = v28;
      v46 = vbsl_s8(v26, v24, v23);
      v47 = v27;
      v49[0] = &dest;
      v49[1] = &v44;
      context.i64[0] = v49;
      context.i64[1] = dest.width;
      v52.i64[0] = dest.height;
      v52.i64[1] = (dest.width + 127) >> 7;
      v53 = (dest.height + 127) >> 7;
      dispatch_apply_f(v53 * v52.i64[1], 0, &context, _ZZN2RB20dispatch_apply_tilesIZNS_18Typed_vImageBufferIDv4_DF16_E18apply_pixel_valuesIZNS_9CGContext18apply_color_matrixERKNS_11ColorMatrixEbE3__1EEvRKT_EUlmmmmE_EEvmmSC_ENUlPvmE_8__invokeESE_m);
      if (v17)
      {
        vImagePremultiplyData_RGBA16F(&dest, &dest, 0);
      }

      RB::vImageBuffer::~vImageBuffer(&dest.data);
    }

    RB::vImageBuffer::~vImageBuffer(&src.data);
  }
}

void sub_195DE2A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void *);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  RB::vImageBuffer::~vImageBuffer(va1);
  RB::vImageBuffer::~vImageBuffer(va);
  _Unwind_Resume(a1);
}

void RB::CGContext::apply_luminance_curve(RB::CGContext *a1, void *a2, __n128 a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = RB::CGContext::bitmap_format(a1);
  if ((v5 & 0x100000000) != 0)
  {
    v6 = v5;
    if (v5)
    {
      RB::vImageBuffer::vImageBuffer(&v35, *a1);
      v7 = *(a1 + 8);
      *&v43 = *a2;
      *(&v43 + 6) = *(a2 + 6);
      v8.i64[0] = 0;
      RB::Fill::Color::convert(&v43, v7, v8);
      v12 = vmovn_s64(vshlq_u64(vdupq_n_s64(v43), xmmword_195E456A0));
      v13 = vcvtq_f32_f16(vzip1_s32(*&v43, vuzp1_s16(v12, v12)));
      if (v6 == 1)
      {
        v19 = 0;
        *v9.i32 = a3.n128_f32[3] - (a3.n128_f32[0] + ((a3.n128_f32[2] - a3.n128_f32[1]) * 3.0));
        v20 = vdupq_lane_s32(v9, 0);
        *v10.i32 = ((a3.n128_f32[2] + a3.n128_f32[0]) - (a3.n128_f32[1] + a3.n128_f32[1])) * 3.0;
        v21 = vdupq_lane_s32(v10, 0);
        *v11.i32 = (a3.n128_f32[1] - a3.n128_f32[0]) * 3.0;
        v22 = vdupq_lane_s32(v11, 0);
        v23 = xmmword_195E457A0;
        v24 = vdupq_lane_s32(a3.n128_u64[0], 0);
        v25 = vdupq_n_s32(0x437F0000u);
        v26 = vdupq_n_s32(0x3C808081u);
        do
        {
          v27.i64[0] = 0x3F0000003F000000;
          v27.i64[1] = 0x3F0000003F000000;
          *(&v43 + v19) = vuzp1_s8(vmovn_s32(vcvtq_u32_f32(vmlaq_f32(v27, v25, vmlaq_f32(v24, v23, vmlaq_f32(v22, v23, vmlaq_f32(v21, v20, v23)))))), *v13.f32).u32[0];
          v23 = vaddq_f32(v23, v26);
          v28 = v19 >= 0xFC;
          v19 += 4;
        }

        while (!v28);
        v29 = vmuls_lane_f32(255.0, v13, 3);
        v30.i64[0] = 0x3F0000003F000000;
        v30.i64[1] = 0x3F0000003F000000;
        v32 = &v43;
        LODWORD(v33) = (255.5 - v29);
        v34 = vcvtq_u32_f32(vmlaq_n_f32(v30, v13, v29));
        v38[0] = &v35;
        v38[1] = &v32;
        context = v38;
        v40 = v37;
        v41.i64[0] = v36;
        v41.i64[1] = (v37 + 127) >> 7;
        v42 = (v36 + 127) >> 7;
        v16 = v42 * v41.i64[1];
        v17 = _ZZN2RB20dispatch_apply_tilesIZNS_18Typed_vImageBufferIjE18apply_pixel_valuesIZNS_9CGContext21apply_luminance_curveEDv4_fRKNS_4Fill5ColorEE3__0EEvRKT_EUlmmmmE_EEvmmSD_ENUlPvmE_8__invokeESF_m;
        p_context = &context;
      }

      else
      {
        if (v6 != 2)
        {
LABEL_11:
          RB::vImageBuffer::~vImageBuffer(&v35);
          return;
        }

        v14 = vdupq_laneq_s32(v13, 3);
        v14.i32[3] = 1.0;
        v15 = vmulq_f32(v14, v13);
        v15.i32[3] = vsubq_f32(v14, v13).i32[3];
        *&context = a3.n128_f32[3] - (a3.n128_f32[0] + ((a3.n128_f32[2] - a3.n128_f32[1]) * 3.0));
        *(&context + 1) = ((a3.n128_f32[2] + a3.n128_f32[0]) - (a3.n128_f32[1] + a3.n128_f32[1])) * 3.0;
        *&v40 = (a3.n128_f32[1] - a3.n128_f32[0]) * 3.0;
        HIDWORD(v40) = a3.n128_u32[0];
        v41 = v15;
        v32 = &v35;
        v33 = &context;
        *&v43 = &v32;
        *(&v43 + 1) = v37;
        v44 = v36;
        v45 = (v37 + 127) >> 7;
        v46 = (v36 + 127) >> 7;
        v16 = v46 * v45;
        v17 = _ZZN2RB20dispatch_apply_tilesIZNS_18Typed_vImageBufferIDv4_DF16_E18apply_pixel_valuesIZNS_9CGContext21apply_luminance_curveEDv4_fRKNS_4Fill5ColorEE3__1EEvRKT_EUlmmmmE_EEvmmSE_ENUlPvmE_8__invokeESG_m;
        p_context = &v43;
      }

      dispatch_apply_f(v16, 0, p_context, v17);
      goto LABEL_11;
    }
  }
}

void sub_195DE2D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  RB::vImageBuffer::~vImageBuffer(va);
  _Unwind_Resume(a1);
}

void RB::CGContext::apply_component_lut(CGContext **this, unsigned int a2, int16x8_t *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  RB::vImageBuffer::vImageBuffer(&dest, *this);
  v6 = RB::CGContext::bitmap_format(this);
  if ((v6 & 0x100000000) != 0)
  {
    if (v6)
    {
      if (v6 == 2)
      {
        v18 = 0;
        v19.i64[0] = 0xFF000000FFLL;
        v19.i64[1] = 0xFF000000FFLL;
        v20 = vdupq_n_s32(0x3B808081u);
        do
        {
          *v7.f32 = vshl_u32(vdup_n_s32(a3->u32[v18]), 0xFFFFFFF8FFFFFFF0);
          v7.i32[2] = a3->i32[v18];
          v21 = vdupq_laneq_s32(v7, 2);
          v22 = vandq_s8(v7, v19);
          v22.i32[3] = vshrq_n_u32(v21, 0x18uLL).i32[3];
          v7 = vmulq_f32(vcvtq_f32_u32(v22), v20);
          *&alphaTable[8 * v18++] = vcvt_f16_f32(v7);
        }

        while (v18 != 256);
        v29 = alphaTable;
        v30 = a2;
        v32[0] = &dest;
        v32[1] = &v29;
        *permuteMap = v32;
        width = dest.width;
        height = dest.height;
        v36 = (dest.width + 127) >> 7;
        v37 = (dest.height + 127) >> 7;
        dispatch_apply_f(v37 * v36, 0, permuteMap, _ZZN2RB20dispatch_apply_tilesIZNS_18Typed_vImageBufferIDv4_DF16_E18apply_pixel_valuesIZNS_9CGContext19apply_component_lutEhPKjE3__0EEvRKT_EUlmmmmE_EEvmmSB_ENUlPvmE_8__invokeESD_m);
      }

      else if (v6 == 1)
      {
        v8 = 2 - a2;
        if (a2 >= 3)
        {
          v8 = 3;
        }

        *permuteMap = 16843009 * v8;
        vImagePermuteChannels_ARGB8888(&dest, &dest, permuteMap, 0);
        v9 = -256;
        do
        {
          v11 = *a3;
          v10 = a3[1];
          v13 = a3[2];
          v12 = a3[3];
          v14 = vmovn_s32(*a3);
          v15 = &alphaTable[v9];
          v15[16] = vuzp1q_s8(vuzp1q_s16(*a3, v10), vuzp1q_s16(v13, v12));
          *v16.i8 = vshr_n_u16(vmovn_s32(v13), 8uLL);
          v16.u64[1] = vshr_n_u16(vmovn_s32(v12), 8uLL);
          *v17.i8 = vshr_n_u16(v14, 8uLL);
          v17.u64[1] = vshr_n_u16(vmovn_s32(v10), 8uLL);
          v15[32] = vuzp1q_s8(v17, v16);
          v15[48] = vuzp1q_s8(vuzp2q_s16(v11, v10), vuzp2q_s16(v13, v12));
          v15[64] = vuzp1q_s8(vuzp1q_s16(vshrq_n_u32(v11, 0x18uLL), vshrq_n_u32(v10, 0x18uLL)), vuzp1q_s16(vshrq_n_u32(v13, 0x18uLL), vshrq_n_u32(v12, 0x18uLL)));
          a3 += 4;
          v9 += 16;
        }

        while (v9);
        vImageTableLookUp_ARGB8888(&dest, &dest, alphaTable, v39, v40, v41, 0);
      }
    }

    else if (a2 == 3)
    {
      for (i = 0; i != 256; i += 16)
      {
        v24 = a3[2];
        v25 = a3[3];
        v26 = *a3;
        v27 = a3[1];
        a3 += 4;
        *&alphaTable[i] = vuzp1q_s8(vuzp1q_s16(vshrq_n_u32(v26, 0x18uLL), vshrq_n_u32(v27, 0x18uLL)), vuzp1q_s16(vshrq_n_u32(v24, 0x18uLL), vshrq_n_u32(v25, 0x18uLL)));
      }

      vImageTableLookUp_Planar8(&dest, &dest, alphaTable, 0);
    }

    else
    {
      v28 = 16 - 8 * a2;
      if (a2 >= 3)
      {
        v28 = 24;
      }

      vImageOverwriteChannelsWithScalar_Planar8(a3->i32[0] >> v28, &dest, 0);
    }
  }

  RB::vImageBuffer::~vImageBuffer(&dest.data);
}

void sub_195DE3038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  RB::vImageBuffer::~vImageBuffer(va);
  _Unwind_Resume(a1);
}

void RB::CGContext::apply_component_threshold(uint64_t a1, unsigned int a2, unsigned __int8 *a3, double a4)
{
  RB::vImageBuffer::vImageBuffer(&dest, *a1);
  v7 = RB::CGContext::bitmap_format(a1);
  v10 = v7;
  if ((v7 & 0x100000000) != 0)
  {
    v11 = a4;
    v12 = *(&a4 + 1) > INFINITY || *(&a4 + 1) < INFINITY;
    v13 = 1.0;
    if (*(&a4 + 1) != INFINITY)
    {
      LODWORD(v11) = 1.0;
      v13 = 1.0 / (fmaxf(*&a4, *(&a4 + 1)) - *&a4);
    }

    v14 = *(a1 + 8);
    v8.i32[0] = *(a1 + 156);
    if (v8.f32[0] < 0.0)
    {
      CGContextGetEDRTargetHeadroom();
      *(a1 + 156) = v8.i32[0];
    }

    RB::Fill::Color::prepare(a3, v14, v8, v11, v9);
    v24[0] = v12;
    v25 = v13;
    v26 = -(*&a4 * v13);
    v27 = vcvtq_f32_f16(v15);
    if (v10)
    {
      if (v10 == 1)
      {
        v18 = 16 - 8 * a2;
        if (a2 >= 3)
        {
          v18 = 24;
        }

        v22 = v24;
        v23 = v18;
        p_dest = &dest;
        v30 = &v22;
        context = &p_dest;
        width = dest.width;
        height = dest.height;
        v34 = (dest.width + 127) >> 7;
        v35 = (dest.height + 127) >> 7;
        v16 = v35 * v34;
        v17 = _ZZN2RB20dispatch_apply_tilesIZNS_18Typed_vImageBufferIjE17apply_quad_valuesIZNS_9CGContext25apply_component_thresholdEhDv2_fRKNS_4Fill5ColorEE3__2EEvRKT_EUlmmmmE_EEvmmSD_ENUlPvmE_8__invokeESF_m;
        goto LABEL_18;
      }

      if (v10 == 2)
      {
        v22 = v24;
        LOBYTE(v23) = a2;
        p_dest = &dest;
        v30 = &v22;
        context = &p_dest;
        width = dest.width;
        height = dest.height;
        v34 = (dest.width + 127) >> 7;
        v35 = (dest.height + 127) >> 7;
        v16 = v35 * v34;
        v17 = _ZZN2RB20dispatch_apply_tilesIZNS_18Typed_vImageBufferIDv4_DF16_E17apply_quad_valuesIZNS_9CGContext25apply_component_thresholdEhDv2_fRKNS_4Fill5ColorEE3__3EEvRKT_EUlmmmmE_EEvmmSE_ENUlPvmE_8__invokeESG_m;
LABEL_18:
        dispatch_apply_f(v16, 0, &context, v17);
      }
    }

    else
    {
      if (a2 == 3)
      {
        v22 = v24;
        p_dest = &dest;
        v30 = &v22;
        context = &p_dest;
        width = dest.width;
        height = dest.height;
        v34 = (dest.width + 127) >> 7;
        v35 = (dest.height + 127) >> 7;
        v16 = v35 * v34;
        v17 = _ZZN2RB20dispatch_apply_tilesIZNS_18Typed_vImageBufferIhE17apply_quad_valuesIZNS_9CGContext25apply_component_thresholdEhDv2_fRKNS_4Fill5ColorEE3__1EEvRKT_EUlmmmmE_EEvmmSD_ENUlPvmE_8__invokeESF_m;
        goto LABEL_18;
      }

      v20 = *(&a4 + 1) >= 0.0 && *&a4 <= 0.0;
      vImageOverwriteChannelsWithScalar_Planar8(v20, &dest, 0);
    }
  }

  RB::vImageBuffer::~vImageBuffer(&dest.data);
}

void sub_195DE3298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  RB::vImageBuffer::~vImageBuffer(va);
  _Unwind_Resume(a1);
}

void RB::CGContext::apply_glass_highlight(CGContext **this, const RB::GlassHighlightEffect *a2)
{
  RB::vImageBuffer::vImageBuffer(&v45, *this);
  v4 = RB::CGContext::bitmap_format(this);
  v7 = v4;
  v44 = 0;
  src.data = 0;
  if ((v4 & 0x100000000) != 0)
  {
    if (v4 == 2)
    {
      RB::vImageBuffer::vImageBuffer(&context, &v45);
      RB::vImageBuffer::operator=(&src, &context);
      RB::vImageBuffer::~vImageBuffer(&context);
      goto LABEL_10;
    }

    RB::vImageBuffer::vImageBuffer(&context);
    RB::vImageBuffer::operator=(&src, &context);
    RB::vImageBuffer::~vImageBuffer(&context);
    if (!src.data)
    {
      goto LABEL_37;
    }

    if (v7 == 1)
    {
      dest.data = &src;
      dest.height = &v45;
      p_dest = &dest;
      context = &p_dest;
      width = v47;
      height = v46;
      v34 = (v47 + 127) >> 7;
      v35 = (v46 + 127) >> 7;
      v8 = v35 * v34;
      v9 = RB::dispatch_apply_tiles<void RB::dispatch_apply_pixels<RB::CGContext::apply_glass_highlight(RB::GlassHighlightEffect const&)::$_1>(unsigned long,unsigned long,RB::CGContext::apply_glass_highlight(RB::GlassHighlightEffect const&)::$_1 const&)::{lambda(unsigned long,unsigned long,unsigned long,unsigned long)#1}>(unsigned long,unsigned long,RB::CGContext::apply_glass_highlight(RB::GlassHighlightEffect const&)::$_1 const&)::{lambda(void *,unsigned long)#1}::__invoke;
    }

    else
    {
      if (v7)
      {
        goto LABEL_10;
      }

      dest.data = &src;
      dest.height = &v45;
      p_dest = &dest;
      context = &p_dest;
      width = v47;
      height = v46;
      v34 = (v47 + 127) >> 7;
      v35 = (v46 + 127) >> 7;
      v8 = v35 * v34;
      v9 = RB::dispatch_apply_tiles<void RB::dispatch_apply_pixels<RB::CGContext::apply_glass_highlight(RB::GlassHighlightEffect const&)::$_0>(unsigned long,unsigned long,RB::CGContext::apply_glass_highlight(RB::GlassHighlightEffect const&)::$_0 const&)::{lambda(unsigned long,unsigned long,unsigned long,unsigned long)#1}>(unsigned long,unsigned long,RB::CGContext::apply_glass_highlight(RB::GlassHighlightEffect const&)::$_0 const&)::{lambda(void *,unsigned long)#1}::__invoke;
    }

    dispatch_apply_f(v8, 0, &context, v9);
  }

LABEL_10:
  v10 = *(a2 + 49);
  if (*(a2 + 49))
  {
    v5.i64[0] = *(a2 + 2);
    v11 = vdup_lane_s32(*v5.f32, 0);
    v11.i32[0] = *(a2 + 6);
    v12 = vsub_f32(v11, *v5.f32);
    v13 = 0;
    if (*(a2 + 49) <= 2u)
    {
      if (v10 == 1)
      {
        v13 = 0xBF80000040000000;
      }

      else if (v10 == 2)
      {
        v13 = 0x3F800000C0000000;
      }

      goto LABEL_23;
    }

    if (v10 != 3)
    {
      if (v10 == 4)
      {
        v13 = 3212836864;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v14 = *(a2 + 48);
    v15 = RB::vImageBuffer::vImageBuffer(&dest);
    if (!dest.data)
    {
      RB::vImageBuffer::~vImageBuffer(v15);
      goto LABEL_37;
    }

    vImageExtractChannel_ARGB16U(&src, &dest, v14, 0);
    p_dest = &src;
    p_context = &dest;
    v42 = v14;
    p_p_dest = &p_dest;
    context = &p_p_dest;
    width = src.width;
    height = src.height;
    v34 = (src.width + 127) >> 7;
    v35 = (src.height + 127) >> 7;
    dispatch_apply_f(v35 * v34, 0, &context, RB::dispatch_apply_tiles<void RB::dispatch_apply_pixels<RB::CGContext::apply_glass_highlight(RB::GlassHighlightEffect const&)::$_2>(unsigned long,unsigned long,RB::CGContext::apply_glass_highlight(RB::GlassHighlightEffect const&)::$_2 const&)::{lambda(unsigned long,unsigned long,unsigned long,unsigned long)#1}>(unsigned long,unsigned long,RB::CGContext::apply_glass_highlight(RB::GlassHighlightEffect const&)::$_2 const&)::{lambda(void *,unsigned long)#1}::__invoke);
    RB::vImageBuffer::~vImageBuffer(&dest.data);
    v5.i64[0] = *(a2 + 2);
    v11 = vdup_lane_s32(*v5.f32, 0);
    v11.i32[0] = *(a2 + 6);
    v12 = vsub_f32(v11, *v5.f32);
  }

  v13 = 1065353216;
LABEL_23:
  v16 = *(this + 8);
  v5.i32[0] = *(this + 39);
  if (v5.f32[0] < 0.0)
  {
    CGContextGetEDRTargetHeadroom();
    *(this + 39) = v5.i32[0];
  }

  RB::Fill::Color::prepare(a2, v16, v5, *&v11, v6);
  v18 = v17;
  v19 = __sincosf_stret(*(a2 + 8));
  *&v20 = -v19.__sinval;
  HIDWORD(v20) = LODWORD(v19.__cosval);
  v29 = v20;
  v30 = vcvtq_f32_f16(v18);
  v21 = cosf(*(a2 + 9));
  v22 = *(a2 + 10);
  v23 = *(a2 + 11);
  if (v21 == -1.0 && v22 == 1.0)
  {
    v21 = v21 + -0.01;
  }

  v25 = 1.0 - v21;
  if ((1.0 - v21) < 0.001)
  {
    v25 = 0.001;
  }

  v26 = *(a2 + 7);
  context = vrev64_s32(v12);
  width = v13;
  *&height = 1.0 / v26;
  HIDWORD(height) = v23;
  *&v34 = v26;
  v35 = v29;
  v36 = v21;
  v37 = 1.0 / v25;
  v38 = (1.0 / v22) + -2.0;
  v39 = v30;
  p_dest = &src;
  p_context = &context;
  dest.data = &p_dest;
  dest.height = src.width;
  dest.width = src.height;
  dest.rowBytes = (src.width + 127) >> 7;
  v50 = (src.height + 127) >> 7;
  dispatch_apply_f(v50 * dest.rowBytes, 0, &dest, _ZZN2RB20dispatch_apply_tilesIZNS_18Typed_vImageBufferIDv4_DF16_E17apply_quad_valuesIZNS_9CGContext21apply_glass_highlightERKNS_20GlassHighlightEffectEE3__3EEvRKT_EUlmmmmE_EEvmmSC_ENUlPvmE_8__invokeESE_m);
  if (v7 == 1)
  {
    dest.data = &src;
    dest.height = &v45;
    p_dest = &dest;
    context = &p_dest;
    width = v47;
    height = v46;
    v34 = (v47 + 127) >> 7;
    v35 = (v46 + 127) >> 7;
    v27 = v35 * v34;
    v28 = RB::dispatch_apply_tiles<void RB::dispatch_apply_pixels<RB::CGContext::apply_glass_highlight(RB::GlassHighlightEffect const&)::$_5>(unsigned long,unsigned long,RB::CGContext::apply_glass_highlight(RB::GlassHighlightEffect const&)::$_5 const&)::{lambda(unsigned long,unsigned long,unsigned long,unsigned long)#1}>(unsigned long,unsigned long,RB::CGContext::apply_glass_highlight(RB::GlassHighlightEffect const&)::$_5 const&)::{lambda(void *,unsigned long)#1}::__invoke;
    goto LABEL_36;
  }

  if (!v7)
  {
    dest.data = &src;
    dest.height = &v45;
    p_dest = &dest;
    context = &p_dest;
    width = v47;
    height = v46;
    v34 = (v47 + 127) >> 7;
    v35 = (v46 + 127) >> 7;
    v27 = v35 * v34;
    v28 = RB::dispatch_apply_tiles<void RB::dispatch_apply_pixels<RB::CGContext::apply_glass_highlight(RB::GlassHighlightEffect const&)::$_4>(unsigned long,unsigned long,RB::CGContext::apply_glass_highlight(RB::GlassHighlightEffect const&)::$_4 const&)::{lambda(unsigned long,unsigned long,unsigned long,unsigned long)#1}>(unsigned long,unsigned long,RB::CGContext::apply_glass_highlight(RB::GlassHighlightEffect const&)::$_4 const&)::{lambda(void *,unsigned long)#1}::__invoke;
LABEL_36:
    dispatch_apply_f(v27, 0, &context, v28);
  }

LABEL_37:
  RB::vImageBuffer::~vImageBuffer(&src.data);
  RB::vImageBuffer::~vImageBuffer(&v45);
}

void sub_195DE3738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  RB::vImageBuffer::~vImageBuffer(&a13);
  RB::vImageBuffer::~vImageBuffer(&a27);
  RB::vImageBuffer::~vImageBuffer((v27 - 168));
  _Unwind_Resume(a1);
}

void _ZN2RB18separable_convolveIDF16_NS_15ConvolveSampler13clamp_to_edgeEEEvRKNS_18Typed_vImageBufferIT_EERS5_PKfjT0_(void **a1, char *a2, uint64_t a3, int a4)
{
  v5 = a1[2];
  if (v5 != *(a2 + 2) || (a4 & 1) == 0 || ((v7 = a2, a2 = a1[1], a2 == v7[1]) ? (v9 = *a1 == 0) : (v9 = 1), !v9 ? (v10 = *v7 == 0) : (v10 = 1), v10))
  {
    _ZN2RB18separable_convolveIDv4_DF16_NS_15ConvolveSampler13clamp_to_zeroEEEvRKNS_18Typed_vImageBufferIT_EERS6_PKfjT0__cold_1(a1, a2);
  }

  if (v5 && a2)
  {
    RB::vImageBuffer::vImageBuffer(&v13);
    if (v13)
    {
      v16 = a1;
      v17 = &v13;
      v18 = a3;
      v19 = a4;
      v12 = a1[1];
      v11 = a1[2];
      v20 = &v16;
      context = &v20;
      v22 = v11;
      v23 = v12;
      v24 = (v11 + 127) >> 7;
      v25 = (v12 + 127) >> 7;
      dispatch_apply_f(v25 * v24, 0, &context, _ZZN2RB20dispatch_apply_tilesIZNS_21dispatch_apply_pixelsIZZNS_18separable_convolveIDF16_NS_15ConvolveSampler13clamp_to_edgeEEEvRKNS_18Typed_vImageBufferIT_EERS7_PKfjT0_ENKUlRKNS5_IDF16_EERSE_E_clESG_SH_EUlmmE_EEvmmRKS6_EUlmmmmE_EEvmmSL_ENUlPvmE_8__invokeESN_m);
      v16 = &v13;
      v17 = v7;
      v18 = a3;
      v19 = a4;
      v20 = &v16;
      context = &v20;
      v22 = v15;
      v23 = v14;
      v24 = (v15 + 127) >> 7;
      v25 = (v14 + 127) >> 7;
      dispatch_apply_f(v25 * v24, 0, &context, _ZZN2RB20dispatch_apply_tilesIZNS_21dispatch_apply_pixelsIZZNS_18separable_convolveIDF16_NS_15ConvolveSampler13clamp_to_edgeEEEvRKNS_18Typed_vImageBufferIT_EERS7_PKfjT0_ENKUlRKNS5_IDF16_EERSE_E_clESG_SH_EUlmmE_EEvmmRKS6_EUlmmmmE_EEvmmSL_ENUlPvmE_8__invokeESN_m);
    }

    RB::vImageBuffer::~vImageBuffer(&v13);
  }
}

void RB::CGContext::apply_cifilter(id *this, CIFilter *a2, CGAffineTransform *a3, int a4)
{
  v47[6] = *MEMORY[0x1E69E9840];
  CGContextGetDeviceClipBoundingBox();
  x = v48.origin.x;
  y = v48.origin.y;
  width = v48.size.width;
  height = v48.size.height;
  if (!CGRectIsEmpty(v48))
  {
    v12 = RB::CGContext::bitmap_format(this);
    v13 = MEMORY[0x1E695F8A8];
    v14 = v12 & 0x1FFFFFFFFLL;
    if ((v12 & 0x1FFFFFFFFLL) == 0x100000002)
    {
      v13 = MEMORY[0x1E695F920];
    }

    v15 = *v13;
    if (this[126])
    {
      goto LABEL_29;
    }

    v16 = MEMORY[0x1E695F620];
    v17 = *this;
    v18 = *MEMORY[0x1E695F830];
    v47[0] = @"com.apple.RenderBox";
    v19 = *MEMORY[0x1E695F868];
    v46[0] = v18;
    v46[1] = v19;
    v47[1] = [MEMORY[0x1E695DFB0] null];
    v46[2] = *MEMORY[0x1E695F870];
    v20 = [MEMORY[0x1E696AD98] numberWithInt:v15];
    v21 = *MEMORY[0x1E695F7F0];
    v47[2] = v20;
    v47[3] = MEMORY[0x1E695E110];
    v22 = *MEMORY[0x1E695F7E0];
    v46[3] = v21;
    v46[4] = v22;
    v46[5] = *MEMORY[0x1E695F860];
    v47[4] = MEMORY[0x1E695E118];
    v47[5] = &unk_1F0A470A0;
    v23 = [v16 contextWithCGContext:v17 options:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v47, v46, 6)}];
    v24 = this[126];
    if (v24 != v23)
    {

      v23 = v23;
      this[126] = v23;
    }

    if (v23)
    {
LABEL_29:
      if (a4)
      {
        Image = CGBitmapContextCreateImage(*this);
        v26 = [MEMORY[0x1E695F658] imageWithCGImage:Image];
        v27 = *&a3->c;
        *&v45.a = *&a3->a;
        *&v45.c = v27;
        *&v45.tx = *&a3->tx;
        v28 = RB::AffineTransform::invert(&v45) ? &v45 : a3;
        v29 = *&v28->c;
        v30 = *&v28->tx;
        *&v45.a = *&v28->a;
        *&v45.c = v29;
        *&v45.tx = v30;
        v31 = [v26 imageByApplyingTransform:&v45];
        [(CIFilter *)a2 setValue:v31 forKey:*MEMORY[0x1E695FAB0]];
        if (Image)
        {
          CFRelease(Image);
        }
      }

      v32 = [(CIFilter *)a2 valueForKey:*MEMORY[0x1E695FB50]];
      v33 = *&a3->c;
      *&v45.a = *&a3->a;
      *&v45.c = v33;
      *&v45.tx = *&a3->tx;
      v34 = [v32 imageByApplyingTransform:&v45];
      if (a4)
      {
        [(CIFilter *)a2 setValue:0 forKey:*MEMORY[0x1E695FAB0]];
      }

      [v34 extent];
      v54.origin.x = v35;
      v54.origin.y = v36;
      v54.size.width = v37;
      v54.size.height = v38;
      v49.origin.x = x;
      v49.origin.y = y;
      v49.size.width = width;
      v49.size.height = height;
      v50 = CGRectIntersection(v49, v54);
      v39 = v50.origin.x;
      v40 = v50.origin.y;
      v41 = v50.size.width;
      v42 = v50.size.height;
      if (a4)
      {
        v55.origin.x = x;
        v55.origin.y = y;
        v55.size.width = width;
        v55.size.height = height;
        if (!CGRectContainsRect(v50, v55))
        {
          v51.origin.x = x;
          v51.origin.y = y;
          v51.size.width = width;
          v51.size.height = height;
          CGContextClearRect(*this, v51);
        }
      }

      v52.origin.x = v39;
      v52.origin.y = v40;
      v52.size.width = v41;
      v52.size.height = v42;
      if (!CGRectIsEmpty(v52))
      {
        v43 = [this[126] createCGImage:v34 fromRect:v15 format:RB::ColorSpace::cg_color_space((this + 1) colorSpace:{v14 == 0x100000002), v39, v40, v41, v42}];
        if (v43)
        {
          memset(&v45, 0, sizeof(v45));
          CGContextGetCTM(&v45, *this);
          CGContextSetCTM();
          if (a4)
          {
            BlendMode = CGContextGetBlendMode();
            CGContextSetBlendMode(*this, kCGBlendModeCopy);
          }

          else
          {
            BlendMode = kCGBlendModeNormal;
          }

          v53.origin.x = v39;
          v53.origin.y = v40;
          v53.size.width = v41;
          v53.size.height = v42;
          CGContextDrawImage(*this, v53, v43);
          if (a4)
          {
            CGContextSetBlendMode(*this, BlendMode);
          }

          CGContextSetCTM();
          CFRelease(v43);
        }
      }
    }
  }
}

void RB::CGContext::apply_distance_filter(CGContext **a1, unsigned int a2, double a3, double a4)
{
  RB::vImageBuffer::vImageBuffer(&src, *a1);
  v7 = RB::CGContext::bitmap_format(a1);
  v8 = v7;
  v9 = (a2 & 0x1E) != 0;
  v128 = 0;
  dest.data = 0;
  if ((v7 & 0x100000000) != 0)
  {
    v10 = a2 & 0x1E00;
    if (v7)
    {
      RB::vImageBuffer::vImageBuffer(&context);
      RB::vImageBuffer::operator=(&dest, &context);
      RB::vImageBuffer::~vImageBuffer(&context);
      if (dest.data)
      {
        if (v8 == 2)
        {
          p_src = &src;
          p_dest = &dest;
          p_p_src = &p_src;
          context = &p_p_src;
          width = src.width;
          height = src.height;
          v134 = (src.width + 127) >> 7;
          v135 = (src.height + 127) >> 7;
          dispatch_apply_f(v135 * v134, 0, &context, _ZZN2RB20dispatch_apply_tilesIZNS_21dispatch_apply_pixelsIZNS_9CGContext21apply_distance_filterEDv2_fS3_jE3__0EEvmmRKT_EUlmmmmE_EEvmmS7_ENUlPvmE_8__invokeES9_m);
        }

        else if (v8 == 1)
        {
          vImageExtractChannel_ARGB8888(&src, &dest, 3, 0);
        }

        v126 = 0;
        p_src = 0;
        if (v10 == 2048)
        {
          RB::vImageBuffer::vImageBuffer(&context);
          RB::vImageBuffer::operator=(&p_src, &context);
          RB::vImageBuffer::~vImageBuffer(&context);
          if (p_src)
          {
            p_p_src = &p_src;
            p_p_p_p_src = &dest;
            p_p_p_src = &p_p_src;
            context = &p_p_p_src;
            width = v125;
            height = p_dest;
            v134 = (v125 + 127) >> 7;
            v135 = (&p_dest[3].rowBytes + 7) >> 7;
            dispatch_apply_f(v135 * v134, 0, &context, _ZZN2RB20dispatch_apply_tilesIZNS_21dispatch_apply_pixelsIZNS_9CGContext21apply_distance_filterEDv2_fS3_jE3__7EEvmmRKT_EUlmmmmE_EEvmmS7_ENUlPvmE_8__invokeES9_m);
            if (v8 == 2)
            {
              _ZN2RB18Typed_vImageBufferIDv4_DF16_E18apply_pixel_valuesIZNS_9CGContext21apply_distance_filterEDv2_fS5_jE3__9EEvRKT_(&src, &context);
            }

            else if (v8 == 1)
            {
              p_p_src = &src;
              p_p_p_p_src = &p_p_p_src;
              context = &p_p_src;
              width = src.width;
              height = src.height;
              v134 = (src.width + 127) >> 7;
              v135 = (src.height + 127) >> 7;
              dispatch_apply_f(v135 * v134, 0, &context, _ZZN2RB20dispatch_apply_tilesIZNS_18Typed_vImageBufferIjE18apply_pixel_valuesIZNS_9CGContext21apply_distance_filterEDv2_fS5_jE3__8EEvRKT_EUlmmmmE_EEvmmS9_ENUlPvmE_8__invokeESB_m);
            }

            goto LABEL_66;
          }

          goto LABEL_74;
        }

LABEL_15:
        if (v10 != 512)
        {
          p_p_src = &dest;
          p_p_p_p_src = &p_p_p_src;
          context = &p_p_src;
          width = dest.width;
          height = dest.height;
          v134 = (dest.width + 127) >> 7;
          v135 = (dest.height + 127) >> 7;
          dispatch_apply_f(v135 * v134, 0, &context, _ZZN2RB20dispatch_apply_tilesIZNS_18Typed_vImageBufferIhE17apply_quad_valuesIZNS_9CGContext21apply_distance_filterEDv2_fS5_jE3__1EEvRKT_EUlmmmmE_EEvmmS9_ENUlPvmE_8__invokeESB_m);
        }

        v11 = RB::vImageBuffer::vImageBuffer(&p_p_src);
        if (p_p_src)
        {
          v12 = RB::Device::distance_values(v11);
          p_p_p_src = &p_p_src;
          v117 = &dest;
          v118 = v12;
          context = &p_p_p_src;
          width = *&v121;
          height = p_p_p_p_src;
          v134 = (*&v121 + 127) >> 7;
          v135 = (&p_p_p_p_src[3].rowBytes + 7) >> 7;
          dispatch_apply_f(v135 * v134, 0, &context, _ZZN2RB20dispatch_apply_tilesIZNS_9CGContext21apply_distance_filterEDv2_fS2_jE3__2EEvmmRKT_ENUlPvmE_8__invokeES7_m);
          v13 = p_p_p_p_src;
          if (p_p_p_p_src >= 3)
          {
            v14 = (p_p_p_p_src - 1);
            v15 = LODWORD(v121);
            v16 = v122 >> 3 << 32;
            v17 = (LODWORD(v121) - 2);
            v18 = ((0xFFFFFFFF00000000 * (v122 >> 3)) >> 29) + 8;
            v19 = 8 * ~(v122 >> 3) + 8;
            v20 = (LODWORD(v121) - 1) - 1;
            v21 = 1;
            __asm
            {
              FMOV            V3.2S, #-1.0
              FMOV            V1.2S, #1.0
            }

            do
            {
              if (v15 >= 3)
              {
                v28 = 8;
                v29 = v20;
                v30 = v19;
                v31 = v18;
                v32 = ((0x100000000 - v16) >> 29) + 8;
                do
                {
                  v33 = p_p_src + v21 * v122;
                  v34 = &v33[v28];
                  v35 = vcvtq_f32_f16(*&v33[v28]).u64[0];
                  v36 = vcvtq_f32_f16(*&v33[v28 - 8]);
                  *v37.f32 = vadd_f32(*v36.i8, 3212836864);
                  v38 = vmul_f32(*v37.f32, *v37.f32);
                  v39 = vmul_f32(v35, v35);
                  v40 = vadd_f32(vzip1_s32(v38, v39), vzip2_s32(v38, v39));
                  v41 = v40.f32[1];
                  if (v40.f32[0] < v40.f32[1])
                  {
                    v37.i64[1] = vextq_s8(v36, v36, 8uLL).u64[0];
                    v42 = vcvt_f16_f32(v37);
                    *v34 = v42;
                    v43 = vcvtq_f32_f16(v42);
                    v41 = vaddv_f32(*&vmulq_f32(v43, v43));
                  }

                  v44 = vcvtq_f32_f16(*&v33[v30]);
                  *v45.f32 = vadd_f32(*v44.i8, *&_D3);
                  if (vaddv_f32(vmul_f32(*v45.f32, *v45.f32)) < v41)
                  {
                    v45.i64[1] = vextq_s8(v44, v44, 8uLL).u64[0];
                    v46 = vcvt_f16_f32(v45);
                    *v34 = v46;
                    v47 = vcvtq_f32_f16(v46);
                    v41 = vaddv_f32(*&vmulq_f32(v47, v47));
                  }

                  v48 = vcvtq_f32_f16(*&v33[v31]);
                  *v49.f32 = vadd_f32(*v48.i8, 0xBF80000000000000);
                  if (vaddv_f32(vmul_f32(*v49.f32, *v49.f32)) < v41)
                  {
                    v49.i64[1] = vextq_s8(v48, v48, 8uLL).u64[0];
                    v50 = vcvt_f16_f32(v49);
                    *v34 = v50;
                    v51 = vcvtq_f32_f16(v50);
                    v41 = vaddv_f32(*&vmulq_f32(v51, v51));
                  }

                  v52 = vcvtq_f32_f16(*&v33[v32]);
                  *v53.f32 = vadd_f32(*v52.i8, COERCE_FLOAT32X2_T(-_D1));
                  if (vaddv_f32(vmul_f32(*v53.f32, *v53.f32)) < v41)
                  {
                    v53.i64[1] = vextq_s8(v52, v52, 8uLL).u64[0];
                    *v34 = vcvt_f16_f32(v53);
                  }

                  v32 += 8;
                  v31 += 8;
                  v30 += 8;
                  v28 += 8;
                  --v29;
                }

                while (v29);
                v54 = v17;
                do
                {
                  v55 = p_p_src + v21 * v122;
                  v56 = &v55[8 * v54];
                  v57 = vcvtq_f32_f16(*v56).u64[0];
                  v58 = vcvtq_f32_f16(v56[1]);
                  *v59.f32 = vadd_f32(*v58.i8, 1065353216);
                  v60 = vmul_f32(*v59.f32, *v59.f32);
                  v61 = vmul_f32(v57, v57);
                  v62 = vadd_f32(vzip1_s32(v60, v61), vzip2_s32(v60, v61));
                  if (vcgt_f32(vdup_lane_s32(v62, 1), v62).u8[0])
                  {
                    v59.i64[1] = vextq_s8(v58, v58, 8uLL).u64[0];
                    *&v55[8 * v54] = vcvt_f16_f32(v59);
                  }

                  v63 = v54-- <= 1;
                }

                while (!v63);
              }

              ++v21;
            }

            while (v21 != v14);
            v64 = (v13 - 2);
            v65 = v16 - 0x100000000;
            v66 = v17 + 1;
            v67 = 8 * v17;
            v68 = 8 * v17 + ((v16 + 0x100000000) >> 29);
            v69 = v67 + 8;
            v70 = -_D3;
            v71 = v67 + (v16 >> 29);
            v72 = v67 + (v65 >> 29);
            do
            {
              v73 = v69;
              v74 = v72;
              v75 = v71;
              v76 = v68;
              v77 = v66;
              if (v15 >= 3)
              {
                do
                {
                  v78 = p_p_src + v64 * v122;
                  v79 = &v78[v73];
                  v80 = vcvtq_f32_f16(*&v78[v73 - 8]).u64[0];
                  v81 = vcvtq_f32_f16(*&v78[v73]);
                  *v82.f32 = vadd_f32(*v81.i8, 1065353216);
                  v83 = vmul_f32(*v82.f32, *v82.f32);
                  v84 = vmul_f32(v80, v80);
                  v85 = vadd_f32(vzip1_s32(v83, v84), vzip2_s32(v83, v84));
                  v86 = v85.f32[1];
                  if (v85.f32[0] < v85.f32[1])
                  {
                    v82.i64[1] = vextq_s8(v81, v81, 8uLL).u64[0];
                    v87 = vcvt_f16_f32(v82);
                    *(v79 - 1) = v87;
                    v88 = vcvtq_f32_f16(v87);
                    v86 = vaddv_f32(*&vmulq_f32(v88, v88));
                  }

                  v89 = vcvtq_f32_f16(*&v78[v74]);
                  *v90.f32 = vadd_f32(*v89.i8, *&v70);
                  if (vaddv_f32(vmul_f32(*v90.f32, *v90.f32)) < v86)
                  {
                    v90.i64[1] = vextq_s8(v89, v89, 8uLL).u64[0];
                    v91 = vcvt_f16_f32(v90);
                    *(v79 - 1) = v91;
                    v92 = vcvtq_f32_f16(v91);
                    v86 = vaddv_f32(*&vmulq_f32(v92, v92));
                  }

                  v93 = vcvtq_f32_f16(*&v78[v75]);
                  *v94.f32 = vadd_f32(*v93.i8, 0x3F80000000000000);
                  if (vaddv_f32(vmul_f32(*v94.f32, *v94.f32)) < v86)
                  {
                    v94.i64[1] = vextq_s8(v93, v93, 8uLL).u64[0];
                    v95 = vcvt_f16_f32(v94);
                    *(v79 - 1) = v95;
                    v96 = vcvtq_f32_f16(v95);
                    v86 = vaddv_f32(*&vmulq_f32(v96, v96));
                  }

                  v97 = vcvtq_f32_f16(*&v78[v76]);
                  *v98.f32 = vadd_f32(*v97.i8, *&_D1);
                  if (vaddv_f32(vmul_f32(*v98.f32, *v98.f32)) < v86)
                  {
                    v98.i64[1] = vextq_s8(v97, v97, 8uLL).u64[0];
                    *(v79 - 1) = vcvt_f16_f32(v98);
                  }

                  --v77;
                  v76 -= 8;
                  v75 -= 8;
                  v74 -= 8;
                  v73 -= 8;
                }

                while (v77 > 1);
                v99 = 0;
                do
                {
                  v100 = (&p_p_src->data + 8 * v99 + v64 * v122);
                  v101 = vcvtq_f32_f16(v100[1]).u64[0];
                  v102 = vcvtq_f32_f16(*v100);
                  *v103.f32 = vadd_f32(*v102.i8, 3212836864);
                  v104 = vmul_f32(*v103.f32, *v103.f32);
                  v105 = vmul_f32(v101, v101);
                  v106 = vadd_f32(vzip1_s32(v104, v105), vzip2_s32(v104, v105));
                  if (vcgt_f32(vdup_lane_s32(v106, 1), v106).u8[0])
                  {
                    v103.i64[1] = vextq_s8(v102, v102, 8uLL).u64[0];
                    v100[1] = vcvt_f16_f32(v103);
                  }

                  ++v99;
                }

                while (v20 != v99);
              }

              v63 = v64-- <= 1;
            }

            while (!v63);
          }

          if (*&a3 == *(&a3 + 1))
          {
            v108 = 0.5;
            v107 = 1.0;
          }

          else
          {
            v107 = 1.0 / (*&a3 - *(&a3 + 1));
            v108 = v107 * *&a3;
          }

          p_p_p_src = &p_p_src;
          v117 = &dest;
          v118 = __PAIR64__(LODWORD(v108), LODWORD(v107));
          if (v8)
          {
            v109 = v9;
          }

          else
          {
            v109 = 0;
          }

          if (v109)
          {
            RB::vImageBuffer::vImageBuffer(&context);
            RB::vImageBuffer::operator=(&p_src, &context);
            RB::vImageBuffer::~vImageBuffer(&context);
            if (p_src)
            {
              context = &p_p_p_src;
              width = &p_src;
              height = &src;
              LODWORD(v134) = v8;
              BYTE4(v134) = BYTE4(v8);
              _ZNK2RB12vImageBuffer12apply_pixelsIZNS_9CGContext21apply_distance_filterEDv2_fS3_jE3__6EEvRKT_(&src, &context);
              RB::vImageBuffer::~vImageBuffer(&p_p_src);
LABEL_66:
              v110 = (a2 >> 5) & 0xF;
              if (v110 != 1)
              {
                if (v110 == 3)
                {
                  v111 = 2;
                }

                else if (v110 == 4)
                {
                  v111 = 3;
                }

                else
                {
                  v111 = 1;
                }

                do
                {
                  --v111;
                }

                while (v111);
              }

              p_p_src = &p_src;
              p_p_p_p_src = &src;
              v121 = a4;
              LODWORD(v122) = v8;
              BYTE4(v122) = BYTE4(v8);
              p_p_p_src = &p_p_src;
              context = &p_p_p_src;
              width = src.width;
              height = src.height;
              v134 = (src.width + 127) >> 7;
              v135 = (src.height + 127) >> 7;
              dispatch_apply_f(v135 * v134, 0, &context, _ZZN2RB20dispatch_apply_tilesIZNS_21dispatch_apply_pixelsIZNS_9CGContext21apply_distance_filterEDv2_fS3_jE4__10EEvmmRKT_EUlmmmmE_EEvmmS7_ENUlPvmE_8__invokeES9_m);
              goto LABEL_74;
            }
          }

          else
          {
            v113[0] = &p_p_p_src;
            v113[1] = &src;
            v114 = v8;
            v115 = BYTE4(v8);
            v130 = v113;
            context = &v130;
            width = src.width;
            height = src.height;
            v134 = (src.width + 127) >> 7;
            v135 = (src.height + 127) >> 7;
            dispatch_apply_f(v135 * v134, 0, &context, _ZZN2RB20dispatch_apply_tilesIZNS_21dispatch_apply_pixelsIZNS_9CGContext21apply_distance_filterEDv2_fS3_jE3__5EEvmmRKT_EUlmmmmE_EEvmmS7_ENUlPvmE_8__invokeES9_m);
          }
        }

        RB::vImageBuffer::~vImageBuffer(&p_p_src);
LABEL_74:
        RB::vImageBuffer::~vImageBuffer(&p_src);
      }
    }

    else
    {
      RB::vImageBuffer::operator=(&dest, &src);
      if (v10 != 2048)
      {
        v9 = 0;
        v126 = 0;
        p_src = 0;
        goto LABEL_15;
      }
    }
  }

  RB::vImageBuffer::~vImageBuffer(&dest.data);
  RB::vImageBuffer::~vImageBuffer(&src.data);
}

void sub_195DE4660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  RB::vImageBuffer::~vImageBuffer((v27 - 104));
  RB::vImageBuffer::~vImageBuffer(&a17);
  RB::vImageBuffer::~vImageBuffer(&a22);
  RB::vImageBuffer::~vImageBuffer(&a27);
  RB::vImageBuffer::~vImageBuffer((v27 - 152));
  _Unwind_Resume(a1);
}

void _ZNK2RB12vImageBuffer12apply_pixelsIZNS_9CGContext21apply_distance_filterEDv2_fS3_jE3__6EEvRKT_(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = a2;
  context[0] = &v4;
  context[1] = v2;
  context[2] = v3;
  dispatch_apply_f(((v3 + 127) >> 7) * ((v2 + 127) >> 7), 0, context, _ZZN2RB20dispatch_apply_tilesIZNS_21dispatch_apply_pixelsIZNS_9CGContext21apply_distance_filterEDv2_fS3_jE3__6EEvmmRKT_EUlmmmmE_EEvmmS7_ENUlPvmE_8__invokeES9_m);
}

void _ZN2RB18Typed_vImageBufferIDv4_DF16_E18apply_pixel_valuesIZNS_9CGContext21apply_distance_filterEDv2_fS5_jE3__9EEvRKT_(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4[0] = a1;
  v4[1] = a2;
  context[0] = v4;
  context[1] = v2;
  context[2] = v3;
  dispatch_apply_f(((v3 + 127) >> 7) * ((v2 + 127) >> 7), 0, context, _ZZN2RB20dispatch_apply_tilesIZNS_18Typed_vImageBufferIDv4_DF16_E18apply_pixel_valuesIZNS_9CGContext21apply_distance_filterEDv2_fS6_jE3__9EEvRKT_EUlmmmmE_EEvmmSA_ENUlPvmE_8__invokeESC_m);
}

void RB::separable_convolve<float,RB::ConvolveSampler::clamp_to_edge>(void **a1, char *a2, uint64_t a3, int a4)
{
  v5 = a1[2];
  if (v5 != *(a2 + 2) || (a4 & 1) == 0 || ((v7 = a2, a2 = a1[1], a2 == v7[1]) ? (v9 = *a1 == 0) : (v9 = 1), !v9 ? (v10 = *v7 == 0) : (v10 = 1), v10))
  {
    _ZN2RB18separable_convolveIDv4_DF16_NS_15ConvolveSampler13clamp_to_zeroEEEvRKNS_18Typed_vImageBufferIT_EERS6_PKfjT0__cold_1(a1, a2);
  }

  if (v5 && a2)
  {
    RB::vImageBuffer::vImageBuffer(&v13);
    if (v13)
    {
      v16 = a1;
      v17 = &v13;
      v18 = a3;
      v19 = a4;
      v12 = a1[1];
      v11 = a1[2];
      v20 = &v16;
      context = &v20;
      v22 = v11;
      v23 = v12;
      v24 = (v11 + 127) >> 7;
      v25 = (v12 + 127) >> 7;
      dispatch_apply_f(v25 * v24, 0, &context, RB::dispatch_apply_tiles<void RB::dispatch_apply_pixels<void RB::separable_convolve<float,RB::ConvolveSampler::clamp_to_edge>(RB::Typed_vImageBuffer<float> const&,RB::Typed_vImageBuffer<float>&,float const*,unsigned int,RB::ConvolveSampler::clamp_to_edge)::{lambda(RB::Typed_vImageBuffer<float> const&,RB::Typed_vImageBuffer<float>&)#1}::operator() const(RB::Typed_vImageBuffer<float> const&,RB::Typed_vImageBuffer<float>&)::{lambda(unsigned long,unsigned long)#1}>(unsigned long,unsigned long,float const&)::{lambda(unsigned long,unsigned long,unsigned long,unsigned long)#1}>(unsigned long,unsigned long,float const&)::{lambda(void *,unsigned long)#1}::__invoke);
      v16 = &v13;
      v17 = v7;
      v18 = a3;
      v19 = a4;
      v20 = &v16;
      context = &v20;
      v22 = v15;
      v23 = v14;
      v24 = (v15 + 127) >> 7;
      v25 = (v14 + 127) >> 7;
      dispatch_apply_f(v25 * v24, 0, &context, RB::dispatch_apply_tiles<void RB::dispatch_apply_pixels<void RB::separable_convolve<float,RB::ConvolveSampler::clamp_to_edge>(RB::Typed_vImageBuffer<float> const&,RB::Typed_vImageBuffer<float>&,float const*,unsigned int,RB::ConvolveSampler::clamp_to_edge)::{lambda(RB::Typed_vImageBuffer<float> const&,RB::Typed_vImageBuffer<float>&)#1}::operator() const(RB::Typed_vImageBuffer<float> const&,RB::Typed_vImageBuffer<float>&)::{lambda(unsigned long,unsigned long)#1}>(unsigned long,unsigned long,float const&)::{lambda(unsigned long,unsigned long,unsigned long,unsigned long)#1}>(unsigned long,unsigned long,float const&)::{lambda(void *,unsigned long)#1}::__invoke);
    }

    RB::vImageBuffer::~vImageBuffer(&v13);
  }
}

void RB::CGContext::apply_distance_filter(CGContext **a1, char a2, double a3)
{
  v3 = a2 & 0x1E;
  if (v3 > 3)
  {
    switch(v3)
    {
      case 4u:
        v4 = --0.0000305175998;
        break;
      case 6u:
        *&v4 = 1065353216;
        break;
      case 8u:
        *&v4 = 3212836864;
        break;
      default:
        return;
    }

    goto LABEL_6;
  }

  v4 = 0.0;
  if ((a2 & 0x1E) == 0)
  {
LABEL_6:
    RB::CGContext::apply_distance_filter(a1, a2, a3, v4);
    return;
  }

  if (v3 == 2)
  {
    v4 = 0.0000305175853;
    goto LABEL_6;
  }
}

void RB::CGContext::apply_distance_rendering(CGContext **a1, int a2, double a3)
{
  switch(a2)
  {
    case 4:
      *(&a3 + 1) = -*&a3;
      v3 = a3;
      break;
    case 3:
      *&v3 = LODWORD(a3);
      break;
    case 2:
      LODWORD(v3) = 0;
      *(&v3 + 1) = -*&a3;
      break;
    default:
      return;
  }

  RB::CGContext::apply_distance_filter(a1, 0x200u, v3, 0.0);
}

void RB::CGContext::apply_ovalize_gradient(uint64_t a1, float64x2_t *a2, double a3, float a4, float a5, float32x2_t a6)
{
  if (a5 != 0.0)
  {
    RB::vImageBuffer::vImageBuffer(&v41, *a1);
    v11 = *(a1 + 80);
    if (v11)
    {
      v12.f64[0] = RB::operator*(v11, (a1 + 32));
    }

    else
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 48);
      v14 = *(a1 + 64);
    }

    context = v12;
    v39 = v13;
    v40 = v14;
    *v15.i64 = RB::operator*(a2, &context);
    v30 = v15;
    v31 = v16;
    v32 = v17;
    v26 = v15;
    v27 = v17;
    v25 = v16;
    if (RB::AffineTransform::invert(&v30))
    {
      v18 = -1;
    }

    else
    {
      v18 = 0;
    }

    v19 = vdupq_n_s64(v18);
    v20 = vbslq_s8(v19, v31, v25);
    v21 = vneg_f32(a6);
    v21.i32[0] = 1.0;
    v30 = vbslq_s8(v19, v30, v26);
    v31 = vnegq_f64(v20);
    v32 = vmlaq_n_f64(vmlaq_f64(vbslq_s8(v19, v32, v27), 0, v30), v20, v42);
    v33 = vdiv_f32(v21, vdup_lane_s32(a6, 0));
    v34 = a3;
    v35 = a4;
    v36 = a5;
    v37 = a6;
    v22 = RB::CGContext::bitmap_format(a1);
    if ((v22 & 0x100000000) == 0)
    {
      goto LABEL_14;
    }

    if (v22 == 1)
    {
      v29 = &v30;
      v44 = &v41;
      v45 = &v29;
      *&context.f64[0] = &v44;
      context.f64[1] = v43;
      *&v39 = v42;
      *(&v39 + 1) = (*&v43 + 127) >> 7;
      *&v40 = (v42 + 127) >> 7;
      v23 = v40 * *(&v39 + 1);
      v24 = _ZZN2RB20dispatch_apply_tilesIZNS_18Typed_vImageBufferIjE29apply_pixel_coords_and_valuesIZNS_9CGContext22apply_ovalize_gradientEDv2_fffS5_RKNS_15AffineTransformEE3__1EEvRKT_EUlmmmmE_EEvmmSC_ENUlPvmE_8__invokeESE_m;
    }

    else
    {
      if (v22 != 2)
      {
LABEL_14:
        RB::vImageBuffer::~vImageBuffer(&v41);
        return;
      }

      v29 = &v30;
      v44 = &v41;
      v45 = &v29;
      *&context.f64[0] = &v44;
      context.f64[1] = v43;
      *&v39 = v42;
      *(&v39 + 1) = (*&v43 + 127) >> 7;
      *&v40 = (v42 + 127) >> 7;
      v23 = v40 * *(&v39 + 1);
      v24 = _ZZN2RB20dispatch_apply_tilesIZNS_18Typed_vImageBufferIDv4_DF16_E29apply_pixel_coords_and_valuesIZNS_9CGContext22apply_ovalize_gradientEDv2_fffS6_RKNS_15AffineTransformEE3__2EEvRKT_EUlmmmmE_EEvmmSD_ENUlPvmE_8__invokeESF_m;
    }

    dispatch_apply_f(v23, 0, &context, v24);
    goto LABEL_14;
  }
}

RB::CGContext::Raster *RB::CGContext::Raster::Raster(RB::CGContext::Raster *this, RB::CGContext *a2)
{
  *this = xmmword_195E42760;
  *(this + 1) = xmmword_195E42770;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 68) = 0;
  *(this + 72) = 0;
  RB::vImageBuffer::vImageBuffer(&v13, *a2);
  v4 = v14;
  *(this + 6) = v13;
  v5 = v16;
  *(this + 14) = v15;
  *(this + 15) = v4;
  *(this + 16) = v5;
  v6 = RB::CGContext::bitmap_format(a2);
  *(this + 17) = v6;
  *(this + 72) = BYTE4(v6);
  *(this + 76) = *(a2 + 8);
  v7 = *(a2 + 10);
  if (v7)
  {
    v8.f64[0] = RB::operator*(v7, a2 + 2);
  }

  else
  {
    v8 = *(a2 + 2);
    v9 = *(a2 + 3);
    v10 = *(a2 + 4);
  }

  v11.f64[0] = 0.0;
  v11.f64[1] = *(this + 15);
  *this = vmulq_f64(v8, xmmword_195E42790);
  *(this + 1) = vmulq_f64(v9, xmmword_195E42790);
  *(this + 2) = vmlaq_f64(v11, xmmword_195E42790, v10);
  RB::vImageBuffer::~vImageBuffer(&v13);
  return this;
}

void sub_195DE4C6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  RB::vImageBuffer::~vImageBuffer(va);
  _Unwind_Resume(a1);
}

void RB::CGContext::Raster::fill_triangle(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, float32x2_t a5, float32x2_t a6, float32x2_t a7)
{
  if (*(a1 + 48))
  {
    if (*(a1 + 72) == 1)
    {
      v8 = vcvtq_f64_f32(a5);
      v9 = *(a1 + 16);
      v10 = vcvt_f32_f64(vmlaq_laneq_f64(vmlaq_n_f64(*(a1 + 32), *a1, v8.f64[0]), v9, v8, 1));
      v11 = vcvtq_f64_f32(a6);
      v12 = vcvt_f32_f64(vmlaq_laneq_f64(vmlaq_n_f64(*(a1 + 32), *a1, v11.f64[0]), v9, v11, 1));
      v16 = vcvtq_f64_f32(a7);
      v13 = vcvt_f32_f64(vmlaq_laneq_f64(vmlaq_n_f64(*(a1 + 32), *a1, *v16.i64), v9, v16, 1));
      v14 = vmax_s32(vcvt_s32_f32(vrndm_f32(vminnm_f32(vminnm_f32(v10, v12), v13))), 0);
      v15 = vmin_s32(vcvt_s32_f32(vrndp_f32(vmaxnm_f32(vmaxnm_f32(v10, v12), v13))), *(a1 + 56));
      *v16.f32 = vcgt_s32(v15, v14);
      if ((vpmin_u32(*v16.f32, *v16.f32).u32[0] & 0x80000000) != 0)
      {
        v16.i64[0] = 0;
        v68 = v14;
        v69 = v15;
        RB::Fill::Color::prepare(a2, *(a1 + 76), v16, *&v15, v14);
        v20 = v19;
        v21.i64[0] = 0;
        RB::Fill::Color::prepare(a3, *(a1 + 76), v21, v22, v23);
        v25 = v24;
        v26.i64[0] = 0;
        RB::Fill::Color::prepare(a4, *(a1 + 76), v26, v27, v28);
        v31 = v68.i32[1];
        if (v68.i32[1] < v69.i32[1])
        {
          __asm { FMOV            V1.4S, #1.0 }

          v37 = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(v20), 0), _Q1);
          v38 = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(v25), 0), _Q1);
          v39 = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(v29), 0), _Q1);
          v40 = *(a1 + 64);
          v41 = *(a1 + 48) + v40 * v68.i32[1];
          v42 = vsub_f32(v12, v10);
          *v30.i32 = -v42.f32[1];
          v43 = vsub_f32(v13, v12);
          v44 = vmul_f32(vzip1_s32(v30, v42), v43);
          v44.i32[0] = vadd_f32(v44, vdup_lane_s32(v44, 1)).u32[0];
          v45 = vrecpe_f32(v44.u32[0]);
          v46 = vmul_f32(vrecps_f32(v44.u32[0], v45), v45);
          v44.i32[0] = vmul_f32(v46, vrecps_f32(v44.u32[0], v46)).u32[0];
          v47 = vmul_n_f32(v42, v44.f32[0]);
          v48 = vsub_f32(v10, v13);
          v49 = vmul_n_f32(v48, v44.f32[0]);
          v50 = vmul_n_f32(v43, v44.f32[0]);
          v51 = vcvt_f32_s32(v68);
          v52 = vsub_f32(vadd_f32(v13, 0xBF000000BF000000), v51);
          v51.f32[0] = -*&v52.i32[1];
          v53 = vzip1_s32(v51, v52);
          v54 = vmul_f32(v53, v48);
          v55 = vmul_f32(v53, v43);
          v56 = vmul_n_f32(vadd_f32(vzip1_s32(v54, v55), vzip2_s32(v54, v55)), v44.f32[0]);
          v57 = 1.0 - vaddv_f32(v56);
          v58 = vzip1_s32(v49, v50);
          v59 = vzip2_s32(v49, v50);
          do
          {
            v60 = v68.u32[0];
            v61 = v57;
            v62 = v56;
            if (v68.i32[0] < v69.i32[0])
            {
              do
              {
                if (v62.f32[1] >= -0.00001 && v62.f32[0] >= -0.00001 && v61 >= -0.00001)
                {
                  v63 = vmlaq_n_f32(vmlaq_n_f32(vmulq_lane_f32(v37, v62, 1), v38, v62.f32[0]), v39, v61);
                  v64 = *(a1 + 68);
                  if (v64 == 1)
                  {
                    v65.i64[0] = 0x3F0000003F000000;
                    v65.i64[1] = 0x3F0000003F000000;
                    v66 = vcvtq_u32_f32(vmlaq_f32(v65, vdupq_n_s32(0x437F0000u), vminnmq_f32(vmaxnmq_f32(v63, 0), _Q1)));
                    v67 = v66.i32[1];
                    v66.i32[1] = vextq_s8(v66, v66, 8uLL).i32[1];
                    *v66.i8 = vshl_u32(*v66.i8, 0x1800000010);
                    *(v41 + 4 * v60) = v66.i32[2] | (v67 << 8) | v66.i32[0] | v66.i32[1];
                  }

                  else if (v64 == 2)
                  {
                    *(v41 + 8 * v60) = vcvt_f16_f32(v63);
                  }

                  else
                  {
                    v63.i32[0] = v63.i32[3];
                    if (v63.f32[3] < 0.0)
                    {
                      v63.f32[0] = 0.0;
                    }

                    if (v63.f32[0] > 1.0)
                    {
                      v63.f32[0] = 1.0;
                    }

                    *(v41 + v60) = ((v63.f32[0] * 255.0) + 0.5);
                  }
                }

                v62 = vsub_f32(v62, v59);
                v61 = v61 - v47.f32[1];
                ++v60;
              }

              while (v69.i32[0] != v60);
              v40 = *(a1 + 64);
            }

            v56 = vadd_f32(v56, v58);
            v57 = v57 + v47.f32[0];
            v41 += v40;
            ++v31;
          }

          while (v31 != v69.i32[1]);
        }
      }
    }
  }
}

void RB::CGContext::add_soft_mask<RB::CGContext::update_state_slow(RB::AffineTransform const*,RB::DisplayList::ClipNode const*,float,RB::BlendMode,RB::Bounds const&,BOOL)::$_1>(RB::CGContext::SoftMaskMode,RB::Rect,RB::CGContext::update_state_slow(RB::AffineTransform const*,RB::DisplayList::ClipNode const*,float,RB::BlendMode,RB::Bounds const&,BOOL)::$_1 const&)::{lambda(RB::CGContext&,void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v2 = *a2;
  if (*a2)
  {
    do
    {
      v4 = (v2[1] & 0xFFFFFFFFFFFFFFFELL);
      if (v4[44] != 1 && (v4[45] & 1) == 0)
      {
        _S0 = (*(*v4 + 104))(v2[1] & 0xFFFFFFFFFFFFFFFELL);
        if (_S0 != 1.0)
        {
          __asm { FCVT            H0, S0 }

          v11 = 0;
          v12 = 0;
          v13 = _H0;
          v14 = 0;
          v15 = 0;
          (*(*v4 + 96))(v4, a1, &v11);
        }
      }

      v2 = *v2;
    }

    while (v2);
  }
}

void *RB::vector<RB::CGContext::GState,4ul,unsigned int>::reserve_slow(void *__dst, unsigned int a2)
{
  if (*(__dst + 75) + (*(__dst + 75) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 75) + (*(__dst + 75) >> 1);
  }

  result = RB::details::realloc_vector<unsigned int,72ul>(*(__dst + 36), __dst, 4u, __dst + 75, v3);
  *(__dst + 36) = result;
  return result;
}

void *RB::details::realloc_vector<unsigned int,72ul>(void *__src, void *__dst, unsigned int a3, _DWORD *a4, unsigned int a5)
{
  v7 = __src;
  if (a5 <= a3)
  {
    if (__src)
    {
      LODWORD(v9) = a3;
      memcpy(__dst, __src, 72 * a5);
      free(v7);
      v12 = 0;
LABEL_8:
      *a4 = v9;
      return v12;
    }
  }

  else
  {
    v8 = malloc_good_size(72 * a5);
    v9 = v8 / 0x48;
    if (*a4 != (v8 / 0x48))
    {
      v10 = malloc_type_realloc(v7, v8, 0x58CA92B9uLL);
      if (!v10)
      {
        RB::precondition_failure("allocation failure", v11);
      }

      v12 = v10;
      if (!v7)
      {
        memcpy(v10, __dst, 72 * *a4);
      }

      goto LABEL_8;
    }
  }

  return v7;
}

void *RB::vector<RB::CGContext::LayerState,4ul,unsigned int>::reserve_slow(void *__dst, unsigned int a2)
{
  if (*(__dst + 131) + (*(__dst + 131) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 131) + (*(__dst + 131) >> 1);
  }

  result = RB::details::realloc_vector<unsigned int,128ul>(*(__dst + 64), __dst, 4u, __dst + 131, v3);
  *(__dst + 64) = result;
  return result;
}

void *RB::details::realloc_vector<unsigned int,128ul>(void *__src, void *__dst, unsigned int a3, _DWORD *a4, unsigned int a5)
{
  v7 = __src;
  if (a5 <= a3)
  {
    if (__src)
    {
      LODWORD(v9) = a3;
      memcpy(__dst, __src, a5 << 7);
      free(v7);
      v12 = 0;
LABEL_8:
      *a4 = v9;
      return v12;
    }
  }

  else
  {
    v8 = malloc_good_size(a5 << 7);
    v9 = v8 >> 7;
    if (*a4 != (v8 >> 7))
    {
      v10 = malloc_type_realloc(v7, v8, 0x58CA92B9uLL);
      if (!v10)
      {
        RB::precondition_failure("allocation failure", v11);
      }

      v12 = v10;
      if (!v7)
      {
        memcpy(v10, __dst, *a4 << 7);
      }

      goto LABEL_8;
    }
  }

  return v7;
}

double RB::CGContext::add_soft_mask<RB::CGContext::add_alpha_mask(CGImage *,RB::Rect const&)::$_0>(RB::CGContext::SoftMaskMode,RB::Rect,RB::CGContext::add_alpha_mask(CGImage *,RB::Rect const&)::$_0 const&)::{lambda(RB::CGContext&,void const*)#1}::__invoke(CGContextRef *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4.origin.x = COERCE_FLOAT(*v2);
  v4.origin.y = COERCE_FLOAT(HIDWORD(*v2));
  v4.size.width = COERCE_FLOAT(v2[1]);
  v4.size.height = COERCE_FLOAT(HIDWORD(v2[1]));
  CGContextDrawImage(*a1, v4, *a2);
  return result;
}

uint64_t *_ZZN2RB20dispatch_apply_tilesIZNS_21dispatch_apply_pixelsIZZNS_18separable_convolveIDv4_DF16_NS_15ConvolveSampler13clamp_to_zeroEEEvRKNS_18Typed_vImageBufferIT_EERS8_PKfjT0_ENKUlRKNS6_IS3_EERSF_E_clESH_SI_EUlmmE_EEvmmRKS7_EUlmmmmE_EEvmmSM_ENUlPvmE_8__invokeESO_m(uint64_t *result, unint64_t a2)
{
  v2 = result[3];
  v3 = a2 / v2;
  v4 = result[2] - ((a2 / v2) << 7);
  if (v4 >= 0x80)
  {
    v4 = 128;
  }

  v5 = v4 + (v3 << 7);
  if (v5 > v3 << 7)
  {
    v6 = (a2 % v2) << 7;
    v7 = v3 << 7;
    v8 = *result;
    v9 = result[1] - v6;
    if (v9 >= 0x80)
    {
      v9 = 128;
    }

    v10 = v9 + v6;
    do
    {
      v11 = v6;
      if (v10 > v6)
      {
        do
        {
          v12 = *v8;
          v13 = *(*v8 + 24);
          if (v13)
          {
            v14 = 0;
            v15 = 0;
            result = (**v12 + (*v12)[3] * v7);
            v16 = v11 - (v13 >> 1);
            v17 = 4 * v13;
            v18 = 0uLL;
            do
            {
              if (v15 + v16 < (*v12)[2])
              {
                v18 = vmlaq_n_f32(v18, vcvtq_f32_f16(result[v15 + v16]), *(v12[2] + v14));
              }

              ++v15;
              v14 += 4;
            }

            while (v17 != v14);
            v19 = vcvt_f16_f32(v18);
          }

          else
          {
            v19 = 0;
          }

          *(*v12[1] + v12[1][3] * v11++ + 8 * v7) = v19;
        }

        while (v11 != v10);
      }

      ++v7;
    }

    while (v7 != v5);
  }

  return result;
}

void RB::dispatch_apply_tiles<void RB::Typed_vImageBuffer<unsigned int>::apply_pixel_values<RB::CGContext::apply_color_conversion(RB::ColorSpace::Conversion const&)::$_0>(RB::CGContext::apply_color_conversion(RB::ColorSpace::Conversion const&)::$_0 const&)::{lambda(unsigned long,unsigned long,unsigned long,unsigned long)#1}>(unsigned long,unsigned long,RB::CGContext::apply_color_conversion(RB::ColorSpace::Conversion const&)::$_0 const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = a2 / v2;
  v4 = a2 % v2;
  v5 = *(a1 + 8);
  if (v5 - (v4 << 7) >= 0x80)
  {
    v6 = 128;
  }

  else
  {
    v6 = v5 - (v4 << 7);
  }

  v7 = *(a1 + 16) - (v3 << 7);
  if (v7 >= 0x80)
  {
    v7 = 128;
  }

  v8 = v7 + (v3 << 7);
  if (v8 > v3 << 7)
  {
    v9 = v4 << 7;
    v10 = v3 << 7;
    v11 = *a1;
    v12 = **a1;
    __asm { FMOV            V0.4S, #1.0 }

    v29 = _Q0;
    v30 = vdupq_n_s32(0x3B808081u);
    v18 = vdupq_n_s32(0x437F0000u);
    v28 = v18;
    do
    {
      if (v5 != v9)
      {
        v19 = 0;
        v20 = *v12 + v12[3] * v10 + 4 * v9;
        v21 = v6;
        do
        {
          v22 = *(v20 + 4 * v19);
          if (HIBYTE(v22))
          {
            *v18.i8 = vshl_u32(vdup_n_s32(v22), 0xFFFFFFF8FFFFFFF0);
            v18.i32[2] = *(v20 + 4 * v19);
            v23 = vdupq_laneq_s32(v18, 2);
            v24.i64[0] = 0xFF000000FFLL;
            v24.i64[1] = 0xFF000000FFLL;
            v25 = vandq_s8(v18, v24);
            v25.i32[3] = vshrq_n_u32(v23, 0x18uLL).i32[3];
            v31 = vmulq_f32(vcvtq_f32_u32(v25), v30);
            *v25.i8 = vzip2_s32(*&vextq_s8(v31, v31, 8uLL), 0);
            *v23.i8 = vrecpe_f32(*v25.i8);
            *v23.i8 = vmul_f32(vrecps_f32(*v25.i8, *v23.i8), *v23.i8);
            RB::ColorSpace::Conversion::operator()(*v11[1], vcvt_f16_f32(vmulq_n_f32(v31, vmul_f32(*v23.i8, vrecps_f32(*v25.i8, *v23.i8)).f32[0])));
            v26.i64[0] = 0x3F0000003F000000;
            v26.i64[1] = 0x3F0000003F000000;
            v18 = vcvtq_u32_f32(vmlaq_f32(v26, v28, vminnmq_f32(vmaxnmq_f32(v31, 0), v29)));
            v27 = v18.i32[1];
            v18.i32[1] = vextq_s8(*&v18, *&v18, 8uLL).i32[1];
            *v18.i8 = vshl_u32(*v18.i8, 0x1800000010);
            v22 = v18.i32[2] | (v27 << 8) | v18.i32[0] | v18.i32[1];
          }

          *(v20 + 4 * v19++) = v22;
          --v21;
        }

        while (v21);
      }

      ++v10;
    }

    while (v10 != v8);
  }
}

void _ZZN2RB20dispatch_apply_tilesIZNS_18Typed_vImageBufferIDv4_DF16_E18apply_pixel_valuesIZNS_9CGContext22apply_color_conversionERKNS_10ColorSpace10ConversionEE3__1EEvRKT_EUlmmmmE_EEvmmSD_ENUlPvmE_8__invokeESF_m(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = a2 / v2;
  v4 = a2 % v2;
  v5 = *(a1 + 8);
  if (v5 - (v4 << 7) >= 0x80)
  {
    v6 = 128;
  }

  else
  {
    v6 = v5 - (v4 << 7);
  }

  v7 = *(a1 + 16) - (v3 << 7);
  if (v7 >= 0x80)
  {
    v7 = 128;
  }

  v8 = v7 + (v3 << 7);
  if (v8 > v3 << 7)
  {
    v9 = v4 << 7;
    v10 = v3 << 7;
    v11 = *a1;
    v12 = **a1;
    do
    {
      if (v5 != v9)
      {
        v13 = 0;
        v14 = *v12 + v12[3] * v10 + 8 * v9;
        v15 = v6;
        do
        {
          v16 = vcvtq_f32_f16(*(v14 + 8 * v13));
          v17 = 0;
          if (v16.f32[3] != 0.0)
          {
            v18 = vrecpe_f32(v16.u32[3]);
            v19 = vmul_f32(vrecps_f32(v16.u32[3], v18), v18);
            v21 = v16.i32[3];
            v20 = vmulq_laneq_f32(vcvtq_f32_f16(RB::ColorSpace::Conversion::operator()(*v11[1], vcvt_f16_f32(vmulq_n_f32(v16, vmul_f32(v19, vrecps_f32(v16.u32[3], v19)).f32[0])))), v16, 3);
            v20.i32[3] = v21;
            v17 = vcvt_f16_f32(v20);
          }

          *(v14 + 8 * v13++) = v17;
          --v15;
        }

        while (v15);
      }

      ++v10;
    }

    while (v10 != v8);
  }
}

float16x4_t *_ZZN2RB20dispatch_apply_tilesIZNS_18Typed_vImageBufferIDv4_DF16_E18apply_pixel_valuesIZNS_9CGContext18apply_color_matrixERKNS_11ColorMatrixEbE3__1EEvRKT_EUlmmmmE_EEvmmSC_ENUlPvmE_8__invokeESE_m(float16x4_t *result, unint64_t a2)
{
  v2 = result[3];
  v3 = a2 / *&v2;
  v4 = a2 % *&v2;
  v5 = result[1];
  v6 = *&v5 - (v4 << 7);
  if (v6 >= 0x80)
  {
    v6 = 128;
  }

  v7 = *&result[2] - (v3 << 7);
  if (v7 >= 0x80)
  {
    v7 = 128;
  }

  v8 = v7 + (v3 << 7);
  if (v8 > v3 << 7)
  {
    v9 = v4 << 7;
    v10 = v3 << 7;
    v11 = *result;
    v12 = **result;
    do
    {
      if (*&v5 != v9)
      {
        v13 = 0;
        v14 = *v12 + v12[3] * v10 + 8 * v9;
        v15 = v6;
        do
        {
          result = v11[1];
          *(v14 + 8 * v13) = vmla_lane_f16(vmla_lane_f16(vmla_lane_f16(vmla_n_f16(result[4], *result, COERCE_SHORT_FLOAT(*(v14 + 8 * v13))), result[1], *(v14 + 8 * v13), 1), result[2], *(v14 + 8 * v13), 2), result[3], *(v14 + 8 * v13), 3);
          ++v13;
          --v15;
        }

        while (v15);
      }

      ++v10;
    }

    while (v10 != v8);
  }

  return result;
}

uint64_t _ZZN2RB20dispatch_apply_tilesIZNS_18Typed_vImageBufferIjE18apply_pixel_valuesIZNS_9CGContext21apply_luminance_curveEDv4_fRKNS_4Fill5ColorEE3__0EEvRKT_EUlmmmmE_EEvmmSD_ENUlPvmE_8__invokeESF_m(uint64_t result, unint64_t a2, double a3, double a4, double a5, double a6, int32x4_t a7)
{
  v7 = *(result + 24);
  v8 = a2 / v7;
  v9 = a2 % v7;
  v10 = *(result + 8);
  v11 = v10 - (v9 << 7);
  if (v11 >= 0x80)
  {
    v11 = 128;
  }

  v12 = *(result + 16) - (v8 << 7);
  if (v12 >= 0x80)
  {
    v12 = 128;
  }

  v13 = v12 + (v8 << 7);
  if (v13 > v8 << 7)
  {
    v14 = v9 << 7;
    v15 = v8 << 7;
    v16 = *result;
    v17 = **result;
    v18 = *v17;
    v19 = v17[3];
    v20 = v18 + 4 * v14;
    do
    {
      if (v10 != v14)
      {
        v21 = 0;
        result = v20 + v15 * v19;
        v22 = v16[1];
        v23 = v22->i64[0];
        v24 = v11;
        do
        {
          v25 = *(result + 4 * v21);
          v26 = v25 & 0xFF000000;
          *a7.i8 = vand_s8(vshl_u32(vdup_n_s32(v25), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
          v27 = vmul_s32(*a7.i8, 0xB72500003666);
          v28 = *(v23 + ((v27.i32[1] + 4725 * v25 + v27.i32[0]) >> 16));
          a7.i32[2] = v25;
          v29 = &v22->i32[2];
          v30 = vld1q_dup_f32(v29);
          a7 = vshrq_n_u32(vmlaq_s32(vnegq_s32(vmvnq_s8(vmulq_s32(v22[1], vdupq_n_s32(v28)))), a7, v30), 8uLL);
          *v30.i8 = vshl_u32(*a7.i8, 0x800000010);
          *(result + 4 * v21++) = a7.i32[2] | v26 | v30.i32[0] | v30.i32[1];
          --v24;
        }

        while (v24);
      }

      ++v15;
    }

    while (v15 != v13);
  }

  return result;
}

float32x4_t *_ZZN2RB20dispatch_apply_tilesIZNS_18Typed_vImageBufferIDv4_DF16_E18apply_pixel_valuesIZNS_9CGContext21apply_luminance_curveEDv4_fRKNS_4Fill5ColorEE3__1EEvRKT_EUlmmmmE_EEvmmSE_ENUlPvmE_8__invokeESG_m(float32x4_t *result, unint64_t a2)
{
  v2 = result[1].u64[1];
  v3 = a2 / v2;
  v4 = a2 % v2;
  v5 = result->i64[1];
  v6 = v5 - (v4 << 7);
  if (v6 >= 0x80)
  {
    v6 = 128;
  }

  v7 = result[1].i64[0] - (v3 << 7);
  if (v7 >= 0x80)
  {
    v7 = 128;
  }

  v8 = v7 + (v3 << 7);
  if (v8 > v3 << 7)
  {
    v9 = v4 << 7;
    v10 = v3 << 7;
    v11 = result->i64[0];
    v12 = *result->i64[0];
    do
    {
      if (v5 != v9)
      {
        v13 = 0;
        v14 = *v12 + v12[3] * v10 + 8 * v9;
        v15 = v6;
        do
        {
          result = v11[1];
          v16 = vcvtq_f32_f16(*(v14 + 8 * v13));
          v17 = vmulq_f32(v16, xmmword_195E457B0);
          v18 = vaddv_f32(*v17.f32) + v17.f32[2];
          if (v18 < 0.0)
          {
            v18 = 0.0;
          }

          if (v18 > 1.0)
          {
            v18 = 1.0;
          }

          v19 = result->f32[3] + ((result->f32[2] + ((result->f32[1] + (v18 * result->f32[0])) * v18)) * v18);
          if (v19 < 0.0)
          {
            v19 = 0.0;
          }

          if (v19 > 1.0)
          {
            v19 = 1.0;
          }

          v20 = vmlaq_n_f32(vmulq_laneq_f32(v16, result[1], 3), result[1], vmuls_lane_f32(v19, v16, 3));
          v20.i32[3] = v16.i32[3];
          *(v14 + 8 * v13++) = vcvt_f16_f32(v20);
          --v15;
        }

        while (v15);
      }

      ++v10;
    }

    while (v10 != v8);
  }

  return result;
}

unint64_t _ZZN2RB20dispatch_apply_tilesIZNS_18Typed_vImageBufferIDv4_DF16_E18apply_pixel_valuesIZNS_9CGContext19apply_component_lutEhPKjE3__0EEvRKT_EUlmmmmE_EEvmmSB_ENUlPvmE_8__invokeESD_m(unint64_t result, unint64_t a2)
{
  v2 = *(result + 24);
  v3 = a2 / v2;
  v4 = a2 % v2;
  v5 = *(result + 8);
  v6 = v5 - (v4 << 7);
  if (v6 >= 0x80)
  {
    v6 = 128;
  }

  v7 = *(result + 16) - (v3 << 7);
  if (v7 >= 0x80)
  {
    v7 = 128;
  }

  v8 = v7 + (v3 << 7);
  if (v8 > v3 << 7)
  {
    v9 = v4 << 7;
    v10 = v3 << 7;
    v11 = *result;
    v12 = **result;
    do
    {
      if (v5 != v9)
      {
        v13 = 0;
        v14 = *v12 + v12[3] * v10 + 8 * v9;
        result = v6;
        do
        {
          v15 = v11[1];
          v16 = (v14 + 8 * v13);
          _H3 = *(v16 + (v15[1] & 3));
          __asm { FCVT            S3, H3 }

          if (_S3 < 0.0)
          {
            _S3 = 0.0;
          }

          if (_S3 > 1.0)
          {
            _S3 = 1.0;
          }

          *v16 = *(*v15 + 8 * ((_S3 * 255.0) + 0.5));
          ++v13;
          --result;
        }

        while (result);
      }

      ++v10;
    }

    while (v10 != v8);
  }

  return result;
}

uint64_t _ZZN2RB20dispatch_apply_tilesIZNS_18Typed_vImageBufferIhE17apply_quad_valuesIZNS_9CGContext25apply_component_thresholdEhDv2_fRKNS_4Fill5ColorEE3__1EEvRKT_EUlmmmmE_EEvmmSD_ENUlPvmE_8__invokeESF_m(uint64_t result, unint64_t a2, float32x4_t a3, double a4, double a5, double a6, double a7, double a8, float32x4_t _Q6)
{
  v10 = *(result + 16);
  v9 = *(result + 24);
  v11 = a2 / v9;
  v12 = a2 % v9;
  v13 = *(result + 8);
  v14 = v13 - (v12 << 7);
  v15 = 128;
  if (v14 >= 0x80)
  {
    v14 = 128;
  }

  if (v10 - (v11 << 7) < 0x80)
  {
    v15 = v10 - (v11 << 7);
  }

  if (v10 != v11 << 7)
  {
    v16 = 0;
    v17 = v12 << 7;
    v18 = v11 << 7;
    v19 = *result;
    v20 = **result;
    v21 = v20[3];
    v22 = *v20 + v21 * v18 + v17;
    a3.i32[0] = 998277249;
    v23 = vdupq_n_s32(0x38D1B717u);
    __asm
    {
      FMOV            V3.4S, #1.0
      FMOV            V4.4S, #-1.0
    }

    do
    {
      if ((v16 | 1) >= v15)
      {
        result = 0;
      }

      else
      {
        result = v21;
      }

      if (v13 != v17)
      {
        v30 = 0;
        result += v22;
        do
        {
          if (v30 + 1 >= v14)
          {
            v31 = v22;
          }

          else
          {
            v31 = v22 + 1;
          }

          if (v30 + 1 >= v14)
          {
            v32 = result;
          }

          else
          {
            v32 = result + 1;
          }

          v33.i16[0] = *(v22 + v30);
          v33.i16[1] = *(v31 + v30);
          v33.i16[2] = *(result + v30);
          v33.i16[3] = *(v32 + v30);
          v34 = *v19[1];
          _Q6.i32[0] = v34->n128_i32[1];
          LODWORD(v35) = vmulq_f32(_Q6, a3).u32[0];
          v36 = &v34->n128_f32[2];
          v37 = vld1q_dup_f32(v36);
          v38 = vmlaq_n_f32(v37, vcvtq_f32_u32(vmovl_u16(v33)), v35);
          v39 = vabdq_f32(v38, vuzp2q_s32(v38, vrev64q_s32(v38)));
          v40 = vmaxnmq_f32(vaddq_f32(v39, vzip2q_s32(v39, vextq_s8(v39, v39, 8uLL))), v23);
          v41 = vrecpeq_f32(v40);
          v42 = vmulq_f32(vrecpsq_f32(v40, v41), v41);
          v43 = vmulq_f32(v42, vrecpsq_f32(v40, v42));
          v40.i64[0] = 0x3F0000003F000000;
          v40.i64[1] = 0x3F0000003F000000;
          v44 = vminnmq_f32(vmaxnmq_f32(vmlaq_f32(v40, v38, v43), 0), _Q3);
          if (v34->n128_u8[0] == 1)
          {
            v45.i64[0] = 0x3F0000003F000000;
            v45.i64[1] = 0x3F0000003F000000;
            v44 = vmulq_f32(vsubq_f32(_Q3, vminnmq_f32(vmaxnmq_f32(vmlaq_f32(v45, vaddq_f32(v38, _Q4), v43), 0), _Q3)), v44);
          }

          _Q6 = v34[1];
          _Q7 = vmulq_n_f32(_Q6, v44.f32[0]);
          _Q16 = vmulq_lane_f32(_Q6, *v44.f32, 1);
          _Q17 = vmulq_laneq_f32(_Q6, v44, 2);
          _Q5 = vmulq_f32(_Q6, v44);
          _Q6.i32[0] = 1132396544;
          __asm { FMLA            S18, S6, V5.S[3] }

          *(v32 + v30) = _S18;
          __asm { FMLA            S5, S6, V17.S[3] }

          *(result + v30) = _Q5.f32[0];
          __asm { FMLA            S5, S6, V16.S[3] }

          *(v31 + v30) = _Q5.f32[0];
          __asm { FMLA            S5, S6, V7.S[3] }

          *(v22 + v30) = _Q5.f32[0];
          v30 += 2;
        }

        while (v30 < v14);
        v21 = v20[3];
      }

      v16 += 2;
      v22 += 2 * v21;
    }

    while (v16 < v15);
  }

  return result;
}

uint64_t _ZZN2RB20dispatch_apply_tilesIZNS_18Typed_vImageBufferIjE17apply_quad_valuesIZNS_9CGContext25apply_component_thresholdEhDv2_fRKNS_4Fill5ColorEE3__2EEvRKT_EUlmmmmE_EEvmmSD_ENUlPvmE_8__invokeESF_m(uint64_t result, unint64_t a2, double a3, double a4, float32x4_t a5)
{
  v7 = *(result + 16);
  v6 = *(result + 24);
  v8 = a2 / v6;
  v9 = a2 % v6;
  v10 = *(result + 8);
  v11 = v10 - (v9 << 7);
  v12 = 128;
  if (v11 >= 0x80)
  {
    v11 = 128;
  }

  if (v7 - (v8 << 7) < 0x80)
  {
    v12 = v7 - (v8 << 7);
  }

  if (v7 != v8 << 7)
  {
    v13 = 0;
    v14 = v8 << 7;
    v15 = *result;
    v16 = **result;
    v17 = v16[3];
    v18 = *v16 + v17 * v14;
    v19 = v9 << 7;
    v20 = v18 + (v9 << 9);
    v21 = vdupq_n_s32(0x38D1B717u);
    v22 = vdupq_n_s32(0x437F0000u);
    a5.i32[0] = 998277249;
    v23.i64[0] = 0xFF000000FFLL;
    v23.i64[1] = 0xFF000000FFLL;
    __asm
    {
      FMOV            V5.4S, #1.0
      FMOV            V6.4S, #-1.0
    }

    do
    {
      if ((v13 | 1) >= v12)
      {
        result = 0;
      }

      else
      {
        result = v17;
      }

      if (v10 != v19)
      {
        v30 = 0;
        result += v20;
        v31 = v15[1];
        v34 = *v31;
        v33 = (v31 + 1);
        v32 = v34;
        v35 = &v34->f32[2];
        v36 = vld1q_dup_f32(v35);
        v5.i32[0] = v34->i32[1];
        v37 = v34->u8[0];
        v5 = vdupq_lane_s32(*&vmulq_f32(v5, a5), 0);
        do
        {
          if (v30 + 1 >= v11)
          {
            v38 = v30;
          }

          else
          {
            v38 = v30 + 1;
          }

          v39.i32[0] = *(v20 + 4 * v30);
          v39.i32[1] = *(v20 + 4 * v38);
          v39.i32[2] = *(result + 4 * v30);
          v39.i32[3] = *(result + 4 * v38);
          v40 = vld1q_dup_f32(v33);
          v41 = vmlaq_f32(v36, vcvtq_f32_u32(vandq_s8(vshlq_u32(v39, vnegq_s32(v40)), v23)), v5);
          v42 = vabdq_f32(v41, vuzp2q_s32(v41, vrev64q_s32(v41)));
          v43 = vmaxnmq_f32(vaddq_f32(v42, vzip2q_s32(v42, vextq_s8(v42, v42, 8uLL))), v21);
          v44 = vrecpeq_f32(v43);
          v45 = vmulq_f32(vrecpsq_f32(v43, v44), v44);
          v46 = vmulq_f32(v45, vrecpsq_f32(v43, v45));
          v43.i64[0] = 0x3F0000003F000000;
          v43.i64[1] = 0x3F0000003F000000;
          v47 = vminnmq_f32(vmaxnmq_f32(vmlaq_f32(v43, v46, v41), 0), _Q5);
          if (v37)
          {
            v48.i64[0] = 0x3F0000003F000000;
            v48.i64[1] = 0x3F0000003F000000;
            v47 = vmulq_f32(vsubq_f32(_Q5, vminnmq_f32(vmaxnmq_f32(vmlaq_f32(v48, v46, vaddq_f32(v41, _Q6)), 0), _Q5)), v47);
          }

          v49 = v32[1];
          v50.i64[0] = 0x3F0000003F000000;
          v50.i64[1] = 0x3F0000003F000000;
          v51 = vcvtq_u32_f32(vmlaq_f32(v50, v22, vminnmq_f32(vmaxnmq_f32(vmulq_laneq_f32(v49, v47, 3), 0), _Q5)));
          *(result + 4 * v38) = v51.i32[2] | (v51.i32[1] << 8) | (v51.i32[0] << 16) | (v51.i32[3] << 24);
          v50.i64[0] = 0x3F0000003F000000;
          v50.i64[1] = 0x3F0000003F000000;
          v52 = vcvtq_u32_f32(vmlaq_f32(v50, v22, vminnmq_f32(vmaxnmq_f32(vmulq_laneq_f32(v49, v47, 2), 0), _Q5)));
          *(result + 4 * v30) = v52.i32[2] | (v52.i32[1] << 8) | (v52.i32[0] << 16) | (v52.i32[3] << 24);
          v50.i64[0] = 0x3F0000003F000000;
          v50.i64[1] = 0x3F0000003F000000;
          v53 = vcvtq_u32_f32(vmlaq_f32(v50, v22, vminnmq_f32(vmaxnmq_f32(vmulq_lane_f32(v49, *v47.f32, 1), 0), _Q5)));
          *(v20 + 4 * v38) = v53.i32[2] | (v53.i32[1] << 8) | (v53.i32[0] << 16) | (v53.i32[3] << 24);
          v54 = vminnmq_f32(vmaxnmq_f32(vmulq_n_f32(v49, v47.f32[0]), 0), _Q5);
          v49.i64[0] = 0x3F0000003F000000;
          v49.i64[1] = 0x3F0000003F000000;
          v55 = vcvtq_u32_f32(vmlaq_f32(v49, v22, v54));
          *(v20 + 4 * v30) = v55.i32[2] | (v55.i32[1] << 8) | (v55.i32[0] << 16) | (v55.i32[3] << 24);
          v30 += 2;
        }

        while (v30 < v11);
      }

      v13 += 2;
      v20 += 2 * v17;
    }

    while (v13 < v12);
  }

  return result;
}

unint64_t _ZZN2RB20dispatch_apply_tilesIZNS_18Typed_vImageBufferIDv4_DF16_E17apply_quad_valuesIZNS_9CGContext25apply_component_thresholdEhDv2_fRKNS_4Fill5ColorEE3__3EEvRKT_EUlmmmmE_EEvmmSE_ENUlPvmE_8__invokeESG_m(unint64_t result, unint64_t a2)
{
  v3 = *(result + 16);
  v2 = *(result + 24);
  v4 = a2 / v2;
  v5 = a2 % v2;
  v6 = *(result + 8);
  v7 = v6 - (v5 << 7);
  v8 = 128;
  if (v7 >= 0x80)
  {
    v7 = 128;
  }

  if (v3 - (v4 << 7) < 0x80)
  {
    v8 = v3 - (v4 << 7);
  }

  if (v3 != v4 << 7)
  {
    v9 = 0;
    v10 = v5 << 7;
    v11 = v4 << 7;
    v12 = *result;
    v13 = **result;
    result = *v13;
    v14 = v13[3];
    v15 = *v13 + v14 * v11 + (v5 << 10);
    v16 = vdupq_n_s32(0x38D1B717u);
    __asm
    {
      FMOV            V2.4S, #1.0
      FMOV            V3.4S, #-1.0
    }

    do
    {
      if ((v9 | 1) >= v8)
      {
        v23 = 0;
      }

      else
      {
        v23 = v14;
      }

      if (v6 != v10)
      {
        v24 = 0;
        v25 = v15 + v23;
        do
        {
          if (v24 + 1 >= v7)
          {
            result = v24;
          }

          else
          {
            result = v24 + 1;
          }

          v26 = v12[1];
          v27 = v26[1] & 3;
          v28.i16[0] = *(v15 + 8 * v24 + 2 * v27);
          v28.i16[1] = *(v15 + 8 * result + 2 * v27);
          v28.i16[2] = *(v25 + 8 * v24 + 2 * v27);
          v28.i16[3] = *(v25 + 8 * result + 2 * v27);
          v29 = *v26;
          v30 = &v29->f32[2];
          v31 = vld1q_dup_f32(v30);
          v32 = vmlaq_n_f32(v31, vcvtq_f32_f16(v28), v29->f32[1]);
          v33 = vabdq_f32(v32, vuzp2q_s32(v32, vrev64q_s32(v32)));
          v34 = vmaxnmq_f32(vaddq_f32(v33, vzip2q_s32(v33, vextq_s8(v33, v33, 8uLL))), v16);
          v35 = vrecpeq_f32(v34);
          v36 = vmulq_f32(vrecpsq_f32(v34, v35), v35);
          v37 = vmulq_f32(v36, vrecpsq_f32(v34, v36));
          v34.i64[0] = 0x3F0000003F000000;
          v34.i64[1] = 0x3F0000003F000000;
          v38 = vminnmq_f32(vmaxnmq_f32(vmlaq_f32(v34, v32, v37), 0), _Q2);
          if (v29->i8[0] == 1)
          {
            v39.i64[0] = 0x3F0000003F000000;
            v39.i64[1] = 0x3F0000003F000000;
            v38 = vmulq_f32(vsubq_f32(_Q2, vminnmq_f32(vmaxnmq_f32(vmlaq_f32(v39, vaddq_f32(v32, _Q3), v37), 0), _Q2)), v38);
          }

          v40 = v29[1];
          *(v25 + 8 * result) = vcvt_f16_f32(vmulq_laneq_f32(v40, v38, 3));
          *(v25 + 8 * v24) = vcvt_f16_f32(vmulq_laneq_f32(v40, v38, 2));
          *(v15 + 8 * result) = vcvt_f16_f32(vmulq_lane_f32(v40, *v38.f32, 1));
          *(v15 + 8 * v24) = vcvt_f16_f32(vmulq_n_f32(v40, v38.f32[0]));
          v24 += 2;
        }

        while (v24 < v7);
        v14 = v13[3];
      }

      v9 += 2;
      v15 += 2 * v14;
    }

    while (v9 < v8);
  }

  return result;
}

uint64_t *RB::dispatch_apply_tiles<void RB::dispatch_apply_pixels<RB::CGContext::apply_glass_highlight(RB::GlassHighlightEffect const&)::$_0>(unsigned long,unsigned long,RB::CGContext::apply_glass_highlight(RB::GlassHighlightEffect const&)::$_0 const&)::{lambda(unsigned long,unsigned long,unsigned long,unsigned long)#1}>(unsigned long,unsigned long,RB::CGContext::apply_glass_highlight(RB::GlassHighlightEffect const&)::$_0 const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t *result, unint64_t a2, double a3, double _D1)
{
  v4 = result[3];
  v5 = a2 / v4;
  v6 = result[2] - ((a2 / v4) << 7);
  if (v6 >= 0x80)
  {
    v6 = 128;
  }

  v7 = v6 + (v5 << 7);
  if (v7 > v5 << 7)
  {
    v8 = (a2 % v4) << 7;
    v9 = v5 << 7;
    v10 = *result;
    v11 = result[1] - v8;
    if (v11 >= 0x80)
    {
      v11 = 128;
    }

    v12 = v11 + v8;
    do
    {
      v13 = v8;
      if (v12 > v8)
      {
        do
        {
          LOBYTE(_D1) = *(**(*v10 + 8) + *(*(*v10 + 8) + 24) * v9 + v13);
          *&_D1 = LODWORD(_D1) * 0.0039216;
          __asm { FCVT            H1, S1 }

          _D1 = COERCE_DOUBLE(vdup_lane_s16(*&_D1, 0));
          *(***v10 + *(**v10 + 24) * v9 + 8 * v13++) = _D1;
        }

        while (v13 != v12);
      }

      ++v9;
    }

    while (v9 != v7);
  }

  return result;
}

uint64_t *RB::dispatch_apply_tiles<void RB::dispatch_apply_pixels<RB::CGContext::apply_glass_highlight(RB::GlassHighlightEffect const&)::$_1>(unsigned long,unsigned long,RB::CGContext::apply_glass_highlight(RB::GlassHighlightEffect const&)::$_1 const&)::{lambda(unsigned long,unsigned long,unsigned long,unsigned long)#1}>(unsigned long,unsigned long,RB::CGContext::apply_glass_highlight(RB::GlassHighlightEffect const&)::$_1 const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t *result, unint64_t a2, double a3, double a4, double a5, float32x4_t a6)
{
  v6 = result[3];
  v7 = a2 / v6;
  v8 = result[2] - ((a2 / v6) << 7);
  if (v8 >= 0x80)
  {
    v8 = 128;
  }

  v9 = v8 + (v7 << 7);
  if (v9 > v7 << 7)
  {
    v10 = (a2 % v6) << 7;
    v11 = v7 << 7;
    v12 = *result;
    v13 = result[1] - v10;
    if (v13 >= 0x80)
    {
      v13 = 128;
    }

    v14 = v13 + v10;
    v15.i64[0] = 0xFF000000FFLL;
    v15.i64[1] = 0xFF000000FFLL;
    v16 = vdupq_n_s32(0x3B808081u);
    do
    {
      v17 = v10;
      if (v14 > v10)
      {
        do
        {
          *a6.f32 = vshl_u32(vdup_n_s32(*(**(*v12 + 8) + *(*(*v12 + 8) + 24) * v11 + 4 * v17)), 0xFFFFFFF8FFFFFFF0);
          a6.i32[2] = *(**(*v12 + 8) + *(*(*v12 + 8) + 24) * v11 + 4 * v17);
          v18 = vdupq_laneq_s32(a6, 2);
          v19 = vandq_s8(a6, v15);
          v19.i32[3] = vshrq_n_u32(v18, 0x18uLL).i32[3];
          a6 = vmulq_f32(vcvtq_f32_u32(v19), v16);
          *(***v12 + *(**v12 + 24) * v11 + 8 * v17++) = vcvt_f16_f32(a6);
        }

        while (v17 != v14);
      }

      ++v11;
    }

    while (v11 != v9);
  }

  return result;
}

uint64_t _ZZN2RB20dispatch_apply_tilesIZNS_21dispatch_apply_pixelsIZZNS_18separable_convolveIDF16_NS_15ConvolveSampler13clamp_to_edgeEEEvRKNS_18Typed_vImageBufferIT_EERS7_PKfjT0_ENKUlRKNS5_IDF16_EERSE_E_clESG_SH_EUlmmE_EEvmmRKS6_EUlmmmmE_EEvmmSL_ENUlPvmE_8__invokeESN_m(uint64_t result, unint64_t a2)
{
  v2 = *(result + 24);
  v3 = a2 / v2;
  v4 = *(result + 16) - ((a2 / v2) << 7);
  if (v4 >= 0x80)
  {
    v4 = 128;
  }

  v5 = v4 + (v3 << 7);
  if (v5 > v3 << 7)
  {
    v6 = (a2 % v2) << 7;
    v7 = v3 << 7;
    v8 = *result;
    v9 = *(result + 8) - v6;
    if (v9 >= 0x80)
    {
      v9 = 128;
    }

    v10 = v9 + v6;
    do
    {
      if (v10 > v6)
      {
        v11 = *v8;
        v13 = **v8;
        v12 = (*v8)[1];
        v14 = *v13 + v13[3] * v7;
        v15 = *(*v8 + 6);
        v16 = *v12;
        result = v12[3];
        v17 = v16 + 2 * v7;
        v18 = v6;
        do
        {
          if (v15)
          {
            v19 = 0;
            v20 = v13[2];
            v21 = v11[2];
            v22 = v18 - (v15 >> 1);
            _S0 = 0.0;
            v24 = v15;
            do
            {
              if (v19 + v22 >= v20)
              {
                v25 = v20 - 1;
              }

              else
              {
                v25 = v19 + v22;
              }

              if ((v19 + v22) >= 0)
              {
                v26 = v25;
              }

              else
              {
                v26 = 0;
              }

              _H1 = *(v14 + 2 * v26);
              __asm { FCVT            S1, H1 }

              v33 = *v21++;
              _S0 = _S0 + (v33 * _S1);
              ++v19;
              --v24;
            }

            while (v24);
            __asm { FCVT            H0, S0 }
          }

          else
          {
            _H0 = 0;
          }

          *(v17 + v18 * result) = _H0;
          ++v18;
        }

        while (v18 != v10);
      }

      ++v7;
    }

    while (v7 != v5);
  }

  return result;
}

uint64_t *RB::dispatch_apply_tiles<void RB::dispatch_apply_pixels<RB::CGContext::apply_glass_highlight(RB::GlassHighlightEffect const&)::$_2>(unsigned long,unsigned long,RB::CGContext::apply_glass_highlight(RB::GlassHighlightEffect const&)::$_2 const&)::{lambda(unsigned long,unsigned long,unsigned long,unsigned long)#1}>(unsigned long,unsigned long,RB::CGContext::apply_glass_highlight(RB::GlassHighlightEffect const&)::$_2 const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t *result, unint64_t a2, double a3, float32x4_t a4)
{
  v4 = result[3];
  v5 = a2 / v4;
  v6 = result[2] - ((a2 / v4) << 7);
  if (v6 >= 0x80)
  {
    v6 = 128;
  }

  v7 = v6 + (v5 << 7);
  if (v7 > v5 << 7)
  {
    v8 = (a2 % v4) << 7;
    v9 = v5 << 7;
    v10 = *result;
    v11 = result[1] - v8;
    if (v11 >= 0x80)
    {
      v11 = 128;
    }

    v12 = v11 + v8;
    do
    {
      if (v12 <= v8)
      {
        v13 = v9 + 1;
      }

      else
      {
        v13 = v9 + 1;
        v14 = v8;
        do
        {
          v15 = *v10;
          v16 = *(*v10 + 8);
          v17 = *v16;
          v18 = v16[3];
          v19 = *v16 + v18 * v9;
          v20 = (v19 + 2 * v14);
          _H0 = *v20;
          __asm { FCVT            S0, H0 }

          _S1 = _S0;
          if (v14)
          {
            _H1 = *(v20 - 1);
            __asm { FCVT            S1, H1 }
          }

          v29 = v14 + 1;
          v30 = *v15;
          _S2 = _S0;
          if (v14 + 1 < *(*v15 + 16))
          {
            _H2 = *(v19 + 2 * v29);
            __asm { FCVT            S2, H2 }
          }

          _S3 = _S0;
          if (v9)
          {
            _H3 = *(v17 + v18 * (v9 - 1) + 2 * v14);
            __asm { FCVT            S3, H3 }
          }

          if (v13 < v30[1])
          {
            _H0 = *(v17 + v18 * v13 + 2 * v14);
            __asm { FCVT            S0, H0 }
          }

          a4.f32[0] = _S2 - _S1;
          a4.f32[1] = _S3 - _S0;
          v36 = vmvn_s8(vceqz_f32(*a4.f32));
          if ((vpmax_u32(v36, v36).u32[0] & 0x80000000) != 0)
          {
            v37 = vmul_f32(*a4.f32, *a4.f32);
            v37.i32[0] = vadd_f32(v37, vdup_lane_s32(v37, 1)).u32[0];
            v38 = vrsqrte_f32(v37.u32[0]);
            v39 = vmul_f32(vrsqrts_f32(v37.u32[0], vmul_f32(v38, v38)), v38);
            *a4.f32 = vmul_n_f32(*a4.f32, vmul_f32(v39, vrsqrts_f32(v37.u32[0], vmul_f32(v39, v39))).f32[0]);
          }

          result = (*v30 + v30[3] * v9);
          v40 = &result[v14];
          v41 = vcvt_f16_f32(a4).u32[0];
          HIWORD(v42) = 15360;
          LOWORD(v42) = *(v40 + (v15[16] & 3));
          *(&v42 + 2) = v41;
          *v40 = v42;
          v14 = v29;
        }

        while (v29 != v12);
      }

      v9 = v13;
    }

    while (v13 != v7);
  }

  return result;
}

unint64_t _ZZN2RB20dispatch_apply_tilesIZNS_18Typed_vImageBufferIDv4_DF16_E17apply_quad_valuesIZNS_9CGContext21apply_glass_highlightERKNS_20GlassHighlightEffectEE3__3EEvRKT_EUlmmmmE_EEvmmSC_ENUlPvmE_8__invokeESE_m(unint64_t result, unint64_t a2)
{
  v3 = *(result + 16);
  v2 = *(result + 24);
  v4 = a2 / v2;
  v5 = a2 % v2;
  v6 = *(result + 8);
  v7 = v6 - (v5 << 7);
  v8 = 128;
  if (v7 >= 0x80)
  {
    v7 = 128;
  }

  if (v3 - (v4 << 7) < 0x80)
  {
    v8 = v3 - (v4 << 7);
  }

  if (v3 != v4 << 7)
  {
    v9 = 0;
    v10 = v4 << 7;
    v11 = *result;
    v12 = **result;
    v13 = v12[3];
    v14 = *v12 + v13 * v10;
    v15 = v5 << 7;
    v16 = v14 + (v5 << 10);
    __asm { FMOV            V1.4S, #1.0 }

    v22 = vdupq_n_s32(0x38D1B717u);
    __asm { FMOV            V3.4S, #-5.0 }

    v24 = vdupq_n_s32(0x3A83126Fu);
    do
    {
      if ((v9 | 1) >= v8)
      {
        v25 = 0;
      }

      else
      {
        v25 = v13;
      }

      if (v6 != v15)
      {
        v26 = 0;
        v27 = v16 + v25;
        do
        {
          if (v26 + 1 >= v7)
          {
            result = v26;
          }

          else
          {
            result = v26 + 1;
          }

          v28 = *(v16 + 8 * v26);
          v29 = *(v16 + 8 * result);
          v30 = *(v27 + 8 * v26);
          v31 = *(v27 + 8 * result);
          v32.i32[0] = vuzp2_s16(vuzp2_s16(v28, v29), v28).u32[0];
          v32.i16[2] = HIWORD(v30);
          v32.i16[3] = HIWORD(v31);
          if ((vminvq_u32(vmovl_s16(vceqz_f16(v32))) & 0x80000000) == 0)
          {
            v33 = v11[1];
            v34.i32[0] = vzip1_s16(v28, v29).u32[0];
            v34.i16[2] = v30;
            v34.i16[3] = v31;
            v35.i32[0] = vtrn2_s16(v28, v29).u32[0];
            v35.i16[2] = WORD1(v30);
            v35.i16[3] = WORD1(v31);
            v36.i32[0] = vzip2_s16(v28, v29).u32[0];
            v36.i16[2] = WORD2(v30);
            v36.i16[3] = WORD2(v31);
            v37 = vcvtq_f32_f16(v36);
            v38 = &v33->f32[1];
            v39 = vld1q_dup_f32(v38);
            v40 = vmlaq_n_f32(v39, vcvtq_f32_f16(v34), v33->f32[0]);
            v36.i32[0] = v33->i32[2];
            v41 = &v33->f32[3];
            v42 = vld1q_dup_f32(v41);
            v43 = vmlaq_n_f32(v42, vcvtq_f32_f16(v35), *v36.i32);
            v44 = vmlaq_n_f32(v42, v37, *v36.i32);
            v45 = vabdq_f32(v40, vuzp2q_s32(v40, vrev64q_s32(v40)));
            v46 = vminnmq_f32(vmaxnmq_f32(vmulq_n_f32(v40, v33[1].f32[0]), 0), _Q1);
            v47 = vandq_s8(_Q1, vcgtq_f32(_Q1, v46));
            v48 = vmlaq_n_f32(v47, vsubq_f32(_Q1, vaddq_f32(v46, v47)), v33[1].f32[1]);
            v49 = vmaxnmq_f32(vaddq_f32(v45, vzip2q_s32(v45, vextq_s8(v45, v45, 8uLL))), v22);
            v50 = vrecpeq_f32(v49);
            v51 = vmulq_f32(vrecpsq_f32(v49, v50), v50);
            v52 = vmulq_f32(v51, vrecpsq_f32(v49, v51));
            v51.i64[0] = 0x3F0000003F000000;
            v51.i64[1] = 0x3F0000003F000000;
            v53 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(vmlaq_f32(v51, v40, v52), 0), _Q1), v48);
            v54 = &v33[1].f32[2];
            v55 = vld1q_dup_f32(v54);
            v48.i64[0] = 0x3F0000003F000000;
            v48.i64[1] = 0x3F0000003F000000;
            v56 = vmlaq_n_f32(vmulq_lane_f32(v44, *v33[2].f32, 1), v43, COERCE_FLOAT(v33[2].i64[0]));
            v57 = &v33[2].f32[2];
            v58 = vld1q_dup_f32(v57);
            v59 = vbicq_s8(vmulq_f32(v53, vmulq_f32(vminnmq_f32(vmaxnmq_f32(vmlaq_f32(v48, v52, vsubq_f32(v55, v40)), 0), _Q1), vminnmq_f32(vmaxnmq_f32(vmulq_n_f32(vsubq_f32(v56, v58), v33[2].f32[3]), 0), _Q1))), vcgtq_f32(_Q3, v40));
            v60 = vdivq_f32(v59, vmaxnmq_f32(vmlaq_n_f32(_Q1, vsubq_f32(_Q1, v59), v33[3].f32[0]), v24));
            *(v27 + 8 * result) = vcvt_f16_f32(vmulq_laneq_f32(v33[4], v60, 3));
            *(v27 + 8 * v26) = vcvt_f16_f32(vmulq_laneq_f32(v33[4], v60, 2));
            *(v16 + 8 * result) = vcvt_f16_f32(vmulq_lane_f32(v33[4], *v60.f32, 1));
            *(v16 + 8 * v26) = vcvt_f16_f32(vmulq_n_f32(v33[4], v60.f32[0]));
          }

          v26 += 2;
        }

        while (v26 < v7);
        v13 = v12[3];
      }

      v9 += 2;
      v16 += 2 * v13;
    }

    while (v9 < v8);
  }

  return result;
}

uint64_t *RB::dispatch_apply_tiles<void RB::dispatch_apply_pixels<RB::CGContext::apply_glass_highlight(RB::GlassHighlightEffect const&)::$_4>(unsigned long,unsigned long,RB::CGContext::apply_glass_highlight(RB::GlassHighlightEffect const&)::$_4 const&)::{lambda(unsigned long,unsigned long,unsigned long,unsigned long)#1}>(unsigned long,unsigned long,RB::CGContext::apply_glass_highlight(RB::GlassHighlightEffect const&)::$_4 const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t *result, unint64_t a2)
{
  v2 = result[3];
  v3 = a2 / v2;
  v4 = result[2] - ((a2 / v2) << 7);
  if (v4 >= 0x80)
  {
    v4 = 128;
  }

  v5 = v4 + (v3 << 7);
  if (v5 > v3 << 7)
  {
    v6 = (a2 % v2) << 7;
    v7 = v3 << 7;
    v8 = *result;
    v9 = result[1] - v6;
    if (v9 >= 0x80)
    {
      v9 = 128;
    }

    v10 = v9 + v6;
    do
    {
      v11 = v6;
      if (v10 > v6)
      {
        do
        {
          _H3 = *(***v8 + *(**v8 + 24) * v7 + 8 * v11 + 6);
          __asm { FCVT            S3, H3 }

          if (_S3 < 0.0)
          {
            _S3 = 0.0;
          }

          if (_S3 > 1.0)
          {
            _S3 = 1.0;
          }

          *(**(*v8 + 8) + *(*(*v8 + 8) + 24) * v7 + v11++) = ((_S3 * 255.0) + 0.5);
        }

        while (v11 != v10);
      }

      ++v7;
    }

    while (v7 != v5);
  }

  return result;
}

uint64_t *RB::dispatch_apply_tiles<void RB::dispatch_apply_pixels<RB::CGContext::apply_glass_highlight(RB::GlassHighlightEffect const&)::$_5>(unsigned long,unsigned long,RB::CGContext::apply_glass_highlight(RB::GlassHighlightEffect const&)::$_5 const&)::{lambda(unsigned long,unsigned long,unsigned long,unsigned long)#1}>(unsigned long,unsigned long,RB::CGContext::apply_glass_highlight(RB::GlassHighlightEffect const&)::$_5 const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t *result, unint64_t a2)
{
  v2 = result[3];
  v3 = a2 / v2;
  v4 = result[2] - ((a2 / v2) << 7);
  if (v4 >= 0x80)
  {
    v4 = 128;
  }

  v5 = v4 + (v3 << 7);
  if (v5 > v3 << 7)
  {
    v6 = (a2 % v2) << 7;
    v7 = v3 << 7;
    v8 = *result;
    v9 = result[1] - v6;
    if (v9 >= 0x80)
    {
      v9 = 128;
    }

    v10 = v9 + v6;
    __asm { FMOV            V1.4S, #1.0 }

    v16 = vdupq_n_s32(0x437F0000u);
    do
    {
      if (v10 > v6)
      {
        v17 = ***v8 + *(**v8 + 24) * v7;
        v18 = **(*v8 + 8) + *(*(*v8 + 8) + 24) * v7;
        v19 = v6;
        do
        {
          v20.i64[0] = 0x3F0000003F000000;
          v20.i64[1] = 0x3F0000003F000000;
          v21 = vcvtq_u32_f32(vmlaq_f32(v20, v16, vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*(v17 + 8 * v19)), 0), _Q1)));
          v22 = v21.i32[1];
          v21.i32[1] = vextq_s8(v21, v21, 8uLL).i32[1];
          *v21.i8 = vshl_u32(*v21.i8, 0x1800000010);
          result = v21.u32[0];
          *(v18 + 4 * v19++) = v21.i32[2] | (v22 << 8) | v21.i32[0] | v21.i32[1];
        }

        while (v19 != v10);
      }

      ++v7;
    }

    while (v7 != v5);
  }

  return result;
}

uint64_t *_ZZN2RB20dispatch_apply_tilesIZNS_21dispatch_apply_pixelsIZNS_9CGContext21apply_distance_filterEDv2_fS3_jE3__0EEvmmRKT_EUlmmmmE_EEvmmS7_ENUlPvmE_8__invokeES9_m(uint64_t *result, unint64_t a2)
{
  v2 = result[3];
  v3 = a2 / v2;
  v4 = result[2] - ((a2 / v2) << 7);
  if (v4 >= 0x80)
  {
    v4 = 128;
  }

  v5 = v4 + (v3 << 7);
  if (v5 > v3 << 7)
  {
    v6 = (a2 % v2) << 7;
    v7 = v3 << 7;
    v8 = *result;
    v9 = result[1] - v6;
    if (v9 >= 0x80)
    {
      v9 = 128;
    }

    v10 = v9 + v6;
    do
    {
      v11 = v6;
      if (v10 > v6)
      {
        do
        {
          _H1 = *(***v8 + *(**v8 + 24) * v7 + 8 * v11 + 6);
          __asm { FCVT            S1, H1 }

          *(**(*v8 + 8) + *(*(*v8 + 8) + 24) * v7 + v11++) = ((_S1 * 255.0) + 0.5);
        }

        while (v11 != v10);
      }

      ++v7;
    }

    while (v7 != v5);
  }

  return result;
}

uint64_t _ZZN2RB20dispatch_apply_tilesIZNS_18Typed_vImageBufferIhE17apply_quad_valuesIZNS_9CGContext21apply_distance_filterEDv2_fS5_jE3__1EEvRKT_EUlmmmmE_EEvmmS9_ENUlPvmE_8__invokeESB_m(uint64_t result, unint64_t a2)
{
  v3 = *(result + 16);
  v2 = *(result + 24);
  v4 = a2 / v2;
  v5 = a2 % v2;
  v6 = *(result + 8);
  v7 = v6 - (v5 << 7);
  v8 = 128;
  if (v7 >= 0x80)
  {
    v7 = 128;
  }

  if (v3 - (v4 << 7) < 0x80)
  {
    v8 = v3 - (v4 << 7);
  }

  if (v3 != v4 << 7)
  {
    v9 = 0;
    v10 = v4 << 7;
    v11 = **result;
    v12 = v11[3];
    v13 = vdupq_n_s32(0x3B808081u);
    v14 = vdupq_n_s32(0x38D1B717u);
    v15 = vdupq_n_s32(0x437F0000u);
    v16 = v5 << 7;
    v17 = *v11 + v12 * v10 + v16;
    __asm { FMOV            V6.4S, #1.0 }

    do
    {
      if ((v9 | 1) >= v8)
      {
        v23 = 0;
      }

      else
      {
        v23 = v12;
      }

      if (v6 != v16)
      {
        v24 = 0;
        v25 = v17 + v23;
        do
        {
          if (v24 + 1 >= v7)
          {
            v26 = v17;
          }

          else
          {
            v26 = v17 + 1;
          }

          if (v24 + 1 >= v7)
          {
            result = v25;
          }

          else
          {
            result = v25 + 1;
          }

          v27.i8[0] = *(v17 + v24);
          v27.i8[1] = *(v26 + v24);
          v27.i8[2] = *(v25 + v24);
          v27.i8[3] = *(result + v24);
          v27.i32[1] = v27.i32[0];
          if ((vminv_u8(vcgt_u8(0x202020202020202, vadd_s8(v27, 0x101010101010101))) & 0x80) == 0)
          {
            v28.i16[0] = *(v17 + v24);
            v28.i16[1] = *(v26 + v24);
            v28.i16[2] = *(v25 + v24);
            v28.i16[3] = *(result + v24);
            v29.i64[0] = 0xBF000000BF000000;
            v29.i64[1] = 0xBF000000BF000000;
            v30 = vmlaq_f32(v29, v13, vcvtq_f32_u32(vmovl_u16(v28)));
            v31 = vabdq_f32(v30, vuzp2q_s32(v30, vrev64q_s32(v30)));
            v32 = vmaxnmq_f32(vaddq_f32(v31, vzip2q_s32(v31, vextq_s8(v31, v31, 8uLL))), v14);
            v33 = vrecpeq_f32(v32);
            v34 = vmulq_f32(vrecpsq_f32(v32, v33), v33);
            v35 = vmulq_f32(vrecpsq_f32(v32, v34), v30);
            v30.i64[0] = 0x3F0000003F000000;
            v30.i64[1] = 0x3F0000003F000000;
            v36 = vminnmq_f32(vmaxnmq_f32(vmlaq_f32(v30, v34, v35), 0), _Q6);
            v30.i64[0] = 0x3F0000003F000000;
            v30.i64[1] = 0x3F0000003F000000;
            *v36.f32 = vmovn_s32(vcvtq_s32_f32(vmlaq_f32(v30, v15, v36)));
            *(result + v24) = v36.i8[6];
            *(v25 + v24) = v36.i8[4];
            result = v36.u16[1];
            *(v26 + v24) = v36.i8[2];
            *(v17 + v24) = v36.i8[0];
          }

          v24 += 2;
        }

        while (v24 < v7);
        v12 = v11[3];
      }

      v9 += 2;
      v17 += 2 * v12;
    }

    while (v9 < v8);
  }

  return result;
}

void *_ZZN2RB20dispatch_apply_tilesIZNS_9CGContext21apply_distance_filterEDv2_fS2_jE3__2EEvmmRKT_ENUlPvmE_8__invokeES7_m(void *result, unint64_t a2)
{
  v5 = result[3];
  v6 = a2 / v5;
  v7 = result[2] - ((a2 / v5) << 7);
  if (v7 >= 0x80)
  {
    v7 = 128;
  }

  v8 = v7 + (v6 << 7);
  if (v8 > v6 << 7)
  {
    v9 = (a2 % v5) << 7;
    v10 = v6 << 7;
    v11 = *result;
    v12 = *(*result + 8);
    if (result[1] - v9 >= 0x80)
    {
      v13 = 128;
    }

    else
    {
      v13 = result[1] - v9;
    }

    v14 = v9 - 1;
    v15 = v9 - 2;
    v16 = v13 + v9;
    result = &qword_195E44FE0[4];
    do
    {
      v17 = v10 - 2;
      v18 = v12[2];
      v19 = 0.0;
      v20 = 0.0;
      if (v18 > v15 && v12[1] > v17)
      {
        LOBYTE(v2) = *(*v12 + v12[3] * v17 + v15);
        v20 = LODWORD(v2) * 0.0039216;
      }

      if (v18 > v14 && v12[1] > v17)
      {
        LOBYTE(v19) = *(*v12 + v12[3] * v17 + v14);
        v19 = LODWORD(v19) * 0.0039216;
      }

      v21 = v10 - 1;
      v2 = 0.0;
      v22 = 0.0;
      if (v18 > v15 && v12[1] > v21)
      {
        LOBYTE(v3) = *(*v12 + v12[3] * v21 + v15);
        v22 = LODWORD(v3) * 0.0039216;
      }

      if (v18 > v14 && v12[1] > v21)
      {
        LOBYTE(v2) = *(*v12 + v12[3] * v21 + v14);
        v2 = LODWORD(v2) * 0.0039216;
      }

      v3 = 0.0;
      v23 = 0.0;
      if (v18 > v15 && v12[1] > v10)
      {
        LOBYTE(v4) = *(*v12 + v12[3] * v10 + v15);
        v4 = LODWORD(v4);
        v23 = v4 * 0.0039216;
      }

      if (v18 > v14 && v12[1] > v10)
      {
        LOBYTE(v3) = *(*v12 + v12[3] * v10 + v14);
        v3 = LODWORD(v3) * 0.0039216;
      }

      if (v16 > v9)
      {
        v24 = -v20;
        v25 = v9;
        do
        {
          v26 = v3;
          v4 = v2;
          v27 = v19;
          v2 = 0.0;
          v19 = 0.0;
          v3 = 0.0;
          if (v12[2] > v25)
          {
            v28 = v12[1];
            if (v28 > v17)
            {
              LOBYTE(v19) = *(*v12 + v12[3] * v17 + v25);
              v19 = LODWORD(v19) * 0.0039216;
            }

            if (v28 > v21)
            {
              LOBYTE(v2) = *(*v12 + v12[3] * v21 + v25);
              v2 = LODWORD(v2) * 0.0039216;
            }

            if (v28 > v10)
            {
              LOBYTE(v3) = *(*v12 + v12[3] * v10 + v25);
              v3 = LODWORD(v3) * 0.0039216;
            }
          }

          v29.f32[0] = ((v24 - v23) + (v19 + v3)) + ((v2 - v22) * 2.0);
          v29.f32[1] = (((v23 + v24) + ((v26 - v27) * 2.0)) - v19) + v3;
          v30 = vmul_f32(v29, v29);
          v31 = vaddv_f32(v30);
          if (v31 != 0.0)
          {
            v32 = vadd_f32(v30, vdup_lane_s32(v30, 1)).u32[0];
            v33 = vrsqrte_f32(v32);
            v34 = vmul_f32(vrsqrts_f32(v32, vmul_f32(v33, v33)), v33);
            v29 = vmul_n_f32(v29, vmul_f32(v34, vrsqrts_f32(v32, vmul_f32(v34, v34))).f32[0]);
          }

          if (v31 > 15.0 || (v35 = 2080406528, v31 > 0.5) && v4 > 0.0026042 && v4 < 0.9974)
          {
            v36 = vabs_f32(v29);
            v37 = v11[2];
            v38 = (v4 * 16.0) + -0.5;
            v36.f32[0] = ((fminf(v36.f32[0], v36.f32[1]) * 16.0) / fmaxf(v36.f32[0], v36.f32[1])) + -0.5;
            v39.i32[0] = v38;
            v39.i32[1] = v38 + 1;
            v40.i32[0] = v36.f32[0];
            v40.i32[1] = v36.f32[0] + 1;
            _D26 = vmin_s32(vmax_s32(v40, 0), 0xF0000000FLL);
            _D25 = vmin_s32(vmax_s32(v39, 0), 0xF0000000FLL);
            v43 = _D25.i32[0];
            _D25.i16[0] = *(v37 + 2 * (_D25.i32[0] + 16 * _D26.i32[0]));
            _D26.i16[0] = *(v37 + 2 * (_D25.i32[1] + 16 * _D26.i32[0]));
            __asm
            {
              FCVT            S25, H25
              FCVT            S26, H26
            }

            _H27 = *(v37 + 2 * (v43 + 16 * _D26.i32[1]));
            __asm { FCVT            S27, H27 }

            _H28 = *(v37 + 2 * (_D25.i32[1] + 16 * _D26.i32[1]));
            __asm { FCVT            S28, H28 }

            v52 = fminf(v38 - floorf(v38), 1.0);
            *v53.f32 = vmul_n_f32(v29, (*_D25.i32 + ((*_D26.i32 - *_D25.i32) * v52)) + (((_S27 - (*_D25.i32 + ((*_D26.i32 - *_D25.i32) * v52))) + ((_S28 - _S27) * v52)) * fminf(v36.f32[0] - floorf(v36.f32[0]), 1.0)));
            v53.f32[2] = -v29.f32[1];
            v53.i32[3] = v29.i32[0];
            v35 = vcvt_f16_f32(v53);
          }

          *(**v11 + *(*v11 + 24) * v10 + 8 * v25) = v35;
          v24 = -v27;
          v22 = v4;
          v23 = v26;
          ++v25;
        }

        while (v25 != v16);
      }

      ++v10;
    }

    while (v10 != v8);
  }

  return result;
}

uint64_t _ZZN2RB20dispatch_apply_tilesIZNS_21dispatch_apply_pixelsIZNS_9CGContext21apply_distance_filterEDv2_fS3_jE3__5EEvmmRKT_EUlmmmmE_EEvmmS7_ENUlPvmE_8__invokeES9_m(uint64_t result, unint64_t a2, float32x4_t a3, double a4, double a5, double a6, double a7, double a8, double a9, int8x16_t a10)
{
  v11 = *(result + 24);
  v12 = a2 / v11;
  v13 = *(result + 16) - ((a2 / v11) << 7);
  if (v13 >= 0x80)
  {
    v13 = 128;
  }

  v14 = v13 + (v12 << 7);
  if (v14 > v12 << 7)
  {
    v15 = (a2 % v11) << 7;
    v16 = v12 << 7;
    v17 = *result;
    v18 = *(result + 8) - v15;
    if (v18 >= 0x80)
    {
      v18 = 128;
    }

    v19 = v18 + v15;
    a3.i32[0] = 1061997773;
    do
    {
      v20 = v16 + 1;
      v21 = v15;
      if (v19 > v15)
      {
        do
        {
          v22 = *v17;
          v23 = **v17;
          v24 = vcvtq_f32_f16(*(**v23 + *(*v23 + 24) * v20 + 8 * v21 + 8));
          v25 = vextq_s8(v24, v24, 8uLL).u64[0];
          v26 = vmul_f32(v25, vneg_f32(*v24.i8));
          v10.f32[0] = fabsf(vaddv_f32(v26));
          v10 = vdupq_lane_s32(*&vcgtq_f32(a3, v10), 0);
          *a10.i8 = vmla_n_f32(*v24.i8, v25, vadd_f32(v26, vdup_lane_s32(v26, 1)).f32[0]);
          v27 = vbslq_s8(v10, a10, v24);
          _D4 = vmulq_f32(v27, v27).u64[0];
          _D4.f32[0] = sqrtf(vaddv_f32(_D4));
          result = *(**(v23 + 8) + *(*(v23 + 8) + 24) * v16 + v21);
          if (result >= 0)
          {
            _D4.f32[0] = -_D4.f32[0];
          }

          _D4.f32[0] = *(v23 + 20) + (_D4.f32[0] * *(v23 + 16));
          if (_D4.f32[0] < 0.0)
          {
            _D4.f32[0] = 0.0;
          }

          if (_D4.f32[0] > 1.0)
          {
            _D4.f32[0] = 1.0;
          }

          v29 = *(v22 + 4);
          switch(v29)
          {
            case 2:
              __asm { FCVT            H4, S4 }

              *(*v22[1] + *(v22[1] + 24) * v16 + 8 * v21) = vdup_lane_s16(_D4, 0);
              break;
            case 1:
              v31 = v22[1];
              result = *v31;
              *(*v31 + v31[3] * v16 + 4 * v21) = ((_D4.f32[0] * 255.0) + 0.5) | (((_D4.f32[0] * 255.0) + 0.5) << 8) | ((((_D4.f32[0] * 255.0) + 0.5) | (((_D4.f32[0] * 255.0) + 0.5) << 8)) << 16);
              break;
            case 0:
              v30 = v22[1];
              result = *v30;
              *(*v30 + v30[3] * v16 + v21) = ((_D4.f32[0] * 255.0) + 0.5);
              break;
          }

          ++v21;
        }

        while (v21 != v19);
      }

      ++v16;
    }

    while (v20 != v14);
  }

  return result;
}

uint64_t _ZZN2RB20dispatch_apply_tilesIZNS_21dispatch_apply_pixelsIZNS_9CGContext21apply_distance_filterEDv2_fS3_jE3__6EEvmmRKT_EUlmmmmE_EEvmmS7_ENUlPvmE_8__invokeES9_m(uint64_t result, unint64_t a2, float32x4_t a3, double a4, double a5, double a6, double a7, double a8, double a9, int32x4_t a10)
{
  v11 = *(result + 24);
  v12 = a2 / v11;
  v13 = *(result + 16) - ((a2 / v11) << 7);
  if (v13 >= 0x80)
  {
    v13 = 128;
  }

  v14 = v13 + (v12 << 7);
  if (v14 > v12 << 7)
  {
    v15 = (a2 % v11) << 7;
    v16 = v12 << 7;
    v17 = *result;
    v18 = *(result + 8) - v15;
    if (v18 >= 0x80)
    {
      v18 = 128;
    }

    v19 = v18 + v15;
    a3.i32[0] = 1061997773;
    do
    {
      v20 = v16 + 1;
      v21 = v15;
      if (v19 > v15)
      {
        do
        {
          v22 = *v17;
          v24 = **v17;
          v23 = (*v17)[1];
          v25 = vcvtq_f32_f16(*(**v24 + *(*v24 + 24) * v20 + 8 * v21 + 8));
          v26 = vextq_s8(v25, v25, 8uLL).u64[0];
          *a10.i8 = vmul_f32(v26, vneg_f32(*v25.i8));
          LODWORD(v27) = vadd_f32(*a10.i8, vdup_lane_s32(*a10.i8, 1)).u32[0];
          *a10.i32 = fabsf(vaddv_f32(*a10.i8));
          a10 = vdupq_lane_s32(*&vcgtq_f32(a3, a10), 0);
          *v10.i8 = vmla_n_f32(*v25.i8, v26, v27);
          v28 = vbslq_s8(a10, v10, v25);
          v29 = sqrtf(vaddv_f32(*&vmulq_f32(v28, v28)));
          if (*(**(v24 + 8) + *(*(v24 + 8) + 24) * v16 + v21) >= 0)
          {
            v29 = -v29;
          }

          _S6 = *(v24 + 20) + (v29 * *(v24 + 16));
          if (_S6 < 0.0)
          {
            _S6 = 0.0;
          }

          if (_S6 > 1.0)
          {
            _S6 = 1.0;
          }

          v31 = *v23;
          result = v23[3];
          *(v31 + result * v16 + 4 * v21) = _S6;
          if (*(v22 + 6) == 1)
          {
            v32 = ((_S6 * 255.0) + 0.5) << 16;
            if (v32)
            {
              v33 = v32 | 0xFF000000;
            }

            else
            {
              v33 = 0;
            }

            v34 = v22[2];
            result = *v34;
            *(*v34 + v34[3] * v16 + 4 * v21) = v33;
          }

          else
          {
            __asm { FCVT            H7, S6 }

            if (_S6 == 0.0)
            {
              v40 = COERCE_SHORT_FLOAT(0);
            }

            else
            {
              LOWORD(v40) = COERCE_UNSIGNED_INT(1.0);
            }

            v41 = _H7;
            *(&v41 + 3) = v40;
            *(*v22[2] + *(v22[2] + 24) * v16 + 8 * v21) = v41;
          }

          ++v21;
        }

        while (v21 != v19);
      }

      ++v16;
    }

    while (v20 != v14);
  }

  return result;
}

uint64_t *_ZZN2RB20dispatch_apply_tilesIZNS_21dispatch_apply_pixelsIZNS_9CGContext21apply_distance_filterEDv2_fS3_jE3__7EEvmmRKT_EUlmmmmE_EEvmmS7_ENUlPvmE_8__invokeES9_m(uint64_t *result, unint64_t a2, double a3, float a4)
{
  v4 = result[3];
  v5 = a2 / v4;
  v6 = result[2] - ((a2 / v4) << 7);
  if (v6 >= 0x80)
  {
    v6 = 128;
  }

  v7 = v6 + (v5 << 7);
  if (v7 > v5 << 7)
  {
    v8 = (a2 % v4) << 7;
    v9 = v5 << 7;
    v10 = *result;
    v11 = result[1] - v8;
    if (v11 >= 0x80)
    {
      v11 = 128;
    }

    v12 = v11 + v8;
    do
    {
      if (v12 > v8)
      {
        v13 = **(*v10 + 8) + *(*(*v10 + 8) + 24) * v9;
        v14 = ***v10 + *(**v10 + 24) * v9;
        v15 = v8;
        do
        {
          LOBYTE(a4) = *(v13 + v15);
          a4 = LODWORD(a4) * 0.0039216;
          *(v14 + 4 * v15++) = a4;
        }

        while (v15 != v12);
      }

      ++v9;
    }

    while (v9 != v7);
  }

  return result;
}

uint64_t _ZZN2RB20dispatch_apply_tilesIZNS_18Typed_vImageBufferIjE18apply_pixel_valuesIZNS_9CGContext21apply_distance_filterEDv2_fS5_jE3__8EEvRKT_EUlmmmmE_EEvmmS9_ENUlPvmE_8__invokeESB_m(uint64_t result, unint64_t a2)
{
  v2 = *(result + 24);
  v3 = a2 / v2;
  v4 = a2 % v2;
  v5 = *(result + 8);
  v6 = v5 - (v4 << 7);
  if (v6 >= 0x80)
  {
    v6 = 128;
  }

  v7 = *(result + 16) - (v3 << 7);
  if (v7 >= 0x80)
  {
    v7 = 128;
  }

  v8 = v7 + (v3 << 7);
  if (v8 > v3 << 7)
  {
    v9 = v4 << 7;
    v10 = v3 << 7;
    v11 = **result;
    v12 = *v11;
    v13 = v11[3];
    v14 = v12 + 4 * v9;
    do
    {
      if (v5 != v9)
      {
        v15 = 0;
        v16 = v14 + v10 * v13;
        v17 = v6;
        do
        {
          v18 = *(v16 + 4 * v15);
          if (HIBYTE(v18))
          {
            result = (v18 >> 8) & 0xFF0000 | 0xFF000000;
          }

          else
          {
            result = 0;
          }

          *(v16 + 4 * v15++) = result;
          --v17;
        }

        while (v17);
      }

      ++v10;
    }

    while (v10 != v8);
  }

  return result;
}

uint64_t _ZZN2RB20dispatch_apply_tilesIZNS_18Typed_vImageBufferIDv4_DF16_E18apply_pixel_valuesIZNS_9CGContext21apply_distance_filterEDv2_fS6_jE3__9EEvRKT_EUlmmmmE_EEvmmSA_ENUlPvmE_8__invokeESC_m(uint64_t result, unint64_t a2)
{
  v2 = *(result + 24);
  v3 = a2 / v2;
  v4 = a2 % v2;
  v5 = *(result + 8);
  v6 = v5 - (v4 << 7);
  if (v6 >= 0x80)
  {
    v6 = 128;
  }

  v7 = *(result + 16) - (v3 << 7);
  if (v7 >= 0x80)
  {
    v7 = 128;
  }

  v8 = v7 + (v3 << 7);
  if (v8 > v3 << 7)
  {
    v9 = v4 << 7;
    v10 = v3 << 7;
    v11 = **result;
    do
    {
      if (v5 != v9)
      {
        v12 = 0;
        v13 = *v11 + v11[3] * v10 + 8 * v9;
        v14 = v6;
        do
        {
          v15 = 0x3C00000000000000;
          __asm { FCMP            H2, #0 }

          if (_ZF)
          {
            v21 = 0;
          }

          else
          {
            v21 = -1;
          }

          v15.i16[0] = HIWORD(*(v13 + 8 * v12));
          *(v13 + 8 * v12++) = vand_s8(v15, vdup_n_s16(v21));
          --v14;
        }

        while (v14);
      }

      ++v10;
    }

    while (v10 != v8);
  }

  return result;
}

uint64_t RB::dispatch_apply_tiles<void RB::dispatch_apply_pixels<void RB::separable_convolve<float,RB::ConvolveSampler::clamp_to_edge>(RB::Typed_vImageBuffer<float> const&,RB::Typed_vImageBuffer<float>&,float const*,unsigned int,RB::ConvolveSampler::clamp_to_edge)::{lambda(RB::Typed_vImageBuffer<float> const&,RB::Typed_vImageBuffer<float>&)#1}::operator() const(RB::Typed_vImageBuffer<float> const&,RB::Typed_vImageBuffer<float>&)::{lambda(unsigned long,unsigned long)#1}>(unsigned long,unsigned long,float const&)::{lambda(unsigned long,unsigned long,unsigned long,unsigned long)#1}>(unsigned long,unsigned long,float const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t result, unint64_t a2)
{
  v2 = *(result + 24);
  v3 = a2 / v2;
  v4 = *(result + 16) - ((a2 / v2) << 7);
  if (v4 >= 0x80)
  {
    v4 = 128;
  }

  v5 = v4 + (v3 << 7);
  if (v5 > v3 << 7)
  {
    v6 = (a2 % v2) << 7;
    v7 = v3 << 7;
    v8 = *result;
    v9 = *(result + 8) - v6;
    if (v9 >= 0x80)
    {
      v9 = 128;
    }

    v10 = v9 + v6;
    do
    {
      if (v10 > v6)
      {
        v11 = *v8;
        v13 = **v8;
        v12 = (*v8)[1];
        v14 = *v13 + v13[3] * v7;
        v15 = *(*v8 + 6);
        v16 = *v12;
        result = v12[3];
        v17 = v16 + 4 * v7;
        v18 = v6;
        do
        {
          if (v15)
          {
            v19 = 0;
            v20 = v13[2];
            v21 = v11[2];
            v22 = v18 - (v15 >> 1);
            _S0 = 0.0;
            v24 = v15;
            do
            {
              if (v19 + v22 >= v20)
              {
                v25 = v20 - 1;
              }

              else
              {
                v25 = v19 + v22;
              }

              if ((v19 + v22) >= 0)
              {
                v26 = v25;
              }

              else
              {
                v26 = 0;
              }

              v27 = *v21++;
              _S0 = _S0 + (v27 * *(v14 + 4 * v26));
              ++v19;
              --v24;
            }

            while (v24);
            __asm
            {
              FCVT            H0, S0
              FCVT            S0, H0
            }
          }

          else
          {
            _S0 = 0;
          }

          *(v17 + v18 * result) = _S0;
          ++v18;
        }

        while (v18 != v10);
      }

      ++v7;
    }

    while (v7 != v5);
  }

  return result;
}

uint64_t _ZZN2RB20dispatch_apply_tilesIZNS_21dispatch_apply_pixelsIZNS_9CGContext21apply_distance_filterEDv2_fS3_jE4__10EEvmmRKT_EUlmmmmE_EEvmmS7_ENUlPvmE_8__invokeES9_m(uint64_t result, unint64_t a2, double a3, float32x4_t a4)
{
  v4 = *(result + 24);
  v5 = a2 / v4;
  v6 = *(result + 16) - ((a2 / v4) << 7);
  if (v6 >= 0x80)
  {
    v6 = 128;
  }

  v7 = v6 + (v5 << 7);
  if (v7 > v5 << 7)
  {
    v8 = (a2 % v4) << 7;
    v9 = v5 << 7;
    v10 = *result;
    v11 = *(result + 8) - v8;
    if (v11 >= 0x80)
    {
      v11 = 128;
    }

    v12 = v11 + v8;
    v13 = vdup_n_s32(0x437F0000u);
    do
    {
      if (v12 <= v8)
      {
        v15 = v9 + 1;
      }

      else
      {
        v14 = v9 - 1;
        v15 = v9 + 1;
        v16 = v8;
        do
        {
          v17 = *v10;
          v18 = **v10;
          v19 = v18[2];
          v20 = 0.0;
          v21 = 0.0;
          if (v19 > v16 - 1 && v18[1] > v9)
          {
            v21 = *(*v18 + v18[3] * v9 + 4 * (v16 - 1));
          }

          v22 = v16 + 1;
          if (v19 > v16 + 1 && v18[1] > v9)
          {
            v20 = *(*v18 + v18[3] * v9 + 4 * v22);
          }

          v23 = 0.0;
          v24 = 0.0;
          if (v19 > v16)
          {
            v25 = v18[1];
            if (v25 > v14)
            {
              v23 = *(*v18 + v18[3] * v14 + 4 * v16);
            }

            if (v25 > v15)
            {
              v24 = *(*v18 + v18[3] * v15 + 4 * v16);
            }
          }

          v26.f32[0] = v20 - v21;
          v27 = v24 - v23;
          if (v26.f32[0] != 0.0 || (v28 = 0, v27 != 0.0))
          {
            v26.f32[1] = v27;
            v29 = vmul_f32(v26, v26);
            v29.i32[0] = vadd_f32(v29, vdup_lane_s32(v29, 1)).u32[0];
            v30 = vrsqrte_f32(v29.u32[0]);
            v31 = vmul_f32(vrsqrts_f32(v29.u32[0], vmul_f32(v30, v30)), v30);
            v28 = vmul_n_f32(v26, vmul_f32(v31, vrsqrts_f32(v29.u32[0], vmul_f32(v31, v31))).f32[0]);
          }

          v32 = v17[2];
          v33 = vdup_lane_s32(v32, 1);
          v32.f32[1] = -v32.f32[0];
          *a4.f32 = vmla_f32(v33, v28, v32);
          v34 = *(v17 + 6);
          v35 = v17[1];
          if (v34 == 1)
          {
            v36 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v13, *a4.f32));
            v37 = *v35 + v35[3] * v9 + 4 * v16;
            result = (v36.i32[1] | (v36.i32[0] << 8));
            *v37 = result | (*(v37 + 2) << 16);
          }

          else
          {
            result = *v35;
            v38 = *v35 + v35[3] * v9;
            v39 = *(v38 + 8 * v16);
            *(&v39 + 2) = vcvt_f16_f32(a4).u32[0];
            *(v38 + 8 * v16) = v39;
          }

          v16 = v22;
        }

        while (v22 != v12);
      }

      v9 = v15;
    }

    while (v15 != v7);
  }

  return result;
}

uint64_t _ZZN2RB20dispatch_apply_tilesIZNS_18Typed_vImageBufferIjE29apply_pixel_coords_and_valuesIZNS_9CGContext22apply_ovalize_gradientEDv2_fffS5_RKNS_15AffineTransformEE3__1EEvRKT_EUlmmmmE_EEvmmSC_ENUlPvmE_8__invokeESE_m(uint64_t result, unint64_t a2)
{
  v3 = *(result + 24);
  v4 = a2 / v3;
  v5 = a2 % v3;
  v6 = *(result + 8);
  v7 = v6 - (v5 << 7);
  if (v7 >= 0x80)
  {
    v7 = 128;
  }

  v8 = *(result + 16) - (v4 << 7);
  if (v8 >= 0x80)
  {
    v8 = 128;
  }

  v9 = v8 + (v4 << 7);
  if (v9 > v4 << 7)
  {
    v10 = v5 << 7;
    v11 = v4 << 7;
    v12 = *result;
    v13 = **result;
    v14 = *v13;
    v15 = v13[3];
    v16 = v14 + 4 * v10;
    v17.i64[0] = 0xFF000000FFLL;
    v17.i64[1] = 0xFF000000FFLL;
    v18 = vdupq_n_s32(0x3B808081u);
    __asm { FMOV            V7.4S, #1.0 }

    v24 = vdupq_n_s32(0x437F0000u);
    do
    {
      if (v6 != v10)
      {
        v25 = 0;
        v26 = v16 + v11 * v15;
        do
        {
          result = *(v26 + 4 * v25);
          if (BYTE3(result))
          {
            v27.f32[0] = (v10 + 0.5) + v25;
            v27.f32[1] = v11 + 0.5;
            *v2.i8 = vshl_u32(vdup_n_s32(result), 0xFFFFFFF8FFFFFFF0);
            v2.i32[2] = *(v26 + 4 * v25);
            v28 = vdupq_laneq_s32(v2, 2);
            v29 = vandq_s8(v2, v17);
            v29.i32[3] = vshrq_n_u32(v28, 0x18uLL).i32[3];
            v30 = vmulq_f32(vcvtq_f32_u32(v29), v18);
            v31 = *v12[1];
            v32 = vcvtq_f64_f32(v27);
            *v28.i8 = vcvt_f32_f64(vmlaq_laneq_f64(vmlaq_n_f64(*(v31 + 32), *v31, *v32.i64), *(v31 + 16), v32, 1));
            *v32.f32 = vmla_n_f32(vdup_lane_s32(*(v31 + 48), 1), *&vextq_s8(v30, v30, 4uLL), COERCE_FLOAT(*(v31 + 48)));
            *v28.i8 = vsub_f32(*(v31 + 56), *v28.i8);
            v28.i32[1] = vmuls_lane_f32(*(v31 + 64), *v28.i8, 1);
            v33 = vmul_f32(*v28.i8, *v28.i8);
            v33.i32[0] = vadd_f32(v33, vdup_lane_s32(v33, 1)).u32[0];
            v34 = vrsqrte_f32(v33.u32[0]);
            v35 = vmul_f32(vrsqrts_f32(v33.u32[0], vmul_f32(v34, v34)), v34);
            *v32.f32 = vmla_n_f32(*v32.f32, vmla_n_f32(vneg_f32(*v32.f32), *v28.i8, vmul_f32(v35, vrsqrts_f32(v33.u32[0], vmul_f32(v35, v35))).f32[0]), *(v31 + 68));
            *v28.i8 = vmul_f32(*v32.f32, *v32.f32);
            v28.i32[0] = vadd_f32(*v28.i8, vdup_lane_s32(*v28.i8, 1)).u32[0];
            v36 = vrsqrte_f32(v28.u32[0]);
            v37 = vmul_f32(vrsqrts_f32(v28.u32[0], vmul_f32(v36, v36)), v36);
            v38 = vmla_n_f32(vdup_lane_s32(*(v31 + 72), 1), *v32.f32, vmul_f32(vmul_f32(v37, *(v31 + 72)), vrsqrts_f32(v28.u32[0], vmul_f32(v37, v37))).f32[0]);
            v30.i32[1] = v38.i32[0];
            v30.i64[1] = __PAIR64__(1.0, v38.u32[1]);
            v32.i64[0] = 0x3F0000003F000000;
            v32.i64[1] = 0x3F0000003F000000;
            v2 = vcvtq_u32_f32(vmlaq_f32(v32, v24, vminnmq_f32(vmaxnmq_f32(v30, 0), _Q7)));
            LODWORD(v31) = v2.i32[1];
            v2.i32[1] = vextq_s8(*&v2, *&v2, 8uLL).i32[1];
            *v2.i8 = vshl_u32(*v2.i8, 0x1800000010);
            result = (v2.i32[2] | (v31 << 8)) | v2.i32[0] | v2.i32[1];
          }

          *(v26 + 4 * v25++) = result;
        }

        while (v7 != v25);
      }

      ++v11;
    }

    while (v11 != v9);
  }

  return result;
}

uint64_t _ZZN2RB20dispatch_apply_tilesIZNS_18Typed_vImageBufferIDv4_DF16_E29apply_pixel_coords_and_valuesIZNS_9CGContext22apply_ovalize_gradientEDv2_fffS6_RKNS_15AffineTransformEE3__2EEvRKT_EUlmmmmE_EEvmmSD_ENUlPvmE_8__invokeESF_m(uint64_t result, unint64_t a2)
{
  v2 = *(result + 24);
  v3 = a2 / v2;
  v4 = a2 % v2;
  v5 = *(result + 8);
  v6 = v5 - (v4 << 7);
  if (v6 >= 0x80)
  {
    v6 = 128;
  }

  v7 = *(result + 16) - (v3 << 7);
  if (v7 >= 0x80)
  {
    v7 = 128;
  }

  v8 = v7 + (v3 << 7);
  if (v8 > v3 << 7)
  {
    v9 = v4 << 7;
    v10 = v3 << 7;
    v11 = *result;
    v12 = **result;
    do
    {
      if (v5 != v9)
      {
        v13 = 0;
        v14 = *v12 + v12[3] * v10 + 8 * v9;
        do
        {
          v15 = *(v14 + 8 * v13);
          v16 = vcvtq_f32_f16(v15);
          if (v16.f32[3] != 0.0)
          {
            v17.f32[0] = (v9 + 0.5) + v13;
            v17.f32[1] = v10 + 0.5;
            v18 = *v11[1];
            v19 = vcvtq_f64_f32(v17);
            v20 = vcvt_f32_f64(vmlaq_laneq_f64(vmlaq_n_f64(*(v18 + 32), *v18, v19.f64[0]), *(v18 + 16), v19, 1));
            *&v19.f64[0] = vmla_n_f32(vdup_lane_s32(*(v18 + 48), 1), *&vextq_s8(v16, v16, 4uLL), COERCE_FLOAT(*(v18 + 48)));
            v21 = vsub_f32(*(v18 + 56), v20);
            v21.i32[1] = vmuls_lane_f32(*(v18 + 64), v21, 1);
            v22 = vmul_f32(v21, v21);
            v22.i32[0] = vadd_f32(v22, vdup_lane_s32(v22, 1)).u32[0];
            v23 = vrsqrte_f32(v22.u32[0]);
            v24 = vmul_f32(vrsqrts_f32(v22.u32[0], vmul_f32(v23, v23)), v23);
            *&v19.f64[0] = vmla_n_f32(*&v19.f64[0], vmla_n_f32(vneg_f32(*&v19.f64[0]), v21, vmul_f32(v24, vrsqrts_f32(v22.u32[0], vmul_f32(v24, v24))).f32[0]), *(v18 + 68));
            v25 = vmul_f32(*&v19.f64[0], *&v19.f64[0]);
            v25.i32[0] = vadd_f32(v25, vdup_lane_s32(v25, 1)).u32[0];
            v26 = vrsqrte_f32(v25.u32[0]);
            v27 = vmul_f32(vrsqrts_f32(v25.u32[0], vmul_f32(v26, v26)), v26);
            v28 = vmla_n_f32(vdup_lane_s32(*(v18 + 72), 1), *&v19.f64[0], vmul_f32(vmul_f32(v27, *(v18 + 72)), vrsqrts_f32(v25.u32[0], vmul_f32(v27, v27))).f32[0]);
            v16.i32[1] = v28.i32[0];
            v16.i64[1] = __PAIR64__(1.0, v28.u32[1]);
            v15 = vcvt_f16_f32(v16);
          }

          *(v14 + 8 * v13++) = v15;
        }

        while (v6 != v13);
      }

      ++v10;
    }

    while (v10 != v8);
  }

  return result;
}

uint64_t RBColorModeWorkingColorSpace(unsigned int a1)
{
  if (a1 == 128)
  {
    return BYTE2(a1);
  }

  if (a1 > 0x11)
  {
    return 0;
  }

  return dword_195E458CC[a1];
}

float RBColorMakeLinear(int8x16_t a1, float a2, float a3)
{
  v8 = a1;
  if (*a1.i32 <= 0.0)
  {
    *a1.i32 = -*a1.i32;
  }

  if (*a1.i32 <= 0.04045)
  {
    *a1.i32 = *a1.i32 * 0.077399;
  }

  else
  {
    *a1.i32 = powf((*a1.i32 * 0.94787) + 0.052133, 2.4);
  }

  v7 = a1;
  v3 = -a2;
  if (a2 > 0.0)
  {
    v3 = a2;
  }

  if (v3 > 0.04045)
  {
    powf((v3 * 0.94787) + 0.052133, 2.4);
  }

  v4 = -a3;
  if (a3 > 0.0)
  {
    v4 = a3;
  }

  if (v4 > 0.04045)
  {
    powf((v4 * 0.94787) + 0.052133, 2.4);
  }

  v5.i64[0] = 0x8000000080000000;
  v5.i64[1] = 0x8000000080000000;
  LODWORD(result) = vbslq_s8(v5, v7, v8).u32[0];
  return result;
}

double RBColorFromComponents(RB *a1, double *a2, int a3)
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  *&result = RBColorFromComponents2(a1, a2, v3).n128_u64[0];
  return result;
}

double RBColorFromCGColor2(CGColor *a1, int a2)
{
  ColorSpace = CGColorGetColorSpace(a1);
  Components = CGColorGetComponents(a1);

  *&result = RBColorFromComponents2(ColorSpace, Components, a2).n128_u64[0];
  return result;
}

CGColorRef RBColorCopyCGColor(int a1, float a2, float a3, float a4, float a5)
{
  components[4] = *MEMORY[0x1E69E9840];
  components[0] = a2;
  components[1] = a3;
  components[2] = a4;
  components[3] = a5;
  v5 = a2 < 0.0;
  if (a2 > 1.0)
  {
    v5 = 1;
  }

  v6 = a3 < 0.0;
  if (a3 > 1.0)
  {
    v6 = 1;
  }

  v7 = v5 || v6;
  v8 = a4 > 1.0 || a4 < 0.0;
  v9 = rb_color_space(a1);
  if ((v9 & 0x100) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 17;
  }

  v13 = v10;
  v11 = RB::ColorSpace::cg_color_space(&v13, v7 | v8);
  return CGColorCreate(v11, components);
}

float RBColorToLinear(int8x16_t a1, float a2, float a3)
{
  v8 = a1;
  if (*a1.i32 <= 0.0)
  {
    *a1.i32 = -*a1.i32;
  }

  if (*a1.i32 <= 0.04045)
  {
    *a1.i32 = *a1.i32 * 0.077399;
  }

  else
  {
    *a1.i32 = powf((*a1.i32 * 0.94787) + 0.052133, 2.4);
  }

  v7 = a1;
  v3 = -a2;
  if (a2 > 0.0)
  {
    v3 = a2;
  }

  if (v3 > 0.04045)
  {
    powf((v3 * 0.94787) + 0.052133, 2.4);
  }

  v4 = -a3;
  if (a3 > 0.0)
  {
    v4 = a3;
  }

  if (v4 > 0.04045)
  {
    powf((v4 * 0.94787) + 0.052133, 2.4);
  }

  v5.i64[0] = 0x8000000080000000;
  v5.i64[1] = 0x8000000080000000;
  LODWORD(result) = vbslq_s8(v5, v7, v8).u32[0];
  return result;
}

double RBColorFromLinear(int8x16_t a1, float a2, float a3)
{
  v8 = a1;
  if (*a1.i32 <= 0.0)
  {
    *a1.i32 = -*a1.i32;
  }

  if (*a1.i32 <= 0.0031308)
  {
    *a1.i32 = *a1.i32 * 12.92;
  }

  else
  {
    *a1.i32 = (powf(*a1.i32, 0.41667) * 1.055) + -0.055;
  }

  v7 = a1;
  v3 = -a2;
  if (a2 > 0.0)
  {
    v3 = a2;
  }

  if (v3 > 0.0031308)
  {
    powf(v3, 0.41667);
  }

  v4 = -a3;
  if (a3 > 0.0)
  {
    v4 = a3;
  }

  if (v4 > 0.0031308)
  {
    powf(v4, 0.41667);
  }

  v5.i64[0] = 0x8000000080000000;
  v5.i64[1] = 0x8000000080000000;
  *&result = vbslq_s8(v5, v7, v8).u64[0];
  return result;
}

float32x4_t RBColorConvert(int a1, int a2, float32x4_t a3, float32_t a4, float32_t a5)
{
  v6 = rb_color_space(a1);
  v7 = rb_color_space(a2);
  if ((v6 & 0x100) != 0 && (v7 & 0x100) != 0)
  {
    v8.i64[0] = 0;
    RB::ColorSpace::Conversion::Conversion(v15[0].f32, v6, v7, v8, 0.0);
    v9 = a3;
    v9.f32[1] = a4;
    v9.f32[2] = a5;
    *&v10 = RB::ColorSpace::Conversion::operator()(v15, v9);
    return v10;
  }

  return a3;
}

void RBColorConvertArray(uint64_t a1, uint64_t a2, int a3, int a4, float32_t a5, float a6)
{
  v11 = rb_color_space(a3);
  v12 = rb_color_space(a4);
  if ((v11 & 0x100) != 0 && (v12 & 0x100) != 0)
  {
    v13.f32[0] = a5;
    RB::ColorSpace::Conversion::Conversion(v16[0].f32, v11, v12, v13, a6);
    if (a2)
    {
      v15 = (a1 + 8);
      do
      {
        v14.i64[0] = *(v15 - 1);
        v14.i32[2] = *v15;
        *(v15 - 1) = RB::ColorSpace::Conversion::operator()(v16, v14);
        *v15 = v14.i32[2];
        v15 += 4;
        --a2;
      }

      while (a2);
    }
  }
}

float RBColorAdd(int a1, unsigned __int8 a2, __n128 a3, float a4, float a5, float a6, float a7, float a8, float a9, float a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int32 a17, __int32 a18)
{
  _S8 = a10;
  _S9 = a9;
  _S10 = a8;
  _S11 = a7;
  _S12 = a6;
  _S13 = a5;
  _S14 = a4;
  _S15 = a3.n128_u32[0];
  a3.n128_u32[0] = a17;
  v50 = a3;
  v27 = rb_color_space(a1);
  __asm
  {
    FCVT            H0, S15
    FCVT            H1, S14
    FCVT            H2, S13
    FCVT            H3, S12
  }

  v54 = _H0;
  v55 = _H1;
  v56 = _H2;
  v57 = _H3;
  v58 = 0;
  v59 = v27;
  __asm
  {
    FCVT            H0, S11
    FCVT            H1, S10
    FCVT            H2, S9
    FCVT            H3, S8
  }

  v51[0] = _H0;
  v51[1] = _D1.i16[0];
  v51[2] = _H2;
  v51[3] = _H3;
  v52 = 0;
  v53 = v27;
  v40 = v50;
  v40.i32[1] = a18;
  RB::Fill::Color::mix(&v54, v51, a2, v40, _D1);
  if ((v27 & 0x100) != 0)
  {
    v41.i64[0] = 0;
    RB::Fill::Color::convert(&v54, v27, v41);
  }

  _H0 = v54;
  __asm { FCVT            S0, H0 }

  _H1 = v55;
  __asm { FCVT            S1, H1 }

  _H2 = v56;
  __asm { FCVT            S2, H2 }

  _H3 = v57;
  __asm { FCVT            S3, H3 }

  return result;
}

uint64_t RBColorMakeGradient(int a1, unsigned int a2, unint64_t a3, uint64_t a4, double *a5, float _S0, float _S1, float _S2, float _S3)
{
  if (a4)
  {
    _ZF = a5 == 0;
  }

  else
  {
    _ZF = 1;
  }

  v11 = !_ZF && a3 > 1;
  if (v11 != 1)
  {
    return v11;
  }

  __asm
  {
    FCVT            H8, S0
    FCVT            H9, S1
    FCVT            H10, S2
    FCVT            H11, S3
  }

  LOWORD(v68) = _H8;
  HIWORD(v68) = _H9;
  v69 = _H10;
  v70 = _H11;
  v71 = 0;
  v72 = rb_color_space(a1);
  if (a2 >= 2)
  {
    v28 = 0;
    if (a2 == 2)
    {
      v21.i64[0] = 0;
      v29 = RB::Fill::Color::convert(&v68, 0x11u, v21);
      LODWORD(v29) = v68;
      v30 = vcvtq_f32_f16(*&v29);
      _H1 = v69;
      __asm { FCVT            S1, H1 }

      v30.i32[2] = _S1;
      v33 = vmulq_f32(v30, xmmword_195E45860);
      *v28.i32 = vaddv_f32(*v33.f32) + v33.f32[2];
      goto LABEL_17;
    }
  }

  else
  {
    v21.i64[0] = 0;
    *v25.i64 = RB::Fill::Color::convert(&v68, 1u, v21);
    *v26.i32 = RB::Fill::Color::cielab_luminance(&v68, v25);
    v67 = v26;
    v27.i64[0] = 0;
    RB::Fill::Color::convert(&v68, 0x11u, v27);
    v28 = v67;
  }

  v34 = 0.0;
  if (a2 != 1)
  {
    v35 = 0.0;
    v23.i64[0] = 0;
    v22.i32[0] = 0;
    if (a2)
    {
      goto LABEL_29;
    }

LABEL_17:
    v34 = 0.0;
    v22.i32[0] = 1045220557;
    v35 = 0.7;
    v23.i32[0] = 0.25;
    if (*v28.i32 > 0.25)
    {
      if (*v28.i32 > 0.5)
      {
        v36 = *v28.i32 > 0.75;
        v35 = flt_195E45870[*v28.i32 > 0.75];
        v34 = 0.0;
        if (*v28.i32 > 0.75)
        {
          v34 = 1.0;
        }

        v37 = &unk_195E45880;
LABEL_27:
        v23.i32[0] = v37[v36];
        goto LABEL_29;
      }

      goto LABEL_29;
    }

LABEL_28:
    v23.i32[0] = 1045220557;
    goto LABEL_29;
  }

  v22.i32[0] = 1045220557;
  v23.i32[0] = 0.25;
  v35 = 0.7;
  if (*v28.i32 <= 0.25)
  {
    goto LABEL_28;
  }

  if (*v28.i32 > 0.7)
  {
    v36 = *v28.i32 > 0.82;
    v35 = flt_195E45870[*v28.i32 > 0.82];
    v34 = 0.0;
    if (*v28.i32 > 0.82)
    {
      v34 = 1.0;
    }

    v37 = &unk_195E45878;
    goto LABEL_27;
  }

LABEL_29:
  v24.i32[0] = v68;
  v38 = vcvtq_f32_f16(v24);
  _H5 = v69;
  __asm { FCVT            S5, H5 }

  v41 = v38;
  v41.f32[2] = _S5;
  if (a2 == 1)
  {
    v42 = fminf(fminf(v38.f32[0], _S5), v38.f32[1]);
    v43 = (v42 - *v28.i32) * v22.f32[0];
    _ZF = v43 == 0.0;
    v44 = v43 <= 0.0;
    v45 = v22.f32[0];
    if (!_ZF)
    {
      v45 = 0.0;
      v46 = 1.0;
      if (v44)
      {
        v46 = 0.0;
      }

      v47 = (v46 - v42) / (v42 - *v28.i32);
      if (v22.f32[0] >= v47)
      {
        v48 = v47;
      }

      else
      {
        v48 = v22.f32[0];
      }

      if (v47 >= 0.0)
      {
        v45 = v48;
      }
    }

    v49 = fmaxf(fmaxf(v38.f32[0], _S5), v38.f32[1]);
    v50 = (v49 - *v28.i32) * v22.f32[0];
    if (v50 != 0.0)
    {
      v51 = 1.0;
      if (v50 <= 0.0)
      {
        v51 = 0.0;
      }

      v52 = (v51 - v49) / (v49 - *v28.i32);
      if (v22.f32[0] >= v52)
      {
        v22.f32[0] = v52;
      }

      if (v52 < 0.0)
      {
        v22.f32[0] = 0.0;
      }
    }

    if (v22.f32[0] >= v45)
    {
      v22.f32[0] = v45;
    }
  }

  v53 = vmlaq_n_f32(v41, vsubq_f32(v41, vdupq_lane_s32(v28, 0)), v22.f32[0]);
  v22.i64[0] = 0;
  __asm { FMOV            V7.4S, #1.0 }

  v55 = vmlaq_n_f32(v53, vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v22, v23), 0), v53, vsubq_f32(_Q7, v53)), v23.f32[0]);
  _H2 = v70;
  __asm { FCVT            S2, H2 }

  v61 = a4 + 16 * (v34 > v35);
  *v61 = v55.i64[0];
  *(v61 + 8) = v55.i32[2];
  *(v61 + 12) = _S2;
  v62 = a4 + 16 * (v34 <= v35);
  *v62 = v38.i64[0];
  *(v62 + 8) = _S5;
  *(v62 + 12) = _S2;
  if (_NF ^ _VF | _ZF)
  {
    v63 = v34;
  }

  else
  {
    v63 = v35;
  }

  v64 = v63;
  if (_NF ^ _VF | _ZF)
  {
    v34 = v35;
  }

  *a5 = v64;
  a5[1] = v34;
  v65 = rb_color_space(v72);
  RBColorConvertArray(a4, 2, v65, a1, 0.0, 0.0);
  return v11;
}

float32x2_t *RB::DisplayList::Builder::Builder(float32x2_t *this, atomic_uint *a2)
{
  v4 = RB::DisplayList::Builder::Builder(this)[1];
  if (v4 != a2)
  {
    if (v4 && atomic_fetch_add_explicit(v4 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      (*(*v4 + 8))(v4);
    }

    atomic_fetch_add_explicit(a2 + 2, 1u, memory_order_relaxed);
    this[1] = a2;
  }

  this[36].i8[0] = *(a2 + 424) ^ 1;
  this[30] = (a2 + 80);
  v5 = this->i32[0] + 1;
  this->i32[0] = v5;
  this[34].i32[0] = v5;
  this[4] = &this[30];
  return this;
}

uint64_t RB::DisplayList::Builder::current_layer(uint64_t this, const RB::DisplayList::State *a2)
{
  v2 = *(this + 32);
  if (!v2 || (this = *v2, *(*v2 + 72) != *(a2 + 36)))
  {
    RB::DisplayList::Builder::begin_layer(this, a2);
  }

  return this;
}

const RB::DisplayList::ClipNode *RB::DisplayList::State::clip<RB::Coverage::Primitive>(__n128 *a1, RB::DisplayList::Builder *a2, _OWORD *a3, char a4, float a5)
{
  v10 = *(a2 + 1);
  RB::DisplayList::State::copy_ctm(a1, (v10 + 2));
  v15 = v14;
  v16 = (v10[4] + 15) & 0xFFFFFFFFFFFFFFF0;
  if ((v16 + 128) > v10[5])
  {
    v16 = RB::Heap::alloc_slow(v10 + 2, 0x80uLL, 15);
  }

  else
  {
    v10[4] = v16 + 128;
  }

  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 40) = 0;
  *(v16 + 32) = 0;
  *(v16 + 44) = a4;
  *(v16 + 45) = 0;
  *v16 = &unk_1F0A3D038;
  *(v16 + 48) = v15;
  v17 = *a3;
  v18 = *(a3 + 1);
  v19 = *(a3 + 31);
  *(v16 + 95) = v19;
  *(v16 + 64) = v17;
  *(v16 + 80) = v18;
  *(v16 + 112) = a5;
  RB::DisplayList::GenericClip<RB::Coverage::Primitive>::update_bounds(v16, v17, v18, v19, v11, v12, v13);

  return RB::DisplayList::State::push(a1, a2, v16);
}

RB::DisplayList::Layer *RB::DisplayList::Builder::make_layer_item(RB::DisplayList::Builder *this, RB::DisplayList::Layer *a2, int a3, float64x2_t *a4, float a5)
{
  v5 = a3;
  v7 = a2;
  v19[12] = *MEMORY[0x1E69E9840];
  v15 = a2;
  v14 = a5;
  v13 = a3;
  v9 = vandq_s8(vandq_s8(vceqq_f64(a4[1], xmmword_195E42770), vceqq_f64(*a4, xmmword_195E42760)), vceqzq_f64(a4[2]));
  if ((vandq_s8(vdupq_laneq_s64(v9, 1), v9).u64[0] & 0x8000000000000000) == 0)
  {
    RB::DisplayList::CachedTransform::CachedTransform(v16, this, a4, 0, 0);
    RB::DisplayList::Layer::apply_transform(v7, v16);
    RB::UntypedTable::~UntypedTable(v19);
    RB::UntypedTable::~UntypedTable(&v18);
    RB::Heap::~Heap(&v17);
  }

  if (*(this + 288) != 1)
  {
    if (!v7)
    {
      return v7;
    }

    goto LABEL_9;
  }

  if (a5 == 0.0)
  {
    (**v7)(v7);
    return 0;
  }

  v15 = RB::DisplayList::Builder::simplify_clip_layer(this, v7, 0, 0);
  if (v15)
  {
LABEL_9:
    RB::Heap::emplace<RB::DisplayList::LayerItem,float &,RB::BlendMode &,RB::DisplayList::Layer *&>((*(this + 1) + 16), &v14, &v13, &v15);
    return v11;
  }

  v7 = v10;
  if (v10)
  {
    *(v10 + 46) = *(v10 + 46) & 0xFFC0 | v5 & 0x3F;
    RB::DisplayList::Item::apply_alpha(v10, a5);
  }

  return v7;
}

void sub_195DE8970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  RB::DisplayList::CachedTransform::~CachedTransform(va);
  _Unwind_Resume(a1);
}

RB::DisplayList::Layer *RB::DisplayList::Builder::simplify_item(RB::DisplayList::Layer *result, RB::DisplayList::Layer **a2, char a3)
{
  if (*(result + 288) == 1)
  {
    v4 = *a2;
    if ((*(*a2 + 23) & 0xC0) == 0x40)
    {
      result = RB::DisplayList::Builder::simplify_clip_layer(result, *(v4 + 6), *(v4 + 7), 0);
      if (result)
      {
        if (a3)
        {
          v7 = *(v4 + 6);
          v8 = *(v4 + 7);

          return RB::DisplayList::Layer::discard_color(v7, v8);
        }
      }

      else
      {
        result = *a2;
        *a2 = v6;
        if (result)
        {
          v9 = **result;

          return v9();
        }
      }
    }
  }

  return result;
}

float64x2_t RB::DisplayList::CachedTransform::CachedTransform(RB::DisplayList::CachedTransform *this, float64x2_t *a2, float a3, float a4)
{
  v5 = *&a2->f64[0];
  v6 = a3;
  v7 = vmulq_n_f64(a2[68], v6);
  v8 = vmulq_n_f64(a2[69], v6);
  v9 = a2[70];
  v12[0] = v7;
  v12[1] = v8;
  v12[2] = v9;
  v10 = RB::DisplayList::CachedTransform::CachedTransform(this, v5, v12, 0, 0);
  result = vmulq_n_f64(v10[70], a4);
  v10[70] = result;
  return result;
}

uint64_t RB::DisplayList::CachedTransform::transform_projection(RB::DisplayList::CachedTransform *this, const RB::ProjectionMatrix *a2)
{
  if (*(this + 152) == a2)
  {
    return *(this + 153);
  }

  v4 = *(this + 69);
  v19 = *(this + 68);
  v20 = v4;
  v21 = *(this + 70);
  v5 = RB::AffineTransform::invert(&v19);
  if (v5)
  {
    v6 = &v19;
  }

  else
  {
    v6 = (this + 1088);
  }

  v7 = *v6;
  v8 = (this + 1104);
  if (v5)
  {
    v8 = &v20;
  }

  v9 = *v8;
  v10 = (this + 1120);
  if (v5)
  {
    v10 = &v21;
  }

  v11 = *v10;
  v19 = v7;
  v20 = v9;
  v21 = v11;
  *(this + 152) = a2;
  v12 = *(*this + 8);
  RB::operator*(&v19, a2, v16);
  RB::operator*(v16, this + 68, v17);
  result = (v12[4] + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (result + 36 > v12[5])
  {
    result = RB::Heap::alloc_slow(v12 + 2, 0x24uLL, 3);
  }

  else
  {
    v12[4] = result + 36;
  }

  v14 = v17[0];
  v15 = v17[1];
  *(result + 32) = v18;
  *result = v14;
  *(result + 16) = v15;
  *(this + 153) = result;
  return result;
}

uint64_t RB::DisplayList::can_mix(uint64_t a1, void *a2, void *a3)
{
  v3 = a2 != 0;
  v4 = a3 != 0;
  v5 = 4;
  if (a2 && (v6 = a3) != 0)
  {
    v7 = a2;
    while (v7 != v6)
    {
      if (!RB::same_type<RB::DisplayList::Clip>(v7[1] & 0xFFFFFFFFFFFFFFFELL, v6[1] & 0xFFFFFFFFFFFFFFFELL))
      {
        return 0;
      }

      v9 = (*(*(v7[1] & 0xFFFFFFFFFFFFFFFELL) + 64))(v7[1] & 0xFFFFFFFFFFFFFFFELL, a1, v6[1] & 0xFFFFFFFFFFFFFFFELL);
      if (v9 >= v5)
      {
        v5 = v5;
      }

      else
      {
        v5 = v9;
      }

      v7 = *v7;
      v6 = *v6;
      v3 = v7 != 0;
      v4 = v6 != 0;
      if (v5)
      {
        v10 = v7 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10 || v6 == 0)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:
    if (v3 || v4)
    {
      return 0;
    }

    else
    {
      return v5;
    }
  }

  return v5;
}

BOOL RB::same_type<RB::DisplayList::Clip>(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = 0;
  if (a1 && a2)
  {
    v4 = (*(*a1 + 16))(a1);
    return v4 == (*(*a2 + 16))(a2);
  }

  return v2;
}

float64x2_t **RB::DisplayList::CachedTransform::mix_style(RB::DisplayList::Interpolator::State const&,RB::DisplayList::Style const*,RB::DisplayList::Style const*,BOOL)const::$_0::operator()(float64x2_t **result, uint64_t a2, uint64_t a3, char a4)
{
  if (a2)
  {
    v7 = result;
    v8 = *result;
    *(a2 + 16) = RB::DisplayList::CachedTransform::transform_ctm(*result, *(a3 + 16));
    *(a2 + 24) = RB::DisplayList::CachedTransform::transform_clip(v8, *(a3 + 24), (v7[1] & a4));
    *(a2 + 40) = RB::DisplayList::CachedTransform::transform_metadata(v8, *(a3 + 40), *(a3 + 48));
    *(a2 + 48) = v9;
    *(a2 + 52) = *(a3 + 52) & 1;
    result = (*(*a2 + 32))(a2, v8, *(v7 + 8));
    v10 = v7[2];
    v11 = v10[8].f64[1];
    v12 = *&v11 + 1;
    if (*&v10[9].f64[0] < (*&v11 + 1))
    {
      result = _ZN2RB6vectorIDv4_DF16_Lm16EmE12reserve_slowEm(v10, v12);
      v11 = v10[8].f64[1];
      v12 = *&v11 + 1;
    }

    v13 = v10[8].f64[0];
    if (v13 == 0.0)
    {
      v13 = *&v10;
    }

    *(*&v13 + 8 * *&v11) = a2;
    *&v10[8].f64[1] = v12;
  }

  return result;
}

const RB::DisplayList::Layer *RB::DisplayList::CachedTransform::mix_layer(RB::DisplayList::CachedTransform *this, const State *a2, const RB::DisplayList::Layer *a3, const RB::DisplayList::Layer *a4)
{
  if (*&a2->var0 >= 1.0)
  {
    return a4;
  }

  else
  {
    return a3;
  }
}

RB::DisplayList::Item *RB::DisplayList::Builder::apply_color_matrix_fn(RB::DisplayList::Builder *this, RB::DisplayList::Item *a2, RB::ColorMatrixFn *a3, int a4, float64x2_t *a5, const RB::DisplayList::ClipNode *a6)
{
  v12 = *(this + 1);
  v13 = (v12[4] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v13 + 48 > v12[5])
  {
    v13 = RB::Heap::alloc_slow(v12 + 2, 0x30uLL, 7);
  }

  else
  {
    v12[4] = v13 + 48;
  }

  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *v13 = &unk_1F0A3A178;
  *(v13 + 32) = a4;
  *(v13 + 40) = a3;

  return RB::DisplayList::Builder::apply_filter_(this, a2, v13, a5, a6);
}

unsigned __int8 *RB::DisplayList::Builder::draw_custom(uint64_t a1, void *a2, int a3, _OWORD *a4, __n128 *this, char a6, float a7)
{
  v14 = *(a1 + 8);
  RB::DisplayList::State::copy_ctm(this, (v14 + 2));
  v16 = v15;
  v17 = ((v14[4] + 7) & 0xFFFFFFFFFFFFFFF8);
  if (&v17[5].u64[1] > v14[5])
  {
    v17 = RB::Heap::alloc_slow(v14 + 2, 0x58uLL, 7);
  }

  else
  {
    v14[4] = v17 + 88;
  }

  RB::DisplayList::CustomItem::CustomItem(v17, a2, a3, v16, a4, a6, a7);
  if (a3)
  {
    if ((a3 & 2) != 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v17[2].i16[7] |= 0x100u;
    if ((a3 & 2) != 0)
    {
LABEL_5:
      if ((a3 & 4) != 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  v17[2].i16[7] |= 0x200u;
  if ((a3 & 4) != 0)
  {
LABEL_6:
    if ((a3 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  v17[2].i16[7] |= 0x400u;
  if ((a3 & 8) != 0)
  {
LABEL_7:
    v17[2].i16[7] |= 0x400u;
  }

LABEL_8:

  return RB::DisplayList::Builder::draw(a1, v17, this);
}

const RB::DisplayList::ClipNode *RB::DisplayList::Builder::MemoizedAddClip::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  if (*(a1 + 8) == v5)
  {
    result = *(a1 + 16);
  }

  else
  {
    *(a1 + 8) = v5;
    result = RB::DisplayList::Builder::join_clip_lists(a2, v5, *a1);
    *(a1 + 16) = result;
  }

  *(a3 + 24) = result;
  return result;
}

double _ZN2RB4Heap7emplaceINS_11DisplayList23BackdropColorMatrixItemEJRPKNS_6Filter11ColorMatrixERDF16_NS_9BlendModeEEEEPT_DpOT0_(size_t *a1, uint64_t *a2, __int16 *a3, int *a4)
{
  v7 = (a1[2] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v7 + 56 > a1[3])
  {
    v7 = RB::Heap::alloc_slow(a1, 0x38uLL, 7);
  }

  else
  {
    a1[2] = v7 + 56;
  }

  v8 = *a2;
  _H0 = *a3;
  __asm { FCVT            S0, H0 }

  v15 = *a4;

  *&result = RB::DisplayList::BackdropColorMatrixItem::BackdropColorMatrixItem(v7, v8, v15, _S0);
  return result;
}

uint64_t RB::DisplayList::Builder::can_lower_color_fn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(v6 + 8) == 0;
    if (*(v6 + 8))
    {
      v3 = a3;
    }

    else
    {
      v3 = a3 & 0x7FFFFFFF;
    }
  }

  else
  {
    v7 = 0;
  }

  if ((*(*a2 + 24))(a2, 7, v3))
  {
    return 0;
  }

  if (v7)
  {
    v9 = *(a1 + 16);
    if (*(v9 + 44) == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
    {
      goto LABEL_14;
    }
  }

  result = (*(*a2 + 24))(a2, 1, v3);
  if (result)
  {
    if (v3 & 4) != 0 && ((*(*a2 + 24))(a2, 6, v3))
    {
      return 0;
    }

    v9 = *(a1 + 16);
    if (v9)
    {
LABEL_14:
      while (1)
      {
        v10 = *(v9 + 46) & 0x3F;
        v11 = v10 < 0xB || v10 == 24;
        if (!v11 || ((*(*v9 + 96))(v9, a2, v3) & 1) == 0)
        {
          break;
        }

        v9 = *(v9 + 8);
        if (!v9)
        {
          return 1;
        }
      }

      return 0;
    }

    return 1;
  }

  return result;
}

float RB::DisplayList::Builder::lower_color_fn(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = *(a2 + 16);
  if (!v4)
  {
    return 1.0;
  }

  if (v4[1])
  {
    v7 = a4;
  }

  else
  {
    v7 = a4 & 0x7FFFFFFF;
  }

  do
  {
    (*(*v4 + 104))(v4, a3, v7, a1);
    v4 = v4[1];
  }

  while (v4);
  return result;
}

void RB::DisplayList::Builder::push_item_clip(RB::DisplayList::Builder *this, uint64_t a2, RB::DisplayList::Item *a3, uint64_t a4, float a5)
{
  v7 = a3;
  v20 = *MEMORY[0x1E69E9840];
  if (*(this + 288) != 1 || *(a3 + 3) || ((*(*a3 + 80))(a3) & 1) == 0)
  {
    v7 = RB::DisplayList::Builder::ensure_layer(this, v7, 256, 0.0);
  }

  v17 = 0;
  v18 = 0;
  v19 = 4;
  (*(*v7 + 88))(v7, this, a4, v16, a5);
  v10 = v17;
  if (v17)
  {
    v11 = v17;
  }

  else
  {
    v11 = v16;
  }

  if (v18)
  {
    v12 = 8 * v18;
    do
    {
      v13 = *v11;
      v15 = v13;
      v14 = *(this + 1);
      *(v13 + 1) = *(v14 + 312);
      *(v14 + 312) = v13;
      *(a2 + 24) = RB::Heap::emplace<RB::DisplayList::ClipNode,RB::DisplayList::Clip const*&,RB::DisplayList::ClipNode*&>((v14 + 16), &v15, (a2 + 24));
      ++v11;
      v12 -= 8;
    }

    while (v12);
    v10 = v17;
  }

  if (v10)
  {
    free(v10);
  }
}

void sub_195DE94D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  if (a15)
  {
    free(a15);
  }

  _Unwind_Resume(exception_object);
}

void RB::XML::Document::~Document(RB::XML::Document *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    free(v2);
  }

  RB::UntypedTable::~UntypedTable((this + 40));
  v3 = *(this + 2);
  if (v3)
  {
    free(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    v5 = v4[2] - 1;
    v4[2] = v5;
    if (!v5)
    {
      (*(*v4 + 8))(v4);
    }
  }
}

BOOL RB::same_identity<RB::DisplayList::Style>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  if (v2 != *(a2 + 48))
  {
    return 0;
  }

  v3 = *(a1 + 40);
  v4 = *(a2 + 40);
  if (v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3 == v4;
  }

  if (v5)
  {
    return 1;
  }

  if (v3)
  {
    v6 = RB::DisplayList::Metadata::identity_ns(v3);
    if (v4)
    {
LABEL_8:
      v7 = RB::DisplayList::Metadata::identity_ns(v4);
      goto LABEL_12;
    }
  }

  else
  {
    v6 = 0;
    if (v4)
    {
      goto LABEL_8;
    }
  }

  v7 = 0;
LABEL_12:
  if (v6 == v7)
  {
    return 1;
  }

  result = 0;
  if (v6 && v7)
  {
    v10 = *v7;
    v9 = v7[1];
    return *v6 == v10 && v6[1] == v9;
  }

  return result;
}

BOOL RB::same_type<RB::DisplayList::Style>(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = 0;
  if (a1 && a2)
  {
    v4 = (*(*a1 + 16))(a1);
    return v4 == (*(*a2 + 16))(a2);
  }

  return v2;
}

void *RB::Path::BufferedTransform::closepath(void *this)
{
  v1 = this;
  v2 = this + 1;
  v3 = this[18];
  v4 = v3 + 1;
  if (this[19] < (v3 + 1))
  {
    this = RB::vector<unsigned char,128ul,unsigned long>::reserve_slow(this + 1, v4);
    v3 = v1[18];
    v4 = v3 + 1;
  }

  v5 = v1[17];
  if (!v5)
  {
    v5 = v2;
  }

  *(v5 + v3) = 4;
  v1[18] = v4;
  return this;
}

void *RB::Path::BufferedTransform::lineto(void *result, __n128 a2)
{
  v2 = result;
  v3 = result + 1;
  v4 = result[18];
  v5 = v4 + 1;
  if (result[19] < (v4 + 1))
  {
    v10 = a2;
    result = RB::vector<unsigned char,128ul,unsigned long>::reserve_slow(result + 1, v5);
    a2 = v10;
    v4 = v2[18];
    v5 = v4 + 1;
  }

  v6 = v2[17];
  if (!v6)
  {
    v6 = v3;
  }

  *(v6 + v4) = 1;
  v2[18] = v5;
  v7 = v2[533];
  v8 = v7 + 2;
  if (v7 <= 0xFFFFFFFFFFFFFFFDLL && v2[534] < v8)
  {
    v11 = a2;
    result = RB::vector<double,512ul,unsigned long>::reserve_slow(v2 + 20, v7 + 2);
    a2 = v11;
  }

  v2[533] = v8;
  v9 = v2[532];
  if (!v9)
  {
    v9 = v2 + 20;
  }

  *&v9[v7] = a2;
  return result;
}

void *RB::Path::BufferedTransform::quadto(void *result, __n128 a2, __n128 a3)
{
  v3 = result;
  v4 = result + 1;
  v5 = result[18];
  v6 = v5 + 1;
  if (result[19] < (v5 + 1))
  {
    v12 = a2;
    v14 = a3;
    result = RB::vector<unsigned char,128ul,unsigned long>::reserve_slow(result + 1, v6);
    a2 = v12;
    a3 = v14;
    v5 = v3[18];
    v6 = v5 + 1;
  }

  v7 = v3[17];
  if (!v7)
  {
    v7 = v4;
  }

  *(v7 + v5) = 2;
  v3[18] = v6;
  v8 = v3[533];
  v9 = v8 + 4;
  if (v8 <= 0xFFFFFFFFFFFFFFFBLL && v3[534] < v9)
  {
    v13 = a2;
    v15 = a3;
    result = RB::vector<double,512ul,unsigned long>::reserve_slow(v3 + 20, v8 + 4);
    a2 = v13;
    a3 = v15;
  }

  v3[533] = v9;
  v10 = v3[532];
  if (!v10)
  {
    v10 = v3 + 20;
  }

  v11 = &v10[v8];
  *v11 = a2;
  v11[1] = a3;
  return result;
}

void RB::Path::CGPathTransform::cubeto(RB::Path::CGPathTransform *this, __n128 a2, __n128 a3, __n128 a4)
{
  v5 = a3;
  v7 = *(this + 1);
  if (!v7)
  {
    x = a4;
    v8 = a2;
    RB::Path::CGPathTransform::reset(this);
    a2 = v8;
    v5 = a3;
    a4 = x;
    v7 = *(this + 1);
  }

  CGPathAddCurveToPoint(v7, 0, a2.n128_f64[0], a2.n128_f64[1], v5.n128_f64[0], v5.n128_f64[1], a4.n128_f64[0], a4.n128_f64[1]);
}

BOOL RB::Path::Projection::project(uint64_t a1, uint64_t a2, float64x2_t a3)
{
  v3 = *(a1 + 704);
  if (v3)
  {
    v6 = (a1 + 56);
    v7 = *(a1 + 32);
    v8 = vsubq_f64(a3, *(a1 + 16));
    v9 = vmulq_f64(v7, v8);
    v10 = vaddvq_f64(v9) * *(a1 + 760);
    v9.f64[0] = -v8.f64[1];
    v11 = vaddvq_f64(vmulq_f64(vzip1q_s64(v9, v8), v7)) * *(a1 + 756);
    if (v10 <= 0.0000999999975 || v10 >= 0.999899983)
    {
      v12 = *(a1 + 696);
      if (v10 < 0.5)
      {
        v27 = 0;
        if (v12)
        {
          v6 = *(a1 + 696);
        }

        v26 = v54;
        goto LABEL_23;
      }
    }

    else
    {
      v12 = *(a1 + 696);
      if (v12)
      {
        v13 = *(a1 + 696);
      }

      else
      {
        v13 = (a1 + 56);
      }

      v14 = v10 * *(a1 + 752);
      v15 = v13;
      v16 = *(a1 + 704);
      do
      {
        v17 = v16 >> 1;
        v18 = &v15[5 * (v16 >> 1)];
        v19 = (v18[4].f32[1] + v18[4].f32[0]);
        v20 = v18 + 5;
        v16 += ~(v16 >> 1);
        if (v14 > v19)
        {
          v15 = v20;
        }

        else
        {
          v16 = v17;
        }
      }

      while (v16);
      v10 = 1.0;
      if (v15 != &v13[5 * v3])
      {
        v21 = v15[4].f32[1];
        v22 = v14 - v15[4].f32[0];
        if (v22 < v21)
        {
          if (v22 >= (v21 * 0.5))
          {
            v41 = v21 - v22;
            RB::cubic_index<float>(v15[3], v15[2], v15[1], *v15, v41, 0.5);
            v25 = 1.0 - v42;
          }

          else
          {
            v23 = v22;
            RB::cubic_index<float>(*v15, v15[1], v15[2], v15[3], v23, 0.5);
            v25 = v24;
          }

          *&v56[0].v = vcvtq_f64_f32(*v15);
          v43 = vcvtq_f64_f32(v15[1]);
          *&v52[0].v = vcvtq_f64_f32(v15[2]);
          *&v53[0].v = v43;
          *&v51[0].v = vcvtq_f64_f32(v15[3]);
          CG::Cubic::Cubic(v54, v56, v53, v52, v51);
          v44 = v25;
          v45 = CG::Cubic::evaluate(v54, v44);
          v48 = v46;
          v49 = v45;
          *&v29 = CG::Cubic::derivative(v54, v44);
          if (*&v29 != 0.0 || v30 != 0.0)
          {
            v47 = sqrt(*&v29 * *&v29 + v30 * v30);
            *&v29 = *&v29 / v47;
            v30 = v30 / v47;
          }

          *a2 = xmmword_195E42760;
          *(a2 + 16) = xmmword_195E42770;
          *(a2 + 32) = vmlaq_n_f64(vmulq_n_f64(xmmword_195E42770, v48), xmmword_195E42760, v49);
LABEL_29:
          *&v36 = -v30;
          *(&v36 + 1) = v29;
          *(&v29 + 1) = v30;
          *&v56[0].v = v29;
          v57 = v36;
          v58 = 0;
          v59 = 0;
          v37.f64[0] = RB::operator*(v56, a2);
          *a2 = v37;
          *(a2 + 16) = v38;
          *(a2 + 32) = vmlsq_lane_f64(vmlsq_lane_f64(v39, v37, a3.f64[0], 0), v38, v11 + a3.f64[1], 0);
          return v3 != 0;
        }
      }
    }

    v26 = &v55;
    if (v12)
    {
      v6 = v12;
    }

    v6 = &v6[5 * v3 - 5];
    v27 = 1;
LABEL_23:
    *&v56[0].v = vcvtq_f64_f32(*v6);
    v28 = vcvtq_f64_f32(v6[1]);
    *&v52[0].v = vcvtq_f64_f32(v6[2]);
    *&v53[0].v = v28;
    *&v51[0].v = vcvtq_f64_f32(v6[3]);
    CG::Cubic::Cubic(v54, v56, v53, v52, v51);
    *&v29 = CG::Cubic::derivative(v54, v27);
    if (*&v29 != 0.0 || v30 != 0.0)
    {
      v31 = sqrt(*&v29 * *&v29 + v30 * v30);
      *&v29 = *&v29 / v31;
      v30 = v30 / v31;
    }

    v32 = v10 + -1.0;
    if (!v27)
    {
      v32 = v10;
    }

    v33 = v32 * *(a1 + 752);
    v34 = v26->f64[0] + v33 * *&v29;
    v35 = v26->f64[1] + v33 * v30;
    *a2 = xmmword_195E42760;
    *(a2 + 16) = xmmword_195E42770;
    *(a2 + 32) = vmlaq_n_f64(vmulq_n_f64(xmmword_195E42770, v35), xmmword_195E42760, v34);
    goto LABEL_29;
  }

  return v3 != 0;
}

void RB::cubic_index<float>(float32x2_t a1, float32x2_t a2, float32x2_t a3, float32x2_t a4, float a5, float a6)
{
  if (a5 > 0.0)
  {
    v8 = _ZN2RB13CubicIteratorIDv2_fE13segment_countIfEEiS1_S1_S1_S1_T_(a1, a2, a3, a4, a6);
    v9 = v8;
    v10.n128_u64[0] = a1;
    _ZN2RB13CubicIteratorIDv2_fEC1ES1_S1_S1_S1_i(v16, v8, v10);
    if (v9 >= 1)
    {
      v11 = 0;
      v12 = v16[2];
      v13 = 0.0;
      v14 = v16[1];
      do
      {
        v15 = sqrtf(vaddv_f32(vmul_f32(v14, v14)));
        if ((v15 + v13) > a5)
        {
          break;
        }

        v14 = vadd_f32(v12, v14);
        v12 = vadd_f32(v16[3], v12);
        ++v11;
        v13 = v15 + v13;
      }

      while (v9 != v11);
    }
  }
}

int32x2_t RB::Path::Projection::endpath(RB::Path::Projection *this)
{
  v1 = *(this + 188);
  *(this + 2) = vmulq_n_f64(*(this + 2), v1 / sqrt(vaddvq_f64(vmulq_f64(*(this + 2), *(this + 2)))));
  v2 = vrecpe_f32(LODWORD(v1));
  v3 = vmul_f32(vrecps_f32(LODWORD(v1), v2), v2);
  v4 = vmul_f32(v3, vrecps_f32(LODWORD(v1), v3));
  *&v5 = v1 * v1;
  v6 = vrecpe_f32(COERCE_UNSIGNED_INT(v1 * v1));
  v7 = vmul_f32(vrecps_f32(v5, v6), v6);
  result = vzip1_s32(v4, vmul_f32(v7, vrecps_f32(v5, v7)));
  *(this + 756) = result;
  return result;
}

float64x2_t RB::Path::Projection::closepath(float64x2_t *this)
{
  result = this[46];
  v2 = vceqq_f64(this[45], result);
  if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v2), 1), v2).u64[0] & 0x8000000000000000) != 0)
  {
    RB::Path::Projection::lineto(this, result);
    result = this[46];
    this[45] = result;
  }

  return result;
}

float64x2_t *RB::Path::Projection::lineto(float64x2_t *result, float64x2_t a2)
{
  v2 = result[45];
  v3 = vceqq_f64(v2, a2);
  if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v3), 1), v3).u64[0] & 0x8000000000000000) != 0)
  {
    v4 = result;
    v5 = vsubq_f64(a2, v2);
    v6 = sqrt(vaddvq_f64(vmulq_f64(v5, v5)));
    v7 = &result[3].f64[1];
    v8 = result[44].f64[0];
    if (*&result[44].f64[1] < (*&v8 + 1))
    {
      v16 = a2;
      result = RB::vector<RB::Path::Projection::Segment,16ul,unsigned long>::reserve_slow(&result[3].f64[1], *&v8 + 1);
      a2 = v16;
      v8 = v4[44].f64[0];
      v2 = v4[45];
    }

    v9 = v4[43].f64[1];
    if (v9 == 0.0)
    {
      v9 = *&v7;
    }

    v10 = (*&v9 + 40 * *&v8);
    v11 = LODWORD(v4[47].f64[0]);
    v12 = v6;
    v13 = vcvt_f32_f64(v2);
    *v10 = v13;
    v10[1] = v13;
    v14 = vcvt_f32_f64(a2);
    v10[2] = v14;
    v10[3] = v14;
    v10[4].i32[0] = v11;
    v10[4].f32[1] = v12;
    ++*&v4[44].f64[0];
    v15 = v6 + *v4[47].f64;
    *v4[47].f64 = v15;
    v4[45] = a2;
  }

  return result;
}

__n128 *RB::Path::Projection::moveto(__n128 *result, __n128 a2)
{
  result[45] = a2;
  result[46] = a2;
  return result;
}

float RB::Path::Projection::quadto(float64x2_t *a1, float64x2_t a2, float64x2_t a3)
{
  v4 = vaddq_f64(a2, a2);
  v5 = vdupq_n_s64(0x3FD5555555555555uLL);
  return RB::Path::Projection::cubeto(a1, vmulq_f64(vaddq_f64(a1[45], v4), v5), vmulq_f64(vaddq_f64(v4, a3), v5), a3);
}

float RB::Path::Projection::cubeto(uint64_t a1, float64x2_t a2, float64x2_t a3, float64x2_t a4)
{
  if ((*(a1 + 48) & 0x1C) == 4)
  {
    v5 = *(a1 + 720);
    *&v9[0].v = a2;
    *&v10[0].v = v5;
    v7 = a4;
    *&v8[0].v = a3;
    CG::Cubic::Cubic(v11, v10, v9, v8, &v7);
    RB::Path::Projection::cubeto_subdivide(a1, v11);
  }

  else
  {

    return RB::Path::Projection::cubeto_emit(a1, a2, a3, a4);
  }

  return result;
}

float RB::Path::Projection::cubeto_emit(uint64_t a1, float64x2_t a2, float64x2_t a3, float64x2_t a4)
{
  v5 = RB::cubic_length<double>(*(a1 + 720), a2, a3, a4, 0.5);
  v6 = *(a1 + 704);
  if (*(a1 + 712) < (v6 + 1))
  {
    RB::vector<RB::Path::Projection::Segment,16ul,unsigned long>::reserve_slow((a1 + 56), v6 + 1);
    v6 = *(a1 + 704);
  }

  v7 = *(a1 + 696);
  if (!v7)
  {
    v7 = a1 + 56;
  }

  v8 = (v7 + 40 * v6);
  v9 = *(a1 + 752);
  v10 = v5;
  *v8 = vcvt_f32_f64(*(a1 + 720));
  v8[1] = vcvt_f32_f64(a2);
  v8[2] = vcvt_f32_f64(a3);
  v8[3] = vcvt_f32_f64(a4);
  v8[4].i32[0] = v9;
  v8[4].f32[1] = v10;
  ++*(a1 + 704);
  result = v5 + *(a1 + 752);
  *(a1 + 752) = result;
  *(a1 + 720) = a4;
  return result;
}

void RB::Path::Projection::cubeto_subdivide(RB::Path::Projection *this, float64x2_t *a2)
{
  if (CG::Cubic::is_flat_(a2, 4096.0))
  {
    v4 = a2[1];
    v5 = a2[2];
    v6 = a2[3];

    RB::Path::Projection::cubeto_emit(this, v4, v5, v6);
  }

  else
  {
    CG::Cubic::split(a2, 0.5, v7);
    RB::Path::Projection::cubeto_subdivide(this, v7);
    RB::Path::Projection::cubeto_subdivide(this, &v8);
  }
}

void RB::Path::DilateGlyphTransform::endpath(RB::Path::DilateGlyphTransform *this, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](this, a2);
  v3 = v2;
  v14 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F0A3D820;
  v6 = 0u;
  v7 = 0u;
  v8 = 0;
  RB::Path::BufferedTransform::apply(v2, &v5);
  RB::Path::Dilator::Dilator(v4, v3[267].n128_i64[1], v3[268]);
  if (*&v6 >= 0.0)
  {
    RB::Path::BufferedTransform::apply(v3, v4);
    RB::Path::Dilator::endpath(v4);
  }

  else
  {
    v9[0] = &unk_1F0A3D7E0;
    v9[1] = v4;
    *v10 = 0u;
    v11 = 128;
    *v12 = 0u;
    v13 = 256;
    RB::Path::BufferedTransform::apply(v3, v9);
    RB::Path::Reverser::endpath(v9);
    if (v12[0])
    {
      free(v12[0]);
    }

    if (v10[0])
    {
      free(v10[0]);
    }
  }
}

uint64_t RB::Path::ProjectPointsTransform::ProjectPointsTransform(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, double a5)
{
  *a1 = &unk_1F0A3F028;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a5;
  *(a1 + 32) = a5 * a5;
  v7 = *a4;
  v8 = a4[2];
  *(a1 + 64) = a4[1];
  *(a1 + 80) = v8;
  *(a1 + 48) = v7;
  v9 = a4[1];
  v14[0] = *a4;
  v14[1] = v9;
  v14[2] = a4[2];
  if (RB::AffineTransform::invert(v14))
  {
    v10 = v14;
  }

  else
  {
    v10 = a4;
  }

  v11 = v10[1];
  v12 = v10[2];
  *(a1 + 96) = *v10;
  *(a1 + 112) = v11;
  *(a1 + 128) = v12;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  return a1;
}

double RB::Path::ProjectPointsTransform::project(uint64_t a1, float64x2_t a2)
{
  v16[0] = xmmword_195E42760;
  v16[1] = xmmword_195E42770;
  v3 = (a1 + 96);
  v4 = *(a1 + 96);
  v17 = 0;
  v18 = 0;
  v5 = RB::Path::Projection::project(*(a1 + 16), v16, vmlaq_laneq_f64(vmlaq_n_f64(*(a1 + 128), v4, a2.f64[0]), *(a1 + 112), a2, 1));
  v6 = a2.f64[0];
  if (v5)
  {
    v7.f64[0] = RB::operator*(v3, v16);
    v15[0] = v7;
    v15[1] = v8;
    v15[2] = v9;
    v10.f64[0] = RB::operator*(v15, (a1 + 48));
    *&v6 = *&vmlaq_f64(vmlaq_f64(v11, vdupq_lane_s64(*&a2.f64[0], 0), v10), vdupq_laneq_s64(a2, 1), v12);
  }

  return v6;
}

uint64_t RB::Path::ProjectPointsTransform::moveto(uint64_t a1, float64x2_t a2)
{
  *(a1 + 144) = a2;
  *(a1 + 160) = a2;
  v3.n128_f64[0] = RB::Path::ProjectPointsTransform::project(a1, a2);
  v4 = *(**(a1 + 8) + 16);

  return v4(v3);
}

uint64_t RB::Path::ProjectPointsTransform::lineto(uint64_t result, float64x2_t a2)
{
  v2 = result;
  v3 = *(result + 144);
  v4 = vsubq_f64(a2, v3);
  v5 = vaddvq_f64(vmulq_f64(v4, v4));
  v6 = 1.0;
  if (v5 <= *(result + 32))
  {
    v7 = 1;
  }

  else
  {
    v7 = vcvtpd_s64_f64(sqrt(v5) / *(result + 24));
    if (v7 > 15)
    {
      v7 = 16;
      v6 = 0.0625;
    }

    else if (v7 != 1)
    {
      if (v7 < 1)
      {
        return result;
      }

      v6 = 1.0 / v7;
    }
  }

  __asm { FMOV            V0.2D, #0.5 }

  v17 = _Q0;
  v18 = v4;
  _Q0.f64[0] = v6;
  v19 = *(result + 144);
  do
  {
    v22 = _Q0;
    v20 = vmlaq_n_f64(v3, v4, _Q0.f64[0]);
    v13 = vmulq_f64(vaddq_f64(*(v2 + 144), v20), v17);
    *(v2 + 144) = v20;
    v14 = *(v2 + 8);
    v15.n128_f64[0] = RB::Path::ProjectPointsTransform::project(v2, v13);
    v21 = v15;
    v16.n128_f64[0] = RB::Path::ProjectPointsTransform::project(v2, v20);
    result = (*(*v14 + 32))(v14, v21, v16);
    _Q0.f64[1] = v22.f64[1];
    v4 = v18;
    v3 = v19;
    _Q0.f64[0] = v22.f64[0] + v6;
    --v7;
  }

  while (v7);
  return result;
}

uint64_t RB::Path::ProjectPointsTransform::quadto(__n128 *a1, float64x2_t a2, float64x2_t a3)
{
  a1[9] = a3;
  v4 = a1->n128_u64[1];
  v5.n128_f64[0] = RB::Path::ProjectPointsTransform::project(a1, a2);
  v10 = v5;
  v6.n128_f64[0] = RB::Path::ProjectPointsTransform::project(a1, a3);
  v7 = *(*v4 + 32);

  return v7(v4, v10, v6);
}

uint64_t RB::Path::ProjectPointsTransform::cubeto(__n128 *a1, float64x2_t a2, float64x2_t a3, float64x2_t a4)
{
  a1[9] = a4;
  v5 = a1->n128_u64[1];
  v6.n128_f64[0] = RB::Path::ProjectPointsTransform::project(a1, a2);
  v14 = v6;
  v7.n128_f64[0] = RB::Path::ProjectPointsTransform::project(a1, a3);
  v12 = v7;
  v8.n128_f64[0] = RB::Path::ProjectPointsTransform::project(a1, a4);
  v9 = *(*v5 + 40);

  return v9(v5, v14, v12, v8);
}

uint64_t RB::Path::ProjectPointsTransform::closepath(float64x2_t *this)
{
  v2 = this[10];
  v3 = vceqq_f64(this[9], v2);
  if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v3), 1), v3).u64[0] & 0x8000000000000000) != 0)
  {
    RB::Path::ProjectPointsTransform::lineto(this, v2);
  }

  v4 = *(**&this->f64[1] + 8);

  return v4();
}

_DWORD *RB::Path::Builder::moveto(uint64_t a1, __n128 a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a2;
  return RB::Path::Storage::append_element(*(a1 + 8), 0, v3.n128_f64, 0);
}

_DWORD *RB::Path::Builder::lineto(uint64_t a1, __n128 a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a2;
  return RB::Path::Storage::append_element(*(a1 + 8), 1, v3.n128_f64, 0);
}

_DWORD *RB::Path::Builder::quadto(uint64_t a1, __n128 a2, __n128 a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v4[0] = a2;
  v4[1] = a3;
  return RB::Path::Storage::append_element(*(a1 + 8), 2, v4, 0);
}

_DWORD *RB::Path::Builder::cubeto(uint64_t a1, __n128 a2, __n128 a3, __n128 a4)
{
  v6 = *MEMORY[0x1E69E9840];
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = a4;
  return RB::Path::Storage::append_element(*(a1 + 8), 3, v5, 0);
}

__n128 RB::Path::anonymous namespace::Lengths::closepath(RB::Path::_anonymous_namespace_::Lengths *this)
{
  v2 = *(this + 68);
  v3 = *(this + 67);
  v4 = this + 8;
  v5 = *(this + 130);
  v6 = v5 + 1;
  if (*(this + 131) < (v5 + 1))
  {
    v11 = *(this + 67);
    v12 = *(this + 68);
    RB::vector<double,128ul,unsigned long>::reserve_slow(this + 8, v6);
    v3 = v11;
    v2 = v12;
    v5 = *(this + 130);
    v6 = v5 + 1;
  }

  v7 = vsubq_f64(v2, v3);
  v8 = sqrt(vaddvq_f64(vmulq_f64(v7, v7)));
  v9 = *(this + 129);
  if (!v9)
  {
    v9 = v4;
  }

  *&v9[8 * v5] = v8;
  *(this + 130) = v6;
  *(this + 132) = *(this + 132) + v8;
  result = *(this + 68);
  *(this + 67) = result;
  return result;
}

__n128 *RB::Path::anonymous namespace::Lengths::lineto(__n128 *result, float64x2_t a2)
{
  v2 = result;
  v3 = result[67];
  v4 = &result->n128_i8[8];
  v5 = result[65].n128_u64[0];
  v6 = v5 + 1;
  if (result[65].n128_u64[1] < v5 + 1)
  {
    v10 = result[67];
    v11 = a2;
    result = RB::vector<double,128ul,unsigned long>::reserve_slow(&result->n128_i8[8], v6);
    v3 = v10;
    a2 = v11;
    v5 = v2[65].n128_u64[0];
    v6 = v5 + 1;
  }

  v7 = vsubq_f64(a2, v3);
  v8 = sqrt(vaddvq_f64(vmulq_f64(v7, v7)));
  v9 = v2[64].n128_u64[1];
  if (!v9)
  {
    v9 = v4;
  }

  *(v9 + 8 * v5) = v8;
  v2[65].n128_u64[0] = v6;
  v2[66].n128_f64[0] = v2[66].n128_f64[0] + v8;
  v2[67] = a2;
  return result;
}

double RB::Path::anonymous namespace::Lengths::quadto(float64x2_t *a1, float64x2_t a2, float64x2_t a3)
{
  v4 = vaddq_f64(a2, a2);
  v5 = vdupq_n_s64(0x3FD5555555555555uLL);
  return result;
}

void *RB::vector<double,128ul,unsigned long>::reserve_slow(void *__dst, size_t a2)
{
  if (*(__dst + 130) + (*(__dst + 130) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 130) + (*(__dst + 130) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,8ul>(*(__dst + 128), __dst, 0x80uLL, __dst + 130, v3);
  *(__dst + 128) = result;
  return result;
}

void *RB::vector<double,512ul,unsigned long>::reserve_slow(void *__dst, size_t a2)
{
  if (*(__dst + 514) + (*(__dst + 514) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 514) + (*(__dst + 514) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,8ul>(*(__dst + 512), __dst, 0x200uLL, __dst + 514, v3);
  *(__dst + 512) = result;
  return result;
}

uint64_t _ZN2RB13CubicIteratorIDv2_fE13segment_countIfEEiS1_S1_S1_S1_T_(float32x2_t a1, float32x2_t a2, float32x2_t a3, float32x2_t a4, float a5)
{
  v6 = vrecpe_f32(LODWORD(a5));
  v7 = vmul_f32(vrecps_f32(LODWORD(a5), v6), v6);
  v8 = vmaxnm_f32(vabs_f32(vadd_f32(vsub_f32(a1, vadd_f32(a2, a2)), a3)), vabs_f32(vadd_f32(vsub_f32(a2, vadd_f32(a3, a3)), a4)));
  v9 = ceilf(sqrtf((0.75 * vmul_f32(v7, vrecps_f32(LODWORD(a5), v7)).f32[0]) * sqrtf(vaddv_f32(vmul_f32(v8, v8)))));
  if ((LODWORD(v9) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    return 0;
  }

  if (v9 >= 1.0)
  {
    v12 = 1024.0;
    if (v9 <= 1024.0)
    {
      v12 = v9;
    }

    return v12;
  }

  else
  {
    v11 = vceq_f32(a1, a4);
    return (vpmin_u32(v11, v11).u32[0] & 0x80000000) == 0;
  }
}

void *RB::vector<RB::Path::Projection::Segment,16ul,unsigned long>::reserve_slow(void *__dst, unint64_t a2)
{
  if (*(__dst + 82) + (*(__dst + 82) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 82) + (*(__dst + 82) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,40ul>(*(__dst + 80), __dst, 0x10uLL, __dst + 82, v3);
  *(__dst + 80) = result;
  return result;
}

void *RB::details::realloc_vector<unsigned long,40ul>(void *__src, void *__dst, unint64_t a3, unint64_t *a4, unint64_t a5)
{
  v7 = __src;
  if (a5 <= a3)
  {
    if (__src)
    {
      v9 = a3;
      memcpy(__dst, __src, 40 * a5);
      free(v7);
      v12 = 0;
LABEL_8:
      *a4 = v9;
      return v12;
    }
  }

  else
  {
    v8 = malloc_good_size(40 * a5);
    v9 = v8 / 0x28;
    if (v8 / 0x28 != *a4)
    {
      v10 = malloc_type_realloc(v7, v8, 0x58CA92B9uLL);
      if (!v10)
      {
        RB::precondition_failure("allocation failure", v11);
      }

      v12 = v10;
      if (!v7)
      {
        memcpy(v10, __dst, 40 * *a4);
      }

      goto LABEL_8;
    }
  }

  return v7;
}

uint64_t RB::DisplayList::Contents::empty_contents(RB::DisplayList::Contents *this)
{
  {
    RB::DisplayList::Contents::empty_contents(void)::$_0::operator()();
  }

  return RB::DisplayList::Contents::empty_contents(void)::shared_empty;
}

uint64_t RB::DisplayList::Contents::intern_uuid(RB::DisplayList::Contents *this, const UUID *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = *(this + 52);
  if (!result || (*result == *a2 ? (v5 = *(result + 8) == *&(*a2)[8]) : (v5 = 0), !v5))
  {
    result = *(this + 4);
    if ((result + 16) > *(this + 5))
    {
      result = RB::Heap::alloc_slow(this + 2, 0x10uLL, 0);
    }

    else
    {
      *(this + 4) = result + 16;
    }

    *result = *a2;
    *(this + 52) = result;
  }

  return result;
}

void *RB::DisplayList::Contents::get_cgimage(void *result, unsigned __int8 a2, const void **a3, int32x2_t a4)
{
  if (*(result + 96) == 0.0)
  {
    v5 = result[42];
    if (v5)
    {
      if (!*(v5 + 8) && !result[44] && (*(result + 198) & 0x1001) == 0 && !*(v5 + 24) && !*(v5 + 16) && *(v5 + 44) == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) && (*(v5 + 46) & 0x3F) == 2)
      {
        result = (*(*v5 + 16))(result[42]);
        if (result == 12587009)
        {
          v8 = *(v5 + 48);
          if (v8)
          {
            v10 = *(v5 + 48);
            result = RB::Coverage::Primitive::contains((v5 + 64), v8, 0, vcvt_f32_s32(a4));
            if (result)
            {
              *v9.f32 = a4;

              return RB::Fill::Image<RB::ImageTexture>::get_cgimage((v5 + 112), v10, a2, a3, v9);
            }
          }
        }
      }
    }
  }

  return result;
}

const void *RB::Fill::Image<RB::ImageTexture>::get_cgimage(RB::ImageTexture *a1, float64x2_t *a2, unsigned __int8 a3, const void **a4, float32x4_t a5)
{
  result = RB::Fill::ImageData::can_get_image(a1 + 16, a2, a3, a5);
  if (result)
  {
    v8 = RB::ImageTexture::cg_image(a1);
    result = *a4;
    if (*a4 != v8)
    {
      if (result)
      {
        CFRelease(result);
      }

      if (v8)
      {
        result = CFRetain(v8);
      }

      else
      {
        result = 0;
      }

      *a4 = result;
    }
  }

  return result;
}

void RB::DisplayList::Contents::print(RB::DisplayList::Contents *this, RB::SexpString *a2)
{
  RB::SexpString::push(a2, "display-list");
  if ((*(this + 424) & 1) == 0)
  {
    RB::SexpString::print(a2, 0, "optimized");
  }

  RB::DisplayList::Layer::print((this + 320), a2, 0);

  RB::SexpString::pop(a2);
}

uint64_t RB::Refcount<RB::DisplayList::Contents,std::atomic<unsigned int>>::release(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    return RB::DisplayList::DetachedLayerItem::~DetachedLayerItem(result);
  }

  return result;
}

unint64_t RB::DisplayList::AtomizedItems::animation_layer(RB::DisplayList::AtomizedItems *this)
{
  v1 = *(*this + 32);
  if (v1 && (v2 = RB::DisplayList::Metadata::animation_layer(v1)) != 0)
  {
    v3 = *v2 & 0xFFFFFFFF00000000;
    v4 = *v2;
  }

  else
  {
    v4 = 0;
    v3 = 0x100000000;
  }

  return v4 | v3;
}

char *RB::vector<RB::Device::FrameContinuation,2ul,unsigned long>::~vector(char *a1)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = a1;
  }

  if (*(a1 + 5))
  {
    v4 = 0;
    v5 = (v3 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;

      ++v4;
    }

    while (v4 < *(a1 + 5));
    v2 = *(a1 + 4);
  }

  if (v2)
  {
    free(v2);
  }

  return a1;
}

void RB::Device::~Device(RB::Device *this)
{
  *this = &unk_1F0A385B0;
  dispatch_sync(*(this + 5), &__block_literal_global_1);
  for (i = *(this + 52); i != (this + 408); i = i[1])
  {
    *(i[2] + 48) = 0;
  }

  if (*(this + 123))
  {
    CGGlyphLockRelease();
  }

  v20 = this;
  RB::UntypedTable::for_each(this + 912, RB::Table<RB::CustomShader::Library *,RB::FunctionLibrary *>::for_each<RB::Device::~Device()::$_0>(RB::Device::~Device()::$_0 const&)const::{lambda(void const*,void const*,void const*)#1}::__invoke, &v20);
  std::unique_ptr<RB::SharedSurfaceGroup>::reset[abi:nn200100](this + 124, 0);
  std::unique_ptr<RB::GlyphPathCache>::reset[abi:nn200100](this + 122, 0);
  RB::UntypedTable::~UntypedTable((this + 912));
  RB::UntypedTable::~UntypedTable((this + 848));
  v3 = *(this + 104);
  if (v3)
  {
    free(v3);
  }

  for (j = 816; j != 624; j -= 8)
  {
  }

  do
  {

    j -= 8;
  }

  while (j != 576);
  std::__hash_table<RB::FormattedRenderState,std::hash<RB::FormattedRenderState>,std::equal_to<RB::FormattedRenderState>,std::allocator<RB::FormattedRenderState>>::~__hash_table(this + 536);
  RB::UntypedTable::~UntypedTable((this + 472));
  std::__list_imp<RB::refcounted_ptr<RB::Texture>>::clear(this + 54);
  std::__list_imp<RB::refcounted_ptr<RB::Texture>>::clear(this + 51);
  std::__list_imp<RB::refcounted_ptr<RB::Texture>>::clear(this + 48);
  std::__list_imp<RB::refcounted_ptr<RB::Texture>>::clear(this + 44);
  v5 = this + 264;
  v6 = *(this + 37);
  if (v6)
  {
    v5 = *(this + 37);
  }

  if (*(this + 38))
  {
    v7 = 0;
    v8 = (v5 + 8);
    do
    {
      v9 = *v8;
      v8 += 2;

      ++v7;
    }

    while (v7 < *(this + 38));
    v6 = *(this + 37);
  }

  if (v6)
  {
    free(v6);
  }

  v10 = *(this + 30);
  if (v10)
  {
    v11 = v10[2] - 1;
    v10[2] = v11;
    if (!v11)
    {
      (*(*v10 + 8))(v10);
    }
  }

  v12 = *(this + 29);
  if (v12)
  {
    v13 = v12[2] - 1;
    v12[2] = v13;
    if (!v13)
    {
      (*(*v12 + 8))(v12);
    }
  }

  v14 = *(this + 28);
  if (v14)
  {
    v15 = v14[2] - 1;
    v14[2] = v15;
    if (!v15)
    {
      (*(*v14 + 8))(v14);
    }
  }

  v16 = *(this + 27);
  if (v16)
  {
    v17 = v16[2] - 1;
    v16[2] = v17;
    if (!v17)
    {
      (*(*v16 + 8))(v16);
    }
  }

  v18 = *(this + 10);
  if (v18)
  {
    v19 = v18[2] - 1;
    v18[2] = v19;
    if (!v19)
    {
      (*(*v18 + 8))(v18);
    }
  }
}

{
  RB::Device::~Device(this);

  JUMPOUT(0x19A8C09E0);
}

void sub_195DEBCEC(_Unwind_Exception *a1)
{
  std::unique_ptr<RB::SharedSurfaceGroup>::reset[abi:nn200100]((v1 + 992), 0);
  std::unique_ptr<RB::GlyphPathCache>::reset[abi:nn200100]((v1 + 976), 0);
  RB::UntypedTable::~UntypedTable((v1 + 912));
  RB::UntypedTable::~UntypedTable((v1 + 848));
  v4 = *(v1 + 832);
  if (v4)
  {
    free(v4);
  }

  for (i = 0; i != -192; i -= 8)
  {
  }

  for (j = 0; j != -48; j -= 8)
  {
  }

  std::__hash_table<RB::FormattedRenderState,std::hash<RB::FormattedRenderState>,std::equal_to<RB::FormattedRenderState>,std::allocator<RB::FormattedRenderState>>::~__hash_table(v1 + 536);
  RB::UntypedTable::~UntypedTable((v1 + 472));
  std::__list_imp<RB::refcounted_ptr<RB::Texture>>::clear((v1 + 432));
  std::__list_imp<RB::refcounted_ptr<RB::Texture>>::clear(v2);
  std::__list_imp<RB::refcounted_ptr<RB::Texture>>::clear((v1 + 384));
  std::__list_imp<RB::refcounted_ptr<RB::Texture>>::clear((v1 + 352));
  RB::vector<RB::Device::FrameContinuation,2ul,unsigned long>::~vector((v1 + 264));
  v7 = *(v1 + 240);
  if (v7)
  {
    v8 = v7[2] - 1;
    v7[2] = v8;
    if (!v8)
    {
      (*(*v7 + 8))(v7);
    }
  }

  v9 = *(v1 + 232);
  if (v9)
  {
    v10 = v9[2] - 1;
    v9[2] = v10;
    if (!v10)
    {
      (*(*v9 + 8))(v9);
    }
  }

  v11 = *(v1 + 224);
  if (v11)
  {
    v12 = v11[2] - 1;
    v11[2] = v12;
    if (!v12)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v13 = *(v1 + 216);
  if (v13)
  {
    v14 = v13[2] - 1;
    v13[2] = v14;
    if (!v14)
    {
      (*(*v13 + 8))(v13);
    }
  }

  v15 = *(v1 + 80);
  if (v15)
  {
    v16 = v15[2] - 1;
    v15[2] = v16;
    if (!v16)
    {
      (*(*v15 + 8))(v15);
    }
  }

  _Unwind_Resume(a1);
}

double RB::Device::make_index_buffer(RB::Device *this, uint64_t a2)
{
  v37[1] = *MEMORY[0x1E69E9840];
  v3 = -4;
  if (!*(this + 331))
  {
    v3 = -256;
  }

  v4 = 4;
  if (!*(this + 331))
  {
    v4 = 256;
  }

  v5 = (v4 + 127) & v3;
  v6 = (v4 + v5 + 125) & v3;
  v7 = v4 + 127 + v6;
  v8 = v7 & v3;
  v9 = ((v7 & v3) + v4 + 16) & v3;
  MEMORY[0x1EEE9AC00](this, a2);
  v11 = v37 - v10;
  bzero(v37 - v10, v9 + 8);
  for (i = 0; i != 32; i += 8)
  {
    v13.i64[0] = i;
    v15 = vshlq_u64(v13, xmmword_195E45980);
    v16 = vdupq_lane_s64(v15.i64[0], 0);
    v17 = vorrq_s8(v16, xmmword_195E45990);
    v18 = vorrq_s8(v16, xmmword_195E459A0);
    v19 = vorrq_s8(v16, xmmword_195E459B0);
    v20 = vzip1q_s64(v15, v18);
    v21 = v15.i32[0] | 0xEu;
    v22 = vdupq_laneq_s64(v17, 1);
    v23 = vextq_s8(v18, v17, 8uLL);
    v18.i64[0] = vdupq_laneq_s64(v19, 1).u64[0];
    v18.i64[1] = v21;
    v38.val[0] = vuzp1q_s16(vuzp1q_s32(v20, v23), vuzp1q_s32(vzip1q_s64(v22, v19), v18));
    v24 = vorrq_s8(v16, xmmword_195E459D0);
    v13 = vuzp1q_s32(v24, vorrq_s8(v16, xmmword_195E459C0));
    v38.val[1] = vuzp1q_s16(v13, vuzp1q_s32(vorrq_s8(v16, xmmword_195E459F0), vorrq_s8(v16, xmmword_195E459E0)));
    v25 = &v11[2 * v24.i64[0] - 2];
    vst2q_s16(v25, v38);
  }

  v26 = 0;
  v27 = &v11[v5 + 4];
  do
  {
    *(v27 - 2) = (4 * v26) | 1;
    *(v27 - 1) = 4 * v26;
    *v27 = (4 * v26) | 2;
    v27 += 6;
    ++v26;
  }

  while (v26 != 21);
  *&v11[v6] = 0x3000200000001;
  v28 = &v11[v6 + 16];
  for (j = 1; j != 13; ++j)
  {
    *(v28 - 4) = -1;
    *(v28 - 3) = (4 * j) | 1;
    *(v28 - 2) = 4 * j;
    *(v28 - 1) = (4 * j) | 2;
    *v28 = (4 * j) | 3;
    v28 += 10;
  }

  v30 = &v11[v8];
  *v30 = xmmword_195E45A00;
  *(v30 + 4) = 4;
  *&v11[v9] = 0x7000600040005;
  v31 = RB::Buffer::alloc(this, (v9 + 8), v11, v12);
  v33 = *(this + 10);
  *(this + 10) = v31;
  if (v33)
  {
    v34 = v33[2] - 1;
    v33[2] = v34;
    if (!v34)
    {
      (*(*v33 + 8))(v33);
      v31 = *(this + 10);
    }
  }

  if (!v31)
  {
    RB::Device::make_index_buffer(0, v32);
  }

  [*(v31 + 16) setLabel:@"rb:index-buffer"];
  v35 = *(this + 10);
  *(this + 11) = v35;
  result = 0.0;
  *(this + 6) = xmmword_195E45A10;
  *(this + 14) = v35;
  *(this + 15) = v5;
  *(this + 16) = 126;
  *(this + 17) = v35;
  *(this + 18) = v6;
  *(this + 19) = 128;
  *(this + 20) = v35;
  *(this + 21) = v8;
  *(this + 22) = 20;
  *(this + 23) = v35;
  *(this + 24) = v9;
  *(this + 25) = 8;
  return result;
}

void RB::Device::preload_resources(void **this)
{
  RB::Shader::Tables::shared(this);
  v2 = RB::Device::command_queue(this, 0);
  if (v2)
  {
    v2 = RB::Device::capture_scope(this);
  }

  this[6] = library;
  if (*(this + 330) == 1)
  {

    this[7] = library_archive;
    if (!library_archive)
    {
      *(this + 330) = 0;
    }
  }
}

uint64_t RB::Device::command_queue(RB::Device *this, int a2)
{
  result = *(this + 8);
  if (!result)
  {
    v5 = [*(this + 3) newCommandQueue];

    *(this + 8) = v5;
    if (v5)
    {
      [v5 setLabel:@"RenderBox"];
      v8 = *(this + 8);
      v9 = [v8 getGPUPriority];
      v10 = [v8 getBackgroundGPUPriority];
      *(this + 128) = v9;
      *(this + 127) = v10;
      *(this + 126) = v9;
      *(this + 125) = v10;
      return *(this + 8);
    }

    else
    {
      if (a2)
      {
        RB::Device::command_queue(v6, v7);
      }

      return 0;
    }
  }

  return result;
}

uint64_t RB::Device::effective_bg_gpu_priority(RB::Device *this)
{
  if (*(this + 342) == 1)
  {
    return *(this + 341);
  }

  if (HIBYTE(RB::Device::default_bg_gpu_priority) == 1)
  {
    return RB::Device::default_bg_gpu_priority;
  }

  return *(this + 127);
}

void RB::Device::will_submit_command_buffer(uint64_t a1, uint64_t a2, __int16 a3, __int16 a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((a3 & 0x100) != 0)
  {
    v6 = a3;
  }

  else if (*(a1 + 344) == 1)
  {
    v6 = *(a1 + 343);
  }

  else if (HIBYTE(RB::Device::default_gpu_priority) == 1)
  {
    v6 = RB::Device::default_gpu_priority;
  }

  else
  {
    v6 = *(a1 + 1024);
  }

  if ((a4 & 0x100) != 0)
  {
    v7 = a4;
  }

  else if (*(a1 + 342) == 1)
  {
    v7 = *(a1 + 341);
  }

  else if (HIBYTE(RB::Device::default_bg_gpu_priority) == 1)
  {
    v7 = RB::Device::default_bg_gpu_priority;
  }

  else
  {
    v7 = *(a1 + 1016);
  }

  if (*(a1 + 1008) != v6 || *(a1 + 1000) != v7)
  {
    os_unfair_lock_lock((a1 + 1032));
    v8 = *(a1 + 1040);
    if (v8)
    {

      v8 = v8;
      os_unfair_lock_unlock((a1 + 1032));
      if (v8)
      {
        v10 = RB::misc_log(v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          LOWORD(v13) = 0;
          _os_log_impl(&dword_195CE8000, v10, OS_LOG_TYPE_INFO, "RBDevice: waiting for previous command buffer to submit", &v13, 2u);
        }

        [v8 waitUntilScheduled];
      }
    }

    else
    {
      os_unfair_lock_unlock((a1 + 1032));
    }

    if (*(a1 + 1008) != v6)
    {
      *(a1 + 1008) = v6;
      v11 = RB::misc_log([*(a1 + 64) setGPUPriority:v6]);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = 67109120;
        v14 = v6;
        _os_log_impl(&dword_195CE8000, v11, OS_LOG_TYPE_INFO, "RBDevice: set GPU priority %d", &v13, 8u);
      }
    }

    if (*(a1 + 1000) != v7)
    {
      *(a1 + 1000) = v7;
      v12 = RB::misc_log([*(a1 + 64) setBackgroundGPUPriority:v7]);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = 67109120;
        v14 = v7;
        _os_log_impl(&dword_195CE8000, v12, OS_LOG_TYPE_INFO, "RBDevice: set bg GPU priority %d", &v13, 8u);
      }
    }
  }

  os_unfair_lock_lock((a1 + 1032));
  *(a1 + 1040) = a2;
  os_unfair_lock_unlock((a1 + 1032));
}

void RB::Device::add_frame_continuation(uint64_t a1, int a2, int a3, void *a4)
{
  os_unfair_lock_lock((a1 + 248));
  v8 = *(a1 + 304);
  if (*(a1 + 312) < (v8 + 1))
  {
    v8 = *(a1 + 304);
  }

  v9 = *(a1 + 296);
  if (!v9)
  {
    v9 = a1 + 264;
  }

  v10 = v9 + 16 * v8;
  *v10 = a2;
  *(v10 + 4) = a3;
  *(v10 + 8) = [a4 copy];
  ++*(a1 + 304);

  os_unfair_lock_unlock((a1 + 248));
}

void RB::Device::dispatch_frame_continuation(uint64_t a1, int a2, uint64_t a3, unsigned int a4)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    os_unfair_lock_lock((a1 + 1032));
    if (*(a1 + 1040) == a3)
    {
      *(a1 + 1040) = 0;
    }

    os_unfair_lock_unlock((a1 + 1032));
  }

  v29 = 0;
  v30 = 0;
  v31 = 2;
  os_unfair_lock_lock((a1 + 248));
  if (a4 == 1 && a2 - *(a1 + 256) >= 1)
  {
    *(a1 + 256) = a2;
  }

  v8 = *(a1 + 304);
  if (v8)
  {
    v9 = 0;
    do
    {
      v10 = *(a1 + 296);
      if (v10)
      {
        v11 = *(a1 + 296);
      }

      else
      {
        v11 = a1 + 264;
      }

      v12 = (v11 + 16 * v9);
      if (*v12 == a2 && v12[1] == a4)
      {
        v14 = v30;
        v15 = v30 + 1;
        if (v31 < v30 + 1)
        {
          RB::vector<RB::objc_ptr<objc_object *>,2ul,unsigned long>::reserve_slow(v28, v15);
          v14 = v30;
          v10 = *(a1 + 296);
          v8 = *(a1 + 304);
          v17 = *v12;
          v16 = v12[1];
          v15 = v30 + 1;
        }

        else
        {
          v16 = a4;
          v17 = a2;
        }

        v18 = v29;
        if (!v29)
        {
          v18 = v28;
        }

        *&v18[8 * v14] = *(v12 + 1);
        *(v12 + 1) = 0;
        v30 = v15;
        if (!v10)
        {
          v10 = a1 + 264;
        }

        v19 = v10 + 16 * v8;
        *v12 = *(v19 - 16);
        *(v19 - 16) = v17;
        *(v19 - 12) = v16;
        v20 = *(v12 + 1);
        *(v12 + 1) = *(v19 - 8);
        *(v19 - 8) = v20;
        v21 = *(a1 + 296);
        v22 = *(a1 + 304) - 1;
        *(a1 + 304) = v22;
        if (!v21)
        {
          v21 = a1 + 264;
        }

        v8 = *(a1 + 304);
      }

      else
      {
        ++v9;
      }
    }

    while (v9 < v8);
  }

  os_unfair_lock_unlock((a1 + 248));
  v23 = v29;
  if (v29)
  {
    v24 = v29;
  }

  else
  {
    v24 = v28;
  }

  if (v30)
  {
    v25 = 8 * v30;
    do
    {
      if (a4 <= 1)
      {
        (*(*v24 + 16))();
      }

      v24 += 8;
      v25 -= 8;
    }

    while (v25);
    v23 = v29;
    if (v29)
    {
      v26 = v29;
    }

    else
    {
      v26 = v28;
    }

    if (v30)
    {
      for (i = 0; i < v30; ++i)
      {
      }

      v23 = v29;
    }
  }

  if (v23)
  {
    free(v23);
  }
}

void sub_195DEC964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  os_unfair_lock_unlock(v9 + 62);
  RB::vector<RB::objc_ptr<objc_object *>,2ul,unsigned long>::~vector(&a9);
  _Unwind_Resume(a1);
}

void RB::Device::alloc_shared_heap(RB::Device *this@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  v6 = (a2 + 0xFFFF) & 0xFFFFFFFFFFFF0000;
  v7 = *(this + 50);
  if (v7)
  {
    v8 = this + 384;
    do
    {
      v9 = *(this + 49);
      if (v8 == v9)
      {
        break;
      }

      v10 = 0;
      v11 = (2 * v6) | 1;
      v12 = v3;
      v3 = (this + 384);
      do
      {
        v13 = *v3;
        v14 = *((*v3)[2] + 48);
        if (v14 >= v6 && v14 < v11)
        {
          if ((v10 & 1) == 0)
          {
            v10 = 1;
          }

          if (v14 == v6)
          {
            goto LABEL_15;
          }

          v12 = v3;
          v11 = *((*v3)[2] + 48);
        }

        v3 = *v3;
      }

      while (v13 != v9);
      v3 = v12;
LABEL_15:
      if ((v10 & 1) == 0)
      {
        break;
      }

      v16 = *v3;
      v17 = (*v3)[2];
      *a3 = v17;
      v16[2] = 0;
      v18 = *v3;
      v20 = **v3;
      v19 = (*v3)[1];
      *(v20 + 8) = v19;
      *v19 = v20;
      *(this + 50) = v7 - 1;
      std::__list_imp<RB::refcounted_ptr<RB::Texture>>::__delete_node[abi:nn200100](this + 384, v18);
      *(this + 57) -= *(v17 + 48);
      if (RB::Resource::set_volatile(v17, 0) != 2)
      {
        goto LABEL_22;
      }

      *a3 = 0;
      v21 = *(v17 + 8) - 1;
      *(v17 + 8) = v21;
      if (!v21)
      {
        (*(*v17 + 8))(v17);
      }

      v7 = *(this + 50);
    }

    while (v7);
  }

  v22 = RB::ResourceHeap::alloc(this, v6);
  v17 = v22;
  *a3 = v22;
  if (v22)
  {
    RB::Resource::set_label(*(v22 + 16), "shared-heap", &RB::Device::alloc_shared_heap(unsigned long)::counter);
LABEL_22:
    *(v17 + 56) = this;
  }

  else
  {
    v23 = RB::error_log(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      RB::Device::alloc_shared_heap();
    }
  }
}

void sub_195DECB4C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v3 = v1[2] - 1;
    v1[2] = v3;
    if (!v3)
    {
      (*(*v1 + 8))(v1);
    }
  }

  _Unwind_Resume(exception_object);
}

RB *RB::Device::alloc_shared_texture_view@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, RB *a3@<X2>, unsigned __int8 a4@<W3>, void *a5@<X8>)
{
  v5 = a2;
  result = *(a2 + 56);
  if (result == a3)
  {
    goto LABEL_2;
  }

  result = RB::pixel_formats_support_view_copy(result, a3, a3);
  if (!result)
  {
    v5 = 0;
    goto LABEL_12;
  }

  v11 = a1 + 432;
  for (i = *(a1 + 440); ; i = *(i + 8))
  {
    if (i == v11)
    {
      v15 = [*(v5 + 16) newTextureViewWithPixelFormat:a3];
      if (v15)
      {
        RB::Resource::set_label(v15, "shared-view", &RB::Device::alloc_shared_texture_view(RB::Texture *,MTLPixelFormat,RB::ColorSpace)::counter);
      }

      operator new();
    }

    v13 = *(i + 16);
    if (*(v13 + 56) == a3)
    {
      v14 = *(v13 + 80);
      if ((v14 & 0x100) != 0 && v14 == a4)
      {
        result = [*(v13 + 16) parentTexture];
        if (result == *(v5 + 16))
        {
          break;
        }
      }
    }
  }

  v5 = *(i + 16);
  if (v5)
  {
LABEL_2:
    ++*(v5 + 8);
  }

LABEL_12:
  *a5 = v5;
  return result;
}

void sub_195DECD88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *a9)
{
  v10 = exception_object;
  if (*v9)
  {
    RB::Device::alloc_shared_texture_view(*v9, exception_object, a2, &a9);
    v10 = a9;
  }

  _Unwind_Resume(v10);
}

id RB::Device::invalid_texture(id *this)
{
  if (!this[27])
  {
    v3 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:80 width:1 height:1 mipmapped:0];
    [v3 setUsage:1];
    [v3 setStorageMode:0];
    v4 = [this[3] newTextureWithDescriptor:v3];
    [v4 setLabel:@"rb:invalid-texture"];
    v8 = -256;
    memset(v5, 0, sizeof(v5));
    v6 = vdupq_n_s64(1uLL);
    v7 = 1;
    [v4 replaceRegion:v5 mipmapLevel:0 withBytes:&v8 bytesPerRow:4];
    operator new();
  }

  return this[27];
}

id RB::Device::clear_texture(id *this)
{
  if (!this[28])
  {
    v3 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:80 width:1 height:1 mipmapped:0];
    [v3 setUsage:1];
    [v3 setStorageMode:0];
    v4 = [this[3] newTextureWithDescriptor:v3];
    [v4 setLabel:@"rb:clear-texture"];
    v8 = 0;
    memset(v5, 0, sizeof(v5));
    v6 = vdupq_n_s64(1uLL);
    v7 = 1;
    [v4 replaceRegion:v5 mipmapLevel:0 withBytes:&v8 bytesPerRow:4];
    operator new();
  }

  return this[28];
}

_DWORD *RB::Device::distance_texture(RB::Device *this)
{
  v1 = *(this + 29);
  if (!v1)
  {
    v4 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:25 width:16 height:16 mipmapped:0];
    [v4 setUsage:1];
    [v4 setStorageMode:0];
    v5 = [*(this + 3) newTextureWithDescriptor:v4];
    if (v5)
    {
      v6 = v5;
      [v5 setLabel:@"rb:distance-lut"];
      memset(v10, 0, sizeof(v10));
      v11 = vdupq_n_s64(0x10uLL);
      v12 = 1;
      operator new();
    }

    v7 = RB::error_log(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      RB::Device::distance_texture();
    }

    v1 = RB::Device::invalid_texture(this);
    v8 = *(this + 29);
    if (v8 == v1)
    {
      return *(this + 29);
    }

    else
    {
      if (v8)
      {
        v9 = v8[2] - 1;
        v8[2] = v9;
        if (!v9)
        {
          (*(*v8 + 8))(v8);
        }
      }

      if (v1)
      {
        ++v1[2];
      }

      *(this + 29) = v1;
    }
  }

  return v1;
}

uint64_t RB::Device::remove_function_library(RB::Device *this, RB::CustomShader::Library *a2)
{
  result = RB::UntypedTable::lookup((this + 912), a2, 0);
  if (result)
  {
    if (*(result + 104) == 1)
    {
      v5 = *(this + 5);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___ZN2RB6Device23remove_function_libraryERNS_12CustomShader7LibraryE_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = this;
      dispatch_sync(v5, block);
    }

    return RB::UntypedTable::remove((this + 912), a2);
  }

  return result;
}

void RB::Device::function_library_error(atomic_uint *this, const RB::FunctionLibrary *a2, id a3)
{
  v4 = *(a2 + 6);
  if (this)
  {
    atomic_fetch_add_explicit(this + 2, 1u, memory_order_relaxed);
  }

  v5 = a3;
  v6 = *(this + 4);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN2RB6Device22function_library_errorERKNS_15FunctionLibraryEP7NSError_block_invoke;
  block[3] = &__block_descriptor_52_e8_32c38_ZTSN2RB14refcounted_ptrINS_6DeviceEEE40c29_ZTSN2RB8objc_ptrIP7NSErrorEE_e5_v8__0l;
  atomic_fetch_add_explicit(this + 2, 1u, memory_order_relaxed);
  v8 = this;
  v9 = v5;
  v10 = v4;
  dispatch_async(v6, block);

  if (v8 && atomic_fetch_add_explicit(v8 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    [RBDevice initWithDevice:];
  }

  if (atomic_fetch_add_explicit(this + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    [RBDevice initWithDevice:];
  }
}

void sub_195DED52C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    RB::Device::function_library_error(a14);
  }

  if (atomic_fetch_add_explicit((v14 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    [RBDevice initWithDevice:];
  }

  _Unwind_Resume(a1);
}

void ___ZN2RB6Device22function_library_errorERKNS_15FunctionLibraryEP7NSError_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  RB::UntypedTable::for_each(v2 + 912, _ZZNK2RB5TableIPNS_12CustomShader7LibraryEPNS_15FunctionLibraryEE8for_eachIZZNS_6Device22function_library_errorERKS4_P7NSErrorEUb0_E4__16EEvRKT_ENUlPKvSI_SI_E_8__invokeESI_SI_SI_, &v3);
}

id __copy_helper_block_e8_32c38_ZTSN2RB14refcounted_ptrINS_6DeviceEEE40c29_ZTSN2RB8objc_ptrIP7NSErrorEE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
  }

  *(a1 + 32) = v3;
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void sub_195DED630(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    __copy_helper_block_e8_32c38_ZTSN2RB14refcounted_ptrINS_6DeviceEEE40c29_ZTSN2RB8objc_ptrIP7NSErrorEE_cold_1(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __destroy_helper_block_e8_32c38_ZTSN2RB14refcounted_ptrINS_6DeviceEEE40c29_ZTSN2RB8objc_ptrIP7NSErrorEE(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      return [RBDevice .cxx_destruct];
    }
  }

  return result;
}

uint64_t RB::Device::valid_texture_size_nonnative(uint64_t a1, uint64_t a2, int32x2_t a3)
{
  if ((a2 - 2147483649) <= 2)
  {
    if (3 * a3.i32[0] != 3 * a3.i32[0])
    {
      return 0;
    }

    a3.i32[0] *= 3;
  }

  v4 = (a1 + 336);
  v5 = vld1_dup_f32(v4);
  v6 = vand_s8(vcge_s32(v5, a3), vcgtz_s32(a3));
  return vpmin_u32(v6, v6).u32[0] >> 31;
}

uint64_t RB::Device::prune_caches(RB::Device *this, char a2)
{
  v93 = *MEMORY[0x1E69E9840];
  v4 = *(this + 64);
  v89 = 0;
  v5 = (RB::current_time_seconds(this) * 60.0 + 0.5);
  v6 = vadd_s32(vdup_n_s32(v5), 0xFFFFFFFEFFFFFDA8);
  v78 = v6;
  if (a2)
  {
    std::__list_imp<RB::refcounted_ptr<RB::Texture>>::clear(this + 44);
    std::__list_imp<RB::refcounted_ptr<RB::Texture>>::clear(this + 51);
    std::__list_imp<RB::refcounted_ptr<RB::Texture>>::clear(this + 54);
    std::__list_imp<RB::refcounted_ptr<RB::Texture>>::clear(this + 48);
  }

  else
  {
    v7 = v6.i32[0];
    v8 = *(this + 46);
    if (*(this + 47) <= 0x4000000uLL)
    {
      v9 = v6.i32[0];
    }

    else
    {
      v9 = v5 - 30;
    }

    for (i = this + 352; v8; v8 = *(this + 46))
    {
      v11 = *(this + 45);
      v12 = v11[2];
      if (*(v12 + 32) - v4 > 0)
      {
        break;
      }

      if (*(v12 + 36) > v9)
      {
        break;
      }

      *(this + 47) -= *(v12 + 48);
      v14 = *v11;
      v13 = v11[1];
      *(v14 + 8) = v13;
      *v13 = v14;
      *(this + 46) = v8 - 1;
      std::__list_imp<RB::refcounted_ptr<RB::Texture>>::__delete_node[abi:nn200100](this + 352, v11);
    }

    v15 = *(this + 45);
    if (v15 != i)
    {
      do
      {
        v16 = *(v15 + 16);
        if (*(v16 + 32) - v4 > 0)
        {
          break;
        }

        RB::Resource::set_volatile(v16, 1);
        v15 = *(v15 + 8);
      }

      while (v15 != i);
      v8 = *(this + 46);
    }

    if (v8)
    {
      v89 = 1;
    }

    v17 = this + 408;
    for (j = *(this + 53); j; j = *(this + 53))
    {
      v19 = *(this + 52);
      v20 = v19[2];
      v21 = v20[18];
      v22 = v5 - 30;
      if (v21)
      {
        if (*(this + 58) <= 0x8000000uLL)
        {
          v22 = v7;
        }

        else
        {
          v22 = v5 - 30;
        }
      }

      if (v20[8] - v4 > 0)
      {
        break;
      }

      if (v20[9] > v22)
      {
        break;
      }

      *(this + 58) -= v21;
      v24 = *v19;
      v23 = v19[1];
      *(v24 + 8) = v23;
      *v23 = v24;
      *(this + 53) = j - 1;
      std::__list_imp<RB::refcounted_ptr<RB::Texture>>::__delete_node[abi:nn200100](this + 408, v19);
    }

    v25 = *(this + 52);
    if (v25 != v17)
    {
      do
      {
        v26 = *(v25 + 16);
        if (*(v26 + 32) - v4 > 0)
        {
          break;
        }

        if ((*(v26 + 77) & 2) != 0)
        {
          v26 = *(v26 + 24);
        }

        RB::Resource::set_volatile(v26, 1);
        v25 = *(v25 + 8);
      }

      while (v25 != v17);
      j = *(this + 53);
    }

    if (j)
    {
      v89 = 1;
    }

    if (*(this + 56))
    {
      context = &context;
      *&v84 = &context;
      *(&v84 + 1) = 0;
      v27 = *(this + 55);
      if (v27 == (this + 432))
      {
        goto LABEL_45;
      }

      do
      {
        v29 = *(v27 + 1);
        v28 = *(v27 + 2);
        if (v28)
        {
          ++v28[2];
        }

        if (v28[9] <= (v5 - 30))
        {
          v30 = v84;
          if (v84 != v27 && v29 != v84)
          {
            v32 = *v27;
            *(v32 + 8) = v29;
            *v29 = v32;
            v33 = *v30;
            *(v33 + 1) = v27;
            *v27 = v33;
            *v30 = v27;
            *(v27 + 1) = v30;
            --*(this + 56);
            ++*(&v84 + 1);
          }
        }

        v34 = v28[2] - 1;
        v28[2] = v34;
        if (!v34)
        {
          (*(*v28 + 8))(v28);
        }

        v27 = v29;
      }

      while (v29 != (this + 432));
      if (*(this + 56))
      {
LABEL_45:
        v89 = 1;
      }

      std::__list_imp<RB::refcounted_ptr<RB::Texture>>::clear(&context);
    }

    if (*(this + 57) > 0x8000000uLL)
    {
      v7 = v5 - 30;
    }

    v35 = this + 384;
    while (1)
    {
      v36 = *(this + 50);
      if (!v36)
      {
        break;
      }

      v37 = *(this + 49);
      v38 = v37[2];
      if (*(v38 + 32) - v4 > 0 || *(v38 + 36) > v7)
      {
        break;
      }

      *(this + 57) -= *(v38 + 48);
      v40 = *v37;
      v39 = v37[1];
      *(v40 + 8) = v39;
      *v39 = v40;
      *(this + 50) = v36 - 1;
      std::__list_imp<RB::refcounted_ptr<RB::Texture>>::__delete_node[abi:nn200100](this + 384, v37);
    }

    v41 = *(this + 49);
    if (v41 != v35)
    {
      do
      {
        v42 = *(v41 + 16);
        if (*(v42 + 32) - v4 > 0)
        {
          break;
        }

        RB::Resource::set_volatile(v42, 1);
        v41 = *(v41 + 8);
      }

      while (v41 != v35);
      v36 = *(this + 50);
    }

    if (v36)
    {
      v89 = 1;
    }
  }

  v43 = a2 & 1;
  LOBYTE(context) = a2 & 1;
  HIDWORD(context) = v4;
  LODWORD(v84) = v5 - 30;
  *(&v84 + 4) = v78;
  v44 = RB::UntypedTable::remove_if (this + 848, RB::Table<RB::TextureCacheKey const*,RB::TextureCache *>::remove_if<RB::Device::prune_caches::$_0>(RB::Device::prune_caches::$_0 const&)::{lambda(void const*,void const*,void const*)#1}::__invoke, &context);
  if (*(this + 111))
  {
    v89 = 1;
  }

  if (a2)
  {
    v45 = RB::Device::RenderPipelineEntry::Queue::shared(v44);
    RB::Device::RenderPipelineEntry::Queue::clear(v45);
  }

  v88 = 0;
  context = this;
  *&v84 = &v89;
  *(&v84 + 1) = &v88;
  v85 = a2 & 1;
  v86 = v4;
  v87 = v78.i32[0];
  dispatch_sync_f(*(this + 5), &context, RB::Device::prune_caches::$_2::__invoke);
  __s[0] = a2 & 1;
  *&__s[4] = v78.i32[0];
  RB::UntypedTable::remove_if (this + 912, RB::Table<RB::CustomShader::Library *,RB::FunctionLibrary *>::remove_if<RB::Device::prune_caches::$_3>(RB::Device::prune_caches::$_3 const&)::{lambda(void const*,void const*,void const*)#1}::__invoke, __s);
  v46 = *(this + 124);
  if (v46 && RB::SharedSurfaceGroup::prune_caches(v46, v5, a2))
  {
    v89 = 1;
  }

  v47 = *(this + 122);
  if (v47)
  {
    if (a2)
    {
      v47 = std::unique_ptr<RB::GlyphPathCache>::reset[abi:nn200100](this + 122, 0);
    }

    else
    {
      v47 = RB::GlyphPathCache::prune(v47, v5);
      if (v47)
      {
        v89 = 1;
      }
    }
  }

  if (*(this + 576) == 1)
  {
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v48 = *(this + 69);
    if (v48)
    {
      v49 = 0;
      do
      {
        *__s = v48[2];
        *&__s[8] = *(v48 + 6);
        if (v82 < v49 + 1)
        {
          RB::vector<RB::FormattedRenderState,0ul,unsigned long>::reserve_slow(&v80, v49 + 1);
          v49 = v81;
        }

        v50 = v80 + 12 * v49;
        *v50 = *__s;
        *(v50 + 2) = *&__s[8];
        v49 = ++v81;
        v48 = *v48;
      }

      while (v48);
      v48 = v80;
      v51 = v80 + 12 * v49;
      if (v49 >= 129)
      {
        v52 = MEMORY[0x1E69E5398];
        v53 = v49;
        while (1)
        {
          v54 = operator new(12 * v53, v52);
          if (v54)
          {
            break;
          }

          v55 = v53 >> 1;
          v56 = v53 > 1;
          v53 >>= 1;
          if (!v56)
          {
            v57 = 0;
            v53 = v55;
            goto LABEL_86;
          }
        }

        v57 = v54;
        goto LABEL_86;
      }
    }

    else
    {
      v51 = 0;
      v49 = 0;
    }

    v57 = 0;
    v53 = 0;
LABEL_86:
    std::__stable_sort<std::_ClassicAlgPolicy,RB::Device::prune_caches::$_4 &,RB::FormattedRenderState *>(v48, v51, v49, v57, v53);
    if (v57)
    {
      operator delete(v57);
    }

    memset(&v79, 0, sizeof(v79));
    if (v81)
    {
      v59 = v80;
      v60 = v80 + 12 * v81;
      do
      {
        v61 = *v59;
        v62 = *(v59 + 2);
        size = HIBYTE(v79.__r_.__value_.__r.__words[2]);
        if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v79.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          std::string::push_back(&v79, 32);
        }

        v90 = v61;
        v91 = v62;
        RB::FormattedRenderState::ID::formatted(&v90, v58, __s);
        v64 = strlen(__s);
        std::string::append(&v79, __s, v64);
        v59 += 12;
      }

      while (v59 != v60);
    }

    std::string::push_back(&v79, 10);
    v66 = RB::misc_log(v65);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
    {
      v67 = &v79;
      if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v67 = v79.__r_.__value_.__r.__words[0];
      }

      *__s = 136315138;
      *&__s[4] = v67;
      _os_log_impl(&dword_195CE8000, v66, OS_LOG_TYPE_INFO, "pipeline states: %s", __s, 0xCu);
    }

    *(this + 576) = 0;
    if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v79.__r_.__value_.__l.__data_);
    }

    v47 = v80;
    if (v80)
    {
      free(v80);
    }
  }

  v68 = RB::Device::RenderPipelineEntry::Queue::shared(v47);
  os_unfair_lock_lock(v68);
  RB::Device::RenderPipelineEntry::Queue::load_next_locked(v68);
  os_unfair_lock_unlock(v68);
  if (v43)
  {
    if (v88 == 1)
    {

      *(this + 6) = 0;
      *(this + 7) = 0;
    }

    *(this + 8) = 0;
    *(this + 9) = 0;

    v69 = *(this + 27);
    *(this + 26) = 0;
    *(this + 27) = 0;
    if (v69)
    {
      v70 = v69[2] - 1;
      v69[2] = v70;
      if (!v70)
      {
        (*(*v69 + 8))(v69);
      }
    }

    v71 = *(this + 28);
    *(this + 28) = 0;
    if (v71)
    {
      v72 = v71[2] - 1;
      v71[2] = v72;
      if (!v72)
      {
        (*(*v71 + 8))(v71);
      }
    }

    v73 = *(this + 29);
    *(this + 29) = 0;
    if (v73)
    {
      v74 = v73[2] - 1;
      v73[2] = v74;
      if (!v74)
      {
        (*(*v73 + 8))(v73);
      }
    }

    v75 = *(this + 30);
    *(this + 30) = 0;
    if (v75)
    {
      v76 = v75[2] - 1;
      v75[2] = v76;
      if (!v76)
      {
        (*(*v75 + 8))(v75);
      }
    }

    os_unfair_lock_lock(this + 206);
    *(this + 210) = 0;
    os_unfair_lock_unlock(this + 206);
  }

  return v89;
}

void sub_195DEDF90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17)
{
  if (a17)
  {
    free(a17);
  }

  _Unwind_Resume(exception_object);
}

void RB::Device::RenderPipelineEntry::Queue::clear(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this);
  for (i = *&this[2]._os_unfair_lock_opaque; i; i = *i)
  {
    *(i + 28) = 4;
  }

  *&this[2]._os_unfair_lock_opaque = 0;
  *&this[4]._os_unfair_lock_opaque = 0;

  os_unfair_lock_unlock(this);
}

uint64_t *std::unique_ptr<RB::GlyphPathCache>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    RB::UntypedTable::~UntypedTable((v2 + 8));

    JUMPOUT(0x19A8C09E0);
  }

  return result;
}

RB::Device::RenderPipelineEntry *RB::Device::render_pipeline_state(uint64_t a1, uint64_t a2, int a3, void *a4, int a5, int a6)
{
  v96 = *MEMORY[0x1E69E9840];
  v84 = a2;
  v85 = a3;
  v10 = RB::UntypedTable::lookup((a1 + 472), &v84, 0);
  v11 = v10;
  if (!v10 || (RB::Device::RenderPipelineEntry::mark_use(v10, a5, a6), !*(v11 + 3)))
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v12;
    v14 = 0;
    v83 = 0;
    if (!*(a1 + 48))
    {
      if (bundle)
      {

        v14 = bundle;
      }

      else
      {
        v14 = 0;
      }

      *(a1 + 48) = library;
      if (!library)
      {
        goto LABEL_93;
      }
    }

    if (*(a1 + 330) == 1 && !*(a1 + 56))
    {
      if (!v14)
      {
        if (v17)
        {

          v14 = v17;
        }

        else
        {
          v14 = 0;
        }
      }

      *(a1 + 56) = library_archive;
      if (!library_archive)
      {
        *(a1 + 330) = 0;
      }
    }

    v19 = RB::RenderState::custom_shader_signature(&v84);
    if (v19)
    {
      v21 = a4[1];
      if (!v21)
      {
LABEL_21:
        RB::non_fatal_precondition_failure("missing custom function: %u", v20, v19);
        goto LABEL_93;
      }

      v22 = *a4 + 24;
      while (1)
      {
        v23 = *v22;
        if ((*(*v22 + 48) | (8 * *(*v22 + 4))) == v19)
        {
          break;
        }

        v22 += 8;
        if (!--v21)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      v23 = 0;
    }

    v24 = RB::current_time_seconds(v19);
    {
      binary_function = RB::RenderState::uber_compatible(&v84);
      if (binary_function)
      {
        if (v23)
        {
          binary_function = RB::Function::load_binary_function(v23, a1);
          if (!binary_function)
          {
            goto LABEL_51;
          }
        }

        v95 = v85 & 0x7FFF | (*(a1 + 335) << 15);
        v28 = RB::UntypedTable::lookup((a1 + 472), &v94, 0);
        v29 = v28;
        if (v28)
        {
          {
            operator new();
          }

          RB::Device::RenderPipelineEntry::mark_use(v29, a5, a6);
          goto LABEL_94;
        }

        v30 = objc_opt_new();
        if (RB::Device::make_render_pipeline_descriptor(v94, v95, *(a1 + 48), *(a1 + 56), v30, 0, 0))
        {
          v81 = 0;
          v82 = 0;
          v31 = *(a1 + 56);
          v78 = 4 * (v31 != 0);
          v79 = v30;
          v32 = [*(a1 + 24) newRenderPipelineStateWithDescriptor:v30 options:? reflection:? error:?];

          v82 = v32;
          if (!v31)
          {
            v32 = v82;
          }

          {
            v35 = objc_opt_new();

            if (RB::Device::make_render_pipeline_descriptor(v94, v95, *(a1 + 48), 0, v35, 0, 0))
            {
              v36 = [*(a1 + 24) newRenderPipelineStateWithDescriptor:v35 options:0 reflection:0 error:&v81];

              v82 = v36;
            }

            v78 = 0;
            v79 = v35;
          }

          if (v82)
          {
            v34 = RB::verbose_mode(2);
            if (!v34)
            {
              goto LABEL_40;
            }

            v71 = RB::current_time_seconds(v34);
            if (v78)
            {
              v72 = RB::misc_log(v70);
              if (!os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
              {
                goto LABEL_40;
              }

              v73 = RB::RenderState::name(&v94);
              v87 = v94;
              v88 = v95;
              RB::FormattedRenderState::ID::formatted(&v87, v74, buf);
              *v92 = 136315650;
              *&v92[4] = v73;
              *&v92[12] = 2080;
              *&v92[14] = buf;
              *&v92[22] = 2048;
              v93 = (v71 - v24) * 1000.0;
              v75 = "loaded uber pipeline %s-%s (%.2f ms)";
            }

            else
            {
              v72 = RB::misc_log(v70);
              if (!os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
              {
                goto LABEL_40;
              }

              v76 = RB::RenderState::name(&v94);
              v87 = v94;
              v88 = v95;
              RB::FormattedRenderState::ID::formatted(&v87, v77, buf);
              *v92 = 136315650;
              *&v92[4] = v76;
              *&v92[12] = 2080;
              *&v92[14] = buf;
              *&v92[22] = 2048;
              v93 = (v71 - v24) * 1000.0;
              v75 = "built uber pipeline %s-%s (%.2f ms)";
            }

            _os_log_impl(&dword_195CE8000, v72, OS_LOG_TYPE_INFO, v75, v92, 0x20u);
LABEL_40:
            operator new();
          }

          if (RB::verbose_mode(0x40))
          {
            std::__hash_table<RB::FormattedRenderState,std::hash<RB::FormattedRenderState>,std::equal_to<RB::FormattedRenderState>,std::allocator<RB::FormattedRenderState>>::__emplace_unique_key_args<RB::FormattedRenderState,RB::FormattedRenderState const&>((a1 + 536), &v94);
            *(a1 + 576) = (*(a1 + 576) | v69) & 1;
          }
        }

        else
        {
        }
      }
    }

    if (!v23)
    {
      v45 = *(a1 + 56);
      if (v45)
      {
        v46 = objc_opt_new();
        if ((RB::Device::make_render_pipeline_descriptor(v84, v85, *(a1 + 48), v45, v46, 0, 0) & 1) == 0)
        {
          v53 = v46;
LABEL_92:

          goto LABEL_93;
        }

        *v92 = 0;
        v47 = [*(a1 + 24) newRenderPipelineStateWithDescriptor:v46 options:4 reflection:0 error:v92];

        v83 = v47;
        v37 = v47 != 0;

        v38 = 0;
      }

      else
      {
        v38 = 0;
        v37 = 0;
      }

LABEL_52:
      if (v83)
      {
        v39 = 0;
        goto LABEL_54;
      }

      v48 = RB::signposts_log(binary_function);
      v49 = v48;
      v80 = v37;
      if (v48)
      {
        v50 = os_signpost_id_generate(v48);
        memset(v92, 0, sizeof(v92));
        LOBYTE(v93) = 0;
        *buf = v84;
        *&buf[8] = v85;
        RB::FormattedRenderState::ID::formatted(buf, v51, v92);
        if (v50 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v49))
        {
          if (v38)
          {
            v52 = *(v23 + 40);
          }

          else
          {
            v52 = &stru_1F0A40C30;
          }

          *buf = 136315394;
          *&buf[4] = v92;
          v90 = 2112;
          v91 = v52;
          _os_signpost_emit_with_name_impl(&dword_195CE8000, v49, OS_SIGNPOST_INTERVAL_BEGIN, v50, "BuildPipeline", "state=%s customFn=%@", buf, 0x16u);
        }
      }

      else
      {
        v50 = 0;
      }

      v54 = objc_opt_new();
      if (RB::Device::make_render_pipeline_descriptor(v84, v85, *(a1 + 48), 0, v54, 0, 0))
      {
        if (!v38)
        {
LABEL_80:
          *v92 = 0;
          v58 = [*(a1 + 24) newRenderPipelineStateWithDescriptor:v54 options:0 reflection:0 error:v92];

          v83 = v58;
          if (v50 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v49))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_195CE8000, v49, OS_SIGNPOST_INTERVAL_END, v50, "BuildPipeline", &unk_195E56109, buf, 2u);
          }

          v39 = v58 == 0;
          v37 = v80;
LABEL_54:
          v40 = RB::current_time_seconds(binary_function);
          if (!v39)
          {
            v41 = RB::verbose_mode(2);
            if (v41)
            {
              if (v37)
              {
                v63 = RB::misc_log(v41);
                if (!os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_56;
                }

                v64 = RB::RenderState::name(&v84);
                v94 = v84;
                v95 = v85;
                RB::FormattedRenderState::ID::formatted(&v94, v65, buf);
                *v92 = 136315650;
                *&v92[4] = v64;
                *&v92[12] = 2080;
                *&v92[14] = buf;
                *&v92[22] = 2048;
                v93 = (v40 - v24) * 1000.0;
                v66 = "loaded render pipeline %s-%s (%.2f ms)";
              }

              else
              {
                v63 = RB::misc_log(v41);
                if (!os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_56;
                }

                v67 = RB::RenderState::name(&v84);
                v94 = v84;
                v95 = v85;
                RB::FormattedRenderState::ID::formatted(&v94, v68, buf);
                *v92 = 136315650;
                *&v92[4] = v67;
                *&v92[12] = 2080;
                *&v92[14] = buf;
                *&v92[22] = 2048;
                v93 = (v40 - v24) * 1000.0;
                v66 = "built render pipeline %s-%s (%.2f ms)";
              }

              _os_log_impl(&dword_195CE8000, v63, OS_LOG_TYPE_INFO, v66, v92, 0x20u);
            }
          }

LABEL_56:
          v42 = RB::verbose_mode(0x40);
          if (v42)
          {
            v42 = std::__hash_table<RB::FormattedRenderState,std::hash<RB::FormattedRenderState>,std::equal_to<RB::FormattedRenderState>,std::allocator<RB::FormattedRenderState>>::__emplace_unique_key_args<RB::FormattedRenderState,RB::FormattedRenderState const&>((a1 + 536), &v84);
            *(a1 + 576) = (*(a1 + 576) | v62) & 1;
            if (!v39)
            {
              goto LABEL_58;
            }
          }

          else if (!v39)
          {
LABEL_58:
            v43 = v40 - v24;
            if (v43 > 0.5)
            {
              v44 = RB::error_log(v42);
              if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
              {
                v60 = RB::RenderState::name(&v84);
                v94 = v84;
                v95 = v85;
                RB::FormattedRenderState::ID::formatted(&v94, v61, buf);
                *v92 = 136315650;
                *&v92[4] = v60;
                *&v92[12] = 2080;
                *&v92[14] = buf;
                *&v92[22] = 2048;
                v93 = v43;
                _os_log_fault_impl(&dword_195CE8000, v44, OS_LOG_TYPE_FAULT, "building pipeline %s-%s took %f seconds", v92, 0x20u);
              }
            }

            operator new();
          }

LABEL_93:
          v29 = 0;
LABEL_94:

          objc_autoreleasePoolPop(v13);
          return v29;
        }

        function = RB::Function::load_function(v23, a1);
        v56 = function;
        if (function)
        {
          v86 = function;
          [objc_msgSend(v54 "fragmentLinkedFunctions")];
          v57 = [v56 label];
          if (v57)
          {
            [v54 setLabel:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%s:%@", RB::RenderState::name(&v84), v57)}];
          }

          goto LABEL_80;
        }

        if (v50 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v49))
        {
          goto LABEL_91;
        }

        *v92 = 0;
      }

      else
      {
        if (v50 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v49))
        {
          goto LABEL_91;
        }

        *v92 = 0;
      }

      _os_signpost_emit_with_name_impl(&dword_195CE8000, v49, OS_SIGNPOST_INTERVAL_END, v50, "BuildPipeline", &unk_195E56109, v92, 2u);
LABEL_91:
      v53 = v54;
      goto LABEL_92;
    }

LABEL_51:
    v37 = 0;
    v38 = 1;
    goto LABEL_52;
  }

  return v11;
}

void RB::Device::RenderPipelineEntry::mark_use(RB::Device::RenderPipelineEntry *this, int a2, int a3)
{
  if (*(this + 10) != a2)
  {
    *(this + 10) = a2;
    *(this + 11) = a3;
    v4 = *(this + 12) + 1;
    *(this + 12) = v4;
    v5 = *(this + 2);
    if (v5)
    {
      if (!*(v5 + 112) && v4 >= 2)
      {
        v7 = RB::Device::RenderPipelineEntry::Queue::shared(this);
        v8 = *(this + 2);

        RB::Device::RenderPipelineEntry::Queue::enqueue(v7, v8);
      }
    }
  }
}

id *std::unique_ptr<RB::Device::RenderPipelineEntry::Loader,RB::Device::RenderPipelineEntry::DeleteLoader>::reset[abi:nn200100](id **a1, id *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    RB::Device::RenderPipelineEntry::Loader::~Loader(result);

    JUMPOUT(0x19A8C09E0);
  }

  return result;
}

void RB::Device::preload_color_format(os_unfair_lock_s *this, unint64_t a2, int a3)
{
  if ((a2 & 0x80000000) == 0)
  {
    v4 = a3;
    if (a3)
    {
      v6 = a2 | 0x40000000;
    }

    else
    {
      v6 = a2;
    }

    os_unfair_lock_lock(this + 206);
    v7 = *&this[208]._os_unfair_lock_opaque;
    v8 = v7;
    os_unfair_lock_opaque = this[210]._os_unfair_lock_opaque;
    v10 = v7;
    if (os_unfair_lock_opaque)
    {
      v10 = *&this[208]._os_unfair_lock_opaque;
      v11 = this[210]._os_unfair_lock_opaque;
      do
      {
        v12 = v11 >> 1;
        v13 = &v10[4 * (v11 >> 1)];
        v15 = *v13;
        v14 = v13 + 4;
        v11 += ~(v11 >> 1);
        if (v15 < v6)
        {
          v10 = v14;
        }

        else
        {
          v11 = v12;
        }
      }

      while (v11);
    }

    if (v10 == &v7[os_unfair_lock_opaque] || *v10 != v6)
    {
      if (this[211]._os_unfair_lock_opaque < (os_unfair_lock_opaque + 1))
      {
        RB::vector<RB::Animation::TermOrArg,0ul,unsigned int>::reserve_slow(&this[208], os_unfair_lock_opaque + 1);
        v8 = *&this[208]._os_unfair_lock_opaque;
        os_unfair_lock_opaque = this[210]._os_unfair_lock_opaque;
      }

      v16 = v10 - v7;
      v17 = os_unfair_lock_opaque > v16 >> 2;
      v18 = os_unfair_lock_opaque - (v16 >> 2);
      if (v17)
      {
        memmove(v8 + v16 + 4, v8 + v16, 4 * v18);
      }

      *(v8 + v16) = v6;
      ++this[210]._os_unfair_lock_opaque;
      os_unfair_lock_unlock(this + 206);
      atomic_fetch_add_explicit(&this[2], 1u, memory_order_relaxed);
      v19 = *&this[8]._os_unfair_lock_opaque;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3321888768;
      block[2] = ___ZN2RB6Device20preload_color_formatE14MTLPixelFormatb_block_invoke;
      block[3] = &__block_descriptor_49_e8_32c38_ZTSN2RB14refcounted_ptrINS_6DeviceEEE_e5_v8__0l;
      atomic_fetch_add_explicit(&this[2], 1u, memory_order_relaxed);
      v21 = this;
      v22 = a2;
      v23 = v4;
      dispatch_async(v19, block);
      if (v21 && atomic_fetch_add_explicit(&v21[2], 0xFFFFFFFF, memory_order_release) == 1)
      {
        [RBDevice initWithDevice:];
      }

      if (atomic_fetch_add_explicit(&this[2], 0xFFFFFFFF, memory_order_release) == 1)
      {
        [RBDevice initWithDevice:];
      }
    }

    else
    {

      os_unfair_lock_unlock(this + 206);
    }
  }
}

void ___ZN2RB6Device20preload_color_formatE14MTLPixelFormatb_block_invoke(uint64_t a1)
{
  RB::Device::preload_resources(*(a1 + 32));
  v2 = *(a1 + 32);
  if (*(v2 + 48))
  {
    if (*(v2 + 56))
    {
      v3 = *(v2 + 40);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3321888768;
      block[2] = ___ZN2RB6Device20preload_color_formatE14MTLPixelFormatb_block_invoke_2;
      block[3] = &__block_descriptor_49_e8_32c38_ZTSN2RB14refcounted_ptrINS_6DeviceEEE_e5_v8__0l;
      atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
      v4 = *(a1 + 40);
      v6 = v2;
      v7 = v4;
      v8 = *(a1 + 48);
      dispatch_sync(v3, block);
      if (v6)
      {
        if (atomic_fetch_add_explicit((v6 + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          [RBDevice initWithDevice:];
        }
      }
    }
  }

  RB::Device::preload_render_encoders(*(a1 + 32), *(a1 + 40));
}

void RB::Device::preload_uber_shader(RB::Device *this, MTLPixelFormat a2, int a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = *(this + 328);
  v4 = *(this + 329);
  v18 = 0;
  if (a2 >= 0x400)
  {
    RB::Device::preload_uber_shader(this, a2);
  }

  v6 = v4 << 10;
  if (v3)
  {
    v6 = 2048;
  }

  if ((v4 & v3) != 0)
  {
    v7 = 3072;
  }

  else
  {
    v7 = v6;
  }

  if (a3)
  {
    v8 = 0x80000;
  }

  else
  {
    v8 = 0;
  }

  if (*(this + 335))
  {
    v9 = 0x8000;
  }

  else
  {
    v9 = 0;
  }

  v19 = v8 | a2 | v7 | ((*(this + 331) != 0) << 13) | v9 | 0x5000;
  if (!RB::UntypedTable::lookup((this + 472), &v18, 0))
  {
    v10 = RB::current_time_seconds(0);
    v11 = objc_opt_new();
    if (RB::Device::make_render_pipeline_descriptor(v18, v19, *(this + 6), *(this + 7), v11, 0, 0))
    {
      v12 = [*(this + 3) newRenderPipelineStateWithDescriptor:v11 options:4 reflection:0 error:0];
      if (v12)
      {
        v13 = RB::current_time_seconds(v12);
        v14 = RB::verbose_mode(2);
        if (v14)
        {
          v15 = RB::misc_log(v14);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = RB::RenderState::name(&v18);
            v20 = v18;
            v21 = v19;
            RB::FormattedRenderState::ID::formatted(&v20, v17, v22);
            *buf = 136315650;
            v24 = v16;
            v25 = 2080;
            v26 = v22;
            v27 = 2048;
            v28 = (v13 - v10) * 1000.0;
            _os_log_impl(&dword_195CE8000, v15, OS_LOG_TYPE_INFO, "preloaded uber pipeline %s-%s (%.2f ms)", buf, 0x20u);
          }
        }

        operator new();
      }
    }
  }
}