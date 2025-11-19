void sub_195D10B6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    RB::RenderPass::set_extra_attachments(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Image<RB::ImageTexture>>::render(float32x4_t *a1, double a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6)
{
  v10 = a1[3].i64[0];
  v11.i64[0] = SLODWORD(a2);
  v11.i64[1] = SHIDWORD(a2);
  v12 = v10[1];
  _Q0 = vaddq_f64(v10[2], vcvtq_f64_s64(v11));
  v19[0] = *v10;
  v19[1] = v12;
  v19[2] = _Q0;
  LOWORD(_Q0.f64[0]) = a1[2].i16[6];
  __asm { FCVT            S0, H0 }

  RB::Fill::Image<RB::ImageTexture>::set_image(&a1[7], &v21, a4, v19, *_Q0.f64);
  result = RB::render_primitive(a4, v19, a1 + 4, v20, &a1[8], a5, a6);
  *(a4 + 240) = 0;
  *(a4 + 244) = 0;
  return result;
}

uint64_t RB::Fill::Image<RB::ImageTexture>::set_image(uint64_t a1, uint64_t a2, const RB::RenderParams **a3, float64x2_t *a4, float a5)
{
  v10 = RB::ImageTexture::texture(a1, *a3, (a1 + 16), a4, 0);
  result = RB::Fill::set_image(a2, a3, v10, a4, a1 + 16, a5);
  if (a5 == 1.0)
  {
    if (*(a1 + 12))
    {
      v12 = 4096;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  *(a2 + 80) = *(a2 + 80) & 0xFFFFEFFF | v12;
  return result;
}

uint64_t RB::DirectRenderCommandEncoder::reset(void *a1, void *a2)
{
  *a1 = a2;
  a1[1] = [a2 methodForSelector:sel_drawPrimitives_vertexStart_vertexCount_instanceCount_];
  a1[2] = [a2 methodForSelector:sel_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount_];
  a1[3] = [a2 methodForSelector:sel_setScissorRect_];
  a1[4] = [a2 methodForSelector:sel_setRenderPipelineState_];
  a1[5] = [a2 methodForSelector:sel_setDepthStencilState_];
  a1[6] = [a2 methodForSelector:sel_setStencilReferenceValue_];
  a1[7] = [a2 methodForSelector:sel_setVertexBytes_length_atIndex_];
  a1[8] = [a2 methodForSelector:sel_setVertexBuffer_offset_atIndex_];
  a1[9] = [a2 methodForSelector:sel_setVertexBufferOffset_atIndex_];
  a1[10] = [a2 methodForSelector:sel_setFragmentBytes_length_atIndex_];
  a1[11] = [a2 methodForSelector:sel_setFragmentBuffer_offset_atIndex_];
  a1[12] = [a2 methodForSelector:sel_setFragmentBufferOffset_atIndex_];
  a1[13] = [a2 methodForSelector:sel_setFragmentTexture_atIndex_];
  result = [a2 methodForSelector:sel_setFragmentSamplerState_atIndex_];
  a1[14] = result;
  return result;
}

uint64_t *std::unique_ptr<RB::vector<RB::cf_ptr<__IOSurface *>,8ul,unsigned long>>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    if (v3)
    {
      v5 = *(v2 + 64);
    }

    else
    {
      v5 = v2;
    }

    if (v4)
    {
      for (i = 0; i < v4; ++i)
      {
        v7 = *(v5 + 8 * i);
        if (v7)
        {
          CFRelease(v7);
          v4 = *(v2 + 72);
        }
      }

      v3 = *(v2 + 64);
    }

    if (v3)
    {
      free(v3);
    }

    JUMPOUT(0x19A8C09E0);
  }

  return result;
}

void RB::DisplayList::Layer::blit(uint64_t a1, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, unsigned int a8, float a9, int8x16_t a10, int8x16_t a11, double a12, float32x2_t a13, __n128 a14, float a15, char a16, unsigned __int8 a17)
{
  v69 = a7;
  v71 = a10;
  _S9 = a9;
  v67 = a2;
  v103 = *MEMORY[0x1E69E9840];
  v26 = a5 & 3;
  v68 = a14;
  v72 = a11;
  if (v26 == 1)
  {
    v27 = vtst_s32(a14.n128_u64[0], a14.n128_u64[0]);
    if ((vpmax_u32(v27, v27).u32[0] & 0x80000000) != 0)
    {
      MEMORY[0x1EEE9AC00](a1, a2);
      v28 = &v63;
      v65 = 0;
      v63 = 0u;
      v64 = 0u;
      v34 = *(a5 & 0xFFFFFFFFFFFFFFFCLL);
      v35 = *((a5 & 0xFFFFFFFFFFFFFFFCLL) + 16);
      v65 = *((a5 & 0xFFFFFFFFFFFFFFFCLL) + 32);
      v37 = v36;
      v63 = v34;
      v64 = v35;
      v39 = v38;
      RB::ProjectionMatrix::translate(&v63, -v36, -v38);
      v40.n64_f32[0] = v37;
      RB::ProjectionMatrix::translate_right(&v63, v40, v39);
    }

    else
    {
      v28 = (a5 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v98 = 0.0;
    v99 = 0;
    if (RB::may_discard_alpha(a8))
    {
      *v30.i8 = RB::operator*(v28, a12, a13);
      v98 = *v30.i64;
      v33 = 2;
      a6 = 7;
      goto LABEL_11;
    }

    a6 = 7;
  }

  else
  {
    v98 = 0.0;
    v99 = 0;
    v28 = 0;
    if (RB::may_discard_alpha(a8))
    {
      v98 = a12;
      v33 = 2;
      *_Q1.i8 = a13;
      *v30.i64 = a12;
      goto LABEL_11;
    }
  }

  v30.i32[0] = 0;
  v41 = a3[22];
  v42 = vceq_s32(v41, 0x8000000080000000);
  v43 = vdup_lane_s32(vcgt_s32(*v30.i8, vpmin_u32(v42, v42)), 0);
  *_Q1.i8 = vbsl_s8(v43, vneg_f32(0x80000000800000), vcvt_f32_s32(v41));
  *v30.i8 = vbsl_s8(v43, 0x100000001000000, vcvt_f32_s32(a3[21]));
  v98 = *v30.i64;
  v33 = 1;
LABEL_11:
  v99 = _Q1.i64[0];
  v91.i64[0] = v30.i64[0];
  v91.i64[1] = _Q1.i64[0];
  v92 = 0;
  v93 = 0;
  v94 = 1065353216;
  v95 = 0;
  v96 = v33;
  v97 = 1;
  if (a4)
  {
    *v30.i8 = vcvt_f32_s32(*(a4 + 64));
  }

  else
  {
    v30.i64[0] = 0;
  }

  v70 = v30;
  *_Q1.i8 = vdiv_f32(vmul_f32(*v30.i8, a13), *v72.i8);
  v44.i64[1] = v71.i64[1];
  v45 = vdiv_f32(vmul_f32(a13, *v71.i8), *v72.i8);
  LODWORD(v88) = _Q1.i32[0];
  *(&v88 + 4) = 0;
  v66 = _Q1;
  *&v89 = _Q1.u32[1];
  v46 = vsub_f32(*&a12, v45);
  HIDWORD(v88) = 0;
  *(&v89 + 1) = v46;
  v90 = 1065353216;
  v86 = *v71.i8;
  v87 = v72.i64[0];
  if (a16)
  {
    *v30.i8 = vcgt_f32(vneg_f32(0x80000000800000), *v72.i8);
    *_Q1.i8 = vadd_f32(*v71.i8, 0xBF000000BF000000);
    v47 = vcltzq_s32(v30);
    v48 = vbslq_s8(v47, _Q1, v71);
    __asm { FMOV            V1.2S, #1.0 }

    *_Q1.i8 = vadd_f32(*v72.i8, *_Q1.i8);
    _Q1.i64[0] = vbslq_s8(v47, _Q1, v72).u64[0];
  }

  else
  {
    v45.i32[0] = 0.5;
    RB::Rect::inset(&v86, v45, 0.5);
    *v48.i8 = v86;
    _Q1.i64[0] = v87;
  }

  v56.i64[1] = v70.i64[1];
  v58.i64[1] = v70.i64[1];
  v53 = vrecpe_f32(v70.u32[0]);
  v54 = vmul_f32(vrecps_f32(v70.u32[0], v53), v53);
  *v58.i8 = vrecps_f32(v70.u32[0], v54);
  *v56.i8 = vrecpe_f32(v70.u32[1]);
  v55 = vrecps_f32(v70.u32[1], *v56.i8);
  *v56.i8 = vmul_f32(v55, *v56.i8);
  *v44.i8 = vrecps_f32(v70.u32[1], *v56.i8);
  v57 = vzip1_s32(v54, *v56.i8);
  *v58.i8 = vmul_f32(v57, vzip1_s32(*v58.i8, *v44.i8));
  *v48.i8 = vmul_f32(*v58.i8, *v48.i8);
  v59 = COERCE_DOUBLE(vmul_f32(*_Q1.i8, *v58.i8));
  v86 = *v48.i8;
  v87 = *&v59;
  if (v26 > 1)
  {
    if (v26 == 2)
    {
      *&v61 = 0;
      *(&v61 + 1) = *&v66.i32[1];
      v100[0] = COERCE_UNSIGNED_INT64(*v66.i32);
      v100[1] = v61;
      v100[2] = vcvtq_f64_f32(v46);
      (*(*(a5 & 0xFFFFFFFFFFFFFFFCLL) + 120))(a5 & 0xFFFFFFFFFFFFFFFCLL, v67, a3, &v98, a4, a6, v100, &v86, v68, a15, v69);
      return;
    }

    v60 = 0;
  }

  else if (v26)
  {
    RB::operator*=(&v88, v28, v48, v59, v58, *&v57, v44, v56, *&v55, v32);
    v60 = 4;
  }

  else
  {
    v60 = 1;
  }

  RB::Heap::Heap(v85, 0, 0, 0);
  v78 = v88;
  v79 = v89;
  v80 = v90;
  v76 = a4;
  v77[0] = v86;
  v77[1] = v87;
  v77[2] = 0;
  v77[3] = 0;
  v81 = 0x3C003C003C003C00;
  v83 = 0;
  v84 = v60 & 0xF0FF | ((a6 & 0xF) << 8) | (a17 << 12);
  __asm { FCVT            H0, S9 }

  v82 = _H0;
  HIWORD(v82) = *(a1 + 88);
  v73[0] = xmmword_195E42760;
  v73[1] = xmmword_195E42770;
  v74 = 0;
  v75 = 0;
  RB::Fill::set_image(&v101, a3, a4, v73, v77, a15);
  v102 &= ~0x1000u;
  RB::render_primitive(a3, v73, &v91, v100, v77, v69, a8);
  a3[30].i32[0] = 0;
  a3[30].i8[4] = 0;
  RB::Heap::~Heap(v85);
}

void RB::DisplayList::LayerTask::render(uint64_t a1, uint64_t a2, int32x2_t *a3, uint64_t a4, int a5, unsigned int a6, int32x2_t a7, __n128 a8, int32x2_t a9, __n128 a10, __n128 a11)
{
  v11 = *(a1 + 64);
  if (v11 && *(v11 + 16))
  {
    v13 = a10.n128_f32[0];
    v16 = a8.n128_u64[0];
    a11.n128_u64[0] = a7;
    a7.i32[0] = 0;
    v20 = *(*(a1 + 96) + 64);
    a10.n128_f32[0] = 1.0 / v20;
    if (v20 == 0.0)
    {
      a10.n128_f32[0] = 1.0;
    }

    a8.n128_u64[0] = vceq_s32(a9, 0x8000000080000000);
    a8.n128_u64[0] = vpmin_u32(a8.n128_u64[0], a8.n128_u64[0]);
    v37 = a10;
    v38 = a8;
    v21 = vdup_lane_s32(vcgt_s32(a7, a8.n128_u64[0]), 0);
    v22 = vbsl_s8(v21, vneg_f32(0x80000000800000), vcvt_f32_s32(a9));
    v23 = vmul_n_f32(vbsl_s8(v21, 0x100000001000000, vcvt_f32_s32(v16)), a10.n128_f32[0]);
    v40 = *&v23;
    v41 = vmul_n_f32(v22, a10.n128_f32[0]);
    v23.f32[0] = a11.n128_i32[0];
    v39 = a11;
    RB::Rect::translate(&v40, v23, a11.n128_i32[1]);
    v24.i64[0] = *(a1 + 104);
    v25 = vsub_s32(vadd_s32(*(a1 + 32), v16), *v24.i8);
    v26 = *(a1 + 96);
    v27 = *(v26 + 76);
    v28 = (v27 >> 8) & 2;
    _Q0.n128_u64[1] = v37.n128_u64[1];
    if (v37.n128_f32[0] == 1.0)
    {
      v30 = 0;
    }

    else
    {
      v30 = 7;
    }

    v31 = *(*(a1 + 64) + 16);
    _Q0.n128_u64[0] = 0;
    if ((v27 & 0x40) != 0)
    {
      _Q0.n128_u16[0] = RB::DisplayList::Layer::color_info(*(a1 + 96), _Q0) >> 32;
      __asm { FCVT            S0, H0 }
    }

    v24.i32[0] = 0;
    v36.i64[1] = v38.n128_i64[1];
    *v24.i8 = vbsl_s8(vdup_lane_s32(vcgt_s32(*v24.i8, v38.n128_u64[0]), 0), 0x100000001000000, vcvt_f32_s32(v25));
    *v36.i8 = v22;
    RB::DisplayList::Layer::blit(v26, a2, a3, v31, a4, v30, a5, a6, _Q0.n128_f32[0], v24, v36, v40, v41, v39, v13, *(a1 + 224) & 1, v28);
  }
}

double _ZN2RB4Heap7emplaceINS_11DisplayList11RenderState13PackedTextureEJRK14MTLPixelFormatRKNS_10ColorSpaceERDv2_iEEEPT_DpOT0_(RB::Heap *this, uint64_t *a2, char *a3, double *a4)
{
  v8 = *(this + 3);
  v9 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v9 + 56 > v8)
  {
    v9 = RB::Heap::alloc_slow(this, 0x38uLL, 7);
  }

  else
  {
    *(this + 2) = v9 + 56;
  }

  v10 = *a2;
  v11 = *a3;
  result = *a4;
  *(v9 + 8) = 1;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *v9 = &unk_1F0A3F588;
  *(v9 + 32) = v10;
  *(v9 + 40) = v11;
  *(v9 + 48) = result;
  return result;
}

uint64_t _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage9PrimitiveENS_4Fill5ColorEEEJRS0_RKS5_RKS7_RPKNS_15AffineTransformERKDF16_NS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(RB::Heap *this, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t *a5, __int16 *a6, _WORD *a7)
{
  v13 = *(this + 3);
  result = (*(this + 2) + 15) & 0xFFFFFFFFFFFFFFF0;
  if (result + 128 > v13)
  {
    result = RB::Heap::alloc_slow(this, 0x80uLL, 15);
  }

  else
  {
    *(this + 2) = result + 128;
  }

  v15 = *a5;
  v16 = *a6;
  v17 = *a7;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 40) = 0;
  *(result + 32) = 0;
  *(result + 44) = v16;
  *(result + 46) = v17 & 0x3F;
  *result = &unk_1F0A3A760;
  *(result + 48) = v15;
  v18 = *a3;
  v19 = a3[1];
  *(result + 95) = *(a3 + 31);
  *(result + 64) = v18;
  *(result + 80) = v19;
  *(result + 112) = *a4;
  *(result + 120) = *(a4 + 8);
  if (*(a4 + 13))
  {
    v20 = *(a4 + 12);
  }

  else
  {
    v20 = 0;
  }

  *(result + 124) = v20;
  *result = &unk_1F0A3BE28;
  return result;
}

__n128 RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::Color>::copy(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v6 = *(a1 + 46) & 0x3F;
  v4 = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage9PrimitiveENS_4Fill5ColorEEEJRS0_RKS5_RKS7_RPKNS_15AffineTransformERKDF16_NS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_((v3 + 16), v3 + 16, (a1 + 64), a1 + 112, (a1 + 48), (a1 + 44), &v6);
  result = *(a1 + 16);
  v4[1] = result;
  v4[2].n128_u64[0] = *(a1 + 32);
  v4[2].n128_u32[2] = *(a1 + 40);
  v4[2].n128_u16[7] |= *(a1 + 46) & 0x7000;
  return result;
}

float64x2_t *RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Color>::apply_transform(float64x2_t **a1, const RB::DisplayList::CachedTransform *a2, uint64_t a3)
{
  RB::DisplayList::Item::apply_transform(a1, a2, a3);
  result = RB::DisplayList::CachedTransform::transform_ctm(a2, a1[6]);
  a1[6] = result;
  return result;
}

uint64_t RB::Device::depth_stencil_state(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1 + (a2 << 6) + 8 * a3;
  v4 = *(v3 + 632);
  if (v4)
  {
    return v4;
  }

  v8 = a3;
  v9 = objc_opt_new();
  v11 = *(v10 + 1);
  v13 = *(v10 + 6);
  v12 = *(v10 + 7);
  [v9 setStencilCompareFunction:*v10];
  [v9 setStencilFailureOperation:0];
  [v9 setDepthFailureOperation:0];
  [v9 setDepthStencilPassOperation:v11];
  [v9 setReadMask:v13];
  [v9 setWriteMask:v12];
  v14 = objc_opt_new();
  [v14 setFrontFaceStencil:v9];
  [v14 setBackFaceStencil:v9];
  switch(a2)
  {
    case 0:
      v16 = 7;
      goto LABEL_8;
    case 1:
      v16 = 6;
LABEL_8:
      [v14 setDepthCompareFunction:v16];
      v15 = 0;
      goto LABEL_9;
    case 2:
      [v14 setDepthCompareFunction:6];
      v15 = 1;
LABEL_9:
      [v14 setDepthWriteEnabled:v15];
      break;
  }

  v4 = [*(a1 + 24) newDepthStencilStateWithDescriptor:v14];

  *(v3 + 632) = v4;
  if (!v4)
  {
    RB::precondition_failure("unable to allocate depth-stencil state: %d, %d", v17, a2, a3);
  }

  return v4;
}

uint64_t RB::Coverage::Primitive::set_globals(float32x4_t *a1, uint64_t a2, uint64_t a3, _OWORD *a4, unsigned int a5, int *a6, uint64_t a7, uint64_t a8)
{
  if ((a1[2].i8[14] & 2) != 0 || a1[2].u8[13] > 1u)
  {
    may_discard_alpha = RB::may_discard_alpha(a5);
  }

  else
  {
    may_discard_alpha = RB::may_discard_shape(a5);
  }

  v20 = may_discard_alpha;
  v21 = 0;
  *a6 = a1[2].u8[12];
  *(a2 + 68) = *(a3 + 120);
  *(a2 + 80) = COERCE_UNSIGNED_INT(1.0);
  *(a2 + 72) = 0;
  v23 = *a4;
  _Q0 = *(a4 + 1);
  v24 = *(a4 + 2);
  v25 = a1[2].u8[12];
  v26 = vmulq_n_f64(v23, a1[2].f32[0]);
  v150 = v26;
  v151 = _Q0;
  v152 = v24;
  if (a1[2].f32[2] > 0.0)
  {
    v21 = (a1[2].i8[14] & 4) != 0 || a1[2].u8[13] > 1u;
  }

  v18.i64[0] = a1->i64[0];
  v17.i64[0] = a1->i64[1];
  v27 = a1[2].f32[1];
  v28 = a1[1];
  v29 = vabsq_f64(v26);
  v29.f64[0] = vpmaxq_f64(v29);
  v30 = vabsq_f64(_Q0);
  v30.f64[0] = vpmaxq_f64(v30);
  if (v29.f64[0] < v30.f64[0])
  {
    v29.f64[0] = v30.f64[0];
  }

  *&v16 = v29.f64[0];
  if ((v25 - 6) < 3)
  {
    v24 = vmlaq_n_f64(vmlaq_n_f64(v24, v26, *v18.i32), _Q0, *&v18.i32[1]);
    v151 = _Q0;
    v152 = v24;
    *&_Q0.f64[0] = vmul_f32(*v17.i8, *v17.i8);
    *v19.i32 = sqrtf(vaddv_f32(*&_Q0.f64[0]));
    if (*v19.i32 > 0.00001)
    {
      v31 = vrecpe_f32(v19.u32[0]);
      v32 = vmul_f32(vrecps_f32(v19.u32[0], v31), v31);
      v33 = vmul_n_f32(*v17.i8, vmul_f32(v32, vrecps_f32(v19.u32[0], v32)).f32[0]);
      v32.i32[0] = v33.i32[1];
      v34 = *&v33.i32[1];
      v35 = vdup_lane_s32(v33, 0);
      v35.f32[0] = -v32.f32[0];
      v36 = vcvtq_f64_f32(v35);
      *&v37.f64[0] = vdupq_laneq_s64(v36, 1).u64[0];
      v37.f64[1] = v34;
      v154 = v37;
      v155 = v36;
      v156[0] = 0uLL;
      v140 = v28;
      v143 = v16;
      v147 = v19;
      _Q0.f64[0] = RB::operator*(&v154, &v150);
      v19 = v147;
      v28 = v140;
      v16 = v143;
      v150 = _Q0;
      v151 = v24;
      v152 = v38;
      if (a1[2].i8[12] == 7)
      {
        v25 = 3;
      }

      else
      {
        v25 = 2;
      }

      goto LABEL_22;
    }

    if (v25 == 7)
    {
      v25 = 3;
LABEL_22:
      HIDWORD(_Q0.f64[0]) = 0;
      v40 = vrecpe_f32(v16);
      *&v30.f64[0] = vmul_f32(vrecps_f32(v16, v40), v40);
      *&v29.f64[0] = vmul_f32(*&v30.f64[0], vrecps_f32(v16, *&v30.f64[0]));
      v24.f32[0] = 0.5 * *v29.f64;
      if ((0.5 * *v29.f64) <= (v27 * 0.5))
      {
        v24.f32[0] = v27 * 0.5;
      }

      _S2 = 1.0;
      if ((0.5 * *v29.f64) > (v27 * 0.5))
      {
        _S2 = v27 * *&v16;
      }

      __asm { FCVT            H2, S2 }

      *(a2 + 80) = _H2;
      v18.i32[0] = 0;
      *&v18.i32[1] = -v24.f32[0];
      *&v19.i32[1] = v24.f32[0] + v24.f32[0];
      v47 = a1[2].u8[12];
      if (v47 != 6)
      {
        *&v29.f64[0] = vcgt_f32(vneg_f32(0x80000000800000), *v19.i8);
        *&v30.f64[0] = vsub_f32(*v18.i8, v24.u32[0]);
        v29 = vcltzq_s32(v29);
        v18 = vbslq_s8(v29, v30, v18);
        *_Q0.f64 = v24.f32[0] + v24.f32[0];
        *&_Q0.f64[0] = vadd_f32(*v19.i8, *&_Q0.f64[0]);
        v19.i64[0] = vbslq_s8(v29, _Q0, v19).u64[0];
        if (v47 == 7)
        {
          v28 = vdupq_lane_s32(*v24.f32, 0);
        }
      }

      *a6 = v25;
      v27 = 0.0;
      v17.i64[0] = v19.i64[0];
LABEL_30:
      v48 = v27 > 0.0 || v21;
      v144 = v16;
      v146 = v18;
      v148 = v17;
      if (v25 != 2 || ((v20 ^ 1) & 1) != 0 || (v48 & 1) != 0)
      {
        if ((v25 - 2) > 2)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v141 = v28;
        *&v154.f64[0] = RB::operator*(&v150, *v18.i8, *v17.i8);
        v154.f64[1] = v49;
        if (a1[2].i8[13] == 1 || ((v24.i64[1] = *&v150.f64[1], _Q0 = v151, v150.f64[1] == 0.0) && v151.f64[0] == 0.0 || v150.f64[0] == 0.0 && (HIDWORD(_Q0.f64[0]) = HIDWORD(v151.f64[1]), v151.f64[1] == 0.0)) && ((LODWORD(_Q0.f64[0]) = 1000593162, (RB::Rect::is_integral(&v154, *&_Q0.f64[0]) & 1) != 0) || (v50.i32[0] = 0, v51 = *(a3 + 176), v52 = vceq_s32(v51, 0x8000000080000000), v53 = vdup_lane_s32(vcgt_s32(v50, vpmin_u32(v52, v52)), 0), RB::Rect::contains(&v154, vbsl_s8(v53, 0x100000001000000, vcvt_f32_s32(*(a3 + 168))), vbsl_s8(v53, vneg_f32(0x80000000800000), vcvt_f32_s32(v51))))))
        {
          v39 = 1;
          *a6 = 1;
          v54 = **(*a3 + 16);
          *a7 = *(v54 + 136);
          *(a7 + 8) = *(v54 + 144);
          *(a7 + 16) = 8;
          RB::Bounds::Bounds(&v153, *&v154.f64[0], *&v154.f64[1], v55, v56);
          *a8 = v153;
          return v39;
        }

        LODWORD(v16) = v144;
        v18 = v146;
        v17 = v148;
        v28 = v141;
      }

      if (!((a1[2].i8[13] == 1) | v48 & 1))
      {
        v73 = vmulq_n_f64(v150, *v17.i32);
        v74 = vmulq_n_f64(v151, *&v17.i32[1]);
        v24 = vmulq_f64(v74, v74);
        _Q0 = vpaddq_f64(v24, vmulq_f64(v73, v73));
        if (_Q0.f64[0] >= _Q0.f64[1])
        {
          _Q0.f64[0] = _Q0.f64[1];
        }

        if (_Q0.f64[0] < 6.25)
        {
          *a6 = 11;
          *(a2 + 24) = vmul_f32(*v17.i8, 0x3F0000003F000000);
          HIDWORD(_Q0.f64[0]) = 0;
          _Q0.f64[1] = 0.0;
          *(a2 + 32) = 0u;
          *(a2 + 48) = 0u;
          goto LABEL_79;
        }
      }

LABEL_63:
      *&_Q0.f64[0] = vmul_f32(*v17.i8, 0x3F0000003F000000);
      v75 = 0uLL;
      *(a2 + 32) = 0u;
      v76 = (a2 + 32);
      *(a2 + 24) = _Q0.f64[0];
      *(a2 + 48) = 0u;
      if (v25 <= 0xBu)
      {
        if (((1 << v25) & 0x38) != 0)
        {
          v75 = vmaxnmq_f32(v28, 0);
          v24 = vdupq_n_s32(0x3C23D70Au);
          if ((vminvq_u32(vcgtq_f32(v24, v75)) & 0x80000000) == 0 || v21)
          {
            *v76 = v75;
            v24 = vcgtq_f32(v24, vabdq_f32(v75, vdupq_lane_s32(*v75.f32, 0)));
            if ((vminvq_u32(v24) & 0x80000000) != 0)
            {
              if (v25 != 4)
              {
                goto LABEL_85;
              }

              v81.f32[0] = a1[2].f32[0] * (v75.f32[0] * 0.78431);
              v81.f32[1] = v75.f32[0] * 0.78431;
              *v29.f64 = v75.f32[0] * 0.41464;
              *&v29.f64[0] = vdiv_f32(vsub_f32(*&_Q0.f64[0], v81), vdup_lane_s32(*&v29.f64[0], 0));
              __asm { FMOV            V2.2S, #1.0 }

              v83 = vand_s8(vcgt_f32(*&v29.f64[0], vdup_n_s32(0xB8D1B717)), vcgt_f32(_D2, *&v29.f64[0]));
              *&v30.f64[0] = vpmax_u32(v83, v83);
              if ((LODWORD(v30.f64[0]) & 0x80000000) != 0)
              {
                v92 = vmaxnm_f32(*&v29.f64[0], 0);
                *a6 = 10;
                v93 = *v76;
                v93.f32[1] = v75.f32[0] * 0.78431;
                *&_Q0.f64[0] = vrev64_s32(vsub_f32(_D2, vminnm_f32(v92, _D2)));
                v93.i64[1] = *&_Q0.f64[0];
                *v76 = v93;
                if (v21)
                {
                  goto LABEL_89;
                }
              }

              else
              {
LABEL_85:
                *&_Q0.f64[0] = vsub_f32(*&_Q0.f64[0], vdup_lane_s32(*v75.f32, 0));
                *(a2 + 24) = _Q0.f64[0];
                if (v21)
                {
                  goto LABEL_89;
                }
              }
            }

            else
            {
              *_Q0.f64 = fminf(*v17.i32, *&v17.i32[1]) * 0.5;
              _Q0 = vcgtq_f32(v75, vdupq_lane_s32(*&_Q0.f64[0], 0));
              v77 = vmaxvq_u32(_Q0);
              if (v25 == 4)
              {
                v78 = 7;
              }

              else
              {
                v78 = 6;
              }

              if (v25 == 4)
              {
                v79 = 9;
              }

              else
              {
                v79 = 8;
              }

              if (v77 >= 0)
              {
                v80 = v78;
              }

              else
              {
                v80 = v79;
              }

              *a6 = v80;
              if (v21)
              {
                goto LABEL_89;
              }
            }
          }

          else
          {
            *a6 = 2;
            v75 = 0uLL;
            if (v21)
            {
              goto LABEL_89;
            }
          }

          goto LABEL_104;
        }

        if (((1 << v25) & 0x804) != 0)
        {
LABEL_79:
          v75 = 0uLL;
          if (v21)
          {
            *a6 = 3;
LABEL_89:
            LODWORD(_Q0.f64[0]) = a1[2].i32[2];
            v84 = vrecpe_f32(*&_Q0.f64[0]);
            v85 = vmul_f32(vrecps_f32(*&_Q0.f64[0], v84), v84);
            LODWORD(_Q0.f64[0]) = vmul_f32(v85, vrecps_f32(*&_Q0.f64[0], v85)).u32[0];
            if ((a1[2].i8[14] & 4) != 0)
            {
              *_Q0.f64 = *_Q0.f64 * 0.16956;
              v87 = 0;
            }

            else
            {
              v86 = a1[2].u8[13];
              if (v86 == 4)
              {
                *_Q0.f64 = *_Q0.f64 * 0.5;
                v87 = COERCE_UNSIGNED_INT(0.5);
              }

              else
              {
                v87 = 0;
                if (v86 == 2)
                {
                  *_Q0.f64 = -*_Q0.f64;
                }
              }
            }

            __asm { FCVT            H0, S0 }

            HIWORD(_S0) = v87;
            *(a2 + 76) = _S0;
            v136 = v75;
            if ((a1[2].i8[14] & 4) == 0)
            {
              v89 = a1[2].u8[13];
              v90 = 0.0;
              if (v89 <= 2)
              {
                v91 = a1[2].f32[2];
              }

              else
              {
                v91 = 0.0;
              }

              if (v89 > 2)
              {
                v90 = a1[2].f32[2];
              }

LABEL_106:
              v96 = v27 * 0.5;
              if (v27 > 0.0)
              {
                v90 = v90 + (v27 * 0.5);
              }

              if ((LODWORD(v90) & 0x7FFFFFFFu) >= 0x7F800000)
              {
                *v30.f64 = 0.0;
              }

              else
              {
                *v30.f64 = v90;
              }

              if ((LODWORD(v91) & 0x7FFFFFFFu) >= 0x7F800000)
              {
                v97 = 0.0;
              }

              else
              {
                v97 = v91;
              }

              if (v27 > 0.0)
              {
                if (a1[2].i8[13] == 1)
                {
                  *(a2 + 72) = v96;
                }

                else
                {
                  v98 = vrecpe_f32(v16);
                  v99 = vmul_f32(vrecps_f32(v16, v98), v98);
                  v100 = 0.5 * vmul_f32(v99, vrecps_f32(v16, v99)).f32[0];
                  v101 = v100 > v96;
                  if (v100 > v96)
                  {
                    v96 = v100;
                  }

                  _S1 = 1.0;
                  if (v101)
                  {
                    _S1 = v27 * *&v16;
                  }

                  *(a2 + 72) = v96;
                  __asm { FCVT            H0, S1 }

                  *(a2 + 80) = _H0;
                }
              }

              v104 = vneg_f32(0x80000000800000);
              *&_Q0.f64[0] = vcgt_f32(v104, *v17.i8);
              *v24.f32 = vsub_f32(*v18.i8, vdup_lane_s32(*&v30.f64[0], 0));
              v105 = vcltzq_s32(_Q0);
              v106 = vbslq_s8(v105, v24, v18);
              v139 = *&v30.f64[0];
              v142 = v105;
              *v24.f32 = vmla_n_f32(*v17.i8, 0x4000000040000000, *v30.f64);
              v137 = vbslq_s8(v105, v24, v17).u64[0];
              v138 = v106;
              v107 = RB::operator*(&v150, *v106.i8, v137);
              RB::Bounds::Bounds(&v149, v107, v108, v109, v110);
              if (v20 && ((a1[2].i8[14] & 1) == 0 || (RB::Bounds::contains(&v149, *(a3 + 168), *(a3 + 176)) & 1) != 0))
              {
                v112.i32[1] = HIDWORD(v144);
                if ((vmuls_lane_f32(*&v144, *v148.i8, 1) * *v148.i32) > 4096.0)
                {
                  v113 = vdupq_lane_s32(COERCE_UNSIGNED_INT(*v139.i32 + v97), 0);
                  v114 = vaddq_f32(vmaxnmq_f32(vmulq_f32(vsubq_f32(v136, vdupq_lane_s32(*(a2 + 72), 0)), vdupq_n_s32(0x3E95F61Au)), 0), v113);
                  v113.f32[0] = fminf(*v148.i32, *&v148.i32[1]) * 0.5;
                  if ((vminvq_u32(vcgtq_f32(vdupq_lane_s32(*v113.f32, 0), v114)) & 0x80000000) != 0)
                  {
                    v134 = **(*a3 + 16);
                    *a7 = *(v134 + 160);
                    *(a7 + 8) = *(v134 + 168);
                    if (v27 <= 0.0 && (a1[2].i8[14] & 1) == 0)
                    {
                      *(a7 + 24) = *(v134 + 184);
                      *(a7 + 32) = *(v134 + 192);
                    }

                    *v112.i32 = *&v148.i32[1] + (*v139.i32 * 2.0);
                    __asm { FMOV            V2.4S, #1.0 }

                    *(a2 + 48) = vmulq_f32(vaddq_f32(v114, vdupq_lane_s32(v139, 0)), vdivq_f32(_Q2, vdupq_lane_s32(v112, 0)));
                    *a8 = v149;
                    return 1;
                  }
                }

                *a8 = v149;
              }

              else
              {
                v111.i32[0] = 0;
                v145 = *a6;
                v115 = *(a3 + 176);
                v116 = vceq_s32(v115, 0x8000000080000000);
                v117 = vdup_lane_s32(vcgt_s32(v111, vpmin_u32(v116, v116)), 0);
                v118 = vbsl_s8(v117, 0x100000001000000, vcvt_f32_s32(*(a3 + 168)));
                v119 = vbsl_s8(v117, v104, vcvt_f32_s32(v115));
                v154 = v150;
                v155 = v151;
                v156[0] = v152;
                v120 = RB::AffineTransform::invert(&v154);
                if (v120)
                {
                  v121 = &v154;
                }

                else
                {
                  v121 = &v150;
                }

                v122 = *v121;
                if (v120)
                {
                  v123 = &v155;
                }

                else
                {
                  v123 = &v151;
                }

                v124 = *v123;
                if (v120)
                {
                  v125 = v156;
                }

                else
                {
                  v125 = &v152;
                }

                v126 = *v125;
                v154 = v122;
                v155 = v124;
                v156[0] = v126;
                *&v153 = RB::operator*(&v154, v118, v119);
                *(&v153 + 1) = v127;
                RB::Rect::Union(&v153, *v146.i64, *v148.i8);
                *v128.i32 = fmaxf(*(&v153 + 2), *(&v153 + 3));
                v129.i64[1] = v146.i64[1];
                *v130.i8 = vsub_f32(*v146.f32, vdup_lane_s32(v128, 0));
                *v129.i8 = vmla_n_f32(*v148.i8, 0x4000000040000000, *v128.i32);
                v131 = *(a3 + 176);
                *a8 = *(a3 + 168);
                *(a8 + 8) = v131;
              }

              v132 = **(*a3 + 16);
              *a7 = *(v132 + 136);
              *(a7 + 8) = *(v132 + 144);
              *(a7 + 16) = 8;
              return 1;
            }

            v90 = (a1[2].f32[2] * 2.8) + 1.0;
LABEL_105:
            v91 = 0.0;
            goto LABEL_106;
          }

LABEL_104:
          v136 = v75;
          v94 = vrecpe_f32(v16);
          v95 = vmul_f32(vrecps_f32(v16, v94), v94);
          LODWORD(v90) = vmul_f32(v95, vrecps_f32(v16, v95)).u32[0];
          goto LABEL_105;
        }

        if (((1 << v25) & 0x7C0) != 0)
        {
          abort();
        }
      }

      if (v21)
      {
        goto LABEL_89;
      }

      goto LABEL_104;
    }

    *a6 = 0;
    if ((may_discard_alpha & 1) == 0)
    {
      goto LABEL_47;
    }

    return 0;
  }

  if (v25 != 1)
  {
    if (v25)
    {
      goto LABEL_30;
    }

    if (may_discard_alpha)
    {
      return 0;
    }
  }

LABEL_47:
  LODWORD(_Q0.f64[0]) = 0;
  v57 = *(a3 + 176);
  v58 = vceq_s32(v57, 0x8000000080000000);
  v59 = vdup_lane_s32(vcgt_s32(*&_Q0.f64[0], vpmin_u32(v58, v58)), 0);
  v60 = vbsl_s8(v59, 0x100000001000000, vcvt_f32_s32(*(a3 + 168)));
  v61 = vbsl_s8(v59, vneg_f32(0x80000000800000), vcvt_f32_s32(v57));
  v154 = v150;
  v155 = v151;
  v156[0] = v152;
  v62 = RB::AffineTransform::invert(&v154);
  if (v62)
  {
    v63 = &v154;
  }

  else
  {
    v63 = &v150;
  }

  v64 = *v63;
  if (v62)
  {
    v65 = &v155;
  }

  else
  {
    v65 = &v151;
  }

  v66 = *v65;
  if (v62)
  {
    v67 = v156;
  }

  else
  {
    v67 = &v152;
  }

  v68 = *v67;
  v154 = v64;
  v155 = v66;
  v156[0] = v68;
  *v69.f32 = RB::operator*(&v154, v60, v61);
  v39 = 1;
  v71 = **(*a3 + 16);
  *a7 = *(v71 + 136);
  *(a7 + 8) = *(v71 + 144);
  *(a7 + 16) = 8;
  v72 = *(a3 + 176);
  *a8 = *(a3 + 168);
  *(a8 + 8) = v72;
  return v39;
}

double RB::BinPacker::BinPacker(RB::BinPacker *this, int a2, int a3)
{
  v5 = RB::Heap::Heap(this, this + 40, 1024, 0);
  *(v5 + 266) = (a2 + 255) & 0xFFFFFF00;
  *(v5 + 267) = (a3 + 255) & 0xFFFFFF00;
  *(v5 + 268) = 0;
  result = 0.0;
  *(v5 + 1080) = 0u;
  *(v5 + 1096) = 0;
  return result;
}

void RB::BinPacker::pack(RB::BinPacker *this)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = *(this + 135);
  if (v1)
  {
    v3 = (this + 1080);
    v4 = (this + 1080);
    do
    {
      while (*v1 > *(this + 266) || *(v1 + 4) > *(this + 267))
      {
        RB::BinPacker::append_bin(this, *(v1 + 8));
        **(this + 136) = *v1;
        RB::BinPacker::append_packed(this, v1, 0, 0);
        v1 = *(v1 + 24);
        *v4 = v1;
        if (!v1)
        {
          goto LABEL_8;
        }
      }

      v4 = (v1 + 24);
      v1 = *(v1 + 24);
    }

    while (v1);
LABEL_8:
    v5 = *v3;
    if (*v3)
    {
      if (*(this + 1096))
      {
        v6 = 0;
        v7 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 8;
        do
        {
          v8 = 0;
          if (v7)
          {
            if (v6)
            {
              v9 = v6;
            }

            else
            {
              v9 = v21;
            }

            while (1)
            {
              v10 = *v9;
              v9 += 2;
              if (v10 == *(v5 + 8))
              {
                break;
              }

              if (v7 == ++v8)
              {
                v8 = v7;
                goto LABEL_19;
              }
            }
          }

          if (v8 == v7)
          {
LABEL_19:
            v11 = *(v5 + 8);
            if (v24 < v7 + 1)
            {
              RB::vector<std::pair<unsigned long,RB::BinPacker::item *>,8ul,unsigned long>::reserve_slow(v21, v7 + 1);
              v6 = v22;
              v7 = v23;
            }

            if (v6)
            {
              v12 = v6;
            }

            else
            {
              v12 = v21;
            }

            v13 = &v12[2 * v7];
            *v13 = v11;
            v13[1] = 0;
            v6 = v22;
            v7 = ++v23;
          }

          v14 = *(v5 + 24);
          *v3 = v14;
          if (v6)
          {
            v15 = v6;
          }

          else
          {
            v15 = v21;
          }

          v16 = &v15[2 * v8];
          *(v5 + 24) = v16[1];
          v16[1] = v5;
          v5 = v14;
        }

        while (v14);
        if (v7)
        {
          v18 = 16 * v7;
          v19 = v15 + 1;
          do
          {
            v20 = *v19;
            v19 += 2;
            RB::BinPacker::pack(this, v20);
            v18 -= 16;
          }

          while (v18);
          v6 = v22;
        }

        if (v6)
        {
          free(v6);
        }
      }

      else
      {
        v17 = *v3;

        RB::BinPacker::pack(this, v17);
      }
    }
  }
}

void RB::Texture::alloc(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, int a4@<W4>, int a5@<W5>, void *a6@<X8>, __n128 a7@<Q0>)
{
  v12 = *MEMORY[0x1E69E9840];
  RB::Texture::make_descriptor(a1, a2, a3, a4, a5, &v11, a7);
  v9 = v11;
  if (v11 && [*(a1 + 24) newTextureWithDescriptor:{v11, *&a7}])
  {
    operator new();
  }

  *a6 = 0;
}

void RB::RenderPass::set_label(id *this, NSString *a2)
{
  v3 = a2;

  this[33] = v3;
}

uint64_t RB::RenderFrame::texture_id(RB::RenderFrame *this, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  RB::Resource::set_frame_id(a2, *(this + 24), *(this + 25));
  v4 = *(a2 + 40);
  if (!v4)
  {
    v4 = *(*(this + 15) + 8);
    v5 = *(a2 + 48);
    v6 = *(this + 15);
    v7 = v6[1];
    if (v7 >= v6[2])
    {
      v6 = RB::shared_vector<RB::refcounted_ptr<RB::Buffer>>::realloc_buffer(this + 15, v6);
    }

    v6[v7 + 3] = (v5 == 0) | a2;
    if (!v5)
    {
      ++*(a2 + 8);
    }

    atomic_store(v7 + 1, v6 + 1);
    *(a2 + 40) = v4;
    if ((*(a2 + 77) & 0x10) != 0)
    {
      v8 = [*(a2 + 16) iosurface];
      if (v8)
      {
        v9 = v8;
        v10 = *(this + 18);
        if (!v10)
        {
          operator new();
        }

        v11 = CFRetain(v8);
        v12 = v10[9];
        v13 = v12 + 1;
        if (v10[10] < (v12 + 1))
        {
          v16 = v11;
          RB::vector<RBDevice *,8ul,unsigned long>::reserve_slow(v10, v13);
          v11 = v16;
          v12 = v10[9];
          v13 = v12 + 1;
        }

        v14 = v10[8];
        if (!v14)
        {
          v14 = v10;
        }

        v14[v12] = v11;
        v10[9] = v13;
        IOSurfaceIncrementUseCount(v9);
      }
    }

    *(this + 7) += *(a2 + 72);
  }

  return v4;
}

int32x2_t *RBGetCachedImageTexture(uint64_t a1, uint64_t a2, uint64_t a3, float64x2_t *a4, char a5)
{
  v9 = **(a1 + 16);
  Identifier = CGImageGetIdentifier();
  v16 = 0;
  v17 = 0;
  result = RB::UntypedTable::lookup((v9 + 848), &Identifier, 0);
  if (result)
  {
    v11 = result;
    entry = RB::TextureCache::find_entry(v11, &v14);
    if ((entry & 0x80000000) != 0)
    {
      return 0;
    }

    else
    {
      v13 = v11 + 48;
      if (*(v11 + 64))
      {
        v13 = *(v11 + 64);
      }

      return *(v13 + 16 * entry + 8);
    }
  }

  return result;
}

uint64_t RB::Fill::set_image(uint64_t a1, uint64_t a2, unint64_t *a3, float64x2_t *a4, uint64_t a5, float a6)
{
  _S8 = a6;
  v9 = a3;
  v12 = *(a5 + 82);
  if (v12 == 4 && *(a5 + 40) == 0.0 && *(a5 + 52) == 0.0)
  {
    if (*(a5 + 64) == 1.0)
    {
      v12 = 1;
    }

    else
    {
      v12 = 4;
    }
  }

  if (a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 == 4)
  {
    RB::operator*((a5 + 32), a4, v96);
    RB::ProjectionMatrix::invert(v96);
    v14 = *(a2 + 104);
    v15.i64[0] = v14;
    v15.i64[1] = SHIDWORD(v14);
    __asm { FMOV            V1.2D, #0.5 }

    v19 = vmulq_f64(vcvtq_f64_s64(v15), _Q1);
    v20 = vnegq_f64(v19);
    *&v85[16] = v19;
    v20.f64[0] = 0.0;
    v84 = *&v19.f64[0];
    *v85 = v20;
    RB::operator*(&v84, v96, &v98);
    _Q0.i64[1] = *(&v99 + 1);
    *v96 = v98;
    *&v96[16] = v99;
    LODWORD(v97.f64[0]) = v100;
    v23 = *&v96[12];
    *a1 = v98;
    *(a1 + 8) = v23;
    LODWORD(v23) = *&v96[20];
    *(a1 + 48) = *&v96[8];
    *(a1 + 52) = v23;
    *(a1 + 16) = *&v96[24];
    *(a1 + 56) = LODWORD(v97.f64[0]);
LABEL_12:
    v24 = 0;
    *(a1 + 32) = *a5;
    _Q1.f64[0] = *(a5 + 8);
    *_Q0.f32 = vadd_f32(*&_Q1.f64[0], *a5);
LABEL_13:
    v26 = 40;
LABEL_29:
    *(a1 + v26) = _Q0.i64[0];
    goto LABEL_30;
  }

  v27 = vcvtq_f64_f32(*(a5 + 44));
  v28 = vcvtq_f64_f32(*(a5 + 56));
  *v96 = vcvtq_f64_f32(*(a5 + 32));
  *&v96[16] = v27;
  v97 = v28;
  v29.f64[0] = RB::operator*(v96, a4);
  v84 = v29;
  *v85 = v30;
  *&v85[16] = v31;
  RB::AffineTransform::invert(&v84);
  v32 = *(a2 + 104);
  v33.i64[0] = v32;
  v33.i64[1] = SHIDWORD(v32);
  __asm { FMOV            V1.2D, #0.5 }

  _Q0 = vmulq_f64(vcvtq_f64_s64(v33), _Q1);
  v21 = *v85;
  _Q1 = vmulq_n_f64(v84, *_Q0.i64);
  v35 = vmulq_n_f64(*v85, -*&_Q0.i64[1]);
  v36 = vmlaq_laneq_f64(vaddq_f64(_Q1, *&v85[16]), *v85, _Q0, 1);
  *_Q0.f32 = vcvt_f32_f64(_Q1);
  *&_Q1.f64[0] = vcvt_f32_f64(v35);
  *a1 = _Q0.i64[0];
  *(a1 + 8) = _Q1.f64[0];
  *(a1 + 16) = vcvt_f32_f64(v36);
  if ((v13 - 5) < 2)
  {
    *(a1 + 32) = *a5;
    v37 = *(a5 + 16);
    HIDWORD(v37) = *(a5 + 24);
    *(a1 + 40) = v37;
    __asm { FMOV            V1.2S, #1.0 }

    *(a1 + 48) = vsub_f32(*&_Q1.f64[0], vadd_f32(*a5, *(a5 + 8)));
    v38 = *(a5 + 20);
    v38.i32[1] = *(a5 + 28);
    *(a1 + 56) = vsub_f32(*(a5 + 8), v38);
    v39 = *(a5 + 16);
    v39.i32[1] = *(a5 + 24);
    v40 = *(a5 + 20);
    v40.i32[1] = *(a5 + 28);
    v41 = vadd_f32(v40, v39);
    *_Q0.f32 = vsub_f32(*&_Q1.f64[0], v41);
    v42 = vceqz_f32(*_Q0.f32);
    v43 = vpmin_u32(v42, v42).u32[0];
    v45 = v13 == 6 && v43 < 0;
    if (v13 == 5 || v45)
    {
      _Q1.f64[0] = *(a5 + 8);
      *&v35.f64[0] = vsub_f32(*&_Q1.f64[0], v41);
      v47 = vrecpe_f32(*&v35.f64[0]);
      v48 = vmul_f32(vrecps_f32(*&v35.f64[0], v47), v47);
      *&v35.f64[0] = vmul_f32(v48, vrecps_f32(*&v35.f64[0], v48));
      *&_Q1.f64[0] = vcgt_f32(vdup_n_s32(0x3727C5ACu), vabd_f32(*&_Q1.f64[0], v41));
      *&_Q1.f64[0] = vbslq_s8(vcltzq_s32(_Q1), vdupq_n_s32(0x47C35000u), v35).u64[0];
      *(a1 + 64) = vmul_f32(*&_Q1.f64[0], *_Q0.f32);
      v21.i64[0] = *(a5 + 16);
      v21.i32[1] = *(a5 + 24);
      *_Q0.f32 = vmul_f32(vmla_f32(vneg_f32(vmla_f32(*v21.i8, *a5, *_Q0.f32)), *(a5 + 8), *v21.i8), *&_Q1.f64[0]);
      v24 = 1;
      LOBYTE(v13) = 5;
    }

    else
    {
      v46 = vdupq_n_s32(0x3727C5ACu);
      *v21.i8 = vcgt_f32(*v46.i8, vabs_f32(*_Q0.f32));
      _Q0 = vbslq_s8(vcltzq_s32(v21), v46, _Q0);
      *v21.i8 = vneg_f32(*_Q0.f32);
      *(a1 + 64) = v21.i64[0];
      *_Q0.f32 = vdiv_f32(*&_Q1.f64[0], *_Q0.f32);
      v24 = 1;
      LOBYTE(v13) = 6;
    }

    v26 = 72;
    goto LABEL_29;
  }

  if (v13 == 1)
  {
    goto LABEL_12;
  }

  if (v13 == 2)
  {
    *(a1 + 32) = *a5;
    _Q0.i64[0] = *(a5 + 8);
    v24 = 1;
    goto LABEL_13;
  }

  v24 = 1;
LABEL_30:
  __asm { FCVT            H0, S8 }

  LOWORD(v84.f64[0]) = *(a5 + 68);
  *(v84.f64 + 2) = *(a5 + 70);
  LOWORD(_Q1.f64[0]) = *(a5 + 74);
  *(v84.f64 + 3) = *_Q1.f64 * *_Q0.i16;
  LODWORD(v84.f64[1]) = *(a5 + 76);
  WORD2(v84.f64[1]) = *(a5 + 80);
  _Q0.i64[0] = 0;
  RB::Fill::Color::prepare(&v84, *(a2 + 128), _Q0, _Q1.f64[0], *v21.i8);
  *(a1 + 24) = _Q0.i64[0];
  *_Q0.f32 = vmvn_s8(vceq_f16(*_Q0.f32, 0x3C003C003C003C00));
  _Q0.i16[0] = vmaxv_u16(*_Q0.f32);
  v50 = v13 & 7 | (((_Q0.i32[0] >> 15) & 1) << 10);
  *(a1 + 80) = v50;
  v51 = (*(a5 + 82) >> 1) & 0x800;
  v52 = v50 | v51;
  *(a1 + 80) = v52;
  v53 = v52 | *(a5 + 82) & 0x2000;
  *(a1 + 80) = v53;
  if (!v9)
  {
    v9 = RB::Device::invalid_texture(**(*a2 + 16));
    v55 = MTLPixelFormatA8Unorm;
    return RB::RenderPass::set_texture(a2, 0, v9, v55);
  }

  if ((v9[10] & 0x100) == 0)
  {
    if (*(a2 + 128) >= 0x10u)
    {
      v54 = v53 | 0x10;
LABEL_50:
      *(a1 + 80) = v54;
      goto LABEL_51;
    }

    goto LABEL_51;
  }

  v56 = 0.0;
  if (!v51)
  {
    _H1 = *(a5 + 78);
    __asm { FCVT            S2, H1 }

    if (*(a2 + 124) <= _S2 || _H1 == COERCE_SHORT_FLOAT(0))
    {
      v56 = *(a2 + 124);
    }

    else
    {
      v56 = _S2;
    }
  }

  _Q0.i16[0] = *(a5 + 76);
  __asm { FCVT            S0, H0 }

  RB::ColorSpace::Conversion::Conversion(&v84, *(v9 + 40), *(a2 + 128), _Q0, v56);
  v60 = LOWORD(v84.f64[0]);
  v61 = *(a1 + 80) & 0xFFFFFF8F | (16 * (LOBYTE(v84.f64[0]) & 7));
  *(a1 + 80) = v61;
  if ((v60 & 7) != 2)
  {
    if ((v60 & 0x80) == 0)
    {
      goto LABEL_44;
    }

LABEL_47:
    *&v67 = vcvt_f16_f32(v90);
    v68 = vcvt_f16_f32(v91);
    v69 = vcvt_f16_f32(v92);
    v70 = vext_s8(v68, *&v67, 2uLL).u32[0];
    WORD3(v67) = v68.i16[0];
    *(&v67 + 1) = __PAIR64__(v69.u32[0], v70);
    *(a1 + 90) = v67;
    *(a1 + 106) = v69.i16[2];
    v61 |= 0x80u;
    *(a1 + 80) = v61;
    if ((v60 & 0x40) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  _KR00_8 = *(v84.f64 + 4);
  _S2 = HIDWORD(v84.f64[1]);
  __asm { FCVT            H0, S0 }

  *(a1 + 84) = _H0;
  __asm { FCVT            H0, S1 }

  *(a1 + 86) = _H0;
  __asm { FCVT            H0, S2 }

  *(a1 + 88) = _H0;
  if ((v60 & 0x80) != 0)
  {
    goto LABEL_47;
  }

LABEL_44:
  if ((v60 & 0x40) == 0)
  {
    goto LABEL_51;
  }

LABEL_48:
  _S0 = v86;
  _S1 = v87;
  v73 = v89;
  *(a1 + 128) = v88;
  *(a1 + 136) = v73;
  *(a1 + 108) = vcvt_hight_f16_f32(vcvt_f16_f32(*&v85[12]), *&v85[28]);
  __asm { FCVT            H0, S0 }

  *(a1 + 124) = _S0;
  __asm { FCVT            H0, S1 }

  *(a1 + 126) = _S0;
  *(a1 + 80) = v61 | 0x100;
  if ((v60 & 0x100) != 0)
  {
    *&v74 = vcvt_f16_f32(v93);
    v75 = vcvt_f16_f32(v94);
    v76 = vcvt_f16_f32(v95);
    v77 = vext_s8(v75, *&v74, 2uLL).u32[0];
    WORD3(v74) = v75.i16[0];
    *(&v74 + 1) = __PAIR64__(v76.u32[0], v77);
    *(a1 + 140) = v74;
    *(a1 + 156) = v76.i16[2];
    v54 = v61 | 0x300;
    goto LABEL_50;
  }

LABEL_51:
  v78 = RB::Fill::ImageData::image_filter(a5, a4, v9[8]);
  if (v78 == 4)
  {
    *(a1 + 80) |= 8u;
  }

  else if (v78 == 3)
  {
    if (*(**(*a2 + 16) + 331) < *(RB::pixel_format_traits(v9[7], v79) + 9))
    {
      v78 = 1;
    }

    else
    {
      v78 = 3;
    }
  }

  v80 = RB::image_filter_sampler(v78);
  if (v80 == 5)
  {
    v81 = v24;
  }

  else
  {
    v81 = 1;
  }

  if (v81)
  {
    v55 = v80;
  }

  else
  {
    v82 = *(a1 + 40);
    *(a1 + 32) = vmul_f32(*(a1 + 32), vcvt_f32_s32(v9[8]));
    *(a1 + 40) = vmul_f32(v82, vcvt_f32_s32(v9[8]));
    v55 = 5;
  }

  return RB::RenderPass::set_texture(a2, 0, v9, v55);
}

unint64_t RB::pointer_hash(RB *this, const void *a2)
{
  v2 = (this + ~(this << 32)) ^ ((this + ~(this << 32)) >> 22);
  v3 = 9 * ((v2 + ~(v2 << 13)) ^ ((v2 + ~(v2 << 13)) >> 8));
  v4 = (v3 ^ (v3 >> 15)) + ~((v3 ^ (v3 >> 15)) << 27);
  return v4 ^ (v4 >> 31);
}

uint64_t RB::render_primitive(int32x2_t *a1, _OWORD *a2, float32x4_t *a3, uint64_t a4, int a5, unsigned int a6)
{
  v6 = a6;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  v39 = 0;
  v40 = 0;
  result = RB::Coverage::Primitive::set_globals(a3, v43, a1, a2, a6, &v42, v41, &v39);
  if (!result)
  {
    return result;
  }

  v12.i32[0] = a1[15].i32[1];
  RB::Fill::Color::prepare(a4, a1[16].u8[0], v12, v13, v14);
  *&v44[20] = v15;
  v16 = *(a4 + 6);
  v17 = 5;
  if (v42 != 1)
  {
    goto LABEL_26;
  }

  v18 = v6 == 24 || v6 == 2;
  LOWORD(v19) = COERCE_UNSIGNED_INT(1.0);
  if (v18 && v16 == v19)
  {
    v6 = 0;
  }

  if (v6 > 0x18)
  {
    v21 = 1;
  }

  else
  {
    v21 = a5;
  }

  if (v21)
  {
    v17 = 5;
  }

  else
  {
    v17 = 2;
  }

  if ((v21 & 1) == 0 && v16 == v19)
  {
    v17 = 2;
    if (v6 == 2 || v6 == 24)
    {
      LOBYTE(v6) = 0;
LABEL_28:
      RB::Coverage::set_plane(v38, v43);
      *(&v38[3] + 4) = *&v44[20];
      RB::RenderFrame::alloc_buffer_region(*(*a1 + 16), 0x24, 4uLL, 0, &v45);
      v29 = v45;
      if (v45)
      {
        v30 = *(v45 + 7) + v46.i64[0];
        v31 = *v38;
        v32 = *&v38[2];
        *(v30 + 32) = v38[4];
        *v30 = v31;
        *(v30 + 16) = v32;
      }

      else
      {
        v45 = 0;
        v46 = 0uLL;
      }

      a1[24].i32[0] = RB::RenderFrame::buffer_id(*(*a1 + 16), v29);
      v33 = v46;
      goto LABEL_34;
    }
  }

  if ((v21 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_26:
  RB::RenderFrame::alloc_buffer_region(*(*a1 + 16), 0x5C, 4uLL, 0, v38);
  v23 = v38[0];
  if (v38[0])
  {
    v24 = (v38[1] + *(v38[0] + 7));
    v25 = v43[0];
    v24[1] = v43[1];
    v27 = v43[3];
    v26 = *v44;
    v28 = v43[2];
    *(v24 + 76) = *&v44[12];
    v24[3] = v27;
    v24[4] = v26;
    v24[2] = v28;
    *v24 = v25;
  }

  else
  {
    memset(v38, 0, 24);
  }

  a1[24].i32[0] = RB::RenderFrame::buffer_id(*(*a1 + 16), v23);
  v33 = *&v38[1];
LABEL_34:
  *(a1 + 196) = vmovn_s64(v33);
  LODWORD(v38[0]) = v42 & 0xF;
  RB::Coverage::Primitive::set_coverage_state(a3, v38);
  v34 = a1[16].i32[1] == 2;
  if (a5)
  {
    v35 = 0x10000;
  }

  else
  {
    v35 = 0;
  }

  v36 = v17 | v35 | (v34 << 17);
  v37 = v6 & 0x3F;
  result = RB::RenderPass::draw_indexed_primitives(a1, ((v17 | v35) & 0xFFFF003F | (v34 << 17) | ((v38[0] & 0x3FF) << 6) | (v37 << 32)), 4, v41, 0, 1uLL, v39, v40);
  if (*(&v41[1] + 1))
  {
    LODWORD(v38[0]) = v38[0] & 0xFFFFFFF0 | 1;
    if (v16 == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) && (v37 == 24 || v37 == 2))
    {
      v37 = 0;
    }

    result = RB::RenderPass::draw_indexed_primitives(a1, ((LODWORD(v38[0]) << 6) & 0xFFC0 | v36 | (v37 << 32)), 4, &v41[1] + 8, 0, 1uLL, v39, v40);
  }

  a1[26] = 0;
  a1[25].i32[1] = 0;
  return result;
}

void RB::Drawable::submit_frame(os_unfair_lock_s *this, const unint64_t *a2, double a3)
{
  os_unfair_lock_lock(this + 5);
  v6 = *&this[10]._os_unfair_lock_opaque;
  if (!v6)
  {
    goto LABEL_31;
  }

  v7 = *v6;
  if (*v6)
  {
    if (!*(v6 + 2))
    {
      v6[4] = a3;
      v6[13] = a3;
      v6[22] = a3;
      v6[31] = a3;
      if ((LOBYTE(v7) & 4) != 0)
      {
        goto LABEL_10;
      }

      goto LABEL_20;
    }

    v6[4] = v6[4] + a3;
    v8 = v6[13];
    if (v8 > a3)
    {
      v8 = a3;
    }

    v6[13] = v8;
    v9 = v6[22];
    if (v9 < a3)
    {
      v9 = a3;
    }

    v6[22] = v9;
    v6[31] = a3 + (v6[31] - a3) * v6[1];
  }

  if ((LOBYTE(v7) & 4) != 0)
  {
LABEL_10:
    v10 = a2[4] * 0.00000000519565863 + a2[5] * 1.98319745e-11 + *a2 * 0.000100953793 + a2[3] * 4.31643348e-11 + a2[2] * 0.00000000753195849;
    if (*(v6 + 2))
    {
      v6[6] = v6[6] + v10;
      v11 = v6[15];
      if (v10 < v11)
      {
        v11 = v10;
      }

      v6[15] = v11;
      v12 = v6[24];
      if (v12 < v10)
      {
        v12 = v10;
      }

      v6[24] = v12;
      v10 = v10 + (v6[33] - v10) * v6[1];
    }

    else
    {
      v6[6] = v10;
      v6[15] = v10;
      v6[24] = v10;
    }

    v6[33] = v10;
  }

LABEL_20:
  v13 = *(v6 + 2);
  if ((LOBYTE(v7) & 8) != 0)
  {
    v14 = 0;
    v15 = v6 + 25;
    do
    {
      v16 = a2[v14];
      if (v13)
      {
        *(v15 - 18) = *(v15 - 18) + v16;
        v17 = *(v15 - 9);
        if (v17 > v16)
        {
          v17 = v16;
        }

        *(v15 - 9) = v17;
        v18 = *v15;
        if (*v15 < v16)
        {
          v18 = v16;
        }

        *v15 = v18;
        v16 = v16 + (v15[9] - v16) * v6[1];
      }

      else
      {
        *(v15 - 18) = v16;
        *(v15 - 9) = v16;
        *v15 = v16;
      }

      v15[9] = v16;
      ++v14;
      ++v15;
    }

    while (v14 != 6);
  }

  *(v6 + 2) = v13 + 1;
LABEL_31:

  os_unfair_lock_unlock(this + 5);
}

uint64_t __destroy_helper_block_e8_32c38_ZTSN2RB14refcounted_ptrINS_6DeviceEEE(uint64_t a1)
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

uint64_t RB::Device::function_library(RB::Device *this, RB::CustomShader::Library *a2)
{
  v4 = 0;
  result = RB::UntypedTable::lookup((this + 912), a2, &v4);
  if (v4 != a2)
  {
    operator new();
  }

  return result;
}

void *RB::FunctionLibrary::function(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 8) || *(a1 + 24) != *(*(a2 + 16) + 28))
  {
    return 0;
  }

  v8 = (a3 | (8 * *(a2 + 32)));
  v14[0] = 0;
  v9 = RB::UntypedTable::lookup((a1 + 40), v8, v14);
  if (!v14[0])
  {
    RB::Function::Info::Info(v14, a2, a3);
    v13 = 0;
    if (RB::Function::Info::make_params(v14, a4, &v13))
    {
      if (*(a1 + 106) == 1)
      {
        v10 = objc_alloc(MEMORY[0x1E696AEC0]);
        [v10 initWithFormat:@"%@_v%d", v14[0], 1];
        operator new();
      }

      operator new();
    }

    if (v9)
    {
      v12 = 1;
    }

    else
    {
      v12 = v13 == 0;
    }

    if (!v12)
    {
      RB::Device::function_library_error(*a1, a1, v13);
      v9 = 0;
    }

    RB::UntypedTable::insert((a1 + 40), v8, v9);
    if (v15)
    {
      free(v15);
    }
  }

  return v9;
}

void sub_195D139C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x19A8C09E0](v4, 0x10A0C4048361850);

  RB::Function::Info::~Info(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *RB::DisplayList::FilterStyle<RB::Filter::Custom>::draw(void *a1, RB::DisplayList::Builder *a2, RB::DisplayList::Layer *a3, RB::DisplayList::Item *a4, char a5)
{
  v10 = a1[2];
  v11 = a1[3];
  v12 = RB::Heap::emplace<RB::DisplayList::GenericFilter<RB::Filter::Custom>,RB::Filter::Custom const&,RB::DisplayList::Builder &>((*(a2 + 1) + 16), (a1 + 8));
  result = RB::DisplayList::Builder::apply_filter_(a2, a4, v12, v10, v11);
  if (result)
  {
    *(result + 2) = a1[4];

    return RB::DisplayList::Builder::draw(a2, result, a3, a5);
  }

  return result;
}

uint64_t RB::Buffer::Buffer(uint64_t a1, void *a2, uint64_t a3)
{
  *(a1 + 8) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = a2;
  *(a1 + 37) = 0;
  *(a1 + 45) = 1;
  *a1 = &unk_1F0A385E0;
  if (!a3)
  {
    a3 = [a2 length];
  }

  *(a1 + 48) = a3;
  *(a1 + 56) = [a2 contents];
  return a1;
}

void *RB::DisplayList::State::copy_metadata(RB::DisplayList::State *this, RB::DisplayList::Contents *a2)
{
  v2 = *(this + 15);
  if (!v2)
  {
    v5 = *(this + 38);
    v6 = (*(a2 + 4) + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v6 + 16 > *(a2 + 5))
    {
      v6 = RB::Heap::alloc_slow(a2 + 2, 0x10uLL, 7);
    }

    else
    {
      *(a2 + 4) = v6 + 16;
    }

    *v6 = 2;
    *(v6 + 8) = v5;
    if (*(this + 42) || *(this + 43) != 1)
    {
      v7 = ((*(a2 + 4) + 7) & 0xFFFFFFFFFFFFFFF8);
      if ((v7 + 2) > *(a2 + 5))
      {
        v7 = RB::Heap::alloc_slow(a2 + 2, 0x10uLL, 7);
      }

      else
      {
        *(a2 + 4) = v7 + 2;
      }

      *v7 = v6 | 4;
      v7[1] = *(this + 21);
      v6 = v7;
    }

    if (*(this + 20))
    {
      v8 = ((*(a2 + 4) + 7) & 0xFFFFFFFFFFFFFFF8);
      if ((v8 + 2) > *(a2 + 5))
      {
        v8 = RB::Heap::alloc_slow(a2 + 2, 0x10uLL, 7);
      }

      else
      {
        *(a2 + 4) = v8 + 2;
      }

      v9 = *(this + 20);
      *v8 = v6 | 3;
      v8[1] = v9;
      v6 = v8;
    }

    v10 = *(this + 11);
    if (v10)
    {
      v2 = ((*(a2 + 4) + 7) & 0xFFFFFFFFFFFFFFF8);
      if ((v2 + 2) > *(a2 + 5))
      {
        v2 = RB::Heap::alloc_slow(a2 + 2, 0x10uLL, 7);
      }

      else
      {
        *(a2 + 4) = v2 + 2;
      }

      *v2 = v6 | 1;
      v2[1] = v10;
      atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
      v11 = *(a2 + 6);
      if (!v11)
      {
        RB::Heap::make_object_table((a2 + 16));
        v11 = *(a2 + 6);
      }

      RB::ObjectTable::adopt(v11, v10);
    }

    else
    {
      v2 = v6;
    }

    if (!uuid_is_null(this + 68))
    {
      v12 = ((*(a2 + 4) + 7) & 0xFFFFFFFFFFFFFFF8);
      if ((v12 + 2) > *(a2 + 5))
      {
        v12 = RB::Heap::alloc_slow(a2 + 2, 0x10uLL, 7);
      }

      else
      {
        *(a2 + 4) = v12 + 2;
      }

      *v12 = v2;
      v12[1] = this + 68;
      v12[1] = RB::DisplayList::Contents::intern_uuid(a2, (this + 68));
      v2 = v12;
    }

    *(this + 15) = v2;
  }

  return v2;
}

void *RB::details::realloc_vector<unsigned int,16ul>(void *__src, void *__dst, unsigned int a3, _DWORD *a4, unsigned int a5)
{
  v7 = __src;
  if (a5 <= a3)
  {
    if (__src)
    {
      LODWORD(v9) = a3;
      memcpy(__dst, __src, 16 * a5);
      free(v7);
      v12 = 0;
LABEL_8:
      *a4 = v9;
      return v12;
    }
  }

  else
  {
    v8 = malloc_good_size(16 * a5);
    v9 = v8 >> 4;
    if (*a4 != (v8 >> 4))
    {
      v10 = malloc_type_realloc(v7, v8, 0x58CA92B9uLL);
      if (!v10)
      {
        RB::precondition_failure("allocation failure", v11);
      }

      v12 = v10;
      if (!v7)
      {
        memcpy(v10, __dst, 16 * *a4);
      }

      goto LABEL_8;
    }
  }

  return v7;
}

uint64_t RB::Filter::NarrowBlurKernel::max_kernel_23(RB::Filter::NarrowBlurKernel *this)
{
  {
    RB::Filter::NarrowBlurKernel::max_kernel_23(void)::$_0::operator()();
  }

  return RB::Filter::NarrowBlurKernel::max_kernel_23(void)::kernel;
}

uint64_t RB::anonymous namespace::use_uber_shader(RB::_anonymous_namespace_ *this)
{
  {
    v3 = RB::debug_int("RB_UBER_SHADER", v2);
    if ((v3 & 0x100000000) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 1;
    }
  }
}

BOOL RB::RenderState::uber_compatible(RB::RenderState *this)
{
  v1 = *this & 0x3F;
  if (v1 < 2 || v1 == 38)
  {
    return 0;
  }

  if (v1 == 33)
  {
    return (*this & 0x180) == 0;
  }

  return 1;
}

uint64_t RB::Device::RenderPipelineEntry::Loader::Loader(uint64_t a1, atomic_uint *a2, uint64_t a3, int a4, uint64_t a5)
{
  *a1 = 0;
  if (a2)
  {
    atomic_fetch_add_explicit(a2 + 2, 1u, memory_order_relaxed);
  }

  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = RB::Device::library(a2);
  *(a1 + 112) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  if (a5)
  {
    v7 = *(a5 + 16);
    if (v7 && (v8 = *(v7 + 8)) != 0)
    {

      *(a1 + 40) = v8;
      v9 = *(a1 + 48);
    }

    else
    {
      v9 = 0;
    }

    v10 = *(a5 + 8);
    if (v9 != v10)
    {

      *(a1 + 48) = v10;
    }

    v11 = RB::Function::function(a5);
    v12 = *(a1 + 56);
    if (v12 != v11)
    {

      *(a1 + 56) = v11;
    }
  }

  return a1;
}

void sub_195D14080(_Unwind_Exception *a1)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    if (atomic_fetch_add_explicit((v3 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      [RBDevice .cxx_destruct];
    }
  }

  _Unwind_Resume(a1);
}

uint64_t RB::Device::library(RB::Device *this)
{
  result = *(this + 6);
  if (!result)
  {
    v3 = objc_autoreleasePoolPush();

    *(this + 6) = library;
    objc_autoreleasePoolPop(v3);
    return *(this + 6);
  }

  return result;
}

void RB::Device::RenderPipelineEntry::Queue::enqueue(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  if (*(a2 + 112) <= 0)
  {
    *(a2 + 112) = 1;
    v4 = *(a1 + 16);
    if (!v4)
    {
      v4 = (a1 + 8);
    }

    *v4 = a2;
    *(a1 + 16) = a2;
  }

  os_unfair_lock_unlock(a1);
}

unint64_t RB::RenderState::can_discard_shape(RB::RenderState *this)
{
  if ((*(this + 1) & 0x3Fu) - 24 > 0xFFFFFFFA)
  {
    LOBYTE(v1) = 0;
  }

  else
  {
    v1 = 0xFFFFFFF7FF81FFFFLL >> *this;
  }

  return v1 & 1;
}

unint64_t RB::RenderState::can_discard_alpha(RB::RenderState *this)
{
  if (*(this + 1) & 0x3Fu) < 0x35 && ((0x10000000F9029BuLL >> (*(this + 1) & 0x3F)))
  {
    LOBYTE(v1) = 0;
  }

  else
  {
    v1 = 0xFFFFFFF7FF81FFFFLL >> *this;
  }

  return v1 & 1;
}

__n128 RB::TextureCache::take_available@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, __int16 a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, void *a8@<X8>, __n128 result@<Q0>)
{
  v26 = result.n128_u64[0];
  v37 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 96);
  if (v9)
  {
    v11 = 0;
    v12 = a1 + 80;
    v13 = *(a1 + 88);
    if (!v13)
    {
      v13 = a1 + 80;
    }

    v14 = 8 * v9;
    while (1)
    {
      v15 = *(v13 + v11);
      v16 = vceq_s32(v15[8], v26);
      result.n128_u64[0] = vpmin_u32(v16, v16);
      if ((result.n128_u32[0] & 0x80000000) != 0 && *&v15[7] == a2 && v15[9].u8[4] == a3 && v15[9].u8[6] == a5 && v15[9].u8[7] == a6 && ((v15[9].i8[5] & 2) == 0) != a7)
      {
        break;
      }

      v11 += 8;
      if (v14 == v11)
      {
        goto LABEL_12;
      }
    }

    v15[10].i16[0] = a4;
    v17 = *(a1 + 88);
    if (!v17)
    {
      v17 = a1 + 80;
    }

    v18 = *(v17 + v11);
    *a8 = v18;
    *(v17 + v11) = 0;
    v19 = *(a1 + 96) - 1;
    *(v17 + v11) = *(v17 + 8 * v19);
    *(v17 + 8 * v19) = 0;
    *(a1 + 96) = v19;
    if (*(a1 + 88))
    {
      v12 = *(a1 + 88);
    }

    v20 = *(v12 + 8 * v19);
    if (v20)
    {
      v21 = v20[2] - 1;
      v20[2] = v21;
      if (!v21)
      {
        (*(*v20 + 8))(v20);
      }
    }

    v22 = RB::verbose_mode(0x80);
    if (v22)
    {
      v23 = RB::misc_log(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v25 = RB::pixel_format_name(*(v18 + 56), v24);
        *buf = 134219010;
        v28 = a1;
        v29 = 1024;
        v30 = v26.i32[0];
        v31 = 1024;
        v32 = v26.i32[1];
        v33 = 2048;
        v34 = v18;
        v35 = 2080;
        v36 = v25;
        _os_log_impl(&dword_195CE8000, v23, OS_LOG_TYPE_INFO, "%p: take_available [%d, %d] %p %s\n", buf, 0x2Cu);
      }
    }
  }

  else
  {
LABEL_12:
    *a8 = 0;
  }

  return result;
}

void sub_195D14454(_Unwind_Exception *exception_object)
{
  v3 = v1[2] - 1;
  v1[2] = v3;
  if (!v3)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RB::gray_colorspace(RB *this)
{
  if ((atomic_load_explicit(&qword_1ED6D5520, memory_order_acquire) & 1) == 0)
  {
    RB::gray_colorspace();
  }

  return qword_1ED6D5518;
}

void RB::Texture::alloc(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W5>, int a6@<W6>, void *a7@<X8>, __n128 a8@<Q0>)
{
  RB::Texture::make_descriptor(a1, a3, 1u, a5, a6, &v12, a8);
  v11 = v12;
  if (v12)
  {
    [v12 setCpuCacheMode:{objc_msgSend(*(a2 + 16), "cpuCacheMode")}];
    if ([*(a2 + 16) newTextureWithDescriptor:v11 offset:0 bytesPerRow:a4])
    {
      operator new();
    }
  }

  *a7 = 0;
}

void sub_195D14638(_Unwind_Exception *a1)
{
  MEMORY[0x19A8C09E0](v2, 0x10A1C4013E36456);

  _Unwind_Resume(a1);
}

RB::FunctionLibrary *RB::FunctionLibrary::FunctionLibrary(RB::FunctionLibrary *this, id *a2, const RB::CustomShader::Library *a3)
{
  v28[2] = *MEMORY[0x1E69E9840];
  *(this + 1) = 0;
  v6 = (this + 8);
  *this = a2;
  *(this + 2) = 0;
  *(this + 3) = *(a3 + 7);
  *(this + 8) = 0;
  RB::UntypedTable::UntypedTable(this + 40, 0, 0, 0, RB::FunctionLibrary::FunctionLibrary(RB::Device &,RB::CustomShader::Library const&)::$_0::__invoke);
  *(this + 52) = 0;
  *(this + 106) = *(a3 + 8) == 1;
  v26 = 0;
  v7 = *(a3 + 6);
  if (v7 <= 2)
  {
    if (v7)
    {
      if (v7 != 1)
      {
        if (v7 != 2)
        {
          goto LABEL_25;
        }

        v8 = *(a3 + 2);
        v9 = [v8 bytes];
        v10 = [v8 length];
        destructor[0] = MEMORY[0x1E69E9820];
        destructor[1] = 3221225472;
        destructor[2] = ___ZN2RB15FunctionLibraryC2ERNS_6DeviceERKNS_12CustomShader7LibraryE_block_invoke;
        destructor[3] = &unk_1E744C6E8;
        destructor[4] = v8;
        v11 = dispatch_data_create(v9, v10, MEMORY[0x1E69E96A0], destructor);
        v12 = [a2[3] newLibraryWithData:v11 error:&v26];

        goto LABEL_24;
      }

      v14 = [a2[3] newLibraryWithURL:*(a3 + 2) error:&v26];
    }

    else
    {
      v14 = [a2[3] newDefaultLibraryWithBundle:*(a3 + 2) error:&v26];
    }

    goto LABEL_17;
  }

  if (v7 != 3)
  {
    if (v7 != 4)
    {
      if (v7 == 5)
      {
        v13 = RB::Device::library(a2);
        if (*v6 != v13)
        {

          *v6 = v13;
        }

        *(this + 105) = 257;
      }

LABEL_25:
      if (!*v6)
      {
        goto LABEL_26;
      }

      goto LABEL_19;
    }

    v11 = objc_opt_new();
    [v11 appendString:{@"#include <metal_stdlib>\n\nnamespace RB {\n  struct Layer {\n    metal::texture2d<half> tex;\n    float2 info[5];\n    half4 sample(float2 p) const {\n      p = metal::fma(p.x, info[0], metal::fma(p.y, info[1], info[2]));\n      p = metal::clamp(p, info[3], info[4]);\n      return tex.sample(metal::sampler(metal::filter::linear), p);\n    }\n  };\n}\n\n#line 0\n"}];
    [v11 appendString:*(a3 + 2)];
    v12 = [a2[3] newLibraryWithSource:v11 options:0 error:&v26];

LABEL_24:
    *v6 = v12;

    goto LABEL_25;
  }

  v14 = *(a3 + 2);
  if ([v14 device] != a2[3])
  {
    goto LABEL_25;
  }

  if (*v6 != v14)
  {

    v14 = v14;
LABEL_17:
    *v6 = v14;
  }

  if (!v14)
  {
LABEL_26:
    if (v26)
    {
      v27[0] = *MEMORY[0x1E696A578];
      v18 = [v26 localizedDescription];
      v27[1] = *MEMORY[0x1E696AA08];
      v28[0] = v18;
      v28[1] = v26;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
    }

    else
    {
      v19 = 0;
    }

    RB::Device::function_library_error(a2, this, [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.RenderBox.RBShaderError" code:0 userInfo:v19]);
    return this;
  }

LABEL_19:
  v15 = *(a3 + 5);
  if (v15)
  {
    v16 = objc_opt_new();
    [v16 setUrl:v15];
    v24 = 0;
    v17 = [a2[3] newBinaryArchiveWithDescriptor:v16 error:&v24];

    *(this + 2) = v17;
    if (v24 || !v17)
    {
      v22 = [objc_msgSend(v15 "path")];
      if (v24)
      {
        v23 = [objc_msgSend(v24 "localizedDescription")];
      }

      else
      {
        v23 = "unknown error";
      }

      RB::non_fatal_precondition_failure("unable to load binary archive for shader library: %s, %s", v21, v22, v23);
    }
  }

  return this;
}

void sub_195D14A40(_Unwind_Exception *a1)
{
  RB::UntypedTable::~UntypedTable((v1 + 5));

  _Unwind_Resume(a1);
}

void RB::CustomShader::Library::add_observer(os_unfair_lock_s *this, void *a2, void (*a3)(RB::CustomShader::Library *, void *))
{
  os_unfair_lock_lock(this + 12);
  os_unfair_lock_opaque = this[36]._os_unfair_lock_opaque;
  v7 = os_unfair_lock_opaque + 1;
  if (this[37]._os_unfair_lock_opaque < os_unfair_lock_opaque + 1)
  {
    RB::vector<std::pair<RB::cf_ptr<CGContext *>,RB::ContextDelegate *>,1ul,unsigned int>::reserve_slow(&this[30], v7);
    os_unfair_lock_opaque = this[36]._os_unfair_lock_opaque;
    v7 = os_unfair_lock_opaque + 1;
  }

  v8 = *&this[34]._os_unfair_lock_opaque;
  if (!v8)
  {
    v8 = this + 30;
  }

  v9 = &v8[4 * os_unfair_lock_opaque];
  *v9 = a2;
  *(v9 + 1) = a3;
  this[36]._os_unfair_lock_opaque = v7;

  os_unfair_lock_unlock(this + 12);
}

void *RB::vector<unsigned int,8ul,unsigned long>::reserve_slow(void *__dst, size_t a2)
{
  if (*(__dst + 6) + (*(__dst + 6) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 6) + (*(__dst + 6) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,4ul>(*(__dst + 4), __dst, 8uLL, __dst + 6, v3);
  *(__dst + 4) = result;
  return result;
}

void *RB::details::realloc_vector<unsigned long,4ul>(void *__src, void *__dst, size_t a3, size_t *a4, size_t a5)
{
  v7 = __src;
  if (a5 <= a3)
  {
    if (__src)
    {
      v9 = a3;
      memcpy(__dst, __src, 4 * a5);
      free(v7);
      v12 = 0;
LABEL_8:
      *a4 = v9;
      return v12;
    }
  }

  else
  {
    v8 = malloc_good_size(4 * a5);
    v9 = v8 >> 2;
    if (v8 >> 2 != *a4)
    {
      v10 = malloc_type_realloc(v7, v8, 0x58CA92B9uLL);
      if (!v10)
      {
        RB::precondition_failure("allocation failure", v11);
      }

      v12 = v10;
      if (!v7)
      {
        memcpy(v10, __dst, 4 * *a4);
      }

      goto LABEL_8;
    }
  }

  return v7;
}

void *RB::vector<std::pair<RB::cf_ptr<CGContext *>,RB::ContextDelegate *>,1ul,unsigned int>::reserve_slow(void *__dst, unsigned int a2)
{
  if (*(__dst + 7) + (*(__dst + 7) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 7) + (*(__dst + 7) >> 1);
  }

  result = RB::details::realloc_vector<unsigned int,16ul>(*(__dst + 2), __dst, 1u, __dst + 7, v3);
  *(__dst + 2) = result;
  return result;
}

uint64_t RB::Function::load_binary_function(os_unfair_lock_t lock, void **a2)
{
  v26[1] = *MEMORY[0x1E69E9840];
  if (*&lock[2]._os_unfair_lock_opaque)
  {
    os_unfair_lock_lock(lock);
    if (!*&lock[8]._os_unfair_lock_opaque && RB::Device::should_compile_binary_functions(a2))
    {
      v4 = *&lock[4]._os_unfair_lock_opaque;
      if (v4)
      {
        v5 = *(v4 + 8);
        v6 = *(v4 + 16);
        goto LABEL_9;
      }

      v6 = RB::Device::library_archive(a2);
      if (v6)
      {
        v5 = RB::Device::library(a2);
LABEL_9:
        if (v5)
        {
          v8 = v6 == 0;
        }

        else
        {
          v8 = 1;
        }

        if (!v8)
        {
          v9 = CACurrentMediaTime();
          v10 = objc_opt_new();
          [v10 setName:*&lock[2]._os_unfair_lock_opaque];
          v26[0] = v6;
          [v10 setBinaryArchives:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v26, 1)}];
          [v10 setOptions:5];
          [v10 setPipelineOptions:4];
          v21 = 0;
          v11 = [v5 newFunctionWithDescriptor:v10 error:&v21];

          *&lock[8]._os_unfair_lock_opaque = v11;
          if (RB::verbose_mode(2))
          {
            v14 = CACurrentMediaTime();
            if (*&lock[8]._os_unfair_lock_opaque)
            {
              v15 = v14;
              v16 = RB::misc_log(v13);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
              {
                v17 = *&lock[2]._os_unfair_lock_opaque;
                *buf = 138412546;
                v23 = v17;
                v24 = 2048;
                v25 = (v15 - v9) * 1000.0;
                _os_log_impl(&dword_195CE8000, v16, OS_LOG_TYPE_INFO, "loaded binary function %@ (%.2f ms)\n", buf, 0x16u);
              }
            }

            else
            {
              v18 = RB::error_log(v13);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                v19 = *&lock[2]._os_unfair_lock_opaque;
                if (v21)
                {
                  v20 = [v21 localizedDescription];
                }

                else
                {
                  v20 = @"unknown error";
                }

                RB::Function::load_binary_function(v20, buf, v19);
              }
            }
          }
        }
      }
    }

    v7 = *&lock[8]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(lock);
    return v7;
  }

  return *&lock[8]._os_unfair_lock_opaque;
}

void RB::Device::RenderPipelineEntry::Loader::custom_fn(RB::Device::RenderPipelineEntry::Loader *this, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    [a2 setLabel:*(this + 6)];
    v7[0] = a2;
    [objc_msgSend(*(this + 8) "fragmentLinkedFunctions")];
    v4 = *(*(this + 1) + 24);
    v5 = *(this + 8);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = ___ZN2RB6Device19RenderPipelineEntry6Loader13load_pipelineEv_block_invoke;
    v6[3] = &__block_descriptor_40_e46_v24__0___MTLRenderPipelineState__8__NSError_16l;
    v6[4] = this;
    [v4 newRenderPipelineStateWithDescriptor:v5 completionHandler:v6];
  }

  else
  {

    RB::Device::RenderPipelineEntry::Loader::finished(this);
  }
}

BOOL RB::Device::should_compile_binary_functions(RB::Device *this)
{
  if (*(this + 335) != 1)
  {
    return 0;
  }

  if (v2 < 1)
  {
    return 0;
  }

  {
    return RB::Device::library_archive(this) != 0;
  }

  return 1;
}

void *RB::Device::library_archive(void **this)
{
  if (*(this + 330) == 1 && !this[7])
  {
    v2 = objc_autoreleasePoolPush();

    this[7] = library_archive;
    if (!library_archive)
    {
      *(this + 330) = 0;
    }

    objc_autoreleasePoolPop(v2);
  }

  return this[7];
}

uint64_t RB::Function::function(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this);
  v2 = *&this[6]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(this);
  return v2;
}

uint64_t RB::Function::binary_function(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this);
  v2 = *&this[8]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(this);
  return v2;
}

uint64_t RB::max_mipmap_levels(int32x2_t a1)
{
  v1 = vcgt_s32(a1, 0x100000001);
  v2 = vpmax_u32(v1, v1).u32[0];
  result = 1;
  while ((v2 & 0x80000000) != 0)
  {
    a1 = vshr_n_s32(a1, 1uLL);
    result = (result + 1);
    v4 = vcgt_s32(a1, 0x100000001);
    v2 = vpmax_u32(v4, v4).u32[0];
  }

  return result;
}

uint64_t RB::Coverage::Primitive::set_coverage_state(uint64_t result, unsigned int *a2)
{
  v2 = *(result + 46);
  v3 = *(result + 40);
  if (v3 > 0.0 && (v2 & 4) != 0)
  {
    v7 = *a2 & 0xFFFFFFCF | 0x20;
LABEL_11:
    *a2 = v7;
    goto LABEL_13;
  }

  v5 = *(result + 45);
  if (v3 <= 0.0 || v5 < 2)
  {
    v7 = *a2 & 0xFFFFFFCF | (16 * (v5 == 1));
    goto LABEL_11;
  }

  v7 = *a2 | 0x30;
  *a2 = v7;
  v2 ^= *(result + 45) > 2u;
LABEL_13:
  if (*(result + 44) - 6 >= 3)
  {
    v8 = (*(result + 36) > 0.0) << 6;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 & 0xFFFFFF7F | ((v2 & 1) << 7) | v7 & 0xFFFFFF3F;
  *a2 = v9;
  if ((*(result + 46) & 2) != 0 || *(result + 45) >= 2u)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  *a2 = v10 | v9 & 0xFFFFFEFF;
  return result;
}

void RB::RenderFrame::encode(id *this, RB::RenderFrame::EncoderData *a2, RB::RenderQueue *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = this + 47;
  if (!this[47])
  {
    v7 = [this[2] renderCommandEncoderWithDescriptor:*(a2 + 1)];
    v8 = this[47];
    if (v8 != v7)
    {
      v9 = v7;

      v8 = v9;
      *v6 = v8;
    }

    *(this + 384) = 0;
    v10 = *(a2 + 2);
    if (!v10)
    {
    }

    [v8 setLabel:v10];
    if (*(*this + 340))
    {
      snprintf(__str, 0x100uLL, "Render.%d %dx%d %x %x D%d S%d F%d", *(a2 + 97), *(a2 + 11), HIDWORD(*(a2 + 11)), *(a2 + 20), *(a2 + 96), (*(a2 + 97) >> 9) & 1, (*(a2 + 97) >> 10) & 1, (*(a2 + 97) >> 11) & 1);
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:__str encoding:1];
      [*v6 insertDebugSignpost:v11];
    }

    [objc_msgSend(objc_msgSend(*(a2 + 1) "colorAttachments")];
  }

  *(this + 384) |= *(a2 + 99);
  if (*a3)
  {
    RB::RenderQueue::schedule(a3, *this, (*(a2 + 97) >> 9) & 1);
    *__str = *this;
    v17 = this[12];
    v13 = *(a2 + 1);
    v12 = *(a2 + 2);
    v18 = this[2];
    v19 = v13;
    v14 = *(a2 + 97);
    if (!v12)
    {
    }

    v20 = v12;
    v21 = v6;
    v22 = *(a2 + 9);
    v23 = *(a2 + 20);
    v24 = *(a2 + 11);
    v25 = *(a2 + 96);
    v15 = *(a2 + 40);
    v26 = *(a2 + 24);
    v27 = v15;
    v28 = *(a2 + 56);
    v29 = (v14 & 0x400) != 0;
    v30 = (v14 & 0x200) != 0;
    v31 = *(this + 384);
    RB::RenderQueue::encode(a3, __str);
    if (*(a3 + 1) >= 0x41u)
    {
      free(*(a3 + 1));
    }

    *a3 = 0;
    *(a3 + 1) = 0;
    RB::Heap::reset((a3 + 16), a3 + 56, 8064);
    *(this + 384) = v31;
  }

  if ((*(a2 + 97) & 0x800) != 0)
  {
    if (*v6)
    {
      [*v6 endEncoding];

      *v6 = 0;
    }
  }
}

uint64_t RB::Device::depth_stencil_format(RB::Device *this, char a2, int a3)
{
  if (a2)
  {
    v3 = 1;
    if (!a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = v3 ^ 1;
    goto LABEL_7;
  }

  v3 = *(this + 328);
  if (a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = *(this + 329);
  v5 = v3 & v4 ^ 1;
  if (v4 != 1)
  {
    v6 = 0;
    goto LABEL_8;
  }

LABEL_7:
  v6 = 1;
LABEL_8:
  if (v3)
  {
    v7 = 2;
  }

  else
  {
    v7 = v6;
  }

  if (v5)
  {
    return v7;
  }

  else
  {
    return 3;
  }
}

float *RB::ColorSpace::Conversion::Conversion(float *a1, uint64_t a2, uint64_t a3, float32x4_t a4, float a5)
{
  v7 = a4.f32[0];
  v23 = a2;
  v22 = a3;
  v10 = a4.f32[0] <= a5;
  a4.i64[0] = 0;
  if (v10 || a5 == 0.0)
  {
    v12 = 0;
  }

  else
  {
    v12 = 64;
  }

  v13 = *a1 & 0xFFBF | v12;
  if (a2 == 16 && a3 == 17)
  {
    v14 = *a1 & 0xFF80 | v12 & 0xFFC0;
    *a1 = v14;
    if ((v13 & 0x40) != 0)
    {
      goto LABEL_17;
    }

LABEL_15:
    v19 = a3 & 0xF;
    v20 = v19;
    goto LABEL_18;
  }

  v15 = RB::ColorSpace::transfer_type(&v23);
  v16 = v13 & 0xFFC0 | v15 & 7;
  if ((v15 & 7) == 2)
  {
    RB::ColorSpace::Conversion::Conversion(a2, a1);
  }

  v17 = RB::ColorSpace::transfer_type(&v22);
  v18 = 8 * (v17 & 7);
  v14 = v16 | v18;
  *a1 = v16 | (8 * (v17 & 7));
  if (v18 == 16)
  {
    RB::ColorSpace::Conversion::Conversion(a3, a1);
    if ((v14 & 0x40) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((v14 & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_17:
  RB::ColorSpace::ToneMap::ToneMap((a1 + 7), v7, a5);
  v14 = *a1;
  v19 = a3 & 0xF;
  v20 = 3;
LABEL_18:
  *a1 = v14 & 0xFE7F | (((a2 & 0xF) != v20) << 7) | ((v20 != v19) << 8);
  if ((a2 & 0xF) == v20)
  {
    if (v20 == v19)
    {
      return a1;
    }

    goto LABEL_23;
  }

  a4 = RB::ColorSpace::Matrix::Matrix((a1 + 20), a2 & 0xF, v20, a4);
  if ((*a1 & 0x100) != 0)
  {
LABEL_23:
    RB::ColorSpace::Matrix::Matrix((a1 + 32), v20, v19, a4);
  }

  return a1;
}

uint16x4_t RB::ColorSpace::Conversion::operator()(RB::Shader::Tables *a1, uint16x4_t a2)
{
  v3 = *a1;
  if ((v3 & 0x1C0) == 0 && ((v3 ^ (v3 >> 3)) & 7) == 0)
  {
    return a2;
  }

  v5 = a1;
  if ((v3 & 7) == 1)
  {
    a1 = RB::Shader::Tables::shared(a1);
    v6 = vshr_n_u16(a2, 3uLL);
    v6.i16[0] = *(a1 + (v6.i16[0] & 0xFFF) + 4096);
    v6.i16[1] = *(a1 + (v6.i16[1] & 0xFFF) + 4096);
    v6.i16[2] = *(a1 + (v6.i16[2] & 0xFFF) + 4096);
    a2 = vorr_s8(v6, vand_s8(a2, 0x8000800080008000));
    LOBYTE(v3) = v5->i8[0];
  }

  v7 = vcvtq_f32_f16(a2);
  v8 = v3 & 7;
  switch(v8)
  {
    case 2:
      v10 = v5->f32[1];
      v37 = vabsq_f32(v7);
      v39 = vmulq_n_f32(v37, v5->f32[2]);
      v11 = v37;
      v11.i32[3] = 0;
      v12 = vmulq_n_f32(_simd_log2_f4(v11), v10);
      v12.i32[3] = 0;
      v13 = _simd_exp2_f4(v12);
      v14 = &v5->f32[3];
      v15 = vld1q_dup_f32(v14);
      v16 = vcgeq_f32(v37, v15);
      v16.i32[3] = 0;
      v17 = vbslq_s8(vcltzq_s32(v16), v13, v39);
      v18 = vmovl_s16(vcltz_f16(a2));
      v18.i32[3] = 0;
      v7 = vbslq_s8(vcltzq_s32(v18), vnegq_f32(v17), v17);
      break;
    case 3:
      *v9.i64 = RB::unapply_pq<float,3>(v7);
      goto LABEL_29;
    case 4:
      *v9.i64 = RB::unapply_hlg<float>(v7);
LABEL_29:
      v7 = v9;
      break;
  }

  if ((v5->i16[0] & 0x80) != 0)
  {
    v7 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5[5], v7.f32[0]), v5[6], *v7.f32, 1), v5[7], v7, 2);
  }

  if ((v5->i16[0] & 0x40) != 0)
  {
    *v35.i64 = RB::ColorSpace::ToneMapParams<float>::operator()(&v5[1].f32[3], v7);
    v7 = v35;
    v19 = v5->i16[0];
    if ((v5->i16[0] & 0x100) != 0)
    {
      v7 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5[8], v35.f32[0]), v5[9], *v35.f32, 1), v5[10], v35, 2);
    }
  }

  else
  {
    v19 = v5->i16[0];
  }

  v20 = (v19 >> 3) & 7;
  if (v20 > 1)
  {
    switch(v20)
    {
      case 2:
        v25 = v5[1].f32[0];
        v36 = vabsq_f32(v7);
        v38 = vmulq_n_f32(v36, v5[1].f32[1]);
        v41 = v7;
        v26 = v36;
        v26.i32[3] = 0;
        v27 = vmulq_n_f32(_simd_log2_f4(v26), v25);
        v27.i32[3] = 0;
        v28 = _simd_exp2_f4(v27);
        v29 = &v5[1].f32[2];
        v30 = vld1q_dup_f32(v29);
        v31 = vcgeq_f32(v36, v30);
        v31.i32[3] = 0;
        v32 = vbslq_s8(vcltzq_s32(v31), v28, v38);
        v33 = vcltzq_f32(v41);
        v33.i32[3] = 0;
        v7 = vbslq_s8(vcltzq_s32(v33), vnegq_f32(v32), v32);
        break;
      case 3:
        *v21.i64 = RB::apply_pq<float,3>(v7);
        goto LABEL_31;
      case 4:
        *v21.i64 = RB::apply_hlg<float>(v7);
LABEL_31:
        v7 = v21;
        break;
    }

    return vcvt_f16_f32(v7);
  }

  if (v20 != 1)
  {
    return vcvt_f16_f32(v7);
  }

  v40 = v7;
  v22 = RB::Shader::Tables::shared(a1);
  v23 = vcvt_f16_f32(v40);
  v24 = vshr_n_u16(v23, 3uLL);
  v24.i16[0] = *(v22 + 2 * (v24.i16[0] & 0xFFF));
  v24.i16[1] = *(v22 + 2 * (v24.i16[1] & 0xFFF));
  v24.i16[2] = *(v22 + 2 * (v24.i16[2] & 0xFFF));
  return vorr_s8(v24, vand_s8(v23, 0x8000800080008000));
}

uint64_t RB::Shader::Tables::shared(RB::Shader::Tables *this)
{
  {
    RB::Shader::Tables::shared(void)::tables = RB::Shader::Tables::shared(void)::$_0::operator()();
  }

  return RB::Shader::Tables::shared(void)::tables;
}

uint64_t RB::Fill::ImageData::image_filter(uint64_t a1, float64x2_t *a2, int32x2_t a3)
{
  v3 = HIBYTE(*(a1 + 82)) & 0xF;
  if (v3 > 9)
  {
    return 0;
  }

  if (!a2 || *(a1 + 82) == 4)
  {
    return *v6;
  }

  v5 = vcgt_s32(a3, 0x100000001);
  if ((vpmin_u32(v5, v5).u32[0] & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  v8 = vcvtq_f64_f32(*(a1 + 44));
  v9 = vcvtq_f64_f32(*(a1 + 56));
  v31[0] = vcvtq_f64_f32(*(a1 + 32));
  v31[1] = v8;
  v31[2] = v9;
  v10.f64[0] = RB::operator*(v31, a2);
  if (!v3)
  {
    v13 = a3;
    goto LABEL_22;
  }

  v13 = a3;
  if (*(a1 + 82) <= 2u)
  {
    v14 = vceqq_f64(vrndmq_f64(v12), v12);
    if ((vandq_s8(vdupq_laneq_s64(v14, 1), v14).u64[0] & 0x8000000000000000) != 0)
    {
      if (v10.f64[1] == 0.0 && v11.f64[0] == 0.0)
      {
        v15 = fabs(a3.i32[1]);
        if (v10.f64[0] != fabs(a3.i32[0]) || v11.f64[1] != v15)
        {
          goto LABEL_22;
        }

LABEL_33:
        LODWORD(v3) = 0;
        goto LABEL_22;
      }

      if (v10.f64[0] == 0.0 && v11.f64[1] == 0.0)
      {
        v28 = fabs(a3.i32[0]);
        if (v10.f64[1] == fabs(a3.i32[1]) && v11.f64[0] == v28)
        {
          goto LABEL_33;
        }
      }
    }
  }

LABEL_22:
  v17 = vcvt_f32_f64(vpaddq_f64(vmulq_f64(v10, v10), vmulq_f64(v11, v11)));
  v18 = vcvt_f32_s32(v13);
  __asm { FMOV            V2.2S, #0.75 }

  v23 = vmul_f32(v18, _D2);
  v24 = vcgt_f32(vmul_f32(v23, v23), v17);
  if ((vpmax_u32(v24, v24).u32[0] & 0x80000000) != 0)
  {
    return *++v6;
  }

  __asm { FMOV            V2.2S, #1.25 }

  v26 = vmul_f32(v18, _D2);
  v27 = vcgt_f32(vmul_f32(v26, v26), v17);
  if ((vpmax_u32(v27, v27).u32[0] & 0x80000000) == 0)
  {
    v3 = v3;
LABEL_6:
  }

  return *v6;
}

uint64_t RB::Coverage::anonymous namespace::set_primitive_rect(uint64_t result, float32x2_t *a2, float64x2_t *a3, int a4, float32x4_t a5, double a6)
{
  v6 = a3[1];
  v7 = vmlaq_n_f64(vmlaq_n_f64(a3[2], *a3, a5.f32[0]), v6, a5.f32[1]);
  v8 = a2[14];
  v8.i32[1] = vneg_f32(v8).i32[1];
  *result = vmul_f32(v8, vcvt_f32_f64(vmulq_n_f64(*a3, *&a6)));
  *(result + 8) = vmul_f32(v8, vcvt_f32_f64(vmulq_n_f64(v6, *(&a6 + 1))));
  __asm { FMOV            V3.2S, #-1.0 }

  _D3 = vmla_f32(COERCE_FLOAT32X2_T(-_D3), vcvt_f32_f64(v7), v8);
  v15 = vrecpe_f32(HIDWORD(a6));
  v16 = vmul_f32(vrecps_f32(HIDWORD(a6), v15), v15);
  *a5.f32 = vmul_f32(v16, vrecps_f32(HIDWORD(a6), v16));
  *(result + 64) = vmul_f32(*a5.f32, *&a6).u32[0];
  _D2 = vmul_n_f32(*(result + 24), a5.f32[0]);
  *(result + 16) = _D3;
  *(result + 24) = _D2;
  _D3.i32[0] = *(result + 76);
  *(result + 72) = *(result + 72) * a5.f32[0];
  __asm { FCVT            S2, H3 }

  _S1 = vmuls_lane_f32(_D2.f32[0], *&a6, 1);
  __asm { FCVT            H1, S1 }

  *(result + 76) = LOWORD(_S1);
  if ((a4 - 6) < 4)
  {
    v19 = vmulq_n_f32(*(result + 32), a5.f32[0]);
LABEL_5:
    *(result + 32) = v19;
    return result;
  }

  if ((a4 - 3) < 3)
  {
    *(result + 32) = *(result + 32) * a5.f32[0];
    return result;
  }

  if (a4 == 10)
  {
    *a5.f32 = vdup_lane_s32(*a5.f32, 0);
    v19.i64[0] = vmulq_f32(*(result + 32), a5).u64[0];
    v19.i64[1] = *(result + 40);
    goto LABEL_5;
  }

  return result;
}

void RB::RenderFrame::will_render(RB::RenderFrame *this)
{
  v1 = *(this + 17);
  if (v1)
  {
    if ((*(this + 92) & 2) != 0)
    {
      operator new();
    }

    *(this + 17) = 0;
    v2 = v1;
    v4[0] = this;
    v4[1] = v1;
    do
    {
      *(v2[1] + 77) &= ~0x20u;
      v2 = *v2;
    }

    while (v2);
    RB::RenderFrame::will_render(void)::Encoder::operator()(v4);
    do
    {
      v3 = *v1;
      operator delete(v1);
      v1 = v3;
    }

    while (v3);
  }
}

void sub_195D15E3C(_Unwind_Exception *a1)
{
  do
  {
    v3 = *v1;
    operator delete(v1);
    v1 = v3;
  }

  while (v3);
  _Unwind_Resume(a1);
}

int32x2_t *RB::ImageTexture::texture(__IOSurface **this, const RB::RenderParams *a2, const RB::Fill::ImageData *a3, float64x2_t *a4, int a5)
{
  v5 = *this;
  if (!*this)
  {
    return 0;
  }

  v6 = a5;
  v10 = *(this + 2);
  if (v10 > 1u)
  {
    if (v10 == 2)
    {
      v17 = *this;

      return RBSurfaceGetTexture(v17);
    }

    else
    {
      if (v10 != 4)
      {
        return 0;
      }

      if ((v10 & 0x10000) != 0)
      {
        v18 = rb_color_space(BYTE1(v10));
        v16 = v18 & 0xFF00;
        v15 = v18;
      }

      else
      {
        v13 = [(__IOSurface *)*this pixelFormat];
        if ((RB::pixel_format_traits(v13, v14)[1] & 0x12) != 0)
        {
          v15 = 1;
        }

        else
        {
          v15 = 17;
        }

        v16 = 256;
      }

      return RBGetCachedMTLTexture(a2, v5, v15 | v16, a3, a4, v6);
    }
  }

  else
  {
    if (*(this + 2))
    {
      if (v10 == 1)
      {
        v11 = (v10 >> 15) & 2 | a5;

        return RBGetCachedIOSurfaceTexture(a2, v5, a3, a4, v11);
      }

      return 0;
    }

    return RBGetCachedImageTexture(a2, v5, a3, a4, a5);
  }
}

void RB::DisplayList::RenderState::RootTexture::finalize(id *this)
{

  RB::RenderTaskTexture::~RenderTaskTexture(this);
}

void RB::Texture::~Texture(RB::Texture *this)
{
  *this = &unk_1F0A38328;
  v2 = *(this + 3);
  if (v2)
  {
    v3 = v2[2] - 1;
    v2[2] = v3;
    if (!v3)
    {
      (*(*v2 + 8))(v2);
    }
  }

  JUMPOUT(0x19A8C09E0);
}

void *RB::BinPacker::append_bin(RB::BinPacker *this, uint64_t a2)
{
  v4 = *(this + 3);
  result = ((*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  if ((result + 4) > v4)
  {
    result = RB::Heap::alloc_slow(this, 0x20uLL, 7);
  }

  else
  {
    *(this + 2) = result + 4;
  }

  *result = 0;
  result[1] = a2;
  result[2] = 0;
  result[3] = *(this + 136);
  *(this + 136) = result;
  return result;
}

void RB::Fill::Color::prepare(unsigned __int8 *a1, unsigned __int8 a2, float32x4_t _Q0, double a4, uint16x4_t a5)
{
  v5 = _Q0.f32[0];
  if (COERCE_SHORT_FLOAT(*a1) == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0)) && COERCE_SHORT_FLOAT(HIWORD(*a1)) == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0)))
  {
    RB::Fill::Color::log_key_color(a1);
    v16 = 0x3C003C0000003C00;
    v18 = 0;
    v17 = 0;
    RB::Fill::Color::prepare(&v16, a2, v5);
  }

  else
  {
    v8 = a2;
    if (a1[13] == 1 && a1[12] != a2 || (*(a1 + 4) & 0x7FFF) != 0)
    {
      a5.i32[0] = *a1;
      a5.i16[2] = *(a1 + 2);
      v15 = a5;
      _H0 = *(a1 + 5);
      __asm { FCVT            S0, H0 }

      if (_S0 >= v5)
      {
        _S0 = v5;
      }

      if ((*(a1 + 5) & 0x7FFF) != 0)
      {
        v14 = _S0;
      }

      else
      {
        v14 = v5;
      }

      if (a1[13])
      {
        v8 = a1[12];
      }

      _Q0.i16[0] = *(a1 + 4);
      __asm { FCVT            S0, H0 }

      RB::ColorSpace::Conversion::Conversion(&v16, v8, a2, _Q0, v14);
      RB::ColorSpace::Conversion::operator()(&v16, v15);
    }
  }
}

uint64_t RB::image_filter_sampler(unsigned int a1)
{
  if (a1 > 4)
  {
    return 1;
  }

  else
  {
    return RB::image_filter_sampler(RB::ImageFilter)::sampler_states[a1];
  }
}

uint64_t RB::Rect::is_integral(float32x2_t *this, int32x2_t a2)
{
  v2 = vdup_lane_s32(a2, 0);
  v3 = vcge_f32(v2, vabd_f32(*this, vrndm_f32(*this)));
  if ((vpmin_u32(v3, v3).u32[0] & 0x80000000) == 0)
  {
    return 0;
  }

  v5 = vadd_f32(this[1], *this);
  v6 = vcge_f32(v2, vabd_f32(v5, vrndm_f32(v5)));
  return vpmin_u32(v6, v6).u32[0] >> 31;
}

uint64_t RB::RenderState::set_image(int *a1, uint64_t a2, char a3)
{
  v9 = a3;
  v4 = *(a2 + 80);
  result = RB::ColorSpace::transfer_type(&v9);
  if ((v4 & 0x1000) != 0 && ((v4 & 0xB80) != 0 || ((v7 = v4 >> 4, v7 != 2) ? (v8 = v7 == result) : (v8 = 0), !v8)))
  {
    v6 = 4096;
  }

  else
  {
    v6 = 0;
  }

  *a1 = *a1 & 0x3FFFF | ((v6 | v4 & 0xEFFF) << 18);
  return result;
}

RB::Filter::NarrowBlurKernel *RB::Filter::NarrowBlurKernel::get(RB::Filter::NarrowBlurKernel *this, float a2)
{
  if (fabsf(a2 + -12.25) >= 0.01)
  {
    if (fabsf(a2 + -27.562) >= 0.01)
    {
      if (fabsf(a2 + -49.0) >= 0.01)
      {
        if (*this != a2)
        {
          RB::Filter::NarrowBlurKernel::construct(this, a2);
        }

        return this;
      }

      else
      {

        return RB::Filter::NarrowBlurKernel::max_kernel_31(this);
      }
    }

    else
    {

      return RB::Filter::NarrowBlurKernel::max_kernel_23(this);
    }
  }

  else
  {

    return RB::Filter::NarrowBlurKernel::max_kernel_15(this);
  }
}

uint64_t RB::DisplayList::LayerTask::find_clip_index(RB::DisplayList::LayerTask *this, const RB::DisplayList::Item *a2)
{
  v2 = *(this + 24);
  v3 = *(this + 50);
  v4 = &v2[2 * v3];
  if (v3)
  {
    do
    {
      v5 = v3 >> 1;
      v6 = &v2[2 * (v3 >> 1)];
      v8 = *v6;
      v7 = v6 + 2;
      v3 += ~(v3 >> 1);
      if (v8 < a2)
      {
        v2 = v7;
      }

      else
      {
        v3 = v5;
      }
    }

    while (v3);
  }

  if (v2 != v4 && *v2 == a2)
  {
    v9 = *(v2 + 2);
    v11 = v9 & 0xFFFFFF00;
    v9 = v9;
    v10 = 0x100000000;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  return v10 | v11 | v9;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Color>::render(uint64_t a1, double a2, uint64_t a3, int32x2_t *a4, int a5, unsigned int a6)
{
  v6 = *(a1 + 48);
  v7.i64[0] = SLODWORD(a2);
  v7.i64[1] = SHIDWORD(a2);
  v8 = *(v6 + 16);
  v9 = vaddq_f64(*(v6 + 32), vcvtq_f64_s64(v7));
  v11[0] = *v6;
  v11[1] = v8;
  v11[2] = v9;
  LOWORD(v9.f64[0]) = *(a1 + 44);
  v12 = *(a1 + 112);
  v13 = *(a1 + 114);
  v14 = *(a1 + 118) * *v9.f64;
  v15 = *(a1 + 120);
  v16 = *(a1 + 124);
  return RB::render_primitive(a4, v11, (a1 + 64), &v12, a5, a6);
}

void *RB::Filter::RenderGroup::add_multipass_renderer(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, double a8, double a9)
{
  v15 = result;
  v16 = *(a2 + 1456);
  v17 = *(a3 + 168);
  v18 = *(a3 + 176);
  v19 = result[2];
  if (result[3] < (v19 + 1))
  {
    result = RB::vector<RB::Filter::RenderGroup::MultipassInfo,0ul,unsigned long>::reserve_slow((result + 1), v19 + 1);
    v19 = v15[2];
  }

  v20 = v15[1] + 80 * v19;
  *(v20 + 8) = v15[4];
  *(v20 + 16) = a4;
  *(v20 + 24) = v16;
  *(v20 + 32) = a8;
  *(v20 + 40) = v17;
  *(v20 + 48) = v18;
  *(v20 + 56) = a9;
  *(v20 + 64) = a5;
  *(v20 + 76) = a6;
  *(v20 + 77) = a7;
  *(v20 + 78) = 0;
  ++v15[2];
  *(v15 + 40) |= a5 != 0;
  return result;
}

void RB::Filter::RenderGroup::resolve(RB::Filter::RenderGroup *this, int32x2_t *a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = *(this + 2);
  if (v3)
  {
    v6 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 8;
    v7 = *(this + 1);
    v8 = v7 + 80 * v3;
    do
    {
      if (v6)
      {
        v9 = 0;
        v10 = v20;
        if (!v20)
        {
          v10 = v19;
        }

        v11 = *(v7 + 64);
        while (1)
        {
          v12 = *&v10[8 * v9];
          if (*(v12 + 64) == v11 && (!v11 || *(v12 + 76) == *(v7 + 76)))
          {
            break;
          }

          if (v6 == ++v9)
          {
            goto LABEL_11;
          }
        }

        *v7 = v12;
        *&v10[8 * v9] = v7;
      }

      else
      {
LABEL_11:
        *v7 = 0;
        v13 = v6 + 1;
        if (v22 < v6 + 1)
        {
          RB::vector<RBDevice *,8ul,unsigned long>::reserve_slow(v19, v13);
          v6 = v21;
          v13 = v21 + 1;
        }

        v14 = v20;
        if (!v20)
        {
          v14 = v19;
        }

        *&v14[8 * v6] = v7;
        v21 = v13;
        v6 = v13;
      }

      v7 += 80;
    }

    while (v7 != v8);
    v15 = v20;
    if (v20)
    {
      v16 = v20;
    }

    else
    {
      v16 = v19;
    }

    if (v6)
    {
      v17 = 8 * v6;
      do
      {
        v18 = *v16;
        if (*(*v16 + 64))
        {
          RB::Filter::RenderGroup::resolve_binary_subgroup(v15, a2, v18, a3);
        }

        else
        {
          RB::Filter::RenderGroup::resolve_unary_subgroup(v15, a2, v18, a3);
        }

        v16 += 8;
        v17 -= 8;
      }

      while (v17);
      v15 = v20;
    }

    if (v15)
    {
      free(v15);
    }
  }
}

void sub_195D1680C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  if (a17)
  {
    free(a17);
  }

  _Unwind_Resume(exception_object);
}

void RB::DisplayList::LayerItem::render(unint64_t a1, uint64_t a2, int32x2_t *a3, int a4, unsigned int a5, int32x2_t a6)
{
  v10 = *(a2 + 1456);
  if (v10)
  {
    v11 = *(v10 + 8);
    if (v11)
    {
      task = RB::DisplayList::LayerTask::find_task(v11, a1, 0);
      if (task)
      {
        v15.n128_u64[0] = *(task + 112);
        v19 = *(task + 120);
        v20 = *(a1 + 56);
        _H0 = *(a1 + 44);
        __asm { FCVT            S3, H0 }

        RB::DisplayList::LayerTask::render(task, a2, a3, v20, a4, a5, a6, v15, v19, _Q3, v17);
        return;
      }

      if ((*(a1 + 56) & 3) == 2)
      {
        _H0 = *(a1 + 44);
        __asm { FCVT            S6, H0 }

        v18.n128_u64[0] = a6;
        RB::DisplayList::Layer::blit(*(a1 + 48), a2, a3, 0, *(a1 + 56), 0, a4, a5, 0.0, 0, 0, 0.0, 0, v18, _S6, 0, *(*(a1 + 48) + 77) & 2);
        return;
      }
    }
  }

  if ((RB::may_discard_alpha(a5) & 1) == 0)
  {
    v28.i32[0] = 0;
    v29 = a3[22];
    v30 = vceq_s32(v29, 0x8000000080000000);
    v31 = vdup_lane_s32(vcgt_s32(v28, vpmin_u32(v30, v30)), 0);
    *v35.f32 = vbsl_s8(v31, 0x100000001000000, vcvt_f32_s32(a3[21]));
    *&v35.u32[2] = vbsl_s8(v31, vneg_f32(0x80000000800000), vcvt_f32_s32(v29));
    v36 = 0;
    v37 = 0;
    v38 = 1065353216;
    v39 = 0;
    v40 = 257;
    v41 = 0;
    v32[0] = xmmword_195E42760;
    v32[1] = xmmword_195E42770;
    v33 = 0;
    v34 = 0;
    v31.i16[0] = *(a1 + 44);
    v42 = 0;
    v43 = 0;
    v44 = *v31.i16 * COERCE_SHORT_FLOAT(0);
    v45 = 0;
    v46 = 0;
    RB::render_primitive(a3, v32, &v35, &v42, a4, a5);
  }
}

uint64_t RB::DisplayList::LayerTask::find_task(RB::DisplayList::LayerTask *this, unint64_t a2, unint64_t a3)
{
  v3 = *(this + 22);
  v4 = *(this + 46);
  v5 = &v3[3 * v4];
  if (v4)
  {
    do
    {
      v6 = v4 >> 1;
      v7 = &v3[3 * (v4 >> 1)];
      if (*v7 >= a2)
      {
        v8 = 1;
      }

      else
      {
        v8 = -1;
      }

      if (*v7 == a2)
      {
        v9 = v7[1];
        v10 = v9 == a3;
        v8 = v9 >= a3 ? 1 : -1;
        if (v10)
        {
          v8 = 0;
        }
      }

      v11 = v7 + 3;
      v4 += ~v6;
      if (v8 < 0)
      {
        v3 = v11;
      }

      else
      {
        v4 = v6;
      }
    }

    while (v4);
  }

  if (v3 != v5 && (*v3 == a2 ? (v12 = v3[1] == a3) : (v12 = 0), v12))
  {
    return v3[2];
  }

  else
  {
    return 0;
  }
}

int32x2_t RB::BinPacker::append_packed(RB::Heap *this, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v8 = *(this + 3);
  v9 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v9 + 48 > v8)
  {
    v9 = RB::Heap::alloc_slow(this, 0x30uLL, 7);
  }

  else
  {
    *(this + 2) = v9 + 48;
  }

  v10 = *(a2 + 16);
  *v9 = *a2;
  *(v9 + 16) = v10;
  *(v9 + 32) = a3;
  *(v9 + 36) = a4;
  v11 = *(this + 136);
  *(v9 + 40) = v11[2];
  v11[2] = v9;
  result = vmax_s32(*v11, vadd_s32(*a2, __PAIR64__(a4, a3)));
  *v11 = result;
  return result;
}

int32x2_t RB::Fill::set_image_globals(RB::Fill *this, RB::RenderPass *a2, RB::Device *a3, unint64_t a4, int *a5, const RB::RenderState *a6)
{
  RB::RenderFrame::alloc_buffer_region(*(*this + 16), a3, a4, 1, &v17);
  v10 = *a5;
  v11 = 140;
  v12 = 108;
  v13 = 84;
  if ((*a5 & 0x1C00000) == 0x800000)
  {
    v13 = 90;
  }

  if ((v10 & 0x2000000) == 0)
  {
    v12 = v13;
  }

  if ((v10 & 0x4000000) == 0)
  {
    v11 = v12;
  }

  if ((v10 & 0x8000000) != 0)
  {
    v14 = 160;
  }

  else
  {
    v14 = v11;
  }

  v15 = a3 + v14 - 160;
  memcpy((*(v17 + 7) + v18.i64[0]), a2, v15);
  RB::RenderFrame::commit_buffer_region_size(*(*this + 16), &v17, v15);
  *(this + 48) = RB::RenderFrame::buffer_id(*(*this + 16), v17);
  result = vmovn_s64(v18);
  *(this + 196) = result;
  return result;
}

uint64_t RB::RenderFrame::commit_buffer_region_size(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(a2 + 16) = a3;
  if (*(result + 168) == 1)
  {
    *(result + 160) = *(a2 + 8) + a3;
    *(result + 168) = 0;
  }

  return result;
}

void *RB::details::realloc_vector<unsigned long,80ul>(void *a1, unint64_t *a2, uint64_t a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = malloc_good_size(80 * a3);
    v6 = v5 / 0x50;
    if (v5 / 0x50 != *a2)
    {
      v7 = malloc_type_realloc(v4, v5, 0x92EAD613uLL);
      if (!v7)
      {
        RB::precondition_failure("allocation failure", v8);
      }

      v4 = v7;
      *a2 = v6;
    }
  }

  else
  {
    *a2 = 0;
    free(a1);
    return 0;
  }

  return v4;
}

void *RB::vector<RB::Filter::RenderGroup::MultipassInfo,0ul,unsigned long>::reserve_slow(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) + (*(a1 + 16) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 16) + (*(a1 + 16) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,80ul>(*a1, (a1 + 16), v3);
  *a1 = result;
  return result;
}

uint64_t RB::TextureCache::prepare(int32x2_t *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  if ((RB::TextureCache::prepare_from_cache(a1, a2, a4) & 1) == 0)
  {
    operator new();
  }

  return 1;
}

void sub_195D16FC0(_Unwind_Exception *exception_object)
{
  v3 = v1[2] - 1;
  v1[2] = v3;
  if (!v3)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void *RB::details::realloc_vector<unsigned int,48ul>(void *a1, _DWORD *a2, unsigned int a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = malloc_good_size(48 * a3);
    v6 = v5 / 0x30;
    if (*a2 != (v5 / 0x30))
    {
      v7 = malloc_type_realloc(v4, v5, 0x92EAD613uLL);
      if (!v7)
      {
        RB::precondition_failure("allocation failure", v8);
      }

      v4 = v7;
      *a2 = v6;
    }
  }

  else
  {
    *a2 = 0;
    free(a1);
    return 0;
  }

  return v4;
}

uint64_t RB::DisplayList::LayerTask::ClipInfo::ClipInfo(uint64_t a1, MTLPixelFormat a2, void *a3, int a4, double a5, double a6)
{
  *a1 = a3;
  *(a1 + 8) = -1;
  *(a1 + 16) = a5;
  *(a1 + 24) = a6;
  *(a1 + 32) = 0;
  *(a1 + 36) = a4;
  *(a1 + 40) = a4;
  *(a1 + 44) = 0;
  *(a1 + 46) = 0;
  if (a3)
  {
    v7 = a3;
    v8 = 0;
    v9 = *(a2 + 1072);
    do
    {
      v10 = v7[1] & 0xFFFFFFFFFFFFFFFELL;
      if ((*(v10 + 45) & 2) != 0)
      {
        if ((*(*(v10 + 48) + 76) & 2) != 0)
        {
          v11 = 1;
        }

        else
        {
          v11 = *(RB::pixel_format_traits(*v9, a2) + 5);
        }

        v8 += v11;
        *(a1 + 44) = v8;
      }

      v7 = *v7;
    }

    while (v7);
  }

  return a1;
}

unint64_t _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZNK2RB11DisplayList5Layer9make_taskERNS3_11RenderStateENS2_6BoundsERKS7_PS8_jfPKNS3_4ItemEPKDv4_fE3__0PNS_4pairISD_jEELb0EEEvT1_SM_T0_NS_15iterator_traitsISM_E15difference_typeEb(unint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 4;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v83 = *(a2 - 16);
        v84 = *v8;
        if (v83 >= *v8)
        {
          return result;
        }

        *v8 = v83;
        *(a2 - 16) = v84;
        goto LABEL_108;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v89 = *(v8 + 16);
      v90 = *v8;
      v91 = *(v8 + 32);
      if (v89 >= *v8)
      {
        if (v91 < v89)
        {
          *(v8 + 16) = v91;
          *(v8 + 32) = v89;
          v142 = *(v8 + 24);
          v143 = *(v8 + 40);
          *(v8 + 24) = v143;
          *(v8 + 40) = v142;
          if (v91 < v90)
          {
            *v8 = v91;
            *(v8 + 16) = v90;
            v144 = *(v8 + 8);
            *(v8 + 8) = v143;
            *(v8 + 24) = v144;
          }

          goto LABEL_193;
        }
      }

      else
      {
        if (v91 < v89)
        {
          *v8 = v91;
          *(v8 + 32) = v90;
          v92 = *(v8 + 8);
          *(v8 + 8) = *(v8 + 40);
          goto LABEL_191;
        }

        *v8 = v89;
        *(v8 + 16) = v90;
        v92 = *(v8 + 8);
        *(v8 + 8) = *(v8 + 24);
        *(v8 + 24) = v92;
        if (v91 < v90)
        {
          *(v8 + 16) = v91;
          *(v8 + 32) = v90;
          *(v8 + 24) = *(v8 + 40);
LABEL_191:
          *(v8 + 40) = v92;
          v89 = v90;
LABEL_193:
          v155 = *(a2 - 16);
          if (v155 >= v89)
          {
            return result;
          }

          *(v8 + 32) = v155;
          *(a2 - 16) = v89;
          v156 = *(v8 + 40);
          *(v8 + 40) = *(a2 - 8);
          *(a2 - 8) = v156;
          v157 = *(v8 + 32);
          v158 = *(v8 + 16);
          if (v157 >= v158)
          {
            return result;
          }

          *(v8 + 16) = v157;
          *(v8 + 32) = v158;
          v159 = *(v8 + 24);
          v141 = *(v8 + 40);
          *(v8 + 24) = v141;
          *(v8 + 40) = v159;
          v160 = *v8;
          if (v157 >= *v8)
          {
            return result;
          }

          *v8 = v157;
          *(v8 + 16) = v160;
          v140 = *(v8 + 8);
LABEL_197:
          *(v8 + 8) = v141;
          *(v8 + 24) = v140;
          return result;
        }
      }

      v89 = v91;
      goto LABEL_193;
    }

    if (v9 == 5)
    {

      return _ZNSt3__17__sort5B8nn200100INS_17_ClassicAlgPolicyERZNK2RB11DisplayList5Layer9make_taskERNS3_11RenderStateENS2_6BoundsERKS7_PS8_jfPKNS3_4ItemEPKDv4_fE3__0PNS_4pairISD_jEELi0EEEvT1_SM_SM_SM_SM_T0_(v8, (v8 + 16), (v8 + 32), (v8 + 48), (a2 - 16));
    }

LABEL_10:
    if (v9 <= 23)
    {
      v93 = v8 + 16;
      v95 = v8 == a2 || v93 == a2;
      if (a4)
      {
        if (!v95)
        {
          v96 = 0;
          v97 = v8;
          do
          {
            v98 = v93;
            v99 = *(v97 + 16);
            v100 = *v97;
            if (v99 < *v97)
            {
              v101 = *(v97 + 24);
              v102 = v96;
              while (1)
              {
                v103 = v8 + v102;
                *(v103 + 16) = v100;
                *(v103 + 24) = *(v8 + v102 + 8);
                if (!v102)
                {
                  break;
                }

                v100 = *(v103 - 16);
                v102 -= 16;
                if (v99 >= v100)
                {
                  v104 = v8 + v102 + 16;
                  goto LABEL_127;
                }
              }

              v104 = v8;
LABEL_127:
              *v104 = v99;
              *(v104 + 8) = v101;
            }

            v93 = v98 + 16;
            v96 += 16;
            v97 = v98;
          }

          while (v98 + 16 != a2);
        }
      }

      else if (!v95)
      {
        v145 = (v8 + 24);
        do
        {
          v146 = v93;
          v147 = *(v7 + 16);
          v148 = *v7;
          if (v147 < *v7)
          {
            v149 = *(v7 + 24);
            v150 = v145;
            do
            {
              v151 = v150;
              *(v150 - 1) = v148;
              v152 = *(v150 - 4);
              v150 -= 4;
              *v151 = v152;
              v148 = *(v151 - 5);
            }

            while (v147 < v148);
            *(v150 - 1) = v147;
            *v150 = v149;
          }

          v93 = v146 + 16;
          v145 += 4;
          v7 = v146;
        }

        while (v146 + 16 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v105 = (v9 - 2) >> 1;
        v106 = v105;
        do
        {
          v107 = v106;
          if (v105 >= v106)
          {
            v108 = (2 * v106) | 1;
            v109 = v8 + 16 * v108;
            if (2 * v107 + 2 >= v9)
            {
              v110 = *v109;
            }

            else
            {
              v110 = *(v109 + 16);
              v111 = *v109 >= v110;
              if (*v109 < v110)
              {
                v109 += 16;
              }

              else
              {
                v110 = *v109;
              }

              if (!v111)
              {
                v108 = 2 * v107 + 2;
              }
            }

            v112 = v8 + 16 * v107;
            v113 = *v112;
            if (v110 >= *v112)
            {
              v114 = *(v112 + 8);
              do
              {
                v115 = v112;
                v112 = v109;
                *v115 = v110;
                *(v115 + 8) = *(v109 + 8);
                if (v105 < v108)
                {
                  break;
                }

                v116 = (2 * v108) | 1;
                v109 = v8 + 16 * v116;
                v108 = 2 * v108 + 2;
                if (v108 >= v9)
                {
                  v110 = *v109;
                  v108 = v116;
                }

                else
                {
                  v110 = *v109;
                  result = v109 + 16;
                  if (*v109 >= *(v109 + 16))
                  {
                    v108 = v116;
                  }

                  else
                  {
                    v110 = *(v109 + 16);
                    v109 += 16;
                  }
                }
              }

              while (v110 >= v113);
              *v112 = v113;
              *(v112 + 8) = v114;
            }
          }

          v106 = v107 - 1;
        }

        while (v107);
        do
        {
          v117 = 0;
          v118 = *v8;
          v119 = *(v8 + 8);
          v120 = v8;
          do
          {
            v121 = v120 + 16 * v117;
            v122 = v121 + 16;
            v123 = (2 * v117) | 1;
            v117 = 2 * v117 + 2;
            if (v117 >= v9)
            {
              v124 = *v122;
              v117 = v123;
            }

            else
            {
              v126 = *(v121 + 32);
              v125 = v121 + 32;
              v124 = v126;
              result = *(v125 - 16);
              v127 = result >= v126;
              if (result < v126)
              {
                v122 = v125;
              }

              else
              {
                v124 = *(v125 - 16);
              }

              if (v127)
              {
                v117 = v123;
              }
            }

            *v120 = v124;
            *(v120 + 8) = *(v122 + 8);
            v120 = v122;
          }

          while (v117 <= ((v9 - 2) >> 1));
          if (v122 == a2 - 16)
          {
            *v122 = v118;
            *(v122 + 8) = v119;
          }

          else
          {
            *v122 = *(a2 - 16);
            *(v122 + 8) = *(a2 - 8);
            *(a2 - 16) = v118;
            *(a2 - 8) = v119;
            v128 = (v122 - v8 + 16) >> 4;
            v129 = v128 < 2;
            v130 = v128 - 2;
            if (!v129)
            {
              v131 = v130 >> 1;
              v132 = v8 + 16 * v131;
              v133 = *v132;
              v134 = *v122;
              if (*v132 < *v122)
              {
                v135 = *(v122 + 8);
                do
                {
                  v136 = v122;
                  v122 = v132;
                  *v136 = v133;
                  *(v136 + 8) = *(v132 + 8);
                  if (!v131)
                  {
                    break;
                  }

                  v131 = (v131 - 1) >> 1;
                  v132 = v8 + 16 * v131;
                  v133 = *v132;
                }

                while (*v132 < v134);
                *v122 = v134;
                *(v122 + 8) = v135;
              }
            }
          }

          a2 -= 16;
          v129 = v9-- <= 2;
        }

        while (!v129);
      }

      return result;
    }

    v10 = v8 + 16 * (v9 >> 1);
    v11 = v10;
    v12 = *(a2 - 16);
    if (v9 < 0x81)
    {
      v16 = *v8;
      v17 = *v11;
      if (*v8 >= *v11)
      {
        if (v12 < v16)
        {
          *v8 = v12;
          *(a2 - 16) = v16;
          v22 = *(v8 + 8);
          *(v8 + 8) = *(a2 - 8);
          *(a2 - 8) = v22;
          v23 = *v11;
          if (*v8 < *v11)
          {
            *v11 = *v8;
            *v8 = v23;
            v24 = *(v11 + 8);
            *(v11 + 8) = *(v8 + 8);
            *(v8 + 8) = v24;
          }
        }
      }

      else if (v12 >= v16)
      {
        *v11 = v16;
        *v8 = v17;
        v35 = *(v11 + 8);
        *(v11 + 8) = *(v8 + 8);
        *(v8 + 8) = v35;
        v36 = *(a2 - 16);
        if (v36 < v17)
        {
          *v8 = v36;
          *(a2 - 16) = v17;
          *(v8 + 8) = *(a2 - 8);
          *(a2 - 8) = v35;
        }
      }

      else
      {
        *v11 = v12;
        *(a2 - 16) = v17;
        v18 = *(v11 + 8);
        *(v11 + 8) = *(a2 - 8);
        *(a2 - 8) = v18;
      }

      goto LABEL_56;
    }

    v13 = *v10;
    v14 = *v8;
    if (*v10 >= *v8)
    {
      if (v12 < v13)
      {
        *v10 = v12;
        *(a2 - 16) = v13;
        v19 = *(v10 + 8);
        *(v10 + 8) = *(a2 - 8);
        *(a2 - 8) = v19;
        v20 = *v8;
        if (*v10 < *v8)
        {
          *v8 = *v10;
          *v10 = v20;
          v21 = *(v8 + 8);
          *(v8 + 8) = *(v10 + 8);
          *(v10 + 8) = v21;
        }
      }
    }

    else if (v12 >= v13)
    {
      *v8 = v13;
      *v10 = v14;
      v25 = *(v8 + 8);
      *(v8 + 8) = *(v10 + 8);
      *(v10 + 8) = v25;
      v26 = *(a2 - 16);
      if (v26 < v14)
      {
        *v10 = v26;
        *(a2 - 16) = v14;
        *(v10 + 8) = *(a2 - 8);
        *(a2 - 8) = v25;
      }
    }

    else
    {
      *v8 = v12;
      *(a2 - 16) = v14;
      v15 = *(v8 + 8);
      *(v8 + 8) = *(a2 - 8);
      *(a2 - 8) = v15;
    }

    v27 = v10 - 16;
    v28 = *(v10 - 16);
    v29 = *(v8 + 16);
    v30 = *(a2 - 32);
    if (v28 >= v29)
    {
      if (v30 < v28)
      {
        *v27 = v30;
        *(a2 - 32) = v28;
        v32 = *(v10 - 8);
        *(v10 - 8) = *(a2 - 24);
        *(a2 - 24) = v32;
        v33 = *(v8 + 16);
        if (*v27 < v33)
        {
          *(v8 + 16) = *v27;
          *v27 = v33;
          v34 = *(v8 + 24);
          *(v8 + 24) = *(v10 - 8);
          *(v10 - 8) = v34;
        }
      }
    }

    else if (v30 >= v28)
    {
      *(v8 + 16) = v28;
      *v27 = v29;
      v37 = *(v8 + 24);
      *(v8 + 24) = *(v10 - 8);
      *(v10 - 8) = v37;
      v38 = *(a2 - 32);
      if (v38 < v29)
      {
        *v27 = v38;
        *(a2 - 32) = v29;
        *(v10 - 8) = *(a2 - 24);
        *(a2 - 24) = v37;
      }
    }

    else
    {
      *(v8 + 16) = v30;
      *(a2 - 32) = v29;
      v31 = *(v8 + 24);
      *(v8 + 24) = *(a2 - 24);
      *(a2 - 24) = v31;
    }

    v41 = *(v10 + 16);
    v39 = v10 + 16;
    v40 = v41;
    v42 = *(v8 + 32);
    v43 = *(a2 - 48);
    if (v41 >= v42)
    {
      if (v43 < v40)
      {
        *v39 = v43;
        *(a2 - 48) = v40;
        v45 = *(v39 + 8);
        *(v39 + 8) = *(a2 - 40);
        *(a2 - 40) = v45;
        v46 = *(v8 + 32);
        if (*v39 < v46)
        {
          *(v8 + 32) = *v39;
          *v39 = v46;
          v47 = *(v8 + 40);
          *(v8 + 40) = *(v39 + 8);
          *(v39 + 8) = v47;
        }
      }
    }

    else if (v43 >= v40)
    {
      *(v8 + 32) = v40;
      *v39 = v42;
      v48 = *(v8 + 40);
      *(v8 + 40) = *(v39 + 8);
      *(v39 + 8) = v48;
      v49 = *(a2 - 48);
      if (v49 < v42)
      {
        *v39 = v49;
        *(a2 - 48) = v42;
        *(v39 + 8) = *(a2 - 40);
        *(a2 - 40) = v48;
      }
    }

    else
    {
      *(v8 + 32) = v43;
      *(a2 - 48) = v42;
      v44 = *(v8 + 40);
      *(v8 + 40) = *(a2 - 40);
      *(a2 - 40) = v44;
    }

    v50 = *v11;
    v51 = *v27;
    v52 = *v39;
    if (*v11 >= *v27)
    {
      if (v52 >= v50)
      {
        goto LABEL_51;
      }

      *v11 = v52;
      *v39 = v50;
      v54 = *(v11 + 8);
      v55 = *(v39 + 8);
      *(v11 + 8) = v55;
      *(v39 + 8) = v54;
      if (v52 >= v51)
      {
        goto LABEL_54;
      }

      *v27 = v52;
      *v11 = v51;
      v56 = *(v27 + 8);
      *(v27 + 8) = v55;
      *(v11 + 8) = v56;
    }

    else
    {
      if (v52 < v50)
      {
        *v27 = v52;
        *v39 = v51;
        v53 = *(v27 + 8);
        *(v27 + 8) = *(v39 + 8);
        *(v39 + 8) = v53;
LABEL_51:
        v51 = v50;
        goto LABEL_55;
      }

      *v27 = v50;
      *v11 = v51;
      v57 = *(v27 + 8);
      *(v27 + 8) = *(v11 + 8);
      *(v11 + 8) = v57;
      if (v52 < v51)
      {
        *v11 = v52;
        *v39 = v51;
        *(v11 + 8) = *(v39 + 8);
        *(v39 + 8) = v57;
LABEL_54:
        v51 = v52;
      }
    }

LABEL_55:
    v58 = *v8;
    *v8 = v51;
    *v11 = v58;
    LODWORD(v58) = *(v8 + 8);
    *(v8 + 8) = *(v11 + 8);
    *(v11 + 8) = v58;
LABEL_56:
    --a3;
    v59 = *v8;
    if ((a4 & 1) != 0 || *(v8 - 16) < v59)
    {
      v60 = 0;
      v61 = *(v8 + 8);
      do
      {
        v62 = *(v8 + v60 + 16);
        v60 += 16;
      }

      while (v62 < v59);
      v63 = v8 + v60;
      v64 = a2;
      if (v60 == 16)
      {
        v64 = a2;
        do
        {
          if (v63 >= v64)
          {
            break;
          }

          v66 = *(v64 - 2);
          v64 -= 2;
        }

        while (v66 >= v59);
      }

      else
      {
        do
        {
          v65 = *(v64 - 2);
          v64 -= 2;
        }

        while (v65 >= v59);
      }

      if (v63 >= v64)
      {
        v8 += v60;
      }

      else
      {
        v67 = *v64;
        v8 += v60;
        v68 = v64;
        do
        {
          *v8 = v67;
          *v68 = v62;
          v69 = *(v8 + 8);
          *(v8 + 8) = *(v68 + 2);
          *(v68 + 2) = v69;
          do
          {
            v70 = *(v8 + 16);
            v8 += 16;
            v62 = v70;
          }

          while (v70 < v59);
          do
          {
            v71 = *(v68 - 2);
            v68 -= 2;
            v67 = v71;
          }

          while (v71 >= v59);
        }

        while (v8 < v68);
      }

      if (v8 - 16 != v7)
      {
        *v7 = *(v8 - 16);
        *(v7 + 8) = *(v8 - 8);
      }

      *(v8 - 16) = v59;
      *(v8 - 8) = v61;
      if (v63 < v64)
      {
        goto LABEL_79;
      }

      v72 = _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZNK2RB11DisplayList5Layer9make_taskERNS3_11RenderStateENS2_6BoundsERKS7_PS8_jfPKNS3_4ItemEPKDv4_fE3__0PNS_4pairISD_jEEEEbT1_SM_T0_(v7, v8 - 16);
      result = _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZNK2RB11DisplayList5Layer9make_taskERNS3_11RenderStateENS2_6BoundsERKS7_PS8_jfPKNS3_4ItemEPKDv4_fE3__0PNS_4pairISD_jEEEEbT1_SM_T0_(v8, a2);
      if (result)
      {
        a2 = v8 - 16;
        if (!v72)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v72)
      {
LABEL_79:
        result = _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZNK2RB11DisplayList5Layer9make_taskERNS3_11RenderStateENS2_6BoundsERKS7_PS8_jfPKNS3_4ItemEPKDv4_fE3__0PNS_4pairISD_jEELb0EEEvT1_SM_T0_NS_15iterator_traitsISM_E15difference_typeEb(v7, v8 - 16, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      if (v59 >= *(a2 - 16))
      {
        v74 = v8 + 16;
        do
        {
          v8 = v74;
          if (v74 >= a2)
          {
            break;
          }

          v74 += 16;
        }

        while (v59 >= *v8);
      }

      else
      {
        do
        {
          v73 = *(v8 + 16);
          v8 += 16;
        }

        while (v59 >= v73);
      }

      v75 = a2;
      if (v8 < a2)
      {
        v75 = a2;
        do
        {
          v76 = *(v75 - 16);
          v75 -= 16;
        }

        while (v59 < v76);
      }

      v77 = *(v7 + 8);
      if (v8 < v75)
      {
        v78 = *v8;
        v79 = *v75;
        do
        {
          *v8 = v79;
          *v75 = v78;
          v80 = *(v8 + 8);
          *(v8 + 8) = *(v75 + 8);
          *(v75 + 8) = v80;
          do
          {
            v81 = *(v8 + 16);
            v8 += 16;
            v78 = v81;
          }

          while (v59 >= v81);
          do
          {
            v82 = *(v75 - 16);
            v75 -= 16;
            v79 = v82;
          }

          while (v59 < v82);
        }

        while (v8 < v75);
      }

      if (v8 - 16 != v7)
      {
        *v7 = *(v8 - 16);
        *(v7 + 8) = *(v8 - 8);
      }

      a4 = 0;
      *(v8 - 16) = v59;
      *(v8 - 8) = v77;
    }
  }

  v85 = *(v8 + 16);
  v86 = *v8;
  v87 = *(a2 - 16);
  if (v85 >= *v8)
  {
    if (v87 >= v85)
    {
      return result;
    }

    *(v8 + 16) = v87;
    *(a2 - 16) = v85;
    v137 = *(v8 + 24);
    *(v8 + 24) = *(a2 - 8);
    *(a2 - 8) = v137;
    v138 = *(v8 + 16);
    v139 = *v8;
    if (v138 >= *v8)
    {
      return result;
    }

    *v8 = v138;
    *(v8 + 16) = v139;
    v140 = *(v8 + 8);
    v141 = *(v8 + 24);
    goto LABEL_197;
  }

  if (v87 < v85)
  {
    *v8 = v87;
    *(a2 - 16) = v86;
LABEL_108:
    v88 = *(v8 + 8);
    *(v8 + 8) = *(a2 - 8);
    *(a2 - 8) = v88;
    return result;
  }

  *v8 = v85;
  *(v8 + 16) = v86;
  v153 = *(v8 + 8);
  *(v8 + 8) = *(v8 + 24);
  *(v8 + 24) = v153;
  v154 = *(a2 - 16);
  if (v154 < v86)
  {
    *(v8 + 16) = v154;
    *(a2 - 16) = v86;
    *(v8 + 24) = *(a2 - 8);
    *(a2 - 8) = v153;
  }

  return result;
}

float RB::RenderPass::fill(uint64_t a1, float32x4_t a2)
{
  *&v10[12] = vcvt_f16_f32(a2);
  RB::Coverage::set_plane(&v9, a1, *&v10[12]);
  RB::RenderFrame::alloc_buffer_region(*(*a1 + 16), 0x24, 4uLL, 0, &v11);
  v3 = v11;
  if (v11)
  {
    v4 = *(v11 + 7) + v12.i64[0];
    v5 = v9;
    v6 = *v10;
    *(v4 + 32) = *&v10[16];
    *v4 = v5;
    *(v4 + 16) = v6;
  }

  else
  {
    v11 = 0;
    v12 = 0uLL;
  }

  *(a1 + 192) = RB::RenderFrame::buffer_id(*(*a1 + 16), v3);
  *(a1 + 196) = vmovn_s64(v12);
  if (*(a1 + 132) == 2)
  {
    v7 = 131074;
  }

  else
  {
    v7 = 2;
  }

  RB::RenderPass::draw_indexed_primitives(a1, v7, 4, **(*a1 + 16) + 136, 4uLL, 1uLL, 0, *(a1 + 104));
  result = *(a1 + 120) + 1.0;
  *(a1 + 120) = result;
  return result;
}

RB::DisplayList::Layer *RB::DisplayList::RenderState::copy_layer(RB::DisplayList::RenderState *this, const RB::DisplayList::Layer *a2, const RB::AffineTransform *a3)
{
  v13[12] = *MEMORY[0x1E69E9840];
  v5 = (this + 1432);
  v6 = *(this + 179);
  if (!v6)
  {
    operator new();
  }

  v7 = RB::DisplayList::Layer::copy(a2, v6, 0);
  if (a3)
  {
    RB::DisplayList::CachedTransform::CachedTransform(&v10, *v5, a3, 0, 0);
    RB::DisplayList::Layer::apply_transform(v7, &v10);
    RB::UntypedTable::~UntypedTable(v13);
    RB::UntypedTable::~UntypedTable(&v12);
    RB::Heap::~Heap(&v11);
  }

  v8 = *(*v5 + 8);
  *(v7 + 1) = *(v8 + 312);
  *(v8 + 312) = v7;
  return v7;
}

void RB::Filter::NarrowBlurKernel::construct(RB::Filter::NarrowBlurKernel *this, float a2)
{
  v45[1] = *MEMORY[0x1E69E9840];
  __asm { FMOV            V1.2D, #1.0 }

  v34 = _Q1;
  v37 = vdivq_f64(_Q1, vdupq_lane_s64(COERCE__INT64((a2 + a2)), 0));
  v9 = 0x100000000;
  v10 = xmmword_195E45760;
  v11 = &v44;
  v12 = 0uLL;
  v13 = 16;
  v35 = vdupq_n_s64(2uLL);
  v36 = vdupq_n_s64(0xFuLL);
  do
  {
    v41 = v10;
    v42 = v12;
    v40 = vmovn_s64(vcgtq_u64(v36, v10)).u8[0];
    v14 = vadd_s32(v9, 0xE0000000ELL);
    v15.i64[0] = v14.i32[0];
    v15.i64[1] = v14.i32[1];
    v16 = vcvtq_f64_s64(v15);
    v17 = vsub_s32(0xF0000000FLL, v9);
    v15.i64[0] = v17.u32[0];
    v15.i64[1] = v17.u32[1];
    __x = vmulq_f64(vmulq_f64(vcvtq_f64_u64(v15), v16), v37);
    v39 = exp(__x.f64[1]);
    v18.f64[0] = exp(__x.f64[0]);
    v18.f64[1] = v39;
    if (v40)
    {
      *(v11 - 1) = v18.f64[0];
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFuLL), *&v41)).i32[1])
    {
      *v11 = v39;
    }

    v12 = vaddq_f64(v18, v42);
    v10 = vaddq_s64(v41, v35);
    v9 = vadd_s32(v9, 0x200000002);
    v11 += 2;
    v13 -= 2;
  }

  while (v13);
  v19 = 0;
  v45[0] = 1.0;
  v20 = vdivq_f64(v34, vdupq_lane_s64(COERCE__INT64(vaddvq_f64(vbslq_s8(vcgtq_u64(vdupq_n_s64(0xFuLL), v41), v12, v42)) * 2.0 + 1.0), 0));
  do
  {
    *&v43[v19] = vmulq_f64(*&v43[v19], v20);
    v19 += 16;
  }

  while (v19 != 128);
  v21 = 0;
  v22 = 0;
  v23 = v45;
  v45[0] = v45[0] * 0.5;
  v24 = (this + 36);
  v25 = 0.0;
  do
  {
    v27 = v22 > 3 && a2 <= 12.25;
    v28 = v22 <= 5 || a2 > 27.562;
    v29 = *(v23 - 1);
    v30 = v29 + *v23;
    *(v24 - 8) = v30;
    *&v29 = v29 / v30 + v21;
    *v24 = *&v29;
    v31 = !v28;
    if (v30 < 0.002 || v27 || (v31 & 1) != 0)
    {
      *v24 = 0.0;
      *(v24 - 8) = 0.0;
      v30 = 0.0;
    }

    ++v22;
    v25 = v25 + v30;
    ++v24;
    v23 -= 2;
    v21 += 2;
  }

  while (v22 != 8);
  v32 = 0.5 - v25 + *(this + 1);
  *(this + 1) = v32;
  if (*(this + 7) <= 0.0)
  {
    if (*(this + 5) <= 0.0)
    {
      if (*(this + 3) <= 0.0)
      {
        v33 = 0x300000007;
      }

      else
      {
        v33 = 0x40000000FLL;
      }
    }

    else
    {
      v33 = 0x500000017;
    }
  }

  else
  {
    v33 = 0x60000001FLL;
  }

  *(this + 68) = v33;
  *this = a2;
}

void RB::RenderFrame::QueueDeleter::operator()(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) >= 0x41u)
  {
    free(*(a2 + 8));
  }

  RB::Heap::~Heap((a2 + 16));

  free(a2);
}

float32x2_t RB::Rect::translate(float32x2_t *this, float32x2_t result, float32_t a3)
{
  v3 = this[1];
  v4 = vclez_f32(v3);
  if ((vpmax_u32(v4, v4).u32[0] & 0x80000000) == 0)
  {
    v5 = vceq_f32(v3, vneg_f32(0x80000000800000));
    if ((vpmax_u32(v5, v5).u32[0] & 0x80000000) == 0)
    {
      result.f32[1] = a3;
      result = vadd_f32(*this, result);
      *this = result;
    }
  }

  return result;
}

void RB::DisplayList::ItemClip::~ItemClip(RB::DisplayList::ItemClip *this)
{
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (**v2)(v2);
  }
}

{
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (**v2)(v2);
  }

  JUMPOUT(0x19A8C09E0);
}

void RB::DisplayList::DetachedLayerItem::~DetachedLayerItem(RB::DisplayList::DetachedLayerItem *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    if (atomic_fetch_add_explicit((v1 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      RB::DisplayList::DetachedLayerItem::~DetachedLayerItem(v1);
    }
  }
}

{
  v1 = *(this + 7);
  if (v1 && atomic_fetch_add_explicit((v1 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    RB::DisplayList::DetachedLayerItem::~DetachedLayerItem(v1);
  }

  JUMPOUT(0x19A8C09E0);
}

void RB::Drawable::end_frame(RB::Drawable *this, double a2)
{
  *(this + 4) = *(this + 4) + a2;
  os_unfair_lock_lock(this + 5);
  v4 = *(this + 5);
  if (v4)
  {
    v5 = *(v4 + 24);
    if ((*v4 & 2) != 0)
    {
      if (v5)
      {
        *(v4 + 40) = *(v4 + 40) + a2;
        v6 = *(v4 + 112);
        if (v6 > a2)
        {
          v6 = a2;
        }

        *(v4 + 112) = v6;
        v7 = *(v4 + 184);
        if (v7 < a2)
        {
          v7 = a2;
        }

        *(v4 + 184) = v7;
        *(v4 + 256) = a2 + (*(v4 + 256) - a2) * *(v4 + 8);
      }

      else
      {
        *(v4 + 40) = a2;
        *(v4 + 112) = a2;
        *(v4 + 184) = a2;
        *(v4 + 256) = a2;
      }
    }

    *(v4 + 24) = v5 + 1;
    v8 = *(this + 6);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    v8 = 0;
  }

  os_unfair_lock_unlock(this + 5);
  v9 = *(this + 3);
  if (v9)
  {
    dispatch_semaphore_signal(v9);
  }

  if (v8)
  {
    RB::Drawable::StatisticsHandler::operator()(v8);
    if (atomic_fetch_add_explicit((v8 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      RB::Drawable::end_frame(v8);
    }
  }
}

void sub_195D184F8(_Unwind_Exception *exception_object)
{
  if (atomic_fetch_add_explicit((v1 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    RB::Drawable::end_frame(v1);
  }

  _Unwind_Resume(exception_object);
}

RB::Function *RB::Filter::Custom::render(int *a1, MTLPixelFormat a2, double a3, uint64_t a4, uint64_t a5)
{
  v9 = a1 + 2;
  v8 = *(a1 + 1);
  v10 = v9 + 1;
  v11 = v9[18];
  if (v9[17])
  {
    v10 = v9[17];
  }

  v12 = *(*a2 + 16);
  *v46 = v10;
  *&v46[8] = v11;
  result = RB::CustomShader::Function::function(v8, v12, 1, v46);
  if (result)
  {
    v14 = result;
    RB::RenderFrame::add_function(*(*a2 + 16), result);
    result = RB::RenderFrame::alloc_buffer_region(*(*a2 + 16), (*(v14 + 28) + 52), 4uLL, 0, &v44);
    if (v44)
    {
      v16 = *(v44 + 7) + v45.i64[0];
      RB::Coverage::set_plane(v16, a2, v15);
      v17 = *(a1 + 12);
      *v46 = *(a1 + 11);
      *&v46[16] = v17;
      v47 = *(a1 + 13);
      v18 = RB::AffineTransform::invert(v46);
      if (v18)
      {
        v19 = v46;
      }

      else
      {
        v19 = (a1 + 44);
      }

      v20 = *v19;
      v21 = (a1 + 48);
      if (v18)
      {
        v21 = &v46[16];
      }

      v22 = *v21;
      v23 = (a1 + 52);
      if (v18)
      {
        v23 = &v47;
      }

      v24 = *(a2 + 104);
      v25.i64[0] = v24;
      v25.i64[1] = SHIDWORD(v24);
      __asm { FMOV            V6.2D, #0.5 }

      v31 = vmulq_f64(vcvtq_f64_s64(v25), _Q6);
      v32 = vmulq_n_f64(v20, *v31.i64);
      v33 = vmlaq_f64(vaddq_f64(vmlaq_n_f64(*v23, v20, -LODWORD(a3)), v32), v22, vaddq_f64(vdupq_laneq_s64(v31, 1), vdupq_lane_s64(COERCE__INT64(-HIDWORD(a3)), 0)));
      *(v16 + 28) = vcvt_f32_f64(v32);
      *(v16 + 36) = vcvt_f32_f64(vmulq_n_f64(v22, -*&v31.i64[1]));
      *(v16 + 44) = vcvt_f32_f64(v33);
      v34 = *(a2 + 128);
      v35 = *a1;
      *v46 = 0;
      *&v46[8] = 0;
      if (v35)
      {
        v36 = v34 & 0xF;
      }

      else
      {
        v36 = v34;
      }

      *&v46[16] = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      result = RB::CustomShader::Closure::marshal_args(v9, a2, v14, v36, a1 + 14, v16 + 52, v46, &v41);
      if (result)
      {
        *(a2 + 228) = RB::RenderFrame::buffer_id(*(*a2 + 16), *v46);
        *(a2 + 232) = vmovn_s64(*&v46[8]);
        *(a2 + 192) = RB::RenderFrame::buffer_id(*(*a2 + 16), v44);
        *(a2 + 196) = vmovn_s64(v45);
        RB::RenderPass::set_texture(a2, 0, v41, MTLPixelFormatInvalid);
        RB::RenderPass::set_texture(a2, 1, v42, MTLPixelFormatInvalid);
        RB::RenderPass::set_texture(a2, 2, v43, MTLPixelFormatInvalid);
        v40 = 0;
        v37 = (4 * (v40 & 1)) | v40 & 0xFFFFFF83 | (2 * *a1) & 0x10;
        v38 = RB::Function::Info::texture_count((v14 + 40));
        result = RB::RenderPass::draw_indexed_primitives(a2, (a5 & 0x3FFFF | ((v37 | (32 * (v38 & 3))) << 18) | ((BYTE4(a5) & 0x3Fu | (*(v14 + 1) << 6)) << 32)), 4, **(*a2 + 16) + 136, 4uLL, 1uLL, 0xC0000001C0000001, 0x7FFFFFFF7FFFFFFFLL);
        *(a2 + 248) = 0;
        *(a2 + 252) = 0;
        *(a2 + 256) = 0;
        *(a2 + 260) = 0;
        *(a2 + 236) = 0;
        *(a2 + 228) = 0;
        *(a2 + 244) = 0;
      }
    }
  }

  return result;
}

char *RB::CustomShader::Function::function(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  result = RB::Device::function_library(*a2, *(a1 + 16));
  if (result)
  {
    *(result + 28) = *(a2 + 96);

    return RB::FunctionLibrary::function(result, a1, a3, a4);
  }

  return result;
}

RB::Function *RB::Filter::Custom::render(int *a1, double a2, uint64_t a3, MTLPixelFormat a4)
{
  if (*(a4 + 132) == 2)
  {
    v4 = 131101;
  }

  else
  {
    v4 = 29;
  }

  return RB::Filter::Custom::render(a1, a4, a2, a4, v4);
}

unint64_t RB::RenderFrame::add_function(unint64_t this, RB::Function *a2)
{
  v2 = *(this + 96);
  if (*(a2 + 34) != v2)
  {
    v4 = *(this + 100);
    *(a2 + 34) = v2;
    *(a2 + 35) = v4;
    v5 = *(this + 128);
    v6 = v5[1];
    if (v6 >= v5[2])
    {
      this = RB::shared_vector<RB::refcounted_ptr<RB::Buffer>>::realloc_buffer((this + 128), v5);
      v5 = this;
    }

    v5[v6 + 3] = a2;
    atomic_store(v6 + 1, v5 + 1);
  }

  return this;
}

uint64_t RB::CustomShader::Value::convert(uint64_t a1, int a2, char *__dst, unsigned __int8 a4, float32x4_t a5)
{
  if (*a1 != 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = *(a1 + 6);
  if (v7 > 3)
  {
    if (v7 == 4)
    {
      if (a2 == 8)
      {
        v13 = *(a1 + 9);
        BytePtr = (a1 + 16);
        if ((v13 & 4) == 0)
        {
          BytePtr = CFDataGetBytePtr(*BytePtr);
        }

        *__dst = *BytePtr;
        return 1;
      }

      return 0;
    }

    if (v7 == 5)
    {
      if (a2 == 2)
      {
        v6 = 1;
        RB::CustomShader::Value::convert(a1, 3, 1, __dst, a4, a5);
        return v6;
      }

      return 0;
    }

    if (v7 != 9)
    {
      return v6;
    }

    if (a2 != 1)
    {
      return 0;
    }

LABEL_16:
    v11 = *(a1 + 9);
    v12 = (a1 + 16);
    if ((v11 & 4) == 0)
    {
      v12 = CFDataGetBytePtr(*v12);
    }

    *__dst = *v12;
    return 1;
  }

  switch(v7)
  {
    case 1u:
      if (a2 != 5)
      {
        return 0;
      }

      goto LABEL_16;
    case 2u:
      if (a2 == 6)
      {
        v15 = *(a1 + 9);
        v16 = (a1 + 16);
        if ((v15 & 4) == 0)
        {
          v16 = CFDataGetBytePtr(*v16);
        }

        v10 = *v16;
        goto LABEL_27;
      }

      return 0;
    case 3u:
      if (a2 == 7)
      {
        v8 = *(a1 + 9);
        v9 = (a1 + 16);
        if ((v8 & 4) == 0)
        {
          v9 = CFDataGetBytePtr(*v9);
        }

        v10 = *v9;
        *(__dst + 2) = *(v9 + 2);
LABEL_27:
        *__dst = v10;
        return 1;
      }

      return 0;
  }

  return v6;
}

uint64_t RB::CustomShader::Value::convert(uint64_t a1, int a2, int64_t __n, char *__dst, unsigned __int8 a5, float32x4_t _Q0)
{
  v6 = _Q0.f32[0];
  BytePtr = (a1 + 16);
  if ((*(a1 + 9) & 4) == 0)
  {
    BytePtr = CFDataGetBytePtr(*BytePtr);
  }

  if ((a2 - 1) < 2)
  {
    __n *= 4;
LABEL_12:
    if (__n <= 3)
    {
      if (__n == 1)
      {
        *__dst = *BytePtr;
        return 1;
      }

      if (__n == 2)
      {
        *__dst = *BytePtr;
        return 1;
      }
    }

    else
    {
      switch(__n)
      {
        case 4:
          *__dst = *BytePtr;
          return 1;
        case 8:
          *__dst = *BytePtr;
          return 1;
        case 16:
          *__dst = *BytePtr;
          return 1;
      }
    }

    memcpy(__dst, BytePtr, __n);
    return 1;
  }

  if (!a2)
  {
    goto LABEL_12;
  }

  if (a2 == 3)
  {
    v13 = a5;
    if (*(a1 + 8) == 1)
    {
      v13 = *(a1 + 7);
    }

    _Q0.i16[0] = *(a1 + 4);
    __asm { FCVT            S0, H0 }

    RB::ColorSpace::Conversion::Conversion(v22, v13, a5, _Q0, v6);
    for (; __n; --__n)
    {
      v18 = *BytePtr;
      BytePtr += 2;
      v21 = vcvt_f16_f32(v18);
      v19 = vmul_lane_f16(RB::ColorSpace::Conversion::operator()(v22, v21), v21, 3);
      v19.i16[3] = v21.i16[3];
      *__dst = v19;
      __dst += 8;
    }
  }

  return 1;
}

uint64_t RB::render_primitive(uint64_t a1, float64x2_t *a2, float32x4_t *a3, float32x2_t *a4, int a5, unsigned int a6, float a7)
{
  v7 = a6;
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  v30 = 0;
  v31 = 0;
  result = RB::Coverage::Primitive::set_globals(a3, v34, a1, a2, a6, &v33, v32, &v30);
  if (result)
  {
    if (a7 == 1.0)
    {
      is_opaque = RB::Fill::Gradient::is_opaque(a4);
    }

    else
    {
      is_opaque = 0;
    }

    if (v33 == 1)
    {
      v17 = v7 == 2 || v7 == 24;
      v18 = v17;
      if ((v18 & is_opaque) != 0)
      {
        LOBYTE(v7) = 0;
      }
    }

    v15.f32[0] = a7;
    RB::Fill::Gradient::set_gradient(a4, (v35 + 4), a1, a2, v15);
    RB::RenderFrame::alloc_buffer_region(*(*a1 + 16), 0x8C, 4uLL, 0, &v37);
    v19 = v37;
    if (v37)
    {
      v20 = (*(v37 + 7) + v38.i64[0]);
      v21 = v34[4];
      v22 = v34[2];
      v23 = v34[1];
      v20[3] = v34[3];
      v20[4] = v21;
      v20[1] = v23;
      v20[2] = v22;
      v24 = *v36;
      v25 = v35[1];
      v26 = v35[0];
      *(v20 + 124) = *&v36[12];
      v20[6] = v25;
      v20[7] = v24;
      v20[5] = v26;
      *v20 = v34[0];
    }

    else
    {
      v38 = 0uLL;
      v37 = 0;
    }

    *(a1 + 192) = RB::RenderFrame::buffer_id(*(*a1 + 16), v19);
    *(a1 + 196) = vmovn_s64(v38);
    v29 = v33 & 0xF;
    RB::Coverage::Primitive::set_coverage_state(a3, &v29);
    if (*(a1 + 132) == 2)
    {
      v27 = 131078;
    }

    else
    {
      v27 = 6;
    }

    if (a5)
    {
      v28 = 0x10000;
    }

    else
    {
      v28 = 0;
    }

    LODWORD(v37) = (v27 | v28) & 0xFFFF003F | ((v29 & 0x3FF) << 6);
    HIDWORD(v37) = v7 & 0x3F;
    RB::Fill::Gradient::set_fill_state(a4, &v37, a1, a7);
    result = RB::RenderPass::draw_indexed_primitives(a1, v37, 4, v32, 0, 1uLL, v30, v31);
    if (*(&v32[1] + 1))
    {
      v29 = v29 & 0xFFFFFFF0 | 1;
      LODWORD(v37) = (v29 << 6) & 0xFFC0 | v37 & 0xFFFF003F;
      if (is_opaque && ((BYTE4(v37) & 0x3F) == 0x18 || (BYTE4(v37) & 0x3F) == 2))
      {
        HIDWORD(v37) &= 0xFFFFFFC0;
      }

      result = RB::RenderPass::draw_indexed_primitives(a1, v37, 4, &v32[1] + 8, 0, 1uLL, v30, v31);
    }

    *(a1 + 204) = 0;
    *(a1 + 212) = 0;
    *(a1 + 228) = 0;
    *(a1 + 236) = 0;
  }

  return result;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Gradient>::render(uint64_t a1, double a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6)
{
  v6 = *(a1 + 48);
  v7.i64[0] = SLODWORD(a2);
  v7.i64[1] = SHIDWORD(a2);
  v8 = v6[1];
  _Q0 = vaddq_f64(v6[2], vcvtq_f64_s64(v7));
  v15[0] = *v6;
  v15[1] = v8;
  v15[2] = _Q0;
  LOWORD(_Q0.f64[0]) = *(a1 + 44);
  __asm { FCVT            S0, H0 }

  return RB::render_primitive(a4, v15, (a1 + 64), (a1 + 112), a5, a6, *_Q0.f64);
}

float32x2_t RB::Fill::Gradient::set_gradient(float32x2_t *a1, float32x2_t *a2, uint64_t a3, float64x2_t *a4, float32x4_t a5)
{
  RB::Fill::Gradient::set_gradient_color(a1, &a2[4] + 4, a3, a5);

  return RB::Fill::Gradient::set_gradient_geometry(a1, a2, a4, a3);
}

void RB::Fill::Gradient::set_gradient_color(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t _Q0)
{
  v4 = _Q0.f32[0];
  v116 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 128);
  v7 = v6;
  if (*(a1 + 58) == 1)
  {
    v7 = *(a1 + 57);
  }

  v8 = *(a1 + 52);
  if ((v8 >> 6) > 1u)
  {
    if (v8 >> 6 != 3)
    {
      v10 = 0;
      v6 = v6 & 0xF | 0x10;
      goto LABEL_10;
    }

    v9 = 1;
LABEL_8:
    v6 &= 0xFu;
    v10 = v9;
    goto LABEL_10;
  }

  v9 = 0;
  v10 = 0;
  if (v8 >> 6)
  {
    goto LABEL_8;
  }

LABEL_10:
  v101 = a2;
  v11 = *a1;
  v12 = *(a1 + 8);
  _CF = (v8 & 0xF00) == 0x200 && v11 >= 2;
  v103 = a3;
  if (!_CF)
  {
    v14 = (a1 + 56);
    if (*(a1 + 56) != 4)
    {
      LODWORD(v104) = v10;
      v26 = 0;
      v102 = 0;
      goto LABEL_44;
    }

    if (v11 >> 60)
    {
      return;
    }

    v15 = v7;
    LODWORD(v104) = v10;
    v102 = (16 * v11) > 0x1000;
    if ((16 * v11) <= 0x1000)
    {
      MEMORY[0x1EEE9AC00](a1, a2);
      v26 = (&v100 - ((16 * v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      bzero(v26, 16 * v11);
      if (!v11)
      {
        goto LABEL_35;
      }

LABEL_20:
      memmove(v26, v12, 16 * v11);
      _Q0.f32[0] = RB::Fill::Gradient::angular_location_function(a1);
      v7 = v15;
      goto LABEL_30;
    }

    v26 = malloc_type_malloc(16 * v11, 0x1000040451B5BE8uLL);
    if (v26)
    {
      if (!v11)
      {
LABEL_35:
        _Q0.f32[0] = RB::Fill::Gradient::angular_location_function(a1);
        v7 = v15;
LABEL_37:
        v23 = v102;
LABEL_38:
        v102 = v23;
        if ((v8 & 0xF00) == 0x100)
        {
          v27 = v11 - 1;
          if (v11 != 1)
          {
            v28 = 0;
            v29 = v26 + 3;
            do
            {
              *v29 = ((v16 - *(v29 - 1)) + ((*v29 + ((*(*(a1 + 8) + v28 + 8) - *v29) * *(*(a1 + 8) + v28 + 24))) * _Q0.f32[0])) / (v29[3] - *(v29 - 1));
              v29 += 4;
              v28 += 16;
              --v27;
            }

            while (v27);
          }
        }

        v8 |= 0x10000u;
        goto LABEL_43;
      }

      goto LABEL_20;
    }

LABEL_107:
    free(v26);
    return;
  }

  v17 = v7;
  if (v18 >> 60)
  {
    return;
  }

  v20 = v18;
  LODWORD(v104) = v10;
  v21 = 16 * v18;
  v102 = 16 * v18 > 0x1000;
  if (16 * v18 > 0x1000)
  {
    v26 = malloc_type_malloc(16 * v18, 0x1000040451B5BE8uLL);
    if (!v26)
    {
      goto LABEL_107;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](v18, v19);
    v26 = (&v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    bzero(v26, v21);
  }

  v8 = v8 & 0xFFFEF0FF | 0x10100;
  v14 = (a1 + 56);
  if (*(a1 + 56) == 4)
  {
    _Q0.f32[0] = RB::Fill::Gradient::angular_location_function(a1);
    if (!v20)
    {
      v11 = 0;
      v7 = v6;
      goto LABEL_37;
    }

    v7 = v6;
    v11 = v20;
LABEL_30:
    v23 = v102;
    v24 = 2;
    v25 = v11;
    do
    {
      v26[v24] = v16 + (v26[v24] * _Q0.f32[0]);
      v24 += 4;
      --v25;
    }

    while (v25);
    goto LABEL_38;
  }

  v7 = v6;
  v11 = v20;
LABEL_43:
  v12 = v26;
LABEL_44:
  v30 = v8 & 0xF00;
  v100 = v11 - 1;
  if (v30 == 1024)
  {
    v31 = v11 - 1;
  }

  else
  {
    v31 = v11;
  }

  _H0 = *(a1 + 48);
  __asm { FCVT            S0, H0 }

  v35 = v103[31];
  _H2 = *(a1 + 50);
  __asm { FCVT            S3, H2 }

  if (v35 > _S3 && _H2 != COERCE_SHORT_FLOAT(0))
  {
    v35 = _S3;
  }

  RB::ColorSpace::Conversion::Conversion(v112, v7, v6, _Q0, v35);
  v109 = v4;
  v110 = v112;
  v111 = v104;
  v107[0] = &v109;
  v107[1] = v31;
  v107[2] = v12;
  v108 = v8;
  if (*a1 != 2 || (*(a1 + 52) & 0x10000) != 0 || *v14 == 4 || (((*(a1 + 52) & 0xF00) - 512) & 0xFFFFFDFF) == 0)
  {
    if ((v8 & 0x10000) != 0)
    {
      v55 = 36;
      if (v30 != 1024)
      {
        v55 = 16;
      }

      v56 = v31 * v55;
      if (v56 <= 0x6C)
      {
        v57 = 108;
      }

      else
      {
        v57 = v56;
      }

      v58 = v103;
      RB::RenderFrame::alloc_buffer_region(*(*v103 + 16), v57, 2uLL, 0, &v105);
      v41 = v101;
      LOWORD(v40) = v100;
      if (v105)
      {
        v60 = *(v105 + 7);
        if (v30 == 1024)
        {
          v77 = v60 + v106.i64[0];
          if (v11 - 2 >= 0)
          {
            v78 = v12[4 * v100 + 2];
            v79 = (v106.i64[0] + 36 * v11 + v60 - 72);
            v80 = &v12[4 * v11 - 6];
            v81 = v100;
            do
            {
              v82 = *v80;
              v80 -= 4;
              v83 = v82;
              _S2 = 1.0 / (v78 - v82);
              if ((LODWORD(_S2) & 0x7FFFFFFFu) >= 0x7F800000)
              {
                _S2 = 65504.0;
              }

              _S4 = -(v83 * _S2);
              __asm { FCVT            H2, S2 }

              *v79 = _H2;
              __asm { FCVT            H2, S4 }

              v79[1] = _H2;
              v79 -= 18;
              v78 = v83;
              --v81;
            }

            while (v81);
          }

          RB::Fill::Gradient::set_gradient_color(RB::Shader::GradientGlobals::Color &,float,RB::RenderPass &)const::$_1::operator()(v107, (v77 + 4), 36, 0);
        }

        else if ((v100 & 0x8000000000000000) == 0)
        {
          v61 = (v106.i64[0] + 16 * v11 + v60 - 8);
          v62 = &v12[4 * v11 - 2];
          v63 = 1.0;
          do
          {
            v64 = v63;
            v63 = *v62;
            _S0 = 1.0 / (v64 - *v62);
            if ((LODWORD(_S0) & 0x7FFFFFFFu) >= 0x7F800000)
            {
              _S0 = 65504.0;
            }

            _S1 = -(v63 * _S0);
            __asm { FCVT            H0, S0 }

            *(v61 - 4) = _H0;
            __asm { FCVT            H0, S1 }

            *(v61 - 3) = _H0;
            _H1 = COERCE_UNSIGNED_INT(1.0);
            if (v30 == 256)
            {
              v70 = v62[1];
              _H1 = 31744;
              if (v70 < 1.0)
              {
                *&_Q0 = -0.69315 / logf(v70);
                __asm { FCVT            H1, S0 }
              }
            }

            *(v61 - 2) = _H1;
            *&_Q0 = *(v62 - 1);
            v104 = _Q0;
            *&_Q0 = RB::ColorSpace::Conversion::operator()(v110, *&_Q0);
            WORD3(_Q0) = WORD3(v104);
            if (v111 == 1)
            {
              v113 = _Q0;
              v114 = 0;
              v115 = 0;
              RB::Fill::Color::convert_to_oklab(&v113);
              *&_Q0 = v113;
            }

            _H1 = WORD3(_Q0);
            __asm { FCVT            S1, H1 }

            _S1 = v109 * _S1;
            __asm { FCVT            H1, S1 }

            v74 = vmul_n_f16(*&_Q0, *&_S1);
            v61[1] = v74.i16[1];
            v61[2] = v74.i16[2];
            *v61 = v74.i16[0];
            v61[3] = LOWORD(_S1);
            --v11;
            v61 -= 8;
            v62 -= 4;
          }

          while (v11 > 0);
        }

        v58[28].i32[1] = RB::RenderFrame::buffer_id(*(*v58 + 16), v105);
        v58[29] = vmovn_s64(v106);
      }
    }

    else
    {
      v43 = 4;
      if (v30 == 256)
      {
        v43 = 5;
      }

      if (v30 == 1024)
      {
        v44 = v11;
      }

      else
      {
        v44 = v11 + 1;
      }

      if (v30 == 1024)
      {
        v45 = 16;
      }

      else
      {
        v45 = v43;
      }

      v46 = v103;
      RB::RenderFrame::alloc_buffer_region(*(*v103 + 16), (2 * v45 * v44), 2uLL, 0, &v105);
      v40 = v100;
      v41 = v101;
      if (v105)
      {
        if (v30 == 1024)
        {
          v113 = 0;
          v75 = (*(v105 + 7) + v106.i64[0]);
          RB::Fill::Gradient::set_gradient_color(RB::Shader::GradientGlobals::Color &,float,RB::RenderPass &)const::$_1::operator()(v107, v75, 32, &v113);
          v76 = &v75[4 * v40];
          *v76 = v113;
          v76[2] = 0;
          v76[3] = 0;
          v76[1] = 0;
        }

        else
        {
          for (i = (*(v105 + 7) + v106.i64[0]); v11; --v11)
          {
            *&_Q0 = *v12;
            v104 = _Q0;
            *&_Q0 = RB::ColorSpace::Conversion::operator()(v110, *&_Q0);
            WORD3(_Q0) = WORD3(v104);
            if (v111 == 1)
            {
              v113 = _Q0;
              v114 = 0;
              v115 = 0;
              RB::Fill::Color::convert_to_oklab(&v113);
              *&_Q0 = v113;
            }

            _H1 = WORD3(_Q0);
            __asm { FCVT            S1, H1 }

            _S1 = v109 * _S1;
            __asm { FCVT            H1, S1 }

            v52 = vmul_n_f16(*&_Q0, *&_S1);
            *i = v52.i32[0];
            *(i + 2) = v52.i16[2];
            *(i + 3) = LOWORD(_S1);
            if (v30 == 256)
            {
              v53 = v12[3];
              _H1 = 31744;
              if (v53 < 1.0)
              {
                *&_Q0 = -0.69315 / logf(v53);
                __asm { FCVT            H1, S0 }
              }

              *(i + 4) = _H1;
            }

            v12 += 4;
            i += 2 * v45;
          }

          memcpy(i, &i[-2 * v45], 2 * v45);
          v46 = v103;
          v40 = v100;
        }

        *(v41 + 16) = v40;
        v46[28].i32[1] = RB::RenderFrame::buffer_id(*(*v46 + 16), v105);
        v46[29] = vmovn_s64(v106);
      }
    }

    v88 = v102;
  }

  else
  {
    *&v39 = *v12;
    v104 = v39;
    *&v42 = RB::ColorSpace::Conversion::operator()(v112, *&v39);
    LOWORD(v40) = v100;
    v41 = v101;
    WORD3(v42) = WORD3(v104);
    if (v111 == 1)
    {
      v105 = v42;
      v106.i32[0] = 0;
      v106.i16[2] = 0;
      RB::Fill::Color::convert_to_oklab(&v105);
      *&v42 = v105;
    }

    _H1 = WORD3(v42);
    __asm { FCVT            S1, H1 }

    _S1 = v109 * _S1;
    __asm { FCVT            H1, S1 }

    *&v42 = vmul_n_f16(*&v42, *&_S1);
    *v41 = v42;
    *(v41 + 4) = WORD2(v42);
    *(v41 + 6) = LOWORD(_S1);
    *&v42 = *(v12 + 2);
    v104 = v42;
    v92 = RB::ColorSpace::Conversion::operator()(v110, *&v42);
    HIWORD(v92) = WORD3(v104);
    if (v111 == 1)
    {
      v105 = v92;
      v106.i32[0] = 0;
      v106.i16[2] = 0;
      RB::Fill::Color::convert_to_oklab(&v105);
      v92 = v105;
    }

    _H1 = HIWORD(v92);
    __asm { FCVT            S1, H1 }

    _S1 = v109 * _S1;
    __asm { FCVT            H1, S1 }

    v96 = vmul_n_f16(v92, *&_S1);
    *(v41 + 8) = v96.i32[0];
    *(v41 + 12) = v96.i16[2];
    *(v41 + 14) = LOWORD(_S1);
    _H0 = COERCE_UNSIGNED_INT(1.0);
    v88 = v102;
    if (v30 == 256)
    {
      v98 = v12[3];
      if (v98 >= 1.0)
      {
        _H0 = 31744;
      }

      else
      {
        _S0 = -0.69315 / logf(v98);
        __asm { FCVT            H0, S0 }
      }
    }

    *(v41 + 16) = _H0;
  }

  *(v41 + 18) = v40;
  if (v88)
  {
    goto LABEL_107;
  }
}

void sub_195D198B8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 20))
  {
    free(v2);
  }

  _Unwind_Resume(exception_object);
}

float32x2_t RB::Fill::Gradient::set_gradient_geometry(float32x2_t *a1, float32x2_t *a2, float64x2_t *a3, uint64_t a4)
{
  v7 = a3[1];
  v88 = *a3;
  v89 = v7;
  v90 = a3[2];
  v8 = a1[2];
  if (v8)
  {
    v9.f64[0] = RB::operator*(v8, &v88);
    v88 = v9;
    v89 = v10;
    v90 = v11;
  }

  RB::AffineTransform::invert(&v88);
  v16 = a1[7].u8[0];
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v22 = a1[5].f32[0];
    }

    else
    {
      if (v16 != 4)
      {
        goto LABEL_38;
      }

      v23 = a1[5].f32[0];
      v22 = a1[5].f32[1];
      v24 = vabds_f32(v22, v23);
      if (v24 <= 6.2832)
      {
        if (v22 >= v23)
        {
          v22 = a1[5].f32[0];
        }

        v22 = (v22 + -3.1416) + (v24 * 0.5);
      }
    }

    v90 = vsubq_f64(v90, vcvtq_f64_f32(a1[3]));
    v37 = v22 + (floorf(v22 * 0.15915) * -6.2832);
    if (v37 > 3.1416)
    {
      v37 = v37 + -6.2832;
    }

    a2[3].f32[0] = v37 * -0.15915;
    goto LABEL_20;
  }

  if (!a1[7].i8[0])
  {
    v25 = a1[3];
    v26 = vsub_f32(a1[4], v25);
    v27 = vmul_f32(v26, v26);
    v27.i32[0] = vadd_f32(v27, vdup_lane_s32(v27, 1)).u32[0];
    v28 = vrsqrte_f32(v27.u32[0]);
    v29 = vmul_f32(vrsqrts_f32(v27.u32[0], vmul_f32(v28, v28)), v28);
    v27.f32[0] = vmul_f32(v29, vrsqrts_f32(v27.u32[0], vmul_f32(v29, v29))).f32[0];
    v30 = vmul_n_f32(v26, v27.f32[0]);
    v90 = vsubq_f64(v90, vcvtq_f64_f32(v25));
    *&v31 = vmuls_lane_f32(-v27.f32[0], v30, 1);
    v32 = vcvtq_f64_f32(vmul_n_f32(v30, v27.f32[0]));
    v33 = vextq_s8(v32, v32, 8uLL);
    v32.i64[1] = v31;
    v84 = v32;
    v85 = v33;
    v86 = 0;
    v87 = 0;
    v34.f64[0] = RB::operator*(&v88, &v84);
    v88 = v34;
    v89 = v35;
    v90 = v36;
    goto LABEL_38;
  }

  if (v16 == 1)
  {
    v17 = a1[3];
    *v12.i8 = a1[4];
    v18 = vceq_f32(v17, *v12.i8);
    if ((vpmin_u32(v18, v18).u32[0] & 0x80000000) == 0)
    {
      v19 = a1[5].f32[1];
      if (v19 == 0.0)
      {
        v20 = a1[3];
        v17 = a1[4];
        v21 = a1[5].f32[1];
      }

      else
      {
        v21 = a1[5].f32[0];
        v20 = a1[4];
      }

      v43 = fabsf(v21);
      v44 = 11;
      if (v19 == 0.0)
      {
        v44 = 10;
      }

      v45 = fabsf(a1->f32[v44]);
      *v14.i32 = v43 - v45;
      v15.i64[0] = 0x3C0000003C000000;
      v46.i64[0] = 0x8000000080000000;
      v46.i64[1] = 0x8000000080000000;
      LODWORD(v47) = vbslq_s8(v46, v15, v14).u32[0];
      if (vabds_f32(v43, v45) < 0.0078125)
      {
        *v14.i32 = v47;
      }

      v48 = v43 / *v14.i32;
      v49 = vmla_n_f32(v17, vsub_f32(v20, v17), v43 / *v14.i32);
      v50 = vceq_f32(v49, v20);
      if ((vpmin_u32(v50, v50).u32[0] & 0x80000000) == 0)
      {
        v51 = vsub_f32(v20, v49);
        v52 = vmul_f32(v51, v51);
        v52.i32[0] = vadd_f32(v52, vdup_lane_s32(v52, 1)).u32[0];
        v53 = vrsqrte_f32(v52.u32[0]);
        v54 = vmul_f32(vrsqrts_f32(v52.u32[0], vmul_f32(v53, v53)), v53);
        v52.f32[0] = vmul_f32(v54, vrsqrts_f32(v52.u32[0], vmul_f32(v54, v54))).f32[0];
        v55 = vmul_n_f32(v51, v52.f32[0]);
        *&v56 = vmuls_lane_f32(-v52.f32[0], v55, 1);
        v57 = vcvtq_f64_f32(vmul_n_f32(v55, v52.f32[0]));
        v58 = vextq_s8(v57, v57, 8uLL);
        v57.i64[1] = v56;
        v90 = vsubq_f64(v90, vcvtq_f64_f32(v49));
        v84 = v57;
        v85 = v58;
        v82 = v45 * v52.f32[0];
        v83 = v48;
        v86 = 0;
        v87 = 0;
        v59.f64[0] = RB::operator*(&v88, &v84);
        v48 = v83;
        v45 = 1.0;
        *v62.i32 = (v82 * v82) + -1.0;
        v63 = fabsf(*v62.i32);
        _NF = v63 < 0.0001;
        v65 = __PAIR64__(COERCE_UNSIGNED_INT(sqrtf(v63)), LODWORD(v82));
        v66 = vabds_f32(1.0, v83);
        v67 = COERCE_DOUBLE(vdiv_f32(vmul_n_f32(v65, v66), vdup_lane_s32(v62, 0)));
        *v68.i32 = v66 * 0.5;
        v69 = COERCE_DOUBLE(vdup_lane_s32(v68, 0));
        if (_NF)
        {
          v67 = v69;
        }

        else
        {
          v45 = v82;
        }

        v70 = vcvtq_f64_f32(*&v67);
        v88 = vmulq_f64(v59, v70);
        v89 = vmulq_f64(v60, v70);
        v90 = vmulq_f64(v61, v70);
      }

      a2[3].f32[0] = v48;
      a2[3].f32[1] = v45;
      v71 = 0.0;
      if (v19 == 0.0)
      {
        v71 = 1.0;
      }

      a2[4].f32[0] = v71;
      goto LABEL_38;
    }

    v90 = vsubq_f64(v90, vcvtq_f64_f32(v17));
    v38 = a1[5].f32[0];
    v39 = a1[5].f32[1];
    *v12.i32 = v38 - v39;
    v13.i64[0] = 0x3C0000003C000000;
    v40.i64[0] = 0x8000000080000000;
    v40.i64[1] = 0x8000000080000000;
    v41 = vbslq_s8(v40, v13, v12).u32[0];
    if (vabds_f32(v38, v39) >= 0.0078125)
    {
      v42 = v38 - v39;
    }

    else
    {
      v42 = *&v41;
    }

    v37 = v38 / v42;
    a2[3].f32[0] = -1.0 / v42;
LABEL_20:
    a2[3].f32[1] = v37;
  }

LABEL_38:
  v72 = *(a4 + 104);
  v73.i64[0] = v72;
  v73.i64[1] = SHIDWORD(v72);
  __asm { FMOV            V1.2D, #0.5 }

  v78 = vmulq_f64(vcvtq_f64_s64(v73), _Q1);
  v79 = vmulq_n_f64(v88, v78.f64[0]);
  v80 = vmlaq_laneq_f64(vaddq_f64(v79, v90), v89, v78, 1);
  *&v78.f64[0] = vcvt_f32_f64(v79);
  *&v79.f64[0] = vcvt_f32_f64(vmulq_n_f64(v89, -v78.f64[1]));
  *a2 = *&v78.f64[0];
  a2[1] = *&v79.f64[0];
  result = vcvt_f32_f64(v80);
  a2[2] = result;
  return result;
}

uint64_t RB::Fill::Gradient::set_fill_state(RB::Fill::Gradient *this, RB::RenderState *a2, const RB::RenderPass *a3, float a4)
{
  v8 = *this;
  v9 = *(this + 56);
  v10 = *(this + 13);
  if ((v10 & 0xF00) == 0x200 && v8 >= 2)
  {
    v12 = v10 & 0xFFFEF0FF | 0x10100;
  }

  else
  {
    v12 = *(this + 13);
    result = *this;
  }

  v14 = v12 | 0x10000;
  if (v9 == 4)
  {
    v15 = 2;
  }

  else
  {
    v14 = v12;
    v15 = v9;
  }

  if ((v14 & 4) != 0)
  {
    v16 = v14 & 0xFFFFFFF8 | 3;
  }

  else
  {
    v16 = v14;
  }

  v17 = v16 & 0xF00;
  v18 = (v16 & 7) + 4 * v15;
  if (v15 == 1)
  {
    v19 = vmvn_s8(vceq_f32(*(this + 24), *(this + 32)));
    if (vpmax_u32(v19, v19).i32[0] < 0)
    {
      v18 += 12;
    }
  }

  v20 = 6;
  if (v17 == 1024)
  {
    v20 = 3;
  }

  if (v9 == 4 || v8 != 2 || (v10 & 0x10000) != 0 || (((v10 & 0xF00) - 512) & 0xFFFFFD00) == 0)
  {
    if (result - (v17 == 1024) <= v20)
    {
      v22 = 128;
    }

    else
    {
      v22 = 256;
    }

    if ((v16 & 0x10000) != 0)
    {
      v21 = v22;
    }

    else
    {
      v21 = 384;
    }
  }

  else
  {
    v21 = 0;
  }

  v23 = ((v17 == 1024) << 9) | ((v17 == 256) << 10) | v21 | (8 * (dword_195E45190[v18] & 0xF));
  if ((v10 >> 6) <= 1u)
  {
    if (!(v10 >> 6))
    {
LABEL_35:
      if ((v23 & 1) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_36;
    }

LABEL_34:
    v23 |= *(a3 + 128) > 0xFu;
    goto LABEL_35;
  }

  if (v10 >> 6 == 3)
  {
    v23 |= 4u;
    goto LABEL_34;
  }

  if (*(a3 + 128) < 0x10u)
  {
    ++v23;
  }

  if (v23)
  {
LABEL_36:
    if (a4 == 1.0 && *(this + 59) == 1 && (v9 != 1 || (v24 = vceq_f32(*(this + 24), *(this + 32)), (vpmin_u32(v24, v24).u32[0] & 0x80000000) != 0)))
    {
      v25 = 2;
    }

    else
    {
      v25 = 0;
    }

    v23 = v25 | v23 & 0xFFFFFFFD;
  }

LABEL_47:
  *a2 = *a2 & 0x3FFFF | (v23 << 18);
  return result;
}

id RB::Device::noise_texture(RB::Device *this)
{
  result = *(this + 26);
  if (!result)
  {
    v3 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:80 width:32 height:32 mipmapped:0];
    [v3 setUsage:1];
    [v3 setStorageMode:0];
    v4 = [*(this + 3) newTextureWithDescriptor:v3];

    *(this + 26) = v4;
    if (v4)
    {
      [v4 setLabel:@"rb:noise-texture"];
      v6 = *(this + 26);
      memset(v9, 0, sizeof(v9));
      v10 = vdupq_n_s64(0x20uLL);
      v11 = 1;
      return *(this + 26);
    }

    else
    {
      v7 = RB::error_log(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        RB::Device::noise_texture();
      }

      v8 = *(RB::Device::invalid_texture(this) + 2);
      result = *(this + 26);
      if (result != v8)
      {

        result = v8;
        *(this + 26) = result;
      }
    }
  }

  return result;
}

void RB::DisplayList::DetachedLayerItem::render(int32x2_t *this, uint64_t a2, int32x2_t *a3, int a4, unsigned int a5, int32x2_t a6)
{
  v6 = *(a2 + 1448);
  if (v6)
  {
    v13 = *(a2 + 1440);
    v14 = v13 + 336 * v6;
    while (1)
    {
      if (*v13 == *&this[6] && RB::DisplayList::DetachedLayerItem::raster_matches(this, (v13 + 16), *(v13 + 312), 1))
      {
        v17 = v13 + 88;
        if (*(v13 + 280))
        {
          v17 = *(v13 + 280);
        }

        v18 = *(v13 + 288);
        if (v18)
        {
          break;
        }
      }

LABEL_12:
      v13 += 336;
      if (v13 == v14)
      {
        return;
      }
    }

    v19 = (v17 + 40);
    v20 = 48 * v18;
    while (1)
    {
      if (*(v19 - 5) == this)
      {
        v21 = *v19;
        if (*v19)
        {
          break;
        }
      }

      v19 += 6;
      v20 -= 48;
      if (!v20)
      {
        goto LABEL_12;
      }
    }

    v22 = vsubq_f64(*(*&this[8] + 32), *(v13 + 48));
    __asm { FMOV            V1.2D, #0.5 }

    _Q1 = vrndmq_f64(vaddq_f64(v22, _Q1));
    v31 = vcvtq_s64_f64(_Q1);
    v29 = vadd_s32(vmovn_s64(v31), a6);
    v30 = *(v19 - 1);
    *v31.i8 = vceq_s32(v30, 0x8000000080000000);
    if ((vpmin_u32(*v31.i8, *v31.i8).u32[0] & 0x80000000) != 0)
    {
      v34 = vneg_f32(0x80000000800000);
      v33 = 0x100000001000000;
      v36 = 0x100000001000000;
    }

    else
    {
      v32 = *(v19 - 2);
      v33 = vcvt_f32_s32(vadd_s32(v32, v29));
      v34 = vcvt_f32_s32(v30);
      v35 = vadd_s32(v21[4], v32);
      v15 = v21[13];
      v30 = vsub_s32(v35, v15);
      v36 = vcvt_f32_s32(v30);
    }

    v30.i32[0] = 2;
    v15.i32[0] = this[10].i32[0] & 0xF;
    _Q0 = vsubq_f64(v22, _Q1);
    v37 = COERCE_DOUBLE(vadd_f32(vand_s8(vcvt_f32_f64(_Q0), vdup_lane_s32(vceq_s32(v15, v30), 0)), v33));
    v38 = 4 * (v15.i32[0] == 2);
    v39 = this[6];
    v40 = *(*&v21[8] + 16);
    _Q0.n128_u64[0] = 0;
    if ((*(v39 + 76) & 0x40) != 0)
    {
      _Q0.n128_u16[0] = RB::DisplayList::Layer::color_info(*&this[6], _Q0) >> 32;
      __asm { FCVT            S0, H0 }
    }

    LOWORD(_Q1.f64[0]) = this[5].i16[2];
    __asm { FCVT            S6, H1 }

    *&_Q1.f64[0] = v36;
    *v31.i8 = v34;
    v16.n128_u64[0] = v29;
    RB::DisplayList::Layer::blit(v39, a2, a3, v40, *&this[9], v38, a4, a5, _Q0.n128_f32[0], _Q1, v31, v37, v34, v16, _S6, v21[28].i8[0] & 1, 0);
  }
}

unsigned int *RB::RenderState::simplify_plus_lighter(unsigned int *this, unint64_t a2)
{
  v2 = *this & 0x3F;
  v3 = v2 > 0x25;
  v4 = (1 << v2) & 0x38007C39E0;
  if (!v3 && v4 != 0)
  {
    v6 = this;
    this = RB::pixel_format_traits(a2, a2);
    if ((this[1] & 0xA) == 0)
    {
      v6[1] = v6[1] & 0xFFFFFFC0 | 0xB;
    }
  }

  return this;
}

uint64_t RB::DisplayList::GenericClip<RB::Coverage::Primitive>::render(float32x4_t *a1, double a2, uint64_t a3, int32x2_t *a4, unsigned int a5)
{
  v5 = a1[3].i64[0];
  v6.i64[0] = SLODWORD(a2);
  v6.i64[1] = SHIDWORD(a2);
  v7 = *(v5 + 16);
  v8 = vaddq_f64(*(v5 + 32), vcvtq_f64_s64(v6));
  v10[0] = *v5;
  v10[1] = v7;
  v10[2] = v8;
  return RB::render_primitive_coverage(a4, v10, a1 + 4, a5, a1[7].f32[0]);
}

uint64_t RB::anonymous namespace::render_coverage(int32x2_t *a1, _OWORD *a2, float32x4_t *a3, char a4, unsigned int a5, _OWORD *a6, float a7)
{
  _S8 = a7;
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  v26 = 0uLL;
  v12 = RB::Coverage::Primitive::set_globals(a3, v29, a1, a2, a5, &v28, v27, &v26);
  if (v12)
  {
    __asm { FCVT            H0, S8 }

    WORD2(v30) = _H0;
    RB::RenderFrame::alloc_buffer_region(*(*a1 + 16), 0x58, 4uLL, 0, &v31);
    v18 = v31;
    if (v31)
    {
      v19 = *(v31 + 7) + v32.i64[0];
      v20 = v29[0];
      *(v19 + 16) = v29[1];
      v22 = v29[3];
      v21 = v29[4];
      v23 = v29[2];
      *(v19 + 80) = v30;
      *(v19 + 48) = v22;
      *(v19 + 64) = v21;
      *(v19 + 32) = v23;
      *v19 = v20;
    }

    else
    {
      v31 = 0;
      v32 = 0uLL;
    }

    a1[24].i32[0] = RB::RenderFrame::buffer_id(*(*a1 + 16), v18);
    *(a1 + 196) = vmovn_s64(v32);
    LODWORD(v31) = v28 & 0xF;
    RB::Coverage::Primitive::set_coverage_state(a3, &v31);
    if (a1[16].i32[1] == 2)
    {
      v24 = 131076;
    }

    else
    {
      v24 = 4;
    }

    RB::RenderPass::draw_indexed_primitives(a1, (v24 & 0xFFFF003F | ((v31 & 0x3FF) << 6) | ((a4 & 0x3F) << 32)), 4, v27, 0, 1uLL, *&v26, *(&v26 + 8));
    if (*(&v27[1] + 1))
    {
      LODWORD(v31) = v31 & 0xFFFFFFF0 | 1;
      RB::RenderPass::draw_indexed_primitives(a1, (((a4 & 0x3F) << 32) | (v31 << 6) & 0xFFC0 | v24), 4, &v27[1] + 8, 0, 1uLL, *&v26, *(&v26 + 8));
    }

    a1[26] = 0;
    a1[25].i32[1] = 0;
    if (a6)
    {
      *a6 = v26;
    }
  }

  return v12;
}

void RB::SharedSurfaceGroup::SurfaceUpdate::~SurfaceUpdate(RB::SharedSurfaceGroup::SurfaceUpdate *this)
{
  v2 = *(this + 3);
  if (*(this + 8))
  {
    v3 = 0;
    v4 = v2 + 8;
    do
    {
      if (*v4 && atomic_fetch_add_explicit((*v4 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RB::SharedSurfaceGroup::~SharedSurfaceGroup();
      }

      v5 = *(v4 - 1);
      if (v5 && atomic_fetch_add_explicit((v5 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RB::refcounted_ptr<RB::SharedSurfaceClient>::operator=();
      }

      ++v3;
      v4 += 56;
    }

    while (v3 < *(this + 8));
    v2 = *(this + 3);
  }

  if (v2)
  {
    free(v2);
  }

  v6 = *(this + 1);
  if (*(this + 4))
  {
    v7 = 0;
    v8 = v6 + 1;
    do
    {

      v9 = *(v8 - 1);
      if (v9 && atomic_fetch_add_explicit((v9 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RB::refcounted_ptr<RB::SharedSurfaceClient>::operator=();
      }

      ++v7;
      v8 += 8;
    }

    while (v7 < *(this + 4));
    v6 = *(this + 1);
  }

  if (v6)
  {
    free(v6);
  }

  if (*this)
  {
    if (atomic_fetch_add_explicit((*this + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      RB::SharedSurfaceGroup::~SharedSurfaceGroup();
    }
  }
}

void RB::RenderFrame::end_encoding(id *this)
{
  if ((*(this + 92) & 2) != 0)
  {
    v3 = *(*this + 5);

    dispatch_sync_f(v3, this, RB::RenderFrame::end_encoding(void)::$_0::__invoke);
  }

  else
  {
    v2 = this[47];
    if (v2)
    {
      [v2 endEncoding];

      this[47] = 0;
    }
  }
}

unint64_t RB::Heap::emplace<RB::DisplayList::GenericFilter<RB::Filter::Custom>,RB::Filter::Custom const&,RB::DisplayList::Builder &>(size_t *a1, uint64_t a2)
{
  v3 = (a1[2] + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v3 + 272 > a1[3])
  {
    v3 = RB::Heap::alloc_slow(a1, 0x110uLL, 15);
  }

  else
  {
    a1[2] = v3 + 272;
  }

  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F0A39FC8;
  *(v3 + 32) = *a2;
  RB::CustomShader::Closure::Closure((v3 + 40), (a2 + 8));
  v4 = *(a2 + 176);
  v5 = *(a2 + 192);
  v6 = *(a2 + 224);
  *(v3 + 240) = *(a2 + 208);
  *(v3 + 256) = v6;
  *(v3 + 208) = v4;
  *(v3 + 224) = v5;
  return v3;
}

BOOL RB::Bounds::inset(int32x2_t *this, unsigned int a2, unsigned int a3, double a4, double a5, double a6, int32x2_t a7)
{
  v7 = this[1];
  v8 = vceq_s32(v7, 0x8000000080000000);
  if ((vpmax_u32(v8, v8).u32[0] & 0x80000000) != 0)
  {
    return 1;
  }

  v9 = vsub_s32(v7, vadd_s32(__PAIR64__(a3, a2), __PAIR64__(a3, a2)));
  v10 = vcltz_s32(v9);
  v11 = vpmax_u32(v10, v10);
  a7.i32[0] = -1;
  v12 = v11.i32[0];
  v13 = vdup_lane_s32(vcgt_s32(v11, a7), 0);
  v14 = v12 >= 0;
  *this = vadd_s32(*this, vbsl_s8(v13, __PAIR64__(a3, a2), vshr_n_s32(v9, 1uLL)));
  this[1] = vand_s8(v9, v13);
  return v14;
}

void RB::Filter::Custom::apply_transform(uint64_t a1, float64x2_t *a2)
{
  *&v3 = RB::operator*((a1 + 176), a2 + 68);
  *(a1 + 176) = v3;
  *(a1 + 192) = v4;
  *(a1 + 208) = v5;
}

uint64_t RB::Heap::emplace<RB::RenderTask::ChildNode,RB::refcounted_ptr<RB::DisplayList::LayerTask> &>(RB::Heap *this, uint64_t *a2)
{
  v4 = *(this + 3);
  result = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (result + 16 > v4)
  {
    result = RB::Heap::alloc_slow(this, 0x10uLL, 7);
  }

  else
  {
    *(this + 2) = result + 16;
  }

  v6 = *a2;
  if (*a2)
  {
    ++*(v6 + 8);
  }

  *(result + 8) = v6;
  return result;
}

uint64_t RB::DisplayList::GenericFilter<RB::Filter::Custom>::color_info(uint64_t a1, uint64_t a2)
{
  result = RB::CustomShader::Closure::color_info((a1 + 40));
  *a2 = result;
  *(a2 + 4) = WORD2(result);
  return result;
}

uint64_t RB::Fill::Gradient::is_opaque(float32x2_t *this)
{
  if (this[7].i8[3] != 1)
  {
    return 0;
  }

  if (this[7].i8[0] != 1)
  {
    return 1;
  }

  v1 = vceq_f32(this[3], this[4]);
  return vpmin_u32(v1, v1).u32[0] >> 31;
}

void RB::Filter::GaussianBlur::render(float32x2_t *a1, uint64_t a2, RB::RenderPass *a3, int32x2_t a4)
{
  __asm { FMOV            V1.2S, #0.25 }

  v10 = vcgt_f32(_D1, *a1);
  if ((vpmin_u32(v10, v10).u32[0] & 0x80000000) == 0)
  {
    if (!*&a1[4])
    {
      operator new();
    }

    RB::Filter::GaussianBlur::render_variable(a1, a2, a3, a4);
  }
}

uint64_t RB::DisplayList::GenericFilter<RB::Filter::Custom>::~GenericFilter(uint64_t a1)
{
  v2 = *(a1 + 176);
  if (v2)
  {
    v3 = *(a1 + 176);
  }

  else
  {
    v3 = (a1 + 48);
  }

  if (*(a1 + 184))
  {
    v4 = 0;
    do
    {
      RB::CustomShader::Value::reset_data(v3);
      ++v4;
      v3 += 4;
    }

    while (v4 < *(a1 + 184));
    v2 = *(a1 + 176);
  }

  if (v2)
  {
    free(v2);
  }

  v5 = *(a1 + 40);
  if (v5 && atomic_fetch_add_explicit((v5 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    RB::CustomShader::Closure::operator=();
  }

  return a1;
}

int32x2_t *RB::DisplayList::SpillItem::render(int32x2_t *a1, uint64_t a2, RB::RenderPass *this, int a4, char a5, int32x2_t a6)
{
  if (a1[8].i8[0])
  {
    goto LABEL_14;
  }

  v12 = a1[9];
  if (!v12)
  {
    goto LABEL_15;
  }

  v35[0] = *(a2 + 1072);
  v35[1] = 0;
  v36 = 0uLL;
  v37 = 0;
  do
  {
    (*(*v12 + 96))(v12, a2);
    (*(*v12 + 104))(v12, a2, this, v35, *&a6);
    v12 = v12[1];
  }

  while (v12);
  v13 = v35[1];
  v14 = v36;
  if (v36)
  {
    v15 = 0;
    v16 = (v35[1] + 16);
    do
    {
      v17 = *v16;
      *v16 = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
        v14 = v36;
      }

      ++v15;
      v16 += 10;
    }

    while (v15 < v14);
    v13 = v35[1];
  }

  if (v13)
  {
    free(v13);
  }

  if (a1[8].i8[0])
  {
LABEL_14:
    RB::RenderPass::push_layer(this);
  }

  else
  {
LABEL_15:
    RB::RenderPass::pop_layer(this);
  }

  if (a1[8].i8[0] == 1 && (a1[5].i16[3] & 0x3F) == 1)
  {
    return RB::Bounds::intersect((*(a2 + 1456) + 32), a1[6], a1[7]);
  }

  v18.i32[0] = 0;
  v19 = a1[7];
  v20 = vadd_s32(a1[6], a6);
  v21 = vceq_s32(v19, 0x8000000080000000);
  v22 = vdup_lane_s32(vcgt_s32(v18, vpmin_u32(v21, v21)), 0);
  RB::Coverage::set_plane(v35, this, vbsl_s8(v22, 0x100000001000000, vcvt_f32_s32(v20)), COERCE_DOUBLE(vbsl_s8(v22, vneg_f32(0x80000000800000), vcvt_f32_s32(v19))));
  v23 = 0;
  WORD6(v36) = a1[5].i16[2];
  v24 = a1[8].u8[0];
  if ((v24 & 1) == 0)
  {
    v23 = (a1[8].i32[1] >> 8) & 2;
  }

  v25 = v23 | v24;
  v26 = *(this + 33) == 2 ? 131107 : 35;
  v27 = v26 | (v25 << 18);
  v28 = a5 & 0x3F;
  v29 = a4 ? 0x10000 : 0;
  v30 = v27 | v29;
  RB::RenderFrame::alloc_buffer_region(*(*this + 16), 0x20, 4uLL, 0, &v38);
  v31 = v38;
  if (v38)
  {
    v32 = (*(v38 + 7) + v39.i64[0]);
    v33 = v36;
    *v32 = *v35;
    v32[1] = v33;
  }

  else
  {
    v38 = 0;
    v39 = 0uLL;
  }

  *(this + 48) = RB::RenderFrame::buffer_id(*(*this + 16), v31);
  *(this + 196) = vmovn_s64(v39);
  result = RB::RenderPass::draw_indexed_primitives(this, (v30 | (v28 << 32)), 4, **(*this + 16) + 136, 4uLL, 1uLL, v20, v19);
  if (a1[8].i8[0])
  {
    return RB::Bounds::intersect((*(a2 + 1456) + 32), a1[6], a1[7]);
  }

  *(*(a2 + 1456) + 32) = *(*(a2 + 1456) + 16);
  return result;
}

void sub_195D1AEDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  RB::Filter::RenderGroup::~RenderGroup(va);
  _Unwind_Resume(a1);
}

void RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Custom>::render(float32x4_t *a1, int a2, RB::RenderPass *a3, double a4, int a5, unsigned int a6)
{
  v6 = a1[3].i64[0];
  v7.i64[0] = SLODWORD(a4);
  v7.i64[1] = SHIDWORD(a4);
  v8 = v6[1];
  _Q0 = vaddq_f64(v6[2], vcvtq_f64_s64(v7));
  v14[0] = *v6;
  v14[1] = v8;
  v14[2] = _Q0;
  LOWORD(_Q0.f64[0]) = a1[2].i16[6];
  __asm { FCVT            S0, H0 }

  RB::render_primitive(a3, v14, a1 + 4, &a1[7], a5, a6, *_Q0.f64);
}

void RB::render_primitive(RB::RenderPass *a1, float64x2_t *a2, float32x4_t *a3, RB::Fill::Custom *this, int a5, unsigned int a6, float a7)
{
  v14 = RB::Fill::Custom::function(this, a1);
  if (v14)
  {
    v15 = v14;
    RB::RenderFrame::alloc_buffer_region(*(*a1 + 16), (*(v14 + 28) + 112), 4uLL, 0, &v25);
    if (v25)
    {
      v16 = *(v25 + 7) + v26.i64[0];
      v24 = 0;
      memset(v23, 0, sizeof(v23));
      v21 = 0;
      v22 = 0;
      if (RB::Coverage::Primitive::set_globals(a3, v16, a1, a2, a6, &v24, v23, &v21))
      {
        if (RB::Fill::Custom::set_custom(this, (v16 + 84), v15, v16 + 112, a1, a2, a7))
        {
          *(a1 + 48) = RB::RenderFrame::buffer_id(*(*a1 + 16), v25);
          *(a1 + 196) = vmovn_s64(v26);
          v20 = v24 & 0xF;
          RB::Coverage::Primitive::set_coverage_state(a3, &v20);
          if (*(a1 + 33) == 2)
          {
            v17 = 131080;
          }

          else
          {
            v17 = 8;
          }

          if (a5)
          {
            v18 = 0x10000;
          }

          else
          {
            v18 = 0;
          }

          LODWORD(v19) = (v17 | v18) & 0xFFFF003F | ((v20 & 0x3FF) << 6);
          HIDWORD(v19) = a6 & 0x3F;
          RB::Fill::Custom::set_fill_state(this, &v19, v15, a1);
          RB::RenderPass::draw_indexed_primitives(a1, v19, 4, v23, 0, 1uLL, v21, v22);
          if (*(&v23[1] + 1))
          {
            v20 = v20 & 0xFFFFFFF0 | 1;
            LODWORD(v19) = (v20 << 6) & 0xFFC0 | v19 & 0xFFFF003F;
            RB::RenderPass::draw_indexed_primitives(a1, v19, 4, &v23[1] + 8, 0, 1uLL, v21, v22);
          }

          *(a1 + 26) = 0;
          *(a1 + 51) = 0;
          RB::Fill::Custom::reset_custom(this, a1);
        }
      }
    }
  }
}

char *RB::Fill::Custom::function(RB::Fill::Custom *this, RB::RenderPass *a2)
{
  result = *this;
  if (result)
  {
    v4 = *(*a2 + 16);
    v5 = this + 8;
    v7 = *(this + 17);
    v6 = *(this + 18);
    if (v7)
    {
      v5 = v7;
    }

    v8[0] = v5;
    v8[1] = v6;
    return RB::CustomShader::Function::function(result, v4, 0, v8);
  }

  return result;
}

uint64_t RB::Fill::Custom::set_custom(uint64_t a1, float32x2_t *a2, void *a3, uint64_t a4, int32x2_t *a5, float64x2_t *a6, float a7)
{
  _S8 = a7;
  v14 = a6[1];
  *v33 = *a6;
  *&v33[16] = v14;
  v34 = a6[2];
  if (RB::AffineTransform::invert(v33))
  {
    v15 = v33;
  }

  else
  {
    v15 = a6;
  }

  v16 = v15[1];
  v17 = a5[13];
  v18.i64[0] = v17.i32[0];
  v18.i64[1] = v17.i32[1];
  __asm { FMOV            V4.2D, #0.5 }

  v24 = vmulq_f64(vcvtq_f64_s64(v18), _Q4);
  _Q0 = vmulq_n_f64(*v15, v24.f64[0]);
  v26 = vmlaq_laneq_f64(vaddq_f64(_Q0, v15[2]), v16, v24, 1);
  *a2 = vcvt_f32_f64(_Q0);
  a2[1] = vcvt_f32_f64(vmulq_n_f64(v16, -v24.f64[1]));
  a2[2] = vcvt_f32_f64(v26);
  __asm { FCVT            H0, S8 }

  a2[3].i16[0] = LOWORD(_Q0.f64[0]);
  if ((*(a1 + 240) & 2) != 0)
  {
    v27 = a5[16].i8[0] & 0xF;
  }

  else
  {
    v27 = a5[16].u8[0];
  }

  memset(v33, 0, 24);
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v28 = RB::CustomShader::Closure::marshal_args(a1, a5, a3, v27, (a1 + 224), a4, v33, &v30);
  if (v28)
  {
    a5[28].i32[1] = RB::RenderFrame::buffer_id(*(*a5 + 16), *v33);
    a5[29] = vmovn_s64(*&v33[8]);
    RB::RenderPass::set_texture(a5, 0, v30, MTLPixelFormatInvalid);
    RB::RenderPass::set_texture(a5, 1, v31, MTLPixelFormatInvalid);
    RB::RenderPass::set_texture(a5, 2, v32, MTLPixelFormatInvalid);
  }

  return v28;
}

int32x2_t *RBGetCachedMTLTexture(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, float64x2_t *a5, char a6)
{
  if (!a2)
  {
    return 0;
  }

  v11 = **(a1 + 16);
  v17 = a2;
  v18 = 2;
  v19 = a3;
  result = RB::UntypedTable::lookup((v11 + 848), &v17, 0);
  if (result)
  {
    v13 = result;
    if (*&result[2] != a2)
    {
      return 0;
    }

    entry = RB::TextureCache::find_entry(v13, &v16);
    if ((entry & 0x80000000) != 0)
    {
      return 0;
    }

    else
    {
      v15 = v13 + 48;
      if (*(v13 + 64))
      {
        v15 = *(v13 + 64);
      }

      return *(v15 + 16 * entry + 8);
    }
  }

  return result;
}

unint64_t RB::Fill::Custom::set_fill_state(RB::Fill::Custom *this, RB::RenderState *a2, RB::Function *a3, RB::RenderPass *a4)
{
  v8 = RB::Function::Info::texture_count((a3 + 40)) & 3 | (4 * (*(this + 60) & 1));
  if (*(a4 + 128) < 0x10u || (*(this + 60) & 2) == 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = 8;
  }

  *a2 = *a2 & 0x3FFFF | ((v10 | v8) << 18);
  result = RB::RenderFrame::add_function(*(*a4 + 16), a3);
  *(a2 + 1) = *(a2 + 1) & 0x3F | (*(a3 + 1) << 6);
  return result;
}

void RB::Fill::Custom::reset_custom(RB::Fill::Custom *this, RB::RenderPass *a2)
{
  *(a2 + 62) = 0;
  *(a2 + 252) = 0;
  *(a2 + 64) = 0;
  *(a2 + 260) = 0;
  *(a2 + 236) = 0;
  *(a2 + 228) = 0;
  *(a2 + 244) = 0;
}

uint64_t RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::Custom>::~GenericItem(uint64_t a1)
{
  *a1 = &unk_1F0A3A540;

  v2 = *(a1 + 248);
  if (v2)
  {
    v3 = *(a1 + 248);
  }

  else
  {
    v3 = (a1 + 120);
  }

  if (*(a1 + 256))
  {
    v4 = 0;
    do
    {
      RB::CustomShader::Value::reset_data(v3);
      ++v4;
      v3 += 4;
    }

    while (v4 < *(a1 + 256));
    v2 = *(a1 + 248);
  }

  if (v2)
  {
    free(v2);
  }

  v5 = *(a1 + 112);
  if (v5 && atomic_fetch_add_explicit((v5 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    RB::CustomShader::Closure::operator=();
  }

  return a1;
}

uint64_t RB::Refcount<RB::CommitMarker::Observer,std::atomic<unsigned int>>::finalize(uint64_t result)
{
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void RB::CommitMarker::Observer::~Observer(id *this)
{
  *this = &unk_1F0A3E938;

  JUMPOUT(0x19A8C09E0);
}

{
  *this = &unk_1F0A3E938;
}

uint64_t RB::anonymous namespace::shared_surface_queue(RB::_anonymous_namespace_ *this)
{
  if ((atomic_load_explicit(&qword_1ED6D5590, memory_order_acquire) & 1) == 0)
  {
  }

  return _MergedGlobals_10;
}

double RB::BinAllocator::dealloc(uint64_t a1, double a2, __n128 a3)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (v5)
  {
    do
    {
      v6 = v5 >> 1;
      v7 = &v4[16 * (v5 >> 1)];
      v9 = *v7;
      v8 = v7 + 16;
      v5 += ~(v5 >> 1);
      if (SHIDWORD(a2) > v9)
      {
        v4 = v8;
      }

      else
      {
        v5 = v6;
      }
    }

    while (v5);
  }

  RB::BinAllocator::Shelf::dealloc(v4, SLOWORD(a2), a3.n128_i16[0]);
  if (v4[3] == v4[1])
  {
    v10 = *(a1 + 16);
    v11 = v4 - v10;
    if (v4 != v10 && *(v4 - 13) == *(v4 - 15))
    {
      *(v4 - 14) += v4[2];
      v12 = v11 >> 5;
      v13 = v11 >> 5;
      v14 = *(v4 + 2);
      if (v14)
      {
        free(v14);
      }

      v15 = (*(a1 + 24) - 1);
      *(a1 + 24) = v15;
      v16 = v15 - v13;
      if (v16)
      {
        memmove(v4, v4 + 16, 32 * v16);
      }

      v10 = *(a1 + 16);
      v4 = &v10[16 * (v12 - 1)];
    }

    v17 = (v4 + 16);
    v18 = *(a1 + 24);
    if (v4 + 16 != &v10[16 * v18] && v4[19] == v4[17])
    {
      v4[2] += v4[18];
      v19 = (v17 - v10) >> 5;
      v20 = *(v17 + 2);
      if (v20)
      {
        free(v20);
        LODWORD(v18) = *(a1 + 24);
      }

      v21 = (v18 - 1);
      *(a1 + 24) = v21;
      v22 = v21 - v19;
      if (v22)
      {
        memmove(v17, v17 + 32, 32 * v22);
      }
    }
  }

  result = *a1;
  *(a1 + 8) = *a1;
  *(a1 + 32) = -1;
  return result;
}

_WORD *RB::BinAllocator::Shelf::dealloc(RB::BinAllocator::Shelf *this, int a2, int a3)
{
  v3 = a3;
  v4 = a2;
  v8 = *(this + 2);
  result = (this + 16);
  v7 = v8;
  v9 = *(result - 5) + a3;
  *(result - 5) = v9;
  *(result - 4) = v9;
  v10 = *(result + 2);
  if (!v10)
  {
LABEL_17:
    if (*(this + 7) < (v10 + 1))
    {
      result = RB::vector<RB::Animation::TermOrArg,0ul,unsigned int>::reserve_slow(result, v10 + 1);
      v7 = *(this + 2);
      v10 = *(this + 6);
    }

    *&v7[2 * v10] = v4 | (v3 << 16);
LABEL_29:
    ++*(this + 6);
    return result;
  }

  v11 = v7;
  v12 = *(result + 2);
  do
  {
    v13 = v12 >> 1;
    v14 = &v11[2 * (v12 >> 1)];
    v16 = *v14;
    v15 = v14 + 2;
    v12 += ~(v12 >> 1);
    if (v16 < a2)
    {
      v11 = v15;
    }

    else
    {
      v12 = v13;
    }
  }

  while (v12);
  if (v11 == &v7[2 * v10])
  {
    v21 = &v7[2 * (v10 - 1)];
    v22 = v21[1];
    if (v22 + *v21 == a2)
    {
      v21[1] = v22 + a3;
      return result;
    }

    goto LABEL_17;
  }

  if (a3 + a2 != *v11)
  {
    v23 = v11 - v7;
    if (v11 != v7)
    {
      v24 = *(v11 - 1);
      if (v24 + *(v11 - 2) == a2)
      {
        *(v11 - 1) = v24 + a3;
        return result;
      }
    }

    v25 = v23 >> 2;
    if (*(this + 7) < (v10 + 1))
    {
      result = RB::vector<RB::Animation::TermOrArg,0ul,unsigned int>::reserve_slow(result, v10 + 1);
      v25 = v23 >> 2;
      v7 = *(this + 2);
      v10 = *(this + 6);
    }

    v26 = v10 > v25;
    v27 = v10 - v25;
    if (v26)
    {
      result = memmove(v7 + v23 + 4, v7 + v23, 4 * v27);
    }

    *(v7 + v23) = v4 | (v3 << 16);
    goto LABEL_29;
  }

  *v11 = a2;
  v17 = v11[1] + a3;
  v11[1] = v17;
  v18 = v11 - v7;
  if (v11 != v7)
  {
    v19 = *(v11 - 1);
    if (v19 + *(v11 - 2) == a2)
    {
      *(v11 - 1) = v19 + v17;
      v20 = (v10 - 1);
      *(this + 6) = v20;
      if (v20 != v18 >> 2)
      {

        return memmove(v11, v11 + 2, 4 * (v20 - (v18 >> 2)));
      }
    }
  }

  return result;
}

uint64_t RB::Refcount<RB::SharedSurface,std::atomic<unsigned int>>::finalize(uint64_t result)
{
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void RB::SharedSurface::~SharedSurface(RB::Surface **this)
{
  v33 = *MEMORY[0x1E69E9840];
  *this = &unk_1F0A38F90;
  v2 = RB::shared_surface_log(this);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
  if (v3)
  {
    ID = IOSurfaceGetID(*(this[3] + 6));
    v29 = 134218240;
    v30 = this;
    v31 = 1024;
    v32 = ID;
    _os_log_impl(&dword_195CE8000, v2, OS_LOG_TYPE_INFO, "%p: delete (%08x)\n", &v29, 0x12u);
  }

  v5 = RB::SurfacePool::shared(v3);
  RB::SurfacePool::dealloc(v5, this[3], 0);
  v6 = this[19];
  if (*(this + 40))
  {
    v7 = 0;
    v8 = v6 + 9;
    do
    {

      v9 = *(v8 - 1);
      if (v9 && atomic_fetch_add_explicit((v9 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        [RBLayer displayWithBounds:callback:];
      }

      RB::SharedSubsurface::~SharedSubsurface(v8 - 8);
      v10 = *(v8 - 9);
      if (v10 && atomic_fetch_add_explicit((v10 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        [RBLayer displayWithBounds:callback:];
      }

      ++v7;
      v8 += 16;
    }

    while (v7 < *(this + 40));
    v6 = this[19];
  }

  if (v6)
  {
    free(v6);
  }

  v11 = this[17];
  if (*(this + 36))
  {
    v12 = 0;
    v13 = v11 + 8;
    do
    {
      if (*v13 && atomic_fetch_add_explicit((*v13 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RB::SharedSurface::~SharedSurface();
      }

      v14 = *(v13 - 1);
      if (v14 && atomic_fetch_add_explicit((v14 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        [RBLayer displayWithBounds:callback:];
      }

      ++v12;
      v13 += 56;
    }

    while (v12 < *(this + 36));
    v11 = this[17];
  }

  if (v11)
  {
    free(v11);
  }

  v15 = this[15];
  if (*(this + 32))
  {
    v16 = 0;
    v17 = v15 + 1;
    do
    {

      v18 = *(v17 - 1);
      if (v18 && atomic_fetch_add_explicit((v18 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        [RBLayer displayWithBounds:callback:];
      }

      ++v16;
      v17 += 8;
    }

    while (v16 < *(this + 32));
    v15 = this[15];
  }

  if (v15)
  {
    free(v15);
  }

  v19 = this[12];
  if (*(this + 26))
  {
    v20 = 0;
    v21 = v19 + 8;
    do
    {
      if (*v21 && atomic_fetch_add_explicit((*v21 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RB::SharedSurface::~SharedSurface();
      }

      v22 = *(v21 - 1);
      if (v22 && atomic_fetch_add_explicit((v22 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        [RBLayer displayWithBounds:callback:];
      }

      ++v20;
      v21 += 40;
    }

    while (v20 < *(this + 26));
    v19 = this[12];
  }

  if (v19)
  {
    free(v19);
  }

  v23 = this[10];
  if (*(this + 22))
  {
    v24 = 0;
    do
    {
      if (*v23 && atomic_fetch_add_explicit((*v23 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        [RBLayer displayWithBounds:callback:];
      }

      ++v24;
      v23 = (v23 + 40);
    }

    while (v24 < *(this + 22));
    v23 = this[10];
  }

  if (v23)
  {
    free(v23);
  }

  v25 = this[6];
  v26 = *(this + 14);
  if (v26)
  {
    v27 = 0;
    v28 = v25 + 2;
    do
    {
      if (*v28)
      {
        free(*v28);
        v26 = *(this + 14);
      }

      ++v27;
      v28 += 4;
    }

    while (v27 < v26);
    v25 = this[6];
  }

  if (v25)
  {
    free(v25);
  }
}

{
  RB::SharedSurface::~SharedSurface(this);

  JUMPOUT(0x19A8C09E0);
}

void sub_195D1BDC4(_Unwind_Exception *a1)
{
  RB::vector<RB::SharedSurface::AsyncUpdate,0ul,unsigned int>::~vector((v1 + 19));
  RB::vector<RB::SharedSurface::Copy,0ul,unsigned int>::~vector(v1 + 17);
  RB::vector<RB::SharedSurface::Update,0ul,unsigned int>::~vector((v1 + 15));
  RB::vector<RB::SharedSurface::Remove,0ul,unsigned int>::~vector(v1 + 12);
  RB::vector<RB::SharedSurface::Allocation,0ul,unsigned int>::~vector(v1 + 10);
  RB::BinAllocator::~BinAllocator((v1 + 4));
  _Unwind_Resume(a1);
}

uint64_t RB::Refcount<RB::SharedSurfaceClient,std::atomic<unsigned int>>::finalize(uint64_t result)
{
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void RB::Symbol::Glyph::Layer::set_stroke_keyframes(_DWORD *a1, const void *a2, uint64_t a3, float32x2_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a3 || (a1[26] & 0x30000000) != 0x10000000)
  {
    return;
  }

  a4.i32[0] = a1[15];
  v7 = vrecpe_f32(a4);
  v8 = vmul_f32(vrecps_f32(a4, v7), v7);
  RB::Path::JoinStroke::JoinStroke(v15, 0, 0, 0, a2, a3, vmul_f32(v8, vrecps_f32(a4, v8)).f32[0] * 0.5);
  if (v18)
  {
    operator new();
  }

  v9 = *a1;
  v10 = *(*a1 + 32);
  if (v10 == *(*a1 + 16))
  {
    v11 = v9[5];
    if (v11 == v9[3])
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = v9[5];
  }

  RBPathRelease(v10, v11);
  v9[4] = RBPathRetain(v9[2], v9[3]);
  v9[5] = v12;
LABEL_9:
  v13 = *a1;
  v14 = *a1;
  if (*(*a1 + 56) < a3)
  {
    v14 = *a1;
    if (*(v13 + 60) < a3)
    {
      RB::vector<RBColor,0ul,unsigned int>::reserve_slow(v13 + 48, a3);
      v14 = *a1;
    }
  }

  *(v13 + 56) = a3;
  memcpy(*(v14 + 48), a2, 16 * a3);
  a1[26] |= 0x10u;
  *(*a1 + 80) = -1082130432;
  *(a1 + 108) |= 2u;
  if (v20)
  {
    free(v20);
  }

  if (v19)
  {
    free(v19);
  }

  if (v17)
  {
    free(v17);
  }

  if (__src)
  {
    free(__src);
  }
}

void sub_195D1C120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  RB::Path::JoinStroke::~JoinStroke(va);
  _Unwind_Resume(a1);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,false>(uint64_t result, unint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v25 = *(a2 - 2);
        v26 = *v9;
        v27 = -1;
        if (v25 >= *v9)
        {
          v27 = 1;
        }

        if (v25 == *v9)
        {
          v28 = *(a2 - 1);
          v29 = v9[1];
          v30 = v28 >= v29;
          v31 = v28 == v29;
          v27 = -1;
          if (v30)
          {
            v27 = 1;
          }

          if (v31)
          {
            v27 = 0;
          }
        }

        if (v27 < 0)
        {
          *v9 = v25;
          *(a2 - 2) = v26;
          v32 = v9[1];
          v9[1] = *(a2 - 1);
          *(a2 - 1) = v32;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(v9, v9 + 2, v9 + 4);
      v33 = *(a2 - 2);
      v34 = v9[4];
      v35 = -1;
      if (v33 >= v34)
      {
        v35 = 1;
      }

      if (v33 == v34)
      {
        v36 = *(a2 - 1);
        v37 = v9[5];
        v30 = v36 >= v37;
        v38 = v36 == v37;
        v35 = -1;
        if (v30)
        {
          v35 = 1;
        }

        if (v38)
        {
          v35 = 0;
        }
      }

      if (v35 < 0)
      {
        v9[4] = v33;
        *(a2 - 2) = v34;
        v39 = v9[5];
        v9[5] = *(a2 - 1);
        *(a2 - 1) = v39;
        v40 = v9[4];
        v41 = v9[2];
        v42 = -1;
        if (v40 >= v41)
        {
          v42 = 1;
        }

        if (v40 == v41)
        {
          v43 = v9[5];
          v44 = v9[3];
          v30 = v43 >= v44;
          v45 = v43 == v44;
          v42 = -1;
          if (v30)
          {
            v42 = 1;
          }

          if (v45)
          {
            v42 = 0;
          }
        }

        if (v42 < 0)
        {
          v46 = v9[3];
          v47 = v9[5];
          v9[2] = v40;
          v9[3] = v47;
          v9[4] = v41;
          v9[5] = v46;
          v48 = *v9;
          v49 = -1;
          if (v40 >= *v9)
          {
            v49 = 1;
          }

          if (v40 == *v9)
          {
            v50 = v9[1];
            v30 = v47 >= v50;
            v51 = v47 == v50;
            v49 = -1;
            if (v30)
            {
              v49 = 1;
            }

            if (v51)
            {
              v49 = 0;
            }
          }

          if (v49 < 0)
          {
            v52 = v9[1];
            *v9 = v40;
            v9[1] = v47;
            v9[2] = v48;
            v9[3] = v52;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(v9, v9 + 2, v9 + 4, v9 + 6, a2 - 2);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *>(v9, a2);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *>(v9, a2);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,std::pair<unsigned long,unsigned long> *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = &v9[2 * (v12 >> 1)];
    if (v12 < 0x81)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(&v9[2 * (v12 >> 1)], v9, a2 - 2);
      if (a5)
      {
        goto LABEL_28;
      }
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(v9, &v9[2 * (v12 >> 1)], a2 - 2);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(v9 + 2, v14 - 2, a2 - 4);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(v9 + 4, &v9[2 * v13 + 2], a2 - 6);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(v14 - 2, v14, &v9[2 * v13 + 2]);
      v15 = *v9;
      *v9 = *v14;
      *v14 = v15;
      if (a5)
      {
        goto LABEL_28;
      }
    }

    v16 = *(v9 - 2);
    v17 = v16 == *v9;
    if (v16 >= *v9)
    {
      v18 = 1;
    }

    else
    {
      v18 = -1;
    }

    if (v17)
    {
      v19 = *(v9 - 1);
      v20 = v9[1];
      v21 = v19 == v20;
      v18 = v19 >= v20 ? 1 : -1;
      if (v21)
      {
        v18 = 0;
      }
    }

    if ((v18 & 0x80) == 0)
    {
      result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,std::pair<unsigned long,unsigned long> *,std::__less<void,void> &>(v9, a2);
      v9 = result;
      goto LABEL_33;
    }

LABEL_28:
    v22 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,std::pair<unsigned long,unsigned long> *,std::__less<void,void> &>(v9, a2);
    if ((v23 & 1) == 0)
    {
      goto LABEL_31;
    }

    v24 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *>(v9, v22);
    v9 = v22 + 2;
    result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *>(v22 + 2, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v22;
      if (v24)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v24)
    {
LABEL_31:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,false>(v8, v22, a3, -v11, a5 & 1);
      v9 = v22 + 2;
LABEL_33:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(v9, v9 + 2, a2 - 2);
}

void RB::SharedSurfaceGroup::relocate_surface(RB::SharedSurfaceGroup *this, int32x2_t *a2, int a3, int a4)
{
  v26 = 0;
  if (a2[11].i32[0])
  {
    v7 = this;
    v8 = 0;
    v9 = a4 - 600;
    while (1)
    {
      v10 = (*&a2[10] + 40 * v8);
      if ((v10[4].i8[1] & 1) == 0 && v10[3].i32[1] < v9)
      {
        v24[0] = v7;
        v24[1] = &v26;
        v24[2] = v10;
        v24[3] = a2;
        v25 = a4;
        v11 = *(v7 + 6);
        if (v11)
        {
          v12 = *(v7 + 2);
          v13 = 8 * v11;
          while (1)
          {
            v23 = 0.0;
            v14 = *v12;
            if (*v12 != a2)
            {
              v15 = *(v14 + 3);
              v16 = a2[3];
              if (*(v15 + 32) == *(*&v16 + 32) && *(v15 + 40) == *(*&v16 + 40) && *(v15 + 160) == *(*&v16 + 160) && *(v14 + 18) == *a2[9].i32)
              {
                this = RB::BinAllocator::alloc(v14 + 4, &v23, v10[2]);
                if (this)
                {
                  break;
                }
              }
            }

            ++v12;
            v13 -= 8;
            if (!v13)
            {
              goto LABEL_14;
            }
          }

          ++*(v14 + 28);
          RB::SharedSurfaceGroup::relocate_surface(RB::SharedSurface *,BOOL,unsigned int)::$_0::operator()(v24, *v12, v23);
          goto LABEL_18;
        }

LABEL_14:
        if (a3)
        {
          v17 = a2[4];
          v18 = vcgt_s32(v17, 0x10000000100);
          if ((vpmin_u32(v18, v18).u32[0] & 0x80000000) != 0)
          {
            v19 = vshr_n_s32(v17, 1uLL);
            v20 = vcge_s32(v19, v10[2]);
            if ((vpmin_u32(v20, v20).u32[0] & 0x80000000) != 0)
            {
              v21 = RB::SurfacePool::shared(this);
              this = RB::SurfacePool::alloc(v21, *v7, *(*&a2[3] + 32), *(*&a2[3] + 160), 1u, 0, *(*&a2[3] + 40), 0, v19, 0.0, 0);
              if (this)
              {
                operator new();
              }
            }
          }
        }
      }

      ++v8;
LABEL_18:
      if (v8 >= a2[11].i32[0])
      {
        if (v26)
        {
          dispatch_async_f(v22, v7, RB::SharedSurfaceGroup::relocate_surface(RB::SharedSurface *,BOOL,unsigned int)::$_1::__invoke);
        }

        return;
      }
    }
  }
}

void RB::Symbol::Model::~Model(RB::Symbol::Model *this)
{
  *this = &unk_1F0A38428;
  std::unique_ptr<RB::Symbol::Glyph const,RB::Symbol::GlyphCache::Unref>::reset[abi:nn200100]((this + 112), 0);
  v2 = *(this + 5);
  if (*(this + 12))
  {
    v3 = 0;
    do
    {
    }

    while (v3 < *(this + 12));
    v2 = *(this + 5);
  }

  if (v2)
  {
    free(v2);
  }

  v4 = *(this + 3);
  if (v4)
  {
    free(v4);
  }

  JUMPOUT(0x19A8C09E0);
}

{
  *this = &unk_1F0A38428;
  std::unique_ptr<RB::Symbol::Glyph const,RB::Symbol::GlyphCache::Unref>::reset[abi:nn200100]((this + 112), 0);
  v2 = *(this + 5);
  if (*(this + 12))
  {
    v3 = 0;
    do
    {
    }

    while (v3 < *(this + 12));
    v2 = *(this + 5);
  }

  if (v2)
  {
    free(v2);
  }

  v4 = *(this + 3);
  if (v4)
  {
    free(v4);
  }
}

uint64_t RB::Refcount<RB::Symbol::Model,std::atomic<unsigned int>>::finalize(uint64_t result)
{
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void RB::Symbol::GlyphCache::unref(os_unfair_lock_s *this, const RB::Symbol::Glyph *a2)
{
  os_unfair_lock_lock(this);
  v4 = *(a2 + 7) - 1;
  *(a2 + 7) = v4;
  if (!v4)
  {
    RB::UntypedTable::remove_ptr(&this[2], a2);
    os_unfair_lock_unlock(this);
    RB::Symbol::Glyph::~Glyph(a2);

    JUMPOUT(0x19A8C09E0);
  }

  os_unfair_lock_unlock(this);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned int> *,false>(uint64_t result, float *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 3;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v113 = *(a2 - 2);
        v114 = *v9;
        v115 = *(a2 - 1);
        v116 = *(v9 + 4);
        v117 = v115 < v116;
        if (v113 != v114)
        {
          v117 = v113 < *v9;
        }

        if (v117)
        {
          *v9 = v113;
          *(a2 - 2) = v114;
          *(v9 + 4) = v115;
          *(a2 - 1) = v116;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned int> *,0>(v9, v9 + 8, (v9 + 16), (a2 - 2));
    }

    if (v12 == 5)
    {
      result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned int> *,0>(v9, v9 + 8, (v9 + 16), v9 + 24);
      v99 = *(a2 - 2);
      v100 = *(v9 + 24);
      v101 = *(a2 - 1);
      v102 = *(v9 + 28);
      v103 = v101 < v102;
      if (v99 != v100)
      {
        v103 = v99 < v100;
      }

      if (v103)
      {
        *(v9 + 24) = v99;
        *(a2 - 2) = v100;
        *(v9 + 28) = v101;
        *(a2 - 1) = v102;
        v104 = *(v9 + 24);
        v105 = *(v9 + 16);
        v106 = *(v9 + 28);
        v107 = *(v9 + 20);
        v108 = v106 < v107;
        if (v104 != v105)
        {
          v108 = v104 < v105;
        }

        if (v108)
        {
          *(v9 + 16) = v104;
          *(v9 + 24) = v105;
          *(v9 + 20) = v106;
          *(v9 + 28) = v107;
          v109 = *(v9 + 8);
          v110 = *(v9 + 12);
          v111 = v106 < v110;
          if (v104 != v109)
          {
            v111 = v104 < v109;
          }

          if (v111)
          {
            *(v9 + 8) = v104;
            *(v9 + 16) = v109;
            *(v9 + 12) = v106;
            *(v9 + 20) = v110;
            v112 = *v9;
            goto LABEL_153;
          }
        }
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned int> *>(v9, a2);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned int> *>(v9, a2);
      }
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned int> *,std::pair<float,unsigned int> *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v9 + 8 * (v12 >> 1);
    v14 = *(a2 - 2);
    v15 = *(a2 - 1);
    if (v12 >= 0x81)
    {
      v16 = *v13;
      v17 = *v9;
      v18 = *(v13 + 4);
      v19 = *(v9 + 4);
      v20 = *v13 < *v9;
      if (*v13 == *v9)
      {
        v20 = v18 < v19;
      }

      v21 = v15 < v18;
      if (v14 != v16)
      {
        v21 = v14 < v16;
      }

      if (v20)
      {
        if (v21)
        {
          *v9 = v14;
          *(a2 - 2) = v17;
          *(v9 + 4) = v15;
          goto LABEL_43;
        }

        *v9 = v16;
        *v13 = v17;
        *(v9 + 4) = v18;
        *(v13 + 4) = v19;
        v36 = *(a2 - 2);
        v37 = *(a2 - 1);
        v38 = v37 < v19;
        if (v36 != v17)
        {
          v38 = v36 < v17;
        }

        if (v38)
        {
          *v13 = v36;
          *(a2 - 2) = v17;
          *(v13 + 4) = v37;
LABEL_43:
          *(a2 - 1) = v19;
        }
      }

      else if (v21)
      {
        *v13 = v14;
        *(a2 - 2) = v16;
        *(v13 + 4) = v15;
        *(a2 - 1) = v18;
        v28 = *v9;
        v29 = *(v13 + 4);
        v30 = *(v9 + 4);
        v31 = v29 < v30;
        if (*v13 != *v9)
        {
          v31 = *v13 < *v9;
        }

        if (v31)
        {
          *v9 = *v13;
          *v13 = v28;
          *(v9 + 4) = v29;
          *(v13 + 4) = v30;
        }
      }

      v39 = v13 - 8;
      v40 = *(v13 - 8);
      v41 = *(v9 + 8);
      v42 = *(v13 - 4);
      v43 = *(v9 + 12);
      if (v40 == v41)
      {
        v44 = v42 < v43;
      }

      else
      {
        v44 = v40 < v41;
      }

      v45 = *(a2 - 4);
      v46 = *(a2 - 3);
      v47 = v46 < v42;
      if (v45 != v40)
      {
        v47 = v45 < v40;
      }

      if (v44)
      {
        if (v47)
        {
          *(v9 + 8) = v45;
          *(a2 - 4) = v41;
          *(v9 + 12) = v46;
          goto LABEL_68;
        }

        *(v9 + 8) = v40;
        *v39 = v41;
        *(v9 + 12) = v42;
        *(v13 - 4) = v43;
        v55 = *(a2 - 4);
        v56 = *(a2 - 3);
        v57 = v56 < v43;
        if (v55 != v41)
        {
          v57 = v55 < v41;
        }

        if (v57)
        {
          *v39 = v55;
          *(a2 - 4) = v41;
          *(v13 - 4) = v56;
LABEL_68:
          *(a2 - 3) = v43;
        }
      }

      else if (v47)
      {
        *v39 = v45;
        *(a2 - 4) = v40;
        *(v13 - 4) = v46;
        *(a2 - 3) = v42;
        v48 = *(v9 + 8);
        v49 = *(v13 - 4);
        v50 = *(v9 + 12);
        v51 = v49 < v50;
        if (*v39 != v48)
        {
          v51 = *v39 < v48;
        }

        if (v51)
        {
          *(v9 + 8) = *v39;
          *v39 = v48;
          *(v9 + 12) = v49;
          *(v13 - 4) = v50;
        }
      }

      v58 = v13 + 8;
      v59 = *(v13 + 8);
      v60 = *(v9 + 16);
      v61 = *(v13 + 12);
      v62 = *(v9 + 20);
      if (v59 == v60)
      {
        v63 = v61 < v62;
      }

      else
      {
        v63 = v59 < v60;
      }

      v64 = *(a2 - 6);
      v65 = *(a2 - 5);
      v66 = v65 < v61;
      if (v64 != v59)
      {
        v66 = v64 < v59;
      }

      if (v63)
      {
        if (v66)
        {
          *(v9 + 16) = v64;
          *(a2 - 6) = v60;
          *(v9 + 20) = v65;
          goto LABEL_86;
        }

        *(v9 + 16) = v59;
        *v58 = v60;
        *(v9 + 20) = v61;
        *(v13 + 12) = v62;
        v71 = *(a2 - 6);
        v72 = *(a2 - 5);
        v73 = v72 < v62;
        if (v71 != v60)
        {
          v73 = v71 < v60;
        }

        if (v73)
        {
          *v58 = v71;
          *(a2 - 6) = v60;
          *(v13 + 12) = v72;
LABEL_86:
          *(a2 - 5) = v62;
        }
      }

      else if (v66)
      {
        *v58 = v64;
        *(a2 - 6) = v59;
        *(v13 + 12) = v65;
        *(a2 - 5) = v61;
        v67 = *(v9 + 16);
        v68 = *(v13 + 12);
        v69 = *(v9 + 20);
        v70 = v68 < v69;
        if (*v58 != v67)
        {
          v70 = *v58 < v67;
        }

        if (v70)
        {
          *(v9 + 16) = *v58;
          *v58 = v67;
          *(v9 + 20) = v68;
          *(v13 + 12) = v69;
        }
      }

      v74 = *v13;
      v75 = *v39;
      v76 = *(v13 + 4);
      v77 = *(v13 - 4);
      if (*v13 == *v39)
      {
        v78 = v76 < v77;
      }

      else
      {
        v78 = *v13 < *v39;
      }

      v79 = *v58;
      v80 = *(v13 + 12);
      v81 = v80 < v76;
      if (*v58 != v74)
      {
        v81 = *v58 < v74;
      }

      if (v78)
      {
        if (!v81)
        {
          *v39 = v74;
          *v13 = v75;
          v82 = v80 < v77;
          if (v79 != v75)
          {
            v82 = v79 < v75;
          }

          *(v13 - 4) = v76;
          *(v13 + 4) = v77;
          v39 = v13;
          v76 = v80;
          v74 = v79;
          if (!v82)
          {
            v76 = v77;
            v74 = v75;
            goto LABEL_104;
          }
        }

LABEL_103:
        *v39 = v79;
        *v58 = v75;
        *(v39 + 4) = v80;
        *(v58 + 4) = v77;
      }

      else if (v81)
      {
        *v13 = v79;
        *v58 = v74;
        *(v13 + 4) = v80;
        *(v13 + 12) = v76;
        if (v79 == v75)
        {
          v83 = v80 < v77;
        }

        else
        {
          v83 = v79 < v75;
        }

        v58 = v13;
        v76 = v77;
        v74 = v75;
        if (v83)
        {
          goto LABEL_103;
        }

        v76 = v80;
        v74 = v79;
      }

LABEL_104:
      v84 = *v9;
      *v9 = v74;
      *v13 = v84;
      v85 = *(v9 + 4);
      *(v9 + 4) = v76;
      *(v13 + 4) = v85;
      if (a5)
      {
        goto LABEL_108;
      }

      goto LABEL_105;
    }

    v22 = *v9;
    v23 = *v13;
    v24 = *(v9 + 4);
    v25 = *(v13 + 4);
    v26 = *v9 < *v13;
    if (*v9 == *v13)
    {
      v26 = v24 < v25;
    }

    v27 = v15 < v24;
    if (v14 != v22)
    {
      v27 = v14 < v22;
    }

    if (v26)
    {
      if (v27)
      {
        *v13 = v14;
        *(a2 - 2) = v23;
        *(v13 + 4) = v15;
        goto LABEL_61;
      }

      *v13 = v22;
      *v9 = v23;
      *(v13 + 4) = v24;
      *(v9 + 4) = v25;
      v52 = *(a2 - 2);
      v53 = *(a2 - 1);
      v54 = v53 < v25;
      if (v52 != v23)
      {
        v54 = v52 < v23;
      }

      if (v54)
      {
        *v9 = v52;
        *(a2 - 2) = v23;
        *(v9 + 4) = v53;
LABEL_61:
        *(a2 - 1) = v25;
      }

LABEL_62:
      if (a5)
      {
        goto LABEL_108;
      }

      goto LABEL_105;
    }

    if (!v27)
    {
      goto LABEL_62;
    }

    *v9 = v14;
    *(a2 - 2) = v22;
    *(v9 + 4) = v15;
    *(a2 - 1) = v24;
    v32 = *v13;
    v33 = *(v9 + 4);
    v34 = *(v13 + 4);
    v35 = v33 < v34;
    if (*v9 != *v13)
    {
      v35 = *v9 < *v13;
    }

    if (!v35)
    {
      goto LABEL_62;
    }

    *v13 = *v9;
    *v9 = v32;
    *(v13 + 4) = v33;
    *(v9 + 4) = v34;
    if (a5)
    {
      goto LABEL_108;
    }

LABEL_105:
    v86 = *(v9 - 8);
    v87 = *(v9 - 4) < *(v9 + 4);
    if (v86 != *v9)
    {
      v87 = v86 < *v9;
    }

    if (!v87)
    {
      result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,std::pair<float,unsigned int> *,std::__less<void,void> &>(v9, a2);
      v9 = result;
      goto LABEL_115;
    }

LABEL_108:
    v88 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,std::pair<float,unsigned int> *,std::__less<void,void> &>(v9, a2);
    if ((v89 & 1) == 0)
    {
      goto LABEL_113;
    }

    v90 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned int> *>(v9, v88);
    v9 = v88 + 8;
    result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned int> *>(v88 + 8, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v88;
      if (v90)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v90)
    {
LABEL_113:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned int> *,false>(v8, v88, a3, -v11, a5 & 1);
      v9 = v88 + 8;
LABEL_115:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v91 = *(v9 + 8);
  v92 = *v9;
  v93 = *(v9 + 12);
  v94 = *(v9 + 4);
  if (v91 == *v9)
  {
    v95 = v93 < v94;
  }

  else
  {
    v95 = v91 < *v9;
  }

  v96 = *(a2 - 2);
  v97 = *(a2 - 1);
  v98 = v97 < v93;
  if (v96 != v91)
  {
    v98 = v96 < v91;
  }

  if (v95)
  {
    if (v98)
    {
      *v9 = v96;
      *(a2 - 2) = v92;
      *(v9 + 4) = v97;
    }

    else
    {
      *v9 = v91;
      *(v9 + 8) = v92;
      *(v9 + 4) = v93;
      *(v9 + 12) = v94;
      v120 = *(a2 - 2);
      v121 = *(a2 - 1);
      v122 = v121 < v94;
      if (v120 != v92)
      {
        v122 = v120 < v92;
      }

      if (!v122)
      {
        return result;
      }

      *(v9 + 8) = v120;
      *(a2 - 2) = v92;
      *(v9 + 12) = v121;
    }

    *(a2 - 1) = v94;
    return result;
  }

  if (!v98)
  {
    return result;
  }

  *(v9 + 8) = v96;
  *(a2 - 2) = v91;
  *(v9 + 12) = v97;
  *(a2 - 1) = v93;
  v104 = *(v9 + 8);
  v112 = *v9;
  v106 = *(v9 + 12);
LABEL_153:
  v118 = *(v9 + 4);
  v119 = v106 < v118;
  if (v104 != v112)
  {
    v119 = v104 < v112;
  }

  if (v119)
  {
    *v9 = v104;
    *(v9 + 8) = v112;
    *(v9 + 4) = v106;
    *(v9 + 12) = v118;
  }

  return result;
}