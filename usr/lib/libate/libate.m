uint64_t (*EncoderCheck_ASTC(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v1 = *(a1 + 16) & 0x7FFLL;
  if ((v1 - 1) > 9)
  {
    return 0;
  }

  v2 = *(a1 + 24) & 0x7FFLL;
  if (v2 > 0x1E || ((1 << *(a1 + 24)) & 0x7FFE7FFE) == 0)
  {
    return 0;
  }

  if (((*(a1 + 24) >> 26) & 0xF) * ((*(a1 + 16) >> 34) & 0x1F) * ((*(a1 + 24) >> 30) & 0xFuLL) > 0xF)
  {
    return EncoderFactory_ASTC;
  }

  fprintf(*MEMORY[0x29EDCA610], "at_encoder_create: this combination of texelType (%u) and blockType (%u)\n                        would cause the image to grow larger.\n", v1, v2);
  return 0;
}

at_encoder_t at_encoder_create(at_texel_format_t texelType, at_alpha_t texelAlphaType, at_block_format_t blockType, at_alpha_t blockAlphaType, const float *backgroundColor)
{
  __dst = 0uLL;
  TexelInfo = GetTexelInfo(texelType);
  *&v24 = TexelInfo;
  *(&v24 + 1) = GetBlockInfo(blockType);
  *&v25 = __PAIR64__(blockAlphaType, texelAlphaType);
  if (at_get_cpucapabilities(void)::onceToken != -1)
  {
    at_encoder_create_cold_1();
  }

  *(&v25 + 1) = at_get_cpucapabilities(void)::gCapabilities & ~gCapabilitiesMask;
  if ((TexelInfo & 0x7FF) != 0)
  {
    if (texelAlphaType < at_alpha_count)
    {
      if (blockAlphaType < at_alpha_count)
      {
        if (backgroundColor)
        {
          memcpy(&__dst, backgroundColor, (TexelInfo >> 17) & 0x1C);
        }

        v10 = 0;
        v11 = 1;
        do
        {
          v12 = v11;
          v13 = (at_encoder_create::Factories[v10])(&__dst);
          if (v14)
          {
            v15 = v13 == 0;
          }

          else
          {
            v15 = 1;
          }

          if (!v15)
          {
            v16 = v13;
            Encoder = AllocateEncoder(v14);
            if (Encoder)
            {
              v18 = Encoder;
              v19 = &Encoder[4];
              v21 = v24;
              v20 = v25;
              *&Encoder[4].isa = __dst;
              *&Encoder[6].isa = v21;
              *&Encoder[8].isa = v20;
              if (v16(Encoder + 4, Encoder + 10))
              {
                return v18;
              }

              v18[10].isa = &unk_2A1EE7078;
              v18[11].isa = v19;
              os_release(v18);
            }
          }

          v11 = 0;
          v10 = 1;
        }

        while ((v12 & 1) != 0);
        fprintf(*MEMORY[0x29EDCA610], "at_encoder_create: no encoder found for texelType: %lu texelAlphaType: %u blockType: %lu blockAlphaType: %u\n");
      }

      else
      {
        fprintf(*MEMORY[0x29EDCA610], "at_encoder_create: Error blockAlphaType %u is out of range\n");
      }
    }

    else
    {
      fprintf(*MEMORY[0x29EDCA610], "at_encoder_create: Error texelAlphaType %u is out of range\n");
    }
  }

  else
  {
    fprintf(*MEMORY[0x29EDCA610], "at_encoder_create: Error unsupported texel type: %u\n");
  }

  return 0;
}

uint64_t GetBlockInfo(unint64_t a1)
{
  if (a1 <= 0x2A)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  return GetBlockInfo_BlockInfoTable[v1];
}

uint64_t GetTexelInfo(unint64_t a1)
{
  if (a1 <= 0xA)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  return GetTexelInfo_TexelInfoTable[v1];
}

uint64_t Unpremultiply_4x4_vec(uint64_t result)
{
  v2 = *(result + 368);
  v1 = *(result + 384);
  v3 = *(result + 336);
  v4 = *(result + 352);
  v5 = vminnmq_f32(*(result + 144), v3);
  v6 = vminnmq_f32(*(result + 160), v4);
  v7 = vminnmq_f32(*(result + 176), v2);
  v8 = vminnmq_f32(*(result + 192), v1);
  v9 = vminnmq_f32(*(result + 208), v3);
  v10 = vminnmq_f32(*(result + 224), v4);
  v11 = vminnmq_f32(*(result + 240), v2);
  v12 = vminnmq_f32(*(result + 256), v1);
  v13 = vminnmq_f32(*(result + 272), v3);
  v14 = vminnmq_f32(*(result + 288), v4);
  v15 = vminnmq_f32(*(result + 304), v2);
  v16 = vminnmq_f32(*(result + 320), v1);
  if ((vmaxvq_u32(vorrq_s8(vornq_s8(vmvnq_s8(vceqzq_f32(v3)), vceqzq_f32(v2)), vornq_s8(vmvnq_s8(vceqzq_f32(v4)), vceqzq_f32(v1)))) & 0x80000000) != 0)
  {
    __asm { FMOV            V24.4S, #1.0 }

    if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v3, _Q24), vceqq_f32(v2, _Q24)), vandq_s8(vceqq_f32(v4, _Q24), vceqq_f32(v1, _Q24)))) & 0x80000000) != 0)
    {
      *(result + 134) = 0;
      *(result + 136) = 1;
      *(result + 720) = 0u;
      *(result + 736) = 0u;
      *(result + 752) = 0u;
      *(result + 768) = 0u;
      *(result + 368) = _Q24;
      *(result + 384) = _Q24;
      v3 = _Q24;
      *(result + 336) = _Q24;
      *(result + 352) = _Q24;
      v4 = _Q24;
      v2 = _Q24;
      v1 = _Q24;
      *(result + 784) = 0;
    }
  }

  *(result + 144) = v5;
  *(result + 160) = v6;
  *(result + 176) = v7;
  *(result + 192) = v8;
  *(result + 208) = v9;
  *(result + 224) = v10;
  *(result + 240) = v11;
  *(result + 256) = v12;
  *(result + 272) = v13;
  *(result + 288) = v14;
  v22 = *(result + 124);
  *(result + 304) = v15;
  *(result + 320) = v16;
  if (v22 < 0.0)
  {
    v23 = *(result + 32);
    if (v23)
    {
      v24 = *v23;
    }

    else
    {
      v24 = xmmword_2984959B0;
    }

    v25 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v12, *v24.f32, 1), v8, v24.f32[0]), v16, v24, 2);
    v26 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v11, *v24.f32, 1), v7, v24.f32[0]), v15, v24, 2);
    v27 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v10, *v24.f32, 1), v6, v24.f32[0]), v14, v24, 2);
    v28 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v9, *v24.f32, 1), v5, v24.f32[0]), v13, v24, 2);
    *(result + 656) = v28;
    *(result + 672) = v27;
    *(result + 688) = v26;
    *(result + 704) = v25;
    v29 = vsubq_f32(v6, v27);
    v30 = vsubq_f32(v8, v25);
    v31 = vsubq_f32(v5, v28);
    v32 = vsubq_f32(v7, v26);
    v33 = vsubq_f32(v11, v26);
    v34 = vsubq_f32(v9, v28);
    v35 = vsubq_f32(v12, v25);
    v36 = vsubq_f32(v10, v27);
    v37 = vsubq_f32(v15, v26);
    v38 = vsubq_f32(v13, v28);
    v39 = vsubq_f32(v16, v25);
    v40 = vsubq_f32(v14, v27);
    v41 = vaddq_f32(vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v34, v34), v31, v31), v38, v38), vmlaq_f32(vmlaq_f32(vmulq_f32(v33, v33), v32, v32), v37, v37)), vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v36, v36), v29, v29), v40, v40), vmlaq_f32(vmlaq_f32(vmulq_f32(v35, v35), v30, v30), v39, v39)));
    v41.i64[0] = vpaddq_f32(v41, v41).u64[0];
    v41.f32[0] = vrecpes_f32(vpadd_f32(*v41.f32, *v41.f32).f32[0]);
    *(result + 124) = (v41.f32[0] * 3.0) + (v41.f32[0] * 3.0);
  }

  if (*(result + 134) < 0)
  {
    v42 = vdupq_n_s32(0x3B808081u);
    v43 = vcgeq_f32(v42, v2);
    v44 = vcgeq_f32(v42, v1);
    v45 = vcgeq_f32(v42, v4);
    v46 = vcgeq_f32(v42, v3);
    *(result + 720) = v46;
    *(result + 736) = v45;
    *(result + 752) = v43;
    *(result + 768) = v44;
    v47 = vorrq_s8(vandq_s8(vuzp1q_s16(v46, v45), xmmword_298495650), vandq_s8(vuzp1q_s16(v43, v44), xmmword_298495640));
    v47.i16[0] = vaddvq_s16(v47);
    *(result + 784) = v47.i16[0];
    *(result + 134) = vaddlv_u8(vcnt_s8(*v47.i8));
  }

  v48 = vzip1q_s32(v6, v14);
  v49 = vzip1q_s32(v5, v13);
  v50 = vzip2q_s32(v6, v14);
  v51 = vzip2q_s32(v5, v13);
  v52 = vzip2q_s32(v9, v3);
  v53 = vzip1q_s32(v51, v52);
  v54 = vzip2q_s32(v51, v52);
  v55 = vzip2q_s32(v49, vuzp2q_s32(v49, v9));
  v55.i32[3] = v3.i32[1];
  v56 = vzip1q_s32(v49, v9);
  v56.i32[3] = v3.i32[0];
  *(result + 432) = v53;
  *(result + 448) = v54;
  v57 = vzip2q_s32(v48, vuzp2q_s32(v48, v10));
  v57.i32[3] = v4.i32[1];
  *(result + 400) = v56;
  *(result + 416) = v55;
  v58 = vzip1q_s32(v48, v10);
  v58.i32[3] = v4.i32[0];
  v59 = vextq_s8(vzip2q_s32(v10, v50), v50, 4uLL);
  v59.i32[3] = v4.i32[3];
  v60 = vzip2q_s32(vextq_s8(v50, v50, 8uLL), v10);
  v60.i32[3] = v4.i32[2];
  *(result + 496) = v60;
  *(result + 512) = v59;
  *(result + 464) = v58;
  *(result + 480) = v57;
  v61 = vzip1q_s32(v8, v16);
  v62 = vzip1q_s32(v7, v15);
  v63 = vzip2q_s32(v8, v16);
  v64 = vzip2q_s32(v7, v15);
  v65 = vzip2q_s32(v11, v2);
  v66 = vzip1q_s32(v64, v65);
  v67 = vzip2q_s32(v62, vuzp2q_s32(v62, v11));
  v67.i32[3] = v2.i32[1];
  v68 = vzip1q_s32(v62, v11);
  v68.i32[3] = v2.i32[0];
  v69 = vzip2q_s32(v61, vuzp2q_s32(v61, v12));
  v69.i32[3] = v1.i32[1];
  v70 = vzip1q_s32(v61, v12);
  v70.i32[3] = v1.i32[0];
  v71 = vzip2q_s32(v64, v65);
  v72 = vextq_s8(vzip2q_s32(v12, v63), v63, 4uLL);
  v72.i32[3] = v1.i32[3];
  *(result + 560) = v66;
  *(result + 576) = v71;
  v73 = vzip2q_s32(vextq_s8(v63, v63, 8uLL), v12);
  v73.i32[3] = v1.i32[2];
  *(result + 528) = v68;
  *(result + 544) = v67;
  *(result + 624) = v73;
  *(result + 640) = v72;
  *(result + 592) = v70;
  *(result + 608) = v69;
  v74 = vmulq_f32(v7, v7);
  v75 = vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(v5, v7), vaddq_f32(v6, v8)), vaddq_f32(vaddq_f32(v9, v11), vaddq_f32(v10, v12))), vpaddq_f32(vaddq_f32(vaddq_f32(v13, v15), vaddq_f32(v14, v16)), vaddq_f32(vaddq_f32(v3, v2), vaddq_f32(v4, v1))));
  v76 = vpaddq_f32(vpaddq_f32(vaddq_f32(vmlaq_f32(v74, v5, v5), vmlaq_f32(vmulq_f32(v8, v8), v6, v6)), vaddq_f32(vmlaq_f32(vmulq_f32(v11, v11), v9, v9), vmlaq_f32(vmulq_f32(v12, v12), v10, v10))), vpaddq_f32(vaddq_f32(vmlaq_f32(vmulq_f32(v15, v15), v13, v13), vmlaq_f32(vmulq_f32(v16, v16), v14, v14)), vaddq_f32(vmlaq_f32(vmulq_f32(v2, v2), v3, v3), vmlaq_f32(vmulq_f32(v1, v1), v4, v4))));
  v77 = vmulq_f32(v75, vdupq_n_s32(0x3D800000u));
  v78 = vmlsq_f32(v76, v77, v75);
  *(result + 16) = v77;
  v78.i64[0] = vpaddq_f32(v78, v78).u64[0];
  *(result + 120) = vpadd_f32(*v78.f32, *v78.f32).u32[0];
  if (*(result + 136) <= 0)
  {
    *(result + 136) = v77.f32[3] >= 0.99988;
  }

  return result;
}

uint64_t AllocateEncoder(uint64_t a1)
{
  v2 = objc_opt_class();

  return MEMORY[0x2A1C74938](v2, a1 + 96);
}

uint64_t ASTCEncoder::ASTCEncoder(uint64_t a1, uint64_t a2)
{
  return ASTCEncoder::ASTCEncoder(a1, a2);
}

{
  *a1 = &unk_2A1EE71B8;
  *(a1 + 8) = a2;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN11ASTCEncoderC2ERK10CommonData_block_invoke;
  block[3] = &__block_descriptor_tmp;
  block[4] = a2;
  if (ASTCEncoder::ASTCEncoder(CommonData const&)::once_control != -1)
  {
    dispatch_once(&ASTCEncoder::ASTCEncoder(CommonData const&)::once_control, block);
  }

  v3 = *(a1 + 8);
  *(a1 + 16) = (v3[6] >> 26) & 0xF;
  *(a1 + 20) = (*(v3 + 3) >> 30) & 0xF;
  *(a1 + 24) = 1;
  *(a1 + 88) = 257;
  v4 = (v3[4] & 0x7FF) - 1;
  if (v4 >= 0xA)
  {
    goto LABEL_13;
  }

  v5 = qword_298451BB0[v4];
  *(a1 + 56) = off_2A1EE72A0[v4];
  v6 = v3[6] & 0x7FF;
  if (v6 > 0x1E)
  {
    goto LABEL_13;
  }

  if (((1 << v6) & 0x7FFE7EFC) == 0)
  {
    if (v6 == 1)
    {
      *(a1 + 48) = kReadProcs4x4[v5];
      v8 = v3[8];
      v9 = v3[9];
      v11 = kAlphaProcs4x4[3 * v8 + v9];
      v12 = kEncodeProcs4x4;
      goto LABEL_12;
    }

    if (v6 == 8)
    {
      *(a1 + 48) = kReadProcs8x8[v5];
      v8 = v3[8];
      v9 = v3[9];
      v11 = kAlphaProcs8x8[3 * v8 + v9];
      v12 = kEncodeProcs8x8;
LABEL_12:
      *(a1 + 32) = v11;
      *(a1 + 40) = v12;
      v13 = kWriteProcs[v5];
      *(a1 + 64) = kDecodeProcs;
      *(a1 + 72) = v13;
      goto LABEL_7;
    }

LABEL_13:
    exception = __cxa_allocate_exception(4uLL);
    *exception = -1;
    __cxa_throw(exception, MEMORY[0x29EDC94D0], 0);
  }

  v7 = kWriteProcs[v5];
  *(a1 + 64) = kDecodeProcs;
  *(a1 + 72) = v7;
  *(a1 + 88) = 0;
  v8 = v3[8];
  LODWORD(v9) = v3[9];
LABEL_7:
  *(a1 + 80) = kTexelAlphaProcs[3 * v9 + v8];
  return a1;
}

uint64_t EncoderFactory_ASTC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    ASTCEncoder::ASTCEncoder(a2, a1);
  }

  return a2;
}

at_size_t at_encoder_get_block_dimensions(at_encoder_t encoder)
{
  v1 = (*(encoder[10].isa + 8))();
  result.x = v1;
  result.y = HIDWORD(v1);
  result.z = v2;
  return result;
}

void sub_29840C67C(_Unwind_Exception *a1, int a2)
{
  if (a2 < 0)
  {
    __cxa_call_unexpected(a1);
  }

  _Unwind_Resume(a1);
}

at_size_t at_encoder_get_block_counts(at_encoder_t encoder, at_size_t imageSize)
{
  v2 = (*(encoder[10].isa + 7))();
  result.x = v2;
  result.y = HIDWORD(v2);
  result.z = v3;
  return result;
}

float at_encoder_compress_texels(at_encoder_t encoder, const at_texel_region_t *src, const at_block_buffer_t *dest, float errorThreshold, at_flags_t flags)
{
  v8 = src;
  p_validSize = &src->validSize;
  if ((flags & 0x10) != 0)
  {
    rowBytes = src->rowBytes;
    sliceBytes = src->sliceBytes;
    v13 = *&p_validSize->x;
    z = src->validSize.z;
    p_validSize = &v46;
    v45 = src->texels + rowBytes * (src->validSize.y - 1);
    v46 = v13;
    v47 = z;
    v48 = -rowBytes;
    v49 = sliceBytes;
    v8 = &v45;
  }

  v15 = encoder + 10;
  v16 = (*(encoder[10].isa + 7))(encoder + 10, *&v8->validSize.x, p_validSize->z);
  v18 = v17;
  *&v44.x = v16;
  v44.z = v17;
  if (flags)
  {
    return (*(v15->isa + 16))(encoder + 10, v8, dest, flags, fmaxf(errorThreshold, 0.0));
  }

  v19 = v16;
  v20 = (*(v15->isa + 9))(encoder + 10);
  if ((flags & 0xFFFFFFFFFFFFFFA0) != 0)
  {
    v21 = -4.0;
    if ((flags & 2) != 0)
    {
      fprintf(*MEMORY[0x29EDCA610], "at_encoder_compress_texels error: unknown flags bit: 0x%8.8llx\n");
    }

    return v21;
  }

  v22 = HIDWORD(v19);
  if (v19)
  {
    v23 = v22 == 0;
  }

  else
  {
    v23 = 1;
  }

  if (v23 || v18 == 0)
  {
    v21 = -1.0;
    if ((flags & 2) != 0)
    {
      fwrite("at_encoder_compress_texels error: consecutive dest rows alias.\n\tA member of src->validSize is zero.\n", 0x64uLL, 1uLL, *MEMORY[0x29EDCA610]);
    }
  }

  else if ((HIDWORD(v19) | v19) >> 24)
  {
    v21 = -1.0;
    if ((flags & 2) != 0)
    {
      fprintf(*MEMORY[0x29EDCA610], "at_encoder_compress_texels error: Exceeded capabilites of ASTC specification. Too many blocks->\n\tno more than 2**24-1 blocks may be present in any dimension {%u, %u, %u}\n");
    }
  }

  else
  {
    v25 = v20;
    if (v22 == 1)
    {
      goto LABEL_19;
    }

    v30 = dest->rowBytes;
    if (v30 >= 0)
    {
      v31 = dest->rowBytes;
    }

    else
    {
      v31 = -v30;
    }

    if (v31 >= (*(v15->isa + 9))(encoder + 10) * v19)
    {
      v33 = v8->rowBytes;
      if (!v33)
      {
        goto LABEL_19;
      }

      if (v33 < 0)
      {
        v33 = -v33;
      }

      if (v33 >= ((encoder[6].isa >> 34) & 0x1F) * p_validSize->x * ((encoder[6].isa >> 26) & 0xF))
      {
LABEL_19:
        if (v18 >= 2)
        {
          v26 = dest->rowBytes;
          v27 = dest->sliceBytes;
          if (v27 >= 0)
          {
            v28 = dest->sliceBytes;
          }

          else
          {
            v28 = -v27;
          }

          if (v26 >= 0)
          {
            v29 = dest->rowBytes;
          }

          else
          {
            v29 = -v26;
          }

          if (v28 < v29 * v22)
          {
            v21 = -1.0;
            if ((flags & 2) != 0)
            {
              v39 = dest->sliceBytes;
              fprintf(*MEMORY[0x29EDCA610], "at_encoder_compress_texels error: consecutive dest slices alias.\n\t dest->sliceBytes %lu is too small for %u rows * dest->rowBytes.\n");
            }

            return v21;
          }

          v35 = v8->sliceBytes;
          if (v35)
          {
            if (v35 < 0)
            {
              v35 = -v35;
            }

            v36 = v8->rowBytes;
            if (v36 < 0)
            {
              v36 = -v36;
            }

            if (v35 < v36 * v19)
            {
              v21 = -1.0;
              if ((flags & 2) != 0)
              {
                v40 = dest->rowBytes;
                fprintf(*MEMORY[0x29EDCA610], "at_encoder_compress_texels error: consecutive src slices alias.\n\t dest->sliceBytes %lu is too small for %u block rows.\n");
              }

              return v21;
            }
          }
        }

        if (errorThreshold < 0.0)
        {
          v21 = -1.0;
          if ((flags & 2) != 0)
          {
            fprintf(*MEMORY[0x29EDCA610], "at_encoder_compress_texels error: errorThreshold (%g) should be at least zero.\n\tThe error threshold is square error per normalized texel, not PSNR or other measure. x**2 >= 0\n.\tThe encoder will try multiple encoding methods until one arrives <= error threshold.\n.\tSmaller error thresholds demand more accuracy and cause the encoder to take longer.\n\tA value of zero means try all encodings and return the best result.\n");
          }

          return v21;
        }

        v37 = v25 - 1;
        if (((v25 - 1) & dest->blocks) != 0)
        {
          v21 = -1.0;
          if ((flags & 2) != 0)
          {
            blocks = dest->blocks;
            fprintf(*MEMORY[0x29EDCA610], "at_encoder_compress_texels error: dest->blocks (%p) must be aligned to the block size (%lu)\n");
          }

          return v21;
        }

        if ((dest->rowBytes & v37) != 0)
        {
          v21 = -1.0;
          if ((flags & 2) != 0)
          {
            v42 = dest->rowBytes;
            fprintf(*MEMORY[0x29EDCA610], "at_encoder_compress_texels error: dest->rowBytes (%lx) must be a multiple of the block size (%lu) to guarantee alignment\n");
          }

          return v21;
        }

        if ((dest->sliceBytes & v37) != 0)
        {
          v21 = -1.0;
          if ((flags & 2) != 0)
          {
            v43 = dest->sliceBytes;
            fprintf(*MEMORY[0x29EDCA610], "at_encoder_compress_texels error: dest->sliceBytes (%lx) must be a multiple of the block size (%lu) to guarantee alignment\n");
          }

          return v21;
        }

        if ((*(v15->isa + 12))(encoder + 10) < 0x21 || (*(v15->isa + 12))(encoder + 10) > 0x2A)
        {
          ATEncoderCompressTexels_BlockBufferIsNotWritableOrIsNot16ByteAligned(dest, &v44);
        }

        else
        {
          ATEncoderCompressTexels_BlockBufferIsNotWritable(dest, &v44, v25);
        }

        return (*(v15->isa + 16))(encoder + 10, v8, dest, flags, fmaxf(errorThreshold, 0.0));
      }

      v21 = -1.0;
      if ((flags & 2) != 0)
      {
        v34 = dest->rowBytes;
        fprintf(*MEMORY[0x29EDCA610], "at_encoder_compress_texels error: consecutive src rows alias.\n\t src->rowBytes %lu is too small for %u blocks->\n");
      }
    }

    else
    {
      v21 = -1.0;
      if ((flags & 2) != 0)
      {
        v32 = dest->rowBytes;
        fprintf(*MEMORY[0x29EDCA610], "at_encoder_compress_texels error: consecutive dest rows alias.\n\t dest->rowBytes %lu is too small for %u blocks->\n");
      }
    }
  }

  return v21;
}

void *ATEncoderCompressTexels_BlockBufferIsNotWritableOrIsNot16ByteAligned(const at_block_buffer_t *a1, const at_size_t *a2)
{
  blocks = a1->blocks;
  v3 = a1->blocks + 16 * (a2->x - 1) + a1->rowBytes * (a2->y - 1) + a1->sliceBytes * (a2->z - 1);
  *blocks = 0;
  blocks[1] = 0;
  return ATEncoderCompressTexels_BlockBufferIsNotBigEnoughOrRowBytesSliceBytesAreNotAMultipleOf16(v3);
}

void ASTCEncoder::CompressTexels(ASTCEncoder *this, const at_texel_region_t *a2, const at_block_buffer_t *a3, float a4, at_flags_t a5)
{
  v5 = MEMORY[0x2A1C7C4A8](this);
  v10 = v5;
  v86 = *MEMORY[0x29EDCA608];
  if (*(v5 + 88))
  {
    v11 = v8;
    if ((v8 & 0xFFFFFFFFFFFFFFA0) != 0)
    {
      fprintf(*MEMORY[0x29EDCA610], "at_encoder_compress_texels: the ASTC encoding does not support flag(s) 0x%16.16llx\n", v8 & 0xFFFFFFFFFFFFFFA0);
    }

    else
    {
      v13 = v9;
      v14 = v7;
      v15 = v6;
      v16 = v6 + 1;
      v17 = (*(*v5 + 56))(v5, v6[1], *(v6 + 4));
      v18 = v17;
      v20 = v19;
      v21 = HIDWORD(v17);
      v22 = *(v10 + 16);
      v23 = (v10 + 16);
      v24 = (*(v10 + 20) * v22 * *(v10 + 24));
      v54 = HIDWORD(v17);
      if ((v11 & 8) != 0)
      {
        v25 = 0;
      }

      else if (v17 < 0x100100000000)
      {
        bzero(v85, 4 * v21);
        v25 = v85;
        LODWORD(v21) = v54;
      }

      else
      {
        v25 = malloc_type_calloc(HIDWORD(v17), 4uLL, 0x100004052888210uLL);
        LODWORD(v21) = v54;
        v22 = *v23;
      }

      v26 = v21 >> 4;
      if (!(v18 >> 37))
      {
        v26 = 1;
      }

      if ((v11 & 4) != 0)
      {
        v27 = v21;
      }

      else
      {
        v27 = v26;
      }

      if (v11 >= 0x40)
      {
        v28 = 0;
      }

      else
      {
        v28 = &ASTCEncoder::CompressTexels(at_texel_region_t const&,at_block_buffer_t const&,float,at_flags_t)const::kSRGBprimaries;
      }

      v29 = 0.75;
      if (v11 >= 0x40)
      {
        v29 = 1.0;
      }

      v30 = *(v10 + 8);
      v31 = *v30;
      v32 = *v15;
      v33 = *v14;
      v34 = *(v30 + 2);
      v35 = (v34 >> 34) & 0x1F;
      v36 = (v34 >> 26) & 0xF;
      v37 = v35 / v36;
      v38 = *(v15 + 3);
      v39 = *(v14 + 1);
      v40 = v22 * v18 != *(v15 + 2);
      v41 = *(v30 + 9);
      v42 = (v36 + v22 * v35 - 1) / v36;
      v43 = v22 != 4 || *(v10 + 20) != 4;
      global_queue = 0;
      v46 = *(v10 + 48);
      v45 = *(v10 + 56);
      context = v31;
      v57 = v28;
      v58 = v32;
      v59 = v33;
      v60 = v25;
      v53 = v25;
      v47 = *(v10 + 32);
      v61 = *v16;
      v62 = *(v16 + 2);
      v63 = *v23;
      v64 = *(v10 + 24);
      v65 = v37;
      v66 = v42;
      v67 = v38;
      v68 = v39;
      v69 = v18;
      v70 = v21;
      v71 = v40;
      v72 = 0;
      v73 = v24 * v13;
      v74 = v29;
      v76 = 0;
      v77 = 0;
      v75 = v41;
      v78 = v27;
      v79 = v43;
      v80 = v46;
      v81 = v47;
      v82 = v45;
      v83 = 0u;
      v84 = 0u;
      if ((v11 & 4) == 0 && v18 >> 33)
      {
        v48 = qos_class_self();
        global_queue = dispatch_get_global_queue(v48, 0);
      }

      if (v20)
      {
        v49 = 0;
        v50 = v54 + v27 - 1;
        do
        {
          if (global_queue)
          {
            dispatch_apply_f(v50 / v27, global_queue, &context, EncodeRowBlock);
          }

          else if (v27 <= v50)
          {
            v51 = 0;
            do
            {
              EncodeRowBlock(&context);
              ++v51;
            }

            while (v51 < v50 / v27);
          }

          v58 += *(&v67 + 1);
          v59 += *(&v68 + 1);
          v62 -= *(v10 + 24);
          v72 = v49++;
        }

        while (v49 != v20);
      }

      if (v53)
      {
        v55 = 0.0;
        _vDSP_meanv(v53, 1, &v55, v54);
        if (v53 != v85)
        {
          free(v53);
        }

        v52 = v55 / (*(v10 + 16) * v18 * *(v10 + 20) * *(v10 + 24));
      }
    }
  }

  else
  {
    fprintf(*MEMORY[0x29EDCA610], "at_encoder_compress_texels: the ASTC encoding does not support output block format %u\n", *(*(v5 + 8) + 24) & 0x7FF);
  }

  v12 = *MEMORY[0x29EDCA608];
}

void *ATEncoderCompressTexels_BlockBufferIsNotBigEnoughOrRowBytesSliceBytesAreNotAMultipleOf16(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void EncodeRowBlock(void *a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v4 = v1;
  STACK[0x20038] = *MEMORY[0x29EDCA608];
  v7 = pthread_self();
  v5 = &v7 - pthread_get_stackaddr_np(v7);
  if ((v5 + pthread_get_stacksize_np(v7)) >> 16 > 2)
  {
    EncodeRow(v4, v3, &memptr);
  }

  else
  {
    memptr = 0;
    if (malloc_type_posix_memalign(&memptr, 0x20uLL, 0x20000uLL, 0x765D9B09uLL) || !memptr)
    {
      *(*(v4 + 40) + 4 * v3) = -8388608;
    }

    else
    {
      EncodeRow(v4, v3, memptr);
      free(memptr);
    }
  }

  v6 = __OFSUB__(*MEMORY[0x29EDCA608], STACK[0x20038]);
}

{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v4 = v1;
  STACK[0x20038] = *MEMORY[0x29EDCA608];
  v7 = pthread_self();
  v5 = &v7 - pthread_get_stackaddr_np(v7);
  if ((v5 + pthread_get_stacksize_np(v7)) >> 16 > 2)
  {
    EncodeRow(v4, v3, &memptr);
  }

  else
  {
    memptr = 0;
    if (malloc_type_posix_memalign(&memptr, 0x20uLL, 0x20000uLL, 0x8293274DuLL) || !memptr)
    {
      *(v4[5] + 4 * v3) = -8388608;
    }

    else
    {
      EncodeRow(v4, v3, memptr);
      free(memptr);
    }
  }

  v6 = __OFSUB__(*MEMORY[0x29EDCA608], STACK[0x20038]);
}

uint64_t EncodeRow(uint64_t result, uint64_t a2, unsigned __int8 *a3)
{
  v3 = result;
  v87[12] = *MEMORY[0x29EDCA608];
  v4 = (result + 88);
  v5 = *(result + 168);
  v6 = *(result + 172);
  v7 = v5 * a2;
  v8 = *(result + 88) * *(result + 64);
  v9 = *(result + 24) + v8 * v5 * a2;
  v10 = v9 - v8;
  if (!(v5 * a2))
  {
    v10 = *(result + 24);
  }

  v11 = 15;
  v12 = v6 != 0;
  if (v6)
  {
    v13 = a3 + 82560;
  }

  else
  {
    v13 = a3;
  }

  if (v6)
  {
    v14 = a3 + 41280;
  }

  else
  {
    v14 = a3;
  }

  if (v6)
  {
    v15 = 13;
  }

  else
  {
    v15 = 47;
  }

  if (!v6)
  {
    v11 = 47;
  }

  v70 = v11;
  if (v6)
  {
    v16 = v10;
  }

  else
  {
    v16 = v9;
  }

  v17 = v7 + v5;
  v18 = *(result + 120);
  if (v17 >= *(result + 124))
  {
    v17 = *(result + 124);
  }

  v76 = v17;
  if (v18)
  {
    v19 = a3;
    v73 = (*(result + 32) + v7 * *(result + 104));
    v83 = *(result + 192);
    v67 = v7 - v12;
    v68 = 16 * v15;
    v85 = vdupq_n_s32(0x477FFF00u);
    v20 = 0;
    __asm { FMOV            V0.4S, #1.0 }

    v84 = _Q0;
    v26 = 0.0;
    v74 = v6 != 0;
    __pattern8 = (result + 88);
    v71 = v15;
    v69 = v7;
    while (1)
    {
      v80 = v20;
      v27 = v18 - (v20 - v12);
      if (v70 < v27)
      {
        v27 = v70;
      }

      v78 = v20 - v12 + v27 - 1;
      v79 = v20 - v12;
      v72 = v16;
      if (!*(v3 + 172))
      {
        goto LABEL_39;
      }

      v28 = *(v3 + 64);
      v29 = v67 * v28;
      bzero(v87, 8 * v28);
      if (((v67 * v28) & 0x8000000000000000) != 0)
      {
        v30 = -v29;
        if (-v29 >= v28)
        {
          v34 = v72;
          goto LABEL_67;
        }

        v31 = -1;
      }

      else
      {
        v30 = 0;
        v31 = ~v29;
      }

      v32 = v31 + *(v3 + 52);
      if ((v28 - v30) >= v32)
      {
        v33 = v32;
      }

      else
      {
        v33 = v28 - v30;
      }

      v34 = v72;
      if (v33 >= 1)
      {
        memset_pattern8(&v87[v30], v4, 8 * v33);
        v35 = v72 + *v4 * v33;
        goto LABEL_31;
      }

LABEL_67:
      v35 = v34;
LABEL_31:
      FillBlockStorageRow(v3, v19, v19, v79, v78, v34, v87);
      v36 = *(v3 + 64);
      v37 = v7 * v36;
      bzero(v87, 8 * v36);
      if (((v7 * v36) & 0x8000000000000000) == 0)
      {
        v38 = 0;
        v39 = ~v37;
        goto LABEL_33;
      }

      v38 = -v37;
      v16 = v35;
      if (v38 < v36)
      {
        v39 = -1;
LABEL_33:
        v40 = v39 + *(v3 + 52);
        if ((v36 - v38) >= v40)
        {
          v41 = v40;
        }

        else
        {
          v41 = v36 - v38;
        }

        v16 = v35;
        if (v41 >= 1)
        {
          memset_pattern8(&v87[v38], v4, 8 * v41);
          v16 = v35 + *v4 * v41;
        }
      }

      result = FillBlockStorageRow(v3, v19, v14, v79, v78, v35, v87);
      v12 = v74;
      v15 = v71;
LABEL_39:
      v77 = v80 + v15;
      v42 = v7;
      v43 = v7;
      v44 = v73;
      if (v43 < v76)
      {
        while (1)
        {
          v81 = v19;
          v82 = v13;
          v19 = v14;
          v45 = *(v3 + 64);
          v46 = (v42 + v12) * v45;
          bzero(v87, 8 * v45);
          if ((v46 & 0x8000000000000000) == 0)
          {
            break;
          }

          v47 = -v46;
          v51 = v16;
          if (v47 < v45)
          {
            v48 = -1;
LABEL_42:
            v49 = v48 + *(v3 + 52);
            if ((v45 - v47) >= v49)
            {
              v50 = v49;
            }

            else
            {
              v50 = v45 - v47;
            }

            v51 = v16;
            if (v50 >= 1)
            {
              memset_pattern8(&v87[v47], __pattern8, 8 * v50);
              v51 = v16 + *__pattern8 * v50;
            }
          }

          result = FillBlockStorageRow(v3, v14, v82, v79, v78, v16, v87);
          v52 = *(v3 + 120);
          if (v77 >= v52)
          {
            v53 = *(v3 + 120);
          }

          else
          {
            v53 = v77;
          }

          if (v80 < v52)
          {
            v54 = &v14[2752 * v12];
            v55 = v80;
            v56 = v44;
            v58 = v84;
            v57 = v85;
            v59 = 0uLL;
            do
            {
              *v56 = -516;
              v60.i64[0] = 0x3F0000003F000000;
              v60.i64[1] = 0x3F0000003F000000;
              v56[1] = vmovn_s32(vcvtq_s32_f32(vmlaq_f32(v60, v57, vmaxnmq_f32(vminnmq_f32(v54[1], v58), v59))));
              v61 = fmaxf(v54[7].f32[2], 0.0);
              v60.i32[0] = *(v3 + 136);
              *v86 = v61;
              v86[1] = v60.i32[0];
              v62 = (v54[8].i16[2] >> 4) * (v54[8].i16[2] & 0xF) * (HIBYTE(v54[8].u16[2]) & 0xF);
              if (v61 > (v62 * 0.000015379) && v62 != v54[8].i8[6])
              {
                result = v83(v54, v86, v56);
                v59 = 0uLL;
                v58 = v84;
                v57 = v85;
                v61 = *v86;
              }

              v26 = v26 + v61;
              v56 += 2;
              v54 += 172;
              ++v55;
            }

            while (v55 < v53);
          }

          v44 = (v44 + *(v3 + 104));
          ++v42;
          v13 = v81;
          v14 = v82;
          v16 = v51;
          v12 = v74;
          if (v42 == v76)
          {
            goto LABEL_60;
          }
        }

        v47 = 0;
        v48 = ~v46;
        goto LABEL_42;
      }

LABEL_60:
      if (v80)
      {
        v63 = 0;
      }

      else
      {
        v63 = v12;
      }

      v15 = v71;
      v16 = v72 + *(v3 + 80) * (v71 - v63);
      v7 = v69;
      v73 = (v73 + v68);
      v18 = *(v3 + 120);
      v20 = v77;
      v4 = __pattern8;
      if (v77 >= v18)
      {
        goto LABEL_72;
      }
    }
  }

  v26 = 0.0;
LABEL_72:
  v64 = *(v3 + 40);
  if (v64)
  {
    *(v64 + 4 * a2) = v26 + *(v64 + 4 * a2);
  }

  v65 = *MEMORY[0x29EDCA608];
  return result;
}

void EncodeRow(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  v55 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 44);
  v5 = v4 * a2;
  v6 = v4 * a2 + v4;
  v7 = *(a1 + 32);
  if (v6 >= *(a1 + 33))
  {
    v6 = *(a1 + 33);
  }

  v45 = v6;
  if (v7)
  {
    v8 = 0;
    v9 = a1[25];
    v10 = (a1[3] + v5 * *(a1 + 16) * a1[11]);
    v11 = a1[4] + v5 * a1[13];
    v39 = a3 + 2752;
    v12 = 0.0;
    v37 = v5;
    while (1)
    {
      v13 = v7 - v8;
      v44 = v7 - v8;
      if ((v7 - v8) >= 47)
      {
        v13 = 47;
      }

      if (v5 < v45)
      {
        break;
      }

      v29 = v8 + 47;
LABEL_39:
      v10 = (v10 + 47 * a1[10]);
      v11 += 47 * a1[15];
      v8 = v29;
      if (v29 >= v7)
      {
        goto LABEL_42;
      }
    }

    v42 = v13 + v8;
    v50 = v11;
    v51 = v13 + v8 - 1;
    v46 = v8;
    v40 = v8 + 1;
    v41 = v8 + v13;
    v38 = v10;
    v14 = v10;
    v43 = v8 + 47;
    while (1)
    {
      v15 = *(a1 + 16);
      v49 = v5;
      bzero(__b, 8 * v15);
      if ((*(a1 + 13) + ~(v5 * v15)) < v15)
      {
        v15 = *(a1 + 13) + ~(v5 * v15);
      }

      if (v15 >= 1)
      {
        memset_pattern8(__b, a1 + 11, 8 * v15);
        v14 = (v10 + a1[11] * v15);
      }

      v48 = v14;
      v16 = v46;
      if (v44 < 1)
      {
        goto LABEL_31;
      }

      v17 = a1[26];
      v18 = *(a1 + 32) - v46;
      if (v18 < 1)
      {
        break;
      }

      ReadBlock(a1, a3, v10, __b, a1[12], v46 * *(a1 + 15));
      if (v46 < v51)
      {
        v10 = (v10 + a1[10]);
        v19 = v18 - 1;
        if (v18 == 1)
        {
          v20 = v39;
          v21 = v40;
        }

        else
        {
          v20 = v39;
          v21 = v40;
          do
          {
            v22 = v21;
            ReadBlock(a1, v20, v10, __b, a1[12], v21 * *(a1 + 15));
            v20 += 2752;
            v10 = (v10 + a1[10]);
            ++v21;
            if (v22 >= v51)
            {
              break;
            }
          }

          while (v19-- > 1);
        }

LABEL_23:
        if (v21 < v42)
        {
          if (*(a1 + 16))
          {
            v24 = 0;
            v25 = a1[10];
            v26 = v54;
            do
            {
              v53[v24] = v25;
              v17(v26, v10);
              v25 = a1[10];
              v26 = (v26 + v25);
              v10 = (v10 + __b[v24++]);
            }

            while (v24 < *(a1 + 16));
          }

          else
          {
            v26 = v54;
          }

          v27 = v41 - v21;
          v16 = v46;
          do
          {
            ReadBlock(a1, v20, v26, v53, a1[12], 0);
            v20 += 2752;
            --v27;
          }

          while (v27);
        }
      }

LABEL_31:
      v28 = *(a1 + 32);
      v29 = v43;
      if (v43 >= v28)
      {
        v30 = *(a1 + 32);
      }

      else
      {
        v30 = v43;
      }

      v31 = v16;
      v32 = a3;
      v33 = v50;
      if (v16 < v28)
      {
        do
        {
          v54[0] = INFINITY;
          v54[1] = *(a1 + 36);
          v9(v32, v54, v33);
          v12 = v12 + v54[0];
          v33 += a1[15];
          v32 += 2752;
          ++v31;
        }

        while (v31 < v30);
      }

      v50 += a1[13];
      v5 = v49 + 1;
      v14 = v48;
      v10 = v48;
      if (v49 + 1 == v45)
      {
        v7 = *(a1 + 32);
        v5 = v37;
        v10 = v38;
        goto LABEL_39;
      }
    }

    v21 = v46;
    v20 = a3;
    goto LABEL_23;
  }

  v12 = 0.0;
LABEL_42:
  v34 = a1[5];
  if (v34)
  {
    *(v34 + 4 * a2) = v12 + *(v34 + 4 * a2);
  }

  v35 = *MEMORY[0x29EDCA608];
}

void EncodeBasicBlock_4x4(uint64_t a1, int8x16_t *a2, float *a3, float32x4_t *a4)
{
  v5 = a3;
  v1786 = *MEMORY[0x29EDCA608];
  v8 = a1 + 272;
  v1717 = *(a1 + 16);
  v9 = *(a1 + 134);
  if (v9 >= 1 && *(a1 + 135))
  {
    v10 = vcgezq_s32(*(a1 + 736));
    v11 = vcgezq_s32(*(a1 + 768));
    v12 = vcgezq_s32(*(a1 + 720));
    v13 = vcgezq_s32(*(a1 + 752));
    v1717 = vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(*(a1 + 144), v12), vandq_s8(*(a1 + 176), v13)), vaddq_f32(vandq_s8(*(a1 + 160), v10), vandq_s8(*(a1 + 192), v11))), vaddq_f32(vaddq_f32(vandq_s8(*(a1 + 208), v12), vandq_s8(*(a1 + 240), v13)), vaddq_f32(vandq_s8(*(a1 + 224), v10), vandq_s8(*(a1 + 256), v11)))), vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(*v8, v12), vandq_s8(*(a1 + 304), v13)), vaddq_f32(vandq_s8(*(a1 + 288), v10), vandq_s8(*(a1 + 320), v11))), vaddq_f32(vaddq_f32(vandq_s8(*(a1 + 336), v12), vandq_s8(*(a1 + 368), v13)), vaddq_f32(vandq_s8(*(a1 + 352), v10), vandq_s8(*(a1 + 384), v11))))), ReciprocalTable[16 - v9]);
  }

  v14 = *(a1 + 124);
  __asm
  {
    FMOV            V31.4S, #1.0
    FMOV            V0.4S, #3.0
  }

  v1670 = _Q0;
  v1593 = *a3;
  v1730 = _Q31;
  if (!(_NF ^ _VF | _ZF))
  {
    if (*(a1 + 136))
    {
      v1745 = WeightInfoForSingleLineSingleWeight_4x4(2, 2);
      v22 = *(v8 + 416);
      v21 = *(v8 + 432);
      v24 = *(v8 + 384);
      v23 = *(v8 + 400);
      v25 = vmaxnmq_f32(v23, v21);
      v26 = vminnmq_f32(v23, v21);
      v27 = vmaxnmq_f32(vmaxnmq_f32(v24, v22), v25);
      v28 = vminnmq_f32(vminnmq_f32(v24, v22), v26);
      __asm { FMOV            V1.4S, #1.0 }

      v30 = vzip2q_s32(v28, _Q1);
      v31 = vzip1q_s32(v28, _Q1);
      v32 = vmaxnmq_f32(vzip1q_s32(v27, _Q1), vzip2q_s32(v27, _Q1));
      v33 = vminnmq_f32(v31, v30);
      v34 = vmaxnmq_f32(v32, vextq_s8(v32, v32, 8uLL));
      v35 = vminnmq_f32(v33, vextq_s8(v33, v33, 8uLL));
      v36 = vzip1q_s32(v34, v34);
      v36.i32[2] = v34.i32[0];
      v37 = vzip1q_s32(v35, v35);
      v37.i32[2] = v35.i32[0];
      goto LABEL_77;
    }

    v89 = *(a1 + 32);
    if (v89)
    {
      v90 = *v89;
      v90.i32[3] = 0;
    }

    else
    {
      v90 = xmmword_2984959B0;
    }

    v302 = vmulq_f32(v1717, v90);
    *v302.i8 = vadd_f32(*v302.i8, *&vextq_s8(v302, v302, 8uLL));
    v303 = vadd_f32(*v302.i8, vdup_lane_s32(*v302.i8, 1));
    v304 = vaddv_f32(*v302.i8);
    v305 = (a1 + 336);
    v306 = *(a1 + 336);
    v307 = (a1 + 656);
    v309 = *(a1 + 688);
    v308 = *(a1 + 704);
    v311 = *(a1 + 656);
    v310 = *(a1 + 672);
    v312 = vdupq_lane_s32(v303, 0);
    v313 = vsubq_f32(v311, v312);
    v314 = vsubq_f32(v310, v312);
    v315 = vsubq_f32(v309, v312);
    v316 = vsubq_f32(v308, v312);
    v317 = *(a1 + 352);
    v318 = *(a1 + 368);
    v319 = *(a1 + 384);
    v320 = vdupq_laneq_s32(v1717, 3);
    v321 = vsubq_f32(v319, v320);
    v322 = vsubq_f32(v318, v320);
    v323 = vsubq_f32(v317, v320);
    v324 = vsubq_f32(v306, v320);
    v325 = vmlaq_f32(vmulq_f32(v321, v321), v316, v316);
    v326 = vmlaq_f32(vmulq_f32(v322, v322), v315, v315);
    v327 = vmlaq_f32(vmulq_f32(v323, v323), v314, v314);
    v328 = vmlaq_f32(vmulq_f32(v324, v324), v313, v313);
    v329 = v328;
    v330 = v327;
    v331 = v326;
    v332 = v325;
    if (*(a1 + 135))
    {
      v333.i64[0] = 0x7F0000007FLL;
      v333.i64[1] = 0x7F0000007FLL;
      v331 = vbslq_s8(vcltzq_s32(*(a1 + 752)), v333, v326);
      v330 = vbslq_s8(vcltzq_s32(*(a1 + 736)), v333, v327);
      v329 = vbslq_s8(vcltzq_s32(*(a1 + 720)), v333, v328);
      v332 = vbslq_s8(vcltzq_s32(*(a1 + 768)), v333, v325);
    }

    v1683 = v325;
    v1688 = v326;
    v1693 = v327;
    v1699 = v328;
    v334 = vmaxnmq_f32(v329, v331);
    v335 = vmaxnmq_f32(v330, v332);
    v336 = vbslq_s8(vcgtq_f32(v331, v329), xmmword_298495610, xmmword_298495600);
    v337 = vbslq_s8(vcgtq_f32(v332, v330), xmmword_298495630, xmmword_298495620);
    v338 = vmaxnmq_f32(v334, v335);
    v339 = vbslq_s8(vcgtq_f32(v335, v334), v337, v336);
    v337.i64[0] = vextq_s8(v338, v338, 8uLL).u64[0];
    v340 = vmaxnm_f32(*v338.i8, *v337.i8);
    v341 = vextq_s8(v339, v339, 8uLL).u64[0];
    v342 = vbsl_s8(vcgt_f32(*v337.i8, *v338.i8), v341, *v339.i8);
    if (vmvn_s8(vcge_f32(v340, vdup_lane_s32(v340, 1))).u8[0])
    {
      v343 = v342.i32[1];
    }

    else
    {
      v343 = v342.i32[0];
    }

    v341.i32[0] = v307->i32[v343];
    v327.i32[0] = v305->i32[v343];
    v344 = vdupq_lane_s32(v341, 0);
    v345 = vsubq_f32(v311, v344);
    v346 = vsubq_f32(v310, v344);
    v347 = vsubq_f32(v309, v344);
    v348 = vsubq_f32(v308, v344);
    v344.i32[3] = v327.i32[0];
    v1724 = v344;
    v349 = v304 - *v341.i32;
    v350 = v1717.f32[3] - *v327.i32;
    v1712 = v327;
    v351 = vdupq_lane_s32(*v327.i8, 0);
    v352 = vsubq_f32(v319, v351);
    v353 = vsubq_f32(v318, v351);
    v354 = vsubq_f32(v317, v351);
    v355 = vsubq_f32(v306, v351);
    v356 = vmulq_n_f32(v355, v350);
    v357 = vmulq_n_f32(v354, v350);
    v358 = vmulq_n_f32(v353, v350);
    v359 = vmlaq_n_f32(vmulq_n_f32(v352, v350), v348, v349);
    v360 = vmlaq_n_f32(v358, v347, v349);
    v361 = vmlaq_n_f32(v357, v346, v349);
    v362 = vmlaq_n_f32(v356, v345, v349);
    if (*(a1 + 135))
    {
      v363.i64[0] = 0x7F0000007FLL;
      v363.i64[1] = 0x7F0000007FLL;
      v360 = vbslq_s8(vcltzq_s32(*(a1 + 752)), v363, v360);
      v361 = vbslq_s8(vcltzq_s32(*(a1 + 736)), v363, v361);
      v362 = vbslq_s8(vcltzq_s32(*(a1 + 720)), v363, v362);
      v359 = vbslq_s8(vcltzq_s32(*(a1 + 768)), v363, v359);
    }

    v364 = vmaxnmq_f32(v362, v360);
    v365 = vmaxnmq_f32(v361, v359);
    v366 = vmaxnmq_f32(v364, v365);
    v367 = vbslq_s8(vcgtq_f32(v365, v364), vbslq_s8(vcgtq_f32(v359, v361), xmmword_298495630, xmmword_298495620), vbslq_s8(vcgtq_f32(v360, v362), xmmword_298495610, xmmword_298495600));
    v370 = vextq_s8(v366, v366, 8uLL);
    v368 = vmaxnm_f32(*v366.i8, *v370.i8);
    v369 = vbsl_s8(vcgt_f32(*v370.i8, *v366.i8), *&vextq_s8(v367, v367, 8uLL), *v367.i8);
    *v370.i8 = vmvn_s8(vcge_f32(v368, vdup_lane_s32(v368, 1)));
    if (v370.i8[0])
    {
      v371 = v369.i32[1];
    }

    else
    {
      v371 = v369.i32[0];
    }

    v372 = &v307->f32[v371];
    v373 = vld1q_dup_f32(v372);
    v370.i32[0] = v305->i32[v371];
    v374 = vsubq_f32(v311, v373);
    v375 = vsubq_f32(v310, v373);
    v376 = vsubq_f32(v309, v373);
    v377 = vsubq_f32(v308, v373);
    v373.i32[3] = v370.i32[0];
    v1719 = v373;
    v378 = vmlaq_f32(vmulq_f32(v355, v355), v345, v345);
    v1706 = v370;
    v379 = vdupq_lane_s32(*v370.i8, 0);
    v380 = vsubq_f32(v319, v379);
    v381 = vsubq_f32(v318, v379);
    v382 = vsubq_f32(v317, v379);
    v383 = vsubq_f32(v306, v379);
    v384 = vminnmq_f32(vmlaq_f32(vmulq_f32(v352, v352), v348, v348), vmlaq_f32(vmulq_f32(v380, v380), v377, v377));
    v385 = vdupq_n_s32(0x3865F1D0u);
    v386 = vorrq_s8(vandq_s8(vuzp1q_s16(vcgtq_f32(v385, vminnmq_f32(v378, vmlaq_f32(vmulq_f32(v383, v383), v374, v374))), vcgtq_f32(v385, vminnmq_f32(vmlaq_f32(vmulq_f32(v354, v354), v346, v346), vmlaq_f32(vmulq_f32(v382, v382), v375, v375)))), xmmword_298495650), vandq_s8(vuzp1q_s16(vcgtq_f32(v385, vminnmq_f32(vmlaq_f32(vmulq_f32(v353, v353), v347, v347), vmlaq_f32(vmulq_f32(v381, v381), v376, v376))), vcgtq_f32(v385, v384)), xmmword_298495640));
    v386.i16[0] = vaddvq_s16(v386);
    *v386.i8 = vcnt_s8(*v386.i8);
    v386.i16[0] = vaddlv_u8(*v386.i8);
    v1745 = WeightInfoForSingleLineSingleWeight_4x4(v386.i32[0], 4);
    if (!*(a1 + 134))
    {
      v36 = v1719;
      v37 = v1724;
      goto LABEL_77;
    }

    v37 = v1724;
    if (*(a1 + 135))
    {
      v36 = v1719;
      if (v1712.f32[0] != 0.0)
      {
        v389 = v1706;
        if (v1706.f32[0] != 0.0)
        {
          v390 = vsubq_f32(v1719, v1724);
          v389.i32[0] = v390.i32[3];
          if (v390.f32[3] == 0.0)
          {
            if (*(a1 + 134) >= 15)
            {
              goto LABEL_58;
            }

            v387.i64[0] = 0x3F0000003FLL;
            v387.i64[1] = 0x3F0000003FLL;
            v37 = vnegq_f32(v387);
          }

          v387.i64[0] = 0;
          v449 = vdupq_lane_s32(*&vcgtq_f32(v387, v389), 0);
          v450 = vbslq_s8(v449, vnegq_f32(v390), v390);
          v451 = vbslq_s8(v449, v1719, v37);
          v388.f32[0] = v451.f32[3] / v450.f32[3];
          v452 = vmlsq_lane_f32(v451, v450, v388, 0);
          if ((vminvq_u32(vandq_s8(vcgtq_f32(v452, vdupq_n_s32(0xBB800000)), vcgtq_f32(vdupq_n_s32(0x3F808081u), v452))) & 0x80000000) == 0)
          {
            v1754 = v1699;
            v1755 = v1693;
            v1756 = v1688;
            v1757 = v1683;
            v453 = vector_index_of_maximum(&v1754);
            v454.i32[0] = v307->i32[v453];
            v455.i32[0] = v305->i32[v453];
            v456 = vdupq_lane_s32(v454, 0);
            v457 = vsubq_f32(*(v8 + 432), v456);
            v458 = vsubq_f32(*(v8 + 416), v456);
            v459 = vsubq_f32(*(v8 + 400), v456);
            v460 = vsubq_f32(*v307, v456);
            v456.i32[3] = v455.i32[0];
            v1725 = v456;
            *v454.i32 = v304 - *v454.i32;
            v456.f32[0] = v1717.f32[3] - *v455.i32;
            v461 = vdupq_lane_s32(v455, 0);
            v462 = vsubq_f32(*v305, v461);
            v463 = vsubq_f32(*(v8 + 80), v461);
            v464 = vmulq_n_f32(vsubq_f32(*(v8 + 96), v461), v456.f32[0]);
            v1757 = vmlaq_n_f32(vmulq_n_f32(vsubq_f32(*(v8 + 112), v461), v456.f32[0]), v457, *v454.i32);
            v1756 = vmlaq_n_f32(v464, v458, *v454.i32);
            v1755 = vmlaq_n_f32(vmulq_n_f32(v463, v456.f32[0]), v459, *v454.i32);
            v1754 = vmlaq_n_f32(vmulq_n_f32(v462, v456.f32[0]), v460, *v454.i32);
            v465 = vector_index_of_maximum(&v1754);
            v37 = v1725;
            v466 = &v307->f32[v465];
            v36 = vld1q_dup_f32(v466);
            v36.i32[3] = v305->i32[v465];
            goto LABEL_77;
          }

          v36 = vbslq_s8(v449, v37, v1719);
          v435 = vmaxnmq_f32(v452, 0);
          __asm { FMOV            V1.4S, #1.0 }

          goto LABEL_76;
        }
      }

      goto LABEL_77;
    }

    v301 = vdupq_lane_s32(*&vcgtq_f32(v1706, v1712), 0);
    v36 = v1719;
LABEL_61:
    v36 = vandq_s8(v36, v301);
    v37 = vbicq_s8(v37, v301);
    goto LABEL_77;
  }

  v38 = *(a1 + 176);
  v39 = *(a1 + 192);
  v40 = *(a1 + 144);
  v41 = *(a1 + 160);
  v42 = vdupq_lane_s32(*v1717.f32, 0);
  v43 = vsubq_f32(v40, v42);
  v44 = vsubq_f32(v41, v42);
  v45 = vsubq_f32(v38, v42);
  v46 = vsubq_f32(v39, v42);
  v47 = *(a1 + 240);
  v48 = vdupq_lane_s32(*v1717.f32, 1);
  v49 = *(a1 + 208);
  v50 = *(a1 + 224);
  v51 = vsubq_f32(v49, v48);
  v52 = vsubq_f32(v50, v48);
  v53 = vsubq_f32(v47, v48);
  v1671 = *(a1 + 256);
  v54 = vsubq_f32(v1671, v48);
  v55 = *(a1 + 320);
  v56 = vdupq_laneq_s32(v1717, 2);
  v1686 = *v8;
  v1691 = *(a1 + 288);
  v57 = vsubq_f32(*v8, v56);
  v58 = vsubq_f32(v1691, v56);
  v1705 = *(a1 + 304);
  v59 = vsubq_f32(v1705, v56);
  v60 = vsubq_f32(v55, v56);
  v61 = vdupq_laneq_s32(v1717, 3);
  v1711 = *(a1 + 336);
  v62 = vsubq_f32(v1711, v61);
  v1697 = *(a1 + 352);
  v63 = vsubq_f32(v1697, v61);
  v1677 = *(a1 + 384);
  v1681 = *(a1 + 368);
  v64 = vsubq_f32(v1681, v61);
  v65 = vsubq_f32(v1677, v61);
  v66 = vmulq_f32(v46, v46);
  v67 = vmulq_f32(v45, v45);
  v68 = vmulq_f32(v44, v44);
  v69 = vmulq_f32(v43, v43);
  v70 = vmulq_f32(v54, v54);
  v71 = vmulq_f32(v53, v53);
  v72 = vmulq_f32(v52, v52);
  v73 = vmulq_f32(v51, v51);
  v74 = vmulq_f32(v60, v60);
  v75 = vmulq_f32(v59, v59);
  v76 = *(a1 + 32);
  v77 = vmulq_f32(v58, v58);
  v78 = vmulq_f32(v57, v57);
  v79 = vmulq_f32(v65, v65);
  v80 = vmulq_f32(v64, v64);
  v81 = vmulq_f32(v63, v63);
  v82 = vmulq_f32(v62, v62);
  if (v76)
  {
    v83 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v70, *v76, 1), v66, COERCE_FLOAT(*v76->f32)), v74, *v76->f32, 2), v79, *v76->f32, 3);
    v84 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v73, *v76, 1), v69, COERCE_FLOAT(*v76->f32)), v78, *v76->f32, 2), v82, *v76->f32, 3);
    v85 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v72, *v76, 1), v68, COERCE_FLOAT(*v76->f32)), v77, *v76->f32, 2), v81, *v76->f32, 3), v1670);
    v86 = vmulq_f32(v84, v1670);
    v87 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v71, *v76, 1), v67, COERCE_FLOAT(*v76->f32)), v75, *v76->f32, 2), v80, *v76->f32, 3), v1670);
    v88 = vmulq_f32(v83, v1670);
  }

  else
  {
    v91 = vaddq_f32(vaddq_f32(v66, v70), v74);
    v86 = vaddq_f32(vaddq_f32(vaddq_f32(v69, v73), v78), v82);
    v85 = vaddq_f32(vaddq_f32(vaddq_f32(v68, v72), v77), v81);
    v87 = vaddq_f32(vaddq_f32(vaddq_f32(v67, v71), v75), v80);
    v88 = vaddq_f32(v91, v79);
  }

  if (*(a1 + 135))
  {
    v92.i64[0] = 0x7F0000007FLL;
    v92.i64[1] = 0x7F0000007FLL;
    v87 = vbslq_s8(vcltzq_s32(*(a1 + 752)), v92, v87);
    v85 = vbslq_s8(vcltzq_s32(*(a1 + 736)), v92, v85);
    v86 = vbslq_s8(vcltzq_s32(*(a1 + 720)), v92, v86);
    v88 = vbslq_s8(vcltzq_s32(*(a1 + 768)), v92, v88);
  }

  v93 = a1 + 400;
  v94 = vmaxnmq_f32(v86, v87);
  v95 = vmaxnmq_f32(v85, v88);
  v96 = vmaxnmq_f32(v94, v95);
  v97 = vbslq_s8(vcgtq_f32(v95, v94), vbslq_s8(vcgtq_f32(v88, v85), xmmword_298495630, xmmword_298495620), vbslq_s8(vcgtq_f32(v87, v86), xmmword_298495610, xmmword_298495600));
  v98 = vextq_s8(v96, v96, 8uLL).u64[0];
  *v94.f32 = vmaxnm_f32(*v96.i8, v98);
  v99 = vbsl_s8(vcgt_f32(v98, *v96.i8), *&vextq_s8(v97, v97, 8uLL), *v97.i8);
  if (vmvn_s8(vcge_f32(*v94.f32, vdup_lane_s32(*v94.f32, 1))).u8[0])
  {
    v100 = v99.i32[1];
  }

  else
  {
    v100 = v99.i32[0];
  }

  v101 = *(v93 + 16 * v100);
  v102 = vsubq_f32(v1717, v101);
  v103 = vdupq_lane_s32(*v101.f32, 0);
  v104 = vsubq_f32(v40, v103);
  v105 = vsubq_f32(v41, v103);
  v106 = vsubq_f32(v38, v103);
  v1624 = v103;
  v107 = vsubq_f32(v39, v103);
  v108 = vdupq_lane_s32(*v101.f32, 1);
  v109 = vsubq_f32(v49, v108);
  v110 = vsubq_f32(v50, v108);
  v111 = vsubq_f32(v47, v108);
  v1626 = v108;
  v112 = vsubq_f32(v1671, v108);
  v113 = vdupq_laneq_s32(v101, 2);
  v114 = vsubq_f32(v1686, v113);
  v115 = vsubq_f32(v1691, v113);
  v116 = vsubq_f32(v1705, v113);
  v117 = vsubq_f32(v55, v113);
  v1722 = v101;
  v118 = vdupq_laneq_s32(v101, 3);
  v119 = vsubq_f32(v1711, v118);
  v120 = vsubq_f32(v1697, v118);
  v121 = vsubq_f32(v1681, v118);
  v1628 = v113;
  v1632 = v118;
  v122 = vsubq_f32(v1677, v118);
  v123 = vmulq_n_f32(v107, v102.f32[0]);
  v124 = vmulq_n_f32(v106, v102.f32[0]);
  v125 = vmulq_n_f32(v105, v102.f32[0]);
  v126 = vmulq_n_f32(v104, v102.f32[0]);
  v127 = vmulq_lane_f32(v112, *v102.f32, 1);
  v128 = vmulq_lane_f32(v111, *v102.f32, 1);
  v129 = vmulq_lane_f32(v110, *v102.f32, 1);
  v130 = vmulq_lane_f32(v109, *v102.f32, 1);
  v131 = vmulq_laneq_f32(v117, v102, 2);
  v132 = vmulq_laneq_f32(v116, v102, 2);
  v133 = vmulq_laneq_f32(v115, v102, 2);
  v134 = vmulq_laneq_f32(v114, v102, 2);
  v135 = vmulq_laneq_f32(v122, v102, 3);
  v136 = vmulq_laneq_f32(v121, v102, 3);
  v137 = vmulq_laneq_f32(v120, v102, 3);
  v138 = vmulq_laneq_f32(v119, v102, 3);
  if (v76)
  {
    v139 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v129, *v76, 1), v125, COERCE_FLOAT(*v76->f32)), v133, *v76->f32, 2), v137, *v76->f32, 3), v1670);
    v140 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v130, *v76, 1), v126, COERCE_FLOAT(*v76->f32)), v134, *v76->f32, 2), v138, *v76->f32, 3), v1670);
    v141 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v128, *v76, 1), v124, COERCE_FLOAT(*v76->f32)), v132, *v76->f32, 2), v136, *v76->f32, 3), v1670);
    v142 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v127, *v76, 1), v123, COERCE_FLOAT(*v76->f32)), v131, *v76->f32, 2), v135, *v76->f32, 3), v1670);
    if (!*(a1 + 135))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v140 = vaddq_f32(v138, vaddq_f32(v134, vaddq_f32(v126, v130)));
  v139 = vaddq_f32(v137, vaddq_f32(v133, vaddq_f32(v125, v129)));
  v141 = vaddq_f32(v136, vaddq_f32(v132, vaddq_f32(v124, v128)));
  v142 = vaddq_f32(v135, vaddq_f32(v131, vaddq_f32(v123, v127)));
  if (*(a1 + 135))
  {
LABEL_19:
    v143.i64[0] = 0x7F0000007FLL;
    v143.i64[1] = 0x7F0000007FLL;
    v141 = vbslq_s8(vcltzq_s32(*(a1 + 752)), v143, v141);
    v139 = vbslq_s8(vcltzq_s32(*(a1 + 736)), v143, v139);
    v140 = vbslq_s8(vcltzq_s32(*(a1 + 720)), v143, v140);
    v142 = vbslq_s8(vcltzq_s32(*(a1 + 768)), v143, v142);
  }

LABEL_20:
  v144 = vmaxnmq_f32(v139, v142);
  v145 = vcgtq_f32(v142, v139);
  v146 = vmaxnmq_f32(v140, v141);
  v147 = vbslq_s8(vcgtq_f32(v144, v146), vbslq_s8(v145, xmmword_298495630, xmmword_298495620), vbslq_s8(vcgtq_f32(v141, v140), xmmword_298495610, xmmword_298495600));
  v148 = vmaxnmq_f32(v146, v144);
  v149 = vextq_s8(v148, v148, 8uLL).u64[0];
  v150 = vbsl_s8(vcgt_f32(v149, *v148.i8), *&vextq_s8(v147, v147, 8uLL), *v147.i8);
  *v148.i8 = vmaxnm_f32(*v148.i8, v149);
  v151 = vmlaq_f32(vmulq_f32(v112, v112), v107, v107);
  v152 = vmlaq_f32(vmulq_f32(v111, v111), v106, v106);
  v153 = vmlaq_f32(vmulq_f32(v110, v110), v105, v105);
  v154 = vmlaq_f32(vmlaq_f32(vmulq_f32(v109, v109), v104, v104), v114, v114);
  v155 = vmlaq_f32(v153, v115, v115);
  v156 = vmlaq_f32(v152, v116, v116);
  v157 = vmlaq_f32(vmlaq_f32(v151, v117, v117), v122, v122);
  if (vmvn_s8(vcge_f32(*v148.i8, vdup_lane_s32(*v148.i8, 1))).u8[0])
  {
    v158 = v150.i32[1];
  }

  else
  {
    v158 = v150.i32[0];
  }

  v159 = *(v93 + 16 * v158);
  v160 = vdupq_lane_s32(*v159.f32, 0);
  v161 = vsubq_f32(*(a1 + 192), v160);
  v162 = vdupq_lane_s32(*v159.f32, 1);
  v1718 = v159;
  v163 = vsubq_f32(v1671, v162);
  v164 = vmlaq_f32(vmulq_f32(v163, v163), v161, v161);
  v165 = vsubq_f32(*(a1 + 176), v160);
  v166 = vsubq_f32(*(a1 + 240), v162);
  v167 = vmlaq_f32(vmulq_f32(v166, v166), v165, v165);
  v168 = vsubq_f32(*(a1 + 160), v160);
  v169 = vsubq_f32(*(a1 + 224), v162);
  v170 = vmlaq_f32(vmulq_f32(v169, v169), v168, v168);
  v1652 = v160;
  v171 = vsubq_f32(*(a1 + 144), v160);
  v1672 = v162;
  v172 = vsubq_f32(*(a1 + 208), v162);
  v173 = vmlaq_f32(vmulq_f32(v172, v172), v171, v171);
  v174 = vdupq_laneq_s32(v1718, 2);
  v175 = vsubq_f32(v1686, v174);
  v176 = vmlaq_f32(v173, v175, v175);
  v177 = vsubq_f32(v1691, v174);
  v178 = vmlaq_f32(v170, v177, v177);
  v179 = vsubq_f32(v1705, v174);
  v180 = vmlaq_f32(v167, v179, v179);
  v1659 = v174;
  v181 = vsubq_f32(*(a1 + 320), v174);
  v182 = vmlaq_f32(v164, v181, v181);
  v183 = vdupq_laneq_s32(v1718, 3);
  v184 = vsubq_f32(v1677, v183);
  v185 = vmlaq_f32(v182, v184, v184);
  v186 = vsubq_f32(v1681, v183);
  v187 = vmlaq_f32(v180, v186, v186);
  v188 = vsubq_f32(v1697, v183);
  v189 = vmlaq_f32(v178, v188, v188);
  v1682 = v183;
  v190 = vsubq_f32(v1711, v183);
  v191 = vminnmq_f32(vmlaq_f32(v154, v119, v119), vmlaq_f32(v176, v190, v190));
  v192 = vdupq_n_s32(0x3BF7C5EEu);
  v193 = vorrq_s8(vandq_s8(vuzp1q_s16(vcgtq_f32(v192, v191), vcgtq_f32(v192, vminnmq_f32(vmlaq_f32(v155, v120, v120), v189))), xmmword_298495650), vandq_s8(vuzp1q_s16(vcgtq_f32(v192, vminnmq_f32(vmlaq_f32(v156, v121, v121), v187)), vcgtq_f32(v192, vminnmq_f32(v157, v185))), xmmword_298495640));
  v193.i16[0] = vaddvq_s16(v193);
  v194 = vcnt_s8(*v193.i8);
  v194.i16[0] = vaddlv_u8(v194);
  if (*(a1 + 136))
  {
    v195 = 6;
  }

  else
  {
    v195 = 8;
  }

  v196 = WeightInfoForSingleLineSingleWeight_4x4(v194.i32[0], v195);
  v1657 = ReciprocalTable[BYTE4(v196)];
  *v197.i32 = v1657 * v1657;
  v198 = v1722;
  v199 = vsubq_f32(v1718, v1722);
  v200.i64[0] = 0x8000000080000000;
  v200.i64[1] = 0x8000000080000000;
  v201 = vdupq_n_s32(0x3B808081u);
  v202 = vdivq_f32(v1730, vbslq_s8(vcgtq_f32(v201, vabdq_f32(v1718, v1722)), vorrq_s8(vandq_s8(v199, v200), v201), v199));
  v203 = *(a1 + 144);
  v204 = *(a1 + 160);
  v206 = *(a1 + 176);
  v205 = *(a1 + 192);
  v207 = vmulq_n_f32(vsubq_f32(v204, v1624), v202.f32[0]);
  v208 = vmulq_n_f32(vsubq_f32(v203, v1624), v202.f32[0]);
  v209 = vmulq_n_f32(vsubq_f32(v205, v1624), v202.f32[0]);
  v210 = vmulq_n_f32(vsubq_f32(v206, v1624), v202.f32[0]);
  v211 = *(a1 + 256);
  v212 = *(a1 + 208);
  v1698 = *(a1 + 224);
  v213 = *(a1 + 240);
  v214 = vmulq_lane_f32(vsubq_f32(v213, v1626), *v202.f32, 1);
  v215 = vmulq_lane_f32(vsubq_f32(v211, v1626), *v202.f32, 1);
  v216 = vmulq_lane_f32(vsubq_f32(v212, v1626), *v202.f32, 1);
  v217 = vmulq_lane_f32(vsubq_f32(v1698, v1626), *v202.f32, 1);
  v219 = *(v8 + 32);
  v218 = *(v8 + 48);
  v221 = *v8;
  v220 = *(v8 + 16);
  v222 = vmlaq_f32(vmulq_f32(v214, v214), v210, v210);
  v223 = vmlaq_f32(vmulq_f32(v215, v215), v209, v209);
  v224 = vmlaq_f32(vmulq_f32(v216, v216), v208, v208);
  v225 = vmulq_laneq_f32(vsubq_f32(v219, v1628), v202, 2);
  v226 = vmulq_laneq_f32(vsubq_f32(v218, v1628), v202, 2);
  v227 = vmulq_laneq_f32(vsubq_f32(*v8, v1628), v202, 2);
  v228 = vmulq_laneq_f32(vsubq_f32(v220, v1628), v202, 2);
  v229 = vmlaq_f32(vmlaq_f32(vmulq_f32(v217, v217), v207, v207), v228, v228);
  v231 = *(v8 + 64);
  v230 = *(v8 + 80);
  v232 = vmlaq_f32(v224, v227, v227);
  v233 = *(v8 + 96);
  v234 = *(v8 + 112);
  v235 = vmlaq_f32(v222, v225, v225);
  v236 = vmulq_laneq_f32(vsubq_f32(v233, v1632), v202, 3);
  v237 = vmlaq_f32(v235, v236, v236);
  v238 = vmulq_laneq_f32(vsubq_f32(v234, v1632), v202, 3);
  v239 = vmlaq_f32(vmlaq_f32(v223, v226, v226), v238, v238);
  v240 = vmulq_laneq_f32(vsubq_f32(v230, v1632), v202, 3);
  v241 = vmulq_laneq_f32(vsubq_f32(v231, v1632), v202, 3);
  v242 = vmlaq_f32(v232, v241, v241);
  v243 = vdupq_lane_s32(v197, 0);
  v244 = vcgtq_f32(v243, vmlaq_f32(v229, v240, v240));
  v245 = vcgtq_f32(v243, v242);
  v246 = vcgtq_f32(v243, v239);
  v247 = vcgtq_f32(v243, v237);
  v248 = vorrq_s8(vandq_s8(vuzp1q_s16(v245, v244), xmmword_298495650), vandq_s8(vuzp1q_s16(v247, v246), xmmword_298495640));
  v248.i16[0] = vaddvq_s16(v248);
  v249 = vcnt_s8(*v248.i8);
  v249.i16[0] = vaddlv_u8(v249);
  v1745 = v196;
  v1687 = v211;
  v1692 = v205;
  if (v249.i32[0] >= 2u)
  {
    v198 = vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v203, v245), vandq_s8(v206, v247)), vaddq_f32(vandq_s8(v204, v244), vandq_s8(v205, v246))), vaddq_f32(vaddq_f32(vandq_s8(v212, v245), vandq_s8(v213, v247)), vaddq_f32(vandq_s8(v1698, v244), vandq_s8(v211, v246)))), vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v221, v245), vandq_s8(v219, v247)), vaddq_f32(vandq_s8(v220, v244), vandq_s8(v218, v246))), vaddq_f32(vaddq_f32(vandq_s8(v231, v245), vandq_s8(v233, v247)), vaddq_f32(vandq_s8(v230, v244), vandq_s8(v234, v246))))), ReciprocalTable[v249.u16[0]]);
  }

  v1723 = v198;
  v250 = vmulq_n_f32(vsubq_f32(v1652, v206), v202.f32[0]);
  v251 = vmulq_n_f32(vsubq_f32(v1652, v205), v202.f32[0]);
  v252 = vmulq_n_f32(vsubq_f32(v1652, v204), v202.f32[0]);
  v253 = vmulq_n_f32(vsubq_f32(v1652, v203), v202.f32[0]);
  v254 = vmulq_lane_f32(vsubq_f32(v1672, v212), *v202.f32, 1);
  v255 = vmulq_lane_f32(vsubq_f32(v1672, v1698), *v202.f32, 1);
  v256 = vmulq_lane_f32(vsubq_f32(v1672, v211), *v202.f32, 1);
  v257 = vmulq_lane_f32(vsubq_f32(v1672, v213), *v202.f32, 1);
  v258 = v233;
  v259 = v218;
  v260 = vmulq_laneq_f32(vsubq_f32(v1659, v221), v202, 2);
  v261 = vmulq_laneq_f32(vsubq_f32(v1659, v220), v202, 2);
  v262 = vmulq_laneq_f32(vsubq_f32(v1659, v218), v202, 2);
  v263 = vmulq_laneq_f32(vsubq_f32(v1659, v219), v202, 2);
  v264 = vsubq_f32(v1682, v231);
  v265 = vsubq_f32(v1682, v230);
  v266 = v204;
  v267 = vsubq_f32(v1682, v234);
  v268 = v234;
  v269 = v231;
  v270 = v230;
  v271 = v220;
  v272 = v206;
  v273 = vmulq_laneq_f32(vsubq_f32(v1682, v258), v202, 3);
  v274 = vmulq_laneq_f32(v267, v202, 3);
  v275 = vmulq_laneq_f32(v265, v202, 3);
  v276 = vmulq_laneq_f32(v264, v202, 3);
  v277 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v254, v254), v253, v253), v260, v260), v276, v276);
  v278 = vcgtq_f32(v243, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v257, v257), v250, v250), v263, v263), v273, v273));
  v279 = vcgtq_f32(v243, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v256, v256), v251, v251), v262, v262), v274, v274));
  v280 = vcgtq_f32(v243, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v255, v255), v252, v252), v261, v261), v275, v275));
  v281 = vcgtq_f32(v243, v277);
  v282 = vandq_s8(vuzp1q_s16(v278, v279), xmmword_298495640);
  v283 = vorrq_s8(vandq_s8(vuzp1q_s16(v281, v280), xmmword_298495650), v282);
  v283.i16[0] = vaddvq_s16(v283);
  *v283.f32 = vcnt_s8(*v283.f32);
  v283.i16[0] = vaddlv_u8(*v283.f32);
  v284 = v283.i16[0];
  v1648 = v220;
  if (v283.i32[0] < 2u)
  {
    v293 = v268;
    v289 = v213;
    v285 = v203;
    v36 = v1718;
  }

  else
  {
    v285 = v203;
    v286 = vandq_s8(v203, v281);
    v287 = vandq_s8(v272, v278);
    v288 = vandq_s8(v212, v281);
    v289 = v213;
    v290 = vandq_s8(v213, v278);
    v291 = vandq_s8(v221, v281);
    v292 = vandq_s8(v219, v278);
    v293 = v268;
    v294 = vaddq_f32(vandq_s8(v269, v281), vandq_s8(v258, v278));
    v281 = vaddq_f32(vandq_s8(v270, v280), vandq_s8(v268, v279));
    v278 = vaddq_f32(v294, v281);
    v282 = vpaddq_f32(vaddq_f32(vaddq_f32(v291, v292), vaddq_f32(vandq_s8(v271, v280), vandq_s8(v259, v279))), v278);
    v283 = vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(v286, v287), vaddq_f32(vandq_s8(v266, v280), vandq_s8(v1692, v279))), vaddq_f32(vaddq_f32(v288, v290), vaddq_f32(vandq_s8(v1698, v280), vandq_s8(v1687, v279)))), v282);
    v36 = vmulq_n_f32(v283, ReciprocalTable[v284]);
  }

  v295 = v266;
  v296 = v258;
  v37 = v1723;
  if (!*(a1 + 134))
  {
    goto LABEL_77;
  }

  v278.i32[0] = v1723.i32[3];
  if (!*(a1 + 135))
  {
    v301 = vdupq_lane_s32(*&vcgtq_f32(vdupq_laneq_s32(v36, 3), v278), 0);
    goto LABEL_61;
  }

  if (v1723.f32[3] != 0.0 && v36.f32[3] != 0.0)
  {
    v297 = vsubq_f32(v36, v1723);
    v281.i32[0] = v297.i32[3];
    if (v297.f32[3] == 0.0)
    {
      v298 = v1692;
      v299 = v1698;
      v300 = v1687;
      if (*(a1 + 134) == 15)
      {
LABEL_58:
        v37 = 0uLL;
        goto LABEL_77;
      }

      v283.i64[0] = 0x3F0000003FLL;
      v283.i64[1] = 0x3F0000003FLL;
      v37 = vnegq_f32(v283);
    }

    else
    {
      v298 = v1692;
      v299 = v1698;
      v300 = v1687;
    }

    v283.i64[0] = 0;
    v391 = vdupq_lane_s32(*&vcgtq_f32(v283, v281), 0);
    v392 = vbslq_s8(v391, vnegq_f32(v297), v297);
    v393 = vbslq_s8(v391, v36, v37);
    v282.f32[0] = v393.f32[3] / v392.f32[3];
    v394 = vmlsq_lane_f32(v393, v392, *v282.f32, 0);
    v392.f32[0] = -v1657;
    v282.f32[0] = v1657 + 1.0;
    if ((vminvq_u32(vandq_s8(vcgtq_f32(v394, vdupq_lane_s32(*v392.f32, 0)), vcgtq_f32(vdupq_lane_s32(*v282.f32, 0), v394))) & 0x80000000) != 0)
    {
      v36 = vbslq_s8(v391, v37, v36);
      v435 = vmaxnmq_f32(v394, 0);
      _Q1 = v1730;
LABEL_76:
      v37 = vminnmq_f32(v435, _Q1);
      goto LABEL_77;
    }

    v395 = *(v93 + 16 * v100);
    v396 = vsubq_f32(v1717, v395);
    v397 = vdupq_lane_s32(*v395.f32, 0);
    v398 = vsubq_f32(v298, v397);
    v399 = vsubq_f32(v295, v397);
    v400 = vdupq_lane_s32(*v395.f32, 1);
    v401 = vsubq_f32(v300, v400);
    v402 = vsubq_f32(v212, v400);
    v403 = vsubq_f32(v299, v400);
    v404 = vdupq_laneq_s32(v395, 2);
    v405 = vsubq_f32(v259, v404);
    v406 = vsubq_f32(v221, v404);
    v407 = vsubq_f32(v1648, v404);
    v408 = vsubq_f32(v219, v404);
    v409 = vdupq_laneq_s32(v395, 3);
    v410 = vsubq_f32(v293, v409);
    v411 = vsubq_f32(v269, v409);
    v412 = vsubq_f32(v270, v409);
    v413 = vsubq_f32(v296, v409);
    v414 = *(a1 + 32);
    v415 = vmulq_n_f32(vsubq_f32(v272, v397), v396.f32[0]);
    v416 = vmulq_n_f32(v399, v396.f32[0]);
    v417 = vmulq_n_f32(vsubq_f32(v285, v397), v396.f32[0]);
    v418 = vmulq_n_f32(v398, v396.f32[0]);
    v419 = vmulq_lane_f32(vsubq_f32(v289, v400), *v396.f32, 1);
    v420 = vmulq_lane_f32(v403, *v396.f32, 1);
    v421 = vmulq_lane_f32(v402, *v396.f32, 1);
    v422 = vmulq_lane_f32(v401, *v396.f32, 1);
    v423 = vmulq_laneq_f32(v408, v396, 2);
    v424 = vmulq_laneq_f32(v407, v396, 2);
    v425 = vmulq_laneq_f32(v406, v396, 2);
    v426 = vmulq_laneq_f32(v405, v396, 2);
    v427 = vmulq_laneq_f32(v413, v396, 3);
    v428 = vmulq_laneq_f32(v412, v396, 3);
    v429 = vmulq_laneq_f32(v411, v396, 3);
    v430 = vmulq_laneq_f32(v410, v396, 3);
    if (v414)
    {
      v431 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v420, *v414, 1), v416, COERCE_FLOAT(*v414->f32)), v424, *v414->f32, 2), v428, *v414->f32, 3), v1670);
      v432 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v421, *v414, 1), v417, COERCE_FLOAT(*v414->f32)), v425, *v414->f32, 2), v429, *v414->f32, 3), v1670);
      v433 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v419, *v414, 1), v415, COERCE_FLOAT(*v414->f32)), v423, *v414->f32, 2), v427, *v414->f32, 3), v1670);
      v434 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v422, *v414, 1), v418, COERCE_FLOAT(*v414->f32)), v426, *v414->f32, 2), v430, *v414->f32, 3), v1670);
    }

    else
    {
      v432 = vaddq_f32(v429, vaddq_f32(v425, vaddq_f32(v417, v421)));
      v431 = vaddq_f32(v428, vaddq_f32(v424, vaddq_f32(v416, v420)));
      v433 = vaddq_f32(v427, vaddq_f32(v423, vaddq_f32(v415, v419)));
      v434 = vaddq_f32(v430, vaddq_f32(v426, vaddq_f32(v418, v422)));
    }

    v437 = vmaxnmq_f32(v432, v433);
    v438 = vmaxnmq_f32(v431, v434);
    v439 = vbslq_s8(vcgtq_f32(v433, v432), xmmword_298495610, xmmword_298495600);
    v440 = vmaxnmq_f32(v437, v438);
    v441 = vbslq_s8(vcgtq_f32(v438, v437), vbslq_s8(vcgtq_f32(v434, v431), xmmword_298495630, xmmword_298495620), v439);
    v439.i64[0] = vextq_s8(v440, v440, 8uLL).u64[0];
    v442 = vmaxnm_f32(*v440.i8, *v439.i8);
    v443 = vbsl_s8(vcgt_f32(*v439.i8, *v440.i8), *&vextq_s8(v441, v441, 8uLL), *v441.i8);
    if (vmvn_s8(vcge_f32(v442, vdup_lane_s32(v442, 1))).u8[0])
    {
      v444 = v443.i32[1];
    }

    else
    {
      v444 = v443.i32[0];
    }

    v445 = *(v93 + 16 * v444);
    v446 = *(v93 + 16 * v100);
    v446.i32[3] = 0;
    v447 = v445;
    v447.i32[3] = 0;
    v448 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vmovn_s32(vcgtq_f32(v445, v395)), 3)), 0x1FuLL));
    v36 = vbslq_s8(v448, v445, v447);
    v37 = vbslq_s8(v448, v446, v395);
  }

LABEL_77:
  v1744 = 0u;
  v1743 = 0u;
  v1742 = 0u;
  v467 = *(a1 + 32);
  v1755 = v36;
  v1754 = v37;
  FindColorVectors(&v1754, v467, 1, 324, &v1745, &v1742);
  v468 = v1745;
  v469 = (v1745 >> 13) & 0xF;
  if (v469 > 5)
  {
    v479 = *(a1 + 32);
    if (v479)
    {
      v473 = v1742;
      v470 = v1743;
      v480 = vdupq_lane_s32(*v1742.i8, 0);
      v481 = vsubq_f32(*(a1 + 192), v480);
      v482 = vsubq_f32(*(a1 + 176), v480);
      v483 = vsubq_f32(*(a1 + 160), v480);
      v484 = vsubq_f32(*(a1 + 144), v480);
      v485 = vdupq_lane_s32(*v1742.i8, 1);
      v486 = vsubq_f32(*(a1 + 256), v485);
      v487 = vsubq_f32(*(a1 + 240), v485);
      v488 = vsubq_f32(*(a1 + 224), v485);
      v489 = vsubq_f32(*(a1 + 208), v485);
      v490 = vdupq_laneq_s32(v1742, 2);
      v491 = vsubq_f32(*(v8 + 48), v490);
      v492 = vsubq_f32(*(v8 + 32), v490);
      v493 = vsubq_f32(*(v8 + 16), v490);
      v494 = vsubq_f32(*v8, v490);
      v495 = vdupq_laneq_s32(v1742, 3);
      v496 = vsubq_f32(*(v8 + 112), v495);
      v497 = vsubq_f32(*(v8 + 96), v495);
      v498 = vsubq_f32(*(v8 + 80), v495);
      v499 = vsubq_f32(*(v8 + 64), v495);
      v500 = vmulq_f32(v1743, vandq_s8(vcgezq_s32(gNormalMasks[(v1745 >> 13) & 0xF]), *v479));
      v501 = vmulq_f32(v1743, v500);
      v502 = vaddv_f32(vadd_f32(*v501.i8, *&vextq_s8(v501, v501, 8uLL)));
      v503 = 0.0;
      v504 = v1730;
      if (fabsf(v502) >= 0.000015259)
      {
        v503 = vrecpes_f32(v502);
      }

      v471 = v1743.f32[3];
      v505 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v489, *v500.f32, 1), v484, v500.f32[0]), v494, v500, 2), v499, v500, 3), v503), v1730), 0);
      v506 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v488, *v500.f32, 1), v483, v500.f32[0]), v493, v500, 2), v498, v500, 3), v503), v1730), 0);
      v507 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v487, *v500.f32, 1), v482, v500.f32[0]), v492, v500, 2), v497, v500, 3), v503), v1730), 0);
      v508 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v486, *v500.f32, 1), v481, v500.f32[0]), v491, v500, 2), v496, v500, 3), v503), v1730), 0);
    }

    else
    {
      v473 = v1742;
      v470 = v1743;
      v515 = vdupq_lane_s32(*v1742.i8, 0);
      v516 = vsubq_f32(*(a1 + 192), v515);
      v517 = vsubq_f32(*(a1 + 176), v515);
      v518 = vsubq_f32(*(a1 + 160), v515);
      v519 = vsubq_f32(*(a1 + 144), v515);
      v520 = vdupq_lane_s32(*v1742.i8, 1);
      v521 = vsubq_f32(*(a1 + 208), v520);
      v522 = vsubq_f32(*(a1 + 224), v520);
      v523 = vsubq_f32(*(a1 + 240), v520);
      v524 = vsubq_f32(*(a1 + 256), v520);
      v525 = vdupq_laneq_s32(v1742, 2);
      v526 = vsubq_f32(*v8, v525);
      v527 = vsubq_f32(*(v8 + 16), v525);
      v528 = vsubq_f32(*(v8 + 32), v525);
      v529 = vsubq_f32(*(v8 + 48), v525);
      v530 = vdupq_laneq_s32(v1742, 3);
      v531 = vsubq_f32(*(v8 + 112), v530);
      v532 = vsubq_f32(*(v8 + 96), v530);
      v533 = vsubq_f32(*(v8 + 80), v530);
      v534 = vsubq_f32(*(v8 + 64), v530);
      v535 = vmulq_f32(v470, v470);
      *v535.i32 = vrecpes_f32(vaddv_f32(vadd_f32(*v535.i8, *&vextq_s8(v535, v535, 8uLL))));
      v504 = v1730;
      v505 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v521, *v1743.f32, 1), v519, v1743.f32[0]), v526, v1743, 2), v534, v1743, 3), *v535.i32), v1730), 0);
      v506 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v522, *v1743.f32, 1), v518, v1743.f32[0]), v527, v1743, 2), v533, v1743, 3), *v535.i32), v1730), 0);
      v507 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v523, *v1743.f32, 1), v517, v1743.f32[0]), v528, v1743, 2), v532, v1743, 3), *v535.i32), v1730), 0);
      v508 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v524, *v1743.f32, 1), v516, v1743.f32[0]), v529, v1743, 2), v531, v1743, 3), *v535.i32), v1730), 0);
      v471 = v1743.f32[3];
    }
  }

  else
  {
    v470 = v1743;
    v471 = v1743.f32[3];
    if (v469 > 3)
    {
      v509 = vmuls_lane_f32(v1743.f32[3], v1743, 3) + (v1743.f32[0] * v1743.f32[0]);
      v510 = fabsf(v509);
      v511 = vrecpes_f32(v509);
      if (v510 < 0.000015259)
      {
        v511 = 0.0;
      }

      v473 = v1742;
      v512 = vdupq_lane_s32(*v1742.i8, 0);
      v513 = vdupq_laneq_s32(v1742, 3);
      v475 = vmulq_n_f32(vmlaq_n_f32(vmulq_laneq_f32(vsubq_f32(*(v8 + 112), v513), v1743, 3), vsubq_f32(*(v8 + 432), v512), v1743.f32[0]), v511);
      v476 = vmulq_n_f32(vmlaq_n_f32(vmulq_laneq_f32(vsubq_f32(*(v8 + 96), v513), v1743, 3), vsubq_f32(*(v8 + 416), v512), v1743.f32[0]), v511);
      v477 = vmulq_n_f32(vmlaq_n_f32(vmulq_laneq_f32(vsubq_f32(*(v8 + 80), v513), v1743, 3), vsubq_f32(*(v8 + 400), v512), v1743.f32[0]), v511);
      v478 = vmulq_n_f32(vmlaq_n_f32(vmulq_laneq_f32(vsubq_f32(*(v8 + 64), v513), v1743, 3), vsubq_f32(*(v8 + 384), v512), v1743.f32[0]), v511);
    }

    else
    {
      v472 = vrecpes_f32(v1743.f32[0]);
      if (fabsf(v1743.f32[0]) < 0.000015259)
      {
        v472 = 0.0;
      }

      v473 = v1742;
      v474 = vdupq_lane_s32(*v1742.i8, 0);
      v475 = vmulq_n_f32(vsubq_f32(*(v8 + 432), v474), v472);
      v476 = vmulq_n_f32(vsubq_f32(*(v8 + 416), v474), v472);
      v477 = vmulq_n_f32(vsubq_f32(*(v8 + 400), v474), v472);
      v478 = vmulq_n_f32(vsubq_f32(*(v8 + 384), v474), v472);
    }

    __asm { FMOV            V5.4S, #1.0 }

    v505 = vmaxnmq_f32(vminnmq_f32(v478, _Q5), 0);
    v506 = vmaxnmq_f32(vminnmq_f32(v477, _Q5), 0);
    v507 = vmaxnmq_f32(vminnmq_f32(v476, _Q5), 0);
    v508 = vmaxnmq_f32(vminnmq_f32(v475, _Q5), 0);
    v504 = v1730;
  }

  if (*(a1 + 134) >= 1)
  {
    v536 = 0.0;
    if (fabsf(v471) >= 0.0039062)
    {
      v536 = vrecpes_f32(v471);
    }

    v537 = vdupq_laneq_s32(v473, 3);
    v508 = vbslq_s8(vcltzq_s32(*(v8 + 496)), vmulq_n_f32(vsubq_f32(*(v8 + 112), v537), v536), v508);
    v507 = vbslq_s8(vcltzq_s32(*(v8 + 480)), vmulq_n_f32(vsubq_f32(*(v8 + 96), v537), v536), v507);
    v506 = vbslq_s8(vcltzq_s32(*(v8 + 464)), vmulq_n_f32(vsubq_f32(*(v8 + 80), v537), v536), v506);
    v505 = vbslq_s8(vcltzq_s32(*(v8 + 448)), vmulq_n_f32(vsubq_f32(*(v8 + 64), v537), v536), v505);
  }

  v1609 = v1744;
  v538 = v1745 >> 27;
  v539 = vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v507, 0), v504), v538);
  v540 = vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v506, 0), v504), v538);
  v541 = vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v505, 0), v504), v538);
  v542 = vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v508, 0), v504), v538);
  v543 = &ReciprocalTable[v538];
  v544 = vld1q_dup_f32(v543);
  v545 = a1;
  do
  {
    v546 = v545;
    v545 = *(v545 + 40);
  }

  while (v545);
  v547 = vrndxq_f32(v542);
  v1622 = v547;
  v1623 = vrndxq_f32(v539);
  v548 = *(a1 + 32);
  v1625 = vrndxq_f32(v541);
  v1627 = vrndxq_f32(v540);
  if (v548)
  {
    v504 = vmulq_f32(*v548, v1670);
  }

  v549 = vmulq_f32(v544, v1625);
  v550 = vmulq_f32(v544, v1627);
  v551 = vmulq_f32(v544, v1623);
  v552 = vmulq_f32(v544, v547);
  v553 = *(v546 + 132);
  if (v553 == 392)
  {
    v1707 = v508;
    v1713 = v507;
    v1720 = v506;
    v1726 = v505;
    v1731 = v504;
    v639 = 0;
    v544.i32[0] = 0;
    v1700 = v544;
    v640 = vzip1q_s32(v549, v549);
    v640.i32[2] = v549.i32[0];
    v641 = vzip2q_s32(vextq_s8(v549, v549, 0xCuLL), v549);
    v642 = vdupq_lane_s32(*v549.f32, 1);
    v643 = vextq_s8(v549, vdupq_laneq_s32(v549, 3), 8uLL);
    v1673 = v549;
    v642.i32[3] = v549.i32[2];
    v644 = vdupq_n_s32(0x3D800000u);
    v1755 = vmulq_f32(vmlaq_f32(vmulq_f32(v643, xmmword_298495A00), xmmword_298495A10, v641), v644);
    v1754 = vmulq_f32(vmlaq_f32(vmulq_f32(v642, xmmword_2984959F0), xmmword_298495A20, v640), v644);
    v645 = vzip2q_s32(vextq_s8(v550, v550, 0xCuLL), v550);
    v646 = vzip1q_s32(v550, v550);
    v646.i32[2] = v550.i32[0];
    v647 = vdupq_lane_s32(*v550.f32, 1);
    v647.i32[3] = v550.i32[2];
    v648 = vextq_s8(v550, vdupq_laneq_s32(v550, 3), 8uLL);
    v1757 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v643, xmmword_298495A40), xmmword_298495A50, v641), xmmword_298495A80, v645), xmmword_298495A90, v648), v644);
    v1756 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v642, xmmword_298495A30), xmmword_298495A60, v640), xmmword_298495A70, v646), xmmword_298495AA0, v647), v644);
    v1759 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v643, xmmword_298495AC0), xmmword_298495AD0, v641), xmmword_298495B00, v645), xmmword_298495B10, v648), v644);
    v1758 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v642, xmmword_298495AB0), xmmword_298495AE0, v640), xmmword_298495AF0, v646), xmmword_298495B20, v647), v644);
    v649 = vzip2q_s32(vextq_s8(v551, v551, 0xCuLL), v551);
    v650 = vextq_s8(v551, vdupq_laneq_s32(v551, 3), 8uLL);
    v651 = vmlaq_f32(vmulq_f32(v647, xmmword_298495B30), xmmword_298495B60, v646);
    v652 = vzip1q_s32(v551, v551);
    v652.i32[2] = v551.i32[0];
    v653 = vmlaq_f32(vmulq_f32(v647, xmmword_298495BA0), xmmword_298495B70, v646);
    v654 = vdupq_lane_s32(*v551.f32, 1);
    v654.i32[3] = v551.i32[2];
    v1761 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v648, xmmword_298495B40), xmmword_298495B50, v645), xmmword_298495B80, v649), xmmword_298495B90, v650), v644);
    v1760 = vmulq_f32(vmlaq_f32(vmlaq_f32(v651, xmmword_298495B70, v652), xmmword_298495BA0, v654), v644);
    v1763 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v648, xmmword_298495B90), xmmword_298495B80, v645), xmmword_298495B50, v649), xmmword_298495B40, v650), v644);
    v1762 = vmulq_f32(vmlaq_f32(vmlaq_f32(v653, xmmword_298495B60, v652), xmmword_298495B30, v654), v644);
    v655 = vzip1q_s32(v552, v552);
    v655.i32[2] = v552.i32[0];
    v656 = vmlaq_f32(vmlaq_f32(vmulq_f32(v654, xmmword_298495B20), xmmword_298495AF0, v652), xmmword_298495AE0, v655);
    v657 = vzip2q_s32(vextq_s8(v552, v552, 0xCuLL), v552);
    v658 = vmlaq_f32(vmulq_f32(v654, xmmword_298495AA0), xmmword_298495A70, v652);
    v659 = vdupq_lane_s32(*v552.f32, 1);
    v660 = vextq_s8(v552, vdupq_laneq_s32(v552, 3), 8uLL);
    v659.i32[3] = v552.i32[2];
    v1765 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v650, xmmword_298495B10), xmmword_298495B00, v649), xmmword_298495AD0, v657), xmmword_298495AC0, v660), v644);
    v1764 = vmulq_f32(vmlaq_f32(v656, xmmword_298495AB0, v659), v644);
    v1767 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v650, xmmword_298495A90), xmmword_298495A80, v649), xmmword_298495A50, v657), xmmword_298495A40, v660), v644);
    v1766 = vmulq_f32(vmlaq_f32(vmlaq_f32(v658, xmmword_298495A60, v655), xmmword_298495A30, v659), v644);
    v661 = vmulq_f32(vmlaq_f32(vmulq_f32(v659, xmmword_2984959F0), xmmword_298495A20, v655), v644);
    v1769 = vmulq_f32(vmlaq_f32(vmulq_f32(v660, xmmword_298495A00), xmmword_298495A10, v657), v644);
    v1768 = v661;
    v662 = vdupq_lane_s32(*v473.i8, 0);
    v663 = vdupq_lane_s32(*v470.f32, 0);
    v664 = vdupq_lane_s32(*v473.i8, 1);
    v665 = vdupq_lane_s32(*v470.f32, 1);
    v666 = vdupq_laneq_s32(v473, 2);
    v667 = vdupq_laneq_s32(v470, 2);
    v668 = vdupq_laneq_s32(v473, 3);
    v669 = vdupq_laneq_s32(v470, 3);
    v547 = 0uLL;
    v661.i32[0] = *(a1 + 135);
    v670 = vdupq_lane_s8(*&vceqq_s8(v661, v1700), 0);
    v671 = 0uLL;
    v672 = 0uLL;
    v673 = 0uLL;
    v674 = 0uLL;
    v675 = 0uLL;
    v676 = 0uLL;
    v677 = 0uLL;
    do
    {
      v678 = *(&v1754 + v639);
      v679 = *(&v1754 + v639 + 16);
      v680 = vsubq_f32(vmlaq_f32(v666, v678, v667), *(v546 + v639 + 656));
      v681 = *(v546 + v639 + 912);
      v682 = *(v546 + v639 + 928);
      v683 = vbslq_s8(v670, v680, vmulq_f32(v680, v681));
      v684 = vsubq_f32(vmlaq_f32(v666, v679, v667), *(v546 + v639 + 672));
      v685 = vbslq_s8(v670, v684, vmulq_f32(v684, v682));
      v686 = vsubq_f32(vmlaq_f32(v664, v678, v665), *(v546 + v639 + 400));
      v687 = vbslq_s8(v670, v686, vmulq_f32(v686, v681));
      v688 = vsubq_f32(vmlaq_f32(v664, v679, v665), *(v546 + v639 + 416));
      v689 = vbslq_s8(v670, v688, vmulq_f32(v688, v682));
      v690 = vsubq_f32(vmlaq_f32(v662, v678, v663), *(v546 + v639 + 144));
      v691 = vbslq_s8(v670, v690, vmulq_f32(v690, v681));
      v692 = vsubq_f32(vmlaq_f32(v662, v679, v663), *(v546 + v639 + 160));
      v693 = vbslq_s8(v670, v692, vmulq_f32(v692, v682));
      v694 = vsubq_f32(vmlaq_f32(v668, v678, v669), v681);
      v695 = vsubq_f32(vmlaq_f32(v668, v679, v669), v682);
      v677 = vmlaq_f32(v677, v693, v693);
      v676 = vmlaq_f32(v676, v691, v691);
      v675 = vmlaq_f32(v675, v689, v689);
      v674 = vmlaq_f32(v674, v687, v687);
      v673 = vmlaq_f32(v673, v685, v685);
      v672 = vmlaq_f32(v672, v683, v683);
      v671 = vmlaq_f32(v671, v695, v695);
      v547 = vmlaq_f32(v547, v694, v694);
      v639 += 32;
    }

    while (v639 != 256);
    if (a4)
    {
      v683.i32[0] = 0;
      v694.i32[0] = *(a1 + 135);
      v696 = vdupq_lane_s8(*&vceqq_s8(v694, v683), 0);
      v697 = vsubq_f32(vmlaq_laneq_f32(v666, v550, v470, 2), *(v8 + 16));
      v699 = *(v8 + 64);
      v698 = *(v8 + 80);
      v1701 = vbslq_s8(v696, v697, vmulq_f32(v697, v698));
      v700 = vsubq_f32(vmlaq_laneq_f32(v666, v1673, v470, 2), *v8);
      v1694 = vbslq_s8(v696, v700, vmulq_f32(v700, v699));
      v701 = vsubq_f32(vmlaq_laneq_f32(v666, v551, v470, 2), *(v8 + 32));
      v702 = *(v8 + 96);
      v703 = *(v8 + 112);
      v704 = vbslq_s8(v696, v701, vmulq_f32(v701, v702));
      v705 = vsubq_f32(vmlaq_laneq_f32(v666, v552, v470, 2), *(v8 + 48));
      v706 = vbslq_s8(v696, v705, vmulq_f32(v705, v703));
      v707 = vsubq_f32(vmlaq_lane_f32(v664, v550, *v470.f32, 1), *(a1 + 224));
      v708 = vbslq_s8(v696, v707, vmulq_f32(v707, v698));
      v709 = vsubq_f32(vmlaq_lane_f32(v664, v1673, *v470.f32, 1), *(a1 + 208));
      v710 = vbslq_s8(v696, v709, vmulq_f32(v709, v699));
      v711 = vsubq_f32(vmlaq_lane_f32(v664, v551, *v470.f32, 1), *(a1 + 240));
      v712 = vbslq_s8(v696, v711, vmulq_f32(v711, v702));
      v713 = vsubq_f32(vmlaq_lane_f32(v664, v552, *v470.f32, 1), *(a1 + 256));
      v714 = vbslq_s8(v696, v713, vmulq_f32(v713, v703));
      v715 = vsubq_f32(vmlaq_n_f32(v662, v552, v470.f32[0]), *(a1 + 192));
      v716 = vbslq_s8(v696, v715, vmulq_f32(v715, v703));
      v717 = vsubq_f32(vmlaq_n_f32(v662, v551, v470.f32[0]), *(a1 + 176));
      v718 = vbslq_s8(v696, v717, vmulq_f32(v717, v702));
      v719 = vsubq_f32(vmlaq_n_f32(v662, v1673, v470.f32[0]), *(a1 + 144));
      v720 = vbslq_s8(v696, v719, vmulq_f32(v719, v699));
      v721 = vsubq_f32(vmlaq_n_f32(v662, v550, v470.f32[0]), *(a1 + 160));
      v722 = vbslq_s8(v696, v721, vmulq_f32(v721, v698));
      v723 = vmlaq_laneq_f32(v668, v550, v470, 3);
      v724 = vmlaq_laneq_f32(v668, v1673, v470, 3);
      v725 = vmlaq_laneq_f32(v668, v551, v470, 3);
      v726 = vsubq_f32(vmlaq_laneq_f32(v668, v552, v470, 3), v703);
      v727 = vsubq_f32(v725, v702);
      v728 = vsubq_f32(v724, v699);
      v729 = vsubq_f32(v723, v698);
      a4[4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vmulq_f32(v710, v710), *v1731.f32, 1), vmulq_f32(v720, v720), v1731.f32[0]), vmulq_f32(v1694, v1694), v1731, 2), vmulq_f32(v728, v728), v1731, 3);
      a4[5] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vmulq_f32(v708, v708), *v1731.f32, 1), vmulq_f32(v722, v722), v1731.f32[0]), vmulq_f32(v1701, v1701), v1731, 2), vmulq_f32(v729, v729), v1731, 3);
      a4[6] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vmulq_f32(v712, v712), *v1731.f32, 1), vmulq_f32(v718, v718), v1731.f32[0]), vmulq_f32(v704, v704), v1731, 2), vmulq_f32(v727, v727), v1731, 3);
      a4[7] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vmulq_f32(v714, v714), *v1731.f32, 1), vmulq_f32(v716, v716), v1731.f32[0]), vmulq_f32(v706, v706), v1731, 2), vmulq_f32(v726, v726), v1731, 3);
    }

    v628 = vpaddq_f32(vpaddq_f32(vaddq_f32(v676, v677), vaddq_f32(v674, v675)), vpaddq_f32(vaddq_f32(v672, v673), vaddq_f32(v547, v671)));
    v730 = vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v674, *v1731.f32, 1), v676, v1731.f32[0]), v672, v1731, 2), v547, v1731, 3), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v675, *v1731.f32, 1), v677, v1731.f32[0]), v673, v1731, 2), v671, v1731, 3));
    v730.i64[0] = vpaddq_f32(v730, v730).u64[0];
    *v547.f32 = vpadd_f32(*v730.f32, *v730.f32);
    v506 = v1720;
    v505 = v1726;
    v508 = v1707;
    v507 = v1713;
    if (!a4)
    {
      goto LABEL_105;
    }

    goto LABEL_104;
  }

  if (v553 == 324)
  {
    v544.i32[0] = 0;
    v554 = vdupq_lane_s32(*v473.i8, 0);
    v555 = vmlaq_n_f32(v554, v550, v470.f32[0]);
    v556 = vmlaq_n_f32(v554, v549, v470.f32[0]);
    v557 = vmlaq_n_f32(v554, v551, v470.f32[0]);
    v558 = vmlaq_n_f32(v554, v552, v470.f32[0]);
    v559 = vdupq_lane_s32(*v473.i8, 1);
    v560 = vmlaq_lane_f32(v559, v552, *v470.f32, 1);
    v561 = vmlaq_lane_f32(v559, v551, *v470.f32, 1);
    v562 = vmlaq_lane_f32(v559, v549, *v470.f32, 1);
    v563 = vmlaq_lane_f32(v559, v550, *v470.f32, 1);
    v564 = vdupq_laneq_s32(v473, 2);
    v565 = vmlaq_laneq_f32(v564, v552, v470, 2);
    v566 = vmlaq_laneq_f32(v564, v551, v470, 2);
    v567 = vmlaq_laneq_f32(v564, v549, v470, 2);
    v568 = vmlaq_laneq_f32(v564, v550, v470, 2);
    v569 = vdupq_laneq_s32(v473, 3);
    v570 = vmlaq_laneq_f32(v569, v552, v470, 3);
    v571 = vmlaq_laneq_f32(v569, v551, v470, 3);
    v572 = vmlaq_laneq_f32(v569, v549, v470, 3);
    v573 = vmlaq_laneq_f32(v569, v550, v470, 3);
    v574 = vsubq_f32(v558, *(a1 + 192));
    v575 = vsubq_f32(v557, *(a1 + 176));
    v576 = vsubq_f32(v556, *(a1 + 144));
    v577 = vsubq_f32(v555, *(a1 + 160));
    v578 = vsubq_f32(v563, *(a1 + 224));
    v579 = vsubq_f32(v562, *(a1 + 208));
    v580 = vsubq_f32(v561, *(a1 + 240));
    v581 = vsubq_f32(v560, *(a1 + 256));
    v582 = vsubq_f32(v568, *(v8 + 16));
    v583 = vsubq_f32(v567, *v8);
    v584 = vsubq_f32(v566, *(v8 + 32));
    v585 = vsubq_f32(v565, *(v8 + 48));
    v587 = *(v8 + 96);
    v586 = *(v8 + 112);
    v588 = *(v8 + 64);
    v589 = *(v8 + 80);
    v590 = vsubq_f32(v573, v589);
    v591 = vsubq_f32(v572, v588);
    v592 = vsubq_f32(v571, v587);
    v593 = vsubq_f32(v570, v586);
    v572.i8[0] = *(a1 + 135);
    v594 = vdupq_lane_s8(*&vceqq_s8(v572, v544), 0);
    v595 = vbslq_s8(v594, v585, vmulq_f32(v585, v586));
    v596 = vbslq_s8(v594, v584, vmulq_f32(v584, v587));
    v597 = vbslq_s8(v594, v583, vmulq_f32(v583, v588));
    v598 = vbslq_s8(v594, v582, vmulq_f32(v582, v589));
    v599 = vbslq_s8(v594, v581, vmulq_f32(v581, v586));
    v600 = vbslq_s8(v594, v580, vmulq_f32(v580, v587));
    v601 = vbslq_s8(v594, v579, vmulq_f32(v579, v588));
    v602 = vbslq_s8(v594, v578, vmulq_f32(v578, v589));
    v603 = vbslq_s8(v594, v577, vmulq_f32(v577, v589));
    v604 = vbslq_s8(v594, v576, vmulq_f32(v576, v588));
    v605 = vbslq_s8(v594, v575, vmulq_f32(v575, v587));
    v606 = vbslq_s8(v594, v574, vmulq_f32(v574, v586));
    v607 = vmulq_f32(v606, v606);
    v608 = vmulq_f32(v605, v605);
    v609 = vmulq_f32(v604, v604);
    v610 = vmulq_f32(v603, v603);
    v611 = vmulq_f32(v602, v602);
    v612 = vmulq_f32(v601, v601);
    v613 = vmulq_f32(v600, v600);
    v614 = vmulq_f32(v599, v599);
    v615 = vmulq_f32(v598, v598);
    v616 = vmulq_f32(v597, v597);
    v617 = vmulq_f32(v596, v596);
    v618 = vmulq_f32(v595, v595);
    v619 = vmulq_f32(v593, v593);
    v620 = vmulq_f32(v592, v592);
    v621 = vmulq_f32(v591, v591);
    v622 = vmulq_f32(v590, v590);
    v623 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v611, *v504.f32, 1), v610, v504.f32[0]), v615, v504, 2), v622, v504, 3);
    v624 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v612, *v504.f32, 1), v609, v504.f32[0]), v616, v504, 2), v621, v504, 3);
    v625 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v613, *v504.f32, 1), v608, v504.f32[0]), v617, v504, 2), v620, v504, 3);
    v626 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v614, *v504.f32, 1), v607, v504.f32[0]), v618, v504, 2), v619, v504, 3);
    if (a4)
    {
      a4[4] = v624;
      a4[5] = v623;
      a4[6] = v625;
      a4[7] = v626;
    }

    v627 = vaddq_f32(v610, v607);
    v547 = vaddq_f32(v616, v617);
    v628 = vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(v609, v608), v627), vaddq_f32(vaddq_f32(v612, v613), vaddq_f32(v611, v614))), vpaddq_f32(vaddq_f32(v547, vaddq_f32(v615, v618)), vaddq_f32(vaddq_f32(v621, v620), vaddq_f32(v622, v619))));
    v629 = vaddq_f32(vaddq_f32(v624, v625), vaddq_f32(v623, v626));
    v629.i64[0] = vpaddq_f32(v629, v629).u64[0];
    *v547.f32 = vpadd_f32(*v629.f32, *v629.f32);
    if (!a4)
    {
      goto LABEL_105;
    }

    goto LABEL_104;
  }

  v628 = 0uLL;
  v547.i32[0] = 2139095040;
  if (a4)
  {
LABEL_104:
    a4[8].i32[0] = v547.i32[0];
    *a4 = v505;
    a4[1] = v506;
    a4[2] = v507;
    a4[3] = v508;
  }

LABEL_105:
  v630 = 0;
  if ((v468 & 0x18000) == 0 || v547.f32[0] <= v5[1])
  {
    v1592 = 0u;
    v638 = 0uLL;
    goto LABEL_225;
  }

  v1592 = 0u;
  v1591 = a2;
  v1601 = v468;
  if (*(a1 + 40))
  {
    v631 = vextq_s8(vrev64q_s32(v628), v628, 8uLL);
    v632 = vmaxnmq_f32(v628, v631);
    v633 = vminnmq_f32(v628, v631);
    v634 = vminnmq_f32(v633, vrev64q_s32(v633));
    v634.f32[0] = 0.25 * vmlaq_f32(vmaxnmq_f32(v632, vrev64q_s32(v632)), v1670, v634).f32[0];
    v635 = vandq_s8(vcgtq_f32(v628, vdupq_lane_s32(*v634.f32, 0)), xmmword_298495670);
    v636 = vaddvq_s32(v635);
    if (*(a1 + 136))
    {
      v637 = v636;
    }

    else
    {
      v637 = v636 | 8;
    }
  }

  else
  {
    v731 = vmaxnmq_f32(v628, vextq_s8(v628, v628, 8uLL));
    v635 = vandq_s8(vceqq_f32(vmaxnmq_f32(v731, vrev64q_s32(v731)), v628), xmmword_298495670);
    v635.i8[0] = vaddvq_s32(v635);
    if ((v635.i8[0] & 8) != 0)
    {
      v637 = 8;
    }

    else
    {
      v637 = v635.u8[0];
    }
  }

  v508.i32[0] = 0;
  v635.i32[0] = 0;
  v1594 = v635;
  v635.i32[0] = 0;
  v1607 = v635;
  v1600 = 0;
  v732 = a1 + 144;
  v1606 = vdupq_lane_s32(*v1717.f32, 0);
  v1658 = a1 + 400;
  v733 = 1;
  v734 = &xmmword_298496000;
  v1603 = vdupq_laneq_s32(v1717, 2);
  v1604 = vdupq_lane_s32(*v1717.f32, 1);
  v1602 = vdupq_laneq_s32(v1717, 3);
  v735.i64[0] = 0x3F0000003FLL;
  v735.i64[1] = 0x3F0000003FLL;
  v1590 = vnegq_f32(v735);
  v1598 = 0u;
  v1599 = 0u;
  v1596 = 0u;
  v1597 = 0u;
  v1608 = v637;
  v1595 = v508;
  v1605 = v5;
  while (v547.f32[0] >= v5[1])
  {
    if ((v733 & v637) == 0)
    {
      goto LABEL_222;
    }

    v1721 = v547;
    v736 = vdupq_n_s32(0x3A88642Au);
    if (*(a1 + 124) <= *(v734 + 335))
    {
      v1665 = v736;
      v765 = v734;
      v766 = a4;
      if (*(a1 + 136))
      {
        v767 = 0;
      }

      else
      {
        v767 = -1;
      }

      if (*(a1 + 136))
      {
        v768 = 6;
      }

      else
      {
        v768 = 8;
      }

      WeightInfoForSingleLineDualWeight_4x4(2, v768);
      v769 = __clz(v733);
      v770 = v769 ^ 0x1F;
      v1733 = FindDualWeights_6x5_kVectorMask[v770];
      v771 = (v732 + (v770 << 6));
      v773 = *v771;
      v772 = v771[1];
      v775 = v771[2];
      v774 = v771[3];
      v1740 = v1717;
      v776 = *(a1 + 144);
      v777 = vsubq_f32(v776, v1606);
      v1702 = *(a1 + 160);
      v1708 = *(a1 + 192);
      v778 = vsubq_f32(v1702, v1606);
      v1714 = *(a1 + 176);
      v779 = vsubq_f32(v1714, v1606);
      v780 = vsubq_f32(v1708, v1606);
      v781 = (&v1740 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v769 ^ 0x1F) & 3)));
      v783 = *(a1 + 208);
      v782 = *(a1 + 224);
      v784 = vsubq_f32(v783, v1604);
      v785 = vsubq_f32(v782, v1604);
      v1660 = *(a1 + 240);
      v786 = vsubq_f32(v1660, v1604);
      v1695 = *(a1 + 256);
      v787 = vsubq_f32(v1695, v1604);
      v1678 = *(v8 + 16);
      v788 = vsubq_f32(v1678, v1603);
      v1653 = *(v8 + 32);
      v789 = vsubq_f32(v1653, v1603);
      v1689 = *(v8 + 48);
      v790 = vsubq_f32(v1689, v1603);
      v791 = vld1q_dup_f32(v781);
      v792 = vsubq_f32(v774, v791);
      v793 = vsubq_f32(v775, v791);
      v794 = vsubq_f32(v772, v791);
      v795 = vsubq_f32(v773, v791);
      v796 = *(a1 + 32);
      v797 = vmulq_f32(v780, v780);
      v798 = vmulq_f32(v779, v779);
      v799 = vmulq_f32(v778, v778);
      v800 = vmulq_f32(v777, v777);
      v801 = vmulq_f32(v787, v787);
      v802 = vmulq_f32(v786, v786);
      v803 = vmulq_f32(v785, v785);
      v804 = vmulq_f32(v784, v784);
      v805 = vmulq_f32(v790, v790);
      v806 = vmulq_f32(v789, v789);
      v807 = vmulq_f32(v788, v788);
      v1674 = *v8;
      v808 = vsubq_f32(*v8, v1603);
      v809 = vmulq_f32(v808, v808);
      v810 = *(v8 + 96);
      v811 = *(v8 + 112);
      v812 = vsubq_f32(v811, v1602);
      v813 = vmulq_f32(v812, v812);
      v814 = vsubq_f32(v810, v1602);
      v815 = vmulq_f32(v814, v814);
      v816 = *(v8 + 64);
      v817 = *(v8 + 80);
      v818 = vsubq_f32(v817, v1602);
      v819 = vmulq_f32(v818, v818);
      v820 = vsubq_f32(v816, v1602);
      v821 = vmulq_f32(v820, v820);
      if (v796)
      {
        v822 = (&v1739 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v769 ^ 0x1F) & 3)));
        v823 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v801, *v796, 1), v797, COERCE_FLOAT(*v796->f32)), v805, *v796->f32, 2), v813, *v796->f32, 3), v1670);
        v824 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v802, *v796, 1), v798, COERCE_FLOAT(*v796->f32)), v806, *v796->f32, 2), v815, *v796->f32, 3), v1670);
        v825 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v804, *v796, 1), v800, COERCE_FLOAT(*v796->f32)), v809, *v796->f32, 2), v821, *v796->f32, 3), v1670);
        v826 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v803, *v796, 1), v799, COERCE_FLOAT(*v796->f32)), v807, *v796->f32, 2), v819, *v796->f32, 3), v1670);
        v1739 = *v796->f32;
        v827 = vld1q_dup_f32(v822);
        v828 = vnegq_f32(v827);
        v829 = vmlaq_f32(v826, v794, vmulq_f32(v794, v828));
        v830 = vmlaq_f32(v825, v795, vmulq_f32(v795, v828));
        v831 = vmlaq_f32(v824, v793, vmulq_f32(v793, v828));
        v832 = vmlaq_f32(v823, v792, vmulq_f32(v792, v828));
      }

      else
      {
        v833 = vaddq_f32(vaddq_f32(vaddq_f32(v798, v802), v806), v815);
        v830 = vmlsq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v800, v804), v809), v821), v795, v795);
        v829 = vmlsq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v799, v803), v807), v819), v794, v794);
        v831 = vmlsq_f32(v833, v793, v793);
        v832 = vmlsq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v797, v801), v805), v813), v792, v792);
      }

      v834 = v830;
      v835 = v829;
      v836 = v831;
      v837 = v832;
      if (*(a1 + 135))
      {
        v838.i64[0] = 0x7F0000007FLL;
        v838.i64[1] = 0x7F0000007FLL;
        v836 = vbslq_s8(vcltzq_s32(*(v8 + 480)), v838, v831);
        v835 = vbslq_s8(vcltzq_s32(*(v8 + 464)), v838, v829);
        v834 = vbslq_s8(vcltzq_s32(*(v8 + 448)), v838, v830);
        v837 = vbslq_s8(vcltzq_s32(*(v8 + 496)), v838, v832);
      }

      v1619 = v829;
      v1621 = v830;
      v1616 = v832;
      v839 = vmaxnmq_f32(v834, v836);
      v840 = vmaxnmq_f32(v835, v837);
      v841 = vbslq_s8(vcgtq_f32(v836, v834), xmmword_298495610, xmmword_298495600);
      v842 = vbslq_s8(vcgtq_f32(v837, v835), xmmword_298495630, xmmword_298495620);
      v843 = vmaxnmq_f32(v839, v840);
      v844 = vbslq_s8(vcgtq_f32(v840, v839), v842, v841);
      v842.i64[0] = vextq_s8(v843, v843, 8uLL).u64[0];
      v845 = vmaxnm_f32(*v843.i8, *v842.i8);
      v846 = vbsl_s8(vcgt_f32(*v842.i8, *v843.i8), *&vextq_s8(v844, v844, 8uLL), *v844.i8);
      if (vmvn_s8(vcge_f32(v845, vdup_lane_s32(v845, 1))).u8[0])
      {
        v847 = v846.i32[1];
      }

      else
      {
        v847 = v846.i32[0];
      }

      v848 = *(v1658 + 16 * v847);
      v1684 = vcltzq_s32(v1733);
      v849 = vbicq_s8(vsubq_f32(v1717, v848), v1684);
      v1614 = v831;
      if (v796)
      {
        v850 = vmulq_f32(*v796->f32, v849);
      }

      else
      {
        v850 = vmulq_f32(v849, vdupq_n_s32(0x3EAAAAABu));
      }

      v849.i32[0] = *(a1 + 135);
      v851 = vdupq_lane_s8(*&vceqq_s8(v849, v1607), 0);
      v852 = vdupq_lane_s32(*v848.f32, 0);
      v853 = vdupq_lane_s32(*v848.f32, 1);
      v854 = vdupq_laneq_s32(v848, 2);
      v855 = vdupq_laneq_s32(v848, 3);
      v856 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v782, v853), *v850.f32, 1), vsubq_f32(v1702, v852), v850.f32[0]), vsubq_f32(v1678, v854), v850, 2), vsubq_f32(v817, v855), v850, 3);
      v857 = *(v8 + 448);
      v1642 = *(v8 + 464);
      v858 = vcltzq_s32(v1642);
      v859.i64[0] = 0x7F0000007FLL;
      v859.i64[1] = 0x7F0000007FLL;
      v860 = vbslq_s8(v851, v856, vbslq_s8(v858, v859, v856));
      v861 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v1695, v853), *v850.f32, 1), vsubq_f32(v1708, v852), v850.f32[0]), vsubq_f32(v1689, v854), v850, 2), vsubq_f32(v811, v855), v850, 3);
      v863 = *(v8 + 480);
      v862 = *(v8 + 496);
      v864 = vcltzq_s32(v862);
      v865 = vbslq_s8(v851, v861, vbslq_s8(v864, v859, v861));
      v866 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v783, v853), *v850.f32, 1), vsubq_f32(v776, v852), v850.f32[0]), vsubq_f32(v1674, v854), v850, 2), vsubq_f32(v816, v855), v850, 3);
      v867 = vcltzq_s32(v857);
      v868 = vbslq_s8(v851, v866, vbslq_s8(v867, v859, v866));
      v869 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v1660, v853), *v850.f32, 1), vsubq_f32(v1714, v852), v850.f32[0]), vsubq_f32(v1653, v854), v850, 2), vsubq_f32(v810, v855), v850, 3);
      v870 = vcltzq_s32(v863);
      v871 = vbslq_s8(v851, v869, vbslq_s8(v870, v859, v869));
      v872 = vmaxnmq_f32(v860, v865);
      v873 = vcgtq_f32(v865, v860);
      v874 = vmaxnmq_f32(v868, v871);
      v875 = vbslq_s8(vcgtq_f32(v871, v868), xmmword_298495610, xmmword_298495600);
      v877 = vmaxnmq_f32(v874, v872);
      v876 = vbslq_s8(vcgtq_f32(v872, v874), vbslq_s8(v873, xmmword_298495630, xmmword_298495620), v875);
      v874.i64[0] = vextq_s8(v877, v877, 8uLL).u64[0];
      *v875.i8 = vmaxnm_f32(*v877.f32, *v874.f32);
      *v874.f32 = vcgt_f32(*v874.f32, *v877.f32);
      *v877.f32 = vdup_lane_s32(*v875.i8, 1);
      v878 = vbsl_s8(*v874.f32, *&vextq_s8(v876, v876, 8uLL), *v876.i8);
      if (vmvn_s8(vcge_f32(*v875.i8, *v877.f32)).u8[0])
      {
        v879 = v878.i32[1];
      }

      else
      {
        v879 = v878.i32[0];
      }

      v880 = *(v1658 + 16 * v879);
      if (v733 == 8 || !*(a1 + 135))
      {
        v882 = v773;
        v883 = v772;
        v884 = v775;
        v885 = v774;
      }

      else
      {
        v877.i64[0] = 0x7F0000007FLL;
        v877.i64[1] = 0x7F0000007FLL;
        v881 = vnegq_f32(v877);
        v882 = vbslq_s8(v867, v881, v773);
        v773 = vbslq_s8(v867, v877, v773);
        v883 = vbslq_s8(v858, v881, v772);
        v772 = vbslq_s8(v858, v877, v772);
        v884 = vbslq_s8(v870, v881, v775);
        v775 = vbslq_s8(v870, v877, v775);
        v885 = vbslq_s8(v864, v881, v774);
        v774 = vbslq_s8(v864, v877, v774);
      }

      v877.i32[0] = 0;
      v886 = vminnmq_f32(v882, v884);
      v887 = vmaxnmq_f32(vmaxnmq_f32(v773, v775), vmaxnmq_f32(v772, v774));
      v888 = vminnmq_f32(v886, vminnmq_f32(v883, v885));
      v889 = vmaxnmq_f32(v887, vextq_s8(v887, v887, 8uLL));
      v890 = vminnmq_f32(v888, vextq_s8(v888, v888, 8uLL));
      v891 = vmaxnmq_f32(v889, vrev64q_s32(v889));
      v892 = vminnmq_f32(v890, vrev64q_s32(v890));
      v893 = vcgtq_f32(v848, v880);
      if (v769 == 30)
      {
        v894 = v893.i32[0];
      }

      else
      {
        v894 = v893.i32[1];
      }

      v893.i32[0] = v894;
      v895 = vdupq_lane_s32(*&vceqq_s32(v893, v877), 0);
      v896 = vbslq_s8(v895, v891, v892);
      v897 = vbslq_s8(v895, v892, v891);
      v898 = vcltzq_s32(vshlq_n_s32(v1684, 0x1FuLL));
      v1615 = v897;
      v899 = vbslq_s8(v898, v897, v848);
      v900 = vbslq_s8(v898, v896, v880);
      v1636 = vdupq_lane_s32(*v899.i8, 0);
      v901 = vsubq_f32(v1708, v1636);
      v902 = vsubq_f32(v1714, v1636);
      v903 = vsubq_f32(v1702, v1636);
      v904 = vsubq_f32(v776, v1636);
      v905 = vdupq_lane_s32(*v899.i8, 1);
      v906 = v899;
      v907 = vsubq_f32(v783, v905);
      v908 = vsubq_f32(v782, v905);
      v909 = v905;
      v1633 = v905;
      v910 = vmlaq_f32(vmulq_f32(v907, v907), v904, v904);
      v911 = vsubq_f32(v1660, v909);
      v912 = vmlaq_f32(vmulq_f32(v908, v908), v903, v903);
      v913 = vsubq_f32(v1695, v909);
      v914 = vmlaq_f32(vmulq_f32(v911, v911), v902, v902);
      v915 = v906;
      v1734 = v906;
      v1629 = vdupq_laneq_s32(v906, 2);
      v916 = vmlaq_f32(vmulq_f32(v913, v913), v901, v901);
      v917 = vsubq_f32(v1689, v1629);
      v918 = vmlaq_f32(v916, v917, v917);
      v919 = vsubq_f32(v1653, v1629);
      v920 = vmlaq_f32(v914, v919, v919);
      v921 = vsubq_f32(v1678, v1629);
      v922 = vmlaq_f32(v912, v921, v921);
      v923 = vsubq_f32(v1674, v1629);
      v924 = vmlaq_f32(v910, v923, v923);
      v1639 = vdupq_laneq_s32(v915, 3);
      v925 = vsubq_f32(v816, v1639);
      v926 = vmlaq_f32(v924, v925, v925);
      v927 = vsubq_f32(v817, v1639);
      v928 = vmlaq_f32(v922, v927, v927);
      v929 = vsubq_f32(v810, v1639);
      v930 = vmlaq_f32(v920, v929, v929);
      v931 = vsubq_f32(v811, v1639);
      v932 = vmlaq_f32(v918, v931, v931);
      v933 = v900;
      v934 = vdupq_lane_s32(*v900.i8, 0);
      v935 = vdupq_lane_s32(*v900.i8, 1);
      v936 = v933;
      v937 = vsubq_f32(v776, v934);
      v938 = vsubq_f32(v783, v935);
      v939 = vmlaq_f32(vmulq_f32(v938, v938), v937, v937);
      v940 = vsubq_f32(v1702, v934);
      v941 = vsubq_f32(v782, v935);
      v942 = vmlaq_f32(vmulq_f32(v941, v941), v940, v940);
      v943 = vsubq_f32(v1708, v934);
      v1645 = v934;
      v944 = vsubq_f32(v1714, v934);
      v945 = vsubq_f32(v1660, v935);
      v1661 = v935;
      v946 = vsubq_f32(v1695, v935);
      v947 = vmlaq_f32(vmulq_f32(v945, v945), v944, v944);
      v1728 = v936;
      v948 = vdupq_laneq_s32(v936, 2);
      v949 = vsubq_f32(v1674, v948);
      v950 = vsubq_f32(v1678, v948);
      v951 = vsubq_f32(v1653, v948);
      v1649 = v948;
      v952 = vsubq_f32(v1689, v948);
      v953 = vmlaq_f32(vmulq_f32(v946, v946), v943, v943);
      v954 = vdupq_laneq_s32(v936, 3);
      v955 = vsubq_f32(v811, v954);
      v956 = vsubq_f32(v810, v954);
      v957 = vsubq_f32(v817, v954);
      v1654 = v954;
      v958 = vsubq_f32(v816, v954);
      v959 = WeightInfoForSingleLineDualWeight_4x4(-vaddvq_s8(vorrq_s8(vuzp1q_s8(vuzp1q_s16(v857, v1642), vuzp1q_s16(v863, v862)), vuzp1q_s8(vuzp1q_s16(vcgtq_f32(v1665, vminnmq_f32(v926, vmlaq_f32(vmlaq_f32(v939, v949, v949), v958, v958))), vcgtq_f32(v1665, vminnmq_f32(v928, vmlaq_f32(vmlaq_f32(v942, v950, v950), v957, v957)))), vuzp1q_s16(vcgtq_f32(v1665, vminnmq_f32(v930, vmlaq_f32(vmlaq_f32(v947, v951, v951), v956, v956))), vcgtq_f32(v1665, vminnmq_f32(v932, vmlaq_f32(vmlaq_f32(v953, v952, v952), v955, v955))))))), v768);
      v1741 = v959;
      v960 = ReciprocalTable[v959 >> 27];
      *v961.i32 = v960 * (vcvts_n_f32_u32(v767 + (v768 >> 1), 2uLL) * v960);
      v962 = vsubq_f32(v936, v1734);
      v963.i64[0] = 0x8000000080000000;
      v963.i64[1] = 0x8000000080000000;
      v1612 = vdupq_n_s32(0x3B808081u);
      v964 = vbslq_s8(vcgtq_f32(v1612, vabdq_f32(v936, v1734)), vorrq_s8(vandq_s8(v962, v963), v1612), v962);
      __asm { FMOV            V1.4S, #1.0 }

      v1643 = _Q1;
      v966 = vdivq_f32(_Q1, v964);
      v968 = *(a1 + 144);
      v967 = *(a1 + 160);
      v969 = *(a1 + 176);
      v1679 = *(a1 + 192);
      v1757 = vmulq_n_f32(vsubq_f32(v1679, v1636), v966.f32[0]);
      v1756 = vmulq_n_f32(vsubq_f32(v969, v1636), v966.f32[0]);
      v1755 = vmulq_n_f32(vsubq_f32(v967, v1636), v966.f32[0]);
      v1754 = vmulq_n_f32(vsubq_f32(v968, v1636), v966.f32[0]);
      v971 = *(a1 + 208);
      v970 = *(a1 + 224);
      v972 = *(a1 + 240);
      v1675 = *(a1 + 256);
      v1761 = vmulq_lane_f32(vsubq_f32(v1675, v1633), *v966.f32, 1);
      v1760 = vmulq_lane_f32(vsubq_f32(v972, v1633), *v966.f32, 1);
      v1759 = vmulq_lane_f32(vsubq_f32(v970, v1633), *v966.f32, 1);
      v1758 = vmulq_lane_f32(vsubq_f32(v971, v1633), *v966.f32, 1);
      v1703 = *(v8 + 48);
      v1709 = *(v8 + 32);
      v973 = *(v8 + 16);
      v1715 = *v8;
      v974 = vmulq_laneq_f32(vsubq_f32(*v8, v1629), v966, 2);
      v1765 = vmulq_laneq_f32(vsubq_f32(v1703, v1629), v966, 2);
      v1764 = vmulq_laneq_f32(vsubq_f32(v1709, v1629), v966, 2);
      v1763 = vmulq_laneq_f32(vsubq_f32(v973, v1629), v966, 2);
      v1762 = v974;
      v975 = *(v8 + 112);
      v976 = *(v8 + 96);
      v977 = *(v8 + 80);
      v978 = *(v8 + 64);
      v1769 = vmulq_laneq_f32(vsubq_f32(v975, v1639), v966, 3);
      v1768 = vmulq_laneq_f32(vsubq_f32(v976, v1639), v966, 3);
      v1767 = vmulq_laneq_f32(vsubq_f32(v977, v1639), v966, 3);
      v1766 = vmulq_laneq_f32(vsubq_f32(v978, v1639), v966, 3);
      v979 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1758, v1758), v1754, v1754), v974, v974), v1766, v1766);
      v980 = &v1754 + 4 * v770;
      v982 = v980[2];
      v981 = v980[3];
      v984 = *v980;
      v983 = v980[1];
      v985 = vmlsq_f32(v979, v984, v984);
      v986 = vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1759, v1759), v1755, v1755), v1763, v1763), v1767, v1767), v983, v983);
      v987 = vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1760, v1760), v1756, v1756), v1764, v1764), v1768, v1768), v982, v982);
      v988 = vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1761, v1761), v1757, v1757), v1765, v1765), v1769, v1769), v981, v981);
      v989 = vdupq_lane_s32(v961, 0);
      v990 = *(a1 + 135);
      if (*(a1 + 135))
      {
        v991 = vbicq_s8(vcgtq_f32(v989, v985), *(v8 + 448));
        v992 = vbicq_s8(vcgtq_f32(v989, v986), *(v8 + 464));
        v993 = vbicq_s8(vcgtq_f32(v989, v987), *(v8 + 480));
        v994 = vbicq_s8(vcgtq_f32(v989, v988), *(v8 + 496));
      }

      else
      {
        v994 = vcgtq_f32(v989, v988);
        v993 = vcgtq_f32(v989, v987);
        v992 = vcgtq_f32(v989, v986);
        v991 = vcgtq_f32(v989, v985);
      }

      a4 = v766;
      v734 = v765;
      v995 = vmovn_s32(v1684);
      v996 = vorrq_s8(vandq_s8(vuzp1q_s16(v991, v992), xmmword_298495650), vandq_s8(vuzp1q_s16(v993, v994), xmmword_298495640));
      v996.i16[0] = vaddvq_s16(v996);
      *v996.i8 = vcnt_s8(*v996.i8);
      v996.i16[0] = vaddlv_u8(*v996.i8);
      v997 = v996.i16[0];
      v5 = v1605;
      v998 = v968;
      v999 = v969;
      v1000 = v967;
      v1001 = v970;
      if (v996.i32[0] >= 2u)
      {
        v1002 = vcltzq_s32(v993);
        v1003 = vcltzq_s32(v991);
        v1004 = vcltzq_s32(v994);
        v1005 = vcltzq_s32(v992);
        v1734 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v995), 0x1FuLL)), v1615, vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v1003, v968), vandq_s8(v1002, v969)), vaddq_f32(vandq_s8(v1005, v967), vandq_s8(v1004, v1679))), vaddq_f32(vaddq_f32(vandq_s8(v1003, v971), vandq_s8(v1002, v972)), vaddq_f32(vandq_s8(v1005, v970), vandq_s8(v1004, v1675)))), vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v1003, v1715), vandq_s8(v1002, v1709)), vaddq_f32(vandq_s8(v1005, v973), vandq_s8(v1004, v1703))), vaddq_f32(vaddq_f32(vandq_s8(v1003, v978), vandq_s8(v1002, v976)), vaddq_f32(vandq_s8(v1005, v977), vandq_s8(v1004, v975))))), ReciprocalTable[v997]));
      }

      v1006 = 0;
      v637 = v1608;
      if (v733 == 8)
      {
        v1008 = v1709;
        v1007 = v1715;
        v1009 = v973;
      }

      else
      {
        *v1006.i32 = v960 * (v960 * 0.25);
        v1010 = vmulq_f32(v984, v984);
        v1011 = vmulq_f32(v983, v983);
        v1012 = vmulq_f32(v982, v982);
        v1013 = vmulq_f32(v981, v981);
        v1014 = vdupq_lane_s32(v1006, 0);
        v1008 = v1709;
        v1009 = v973;
        if (*(a1 + 135))
        {
          v1015 = vcgtq_f32(v1014, v1013);
          v1016 = vbicq_s8(vcgtq_f32(v1014, v1010), *(v8 + 448));
          v1017 = vbicq_s8(vcgtq_f32(v1014, v1011), *(v8 + 464));
          v1018 = vbicq_s8(vcgtq_f32(v1014, v1012), *(v8 + 480));
          v1019 = vbicq_s8(v1015, *(v8 + 496));
        }

        else
        {
          v1019 = vcgtq_f32(v1014, v1013);
          v1018 = vcgtq_f32(v1014, v1012);
          v1017 = vcgtq_f32(v1014, v1011);
          v1016 = vcgtq_f32(v1014, v1010);
        }

        v1020 = vorrq_s8(vandq_s8(vuzp1q_s16(v1016, v1017), xmmword_298495650), vandq_s8(vuzp1q_s16(v1018, v1019), xmmword_298495640));
        v1020.i16[0] = vaddvq_s16(v1020);
        *v1020.i8 = vcnt_s8(*v1020.i8);
        v1020.i16[0] = vaddlv_u8(*v1020.i8);
        v1021 = v1020.i16[0];
        v1007 = v1715;
        if (v1020.i32[0] >= 2u)
        {
          v1022 = vaddq_f32(vaddq_f32(vandq_s8(vcltzq_s32(v1016), *v771), vandq_s8(vcltzq_s32(v1018), v771[2])), vaddq_f32(vandq_s8(vcltzq_s32(v1017), v771[1]), vandq_s8(vcltzq_s32(v1019), v771[3])));
          v1022.i64[0] = vpaddq_f32(v1022, v1022).u64[0];
          *v1022.f32 = vpadd_f32(*v1022.f32, *v1022.f32);
          v1022.f32[0] = ReciprocalTable[v1021] * v1022.f32[0];
          v1734 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v995), 0x1FuLL)), vdupq_lane_s32(*v1022.f32, 0), v1734);
        }
      }

      v1023 = vmulq_n_f32(vsubq_f32(v1645, v1679), v966.f32[0]);
      v1024 = vmulq_n_f32(vsubq_f32(v1645, v968), v966.f32[0]);
      v1025 = vmulq_n_f32(vsubq_f32(v1645, v967), v966.f32[0]);
      v1026 = vmulq_n_f32(vsubq_f32(v1645, v969), v966.f32[0]);
      v1646 = v972;
      v1759 = vmulq_lane_f32(vsubq_f32(v1661, v970), *v966.f32, 1);
      v1755 = v1025;
      v1754 = v1024;
      v1758 = vmulq_lane_f32(vsubq_f32(v1661, v971), *v966.f32, 1);
      v1760 = vmulq_lane_f32(vsubq_f32(v1661, v972), *v966.f32, 1);
      v1756 = v1026;
      v1757 = v1023;
      v1761 = vmulq_lane_f32(vsubq_f32(v1661, v1675), *v966.f32, 1);
      v1765 = vmulq_laneq_f32(vsubq_f32(v1649, v1703), v966, 2);
      v1762 = vmulq_laneq_f32(vsubq_f32(v1649, v1007), v966, 2);
      v1763 = vmulq_laneq_f32(vsubq_f32(v1649, v1009), v966, 2);
      v1764 = vmulq_laneq_f32(vsubq_f32(v1649, v1008), v966, 2);
      v1767 = vmulq_laneq_f32(vsubq_f32(v1654, v977), v966, 3);
      v1766 = vmulq_laneq_f32(vsubq_f32(v1654, v978), v966, 3);
      v1768 = vmulq_laneq_f32(vsubq_f32(v1654, v976), v966, 3);
      v1769 = vmulq_laneq_f32(vsubq_f32(v1654, v975), v966, 3);
      v1027 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1761, v1761), v1023, v1023), v1765, v1765), v1769, v1769);
      v1028 = *v980;
      v1029 = v980[1];
      v1030 = v980[2];
      v1031 = v980[3];
      v1032 = vmlsq_f32(v1027, v1031, v1031);
      v1033 = vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1758, v1758), v1024, v1024), v1762, v1762), v1766, v1766), v1028, v1028);
      v1034 = vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1759, v1759), v1025, v1025), v1763, v1763), v1767, v1767), v1029, v1029);
      v1035 = vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1760, v1760), v1026, v1026), v1764, v1764), v1768, v1768), v1030, v1030);
      if (v990)
      {
        v1036 = vbicq_s8(vcgtq_f32(v989, v1033), *(v8 + 448));
        v1037 = vbicq_s8(vcgtq_f32(v989, v1034), *(v8 + 464));
        v1038 = vbicq_s8(vcgtq_f32(v989, v1035), *(v8 + 480));
        v1039 = vbicq_s8(vcgtq_f32(v989, v1032), *(v8 + 496));
      }

      else
      {
        v1038 = vcgtq_f32(v989, v1035);
        v1037 = vcgtq_f32(v989, v1034);
        v1036 = vcgtq_f32(v989, v1033);
        v1039 = vcgtq_f32(v989, v1032);
      }

      v1040 = vorrq_s8(vandq_s8(vuzp1q_s16(v1036, v1037), xmmword_298495650), vandq_s8(vuzp1q_s16(v1038, v1039), xmmword_298495640));
      v1040.i16[0] = vaddvq_s16(v1040);
      *v1040.i8 = vcnt_s8(*v1040.i8);
      v1040.i16[0] = vaddlv_u8(*v1040.i8);
      v1041 = v1040.i16[0];
      if (v1040.i32[0] < 2u)
      {
        v1047 = xmmword_298495630;
        v1046 = v976;
        v764 = v1728;
      }

      else
      {
        v1042 = vcltzq_s32(v1038);
        v1043 = vcltzq_s32(v1036);
        v1044 = vcltzq_s32(v1039);
        v1045 = vcltzq_s32(v1037);
        v1046 = v976;
        v764 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v995), 0x1FuLL)), v1728, vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v1043, v998), vandq_s8(v1042, v999)), vaddq_f32(vandq_s8(v1045, v1000), vandq_s8(v1044, v1679))), vaddq_f32(vaddq_f32(vandq_s8(v1043, v971), vandq_s8(v1042, v972)), vaddq_f32(vandq_s8(v1045, v970), vandq_s8(v1044, v1675)))), vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v1043, v1715), vandq_s8(v1042, v1709)), vaddq_f32(vandq_s8(v1045, v973), vandq_s8(v1044, v1703))), vaddq_f32(vaddq_f32(vandq_s8(v1043, v978), vandq_s8(v1042, v976)), vaddq_f32(vandq_s8(v1045, v977), vandq_s8(v1044, v975))))), ReciprocalTable[v1041]));
        v1047 = xmmword_298495630;
      }

      if (v733 == 8)
      {
        v732 = a1 + 144;
        v763 = v1734;
      }

      else
      {
        v1048 = vmulq_f32(v1031, v1031);
        v1049 = vmulq_f32(v1030, v1030);
        v1050 = vmulq_f32(v1028, v1028);
        v1051 = vmulq_f32(v1029, v1029);
        v1052 = vdupq_lane_s32(v1006, 0);
        if (v990)
        {
          v1053 = vcgtq_f32(v1052, v1051);
          v1054 = vbicq_s8(vcgtq_f32(v1052, v1050), *(v8 + 448));
          v1055 = vbicq_s8(v1053, *(v8 + 464));
          v1056 = vbicq_s8(vcgtq_f32(v1052, v1049), *(v8 + 480));
          v1057 = vbicq_s8(vcgtq_f32(v1052, v1048), *(v8 + 496));
        }

        else
        {
          v1055 = vcgtq_f32(v1052, v1051);
          v1054 = vcgtq_f32(v1052, v1050);
          v1056 = vcgtq_f32(v1052, v1049);
          v1057 = vcgtq_f32(v1052, v1048);
        }

        v1058 = vorrq_s8(vandq_s8(vuzp1q_s16(v1054, v1055), xmmword_298495650), vandq_s8(vuzp1q_s16(v1056, v1057), xmmword_298495640));
        v1058.i16[0] = vaddvq_s16(v1058);
        *v1058.f32 = vcnt_s8(*v1058.f32);
        v1058.i16[0] = vaddlv_u8(*v1058.f32);
        v1059 = v1058.i16[0];
        if (v1058.i32[0] >= 2u)
        {
          v1060 = vaddq_f32(vaddq_f32(vandq_s8(vcltzq_s32(v1054), *v771), vandq_s8(vcltzq_s32(v1056), v771[2])), vaddq_f32(vandq_s8(vcltzq_s32(v1055), v771[1]), vandq_s8(vcltzq_s32(v1057), v771[3])));
          v1060.i64[0] = vpaddq_f32(v1060, v1060).u64[0];
          *v1060.f32 = vpadd_f32(*v1060.f32, *v1060.f32);
          v1060.f32[0] = ReciprocalTable[v1059] * v1060.f32[0];
          v1058 = vdupq_lane_s32(*v1060.f32, 0);
          v764 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v995), 0x1FuLL)), v1058, v764);
        }

        v732 = a1 + 144;
        v763 = v1734;
        if (!*(a1 + 134))
        {
          goto LABEL_200;
        }

        if (v990)
        {
          v1061 = vsubq_f32(v764, v1734);
          v1056.i32[0] = v1061.i32[3];
          if (v1061.f32[3] != 0.0)
          {
            goto LABEL_187;
          }

          if (*(a1 + 134) != 15)
          {
            v763 = v1590;
LABEL_187:
            v1058.i64[0] = 0;
            v1063 = vdupq_lane_s32(*&vcgtq_f32(v1058, v1056), 0);
            v1064 = vbslq_s8(v1063, v763, v764);
            v1065 = vbslq_s8(v1063, vnegq_f32(v1061), v1061);
            v1066 = vbslq_s8(v1063, v764, v763);
            *v1063.i32 = v1066.f32[3] / v1065.f32[3];
            v1067 = ReciprocalTable[BYTE4(v959)];
            v1068 = vmlsq_lane_f32(v1066, v1065, *v1063.i8, 0);
            *v1063.i32 = -v1067;
            v1065.f32[0] = v1067 + 1.0;
            if ((vminvq_u32(vandq_s8(vcgtq_f32(v1068, vdupq_lane_s32(*v1063.i8, 0)), vcgtq_f32(vdupq_lane_s32(*v1065.f32, 0), v1068))) & 0x80000000) != 0)
            {
              v763 = vminnmq_f32(vmaxnmq_f32(v1068, 0), v1643);
              v764 = v1064;
            }

            else
            {
              v1069 = vmvnq_s8(v1684);
              v1655 = v1064;
              v1070 = vmaxnmq_f32(v1621, v1614);
              v1071 = vmaxnmq_f32(v1619, v1616);
              v1072 = vmaxnmq_f32(v1070, v1071);
              v1073 = vbslq_s8(vcgtq_f32(v1071, v1070), vbslq_s8(vcgtq_f32(v1616, v1619), v1047, xmmword_298495620), vbslq_s8(vcgtq_f32(v1614, v1621), xmmword_298495610, xmmword_298495600));
              v1071.i64[0] = vextq_s8(v1072, v1072, 8uLL).u64[0];
              v1074 = vmaxnm_f32(*v1072.i8, *v1071.f32);
              v1075 = vbsl_s8(vcgt_f32(*v1071.f32, *v1072.i8), *&vextq_s8(v1073, v1073, 8uLL), *v1073.i8);
              if (vmvn_s8(vcge_f32(v1074, vdup_lane_s32(v1074, 1))).u8[0])
              {
                v1076 = v1075.i32[1];
              }

              else
              {
                v1076 = v1075.i32[0];
              }

              v1077 = vcltzq_s32(vshlq_n_s32(vmovl_u16(v995), 0x1FuLL));
              v1078 = vbslq_s8(v1077, v1066, *(v1658 + 16 * v1076));
              v1079 = vandq_s8(vsubq_f32(v1717, v1078), v1069);
              v1080 = vdupq_lane_s32(*v1078.f32, 0);
              v1081 = v998;
              v1082 = vsubq_f32(v998, v1080);
              v1610 = v1000;
              v1611 = v999;
              v1630 = v1066;
              v1634 = vsubq_f32(v999, v1080);
              v1083 = vsubq_f32(v1000, v1080);
              v1084 = vsubq_f32(v1679, v1080);
              v1085 = vdupq_lane_s32(*v1078.f32, 1);
              v1086 = vsubq_f32(v1675, v1085);
              v1735 = v1001;
              v1087 = vsubq_f32(v1001, v1085);
              v1088 = vsubq_f32(v972, v1085);
              v1089 = vsubq_f32(v971, v1085);
              v1090 = vdupq_laneq_s32(v1078, 2);
              v1091 = vsubq_f32(v1703, v1090);
              v1092 = vsubq_f32(v973, v1090);
              v1637 = vsubq_f32(v1709, v1090);
              v1640 = v1088;
              v1093 = vsubq_f32(v1715, v1090);
              v1094 = vdupq_laneq_s32(v1078, 3);
              v1650 = vsubq_f32(v978, v1094);
              v1662 = vsubq_f32(v1046, v1094);
              v1095 = vsubq_f32(v977, v1094);
              v1096 = vsubq_f32(v975, v1094);
              v1097 = vmlaq_n_f32(vmulq_lane_f32(v1088, *v1079.f32, 1), v1634, v1079.f32[0]);
              v1098 = v1093;
              v1099 = vmlaq_laneq_f32(vmlaq_laneq_f32(v1097, v1637, v1079, 2), v1662, v1079, 3);
              v1100 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v1089, *v1079.f32, 1), v1082, v1079.f32[0]), v1093, v1079, 2), v1650, v1079, 3);
              v1101 = vbslq_s8(vcgtq_f32(v1099, v1100), xmmword_298495610, xmmword_298495600);
              v1102 = v1087;
              v1103 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v1086, *v1079.f32, 1), v1084, v1079.f32[0]), v1091, v1079, 2), v1096, v1079, 3);
              v1104 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v1087, *v1079.f32, 1), v1083, v1079.f32[0]), v1092, v1079, 2), v1095, v1079, 3);
              v1105 = vbslq_s8(vcgtq_f32(v1103, v1104), v1047, xmmword_298495620);
              v1106 = vmaxnmq_f32(v1100, v1099);
              v1107 = vmaxnmq_f32(v1104, v1103);
              v1108 = vmaxnmq_f32(v1106, v1107);
              v1109 = vbslq_s8(vcgtq_f32(v1107, v1106), v1105, v1101);
              v1106.i64[0] = vextq_s8(v1108, v1108, 8uLL).u64[0];
              v1110 = vbsl_s8(vcgt_f32(*v1106.f32, *v1108.i8), *&vextq_s8(v1109, v1109, 8uLL), *v1109.i8);
              *v1106.f32 = vmaxnm_f32(*v1108.i8, *v1106.f32);
              if (vmvn_s8(vcge_f32(*v1106.f32, vdup_lane_s32(*v1106.f32, 1))).u8[0])
              {
                v1111 = v1110.i32[1];
              }

              else
              {
                v1111 = v1110.i32[0];
              }

              v1112 = vbslq_s8(v1077, v1655, *(v1658 + 16 * v1111));
              v1113 = v1081;
              v1114 = vsubq_f32(v1112, v1078);
              v1115.i64[0] = 0x8000000080000000;
              v1115.i64[1] = 0x8000000080000000;
              v1116 = vdivq_f32(v1643, vbslq_s8(vcgtq_f32(v1612, vabdq_f32(v1112, v1078)), vorrq_s8(vandq_s8(v1114, v1115), v1612), v1114));
              v1117 = vmulq_lane_f32(v1089, *v1116.f32, 1);
              v1759 = vmulq_lane_f32(v1102, *v1116.f32, 1);
              v1118 = v1046;
              v1755 = vmulq_n_f32(v1083, v1116.f32[0]);
              v1754 = vmulq_n_f32(v1082, v1116.f32[0]);
              v1758 = v1117;
              v1761 = vmulq_lane_f32(v1086, *v1116.f32, 1);
              v1757 = vmulq_n_f32(v1084, v1116.f32[0]);
              v1756 = vmulq_n_f32(v1634, v1116.f32[0]);
              v1760 = vmulq_lane_f32(v1640, *v1116.f32, 1);
              v1764 = vmulq_laneq_f32(v1637, v1116, 2);
              v1765 = vmulq_laneq_f32(v1091, v1116, 2);
              v1762 = vmulq_laneq_f32(v1098, v1116, 2);
              v1763 = vmulq_laneq_f32(v1092, v1116, 2);
              v1767 = vmulq_laneq_f32(v1095, v1116, 3);
              v1766 = vmulq_laneq_f32(v1650, v1116, 3);
              v1769 = vmulq_laneq_f32(v1096, v1116, 3);
              v1768 = vmulq_laneq_f32(v1662, v1116, 3);
              v1119 = vcgtq_f32(v989, vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1759, v1759), v1755, v1755), v1763, v1763), v1767, v1767), v980[1], v980[1]));
              v1120 = vcgtq_f32(v989, vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1117, v1117), v1754, v1754), v1762, v1762), v1766, v1766), *v980, *v980));
              v1121 = vcgtq_f32(v989, vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1761, v1761), v1757, v1757), v1765, v1765), v1769, v1769), v980[3], v980[3]));
              v1122 = vcgtq_f32(v989, vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1760, v1760), v1756, v1756), v1764, v1764), v1768, v1768), v980[2], v980[2]));
              v1123 = vorrq_s8(vandq_s8(vuzp1q_s16(v1120, v1119), xmmword_298495650), vandq_s8(vuzp1q_s16(v1122, v1121), xmmword_298495640));
              v1123.i16[0] = vaddvq_s16(v1123);
              v1124 = vcnt_s8(*v1123.i8);
              v1124.i16[0] = vaddlv_u8(v1124);
              if (v1124.i32[0] >= 2u)
              {
                v1078 = vbslq_s8(v1077, v1630, vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v1113, v1120), vandq_s8(v1611, v1122)), vaddq_f32(vandq_s8(v1610, v1119), vandq_s8(v1679, v1121))), vaddq_f32(vaddq_f32(vandq_s8(v971, v1120), vandq_s8(v1646, v1122)), vaddq_f32(vandq_s8(v1735, v1119), vandq_s8(v1675, v1121)))), vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v1715, v1120), vandq_s8(v1709, v1122)), vaddq_f32(vandq_s8(v973, v1119), vandq_s8(v1703, v1121))), vaddq_f32(vaddq_f32(vandq_s8(v978, v1120), vandq_s8(v1118, v1122)), vaddq_f32(vandq_s8(v977, v1119), vandq_s8(v975, v1121))))), ReciprocalTable[v1124.u16[0]]));
              }

              v1125 = vdupq_lane_s32(*v1112.f32, 0);
              v1126 = vmulq_n_f32(vsubq_f32(v1125, v1113), v1116.f32[0]);
              v1127 = vmulq_n_f32(vsubq_f32(v1125, v1610), v1116.f32[0]);
              v1128 = vdupq_lane_s32(*v1112.f32, 1);
              v1129 = vdupq_laneq_s32(v1112, 2);
              v1130 = vdupq_laneq_s32(v1112, 3);
              v1760 = vmulq_lane_f32(vsubq_f32(v1128, v1646), *v1116.f32, 1);
              v1756 = vmulq_n_f32(vsubq_f32(v1125, v1611), v1116.f32[0]);
              v1757 = vmulq_n_f32(vsubq_f32(v1125, v1679), v1116.f32[0]);
              v1761 = vmulq_lane_f32(vsubq_f32(v1128, v1675), *v1116.f32, 1);
              v1759 = vmulq_lane_f32(vsubq_f32(v1128, v1735), *v1116.f32, 1);
              v1131 = vmlaq_f32(vmulq_f32(v1759, v1759), v1127, v1127);
              v1755 = v1127;
              v1754 = v1126;
              v1758 = vmulq_lane_f32(vsubq_f32(v1128, v971), *v1116.f32, 1);
              v1762 = vmulq_laneq_f32(vsubq_f32(v1129, v1715), v1116, 2);
              v1763 = vmulq_laneq_f32(vsubq_f32(v1129, v973), v1116, 2);
              v1765 = vmulq_laneq_f32(vsubq_f32(v1129, v1703), v1116, 2);
              v1764 = vmulq_laneq_f32(vsubq_f32(v1129, v1709), v1116, 2);
              v1768 = vmulq_laneq_f32(vsubq_f32(v1130, v1118), v1116, 3);
              v1769 = vmulq_laneq_f32(vsubq_f32(v1130, v975), v1116, 3);
              v1767 = vmulq_laneq_f32(vsubq_f32(v1130, v977), v1116, 3);
              v1766 = vmulq_laneq_f32(vsubq_f32(v1130, v978), v1116, 3);
              v1132 = vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1758, v1758), v1126, v1126), v1762, v1762), v1766, v1766), *v980, *v980);
              v1133 = vcgtq_f32(v989, vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1760, v1760), v1756, v1756), v1764, v1764), v1768, v1768), v980[2], v980[2]));
              v1134 = vcgtq_f32(v989, vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1761, v1761), v1757, v1757), v1765, v1765), v1769, v1769), v980[3], v980[3]));
              v1135 = vcgtq_f32(v989, vmlsq_f32(vmlaq_f32(vmlaq_f32(v1131, v1763, v1763), v1767, v1767), v980[1], v980[1]));
              v1136 = vcgtq_f32(v989, v1132);
              v1137 = vorrq_s8(vandq_s8(vuzp1q_s16(v1136, v1135), xmmword_298495650), vandq_s8(vuzp1q_s16(v1133, v1134), xmmword_298495640));
              v1137.i16[0] = vaddvq_s16(v1137);
              v1138 = vcnt_s8(*v1137.i8);
              v1138.i16[0] = vaddlv_u8(v1138);
              if (v1138.i32[0] >= 2u)
              {
                v1112 = vbslq_s8(v1077, v1112, vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v1113, v1136), vandq_s8(v1611, v1133)), vaddq_f32(vandq_s8(v1610, v1135), vandq_s8(v1679, v1134))), vaddq_f32(vaddq_f32(vandq_s8(v971, v1136), vandq_s8(v1646, v1133)), vaddq_f32(vandq_s8(v1735, v1135), vandq_s8(v1675, v1134)))), vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v1715, v1136), vandq_s8(v1709, v1133)), vaddq_f32(vandq_s8(v973, v1135), vandq_s8(v1703, v1134))), vaddq_f32(vaddq_f32(vandq_s8(v978, v1136), vandq_s8(v1118, v1133)), vaddq_f32(vandq_s8(v977, v1135), vandq_s8(v975, v1134))))), ReciprocalTable[v1138.u16[0]]));
              }

              v1139 = vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(vdupq_laneq_s32(v1112, 3), vdupq_laneq_s32(v1078, 3))), 0);
              v1140 = v1112;
              v1140.i32[3] = 0;
              v764 = vbslq_s8(v1139, v1140, v1112);
              v1141 = v1078;
              v1141.i32[3] = 0;
              v763 = vbslq_s8(v1139, v1078, v1141);
            }

            goto LABEL_200;
          }

          v763 = 0uLL;
        }

        else
        {
          v1062 = vdupq_lane_s32(*&vcgtq_f32(vdupq_laneq_s32(v764, 3), vdupq_laneq_s32(v1734, 3)), 0);
          v764 = vandq_s8(v764, v1062);
          v763 = vbicq_s8(v1734, v1062);
        }
      }
    }

    else
    {
      v738 = *(v8 + 416);
      v737 = *(v8 + 432);
      v740 = *(v8 + 384);
      v739 = *(v8 + 400);
      v742 = *(v8 + 96);
      v741 = *(v8 + 112);
      v744 = *(v8 + 64);
      v743 = *(v8 + 80);
      v745 = vmaxnmq_f32(vmaxnmq_f32(v740, v738), vmaxnmq_f32(v739, v737));
      v746 = vmaxnmq_f32(vmaxnmq_f32(v744, v742), vmaxnmq_f32(v743, v741));
      v747 = vminnmq_f32(vminnmq_f32(v740, v738), vminnmq_f32(v739, v737));
      v748 = vminnmq_f32(vminnmq_f32(v744, v742), vminnmq_f32(v743, v741));
      v749 = vmaxnmq_f32(vzip1q_s32(v745, v746), vzip2q_s32(v745, v746));
      v750 = vminnmq_f32(vzip1q_s32(v747, v748), vzip2q_s32(v747, v748));
      v751 = vmaxnmq_f32(v749, vextq_s8(v749, v749, 8uLL));
      v752 = vminnmq_f32(v750, vextq_s8(v750, v750, 8uLL));
      v753 = vzip1q_s32(v751, v751);
      v753.i32[2] = v751.i32[0];
      v1727 = v753;
      v754 = vzip1q_s32(v752, v752);
      v754.i32[2] = v752.i32[0];
      v1732 = v754;
      v755 = vdupq_lane_s32(*v752.i8, 0);
      v756 = vuzp1q_s16(vcgtq_f32(v736, vsubq_f32(v738, v755)), vcgtq_f32(v736, vsubq_f32(v737, v755)));
      v757 = vdupq_lane_s32(*v751.i8, 0);
      v758 = vuzp1q_s16(vcgtq_f32(v736, vsubq_f32(v757, v738)), vcgtq_f32(v736, vsubq_f32(v757, v737)));
      v759 = vdupq_lane_s32(*v752.i8, 1);
      v760 = vdupq_lane_s32(*v751.i8, 1);
      v761 = vorrq_s8(vandq_s8(vcltzq_s16(vshlq_n_s16(vmovl_u8(vorr_s8(vorr_s8(vmovn_s16(vuzp1q_s16(vcgtq_f32(v736, vsubq_f32(v760, v744)), vcgtq_f32(v736, vsubq_f32(v760, v743)))), vmovn_s16(vuzp1q_s16(vcgtq_f32(v736, vsubq_f32(v757, v740)), vcgtq_f32(v736, vsubq_f32(v757, v739))))), vorr_s8(vmovn_s16(vuzp1q_s16(vcgtq_f32(v736, vsubq_f32(v740, v755)), vcgtq_f32(v736, vsubq_f32(v739, v755)))), vmovn_s16(vuzp1q_s16(vcgtq_f32(v736, vsubq_f32(v744, v759)), vcgtq_f32(v736, vsubq_f32(v743, v759))))))), 0xFuLL)), xmmword_298495650), vandq_s8(vorrq_s8(vorrq_s8(vuzp1q_s16(vcgtq_f32(v736, vsubq_f32(v760, v742)), vcgtq_f32(v736, vsubq_f32(v760, v741))), v758), vorrq_s8(v756, vuzp1q_s16(vcgtq_f32(v736, vsubq_f32(v742, v759)), vcgtq_f32(v736, vsubq_f32(v741, v759))))), xmmword_298495640));
      v761.i16[0] = vaddvq_s16(v761);
      *v761.i8 = vcnt_s8(*v761.i8);
      v761.i16[0] = vaddlv_u8(*v761.i8);
      v762 = WeightInfoForSingleLineDualWeight_4x4(v761.i32[0], 4);
      v764 = v1727;
      v763 = v1732;
      v1741 = v762;
    }

LABEL_200:
    v1142 = *(a1 + 32);
    v1747 = v764;
    v1746 = v763;
    FindColorVectors(&v1746, v1142, 2, 324, &v1741, &v1754);
    v1143 = __clz(__rbit32(v733));
    v1144 = *(a1 + 144);
    v1145 = vdupq_lane_s32(*v1754.f32, 0);
    v1667 = *(a1 + 192);
    v1668 = *(a1 + 160);
    v1669 = *(a1 + 176);
    v1146 = *(a1 + 240);
    v1148 = *(a1 + 208);
    v1147 = *(a1 + 224);
    v1149 = vdupq_lane_s32(*v1754.f32, 1);
    v1663 = *(a1 + 256);
    v1151 = *(v8 + 32);
    v1150 = *(v8 + 48);
    v1152 = vdupq_laneq_s32(v1754, 2);
    v1153 = *v8;
    v1666 = *(v8 + 16);
    v1736 = v1755;
    v1154 = vbicq_s8(v1755, vcltzq_s32(FindDualWeights_6x5_kVectorMask[v1143]));
    v1155 = vmulq_f32(v1154, v1154);
    v1156 = vadd_f32(*v1155.i8, *&vextq_s8(v1155, v1155, 8uLL));
    v1158 = *(v8 + 64);
    v1157 = *(v8 + 80);
    v1160 = *(v8 + 96);
    v1159 = *(v8 + 112);
    v1161 = vdupq_laneq_s32(v1754, 3);
    v1162 = vsubq_f32(v1159, v1161);
    v1163 = vsubq_f32(v1160, v1161);
    v1164 = vsubq_f32(v1157, v1161);
    v1165 = vsubq_f32(v1158, v1161);
    v1729 = v1756.i64[0];
    v1166 = vrecpes_f32(vaddv_f32(v1156));
    v1167 = vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v1663, v1149), *v1154.f32, 1), vsubq_f32(v1667, v1145), v1154.f32[0]), vsubq_f32(v1150, v1152), v1154, 2), v1162, v1154, 3), v1166);
    v1168 = vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v1146, v1149), *v1154.f32, 1), vsubq_f32(v1669, v1145), v1154.f32[0]), vsubq_f32(v1151, v1152), v1154, 2), v1163, v1154, 3), v1166);
    v1169 = vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v1147, v1149), *v1154.f32, 1), vsubq_f32(v1668, v1145), v1154.f32[0]), vsubq_f32(v1666, v1152), v1154, 2), v1164, v1154, 3), v1166);
    v1170 = vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v1148, v1149), *v1154.f32, 1), vsubq_f32(v1144, v1145), v1154.f32[0]), vsubq_f32(*v8, v1152), v1154, 2), v1165, v1154, 3), v1166);
    __asm { FMOV            V1.4S, #1.0 }

    v1172 = vminnmq_f32(v1169, _Q1);
    v1173 = vmaxnmq_f32(vminnmq_f32(v1170, _Q1), 0);
    v1174 = vmaxnmq_f32(v1172, 0);
    v1175 = vmaxnmq_f32(vminnmq_f32(v1168, _Q1), 0);
    v1176 = vmaxnmq_f32(vminnmq_f32(v1167, _Q1), 0);
    if (v733 != 8 && *(a1 + 134) >= 1)
    {
      v1177 = 0.0;
      if (fabsf(*&v1755.i32[3]) >= 0.0039216)
      {
        v1177 = vrecpes_f32(*&v1755.i32[3]);
      }

      v1174 = vbslq_s8(vcltzq_s32(*(v8 + 464)), vmulq_n_f32(v1164, v1177), v1174);
      v1173 = vbslq_s8(vcltzq_s32(*(v8 + 448)), vmulq_n_f32(v1165, v1177), v1173);
      v1175 = vbslq_s8(vcltzq_s32(*(v8 + 480)), vmulq_n_f32(v1163, v1177), v1175);
      v1176 = vbslq_s8(vcltzq_s32(*(v8 + 496)), vmulq_n_f32(v1162, v1177), v1176);
    }

    v1178 = (v732 + (v1143 << 6));
    v1179 = v1178[2];
    v1180 = v1178[3];
    v1182 = *v1178;
    v1181 = v1178[1];
    v1738 = v1755;
    v1183 = *(&v1738 & 0xFFFFFFFFFFFFFFF3 | (4 * (v1143 & 3)));
    v1184 = 0.0;
    if (fabsf(v1183) >= 0.00024414)
    {
      v1184 = vrecpes_f32(v1183);
    }

    v1185 = (&v1737 & 0xFFFFFFFFFFFFFFF3 | (4 * (v1143 & 3)));
    v1737 = v1754;
    v1186 = vld1q_dup_f32(v1185);
    v1187 = vsubq_f32(v1182, v1186);
    v1188 = vsubq_f32(v1181, v1186);
    v1189 = vsubq_f32(v1179, v1186);
    v1190 = vmulq_n_f32(vsubq_f32(v1180, v1186), v1184);
    v1191 = vmulq_n_f32(v1189, v1184);
    v1192 = vmulq_n_f32(v1188, v1184);
    v1193 = vmulq_n_f32(v1187, v1184);
    v1194 = v1741 >> 27;
    v1195 = vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v1174, 0), _Q1), v1194));
    v1196 = vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v1173, 0), _Q1), v1194));
    v1197 = vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v1176, 0), _Q1), v1194));
    v1198 = vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v1191, 0), _Q1), v1194));
    v1199 = vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v1192, 0), _Q1), v1194));
    v1200 = vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v1193, 0), _Q1), v1194));
    v1192.f32[0] = ReciprocalTable[v1194];
    v1704 = v1195;
    v1710 = v1197;
    v1201 = vmulq_n_f32(v1197, v1192.f32[0]);
    v1690 = v1198;
    v1696 = v1196;
    v1202 = vmulq_n_f32(v1196, v1192.f32[0]);
    v1203 = vmulq_n_f32(v1195, v1192.f32[0]);
    v1716 = vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v1175, 0), _Q1), v1194));
    v1204 = vmulq_n_f32(v1716, v1192.f32[0]);
    v1747 = v1203;
    v1746 = v1202;
    v1748 = v1204;
    v1749 = v1201;
    v1676 = v1200;
    v1680 = vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v1190, 0), _Q1), v1194));
    v1205 = vmulq_n_f32(v1680, v1192.f32[0]);
    v1206 = vmulq_n_f32(v1200, v1192.f32[0]);
    v1685 = v1199;
    v1207 = vmulq_n_f32(v1199, v1192.f32[0]);
    v1208 = vmulq_n_f32(v1198, v1192.f32[0]);
    v1751 = v1207;
    v1750 = v1206;
    v1752 = v1208;
    v1753 = v1205;
    v1209 = *(a1 + 32);
    if (v1209)
    {
      _Q1 = vmulq_f32(*v1209, v1670);
    }

    v1210 = a1;
    do
    {
      v1211 = v1210;
      v1210 = *(v1210 + 40);
    }

    while (v1210);
    v1212 = *(v1211 + 132);
    if (v1212 == 392)
    {
      v1262 = 0;
      v1263 = vzip1q_s32(v1202, v1202);
      v1263.i32[2] = v1202.i32[0];
      v1635 = v1263;
      v1264 = vdupq_lane_s32(*v1202.i8, 1);
      v1264.i32[3] = v1202.i32[2];
      v1664 = vextq_s8(v1202, vdupq_laneq_s32(v1202, 3), 8uLL);
      v1644 = vzip2q_s32(vextq_s8(v1202, v1202, 0xCuLL), v1202);
      v1265 = vzip2q_s32(vextq_s8(v1203, v1203, 0xCuLL), v1203);
      v1266 = vextq_s8(v1203, vdupq_laneq_s32(v1203, 3), 8uLL);
      v1656 = v1205;
      v1267 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1664, xmmword_298495A40), xmmword_298495A50, v1644), xmmword_298495A80, v1265), xmmword_298495A90, v1266);
      v1651 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1664, xmmword_298495AC0), xmmword_298495AD0, v1644), xmmword_298495B00, v1265), xmmword_298495B10, v1266);
      v1268 = vzip2q_s32(vextq_s8(v1204, v1204, 0xCuLL), v1204);
      v1269 = vextq_s8(v1204, vdupq_laneq_s32(v1204, 3), 8uLL);
      v1647 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1266, xmmword_298495B40), xmmword_298495B50, v1265), xmmword_298495B80, v1268), xmmword_298495B90, v1269);
      v1641 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1266, xmmword_298495B90), xmmword_298495B80, v1265), xmmword_298495B50, v1268), xmmword_298495B40, v1269);
      v1270 = vmlaq_f32(vmulq_f32(v1269, xmmword_298495B10), xmmword_298495B00, v1268);
      v1638 = vmlaq_f32(vmulq_f32(v1269, xmmword_298495A90), xmmword_298495A80, v1268);
      v1618 = vzip2q_s32(vextq_s8(v1206, v1206, 0xCuLL), v1206);
      v1620 = vextq_s8(v1206, vdupq_laneq_s32(v1206, 3), 8uLL);
      v1271 = vzip2q_s32(vextq_s8(v1207, v1207, 0xCuLL), v1207);
      v1272 = vextq_s8(v1207, vdupq_laneq_s32(v1207, 3), 8uLL);
      v1631 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1620, xmmword_298495A40), xmmword_298495A50, v1618), xmmword_298495A80, v1271), xmmword_298495A90, v1272);
      v1617 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1620, xmmword_298495AC0), xmmword_298495AD0, v1618), xmmword_298495B00, v1271), xmmword_298495B10, v1272);
      v1273 = vmlaq_f32(vmulq_f32(v1272, xmmword_298495B40), xmmword_298495B50, v1271);
      v1274 = vmlaq_f32(vmulq_f32(v1272, xmmword_298495B90), xmmword_298495B80, v1271);
      v1275 = vzip2q_s32(vextq_s8(v1208, v1208, 0xCuLL), v1208);
      v1276 = vextq_s8(v1208, vdupq_laneq_s32(v1208, 3), 8uLL);
      v1277 = vmlaq_f32(vmlaq_f32(v1273, xmmword_298495B80, v1275), xmmword_298495B90, v1276);
      v1613 = vmlaq_f32(vmlaq_f32(v1274, xmmword_298495B50, v1275), xmmword_298495B40, v1276);
      v1278 = vmlaq_f32(vmulq_f32(v1276, xmmword_298495B10), xmmword_298495B00, v1275);
      v1279 = vmlaq_f32(vmulq_f32(v1276, xmmword_298495A90), xmmword_298495A80, v1275);
      v1280 = vdupq_n_s32(0x3D800000u);
      v1755 = vmulq_f32(vmlaq_f32(vmulq_f32(v1664, xmmword_298495A00), xmmword_298495A10, v1644), v1280);
      v1281 = vzip1q_s32(v1203, v1203);
      v1281.i32[2] = v1203.i32[0];
      v1754 = vmulq_f32(vmlaq_f32(vmulq_f32(v1264, xmmword_2984959F0), xmmword_298495A20, v1635), v1280);
      v1282 = vdupq_lane_s32(*v1203.i8, 1);
      v1282.i32[3] = v1203.i32[2];
      v1757 = vmulq_f32(v1267, v1280);
      v1756 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1264, xmmword_298495A30), xmmword_298495A60, v1635), xmmword_298495A70, v1281), xmmword_298495AA0, v1282), v1280);
      v1759 = vmulq_f32(v1651, v1280);
      v1758 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1264, xmmword_298495AB0), xmmword_298495AE0, v1635), xmmword_298495AF0, v1281), xmmword_298495B20, v1282), v1280);
      v1283 = vzip1q_s32(v1204, v1204);
      v1283.i32[2] = v1204.i32[0];
      v1284 = vdupq_lane_s32(*v1204.i8, 1);
      v1284.i32[3] = v1204.i32[2];
      v1761 = vmulq_f32(v1647, v1280);
      v1760 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1282, xmmword_298495B30), xmmword_298495B60, v1281), xmmword_298495B70, v1283), xmmword_298495BA0, v1284), v1280);
      v1285 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1282, xmmword_298495BA0), xmmword_298495B70, v1281), xmmword_298495B60, v1283), xmmword_298495B30, v1284), v1280);
      v1763 = vmulq_f32(v1641, v1280);
      v1286 = vzip1q_s32(v1201, v1201);
      v1286.i32[2] = v1201.i32[0];
      v1287 = vdupq_lane_s32(*v1201.i8, 1);
      v1762 = v1285;
      v1287.i32[3] = v1201.i32[2];
      v1288 = vzip2q_s32(vextq_s8(v1201, v1201, 0xCuLL), v1201);
      v1289 = vextq_s8(v1201, vdupq_laneq_s32(v1201, 3), 8uLL);
      v1765 = vmulq_f32(vmlaq_f32(vmlaq_f32(v1270, xmmword_298495AD0, v1288), xmmword_298495AC0, v1289), v1280);
      v1764 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1284, xmmword_298495B20), xmmword_298495AF0, v1283), xmmword_298495AE0, v1286), xmmword_298495AB0, v1287), v1280);
      v1767 = vmulq_f32(vmlaq_f32(vmlaq_f32(v1638, xmmword_298495A50, v1288), xmmword_298495A40, v1289), v1280);
      v1766 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1284, xmmword_298495AA0), xmmword_298495A70, v1283), xmmword_298495A60, v1286), xmmword_298495A30, v1287), v1280);
      v1290 = vmlaq_f32(vmulq_f32(v1289, xmmword_298495A00), xmmword_298495A10, v1288);
      v1291 = vmulq_f32(v1287, xmmword_2984959F0);
      v1292 = vzip1q_s32(v1206, v1206);
      v1292.i32[2] = v1206.i32[0];
      v1293 = vdupq_lane_s32(*v1206.i8, 1);
      v1293.i32[3] = v1206.i32[2];
      v1769 = vmulq_f32(v1290, v1280);
      v1768 = vmulq_f32(vmlaq_f32(v1291, xmmword_298495A20, v1286), v1280);
      v1771 = vmulq_f32(vmlaq_f32(vmulq_f32(v1620, xmmword_298495A00), xmmword_298495A10, v1618), v1280);
      v1770 = vmulq_f32(vmlaq_f32(vmulq_f32(v1293, xmmword_2984959F0), xmmword_298495A20, v1292), v1280);
      v1294 = vzip1q_s32(v1207, v1207);
      v1294.i32[2] = v1207.i32[0];
      v1295 = vdupq_lane_s32(*v1207.i8, 1);
      v1295.i32[3] = v1207.i32[2];
      v1773 = vmulq_f32(v1631, v1280);
      v1772 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1293, xmmword_298495A30), xmmword_298495A60, v1292), xmmword_298495A70, v1294), xmmword_298495AA0, v1295), v1280);
      v1775 = vmulq_f32(v1617, v1280);
      v1774 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1293, xmmword_298495AB0), xmmword_298495AE0, v1292), xmmword_298495AF0, v1294), xmmword_298495B20, v1295), v1280);
      v1296 = vmlaq_f32(vmulq_f32(v1295, xmmword_298495B30), xmmword_298495B60, v1294);
      v1297 = vmlaq_f32(vmulq_f32(v1295, xmmword_298495BA0), xmmword_298495B70, v1294);
      v1298 = vzip1q_s32(v1208, v1208);
      v1298.i32[2] = v1208.i32[0];
      v1299 = vdupq_lane_s32(*v1208.i8, 1);
      v1299.i32[3] = v1208.i32[2];
      v1777 = vmulq_f32(v1277, v1280);
      v1776 = vmulq_f32(vmlaq_f32(vmlaq_f32(v1296, xmmword_298495B70, v1298), xmmword_298495BA0, v1299), v1280);
      v1779 = vmulq_f32(v1613, v1280);
      v1778 = vmulq_f32(vmlaq_f32(vmlaq_f32(v1297, xmmword_298495B60, v1298), xmmword_298495B30, v1299), v1280);
      v1300 = v1656;
      v1301 = vzip1q_s32(v1300, v1300);
      v1301.i32[2] = v1656.i32[0];
      v1302 = vmlaq_f32(vmlaq_f32(vmulq_f32(v1299, xmmword_298495B20), xmmword_298495AF0, v1298), xmmword_298495AE0, v1301);
      v1303 = vzip2q_s32(vextq_s8(v1300, v1300, 0xCuLL), v1656);
      v1304 = vmlaq_f32(vmulq_f32(v1299, xmmword_298495AA0), xmmword_298495A70, v1298);
      v1305 = vdupq_lane_s32(*v1656.i8, 1);
      v1305.i32[3] = v1656.i32[2];
      v1306 = vextq_s8(v1656, vdupq_laneq_s32(v1656, 3), 8uLL);
      v1781 = vmulq_f32(vmlaq_f32(vmlaq_f32(v1278, xmmword_298495AD0, v1303), xmmword_298495AC0, v1306), v1280);
      v1780 = vmulq_f32(vmlaq_f32(v1302, xmmword_298495AB0, v1305), v1280);
      v1307 = vmlaq_f32(vmlaq_f32(v1279, xmmword_298495A50, v1303), xmmword_298495A40, v1306);
      v1783 = vmulq_f32(v1307, v1280);
      v1782 = vmulq_f32(vmlaq_f32(vmlaq_f32(v1304, xmmword_298495A60, v1301), xmmword_298495A30, v1305), v1280);
      v1785 = vmulq_f32(vmlaq_f32(vmulq_f32(v1306, xmmword_298495A00), xmmword_298495A10, v1303), v1280);
      v1784 = vmulq_f32(vmlaq_f32(vmulq_f32(v1305, xmmword_2984959F0), xmmword_298495A20, v1301), v1280);
      v1308 = vdupq_lane_s32(*v1736.i8, 0);
      v1309 = vdupq_lane_s32(*v1736.i8, 1);
      v1310 = &v1754 + 16 * (v733 >> 3);
      v1311 = vdupq_laneq_s32(v1736, 2);
      v1312 = vdupq_laneq_s32(v1736, 3);
      v1313 = &v1754 + 16 * ((v733 >> 2) & 1);
      v1314 = &v1754 + 16 * ((v733 >> 1) & 1);
      v1315 = &v1754 + 16 * (v733 & 1);
      v1316 = 0uLL;
      v1317 = 0uLL;
      v1318 = 0uLL;
      v1319 = 0uLL;
      v1320 = 0uLL;
      v1321 = 0uLL;
      v1322 = 0uLL;
      v1323 = 0uLL;
      do
      {
        v1307.i32[0] = *(a1 + 135);
        v1324 = vdupq_lane_s8(*&vceqq_s8(v1307, v1595), 0);
        v1325 = vsubq_f32(vmlaq_f32(v1152, v1313[v1262], v1311), *(v1211 + v1262 * 16 + 656));
        v1326 = *(v1211 + v1262 * 16 + 912);
        v1327 = *(v1211 + v1262 * 16 + 928);
        v1328 = vbslq_s8(v1324, v1325, vmulq_f32(v1325, v1326));
        v1329 = vsubq_f32(vmlaq_f32(v1152, v1313[v1262 + 1], v1311), *(v1211 + v1262 * 16 + 672));
        v1330 = vbslq_s8(v1324, v1329, vmulq_f32(v1329, v1327));
        v1331 = vsubq_f32(vmlaq_f32(v1149, v1314[v1262], v1309), *(v1211 + v1262 * 16 + 400));
        v1332 = vbslq_s8(v1324, v1331, vmulq_f32(v1331, v1326));
        v1333 = vsubq_f32(vmlaq_f32(v1149, v1314[v1262 + 1], v1309), *(v1211 + v1262 * 16 + 416));
        v1334 = vbslq_s8(v1324, v1333, vmulq_f32(v1333, v1327));
        v1335 = vsubq_f32(vmlaq_f32(v1145, v1315[v1262], v1308), *(v1211 + v1262 * 16 + 144));
        v1336 = vbslq_s8(v1324, v1335, vmulq_f32(v1335, v1326));
        v1337 = vsubq_f32(vmlaq_f32(v1145, v1315[v1262 + 1], v1308), *(v1211 + v1262 * 16 + 160));
        v1307 = vbslq_s8(v1324, v1337, vmulq_f32(v1337, v1327));
        v1338 = vsubq_f32(vmlaq_f32(v1161, v1310[v1262], v1312), v1326);
        v1339 = vsubq_f32(vmlaq_f32(v1161, v1310[v1262 + 1], v1312), v1327);
        v1323 = vmlaq_f32(v1323, v1307, v1307);
        v1322 = vmlaq_f32(v1322, v1336, v1336);
        v1321 = vmlaq_f32(v1321, v1334, v1334);
        v1320 = vmlaq_f32(v1320, v1332, v1332);
        v1319 = vmlaq_f32(v1319, v1330, v1330);
        v1318 = vmlaq_f32(v1318, v1328, v1328);
        v1317 = vmlaq_f32(v1317, v1339, v1339);
        v1316 = vmlaq_f32(v1316, v1338, v1338);
        v1262 += 2;
      }

      while (v1262 != 16);
      v1261 = vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v1320, *_Q1.f32, 1), v1322, _Q1.f32[0]), v1318, _Q1, 2), v1316, _Q1, 3), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v1321, *_Q1.f32, 1), v1323, _Q1.f32[0]), v1319, _Q1, 2), v1317, _Q1, 3));
LABEL_217:
      v1340 = vpaddq_f32(v1261, v1261).u64[0];
      v1341 = vpadd_f32(v1340, v1340).f32[0];
      v547 = v1721;
      if (v1341 < v1721.f32[0])
      {
        v1601 = v1741;
        v1600 = v733;
        if (a4)
        {
          a4[8].f32[0] = v1341;
        }

        v547.f32[0] = v1341;
        v1598 = v1685;
        v1599 = v1676;
        v1596 = v1680;
        v1597 = v1690;
        v1625 = v1696;
        v1627 = v1704;
        v1622 = v1710;
        v1623 = v1716;
        v1609 = v1729;
      }

      goto LABEL_222;
    }

    if (v1212 == 324)
    {
      v1213 = &v1746 + 4 * (v733 & 1);
      v1214 = vmlaq_n_f32(v1145, v1213[2], *v1755.i32);
      v1215 = vmlaq_n_f32(v1145, *v1213, *v1755.i32);
      v1216 = vmlaq_n_f32(v1145, v1213[3], *v1755.i32);
      v1217 = vmlaq_n_f32(v1145, v1213[1], *v1755.i32);
      v1218 = &v1746 + 4 * ((v733 >> 1) & 1);
      v1219 = vmlaq_lane_f32(v1149, v1218[1], *v1755.i8, 1);
      v1220 = vmlaq_lane_f32(v1149, v1218[3], *v1755.i8, 1);
      v1221 = vmlaq_lane_f32(v1149, *v1218, *v1755.i8, 1);
      v1222 = vmlaq_lane_f32(v1149, v1218[2], *v1755.i8, 1);
      v1223 = &v1746 + 4 * ((v733 >> 2) & 1);
      v1224 = vmlaq_laneq_f32(v1152, v1223[1], v1755, 2);
      v1225 = vmlaq_laneq_f32(v1152, v1223[3], v1755, 2);
      v1226 = vmlaq_laneq_f32(v1152, *v1223, v1755, 2);
      v1227 = vmlaq_laneq_f32(v1152, v1223[2], v1755, 2);
      v1228 = &v1746 + 4 * (v733 >> 3);
      v1229 = vmlaq_laneq_f32(v1161, v1228[1], v1755, 3);
      v1230 = vmlaq_laneq_f32(v1161, v1228[3], v1755, 3);
      v1231 = vmlaq_laneq_f32(v1161, *v1228, v1755, 3);
      v1232 = vsubq_f32(v1217, v1668);
      v1233 = vsubq_f32(v1216, v1667);
      v1234 = vsubq_f32(v1215, v1144);
      v1235 = vsubq_f32(v1214, v1669);
      v1236 = vsubq_f32(v1222, v1146);
      v1237 = vsubq_f32(v1221, v1148);
      v1238 = vsubq_f32(v1220, v1663);
      v1239 = vsubq_f32(v1219, v1147);
      v1240 = vsubq_f32(v1227, v1151);
      v1241 = vsubq_f32(v1226, v1153);
      v1242 = vsubq_f32(v1225, v1150);
      v1226.i8[0] = *(a1 + 135);
      v1243 = vdupq_lane_s8(*&vceqq_s8(v1226, v1594), 0);
      v1244 = vsubq_f32(v1224, v1666);
      v1245 = vbslq_s8(v1243, v1244, vmulq_f32(v1157, v1244));
      v1246 = vbslq_s8(v1243, v1242, vmulq_f32(v1159, v1242));
      v1247 = vbslq_s8(v1243, v1241, vmulq_f32(v1158, v1241));
      v1248 = vbslq_s8(v1243, v1240, vmulq_f32(v1160, v1240));
      v1249 = vbslq_s8(v1243, v1239, vmulq_f32(v1157, v1239));
      v1250 = vbslq_s8(v1243, v1238, vmulq_f32(v1159, v1238));
      v1251 = vbslq_s8(v1243, v1237, vmulq_f32(v1158, v1237));
      v1252 = vbslq_s8(v1243, v1236, vmulq_f32(v1160, v1236));
      v1253 = vbslq_s8(v1243, v1235, vmulq_f32(v1160, v1235));
      v1254 = vbslq_s8(v1243, v1234, vmulq_f32(v1158, v1234));
      v1255 = vbslq_s8(v1243, v1233, vmulq_f32(v1159, v1233));
      v1256 = vbslq_s8(v1243, v1232, vmulq_f32(v1157, v1232));
      v1257 = vsubq_f32(vmlaq_laneq_f32(v1161, v1228[2], v1755, 3), v1160);
      v1258 = vsubq_f32(v1231, v1158);
      v1259 = vsubq_f32(v1230, v1159);
      v1260 = vsubq_f32(v1229, v1157);
      v1261 = vaddq_f32(vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vmulq_f32(v1251, v1251), *_Q1.f32, 1), vmulq_f32(v1254, v1254), _Q1.f32[0]), vmulq_f32(v1247, v1247), _Q1, 2), vmulq_f32(v1258, v1258), _Q1, 3), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vmulq_f32(v1252, v1252), *_Q1.f32, 1), vmulq_f32(v1253, v1253), _Q1.f32[0]), vmulq_f32(v1248, v1248), _Q1, 2), vmulq_f32(v1257, v1257), _Q1, 3)), vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vmulq_f32(v1249, v1249), *_Q1.f32, 1), vmulq_f32(v1256, v1256), _Q1.f32[0]), vmulq_f32(v1245, v1245), _Q1, 2), vmulq_f32(v1260, v1260), _Q1, 3), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vmulq_f32(v1250, v1250), *_Q1.f32, 1), vmulq_f32(v1255, v1255), _Q1.f32[0]), vmulq_f32(v1246, v1246), _Q1, 2), vmulq_f32(v1259, v1259), _Q1, 3)));
      goto LABEL_217;
    }

    v547 = v1721;
LABEL_222:
    _CF = v733 >= 5;
    v733 *= 2;
    if (_CF)
    {
      break;
    }
  }

  v638 = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(v1599), vcvtq_s32_f32(v1598)), vuzp1q_s16(vcvtq_s32_f32(v1597), vcvtq_s32_f32(v1596)));
  a2 = v1591;
  v468 = v1601;
  v630 = v1600;
LABEL_225:
  v1342 = *v5;
  if (v547.f32[0] >= *v5)
  {
    v1346 = 0;
    v630 = 0;
    v1344 = 0;
    LOBYTE(v1345) = 0;
    v1347 = 0;
    v638 = 0uLL;
    v1343 = 0uLL;
  }

  else
  {
    v1343 = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(v1625), vcvtq_s32_f32(v1627)), vuzp1q_s16(vcvtq_s32_f32(v1623), vcvtq_s32_f32(v1622)));
    v1344 = v468 >> 27;
    v1345 = HIDWORD(v468);
    v1346 = v468 & 0x1E7F3;
    v1347 = ((v468 >> 14) & 6) + 2;
    *v5 = v547.f32[0];
    v1592 = vmovl_u8(v1609);
    v1342 = v547.f32[0];
  }

  if (v1593 > v1342)
  {
    v1348 = v1345 + 1;
    v1349 = __clz(__rbit32(v1348));
    v1350 = v1348 >> v1349;
    v1351 = (v1348 >> v1349);
    if (!v1349 || v1351 == 1)
    {
      v1357 = v1592;
    }

    else
    {
      v1352 = vsubq_s16(vdupq_n_s16(v1345), v1592);
      if (v1351 == 3)
      {
        v1353 = 21846;
      }

      else
      {
        v1353 = 13108;
      }

      v1354 = vdupq_n_s16(v1353);
      v1355 = vminq_u16(v1592, v1352);
      v1356 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v1355.i8, *v1354.i8), 0x10uLL), vmull_high_u16(v1355, v1354), 0x10uLL);
      v1354.i64[0] = 0x1000100010001;
      v1354.i64[1] = 0x1000100010001;
      v1357 = vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v1355, v1356, vmovl_u8(vdup_n_s8(v1350))), vdupq_n_s16(v1349)), vaddq_s16(v1356, v1356)), vbicq_s8(v1354, vceqq_s16(v1355, v1592)));
    }

    v1358 = vandq_s8(v1357, vcgtq_u16(vdupq_n_s16(v1347), xmmword_298495BB0));
    switch(v1351)
    {
      case 5:
        v1393 = vdupq_n_s16(v1349);
        v1394 = vshlq_u16(v1358, vnegq_s16(v1393));
        *v1394.i8 = vmovn_s16(v1394);
        v1395 = vqtbl1q_s8(v1394, xmmword_298495BC0);
        v1396 = vqtbl1q_s8(v1394, xmmword_298495BD0);
        v1397 = vpaddq_s16(vmull_u8(*v1395.i8, 0x2001200120012001), vmull_u8(*&vextq_s8(v1395, v1395, 8uLL), 0x2001200120012001));
        v1395.i64[0] = 0x7000700070007;
        v1395.i64[1] = 0x7000700070007;
        v1398 = vandq_s8(v1397, v1395);
        v1399 = vandq_s8(vshrq_n_u16(v1397, 5uLL), v1395);
        v1400.i64[0] = 0x4000400040004;
        v1400.i64[1] = 0x4000400040004;
        v1401 = vceqq_s16(v1396, v1400);
        v1402 = vceqq_s16(v1399, v1400);
        v1403 = vsubq_s8(vaddq_s16(v1397, vshlq_n_s16(v1396, 3uLL)), vandq_s8(vqtbl1q_s8(xmmword_298495BE0, v1398), v1402));
        if ((vmaxvq_u16(v1401) & 0x8000) != 0)
        {
          v1404.i64[0] = 0x18001800180018;
          v1404.i64[1] = 0x18001800180018;
          v1403.i64[0] = vsubq_s8(v1403, vaddq_s8(vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495BF0, v1398), v1401), vandq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C00, v1398), v1401), v1402)), vandq_s8(vmulq_s16(v1399, v1404), vandq_s8(vceqq_s16(v1398, v1400), v1401)))).u64[0];
        }

        v1403.i64[1] = v1403.i64[0];
        v1405 = vshlq_u16(vorrq_s8(vshlq_u16(vmovl_u8(vshl_u8(vand_s8(vqtbl1_s8(v1403, 0x404020202000000), 0x1807601807601807), 0xFD00FBFD00FBFD00)), v1393), vandq_s8(v1358, vdupq_n_s16(~(-1 << v1349)))), vaddq_s16(vdupq_n_s32(v1349 << 16), xmmword_298495C10));
        v1406 = vshlq_u32(vmovl_u16(*&vpaddq_s16(v1405, v1405)), vaddq_s32(vdupq_n_s64(v1349 << 33), xmmword_298495C20));
        v1406.i64[0] = vpaddq_s32(v1406, v1406).u64[0];
        v1366 = v1406.u32[0];
        v1367 = (v1406.i64[0] & 0xFFFFFFFF00000000) >> (22 - 4 * v1349);
LABEL_246:
        v1392 = v1367 | v1366;
        break;
      case 3:
        *v1358.i8 = vmovn_s16(v1358);
        v1368 = vandq_s8(v1358, xmmword_298495C30);
        v1369 = vdupq_n_s8(v1349);
        v1370 = vshlq_u8(v1368, vnegq_s8(v1369));
        v1371 = vqtbl1q_s8(v1370, xmmword_298495C40);
        v1372 = vqtbl1q_s8(v1370, xmmword_298495C50);
        v1373 = vpaddq_s16(vmull_u8(*v1371.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v1371, v1371, 8uLL), 0x8010040180100401));
        v1373.i64[0] = vpaddq_s16(v1373, v1373).u64[0];
        v1374 = vmovl_s16(*v1373.i8);
        v1375 = vshlq_n_s32(v1372, 5uLL);
        v1371.i64[0] = 0x3000000030;
        v1371.i64[1] = 0x3000000030;
        v1376.i64[0] = 0x2000000020;
        v1376.i64[1] = 0x2000000020;
        v1377 = vceqq_s32(vandq_s8(v1374, v1371), v1376);
        v1378 = vaddw_s16(v1375, *v1373.i8);
        v1376.i64[0] = 0xFF000000FFLL;
        v1376.i64[1] = 0xFF000000FFLL;
        v1379 = vcgtq_s32(v1378, v1376);
        if ((vmaxvq_u32(vorrq_s8(v1377, v1379)) & 0x80000000) != 0)
        {
          v1380.i64[0] = 0x200000002;
          v1380.i64[1] = 0x200000002;
          v1381 = vceqq_s32(v1372, v1380);
          v1382 = vshrq_n_u32(v1374, 2uLL);
          v1383 = vandq_s8(v1379, v1381);
          v1384.i64[0] = 0xF0000000FLL;
          v1384.i64[1] = 0xF0000000FLL;
          v1385 = vandq_s8(v1374, v1384);
          v1386.i64[0] = 0x303030303030303;
          v1386.i64[1] = 0x303030303030303;
          v1387.i64[0] = 0x6060606060606060;
          v1387.i64[1] = 0x6060606060606060;
          v1378.i64[0] = vaddq_s8(vsubq_s8(vaddq_s8(vandq_s8(vmlaq_s8(v1387, v1375, v1386), v1379), v1378), vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C60, v1385), v1377), vandq_s8(vqtbl1q_s8(xmmword_298495C70, vandq_s8(v1382, v1384)), v1383))), vandq_s8(vqtbl1q_s8(xmmword_298495C80, v1385), vandq_s8(v1377, v1383))).u64[0];
        }

        v1378.i64[1] = v1378.i64[0];
        v1388 = vmovl_u8(vorr_s8(vshl_u8(vshl_u8(vand_s8(vqtbl1_s8(v1378, 0x404040000000000), 0x100C038060100C03), 0xFCFE00F9FBFCFE00), *v1369.i8), vand_s8(*v1368.i8, vdup_n_s8((1 << v1349) - 1))));
        v1389 = vadd_s32(vdup_n_s32(2 * v1349), 0x300000004);
        v1390.i64[0] = v1389.u32[0];
        v1390.i64[1] = v1389.u32[1];
        v1391 = vshlq_u32(vmlal_u16((*&v1388 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)), vshrn_n_s32(v1388, 0x10uLL), vshl_u16(vdup_n_s16(1 << v1349), 0x2000100010002)), vtrn1q_s32(0, v1390));
        v1391.i64[0] = vpaddq_s32(v1391, v1391).u64[0];
        v1392 = (v1391.u32[1] << (4 * v1349 + 7)) | v1391.u32[0];
        break;
      case 1:
        v1359.i64[0] = 0xFFFF0000FFFFLL;
        v1359.i64[1] = 0xFFFF0000FFFFLL;
        v1360.i64[0] = 0xFFFF0000FFFF0000;
        v1360.i64[1] = 0xFFFF0000FFFF0000;
        v1361 = vorrq_s8(vshlq_u32(vandq_s8(v1358, v1360), vnegq_s32(vdupq_n_s32(16 - v1349))), vandq_s8(v1358, v1359));
        v1359.i64[0] = 0xFFFFFFFFLL;
        v1359.i64[1] = 0xFFFFFFFFLL;
        v1362 = vandq_s8(v1361, v1359);
        v1360.i64[0] = 0xFFFFFFFF00000000;
        v1360.i64[1] = 0xFFFFFFFF00000000;
        v1363 = vandq_s8(v1361, v1360);
        *v1360.i8 = vdup_n_s32(2 * (16 - v1349));
        v1364.i64[0] = v1360.u32[0];
        v1364.i64[1] = v1360.u32[1];
        v1365 = vorrq_s8(vshlq_u64(v1363, vnegq_s64(v1364)), v1362);
        v1366 = v1365.i64[0];
        v1367 = v1365.i64[1] << (4 * v1349);
        goto LABEL_246;
      default:
        v1392 = 0;
        break;
    }

    v1407 = __clz(__rbit32(v1344 + 1));
    v1408 = (v1344 + 1) >> v1407;
    if ((v1346 & 0x400) != 0)
    {
      if (v1408 == 1)
      {
        v1420 = vzip2q_s8(v1343, v638);
        v1421 = vzip1q_s8(v1343, v638);
        v1422 = 32 * v1407;
        v1423 = vdupq_n_s16(v1407 << 8);
        v1424 = vpaddq_s8(vshlq_u8(v1421, v1423), vshlq_u8(v1420, v1423));
        v1425 = vdupq_n_s16(8 - 2 * v1407);
        v1426 = vshlq_u8(v1424, v1425);
        v1427 = vmovl_s8(vmul_s16(*v1425.i8, 0xFE00FE00FE00FELL));
        v1428 = vshlq_u16(v1426, v1427);
        v1429 = vmull_s16(*v1427.i8, 0x2000200020002);
        v1430 = vshlq_u32(v1428, v1429);
        v1431 = vmull_s32(*v1429.i8, 0x200000002);
        v1432 = vqtbl1q_s8(vshlq_u64(v1430, v1431), vaddq_s8(vdupq_n_s8(v1431.i8[0] >> 2), xmmword_298451AC0));
      }

      else
      {
        if (v1407)
        {
          v1477 = vmovl_u8(*v1343.i8);
          v1478 = vmovl_high_u8(v1343);
          v1479 = vdupq_n_s16(v1344);
          v1480 = vsubw_u8(v1479, *v1343.i8);
          v1481 = vsubw_high_u8(v1479, v1343);
          v1482 = vminq_u16(v1481, v1478);
          v1483 = vminq_u16(v1480, v1477);
          if (v1408 == 3)
          {
            v1484 = 21846;
          }

          else
          {
            v1484 = 13108;
          }

          v1485 = vdupq_n_s16(v1484);
          v1486 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v1483.i8, *v1485.i8), 0x10uLL), vmull_high_u16(v1483, v1485), 0x10uLL);
          v1487 = vdupq_n_s16(v1408);
          v1488 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v1482.i8, *v1485.i8), 0x10uLL), vmull_high_u16(v1482, v1485), 0x10uLL);
          v1489 = vdupq_n_s16(v1407);
          v1490 = vcgtq_u16(v1477, v1480);
          v1491.i64[0] = 0x1000100010001;
          v1491.i64[1] = 0x1000100010001;
          v1343 = vuzp1q_s8(vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v1483, v1486, v1487), v1489), vaddq_s16(v1486, v1486)), vandq_s8(v1490, v1491)), vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v1482, v1488, v1487), v1489), vaddq_s16(v1488, v1488)), vandq_s8(vcgtq_u16(v1478, v1481), v1491)));
          v1492 = vmovl_u8(*v638.i8);
          v1493 = vmovl_high_u8(v638);
          v1494 = vsubw_u8(v1479, *v638.i8);
          v1495 = vsubw_high_u8(v1479, v638);
          v1496 = vminq_u16(v1495, v1493);
          v1497 = vminq_u16(v1494, v1492);
          v1498 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v1497.i8, *v1485.i8), 0x10uLL), vmull_high_u16(v1497, v1485), 0x10uLL);
          v1499 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v1496.i8, *v1485.i8), 0x10uLL), vmull_high_u16(v1496, v1485), 0x10uLL);
          v638 = vuzp1q_s8(vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v1497, v1498, v1487), v1489), vaddq_s16(v1498, v1498)), vandq_s8(vcgtq_u16(v1492, v1494), v1491)), vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v1496, v1499, v1487), v1489), vaddq_s16(v1499, v1499)), vandq_s8(vcgtq_u16(v1493, v1495), v1491)));
        }

        v1500 = vzip2q_s8(v1343, v638);
        v1501 = vzip1q_s8(v1343, v638);
        v1422 = 32 * v1407;
        if (v1408 == 5)
        {
          v1572 = vqtbl1q_s8(v1501, xmmword_298495D60);
          v1573 = vqtbl1q_s8(v1500, xmmword_298495D70);
          v1574 = vuzp1q_s8(vpaddq_s16(vmull_u8(*v1572.i8, 0x801080108010801), vmull_u8(*&vextq_s8(v1572, v1572, 8uLL), 0x801080108010801)), vpaddq_s16(vmull_u8(*v1573.i8, 0x801080108010801), vmull_u8(*&vextq_s8(v1573, v1573, 8uLL), 0x801080108010801)));
          v1575 = vuzp1q_s8(vqtbl1q_s8(v1501, xmmword_298495D80), vqtbl1q_s8(v1500, xmmword_298495BD0));
          v1576 = vaddq_s8(v1574, vqtbl1q_s8(v1574, xmmword_298495D90));
          v1577 = vaddq_s8(vqtbl1q_s8(v1575, xmmword_298495D90), v1575);
          v1574.i64[0] = 0x707070707070707;
          v1574.i64[1] = 0x707070707070707;
          v1578 = vandq_s8(v1576, v1574);
          v1574.i64[0] = 0xF8F8F8F8F8F8F8F8;
          v1574.i64[1] = 0xF8F8F8F8F8F8F8F8;
          v1579.i64[0] = 0x2020202020202020;
          v1579.i64[1] = 0x2020202020202020;
          v1580 = vceqq_s8(vandq_s8(v1576, v1574), v1579);
          v1574.i64[0] = 0x404040404040404;
          v1574.i64[1] = 0x404040404040404;
          v1581 = vceqq_s8(v1577, v1574);
          v1582 = vsubq_s8(vaddq_s8(vshlq_n_s8(v1577, 5uLL), v1576), vandq_s8(vqtbl1q_s8(xmmword_298495BE0, v1578), v1581));
          if ((vmaxvq_u8(v1580) & 0x80) != 0)
          {
            v1583.i64[0] = 0x2424242424242424;
            v1583.i64[1] = 0x2424242424242424;
            v1584.i64[0] = 0x18001800180018;
            v1584.i64[1] = 0x18001800180018;
            v1582 = vsubq_s8(v1582, vaddq_s8(vaddq_s8(vandq_s8(vmulq_s16(v1577, v1584), vceqq_s8(v1576, v1583)), vandq_s8(vqtbl1q_s8(xmmword_298495BF0, v1578), v1580)), vandq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C00, v1578), v1581), v1580)));
          }

          v1585.i64[0] = 0x1000100010001;
          v1585.i64[1] = 0x1000100010001;
          v1586 = vshlq_u64(vshlq_u32(vshlq_u16(vshlq_u8(vqtbl1q_s8(v1582, xmmword_298495DA0), v1585), xmmword_298495DB0), xmmword_298495DC0), xmmword_298495DD0);
          v1432 = vextq_s8(v1586, v1586, 1uLL);
          v1422 += 75;
        }

        else if (v1408 == 3)
        {
          v1502 = vdupq_n_s8(v1407);
          v1503 = vnegq_s8(v1502);
          v1504 = vshlq_u8(v1500, v1503);
          v1505 = vshlq_u8(v1501, v1503);
          v1506 = vqtbl1q_s8(v1505, xmmword_298495C40);
          v1507 = vqtbl1q_s8(v1504, xmmword_298495C90);
          v1508 = vpaddq_s16(vpaddq_s16(vmull_u8(*v1506.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v1506, v1506, 8uLL), 0x8010040180100401)), vpaddq_s16(vmull_u8(*v1507.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v1507, v1507, 8uLL), 0x8010040180100401)));
          v1509 = vuzp1q_s16(vqtbl1q_s8(v1505, xmmword_298495C50), vqtbl1q_s8(v1504, xmmword_298495CA0));
          v1510 = vaddq_s16(v1508, vqtbl1q_s8(v1508, xmmword_298495CB0));
          v1511 = v1510;
          v1511.i16[3] = 0;
          v1504.i64[0] = 0x20002000200020;
          v1504.i64[1] = 0x20002000200020;
          v1512 = vceqq_s16(vandq_s8(v1510, xmmword_298495CC0), v1504);
          v1505.i64[0] = 0xFF00FF00FF00FFLL;
          v1505.i64[1] = 0xFF00FF00FF00FFLL;
          v1513 = vcgtq_u16(v1511, v1505);
          v1514 = vshlq_n_s16(v1509, 5uLL);
          v1515 = vaddq_s16(v1511, v1514);
          if ((vmaxvq_u16(vorrq_s8(v1512, v1513)) & 0x8000) != 0)
          {
            v1516.i64[0] = 0x2000200020002;
            v1516.i64[1] = 0x2000200020002;
            v1517 = vandq_s8(v1513, vceqq_s16(v1509, v1516));
            v1518 = vandq_s8(v1510, xmmword_298495CD0);
            v1519.i64[0] = 0x303030303030303;
            v1519.i64[1] = 0x303030303030303;
            v1520.i64[0] = 0x6060606060606060;
            v1520.i64[1] = 0x6060606060606060;
            v1521 = vmlaq_s8(v1520, v1514, v1519);
            v1522.i64[0] = 0xF000F000F000FLL;
            v1522.i64[1] = 0xF000F000F000FLL;
            v1515 = vaddq_s8(vsubq_s8(vaddq_s8(vandq_s8(v1521, v1513), v1515), vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C60, v1518), v1512), vandq_s8(vqtbl1q_s8(xmmword_298495C70, vandq_s8(vshrq_n_u16(v1511, 2uLL), v1522)), v1517))), vandq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C80, v1518), v1512), v1517));
          }

          v1523 = vdupq_n_s8((1 << v1407) - 1);
          v1524 = vandq_s8(v1501, v1523);
          v1525 = vandq_s8(v1500, v1523);
          v1526 = vqtbl1q_s8(v1515, xmmword_298495CE0);
          v1527 = vshlq_u8(vshlq_u8(vandq_s8(vqtbl1q_s8(v1515, xmmword_298495CF0), xmmword_298495D00), xmmword_298495D30), v1502);
          v1528 = vorrq_s8(vshlq_u8(vshlq_u8(vandq_s8(v1526, xmmword_298495D10), xmmword_298495D20), v1502), v1525);
          v1529 = vorrq_s8(v1527, v1524);
          v1530 = vaddq_s8(vshlq_u8(vmulq_s8(vdupq_n_s8(1 << v1407), vuzp2q_s8(v1529, v1528)), xmmword_298495D40), vuzp1q_s8(v1529, v1528));
          v1531 = *&v1530 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
          v1532 = vshlq_u16((*&v1530 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)), vnegq_s16(vdupq_n_s16(5 - 2 * v1407)));
          v1533 = vaddq_s16(vaddq_s16(v1532, v1531), vandq_s8(v1532, xmmword_298495D50));
          *&v1531 = 0xFFFF0000FFFFLL;
          *(&v1531 + 1) = 0xFFFF0000FFFFLL;
          v1534 = vandq_s8(v1533, v1531);
          v1525.i64[0] = 0xFFFF0000FFFF0000;
          v1525.i64[1] = 0xFFFF0000FFFF0000;
          v1535 = vshlq_u32(vandq_s8(v1533, v1525), vnegq_s32(vdupq_n_s32(10 - 4 * v1407)));
          v1536 = vaddq_s32(vaddq_s32(v1535, v1534), v1535.u64[0]);
          v1534.i64[0] = 0xFFFFFFFFLL;
          v1534.i64[1] = 0xFFFFFFFFLL;
          v1537 = vandq_s8(v1536, v1534);
          v1525.i64[0] = 0xFFFFFFFF00000000;
          v1525.i64[1] = 0xFFFFFFFF00000000;
          v1538 = vandq_s8(v1536, v1525);
          *v1525.i8 = vdup_n_s32(19 - 8 * v1407);
          v1539.i64[0] = v1525.u32[0];
          v1539.i64[1] = v1525.u32[1];
          v1540 = vaddq_s64(vshlq_u64(v1538, vnegq_s64(v1539)), v1537);
          v1432.i64[0] = (v1540.i64[1] << (16 * v1407 + 26)) | v1540.i64[0];
          v1432.i64[1] = v1540.i64[1] >> (38 - 16 * v1407);
          v1422 += 52;
        }

        else
        {
          v1432 = 0uLL;
        }
      }

      v1587 = vqtbl1q_s8((31 - __clz(v630)), vsubq_s8(xmmword_298451AC0, vdupq_n_s8((126 - v1422) >> 3)));
      v1571 = vorrq_s8(vorrq_s8(vshlq_u64(vqtbl1q_s8(v1587, xmmword_298451AD0), vdupq_n_s64((126 - v1422) | 0xFFFFFFFFFFFFFFF8)), vshlq_u64(v1587, vdupq_n_s64((126 - v1422) & 7))), vqtbl1q_s8(vrbitq_s8(v1432), xmmword_298495DE0));
    }

    else
    {
      if (v1408 == 1)
      {
        v1409 = vorrq_s8(vshlq_u16((*&v1343 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)), vnegq_s16(vdupq_n_s16(8 - v1407))), (*&v1343 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
        v1410.i64[0] = 0xFFFF0000FFFFLL;
        v1410.i64[1] = 0xFFFF0000FFFFLL;
        v1411.i64[0] = 0xFFFF0000FFFF0000;
        v1411.i64[1] = 0xFFFF0000FFFF0000;
        v1412 = vorrq_s8(vshlq_u32(vandq_s8(v1409, v1411), vnegq_s32(vdupq_n_s32(2 * (8 - v1407)))), vandq_s8(v1409, v1410));
        v1410.i64[0] = 0xFFFFFFFFLL;
        v1410.i64[1] = 0xFFFFFFFFLL;
        v1413 = vandq_s8(v1412, v1410);
        v1411.i64[0] = 0xFFFFFFFF00000000;
        v1411.i64[1] = 0xFFFFFFFF00000000;
        v1414 = vandq_s8(v1412, v1411);
        *v1411.i8 = vdup_n_s32(4 * (8 - v1407));
        v1415.i64[0] = v1411.u32[0];
        v1415.i64[1] = v1411.u32[1];
        v1416 = vorrq_s8(vshlq_u64(v1414, vnegq_s64(v1415)), v1413);
        v1417 = v1416.u64[1];
        v1418 = 8 * v1407;
        v1419 = (v1416.i64[1] << v1418) | v1416.i64[0];
        v1407 = -v1418;
        goto LABEL_277;
      }

      if (v1407)
      {
        v1433 = vmovl_u8(*v1343.i8);
        v1434 = vmovl_high_u8(v1343);
        v1435 = vdupq_n_s16(v1344);
        v1436 = vsubw_u8(v1435, *v1343.i8);
        v1437 = vsubw_high_u8(v1435, v1343);
        v1438 = vminq_u16(v1437, v1434);
        v1439 = vminq_u16(v1436, v1433);
        if (v1408 == 3)
        {
          v1440 = 21846;
        }

        else
        {
          v1440 = 13108;
        }

        v1441 = vdupq_n_s16(v1440);
        v1442 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v1439.i8, *v1441.i8), 0x10uLL), vmull_high_u16(v1439, v1441), 0x10uLL);
        v1443 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v1438.i8, *v1441.i8), 0x10uLL), vmull_high_u16(v1438, v1441), 0x10uLL);
        v1444 = vdupq_n_s16(v1408);
        v1445 = vmlsq_s16(v1439, v1442, v1444);
        v1446 = vmlsq_s16(v1438, v1443, v1444);
        v1447 = vdupq_n_s16(v1407);
        v1448 = vcgtq_u16(v1433, v1436);
        v1449.i64[0] = 0x1000100010001;
        v1449.i64[1] = 0x1000100010001;
        v1343 = vuzp1q_s8(vorrq_s8(vaddq_s16(vshlq_u16(v1445, v1447), vaddq_s16(v1442, v1442)), vandq_s8(v1448, v1449)), vorrq_s8(vaddq_s16(vshlq_u16(v1446, v1447), vaddq_s16(v1443, v1443)), vandq_s8(vcgtq_u16(v1434, v1437), v1449)));
      }

      if (v1408 == 3)
      {
        v1541 = vdupq_n_s8(v1407);
        v1542 = vshlq_u8(v1343, vnegq_s8(v1541));
        v1543 = vqtbl1q_s8(v1542, xmmword_298495C40);
        v1544 = vqtbl1q_s8(v1542, xmmword_298495C50);
        v1545 = vpaddq_s16(vmull_u8(*v1543.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v1543, v1543, 8uLL), 0x8010040180100401));
        v1545.i64[0] = vpaddq_s16(v1545, v1545).u64[0];
        v1546 = vmovl_s16(*v1545.i8);
        v1547 = vshlq_n_s32(v1544, 5uLL);
        v1543.i64[0] = 0x3000000030;
        v1543.i64[1] = 0x3000000030;
        v1548.i64[0] = 0x2000000020;
        v1548.i64[1] = 0x2000000020;
        v1549 = vceqq_s32(vandq_s8(v1546, v1543), v1548);
        v1550 = vaddw_s16(v1547, *v1545.i8);
        v1548.i64[0] = 0xFF000000FFLL;
        v1548.i64[1] = 0xFF000000FFLL;
        v1551 = vcgtq_s32(v1550, v1548);
        if ((vmaxvq_u32(vorrq_s8(v1549, v1551)) & 0x80000000) != 0)
        {
          v1552.i64[0] = 0x200000002;
          v1552.i64[1] = 0x200000002;
          v1553 = vceqq_s32(v1544, v1552);
          v1554 = vshrq_n_u32(v1546, 2uLL);
          v1555 = vandq_s8(v1551, v1553);
          v1556.i64[0] = 0xF0000000FLL;
          v1556.i64[1] = 0xF0000000FLL;
          v1557 = vandq_s8(v1546, v1556);
          v1558.i64[0] = 0x303030303030303;
          v1558.i64[1] = 0x303030303030303;
          v1559.i64[0] = 0x6060606060606060;
          v1559.i64[1] = 0x6060606060606060;
          v1550 = vaddq_s8(vsubq_s8(vaddq_s8(vandq_s8(vmlaq_s8(v1559, v1547, v1558), v1551), v1550), vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C60, v1557), v1549), vandq_s8(vqtbl1q_s8(xmmword_298495C70, vandq_s8(v1554, v1556)), v1555))), vandq_s8(vqtbl1q_s8(xmmword_298495C80, v1557), vandq_s8(v1549, v1555)));
        }

        v1560 = vorrq_s8(vshlq_u8(vshlq_u8(vandq_s8(vqtbl1q_s8(v1550, xmmword_298495DF0), xmmword_298495D00), xmmword_298495D30), v1541), vandq_s8(v1343, vdupq_n_s8((1 << v1407) - 1)));
        v1561 = vaddq_s16(vshlq_u16(vshlq_u16((*&v1560 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)), vnegq_s16(vdupq_n_s16(7 - v1407))), xmmword_298495E00), (*&v1560 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
        v1562.i64[0] = 0xFFFF0000FFFFLL;
        v1562.i64[1] = 0xFFFF0000FFFFLL;
        v1563 = vandq_s8(v1561, v1562);
        v1564.i64[0] = 0xFFFF0000FFFF0000;
        v1564.i64[1] = 0xFFFF0000FFFF0000;
        v1565 = vshlq_u32(vandq_s8(v1561, v1564), vnegq_s32(vdupq_n_s32(13 - 2 * v1407)));
        v1566 = vaddq_s32(vaddq_s32(v1565, v1563), v1565.u32[0]);
        v1563.i64[0] = 0xFFFFFFFFLL;
        v1563.i64[1] = 0xFFFFFFFFLL;
        v1567 = vandq_s8(v1566, v1563);
        v1564.i64[0] = 0xFFFFFFFF00000000;
        v1564.i64[1] = 0xFFFFFFFF00000000;
        v1568 = vandq_s8(v1566, v1564);
        *v1564.i8 = vdup_n_s32(25 - 4 * v1407);
        v1569.i64[0] = v1564.u32[0];
        v1569.i64[1] = v1564.u32[1];
        v1570 = vaddq_s64(vshlq_u64(v1568, vnegq_s64(v1569)), v1567);
        v1417 = v1570.u64[1];
        v1419 = (v1570.i64[1] << (8 * v1407 + 13)) | v1570.i64[0];
        v1476 = 51;
        goto LABEL_276;
      }

      v1450 = 0uLL;
      if (v1408 == 5)
      {
        v1451 = vdupq_n_s8(v1407);
        v1452 = vshlq_u8(v1343, vnegq_s8(v1451));
        v1453 = vqtbl1q_s8(v1452, xmmword_298495BC0);
        v1454 = vqtbl1q_s8(v1452, xmmword_298495BD0);
        v1455 = vpaddq_s16(vmull_u8(*v1453.i8, 0x2001200120012001), vmull_u8(*&vextq_s8(v1453, v1453, 8uLL), 0x2001200120012001));
        v1453.i64[0] = 0x7000700070007;
        v1453.i64[1] = 0x7000700070007;
        v1456 = vandq_s8(v1455, v1453);
        v1457 = vandq_s8(vshrq_n_u16(v1455, 5uLL), v1453);
        v1458.i64[0] = 0x4000400040004;
        v1458.i64[1] = 0x4000400040004;
        v1459 = vceqq_s16(v1454, v1458);
        v1460 = vceqq_s16(v1457, v1458);
        v1461 = vsubq_s8(vaddq_s16(v1455, vshlq_n_s16(v1454, 3uLL)), vandq_s8(vqtbl1q_s8(xmmword_298495BE0, v1456), v1460));
        if ((vmaxvq_u16(v1459) & 0x8000) != 0)
        {
          v1462.i64[0] = 0x18001800180018;
          v1462.i64[1] = 0x18001800180018;
          v1461 = vsubq_s8(v1461, vaddq_s8(vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495BF0, v1456), v1459), vandq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C00, v1456), v1459), v1460)), vandq_s8(vmulq_s16(v1457, v1462), vandq_s8(vceqq_s16(v1456, v1458), v1459))));
        }

        v1463 = vorrq_s8(vshlq_u8(vshlq_u8(vandq_s8(vqtbl1q_s8(v1461, xmmword_298495E10), xmmword_298495E20), xmmword_298495E30), v1451), vandq_s8(v1343, vdupq_n_s8((1 << v1407) - 1)));
        v1464 = vaddq_s16(vshlq_u16(vshlq_u16((*&v1463 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)), vnegq_s16(vdupq_n_s16(6 - v1407))), xmmword_298495E40), (*&v1463 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
        v1465.i64[0] = 0xFFFF0000FFFFLL;
        v1465.i64[1] = 0xFFFF0000FFFFLL;
        v1466 = vandq_s8(v1464, v1465);
        v1467.i64[0] = 0xFFFF0000FFFF0000;
        v1467.i64[1] = 0xFFFF0000FFFF0000;
        v1468 = vshlq_u32(vandq_s8(v1464, v1467), vnegq_s32(vdupq_n_s32(12 - 2 * v1407)));
        v1469 = vaddq_s32(v1468, v1466);
        v1468.i32[1] = 0;
        v1470 = vaddq_s32(v1469, v1468);
        v1469.i64[0] = 0xFFFFFFFFLL;
        v1469.i64[1] = 0xFFFFFFFFLL;
        v1471 = vandq_s8(v1470, v1469);
        v1467.i64[0] = 0xFFFFFFFF00000000;
        v1467.i64[1] = 0xFFFFFFFF00000000;
        LODWORD(v1472) = 0;
        HIDWORD(v1472) = v1470.i32[1];
        v1473 = vaddq_s64(vandq_s8(v1470, v1467), v1472);
        *v1467.i8 = vdup_n_s32(23 - 4 * v1407);
        v1474.i64[0] = v1467.u32[0];
        v1474.i64[1] = v1467.u32[1];
        v1475 = vaddq_s64(vshlq_u64(v1473, vnegq_s64(v1474)), v1471);
        v1417 = v1475.u64[1];
        v1419 = (v1475.i64[1] << (8 * v1407 + 19)) | v1475.i64[0];
        v1476 = 45;
LABEL_276:
        LOBYTE(v1407) = v1476 - 8 * v1407;
LABEL_277:
        v1450.i64[0] = v1419;
        v1450.i64[1] = v1417 >> v1407;
      }

      v1571 = vqtbl1q_s8(vrbitq_s8(v1450), xmmword_298495DE0);
    }

    v1588.i64[0] = v1346 | (v1392 << 17);
    v1588.i64[1] = v1392 >> 47;
    *a2 = vorrq_s8(v1571, v1588);
  }

  v1589 = *MEMORY[0x29EDCA608];
}

uint64_t FillBlockStorageRow(uint64_t result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v9 = a3;
  v10 = result;
  v65 = *MEMORY[0x29EDCA608];
  v11 = *(result + 200);
  v12 = *(result + 120);
  v62 = a5;
  if ((a4 & 0x8000000000000000) == 0 || a5 < 0)
  {
    v26 = a4;
    v27 = a3;
  }

  else
  {
    v56 = *(result + 120);
    v59 = a4;
    v13 = a2;
    if (*(result + 64))
    {
      v14 = 0;
      v15 = *(result + 80);
      v16 = v64;
      v17 = a6;
      do
      {
        v63[v14] = v15;
        v11(v16, v17);
        v15 = *(v10 + 80);
        v16 += v15;
        v17 += *(a7 + 8 * v14++);
      }

      while (v14 < *(v10 + 64));
    }

    v54 = v11;
    v57 = a7;
    v18 = 0;
    v19 = -v59;
    v20 = v9;
    v21 = v9;
    v22 = v13;
    do
    {
      v23 = &v22[v18];
      v24 = &v9[v18];
      v25 = *(v10 + 96);
      result = ReadBlock();
      v22 = v13;
      v24[9] = v20;
      v24[10] = v24;
      v24[11] = &v9[344 * (v19 == 1) + v18];
      v24[6] = v23[9];
      v24[7] = v23;
      v24[8] = v23[11];
      if (v9 != v13)
      {
        v23[12] = v20;
        v23[13] = v24[10];
        v23[14] = v24[11];
      }

      v20 = v21;
      v21 += 344;
      v24[12] = 0;
      v24[13] = 0;
      v24[14] = 0;
      v18 += 344;
      --v19;
    }

    while (v19);
    v26 = 0;
    a2 = &v13[v18];
    v9 = (v9 + v18 * 8);
    v27 = v9 - 344;
    a4 = v59;
    a5 = v62;
    v12 = v56;
    a7 = v57;
    v11 = v54;
  }

  if (v26 <= a5)
  {
    v28 = v12 - a4;
    if (v12 - a4 < 1)
    {
      v43 = v9;
      v9 = v27;
      goto LABEL_27;
    }

    v29 = *(v10 + 96);
    v30 = *(v10 + 60);
    v60 = a2;
    result = ReadBlock();
    v31 = v60;
    v32 = *(v10 + 80);
    v9[9] = v27;
    v9[10] = v9;
    v9[11] = &v9[344 * (v26 < v62)];
    v9[6] = v60[9];
    v9[7] = v60;
    v9[8] = v60[11];
    if (v60 != v9)
    {
      v60[12] = v27;
      v60[13] = v9[10];
      v60[14] = v9[11];
    }

    v9[12] = 0;
    v9[13] = 0;
    v9[14] = 0;
    if (v26 < v62)
    {
      v8 += v32;
      ++v26;
      v33 = v28 - 1;
      if (v28 != 1)
      {
        v58 = a7;
        v34 = 0;
        v55 = v11;
        v35 = v26;
        do
        {
          v36 = &v9[v34];
          v37 = &v31[v34];
          v38 = &v31[v34 + 344];
          v39 = *(v10 + 96);
          v40 = *(v10 + 60);
          result = ReadBlock();
          v31 = v60;
          v36[353] = v36;
          v36[354] = &v9[v34 + 344];
          v36[355] = &v9[v34 + 688];
          v36[350] = v37[353];
          v36[351] = v38;
          v36[352] = v37[355];
          if (v9 != v60)
          {
            v37[356] = v36;
            v37[357] = v36[354];
            v37[358] = v36[355];
          }

          v36[358] = 0;
          *(v36 + 178) = 0u;
          v8 += *(v10 + 80);
          v26 = v35 + 1;
          v34 += 344;
          v41 = v62;
          if (v35 >= v62)
          {
            break;
          }

          ++v35;
        }

        while (v33-- > 1);
        v9 = (v9 + v34 * 8);
        a2 = &v60[v34 + 344];
        v43 = v9 + 344;
        a7 = v58;
        v11 = v55;
        goto LABEL_28;
      }

      a2 = (v60 + 344);
      v43 = v9 + 344;
LABEL_27:
      v41 = v62;
LABEL_28:
      if (v26 <= v41)
      {
        v61 = a2;
        if (*(v10 + 64))
        {
          v44 = 0;
          v45 = *(v10 + 80);
          v46 = v64;
          do
          {
            v63[v44] = v45;
            v11(v46, v8);
            v45 = *(v10 + 80);
            v46 += v45;
            v8 += *(a7 + 8 * v44++);
          }

          while (v44 < *(v10 + 64));
        }

        v47 = 0;
        v48 = v61;
        v49 = v43;
        do
        {
          v50 = (v48 + v47 * 8);
          v51 = &v43[v47];
          v52 = *(v10 + 96);
          result = ReadBlock();
          v48 = v61;
          v51[9] = v9;
          v51[10] = v51;
          v51[11] = &v43[344 * (v26 < v62) + v47];
          v51[6] = v50[9];
          v51[7] = v50;
          v51[8] = v50[11];
          if (v43 != v61)
          {
            v50[12] = v9;
            v50[13] = v51[10];
            v50[14] = v51[11];
          }

          v9 = v49;
          v49 += 344;
          ++v26;
          v51[12] = 0;
          v51[13] = 0;
          v51[14] = 0;
          v47 += 344;
        }

        while (v62 + 1 != v26);
      }
    }
  }

  v53 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ReadBlock()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v0;
  STACK[0x1498] = *MEMORY[0x29EDCA608];
  v11 = *(v0 + 48);
  if (*(v0 + 60) + v1 > v11)
  {
    v12 = v1;
    v13 = *(v0 + 80);
    __pattern8 = v13;
    memset_pattern8(&STACK[0xB20], &__pattern8, 0x60uLL);
    if (*(v10 + 64))
    {
      v25 = v3;
      v14 = 0;
      v15 = *(v10 + 200);
      v16 = v11 + ~v12;
      v17 = v7 + *(v10 + 72) * v16;
      v18 = &STACK[0xB80];
      do
      {
        v15(v18, v17, *(v10 + 72) * *(v10 + 60));
        v18 = (v18 + v13);
        v17 += v5[v14++];
        v19 = *(v10 + 64);
      }

      while (v14 < v19);
      v3 = v25;
      if (v16 >= 1)
      {
        if (v19)
        {
          v20 = 0;
          v21 = &STACK[0xB80];
          do
          {
            memcpy(v21, v7, *(v10 + 72) * v16);
            v21 = (v21 + v13);
            v7 = (v7 + v5[v20++]);
          }

          while (v20 < *(v10 + 64));
        }
      }
    }

    v7 = &STACK[0xB80];
    v5 = &STACK[0xB20];
  }

  v22 = *(v10 + 184);
  (*(v10 + 176))(&__pattern8, v7, v5, v3);
  memcpy(v9, &__pattern8, 0xAC0uLL);
  *v9 = *v10;
  *(v9 + 4) = *(v10 + 16);
  *(v9 + 32) = *(v10 + 140);
  *(v9 + 135) = *(v10 + 144) != 2;
  result = v22(v9);
  v24 = __OFSUB__(*MEMORY[0x29EDCA608], STACK[0x1498]);
  return result;
}

uint64_t ReadBlock(uint64_t a1, _OWORD *a2, unint64_t *a3, unint64_t *a4, uint64_t a5, uint64_t a6)
{
  STACK[0x18B8] = *MEMORY[0x29EDCA608];
  v11 = *(a1 + 48);
  if (*(a1 + 60) + a6 > v11)
  {
    v13 = *(a1 + 80);
    __pattern8 = v13;
    memset_pattern8(&STACK[0x1780], &__pattern8, 0x20uLL);
    if (*(a1 + 64))
    {
      v26 = a5;
      v14 = 0;
      v15 = *(a1 + 208);
      v16 = v11 + ~a6;
      v17 = a3 + *(a1 + 72) * v16;
      v18 = &STACK[0x17A0];
      do
      {
        v15(v18, v17, *(a1 + 72) * *(a1 + 60));
        v18 = (v18 + v13);
        v17 += a4[v14++];
        v19 = *(a1 + 64);
      }

      while (v14 < v19);
      a5 = v26;
      if (v16 >= 1)
      {
        if (v19)
        {
          v20 = 0;
          v21 = &STACK[0x17A0];
          do
          {
            memcpy(v21, a3, *(a1 + 72) * v16);
            v21 = (v21 + v13);
            a3 = (a3 + a4[v20++]);
          }

          while (v20 < *(a1 + 64));
        }
      }
    }

    a3 = &STACK[0x17A0];
    a4 = &STACK[0x1780];
  }

  v22 = *(a1 + 192);
  (*(a1 + 184))(&__pattern8, a3, a4, a5);
  memcpy(a2, &__pattern8, 0xAC0uLL);
  *a2 = *a1;
  *(a2 + 4) = *(a1 + 16);
  *(a2 + 32) = *(a1 + 148);
  *(a2 + 135) = *(a1 + 152) != 2;
  result = v22(a2);
  v24 = STACK[0x18B8];
  v25 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t WeightInfoForSingleLineSingleWeight_4x4(int a1, uint64_t a2)
{
  v2 = (a2 - 2 + (((a2 - 2) & 0x8000u) >> 15)) >> 1;
  v3 = (&kSingleWeightsInfoTable + 8 * kSingleLineSingleWeightIndexTable[4 * a1 + v2]);
  return *v3 & 0xFFE00000FFFE1FFFLL | (*(v3 + v2 + 4) << 32) & 0xFFE0FFFFFFFFFFFFLL | (a2 << 40) & 0xFFE0FFFFFFFFFFFFLL | ((a1 & 0x1F) << 48) | ((v2 & 3) << 15);
}

void FindColorVectors(float32x4_t *a1@<X0>, float32x4_t *a2@<X1>, int a3@<W2>, int a4@<W3>, unint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a5;
  v12 = HIDWORD(*a5);
  v13 = BYTE4(*a5);
  v14 = ReciprocalTable[v13];
  if ((v12 & 0xFE) == 0)
  {
    LODWORD(v13) = 1;
  }

  v15.i64[0] = 0;
  v16 = vmaxnmq_f32(*a1, 0);
  __asm { FMOV            V3.4S, #1.0 }

  v21 = vminnmq_f32(v16, _Q3);
  v22 = vminnmq_f32(vmaxnmq_f32(a1[1], 0), _Q3);
  v264 = v21;
  v265 = v22;
  if (a2)
  {
    _Q3 = *a2;
  }

  v23 = v13;
  if (((v11 >> 13) & 0xF) > 4)
  {
    v26 = 0uLL;
    v260 = 0;
    HIDWORD(v28) = (v11 >> 13) & 0xF;
    LODWORD(v28) = HIDWORD(v28);
    v27 = v28 >> 1;
    if (v27 <= 2)
    {
      if (v27)
      {
        _ZF = v27 == 2;
      }

      else
      {
        _ZF = 1;
      }

      if (!_ZF)
      {
        goto LABEL_99;
      }

      if ((v11 & 0x1F000000000000) != 0)
      {
        v232 = _Q3;
        v238 = v23;
        v246 = v21;
        v253 = v22;
        if (a3 == 1)
        {
          v30 = WeightInfoForSingleLineSingleWeight(0, BYTE5(v11), a4);
        }

        else
        {
          v30 = WeightInfoForSingleLineDualWeight(0, BYTE5(v11), a4);
        }

        v62 = BYTE4(v30);
        v11 = *a5;
        v21 = v246;
        v22 = v253;
        if (BYTE4(v30) == BYTE4(*a5))
        {
          v23 = v238;
        }

        else
        {
          v63 = BYTE4(v11);
          v31.f32[0] = ReciprocalTable[BYTE4(v11)];
          v32.f32[0] = ReciprocalTable[BYTE4(v30)];
          v64 = vmlsq_lane_f32(v253, vrndxq_f32(vmulq_n_f32(v253, v63)), v31, 0);
          v65 = vmlsq_lane_f32(v246, vrndxq_f32(vmulq_n_f32(v246, v63)), v31, 0);
          v66 = vmlsq_lane_f32(v253, vrndxq_f32(vmulq_n_f32(v253, BYTE4(v30))), v32, 0);
          v67 = vmlsq_lane_f32(v246, vrndxq_f32(vmulq_n_f32(v246, BYTE4(v30))), v32, 0);
          v23 = v238;
          v68 = vmlaq_f32(vmulq_f32(v232, vmulq_f32(v64, v64)), vmulq_f32(v65, v65), v232);
          v65.i64[0] = vpaddq_f32(v68, v68).u64[0];
          v69 = vmlaq_f32(vmulq_f32(v232, vmulq_f32(v66, v66)), vmulq_f32(v67, v67), v232);
          v69.i64[0] = vpaddq_f32(v69, v69).u64[0];
          v70 = vpadd_f32(*v69.f32, *v69.f32);
          if ((vcgt_f32(v70, vpadd_f32(*v65.f32, *v65.f32)).u8[0] & 1) == 0 || v70.f32[0] <= 0.000015259)
          {
            v12 = HIDWORD(v30);
            *a5 = v30;
            if ((v30 & 0xFE00000000) == 0)
            {
              v62 = 1;
            }

            v23 = v62;
            v11 = v30;
          }
        }
      }

      v71 = vrndxq_f32(vmulq_n_f32(v21, v23));
      v72 = vrndxq_f32(vmulq_n_f32(v22, v23));
      v26 = vuzp1q_s16(vcvtq_s32_f32(v71), vcvtq_s32_f32(v72));
      *v26.f32 = vmovn_s16(v26);
      goto LABEL_98;
    }

    if (v27 == 3)
    {
      if ((v11 & 0x1F000000000000) != 0)
      {
        v227 = v14;
        v233 = _Q3;
        v239 = v23;
        v247 = v21;
        v254 = v22;
        if (a3 == 1)
        {
          v51 = WeightInfoForSingleLineSingleWeight(0, BYTE5(v11), a4);
        }

        else
        {
          v51 = WeightInfoForSingleLineDualWeight(0, BYTE5(v11), a4);
        }

        v73 = BYTE4(v51);
        v11 = *a5;
        v21 = v247;
        v22 = v254;
        if (BYTE4(v51) == BYTE4(*a5))
        {
          v23 = v239;
          v14 = v227;
        }

        else
        {
          v74 = BYTE4(v11);
          v75 = vrndxq_f32(vmulq_n_f32(v247, v74));
          v76 = vrndxq_f32(vmulq_n_f32(v254, v74));
          v52.f32[0] = ReciprocalTable[BYTE4(v11)];
          v78 = vmulq_n_f32(v247, BYTE4(v51));
          v77 = vrndxq_f32(v78);
          v78.f32[0] = ReciprocalTable[BYTE4(v51)];
          v79 = vmlsq_lane_f32(v254, v76, v52, 0);
          v80 = vmlsq_lane_f32(v247, v75, v52, 0);
          v81 = vmlsq_lane_f32(v254, vrndxq_f32(vmulq_n_f32(v254, BYTE4(v51))), *v78.f32, 0);
          v82 = vmlsq_lane_f32(v247, v77, *v78.f32, 0);
          v14 = v227;
          v83 = vmlaq_f32(vmulq_f32(v233, vmulq_f32(v79, v79)), vmulq_f32(v80, v80), v233);
          v80.i64[0] = vpaddq_f32(v83, v83).u64[0];
          *v83.f32 = vpadd_f32(*v80.f32, *v80.f32);
          v84 = vmlaq_f32(vmulq_f32(v233, vmulq_f32(v81, v81)), vmulq_f32(v82, v82), v233);
          v80.i64[0] = vpaddq_f32(v84, v84).u64[0];
          v85 = vpadd_f32(*v80.f32, *v80.f32);
          v84.i8[0] = vcgt_f32(v85, *v83.f32).u8[0];
          v23 = v239;
          if ((v84.i8[0] & 1) == 0 || v85.f32[0] <= 0.000015259)
          {
            *a5 = v51;
            if ((v51 & 0xFE00000000) == 0)
            {
              v73 = 1;
            }

            v23 = v73;
            v11 = v51;
            v14 = v78.f32[0];
          }
        }
      }

      v86 = vrndxq_f32(vmulq_n_f32(v22, v23));
      v87 = v86.f32[2] + vaddv_f32(*v86.f32);
      if (v87 != 0.0)
      {
        v88 = vrndxq_f32(vmulq_n_f32(v21, v23));
        v87 = (v88.f32[2] + vaddv_f32(*v88.f32)) / v87;
      }

      v26 = vcvtq_s32_f32(v86);
      *v26.f32 = vmovn_s32(v26);
      *v26.f32 = vand_s8(vuzp1_s8(*v26.f32, *v26.f32), 0xFFFFFFLL);
      v26.i8[3] = rintf(v23 * fminf(fmaxf(v87, 0.0), 0.99609));
      v22 = vmulq_n_f32(v22, v14);
      v21 = vmulq_n_f32(v21, v14);
      goto LABEL_99;
    }

    if (v27 != 4)
    {
      if (v27 != 6)
      {
        goto LABEL_99;
      }

      goto LABEL_41;
    }

    v16.i64[0] = 0x400000008;
    v26 = vandq_s8(vcgtq_f32(v21, v22), xmmword_298495670);
    v26.i32[0] = vaddvq_s32(v26);
    if (v26.i8[0])
    {
      if (v26.u8[0] != 7)
      {
        goto LABEL_41;
      }

      v53 = v21;
      v264 = v22;
      v265 = v21;
      v21 = v22;
      v22 = v53;
    }

    v54 = vmulq_f32(v21, v22);
    v54.i64[0] = vpaddq_f32(v54, v54).u64[0];
    v16 = vmulq_f32(v22, v22);
    v16.i64[0] = vpaddq_f32(v16, v16).u64[0];
    *v16.f32 = vpadd_f32(*v16.f32, *v16.f32);
    v55 = fminf(vrecpes_f32(v16.f32[0]), 1.8447e19) * vpadd_f32(*v54.f32, *v54.f32).f32[0];
    v15 = vmulq_n_f32(v22, v55);
    v56 = vsubq_f32(v15, v21);
    v26 = vmulq_f32(v56, v56);
    v26.i64[0] = vpaddq_f32(v26, v26).u64[0];
    *v26.f32 = vpadd_f32(*v26.f32, *v26.f32);
    v16.f32[0] = v14 * (v14 * 0.25);
    if (v26.f32[0] >= v16.f32[0])
    {
LABEL_41:
      if ((~v11 & 0x18000) == 0)
      {
        v16.i64[0] = 0x400000008;
        v26 = vandq_s8(vcgtq_f32(v21, v22), xmmword_298495670);
        v26.i32[0] = vaddvq_s32(v26);
        if ((v26.i8[0] & 7) == 0)
        {
          v60 = v22;
          v61 = v21;
LABEL_66:
          v89 = vmulq_f32(v61, v60);
          v89.i64[0] = vpaddq_f32(v89, v89).u64[0];
          v16 = vmulq_f32(v22, v22);
          v16.i64[0] = vpaddq_f32(v16, v16).u64[0];
          *v16.f32 = vpadd_f32(*v16.f32, *v16.f32);
          v15.f32[0] = fminf(vrecpes_f32(v16.f32[0]), 1.8447e19) * vpadd_f32(*v89.f32, *v89.f32).f32[0];
          v90 = vmulq_n_f32(v22, v15.f32[0]);
          v90.i32[3] = v21.i32[3];
          v91 = vsubq_f32(v90, v61);
          v26 = vmulq_f32(v91, v91);
          v26.i64[0] = vpaddq_f32(v26, v26).u64[0];
          *v26.f32 = vpadd_f32(*v26.f32, *v26.f32);
          v16.f32[0] = v14 * (v14 * 0.25);
          if (v26.f32[0] < v16.f32[0])
          {
            v235 = _Q3;
            v241 = v15.f32[0];
            v224 = v61;
            v229 = v60;
            v249 = v21;
            v256 = v22;
            v92 = HIWORD(v11) & 0x1F;
            if (a3 == 2)
            {
              v93 = WeightInfoForSingleLineDualWeight(v92, 6, a4);
              *a5 = v93;
              if ((v93 & 0x1F000000000000) != 0)
              {
                v94 = v93 >> 40;
                goto LABEL_112;
              }
            }

            else
            {
              v93 = WeightInfoForSingleLineSingleWeight(v92, 6, a4);
              *a5 = v93;
              if ((v93 & 0x1F000000000000) != 0)
              {
                v94 = v93 >> 40;
                if (a3 == 1)
                {
                  v152 = WeightInfoForSingleLineSingleWeight(0, BYTE5(v93), a4);
LABEL_113:
                  v155 = v152;
                  v156 = BYTE4(v152);
                  v93 = *a5;
                  v158 = v249;
                  v157 = v256;
                  v159 = v241;
                  if (v156 != BYTE4(*a5))
                  {
                    v160 = BYTE4(v93);
                    v153.f32[0] = ReciprocalTable[BYTE4(v93)];
                    v154.f32[0] = ReciprocalTable[v156];
                    v161 = vmlsq_lane_f32(v256, vrndxq_f32(vmulq_n_f32(v256, v160)), v153, 0);
                    v162 = vmlsq_lane_f32(v249, vrndxq_f32(vmulq_n_f32(v249, v160)), v153, 0);
                    v163 = vmlsq_lane_f32(v256, vrndxq_f32(vmulq_n_f32(v256, v156)), v154, 0);
                    v164 = vmlsq_lane_f32(v249, vrndxq_f32(vmulq_n_f32(v249, v156)), v154, 0);
                    v165 = vmlaq_f32(vmulq_f32(v235, vmulq_f32(v161, v161)), vmulq_f32(v162, v162), v235);
                    v162.i64[0] = vpaddq_f32(v165, v165).u64[0];
                    v166 = vmlaq_f32(vmulq_f32(v235, vmulq_f32(v163, v163)), vmulq_f32(v164, v164), v235);
                    v166.i64[0] = vpaddq_f32(v166, v166).u64[0];
                    *v166.f32 = vpadd_f32(*v166.f32, *v166.f32);
                    if ((vcgt_f32(*v166.f32, vpadd_f32(*v162.f32, *v162.f32)).u32[0] & (v166.f32[0] > 0.000015259)) == 0)
                    {
                      v93 = v155;
                    }
                  }

                  goto LABEL_137;
                }

LABEL_112:
                v152 = WeightInfoForSingleLineDualWeight(0, v94, a4);
                goto LABEL_113;
              }
            }

            v158 = v249;
            v157 = v256;
            v159 = v241;
LABEL_137:
            if ((v93 & 0xFE00000000) != 0)
            {
              v199 = BYTE4(v93);
            }

            else
            {
              v199 = 1;
            }

            v263 = BYTE4(v93);
            v200 = ReciprocalTable[BYTE4(v93)];
            v201 = vdupq_laneq_s32(v157, 3);
            v157.i32[3] = fminf(fmaxf(v159, 0.0), 0.99609);
            v202 = vrndxq_f32(vmulq_n_f32(v157, v199));
            v203 = vrndxq_f32(vmulq_n_f32(vextq_s8(v158, v201, 0xCuLL), v199));
            v26 = vuzp1q_s16(vcvtq_s32_f32(v202), vcvtq_s32_f32(v203));
            *v26.f32 = vmovn_s16(v26);
            v204 = vmulq_n_f32(v203, v200);
            v205 = vmulq_n_f32(v202, v200);
            v22 = v205;
            v22.i32[3] = v204.i32[1];
            v206 = v205;
            v206.i32[3] = v204.i32[0];
            v207 = v205;
            v207.i32[0] = 1.0;
            v21 = vmulq_f32(v206, vextq_s8(vdupq_laneq_s32(v207, 3), v207, 4uLL));
            v11 = v93 & 0xFFFFFFFFFFFE1FFFLL | 0x14000;
            *a5 = v11;
            if (a3 != 1)
            {
              goto LABEL_99;
            }

            if (v205.f32[0] != v205.f32[1] || v205.f32[0] != v205.f32[2])
            {
              goto LABEL_99;
            }

            v251 = v21;
            v258 = v22;
            v244 = v204;
            if (a2)
            {
              v209 = *a2;
              v209.i32[3] = 0;
            }

            else
            {
              v209 = xmmword_2984959B0;
            }

            v210 = v229;
            v211 = vmulq_f32(v224, v209);
            v225 = vadd_f32(*v211.i8, *&vextq_s8(v211, v211, 8uLL));
            v230 = vdup_lane_s32(v225, 1);
            v212 = vmulq_f32(v210, v209);
            v222 = vadd_f32(*v212.i8, *&vextq_s8(v212, v212, 8uLL));
            v223 = vdup_lane_s32(v222, 1);
            *a5 = WeightInfoForSingleLineSingleWeight(HIWORD(v93) & 0x1F, 4, a4);
            v259[0] = v251;
            v259[1] = v258;
            CheckForReducedColorFidelity(a5, a4, 1, v259, &v263, &v262, &v261, v235);
            if ((*a5 & 0xFE00000000) != 0)
            {
              v213 = BYTE4(*a5);
            }

            else
            {
              v213 = 1;
            }

            v214 = ReciprocalTable[BYTE4(*a5)];
            *v215.f32 = v225;
            *&v215.u32[2] = v222;
            *v216.f32 = v230;
            *&v216.u32[2] = v223;
            v217 = vaddq_f32(v215, v216);
            v218 = vextq_s8(v251, v244, 8uLL);
            v219 = vrndxq_f32(vmulq_n_f32(vtrn2q_s32(vtrn1q_s32(v218, v217), v218), v213));
            v220 = vzip1q_s32(v219, v219);
            v220.i32[2] = v219.i32[0];
            v221 = vzip2q_s32(vtrn1q_s32(v219, v219), v219);
            v26 = vuzp1q_s16(vcvtq_s32_f32(v220), vcvtq_s32_f32(v221));
            *v26.f32 = vmovn_s16(v26);
            v22 = vmulq_n_f32(v221, v214);
            v21 = vmulq_n_f32(v220, v214);
            v11 = *a5 & 0xFFFFFFFFFFFE1FFFLL | 0x8000;
            goto LABEL_122;
          }

          goto LABEL_70;
        }

        if ((v26.i8[0] & 7) == 7)
        {
          v60 = v21;
          v264 = v22;
          v265 = v21;
          v61 = v22;
          v21 = v22;
          v22 = v60;
          goto LABEL_66;
        }
      }

LABEL_70:
      if ((v11 & 0x1F000000000000) != 0)
      {
        v236 = _Q3;
        v242 = v23;
        v250 = v21;
        v257 = v22;
        if (a3 == 1)
        {
          v95 = WeightInfoForSingleLineSingleWeight(0, BYTE5(v11), a4);
        }

        else
        {
          v95 = WeightInfoForSingleLineDualWeight(0, BYTE5(v11), a4);
        }

        v97 = BYTE4(v95);
        v11 = *a5;
        v21 = v250;
        v22 = v257;
        if (BYTE4(v95) == BYTE4(*a5))
        {
          v23 = v242;
        }

        else
        {
          v98 = BYTE4(v11);
          v15.f32[0] = ReciprocalTable[BYTE4(v11)];
          v96.f32[0] = ReciprocalTable[BYTE4(v95)];
          v99 = vmlsq_lane_f32(v257, vrndxq_f32(vmulq_n_f32(v257, v98)), *v15.f32, 0);
          v16 = vmlsq_lane_f32(v250, vrndxq_f32(vmulq_n_f32(v250, v98)), *v15.f32, 0);
          v100 = vmlsq_lane_f32(v257, vrndxq_f32(vmulq_n_f32(v257, BYTE4(v95))), v96, 0);
          v101 = vmlsq_lane_f32(v250, vrndxq_f32(vmulq_n_f32(v250, BYTE4(v95))), v96, 0);
          v23 = v242;
          _Q3 = vmlaq_f32(vmulq_f32(v236, vmulq_f32(v99, v99)), vmulq_f32(v16, v16), v236);
          v16.i64[0] = vpaddq_f32(_Q3, _Q3).u64[0];
          v15 = vmulq_f32(v101, v101);
          v26 = vmlaq_f32(vmulq_f32(v236, vmulq_f32(v100, v100)), v15, v236);
          v26.i64[0] = vpaddq_f32(v26, v26).u64[0];
          *v26.f32 = vpadd_f32(*v26.f32, *v26.f32);
          *v16.f32 = vcgt_f32(*v26.f32, vpadd_f32(*v16.f32, *v16.f32));
          if ((v16.i8[0] & 1) == 0 || (v16.i32[0] = 931135616, v26.f32[0] <= 0.000015259))
          {
            v12 = HIDWORD(v95);
            *a5 = v95;
            if ((v95 & 0xFE00000000) == 0)
            {
              v97 = 1;
            }

            v23 = v97;
            v11 = v95;
          }
        }
      }

      if (v12 != 0xFF)
      {
        v243 = v23;
        v259[0].i32[0] = (v11 >> 13) & 0xF;
        if (EncodeBitTransferSigned(&v264, v12, v259, &v260, *v26.i64, *v16.i64, *v15.i64, _Q3))
        {
          v11 = v11 & 0xFFFFFFFFFFFE1FFFLL | ((v259[0].i8[0] & 0xF) << 13);
          *a5 = v11;
          *v26.f32 = v260;
          v21 = v264;
          v22 = v265;
LABEL_99:
          v50 = vqtbl1_s8(v26, ShuffleColorEndpointPair_mapTable[(v11 >> 13) & 0xF]);
          *a6 = v21;
          *(a6 + 16) = vsubq_f32(v22, v21);
          goto LABEL_100;
        }

        v21 = v264;
        v22 = v265;
        v26.f32[0] = v12;
        v102 = vdupq_lane_s32(*v26.f32, 0);
        v103 = vrndxq_f32(vmulq_f32(vmulq_n_f32(v264, v26.f32[0]), xmmword_298496500));
        v104 = vrndxq_f32(vmulq_f32(vmulq_n_f32(v265, v26.f32[0]), xmmword_298496500));
        v105 = vsubq_f32(v103, vdupq_laneq_s32(v103, 2).u64[0]);
        v106 = vsubq_f32(v104, vdupq_laneq_s32(v104, 2).u64[0]);
        v107 = vmovn_s16(vandq_s8(vuzp1q_s16(vcgezq_f32(v105), vcgezq_f32(v106)), vuzp1q_s16(vcgeq_f32(v102, v105), vcgeq_f32(v102, v106))));
        if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(vand_s8(vzip1_s8(v107, v107), vzip2_s8(v107, v107))), 0x1FuLL))) & 0x80000000) != 0)
        {
          v26 = vuzp1q_s16(vcvtq_s32_f32(v105), vcvtq_s32_f32(v106));
          v170 = vsubq_f32(v105, v106);
          v171 = v170.f32[2] + vaddv_f32(*v170.f32);
          if (fabsf(v171) > 1.0)
          {
            goto LABEL_133;
          }

          v172 = v12 + 1;
          v173 = __clz(__rbit32(v172));
          v174 = v172 >> v173;
          v175 = (v172 >> v173);
          v176 = *&v26 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
          if (v173 && v175 != 1)
          {
            v177 = vminq_u16(v176, vsubq_s16(vdupq_n_s16(v12), v176));
            if (v175 == 3)
            {
              v178 = 21846;
            }

            else
            {
              v178 = 13108;
            }

            v179 = vdupq_n_s16(v178);
            v180 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v177.i8, *v179.i8), 0x10uLL), vmull_high_u16(v177, v179), 0x10uLL);
            v179.i64[0] = 0x1000100010001;
            v179.i64[1] = 0x1000100010001;
            v176 = vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v177, v180, vdupq_n_s16(v174)), vdupq_n_s16(v173)), vaddq_s16(v180, v180)), vbicq_s8(v179, vceqq_s16(v177, v176)));
          }

          v181 = v174 - 6;
          _ZF = v175 == 1;
          v182 = -8;
          if (!_ZF)
          {
            v182 = v181;
          }

          v183 = GetUnquantizationData_UnquantizationInfo[3 * v173 + v182];
          v184 = vshlq_u16(v176, vnegq_s16(vdupq_n_s16(WORD1(v183) & 7)));
          v185 = vandq_s8(vdupq_n_s16(BYTE1(v183)), v176);
          v186 = vshlq_u16(vmulq_s16(vshrq_n_u16(v185, 1uLL), vdupq_n_s16((v183 >> 28) & 0x1FF)), vnegq_s16(vdupq_n_s16((v183 >> 37) & 7)));
          v187 = vandq_s8(vdupq_n_s16((v183 >> 19) & 0x1FF), vcltzq_s16(vshlq_n_s16(v185, 0xFuLL)));
          v188 = veorq_s8(vmlaq_s16(v186, v184, vmovl_u8(vdup_n_s8(v183 >> 40))), v187);
          v186.i64[0] = 0x80008000800080;
          v186.i64[1] = 0x80008000800080;
          v189 = vorrq_s8(vshrq_n_u16(v188, 2uLL), vandq_s8(v187, v186));
          v190 = vmovl_high_u16(v189);
          v191 = vdupq_n_s32(0x4B400000u);
          v192 = vorrq_s8(vmovl_u16(*v189.i8), v191);
          v193 = vorrq_s8(v190, v191);
          v194 = vdupq_n_s32(0xCB400000);
          v195 = vsubq_f32(vaddq_f32(v192, v194), vaddq_f32(v193, v194));
          v171 = v195.f32[2] + vaddv_f32(*v195.f32);
          if (v171 != 0.0)
          {
LABEL_133:
            v196 = vmovn_s16(v26);
            if (v171 > 0.0)
            {
              v196 = vext_s8(v196, v196, 4uLL);
              v197 = v103;
              v103 = v104;
              v104 = v197;
            }

            *v26.f32 = vext_s8(v196, v196, 4uLL);
            v198 = ReciprocalTable[v12];
            v22 = vmulq_f32(vmulq_n_f32(v104, v198), xmmword_298496510);
            v21 = vmulq_f32(vmulq_n_f32(v103, v198), xmmword_298496510);
            goto LABEL_99;
          }
        }

        v23 = v243;
      }

      v71 = vrndxq_f32(vmulq_n_f32(v21, v23));
      v72 = vrndxq_f32(vmulq_n_f32(v22, v23));
      v26 = vuzp1q_s16(vcvtq_s32_f32(v71), vcvtq_s32_f32(v72));
      v108 = vsubq_f32(v71, v72);
      v109 = v108.f32[2] + vaddv_f32(*v108.f32);
      if (fabsf(v109) <= 1.0)
      {
        v110 = v12 + 1;
        v111 = __clz(__rbit32(v110));
        v112 = v110 >> v111;
        v113 = (v110 >> v111);
        v114 = *&v26 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
        if (v111 && v113 != 1)
        {
          v115 = vsubq_s16(vdupq_n_s16(v12), v114);
          if (v113 == 3)
          {
            v116 = 21846;
          }

          else
          {
            v116 = 13108;
          }

          v117 = vdupq_n_s16(v116);
          v118 = vminq_u16(v114, v115);
          v119 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v118.i8, *v117.i8), 0x10uLL), vmull_high_u16(v118, v117), 0x10uLL);
          v117.i64[0] = 0x1000100010001;
          v117.i64[1] = 0x1000100010001;
          v114 = vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v118, v119, vmovl_u8(vdup_n_s8(v112))), vdupq_n_s16(v111)), vaddq_s16(v119, v119)), vbicq_s8(v117, vceqq_s16(v118, v114)));
        }

        v120 = v113 - 6;
        _ZF = v113 == 1;
        v121 = -8;
        if (!_ZF)
        {
          v121 = v120;
        }

        v122 = GetUnquantizationData_UnquantizationInfo[3 * v111 + v121];
        v123 = vshlq_u16(v114, vnegq_s16(vdupq_n_s16(WORD1(v122) & 7)));
        v124 = vandq_s8(vdupq_n_s16(BYTE1(v122)), v114);
        v125 = vshlq_u16(vmulq_s16(vshrq_n_u16(v124, 1uLL), vdupq_n_s16((v122 >> 28) & 0x1FF)), vnegq_s16(vdupq_n_s16((v122 >> 37) & 7)));
        v126 = vandq_s8(vdupq_n_s16((v122 >> 19) & 0x1FF), vcltzq_s16(vshlq_n_s16(v124, 0xFuLL)));
        v127 = veorq_s8(vmlaq_s16(v125, v123, vmovl_u8(vdup_n_s8(v122 >> 40))), v126);
        v125.i64[0] = 0x80008000800080;
        v125.i64[1] = 0x80008000800080;
        v128 = vorrq_s8(vshrq_n_u16(v127, 2uLL), vandq_s8(v126, v125));
        v129 = vmovl_high_u16(v128);
        v130 = vdupq_n_s32(0x4B400000u);
        v131 = vorrq_s8(vmovl_u16(*v128.i8), v130);
        v132 = vorrq_s8(v129, v130);
        v133 = vdupq_n_s32(0xCB400000);
        v134 = vsubq_f32(vaddq_f32(v131, v133), vaddq_f32(v132, v133));
        v109 = v134.f32[2] + vaddv_f32(*v134.f32);
      }

      *v26.f32 = vmovn_s16(v26);
      if (v109 > 0.0)
      {
        *v26.f32 = vext_s8(*v26.f32, *v26.f32, 4uLL);
        v135 = v71;
        v71 = v72;
        v72 = v135;
      }

LABEL_98:
      v136 = ReciprocalTable[v12];
      v22 = vmulq_n_f32(v72, v136);
      v21 = vmulq_n_f32(v71, v136);
      goto LABEL_99;
    }

    v228 = v55;
    v234 = _Q3;
    v240 = v15;
    v248 = v21;
    v255 = v22;
    v57 = HIWORD(v11) & 0x1F;
    if (a3 == 2)
    {
      v58 = WeightInfoForSingleLineDualWeight(v57, 4, a4);
      *a5 = v58;
      if ((v58 & 0x1F000000000000) != 0)
      {
        v59 = v58 >> 40;
        goto LABEL_104;
      }
    }

    else
    {
      v58 = WeightInfoForSingleLineSingleWeight(v57, 4, a4);
      *a5 = v58;
      if ((v58 & 0x1F000000000000) != 0)
      {
        v59 = v58 >> 40;
        if (a3 == 1)
        {
          v137 = WeightInfoForSingleLineSingleWeight(0, BYTE5(v58), a4);
LABEL_105:
          v140 = v137;
          v141 = BYTE4(v137);
          v58 = *a5;
          v142 = v255;
          v143 = v240;
          v144 = v228;
          if (v141 != BYTE4(*a5))
          {
            v145 = BYTE4(v58);
            v138.f32[0] = ReciprocalTable[BYTE4(v58)];
            v139.f32[0] = ReciprocalTable[v141];
            v146 = vmlsq_lane_f32(v255, vrndxq_f32(vmulq_n_f32(v255, v145)), v138, 0);
            v147 = vmlsq_lane_f32(v248, vrndxq_f32(vmulq_n_f32(v248, v145)), v138, 0);
            v148 = vmlsq_lane_f32(v255, vrndxq_f32(vmulq_n_f32(v255, v141)), v139, 0);
            v149 = vmlsq_lane_f32(v248, vrndxq_f32(vmulq_n_f32(v248, v141)), v139, 0);
            v150 = vmlaq_f32(vmulq_f32(v234, vmulq_f32(v146, v146)), vmulq_f32(v147, v147), v234);
            v147.i64[0] = vpaddq_f32(v150, v150).u64[0];
            v151 = vmlaq_f32(vmulq_f32(v234, vmulq_f32(v148, v148)), vmulq_f32(v149, v149), v234);
            v151.i64[0] = vpaddq_f32(v151, v151).u64[0];
            *v151.f32 = vpadd_f32(*v151.f32, *v151.f32);
            if ((vcgt_f32(*v151.f32, vpadd_f32(*v147.f32, *v147.f32)).u32[0] & (v151.f32[0] > 0.000015259)) == 0)
            {
              v58 = v140;
            }
          }

          goto LABEL_118;
        }

LABEL_104:
        v137 = WeightInfoForSingleLineDualWeight(0, v59, a4);
        goto LABEL_105;
      }
    }

    v142 = v255;
    v143 = v240;
    v144 = v228;
LABEL_118:
    if ((v58 & 0xFE00000000) != 0)
    {
      v167 = BYTE4(v58);
    }

    else
    {
      v167 = 1;
    }

    v168 = ReciprocalTable[BYTE4(v58)];
    v142.i32[3] = fminf(fmaxf(v144, 0.0), 0.99609);
    v169 = vrndxq_f32(vmulq_n_f32(v142, v167));
    v26 = vcvtq_s32_f32(v169);
    *v26.f32 = vmovn_s32(v26);
    *v26.f32 = vand_s8(vuzp1_s8(*v26.f32, *v26.f32), 0xFFFFFFFFLL);
    v22 = vmulq_n_f32(v169, v168);
    v22.i32[3] = 1.0;
    v21 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(v143, v167)), v168);
    v21.i32[3] = 1.0;
    v11 = v58 & 0xFFFFFFFFFFFE1FFFLL | 0xC000;
LABEL_122:
    *a5 = v11;
    goto LABEL_99;
  }

  if ((v11 & 0x1F000000000000) != 0)
  {
    v226 = v14;
    v231 = _Q3;
    v237 = v13;
    v245 = v21;
    v252 = v22;
    if (a3 == 1)
    {
      v24 = WeightInfoForSingleLineSingleWeight(0, BYTE5(v11), a4);
    }

    else
    {
      v24 = WeightInfoForSingleLineDualWeight(0, BYTE5(v11), a4);
    }

    v33 = BYTE4(v24);
    v11 = *a5;
    v21 = v245;
    v22 = v252;
    if (BYTE4(v24) == BYTE4(*a5))
    {
      v23 = v237;
      v14 = v226;
    }

    else
    {
      v34 = BYTE4(v11);
      v35 = vrndxq_f32(vmulq_n_f32(v245, v34));
      v36 = vrndxq_f32(vmulq_n_f32(v252, v34));
      v25.f32[0] = ReciprocalTable[BYTE4(v11)];
      v38 = vmulq_n_f32(v245, BYTE4(v24));
      v37 = vrndxq_f32(v38);
      v38.f32[0] = ReciprocalTable[BYTE4(v24)];
      v39 = vmlsq_lane_f32(v252, v36, v25, 0);
      v40 = vmlsq_lane_f32(v245, v35, v25, 0);
      v41 = vmlsq_lane_f32(v252, vrndxq_f32(vmulq_n_f32(v252, BYTE4(v24))), *v38.f32, 0);
      v42 = vmlsq_lane_f32(v245, v37, *v38.f32, 0);
      v14 = v226;
      v43 = vmlaq_f32(vmulq_f32(v231, vmulq_f32(v39, v39)), vmulq_f32(v40, v40), v231);
      v40.i64[0] = vpaddq_f32(v43, v43).u64[0];
      *v43.f32 = vpadd_f32(*v40.f32, *v40.f32);
      v44 = vmlaq_f32(vmulq_f32(v231, vmulq_f32(v41, v41)), vmulq_f32(v42, v42), v231);
      v40.i64[0] = vpaddq_f32(v44, v44).u64[0];
      v45 = vpadd_f32(*v40.f32, *v40.f32);
      v44.i8[0] = vcgt_f32(v45, *v43.f32).u8[0];
      v23 = v237;
      if ((v44.i8[0] & 1) == 0 || v45.f32[0] <= 0.000015259)
      {
        *a5 = v24;
        if ((v24 & 0xFE00000000) == 0)
        {
          v33 = 1;
        }

        v23 = v33;
        v11 = v24;
        v14 = v38.f32[0];
      }
    }
  }

  v46 = vrndxq_f32(vmulq_n_f32(v22, v23));
  v47 = vrndxq_f32(vmulq_n_f32(v21, v23));
  v48 = vmulq_n_f32(v47, v14);
  *a6 = v48;
  *(a6 + 16) = vmlaq_n_f32(vnegq_f32(v48), v46, v14);
  v49 = vuzp1q_s16(vcvtq_s32_f32(v47), vcvtq_s32_f32(v46));
  *v49.i8 = vmovn_s16(v49);
  v50 = vqtbl1_s8(v49, ShuffleColorEndpointPair_mapTable[(v11 >> 13) & 0xF]);
LABEL_100:
  *(a6 + 32) = v50;
}

float32x4_t Read_4x4_RGBA8_vec@<Q0>(int8x16_t *a1@<X0>, void *a2@<X1>, float32x4_t *a3@<X8>)
{
  bzero(a3, 0xAC0uLL);
  v6 = *a1;
  v7 = (a1 + *a2);
  v8.i64[0] = 0xFF000000FFLL;
  v8.i64[1] = 0xFF000000FFLL;
  v9 = *v7;
  v10 = vandq_s8(*v7, v8);
  v11 = (v7 + a2[1]);
  v12 = *(v11 + a2[2]);
  v13 = *v11;
  v14 = *&vandq_s8(*v11, v8) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000);
  v15 = *&vandq_s8(v12, v8) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000);
  v16 = *&vandq_s8(*a1, v8) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000);
  v8.i64[0] = 0xCB000000CB000000;
  v8.i64[1] = 0xCB000000CB000000;
  v17 = vaddq_f32(v16, v8);
  a3[8].i16[2] = 324;
  v18 = vdupq_n_s32(0x3B808081u);
  a3[8].i8[6] = -1;
  a3[8].i8[8] = -1;
  a3[9] = vmulq_f32(v17, v18);
  a3[10] = vmulq_f32(vaddq_f32((*&v10 | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v18);
  v10.i64[0] = 0xFF000000FF00;
  v10.i64[1] = 0xFF000000FF00;
  a3[11] = vmulq_f32(vaddq_f32(v14, v8), v18);
  a3[12] = vmulq_f32(vaddq_f32(v15, v8), v18);
  v19 = vdupq_n_s32(0x37808081u);
  a3[13] = vmulq_f32(vaddq_f32((*&vandq_s8(v6, v10) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v19);
  a3[14] = vmulq_f32(vaddq_f32((*&vandq_s8(v9, v10) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v19);
  a3[15] = vmulq_f32(vaddq_f32((*&vandq_s8(v13, v10) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v19);
  a3[16] = vmulq_f32(vaddq_f32((*&vandq_s8(v12, v10) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v19);
  v20 = vshrq_n_u32(v13, 0x10uLL);
  v21 = vshrq_n_u32(v12, 0x10uLL);
  v22 = vshrq_n_u32(v9, 0x10uLL);
  v23 = vshrq_n_u32(v6, 0x10uLL);
  v20.i32[0] = v20.i32[0] & 0xB4FF00FF | 0x4B000000;
  v20.i32[1] = v20.i32[1] & 0xB4FF00FF | 0x4B000000;
  v20.i32[2] = v20.i32[2] & 0xB4FF00FF | 0x4B000000;
  v20.i32[3] = v20.i32[3] & 0xB4FF00FF | 0x4B000000;
  v21.i32[0] = v21.i32[0] & 0xB4FF00FF | 0x4B000000;
  v21.i32[1] = v21.i32[1] & 0xB4FF00FF | 0x4B000000;
  v21.i32[2] = v21.i32[2] & 0xB4FF00FF | 0x4B000000;
  v21.i32[3] = v21.i32[3] & 0xB4FF00FF | 0x4B000000;
  v22.i32[0] = v22.i32[0] & 0xB4FF00FF | 0x4B000000;
  v22.i32[1] = v22.i32[1] & 0xB4FF00FF | 0x4B000000;
  v22.i32[2] = v22.i32[2] & 0xB4FF00FF | 0x4B000000;
  v22.i32[3] = v22.i32[3] & 0xB4FF00FF | 0x4B000000;
  v23.i32[0] = v23.i32[0] & 0xB4FF00FF | 0x4B000000;
  v23.i32[1] = v23.i32[1] & 0xB4FF00FF | 0x4B000000;
  v23.i32[2] = v23.i32[2] & 0xB4FF00FF | 0x4B000000;
  v23.i32[3] = v23.i32[3] & 0xB4FF00FF | 0x4B000000;
  a3[17] = vmulq_f32(vaddq_f32(v23, v8), v18);
  a3[18] = vmulq_f32(vaddq_f32(v22, v8), v18);
  a3[19] = vmulq_f32(vaddq_f32(v20, v8), v18);
  a3[20] = vmulq_f32(vaddq_f32(v21, v8), v18);
  a3[21] = vmulq_f32(vaddq_f32((*&vshrq_n_u32(v6, 0x18uLL) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v18);
  a3[22] = vmulq_f32(vaddq_f32((*&vshrq_n_u32(v9, 0x18uLL) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v18);
  result = vmulq_f32(vaddq_f32((*&vshrq_n_u32(v12, 0x18uLL) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v18);
  a3[23] = vmulq_f32(vaddq_f32((*&vshrq_n_u32(v13, 0x18uLL) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v18);
  a3[24] = result;
  return result;
}

void EncodeASTC_4x4_RGBA_vec(float32x4_t *a1, float *a2, int8x16_t *a3)
{
  v47 = *MEMORY[0x29EDCA608];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  EncodeBasicBlock_4x4(a1, a3, a2, &v36);
  v6 = *a2;
  if (*a2 >= a2[1])
  {
    memset(v35, 0, sizeof(v35));
    v7 = vmaxnmq_f32(vmaxnmq_f32(v40, v42), vmaxnmq_f32(v41, v43));
    v8 = vminnmq_f32(vminnmq_f32(v40, v42), vminnmq_f32(v41, v43));
    v9 = vmaxnmq_f32(v7, vextq_s8(vrev64q_s32(v7), v7, 8uLL));
    v10 = vminnmq_f32(v8, vextq_s8(vrev64q_s32(v8), v8, 8uLL));
    __asm { FMOV            V6.4S, #3.0 }

    v9.i64[0] = vmlaq_f32(vmaxnmq_f32(v9, vrev64q_s32(v9)), _Q6, vminnmq_f32(v10, vrev64q_s32(v10))).u64[0];
    v9.f32[0] = 0.25 * v9.f32[0];
    v16 = vdupq_lane_s32(*v9.f32, 0);
    v17 = vorrq_s8(vandq_s8(vuzp1q_s16(vcgtq_f32(v16, v40), vcgtq_f32(v16, v41)), xmmword_298495650), vandq_s8(vuzp1q_s16(vcgtq_f32(v16, v42), vcgtq_f32(v16, v43)), xmmword_298495640));
    v17.i16[0] = vaddvq_s16(v17);
    v18 = v17.i16[0];
    GetDualPartitionPatterns(v17.u32[0], v45);
    for (i = 0; i != 3; ++i)
    {
      EncodeStandardDualPartitionBlock(a1, v35, &v45[i], v6);
      if (v6 >= v20)
      {
        v6 = v20;
      }
    }

    if (v6 > a2[1])
    {
      if (a1[8].i8[8])
      {
        goto LABEL_8;
      }

      __asm { FMOV            V4.4S, #1.0 }

      v26 = vaddvq_s16(vorrq_s8(vandq_s8(vuzp1q_s16(vcgtq_f32(_Q4, a1[21]), vcgtq_f32(_Q4, a1[22])), xmmword_298495650), vandq_s8(vuzp1q_s16(vcgtq_f32(_Q4, a1[23]), vcgtq_f32(_Q4, a1[24])), xmmword_298495640)));
      if (v26 == 0xFFFF)
      {
LABEL_8:
        v21 = vmaxnmq_f32(vmaxnmq_f32(v36, v38), vmaxnmq_f32(v37, v39));
        v22 = vminnmq_f32(vminnmq_f32(v36, v38), vminnmq_f32(v37, v39));
        v23 = vmaxnmq_f32(v21, vextq_s8(vrev64q_s32(v21), v21, 8uLL));
        v24 = vminnmq_f32(v22, vextq_s8(vrev64q_s32(v22), v22, 8uLL));
        v23.i64[0] = vaddq_f32(vmaxnmq_f32(v23, vrev64q_s32(v23)), vminnmq_f32(v24, vrev64q_s32(v24))).u64[0];
        v23.f32[0] = 0.5 * v23.f32[0];
        v25 = vdupq_lane_s32(*v23.f32, 0);
        v26 = vaddvq_s16(vorrq_s8(vandq_s8(vuzp1q_s16(vcgtq_f32(v25, v36), vcgtq_f32(v25, v37)), xmmword_298495650), vandq_s8(vuzp1q_s16(vcgtq_f32(v25, v38), vcgtq_f32(v25, v39)), xmmword_298495640)));
      }

      if (v26 != v18 && (v26 - 1) <= 0xFFFDu)
      {
        GetDualPartitionPatterns(v26, v46);
        for (j = 3; j != 6; ++j)
        {
          v29 = 0;
          v30 = 0;
          v31 = &v45[j];
          do
          {
            v30 |= *v31 == LOWORD(v45[v29++]);
          }

          while (v29 != 3);
          if (!v30)
          {
            EncodeStandardDualPartitionBlock(a1, v35, v31, v6);
            if (v6 >= v32)
            {
              v6 = v32;
            }
          }
        }
      }
    }

    if (v6 < *a2)
    {
      *a2 = v6;
      *v33.i64 = PackDualBlock_4x4(v35);
      *a3 = v33;
    }
  }

  v34 = *MEMORY[0x29EDCA608];
}

uint64_t GetDualPartitionPatterns(uint64_t result, _DWORD *a2)
{
  v2 = kDualPatternList[result];
  *a2 = kDualPartitionPatterns[v2 & 0x1FF];
  a2[1] = kDualPartitionPatterns[(v2 >> 10) & 0x1FF];
  a2[2] = kDualPartitionPatterns[(v2 >> 20) & 0x1FF];
  return result;
}

uint64_t ClampPremultiplied_4x4_vec(uint64_t result)
{
  v2 = *(result + 368);
  v1 = *(result + 384);
  v4 = *(result + 336);
  v3 = *(result + 352);
  v5 = vminnmq_f32(*(result + 144), v4);
  v6 = vminnmq_f32(*(result + 160), v3);
  v7 = vminnmq_f32(*(result + 176), v2);
  v8 = vminnmq_f32(*(result + 192), v1);
  *(result + 176) = v7;
  *(result + 192) = v8;
  *(result + 144) = v5;
  *(result + 160) = v6;
  v9 = vminnmq_f32(*(result + 208), v4);
  v10 = vminnmq_f32(*(result + 224), v3);
  v11 = vminnmq_f32(*(result + 240), v2);
  v12 = vminnmq_f32(*(result + 256), v1);
  *(result + 240) = v11;
  *(result + 256) = v12;
  *(result + 208) = v9;
  *(result + 224) = v10;
  v13 = vminnmq_f32(*(result + 272), v4);
  v14 = vminnmq_f32(*(result + 288), v3);
  v15 = vminnmq_f32(*(result + 304), v2);
  v16 = vminnmq_f32(*(result + 320), v1);
  *(result + 304) = v15;
  *(result + 320) = v16;
  v17 = *(result + 124);
  *(result + 272) = v13;
  *(result + 288) = v14;
  if (v17 < 0.0)
  {
    v18 = *(result + 32);
    if (v18)
    {
      v19 = *v18;
    }

    else
    {
      v19 = xmmword_2984959B0;
    }

    v20 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v12, *v19.f32, 1), v8, v19.f32[0]), v16, v19, 2);
    v21 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v11, *v19.f32, 1), v7, v19.f32[0]), v15, v19, 2);
    v22 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v10, *v19.f32, 1), v6, v19.f32[0]), v14, v19, 2);
    v23 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v9, *v19.f32, 1), v5, v19.f32[0]), v13, v19, 2);
    *(result + 656) = v23;
    *(result + 672) = v22;
    *(result + 688) = v21;
    *(result + 704) = v20;
    v24 = vsubq_f32(v6, v22);
    v25 = vsubq_f32(v8, v20);
    v26 = vsubq_f32(v5, v23);
    v27 = vsubq_f32(v7, v21);
    v28 = vsubq_f32(v11, v21);
    v29 = vsubq_f32(v9, v23);
    v30 = vsubq_f32(v12, v20);
    v31 = vsubq_f32(v10, v22);
    v32 = vsubq_f32(v15, v21);
    v33 = vsubq_f32(v13, v23);
    v34 = vsubq_f32(v16, v20);
    v35 = vsubq_f32(v14, v22);
    v36 = vaddq_f32(vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v29, v29), v26, v26), v33, v33), vmlaq_f32(vmlaq_f32(vmulq_f32(v28, v28), v27, v27), v32, v32)), vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v31, v31), v24, v24), v35, v35), vmlaq_f32(vmlaq_f32(vmulq_f32(v30, v30), v25, v25), v34, v34)));
    v36.i64[0] = vpaddq_f32(v36, v36).u64[0];
    v36.f32[0] = vrecpes_f32(vpadd_f32(*v36.f32, *v36.f32).f32[0]);
    *(result + 124) = (v36.f32[0] * 3.0) + (v36.f32[0] * 3.0);
  }

  if (*(result + 134) < 0)
  {
    v37 = vdupq_n_s32(0x3B808081u);
    v38 = vcgeq_f32(v37, v2);
    v39 = vcgeq_f32(v37, v1);
    v40 = vcgeq_f32(v37, v3);
    v41 = vcgeq_f32(v37, v4);
    *(result + 720) = v41;
    *(result + 736) = v40;
    *(result + 752) = v38;
    *(result + 768) = v39;
    v42 = vorrq_s8(vandq_s8(vuzp1q_s16(v41, v40), xmmword_298495650), vandq_s8(vuzp1q_s16(v38, v39), xmmword_298495640));
    v42.i16[0] = vaddvq_s16(v42);
    *(result + 784) = v42.i16[0];
    *(result + 134) = vaddlv_u8(vcnt_s8(*v42.i8));
  }

  v43 = vzip1q_s32(v6, v14);
  v44 = vzip1q_s32(v5, v13);
  v45 = vzip2q_s32(v6, v14);
  v46 = vzip2q_s32(v5, v13);
  v47 = vzip2q_s32(v9, v4);
  v48 = vzip1q_s32(v46, v47);
  v49 = vzip2q_s32(v46, v47);
  v50 = vzip2q_s32(v44, vuzp2q_s32(v44, v9));
  v50.i32[3] = v4.i32[1];
  v51 = vzip1q_s32(v44, v9);
  v51.i32[3] = v4.i32[0];
  *(result + 432) = v48;
  *(result + 448) = v49;
  v52 = vzip2q_s32(v43, vuzp2q_s32(v43, v10));
  v52.i32[3] = v3.i32[1];
  *(result + 400) = v51;
  *(result + 416) = v50;
  v53 = vzip1q_s32(v43, v10);
  v53.i32[3] = v3.i32[0];
  v54 = vextq_s8(vzip2q_s32(v10, v45), v45, 4uLL);
  v54.i32[3] = v3.i32[3];
  v55 = vzip2q_s32(vextq_s8(v45, v45, 8uLL), v10);
  v55.i32[3] = v3.i32[2];
  *(result + 496) = v55;
  *(result + 512) = v54;
  *(result + 464) = v53;
  *(result + 480) = v52;
  v56 = vzip1q_s32(v8, v16);
  v57 = vzip1q_s32(v7, v15);
  v58 = vzip2q_s32(v8, v16);
  v59 = vzip2q_s32(v7, v15);
  v60 = vzip2q_s32(v11, v2);
  v61 = vzip1q_s32(v59, v60);
  v62 = vzip2q_s32(v57, vuzp2q_s32(v57, v11));
  v62.i32[3] = v2.i32[1];
  v63 = vzip1q_s32(v57, v11);
  v63.i32[3] = v2.i32[0];
  v64 = vzip2q_s32(v56, vuzp2q_s32(v56, v12));
  v64.i32[3] = v1.i32[1];
  v65 = vzip1q_s32(v56, v12);
  v65.i32[3] = v1.i32[0];
  v66 = vzip2q_s32(v59, v60);
  v67 = vextq_s8(vzip2q_s32(v12, v58), v58, 4uLL);
  v67.i32[3] = v1.i32[3];
  *(result + 560) = v61;
  *(result + 576) = v66;
  v68 = vzip2q_s32(vextq_s8(v58, v58, 8uLL), v12);
  v68.i32[3] = v1.i32[2];
  *(result + 528) = v63;
  *(result + 544) = v62;
  *(result + 624) = v68;
  *(result + 640) = v67;
  *(result + 592) = v65;
  *(result + 608) = v64;
  v69 = vmulq_f32(v1, v1);
  v70 = vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(v5, v7), vaddq_f32(v6, v8)), vaddq_f32(vaddq_f32(v9, v11), vaddq_f32(v10, v12))), vpaddq_f32(vaddq_f32(vaddq_f32(v13, v15), vaddq_f32(v14, v16)), vaddq_f32(vaddq_f32(v4, v2), vaddq_f32(v3, v1))));
  v71 = vpaddq_f32(vpaddq_f32(vaddq_f32(vmlaq_f32(vmulq_f32(v7, v7), v5, v5), vmlaq_f32(vmulq_f32(v8, v8), v6, v6)), vaddq_f32(vmlaq_f32(vmulq_f32(v11, v11), v9, v9), vmlaq_f32(vmulq_f32(v12, v12), v10, v10))), vpaddq_f32(vaddq_f32(vmlaq_f32(vmulq_f32(v15, v15), v13, v13), vmlaq_f32(vmulq_f32(v16, v16), v14, v14)), vaddq_f32(vmlaq_f32(vmulq_f32(v2, v2), v4, v4), vmlaq_f32(v69, v3, v3))));
  v72 = vmulq_f32(v70, vdupq_n_s32(0x3D800000u));
  v73 = vmlsq_f32(v71, v72, v70);
  *(result + 16) = v72;
  v73.i64[0] = vpaddq_f32(v73, v73).u64[0];
  *(result + 120) = vpadd_f32(*v73.f32, *v73.f32).u32[0];
  if (*(result + 136) <= 0)
  {
    *(result + 136) = v72.f32[3] >= 0.99988;
  }

  return result;
}

unint64_t WeightInfoForSingleLineSingleWeight(int a1, uint64_t a2, int a3)
{
  v3 = 0;
  if (a3 > 374)
  {
    if (a3 != 375)
    {
      if (a3 != 392)
      {
        return v3;
      }

      v6 = (a2 << 40) | (WeightInfoForSingleLineSingleWeight_8x8_kSingleLineSingleWeight_8x8[((a2 - 2 + (((a2 - 2) & 0x8000u) >> 15)) >> 1) + 4] << 32) | ((a1 & 0x1F) << 48);
      v7 = ((((a2 - 2 + (((a2 - 2) & 0x8000u) >> 15)) >> 1) & 3u) << 15) | 0x2FA0000008000544;
      return v6 | v7;
    }

    v8 = (a2 - 2 + (((a2 - 2) & 0x8000u) >> 15)) >> 1;
    v11 = a1 == 49 && a2 > 2;
    v6 = *(&WeightInfoForSingleLineSingleWeight_7x7_kSingleLineSingleWeight_7x7 + v11) & 0xFFE00000FFFE1FFFLL | (*(&WeightInfoForSingleLineSingleWeight_7x7_kSingleLineSingleWeight_7x7 + 8 * v11 + v8 + 4) << 32) | (a2 << 40) | ((a1 & 0x1F) << 48);
LABEL_16:
    v7 = (v8 & 3) << 15;
    return v6 | v7;
  }

  if (a3 == 324)
  {
    v8 = (a2 - 2 + (((a2 - 2) & 0x8000u) >> 15)) >> 1;
    v9 = (&kSingleWeightsInfoTable + 8 * kSingleLineSingleWeightIndexTable[4 * a1 + v8]);
    v6 = *v9 & 0xFFE00000FFFE1FFFLL | (*(v9 + v8 + 4) << 32) & 0xFFE0FFFFFFFFFFFFLL | (a2 << 40) & 0xFFE0FFFFFFFFFFFFLL | ((a1 & 0x1F) << 48);
    goto LABEL_16;
  }

  if (a3 == 342)
  {
    v4 = (a2 - 2 + (((a2 - 2) & 0x8000u) >> 15)) >> 1;
    v5 = (&WeightInfoForSingleLineSingleWeight_6x5_kSingleLineSingleWeight_6x5 + 8 * WeightInfoForSingleLineSingleWeight_6x5_IndexTable_6x5[4 * a1 + v4]);
    return *v5 & 0xFFE00000FFFE1FFFLL | (*(v5 + v4 + 4) << 32) & 0xFFE0FFFFFFFFFFFFLL | (a2 << 40) & 0xFFE0FFFFFFFFFFFFLL | ((a1 & 0x1F) << 48) | ((v4 & 3) << 15);
  }

  return v3;
}

uint64_t EncodeBitTransferSigned(float32x4_t *a1, unsigned int a2, _DWORD *a3, int8x8_t *a4, double a5, double a6, double a7, float32x4_t a8)
{
  v8 = a1[1];
  v9 = vsubq_f32(v8, *a1);
  v9.f32[0] = v9.f32[2] + vaddv_f32(*v9.f32);
  a8.i64[0] = 0;
  v10 = vdupq_lane_s32(*&vcgtq_f32(a8, v9), 0);
  v11 = vbslq_s8(v10, *a1, v8);
  v12 = vbslq_s8(v10, v8, *a1);
  if (v9.f32[0] >= 0.0)
  {
    v13 = 1;
  }

  else
  {
    v13 = 0xFFFFFFFFLL;
  }

  v14 = ReciprocalTable[a2];
  v15 = (v14 * 63.75) + -0.5;
  *&v15 = v15;
  v16 = vdupq_lane_s32(*&v15, 0);
  *&v15 = (v14 * 63.75);
  v17.i64[0] = 0x3F0000003F000000;
  v17.i64[1] = 0x3F0000003F000000;
  v18 = vdupq_lane_s32(*&v15, 0);
  v19 = vmulq_f32(vaddq_f32(vbicq_s8(v18, vcgtq_f32(v17, v12)), vandq_s8(v16, vcgtq_f32(v12, v11))), vdupq_n_s32(0x3B808081u));
  v20 = (2 * a2);
  v21 = vrndxq_f32(vmulq_n_f32(vsubq_f32(v11, v19), v20));
  v22 = vrndxq_f32(vmulq_n_f32(v12, v20));
  *v23.i8 = vmovn_s32(vcvtq_s32_f32(v22));
  v24 = vsub_s16(vmovn_s32(vcvtq_s32_f32(v21)), *v23.i8);
  v25 = vdup_n_s16(a2 >> 2);
  v26 = vdup_n_s16(~(a2 >> 2));
  if ((vmaxv_u16(vorr_s8(vcgt_s16(v24, v25), vcgt_s16(v26, v24))) & 0x8000) != 0)
  {
    return 0;
  }

  v23.u64[1] = v24;
  v27 = v24.i16[0] + v24.i16[1] + v24.i16[2];
  if (v27 >= 0)
  {
    v28 = v24.i16[0] + v24.i16[1] + v24.i16[2];
  }

  else
  {
    v28 = -v27;
  }

  if (v28 <= 2)
  {
    v29 = __clz(__rbit32(a2 + 1));
    v30 = ((a2 + 1) >> v29);
    v31 = vqtbl1q_s8(v23, xmmword_298496520);
    v32 = vdupq_n_s32(a2 & 0xFF80FFFF | ((((a2 + 1) >> 2) & 0x7F) << 16));
    v33 = vcgtq_u16(v31, v32);
    v34.i64[0] = 0x200000002;
    v34.i64[1] = 0x200000002;
    v35 = *&vaddq_s16(vaddq_s16(vandq_s8(vmulq_s16(v32, v34), v33), v31), vandq_s8(vdupq_n_s16((a2 + 1) >> 1), vshlq_n_s32(v33, 0x10uLL))) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    if (v29 && v30 != 1)
    {
      v36 = vsubq_s16(vdupq_n_s16(a2), v35);
      if (v30 == 3)
      {
        v37 = 21846;
      }

      else
      {
        v37 = 13108;
      }

      v38 = vdupq_n_s16(v37);
      v39 = vminq_u16(v35, v36);
      v40 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v39.i8, *v38.i8), 0x10uLL), vmull_high_u16(v39, v38), 0x10uLL);
      v38.i64[0] = 0x1000100010001;
      v38.i64[1] = 0x1000100010001;
      v35 = vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v39, v40, vmovl_u8(vdup_n_s8((a2 + 1) >> v29))), vdupq_n_s16(v29)), vaddq_s16(v40, v40)), vbicq_s8(v38, vceqq_s16(v39, v35)));
    }

    v41 = v30 - 6;
    _ZF = v30 == 1;
    v43 = -8;
    if (!_ZF)
    {
      v43 = v41;
    }

    v44 = GetUnquantizationData_UnquantizationInfo[3 * v29 + v43];
    v45 = vshlq_u16(v35, vnegq_s16(vdupq_n_s16(WORD1(v44) & 7)));
    v46 = vandq_s8(vdupq_n_s16(BYTE1(v44)), v35);
    v47 = vshlq_u16(vmulq_s16(vshrq_n_u16(v46, 1uLL), vdupq_n_s16((v44 >> 28) & 0x1FF)), vnegq_s16(vdupq_n_s16((v44 >> 37) & 7)));
    v48 = vandq_s8(vdupq_n_s16((v44 >> 19) & 0x1FF), vcltzq_s16(vshlq_n_s16(v46, 0xFuLL)));
    v49 = veorq_s8(vmlaq_s16(v47, v45, vmovl_u8(vdup_n_s8(v44 >> 40))), v48);
    v47.i64[0] = 0x80008000800080;
    v47.i64[1] = 0x80008000800080;
    v50 = vshrq_n_u16(v49, 2uLL);
    *v48.i8 = vand_s8(vshr_n_u8(vmovn_s16(vorrq_s8(v50, vandq_s8(v48, v47))), 1uLL), 0x3F3F3F3F3F3F3F3FLL);
    v47.i64[0] = 0x40004000400040;
    v47.i64[1] = 0x40004000400040;
    v51 = vsubq_s16(vmovl_u8(*v48.i8), vandq_s8(v50, v47));
    v27 = (v51.i16[1] + v51.i16[3] + v51.i16[5]);
  }

  if (v27 < 0)
  {
    v65.i64[0] = 0x3F0000003F000000;
    v65.i64[1] = 0x3F0000003F000000;
    v19 = vmulq_f32(vaddq_f32(vandq_s8(v16, vcgtq_f32(v11, v12)), vbicq_s8(v18, vcgtq_f32(v65, v11))), vdupq_n_s32(0x3B808081u));
    v21 = vrndxq_f32(vmulq_n_f32(vsubq_f32(v12, v19), v20));
    v22 = vrndxq_f32(vmulq_n_f32(v11, v20));
    *v23.i8 = vmovn_s32(vcvtq_s32_f32(v22));
    v66 = vsub_s16(vmovn_s32(vcvtq_s32_f32(v21)), *v23.i8);
    if ((vmaxv_u16(vorr_s8(vcgt_s16(v66, v25), vcgt_s16(v26, v66))) & 0x8000) != 0)
    {
      return 0;
    }

    v23.u64[1] = v66;
    v67 = v66.i16[0] + v66.i16[1] + v66.i16[2];
    if (v67 >= 0)
    {
      v68 = v66.i16[0] + v66.i16[1] + v66.i16[2];
    }

    else
    {
      v68 = -v67;
    }

    if (v68 <= 2)
    {
      v69 = __clz(__rbit32(a2 + 1));
      v70 = ((a2 + 1) >> v69);
      v71 = vqtbl1q_s8(v23, xmmword_298496520);
      v72 = vdupq_n_s32(a2 & 0xFF80FFFF | ((((a2 + 1) >> 2) & 0x7F) << 16));
      v73 = vcgtq_u16(v71, v72);
      v74.i64[0] = 0x200000002;
      v74.i64[1] = 0x200000002;
      v75 = *&vaddq_s16(vaddq_s16(vandq_s8(vmulq_s16(v72, v74), v73), v71), vandq_s8(vdupq_n_s16((a2 + 1) >> 1), vshlq_n_s32(v73, 0x10uLL))) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
      if (v69 && v70 != 1)
      {
        v76 = vsubq_s16(vdupq_n_s16(a2), v75);
        if (v70 == 3)
        {
          v77 = 21846;
        }

        else
        {
          v77 = 13108;
        }

        v78 = vdupq_n_s16(v77);
        v79 = vminq_u16(v75, v76);
        v80 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v79.i8, *v78.i8), 0x10uLL), vmull_high_u16(v79, v78), 0x10uLL);
        v78.i64[0] = 0x1000100010001;
        v78.i64[1] = 0x1000100010001;
        v75 = vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v79, v80, vmovl_u8(vdup_n_s8((a2 + 1) >> v69))), vdupq_n_s16(v69)), vaddq_s16(v80, v80)), vbicq_s8(v78, vceqq_s16(v79, v75)));
      }

      v81 = v70 - 6;
      _ZF = v70 == 1;
      v82 = -8;
      if (!_ZF)
      {
        v82 = v81;
      }

      v83 = GetUnquantizationData_UnquantizationInfo[3 * v69 + v82];
      v84 = vshlq_u16(v75, vnegq_s16(vdupq_n_s16(WORD1(v83) & 7)));
      v85 = vandq_s8(vdupq_n_s16(BYTE1(v83)), v75);
      v86 = vshlq_u16(vmulq_s16(vshrq_n_u16(v85, 1uLL), vdupq_n_s16((v83 >> 28) & 0x1FF)), vnegq_s16(vdupq_n_s16((v83 >> 37) & 7)));
      v87 = vandq_s8(vdupq_n_s16((v83 >> 19) & 0x1FF), vcltzq_s16(vshlq_n_s16(v85, 0xFuLL)));
      v88 = veorq_s8(vmlaq_s16(v86, v84, vmovl_u8(vdup_n_s8(v83 >> 40))), v87);
      v86.i64[0] = 0x80008000800080;
      v86.i64[1] = 0x80008000800080;
      v89 = vshrq_n_u16(v88, 2uLL);
      *v87.i8 = vand_s8(vshr_n_u8(vmovn_s16(vorrq_s8(v89, vandq_s8(v87, v86))), 1uLL), 0x3F3F3F3F3F3F3F3FLL);
      v86.i64[0] = 0x40004000400040;
      v86.i64[1] = 0x40004000400040;
      v90 = vsubq_s16(vmovl_u8(*v87.i8), vandq_s8(v89, v86));
      v67 = (v90.i16[1] + v90.i16[3] + v90.i16[5]);
    }

    if (v67 < 0)
    {
      return 0;
    }
  }

  v52 = vqtbl1q_s8(v23, xmmword_298496520);
  v53 = vdupq_n_s32(a2 & 0xFF80FFFF | ((((a2 + 1) >> 2) & 0x7F) << 16));
  v54 = vcgtq_u16(v52, v53);
  v55.i64[0] = 0x200000002;
  v55.i64[1] = 0x200000002;
  v56 = vaddq_s16(vaddq_s16(vandq_s8(vmulq_s16(v53, v55), v54), v52), vandq_s8(vdupq_n_s16((a2 + 1) >> 1), vshlq_n_s32(v54, 0x10uLL)));
  *a4 = vqtbl1_s8(vuzp1q_s8(v56, v56), 0x705030106040200);
  v57 = v14 * 0.5;
  v58 = vmlaq_n_f32(v19, v21, v57);
  v59 = vmaxnmq_f32(vmulq_n_f32(v22, v57), 0);
  v60 = vmaxnmq_f32(v58, 0);
  __asm { FMOV            V1.4S, #1.0 }

  *a1 = vminnmq_f32(v59, _Q1);
  a1[1] = vminnmq_f32(v60, _Q1);
  ++*a3;
  return v13;
}

unint64_t WeightInfoForSingleLineDualWeight_4x4(int a1, uint64_t a2)
{
  v2 = (a2 - 2 + (((a2 - 2) & 0x8000u) >> 15)) >> 1;
  v3 = (&kSingleLineDualWeightTable + 8 * kSingleLineDualWeightIndexTable[4 * a1 + v2]);
  return *v3 & 0xFFE00000FFFE1FFFLL | (*(v3 + v2 + 4) << 32) & 0xFFE0FFFFFFFFFFFFLL | (a2 << 40) & 0xFFE0FFFFFFFFFFFFLL | ((a1 & 0x1F) << 48) | ((v2 & 3) << 15);
}

uint64_t EncodeStandardDualPartitionBlock(uint64_t a1, uint64_t a2, unsigned __int16 *a3, float a4)
{
  v1419 = *MEMORY[0x29EDCA608];
  v7 = a3[1];
  v8 = *(VectorMaskForBitMask + ((v7 >> 8) & 0xF0));
  v9 = *(VectorMaskForBitMask + ((v7 >> 4) & 0xF0));
  v10 = *(VectorMaskForBitMask + (v7 & 0xF0));
  v11 = VectorMaskForBitMask[v7 & 0xF];
  if (*(a1 + 135))
  {
    v1359 = vmvnq_s8(v10);
    v1364 = vmvnq_s8(v8);
    v1347 = vmvnq_s8(v11);
    v1353 = vmvnq_s8(v9);
    v12 = *(a1 + 720);
    v13 = *(a1 + 736);
    v14 = vorrq_s8(v13, v9);
    v15 = vorrq_s8(v12, v8);
    v17 = *(a1 + 752);
    v16 = *(a1 + 768);
    v18 = vorrq_s8(v17, v10);
    v19 = vorrq_s8(v16, v11);
    v20 = vornq_s8(v13, v9);
    v21 = vornq_s8(v12, v8);
    v22 = vornq_s8(v17, v10);
    v23 = vornq_s8(v16, v11);
  }

  else
  {
    v21 = vmvnq_s8(v8);
    v20 = vmvnq_s8(v9);
    v22 = vmvnq_s8(v10);
    v15 = *(VectorMaskForBitMask + ((v7 >> 8) & 0xF0));
    v14 = *(VectorMaskForBitMask + ((v7 >> 4) & 0xF0));
    v18 = *(VectorMaskForBitMask + (v7 & 0xF0));
    v19 = VectorMaskForBitMask[v7 & 0xF];
    v23 = vmvnq_s8(v11);
    v1359 = v22;
    v1364 = v21;
    v1347 = v23;
    v1353 = v20;
  }

  v1313 = v15;
  v1339 = v14;
  v25 = *(a1 + 240);
  v24 = *(a1 + 256);
  v27 = *(a1 + 208);
  v26 = *(a1 + 224);
  v28 = *(a1 + 320);
  v30 = *(a1 + 272);
  v29 = *(a1 + 288);
  v31 = *(a1 + 384);
  v1369 = *(a1 + 368);
  v32 = *(a1 + 336);
  v33 = *(a1 + 352);
  v1385 = VectorMaskForBitMask[v7 & 0xF];
  v1390 = *(VectorMaskForBitMask + (v7 & 0xF0));
  v1398 = *(VectorMaskForBitMask + ((v7 >> 8) & 0xF0));
  v34 = vcltzq_s32(v8);
  v35 = vcltzq_s32(v11);
  v1394 = *(VectorMaskForBitMask + ((v7 >> 4) & 0xF0));
  v36 = vcgezq_s32(v18);
  v37 = vcgezq_s32(v15);
  v38 = v19;
  v39 = vcgezq_s32(v19);
  v40 = vcgezq_s32(v14);
  v1232 = *(a1 + 304);
  v41 = v18;
  v42 = *(a1 + 144);
  v43 = *(a1 + 160);
  v45 = *(a1 + 176);
  v44 = *(a1 + 192);
  v46 = vcgezq_s32(v22);
  v47 = vcgezq_s32(v21);
  v48 = vcgezq_s32(v23);
  v49 = vcgezq_s32(v20);
  v1333 = vcltzq_s32(v10);
  v1335 = v34;
  v1327 = vcltzq_s32(v9);
  v1330 = v35;
  v1320 = vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v42, v47), vandq_s8(v45, v46)), vaddq_f32(vandq_s8(v43, v49), vandq_s8(v44, v48))), vaddq_f32(vaddq_f32(vandq_s8(v27, v47), vandq_s8(v25, v46)), vaddq_f32(vandq_s8(v26, v49), vandq_s8(v24, v48)))), vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v30, v47), vandq_s8(v1232, v46)), vaddq_f32(vandq_s8(v29, v49), vandq_s8(v28, v48))), vaddq_f32(vaddq_f32(vandq_s8(v32, v34), vandq_s8(v1369, v1333)), vaddq_f32(vandq_s8(v33, v1327), vandq_s8(v31, v35)))));
  v50 = vorrq_s8(vandq_s8(vuzp1q_s16(v1313, v1339), xmmword_298495650), vandq_s8(vuzp1q_s16(v41, v38), xmmword_298495640));
  v50.i16[0] = vaddvq_s16(v50);
  *v50.i8 = vcnt_s8(*v50.i8);
  v50.i16[0] = vaddlv_u8(*v50.i8);
  v51 = v50.i32[0];
  v52 = vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v42, v37), vandq_s8(v45, v36)), vaddq_f32(vandq_s8(v43, v40), vandq_s8(v44, v39))), vaddq_f32(vaddq_f32(vandq_s8(v27, v37), vandq_s8(v25, v36)), vaddq_f32(vandq_s8(v26, v40), vandq_s8(v24, v39)))), vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v30, v37), vandq_s8(v1232, v36)), vaddq_f32(vandq_s8(v29, v40), vandq_s8(v28, v39))), vaddq_f32(vaddq_f32(vbicq_s8(v32, v34), vbicq_s8(v1369, v1333)), vaddq_f32(vbicq_s8(v33, v1327), vbicq_s8(v31, v35))))), ReciprocalTable[(16 - v50.i16[0])]);
  v53 = vdupq_lane_s32(*v52.i8, 0);
  v1273 = v43;
  v1280 = v42;
  v54 = vsubq_f32(v42, v53);
  v55 = vsubq_f32(v43, v53);
  v1287 = v45;
  v56 = vsubq_f32(v45, v53);
  v57 = vsubq_f32(v44, v53);
  v58 = vdupq_lane_s32(*v52.i8, 1);
  v1237 = v27;
  v59 = vsubq_f32(v27, v58);
  v60 = vsubq_f32(v26, v58);
  v61 = v25;
  v62 = vsubq_f32(v25, v58);
  v63 = vsubq_f32(v24, v58);
  v64 = vdupq_laneq_s32(v52, 2);
  v1304 = v31;
  v65 = vsubq_f32(v30, v64);
  v1340 = v29;
  v66 = vsubq_f32(v29, v64);
  v67 = vsubq_f32(v1232, v64);
  v69 = vsubq_f32(v28, v64);
  v1207 = v52;
  v70 = vdupq_laneq_s32(v52, 3);
  v1311 = v32;
  v71 = vsubq_f32(v32, v70);
  v72 = vsubq_f32(v33, v70);
  v73 = vsubq_f32(v1369, v70);
  v74 = vsubq_f32(v31, v70);
  v75 = *(a1 + 32);
  v76 = vmulq_f32(v57, v57);
  v77 = vmulq_f32(v56, v56);
  v78 = vmulq_f32(v55, v55);
  v79 = vmulq_f32(v54, v54);
  v80 = vmulq_f32(v63, v63);
  v81 = vmulq_f32(v62, v62);
  v82 = vmulq_f32(v60, v60);
  v83 = vmulq_f32(v59, v59);
  v84 = vmulq_f32(v69, v69);
  v85 = vmulq_f32(v67, v67);
  v86 = vmulq_f32(v66, v66);
  v87 = vmulq_f32(v65, v65);
  v88 = vmulq_f32(v74, v74);
  v89 = vmulq_f32(v73, v73);
  v90 = vmulq_f32(v72, v72);
  v91 = vmulq_f32(v71, v71);
  __asm { FMOV            V5.4S, #3.0 }

  if (v75)
  {
    v96 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v80, *v75, 1), v76, COERCE_FLOAT(*v75->f32)), v84, *v75->f32, 2), v88, *v75->f32, 3);
    v97 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v82, *v75, 1), v78, COERCE_FLOAT(*v75->f32)), v86, *v75->f32, 2), v90, *v75->f32, 3), _Q5);
    v98 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v83, *v75, 1), v79, COERCE_FLOAT(*v75->f32)), v87, *v75->f32, 2), v91, *v75->f32, 3), _Q5);
    v99 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v81, *v75, 1), v77, COERCE_FLOAT(*v75->f32)), v85, *v75->f32, 2), v89, *v75->f32, 3), _Q5);
    v100 = vmulq_f32(v96, _Q5);
  }

  else
  {
    v101 = vaddq_f32(v84, vaddq_f32(v76, v80));
    v98 = vaddq_f32(v91, vaddq_f32(v87, vaddq_f32(v79, v83)));
    v97 = vaddq_f32(v90, vaddq_f32(v86, vaddq_f32(v78, v82)));
    v99 = vaddq_f32(v89, vaddq_f32(v85, vaddq_f32(v77, v81)));
    v100 = vaddq_f32(v88, v101);
  }

  v1258 = vmulq_n_f32(v1320, ReciprocalTable[v51]);
  v1264 = _Q5;
  v102 = *(VectorMaskForBitMask + ((v7 >> 8) & 0xF0));
  v103 = *(VectorMaskForBitMask + ((v7 >> 4) & 0xF0));
  v104 = *(VectorMaskForBitMask + (v7 & 0xF0));
  v105 = VectorMaskForBitMask[v7 & 0xF];
  v1267 = *(a1 + 256);
  v106 = *(a1 + 240);
  v107 = *(a1 + 224);
  if (*(a1 + 135))
  {
    v103 = vorrq_s8(*(a1 + 736), v1394);
    v102 = vorrq_s8(*(a1 + 720), v1398);
    v104 = vorrq_s8(*(a1 + 752), v1390);
    v105 = vorrq_s8(*(a1 + 768), v1385);
  }

  v108.i64[0] = 0x7F0000007FLL;
  v108.i64[1] = 0x7F0000007FLL;
  v1144 = v97;
  v1146 = v100;
  v109 = vbslq_s8(vcltzq_s32(v103), v108, v97);
  v110 = vbslq_s8(vcltzq_s32(v105), v108, v100);
  v1148 = v98;
  v1151 = v99;
  v111 = vbslq_s8(vcltzq_s32(v102), v108, v98);
  v112 = vbslq_s8(vcltzq_s32(v104), v108, v99);
  v113 = a1 + 400;
  v114 = vmaxnmq_f32(v111, v112);
  v115 = vmaxnmq_f32(v109, v110);
  v116 = vbslq_s8(vcgtq_f32(v112, v111), xmmword_298495610, xmmword_298495600);
  v117 = vmaxnmq_f32(v114, v115);
  v118 = vbslq_s8(vcgtq_f32(v115, v114), vbslq_s8(vcgtq_f32(v110, v109), xmmword_298495630, xmmword_298495620), v116);
  v110.i64[0] = vextq_s8(v117, v117, 8uLL).u64[0];
  *v109.f32 = vmaxnm_f32(*v117.i8, *v110.f32);
  v119 = vbsl_s8(vcgt_f32(*v110.f32, *v117.i8), *&vextq_s8(v118, v118, 8uLL), *v118.i8);
  if (vmvn_s8(vcge_f32(*v109.f32, vdup_lane_s32(*v109.f32, 1))).u8[0])
  {
    v120 = v119.i32[1];
  }

  else
  {
    v120 = v119.i32[0];
  }

  v121 = vdupq_lane_s32(*v1258.f32, 0);
  v122 = vsubq_f32(v44, v121);
  v123 = vsubq_f32(v1280, v121);
  v124 = vsubq_f32(v1273, v121);
  v125 = vsubq_f32(v1287, v121);
  v126 = vdupq_lane_s32(*v1258.f32, 1);
  v127 = vsubq_f32(*(a1 + 256), v126);
  v128 = vsubq_f32(v1237, v126);
  v129 = vsubq_f32(*(a1 + 224), v126);
  v130 = vsubq_f32(v61, v126);
  v131 = vdupq_laneq_s32(v1258, 2);
  v68 = *(a1 + 320);
  v132 = vsubq_f32(v68, v131);
  v133 = vsubq_f32(v30, v131);
  v134 = vsubq_f32(v1340, v131);
  v135 = vsubq_f32(v1232, v131);
  v136 = vdupq_laneq_s32(v1258, 3);
  v137 = vsubq_f32(v1304, v136);
  v138 = vsubq_f32(v1311, v136);
  v139 = vsubq_f32(v33, v136);
  v140 = vsubq_f32(v1369, v136);
  v141 = vmulq_f32(v125, v125);
  v142 = vmulq_f32(v124, v124);
  v143 = vmulq_f32(v123, v123);
  v144 = vmulq_f32(v122, v122);
  v145 = vmulq_f32(v130, v130);
  v146 = vmulq_f32(v129, v129);
  v147 = vmulq_f32(v128, v128);
  v148 = vmulq_f32(v127, v127);
  v149 = vmulq_f32(v135, v135);
  v150 = vmulq_f32(v134, v134);
  v151 = vmulq_f32(v133, v133);
  v152 = vmulq_f32(v132, v132);
  v153 = vmulq_f32(v140, v140);
  v154 = vmulq_f32(v139, v139);
  v155 = vmulq_f32(v138, v138);
  v156 = vmulq_f32(v137, v137);
  if (v75)
  {
    v157 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v145, *v75, 1), v141, COERCE_FLOAT(*v75->f32)), v149, *v75->f32, 2), v153, *v75->f32, 3);
    v158 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v147, *v75, 1), v143, COERCE_FLOAT(*v75->f32)), v151, *v75->f32, 2), v155, *v75->f32, 3);
    v159 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v146, *v75, 1), v142, COERCE_FLOAT(*v75->f32)), v150, *v75->f32, 2), v154, *v75->f32, 3), v1264);
    v160 = vmulq_f32(v158, v1264);
    v161 = vmulq_f32(v157, v1264);
    v162 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v148, *v75, 1), v144, COERCE_FLOAT(*v75->f32)), v152, *v75->f32, 2), v156, *v75->f32, 3), v1264);
  }

  else
  {
    v163 = vaddq_f32(v149, vaddq_f32(v141, v145));
    v160 = vaddq_f32(v155, vaddq_f32(v151, vaddq_f32(v143, v147)));
    v159 = vaddq_f32(v154, vaddq_f32(v150, vaddq_f32(v142, v146)));
    v161 = vaddq_f32(v153, v163);
    v162 = vaddq_f32(v156, vaddq_f32(v152, vaddq_f32(v144, v148)));
  }

  v164 = *(v113 + 16 * v120);
  v165 = v1364;
  v166 = v1353;
  v167 = v1359;
  v168 = v1347;
  if (*(a1 + 135))
  {
    v166 = vorrq_s8(*(a1 + 736), v1353);
    v165 = vorrq_s8(*(a1 + 720), v1364);
    v167 = vorrq_s8(*(a1 + 752), v1359);
    v168 = vorrq_s8(*(a1 + 768), v1347);
  }

  v169.i64[0] = 0x7F0000007FLL;
  v169.i64[1] = 0x7F0000007FLL;
  v170 = vbslq_s8(vcltzq_s32(v166), v169, v159);
  v171 = vbslq_s8(vcltzq_s32(v168), v169, v162);
  v172 = vbslq_s8(vcltzq_s32(v165), v169, v160);
  v173 = vbslq_s8(vcltzq_s32(v167), v169, v161);
  v174 = vmaxnmq_f32(v172, v173);
  v175 = vmaxnmq_f32(v170, v171);
  v176 = vbslq_s8(vcgtq_f32(v173, v172), xmmword_298495610, xmmword_298495600);
  v177 = vmaxnmq_f32(v174, v175);
  v178 = vbslq_s8(vcgtq_f32(v175, v174), vbslq_s8(vcgtq_f32(v171, v170), xmmword_298495630, xmmword_298495620), v176);
  v171.i64[0] = vextq_s8(v177, v177, 8uLL).u64[0];
  *v170.f32 = vmaxnm_f32(*v177.i8, *v171.f32);
  v179 = vbsl_s8(vcgt_f32(*v171.f32, *v177.i8), *&vextq_s8(v178, v178, 8uLL), *v178.i8);
  if (vmvn_s8(vcge_f32(*v170.f32, vdup_lane_s32(*v170.f32, 1))).u8[0])
  {
    v180 = v179.i32[1];
  }

  else
  {
    v180 = v179.i32[0];
  }

  v1314 = *(v113 + 16 * v180);
  v181 = vsubq_f32(v1258, v1314);
  v182 = vsubq_f32(v1207, v164);
  v1161 = v160;
  v1164 = v159;
  v1154 = v162;
  v1158 = v161;
  if (v75)
  {
    v181 = vmulq_f32(v181, *v75->f32);
    v182 = vmulq_f32(v182, *v75->f32);
  }

  v183 = vdupq_lane_s32(*v164.f32, 0);
  v184 = vsubq_f32(v44, v183);
  v185 = vsubq_f32(v1287, v183);
  v186 = vsubq_f32(v1280, v183);
  v1196 = v183;
  v1221 = vdupq_lane_s32(*v164.f32, 1);
  v187 = vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v107, v1221), *v182.f32, 1), vsubq_f32(v1273, v183), v182.f32[0]);
  v1203 = vdupq_laneq_s32(v164, 2);
  v1321 = v164;
  v188 = vdupq_laneq_s32(v164, 3);
  v189 = vmlaq_laneq_f32(vmlaq_laneq_f32(v187, vsubq_f32(v1340, v1203), v182, 2), vsubq_f32(v33, v188), v182, 3);
  v1191 = v188;
  v190 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v1237, v1221), *v182.f32, 1), v186, v182.f32[0]), vsubq_f32(v30, v1203), v182, 2), vsubq_f32(v1311, v188), v182, 3);
  v191 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v61, v1221), *v182.f32, 1), v185, v182.f32[0]), vsubq_f32(v1232, v1203), v182, 2), vsubq_f32(v1369, v188), v182, 3);
  v192 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v1267, v1221), *v182.f32, 1), v184, v182.f32[0]), vsubq_f32(v68, v1203), v182, 2), vsubq_f32(v1304, v188), v182, 3);
  v193 = *(VectorMaskForBitMask + ((v7 >> 8) & 0xF0));
  v194 = *(VectorMaskForBitMask + ((v7 >> 4) & 0xF0));
  v195 = *(VectorMaskForBitMask + (v7 & 0xF0));
  v196 = VectorMaskForBitMask[v7 & 0xF];
  if (*(a1 + 135))
  {
    v194 = vorrq_s8(*(a1 + 736), v1394);
    v193 = vorrq_s8(*(a1 + 720), v1398);
    v195 = vorrq_s8(*(a1 + 752), v1390);
    v196 = vorrq_s8(*(a1 + 768), v1385);
  }

  v197 = vcltzq_s32(v194);
  v198.i64[0] = 0x7F0000007FLL;
  v198.i64[1] = 0x7F0000007FLL;
  v199 = vbslq_s8(v197, v198, v189);
  v200 = vbslq_s8(vcltzq_s32(v196), v198, v192);
  v201 = vbslq_s8(vcltzq_s32(v193), v198, v190);
  v202 = vbslq_s8(vcltzq_s32(v195), v198, v191);
  v203 = vmaxnmq_f32(v199, v200);
  v204 = vcgtq_f32(v200, v199);
  v205 = vmaxnmq_f32(v201, v202);
  v206 = vbslq_s8(vcgtq_f32(v202, v201), xmmword_298495610, xmmword_298495600);
  v207 = vmaxnmq_f32(v205, v203);
  v208 = vbslq_s8(vcgtq_f32(v203, v205), vbslq_s8(v204, xmmword_298495630, xmmword_298495620), v206);
  v205.i64[0] = vextq_s8(v207, v207, 8uLL).u64[0];
  v209 = vbsl_s8(vcgt_f32(*v205.f32, *v207.i8), *&vextq_s8(v208, v208, 8uLL), *v208.i8);
  *v205.f32 = vmaxnm_f32(*v207.i8, *v205.f32);
  v210 = vmvn_s8(vcge_f32(*v205.f32, vdup_lane_s32(*v205.f32, 1))).u8[0];
  v211 = vdupq_lane_s32(*v1314.f32, 0);
  v212 = vdupq_lane_s32(*v1314.f32, 1);
  v213 = vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v107, v212), *v181.f32, 1), vsubq_f32(v1273, v211), v181.f32[0]);
  v214 = vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v1237, v212), *v181.f32, 1), vsubq_f32(v1280, v211), v181.f32[0]);
  v1274 = v211;
  v1281 = v212;
  v215 = vdupq_laneq_s32(v1314, 2);
  v216 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v1267, v212), *v181.f32, 1), vsubq_f32(v44, v211), v181.f32[0]), vsubq_f32(v68, v215), v181, 2);
  v217 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v61, v212), *v181.f32, 1), vsubq_f32(v1287, v211), v181.f32[0]), vsubq_f32(v1232, v215), v181, 2);
  v218 = vmlaq_laneq_f32(v214, vsubq_f32(v30, v215), v181, 2);
  if (v210)
  {
    v219 = v209.i32[1];
  }

  else
  {
    v219 = v209.i32[0];
  }

  v1268 = v215;
  v220 = vdupq_laneq_s32(v1314, 3);
  v221 = vmlaq_laneq_f32(vmlaq_laneq_f32(v213, vsubq_f32(v1340, v215), v181, 2), vsubq_f32(*(a1 + 352), v220), v181, 3);
  v1341 = *(v113 + 16 * v219);
  v222 = vsubq_f32(v1304, v220);
  v1305 = v220;
  v223 = vmlaq_laneq_f32(v218, vsubq_f32(v1311, v220), v181, 3);
  v224 = vmlaq_laneq_f32(v217, vsubq_f32(v1369, v220), v181, 3);
  v225 = vmlaq_laneq_f32(v216, v222, v181, 3);
  v226 = v1364;
  v227 = v1353;
  v228 = v1359;
  v229 = v1347;
  if (*(a1 + 135))
  {
    v227 = vorrq_s8(*(a1 + 736), v1353);
    v226 = vorrq_s8(*(a1 + 720), v1364);
    v228 = vorrq_s8(*(a1 + 752), v1359);
    v229 = vorrq_s8(*(a1 + 768), v1347);
  }

  v230 = vbslq_s8(vcltzq_s32(v227), v198, v221);
  v231 = vbslq_s8(vcltzq_s32(v229), v198, v225);
  v232 = vbslq_s8(vcltzq_s32(v226), v198, v223);
  v233 = vbslq_s8(vcltzq_s32(v228), v198, v224);
  v234 = vmaxnmq_f32(v232, v233);
  v235 = vmaxnmq_f32(v230, v231);
  v236 = vbslq_s8(vcgtq_f32(v233, v232), xmmword_298495610, xmmword_298495600);
  v237 = vmaxnmq_f32(v234, v235);
  v238 = vbslq_s8(vcgtq_f32(v235, v234), vbslq_s8(vcgtq_f32(v231, v230), xmmword_298495630, xmmword_298495620), v236);
  v236.i64[0] = vextq_s8(v237, v237, 8uLL).u64[0];
  *v231.f32 = vmaxnm_f32(*v237.i8, *v236.i8);
  v239 = vbsl_s8(vcgt_f32(*v236.i8, *v237.i8), *&vextq_s8(v238, v238, 8uLL), *v238.i8);
  if (vmvn_s8(vcge_f32(*v231.f32, vdup_lane_s32(*v231.f32, 1))).u8[0])
  {
    v240 = v239.i32[1];
  }

  else
  {
    v240 = v239.i32[0];
  }

  v1370 = *(v113 + 16 * v240);
  if (*(a1 + 124) <= 65025.0)
  {
    v241 = 0;
  }

  else
  {
    v241 = 1073741822;
  }

  v242 = 4 * (v241 - *(a1 + 136));
  DualPartitionBlockInfo = GetDualPartitionBlockInfo(4u, v242 + 16);
  v244 = vdupq_n_s32(0x3B808081u);
  v245 = vsubq_f32(v1341, v1321);
  v246.i64[0] = 0x8000000080000000;
  v246.i64[1] = 0x8000000080000000;
  __asm { FMOV            V4.4S, #1.0 }

  v248 = vdivq_f32(_Q4, vbslq_s8(vcgtq_f32(v244, vabdq_f32(v1341, v1321)), vorrq_s8(vandq_s8(v245, v246), v244), v245));
  v249 = vsubq_f32(v1370, v1314);
  v1312 = _Q4;
  v250 = vdivq_f32(_Q4, vbslq_s8(vcgtq_f32(v244, vabdq_f32(v1370, v1314)), vorrq_s8(vandq_s8(v249, v246), v244), v249));
  v251 = *(a1 + 176);
  v252 = *(a1 + 144);
  v253 = vmulq_n_f32(vsubq_f32(v252, v1196), v248.f32[0]);
  v1233 = *(a1 + 160);
  v254 = vmulq_n_f32(vsubq_f32(v252, v1274), v250.f32[0]);
  v1182 = vuzp1q_s16(v1335, v1327);
  *v252.f32 = vmovn_s16(v1182);
  v255 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v252.f32, *v253.i8)), 0x1FuLL));
  v1238 = vbslq_s8(v255, v254, v253);
  v256 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v252.f32, *v1238.f32)), 0x1FuLL));
  v1174 = vbslq_s8(v256, vmulq_n_f32(vsubq_f32(v1233, v1274), v250.f32[0]), vmulq_n_f32(vsubq_f32(v1233, v1196), v248.f32[0]));
  v257 = *(a1 + 208);
  v1211 = *(a1 + 224);
  v258 = vbslq_s8(v256, vmulq_lane_f32(vsubq_f32(v1211, v1281), *v250.f32, 1), vmulq_lane_f32(vsubq_f32(v1211, v1221), *v248.f32, 1));
  v1172 = vbslq_s8(v255, vmulq_lane_f32(vsubq_f32(v257, v1281), *v250.f32, 1), vmulq_lane_f32(vsubq_f32(v257, v1221), *v248.f32, 1));
  v259 = *(a1 + 272);
  v260 = *(a1 + 288);
  v1169 = vbslq_s8(v256, vmulq_laneq_f32(vsubq_f32(v260, v1268), v250, 2), vmulq_laneq_f32(vsubq_f32(v260, v1203), v248, 2));
  v261 = vbslq_s8(v255, vmulq_laneq_f32(vsubq_f32(v259, v1268), v250, 2), vmulq_laneq_f32(vsubq_f32(v259, v1203), v248, 2));
  v262 = *(a1 + 336);
  v263 = vbslq_s8(v255, vmulq_laneq_f32(vsubq_f32(v262, v1305), v250, 3), vmulq_laneq_f32(vsubq_f32(v262, v1191), v248, 3));
  v264 = *(a1 + 352);
  v265 = vbslq_s8(v256, vmulq_laneq_f32(vsubq_f32(v264, v1305), v250, 3), vmulq_laneq_f32(vsubq_f32(v264, v1191), v248, 3));
  v1228 = v251;
  v266 = vmulq_n_f32(vsubq_f32(v251, v1274), v250.f32[0]);
  v1178 = vuzp1q_s16(v1333, v1330);
  *v249.i8 = vmovn_s16(v1178);
  v267 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v249.i8, *v266.i8)), 0x1FuLL));
  v268 = vbslq_s8(v267, v266, vmulq_n_f32(vsubq_f32(v251, v1196), v248.f32[0]));
  v269 = *(a1 + 240);
  v270 = *(a1 + 256);
  v271 = vbslq_s8(v267, vmulq_lane_f32(vsubq_f32(v269, v1281), *v250.f32, 1), vmulq_lane_f32(vsubq_f32(v269, v1221), *v248.f32, 1));
  v272 = *(a1 + 304);
  v273 = *(a1 + 320);
  v274 = vbslq_s8(v267, vmulq_laneq_f32(vsubq_f32(v272, v1268), v250, 2), vmulq_laneq_f32(vsubq_f32(v272, v1203), v248, 2));
  v275 = *(a1 + 368);
  v276 = vbslq_s8(v267, vmulq_laneq_f32(vsubq_f32(v275, v1305), v250, 3), vmulq_laneq_f32(vsubq_f32(v275, v1191), v248, 3));
  v277 = *(a1 + 192);
  v278 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v249.i8, *v268.f32)), 0x1FuLL));
  v279 = vbslq_s8(v278, vmulq_n_f32(vsubq_f32(v277, v1274), v250.f32[0]), vmulq_n_f32(vsubq_f32(v277, v1196), v248.f32[0]));
  v280 = vbslq_s8(v278, vmulq_lane_f32(vsubq_f32(v270, v1281), *v250.f32, 1), vmulq_lane_f32(vsubq_f32(v270, v1221), *v248.f32, 1));
  v281 = vbslq_s8(v278, vmulq_laneq_f32(vsubq_f32(v273, v1268), v250, 2), vmulq_laneq_f32(vsubq_f32(v273, v1203), v248, 2));
  v282 = *(a1 + 384);
  v283 = vbslq_s8(v278, vmulq_laneq_f32(vsubq_f32(v282, v1305), v250, 3), vmulq_laneq_f32(vsubq_f32(v282, v1191), v248, 3));
  v284 = vmlaq_f32(vmulq_f32(v271, v271), v268, v268);
  v285 = vmlaq_f32(vmlaq_f32(vmulq_f32(v258, v258), v1174, v1174), v1169, v1169);
  v258.f32[0] = ReciprocalTable[BYTE4(DualPartitionBlockInfo)] * ReciprocalTable[BYTE4(DualPartitionBlockInfo)];
  v286 = vmlaq_f32(vmlaq_f32(v284, v274, v274), v276, v276);
  v287 = vdupq_lane_s32(*v258.f32, 0);
  v288 = vcgtq_f32(v287, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1172, v1172), v1238, v1238), v261, v261), v263, v263));
  v289 = vcgtq_f32(v287, vmlaq_f32(v285, v265, v265));
  v1239 = vcgtq_f32(v287, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v280, v280), v279, v279), v281, v281), v283, v283));
  v290 = vandq_s8(v1347, v1239);
  v1269 = vcgtq_f32(v287, v286);
  v1275 = v289;
  v291 = vandq_s8(v1359, v1269);
  v292 = vandq_s8(v1353, v289);
  v293 = vandq_s8(v1364, v288);
  v294 = vorrq_s8(vandq_s8(vuzp1q_s16(v293, v292), xmmword_298495650), vandq_s8(vuzp1q_s16(v291, v290), xmmword_298495640));
  v294.i16[0] = vaddvq_s16(v294);
  *v294.i8 = vcnt_s8(*v294.i8);
  v294.i16[0] = vaddlv_u8(*v294.i8);
  v295 = v294.i16[0];
  v1218 = v257;
  v1222 = v270;
  v1288 = v277;
  v1293 = v275;
  v1298 = v272;
  v1215 = v259;
  if (v294.i32[0] < 2u)
  {
    v306 = *(a1 + 336);
    v308 = v1398;
    v310 = v1390;
    v309 = v1394;
    v311 = v1385;
    v307 = v1321;
    v312 = *(a1 + 176);
    v300 = *(a1 + 160);
    v302 = *(a1 + 144);
  }

  else
  {
    v296 = vcltzq_s32(v291);
    v297 = vcltzq_s32(v293);
    v298 = vcltzq_s32(v290);
    v299 = vcltzq_s32(v292);
    v300 = *(a1 + 160);
    v301 = vandq_s8(v299, v1233);
    v302 = *(a1 + 144);
    v303 = vandq_s8(v299, v1211);
    v304 = vandq_s8(v299, v260);
    v305 = vandq_s8(v299, v264);
    v306 = *(a1 + 336);
    v307 = vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v297, v302), vandq_s8(v296, v1228)), vaddq_f32(v301, vandq_s8(v298, v277))), vaddq_f32(vaddq_f32(vandq_s8(v297, v257), vandq_s8(v296, v269)), vaddq_f32(v303, vandq_s8(v298, v270)))), vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v297, v259), vandq_s8(v296, v272)), vaddq_f32(v304, vandq_s8(v298, v273))), vaddq_f32(vaddq_f32(vandq_s8(v297, v262), vandq_s8(v296, v275)), vaddq_f32(v305, vandq_s8(v298, v282))))), ReciprocalTable[v295]);
    v308 = v1398;
    v310 = v1390;
    v309 = v1394;
    v311 = v1385;
    v312 = *(a1 + 176);
  }

  v1306 = vuzp1q_s8(v1182, v1178);
  v1192 = v288;
  v313 = vandq_s8(v308, v288);
  v314 = vandq_s8(v309, v1275);
  v315 = vandq_s8(v310, v1269);
  v316 = vandq_s8(v311, v1239);
  v317 = vorrq_s8(vandq_s8(vuzp1q_s16(v313, v314), xmmword_298495650), vandq_s8(vuzp1q_s16(v315, v316), xmmword_298495640));
  v317.i16[0] = vaddvq_s16(v317);
  v318 = vcnt_s8(*v317.i8);
  v318.i16[0] = vaddlv_u8(v318);
  v1322 = v307;
  v1282 = *(a1 + 384);
  if (v318.i32[0] < 2u)
  {
    v327 = v302;
    v326 = v306;
    v325 = *(a1 + 352);
    v324 = *(a1 + 256);
    v323 = *(a1 + 192);
  }

  else
  {
    v319 = vcltzq_s32(v315);
    v320 = vcltzq_s32(v313);
    v321 = vcltzq_s32(v316);
    v322 = vcltzq_s32(v314);
    v323 = *(a1 + 192);
    v324 = *(a1 + 256);
    v325 = *(a1 + 352);
    v326 = v306;
    v1314 = vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v320, v302), vandq_s8(v319, v312)), vaddq_f32(vandq_s8(v322, v300), vandq_s8(v321, v277))), vaddq_f32(vaddq_f32(vandq_s8(v320, v257), vandq_s8(v319, v269)), vaddq_f32(vandq_s8(v322, v1211), vandq_s8(v321, v270)))), vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v320, v1215), vandq_s8(v319, v272)), vaddq_f32(vandq_s8(v322, v260), vandq_s8(v321, v273))), vaddq_f32(vaddq_f32(vandq_s8(v320, v306), vandq_s8(v319, v1293)), vaddq_f32(vandq_s8(v322, v325), vandq_s8(v321, v282))))), ReciprocalTable[v318.u16[0]]);
    v327 = v302;
  }

  v328 = vdupq_lane_s32(*v1341.f32, 0);
  v329 = vdupq_lane_s32(*v1370.f32, 0);
  v330 = vsubq_f32(v329, v323);
  v331 = vmulq_n_f32(v330, v250.f32[0]);
  v332 = vextq_s8(v1306, v1306, 8uLL).u64[0];
  v333 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v332, *v330.f32)), 0x1FuLL));
  v1187 = vbslq_s8(v333, v331, vmulq_n_f32(vsubq_f32(v328, v323), v248.f32[0]));
  v1204 = v332;
  v334 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v332, *v333.i8)), 0x1FuLL));
  v1183 = vbslq_s8(v334, vmulq_n_f32(vsubq_f32(v329, v312), v250.f32[0]), vmulq_n_f32(vsubq_f32(v328, v312), v248.f32[0]));
  v335 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v1306.i8, *v333.i8)), 0x1FuLL));
  v336 = vbslq_s8(v335, vmulq_n_f32(vsubq_f32(v329, v300), v250.f32[0]), vmulq_n_f32(vsubq_f32(v328, v300), v248.f32[0]));
  v337 = vdupq_lane_s32(*v1341.f32, 1);
  v338 = vdupq_lane_s32(*v1370.f32, 1);
  v339 = vbslq_s8(v335, vmulq_lane_f32(vsubq_f32(v338, v1211), *v250.f32, 1), vmulq_lane_f32(vsubq_f32(v337, v1211), *v248.f32, 1));
  v340 = vbslq_s8(v334, vmulq_lane_f32(vsubq_f32(v338, v269), *v250.f32, 1), vmulq_lane_f32(vsubq_f32(v337, v269), *v248.f32, 1));
  v341 = vbslq_s8(v333, vmulq_lane_f32(vsubq_f32(v338, v324), *v250.f32, 1), vmulq_lane_f32(vsubq_f32(v337, v324), *v248.f32, 1));
  v342 = vdupq_laneq_s32(v1341, 2);
  v343 = vdupq_laneq_s32(v1370, 2);
  v1197 = *(a1 + 288);
  v344 = v324;
  v345 = vbslq_s8(v335, vmulq_laneq_f32(vsubq_f32(v343, v260), v250, 2), vmulq_laneq_f32(vsubq_f32(v342, v260), v248, 2));
  v346 = vbslq_s8(v334, vmulq_laneq_f32(vsubq_f32(v343, v1298), v250, 2), vmulq_laneq_f32(vsubq_f32(v342, v1298), v248, 2));
  v347 = vdupq_laneq_s32(v1341, 3);
  v348 = vbslq_s8(v333, vmulq_laneq_f32(vsubq_f32(v343, v273), v250, 2), vmulq_laneq_f32(vsubq_f32(v342, v273), v248, 2));
  v349 = vdupq_laneq_s32(v1370, 3);
  v350 = vbslq_s8(v333, vmulq_laneq_f32(vsubq_f32(v349, v282), v250, 3), vmulq_laneq_f32(vsubq_f32(v347, v282), v248, 3));
  v351 = vbslq_s8(v334, vmulq_laneq_f32(vsubq_f32(v349, v1293), v250, 3), vmulq_laneq_f32(vsubq_f32(v347, v1293), v248, 3));
  v352 = vbslq_s8(v335, vmulq_laneq_f32(vsubq_f32(v349, v325), v250, 3), vmulq_laneq_f32(vsubq_f32(v347, v325), v248, 3));
  v353 = vmulq_n_f32(vsubq_f32(v328, v327), v248.f32[0]);
  v354 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v1306.i8, *v350.f32)), 0x1FuLL));
  v355 = vbslq_s8(v354, vmulq_n_f32(vsubq_f32(v329, v327), v250.f32[0]), v353);
  v356 = vbslq_s8(v354, vmulq_lane_f32(vsubq_f32(v338, v1218), *v250.f32, 1), vmulq_lane_f32(vsubq_f32(v337, v1218), *v248.f32, 1));
  v357 = vbslq_s8(v354, vmulq_laneq_f32(vsubq_f32(v343, v1215), v250, 2), vmulq_laneq_f32(vsubq_f32(v342, v1215), v248, 2));
  v358 = vbslq_s8(v354, vmulq_laneq_f32(vsubq_f32(v349, v326), v250, 3), vmulq_laneq_f32(vsubq_f32(v347, v326), v248, 3));
  v359 = vuzp1q_s8(vuzp1q_s16(v1192, v1275), vuzp1q_s16(v1269, v1239));
  v360 = vcgtq_f32(v287, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v341, v341), v1187, v1187), v348, v348), v350, v350));
  v361 = vcgtq_f32(v287, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v340, v340), v1183, v1183), v346, v346), v351, v351));
  v362 = vcgtq_f32(v287, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v339, v339), v336, v336), v345, v345), v352, v352));
  v363 = vcgtq_f32(v287, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v356, v356), v355, v355), v357, v357), v358, v358));
  v364 = vuzp1q_s8(vuzp1q_s16(v363, v362), vuzp1q_s16(v361, v360));
  v365 = vandq_s8(v1347, v360);
  v366 = vandq_s8(v1359, v361);
  v367 = vandq_s8(v1353, v362);
  v368 = vandq_s8(v1364, v363);
  v369 = vorrq_s8(vandq_s8(vuzp1q_s16(v368, v367), xmmword_298495650), vandq_s8(vuzp1q_s16(v366, v365), xmmword_298495640));
  v369.i16[0] = vaddvq_s16(v369);
  v370 = vcnt_s8(*v369.i8);
  v370.i16[0] = vaddlv_u8(v370);
  if (v370.i32[0] < 2u)
  {
    v379 = v1398;
    v381 = v1390;
    v380 = v1394;
    v382 = v1385;
    v383 = *(a1 + 176);
    v375 = *(a1 + 160);
    v378 = *(a1 + 368);
    v377 = *(a1 + 304);
  }

  else
  {
    v371 = vcltzq_s32(v366);
    v372 = vcltzq_s32(v368);
    v373 = vcltzq_s32(v365);
    v374 = vcltzq_s32(v367);
    v375 = *(a1 + 160);
    v376 = vandq_s8(v371, v269);
    v378 = *(a1 + 368);
    v377 = *(a1 + 304);
    v1341 = vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v372, v327), vandq_s8(v371, v1228)), vaddq_f32(vandq_s8(v374, v1233), vandq_s8(v373, v1288))), vaddq_f32(vaddq_f32(vandq_s8(v372, v1218), v376), vaddq_f32(vandq_s8(v374, v1211), vandq_s8(v373, v344)))), vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v372, v1215), vandq_s8(v371, v1298)), vaddq_f32(vandq_s8(v374, v1197), vandq_s8(v373, v273))), vaddq_f32(vaddq_f32(vandq_s8(v372, v326), vandq_s8(v371, v1293)), vaddq_f32(vandq_s8(v374, v325), vandq_s8(v373, v1282))))), ReciprocalTable[v370.u16[0]]);
    v379 = v1398;
    v381 = v1390;
    v380 = v1394;
    v382 = v1385;
    v383 = *(a1 + 176);
  }

  v384 = vorrq_s8(v364, v359);
  v385 = vandq_s8(v379, v363);
  v386 = vandq_s8(v380, v362);
  v387 = vandq_s8(v381, v361);
  v388 = vandq_s8(v382, v360);
  v389 = vorrq_s8(vandq_s8(vuzp1q_s16(v385, v386), xmmword_298495650), vandq_s8(vuzp1q_s16(v387, v388), xmmword_298495640));
  v389.i16[0] = vaddvq_s16(v389);
  v390 = vcnt_s8(*v389.i8);
  v390.i16[0] = vaddlv_u8(v390);
  if (v390.i32[0] >= 2u)
  {
    v391 = vcltzq_s32(v387);
    v392 = vcltzq_s32(v385);
    v393 = vcltzq_s32(v388);
    v394 = vcltzq_s32(v386);
    v1370 = vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v392, v327), vandq_s8(v391, v383)), vaddq_f32(vandq_s8(v394, v375), vandq_s8(v393, v1288))), vaddq_f32(vaddq_f32(vandq_s8(v392, v1218), vandq_s8(v391, *(a1 + 240))), vaddq_f32(vandq_s8(v394, v1211), vandq_s8(v393, v1222)))), vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v392, v1215), vandq_s8(v391, v377)), vaddq_f32(vandq_s8(v394, v1197), vandq_s8(v393, v273))), vaddq_f32(vaddq_f32(vandq_s8(v392, v326), vandq_s8(v391, v378)), vaddq_f32(vandq_s8(v394, v325), vandq_s8(v393, v1282))))), ReciprocalTable[v390.u16[0]]);
  }

  v395 = vorrq_s8(vandq_s8(vcltzq_s16(vshlq_n_s16(vmovl_u8(*v384.i8), 0xFuLL)), xmmword_298495650), vandq_s8(vcltzq_s16(vshlq_n_s16(vmovl_high_u8(v384), 0xFuLL)), xmmword_298495640));
  v395.i16[0] = vaddvq_s16(v395);
  *v395.i8 = vcnt_s8(*v395.i8);
  v395.i16[0] = vaddlv_u8(*v395.i8);
  v396 = GetDualPartitionBlockInfo(v395.u32[0], v242 + 16);
  v399 = v396;
  v400 = HIBYTE(v396);
  v401 = *(a1 + 784);
  v1294 = vcgezq_s32(v1390);
  v1299 = vcgezq_s32(v1385);
  v402 = vcgezq_s32(v1394);
  v1283 = vcgezq_s32(v1398);
  v1289 = v402;
  if ((v401 & ~v7) == 0)
  {
    v404 = xmmword_298495610;
    v403 = xmmword_298495600;
    v406 = xmmword_298495630;
    v405 = xmmword_298495620;
    v407 = v1314;
    v408 = v1322;
    v409 = v1341;
    goto LABEL_67;
  }

  v404 = xmmword_298495610;
  v403 = xmmword_298495600;
  v406 = xmmword_298495630;
  v405 = xmmword_298495620;
  v407 = v1314;
  v408 = v1322;
  v409 = v1341;
  if (!*(a1 + 135))
  {
    if (v1322.f32[3] >= v1341.f32[3])
    {
      v409 = 0uLL;
      goto LABEL_67;
    }

    goto LABEL_59;
  }

  v410 = vsubq_f32(v1341, v1322);
  v402.i32[0] = v410.i32[3];
  if (v410.f32[3] != 0.0)
  {
    goto LABEL_51;
  }

  v397.i32[0] = v401 & ~v7;
  v411 = vcnt_s8(*v397.f32);
  v411.i16[0] = vaddlv_u8(v411);
  v412 = v411.i32[0];
  v398 = vandq_s8(vuzp1q_s16(vandq_s8(*(a1 + 720), v1364), vandq_s8(*(a1 + 736), v1353)), xmmword_298495650);
  v397 = vorrq_s8(v398, vandq_s8(vuzp1q_s16(vandq_s8(*(a1 + 752), v1359), vandq_s8(*(a1 + 768), v1347)), xmmword_298495640));
  v397.i16[0] = vaddvq_s16(v397);
  *v397.f32 = vcnt_s8(*v397.f32);
  v397.i16[0] = vaddlv_u8(*v397.f32);
  if (15 - v412 == v397.i32[0])
  {
LABEL_59:
    v408 = 0uLL;
    goto LABEL_67;
  }

  v397.i64[0] = 0x3F0000003FLL;
  v397.i64[1] = 0x3F0000003FLL;
  v408 = vnegq_f32(v397);
  v409 = v408;
LABEL_51:
  v397.i64[0] = 0;
  v402 = vdupq_lane_s32(*&vcgtq_f32(v397, v402), 0);
  v413 = vbslq_s8(v402, vnegq_f32(v410), v410);
  v414 = vbslq_s8(v402, v409, v408);
  *v398.i32 = v414.f32[3] / v413.f32[3];
  v415 = vmlsq_lane_f32(v414, v413, *v398.i8, 0);
  v397 = vandq_s8(vcgtq_f32(v415, vdupq_n_s32(0xBB800000)), vcgtq_f32(vdupq_n_s32(0x3F808081u), v415));
  if ((vminvq_u32(v397) & 0x80000000) != 0)
  {
    v409 = vbslq_s8(v402, v408, v409);
    v402.i32[1] = v1312.i32[1];
    v408 = vminnmq_f32(vmaxnmq_f32(v415, 0), v1312);
  }

  else
  {
    v416.i64[0] = 0x7F0000007FLL;
    v416.i64[1] = 0x7F0000007FLL;
    v417 = vandq_s8(v1335, v416);
    v418 = vandq_s8(v1327, v416);
    v419 = vandq_s8(v1333, v416);
    v420 = vandq_s8(v1330, v416);
    v421 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v1306.i8, *v417.i8)), 0x1FuLL)), v416, v1144);
    v422 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v1204, *v417.i8)), 0x1FuLL)), v416, v1146);
    v423 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v1306.i8, *v417.i8)), 0x1FuLL)), v416, v1148);
    v424 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v1204, *v417.i8)), 0x1FuLL)), v416, v1151);
    v425 = vmaxnmq_f32(v423, v424);
    v426 = vmaxnmq_f32(v421, v422);
    v427 = vbslq_s8(vcgtq_f32(v422, v421), xmmword_298495630, xmmword_298495620);
    v428 = vmaxnmq_f32(v425, v426);
    v429 = vbslq_s8(vcgtq_f32(v426, v425), v427, vbslq_s8(vcgtq_f32(v424, v423), xmmword_298495610, xmmword_298495600));
    v427.i64[0] = vextq_s8(v428, v428, 8uLL).u64[0];
    *v423.f32 = vmaxnm_f32(*v428.i8, *v427.i8);
    v430 = vbsl_s8(vcgt_f32(*v427.i8, *v428.i8), *&vextq_s8(v429, v429, 8uLL), *v429.i8);
    if (vmvn_s8(vcge_f32(*v423.f32, vdup_lane_s32(*v423.f32, 1))).u8[0])
    {
      v431 = v430.i32[1];
    }

    else
    {
      v431 = v430.i32[0];
    }

    v432 = *(v113 + 16 * v431);
    v433 = *(a1 + 32);
    v434 = vsubq_f32(v1207, v432);
    if (v433)
    {
      v435 = *v433;
    }

    else
    {
      v435 = vdupq_n_s32(0x3EAAAAABu);
    }

    v436 = vmulq_f32(v434, v435);
    v437 = vdupq_lane_s32(*v432.f32, 0);
    v438 = vdupq_lane_s32(*v432.f32, 1);
    v439 = vdupq_laneq_s32(v432, 2);
    v440 = vdupq_laneq_s32(v432, 3);
    v441 = vorrq_s8(vandq_s8(v1299, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(*(a1 + 256), v438), *v436.f32, 1), vsubq_f32(*(a1 + 192), v437), v436.f32[0]), vsubq_f32(*(a1 + 320), v439), v436, 2), vsubq_f32(*(a1 + 384), v440), v436, 3)), v420);
    v442 = vorrq_s8(vandq_s8(v1289, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(*(a1 + 224), v438), *v436.f32, 1), vsubq_f32(*(a1 + 160), v437), v436.f32[0]), vsubq_f32(*(a1 + 288), v439), v436, 2), vsubq_f32(*(a1 + 352), v440), v436, 3)), v418);
    v443 = vorrq_s8(vandq_s8(v1294, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(*(a1 + 240), v438), *v436.f32, 1), vsubq_f32(*(a1 + 176), v437), v436.f32[0]), vsubq_f32(*(a1 + 304), v439), v436, 2), vsubq_f32(*(a1 + 368), v440), v436, 3)), v419);
    v444 = vorrq_s8(vandq_s8(v1283, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(*(a1 + 208), v438), *v436.f32, 1), vsubq_f32(*(a1 + 144), v437), v436.f32[0]), vsubq_f32(*(a1 + 272), v439), v436, 2), vsubq_f32(*(a1 + 336), v440), v436, 3)), v417);
    v445 = vmaxnmq_f32(v444, v443);
    v446 = vmaxnmq_f32(v442, v441);
    v447 = vbslq_s8(vcgtq_f32(v443, v444), xmmword_298495610, xmmword_298495600);
    v448 = vmaxnmq_f32(v445, v446);
    v449 = vbslq_s8(vcgtq_f32(v446, v445), vbslq_s8(vcgtq_f32(v441, v442), xmmword_298495630, xmmword_298495620), v447);
    v442.i64[0] = vextq_s8(v448, v448, 8uLL).u64[0];
    *v441.f32 = vmaxnm_f32(*v448.i8, *v442.f32);
    v450 = vbsl_s8(vcgt_f32(*v442.f32, *v448.i8), *&vextq_s8(v449, v449, 8uLL), *v449.i8);
    if (vmvn_s8(vcge_f32(*v441.f32, vdup_lane_s32(*v441.f32, 1))).u8[0])
    {
      v451 = v450.i32[1];
    }

    else
    {
      v451 = v450.i32[0];
    }

    v452 = *(v113 + 16 * v451);
    v397 = v432;
    v397.i32[3] = 0;
    v453 = v452;
    v453.i32[3] = 0;
    v402 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vmovn_s32(vcgtq_f32(v452, v432)), 3)), 0x1FuLL));
    v409 = vbslq_s8(v402, v452, v453);
    v408 = vbslq_s8(v402, v397, v432);
    v407 = v1314;
  }

LABEL_67:
  v454 = v401 & v7;
  if (!v454)
  {
    goto LABEL_89;
  }

  if (!*(a1 + 135))
  {
    if (v407.f32[3] >= v1370.f32[3])
    {
      v1370 = 0u;
      goto LABEL_89;
    }

    goto LABEL_81;
  }

  v455 = vsubq_f32(v1370, v407);
  v402.i32[0] = v455.i32[3];
  if (v455.f32[3] == 0.0)
  {
    v397.i32[0] = v454;
    v456 = vcnt_s8(*v397.f32);
    v456.i16[0] = vaddlv_u8(v456);
    v457 = v456.i32[0];
    v456.i32[0] = v7;
    v458 = vcnt_s8(v456);
    v458.i16[0] = vaddlv_u8(v458);
    if (v458.i32[0] - 1 != v457)
    {
      v459.i64[0] = 0x3F0000003FLL;
      v459.i64[1] = 0x3F0000003FLL;
      v407 = vnegq_f32(v459);
      v1370 = v407;
      goto LABEL_72;
    }

LABEL_81:
    v407 = 0uLL;
    goto LABEL_89;
  }

LABEL_72:
  if (v455.f32[3] < 0.0)
  {
    v460 = v407;
    v455 = vnegq_f32(v455);
    v402.i32[0] = v455.i32[3];
    v407 = v1370;
    v1370 = v460;
  }

  v402.f32[0] = v407.f32[3] / v402.f32[0];
  v461 = vmlsq_lane_f32(v407, v455, *v402.f32, 0);
  if ((vminvq_u32(vandq_s8(vcgtq_f32(v461, vdupq_n_s32(0xBB800000)), vcgtq_f32(vdupq_n_s32(0x3F808081u), v461))) & 0x80000000) != 0)
  {
    v407 = vminnmq_f32(vmaxnmq_f32(v461, 0), v1312);
  }

  else
  {
    v462.i64[0] = 0x7F0000007FLL;
    v462.i64[1] = 0x7F0000007FLL;
    v463 = vandq_s8(v1294, v462);
    v464 = vandq_s8(v1283, v462);
    v465 = vandq_s8(v1299, v462);
    v466 = vandq_s8(v1289, v462);
    v467 = vorrq_s8(vandq_s8(v1327, v1164), v466);
    v468 = vorrq_s8(vandq_s8(v1330, v1154), v465);
    v469 = vorrq_s8(vandq_s8(v1335, v1161), v464);
    v470 = vorrq_s8(vandq_s8(v1333, v1158), v463);
    v471 = vmaxnmq_f32(v469, v470);
    v472 = vmaxnmq_f32(v467, v468);
    v473 = vbslq_s8(vcgtq_f32(v470, v469), v404, v403);
    v474 = vbslq_s8(vcgtq_f32(v468, v467), v406, v405);
    v475 = vmaxnmq_f32(v471, v472);
    v476 = vbslq_s8(vcgtq_f32(v472, v471), v474, v473);
    v474.i64[0] = vextq_s8(v475, v475, 8uLL).u64[0];
    *v467.f32 = vmaxnm_f32(*v475.i8, *v474.i8);
    v477 = vbsl_s8(vcgt_f32(*v474.i8, *v475.i8), *&vextq_s8(v476, v476, 8uLL), *v476.i8);
    if (vmvn_s8(vcge_f32(*v467.f32, vdup_lane_s32(*v467.f32, 1))).u8[0])
    {
      v478 = v477.i32[1];
    }

    else
    {
      v478 = v477.i32[0];
    }

    v479 = *(v113 + 16 * v478);
    v480 = *(a1 + 32);
    v481 = vsubq_f32(v1258, v479);
    v482 = v408;
    if (v480)
    {
      v483 = *v480;
    }

    else
    {
      v483 = vdupq_n_s32(0x3EAAAAABu);
    }

    v484 = vmulq_f32(v481, v483);
    v485 = vdupq_lane_s32(*v479.f32, 0);
    v486 = vdupq_lane_s32(*v479.f32, 1);
    v487 = vdupq_laneq_s32(v479, 2);
    v488 = vdupq_laneq_s32(v479, 3);
    v489 = vorrq_s8(vandq_s8(v1330, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(*(a1 + 256), v486), *v484.f32, 1), vsubq_f32(*(a1 + 192), v485), v484.f32[0]), vsubq_f32(*(a1 + 320), v487), v484, 2), vsubq_f32(*(a1 + 384), v488), v484, 3)), v465);
    v490 = vorrq_s8(vandq_s8(v1327, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(*(a1 + 224), v486), *v484.f32, 1), vsubq_f32(*(a1 + 160), v485), v484.f32[0]), vsubq_f32(*(a1 + 288), v487), v484, 2), vsubq_f32(*(a1 + 352), v488), v484, 3)), v466);
    v491 = vorrq_s8(vandq_s8(v1333, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(*(a1 + 240), v486), *v484.f32, 1), vsubq_f32(*(a1 + 176), v485), v484.f32[0]), vsubq_f32(*(a1 + 304), v487), v484, 2), vsubq_f32(*(a1 + 368), v488), v484, 3)), v463);
    v492 = vorrq_s8(vandq_s8(v1335, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(*(a1 + 208), v486), *v484.f32, 1), vsubq_f32(*(a1 + 144), v485), v484.f32[0]), vsubq_f32(*(a1 + 272), v487), v484, 2), vsubq_f32(*(a1 + 336), v488), v484, 3)), v464);
    v493 = vmaxnmq_f32(v492, v491);
    v494 = vmaxnmq_f32(v490, v489);
    v495 = vbslq_s8(vcgtq_f32(v491, v492), v404, v403);
    v496 = vbslq_s8(vcgtq_f32(v489, v490), v406, v405);
    v497 = vmaxnmq_f32(v493, v494);
    v498 = vbslq_s8(vcgtq_f32(v494, v493), v496, v495);
    v496.i64[0] = vextq_s8(v497, v497, 8uLL).u64[0];
    *v489.f32 = vmaxnm_f32(*v497.i8, *v496.i8);
    v499 = vbsl_s8(vcgt_f32(*v496.i8, *v497.i8), *&vextq_s8(v498, v498, 8uLL), *v498.i8);
    if (vmvn_s8(vcge_f32(*v489.f32, vdup_lane_s32(*v489.f32, 1))).u8[0])
    {
      v500 = v499.i32[1];
    }

    else
    {
      v500 = v499.i32[0];
    }

    v501 = *(v113 + 16 * v500);
    v502 = v479;
    v502.i32[3] = 0;
    v503 = v501;
    v503.i32[3] = 0;
    v504 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vmovn_s32(vcgtq_f32(v501, v479)), 3)), 0x1FuLL));
    v1370 = vbslq_s8(v504, v501, v503);
    v407 = vbslq_s8(v504, v502, v479);
    v408 = v482;
  }

LABEL_89:
  v1417 = 0u;
  v1416 = 0u;
  v1415 = 0u;
  v1414 = 0u;
  v1413 = 0u;
  v1412 = 0u;
  v1411 = 0u;
  v1410 = 0u;
  v1409 = 0u;
  v1408 = 0u;
  v505 = (v396 >> 25) & 0xF;
  if (v400 <= 1)
  {
    v506 = 1;
  }

  else
  {
    v506 = HIBYTE(v396);
  }

  v507 = ReciprocalTable[v400];
  v508 = vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v408, 0), v1312), v506));
  v509 = vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v409, 0), v1312), v506));
  v510 = vmaxnmq_f32(v407, 0);
  v407.i64[1] = v1370.i64[1];
  v511 = vrndxq_f32(vmulq_n_f32(vminnmq_f32(v510, v1312), v506));
  v512 = vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v1370, 0), v1312), v506));
  if (v505 > 4)
  {
    v516 = vsubq_f32(v508, v509);
    v516.f32[0] = v516.f32[2] + vaddv_f32(*v516.f32);
    if (fabsf(v516.f32[0]) <= 1.0)
    {
      v517 = __clz(__rbit32(v400 + 1));
      v518 = ((v400 + 1) >> v517);
      v519 = *&vuzp1q_s16(vcvtq_s32_f32(v508), vcvtq_s32_f32(v509)) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
      if (v517 && v518 != 1)
      {
        v520 = vsubq_s16(vdupq_n_s16(v400), v519);
        if (v518 == 3)
        {
          v521 = 21846;
        }

        else
        {
          v521 = 13108;
        }

        v522 = vdupq_n_s16(v521);
        v523 = vminq_u16(v519, v520);
        v524 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v523.i8, *v522.i8), 0x10uLL), vmull_high_u16(v523, v522), 0x10uLL);
        v522.i64[0] = 0x1000100010001;
        v522.i64[1] = 0x1000100010001;
        v519 = vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v523, v524, vmovl_u8(vdup_n_s8((v400 + 1) >> v517))), vdupq_n_s16(v517)), vaddq_s16(v524, v524)), vbicq_s8(v522, vceqq_s16(v523, v519)));
      }

      v525 = v518 - 6;
      _ZF = v518 == 1;
      v526 = -8;
      if (!_ZF)
      {
        v526 = v525;
      }

      v527 = GetUnquantizationData_UnquantizationInfo[3 * v517 + v526];
      v528 = vshlq_u16(v519, vnegq_s16(vdupq_n_s16(WORD1(v527) & 7)));
      v529 = vandq_s8(vdupq_n_s16(BYTE1(v527)), v519);
      v530 = vshlq_u16(vmulq_s16(vshrq_n_u16(v529, 1uLL), vdupq_n_s16((v527 >> 28) & 0x1FF)), vnegq_s16(vdupq_n_s16((v527 >> 37) & 7)));
      v531 = vandq_s8(vdupq_n_s16((v527 >> 19) & 0x1FF), vcltzq_s16(vshlq_n_s16(v529, 0xFuLL)));
      v532 = veorq_s8(vmlaq_s16(v530, v528, vmovl_u8(vdup_n_s8(v527 >> 40))), v531);
      v530.i64[0] = 0x80008000800080;
      v530.i64[1] = 0x80008000800080;
      v533 = vorrq_s8(vshrq_n_u16(v532, 2uLL), vandq_s8(v531, v530));
      v534 = vdupq_n_s32(0x4B400000u);
      v535 = vdupq_n_s32(0xCB400000);
      v407 = vaddq_f32(vorrq_s8(vmovl_u16(*v533.i8), v534), v535);
      v516 = vsubq_f32(v407, vaddq_f32(vorrq_s8(vmovl_high_u16(v533), v534), v535));
      v516.f32[0] = v516.f32[2] + vaddv_f32(*v516.f32);
    }

    v407.i64[0] = 0;
    v536 = vdupq_lane_s32(*&vcgtq_f32(v516, v407), 0);
    v537 = vbslq_s8(v536, v509, v508);
    v538 = vbslq_s8(v536, v508, v509);
    v539 = vuzp1q_s16(vcvtq_s32_f32(v537), vcvtq_s32_f32(v538));
    *v539.i8 = vmovn_s16(v539);
    v540 = ShuffleColorEndpointPair_mapTable[v505];
    v541 = vqtbl1_s8(v539, v540);
    v542 = vsubq_f32(v511, v512);
    v542.f32[0] = v542.f32[2] + vaddv_f32(*v542.f32);
    if (fabsf(v542.f32[0]) <= 1.0)
    {
      v543 = __clz(__rbit32(v400 + 1));
      v544 = ((v400 + 1) >> v543);
      v545 = *&vuzp1q_s16(vcvtq_s32_f32(v511), vcvtq_s32_f32(v512)) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
      if (v543 && v544 != 1)
      {
        v546 = vsubq_s16(vdupq_n_s16(v400), v545);
        if (v544 == 3)
        {
          v547 = 21846;
        }

        else
        {
          v547 = 13108;
        }

        v548 = vdupq_n_s16(v547);
        v549 = vminq_u16(v545, v546);
        v550 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v549.i8, *v548.i8), 0x10uLL), vmull_high_u16(v549, v548), 0x10uLL);
        v548.i64[0] = 0x1000100010001;
        v548.i64[1] = 0x1000100010001;
        v545 = vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v549, v550, vmovl_u8(vdup_n_s8((v400 + 1) >> v543))), vdupq_n_s16(v543)), vaddq_s16(v550, v550)), vbicq_s8(v548, vceqq_s16(v549, v545)));
      }

      v551 = v544 - 6;
      _ZF = v544 == 1;
      v552 = -8;
      if (!_ZF)
      {
        v552 = v551;
      }

      v553 = GetUnquantizationData_UnquantizationInfo[3 * v543 + v552];
      v554 = vshlq_u16(v545, vnegq_s16(vdupq_n_s16(WORD1(v553) & 7)));
      v555 = vandq_s8(vdupq_n_s16(BYTE1(v553)), v545);
      v556 = vshlq_u16(vmulq_s16(vshrq_n_u16(v555, 1uLL), vdupq_n_s16((v553 >> 28) & 0x1FF)), vnegq_s16(vdupq_n_s16((v553 >> 37) & 7)));
      v557 = vandq_s8(vdupq_n_s16((v553 >> 19) & 0x1FF), vcltzq_s16(vshlq_n_s16(v555, 0xFuLL)));
      v558 = veorq_s8(vmlaq_s16(v556, v554, vmovl_u8(vdup_n_s8(v553 >> 40))), v557);
      v556.i64[0] = 0x80008000800080;
      v556.i64[1] = 0x80008000800080;
      v559 = vorrq_s8(vshrq_n_u16(v558, 2uLL), vandq_s8(v557, v556));
      v560 = vdupq_n_s32(0x4B400000u);
      v561 = vdupq_n_s32(0xCB400000);
      v542 = vaddq_f32(vorrq_s8(vmovl_u16(*v559.i8), v560), v561);
      v562 = vsubq_f32(v542, vaddq_f32(vorrq_s8(vmovl_high_u16(v559), v560), v561));
      v542.f32[0] = v562.f32[2] + vaddv_f32(*v562.f32);
    }

    v563 = vdupq_lane_s32(*&vcgtq_f32(v542, v407), 0);
    v564 = vbslq_s8(v563, v512, v511);
    v565 = vbslq_s8(v563, v511, v512);
    v566 = vuzp1q_s16(vcvtq_s32_f32(v564), vcvtq_s32_f32(v565));
    *v566.i8 = vmovn_s16(v566);
    v1408 = v1398;
    v1409 = v1394;
    v1410 = v1390;
    v1411 = v1385;
    v1276 = vmulq_n_f32(v537, v507);
    v1412 = v1276;
    v1413 = vmlaq_n_f32(vnegq_f32(v1276), v538, v507);
    *v1414.i8 = v541;
    v1315 = vmulq_n_f32(v564, v507);
    v1415 = v1315;
    v1342 = vmlaq_n_f32(vnegq_f32(v1315), v565, v507);
    v1348 = v1413;
    v1416 = v1342;
    *&v1417 = vqtbl1_s8(v566, v540);
  }

  else
  {
    v1408 = v1398;
    v1409 = v1394;
    v1410 = v1390;
    v1411 = v1385;
    v1276 = vmulq_n_f32(v508, v507);
    v1412 = v1276;
    v1413 = vmlaq_n_f32(vnegq_f32(v1276), v509, v507);
    v513 = vuzp1q_s16(vcvtq_s32_f32(v508), vcvtq_s32_f32(v509));
    *v513.i8 = vmovn_s16(v513);
    v514 = ShuffleColorEndpointPair_mapTable[v505];
    *v1414.i8 = vqtbl1_s8(v513, v514);
    v1315 = vmulq_n_f32(v511, v507);
    v1415 = v1315;
    v1342 = vmlaq_n_f32(vnegq_f32(v1315), v512, v507);
    v1348 = v1413;
    v1416 = v1342;
    v515 = vuzp1q_s16(vcvtq_s32_f32(v511), vcvtq_s32_f32(v512));
    *v515.i8 = vmovn_s16(v515);
    *&v1417 = vqtbl1_s8(v515, v514);
  }

  FindWeights_4x4(a1, &v1408, (v396 >> 25) & 0xF, v1407);
  v1365 = v1407[1];
  v1371 = v1407[2];
  v1354 = v1407[3];
  v1360 = v1407[0];
  v1409 = vmvnq_s8(v1394);
  v1408 = vmvnq_s8(v1398);
  v1410 = vmvnq_s8(v1390);
  v1411 = vmvnq_s8(v1385);
  result = FindWeights_4x4(a1, &v1408, (v399 >> 25) & 0xF, &v1403);
  v569 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v1306.i8, v568)), 0x1FuLL));
  v570 = vbslq_s8(v569, v1403, v1360);
  v571 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v1306.i8, *v569.i8)), 0x1FuLL));
  v572 = vbslq_s8(v571, v1404, v1365);
  v573 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v1204, *v571.i8)), 0x1FuLL));
  v574 = vbslq_s8(v573, v1405, v1371);
  v575 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v1204, *v573.i8)), 0x1FuLL)), v1406, v1354);
  v576 = vorrq_s8(vandq_s8(v1283, v1403), vandq_s8(v1335, v1360));
  v577 = vorrq_s8(vandq_s8(v1289, v1404), vandq_s8(v1327, v1365));
  v578 = vorrq_s8(vandq_s8(v1294, v1405), vandq_s8(v1333, v1371));
  v579 = vorrq_s8(vandq_s8(v1299, v1406), vandq_s8(v1330, v1354));
  v580 = vdupq_lane_s32(*v1276.f32, 0);
  v581 = vmlaq_n_f32(v580, v575, v1348.f32[0]);
  v582 = vmlaq_n_f32(v580, v574, v1348.f32[0]);
  v583 = vmlaq_n_f32(v580, v572, v1348.f32[0]);
  v1323 = v580;
  v584 = vmlaq_n_f32(v580, v570, v1348.f32[0]);
  v585 = vdupq_lane_s32(*v1315.f32, 0);
  v586 = vdupq_lane_s32(*v1276.f32, 1);
  v1259 = vmlaq_n_f32(v585, v579, v1342.f32[0]);
  v587 = vmlaq_lane_f32(v586, v575, *v1348.f32, 1);
  v588 = vmlaq_lane_f32(v586, v574, *v1348.f32, 1);
  v589 = vmlaq_lane_f32(v586, v572, *v1348.f32, 1);
  v1300 = v586;
  v590 = vmlaq_lane_f32(v586, v570, *v1348.f32, 1);
  v591 = vdupq_lane_s32(*v1315.f32, 1);
  v1254 = vmlaq_lane_f32(v591, v579, *v1342.f32, 1);
  v592 = vdupq_laneq_s32(v1276, 2);
  v593 = vmlaq_laneq_f32(v592, v575, v1348, 2);
  v594 = vmlaq_laneq_f32(v592, v574, v1348, 2);
  v595 = vmlaq_laneq_f32(v592, v572, v1348, 2);
  v1290 = v592;
  v596 = vdupq_laneq_s32(v1315, 2);
  v597 = vmlaq_laneq_f32(v592, v570, v1348, 2);
  v598 = vdupq_laneq_s32(v1276, 3);
  v599 = vmlaq_laneq_f32(v598, v575, v1348, 3);
  v600 = vmlaq_laneq_f32(v598, v574, v1348, 3);
  v601 = vmlaq_laneq_f32(v598, v572, v1348, 3);
  v1277 = v598;
  v602 = vmlaq_laneq_f32(v598, v570, v1348, 3);
  v603 = vdupq_laneq_s32(v1315, 3);
  v1246 = vmlaq_laneq_f32(v603, v579, v1342, 3);
  v1250 = vmlaq_laneq_f32(v596, v579, v1342, 2);
  v1229 = vmlaq_n_f32(v585, v578, v1342.f32[0]);
  v1234 = vmlaq_lane_f32(v591, v578, *v1342.f32, 1);
  v1240 = vmlaq_laneq_f32(v596, v578, v1342, 2);
  v1243 = vmlaq_laneq_f32(v603, v578, v1342, 3);
  v604 = vmlaq_n_f32(v585, v577, v1342.f32[0]);
  v605 = vmlaq_lane_f32(v591, v577, *v1342.f32, 1);
  v1223 = vmlaq_laneq_f32(v596, v577, v1342, 2);
  v1226 = vmlaq_laneq_f32(v603, v577, v1342, 3);
  v1316 = v585;
  v606 = vmlaq_n_f32(v585, v576, v1342.f32[0]);
  v1295 = v591;
  v607 = vmlaq_lane_f32(v591, v576, *v1342.f32, 1);
  v1284 = v596;
  v608 = vmlaq_laneq_f32(v596, v576, v1342, 2);
  v1270 = v603;
  v609 = vmlaq_laneq_f32(v603, v576, v1342, 3);
  v1216 = *(a1 + 160);
  v1219 = *(a1 + 144);
  v610 = vsubq_f32(v584, v1219);
  v611 = vsubq_f32(v583, v1216);
  v1212 = *(a1 + 176);
  v612 = vsubq_f32(v582, v1212);
  v1205 = *(a1 + 192);
  v613 = vsubq_f32(v581, v1205);
  v1208 = *(a1 + 208);
  v614 = vsubq_f32(v590, v1208);
  v1200 = *(a1 + 224);
  v615 = vsubq_f32(v589, v1200);
  v1198 = *(a1 + 240);
  v616 = vsubq_f32(v588, v1198);
  v1188 = *(a1 + 256);
  v617 = vsubq_f32(v587, v1188);
  v1193 = *(a1 + 272);
  v618 = vsubq_f32(v597, v1193);
  v1184 = *(a1 + 288);
  v619 = vsubq_f32(v595, v1184);
  v620 = *(a1 + 320);
  v1179 = *(a1 + 304);
  v621 = vsubq_f32(v594, v1179);
  v622 = vsubq_f32(v593, v620);
  v623 = *(a1 + 352);
  v1175 = *(a1 + 336);
  v624 = vsubq_f32(v602, v1175);
  v625 = vsubq_f32(v601, v623);
  v626 = *(a1 + 368);
  v627 = *(a1 + 384);
  v628 = vsubq_f32(v600, v626);
  v629 = vsubq_f32(v599, v627);
  v630 = *(a1 + 32);
  v631 = vmulq_f32(v613, v613);
  v632 = vmulq_f32(v612, v612);
  v633 = vmulq_f32(v611, v611);
  v634 = vmulq_f32(v610, v610);
  v635 = vmulq_f32(v617, v617);
  v636 = vmulq_f32(v616, v616);
  v637 = vmulq_f32(v615, v615);
  v638 = vmulq_f32(v614, v614);
  v639 = vmulq_f32(v622, v622);
  v640 = vmulq_f32(v621, v621);
  v641 = vmulq_f32(v619, v619);
  v642 = vmulq_f32(v618, v618);
  v643 = vmulq_f32(v629, v629);
  v644 = vmulq_f32(v628, v628);
  v645 = vmulq_f32(v625, v625);
  v646 = vmulq_f32(v624, v624);
  if (v630)
  {
    v647 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v635, *v630, 1), v631, COERCE_FLOAT(*v630->f32)), v639, *v630->f32, 2), v643, *v630->f32, 3);
    v648 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v637, *v630, 1), v633, COERCE_FLOAT(*v630->f32)), v641, *v630->f32, 2), v645, *v630->f32, 3), v1264);
    v649 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v638, *v630, 1), v634, COERCE_FLOAT(*v630->f32)), v642, *v630->f32, 2), v646, *v630->f32, 3), v1264);
    v650 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v636, *v630, 1), v632, COERCE_FLOAT(*v630->f32)), v640, *v630->f32, 2), v644, *v630->f32, 3), v1264);
    v651 = vmulq_f32(v647, v1264);
  }

  else
  {
    v652 = vaddq_f32(v632, v636);
    v653 = vaddq_f32(vaddq_f32(v631, v635), v639);
    v654 = vaddq_f32(vaddq_f32(v633, v637), v641);
    v649 = vaddq_f32(vaddq_f32(vaddq_f32(v634, v638), v642), v646);
    v648 = vaddq_f32(v654, v645);
    v650 = vaddq_f32(vaddq_f32(v652, v640), v644);
    v651 = vaddq_f32(v653, v643);
  }

  v655 = vsubq_f32(v1259, v1205);
  v656 = HIDWORD(v399);
  v657 = vsubq_f32(v1229, v1212);
  v658 = vsubq_f32(v604, v1216);
  v659 = vsubq_f32(v606, v1219);
  v660 = vsubq_f32(v1254, v1188);
  v661 = vsubq_f32(v1234, v1198);
  v662 = vsubq_f32(v605, v1200);
  v663 = vsubq_f32(v607, v1208);
  v664 = vsubq_f32(v1250, v620);
  v665 = vsubq_f32(v1240, v1179);
  v666 = vsubq_f32(v1223, v1184);
  v667 = vsubq_f32(v608, v1193);
  v668 = vsubq_f32(v1246, v627);
  v669 = vsubq_f32(v1243, v626);
  v670 = vsubq_f32(v1226, v623);
  v671 = vsubq_f32(v609, v1175);
  v672 = vmulq_f32(v659, v659);
  v673 = vmulq_f32(v658, v658);
  v674 = vmulq_f32(v657, v657);
  v675 = vmulq_f32(v655, v655);
  v676 = vmulq_f32(v663, v663);
  v677 = vmulq_f32(v662, v662);
  v678 = vmulq_f32(v661, v661);
  v679 = vmulq_f32(v660, v660);
  v680 = vmulq_f32(v667, v667);
  v681 = vmulq_f32(v666, v666);
  v682 = vmulq_f32(v665, v665);
  v683 = vmulq_f32(v664, v664);
  v684 = vmulq_f32(v671, v671);
  v685 = vmulq_f32(v670, v670);
  v686 = vmulq_f32(v669, v669);
  v687 = vmulq_f32(v668, v668);
  if (v630)
  {
    v688 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v677, *v630, 1), v673, COERCE_FLOAT(*v630->f32)), v681, *v630->f32, 2), v685, *v630->f32, 3), v1264);
    v689 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v676, *v630, 1), v672, COERCE_FLOAT(*v630->f32)), v680, *v630->f32, 2), v684, *v630->f32, 3), v1264);
    v690 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v678, *v630, 1), v674, COERCE_FLOAT(*v630->f32)), v682, *v630->f32, 2), v686, *v630->f32, 3), v1264);
    v691 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v679, *v630, 1), v675, COERCE_FLOAT(*v630->f32)), v683, *v630->f32, 2), v687, *v630->f32, 3), v1264);
  }

  else
  {
    v689 = vaddq_f32(vaddq_f32(vaddq_f32(v672, v676), v680), v684);
    v688 = vaddq_f32(vaddq_f32(vaddq_f32(v673, v677), v681), v685);
    v690 = vaddq_f32(vaddq_f32(vaddq_f32(v674, v678), v682), v686);
    v691 = vaddq_f32(vaddq_f32(vaddq_f32(v675, v679), v683), v687);
  }

  v692 = vdupq_lane_s32(*v1348.f32, 0);
  v693 = vdupq_lane_s32(*v1342.f32, 0);
  v694 = vdupq_lane_s32(*v1348.f32, 1);
  v695 = vdupq_lane_s32(*v1342.f32, 1);
  v696 = vdupq_laneq_s32(v1348, 2);
  v697 = vdupq_laneq_s32(v1342, 2);
  v698 = vdupq_laneq_s32(v1342, 3);
  v1343 = vdupq_laneq_s32(v1348, 3);
  v1349 = v698;
  v699 = vaddvq_s16(vorrq_s8(vandq_s8(vuzp1q_s16(vcgtq_f32(v649, v689), vcgtq_f32(v648, v688)), xmmword_298495650), vandq_s8(vuzp1q_s16(vcgtq_f32(v650, v690), vcgtq_f32(v651, v691)), xmmword_298495640)));
  v700 = *a3;
  if (a3[1] == v699)
  {
    v701 = v1398;
    v702 = v1390;
    v703 = v1394;
    v704 = v1354;
  }

  else
  {
    v1247 = v693;
    v1251 = v692;
    v1255 = v695;
    v1260 = v694;
    v1375 = v697;
    v1380 = v696;
    result = GetDualPartitionPatterns(v699, v1418);
    v706 = 0;
    v707 = 0;
    v708 = a3[1];
    v709 = v708;
    v701 = v1398;
    v702 = v1390;
    v703 = v1394;
    v704 = v1354;
    do
    {
      v710 = HIWORD(v1418[v706]);
      _ZF = v710 != v708 && ((v710 ^ v708) & (v708 ^ ~v699 | 0xFFFF0000)) == 0;
      v705.i32[0] = v710 ^ v708;
      v705 = vcnt_s8(v705);
      v705.i16[0] = vaddlv_u8(v705);
      if (_ZF && v705.i32[0] > v707)
      {
        v700 = LOWORD(v1418[v706]);
        v709 = HIWORD(v1418[v706]);
        v707 = v705.i32[0];
      }

      ++v706;
    }

    while (v706 != 3);
    if (v707)
    {
      v1399 = *(VectorMaskForBitMask + ((v709 >> 8) & 0xF0));
      v1391 = *(VectorMaskForBitMask + (v709 & 0xF0));
      v1395 = *(VectorMaskForBitMask + ((v709 >> 4) & 0xF0));
      v1411 = VectorMaskForBitMask[v709 & 0xF];
      v1385 = v1411;
      v1410 = v1391;
      v1409 = v1395;
      v1408 = v1399;
      result = FindWeights_4x4(a1, &v1408, (v399 >> 25) & 0xF, v1402);
      v702 = v1391;
      v703 = v1395;
      v701 = v1399;
      v704 = v1402[3];
      v1365 = v1402[1];
      v1371 = v1402[2];
      v1360 = v1402[0];
      v1330 = vcltzq_s32(v1385);
      v1333 = vcltzq_s32(v1391);
      v1335 = vcltzq_s32(v1399);
      v1327 = vcltzq_s32(v1395);
      v1306 = vuzp1q_s8(vuzp1q_s16(v1335, v1327), vuzp1q_s16(v1333, v1330));
    }

    v630 = *(a1 + 32);
    v656 = HIDWORD(v399);
    v697 = v1375;
    v696 = v1380;
    v695 = v1255;
    v694 = v1260;
    v693 = v1247;
    v692 = v1251;
  }

  v713 = vextq_s8(v1306, v1306, 8uLL).u64[0];
  v714 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v713, v713)), 0x1FuLL));
  v715 = vshlq_n_s32(vmovl_u16(vzip1_s8(v713, v713)), 0x1FuLL);
  v716 = vcltzq_s32(v715);
  v717 = vshlq_n_s32(vmovl_u16(vzip1_s8(*v1306.i8, *v715.i8)), 0x1FuLL);
  v718 = vcltzq_s32(v717);
  v719 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v1306.i8, *v717.i8)), 0x1FuLL));
  v1400 = vbslq_s8(v714, v1316, v1323);
  v1376 = vbslq_s8(v716, v1316, v1323);
  v1355 = vbslq_s8(v718, v1316, v1323);
  v720 = vbslq_s8(v719, v1316, v1323);
  v1324 = vbslq_s8(v714, v693, v692);
  v1317 = vbslq_s8(v716, v693, v692);
  v1261 = vbslq_s8(v718, v693, v692);
  v721 = vbslq_s8(v719, v693, v692);
  v1396 = vbslq_s8(v714, v1295, v1300);
  v1392 = vbslq_s8(v716, v1295, v1300);
  v722 = vbslq_s8(v718, v1295, v1300);
  v723 = vbslq_s8(v719, v1295, v1300);
  v1307 = vbslq_s8(v714, v695, v694);
  v724 = vbslq_s8(v716, v695, v694);
  v725 = vbslq_s8(v718, v695, v694);
  v726 = vbslq_s8(v719, v695, v694);
  v1381 = vbslq_s8(v714, v1284, v1290);
  v727 = vbslq_s8(v716, v1284, v1290);
  v728 = vbslq_s8(v718, v1284, v1290);
  v729 = vbslq_s8(v719, v1284, v1290);
  v730 = vbslq_s8(v714, v697, v696);
  v731 = vbslq_s8(v716, v697, v696);
  v732 = vbslq_s8(v718, v697, v696);
  v733 = vbslq_s8(v719, v697, v696);
  v734 = vbslq_s8(v714, v1270, v1277);
  v735 = vbslq_s8(v716, v1270, v1277);
  v736 = vbslq_s8(v718, v1270, v1277);
  v737 = vbslq_s8(v719, v1270, v1277);
  v738 = v656;
  v739 = vorrq_s8(vandq_s8(v1330, v1349), vandq_s8(vcgezq_s32(v1385), v1343));
  v740 = vorrq_s8(vandq_s8(v1333, v1349), vandq_s8(vcgezq_s32(v702), v1343));
  v741 = vorrq_s8(vandq_s8(v1335, v1349), vandq_s8(vcgezq_s32(v701), v1343));
  v742 = vorrq_s8(vandq_s8(v1327, v1349), vandq_s8(vcgezq_s32(v703), v1343));
  v743 = vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v1365, 0), v1312), v738));
  v744 = vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v1360, 0), v1312), v738));
  v745 = vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v1371, 0), v1312), v738));
  v746 = vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v704, 0), v1312), v738));
  *v714.i32 = ReciprocalTable[BYTE4(v399)];
  v747 = vmulq_n_f32(v746, *v714.i32);
  v748 = vmulq_n_f32(v745, *v714.i32);
  v749 = vmulq_n_f32(v744, *v714.i32);
  v750 = vmulq_n_f32(v743, *v714.i32);
  if (v630)
  {
    v1312 = vmulq_f32(*v630->f32, v1264);
  }

  v751 = vmlaq_f32(v720, v750, v721);
  v752 = vmlaq_f32(v723, v750, v726);
  v753 = vmlaq_f32(v729, v750, v733);
  v754 = vmlaq_f32(v737, v750, v742);
  v755 = vmlaq_f32(v1355, v749, v1261);
  v756 = vmlaq_f32(v722, v749, v725);
  v757 = vmlaq_f32(v728, v749, v732);
  v758 = vmlaq_f32(v736, v749, v741);
  v759 = vmlaq_f32(v1376, v748, v1317);
  v760 = vmlaq_f32(v1392, v748, v724);
  v761 = vmlaq_f32(v727, v748, v731);
  v762 = vmlaq_f32(v735, v748, v740);
  v763 = vmlaq_f32(v1400, v747, v1324);
  v764 = v1307;
  v765 = vmlaq_f32(v1396, v747, v1307);
  v766 = vmlaq_f32(v1381, v747, v730);
  v767 = vmlaq_f32(v734, v747, v739);
  v768 = a1;
  do
  {
    v769 = v768;
    v768 = v768[2].i64[1];
  }

  while (v768);
  v770 = v769[8].u16[2];
  if (v770 == 392)
  {
    v1393 = v746;
    v1397 = v745;
    v1334 = v744;
    v1401 = v743;
    v820 = vzip1q_s32(v755, v755);
    v820.i32[2] = v755.i32[0];
    v821 = v755;
    v822 = v820;
    v823 = vdupq_lane_s32(*v821.i8, 1);
    v823.i32[3] = v821.i32[2];
    v1308 = v823;
    v824 = vmlaq_f32(vmulq_f32(v823, xmmword_298495A30), xmmword_298495A60, v822);
    v825 = v822;
    v1301 = v822;
    v826 = v751;
    v827 = vzip1q_s32(v751, v751);
    v827.i32[2] = v751.i32[0];
    v828 = vdupq_lane_s32(*v751.f32, 1);
    v828.i32[3] = v826.i32[2];
    v829 = v752;
    v830 = v753;
    v1331 = vmlaq_f32(vmlaq_f32(v824, xmmword_298495A70, v827), xmmword_298495AA0, v828);
    v1328 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1308, xmmword_298495AB0), xmmword_298495AE0, v825), xmmword_298495AF0, v827), xmmword_298495B20, v828);
    v831 = vmlaq_f32(vmulq_f32(v828, xmmword_298495B30), xmmword_298495B60, v827);
    v832 = v756;
    v833 = vmlaq_f32(vmulq_f32(v828, xmmword_298495BA0), xmmword_298495B70, v827);
    v834 = vzip1q_s32(v759, v759);
    v834.i32[2] = v759.i32[0];
    v835 = vdupq_lane_s32(*v759.f32, 1);
    v835.i32[3] = v759.i32[2];
    v1318 = vmlaq_f32(vmlaq_f32(v833, xmmword_298495B60, v834), xmmword_298495B30, v835);
    v1325 = vmlaq_f32(vmlaq_f32(v831, xmmword_298495B70, v834), xmmword_298495BA0, v835);
    v1387 = vmlaq_f32(vmulq_f32(v835, xmmword_298495B20), xmmword_298495AF0, v834);
    v836 = vzip1q_s32(v832, v832);
    v836.i32[2] = v756.i32[0];
    v1382 = vmlaq_f32(vmulq_f32(v835, xmmword_298495AA0), xmmword_298495A70, v834);
    v837 = vdupq_lane_s32(*v756.f32, 1);
    v837.i32[3] = v756.i32[2];
    v1265 = v836;
    v1271 = v837;
    v838 = vzip1q_s32(v829, v829);
    v838.i32[2] = v829.i32[0];
    v839 = vdupq_lane_s32(*v829.i8, 1);
    v839.i32[3] = v829.i32[2];
    v1296 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v837, xmmword_298495A30), xmmword_298495A60, v836), xmmword_298495A70, v838), xmmword_298495AA0, v839);
    v1291 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v837, xmmword_298495AB0), xmmword_298495AE0, v836), xmmword_298495AF0, v838), xmmword_298495B20, v839);
    v840 = vmlaq_f32(vmulq_f32(v839, xmmword_298495B30), xmmword_298495B60, v838);
    v841 = vmlaq_f32(vmulq_f32(v839, xmmword_298495BA0), xmmword_298495B70, v838);
    v842 = vzip1q_s32(v760, v760);
    v842.i32[2] = v760.i32[0];
    v843 = vdupq_lane_s32(*v760.f32, 1);
    v843.i32[3] = v760.i32[2];
    v1278 = vmlaq_f32(vmlaq_f32(v841, xmmword_298495B60, v842), xmmword_298495B30, v843);
    v1285 = vmlaq_f32(vmlaq_f32(v840, xmmword_298495B70, v842), xmmword_298495BA0, v843);
    v1372 = vmlaq_f32(vmulq_f32(v843, xmmword_298495AA0), xmmword_298495A70, v842);
    v1377 = vmlaq_f32(vmulq_f32(v843, xmmword_298495B20), xmmword_298495AF0, v842);
    v844 = vzip1q_s32(v757, v757);
    v844.i32[2] = v757.i32[0];
    v845 = vdupq_lane_s32(*v757.f32, 1);
    v845.i32[3] = v757.i32[2];
    v846 = v845;
    v1235 = v844;
    v1241 = v845;
    v847 = vmlaq_f32(vmulq_f32(v845, xmmword_298495A30), xmmword_298495A60, v844);
    v848 = v844;
    v849 = vzip1q_s32(v830, v830);
    v849.i32[2] = v753.i32[0];
    v850 = vdupq_lane_s32(*v753.f32, 1);
    v850.i32[3] = v753.i32[2];
    v1262 = vmlaq_f32(vmlaq_f32(v847, xmmword_298495A70, v849), xmmword_298495AA0, v850);
    v1256 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v846, xmmword_298495AB0), xmmword_298495AE0, v848), xmmword_298495AF0, v849), xmmword_298495B20, v850);
    v851 = vmlaq_f32(vmulq_f32(v850, xmmword_298495B30), xmmword_298495B60, v849);
    v852 = vmlaq_f32(vmulq_f32(v850, xmmword_298495BA0), xmmword_298495B70, v849);
    v853 = vzip1q_s32(v761, v761);
    v853.i32[2] = v761.i32[0];
    v854 = vdupq_lane_s32(*v761.f32, 1);
    v854.i32[3] = v761.i32[2];
    v1244 = vmlaq_f32(vmlaq_f32(v852, xmmword_298495B60, v853), xmmword_298495B30, v854);
    v1248 = vmlaq_f32(vmlaq_f32(v851, xmmword_298495B70, v853), xmmword_298495BA0, v854);
    v1366 = vmlaq_f32(vmulq_f32(v854, xmmword_298495B20), xmmword_298495AF0, v853);
    v855 = vzip1q_s32(v758, v758);
    v855.i32[2] = v758.i32[0];
    v856 = vdupq_lane_s32(*v758.f32, 1);
    v1361 = vmlaq_f32(vmulq_f32(v854, xmmword_298495AA0), xmmword_298495A70, v853);
    v856.i32[3] = v758.i32[2];
    v857 = vmlaq_f32(vmulq_f32(v856, xmmword_298495A30), xmmword_298495A60, v855);
    v858 = v855;
    v1209 = v855;
    v859 = vzip1q_s32(v754, v754);
    v859.i32[2] = v754.i32[0];
    v860 = vdupq_lane_s32(*v754.f32, 1);
    v860.i32[3] = v754.i32[2];
    v1230 = vmlaq_f32(vmlaq_f32(v857, xmmword_298495A70, v859), xmmword_298495AA0, v860);
    v1224 = v856;
    v1227 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v856, xmmword_298495AB0), xmmword_298495AE0, v858), xmmword_298495AF0, v859), xmmword_298495B20, v860);
    v861 = vmlaq_f32(vmulq_f32(v860, xmmword_298495B30), xmmword_298495B60, v859);
    v862 = vzip1q_s32(v762, v762);
    v862.i32[2] = v762.i32[0];
    v863 = vmlaq_f32(vmulq_f32(v860, xmmword_298495BA0), xmmword_298495B70, v859);
    v864 = vdupq_lane_s32(*v762.f32, 1);
    v864.i32[3] = v762.i32[2];
    v1213 = vmlaq_f32(vmlaq_f32(v863, xmmword_298495B60, v862), xmmword_298495B30, v864);
    v1217 = vmlaq_f32(vmlaq_f32(v861, xmmword_298495B70, v862), xmmword_298495BA0, v864);
    v1356 = vmlaq_f32(vmulq_f32(v864, xmmword_298495B20), xmmword_298495AF0, v862);
    v1350 = vmlaq_f32(vmulq_f32(v864, xmmword_298495AA0), xmmword_298495A70, v862);
    v865 = vzip2q_s32(vextq_s8(v821, v821, 0xCuLL), v821);
    v1170 = vextq_s8(v821, vdupq_laneq_s32(v821, 3), 8uLL);
    v866 = vzip2q_s32(vextq_s8(v826, v826, 0xCuLL), v826);
    v867 = vextq_s8(v826, vdupq_laneq_s32(v826, 3), 8uLL);
    v868 = vzip2q_s32(vextq_s8(v759, v759, 0xCuLL), v759);
    v869 = vextq_s8(v759, vdupq_laneq_s32(v759, 3), 8uLL);
    v870 = v758;
    v871 = v763;
    v1194 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1170, xmmword_298495A40), xmmword_298495A50, v865), xmmword_298495A80, v866), xmmword_298495A90, v867);
    v1189 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1170, xmmword_298495AC0), xmmword_298495AD0, v865), xmmword_298495B00, v866), xmmword_298495B10, v867);
    v1180 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v867, xmmword_298495B90), xmmword_298495B80, v866), xmmword_298495B50, v868), xmmword_298495B40, v869);
    v1185 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v867, xmmword_298495B40), xmmword_298495B50, v866), xmmword_298495B80, v868), xmmword_298495B90, v869);
    v1336 = vmlaq_f32(vmulq_f32(v869, xmmword_298495B10), xmmword_298495B00, v868);
    v1344 = vmlaq_f32(vmulq_f32(v869, xmmword_298495A90), xmmword_298495A80, v868);
    v1167 = vzip2q_s32(vextq_s8(v832, v832, 0xCuLL), v756);
    v872 = vextq_s8(v756, vdupq_laneq_s32(v756, 3), 8uLL);
    v873 = vzip2q_s32(vextq_s8(v829, v829, 0xCuLL), v829);
    v874 = vextq_s8(v829, vdupq_laneq_s32(v829, 3), 8uLL);
    v875 = vzip2q_s32(vextq_s8(v760, v760, 0xCuLL), v760);
    v876 = vextq_s8(v760, vdupq_laneq_s32(v760, 3), 8uLL);
    v1176 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v872, xmmword_298495A40), xmmword_298495A50, v1167), xmmword_298495A80, v873), xmmword_298495A90, v874);
    v1162 = v872;
    v1165 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v872, xmmword_298495AC0), xmmword_298495AD0, v1167), xmmword_298495B00, v873), xmmword_298495B10, v874);
    v877 = v761;
    v1142 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v874, xmmword_298495B40), xmmword_298495B50, v873), xmmword_298495B80, v875), xmmword_298495B90, v876);
    v1143 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v874, xmmword_298495B90), xmmword_298495B80, v873), xmmword_298495B50, v875), xmmword_298495B40, v876);
    v878 = vmlaq_f32(vmulq_f32(v876, xmmword_298495B10), xmmword_298495B00, v875);
    v879 = v766;
    v880 = vmlaq_f32(vmulq_f32(v876, xmmword_298495A90), xmmword_298495A80, v875);
    v1155 = vextq_s8(v757, vdupq_laneq_s32(v757, 3), 8uLL);
    v1159 = vzip2q_s32(vextq_s8(v757, v757, 0xCuLL), v757);
    v881 = vzip2q_s32(vextq_s8(v830, v830, 0xCuLL), v830);
    v882 = vextq_s8(v830, vdupq_laneq_s32(v830, 3), 8uLL);
    v883 = vzip2q_s32(vextq_s8(v877, v877, 0xCuLL), v877);
    v884 = vextq_s8(v877, vdupq_laneq_s32(v877, 3), 8uLL);
    v885 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1155, xmmword_298495A40), xmmword_298495A50, v1159), xmmword_298495A80, v881), xmmword_298495A90, v882);
    v886 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1155, xmmword_298495AC0), xmmword_298495AD0, v1159), xmmword_298495B00, v881), xmmword_298495B10, v882);
    v887 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v882, xmmword_298495B40), xmmword_298495B50, v881), xmmword_298495B80, v883), xmmword_298495B90, v884);
    v888 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v882, xmmword_298495B90), xmmword_298495B80, v881), xmmword_298495B50, v883), xmmword_298495B40, v884);
    v889 = vmlaq_f32(vmulq_f32(v884, xmmword_298495B10), xmmword_298495B00, v883);
    v890 = vmlaq_f32(vmulq_f32(v884, xmmword_298495A90), xmmword_298495A80, v883);
    v1149 = vzip2q_s32(vextq_s8(v870, v870, 0xCuLL), v870);
    v1152 = vextq_s8(v870, vdupq_laneq_s32(v870, 3), 8uLL);
    v891 = vzip2q_s32(vextq_s8(v754, v754, 0xCuLL), v754);
    v892 = vextq_s8(v754, vdupq_laneq_s32(v754, 3), 8uLL);
    v893 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1152, xmmword_298495A40), xmmword_298495A50, v1149), xmmword_298495A80, v891), xmmword_298495A90, v892);
    v894 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1152, xmmword_298495AC0), xmmword_298495AD0, v1149), xmmword_298495B00, v891), xmmword_298495B10, v892);
    v895 = vmlaq_f32(vmulq_f32(v892, xmmword_298495B40), xmmword_298495B50, v891);
    v896 = vmlaq_f32(vmulq_f32(v892, xmmword_298495B90), xmmword_298495B80, v891);
    v897 = vzip2q_s32(vextq_s8(v762, v762, 0xCuLL), v762);
    v898 = vextq_s8(v762, vdupq_laneq_s32(v762, 3), 8uLL);
    v899 = vmlaq_f32(vmlaq_f32(v895, xmmword_298495B80, v897), xmmword_298495B90, v898);
    v900 = vmlaq_f32(vmlaq_f32(v896, xmmword_298495B50, v897), xmmword_298495B40, v898);
    v901 = vmlaq_f32(vmulq_f32(v898, xmmword_298495B10), xmmword_298495B00, v897);
    v902 = vmlaq_f32(vmulq_f32(v898, xmmword_298495A90), xmmword_298495A80, v897);
    v1252 = vmlaq_f32(vmulq_f32(v1308, xmmword_2984959F0), xmmword_298495A20, v1301);
    v903 = vzip1q_s32(v871, v871);
    v903.i32[2] = v871.i32[0];
    v904 = vdupq_lane_s32(*v871.i8, 1);
    v904.i32[3] = v871.i32[2];
    v1388 = vmlaq_f32(vmlaq_f32(v1387, xmmword_298495AE0, v903), xmmword_298495AB0, v904);
    v1383 = vmlaq_f32(vmlaq_f32(v1382, xmmword_298495A60, v903), xmmword_298495A30, v904);
    v1302 = vmlaq_f32(vmulq_f32(v904, xmmword_2984959F0), xmmword_298495A20, v903);
    v905 = vzip1q_s32(v765, v765);
    v905.i32[2] = v765.i32[0];
    v906 = vdupq_lane_s32(*v765.f32, 1);
    v906.i32[3] = v765.i32[2];
    v1378 = vmlaq_f32(vmlaq_f32(v1377, xmmword_298495AE0, v905), xmmword_298495AB0, v906);
    v1373 = vmlaq_f32(vmlaq_f32(v1372, xmmword_298495A60, v905), xmmword_298495A30, v906);
    v1309 = vmlaq_f32(vmulq_f32(v906, xmmword_2984959F0), xmmword_298495A20, v905);
    v907 = vmlaq_f32(vmulq_f32(v1241, xmmword_2984959F0), xmmword_298495A20, v1235);
    v908 = vzip1q_s32(v879, v879);
    v908.i32[2] = v879.i32[0];
    v909 = vdupq_lane_s32(*v879.i8, 1);
    v909.i32[3] = v879.i32[2];
    v1367 = vmlaq_f32(vmlaq_f32(v1366, xmmword_298495AE0, v908), xmmword_298495AB0, v909);
    v1362 = vmlaq_f32(vmlaq_f32(v1361, xmmword_298495A60, v908), xmmword_298495A30, v909);
    v1141 = vmlaq_f32(vmulq_f32(v909, xmmword_2984959F0), xmmword_298495A20, v908);
    v1140 = vmlaq_f32(vmulq_f32(v1224, xmmword_2984959F0), xmmword_298495A20, v1209);
    v910 = vzip1q_s32(v767, v767);
    v910.i32[2] = v767.i32[0];
    v911 = vdupq_lane_s32(*v767.f32, 1);
    v911.i32[3] = v767.i32[2];
    v1357 = vmlaq_f32(vmlaq_f32(v1356, xmmword_298495AE0, v910), xmmword_298495AB0, v911);
    v1351 = vmlaq_f32(vmlaq_f32(v1350, xmmword_298495A60, v910), xmmword_298495A30, v911);
    v912 = vmlaq_f32(vmulq_f32(v911, xmmword_2984959F0), xmmword_298495A20, v910);
    v913 = vzip2q_s32(vextq_s8(v871, v871, 0xCuLL), v871);
    v914 = vextq_s8(v871, vdupq_laneq_s32(v871, 3), 8uLL);
    v1337 = vmlaq_f32(vmlaq_f32(v1336, xmmword_298495AD0, v913), xmmword_298495AC0, v914);
    v1345 = vmlaq_f32(vmlaq_f32(v1344, xmmword_298495A50, v913), xmmword_298495A40, v914);
    v915 = vmlaq_f32(vmulq_f32(v914, xmmword_298495A00), xmmword_298495A10, v913);
    v916 = vmlaq_f32(vmulq_f32(v1162, xmmword_298495A00), xmmword_298495A10, v1167);
    v917 = vzip2q_s32(vextq_s8(v765, v765, 0xCuLL), v765);
    v918 = vextq_s8(v765, vdupq_laneq_s32(v765, 3), 8uLL);
    v919 = vmlaq_f32(vmlaq_f32(v878, xmmword_298495AD0, v917), xmmword_298495AC0, v918);
    v920 = vmlaq_f32(vmlaq_f32(v880, xmmword_298495A50, v917), xmmword_298495A40, v918);
    v921 = vmlaq_f32(vmulq_f32(v918, xmmword_298495A00), xmmword_298495A10, v917);
    v922 = vmlaq_f32(vmulq_f32(v1155, xmmword_298495A00), xmmword_298495A10, v1159);
    v923 = vzip2q_s32(vextq_s8(v879, v879, 0xCuLL), v879);
    v924 = vextq_s8(v879, vdupq_laneq_s32(v879, 3), 8uLL);
    v925 = vmlaq_f32(vmlaq_f32(v889, xmmword_298495AD0, v923), xmmword_298495AC0, v924);
    v926 = vmlaq_f32(vmlaq_f32(v890, xmmword_298495A50, v923), xmmword_298495A40, v924);
    v927 = vmlaq_f32(vmulq_f32(v924, xmmword_298495A00), xmmword_298495A10, v923);
    v928 = vmlaq_f32(vmulq_f32(v1152, xmmword_298495A00), xmmword_298495A10, v1149);
    v929 = vzip2q_s32(vextq_s8(v767, v767, 0xCuLL), v767);
    v930 = vextq_s8(v767, vdupq_laneq_s32(v767, 3), 8uLL);
    v931 = vmlaq_f32(vmlaq_f32(v901, xmmword_298495AD0, v929), xmmword_298495AC0, v930);
    v932 = vmlaq_f32(vmlaq_f32(v902, xmmword_298495A50, v929), xmmword_298495A40, v930);
    v933 = vmlaq_f32(vmulq_f32(v930, xmmword_298495A00), xmmword_298495A10, v929);
    v934 = vdupq_n_s32(0x3D800000u);
    v935 = vmulq_f32(vmlaq_f32(vmulq_f32(v1170, xmmword_298495A00), xmmword_298495A10, v865), v934);
    v936 = vmulq_f32(v1252, v934);
    v937 = vmulq_f32(v1194, v934);
    v938 = vmulq_f32(v1331, v934);
    v939 = vmulq_f32(v1189, v934);
    v1139 = vmulq_f32(v1328, v934);
    v940 = vmulq_f32(v1325, v934);
    v1150 = vmulq_f32(v1180, v934);
    v1145 = vmulq_f32(v1185, v934);
    v1147 = vmulq_f32(v1318, v934);
    v1153 = vmulq_f32(v1388, v934);
    v1156 = vmulq_f32(v1337, v934);
    v1160 = vmulq_f32(v1383, v934);
    v1163 = vmulq_f32(v1345, v934);
    v1389 = vmulq_f32(v915, v934);
    v1168 = vmulq_f32(v1302, v934);
    v1171 = vmulq_f32(vmlaq_f32(vmulq_f32(v1271, xmmword_2984959F0), xmmword_298495A20, v1265), v934);
    v941 = vmulq_f32(v1176, v934);
    v1173 = vmulq_f32(v916, v934);
    v1177 = vmulq_f32(v1296, v934);
    v1181 = v941;
    v1186 = vmulq_f32(v1165, v934);
    v1166 = vmulq_f32(v1291, v934);
    v1190 = vmulq_f32(v1285, v934);
    v1195 = vmulq_f32(v1142, v934);
    v1199 = vmulq_f32(v1278, v934);
    v1201 = vmulq_f32(v1143, v934);
    v1206 = vmulq_f32(v1378, v934);
    v1210 = vmulq_f32(v919, v934);
    v1220 = vmulq_f32(v1373, v934);
    v1225 = vmulq_f32(v920, v934);
    v1236 = vmulq_f32(v1309, v934);
    v1242 = vmulq_f32(v921, v934);
    v1253 = vmulq_f32(v907, v934);
    v1266 = vmulq_f32(v922, v934);
    v1272 = vmulq_f32(v1262, v934);
    v1279 = vmulq_f32(v885, v934);
    v1286 = vmulq_f32(v1256, v934);
    v1292 = vmulq_f32(v886, v934);
    v1297 = vmulq_f32(v887, v934);
    v942 = vmulq_f32(v1248, v934);
    v1310 = vmulq_f32(v888, v934);
    v1303 = vmulq_f32(v1244, v934);
    v943 = vmulq_f32(v925, v934);
    v1329 = vmulq_f32(v926, v934);
    v1319 = vmulq_f32(v1367, v934);
    v1326 = vmulq_f32(v1362, v934);
    v944 = vmulq_f32(v927, v934);
    v1332 = vmulq_f32(v1141, v934);
    v1338 = vmulq_f32(v928, v934);
    v1346 = vmulq_f32(v1140, v934);
    v1363 = vmulq_f32(v1230, v934);
    v1368 = vmulq_f32(v893, v934);
    v1374 = vmulq_f32(v894, v934);
    v1379 = vmulq_f32(v1227, v934);
    v945 = vmulq_f32(v899, v934);
    v1384 = vmulq_f32(v1217, v934);
    v946 = vmulq_f32(v900, v934);
    v947 = vmulq_f32(v1213, v934);
    v948 = vmulq_f32(v931, v934);
    v949 = vmulq_f32(v1357, v934);
    v1358 = vmulq_f32(v932, v934);
    v950 = vmulq_f32(v1351, v934);
    v951 = vmulq_f32(v933, v934);
    v952 = vmulq_f32(v912, v934);
    v953 = v769 + 17;
    if (*(a1 + 135))
    {
      v1257 = v949;
      v954 = v769[58];
      v955 = vmulq_f32(vsubq_f32(v935, v769[10]), v954);
      v956 = vmulq_f32(v955, v955);
      v1231 = v945;
      v958 = v769[59];
      v957 = v769[60];
      v959 = vmulq_f32(vsubq_f32(v937, v769[12]), v957);
      v960 = vmlaq_f32(v956, v959, v959);
      v961 = v769[57];
      v962 = vmulq_f32(vsubq_f32(v936, v769[9]), v961);
      v963 = vmulq_f32(v962, v962);
      v964 = vmulq_f32(vsubq_f32(v938, v769[11]), v958);
      v965 = vmlaq_f32(v963, v964, v964);
      v967 = v769[62];
      v966 = v769[63];
      v968 = vmulq_f32(vsubq_f32(v939, v769[14]), v967);
      v1245 = v946;
      v969 = v769[64];
      v970 = vmulq_f32(vsubq_f32(v1145, v769[16]), v969);
      v971 = vmlaq_f32(vmulq_f32(v968, v968), v970, v970);
      v1214 = v942;
      v972 = v769[61];
      v973 = vmulq_f32(vsubq_f32(v1139, v769[13]), v972);
      v974 = vmulq_f32(v973, v973);
      v975 = vmulq_f32(vsubq_f32(v940, v769[15]), v966);
      v976 = vmlaq_f32(v974, v975, v975);
      v977 = v769[66];
      v978 = v769[67];
      v979 = vmulq_f32(vsubq_f32(v1150, v769[18]), v977);
      v1352 = v950;
      v980 = v769[68];
      v981 = vmulq_f32(vsubq_f32(v1156, v769[20]), v980);
      v982 = vmlaq_f32(vmulq_f32(v979, v979), v981, v981);
      v1157 = v943;
      v983 = v769[65];
      v984 = vmulq_f32(vsubq_f32(v1147, *v953), v983);
      v985 = vmulq_f32(v984, v984);
      v986 = vmulq_f32(vsubq_f32(v1153, v769[19]), v978);
      v987 = vmlaq_f32(v985, v986, v986);
      v988 = v951;
      v1249 = v947;
      v989 = v769[70];
      v990 = vmulq_f32(vsubq_f32(v1163, v769[22]), v989);
      v991 = vmulq_f32(v990, v990);
      v992 = v769[71];
      v993 = v769[72];
      v994 = vmulq_f32(vsubq_f32(v1389, v769[24]), v993);
      v995 = vmlaq_f32(v991, v994, v994);
      v1263 = v952;
      v996 = v769[69];
      v997 = vmulq_f32(vsubq_f32(v1160, v769[21]), v996);
      v998 = vmulq_f32(vsubq_f32(v1168, v769[23]), v992);
      v807 = vpaddq_f32(v965, v960);
      v806 = vpaddq_f32(v976, v971);
      v999 = vpaddq_f32(v987, v982);
      v1386 = vpaddq_f32(vmlaq_f32(vmulq_f32(v997, v997), v998, v998), v995);
      v1000 = vmulq_f32(v954, vsubq_f32(v1173, v769[26]));
      v1001 = vmulq_f32(v957, vsubq_f32(v1181, v769[28]));
      v1002 = vmlaq_f32(vmulq_f32(v1000, v1000), v1001, v1001);
      v1003 = vmulq_f32(v961, vsubq_f32(v1171, v769[25]));
      v1004 = vmulq_f32(v958, vsubq_f32(v1177, v769[27]));
      v1005 = vmlaq_f32(vmulq_f32(v1003, v1003), v1004, v1004);
      v1006 = vmulq_f32(v967, vsubq_f32(v1186, v769[30]));
      v1007 = vmulq_f32(v969, vsubq_f32(v1195, v769[32]));
      v1008 = vmlaq_f32(vmulq_f32(v1006, v1006), v1007, v1007);
      v1009 = vmulq_f32(v972, vsubq_f32(v1166, v769[29]));
      v1010 = vmulq_f32(v1009, v1009);
      v1011 = vmulq_f32(v966, vsubq_f32(v1190, v769[31]));
      v1012 = vmlaq_f32(v1010, v1011, v1011);
      v1013 = vmulq_f32(v977, vsubq_f32(v1201, v769[34]));
      v1014 = vmulq_f32(v980, vsubq_f32(v1210, v769[36]));
      v1015 = vmlaq_f32(vmulq_f32(v1013, v1013), v1014, v1014);
      v1016 = vmulq_f32(v983, vsubq_f32(v1199, v769[33]));
      v1017 = vmulq_f32(v1016, v1016);
      v1018 = vmulq_f32(v978, vsubq_f32(v1206, v769[35]));
      v1019 = vmlaq_f32(v1017, v1018, v1018);
      v1020 = vmulq_f32(v989, vsubq_f32(v1225, v769[38]));
      v1021 = vmulq_f32(v993, vsubq_f32(v1242, v769[40]));
      v1022 = vmlaq_f32(vmulq_f32(v1020, v1020), v1021, v1021);
      v1023 = vmulq_f32(v996, vsubq_f32(v1220, v769[37]));
      v1024 = vmulq_f32(v1023, v1023);
      v1025 = vmulq_f32(v992, vsubq_f32(v1236, v769[39]));
      v1026 = vmlaq_f32(v1024, v1025, v1025);
      v810 = vpaddq_f32(v1005, v1002);
      v809 = vpaddq_f32(v1012, v1008);
      v808 = vpaddq_f32(v1019, v1015);
      v811 = vpaddq_f32(v1026, v1022);
      v951 = v988;
      v805 = v999;
      v1027 = vmulq_f32(v954, vsubq_f32(v1266, v769[42]));
      v949 = v1257;
      v1028 = vmulq_f32(v961, vsubq_f32(v1253, v769[41]));
      v1029 = vmulq_f32(v958, vsubq_f32(v1272, v769[43]));
      v945 = v1231;
      v1030 = vmulq_f32(v957, vsubq_f32(v1279, v769[44]));
      v1031 = vmlaq_f32(vmulq_f32(v1027, v1027), v1030, v1030);
      v1032 = vmlaq_f32(vmulq_f32(v1028, v1028), v1029, v1029);
      v1033 = vmulq_f32(v967, vsubq_f32(v1292, v769[46]));
      v1034 = vmulq_f32(v972, vsubq_f32(v1286, v769[45]));
      v1035 = vmulq_f32(v966, vsubq_f32(v1214, v769[47]));
      v1036 = vmulq_f32(v969, vsubq_f32(v1297, v769[48]));
      v946 = v1245;
      v1037 = vmlaq_f32(vmulq_f32(v1033, v1033), v1036, v1036);
      v1038 = vmlaq_f32(vmulq_f32(v1034, v1034), v1035, v1035);
      v1039 = vmulq_f32(v977, vsubq_f32(v1310, v769[50]));
      v1040 = vmulq_f32(v983, vsubq_f32(v1303, v769[49]));
      v1041 = vmulq_f32(v978, vsubq_f32(v1319, v769[51]));
      v950 = v1352;
      v1042 = vmulq_f32(v980, vsubq_f32(v1157, v769[52]));
      v1043 = vmlaq_f32(vmulq_f32(v1039, v1039), v1042, v1042);
      v1044 = vmlaq_f32(vmulq_f32(v1040, v1040), v1041, v1041);
      v1045 = vmulq_f32(v989, vsubq_f32(v1329, v769[54]));
      v1046 = vmulq_f32(v996, vsubq_f32(v1326, v769[53]));
      v952 = v1263;
      v1047 = vmulq_f32(v992, vsubq_f32(v1332, v769[55]));
      v1048 = vmulq_f32(v993, vsubq_f32(v944, v769[56]));
      v1049 = vmlaq_f32(vmulq_f32(v1045, v1045), v1048, v1048);
      v1050 = vmlaq_f32(vmulq_f32(v1046, v1046), v1047, v1047);
      v947 = v1249;
    }

    else
    {
      v1053 = vsubq_f32(v935, v769[10]);
      v1054 = vsubq_f32(v936, v769[9]);
      v1055 = vsubq_f32(v938, v769[11]);
      v1056 = vsubq_f32(v937, v769[12]);
      v1057 = vmlaq_f32(vmulq_f32(v1053, v1053), v1056, v1056);
      v1058 = vmlaq_f32(vmulq_f32(v1054, v1054), v1055, v1055);
      v1059 = vsubq_f32(v939, v769[14]);
      v1060 = vsubq_f32(v1139, v769[13]);
      v1061 = vsubq_f32(v940, v769[15]);
      v1062 = vsubq_f32(v1145, v769[16]);
      v1063 = vmlaq_f32(vmulq_f32(v1059, v1059), v1062, v1062);
      v1064 = vmlaq_f32(vmulq_f32(v1060, v1060), v1061, v1061);
      v1065 = vsubq_f32(v1150, v769[18]);
      v1066 = vsubq_f32(v1147, *v953);
      v1067 = vsubq_f32(v1153, v769[19]);
      v1068 = vsubq_f32(v1156, v769[20]);
      v1069 = vmlaq_f32(vmulq_f32(v1065, v1065), v1068, v1068);
      v1070 = vmlaq_f32(vmulq_f32(v1066, v1066), v1067, v1067);
      v1071 = vsubq_f32(v1163, v769[22]);
      v1072 = vsubq_f32(v1160, v769[21]);
      v1073 = vsubq_f32(v1168, v769[23]);
      v1074 = vsubq_f32(v1389, v769[24]);
      v807 = vpaddq_f32(v1058, v1057);
      v806 = vpaddq_f32(v1064, v1063);
      v805 = vpaddq_f32(v1070, v1069);
      v1386 = vpaddq_f32(vmlaq_f32(vmulq_f32(v1072, v1072), v1073, v1073), vmlaq_f32(vmulq_f32(v1071, v1071), v1074, v1074));
      v1075 = vsubq_f32(v1173, v769[26]);
      v1076 = vsubq_f32(v1171, v769[25]);
      v1077 = vsubq_f32(v1177, v769[27]);
      v1078 = vsubq_f32(v1181, v769[28]);
      v1079 = vmlaq_f32(vmulq_f32(v1075, v1075), v1078, v1078);
      v1080 = vmlaq_f32(vmulq_f32(v1076, v1076), v1077, v1077);
      v1081 = vsubq_f32(v1186, v769[30]);
      v1082 = vsubq_f32(v1166, v769[29]);
      v1083 = vsubq_f32(v1190, v769[31]);
      v1084 = vsubq_f32(v1195, v769[32]);
      v1085 = vmlaq_f32(vmulq_f32(v1081, v1081), v1084, v1084);
      v1086 = vmlaq_f32(vmulq_f32(v1082, v1082), v1083, v1083);
      v1087 = vsubq_f32(v1201, v769[34]);
      v1088 = vsubq_f32(v1199, v769[33]);
      v1089 = vsubq_f32(v1206, v769[35]);
      v1090 = vsubq_f32(v1210, v769[36]);
      v1091 = vmlaq_f32(vmulq_f32(v1087, v1087), v1090, v1090);
      v1092 = vmlaq_f32(vmulq_f32(v1088, v1088), v1089, v1089);
      v1093 = vsubq_f32(v1225, v769[38]);
      v1094 = vsubq_f32(v1220, v769[37]);
      v1095 = vsubq_f32(v1236, v769[39]);
      v1096 = vsubq_f32(v1242, v769[40]);
      v1097 = vmlaq_f32(vmulq_f32(v1093, v1093), v1096, v1096);
      v1098 = vmlaq_f32(vmulq_f32(v1094, v1094), v1095, v1095);
      v810 = vpaddq_f32(v1080, v1079);
      v809 = vpaddq_f32(v1086, v1085);
      v808 = vpaddq_f32(v1092, v1091);
      v811 = vpaddq_f32(v1098, v1097);
      v1099 = vsubq_f32(v1266, v769[42]);
      v1100 = vsubq_f32(v1253, v769[41]);
      v1101 = vsubq_f32(v1272, v769[43]);
      v1102 = vsubq_f32(v1279, v769[44]);
      v1031 = vmlaq_f32(vmulq_f32(v1099, v1099), v1102, v1102);
      v1032 = vmlaq_f32(vmulq_f32(v1100, v1100), v1101, v1101);
      v1103 = vsubq_f32(v1292, v769[46]);
      v1104 = vsubq_f32(v1286, v769[45]);
      v1105 = vsubq_f32(v942, v769[47]);
      v1106 = vsubq_f32(v1297, v769[48]);
      v1037 = vmlaq_f32(vmulq_f32(v1103, v1103), v1106, v1106);
      v1038 = vmlaq_f32(vmulq_f32(v1104, v1104), v1105, v1105);
      v1107 = vsubq_f32(v1310, v769[50]);
      v1108 = vsubq_f32(v1303, v769[49]);
      v1109 = vsubq_f32(v1319, v769[51]);
      v1110 = vsubq_f32(v943, v769[52]);
      v1043 = vmlaq_f32(vmulq_f32(v1107, v1107), v1110, v1110);
      v1044 = vmlaq_f32(vmulq_f32(v1108, v1108), v1109, v1109);
      v1111 = vsubq_f32(v1329, v769[54]);
      v1112 = vsubq_f32(v1326, v769[53]);
      v1113 = vsubq_f32(v1332, v769[55]);
      v1114 = vsubq_f32(v944, v769[56]);
      v1049 = vmlaq_f32(vmulq_f32(v1111, v1111), v1114, v1114);
      v1050 = vmlaq_f32(vmulq_f32(v1112, v1112), v1113, v1113);
    }

    v814 = vpaddq_f32(v1032, v1031);
    v813 = vpaddq_f32(v1038, v1037);
    v812 = vpaddq_f32(v1044, v1043);
    v815 = vpaddq_f32(v1050, v1049);
    v1115 = vsubq_f32(v1338, v769[58]);
    v1116 = vsubq_f32(v1346, v769[57]);
    v1117 = vsubq_f32(v1363, v769[59]);
    v1118 = vsubq_f32(v1368, v769[60]);
    v1119 = vmlaq_f32(vmulq_f32(v1115, v1115), v1118, v1118);
    v1120 = vmlaq_f32(vmulq_f32(v1116, v1116), v1117, v1117);
    v1121 = vsubq_f32(v1374, v769[62]);
    v1122 = vsubq_f32(v1379, v769[61]);
    v1123 = vsubq_f32(v1384, v769[63]);
    v1124 = vsubq_f32(v945, v769[64]);
    v1125 = vmlaq_f32(vmulq_f32(v1121, v1121), v1124, v1124);
    v1126 = vmlaq_f32(vmulq_f32(v1122, v1122), v1123, v1123);
    v1127 = vsubq_f32(v946, v769[66]);
    v1128 = vsubq_f32(v947, v769[65]);
    v1129 = vsubq_f32(v949, v769[67]);
    v1130 = vsubq_f32(v948, v769[68]);
    v1131 = vmlaq_f32(vmulq_f32(v1127, v1127), v1130, v1130);
    v1132 = vmlaq_f32(vmulq_f32(v1128, v1128), v1129, v1129);
    v1133 = vsubq_f32(v1358, v769[70]);
    v1134 = vsubq_f32(v950, v769[69]);
    v1135 = vsubq_f32(v952, v769[71]);
    v1136 = vsubq_f32(v951, v769[72]);
    v817 = vpaddq_f32(v1120, v1119);
    v816 = vpaddq_f32(v1126, v1125);
    v818 = vpaddq_f32(v1132, v1131);
    v819 = vpaddq_f32(vmlaq_f32(vmulq_f32(v1134, v1134), v1135, v1135), vmlaq_f32(vmulq_f32(v1133, v1133), v1136, v1136));
    v744 = v1334;
  }

  else
  {
    if (v770 != 324)
    {
      v1051 = INFINITY;
      v1052 = a4;
      goto LABEL_149;
    }

    v1393 = v746;
    v1397 = v745;
    v1401 = v743;
    v764.i32[0] = 0;
    v771 = v755;
    v772 = vsubq_f32(v759, *(a1 + 176));
    v773 = vsubq_f32(v751, *(a1 + 160));
    v774 = vsubq_f32(v771, *(a1 + 144));
    v775 = vsubq_f32(v763, *(a1 + 192));
    v776 = vsubq_f32(v760, *(a1 + 240));
    v777 = vsubq_f32(v752, *(a1 + 224));
    v778 = vsubq_f32(v756, *(a1 + 208));
    v779 = vsubq_f32(v765, *(a1 + 256));
    v780 = vsubq_f32(v761, *(a1 + 304));
    v781 = vsubq_f32(v753, *(a1 + 288));
    v782 = vsubq_f32(v757, *(a1 + 272));
    v783 = vsubq_f32(v766, *(a1 + 320));
    v785 = *(a1 + 336);
    v784 = *(a1 + 352);
    v786 = *(a1 + 368);
    v787 = *(a1 + 384);
    v788 = vsubq_f32(v767, v787);
    v789 = vsubq_f32(v762, v786);
    v790 = vsubq_f32(v758, v785);
    v791 = vsubq_f32(v754, v784);
    v739.i8[0] = *(a1 + 135);
    v792 = vdupq_lane_s8(*&vceqq_s8(v739, v764), 0);
    v793 = vbslq_s8(v792, v783, vmulq_f32(v783, v787));
    v794 = vbslq_s8(v792, v782, vmulq_f32(v782, v785));
    v795 = vbslq_s8(v792, v781, vmulq_f32(v781, v784));
    v796 = vbslq_s8(v792, v780, vmulq_f32(v780, v786));
    v797 = vbslq_s8(v792, v779, vmulq_f32(v779, v787));
    v798 = vbslq_s8(v792, v778, vmulq_f32(v778, v785));
    v799 = vbslq_s8(v792, v777, vmulq_f32(v777, v784));
    v800 = vbslq_s8(v792, v776, vmulq_f32(v776, v786));
    v801 = vbslq_s8(v792, v775, vmulq_f32(v775, v787));
    v802 = vbslq_s8(v792, v774, vmulq_f32(v774, v785));
    v803 = vbslq_s8(v792, v773, vmulq_f32(v773, v784));
    v804 = vbslq_s8(v792, v772, vmulq_f32(v772, v786));
    v805 = vmulq_f32(v804, v804);
    v806 = vmulq_f32(v803, v803);
    v807 = vmulq_f32(v802, v802);
    v1386 = vmulq_f32(v801, v801);
    v808 = vmulq_f32(v800, v800);
    v809 = vmulq_f32(v799, v799);
    v810 = vmulq_f32(v798, v798);
    v811 = vmulq_f32(v797, v797);
    v812 = vmulq_f32(v796, v796);
    v813 = vmulq_f32(v795, v795);
    v814 = vmulq_f32(v794, v794);
    v815 = vmulq_f32(v793, v793);
    v816 = vmulq_f32(v791, v791);
    v817 = vmulq_f32(v790, v790);
    v818 = vmulq_f32(v789, v789);
    v819 = vmulq_f32(v788, v788);
  }

  v746 = v1393;
  v1137 = vaddq_f32(vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v810, *v1312.f32, 1), v807, v1312.f32[0]), v814, v1312, 2), v817, v1312, 3), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v808, *v1312.f32, 1), v805, v1312.f32[0]), v812, v1312, 2), v818, v1312, 3)), vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v809, *v1312.f32, 1), v806, v1312.f32[0]), v813, v1312, 2), v816, v1312, 3), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v811, *v1312.f32, 1), v1386, v1312.f32[0]), v815, v1312, 2), v819, v1312, 3)));
  v1137.i64[0] = vpaddq_f32(v1137, v1137).u64[0];
  LODWORD(v1051) = vpadd_f32(*v1137.f32, *v1137.f32).u32[0];
  v1052 = a4;
  v743 = v1401;
  v745 = v1397;
LABEL_149:
  if (v1051 < v1052)
  {
    *(a2 + 32) = vandq_s8(v1414, xmmword_298495C30);
    *a2 = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(v744), vcvtq_s32_f32(v743)), vuzp1q_s16(vcvtq_s32_f32(v745), vcvtq_s32_f32(v746)));
    *(a2 + 16) = 0u;
    *(a2 + 48) = v399 | (v700 << 13);
    *(a2 + 52) = v656;
    *(a2 + 53) = v400;
    *(a2 + 54) = BYTE5(v399);
    *(a2 + 55) = 29;
    *(((v399 >> 41) & 0x7F) + a2 + 32) = v1417;
  }

  v1138 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t GetDualPartitionBlockInfo(unsigned int a1, int a2)
{
  v2 = (a2 - 4);
  v4 = kDualLineSingleWeightTable[kDualLineSingleWeightIndexTable[4 * a1 + (v2 >> 2)]];
  return (a2 << 40) | (*(&v4 + (v2 >> 2) + 4) << 56) | ((v4 >> 27) << 32) | 0x1D000000000000 | (v2 << 25) & 0x18000000 | v4 & 0x1FFFFFF;
}

unint64_t WeightInfoForSingleLineDualWeight(int a1, uint64_t a2, int a3)
{
  if (a3 == 342)
  {
    v3 = (a2 - 2 + (((a2 - 2) & 0x8000u) >> 15)) >> 1;
    v4 = a1;
    v5 = v3;
    v6 = &WeightInfoForSingleLineDualWeight_6x5_Table_6x5 + 8 * WeightInfoForSingleLineDualWeight_6x5_Indices_6x5[4 * a1 + v3];
    return *v6 & 0xFFE00000FFFE1FFFLL | (v6[v5 + 4] << 32) & 0xFFE0FFFFFFFFFFFFLL | (a2 << 40) & 0xFFE0FFFFFFFFFFFFLL | ((v4 & 0x1F) << 48) | ((v3 & 3) << 15);
  }

  if (a3 == 324)
  {
    v3 = (a2 - 2 + (((a2 - 2) & 0x8000u) >> 15)) >> 1;
    v4 = a1;
    v5 = v3;
    v6 = &kSingleLineDualWeightTable + 8 * kSingleLineDualWeightIndexTable[4 * a1 + v3];
    return *v6 & 0xFFE00000FFFE1FFFLL | (v6[v5 + 4] << 32) & 0xFFE0FFFFFFFFFFFFLL | (a2 << 40) & 0xFFE0FFFFFFFFFFFFLL | ((v4 & 0x1F) << 48) | ((v3 & 3) << 15);
  }

  return 0;
}

uint64_t FindWeights_4x4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, float32x4_t *a4@<X8>)
{
  v4 = *(a2 + 80);
  if (a3 > 5)
  {
    v45 = *(a2 + 128);
    v46 = *(result + 32);
    v47 = v45;
    v48 = *(a2 + 80);
    if (v46)
    {
      v47 = *v46;
      v48 = *v46;
    }

    v49 = vcgezq_s32(gNormalMasks[a3]);
    v50 = vandq_s8(v48, v49);
    v51 = vandq_s8(v47, v49);
    v52 = vmulq_f32(v4, v50);
    v53 = vaddv_f32(vadd_f32(*v52.i8, *&vextq_s8(v52, v52, 8uLL)));
    v54 = vmulq_f32(v45, v51);
    v55 = vaddv_f32(vadd_f32(*v54.i8, *&vextq_s8(v54, v54, 8uLL)));
    if (fabsf(v53) < 0.0039062)
    {
      v56 = vmulq_f32(v4, v4);
      v53 = vaddv_f32(vadd_f32(*v56.i8, *&vextq_s8(v56, v56, 8uLL)));
      v50 = *(a2 + 80);
    }

    if (fabsf(v55) < 0.0039062)
    {
      v57 = vmulq_f32(v45, v45);
      v55 = vaddv_f32(vadd_f32(*v57.i8, *&vextq_s8(v57, v57, 8uLL)));
      v51 = *(a2 + 128);
    }

    v58 = *(a2 + 48);
    v59 = *(a2 + 64);
    v60 = vdupq_lane_s32(*v59.i8, 0);
    v61 = *(a2 + 112);
    v62 = vdupq_lane_s32(*v61.i8, 0);
    v63 = *(a2 + 32);
    v195 = *(a2 + 16);
    v64 = vcltzq_s32(v58);
    v65 = vcltzq_s32(v63);
    v66 = vuzp1q_s16(v65, v64);
    v196 = vcltzq_s32(*a2);
    v197 = vcltzq_s32(v195);
    v67 = vuzp1q_s16(v196, v197);
    v68 = vmovn_s16(v67);
    v69 = vmovn_s16(v66);
    v70 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v69, *v4.f32)), 0x1FuLL));
    v71 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v69, *v4.f32)), 0x1FuLL));
    v72 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v68, *v4.f32)), 0x1FuLL));
    v73 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v68, *v4.f32)), 0x1FuLL));
    v74 = vsubq_f32(*(result + 144), vbslq_s8(v73, v62, v60));
    v75 = vsubq_f32(*(result + 160), vbslq_s8(v72, v62, v60));
    v76 = vsubq_f32(*(result + 176), vbslq_s8(v71, v62, v60));
    v77 = vdupq_lane_s32(*v59.i8, 1);
    v78 = vdupq_lane_s32(*v61.i8, 1);
    v79 = vsubq_f32(*(result + 256), vbslq_s8(v70, v78, v77));
    v80 = vsubq_f32(*(result + 240), vbslq_s8(v71, v78, v77));
    v81 = vsubq_f32(*(result + 224), vbslq_s8(v72, v78, v77));
    v82 = vsubq_f32(*(result + 208), vbslq_s8(v73, v78, v77));
    v83 = vdupq_lane_s32(*v50.f32, 0);
    v84 = vdupq_lane_s32(*v51.f32, 0);
    v85 = vdupq_lane_s32(*v50.f32, 1);
    v86 = vdupq_lane_s32(*v51.f32, 1);
    v87 = vmlaq_f32(vmulq_f32(vbslq_s8(v70, v86, v85), v79), vbslq_s8(v70, v84, v83), vsubq_f32(*(result + 192), vbslq_s8(v70, v62, v60)));
    v88 = vmlaq_f32(vmulq_f32(vbslq_s8(v71, v86, v85), v80), vbslq_s8(v71, v84, v83), v76);
    v89 = vdupq_laneq_s32(v59, 2);
    v90 = vmlaq_f32(vmulq_f32(vbslq_s8(v72, v86, v85), v81), vbslq_s8(v72, v84, v83), v75);
    v91 = vdupq_laneq_s32(v61, 2);
    v92 = vmlaq_f32(vmulq_f32(vbslq_s8(v73, v86, v85), v82), vbslq_s8(v73, v84, v83), v74);
    v93 = vdupq_laneq_s32(v50, 2);
    v94 = vdupq_laneq_s32(v51, 2);
    v95 = vmlaq_f32(v92, vbslq_s8(v73, v94, v93), vsubq_f32(*(result + 272), vbslq_s8(v73, v91, v89)));
    v96 = vmlaq_f32(v90, vbslq_s8(v72, v94, v93), vsubq_f32(*(result + 288), vbslq_s8(v72, v91, v89)));
    v97 = vmlaq_f32(v88, vbslq_s8(v71, v94, v93), vsubq_f32(*(result + 304), vbslq_s8(v71, v91, v89)));
    v98 = vsubq_f32(*(result + 320), vbslq_s8(v70, v91, v89));
    v99 = vdupq_laneq_s32(v59, 3);
    v100 = vdupq_laneq_s32(v61, 3);
    v101 = vbslq_s8(v70, v94, v93);
    v102 = vbslq_s8(v70, v100, v99);
    v103 = vmlaq_f32(v87, v101, v98);
    v104 = vbslq_s8(v71, v100, v99);
    v105 = vbslq_s8(v72, v100, v99);
    v106 = vsubq_f32(*(result + 336), vbslq_s8(v73, v100, v99));
    v107 = vsubq_f32(*(result + 352), v105);
    v108 = vsubq_f32(*(result + 368), v104);
    v109 = vsubq_f32(*(result + 384), v102);
    v110 = vdupq_laneq_s32(v50, 3);
    v111 = vdupq_laneq_s32(v51, 3);
    v112 = vbslq_s8(v73, v111, v110);
    v113 = vbslq_s8(v72, v111, v110);
    v114 = vbslq_s8(v71, v111, v110);
    v115 = vbslq_s8(v70, v111, v110);
    v116 = 0;
    v117 = 0;
    if (fabsf(v53) >= 0.00024414)
    {
      *v117.i32 = vrecpes_f32(v53);
    }

    v118 = vuzp1q_s8(v67, v66);
    v119 = vmlaq_f32(v103, v115, v109);
    v120 = vmlaq_f32(v97, v114, v108);
    v121 = vmlaq_f32(v96, v113, v107);
    v122 = vmlaq_f32(v95, v112, v106);
    if (fabsf(v55) >= 0.00024414)
    {
      *v116.i32 = vrecpes_f32(v55);
    }

    v123 = vdupq_lane_s32(v117, 0);
    v124 = vdupq_lane_s32(v116, 0);
    v125 = vextq_s8(v118, v118, 8uLL).u64[0];
    v126 = vmulq_f32(v121, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v118.i8, *v4.f32)), 0x1FuLL)), v124, v123));
    v127 = vmulq_f32(v122, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v118.i8, *v4.f32)), 0x1FuLL)), v124, v123));
    v128 = vmulq_f32(v119, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v125, *v4.f32)), 0x1FuLL)), v124, v123));
    v129 = vmulq_f32(v120, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v125, *v4.f32)), 0x1FuLL)), v124, v123));
    if (*(result + 134) >= 1)
    {
      v4.i64[0] = 0;
      v130 = 0;
      if (fabsf(v4.f32[3]) >= 0.0039062)
      {
        *v130.i32 = vrecpes_f32(v4.f32[3]);
      }

      if (fabsf(v45.f32[3]) >= 0.0039062)
      {
        v4.f32[0] = vrecpes_f32(v45.f32[3]);
      }

      v131 = vdupq_lane_s32(v130, 0);
      v132 = vdupq_lane_s32(*v4.f32, 0);
      v126 = vbslq_s8(vcltzq_s32(*(result + 736)), vmulq_f32(v107, vorrq_s8(vandq_s8(v132, v197), vandq_s8(vcgezq_s32(v195), v131))), v126);
      v127 = vbslq_s8(vcltzq_s32(*(result + 720)), vmulq_f32(v106, vorrq_s8(vandq_s8(v132, v196), vandq_s8(vcgezq_s32(*a2), v131))), v127);
      v129 = vbslq_s8(vcltzq_s32(*(result + 752)), vmulq_f32(v108, vorrq_s8(vandq_s8(v132, v65), vandq_s8(vcgezq_s32(v63), v131))), v129);
      v128 = vbslq_s8(vcltzq_s32(*(result + 768)), vmulq_f32(v109, vorrq_s8(vandq_s8(v132, v64), vandq_s8(vcgezq_s32(v58), v131))), v128);
    }

    __asm { FMOV            V0.4S, #1.0 }

    v134 = vminnmq_f32(v126, _Q0);
    v135 = vminnmq_f32(v129, _Q0);
    v136 = vminnmq_f32(v128, _Q0);
    v41 = vmaxnmq_f32(vminnmq_f32(v127, _Q0), 0);
    v42 = vmaxnmq_f32(v134, 0);
    v43 = vmaxnmq_f32(v135, 0);
    v44 = vmaxnmq_f32(v136, 0);
  }

  else
  {
    v5 = *(a2 + 48);
    v6 = *(a2 + 64);
    v7 = vdupq_lane_s32(*v6.i8, 0);
    v9 = *(a2 + 112);
    v8 = *(a2 + 128);
    v10 = vdupq_lane_s32(*v9.i8, 0);
    v12 = *(a2 + 16);
    v11 = *(a2 + 32);
    v13 = vcltzq_s32(v12);
    v14 = vcltzq_s32(*a2);
    v15 = vcltzq_s32(v5);
    v16 = vcltzq_s32(v11);
    v17 = vuzp1q_s16(v16, v15);
    v18 = vuzp1q_s16(v14, v13);
    v19 = vmovn_s16(v17);
    v20 = vmovn_s16(v18);
    v21 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v20, *v4.f32)), 0x1FuLL)), v10, v7);
    v22 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v20, *v4.f32)), 0x1FuLL)), v10, v7);
    v23 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v19, *v4.f32)), 0x1FuLL)), v10, v7);
    v24 = vsubq_f32(*(result + 704), vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v19, *v4.f32)), 0x1FuLL)), v10, v7));
    v25 = vsubq_f32(*(result + 688), v23);
    v26 = vsubq_f32(*(result + 672), v22);
    v27 = vsubq_f32(*(result + 656), v21);
    if (a3 > 3)
    {
      v137 = vuzp1q_s8(v18, v17);
      LODWORD(v138) = HIDWORD(*(a2 + 80));
      LODWORD(v139) = HIDWORD(*(a2 + 128));
      v140 = vdupq_laneq_s32(v6, 3);
      v141 = vdupq_laneq_s32(v9, 3);
      v151 = *(result + 352);
      v142 = vextq_s8(v137, v137, 8uLL).u64[0];
      v143 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v142, *v4.f32)), 0x1FuLL)), v141, v140);
      v144 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v142, *v4.f32)), 0x1FuLL)), v141, v140);
      v145 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v137.i8, *v4.f32)), 0x1FuLL)), v141, v140);
      v146 = vsubq_f32(v151, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v137.i8, *v4.f32)), 0x1FuLL)), v141, v140));
      v147 = vsubq_f32(*(result + 336), v145);
      v148 = vsubq_f32(*(result + 384), v144);
      v149 = vsubq_f32(*(result + 368), v143);
      v150 = vmuls_lane_f32(v4.f32[3], v4, 3) + (v4.f32[0] * v4.f32[0]);
      v151.f32[0] = vmuls_lane_f32(v8.f32[3], v8, 3) + (v8.f32[0] * v8.f32[0]);
      v152 = 0;
      if (fabsf(v150) >= 0.000015259)
      {
        *v152.i32 = vrecpes_f32(v150);
      }

      v153 = fabsf(v151.f32[0]);
      v151.f32[0] = vrecpes_f32(v151.f32[0]);
      if (v153 < 0.000015259)
      {
        v151.f32[0] = 0.0;
      }

      v154 = vdupq_lane_s32(*v4.f32, 0);
      v155 = vdupq_lane_s32(*v8.f32, 0);
      v156 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v137.i8, *v4.f32)), 0x1FuLL));
      v157 = vbslq_s8(v156, v155, v154);
      v158 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v137.i8, *v4.f32)), 0x1FuLL));
      v159 = vbslq_s8(v158, v155, v154);
      v160 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v142, *v4.f32)), 0x1FuLL));
      v161 = vbslq_s8(v160, v155, v154);
      v162 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v142, *v4.f32)), 0x1FuLL));
      v163 = vbslq_s8(v162, v155, v154);
      v164 = vdupq_laneq_s32(v4, 3);
      v165 = vdupq_laneq_s32(v8, 3);
      v166 = vbslq_s8(v162, v165, v164);
      v167 = vbslq_s8(v160, v165, v164);
      v168 = vbslq_s8(v158, v165, v164);
      v169 = vmulq_f32(vbslq_s8(v156, v165, v164), v146);
      v170 = vmlaq_f32(vmulq_f32(v166, v149), v163, v25);
      v171 = vmlaq_f32(vmulq_f32(v167, v148), v161, v24);
      v172 = vmlaq_f32(vmulq_f32(v168, v147), v159, v27);
      v173 = vmlaq_f32(v169, v157, v26);
      v174 = vdupq_lane_s32(v152, 0);
      v175 = vdupq_lane_s32(*v151.f32, 0);
      v176 = vbslq_s8(v162, v175, v174);
      v177 = vbslq_s8(v160, v175, v174);
      v178 = vmulq_f32(v173, vbslq_s8(v156, v175, v174));
      v179 = vmulq_f32(v172, vbslq_s8(v158, v175, v174));
      v180 = vmulq_f32(v171, v177);
      v181 = vmulq_f32(v170, v176);
      if (*(result + 134) >= 1)
      {
        v182 = 0;
        v183 = 0;
        if (fabsf(v138) >= 0.000015259)
        {
          *v183.i32 = vrecpes_f32(v138);
        }

        if (fabsf(v139) >= 0.000015259)
        {
          *v182.i32 = vrecpes_f32(v139);
        }

        v184 = vdupq_lane_s32(v183, 0);
        v185 = vdupq_lane_s32(v182, 0);
        v186 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v137.i8, *v178.f32)), 0x1FuLL)), v185, v184);
        v187 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v137.i8, *v178.f32)), 0x1FuLL)), v185, v184);
        v188 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v142, *v178.f32)), 0x1FuLL)), v185, v184);
        v189 = vmulq_f32(v149, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v142, *v178.f32)), 0x1FuLL)), v185, v184));
        v178 = vbslq_s8(vcltzq_s32(*(result + 736)), vmulq_f32(v146, v186), v178);
        v179 = vbslq_s8(vcltzq_s32(*(result + 720)), vmulq_f32(v147, v187), v179);
        v180 = vbslq_s8(vcltzq_s32(*(result + 768)), vmulq_f32(v148, v188), v180);
        v181 = vbslq_s8(vcltzq_s32(*(result + 752)), v189, v181);
      }

      __asm { FMOV            V1.4S, #1.0 }

      v191 = vminnmq_f32(v179, _Q1);
      v192 = vminnmq_f32(v178, _Q1);
      v193 = vminnmq_f32(v181, _Q1);
      v194 = vminnmq_f32(v180, _Q1);
      v41 = vmaxnmq_f32(v191, 0);
      v42 = vmaxnmq_f32(v192, 0);
      v43 = vmaxnmq_f32(v193, 0);
      v44 = vmaxnmq_f32(v194, 0);
    }

    else
    {
      v28 = fabsf(v4.f32[0]);
      v4.f32[0] = vrecpes_f32(v4.f32[0]);
      if (v28 < 0.000015259)
      {
        v4.f32[0] = 0.0;
      }

      v29 = fabsf(v8.f32[0]);
      v8.f32[0] = vrecpes_f32(v8.f32[0]);
      if (v29 < 0.000015259)
      {
        v8.f32[0] = 0.0;
      }

      v30 = vdupq_lane_s32(*v4.f32, 0);
      v31 = vdupq_lane_s32(*v8.f32, 0);
      v32 = vandq_s8(vcgezq_s32(v5), v30);
      v33 = vandq_s8(vcgezq_s32(v11), v30);
      v34 = vandq_s8(vcgezq_s32(v12), v30);
      v35 = vmaxnmq_f32(vmulq_f32(v27, vorrq_s8(vandq_s8(v31, v14), vandq_s8(vcgezq_s32(*a2), v30))), 0);
      __asm { FMOV            V4.4S, #1.0 }

      v41 = vminnmq_f32(v35, _Q4);
      v42 = vminnmq_f32(vmaxnmq_f32(vmulq_f32(v26, vorrq_s8(vandq_s8(v31, v13), v34)), 0), _Q4);
      v43 = vminnmq_f32(vmaxnmq_f32(vmulq_f32(v25, vorrq_s8(vandq_s8(v31, v16), v33)), 0), _Q4);
      v44 = vminnmq_f32(vmaxnmq_f32(vmulq_f32(v24, vorrq_s8(vandq_s8(v31, v15), v32)), 0), _Q4);
    }
  }

  *a4 = v41;
  a4[1] = v42;
  a4[2] = v43;
  a4[3] = v44;
  return result;
}

double PackDualBlock_4x4(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 53);
  v4 = __clz(__rbit32(v3 + 1));
  v5 = (v3 + 1) >> v4;
  v108 = v4;
  v107 = v3 | (v5 << 8);
  *v6.i64 = EncodeValues(&v107, *(a1 + 32));
  v7 = (a1 + 54);
  v8 = vld1q_dup_s8(v7);
  v9 = xmmword_298451AC0;
  v10 = vandq_s8(v6, vcgtq_u8(v8, xmmword_298451AC0));
  if (v5 == 5)
  {
    v106 = xmmword_298451AC0;
    *v11.i64 = pack_quints_vec(v4, v10);
  }

  else if (v5 == 3)
  {
    v106 = xmmword_298451AC0;
    *v11.i64 = pack_trits_vec(v4, v10);
  }

  else
  {
    v11 = 0uLL;
    if (v5 != 1)
    {
      goto LABEL_8;
    }

    v106 = xmmword_298451AC0;
    *v11.i64 = pack_bits_vec(v4, v10);
  }

  v9 = v106;
LABEL_8:
  v12 = *(a1 + 55);
  v13 = *(a1 + 52);
  v14 = __clz(__rbit32(v13 + 1));
  v15 = (v13 + 1) >> v14;
  v16 = *a1;
  if (v15 == 1)
  {
    v17 = vorrq_s8(vshlq_u16((*&v16 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)), vnegq_s16(vdupq_n_s16(8 - v14))), (*&v16 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v18.i64[0] = 0xFFFF0000FFFFLL;
    v18.i64[1] = 0xFFFF0000FFFFLL;
    v19.i64[0] = 0xFFFF0000FFFF0000;
    v19.i64[1] = 0xFFFF0000FFFF0000;
    v20 = vorrq_s8(vshlq_u32(vandq_s8(v17, v19), vnegq_s32(vdupq_n_s32(2 * (8 - v14)))), vandq_s8(v17, v18));
    v18.i64[0] = 0xFFFFFFFFLL;
    v18.i64[1] = 0xFFFFFFFFLL;
    v21 = vandq_s8(v20, v18);
    v19.i64[0] = 0xFFFFFFFF00000000;
    v19.i64[1] = 0xFFFFFFFF00000000;
    v22 = vandq_s8(v20, v19);
    *v19.i8 = vdup_n_s32(4 * (8 - v14));
    v23.i64[0] = v19.u32[0];
    v23.i64[1] = v19.u32[1];
    v24 = vorrq_s8(vshlq_u64(v22, vnegq_s64(v23)), v21);
    v25 = v24.u64[1];
    v26 = 8 * v14;
    v27 = (v24.i64[1] << v26) | v24.i64[0];
    v14 = -v26;
LABEL_24:
    v45.i64[0] = v27;
    v45.i64[1] = v25 >> v14;
    goto LABEL_25;
  }

  if (v14)
  {
    v28 = vmovl_u8(*v16.i8);
    v29 = vmovl_high_u8(v16);
    v30 = vdupq_n_s16(v13);
    v31 = vsubw_u8(v30, *v16.i8);
    v32 = vsubw_high_u8(v30, v16);
    v33 = vminq_u16(v32, v29);
    v34 = vminq_u16(v31, v28);
    if (v15 == 3)
    {
      v35 = 21846;
    }

    else
    {
      v35 = 13108;
    }

    v36 = vdupq_n_s16(v35);
    v37 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v34.i8, *v36.i8), 0x10uLL), vmull_high_u16(v34, v36), 0x10uLL);
    v38 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v33.i8, *v36.i8), 0x10uLL), vmull_high_u16(v33, v36), 0x10uLL);
    v39 = vdupq_n_s16(v15);
    v40 = vmlsq_s16(v34, v37, v39);
    v41 = vmlsq_s16(v33, v38, v39);
    v42 = vdupq_n_s16(v14);
    v43 = vcgtq_u16(v28, v31);
    v44.i64[0] = 0x1000100010001;
    v44.i64[1] = 0x1000100010001;
    v16 = vuzp1q_s8(vorrq_s8(vaddq_s16(vshlq_u16(v40, v42), vaddq_s16(v37, v37)), vandq_s8(v43, v44)), vorrq_s8(vaddq_s16(vshlq_u16(v41, v42), vaddq_s16(v38, v38)), vandq_s8(vcgtq_u16(v29, v32), v44)));
  }

  if (v15 == 3)
  {
    v74 = vdupq_n_s8(v14);
    v75 = vshlq_u8(v16, vnegq_s8(v74));
    v76 = vqtbl1q_s8(v75, xmmword_298495C40);
    v77 = vqtbl1q_s8(v75, xmmword_298495C50);
    v78 = vpaddq_s16(vmull_u8(*v76.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v76, v76, 8uLL), 0x8010040180100401));
    v78.i64[0] = vpaddq_s16(v78, v78).u64[0];
    v79 = vmovl_s16(*v78.i8);
    v80 = vshlq_n_s32(v77, 5uLL);
    v76.i64[0] = 0x3000000030;
    v76.i64[1] = 0x3000000030;
    v81.i64[0] = 0x2000000020;
    v81.i64[1] = 0x2000000020;
    v82 = vceqq_s32(vandq_s8(v79, v76), v81);
    v83 = vaddw_s16(v80, *v78.i8);
    v81.i64[0] = 0xFF000000FFLL;
    v81.i64[1] = 0xFF000000FFLL;
    v84 = vcgtq_s32(v83, v81);
    if ((vmaxvq_u32(vorrq_s8(v82, v84)) & 0x80000000) != 0)
    {
      v85.i64[0] = 0x200000002;
      v85.i64[1] = 0x200000002;
      v86 = vceqq_s32(v77, v85);
      v87 = vshrq_n_u32(v79, 2uLL);
      v88 = vandq_s8(v84, v86);
      v89.i64[0] = 0xF0000000FLL;
      v89.i64[1] = 0xF0000000FLL;
      v90 = vandq_s8(v79, v89);
      v91.i64[0] = 0x303030303030303;
      v91.i64[1] = 0x303030303030303;
      v92.i64[0] = 0x6060606060606060;
      v92.i64[1] = 0x6060606060606060;
      v83 = vaddq_s8(vsubq_s8(vaddq_s8(vandq_s8(vmlaq_s8(v92, v80, v91), v84), v83), vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C60, v90), v82), vandq_s8(vqtbl1q_s8(xmmword_298495C70, vandq_s8(v87, v89)), v88))), vandq_s8(vqtbl1q_s8(xmmword_298495C80, v90), vandq_s8(v82, v88)));
    }

    v93 = vorrq_s8(vshlq_u8(vshlq_u8(vandq_s8(vqtbl1q_s8(v83, xmmword_298495DF0), xmmword_298495D00), xmmword_298495D30), v74), vandq_s8(v16, vdupq_n_s8((1 << v14) - 1)));
    v94 = vaddq_s16(vshlq_u16(vshlq_u16((*&v93 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)), vnegq_s16(vdupq_n_s16(7 - v14))), xmmword_298495E00), (*&v93 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v95.i64[0] = 0xFFFF0000FFFFLL;
    v95.i64[1] = 0xFFFF0000FFFFLL;
    v96 = vandq_s8(v94, v95);
    v97.i64[0] = 0xFFFF0000FFFF0000;
    v97.i64[1] = 0xFFFF0000FFFF0000;
    v98 = vshlq_u32(vandq_s8(v94, v97), vnegq_s32(vdupq_n_s32(13 - 2 * v14)));
    v99 = vaddq_s32(vaddq_s32(v98, v96), v98.u32[0]);
    v96.i64[0] = 0xFFFFFFFFLL;
    v96.i64[1] = 0xFFFFFFFFLL;
    v100 = vandq_s8(v99, v96);
    v97.i64[0] = 0xFFFFFFFF00000000;
    v97.i64[1] = 0xFFFFFFFF00000000;
    v101 = vandq_s8(v99, v97);
    *v97.i8 = vdup_n_s32(25 - 4 * v14);
    v102.i64[0] = v97.u32[0];
    v102.i64[1] = v97.u32[1];
    v103 = vaddq_s64(vshlq_u64(v101, vnegq_s64(v102)), v100);
    v25 = v103.u64[1];
    v27 = (v103.i64[1] << (8 * v14 + 13)) | v103.i64[0];
    v73 = 51;
    goto LABEL_23;
  }

  v45 = 0uLL;
  if (v15 == 5)
  {
    v46 = vdupq_n_s8(v14);
    v47 = vshlq_u8(v16, vnegq_s8(v46));
    v48 = vqtbl1q_s8(v47, xmmword_298495BC0);
    v49 = vqtbl1q_s8(v47, xmmword_298495BD0);
    v50 = vpaddq_s16(vmull_u8(*v48.i8, 0x2001200120012001), vmull_u8(*&vextq_s8(v48, v48, 8uLL), 0x2001200120012001));
    v48.i64[0] = 0x7000700070007;
    v48.i64[1] = 0x7000700070007;
    v51 = vandq_s8(v50, v48);
    v52 = vandq_s8(vshrq_n_u16(v50, 5uLL), v48);
    v53.i64[0] = 0x4000400040004;
    v53.i64[1] = 0x4000400040004;
    v54 = vceqq_s16(v49, v53);
    v55 = vceqq_s16(v52, v53);
    v56 = vsubq_s8(vaddq_s16(v50, vshlq_n_s16(v49, 3uLL)), vandq_s8(vqtbl1q_s8(xmmword_298495BE0, v51), v55));
    if ((vmaxvq_u16(v54) & 0x8000) != 0)
    {
      v57 = v9;
      v58.i64[0] = 0x18001800180018;
      v58.i64[1] = 0x18001800180018;
      v59 = vmulq_s16(v52, v58);
      v9 = v57;
      v56 = vsubq_s8(v56, vaddq_s8(vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495BF0, v51), v54), vandq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C00, v51), v54), v55)), vandq_s8(v59, vandq_s8(vceqq_s16(v51, v53), v54))));
    }

    v60 = vorrq_s8(vshlq_u8(vshlq_u8(vandq_s8(vqtbl1q_s8(v56, xmmword_298495E10), xmmword_298495E20), xmmword_298495E30), v46), vandq_s8(v16, vdupq_n_s8((1 << v14) - 1)));
    v61 = vaddq_s16(vshlq_u16(vshlq_u16((*&v60 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)), vnegq_s16(vdupq_n_s16(6 - v14))), xmmword_298495E40), (*&v60 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v62.i64[0] = 0xFFFF0000FFFFLL;
    v62.i64[1] = 0xFFFF0000FFFFLL;
    v63 = vandq_s8(v61, v62);
    v64.i64[0] = 0xFFFF0000FFFF0000;
    v64.i64[1] = 0xFFFF0000FFFF0000;
    v65 = vshlq_u32(vandq_s8(v61, v64), vnegq_s32(vdupq_n_s32(12 - 2 * v14)));
    v66 = vaddq_s32(v65, v63);
    v65.i32[1] = 0;
    v67 = vaddq_s32(v66, v65);
    v66.i64[0] = 0xFFFFFFFFLL;
    v66.i64[1] = 0xFFFFFFFFLL;
    v68 = vandq_s8(v67, v66);
    v64.i64[0] = 0xFFFFFFFF00000000;
    v64.i64[1] = 0xFFFFFFFF00000000;
    LODWORD(v69) = 0;
    HIDWORD(v69) = v67.i32[1];
    v70 = vaddq_s64(vandq_s8(v67, v64), v69);
    *v64.i8 = vdup_n_s32(23 - 4 * v14);
    v71.i64[0] = v64.u32[0];
    v71.i64[1] = v64.u32[1];
    v72 = vaddq_s64(vshlq_u64(v70, vnegq_s64(v71)), v68);
    v25 = v72.u64[1];
    v27 = (v72.i64[1] << (8 * v14 + 19)) | v72.i64[0];
    v73 = 45;
LABEL_23:
    LOBYTE(v14) = v73 - 8 * v14;
    goto LABEL_24;
  }

LABEL_25:
  v104 = vqtbl1q_s8(v11, vsubq_s8(v9, vdupq_n_s8(v12 >> 3)));
  *&result = vorrq_s8(vorrq_s8(vshlq_u64(vqtbl1q_s8(v104, xmmword_298451AD0), vdupq_n_s64(*&v12 | 0xFFFFFFFFFFFFFFF8)), vorrq_s8(v2, vshlq_u64(v104, vdupq_n_s64(v12 & 7)))), vqtbl1q_s8(vrbitq_s8(v45), xmmword_298495DE0)).u64[0];
  return result;
}

double EncodeValues(unsigned __int8 *a1, uint8x16_t a2)
{
  v2 = a1[1];
  if (v2 != 1)
  {
    v3 = a1[2];
    if (a1[2])
    {
      v4 = vmovl_high_u8(a2);
      v5 = vmovl_u8(*a2.i8);
      v6 = vdupq_n_s16(*a1);
      v7 = vsubw_high_u8(v6, a2);
      v20 = v4;
      v21 = v7;
      v8 = vsubw_u8(v6, *a2.i8);
      v18 = v5;
      v19 = v8;
      if (v2 == 3)
      {
        v9 = 21846;
      }

      else
      {
        v9 = 13108;
      }

      v16 = vminq_u16(v8, v5);
      v17 = vminq_u16(v7, v4);
      v23[0] = v16;
      v23[1] = v17;
      v22[0] = vdupq_n_s16(v9);
      v22[1] = v22[0];
      mul_hi(v23, v22, &v24);
      v10 = vmovl_u8(vdup_n_s8(v2));
      v11 = vmlsq_s16(v16, v24, v10);
      v12 = vmlsq_s16(v17, v25, v10);
      v13 = vdupq_n_s16(v3);
      v14 = vaddq_s16(vshlq_u16(v12, v13), vaddq_s16(v25, v25));
      v12.i64[0] = 0x1000100010001;
      v12.i64[1] = 0x1000100010001;
      a2.i64[0] = vuzp1q_s8(vorrq_s8(vaddq_s16(vshlq_u16(v11, v13), vaddq_s16(v24, v24)), vandq_s8(vcgtq_u16(v18, v19), v12)), vorrq_s8(v14, vandq_s8(vcgtq_u16(v20, v21), v12))).u64[0];
    }
  }

  return *a2.i64;
}

void ASTCEncoder::~ASTCEncoder(char **this)
{
  *this = &unk_2A1EE71B8;
  freePartitionTables2D(this[12]);
}

{
  ASTCEncoder::~ASTCEncoder(this);

  JUMPOUT(0x29C28AB80);
}

uint32x4_t mul_hi@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint16x8_t *a3@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  v5 = vqshrn_n_u32(vmull_u16(*v3.i8, *v4.i8), 0x10uLL);
  result = vmull_high_u16(v3, v4);
  *a3 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*a1, *a2), 0x10uLL), vmull_high_u16(*a1, *a2), 0x10uLL);
  a3[1] = vqshrn_high_n_u32(v5, result, 0x10uLL);
  return result;
}

double pack_bits_vec(char a1, uint16x8_t a2)
{
  v2 = *&a2 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
  a2.i32[0] &= 0xFF00FF00;
  a2.i16[2] &= 0xFF00u;
  a2.i16[3] &= 0xFF00u;
  a2.i16[4] &= 0xFF00u;
  a2.i16[5] &= 0xFF00u;
  a2.i16[6] &= 0xFF00u;
  a2.i16[7] &= 0xFF00u;
  v3 = vorrq_s8(vshlq_u16(a2, vnegq_s16(vdupq_n_s16((8 - a1)))), v2);
  *&v2 = 0xFFFF0000FFFFLL;
  *(&v2 + 1) = 0xFFFF0000FFFFLL;
  v4.i64[0] = 0xFFFF0000FFFF0000;
  v4.i64[1] = 0xFFFF0000FFFF0000;
  v5 = vorrq_s8(vshlq_u32(vandq_s8(v3, v4), vnegq_s32(vdupq_n_s32(2 * ((8 - a1) & 0x7Fu)))), vandq_s8(v3, v2));
  *&v2 = 0xFFFFFFFFLL;
  *(&v2 + 1) = 0xFFFFFFFFLL;
  v6 = vandq_s8(v5, v2);
  v4.i64[0] = 0xFFFFFFFF00000000;
  v4.i64[1] = 0xFFFFFFFF00000000;
  v7 = vandq_s8(v5, v4);
  *v4.i8 = vdup_n_s32(4 * ((8 - a1) & 0x3Fu));
  v8.i64[0] = v4.u32[0];
  v8.i64[1] = v4.u32[1];
  v9 = vorrq_s8(vshlq_u64(v7, vnegq_s64(v8)), v6);
  *&result = (v9.i64[1] << (8 * a1)) | v9.i64[0];
  return result;
}

uint64_t ATEncoder_dtor(uint64_t result)
{
  if (result)
  {
    return (**(result + 80))();
  }

  return result;
}

double pack_trits_vec(unsigned int a1, uint8x16_t a2)
{
  v2 = vdupq_n_s8(a1);
  v3 = vshlq_u8(a2, vnegq_s8(v2));
  v4 = vqtbl1q_s8(v3, xmmword_298495C40);
  v5 = vqtbl1q_s8(v3, xmmword_298495C50);
  v6 = vpaddq_s16(vmull_u8(*v4.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v4, v4, 8uLL), 0x8010040180100401));
  v6.i64[0] = vpaddq_s16(v6, v6).u64[0];
  v7 = vmovl_s16(*v6.i8);
  v8 = vshlq_n_s32(v5, 5uLL);
  v4.i64[0] = 0x3000000030;
  v4.i64[1] = 0x3000000030;
  v9.i64[0] = 0x2000000020;
  v9.i64[1] = 0x2000000020;
  v10 = vceqq_s32(vandq_s8(v7, v4), v9);
  v11 = vaddw_s16(v8, *v6.i8);
  v9.i64[0] = 0xFF000000FFLL;
  v9.i64[1] = 0xFF000000FFLL;
  v12 = vcgtq_s32(v11, v9);
  if ((vmaxvq_u32(vorrq_s8(v10, v12)) & 0x80000000) != 0)
  {
    v13.i64[0] = 0x200000002;
    v13.i64[1] = 0x200000002;
    v14 = vceqq_s32(v5, v13);
    v15 = vshrq_n_u32(v7, 2uLL);
    v16 = vandq_s8(v12, v14);
    v17.i64[0] = 0xF0000000FLL;
    v17.i64[1] = 0xF0000000FLL;
    v18 = vandq_s8(v7, v17);
    v19.i64[0] = 0x303030303030303;
    v19.i64[1] = 0x303030303030303;
    v20.i64[0] = 0x6060606060606060;
    v20.i64[1] = 0x6060606060606060;
    v11 = vaddq_s8(vsubq_s8(vaddq_s8(vandq_s8(vmlaq_s8(v20, v8, v19), v12), v11), vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C60, v18), v10), vandq_s8(vqtbl1q_s8(xmmword_298495C70, vandq_s8(v15, v17)), v16))), vandq_s8(vqtbl1q_s8(xmmword_298495C80, v18), vandq_s8(v10, v16)));
  }

  v21 = vorrq_s8(vshlq_u8(vshlq_u8(vandq_s8(vqtbl1q_s8(v11, xmmword_298495DF0), xmmword_298495D00), xmmword_298495D30), v2), vandq_s8(vdupq_n_s8((1 << a1) - 1), a2));
  v22 = vaddq_s16(vshlq_u16(vshlq_u16((*&v21 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)), vnegq_s16(vdupq_n_s16(7 - a1))), xmmword_298495E00), (*&v21 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
  v23.i64[0] = 0xFFFF0000FFFFLL;
  v23.i64[1] = 0xFFFF0000FFFFLL;
  v24 = vandq_s8(v22, v23);
  v25.i64[0] = 0xFFFF0000FFFF0000;
  v25.i64[1] = 0xFFFF0000FFFF0000;
  v26 = vshlq_u32(vandq_s8(v22, v25), vnegq_s32(vdupq_n_s32(13 - 2 * a1)));
  v27 = vaddq_s32(vaddq_s32(v26, v24), v26.u32[0]);
  v24.i64[0] = 0xFFFFFFFFLL;
  v24.i64[1] = 0xFFFFFFFFLL;
  v28 = vandq_s8(v27, v24);
  v25.i64[0] = 0xFFFFFFFF00000000;
  v25.i64[1] = 0xFFFFFFFF00000000;
  v29 = vandq_s8(v27, v25);
  *v25.i8 = vdup_n_s32(25 - 4 * a1);
  v30.i64[0] = v25.u32[0];
  v30.i64[1] = v25.u32[1];
  v31 = vaddq_s64(vshlq_u64(v29, vnegq_s64(v30)), v28);
  *&result = (v31.i64[1] << (8 * a1 + 13)) | v31.i64[0];
  return result;
}

void freePartitionTables2D(char *a1)
{
  if (a1)
  {
    for (i = 0; i != 24576; i += 8)
    {
      v3 = *&a1[i];
      if (v3)
      {
        free(v3);
      }
    }

    free(a1);
  }
}

void *___ZN11ASTCEncoderC2ERK10CommonData_block_invoke()
{
  v0 = dlopen("/System/Library/Frameworks/Accelerate.framework/Accelerate", 261);
  if (!v0)
  {
    result = _vDSP_meanv;
    if (_vDSP_meanv)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  result = dlsym(v0, "vDSP_meanv");
  _vDSP_meanv = result;
  if (!result)
  {
LABEL_3:
    _vDSP_meanv = my_meanv;
  }

LABEL_4:
  kAlphaProcs4x4 = PassThrough_4x4_vec;
  qword_2A1898BC8 = FlattenNon_4x4_vec;
  qword_2A1898BD0 = Premultiply_4x4_vec;
  qword_2A1898BD8 = SetAlphaOne_4x4_vec;
  unk_2A1898BE0 = SetAlphaOne_4x4_vec;
  qword_2A1898BE8 = SetAlphaOne_4x4_vec;
  qword_2A1898BF0 = Unpremultiply_4x4_vec;
  qword_2A1898BF8 = FlattenPre_4x4_vec;
  qword_2A1898C00 = ClampPremultiplied_4x4_vec;
  kAlphaProcs8x8 = PassThrough_8x8_vec;
  qword_2A1898B80 = FlattenNon_8x8_vec;
  qword_2A1898B88 = Premultiply_8x8_vec;
  qword_2A1898B90 = SetAlphaOne_8x8_vec;
  unk_2A1898B98 = SetAlphaOne_8x8_vec;
  qword_2A1898BA0 = SetAlphaOne_8x8_vec;
  qword_2A1898BA8 = Unpremultiply_8x8_vec;
  qword_2A1898BB0 = FlattenPre_8x8_vec;
  qword_2A1898BB8 = ClampPremultiplied_8x8_vec;
  kEncodeProcs4x4 = EncodeASTC_4x4_RGBA_vec;
  kEncodeProcs8x8 = EncodeASTC_8x8_RGBA_vec;
  kDecodeProcs = DecodeASTC_RGBA_vec;
  kReadProcs4x4 = Read_4x4_R8_vec;
  qword_2A1898CA8 = Read_4x4_RA8_vec;
  qword_2A1898CB0 = Read_4x4_RGBA8_vec;
  qword_2A1898CB8 = Read_4x4_BGRA8_vec;
  qword_2A1898CC0 = Read_4x4_R16_vec;
  qword_2A1898CC8 = Read_4x4_RA16_vec;
  qword_2A1898CD0 = Read_4x4_RGBA16_vec;
  qword_2A1898CD8 = Read_4x4_Rf16_vec;
  qword_2A1898CE0 = Read_4x4_RAf16_vec;
  qword_2A1898CE8 = Read_4x4_RGBAf16_vec;
  kReadProcs8x8 = Read_8x8_R8_vec;
  qword_2A1898C58 = Read_8x8_RA8_vec;
  qword_2A1898C60 = Read_8x8_RGBA8_vec;
  qword_2A1898C68 = Read_8x8_BGRA8_vec;
  qword_2A1898C70 = Read_8x8_R16_vec;
  qword_2A1898C78 = Read_8x8_RA16_vec;
  qword_2A1898C80 = Read_8x8_RGBA16_vec;
  qword_2A1898C88 = Read_8x8_Rf16_vec;
  qword_2A1898C90 = Read_8x8_RAf16_vec;
  qword_2A1898C98 = Read_8x8_RGBAf16_vec;
  kWriteProcs = Write_R8_vec;
  qword_2A1898D58 = Write_RA8_vec;
  qword_2A1898D60 = Write_RGBA8_vec;
  qword_2A1898D68 = Write_BGRA8_vec;
  qword_2A1898D70 = Write_R16_vec;
  qword_2A1898D78 = Write_RA16_vec;
  qword_2A1898D80 = Write_RGBA16_vec;
  qword_2A1898D88 = Write_Rf16_vec;
  qword_2A1898D90 = Write_RAf16_vec;
  qword_2A1898D98 = Write_RGBAf16_vec;
  kTexelAlphaProcs = PassThrough_vec;
  qword_2A1898AE0 = FlattenNon_vec;
  qword_2A1898AE8 = Premultiply_vec;
  qword_2A1898AF0 = SetAlphaOne_vec;
  unk_2A1898AF8 = SetAlphaOne_vec;
  qword_2A1898B00 = SetAlphaOne_vec;
  qword_2A1898B08 = Unpremultiply_vec;
  qword_2A1898B10 = FlattenPre_vec;
  qword_2A1898B18 = ClampPremultiplied_vec;
  return result;
}

uint32_t at_encoder_get_version(void)
{
  result = at_encoder_get_version::version;
  if (at_encoder_get_version::version)
  {
    return result;
  }

  result = dladdr(at_encoder_create, &v14);
  if (!result)
  {
    return result;
  }

  dli_fbase = v14.dli_fbase;
  if (!v14.dli_fbase)
  {
    return 0;
  }

  if (*v14.dli_fbase != -889275714 && *v14.dli_fbase != -1095041334)
  {
    goto LABEL_16;
  }

  v3 = *(v14.dli_fbase + 1);
  if (!v3)
  {
    return 0;
  }

  v4 = bswap32(v3);
  for (i = (v14.dli_fbase + 16); *(i - 2) != 16777228; i += 5)
  {
    if (!--v4)
    {
      return 0;
    }
  }

  v6 = *i;
  if (!v6)
  {
    return 0;
  }

  dli_fbase = v14.dli_fbase + v6;
LABEL_16:
  v8 = *(dli_fbase + 8);
  v7 = dli_fbase + 32;
  v9 = *(v7 - 3);
  v10 = v8 != 13;
  v11 = v8 != 13 && v9 >= 9;
  if (v11)
  {
    do
    {
      v12 = v7[1];
      v11 = v9 >= v12;
      v9 -= v12;
      if (!v11)
      {
        v9 = 0;
      }

      v7 = (v7 + v12);
      v10 = *v7 != 13;
    }

    while (*v7 != 13 && v9 > 8);
  }

  result = 0;
  if (v9 >= 8 && !v10)
  {
    result = v7[4];
    at_encoder_get_version::version = result;
  }

  return result;
}

char *getPartitionTable(uint64_t a1, int a2, int a3)
{
  if (a3 < 2)
  {
    return &getPartitionTable_kZeros;
  }

  v7 = a2 + (a3 << 10) - 2048;
  result = *(a1 + 8 * v7);
  if (!result)
  {
    result = malloc_type_malloc(*(a1 + 24577) * *(a1 + 24576), 0x100004077774924uLL);
    if (result)
    {
      v8 = *(a1 + 24577);
      if (*(a1 + 24577))
      {
        v9 = 0;
        v10 = *(a1 + 24576);
        v11 = (v8 * v10) < 0x1F;
        v12 = -287438703 * ((a2 + (a3 << 10) - 1024) ^ ((a2 + (a3 << 10) - 1024) >> 15));
        v13 = (65537 * (v12 ^ (v12 >> 5))) ^ ((65537 * (v12 ^ (v12 >> 5))) >> 7);
        v14 = v13 ^ (v13 >> 3) ^ ((v13 ^ (v13 >> 3)) << 6);
        v15 = v14 ^ (v14 >> 17);
        v16 = vdup_n_s32(v15);
        v17 = v15 >> 6;
        v18 = v15 >> 2;
        v19.i32[0] = v15;
        v19.i32[1] = v15 >> 8;
        v20 = (v14 >> 20) & 0xF;
        v21 = vand_s8(v19, 0xF0000000FLL);
        v22 = vand_s8(vshl_u32(v16, 0xFFFFFFF4FFFFFFFCLL), 0xF0000000FLL);
        if ((a2 & 2) != 0)
        {
          v23 = 4;
        }

        else
        {
          v23 = 5;
        }

        if (a3 == 3)
        {
          v24 = 6;
        }

        else
        {
          v24 = 5;
        }

        if (a2)
        {
          v25 = v23;
        }

        else
        {
          v25 = v24;
        }

        if ((a2 & 1) == 0)
        {
          v24 = v23;
        }

        v26 = HIBYTE(v14) & 0xF;
        v27 = (v14 >> 28) * (v14 >> 28);
        v28 = vshl_u32(v16, 0xFFFFFFF6FFFFFFF2);
        v29 = vshl_u32(vmul_s32(v21, v21), vneg_s32(vdup_n_s32(v25)));
        v30 = vshl_u32(vmul_s32(v22, v22), vneg_s32(vdup_n_s32(v24)));
        v31 = ((HIWORD(v14) & 0xF) * (HIWORD(v14) & 0xF)) >> v25;
        v32 = (v20 * v20) >> v24;
        v33 = (v26 * v26) >> v25;
        v34 = v27 >> v24;
        v35 = result;
        do
        {
          if (v10)
          {
            v36 = 0;
            v37 = vmla_s32(v28, vdup_n_s32(v9 << v11), v30);
            do
            {
              v38 = 0;
              v39 = vand_s8(vmla_s32(v37, vdup_n_s32(v36 << v11), v29), 0x3F0000003FLL);
              v40 = (v17 + (v9 << v11) * v32 + (v36 << v11) * v31) & 0x3F;
              v41 = (v18 + (v9 << v11) * v34 + (v36 << v11) * v33) & 0x3F;
              if (a3 < 4)
              {
                v41 = 0;
              }

              if (a3 == 2)
              {
                v40 = 0;
              }

              if (v39.i32[0] < v39.i32[1] || v39.i32[0] < v40 || v39.i32[0] < v41)
              {
                if (v39.i32[1] >= v40 && v39.i32[1] >= v41)
                {
                  v38 = 1;
                }

                else if (v40 >= v41)
                {
                  v38 = 2;
                }

                else
                {
                  v38 = 3;
                }
              }

              *v35++ = v38;
              ++v36;
            }

            while (v10 != v36);
          }

          ++v9;
        }

        while (v9 != v8);
      }

      v45 = 0;
      atomic_compare_exchange_strong((a1 + 8 * v7), &v45, result);
      if (v45)
      {
        free(result);
        return *(a1 + 8 * v7);
      }
    }

    else
    {
      return &getPartitionTable_kZeros;
    }
  }

  return result;
}

_BYTE *allocatePartitionTables2D(char a1, char a2)
{
  result = malloc_type_calloc(1uLL, 0x6008uLL, 0x10100404847D080uLL);
  if (result)
  {
    result[24576] = a1;
    result[24577] = a2;
  }

  return result;
}

uint64_t decode_bc1(unsigned __int16 *a1, uint64_t a2)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 1);
  v5 = (138547333 * (0xFFFF * (v2 >> 11))) >> 32;
  v6 = (68174085 * (0xFFFF * ((v2 >> 5) & 0x3F))) >> 32;
  v7 = (138547333 * (0xFFFF * (v2 & 0x1F))) >> 32;
  v8 = (138547333 * (0xFFFF * (v3 >> 11))) >> 32;
  v9 = (68174085 * (0xFFFF * ((v3 >> 5) & 0x3F))) >> 32;
  v10 = 0xFFFF * (v3 & 0x1F);
  HIDWORD(v12) = 0xFFFF;
  LODWORD(v12) = (138547333 * (0xFFFF * (v2 >> 11))) >> 32;
  DWORD1(v12) = (68174085 * (0xFFFF * ((v2 >> 5) & 0x3F))) >> 32;
  v11 = (138547333 * v10) >> 32;
  DWORD2(v12) = (138547333 * (0xFFFF * (v2 & 0x1F))) >> 32;
  HIDWORD(v13) = 0xFFFF;
  HIDWORD(v14) = 0xFFFF;
  if (v2 <= v3)
  {
    v16 = 0;
    LODWORD(v14) = (v8 + v5) >> 1;
    DWORD1(v14) = (v9 + v6) >> 1;
    DWORD2(v14) = (v11 + v7) >> 1;
    v15 = v14;
    v14 = 0uLL;
  }

  else
  {
    HIDWORD(v15) = 0xFFFF;
    LODWORD(v15) = (1431655766 * (v8 + 2 * v5)) >> 32;
    DWORD1(v15) = (1431655766 * (v9 + 2 * v6)) >> 32;
    DWORD2(v15) = (1431655766 * (v11 + 2 * v7)) >> 32;
    LODWORD(v14) = (1431655766 * (v5 + 2 * v8)) >> 32;
    DWORD1(v14) = (1431655766 * (v6 + 2 * v9)) >> 32;
    DWORD2(v14) = (1431655766 * (v7 + 2 * v11)) >> 32;
    v16 = 1;
  }

  v17 = 0;
  v20[0] = v12;
  DWORD2(v13) = (138547333 * v10) >> 32;
  DWORD1(v13) = (68174085 * (0xFFFF * ((v3 >> 5) & 0x3F))) >> 32;
  LODWORD(v13) = (138547333 * (0xFFFF * (v3 >> 11))) >> 32;
  v20[1] = v13;
  v20[2] = v15;
  v20[3] = v14;
  *(a2 + 28) = v16;
  do
  {
    *(a2 + 288 + v17) = v20[v4 & 3];
    v4 >>= 2;
    v17 += 16;
  }

  while (v17 != 256);
  v18 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t decode_bc2(uint64_t *a1, uint64_t a2)
{
  v2 = 0;
  v17 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = *(a1 + 3);
  v6 = (138547333 * (0xFFFF * (v3 >> 11))) >> 32;
  v7 = (68174085 * (0xFFFF * ((v3 >> 5) & 0x3F))) >> 32;
  v8 = (138547333 * (0xFFFF * (v3 & 0x1F))) >> 32;
  *&v9 = __PAIR64__(v7, v6);
  *(&v9 + 1) = v8;
  HIDWORD(v10) = 0;
  HIDWORD(v11) = 0;
  LODWORD(v11) = (138547333 * (0xFFFF * (v4 >> 11))) >> 32;
  DWORD1(v11) = (68174085 * (0xFFFF * ((v4 >> 5) & 0x3F))) >> 32;
  DWORD2(v11) = (138547333 * (0xFFFF * (v4 & 0x1F))) >> 32;
  v16[0] = v9;
  v16[1] = v11;
  HIDWORD(v9) = 0;
  LODWORD(v9) = (1431655766 * (v11 + 2 * v6)) >> 32;
  DWORD1(v9) = (1431655766 * (DWORD1(v11) + 2 * v7)) >> 32;
  DWORD2(v9) = (1431655766 * (DWORD2(v11) + 2 * v8)) >> 32;
  LODWORD(v10) = (1431655766 * (v6 + 2 * v11)) >> 32;
  DWORD1(v10) = (1431655766 * (v7 + 2 * DWORD1(v11))) >> 32;
  DWORD2(v10) = (1431655766 * (v8 + 2 * DWORD2(v11))) >> 32;
  v12 = *a1;
  v16[2] = v9;
  v16[3] = v10;
  do
  {
    v13.i64[0] = 0;
    v13.i32[2] = 0;
    v13.i32[3] = 4369 * (v12 & 0xF);
    *(a2 + 288 + v2) = vaddq_s32(v16[v5 & 3], v13);
    v5 >>= 2;
    v12 >>= 4;
    v2 += 16;
  }

  while (v2 != 256);
  v14 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t decode_bc3(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 8);
  v3 = *(a1 + 10);
  v4 = (138547333 * (0xFFFF * (v2 >> 11))) >> 32;
  v5 = (68174085 * (0xFFFF * ((v2 >> 5) & 0x3F))) >> 32;
  v6 = (138547333 * (0xFFFF * (v2 & 0x1F))) >> 32;
  *&v7 = __PAIR64__(v5, v4);
  *(&v7 + 1) = v6;
  v9.i32[3] = 0;
  v9.i32[0] = (138547333 * (0xFFFF * (v3 >> 11))) >> 32;
  HIDWORD(v8) = 0;
  v9.i32[1] = (68174085 * (0xFFFF * ((v3 >> 5) & 0x3F))) >> 32;
  v9.i32[2] = (138547333 * (0xFFFF * (v3 & 0x1F))) >> 32;
  v24[0] = v7;
  v24[1] = v9;
  HIDWORD(v7) = 0;
  LODWORD(v7) = (1431655766 * (v9.i32[0] + 2 * v4)) >> 32;
  DWORD1(v7) = (1431655766 * (v9.i32[1] + 2 * v5)) >> 32;
  DWORD2(v7) = (1431655766 * (v9.i32[2] + 2 * v6)) >> 32;
  LODWORD(v8) = (1431655766 * (v4 + 2 * v9.i32[0])) >> 32;
  DWORD1(v8) = (1431655766 * (v5 + 2 * v9.i32[1])) >> 32;
  DWORD2(v8) = (1431655766 * (v6 + 2 * v9.i32[2])) >> 32;
  v24[2] = v7;
  v24[3] = v8;
  v10 = *(a1 + 1);
  v23[0] = *a1;
  v23[1] = v10;
  v11 = 2 * v10;
  v12 = 3 * v10;
  if (v23[0] <= v10)
  {
    LOBYTE(v17) = 0;
    v13 = (13108 * (v10 + 4 * v23[0])) >> 16;
    v14 = (13108 * (v11 + 3 * v23[0])) >> 16;
    v15 = (13108 * (v12 + 2 * v23[0])) >> 16;
    v16 = (13108 * (v23[0] + 4 * v10)) >> 16;
    LOBYTE(v10) = -1;
  }

  else
  {
    v13 = (9363 * (v10 + 6 * v23[0])) >> 16;
    v14 = (9363 * (v11 + 5 * v23[0])) >> 16;
    v15 = (9363 * (v12 + 4 * v23[0])) >> 16;
    v16 = (9363 * (3 * v23[0] + 4 * v10)) >> 16;
    v17 = (9363 * (5 * v10 + 2 * v23[0])) >> 16;
    v10 = (9363 * (v23[0] + 6 * v10)) >> 16;
  }

  v18 = 0;
  v23[2] = v13;
  v23[3] = v14;
  v23[4] = v15;
  v23[5] = v16;
  v23[6] = v17;
  v23[7] = v10;
  v19 = *(a1 + 12);
  v20 = *(a1 + 2) | (*(a1 + 4) << 16);
  do
  {
    v9.i64[0] = 0;
    v9.i32[2] = 0;
    v9.i8[12] = v23[v20 & 7];
    v9.i8[13] = v9.i8[12];
    *(a2 + 288 + v18) = vaddq_s32(v9, v24[v19 & 3]);
    v19 >>= 2;
    v20 >>= 3;
    v18 += 16;
  }

  while (v18 != 256);
  v21 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t decode_bc4(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v22 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 1);
  v21[0] = *a1;
  v21[1] = v3;
  v4 = (13108 * (v3 + 4 * v21[0])) >> 16;
  v5 = v21[0] > v3;
  v6 = 3 * v21[0];
  v7 = (13108 * (2 * v3 + v6)) >> 16;
  v8 = (13108 * (3 * v3 + 2 * v21[0])) >> 16;
  v9 = (13108 * (v21[0] + 4 * v3)) >> 16;
  v10 = (9363 * (v3 + 6 * v21[0])) >> 16;
  v11 = (9363 * (2 * v3 + 5 * v21[0])) >> 16;
  v12 = (9363 * (3 * v3 + 4 * v21[0])) >> 16;
  v13 = (9363 * (v6 + 4 * v3)) >> 16;
  v14 = v21[0] + 6 * v3;
  v15 = (9363 * (5 * v3 + 2 * v21[0])) >> 16;
  v16 = (9363 * v14) >> 16;
  if (v5)
  {
    LOBYTE(v4) = v10;
  }

  if (v5)
  {
    LOBYTE(v9) = v13;
  }

  else
  {
    LOBYTE(v11) = v7;
    LOBYTE(v12) = v8;
  }

  if (!v5)
  {
    LOBYTE(v15) = 0;
    LOBYTE(v16) = -1;
  }

  v21[2] = v4;
  v21[3] = v11;
  v21[4] = v12;
  v21[5] = v9;
  v21[6] = v15;
  v21[7] = v16;
  v17 = *(a1 + 2) | (*(a1 + 4) << 16);
  do
  {
    v18 = vdupq_n_s32(v21[v17 & 7] | (v21[v17 & 7] << 8));
    v18.i32[3] = 0xFFFF;
    *(a2 + 288 + v2) = v18;
    v17 >>= 3;
    v2 += 16;
  }

  while (v2 != 256);
  v19 = *MEMORY[0x29EDCA608];
  return 0;
}