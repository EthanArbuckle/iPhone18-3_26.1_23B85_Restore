void sub_195CF64CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (v22)
  {
    CFRelease(v22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __destroy_helper_block_e8_32c40_ZTSN2RB14refcounted_ptrINS_8DrawableEEE40c38_ZTSN2RB14refcounted_ptrINS_6DeviceEEE48c59_ZTSN2RB8objc_ptrIPU22objcproto11RBEncodable11objc_objectEE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add_explicit((v2 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    [RBDevice .cxx_destruct];
  }

  result = *(a1 + 32);
  if (result)
  {
    if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      return __copy_helper_block_e8_48c58_ZTSN2RB8objc_ptrIPU21objcproto10MTLTexture11objc_objectEE56c66_ZTSN2RB8objc_ptrIPU29objcproto18RBDrawableDelegate11objc_objectEE64c30_ZTSN2RB8objc_ptrIP8RBDeviceEE72c40_ZTSN2RB14refcounted_ptrINS_8DrawableEEE80c30_ZTSN2RB8objc_ptrIP8NSStringEE120c40_ZTSN2RB8objc_ptrIU13block_pointerFvvEEE128c40_ZTSN2RB8objc_ptrIU13block_pointerFvvEEE136c48_ZTSN2RB8objc_ptrIU13block_pointerFvP7NSErrorEEE144c55_ZTSN2RB8objc_ptrIPU18objcproto8MTLEvent11objc_objectEE_cold_1();
    }
  }

  return result;
}

int32x2_t *RB::RenderPass::draw_indexed_primitives(int32x2_t *result, const char *a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, int32x2_t a7, int32x2_t a8)
{
  v18 = a7;
  v19 = a8;
  if (a5)
  {
    v8 = a5;
  }

  else
  {
    v8 = *(a4 + 16) >> 1;
  }

  if (a6 && v8)
  {
    if (HIDWORD(v8))
    {
      v10 = 0;
    }

    else
    {
      v10 = HIDWORD(a6) == 0;
    }

    if (!v10)
    {
      RB::RenderPass::draw_indexed_primitives(result, a2);
    }

    v14 = result;
    result = RB::Bounds::intersect(&v18, result[21], result[22]);
    v15 = vclez_s32(v19);
    if ((vpmax_u32(v15, v15).u32[0] & 0x80000000) == 0)
    {
      v16 = RB::RenderPass::draw(v14, a2, &v18, 0);
      *(v16 + 42) = a3;
      v17 = *a4;
      *(v16 + 24) = *(a4 + 8);
      *(v16 + 28) = v8;
      *(v16 + 32) = a6;
      result = RB::RenderFrame::buffer_id(*(*v14 + 16), v17);
      *(v16 + 36) = result;
      if (a3 == 4)
      {
        *(*(*v14 + 16) + 48) += (v8 - 2) * a6;
      }
    }
  }

  return result;
}

uint64_t RB::RenderFrame::buffer_id(RB::RenderFrame *this, RB::Buffer *a2)
{
  if (!a2)
  {
    return 0;
  }

  RB::Resource::set_frame_id(a2, *(this + 24), *(this + 25));
  v4 = *(a2 + 10);
  if (!v4)
  {
    v4 = *(*(this + 14) + 8);
    ++*(a2 + 2);
    v5 = *(this + 14);
    v6 = v5[1];
    if (v6 >= v5[2])
    {
      v5 = RB::shared_vector<RB::refcounted_ptr<RB::Buffer>>::realloc_buffer(this + 14, v5);
    }

    v5[v6 + 3] = a2;
    atomic_store(v6 + 1, v5 + 1);
    *(a2 + 10) = v4;
    *(this + 8) += *(a2 + 6);
  }

  return v4;
}

void sub_195CF6808(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8) - 1;
  *(v1 + 8) = v3;
  if (!v3)
  {
    RB::RenderFrame::copy_texture(v1);
  }

  _Unwind_Resume(exception_object);
}

RB::Buffer *RB::RenderFrame::alloc_buffer_region@<X0>(RB::RenderFrame *this@<X0>, RB::Device *a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, RB::Buffer **a5@<X8>)
{
  result = *this;
  if (*(result + 40) < a2)
  {
    v9 = RB::Buffer::alloc(result, a2);
    if (!v9)
    {
      RB::RenderFrame::alloc_buffer_region(0, v10);
    }

    v11 = v9;
    RB::Resource::set_label(*(v9 + 16), "data-buffer", &RB::RenderFrame::alloc_buffer_region(unsigned long,unsigned long,unsigned int)::counter);
    result = RB::RenderFrame::buffer_id(this, v11);
    *a5 = v11;
    a5[1] = 0;
    a5[2] = *(v11 + 48);
    v12 = *(v11 + 8) - 1;
    *(v11 + 8) = v12;
    if (!v12)
    {
      v13 = *(*v11 + 8);

      return v13(v11);
    }

    return result;
  }

  v15 = *(this + 19);
  if (v15)
  {
    if (!a2)
    {
      a5[1] = 0;
      a5[2] = 0;
      *a5 = v15;
      return result;
    }

    v16 = *(this + 20);
    if ((a4 & 2) == 0)
    {
      v17 = 4;
      if (!*(result + 331))
      {
        v17 = 256;
      }

      if (v17 <= a3)
      {
        v17 = a3;
      }

      v16 = (v16 + v17 - 1) & -v17;
    }

    v18 = *(v15 + 6) - v16;
  }

  else
  {
    v18 = 0;
    v16 = 0;
  }

  if (v18 >= a2)
  {
    v20 = a4 & 1;
LABEL_29:
    if (v20)
    {
      *(this + 168) = 1;
      *a5 = *(this + 19);
      a5[1] = v16;
      a5[2] = v18;
    }

    else
    {
      *(this + 20) = a2 + v16;
      *a5 = *(this + 19);
      a5[1] = v16;
      a5[2] = a2;
    }

    return result;
  }

  RB::Device::alloc_shared_buffer(result, &v22);
  RB::RenderFrame::buffer_id(this, v22);
  if (a4)
  {
    result = v22;
  }

  else
  {
    result = v22;
    if (*(this + 19) && v18 > *(v22 + 6) - a2)
    {
      v19 = 0;
      *a5 = v22;
      a5[1] = 0;
      a5[2] = a2;
      goto LABEL_26;
    }
  }

  v16 = 0;
  *(this + 19) = result;
  *(this + 20) = 0;
  v19 = 1;
  v18 = *(result + 6);
LABEL_26:
  v20 = a4 & 1;
  v21 = *(result + 2) - 1;
  *(result + 2) = v21;
  if (!v21)
  {
    result = (*(*result + 8))(result);
  }

  if (v19)
  {
    goto LABEL_29;
  }

  return result;
}

void sub_195CF6A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    RB::RenderFrame::alloc_buffer_region(a10);
  }

  _Unwind_Resume(exception_object);
}

void RB::RenderPass::resolve_framebuffer(int64_t **this, int32x2_t *a2, int32x2_t *a3, int32x2_t *a4, float32x4_t a5, __n128 _Q1, __n128 a7)
{
  v15 = 0;
  v77 = *MEMORY[0x1E69E9840];
  v16 = *this;
  v17 = **this;
  v18 = a2[7];
  v19 = a3[7];
  v20 = *(v16 + 9);
  v21 = *(v16 + 10);
  if (v17 > 42)
  {
    switch(v17)
    {
      case 2147483649:
        if (v18 != 10 || v19 != 80)
        {
          goto LABEL_101;
        }

        goto LABEL_45;
      case 2147483650:
        if (v18 != 10 || v19 != 81)
        {
          goto LABEL_101;
        }

        v24 = 2;
        goto LABEL_56;
      case 2147483651:
        if (v18 != 25 || v19 != 115)
        {
          goto LABEL_101;
        }

LABEL_45:
        v24 = 2;
        goto LABEL_52;
      case 2147483652:
        v15 = 8;
        goto LABEL_31;
      case 2147483653:
        v15 = 8;
        goto LABEL_38;
      case 2147483654:
        v22 = 136;
        goto LABEL_28;
      case 2147483655:
      case 2147483656:
      case 2147483657:
      case 2147483658:
      case 2147483659:
      case 2147483660:
        goto LABEL_13;
      case 2147483661:
        if (a2 == a3 && v18 == 115)
        {
          v22 = 0;
          v24 = 5;
          goto LABEL_64;
        }

        if (v18 == 110 && v19 == 115)
        {
          goto LABEL_62;
        }

        goto LABEL_101;
      case 2147483662:
        if (v18 == 10 && v19 == 80)
        {
          goto LABEL_51;
        }

        goto LABEL_101;
      case 2147483663:
        if (v18 != 10 || v19 != 81)
        {
          goto LABEL_101;
        }

        v24 = 0;
LABEL_56:
        v22 = 264;
        goto LABEL_64;
      case 2147483664:
        if (v18 != 30 || v19 != 80)
        {
          goto LABEL_101;
        }

        goto LABEL_59;
      case 2147483665:
        if (v18 != 30 || v19 != 81)
        {
          goto LABEL_101;
        }

        v24 = 6;
        v22 = 8;
        goto LABEL_64;
      case 2147483666:
        if (v18 != 25 || v19 != 115)
        {
          goto LABEL_101;
        }

LABEL_51:
        v24 = 0;
LABEL_52:
        v22 = 256;
        goto LABEL_64;
      case 2147483667:
        if (v18 != 65 || v19 != 115)
        {
          goto LABEL_101;
        }

LABEL_59:
        v22 = 0;
        v24 = 6;
        goto LABEL_64;
      default:
        if (v17 != 43)
        {
          goto LABEL_13;
        }

LABEL_38:
        if (v18 == 43)
        {
          goto LABEL_41;
        }

        if (v18 != 23)
        {
          goto LABEL_101;
        }

        v24 = 12;
        goto LABEL_42;
    }
  }

  switch(v17)
  {
    case '(':
LABEL_31:
      if (v18 != 40)
      {
        if (v18 != 23)
        {
          goto LABEL_101;
        }

        v24 = 11;
        goto LABEL_42;
      }

LABEL_41:
      v24 = 8;
LABEL_42:
      v22 = v15 | 0x180;
      goto LABEL_64;
    case ')':
      if (v18 != 41)
      {
        goto LABEL_101;
      }

      v15 = 0;
      goto LABEL_41;
    case '*':
      v22 = 128;
LABEL_28:
      if (v18 != 42)
      {
LABEL_101:
        v54 = a3[7];
        v55 = RB::pixel_format_name(v17, a2);
        v57 = RB::pixel_format_name(v18, v56);
        v59 = RB::pixel_format_name(v54, v58);
        RB::precondition_failure("unexpected framebuffer resolve: %s, %s, %s", v60, v55, v57, v59);
      }

      break;
    default:
LABEL_13:
      if (v18 != v17 || v19 != v17)
      {
        goto LABEL_101;
      }

LABEL_62:
      v22 = 0;
      break;
  }

  v24 = 0;
LABEL_64:
  if (v20 == v21)
  {
    v65 = a5;
    v66 = _Q1;
  }

  else
  {
    if ((v21 & 0xF0) == 0x10 && (RB::pixel_format_traits(v19, a2)[1] & 0x10) != 0)
    {
      LOBYTE(v21) = v21 & 0xF;
    }

    if ((v20 & 0xF0) == 0x10 && (RB::pixel_format_traits(v17, a2)[1] & 0x10) != 0)
    {
      LOBYTE(v20) = v20 & 0xF;
    }

    a5.i64[0] = 0;
    RB::ColorSpace::Conversion::Conversion(&v69, v21, v20, a5, 0.0);
    if ((v69 & 7) == 2)
    {
      _Q1.n128_u32[0] = DWORD2(v69);
      _Q0.i32[0] = DWORD1(v69);
      _S2 = HIDWORD(v69);
      __asm { FCVT            H0, S0 }

      LOWORD(v63) = _Q0.i16[0];
      __asm { FCVT            H0, S1 }

      HIWORD(v63) = _Q0.i16[0];
      __asm { FCVT            H0, S2 }

      v64 = _Q0.i16[0];
    }

    if ((v69 & 0x38) == 0x10)
    {
      _Q1.n128_u32[0] = DWORD1(v70);
      _Q0.i32[0] = v70;
      _S2 = DWORD2(v70);
      __asm
      {
        FCVT            H13, S0
        FCVT            H12, S1
        FCVT            H11, S2
      }
    }

    v22 = v22 & 0x1C0 | v69 & 7 | v69 & 0x38;
    if ((v69 & 0x80) != 0)
    {
      v32 = v72.i64[1];
      _Q1.n128_u64[1] = v73.u64[1];
      v26.n128_u64[0] = vcvt_f16_f32(v72);
      v33 = vcvt_f16_f32(v73);
      _Q1.n128_u64[0] = vcvt_f16_f32(v74);
      v22 |= 0x40u;
      a7.n128_u64[1] = 0x1514131211100504;
      v34 = vqtbl2q_s8(*(&_Q1 - 1), xmmword_195E47A80);
      v65 = v34;
      v66 = v26;
      v62 = vqtbl2q_s8(*(&v26 - 1), xmmword_195E47A90);
    }

    else
    {
      v65 = _Q0;
      v66 = _Q1;
    }
  }

  if (a3 == a2)
  {
    v35 = 34;
  }

  else
  {
    v35 = 32;
  }

  v36 = v35 | (v24 << 6) | ((*(this + 33) == 2) << 17) | (v22 << 18);
  if (a3 == a2)
  {
    v40 = 1;
    v41 = this;
    if (!a4)
    {
      goto LABEL_98;
    }

    goto LABEL_93;
  }

  v37 = (*this)[2];
  if (*(*v37 + 333) == 1 && (v38 = RB::Texture::has_write_usage(a2), v37 = (*this)[2], (v38 & 1) != 0))
  {
    v39 = RB::RenderFrame::texture_id(v37, a2);
    v40 = 1;
    v41 = this;
  }

  else
  {
    RB::RenderFrame::flush_pass(v37, this, 1);
    MEMORY[0x1EEE9AC00](v42, v43);
    v41 = v61;
    memset(v61, 0, sizeof(v61));
    RB::RenderPass::RenderPass(v61, *this, a2, 0, 0, 4, v18);
    v36 = v36 & 0x7FEFFC0 | 0x21;
    if ((v24 & 7) == 2)
    {
      v40 = 3;
    }

    else
    {
      v40 = 1;
    }

    v39 = RB::RenderFrame::texture_id(*(v61[0] + 16), a3);
  }

  *(v41 + 60) = v39;
  *(v41 + 244) = 0;
  if (a4)
  {
LABEL_93:
    v10.i32[0] = 0;
    v44 = vdup_n_s32(v40);
    v45 = vneg_f32(0x80000000800000);
    do
    {
      a7.n128_u64[0] = a4[3];
      _Q1.n128_u64[0] = vmul_s32(vzip1_s32(a4[4], a7.n128_u64[0]), v44);
      a7.n128_u32[0] = _Q1.n128_u32[1];
      v46 = _Q1;
      v46.n128_u32[1] = HIDWORD(*&a4[4]);
      v47 = vceq_s32(a7.n128_u64[0], 0x8000000080000000);
      v48 = vdup_lane_s32(vcgt_s32(v10, vpmin_u32(v47, v47)), 0);
      v67 = v46;
      v68 = a7;
      RB::Coverage::set_plane(&v69, v41, vbsl_s8(v48, 0x100000001000000, vcvt_f32_s32(v46.n128_u64[0])), COERCE_DOUBLE(vbsl_s8(v48, v45, vcvt_f32_s32(a7.n128_u64[0]))));
      HIDWORD(v70) = v63;
      LOWORD(v71[0]) = v64;
      WORD1(v71[0]) = _H13;
      WORD2(v71[0]) = _H12;
      WORD3(v71[0]) = _H11;
      WORD4(v71[0]) = v66.n128_u16[0];
      *(v71 + 10) = v62;
      RB::RenderFrame::alloc_buffer_region((*v41)[2], 0x3C, 4uLL, 0, &v75);
      v49 = v75;
      if (v75)
      {
        v50 = (*(v75 + 7) + v76.i64[0]);
        v51 = v69;
        v52 = v70;
        v53 = v71[0];
        *(v50 + 44) = *(v71 + 12);
        v50[1] = v52;
        v50[2] = v53;
        *v50 = v51;
      }

      else
      {
        v75 = 0;
        v76 = 0uLL;
      }

      *(v41 + 48) = RB::RenderFrame::buffer_id((*v41)[2], v49);
      *(v41 + 196) = vmovn_s64(v76);
      RB::RenderPass::draw_indexed_primitives(v41, v36, 4, *(*v41)[2] + 136, 4uLL, 1uLL, v67.n128_u64[0], v68.n128_u64[0]);
      a4 = a4[9];
    }

    while (a4);
  }

LABEL_98:
  if (v41 == this)
  {
    *(this + 60) = 0;
    *(this + 244) = 0;
  }

  else
  {
    RB::RenderPass::~RenderPass(v41);
  }
}

void RB::DisplayList::RenderState::RootTexture::render(RB::DisplayList::RenderState::RootTexture *this, void *a2, unsigned int a3)
{
  if (RB::DisplayList::RenderState::RootTexture::make_texture(this, a2))
  {
    v17 = a2[134];
    a2[134] = this + 32;
    v6 = *(this + 3);
    if (v6)
    {
      LOBYTE(v7) = 0;
      do
      {
        v8 = *(v6 + 80);
        if (v8 < a3)
        {
          break;
        }

        RB::RenderTaskTexture::render_dependencies(this, a2, *(v6 + 80));
        v9.n128_f64[0] = RB::RenderPass::RenderPass(v20, this + 32, *(this + 2), 0, *(this + 18), 0, 0);
        v10 = *(this + 3);
        if (v10)
        {
          v7 = 5;
          do
          {
            if (*(v10 + 80) < v8)
            {
              break;
            }

            v7 |= (*(v10 + 224) >> 1) & 8 | (*(v10 + 224) >> 2) & 2;
            v10 = *(v10 + 72);
          }

          while (v10);
        }

        else
        {
          v7 = (v7 & 0xF0);
        }

        if (!RB::RenderPass::set_extra_attachments(v20, v7, v9))
        {
          RB::RenderPass::~RenderPass(v20);
          break;
        }

        v11 = *(this + 3);
        if (v11 && *(this + 18) == 2)
        {
          RB::RenderPass::set_clear_color(v20, *(v11 + 144));
          *(v11 + 224) &= ~2u;
          v11 = *(this + 3);
        }

        *(this + 18) = 1;
        RB::RenderTaskTexture::render_tasks(this, v20, a2, v8);
        if (!*(this + 3) && *(this + 76) == 1)
        {
          if (*(this + 77) == 1)
          {
            v15 = *(this + 2);
            *v12.f32 = v15[8];
            v20[21] = 0;
            v20[22] = *v12.f32;
            RB::RenderPass::resolve_framebuffer(v20, v15, v15, v11, v12, v13, v14);
          }

          else
          {
            if ((*(*(this + 8) + 16))())
            {
              operator new();
            }

            v16 = RB::error_log(0);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              RB::DisplayList::RenderState::RootTexture::render(&buf, v19, v16);
            }
          }
        }

        RB::RenderPass::~RenderPass(v20);
        v6 = *(this + 3);
      }

      while (v6);
    }

    a2[134] = v17;
  }
}

void sub_195CF74A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  RB::RenderPass::~RenderPass(va);
  _Unwind_Resume(a1);
}

void RBXMLRecorderMarkFrame(const void *a1, void *a2, char a3, double a4, double a5)
{
  v33[19] = *MEMORY[0x1E69E9840];
  {
    if (os_variant_has_internal_diagnostics())
    {
      v23 = RB::debug_int("RB_SAVE_ARCHIVES", v22);
      if ((v23 & 0x100000000) != 0)
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }

    RBXMLRecorderMarkFrame(objc_object *,objc_object  {objcproto22_RBDisplayListContents}*,CGSize,RB::ColorSpace)::save_archives = v24;
  }

  if (RBXMLRecorderMarkFrame(objc_object *,objc_object  {objcproto22_RBDisplayListContents}*,CGSize,RB::ColorSpace)::save_archives >= 1)
  {
    snprintf_l(v29, 0x100uLL, 0, "RBDisplayList-%d.rbar", ++RBXMLRecorderMarkFrame(objc_object *,objc_object  {objcproto22_RBDisplayListContents}*,CGSize,RB::ColorSpace)::counter);
    RBArchiveToFile(a2, v29, RBXMLRecorderMarkFrame(objc_object *,objc_object  {objcproto22_RBDisplayListContents}*,CGSize,RB::ColorSpace)::save_archives == 1);
  }

  if (RB::XMLRecorder::enabled == 1)
  {
    v10 = [a2 _rb_xml_document];
    if (v10)
    {
      v11 = RB::XMLRecorder::export_flags;
      std::ostringstream::basic_ostringstream[abi:nn200100](v29);
      RB::XML::Document::print(v10, v29, v11 & 0x7FFFFFFF | (((a3 & 0xF0) == 0) << 31), a4, a5);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      if ([(__CFString *)v13 isEqualToString:@"__NSCFType"])
      {
        v14 = CFGetTypeID(a1);
        v13 = CFCopyTypeIDDescription(v14);
      }

      v15 = CACurrentMediaTime();
      if (RB::XMLRecorder::log_file)
      {
        v16 = fopen([RB::XMLRecorder::log_file UTF8String], "a");
        if (v16)
        {
          v17 = [(__CFString *)v13 UTF8String];
          std::ostringstream::str[abi:nn200100](v29, __p);
          if (v28 >= 0)
          {
            v18 = __p;
          }

          else
          {
            v18 = __p[0];
          }

          fprintf(v16, "** %s %p: frame at time %f **\n\n%s\n", v17, a1, v15, v18);
          if (v28 < 0)
          {
            operator delete(__p[0]);
          }

          fclose(v16);
        }
      }

      else
      {
        snprintf(__p, 0x100uLL, "\n** %s %p frame at time %f: **\n\n", [(__CFString *)v13 UTF8String], a1, v15);
        v19 = strlen(__p);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], __p, v19);
        std::ostringstream::str[abi:nn200100](v29, v25);
        if ((v26 & 0x80u) == 0)
        {
          v20 = v25;
        }

        else
        {
          v20 = v25[0];
        }

        if ((v26 & 0x80u) == 0)
        {
          v21 = v26;
        }

        else
        {
          v21 = v25[1];
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], v20, v21);
        if (v26 < 0)
        {
          operator delete(v25[0]);
        }

        std::ostream::flush();
      }

      *v29 = *MEMORY[0x1E69E54E8];
      *&v29[*(*v29 - 24)] = *(MEMORY[0x1E69E54E8] + 24);
      v30 = MEMORY[0x1E69E5548] + 16;
      if (v32 < 0)
      {
        operator delete(v31[7].__locale_);
      }

      v30 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v31);
      std::ostream::~ostream();
      MEMORY[0x19A8C09B0](v33);
    }
  }
}

float32x4_t RB::ColorSpace::Matrix::Matrix(uint64_t a1, int a2, int a3, float32x4_t result)
{
  if (a2 == a3)
  {
    *a1 = xmmword_195E428C0;
    *(a1 + 16) = xmmword_195E44A90;
    result.i64[0] = 0;
    *(a1 + 32) = xmmword_195E44AA0;
    return result;
  }

  v4 = a2 | (16 * a3);
  if (v4 <= 20)
  {
    if (v4 > 18)
    {
      if (v4 == 19)
      {
        *(a1 + 8) = -1131114416;
        *a1 = 0xBDFF34E83FD48E7BLL;
        *(a1 + 24) = -1110575742;
        *(a1 + 16) = 0x3F9104B1BF16751FLL;
        *(a1 + 40) = 1066348953;
        v5 = 0xBC08B08EBD953EC0;
      }

      else
      {
        *(a1 + 8) = 1007405984;
        *a1 = 0x3B97B8923F7B0F45;
        *(a1 + 24) = 1027072124;
        *(a1 + 16) = 0x3F831541BE0B3274;
        *(a1 + 40) = 1068009012;
        v5 = 0xBBD32FA8BC8DEC50;
      }

      goto LABEL_23;
    }

    if (v4 == 16)
    {
      __asm { FMOV            V0.4S, #1.0 }

      *a1 = result;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      return result;
    }

    if (v4 == 18)
    {
      *(a1 + 8) = -1130314640;
      *a1 = 0xBD2C68E13F9CCCE2;
      *(a1 + 24) = -1113522624;
      *(a1 + 16) = 0x3F856294BE665FF6;
      *(a1 + 40) = 1066177270;
      v5 = 0x37B41400B7E48000;
      goto LABEL_23;
    }
  }

  else if (v4 <= 48)
  {
    if (v4 == 21)
    {
      *(a1 + 8) = 1002830272;
      *a1 = 0x3CB7626C3F618369;
      *(a1 + 24) = 1019041288;
      *(a1 + 16) = 0x3F7D5469BD33F06FLL;
      *(a1 + 40) = 1068212596;
      v5 = 0x3C290620BC1C43A0;
      goto LABEL_23;
    }

    if (v4 == 33)
    {
      *(a1 + 8) = 1015799589;
      *a1 = 0x3D0811833F528A86;
      *(a1 + 24) = 1033124155;
      *(a1 + 16) = 0x3F7780183E35D180;
      *(a1 + 40) = 1063852512;
      v5 = 0xB7979400378DC000;
      goto LABEL_23;
    }
  }

  else
  {
    switch(v4)
    {
      case '1':
        *(a1 + 8) = 1015429272;
        *a1 = 0x3D8D91833F209BC4;
        *(a1 + 24) = 1035221104;
        *(a1 + 16) = 0x3F6B65503EA899F2;
        *(a1 + 40) = 1063601965;
        v5 = 0x3C3A209A3D317468;
        goto LABEL_23;
      case 'A':
        *(a1 + 8) = -1143787800;
        *a1 = 0xBB9849073F826BF8;
        *(a1 + 24) = -1123297868;
        *(a1 + 16) = 0x3F79C4A43E09DD0ALL;
        *(a1 + 40) = 1061314651;
        v5 = 0x3B9A7E1C3C667820;
        goto LABEL_23;
      case 'Q':
        *(a1 + 8) = -1147603270;
        *a1 = 0xBCD1BA953F91225ELL;
        *(a1 + 24) = -1131386608;
        *(a1 + 16) = 0x3F813A3E3D4D7138;
        *(a1 + 40) = 1061089949;
        v5 = 0xBC023F8C3BFBA380;
LABEL_23:
        *(a1 + 32) = v5;
        return result;
    }
  }

  __asm { FMOV            V0.4S, #1.0 }

  v11 = 0uLL;
  if (a3 > 4)
  {
    if (a3 > 6)
    {
      if (a3 == 7)
      {
        v12 = xmmword_195E44780;
        _Q0 = xmmword_195E44790;
        v11 = xmmword_195E447A0;
      }

      else
      {
        v12 = 0uLL;
        if (a3 == 8)
        {
          v12 = xmmword_195E448D0;
          _Q0 = xmmword_195E448E0;
          v11 = xmmword_195E448F0;
        }
      }
    }

    else if (a3 == 5)
    {
      v12 = xmmword_195E447E0;
      _Q0 = xmmword_195E447F0;
      v11 = xmmword_195E44800;
    }

    else
    {
      v12 = xmmword_195E447B0;
      _Q0 = xmmword_195E447C0;
      v11 = xmmword_195E447D0;
    }
  }

  else if (a3 > 2)
  {
    if (a3 == 3)
    {
      v12 = xmmword_195E44840;
      _Q0 = xmmword_195E44850;
      v11 = xmmword_195E44860;
    }

    else
    {
      v12 = xmmword_195E44810;
      _Q0 = xmmword_195E44820;
      v11 = xmmword_195E44830;
    }
  }

  else if (a3 == 1)
  {
    v12 = xmmword_195E448A0;
    _Q0 = xmmword_195E448B0;
    v11 = xmmword_195E448C0;
  }

  else
  {
    v12 = 0uLL;
    if (a3 == 2)
    {
      v12 = xmmword_195E44870;
      _Q0 = xmmword_195E44880;
      v11 = xmmword_195E44890;
    }
  }

  v13 = xmmword_195E44900;
  v14 = 0uLL;
  if (a2 > 4)
  {
    if (a2 > 6)
    {
      if (a2 == 7)
      {
        v13 = xmmword_195E44910;
        v15 = xmmword_195E44920;
        v14 = xmmword_195E44930;
      }

      else
      {
        v15 = 0uLL;
        if (a2 == 8)
        {
          v13 = xmmword_195E44A60;
          v15 = xmmword_195E44A70;
          v14 = xmmword_195E44A80;
        }
      }
    }

    else if (a2 == 5)
    {
      v13 = xmmword_195E44970;
      v15 = xmmword_195E44980;
      v14 = xmmword_195E44990;
    }

    else
    {
      v13 = xmmword_195E44940;
      v15 = xmmword_195E44950;
      v14 = xmmword_195E44960;
    }
  }

  else if (a2 > 2)
  {
    if (a2 == 3)
    {
      v13 = xmmword_195E449D0;
      v15 = xmmword_195E449E0;
      v14 = xmmword_195E449F0;
    }

    else
    {
      v13 = xmmword_195E449A0;
      v15 = xmmword_195E449B0;
      v14 = xmmword_195E449C0;
    }
  }

  else if (a2 == 1)
  {
    v13 = xmmword_195E44A30;
    v15 = xmmword_195E44A40;
    v14 = xmmword_195E44A50;
  }

  else
  {
    v15 = 0uLL;
    if (a2 == 2)
    {
      v13 = xmmword_195E44A00;
      v15 = xmmword_195E44A10;
      v14 = xmmword_195E44A20;
    }
  }

  v16 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, v13.f32[0]), _Q0, *v13.f32, 1), v11, v13, 2);
  v17 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(_Q0, *v15.f32, 1), v12, v15.f32[0]), v11, v15, 2);
  *(a1 + 8) = v16.i32[2];
  *(a1 + 24) = v17.i32[2];
  result = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(_Q0, *v14.f32, 1), v12, v14.f32[0]), v11, v14, 2);
  *a1 = v16.i64[0];
  *(a1 + 16) = v17.i64[0];
  *(a1 + 40) = result.i32[2];
  *(a1 + 32) = result.i64[0];
  return result;
}

float32_t RB::Coverage::set_plane(float32x2_t *a1, float32x2_t *a2, float32x2_t a3, double a4)
{
  v4.f64[0] = 0.0;
  *&v5 = *&a4;
  v4.f64[1] = *(&a4 + 1);
  v6 = a2[14];
  v6.i32[1] = vneg_f32(v6).i32[1];
  *a1 = vmul_f32(v6, vcvt_f32_f64(v5));
  a1[1] = vmul_f32(v6, vcvt_f32_f64(v4));
  __asm { FMOV            V2.2S, #-1.0 }

  a1[2] = vmla_f32(COERCE_FLOAT32X2_T(-_D2), a3, v6);
  result = a2[15].f32[0];
  a1[3].f32[0] = result;
  return result;
}

uint64_t RB::RenderPass::set_clear_color(uint64_t result, __n128 a2)
{
  if (*(result + 129) == 2)
  {
    v3 = a2.n128_f32[0];
    v4 = a2.n128_f32[1];
    v5 = a2.n128_f32[2];
    v6 = a2.n128_f32[3];
    v7 = [objc_msgSend(*(result + 144) "colorAttachments")];

    return [v7 setClearColor:{v3, v4, v5, v6}];
  }

  return result;
}

uint64_t RB::RenderPass::draw(int32x2_t *a1, const char *a2, int8x8_t *a3, uint64_t a4)
{
  v37 = a2;
  v4 = a1 + 21;
  v5 = vcgez_s32(vorr_s8(a1[21], *a3));
  if ((vpmax_u32(v5, v5).u32[0] & 0x80000000) == 0)
  {
    RB::RenderPass::draw(a1, a2);
  }

  if ((a2 & 0x3F00000000) == 0x2B00000000)
  {
    RB::RenderState::simplify_plus_lighter(&v37, *&a1[2]);
  }

  if ((*(*a1 + 11) & 0x20) != 0 && (BYTE4(v37) & 0x3Fu) - 48 <= 2)
  {
    RB::RenderState::disable_ignore_alpha_blend(&v37);
  }

  v9 = a1[19];
  if (!v9 || *v9 >= 0x400u && (RB::RenderFrame::flush_pass(*(*a1 + 16), a1, 0), !*&a1[19]))
  {
    RB::RenderFrame::acquire_queue(*(*a1 + 16), &a1[19]);
  }

  v10 = vceqz_s32(*v4);
  if ((vpmin_u32(v10, v10).u32[0] & 0x80000000) != 0)
  {
    v12 = vceq_s32(a1[22], a1[13]);
    v11 = vpmin_u32(v12, v12).u32[0] >> 31;
  }

  else
  {
    v11 = 0;
  }

  v13 = a1 + 24;
  v14 = 4;
  v15 = 57;
  do
  {
    if (a1->i32[v15])
    {
      break;
    }

    v15 -= 3;
    --v14;
  }

  while (v14);
  v16 = a1 + 30;
  v17 = 3;
  v18 = 32;
  do
  {
    if (a1[v18].i32[0])
    {
      break;
    }

    --v18;
    --v17;
  }

  while (v17);
  v19 = a1[19];
  if (*v19 == *(v19 + 1))
  {
    RB::RenderQueue::grow_ops(v19);
  }

  if (v11)
  {
    v20 = 3;
  }

  else
  {
    v20 = 7;
  }

  v21 = 64;
  if (v11)
  {
    v21 = 48;
  }

  v22 = v21 + a4 + 12 * v14 + 8 * v17;
  v23 = (v20 + v19[4]) & ~v20;
  if (v23 + v22 > v19[5])
  {
    v23 = RB::Heap::alloc_slow(v19 + 2, v22, v20);
  }

  else
  {
    v19[4] = v23 + v22;
  }

  if (v11)
  {
    v24 = 64;
  }

  else
  {
    v24 = 80;
  }

  *(v23 + 47) = *(v23 + 47) & 0xEF | v24;
  *(v23 + 46) = v14;
  *(v23 + 45) = v17;
  v25 = v19[1];
  v26 = *v19;
  *v19 = v26 + 1;
  *(v25 + 8 * v26) = v23;
  if ((v11 & 1) == 0)
  {
    *((v23 + 55) & 0xFFFFFFFFFFFFFFF8) = *v4->i8;
  }

  if (v14)
  {
    v27 = v23 + 48;
    if ((*(v23 + 47) & 0x10) != 0)
    {
      v27 = ((v23 + 55) & 0xFFFFFFFFFFFFFFF8) + 16;
    }

    do
    {
      v28 = *v13;
      *(v27 + 8) = v13[1].i32[0];
      *v27 = v28;
      v27 += 12;
      v13 = (v13 + 12);
      --v14;
    }

    while (v14);
  }

  if (v17)
  {
    v29 = v23 + 48;
    if ((*(v23 + 47) & 0x10) != 0)
    {
      v29 = ((v23 + 55) & 0xFFFFFFFFFFFFFFF8) + 16;
    }

    v30 = (v29 + 12 * *(v23 + 46));
    do
    {
      v31 = *v16++;
      *v30++ = v31;
      --v17;
    }

    while (v17);
  }

  v32 = a1[23].i8[1];
  *(v23 + 47) = *(v23 + 47) & 0xF0 | v32 & 0xF;
  v33 = a1[23].u8[0];
  *(v23 + 43) = v33;
  *(v23 + 44) = a1[23].i32[1];
  *v23 = v37;
  *(v23 + 8) = *a3;
  *(v23 + 12) = a3->i32[1];
  *(v23 + 16) = *&a3[1] + *a3;
  *(v23 + 20) = a3[1].i32[1] + a3->i32[1];
  v34 = RB::RenderState::render_mask(&v37, v32 & 0xF, v33);
  *(v23 + 40) = v34;
  a1[20].i16[0] |= v34;
  v35 = *(*a1 + 16);
  ++*(v35 + 40);
  *(v35 + 72) += RB::RenderState::fill_rate(v23, (*(v23 + 20) - *(v23 + 12)) * (*(v23 + 16) - *(v23 + 8)));
  return v23;
}

uint64_t RB::RenderState::render_mask(unsigned int *a1, int a2, int a3)
{
  v5 = BYTE1(v3);
  v6 = *a1;
  if ((*a1 & 0x20000) != 0)
  {
    v7 = 4;
  }

  else
  {
    v7 = 2;
  }

  switch(v6 & 0x3F)
  {
    case 0u:
    case 1u:
      LOBYTE(v4) = v3 | 0x3F;
      v5 = ((v3 & 0xC000) >> 8) | 0x3F;
      return v4 | (v5 << 8);
    case 2u:
    case 3u:
    case 0x21u:
      v5 = v7 | ((v3 & 0xFF00) >> 8);
      goto LABEL_23;
    case 4u:
    case 0xAu:
      v5 = ((v3 & 0xFF00) >> 8) | 0x10;
      goto LABEL_23;
    case 5u:
    case 6u:
    case 7u:
    case 8u:
      LOBYTE(v8) = v7 | v3;
      if ((*a1 & 0xC00) == 0x400)
      {
      }

      if ((*a1 & 0x4000) != 0)
      {
      }

      else
      {
        LOBYTE(v4) = v8;
      }

      if ((*a1 & 0x3C0) == 0x40)
      {
      }

      goto LABEL_16;
    case 9u:
    case 0xEu:
    case 0xFu:
    case 0x10u:
    case 0x18u:
    case 0x19u:
    case 0x1Au:
      v5 = ((v3 & 0xFF00) >> 8) | 8;
LABEL_23:
      break;
    case 0xBu:
    case 0xCu:
    case 0xDu:
      v9 = v3 & 0xFF00;
      LOBYTE(v4) = v3 | v7 | 0x10;
      if ((v6 & 0x10000) == 0)
      {
      }

      goto LABEL_38;
    case 0x11u:
      LOBYTE(v4) = v3 | 8;
      v5 = ((v3 & 0xFF00) >> 8) | 0x18;
      break;
    case 0x12u:
    case 0x13u:
    case 0x14u:
    case 0x15u:
    case 0x16u:
      LOBYTE(v4) = v3 | v7 | 0x10;
      if ((v6 & 0x10000) == 0)
      {
      }

      LOBYTE(v4) = v4 | 8;
      v5 = v7 | ((v3 & 0xFF00) >> 8) | 8;
      break;
    case 0x1Cu:
    case 0x1Du:
      v9 = v3 & 0xFF00;
      v4 = (v6 >> 12) & 0x10 | v7 | v3;
      goto LABEL_38;
    case 0x1Eu:
      v9 = v3 & 0xFF00;
      if ((v6 & 0x3C0000) == 0x1C0000)
      {
        LOBYTE(v4) = v3 | v7 | 0x10;
      }

      else
      {
      }

      goto LABEL_38;
    case 0x1Fu:
      v11 = (v6 >> 18) & 0xF;
      if (v11 <= 0xA && ((1 << v11) & 0x463) != 0)
      {
        LOBYTE(v4) = v7 | v3;
      }

      else
      {
      }

      v9 = v3 & 0xFF00;
      goto LABEL_38;
    case 0x20u:
      LOBYTE(v4) = v7 | v3;
      break;
    case 0x22u:
      v9 = v3 & 0xFF00;
      LOBYTE(v4) = v7 | v3;
      goto LABEL_38;
    case 0x23u:
      v5 = v7 | ((v3 & 0xFF00) >> 8);
      v4 = (v6 >> 12) & 0x10 | v3;
      v10 = v4 | 4;
      LOBYTE(v4) = v4 | 2;
      if ((v6 & 0x40000) == 0)
      {
        LOBYTE(v4) = v10;
      }

      break;
    case 0x24u:
    case 0x25u:
    case 0x26u:
LABEL_16:
      v9 = v3 & 0xFF00;
      if ((v6 & 0x10000) != 0)
      {
        LOBYTE(v4) = v4 | v7 | 0x10;
      }

LABEL_38:
      v5 = v7 | (v9 >> 8);
      break;
    default:
      break;
  }

  v12 = a1[1] & 0x3F;
  if (v12 - 19 < 4)
  {
    v13 = (v5 & v7) == 0;
    v14 = v5 & ~v7 | 0x10;
    if (!v13)
    {
      v5 = v14;
    }

    goto LABEL_45;
  }

  if (v12 != 23)
  {
LABEL_45:
    if (v12 > 0x17 || ((1 << v12) & 0xA80003) == 0)
    {
      LOBYTE(v4) = v5 & 0xFE | v4;
    }

    return v4 | (v5 << 8);
  }

  v15 = v7 | 0x10;
  v16 = v5 & (v7 ^ 0xFFFFFFE7) | 8;
  if ((v5 & v15) != 0)
  {
    v5 = v16;
  }

  return v4 | (v5 << 8);
}

RB::DisplayList::Builder *std::unique_ptr<RB::DisplayList::Builder>::reset[abi:nn200100](RB::DisplayList::Builder **a1, RB::DisplayList::Builder *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    RB::DisplayList::Builder::~Builder(result);

    JUMPOUT(0x19A8C09E0);
  }

  return result;
}

_DWORD *RB::DisplayList::LayerTask::finalize(RB::DisplayList::LayerTask *this)
{
  v2 = *(this + 26);
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 24);
  if (v3)
  {
    free(v3);
  }

  v4 = *(this + 22);
  if (v4)
  {
    free(v4);
  }

  *this = &unk_1F0A3D6A0;
  v5 = *(this + 8);
  if (v5)
  {
    v6 = v5[2] - 1;
    v5[2] = v6;
    if (!v6)
    {
      (*(*v5 + 8))(v5);
    }
  }

  result = *(this + 7);
  if (result)
  {
    v8 = result[2] - 1;
    result[2] = v8;
    if (!v8)
    {
      v9 = *(*result + 8);

      return v9();
    }
  }

  return result;
}

void RB::RenderFrame::~RenderFrame(RB::RenderFrame *this)
{
  v63 = *MEMORY[0x1E69E9840];
  RB::RenderFrame::will_render(this);
  RB::RenderFrame::end_encoding(this);
  v2 = *this;
  if (*this)
  {
    atomic_fetch_add_explicit(v2 + 2, 1u, memory_order_relaxed);
  }

  v3 = *(this + 1);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3[2], 1u, memory_order_relaxed);
  }

  v4 = *(this + 3);
  v5 = *(this + 22);
  v6 = *(this + 24);
  if ((*(this + 92) & 1) == 0)
  {
    v7 = *(this + 2);
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3321888768;
    v55[2] = ___ZN2RB11RenderFrameD2Ev_block_invoke;
    v55[3] = &__block_descriptor_52_e8_32c40_ZTSN2RB14refcounted_ptrINS_8DrawableEEE40c38_ZTSN2RB14refcounted_ptrINS_6DeviceEEE_e28_v16__0___MTLCommandBuffer__8l;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3[2], 1u, memory_order_relaxed);
    }

    v56 = v3;
    v58 = v6;
    if (v2)
    {
      atomic_fetch_add_explicit(v2 + 2, 1u, memory_order_relaxed);
    }

    v57 = v2;
    [v7 addScheduledHandler:v55];
    if (v57 && atomic_fetch_add_explicit(v57 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      [RBDevice initWithDevice:];
    }

    if (v56 && atomic_fetch_add_explicit(&v56[2], 0xFFFFFFFF, memory_order_release) == 1)
    {
      [RBDrawable initWithDevice:];
    }
  }

  v8 = *(this + 18);
  *(this + 18) = 0;
  v9 = *(this + 2);
  v45 = MEMORY[0x1E69E9820];
  v46 = 3321888768;
  v47 = ___ZN2RB11RenderFrameD2Ev_block_invoke_2;
  v48 = &__block_descriptor_72_e8_32c40_ZTSN2RB14refcounted_ptrINS_8DrawableEEE40c38_ZTSN2RB14refcounted_ptrINS_6DeviceEEE48c59_ZTSN2RB8objc_ptrIPU22objcproto11RBEncodable11objc_objectEE_e28_v16__0___MTLCommandBuffer__8l;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3[2], 1u, memory_order_relaxed);
  }

  v49 = v3;
  v53 = v6;
  if (v2)
  {
    atomic_fetch_add_explicit(v2 + 2, 1u, memory_order_relaxed);
  }

  v50 = v2;
  v54 = v5;
  v51 = v4;
  v52 = v8;
  [v9 addCompletedHandler:&v45];
  RB::Device::will_submit_command_buffer(v2, *(this + 2), *(this + 385), *(this + 387));
  v10 = *(this + 2);
  if (*(this + 92))
  {
    v11 = [v10 commitAndWaitUntilSubmitted];
    if ((*(this + 92) & 1) == 0)
    {
      goto LABEL_27;
    }

    if (v11)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v11 = [v10 commit];
  if (*(this + 92))
  {
LABEL_25:
    [*(this + 2) waitUntilScheduled];
LABEL_26:
    RB::Device::dispatch_frame_continuation(v2, v6, *(this + 2), 0);
  }

LABEL_27:
  if (v3)
  {
    v12 = RB::current_time_seconds(v11);
    RB::Drawable::submit_frame(v3, this + 4, v12 - *(this + 10));
  }

  v13 = [RB::Device::capture_scope(v2) endScope];
  v14 = RB::signposts_log(v13);
  v15 = v14;
  if (v14 && &v3->_os_unfair_lock_opaque + 1 >= 2 && os_signpost_enabled(v14))
  {
    v43 = *(this + 4);
    v44 = *(this + 5);
    *buf = 67109376;
    v60 = v43;
    v61 = 1024;
    v62 = v44;
    _os_signpost_emit_with_name_impl(&dword_195CE8000, v15, OS_SIGNPOST_INTERVAL_END, v3, "CommandBuffer", "renderPasses=%u drawCalls=%u", buf, 0xEu);
  }

  if (v50 && atomic_fetch_add_explicit(v50 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    [RBDevice initWithDevice:];
  }

  if (v49 && atomic_fetch_add_explicit(&v49[2], 0xFFFFFFFF, memory_order_release) == 1)
  {
    [RBDrawable initWithDevice:];
  }

  if (v3 && atomic_fetch_add_explicit(&v3[2], 0xFFFFFFFF, memory_order_release) == 1)
  {
    [RBDrawable initWithDevice:];
    if (!v2)
    {
      goto LABEL_42;
    }
  }

  else if (!v2)
  {
    goto LABEL_42;
  }

  if (atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    [RBDevice initWithDevice:];
  }

LABEL_42:

  v16 = *(this + 45);
  if (v16)
  {
    v17 = *(this + 45);
  }

  else
  {
    v17 = this + 328;
  }

  v18 = *(this + 92);
  if (v18)
  {
    for (i = 0; i < v18; ++i)
    {
      v20 = *&v17[8 * i];
      *&v17[8 * i] = 0;
      if (v20)
      {
        RB::RenderFrame::QueueDeleter::operator()(v16, v20);
        v18 = *(this + 92);
      }
    }

    v16 = *(this + 45);
  }

  if (v16)
  {
    free(v16);
  }

  RB::UntypedTable::~UntypedTable((this + 256));
  v21 = *(this + 30);
  if (v21)
  {
    v22 = *(this + 30);
  }

  else
  {
    v22 = this + 176;
  }

  if (*(this + 62))
  {
    v23 = 0;
    do
    {
      v24 = *&v22[8 * v23];
      if (v24)
      {
        v25 = v24[2] - 1;
        v24[2] = v25;
        if (!v25)
        {
          (*(*v24 + 8))(v24);
        }
      }

      ++v23;
    }

    while (v23 < *(this + 62));
    v21 = *(this + 30);
  }

  if (v21)
  {
    free(v21);
  }

  std::unique_ptr<RB::vector<RB::cf_ptr<__IOSurface *>,8ul,unsigned long>>::reset[abi:nn200100](this + 18, 0);
  v26 = *(this + 17);
  if (v26)
  {
    do
    {
      v27 = *v26;
      operator delete(v26);
      v26 = v27;
    }

    while (v27);
  }

  *(this + 17) = 0;
  v28 = RB::shared_vector<RB::refcounted_ptr<RB::Buffer>>::buffer::~buffer(*(this + 16));
  free(v28);
  v29 = *(this + 15);
  v30 = v29[1];
  if (v30)
  {
    v31 = v29 + 3;
    do
    {
      v33 = *v31++;
      v32 = v33;
      if (v33)
      {
        v34 = (v32 & 0xFFFFFFFFFFFFFFFELL);
        v35 = *((v32 & 0xFFFFFFFFFFFFFFFELL) + 8) - 1;
        v34[2] = v35;
        if (!v35)
        {
          (*(*v34 + 8))(v34);
        }
      }

      --v30;
    }

    while (v30);
  }

  v36 = RB::shared_vector<RB::refcounted_ptr<RB::Buffer>>::buffer::~buffer(v29);
  free(v36);
  v37 = *(this + 14);
  v38 = v37[1];
  if (v38)
  {
    v39 = (v37 + 3);
    do
    {
      v40 = *v39;
      if (*v39)
      {
        v41 = v40[2] - 1;
        v40[2] = v41;
        if (!v41)
        {
          (*(*v40 + 8))(v40);
        }
      }

      ++v39;
      --v38;
    }

    while (v38);
  }

  v42 = RB::shared_vector<RB::refcounted_ptr<RB::Buffer>>::buffer::~buffer(v37);
  free(v42);
}

void sub_195CF8D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13, uint64_t a14, id a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (a14 && atomic_fetch_add_explicit((a14 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    [RBDevice initWithDevice:];
  }

  if (a13 && atomic_fetch_add_explicit(a13 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    (*(*a13 + 8))(a13);
  }

  if (v25 && atomic_fetch_add_explicit((v25 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    [RBDrawable initWithDevice:];
    if (!v24)
    {
      goto LABEL_12;
    }
  }

  else if (!v24)
  {
    goto LABEL_12;
  }

  if (atomic_fetch_add_explicit((v24 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    [RBDevice initWithDevice:];
  }

LABEL_12:

  RB::vector<std::unique_ptr<RB::RenderQueue,RB::RenderFrame::QueueDeleter>,4ul,unsigned int>::~vector(v23 + 328);
  RB::UntypedTable::~UntypedTable((v23 + 256));
  RB::vector<RB::refcounted_ptr<RB::ResourceHeap>,8ul,unsigned int>::~vector(v23 + 176);
  std::unique_ptr<RB::vector<RB::cf_ptr<__IOSurface *>,8ul,unsigned long>>::reset[abi:nn200100]((v23 + 144), 0);
  v28 = *(v23 + 136);
  if (v28)
  {
    do
    {
      v29 = *v28;
      operator delete(v28);
      v28 = v29;
    }

    while (v29);
  }

  *(v23 + 136) = 0;
  RB::shared_vector<RB::Function const*>::~shared_vector((v23 + 128));
  RB::shared_vector<RB::RenderFrame::TextureRef>::~shared_vector(v23 + 120);
  RB::shared_vector<RB::refcounted_ptr<RB::Buffer>>::~shared_vector(v23 + 112);

  _Unwind_Resume(a1);
}

id RB::Device::tables_buffer(id *this)
{
  if (!this[30])
  {
    v3 = [this[3] newBufferWithBytesNoCopy:RB::Shader::Tables::shared(this) length:0x4000 options:0 deallocator:0];
    if (v3)
    {
      [v3 setLabel:@"rb:gamma-lut"];
      operator new();
    }
  }

  return this[30];
}

uint64_t __copy_helper_block_e8_32c46_ZTSN2RB14refcounted_ptrINS_13ImageProviderEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  *(result + 32) = v2;
  return result;
}

id __copy_helper_block_e8_32c40_ZTSN2RB14refcounted_ptrINS_8DrawableEEE40c38_ZTSN2RB14refcounted_ptrINS_6DeviceEEE48c59_ZTSN2RB8objc_ptrIPU22objcproto11RBEncodable11objc_objectEE(void *a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
  }

  a1[4] = v3;
  v4 = *(a2 + 40);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
  }

  a1[5] = v4;
  result = *(a2 + 48);
  a1[6] = result;
  return result;
}

void sub_195CF9080(_Unwind_Exception *a1)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    __copy_helper_block_e8_32c38_ZTSN2RB14refcounted_ptrINS_6DeviceEEE40c29_ZTSN2RB8objc_ptrIP7NSErrorEE_cold_1(v3);
  }

  __copy_helper_block_e8_32c40_ZTSN2RB14refcounted_ptrINS_8DrawableEEE40c38_ZTSN2RB14refcounted_ptrINS_6DeviceEEE48c59_ZTSN2RB8objc_ptrIPU22objcproto11RBEncodable11objc_objectEE_cold_1((v1 + 32));
  _Unwind_Resume(a1);
}

void RB::ImageProvider::remove_from_pending(RB::ImageProvider *this)
{
  if (*(this + 2))
  {
    os_unfair_lock_lock(&RB::ImageProvider::_pending_image_providers_lock);
    if (RB::ImageProvider::_pending_image_providers && (v2 = *(RB::ImageProvider::_pending_image_providers + 8)) != 0)
    {
      v3 = *(RB::ImageProvider::_pending_image_providers + 8);
      v4 = *RB::ImageProvider::_pending_image_providers;
      while (1)
      {
        v5 = *v4;
        if (*v4 == this)
        {
          break;
        }

        ++v4;
        if (!--v3)
        {
          goto LABEL_7;
        }
      }

      v6 = *RB::ImageProvider::_pending_image_providers + 8 * v2;
      *v4 = *(v6 - 8);
      *(v6 - 8) = v5;
      v7 = *RB::ImageProvider::_pending_image_providers + 8 * *(RB::ImageProvider::_pending_image_providers + 8);
      v8 = *(v7 - 8);
      *(v7 - 8) = 0;
      v9 = *RB::ImageProvider::_pending_image_providers;
      v10 = *(RB::ImageProvider::_pending_image_providers + 8) - 1;
      *(RB::ImageProvider::_pending_image_providers + 8) = v10;
      v11 = *(v9 + 8 * v10);
      if (v11 && atomic_fetch_add_explicit((v11 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RB::ImageProvider::submit_all();
      }

      os_unfair_lock_unlock(&RB::ImageProvider::_pending_image_providers_lock);
      if (v8 && atomic_fetch_add_explicit((v8 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RB::ImageProvider::submit_all();
      }
    }

    else
    {
LABEL_7:

      os_unfair_lock_unlock(&RB::ImageProvider::_pending_image_providers_lock);
    }
  }
}

RBDevice *current_device_locked(RBLayer *a1)
{
  result = a1->_device._p;
  if (!result)
  {
    v3 = [(RBLayer *)a1 delegate];
    if ((objc_opt_respondsToSelector() & 1) == 0 || (result = [v3 RBLayerDefaultDevice:a1]) == 0)
    {

      return +[RBDevice sharedDefaultDevice];
    }
  }

  return result;
}

BOOL RB::SharedSurfaceGroup::preflight_subsurface(RB::SharedSurfaceGroup *a1, int32x2_t a2)
{
  v2 = vmul_lane_s32(a2, a2, 1).u32[0];
  v3 = RB::SharedSurfaceGroup::max_subsurface_area(a1);
  if (v2 > v3)
  {
    return 0;
  }

  v5 = vcgt_s32(a2, vdup_n_s32(RB::SharedSurfaceGroup::max_subsurface_size(v3)));
  return vpmax_u32(v5, v5).i32[0] >= 0;
}

uint64_t RB::SharedSurfaceGroup::max_subsurface_size(RB::SharedSurfaceGroup *this)
{
  {
    v3 = RB::prefs_int(@"RBMaxSubsurfaceSize", v2);
    if ((v3 & 0x100000000) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 512;
    }

    RB::SharedSurfaceGroup::max_subsurface_size(void)::value = v4;
  }

  if (RB::SharedSurfaceGroup::max_subsurface_size(void)::value >= 2048)
  {
    return 2048;
  }

  else
  {
    return RB::SharedSurfaceGroup::max_subsurface_size(void)::value;
  }
}

uint64_t RB::SharedSurfaceGroup::max_subsurface_area(RB::SharedSurfaceGroup *this)
{
  {
    v3 = RB::prefs_int(@"RBMaxSubsurfaceArea", v2);
    if ((v3 & 0x100000000) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0x10000;
    }

    RB::SharedSurfaceGroup::max_subsurface_area(void)::value = v4;
  }

  return RB::SharedSurfaceGroup::max_subsurface_area(void)::value;
}

void *RB::shared_vector<RB::refcounted_ptr<RB::Buffer>>::buffer::~buffer(void *a1)
{
  if (*a1)
  {
    v2 = RB::shared_vector<RB::refcounted_ptr<RB::Buffer>>::buffer::~buffer();
    free(v2);
  }

  return a1;
}

uint64_t RB::UntypedTable::lookup(RB::UntypedTable *this, void *a2, void **a3)
{
  if (*(this + 5))
  {
    v6 = (*this)(a2);
    v7 = *(*(this + 4) + 8 * (*(this + 6) & v6));
    if (*(this + 60))
    {
      if (v7)
      {
        while (1)
        {
          v8 = v7[1];
          if (v8 == a2)
          {
            break;
          }

          v7 = *v7;
          if (!v7)
          {
            goto LABEL_12;
          }
        }

        if (!a3)
        {
          return v7[2];
        }

        goto LABEL_18;
      }
    }

    else if (v7)
    {
      v9 = v6;
      while (v7[3] != v9 || !(*(this + 1))(v7[1], a2))
      {
        v7 = *v7;
        if (!v7)
        {
          goto LABEL_12;
        }
      }

      if (!a3)
      {
        return v7[2];
      }

      v8 = v7[1];
LABEL_18:
      *a3 = v8;
      return v7[2];
    }
  }

LABEL_12:
  result = 0;
  if (a3)
  {
    *a3 = 0;
  }

  return result;
}

void std::unique_lock<RB::spin_lock>::lock[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8) != 1)
    {
      os_unfair_lock_lock(v2);
      *(a1 + 8) = 1;
      return;
    }
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::lock: references null mutex");
  }

  std::__throw_system_error(11, "unique_lock::lock: already locked");
  RB::Surface::set_padding();
}

unsigned __int16 *RB::Surface::set_padding(unsigned __int16 *result, int8x8_t a2)
{
  v2.i32[0] = result[78];
  v2.i32[1] = result[79];
  v3 = vmvn_s8(vceq_s32(v2, vand_s8(a2, 0xFFFF0000FFFFLL)));
  if ((vmaxv_u16(vuzp1_s16(v3, v3)) & 0x8000) != 0)
  {
    v4 = result;
    RB::Surface::invalidate_iosurface(result);
    result = IOSurfaceSetBulkAttachments2();
    v4[79] = a2.u16[2];
    v4[78] = a2.i16[0];
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *,false>(uint64_t result, unint64_t *a2, uint64_t a3, uint64_t a4, char a5)
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
    v12 = a2 - v9;
    v13 = 0xAAAAAAAAAAAAAAABLL * (a2 - v9);
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        result = std::operator<=>[abi:nn200100]<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *,std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *>(a2 - 3, v9);
        if ((result & 0x80) != 0)
        {
          v24 = *v9;
          *v9 = *(a2 - 3);
          *(a2 - 3) = v24;
          v25 = v9[1];
          v26 = v9[2];
          v27 = *(a2 - 1);
          v9[1] = *(a2 - 2);
          v9[2] = v27;
          *(a2 - 2) = v25;
          *(a2 - 1) = v26;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *,0>(v9, v9 + 3, v9 + 6, a2 - 3);
    }

    if (v13 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *,0>(v9, v9 + 3, v9 + 6, v9 + 9, a2 - 3);
    }

LABEL_11:
    if (v12 <= 575)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *>(v9, a2);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *>(v9, a2);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *>(v9, a2, a2, a3);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = &v9[3 * (v13 >> 1)];
    if (v12 < 0xC01)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *,0>(&v9[3 * v14], v9, a2 - 3);
      if (a5)
      {
        goto LABEL_18;
      }
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *,0>(v9, &v9[3 * v14], a2 - 3);
      v16 = 3 * v14;
      v17 = &v9[3 * v14 - 3];
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *,0>(v9 + 3, v17, a2 - 6);
      v18 = &v9[v16 + 3];
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *,0>(v8 + 6, v18, a2 - 9);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *,0>(v17, v15, v18);
      v19 = *v8;
      *v8 = *v15;
      *v15 = v19;
      v20 = v8[2];
      v8[2] = v15[2];
      v15[2] = v20;
      if (a5)
      {
        goto LABEL_18;
      }
    }

    if ((std::operator<=>[abi:nn200100]<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *,std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *>(v8 - 3, v8) & 0x80) == 0)
    {
      result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *,std::__less<void,void> &>(v8, a2);
      v9 = result;
      goto LABEL_23;
    }

LABEL_18:
    v21 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *,std::__less<void,void> &>(v8, a2);
    if ((v22 & 1) == 0)
    {
      goto LABEL_21;
    }

    v23 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *>(v8, v21);
    v9 = (v21 + 3);
    result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *>(v21 + 3, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v21;
      if (v23)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v23)
    {
LABEL_21:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *,false>(v8, v21, a3, -v11, a5 & 1);
      v9 = (v21 + 3);
LABEL_23:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *,0>(v9, v9 + 3, a2 - 3);
}

uint64_t RB::Texture::Texture(uint64_t a1, void *a2, __int16 a3, int a4, char a5)
{
  return RB::Texture::Texture(a1, a2, a3, a4, a5);
}

{
  *(a1 + 8) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = a2;
  *(a1 + 37) = 0;
  *(a1 + 45) = 1;
  *a1 = &unk_1F0A383C8;
  *(a1 + 48) = 0;
  *(a1 + 56) = [a2 pixelFormat];
  v10 = [a2 width];
  *(a1 + 64) = __PAIR64__([a2 height], v10);
  *(a1 + 72) = 0;
  *(a1 + 76) = [a2 mipmapLevelCount];
  *(a1 + 77) = 0;
  *(a1 + 78) = a4;
  *(a1 + 79) = a5;
  *(a1 + 80) = a3;
  if ([a2 storageMode] != 3)
  {
    *(a1 + 72) = [a2 allocatedSize];
  }

  if (a4 == 6)
  {
    *(a1 + 45) = 0;
  }

  return a1;
}

uint64_t RB::TextureCache::prepare_from_cache(int32x2_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v69 = *MEMORY[0x1E69E9840];
  a1[4].i32[1] = *(a2 + 100);
  entry = RB::TextureCache::find_entry(a1, a3);
  if ((entry & 0x80000000) == 0 && RB::TextureCache::use_entry(a1, entry, a3))
  {
    return 1;
  }

  v8 = a1[9].u32[0];
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v49 = 16 * v8;
    while (1)
    {
      v11 = a1[8];
      if (!v11)
      {
        v11 = a1 + 6;
      }

      if (v11[v9 / 8].u8[2] == a3[2])
      {
        v12 = RB::TextureCache::use_entry(a1, v10, a3);
        v14 = v12;
        if (v12)
        {
          break;
        }
      }

LABEL_38:
      v9 += 16;
      ++v10;
      if (v49 == v9)
      {
        goto LABEL_44;
      }
    }

    v15 = a1[8];
    if (!v15)
    {
      v15 = a1 + 6;
    }

    if (v15[v9 / 8].i8[1] != 1 || (v16 = *a3, v17 = v16 >> 8, ((v16 >> 8) & 1) == 0))
    {
      v16 = v12[10].u16[0];
      v17 = v16 >> 8;
    }

    if (v17 & a3[3])
    {
      v18 = v16 & 0xF;
    }

    else
    {
      v18 = v16;
    }

    v19 = v12[7];
    v20 = v12[8];
    if ((a3[3] & 2) != 0)
    {
      v21 = RB::max_mipmap_levels(v12[8]);
    }

    else
    {
      v21 = 1;
    }

    v22 = v18 | (v17 << 8);
    v13.n128_u64[0] = v20;
    v48 = v22 | v48 & 0xFFFFFFFFFFFF0000;
    RB::TextureCache::take_available(a1, v19, v21, v22, 1, 0, 0, &v51, v13);
    v23 = a1[8];
    if (!v23)
    {
      v23 = a1 + 6;
    }

    v24 = v51;
    v3 = v22 | v3 & 0xFFFFFFFFFFFF0000;
    RB::RenderFrame::copy_texture(a2, v14, v3, (v23[v9 / 8].i8[3] >> 1) & 2 | ((a3[3] & 2) != 0), v51, &v50);
    v25 = v50;
    if (v50)
    {
      if (*&v50 != v14)
      {
        v26 = RB::verbose_mode(0x80);
        if (v26)
        {
          v34 = RB::misc_log(v26);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            v46 = a3[2];
            v44 = *(*&v50 + 64);
            v52 = *(*&v50 + 80);
            v45 = v50;
            v36 = v50;
            v37 = "deviceRGB";
            if ((v52 & 0x100) != 0)
            {
              v37 = RB::ColorSpace::name(&v52);
              v36 = v50;
            }

            v38 = v37;
            v39 = RB::pixel_format_name(*(*&v36 + 56), v35);
            *buf = 134219778;
            v54 = a1;
            v55 = 2048;
            v56 = v14;
            v57 = 2048;
            v58 = v45;
            v59 = 1024;
            v60 = v46;
            v61 = 1024;
            v62 = v44;
            v63 = 1024;
            v64 = HIDWORD(v44);
            v65 = 2080;
            v66 = v38;
            v67 = 2080;
            v68 = v39;
            _os_log_impl(&dword_195CE8000, v34, OS_LOG_TYPE_INFO, "%p: converted %p -> %p, level %d [%d, %d] %s %s\n", buf, 0x46u);
          }
        }

        v27 = *a3;
        v28 = a1[9].u32[0];
        if (a1[9].i32[1] < v28 + 1)
        {
          RB::vector<std::pair<RB::cf_ptr<CGContext *>,RB::ContextDelegate *>,1ul,unsigned int>::reserve_slow(&a1[6], v28 + 1);
          v28 = a1[9].u32[0];
        }

        v29 = 0;
        v30 = a1[8];
        if (!v30)
        {
          v30 = a1 + 6;
        }

        v31 = &v30[2 * v28];
        v31->i32[0] = v27 & 0xBFFFFFFF;
        v31[1] = v50;
        ++a1[9].i32[0];
        if (!v24)
        {
LABEL_37:
          if ((v29 & 1) == 0)
          {
            return 1;
          }

          goto LABEL_38;
        }

LABEL_35:
        v33 = v24[2] - 1;
        v24[2] = v33;
        if (!v33)
        {
          (*(*v24 + 8))(v24);
        }

        goto LABEL_37;
      }

      v32 = *(*&v50 + 8) - 1;
      *(*&v50 + 8) = v32;
      if (!v32)
      {
        (*(**&v25 + 8))(v25);
      }
    }

    v29 = 1;
    if (!v24)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

LABEL_44:
  v40 = a3[2];
  if (!v40)
  {
    return 0;
  }

  while (1)
  {
    v41 = *a3;
    *buf = *a3;
    buf[2] = --v40;
    buf[3] = HIBYTE(v41) & 0xFD;
    v42 = RB::TextureCache::find_entry(a1, buf);
    if ((v42 & 0x80000000) == 0)
    {
      v43 = RB::TextureCache::use_entry(a1, v42, a3);
      if (v43)
      {
        break;
      }
    }

    if (!v40)
    {
      return 0;
    }
  }

  return RB::TextureCache::prepare_from_base_level(a1, a2, a3, v43, v40);
}

void sub_195CF9F90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, _DWORD *a18)
{
  if (a18)
  {
    v20 = a18[2] - 1;
    a18[2] = v20;
    if (!v20)
    {
      (*(*a18 + 8))(a18);
    }
  }

  if (v18)
  {
    v21 = v18[2] - 1;
    v18[2] = v21;
    if (!v21)
    {
      (*(*v18 + 8))(v18);
    }
  }

  _Unwind_Resume(exception_object);
}

void RB::RenderQueue::schedule(RB::RenderQueue *this, RB::Device *a2, int a3)
{
  v4 = this;
  v109 = *MEMORY[0x1E69E9840];
  {
    if (this)
    {
      v102 = RB::debug_int("RB_SCHEDULER", a2);
      if (*(a2 + 331))
      {
        v103 = 5;
      }

      else
      {
        v103 = 7;
      }

      if ((v102 & 0x100000000) != 0)
      {
        v103 = v102;
      }

      RB::RenderQueue::schedule(RB::Device *,BOOL)::default_enabled_passes = v103;
    }
  }

  {
    if (this)
    {
      v104 = RB::debug_int("RB_PRINT_QUEUE", a2);
      if ((v104 & 0x100000000) != 0)
      {
        v105 = v104;
      }

      else
      {
        v105 = 0;
      }

      RB::RenderQueue::schedule(RB::Device *,BOOL)::verbosity = v105;
    }
  }

  v5 = RB::RenderQueue::schedule(RB::Device *,BOOL)::default_enabled_passes;
  if (!a3)
  {
    v5 = RB::RenderQueue::schedule(RB::Device *,BOOL)::default_enabled_passes & 0xFFFFFFFE;
  }

  v6 = *v4;
  if (v6 >= 2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  if (v7 | RB::RenderQueue::schedule(RB::Device *,BOOL)::verbosity)
  {
    if (v6 <= 0x800)
    {
      MEMORY[0x1EEE9AC00](this, a2);
      v8 = &v106 - ((v9 + 15) & 0x1FFFFFFFF0);
      bzero(v8, v9);
    }

    else
    {
      v8 = malloc_type_malloc(16 * v6, 0x1020040EDED9539uLL);
      if (!v8)
      {
LABEL_116:
        free(v8);
        return;
      }
    }

    v10 = *v4;
    if (v7)
    {
      if (v10)
      {
        RB::RenderQueue::schedule(v10, v4, v8, &v107);
        v24 = v107;
      }

      else
      {
        v24 = 0;
      }

      if (RB::RenderQueue::schedule(RB::Device *,BOOL)::verbosity >= 2)
      {
        puts("\n== after depth partition ==");
      }
    }

    else
    {
      if (v10)
      {
        v11 = 0;
        do
        {
          v12 = *(*(v4 + 1) + 8 * v11);
          v13 = 84696351;
          if ((*(v12 + 47) & 0x10) != 0)
          {
            v13 = 16777619 * ((16777619 * ((16777619 * ((16777619 * (*((v12 + 55) & 0xFFFFFFFFFFFFFFF8) ^ 0x50C5D1F)) ^ HIDWORD(*((v12 + 55) & 0xFFFFFFFFFFFFFFF8)))) ^ *(((v12 + 55) & 0xFFFFFFFFFFFFFFF8) + 8))) ^ HIDWORD(*(((v12 + 55) & 0xFFFFFFFFFFFFFFF8) + 8)));
          }

          v14 = (16777619 * ((((*(v12 + 47) & 0xF) << 16) | (*(v12 + 44) << 8) | *(v12 + 43)) ^ v13)) ^ *(v12 + 36);
          if (*(v12 + 46))
          {
            v15 = (v12 + 48);
            if ((*(v12 + 47) & 0x10) != 0)
            {
              v15 = (((v12 + 55) & 0xFFFFFFFFFFFFFFF8) + 16);
            }

            v16 = *(v12 + 46);
            do
            {
              v17 = *v15;
              v15 += 3;
              v14 = v17 ^ (16777619 * v14);
              --v16;
            }

            while (v16);
          }

          v18 = *(v12 + 45);
          if (*(v12 + 45))
          {
            if ((*(v12 + 47) & 0x10) != 0)
            {
              v19 = ((v12 + 55) & 0xFFFFFFFFFFFFFFF8) + 16;
            }

            else
            {
              v19 = v12 + 48;
            }

            v20 = (v19 + 12 * *(v12 + 46) + 4);
            do
            {
              v21 = 33 * *(v20 - 1);
              v22 = *v20;
              v20 += 8;
              v14 = (v21 + v22) ^ (16777619 * v14);
              --v18;
            }

            while (v18);
          }

          v23 = &v8[16 * v11];
          *(v23 + 2) = (16777619 * v14) ^ *v12;
          *v23 = v12;
          *(v23 + 6) = v11;
          *(v23 + 7) = *(v12 + 40);
          ++v11;
        }

        while (v11 < *v4);
      }

      if (RB::RenderQueue::schedule(RB::Device *,BOOL)::verbosity > 1)
      {
        puts("\n== before scheduling ==");
      }

      v24 = 0;
    }

    v25 = *v4;
    if (v24 < *v4)
    {
      v26 = v8 + 8;
      v106 = v8 + 15;
      do
      {
        v27 = v24;
        if (v24 + 80 >= v25)
        {
          v28 = v25 - v24;
        }

        else
        {
          v28 = 64;
        }

        v29 = &v8[16 * v24];
        if ((v7 & 2) != 0)
        {
          v30 = (v28 - 1);
          *&v29[16 * v28 - 4] = v28 - 1 + v24;
          v31 = (v28 - 2);
          if (v28 >= 2)
          {
            v32 = &v26[16 * v24 + 16 * v30];
            v33 = &v106[16 * v24];
            v34 = &v8[16 * v24 + 16 + 16 * v31];
            v35 = v28;
            v36 = (v28 - 1);
            while (1)
            {
              v37 = &v29[16 * v31];
              *(v37 + 6) = v28 - 1 + v27;
              LOWORD(v38) = v28 - 1 + v27;
              if (v31 >= v28 - 1)
              {
                goto LABEL_64;
              }

              v39 = v32;
              v40 = *(*v37 + 8);
              v41 = *(*v37 + 16);
              LOWORD(v38) = v28 - 1 + v27;
              v42 = v35;
              v43 = v36;
              v44 = v31;
              while (1)
              {
                v45 = v43;
                v46 = *(v39 - 1);
                v47.i64[0] = *(v46 + 8);
                v48.i64[0] = *(*v37 + 16);
                v48.i64[1] = *(v46 + 16);
                v47.i64[1] = *(*v37 + 8);
                if ((vminvq_u32(vcltzq_s32(vsubq_s32(v47, v48))) & 0x80000000) != 0)
                {
                  break;
                }

LABEL_52:
                v39 += 16;
                v43 = v45 + 1;
                v44 = v45;
                v51 = v28 <= v42++;
                if (v51)
                {
                  goto LABEL_64;
                }
              }

              v38 = *v39;
              v49 = HIBYTE(*v39);
              v50 = *(v37 + 1);
              if (((v49 | HIWORD(*v39)) & HIBYTE(v50)) != 0)
              {
                v52 = HIDWORD(v38);
LABEL_56:
                LOWORD(v38) = v52 - 1;
                *(v37 + 6) = v52 - 1;
                goto LABEL_64;
              }

              if (((HIBYTE(v50) | HIWORD(v50)) & v49) == 0)
              {
                break;
              }

              LOWORD(v38) = WORD2(v38) - 1;
              *(v37 + 6) = WORD2(v38) - 1;
              if (v44 + 2 < v28)
              {
                v53 = *(v37 + 1);
                v54 = HIBYTE(v53);
                v55 = HIDWORD(v53);
                v38 = HIDWORD(v53);
                v56 = &v33[16 * v42];
                while (1)
                {
                  if (((*v56 | *(v56 - 1)) & v54) != 0)
                  {
                    v57 = *(v56 - 15);
                    v58.i64[0] = *(v57 + 16);
                    v58.i64[1] = v41;
                    v59.i64[0] = v40;
                    v59.i64[1] = *(v57 + 8);
                    if ((vminvq_u32(vcltzq_s32(vsubq_s32(v59, v58))) & 0x80000000) != 0)
                    {
                      break;
                    }
                  }

                  v56 += 16;
                  if (v28 <= ++v42)
                  {
                    goto LABEL_64;
                  }
                }

                LODWORD(v52) = *(v56 - 3);
                if (v52 <= v55)
                {
                  goto LABEL_56;
                }
              }

LABEL_64:
              v107 = *v37;
              v108 = *(v37 + 2);
              v60 = *(v37 + 7);
              if (v28 == 2)
              {
                v61 = 1;
                goto LABEL_71;
              }

              v62 = v34;
              v61 = 1;
              while (*(v62 + 12) < v38)
              {
                *(v62 - 16) = *v62;
                v62 += 16;
                if (v30 == ++v61)
                {
                  v61 = (v28 - 1);
                  goto LABEL_71;
                }
              }

              v61 = v61;
LABEL_71:
              v63 = &v37[16 * v61];
              *(v63 - 2) = v107;
              *(v63 - 2) = v108;
              *(v63 - 2) = v38;
              *(v63 - 1) = v60;
              --v36;
              --v35;
              v32 -= 16;
              v34 -= 16;
              v51 = v31-- <= 0;
              if (v51)
              {
                goto LABEL_73;
              }
            }

            v38 = HIDWORD(v50);
            goto LABEL_52;
          }
        }

LABEL_73:
        if ((v7 & 4) == 0)
        {
          goto LABEL_106;
        }

        *(v29 + 6) = v27;
        if (v28 < 2)
        {
          goto LABEL_106;
        }

        v64 = 0;
        v65 = -1;
        v66 = 2;
        v67 = 1;
        do
        {
          v68 = &v29[16 * v67];
          *(v68 + 6) = v27;
          v69 = *v68;
          v70 = *(*v68 + 8);
          v71 = *(*v68 + 16);
          v72 = v64;
          v73 = v66;
          LOWORD(v74) = v27;
          v75 = v65;
          while (1)
          {
            v76 = &v29[16 * (v73 - 2)];
            v77.i64[0] = *(*v76 + 8);
            v78.i64[0] = *(*v68 + 16);
            v78.i64[1] = *(*v76 + 16);
            v77.i64[1] = *(*v68 + 8);
            if ((vminvq_u32(vcltzq_s32(vsubq_s32(v77, v78))) & 0x80000000) != 0)
            {
              break;
            }

LABEL_81:
            --v75;
            --v73;
            --v72;
            if (v73 <= 1)
            {
              goto LABEL_93;
            }
          }

          v74 = *(v76 + 1);
          v79 = v68[15] | v68[14];
          if ((v79 & HIBYTE(v74)) != 0)
          {
            v74 >>= 32;
LABEL_84:
            LOWORD(v74) = v74 + 1;
            *(v68 + 6) = v74;
            goto LABEL_93;
          }

          v80 = *(v68 + 1);
          if (((HIBYTE(v74) | HIWORD(v74)) & HIBYTE(v80)) == 0)
          {
            v74 = HIDWORD(v80);
            goto LABEL_81;
          }

          LODWORD(v74) = (WORD2(v74) + 1);
          *(v68 + 6) = WORD2(v74) + 1;
          if ((v75 + 2) >= 2)
          {
            v81 = &v26[16 * v27 + 16 * v75];
            v82 = v81;
            while (1)
            {
              v84 = *v82;
              v82 -= 2;
              v83 = v84;
              if ((HIBYTE(v84) & v79) != 0)
              {
                v85 = *(v81 - 8);
                v86.i64[0] = *(v85 + 8);
                v87.i64[0] = v71;
                v87.i64[1] = *(v85 + 16);
                v86.i64[1] = v70;
                if ((vminvq_u32(vcltzq_s32(vsubq_s32(v86, v87))) & 0x80000000) != 0)
                {
                  break;
                }
              }

              v81 = v82;
              v88 = __OFSUB__(v72--, 1);
              if ((v72 < 0) ^ v88 | (v72 == 0))
              {
                goto LABEL_93;
              }
            }

            if (v74 <= SWORD2(v83))
            {
              v74 = v83 << 16 >> 48;
              goto LABEL_84;
            }
          }

LABEL_93:
          ++v67;
          v89 = &v29[16 * v67];
          v90 = *(v89 - 2);
          v91 = *(v89 - 1);
          v92 = v64;
          while (1)
          {
            v93 = &v29[16 * v92];
            if (*(v93 + 6) <= v74)
            {
              break;
            }

            *(v93 + 1) = *v93;
            v94 = v92-- + 1;
            if (v94 <= 1)
            {
              v92 = -1;
              goto LABEL_103;
            }
          }

          while (1)
          {
            v95 = &v29[16 * v92];
            if (*(v95 + 6) != v74 || v90 <= *(v95 + 2))
            {
              break;
            }

            *(v95 + 1) = *v95;
            v51 = v92 <= 0;
            LODWORD(v92) = v92 - 1;
            if (v51)
            {
              LODWORD(v92) = -1;
              break;
            }
          }

          v92 = v92;
LABEL_103:
          v96 = &v29[16 * v92];
          *(v96 + 2) = v69;
          *(v96 + 6) = v90;
          *(v96 + 14) = v74;
          *(v96 + 15) = v91;
          ++v65;
          ++v66;
          ++v64;
        }

        while (v67 != v28);
LABEL_106:
        v24 = v28 + v27;
        v25 = *v4;
      }

      while (v24 < *v4);
    }

    if (v25)
    {
      v97 = 0;
      v98 = v8;
      do
      {
        v99 = *v98;
        v98 += 16;
        *(*(v4 + 1) + v97) = v99;
        v97 += 8;
      }

      while (8 * v25 != v97);
    }

    if (RB::RenderQueue::schedule(RB::Device *,BOOL)::verbosity > 0)
    {
      if (RB::RenderQueue::schedule(RB::Device *,BOOL)::verbosity == 1)
      {
        v100 = "render pass";
      }

      else
      {
        v100 = "after scheduling";
      }

      printf("\n== %s ==\n", v100);
    }

    if (v6 >= 0x801)
    {
      goto LABEL_116;
    }
  }
}

uint64_t RB::RenderQueue::schedule(uint64_t result, unsigned int *a2, uint64_t a3, _DWORD *a4)
{
  v4 = 0;
  v5 = 0;
  v6 = result;
  v7 = result;
  do
  {
    if (v5 >= v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = 0;
      v9 = v5;
      while (1)
      {
        v10 = *(*(a2 + 1) + 8 * v9);
        v11 = *(v10 + 47);
        result = v11 & 0xFFFFFFDF;
        *(v10 + 47) = v11 & 0xDF;
        if ((*v10 & 0x3F) == 0x26)
        {
          break;
        }

        v12 = *(v10 + 40);
        if (*(v10 + 40))
        {
          v13 = 0;
        }

        else
        {
          v13 = *(v10 + 41) == 2;
        }

        if (v13)
        {
          *(v10 + 40) = 8736;
          result = v11 & 0xDDDDDDD0 | 0x22222222;
          *(v10 + 47) = v11 & 0xD0 | 0x22;
          ++v8;
        }

        else if ((v11 & 0xF) == 0)
        {
          *(v10 + 47) = v11 & 0xDE | 1;
          result = v12 | 0x20u;
          *(v10 + 40) = v12 | 0x20;
        }

        if (++v9 >= *a2)
        {
          goto LABEL_15;
        }
      }

      v7 = v9;
    }

LABEL_15:
    if (v5 < v7)
    {
      v14 = v8 + v5;
      v15 = v8 + v5;
      do
      {
        v16 = *(*(a2 + 1) + 8 * v5);
        v17 = v14 - 1;
        if ((*(v16 + 47) & 0x20) != 0)
        {
          v18 = v15;
        }

        else
        {
          v18 = v15 + 1;
        }

        if ((*(v16 + 47) & 0x20) != 0)
        {
          --v14;
        }

        else
        {
          v17 = v15;
        }

        if ((*(v16 + 47) & 0x20) != 0)
        {
          v19 = -v5;
        }

        else
        {
          LOWORD(v19) = v5;
        }

        v20 = 84696351;
        if ((*(v16 + 47) & 0x10) != 0)
        {
          v20 = 16777619 * ((16777619 * ((16777619 * ((16777619 * (*((v16 + 55) & 0xFFFFFFFFFFFFFFF8) ^ 0x50C5D1F)) ^ HIDWORD(*((v16 + 55) & 0xFFFFFFFFFFFFFFF8)))) ^ *(((v16 + 55) & 0xFFFFFFFFFFFFFFF8) + 8))) ^ HIDWORD(*(((v16 + 55) & 0xFFFFFFFFFFFFFFF8) + 8)));
        }

        v21 = (16777619 * ((((*(v16 + 47) & 0xF) << 16) | (*(v16 + 44) << 8) | *(v16 + 43)) ^ v20)) ^ *(v16 + 36);
        if (*(v16 + 46))
        {
          v22 = (v16 + 48);
          if ((*(v16 + 47) & 0x10) != 0)
          {
            v22 = (((v16 + 55) & 0xFFFFFFFFFFFFFFF8) + 16);
          }

          v23 = *(v16 + 46);
          do
          {
            v24 = *v22;
            v22 += 3;
            v21 = v24 ^ (16777619 * v21);
            --v23;
          }

          while (v23);
        }

        v25 = *(v16 + 45);
        if (*(v16 + 45))
        {
          if ((*(v16 + 47) & 0x10) != 0)
          {
            v26 = ((v16 + 55) & 0xFFFFFFFFFFFFFFF8) + 16;
          }

          else
          {
            v26 = v16 + 48;
          }

          v27 = (v26 + 12 * *(v16 + 46) + 4);
          do
          {
            v28 = 33 * *(v27 - 1);
            v29 = *v27;
            v27 += 8;
            v21 = (v28 + v29) ^ (16777619 * v21);
            --v25;
          }

          while (v25);
        }

        v30 = a3 + 16 * v17;
        *(v30 + 8) = (16777619 * v21) ^ *v16;
        *v30 = v16;
        *(v30 + 12) = v19;
        result = *(v16 + 40);
        *(v30 + 14) = result;
        ++v5;
        v15 = v18;
      }

      while (v5 != v7);
    }

    v4 += v8;
    *a4 = v4;
    while (1)
    {
      v6 = *a2;
      if (v7 >= v6)
      {
        break;
      }

      v31 = *(*(a2 + 1) + 8 * v7);
      if ((*v31 & 0x3F) != 0x26)
      {
        break;
      }

      v32 = 84696351;
      if ((*(v31 + 47) & 0x10) != 0)
      {
        v32 = 16777619 * ((16777619 * ((16777619 * ((16777619 * (*((v31 + 55) & 0xFFFFFFFFFFFFFFF8) ^ 0x50C5D1F)) ^ HIDWORD(*((v31 + 55) & 0xFFFFFFFFFFFFFFF8)))) ^ *(((v31 + 55) & 0xFFFFFFFFFFFFFFF8) + 8))) ^ HIDWORD(*(((v31 + 55) & 0xFFFFFFFFFFFFFFF8) + 8)));
      }

      v33 = (16777619 * ((((*(v31 + 47) & 0xF) << 16) | (*(v31 + 44) << 8) | *(v31 + 43)) ^ v32)) ^ *(v31 + 36);
      if (*(v31 + 46))
      {
        v34 = (v31 + 48);
        if ((*(v31 + 47) & 0x10) != 0)
        {
          v34 = (((v31 + 55) & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        v35 = *(v31 + 46);
        do
        {
          v36 = *v34;
          v34 += 3;
          v33 = v36 ^ (16777619 * v33);
          --v35;
        }

        while (v35);
      }

      result = *(v31 + 45);
      if (*(v31 + 45))
      {
        if ((*(v31 + 47) & 0x10) != 0)
        {
          v37 = ((v31 + 55) & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        else
        {
          v37 = v31 + 48;
        }

        v38 = (v37 + 12 * *(v31 + 46) + 4);
        do
        {
          v39 = 33 * *(v38 - 1);
          v40 = *v38;
          v38 += 8;
          v33 = (v39 + v40) ^ (16777619 * v33);
          --result;
        }

        while (result);
      }

      v41 = a3 + 16 * v7;
      *(v41 + 8) = (16777619 * v33) ^ *v31;
      *v41 = v31;
      *(v41 + 12) = v7;
      *(v41 + 14) = *(v31 + 40);
      ++v7;
    }

    v5 = v7;
    v7 = *a2;
  }

  while (v5 < v6);
  return result;
}

void RB::DisplayList::LayerTask::render(int32x2_t *this, int32x2_t *a2, void *a3, double a4, double a5, double a6, __n128 a7)
{
  v11 = this[13];
  v12 = this[3];
  v87[2] = v11;
  v87[3] = v12;
  *&v88 = v11;
  *(&v88 + 1) = v12;
  v89 = 0;
  v87[0] = a3[182];
  v87[1] = this;
  a3[182] = v87;
  v13 = *&this[4];
  a7.n128_u64[0] = vsub_s32(*&v13, this[13]);
  v75 = a7;
  if ((this[28].i8[0] & 2) == 0 && ((*(*&this[12] + 76) & 1) == 0 || *&this[7]))
  {
    goto LABEL_38;
  }

  *&a2[21] = v13;
  a2[22] = v12;
  v14 = this[12];
  if ((*(*&v14 + 76) & 1) == 0)
  {
    v15 = *this[18].i8;
LABEL_37:
    RB::RenderPass::fill(a2, v15);
    goto LABEL_38;
  }

  v16 = this[5];
  if (!v16)
  {
    v35 = this;
    v36 = this;
    while (1)
    {
      v36 = v36[9];
      if (!v36)
      {
        goto LABEL_35;
      }

      if (v36[7] == v35)
      {
        v16 = v36[5];
        v35 = v36;
        if (v16)
        {
          break;
        }
      }
    }
  }

  if (*(*&v14 + 64) == 0.0)
  {
    *&v7 = 1.0;
  }

  else
  {
    LODWORD(v7) = *(*&v14 + 64);
  }

  v18 = &v16[6];
  v17 = v16[6].i64[0];
  if ((*(v17 + 76) & 0x80) != 0)
  {
    while (1)
    {
      v32 = *(v17 + 64);
      if (v32 == 0.0)
      {
        v32 = 1.0;
      }

      v33 = v16[2].i64[1];
      if (!v33)
      {
        break;
      }

LABEL_23:
      *&v7 = v32 * *&v7;
      v17 = v33[6].i64[0];
      v16 = v33;
      if ((*(v17 + 76) & 0x80) == 0)
      {
        v18 = &v33[6];
        v16 = v33;
        goto LABEL_11;
      }
    }

    v34 = v16;
    while (1)
    {
      v34 = v34[4].i64[1];
      if (!v34)
      {
        break;
      }

      if (v34[3].i64[1] == v16)
      {
        v33 = v34[2].i64[1];
        v16 = v34;
        if (v33)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_35:
    v15 = 0uLL;
    goto LABEL_37;
  }

LABEL_11:
  if (!v16[3].i64[1] || !*(v16[4].i64[0] + 16))
  {
    v15 = v16[9];
    goto LABEL_37;
  }

  LODWORD(v13) = 0;
  v19 = vceq_s32(v12, 0x8000000080000000);
  v20 = vdup_lane_s32(vcgt_s32(*&v13, vpmin_u32(v19, v19)), 0);
  v21 = *v16[7].f32;
  v73 = vsub_s32(*v16[2].f32, *&v16[6].u32[2]);
  v22 = vneg_f32(0x80000000800000);
  *v79.f32 = vmul_n_f32(vbsl_s8(v20, 0x100000001000000, vcvt_f32_s32(v11)), 1.0 / *&v7);
  *&v79.u32[2] = vmul_n_f32(vbsl_s8(v20, v22, vcvt_f32_s32(v12)), 1.0 / *&v7);
  v23 = *&v16[7].u32[2];
  v24 = vceq_s32(v23, 0x8000000080000000);
  v25 = vdup_lane_s32(vcgt_s32(*&v13, vpmin_u32(v24, v24)), 0);
  v74 = v7;
  RB::Rect::intersect(&v79, COERCE_DOUBLE(vbsl_s8(v25, 0x100000001000000, vcvt_f32_s32(v21))), vbsl_s8(v25, v22, vcvt_f32_s32(v23)));
  v26 = vmul_n_f32(*v79.f32, *&v74);
  *&v76[0] = v26;
  *(&v76[0] + 1) = vmul_n_f32(*&v79.u32[2], *&v74);
  v26.f32[0] = v73.i32[0];
  v27 = RB::Rect::translate(&v79, v26, v73.i32[1]);
  v27.f32[0] = v75.n128_i32[0];
  RB::Rect::translate(v76, v27, v75.n128_i32[1]);
  v29.i64[1] = *(&v74 + 1);
  if (fabsf(*&v74 + -1.0) < 0.25)
  {
    v30 = 1;
  }

  else
  {
    v30 = 7;
  }

  if (*&v74 == 1.0)
  {
    v31 = 0;
  }

  else
  {
    v31 = v30;
  }

  v29.i64[0] = v79.i64[1];
  v28.i64[0] = v79.i64[0];
  RB::DisplayList::Layer::blit(*v18, a3, a2, *(v16[4].i64[0] + 16), 0, v31, 0, 0, 0.0, v28, v29, *v76, *(v76 + 8), 0, 1.0, 0, 0);
  *a2[15].i32 = *a2[15].i32 + 1.0;
LABEL_38:
  v37 = a2[15].i32[1];
  a2[15].i32[1] = this[16].i32[0];
  v38 = this[20];
  if (v38)
  {
    v39 = vneg_f32(0x80000000800000);
    while (1)
    {
      v40 = v38[1];
      v41 = *(v40 + 3);
      if (!v41)
      {
        v50 = 0;
        v52 = *(&v88 + 8);
        a2[21] = vadd_s32(*&v88, v75.n128_u64[0]);
        a2[22] = v52;
        v51 = v75;
        goto LABEL_49;
      }

      v86 = v88;
      RB::Bounds::Bounds(&v79, v41[2], v41[3], v13, a7.n128_u64[0]);
      RB::Bounds::intersect(&v86, *v79.f32, *&v79.u32[2]);
      v42 = *(&v86 + 8);
      v43 = vclez_s32(*(&v86 + 8));
      if ((vpmax_u32(v43, v43).u32[0] & 0x80000000) == 0)
      {
        if (v41[1].i8[0])
        {
          goto LABEL_45;
        }

        *&v44 = (*(*v40 + 136))(v40, 0);
        RB::Bounds::Bounds(&v79, v44, v45, v46, v47);
        RB::Bounds::intersect(&v86, *v79.f32, *&v79.u32[2]);
        v42 = *(&v86 + 8);
        v48 = vclez_s32(*(&v86 + 8));
        if ((vpmax_u32(v48, v48).u32[0] & 0x80000000) == 0)
        {
          break;
        }
      }

LABEL_50:
      v38 = *v38;
      if (!v38)
      {
        goto LABEL_78;
      }
    }

    clip_index = RB::DisplayList::LayerTask::find_clip_index(this, v40);
    if ((clip_index & 0x100000000) == 0)
    {
LABEL_45:
      v50 = 0;
      goto LABEL_46;
    }

    v53 = (*&this[26] + 48 * clip_index);
    if (v53[5].i8[6])
    {
      v50 = 1;
LABEL_46:
      v51 = v75;
LABEL_47:
      a2[21] = vadd_s32(*&v86, v51.n128_u64[0]);
      a2[22] = v42;
LABEL_49:
      (*(*v40 + 168))(v40, a3, a2, v50, *(v40 + 23) & 0x3F, v51);
      *a2[15].i32 = *a2[15].i32 + 1.0;
      goto LABEL_50;
    }

    v54 = *a2[15].i32;
    *a2[15].i32 = v54 + (v53[5].i32[0] + ~v53[4].i32[1]);
    v55 = v53[3];
    a2[21] = vadd_s32(v53[2], v75.n128_u64[0]);
    a2[22] = v55;
    v51 = v75;
    v56 = *(v40 + 3);
    if (!v56)
    {
LABEL_77:
      v50 = 1;
      v53[5].i8[6] = 1;
      *a2[15].i32 = v54;
      v42 = *(&v86 + 8);
      goto LABEL_47;
    }

    v57 = 1;
    v58 = 1;
    while (1)
    {
      v59 = v56[1] & 0xFFFFFFFFFFFFFFFELL;
      if ((*(v59 + 45) & 1) != 0 || (*&v53[1] & v58) != 0)
      {
        goto LABEL_74;
      }

      v60 = (v57 & 1) == 0;
      if (v57)
      {
        v61 = 21;
      }

      else
      {
        v61 = 22;
      }

      if (v60)
      {
        v62 = 20;
      }

      else
      {
        v62 = 19;
      }

      if (*(v59 + 44))
      {
        v62 = 0;
      }

      if (*(v59 + 44) == 1)
      {
        v63 = v61;
      }

      else
      {
        v63 = v62;
      }

      if ((*(v59 + 45) & 2) != 0)
      {
        task = RB::DisplayList::LayerTask::find_task(this, *(v59 + 48), v53[4].u32[0]);
        if (!task)
        {
          v65.i32[0] = 0;
          v69 = a2[22];
          v70 = vceq_s32(v69, 0x8000000080000000);
          v71 = vdup_lane_s32(vcgt_s32(v65, vpmin_u32(v70, v70)), 0);
          *v79.f32 = vbsl_s8(v71, 0x100000001000000, vcvt_f32_s32(a2[21]));
          *&v79.u32[2] = vbsl_s8(v71, v39, vcvt_f32_s32(v69));
          v80 = 0;
          v81 = 0;
          v82 = 1065353216;
          v83 = 0;
          v84 = 257;
          v85 &= 0xF8u;
          v76[0] = xmmword_195E42760;
          v76[1] = xmmword_195E42770;
          v77 = 0;
          v78 = 0;
          *(v90 + 6) = 0;
          v90[0] = 0;
          RB::render_primitive(a2, v76, &v79, v90, 0, v63);
          v57 = 0;
          v51 = v75;
          goto LABEL_74;
        }

        v66.n128_u64[0] = task[14];
        v67.n128_u32[0] = *(v59 + 64);
        RB::DisplayList::LayerTask::render(task, a3, a2, *(v59 + 56), 0, v63, v75.n128_u64[0], v66, task[15], v67, v68);
      }

      else
      {
        (*(*v59 + 56))(v56[1] & 0xFFFFFFFFFFFFFFFELL, a3, a2, v63, v51);
      }

      v51 = v75;
      v57 = 0;
LABEL_74:
      v58 *= 2;
      v56 = *v56;
      if (!v56)
      {
        goto LABEL_77;
      }
    }
  }

LABEL_78:
  a2[15].i32[1] = v37;
  if (this[21])
  {
    LOBYTE(v72) = 1;
  }

  else
  {
    v72 = (this[28].u8[0] >> 2) & 1;
  }

  this[11].i8[2] = v72;
  a3[182] = v87[0];
}

RB::DisplayList::Contents *RB::DisplayList::Contents::Contents(RB::DisplayList::Contents *this, int a2)
{
  *(this + 2) = 1;
  *this = &unk_1F0A39320;
  RB::Heap::Heap((this + 16), this + 56, 256, 0);
  *(this + 39) = 0;
  RB::DisplayList::Layer::Layer((this + 320), a2, 256);
  *(this + 52) = 0;
  *(this + 424) = 1;
  return this;
}

void RBShapeData::apply<RB::DestroyAny>(int *a1)
{
  v1 = *a1;
  if (*a1 == 5)
  {
    *(a1 + 2) = &unk_1F0A383A8;
  }

  else if (v1 == 3)
  {
    *(a1 + 2) = &unk_1F0A38388;
    RBPathRelease(*(a1 + 3), *(a1 + 4));
  }

  else if (v1 == 2)
  {
    RBPathRelease(*(a1 + 2), *(a1 + 3));
  }
}

unint64_t RBDrawingStateDrawShape(__n128 *a1, uint64_t a2, RBFill *a3, unsigned int a4, float a5)
{
  v10 = a1->n128_u64[1];
  if (!*(v10 + 24))
  {
    make_contents(a1->n128_i64[1]);
  }

  v11 = rb_blend_mode(a4);
  if (*(v10 + 304) != 1 || a5 != 0.0 && !RBFillIsClear(a3) || (result = RB::may_discard_alpha(v11), (result & 1) == 0))
  {
    v13 = (*(v10 + 24) + 16);
    RB::DisplayList::State::copy_ctm(a1, v13);
    v14 = a1[9].n128_u16[6];
    _H0 = a1[11].n128_u16[0];
    __asm { FCVT            S9, H0 }

    v29[0] = v13;
    v29[1] = v21;
    v30 = a5;
    v31 = v11;
    v32 = v14;
    v33 = _S9;
    v34 = [(RBShape *)a3 shapeData];
    v35 = RB::DisplayList::Builder::culling_bounds((v10 + 16), a1);
    v37 = 0;
    v36 = *(v10 + 304);
    v22 = [(RBShape *)a2 shapeData];
    RBShapeData::apply<RB::DisplayList::ItemFactory>(v22, v29, v23, v24, v25, v26, v27, v28);
    if (v37)
    {
      RB::DisplayList::Builder::draw((v10 + 16), v37, a1);
    }

    result = *(v10 + 320);
    if (result)
    {
      RB::XML::DisplayList::draw_shape(result);
    }
  }

  return result;
}

unsigned __int8 *RB::DisplayList::Builder::draw(RB::DisplayList::Contents **this, int8x16_t *a2, int8x16_t *a3)
{
  if (!this[1])
  {
    RB::DisplayList::Builder::reset_contents(this);
  }

  v6 = this[4];
  if (!v6 || (v7 = *v6, *(*v6 + 18) != a3[9].i32[0]))
  {
    RB::DisplayList::Builder::begin_layer(this, a2->i8);
  }

  a2[1] = vextq_s8(a3[6], a3[6], 8uLL);
  if ((this[36] & 1) == 0)
  {
    a2[2].i64[0] = RB::DisplayList::State::copy_metadata(a3, this[1]);
    a2[2].i32[2] = a3[4].i32[0];
    v7 = *this[4];
  }

  return RB::DisplayList::Builder::draw(this, a2, v7, 0);
}

__int128 *RB::AffineTransform::identity(RB::AffineTransform *this)
{
  if ((atomic_load_explicit(_MergedGlobals, memory_order_acquire) & 1) == 0)
  {
    RB::AffineTransform::identity();
  }

  return &xmmword_1ED6D5340;
}

uint64_t RB::ColorMode::ColorMode(uint64_t a1, int a2)
{
  v2 = BYTE2(a2);
  *a1 = 1118465;
  if (a2 == 128)
  {
    v4 = rb_color_component(BYTE1(a2));
    if ((v4 & 0x100) != 0)
    {
      *a1 = v4;
    }

    v5 = rb_color_space(v2);
    if ((v5 & 0x100) != 0)
    {
      *(a1 + 1) = v5;
      *(a1 + 2) = v5;
      v6 = v5 <= 0xFu || (v5 & 0xF0) == 16;
      v7 = !v6;
      if ((v5 & 0xF) == 0 || v7)
      {
        if (v7)
        {
          v8 = v5 & 0xF | ((v5 & 0xF) == 0) | 0x10;
        }

        else
        {
          v8 = v5 | ((v5 & 0xF) == 0);
        }

        *(a1 + 1) = v8;
      }
    }

    return a1;
  }

  if (a2 <= 9)
  {
    if (a2 > 2)
    {
      if ((a2 - 3) >= 6)
      {
        goto LABEL_36;
      }

      v9 = 0;
      goto LABEL_33;
    }

    if (a2 != 1)
    {
      if (a2 != 2)
      {
        if (a2 == -1)
        {
          abort();
        }

        goto LABEL_36;
      }

      goto LABEL_31;
    }

    goto LABEL_35;
  }

  if (a2 <= 13)
  {
    if (a2 != 10)
    {
      if (a2 == 11)
      {
LABEL_31:
        v9 = 5;
        goto LABEL_33;
      }

      if (a2 != 13)
      {
        goto LABEL_36;
      }
    }

LABEL_35:
    *(a1 + 1) = 257;
    goto LABEL_36;
  }

  if ((a2 - 14) < 2)
  {
    v9 = 3;
  }

  else
  {
    if ((a2 - 16) > 1)
    {
      goto LABEL_36;
    }

    v9 = 2;
  }

LABEL_33:
  *a1 = v9;
  if (a2 <= 0x11 && ((1 << a2) & 0x285C6) != 0)
  {
    goto LABEL_35;
  }

LABEL_36:
  if ((a2 - 9) <= 1)
  {
    *(a1 + 3) = 1;
  }

  return a1;
}

float32x2_t *RB::DisplayList::Builder::Builder(float32x2_t *this)
{
  this[4] = 0;
  *this->f32 = 0u;
  *this[2].f32 = 0u;
  v2 = RB::DisplayList::State::State(&this[6], 0);
  v3 = this->i32[0];
  this[30] = 0;
  this[31] = 0;
  this[32] = 0x100000001000000;
  this[33] = vneg_f32(0x80000000800000);
  this[34].i32[0] = v3;
  this[35] = v2;
  this[36].i8[0] = 0;
  return this;
}

void sub_195CFB934(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    RB::DisplayList::Builder::Builder(v3);
  }

  _Unwind_Resume(exception_object);
}

RB::DisplayList::State *RB::DisplayList::State::State(RB::DisplayList::State *this, int a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 1) = xmmword_195E42760;
  *(this + 2) = xmmword_195E42770;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  uuid_clear(this + 68);
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = RB::AffineTransform::identity(v4);
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 36) = a2;
  *(this + 148) = 0x7FC00000FFFFFFFFLL;
  *(this + 78) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0x100000000;
  *(this + 88) = 0;
  return this;
}

void sub_195CFB9E8(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    RB::DisplayList::State::State(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RBXMLRecorderInstalled(void)
{
  if (RBXMLRecorderInstalled(void)::once != -1)
  {
    RBXMLRecorderInstalled();
  }

  return RB::XMLRecorder::installed;
}

void RB::Heap::reset(RB::Heap *this, char *a2, uint64_t a3)
{
  v6 = *(this + 4);
  if (v6)
  {
    RB::ObjectTable::~ObjectTable(v6);
    *(this + 4) = 0;
  }

  while (1)
  {
    v8 = *(this + 1);
    if (!v8)
    {
      break;
    }

    v7 = v8[1];
    *(this + 1) = *v8;
    free(v7);
  }

  *(this + 2) = a2;
  *(this + 3) = &a2[a3];
}

void RB::DisplayList::Builder::save(RB::DisplayList::Builder *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 2) = v2->_next;
  }

  else
  {
    v2 = malloc_type_malloc(0xC0uLL, 0x10E0040FB4F2F54uLL);
  }

  RB::DisplayList::State::State(v2, *(this + 35));
  *v3 = *(this + 35);
  *(this + 35) = v3;
}

__int16 RB::DisplayList::State::State@<H0>(State *this@<X0>, const State *a2@<X1>)
{
  context = a2->_context;
  this->_next = 0;
  this->_context = context;
  v3 = *&a2->var0;
  v4 = *&a2[1].var0;
  *&this[1]._next = *&a2[1]._next;
  *&this[1].var0 = v4;
  *&this->var0 = v3;
  v5 = *&a2[2]._next;
  *&this[2].var0 = *&a2[2].var0;
  *&this[2]._next = v5;
  var1 = a2[2].var1;
  if (var1 != 0.0)
  {
    atomic_fetch_add_explicit((*&var1 + 8), 1u, memory_order_relaxed);
  }

  this[2].var1 = var1;
  this[3] = a2[3];
  *&this[4]._next = *&a2[4]._next;
  *&this[4].var0 = *&a2[4].var0;
  LODWORD(this[4].var1) = LODWORD(a2[4].var1);
  WORD2(this[4].var1) = WORD2(a2[4].var1);
  this[5]._next = a2[5]._next;
  this[5]._context = a2[5]._context;
  result = *&a2[5].var0;
  *&this[5].var0 = result;
  return result;
}

RB::XML::Document *RBDrawingStateTranslateCTM(RB::XML::Document *a1, double a2, double a3)
{
  v6 = *(a1 + 1);
  RB::DisplayList::State::translate(a1, a2, a3);
  result = *(v6 + 320);
  if (result)
  {

    return RB::XML::DisplayList::translate_ctm(result, a1, v7, a2, a3);
  }

  return result;
}

uint64_t RB::DisplayList::State::translate(uint64_t this, double a2, double a3)
{
  if (a2 != 0.0 || a3 != 0.0)
  {
    *(this + 48) = vmlaq_n_f64(vmlaq_n_f64(*(this + 48), *(this + 16), a2), *(this + 32), a3);
    *(this + 112) = 0;
    *(this + 148) = -1;
  }

  return this;
}

uint64_t RB::DisplayList::Builder::set_optimized(uint64_t this, int a2)
{
  *(this + 288) = a2;
  v2 = *(this + 8);
  if (v2 && (!a2 || !*(v2 + 336) && !*(v2 + 352)))
  {
    *(v2 + 424) = a2 ^ 1;
  }

  return this;
}

float32x2_t *RB::DisplayList::Builder::set_crop(float32x2_t *this, Rect a2, float32x2_t a3, float32x2_t a4)
{
  v4 = vand_s8(vceq_f32(this[33], a4), vceq_f32(this[32], a3));
  if ((vpmin_u32(v4, v4).u32[0] & 0x80000000) == 0)
  {
    this[32] = a3;
    this[33] = a4;
    v5 = this->i32[0] + 1;
    this->i32[0] = v5;
    this[34].i32[0] = v5;
  }

  return this;
}

RB::XML::Document *RBDrawingStateScaleCTM(uint64_t a1, float64x2_t a2, double a3)
{
  v4 = a2.f64[0];
  v6 = *(a1 + 8);
  RB::DisplayList::State::scale(a1, a2, a3);
  result = *(v6 + 320);
  if (result)
  {

    return RB::XML::DisplayList::scale_ctm(result, a1, v7, v4, a3);
  }

  return result;
}

float64x2_t RB::DisplayList::State::scale(float64x2_t *this, float64x2_t result, double a3)
{
  if (result.f64[0] != 1.0 || a3 != 1.0)
  {
    result = vmulq_n_f64(this[1], result.f64[0]);
    v4 = vmulq_n_f64(this[2], a3);
    this[1] = result;
    this[2] = v4;
    this[7].f64[0] = 0.0;
    HIDWORD(this[9].f64[0]) = -1;
  }

  return result;
}

uint64_t *RBDrawingStateAddContentHeadroom(uint64_t *result, float a2)
{
  if (a2 > 0.0)
  {
    v3 = result;
    v4 = result[1];
    if (!v4[3])
    {
      make_contents(result[1]);
    }

    RB::DisplayList::Builder::add_content_headroom((v4 + 2), v3, a2);
    result = v4[40];
    if (result)
    {

      RB::XML::DisplayList::add_content_headroom(result, v3, v5, a2);
    }
  }

  return result;
}

RB::DisplayList::Builder *RB::DisplayList::Builder::add_content_headroom(RB::DisplayList::Builder *this, RB::DisplayList::State *a2, float a3)
{
  _S8 = a3;
  if (!*(this + 1))
  {
    RB::DisplayList::Builder::reset_contents(this);
  }

  v4 = *(this + 4);
  if (!v4 || (v5 = *v4, *(v5 + 72) != *(a2 + 36)))
  {
    RB::DisplayList::Builder::begin_layer(this, a2);
  }

  _H0 = *(v5 + 86);
  __asm
  {
    FCVT            S1, H0
    FCVT            H2, S8
  }

  if (_S1 < _S8)
  {
    _H0 = _H2;
  }

  *(v5 + 86) = _H0;
  return this;
}

float32x2_t *RB::DisplayList::Builder::begin_layer(RB::DisplayList::Builder *this, const RB::DisplayList::State *a2, int a3)
{
  if (!*(this + 1))
  {
    RB::DisplayList::Builder::reset_contents(this);
  }

  v5 = *(this + 4);
  if (!v5 || *(*v5 + 72) != *(a2 + 36))
  {
    RB::DisplayList::Builder::begin_layer(this, a2);
  }

  RB::DisplayList::Builder::make_layer(this, a3);
  v7 = v6;
  v8 = *(this + 3);
  if (v8)
  {
    *(this + 3) = v8[1];
  }

  else
  {
    v8 = malloc_type_malloc(0x28uLL, 0x1020040EF90260EuLL);
  }

  v9 = *this + 1;
  *this = v9;
  *v8 = v7;
  v8[1] = 0;
  v8[2] = 0x100000001000000;
  v8[3] = vneg_f32(0x80000000800000);
  v8[4].i32[0] = v9;
  v16 = *(*(this + 4) + 16);
  v13[0] = xmmword_195E42760;
  v13[1] = xmmword_195E42770;
  v14 = 0;
  v15 = 0;
  v10 = *(a2 + 13);
  if (v10)
  {
    RB::DisplayList::Style::roi(v10, &v16, v13);
  }

  v11 = *(a2 + 12);
  if (v11)
  {
    RB::Rect::move_identity(&v16, v13);
    RB::Rect::intersect(&v16, *(v11 + 16), *(v11 + 24));
  }

  RB::Rect::move_identity(&v16, v13);
  *v8[2].f32 = v16;
  v8[1] = *(this + 32);
  *(this + 4) = v8;
  return v8;
}

double RB::DisplayList::Builder::make_layer(RB::DisplayList::Builder *this, int a2)
{
  v4 = *(this + 1);
  v5 = *(this + 1) + 1;
  *(this + 1) = v5;
  v6 = ((v4[4] + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v6 + 96 > v4[5])
  {
    v6 = RB::Heap::alloc_slow(v4 + 2, 0x60uLL, 7);
    v5 = *(this + 1);
  }

  else
  {
    v4[4] = v6 + 96;
  }

  return RB::DisplayList::Layer::Layer(v6, v5, a2);
}

int8x16_t RB::Rect::move_identity(float32x2_t *this, float64x2_t *a2)
{
  result = vandq_s8(vandq_s8(vceqq_f64(a2[1], xmmword_195E42770), vceqq_f64(*a2, xmmword_195E42760)), vceqzq_f64(a2[2]));
  result.i64[0] = vandq_s8(vdupq_laneq_s64(result, 1), result).u64[0];
  if ((result.i64[0] & 0x8000000000000000) == 0)
  {
    *this = RB::operator*(a2, *this, this[1]);
    this[1] = v5;
    result = xmmword_195E42770;
    *a2 = xmmword_195E42760;
    a2[1] = xmmword_195E42770;
    a2[2].f64[0] = 0.0;
    a2[2].f64[1] = 0.0;
  }

  return result;
}

uint64_t RB::DisplayList::Builder::save(RB::DisplayList::Builder *this, LayerState *a2)
{
  v4 = *(this + 2);
  if (v4)
  {
    *(this + 2) = *v4;
  }

  else
  {
    v4 = malloc_type_malloc(0xC0uLL, 0x10E0040FB4F2F54uLL);
  }

  result = RB::DisplayList::State::State(v4, *(*a2 + 72), *(this + 35));
  v6 = *a2;
  v7 = *(this + 35);
  if ((*(v6 + 76) & 0x10) != 0)
  {
    result = *(v4 + 11);
    v8 = *(v7 + 88);
    if (result != v8)
    {
      if (result)
      {
        if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          result = RB::Refcount<RB::Transition,std::atomic<unsigned int>>::release();
        }

        v8 = *(v7 + 88);
      }

      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1u, memory_order_relaxed);
      }

      *(v4 + 11) = v8;
      v7 = *(this + 35);
    }
  }

  *v4 = v7;
  *(this + 35) = v4;
  return result;
}

RB::DisplayList::State *RB::DisplayList::State::State(RB::DisplayList::State *this, int a2, const RB::DisplayList::State *a3)
{
  v6 = *(a3 + 1);
  *this = 0;
  *(this + 1) = v6;
  v7 = *(a3 + 1);
  v8 = *(a3 + 3);
  *(this + 2) = *(a3 + 2);
  *(this + 3) = v8;
  *(this + 1) = v7;
  *(this + 16) = 0;
  uuid_clear(this + 68);
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = *(a3 + 14);
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 36) = a2;
  *(this + 37) = -1;
  *(this + 38) = *(a3 + 38);
  *(this + 78) = *(a3 + 78);
  *(this + 20) = 0;
  *(this + 21) = *(a3 + 21);
  *(this + 88) = *(a3 + 88);
  return this;
}

uint64_t rb_blend_mode(unsigned int a1)
{
  if (a1 <= 0x1B)
  {
    return rb_blend_mode(RBBlendMode)::cg_table[a1];
  }

  if (a1 - 1000 <= 0x13)
  {
    return rb_blend_mode(RBBlendMode)::custom_table[a1 - 1000];
  }

  if (a1 == 2000)
  {
    return 24;
  }

  return 2;
}

{
  if (a1 > 0x35)
  {
    return 0;
  }

  else
  {
    return dword_195E44E54[a1];
  }
}

float32x2_t *RB::DisplayList::Builder::culling_bounds(RB::DisplayList::Builder *this, RB::DisplayList::State *a2)
{
  if (*(this + 288) != 1)
  {
    return 0;
  }

  result = RB::DisplayList::Builder::crop_bounds(this, a2);
  v3 = vcge_f32(vabs_f32(result[1]), vneg_f32(0x80000000800000));
  if (vpmax_u32(v3, v3).i32[0] < 0)
  {
    return 0;
  }

  return result;
}

uint64_t RBFillData::apply<RB::DisplayList::ItemFactory::Inner<RB::Coverage::Primitive>>(uint64_t result, __int128 **a2)
{
  v2 = *result;
  if (*result <= 2)
  {
    if (v2 == 1)
    {
      return RB::DisplayList::ItemFactory::Inner<RB::Coverage::Primitive>::operator()<RB::Fill::Color>(a2, result + 16);
    }

    else if (v2 == 2)
    {
      return RB::DisplayList::ItemFactory::Inner<RB::Coverage::Primitive>::operator()<RB::Fill::Gradient>(a2, (result + 16));
    }
  }

  else
  {
    switch(v2)
    {
      case 3:
        return RB::DisplayList::ItemFactory::Inner<RB::Coverage::Primitive>::operator()<RB::Fill::MeshGradient>(a2, result + 16);
      case 4:
        return RB::DisplayList::ItemFactory::Inner<RB::Coverage::Primitive>::operator()<RB::Fill::Image<RB::ImageTexture>>(a2, (result + 16));
      case 5:
        return RB::DisplayList::ItemFactory::Inner<RB::Coverage::Primitive>::operator()<RB::Fill::Custom>(a2, result + 16);
    }
  }

  return result;
}

float32x2_t *RBShapeData::apply<RB::DisplayList::ItemFactory>(float32x2_t *result, uint64_t a2, double a3, double a4, int8x16_t a5, int32x4_t a6, int8x16_t a7, int8x16_t a8)
{
  v8 = result->i32[0];
  if (result->i32[0] <= 2)
  {
    if (v8 == 1)
    {
      return RB::DisplayList::ItemFactory::operator()<RB::Coverage::Primitive>(a2, result + 2, a3, a4, a5, a6, a7, a8);
    }

    else if (v8 == 2)
    {
      return RB::DisplayList::ItemFactory::operator()<RB::Coverage::Path>(a2, &result[2]);
    }
  }

  else
  {
    switch(v8)
    {
      case 3:
        return RB::DisplayList::ItemFactory::operator()<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>(a2, &result[2]);
      case 4:
        return RB::DisplayList::ItemFactory::operator()<RB::Coverage::Glyphs>(a2, result + 2);
      case 5:
        return RB::DisplayList::ItemFactory::operator()<RB::Coverage::Stroke<RBStrokeRef>>(a2, &result[2]);
    }
  }

  return result;
}

uint64_t RB::DisplayList::ItemFactory::operator()<RB::Coverage::Primitive>(uint64_t a1, float32x2_t *this, double a3, double a4, int8x16_t a5, int32x4_t a6, int8x16_t a7, int8x16_t a8)
{
  v10 = *(a1 + 40);
  if (!v10 || (v14[0] = xmmword_195E42760, v14[1] = xmmword_195E42770, v15 = 0, v16 = 0, v11 = RB::Coverage::Primitive::bounds(this, v14, xmmword_195E42760, xmmword_195E42770, a5, a6, a7, a8), result = RB::Rect::intersects(v10, v11, v12), (result & 1) != 0))
  {
    *&v14[0].f64[0] = a1;
    *&v14[0].f64[1] = this;
    return RBFillData::apply<RB::DisplayList::ItemFactory::Inner<RB::Coverage::Primitive>>(*(a1 + 32), v14);
  }

  return result;
}

double RB::DisplayList::Layer::Layer(RB::DisplayList::Layer *this, int a2, int a3)
{
  *this = &unk_1F0A3FB60;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0xBF80000000000000;
  *(this + 18) = a2;
  *(this + 19) = a3;
  *(this + 80) = 0;
  *(this + 82) = 0;
  *(this + 90) = 0;
  return result;
}

BOOL RB::Rect::representable_cgrect(RB::Rect *this, const CGRect *a2)
{
  v2 = fabs(*this);
  v3 = fabs(*(this + 1));
  if (v2 < v3)
  {
    v2 = v3;
  }

  v4 = fabs(*(this + 2));
  v5 = fabs(*(this + 3));
  if (v4 < v5)
  {
    v4 = v5;
  }

  if (v2 < v4)
  {
    v2 = v4;
  }

  return v2 <= 32767.0 || v2 == INFINITY;
}

float32x2_t RB::Coverage::Primitive::bounds(float32x2_t *this, float64x2_t *a2, int8x16_t a3, int8x16_t a4, int8x16_t _Q2, int32x4_t a6, int8x16_t a7, int8x16_t a8)
{
  v8 = this[5].u8[4];
  if (v8 <= 0xB)
  {
    if (((1 << v8) & 0xBC) != 0)
    {
      goto LABEL_3;
    }

    if (((1 << v8) & 0x140) != 0)
    {
      if ((this[5].i8[6] & 1) == 0)
      {
        v17 = vceqz_f32(this[1]);
        if ((vpmin_u32(v17, v17).u32[0] & 0x80000000) != 0)
        {
          *&result = 0.0;
          return result;
        }
      }

LABEL_3:
      if (this[5].i8[6])
      {
        *&result = 7.29112205e-304;
        return result;
      }

      __asm { FMOV            V2.2S, #1.0 }

      _Q2.i32[0] = this[4].i32[0];
      *a3.i8 = vmul_f32(*this, *_Q2.i8);
      v14 = vmul_f32(this[1], *_Q2.i8);
      *_Q2.i8 = vadd_f32(v14, *a3.i8);
      *a6.i8 = vcltz_f32(v14);
      v15 = vcltzq_s32(a6);
      v16 = vbslq_s8(v15, _Q2, a3);
      *a4.i8 = vabs_f32(v14);
      _Q2.i32[0] = this[4].i32[1];
      if (*_Q2.i32 > 0.0)
      {
        v15.i32[0] = 1060439283;
        if (v8 != 8)
        {
          *v15.i32 = 0.5;
        }

        *_Q2.i32 = *_Q2.i32 * *v15.i32;
        *v15.i8 = vcgt_f32(vneg_f32(0x80000000800000), *a4.i8);
        a7 = vsubq_f32(v16, vdupq_lane_s32(*_Q2.i8, 0));
        v15 = vcltzq_s32(v15);
        v16 = vbslq_s8(v15, a7, v16);
        *_Q2.i8 = vadd_f32(vdup_lane_s32(vadd_f32(*_Q2.i8, *_Q2.i8), 0), *a4.i8);
        a4 = vbslq_s8(v15, _Q2, a4);
      }

      if ((this[5].i8[6] & 4) != 0)
      {
        *_Q2.i32 = this[5].f32[0] * 2.8;
      }

      else
      {
        if (this[5].u8[5] < 3u)
        {
          return RB::operator*(a2, *v16.f32, *a4.i8);
        }

        _Q2.i32[0] = this[5].i32[0];
      }

      *v15.i8 = vcgt_f32(vneg_f32(0x80000000800000), *a4.i8);
      *a7.i8 = vsub_f32(*v16.f32, vdup_lane_s32(*_Q2.i8, 0));
      v18 = vcltzq_s32(v15);
      v16.i64[0] = vbslq_s8(v18, a7, v16).u64[0];
      *a8.i8 = vmla_n_f32(*a4.i8, 0x4000000040000000, *_Q2.i32);
      a4.i64[0] = vbslq_s8(v18, a8, a4).u64[0];
      return RB::operator*(a2, *v16.f32, *a4.i8);
    }

    if (((1 << v8) & 0xE00) != 0)
    {
      abort();
    }
  }

  *&result = 0.0;
  if (v8 == 1)
  {
    *&result = 7.29112205e-304;
  }

  return result;
}

float32x2_t RB::operator*(float64x2_t *a1, float32x2_t result, float32x2_t a3)
{
  v3 = vcge_f32(vabs_f32(a3), vneg_f32(0x80000000800000));
  if ((vpmax_u32(v3, v3).u32[0] & 0x80000000) == 0)
  {
    v4 = vceqz_f32(a3);
    if ((vpmax_u32(v4, v4).u32[0] & 0x80000000) != 0)
    {
      v12 = vcvtq_f64_f32(result);
      return vcvt_f32_f64(vmlaq_laneq_f64(vmlaq_n_f64(a1[2], *a1, v12.f64[0]), a1[1], v12, 1));
    }

    v5 = *a1;
    v6 = a1[1];
    if (a1->f64[1] != 0.0 || v6.f64[0] != 0.0)
    {
      v13 = vcvtq_f64_f32(result);
      *&v13.f64[0] = vcvt_f32_f64(vmlaq_laneq_f64(vmlaq_n_f64(a1[2], v5, v13.f64[0]), v6, v13, 1));
      v14 = vcvtq_f64_f32(vadd_f32(a3.u32[0], result));
      *&v14.f64[0] = vcvt_f32_f64(vmlaq_laneq_f64(vmlaq_n_f64(a1[2], v5, v14.f64[0]), v6, v14, 1));
      v15 = vcvtq_f64_f32(vadd_f32(a3, result));
      a3.i32[0] = 0;
      *&v15.f64[0] = vcvt_f32_f64(vmlaq_laneq_f64(vmlaq_n_f64(a1[2], v5, v15.f64[0]), v6, v15, 1));
      v16 = vcvtq_f64_f32(vadd_f32(a3, result));
      v17 = vcvt_f32_f64(vmlaq_laneq_f64(vmlaq_n_f64(a1[2], v5, v16.f64[0]), v6, v16, 1));
      v10 = vminnm_f32(vminnm_f32(*&v13.f64[0], *&v14.f64[0]), vminnm_f32(*&v15.f64[0], v17));
      v11 = vmaxnm_f32(vmaxnm_f32(*&v13.f64[0], *&v14.f64[0]), vmaxnm_f32(*&v15.f64[0], v17));
      goto LABEL_12;
    }

    if (v5.f64[0] != 1.0 || v6.f64[1] != 1.0)
    {
      v5.f64[1] = a1[1].f64[1];
      v8 = vcvt_f32_f64(vmlaq_f64(a1[2], vcvtq_f64_f32(result), v5));
      v9 = vcvt_f32_f64(vmlaq_f64(a1[2], vcvtq_f64_f32(vadd_f32(a3, result)), v5));
      v10 = vminnm_f32(v8, v9);
      v11 = vmaxnm_f32(v8, v9);
LABEL_12:
      *&result = RB::Rect::from_bounds(v10, v11);
      return result;
    }

    return vadd_f32(result, vcvt_f32_f64(a1[2]));
  }

  return result;
}

double RB::Rect::from_bounds(float32x2_t a1, float32x2_t a2)
{
  v2 = vcge_f32(a2, a1);
  v3 = vpmin_u32(v2, v2).u32[0];
  v4 = 0;
  if ((v3 & 0x80000000) != 0)
  {
    v4.i32[0] = 0;
    v5 = vsub_f32(a2, a1);
    v6 = vbsl_s8(vcgt_f32(a2, vadd_f32(v5, a1)), vadd_s32(v5, 0x100000001), v5);
    v7 = vneg_f32(0x7F0000007FLL);
    v8 = vorr_s8(vcgt_f32(v7, v6), vcgt_f32(v6, v7));
    v4 = vbsl_s8(vdup_lane_s32(vcgt_s32(v4, vpmin_u32(v8, v8)), 0), a1, 0x100000001000000);
  }

  return *&v4;
}

float64x2_t RB::Rect::move(float32x2_t *this, float64x2_t *a2, float64x2_t *a3)
{
  v4 = *a3;
  v3 = a3[1];
  result = a3[2];
  v6 = vandq_s8(vandq_s8(vceqq_f64(v3, a2[1]), vceqq_f64(*a3, *a2)), vceqq_f64(result, a2[2]));
  if ((vandq_s8(vdupq_laneq_s64(v6, 1), v6).u64[0] & 0x8000000000000000) == 0)
  {
    v10 = *this;
    v11 = this[1];
    v12 = vmulq_f64(vextq_s8(v3, v3, 8uLL), v4);
    v13 = vsubq_f64(v12, vdupq_laneq_s64(v12, 1)).f64[0];
    if (v13 != 0.0)
    {
      v14 = 1.0 / v13;
      v15 = vmulq_n_f64(v4, v14);
      v16.f64[0] = vmuld_lane_f64(v14, v3, 1);
      v17 = vmuld_lane_f64(v14 * v3.f64[0], result, 1);
      v18 = -(v14 * v3.f64[0]);
      v19 = vextq_s8(v15, v15, 8uLL);
      v20 = vmulq_f64(v19, result);
      v21 = vdupq_lane_s64(*&v20.f64[0], 0);
      v21.f64[0] = v17;
      v20.f64[0] = v16.f64[0] * result.f64[0];
      result = vsubq_f64(v21, v20);
      v16.f64[1] = -*&v15.i64[1];
      v19.f64[0] = v18;
      v3 = v19;
      v4 = v16;
    }

    v27[0] = v4;
    v27[1] = v3;
    v27[2] = result;
    v22.f64[0] = RB::operator*(a2, v27);
    v28[0] = v22;
    v28[1] = v23;
    v28[2] = v24;
    *this = RB::operator*(v28, v10, v11);
    this[1] = v25;
    result = *a3;
    v26 = a3[2];
    a2[1] = a3[1];
    a2[2] = v26;
    *a2 = result;
  }

  return result;
}

uint64_t RB::Rect::intersects(float32x2_t *a1, float32x2_t a2, float32x2_t a3)
{
  v3 = vceqz_f32(a3);
  if ((vpmax_u32(v3, v3).u32[0] & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = a1[1];
  v5 = vceqz_f32(v4);
  if ((vpmax_u32(v5, v5).u32[0] & 0x80000000) != 0)
  {
    return 0;
  }

  v6 = vbsl_s8(vcltz_f32(v4), vadd_f32(*a1, v4), *a1);
  v7 = vbsl_s8(vcltz_f32(a3), vadd_f32(a3, a2), a2);
  v8 = vcgt_f32(vminnm_f32(vadd_f32(v6, vabs_f32(v4)), vadd_f32(v7, vabs_f32(a3))), vmaxnm_f32(v6, v7));
  return vpmin_u32(v8, v8).u32[0] >> 31;
}

float set_rounded_rect(uint64_t a1, int a2, float64x2_t a3, float64_t a4, float64x2_t a5, double a6, double a7, double a8, double a9)
{
  v11 = 1.0;
  v12 = 2;
  if (a7 > 0.0 && a8 > 0.0)
  {
    if (a6 >= a5.f64[0])
    {
      v13 = a5.f64[0];
    }

    else
    {
      v13 = a6;
    }

    v14 = v13 * 0.5;
    if (v14 < a7)
    {
      a7 = v14;
    }

    if (v14 < a8)
    {
      a8 = v14;
    }

    if (a2 == 1)
    {
      a7 = a7 * 1.27499998;
      a8 = a8 * 1.27499998;
      v12 = 4;
    }

    else
    {
      if (a2)
      {
        abort();
      }

      if (a5.f64[0] == a6 && (a7 == v14 ? (v15 = a8 == v14) : (v15 = 0), v15))
      {
        v12 = 5;
      }

      else
      {
        v12 = 3;
      }
    }

    if (a7 == a8)
    {
      v16 = 1.0;
    }

    else
    {
      v17 = a7 / a8;
      v16 = 1.0 / (a7 / a8);
      v11 = v17;
    }

    a3.f64[0] = v16 * a3.f64[0];
    a5.f64[0] = v16 * a5.f64[0];
  }

  a3.f64[1] = a4;
  a5.f64[1] = a6;
  v18 = vcvt_f32_f64(a3);
  v19 = vcvt_f32_f64(a5);
  *a3.f64 = a8;
  v23 = vdupq_lane_s32(*&a3.f64[0], 0);
  v20 = *(a1 + 428);
  RBShapeData::apply<RB::DestroyAny>((a1 + 16));
  result = a9;
  v22 = *(a1 + 432);
  *(a1 + 32) = v18;
  *(a1 + 40) = v19;
  *(a1 + 48) = v23;
  *(a1 + 64) = v11;
  *(a1 + 68) = result;
  *(a1 + 72) = v22;
  *(a1 + 76) = v12;
  *(a1 + 77) = v20;
  *(a1 + 78) &= 0xF8u;
  *(a1 + 16) = 1;
  return result;
}

RB::XML::Document *RBDrawingStateClipShape2(__n128 *this, uint64_t a2, int a3, float a4)
{
  v8 = this->n128_u64[1];
  v9 = *(v8 + 24);
  if (!v9)
  {
    make_contents(this->n128_i64[1]);
    v9 = *(v8 + 24);
  }

  v10 = v9 + 16;
  RB::DisplayList::State::copy_ctm(this, (v9 + 16));
  v12 = v11;
  v21 = v10;
  v22 = a4;
  v23 = rb_clip_mode(a3);
  v24 = v12;
  v26 = 0;
  v25 = *(v8 + 304);
  v13 = [(RBShape *)a2 shapeData];
  RBShapeData::apply<RB::DisplayList::ClipFactory>(v13, &v21, v14, v15, v16, v17, v18, v19);
  RB::DisplayList::State::push(this, (v8 + 16), v26);
  result = *(v8 + 320);
  if (result)
  {
    RB::XML::DisplayList::clip_shape(result);
  }

  return result;
}

uint64_t RB::DisplayList::ClipFactory::operator()<RB::Coverage::Primitive>(uint64_t a1, _OWORD *a2, int8x16_t a3, double a4, double a5, double a6, int8x16_t a7, int8x16_t a8)
{
  result = *(a1 + 32);
  if (result)
  {
    if (*(a1 + 24) != 1)
    {
      return result;
    }
  }

  else
  {
    result = RB::Heap::emplace<RB::DisplayList::GenericClip<RB::Coverage::Primitive>,RB::Heap&,RB::Coverage::Primitive&,float &,RB::ClipMode &,RB::AffineTransform const*&>(*a1, a3, a4, a5, a6, a7, a8, *a1, a2, (a1 + 8), (a1 + 12), (a1 + 16));
    *(a1 + 32) = result;
    if ((*(a1 + 24) & 1) == 0)
    {
      return result;
    }
  }

  *(result + 45) |= 4u;
  return result;
}

uint64_t RB::Heap::emplace<RB::DisplayList::GenericClip<RB::Coverage::Primitive>,RB::Heap&,RB::Coverage::Primitive&,float &,RB::ClipMode &,RB::AffineTransform const*&>(size_t *a1, int8x16_t a2, double a3, double a4, double a5, int8x16_t a6, int8x16_t a7, uint64_t a8, _OWORD *a9, unsigned __int32 *a10, int *a11, uint64_t *a12)
{
  v16 = (a1[2] + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v16 + 128 > a1[3])
  {
    v16 = RB::Heap::alloc_slow(a1, 0x80uLL, 15);
  }

  else
  {
    a1[2] = v16 + 128;
  }

  a2.i32[0] = *a10;
  v17 = *a11;
  v18 = *a12;
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 40) = 0;
  *(v16 + 32) = 0;
  *(v16 + 44) = v17;
  *v16 = &unk_1F0A3D038;
  *(v16 + 48) = v18;
  v19 = *a9;
  v20 = *(a9 + 1);
  v21 = *(a9 + 31);
  *(v16 + 95) = v21;
  *(v16 + 64) = v19;
  *(v16 + 80) = v20;
  *(v16 + 112) = a2.i32[0];
  RB::DisplayList::GenericClip<RB::Coverage::Primitive>::update_bounds(v16, a2, v19, v20, v21, a6, a7);
  return v16;
}

uint64_t RBShapeData::apply<RB::DisplayList::ClipFactory>(uint64_t result, uint64_t a2, int8x16_t a3, double a4, double a5, double a6, int8x16_t a7, int8x16_t a8)
{
  v8 = *result;
  if (*result <= 2)
  {
    if (v8 == 1)
    {
      return RB::DisplayList::ClipFactory::operator()<RB::Coverage::Primitive>(a2, (result + 16), a3, a4, a5, a6, a7, a8);
    }

    else if (v8 == 2)
    {
      return RB::DisplayList::ClipFactory::operator()<RB::Coverage::Path>(a2, result + 16);
    }
  }

  else
  {
    switch(v8)
    {
      case 3:
        return RB::DisplayList::ClipFactory::operator()<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>(a2, result + 16);
      case 4:
        return RB::DisplayList::ClipFactory::operator()<RB::Coverage::Glyphs>(a2, (result + 16));
      case 5:
        return RB::DisplayList::ClipFactory::operator()<RB::Coverage::Stroke<RBStrokeRef>>(a2, result + 16);
    }
  }

  return result;
}

void RB::DisplayList::GenericClip<RB::Coverage::Primitive>::update_bounds(uint64_t a1, int8x16_t a2, int8x16_t a3, int8x16_t a4, int32x4_t a5, int8x16_t a6, int8x16_t a7)
{
  if (*(a1 + 44) == 1)
  {
    *(a1 + 16) = 0x100000001000000;
    *(a1 + 24) = vneg_f32(0x80000000800000);
  }

  else if (!*(a1 + 44))
  {
    a2.i32[0] = *(a1 + 112);
    if (*a2.i32 == 0.0)
    {
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
    }

    else
    {
      *(a1 + 16) = RB::Coverage::Primitive::bounds((a1 + 64), *(a1 + 48), a2, a3, a4, a5, a6, a7);
      *(a1 + 24) = v8;
      if (*(a1 + 112) == 1.0)
      {
        if (RB::Coverage::Primitive::rectangular((a1 + 64), *(a1 + 48)))
        {
          *(a1 + 45) |= 1u;
        }
      }
    }
  }
}

uint64_t RB::Coverage::Primitive::rectangular(RB::Coverage::Primitive *this, const RB::AffineTransform *a2)
{
  v2 = *(this + 44);
  if (v2 < 2)
  {
    return 1;
  }

  if ((*(this + 46) & 4) != 0)
  {
    return 0;
  }

  if (*(this + 46))
  {
    return 0;
  }

  v5 = *(this + 45);
  if (v5 > 1)
  {
    return 0;
  }

  v6 = *(this + 9);
  if (v6 > 0.0 && v6 < fmaxf(COERCE_FLOAT(*(this + 1)), COERCE_FLOAT(HIDWORD(*(this + 1)))))
  {
    return 0;
  }

  if (v2 <= 0xB)
  {
    if (((1 << v2) & 0xA0) != 0)
    {
      return 0;
    }

    if (((1 << v2) & 0x140) != 0)
    {
      v7 = vmvn_s8(vceqz_f32(*(this + 8)));
      v8 = vpmax_u32(v7, v7).u32[0];
      goto LABEL_17;
    }

    if (((1 << v2) & 0xE00) != 0)
    {
      abort();
    }
  }

  if (v2 - 3 >= 2)
  {
    goto LABEL_18;
  }

  v8 = vmaxvq_u32(vmvnq_s8(vceqzq_f32(*(this + 1))));
LABEL_17:
  if ((v8 & 0x80000000) != 0)
  {
    return 0;
  }

LABEL_18:
  v9 = *(a2 + 1);
  if (*(a2 + 1) == 0.0 && *&v9 == 0.0 || (result = 0, *a2 == 0.0) && *(&v9 + 1) == 0.0)
  {
    if (v5 == 1)
    {
      return 1;
    }

    *v10.i8 = RB::operator*(a2, *this, *(this + 8));
    v17.i64[0] = v10.i64[0];
    v17.i64[1] = v11.i64[0];
    v15.i32[0] = *(this + 9);
    if (*v15.i32 > 0.0)
    {
      *v15.i32 = *v15.i32 * 0.5;
      *v12.i8 = vcgt_f32(vneg_f32(0x80000000800000), *v11.i8);
      *v13.i8 = vsub_f32(*v10.i8, vdup_lane_s32(v15, 0));
      v16 = vcltzq_s32(v12);
      v10.i64[0] = vbslq_s8(v16, v13, v10).u64[0];
      *v14.i8 = vmla_n_f32(*v11.i8, 0x4000000040000000, *v15.i32);
      v10.i64[1] = vbslq_s8(v16, v14, v11).u64[0];
      v17 = v10;
    }

    v10.i32[0] = 981668463;
    return RB::Rect::is_integral(&v17, *v10.i8);
  }

  return result;
}

uint64_t RB::Heap::emplace<RB::DisplayList::ClipNode,RB::DisplayList::Clip const*&,RB::DisplayList::ClipNode*&>(size_t *a1, const RB::DisplayList::Clip **a2, const RB::DisplayList::ClipNode **a3)
{
  v5 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v5 + 32 > a1[3])
  {
    v5 = RB::Heap::alloc_slow(a1, 0x20uLL, 7);
  }

  else
  {
    a1[2] = v5 + 32;
  }

  v6 = *a2;
  v7 = *a3;

  return RB::DisplayList::ClipNode::ClipNode(v5, v6, v7);
}

const RB::DisplayList::ClipNode *RB::DisplayList::State::push(const RB::DisplayList::ClipNode **this, RB::DisplayList::Builder *a2, RB::DisplayList::Clip *a3)
{
  v10 = a3;
  if (*(a2 + 288) != 1)
  {
    goto LABEL_7;
  }

  if ((RB::DisplayList::ClipNode::elide_append(this + 12, a3) & 1) == 0)
  {
    if (*(a2 + 288))
    {
LABEL_8:
      result = RB::Heap::emplace<RB::DisplayList::ClipNode,RB::DisplayList::Clip const*&,RB::DisplayList::ClipNode*&>((*(a2 + 1) + 16), &v10, this + 12);
      this[12] = result;
      *(this + 37) = -1;
      v8 = *(a2 + 1);
      v9 = v10;
      *(v10 + 1) = *(v8 + 312);
      *(v8 + 312) = v9;
      return result;
    }

LABEL_7:
    *(a3 + 4) = RB::DisplayList::State::copy_metadata(this, *(a2 + 1));
    *(a3 + 10) = *(this + 16);
    goto LABEL_8;
  }

  v6 = **a3;

  return v6(a3);
}

uint64_t RB::DisplayList::ClipNode::elide_append(uint64_t *a1, float32x2_t *a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = vceqz_f32(*((*(v2 + 8) & 0xFFFFFFFFFFFFFFFELL) + 24));
    if ((vpmax_u32(v3, v3).u32[0] & 0x80000000) != 0)
    {
      return 1;
    }

    else
    {
      v4 = vceqz_f32(a2[3]);
      v2 = 0;
      if ((vpmax_u32(v4, v4).u32[0] & 0x80000000) != 0)
      {
        *a1 = 0;
      }
    }
  }

  return v2;
}

float32x2_t *RB::DisplayList::ClipNode::ClipNode(float32x2_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a3;
  a1[1] = a2;
  *a1[2].f32 = *(a2 + 16);
  if (*(a2 + 45))
  {
    a2 |= 1uLL;
    a1[1] = a2;
  }

  if (a3)
  {
    if ((*(a3 + 8) & 1) == 0)
    {
      a1[1] = (a2 & 0xFFFFFFFFFFFFFFFELL);
    }

    RB::Rect::intersect(a1 + 2, *(a3 + 16), *(a3 + 24));
  }

  return a1;
}

uint64_t RB::required_color_depth(RB *this, float a2, float a3)
{
  v3 = a2 + 0.001;
  v4 = a3 + -0.001;
  if (v4 > 1.251 || v3 < -0.75294)
  {
    v6 = 5;
  }

  else
  {
    v6 = 2;
  }

  if (v4 > 1.0 || v3 < 0.0)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void OUTLINED_FUNCTION_7()
{

  RB::Heap::reset((v0 + 288), (v0 + 328), 64);
}

double RB::Rect::from_bounds_inner(float32x2_t a1, float32x2_t a2)
{
  v2 = vcge_f32(a2, a1);
  v3 = 0.0;
  if ((vpmin_u32(v2, v2).u32[0] & 0x80000000) != 0)
  {
    v4 = vsub_f32(a2, a1);
    v5 = vneg_f32(0x7F0000007FLL);
    v6 = vorr_s8(vcgt_f32(v5, v4), vcgt_f32(v4, v5));
    if ((vpmin_u32(v6, v6).u32[0] & 0x80000000) != 0)
    {
      return *&a1;
    }

    else
    {
      return 7.29112205e-304;
    }
  }

  return v3;
}

unint64_t RB::DisplayList::ItemFactory::Inner<RB::Coverage::Primitive>::operator()<RB::Fill::Gradient>(__int128 **a1, uint64_t *a2)
{
  v3 = *a1;
  result = *(*a1 + 7);
  if (result)
  {
    if (*(v3 + 48) != 1)
    {
      return result;
    }

    goto LABEL_3;
  }

  result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::Gradient>,RB::Heap&,RB::Coverage::Primitive const&,RB::Fill::Gradient const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(*v3, *v3, a1[1], a2, v3 + 1, v3 + 4, v3 + 10, v3 + 12);
  v5 = *a1;
  _S0 = *(*a1 + 7);
  if (_S0 != 0.0)
  {
    __asm { FCVT            H0, S0 }

    *(result + 162) = _H0;
  }

  *(v5 + 7) = result;
  if (v5[3])
  {
LABEL_3:
    *(result + 46) |= 0x2000u;
  }

  return result;
}

unint64_t RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::Gradient>,RB::Heap&,RB::Coverage::Primitive const&,RB::Fill::Gradient const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(size_t *a1, RB::Heap *a2, __int128 *a3, uint64_t *a4, uint64_t *a5, int *a6, _WORD *a7, __int16 *a8)
{
  v15 = (a1[2] + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v15 + 176 > a1[3])
  {
    v15 = RB::Heap::alloc_slow(a1, 0xB0uLL, 15);
  }

  else
  {
    a1[2] = v15 + 176;
  }

  v16 = *a5;
  _S0 = *a6;
  v18 = *a7;
  v19 = *a8;
  __asm { FCVT            H0, S0 }

  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 40) = 0;
  *(v15 + 32) = 0;
  *(v15 + 44) = _S0;
  *(v15 + 46) = v18 & 0x3F;
  *v15 = &unk_1F0A3A430;
  *(v15 + 48) = v16;
  v24 = *a3;
  v25 = a3[1];
  *(v15 + 95) = *(a3 + 31);
  *(v15 + 64) = v24;
  *(v15 + 80) = v25;
  RB::Fill::Gradient::Gradient((v15 + 112), a4, v19, a2);
  *v15 = &off_1F0A3BAF8;
  return v15;
}

double OUTLINED_FUNCTION_1_0()
{
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 1065353216;
  *(v0 + 68) = 0;
  *(v0 + 76) = 256;
  return result;
}

uint64_t set_gradient_color(uint64_t a1, uint64_t a2, float *a3, int a4)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return 0;
    }
  }

  else
  {
    a3 = &RBColorClear;
  }

  [(RBFill *)a1 _setColor:a4 colorSpace:*a3, a3[1], a3[2], a3[3]];
  return 1;
}

uint64_t RB::Fill::Gradient::Gradient(uint64_t a1, RB::Heap *this, char a3, unint64_t a4, uint64_t a5, __int16 a6, uint64_t a7, int a8, float a9, double a10, double a11, float a12, float a13)
{
  _S10 = a9;
  *a1 = a4;
  v25 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = v25 + 16 * a4;
  if (v26 > *(this + 3))
  {
    v25 = RB::Heap::alloc_slow(this, 16 * a4, 7);
  }

  else
  {
    *(this + 2) = v26;
  }

  *(a1 + 8) = v25;
  *(a1 + 16) = 0;
  *(a1 + 24) = a10;
  *(a1 + 32) = a11;
  *(a1 + 40) = a12;
  *(a1 + 44) = a13;
  __asm { FCVT            H0, S10 }

  *(a1 + 48) = _D0.i16[0];
  _D0.i32[1] = 0;
  *(a1 + 50) = 0;
  *(a1 + 52) = a8;
  *(a1 + 56) = a3;
  *(a1 + 57) = a6;
  *(a1 + 59) = 1;
  if (a7)
  {
    v32 = a8 & 0xFFFFF0FF;
    *(a1 + 52) = a8 & 0xFFFFF0FF;
    if (a4)
    {
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = a8 | 0x10000;
      *_D0.i32 = 1.0 / (a4 - 1);
      v37 = a8 & 0xF00;
      v38 = vdupq_n_s32(0x437F0000u);
      __asm { FMOV            V4.4S, #1.0 }

      while (1)
      {
        if (v37 == 512)
        {
          v40 = v34;
        }

        else
        {
          v40 = v35;
        }

        if (v37 == 256)
        {
          v40 = v33;
        }

        v41 = *_D0.i32 * v35;
        v42 = a7 + 8 * v40;
        v43 = *v42;
        if (vabds_f32(v43, v41) > 0.001)
        {
          v32 |= 0x10000u;
          *(a1 + 52) = v32;
        }

        if (v37 == 256)
        {
          if (v35 + 1 >= a4)
          {
            goto LABEL_22;
          }

          v44 = *(v42 + 8);
          if (fabsf(((*_D0.i32 * -0.5) - v41) + v44) <= 0.001)
          {
            goto LABEL_22;
          }

          v45 = 256;
        }

        else
        {
          v45 = a8 & 0xF00;
          if (v37 == 512)
          {
            if (v35 + 1 >= a4)
            {
              goto LABEL_22;
            }

            v46 = vcvt_hight_f32_f64(vcvt_f32_f64(*(v42 + 8)), *(v42 + 24));
            v47 = vbicq_s8(v46, vcltzq_f32(v46));
            v46.i64[0] = 0x3F0000003F000000;
            v46.i64[1] = 0x3F0000003F000000;
            if (vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmlaq_f32(v46, v38, vbslq_s8(vcgtq_f32(v47, _Q4), _Q4, v47)))), _D0).u32[0] == -65536)
            {
              goto LABEL_22;
            }

            v45 = 512;
          }
        }

        v32 |= v45;
        *(a1 + 52) = v32;
LABEL_22:
        if (((v32 ^ v36) & 0x10F00) == 0)
        {
          goto LABEL_28;
        }

        ++v35;
        v34 += 5;
        v33 += 2;
        if (a4 == v35)
        {
          goto LABEL_29;
        }
      }
    }

    goto LABEL_60;
  }

  if ((a8 & 0xF00) == 0x200 || (a8 & 0xF00) == 0x100)
  {
    *(a1 + 52) = a8 & 0xFFFFF0FF;
  }

LABEL_28:
  LOWORD(v36) = a8;
  if (!a4)
  {
LABEL_60:
    v51 = INFINITY;
    v50 = -INFINITY;
    goto LABEL_61;
  }

LABEL_29:
  v48 = 0;
  v49 = v36 & 0xF00;
  v50 = -INFINITY;
  v51 = INFINITY;
  v52 = 8;
  v53 = 16;
  __asm { FMOV            V5.2S, #1.0 }

  v55 = vdup_n_s32(0x437F0000u);
  do
  {
    v56 = *(a1 + 8);
    v57 = *(a5 + v52 - 8);
    *(v56 + v52 - 8) = vcvt_f16_f32(v57);
    *(a1 + 59) &= v57.f32[3] == 1.0;
    v58 = fminf(fminf(v57.f32[0], v57.f32[2]), v57.f32[1]);
    if (v58 < v51)
    {
      v51 = v58;
    }

    v59 = fmaxf(fmaxf(v57.f32[0], v57.f32[2]), v57.f32[1]);
    if (v50 < v59)
    {
      v50 = v59;
    }

    v60 = *(a1 + 52);
    if ((v60 & 0x10000) != 0)
    {
      if (v49 == 512)
      {
        v65 = *(a7 + v53 - 16);
      }

      else if (v49 == 256)
      {
        v65 = *(a7 + v52 - 8);
      }

      else
      {
        v65 = *(a7 + 8 * v48);
      }

      v64 = v65;
    }

    else
    {
      v61 = *a1 - 1;
      v62 = vrecpe_f32(COERCE_UNSIGNED_INT(v61));
      v63 = vmul_f32(vrecps_f32(COERCE_UNSIGNED_INT(v61), v62), v62);
      v64 = v48 * vmul_f32(v63, vrecps_f32(COERCE_UNSIGNED_INT(v61), v63)).f32[0];
    }

    *(v56 + v52) = v64;
    v66 = v60 & 0xF00;
    ++v48;
    if (v66 == 512)
    {
      if (v48 >= a4)
      {
        *(v56 + v52 + 4) = -65536;
      }

      else
      {
        v69 = *(a7 + v53 - 8);
        v70 = *(a7 + v53 + 8);
        if (v69 < 0.0)
        {
          v69 = 0.0;
        }

        if (v69 > 1.0)
        {
          v69 = 1.0;
        }

        v71 = (v69 * 255.0) + 0.5;
        if (v70 < 0.0)
        {
          v70 = 0.0;
        }

        if (v70 > 1.0)
        {
          v70 = 1.0;
        }

        v68.f64[1] = *(a7 + v53);
        v68.f64[0] = *(a7 + v53 + 16);
        *&v68.f64[0] = vcvt_f32_f64(v68);
        *&v68.f64[0] = vbic_s8(*&v68.f64[0], vcltz_f32(*&v68.f64[0]));
        *&v68.f64[0] = vshl_u32(vcvt_s32_f32(vmla_f32(0x3F0000003F000000, v55, vbsl_s8(vcgt_f32(*&v68.f64[0], _D5), _D5, *&v68.f64[0]))), 0x800000018);
        v25 = v71;
        *(v56 + v52 + 4) = LODWORD(v68.f64[0]) | (((v70 * 255.0) + 0.5) << 16) | HIDWORD(v68.f64[0]) | v25;
      }
    }

    else if (v66 == 256)
    {
      if (v48 >= a4)
      {
        *(v56 + v52 + 4) = 1056964608;
      }

      else
      {
        v67 = (*(a7 + v52) - *(a7 + v52 - 8)) / (*(a7 + v52 + 8) - *(a7 + v52 - 8));
        *(v56 + v52 + 4) = v67;
      }
    }

    v52 += 16;
    v53 += 40;
  }

  while (a4 != v48);
LABEL_61:
  *(a1 + 60) = RB::required_color_depth(v25, v51, v50);
  return a1;
}

void OUTLINED_FUNCTION_3(uint64_t a1)
{
  v2 = (a1 + 16);

  RBShapeData::apply<RB::DestroyAny>(v2);
}

BOOL RBFillIsClear(RBFill *a1)
{
  type = a1->_data.type;
  v2 = 1;
  if (type > 2)
  {
    v2 = type != 5;
    if (type == 4)
    {
      v2 = 0;
    }

    _ZF = type == 3;
    return !_ZF && v2;
  }

  if (type != 1)
  {
    _ZF = type == 2;
    return !_ZF && v2;
  }

  __asm { FCMP            H0, #0 }

  return _ZF;
}

uint64_t *RB::Fill::Gradient::Gradient(uint64_t *a1, uint64_t *a2, __int16 a3, RB::Heap *this)
{
  v8 = *a2;
  *a1 = *a2;
  v9 = ((*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = &v9[16 * v8];
  if (v10 > *(this + 3))
  {
    v9 = RB::Heap::alloc_slow(this, 16 * v8, 7);
    v8 = *a1;
  }

  else
  {
    *(this + 2) = v10;
  }

  a1[1] = v9;
  a1[2] = 0;
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 13) = *(a2 + 13);
  *(a1 + 56) = *(a2 + 56);
  if (*(a2 + 58))
  {
    v11 = *(a2 + 57);
  }

  else
  {
    v11 = a3;
  }

  *(a1 + 57) = v11;
  *(a1 + 59) = *(a2 + 59);
  if (v8)
  {
    memmove(v9, a2[1], 16 * v8);
  }

  v12 = a2[2];
  if (v12)
  {
    v13 = ((*(this + 2) + 15) & 0xFFFFFFFFFFFFFFF0);
    if ((v13 + 3) > *(this + 3))
    {
      v13 = RB::Heap::alloc_slow(this, 0x30uLL, 15);
    }

    else
    {
      *(this + 2) = v13 + 3;
    }

    v14 = *v12;
    v15 = v12[2];
    v13[1] = v12[1];
    v13[2] = v15;
    *v13 = v14;
    a1[2] = v13;
  }

  return a1;
}

uint64_t RB::Coverage::Primitive::contains(float32x4_t *a1, uint64_t a2, float32x2_t a3, float32x2_t a4)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 32);
  v14[0] = vmulq_n_f64(*a2, a1[2].f32[0]);
  v14[1] = v6;
  v14[2] = v7;
  v8 = a1[2].u8[12];
  if (!a1[2].i8[12])
  {
    return 0;
  }

  if (v8 == 1)
  {
    return 1;
  }

  if ((a1[2].i8[14] & 4) != 0 || a1[2].f32[1] > 0.0 || (a1[2].i8[14] & 1) != 0 || a1[2].u8[13] > 1u)
  {
    return 0;
  }

  if ((v8 - 3) < 3)
  {
    v11 = vmaxvq_f32(a1[1]);
    v13 = *a1;
    if (RB::Rect::inset(&v13, 0, v11) && (RB::Rect::contains(&v13, v14, a3, a4) & 1) != 0)
    {
      return 1;
    }

    v12 = *a1;
    return RB::Rect::inset(&v12, __PAIR64__(v12.u32[1], LODWORD(v11)), 0.0) && (RB::Rect::contains(&v12, v14, a3, a4) & 1) != 0;
  }

  if (v8 != 2)
  {
    if ((v8 - 9) < 3)
    {
      abort();
    }

    return 0;
  }

  return RB::Rect::contains(a1, v14, a3, a4);
}

uint64_t RB::Rect::contains(float32x2_t *a1, uint64_t a2, float32x2_t a3, float32x2_t a4)
{
  v31[4] = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 16);
  if (*(a2 + 8) == 0.0 && *&v6 == 0.0 || *a2 == 0.0 && *(&v6 + 1) == 0.0)
  {
    v7 = RB::operator*(a2, *a1, a1[1]);
    v9 = vceqz_f32(v8);
    if ((vpmax_u32(v9, v9).u32[0] & 0x80000000) == 0 && (v10 = vbsl_s8(vcltz_f32(v8), vadd_f32(v7, v8), v7), v11 = vbsl_s8(vcltz_f32(a4), vadd_f32(a4, a3), a3), v12 = vcge_f32(v11, v10), (vpmin_u32(v12, v12).u32[0] & 0x80000000) != 0))
    {
      v26 = vcge_f32(vadd_f32(v10, vabs_f32(v8)), vadd_f32(v11, vabs_f32(a4)));
      v13 = vpmin_u32(v26, v26).u32[0] >> 31;
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  else
  {
    for (i = 0; i != 4; ++i)
    {
      v31[i] = vadd_f32(vand_s8(a4, vcltz_s32(vshl_n_s32(__PAIR64__(i > 1, (i - 1) < 2), 0x1FuLL))), a3);
    }

    v17 = v31[0];
    v18 = vsub_f32(v31[0], v28[0]);
    *v14.i32 = -*&v18.i32[1];
    LOBYTE(v13) = 0;
    if (vaddv_f32(vmul_f32(vzip1_s32(v14, v18), v29)) <= 0.0)
    {
      v19 = 0;
      do
      {
        v20 = 0;
        v21 = &v30;
        do
        {
          v22 = v20;
          if (v20 == -3)
          {
            break;
          }

          v23 = vsub_f32(v17, v21[-4]);
          v24 = *v21++;
          v14.i32[1] = v24.i32[1];
          *v15.i32 = -*&v23.i32[1];
          --v20;
        }

        while (vaddv_f32(vmul_f32(vzip1_s32(v15, v23), v24)) <= 0.0);
        if (-v22 <= 2)
        {
          break;
        }

        LOBYTE(v13) = v19 > 2;
        if (v19 == 3)
        {
          break;
        }

        v17 = v31[v19 + 1];
        v25 = vsub_f32(v17, v28[0]);
        *v14.i32 = -*&v25.i32[1];
        ++v19;
      }

      while (vaddv_f32(vmul_f32(vzip1_s32(v14, v25), v29)) <= 0.0);
    }
  }

  return v13 & 1;
}

double RB::DisplayList::Item::styled_bounds(RB::DisplayList::Item *this, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(this + 2);
  if (!v4)
  {
    v10 = (*(*this + 136))(this, a2);
    v14[0] = *&v10;
    v14[1] = v11;
    v12 = *(this + 3);
    if (v12)
    {
      RB::Rect::intersect(v14, *(v12 + 16), *(v12 + 24));
      return *v14;
    }

    return v10;
  }

  if (!v4[4])
  {
    return (*(*v4 + 48))(v4, 0, this, a2);
  }

  RB::Heap::Heap(v15, v18, 256, 0);
  v5 = 0;
  v6 = *(this + 2);
  do
  {
    v7 = v5;
    v8 = v6;
    v5 = ((v16 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 + 2) > v17)
    {
      v5 = RB::Heap::alloc_slow(v15, 0x10uLL, 7);
    }

    else
    {
      v16 = v5 + 2;
    }

    *v5 = v7;
    v5[1] = v8;
    v6 = v8[4];
  }

  while (v6);
  v9 = (*(*v8 + 48))(v8, v7, this, a2);
  RB::Heap::~Heap(v15);
  return v9;
}

void sub_195CFE280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  RB::Heap::~Heap(va);
  _Unwind_Resume(a1);
}

double RB::DisplayList::LayerItem::bounds(RB::DisplayList::LayerItem *this)
{
  if (!RB::may_discard_alpha(*(this + 23) & 0x3F))
  {
    return 7.29112205e-304;
  }

  v4[0] = RB::DisplayList::Layer::bounds(*(this + 6));
  v4[1] = v2;
  RB::DisplayList::Layer::Effect::apply_to_bounds((this + 56), v4);
  return *v4;
}

float32x2_t RB::DisplayList::Layer::bounds(float32x2_t *this)
{
  if (this[11].i8[2] == 1)
  {
    result = this[6];
    v3 = this[7];
  }

  else
  {
    this[11].i8[2] = 1;
    *&result = RB::DisplayList::Layer::compute_bounds_(this, 0);
    this[6] = result;
    this[7] = v3;
  }

  v4 = this[8].f32[0];
  if (v4 != 0.0)
  {
    v5 = vcge_f32(vabs_f32(v3), vneg_f32(0x80000000800000));
    if ((vpmax_u32(v5, v5).u32[0] & 0x80000000) != 0)
    {
      *&result = 7.29112205e-304;
    }

    else if (v4 != 1.0)
    {
      v6 = this[8].u32[0];
      v7 = vrecpe_f32(LODWORD(v4));
      v8 = vmul_f32(vrecps_f32(v6, v7), v7);
      return vmul_n_f32(result, vmul_f32(v8, vrecps_f32(v6, v8)).f32[0]);
    }
  }

  return result;
}

void RB::DisplayList::Layer::Effect::apply_to_bounds(RB::DisplayList::Layer::Effect *this, RB::Rect *a2)
{
  v3 = *this;
  v4 = *this & 3;
  if (v4 == 2)
  {
    v6 = *(*(v3 & 0xFFFFFFFFFFFFFFFCLL) + 40);

    v6();
  }

  else if (v4 == 1)
  {
    *a2 = RB::operator*(v3 & 0xFFFFFFFFFFFFFFFCLL, *a2, *(a2 + 8));
    *(a2 + 1) = v5;
  }
}

uint64_t RB::DisplayList::Item::apply_alpha(uint64_t this, float a2)
{
  if (a2 != 1.0)
  {
    if (*(this + 46) == 88)
    {
      v3 = *(this + 48);
      if (v3)
      {
        for (i = *(v3 + 16); i; i = *(i + 1))
        {
          this = RB::DisplayList::Item::apply_alpha(i, a2);
        }
      }
    }

    else
    {
      _H0 = *(this + 44);
      __asm { FCVT            S0, H0 }

      _S0 = _S0 * a2;
      __asm { FCVT            H0, S0 }

      *(this + 44) = LOWORD(_S0);
    }
  }

  return this;
}

void RB::Rect::Union(float32x2_t *a1, double a2, float32x2_t a3)
{
  v3 = vceqz_f32(a3);
  if ((vpmax_u32(v3, v3).u32[0] & 0x80000000) == 0)
  {
    v5 = a1[1];
    v6 = vceqz_f32(v5);
    if ((vpmax_u32(v6, v6).u32[0] & 0x80000000) == 0)
    {
      v7 = vbsl_s8(vcltz_f32(v5), vadd_f32(*a1, v5), *a1);
      v8 = vabs_f32(v5);
      *a1 = v7;
      a1[1] = v8;
      v9 = vbsl_s8(vcltz_f32(a3), vadd_f32(a3, *&a2), *&a2);
      a2 = RB::Rect::from_bounds(vminnm_f32(v7, v9), vmaxnm_f32(vadd_f32(v7, v8), vadd_f32(v9, vabs_f32(a3))));
    }

    *a1 = a2;
    a1[1] = a3;
  }
}

void *RB::DisplayList::Item::make_clip(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, float a5)
{
  v9 = *(a2 + 8);
  v10 = (v9[4] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v10 + 56 > v9[5])
  {
    v10 = RB::Heap::alloc_slow(v9 + 2, 0x38uLL, 7);
  }

  else
  {
    v9[4] = v10 + 56;
  }

  result = RB::DisplayList::ItemClip::ItemClip(v10, a1, a3, a5);
  v12 = a4[5];
  v13 = v12 + 1;
  if (a4[6] < (v12 + 1))
  {
    result = RB::vector<RB::DisplayList::Clip *,4ul,unsigned long>::reserve_slow(a4, v13);
    v12 = a4[5];
    v13 = v12 + 1;
  }

  v14 = a4[4];
  if (!v14)
  {
    v14 = a4;
  }

  v14[v12] = v10;
  a4[5] = v13;
  return result;
}

RB::ImageTexture *RB::ImageTexture::ImageTexture(RB::ImageTexture *this, CGImage *a2, const void *a3)
{
  *this = a3;
  *(this + 2) = a2;
  *(this + 6) = 0;
  RB::ImageTexture::update_image(this, a2);
  return this;
}

uint64_t rb_interpolation_mode(unsigned int a1)
{
  if (a1 > 0xC)
  {
    return 1;
  }

  else
  {
    return byte_195E44F64[a1];
  }
}

{
  if (a1 > 9)
  {
    return 1;
  }

  else
  {
    return dword_195E44F74[a1];
  }
}

void OUTLINED_FUNCTION_14()
{

  RB::Heap::reset((v0 + 288), (v0 + 328), 64);
}

uint64_t RB::ImageTexture::update_image(uint64_t this, CGImage *a2)
{
  v2 = this;
  *(this + 12) = 0;
  v3 = (this + 12);
  v4 = *(this + 8);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      this = RBSurfaceIsOpaque(*this);
      *(v2 + 12) = this;
      return this;
    }

    if (v4 != 4)
    {
      return this;
    }

    this = [*this pixelFormat];
  }

  else
  {
    if (!*(this + 8))
    {
      v9 = *this;
      *(this + 13) = RB::cg_image_required_depth(*this, a2);
      this = RB::cg_image_has_alpha(v9, v10);
      *(v2 + 12) = this ^ 1;
      return this;
    }

    if (v4 != 1)
    {
      return this;
    }

    v11 = 0;
    PixelFormat = IOSurfaceGetPixelFormat(*this);
    this = RB::pixel_format_from_four_cc(PixelFormat, MTLPixelFormatInvalid, v3, &v12, &v11);
  }

  v7 = this;
  if (this)
  {
    if (*v3)
    {
      v8 = 1;
    }

    else
    {
      v8 = *(RB::pixel_format_traits(this, v6) + 4) ^ 1;
    }

    *(v2 + 12) = v8 & 1;
    this = RB::pixel_format_required_depth(v7, v6);
    *(v2 + 13) = this;
  }

  return this;
}

uint64_t RB::cg_image_required_depth(RB *this, CGImage *a2)
{
  ColorSpace = CGImageGetColorSpace(this);
  if (CGColorSpaceUsesITUR_2100TF(ColorSpace))
  {
    return 4;
  }

  if (CGColorSpaceUsesExtendedRange(ColorSpace))
  {
    return 5;
  }

  BitsPerComponent = CGImageGetBitsPerComponent(this);
  IsWideGamutRGB = CGColorSpaceIsWideGamutRGB(ColorSpace);
  if (BitsPerComponent <= 8)
  {
    v7 = 2;
  }

  else
  {
    v7 = 3;
  }

  if (IsWideGamutRGB)
  {
    return v7;
  }

  else
  {
    return BitsPerComponent > 8;
  }
}

RB::ImageTexture *RB::ImageTexture::ImageTexture(RB::ImageTexture *this, const RB::ImageTexture *a2, RB::Heap *a3)
{
  v4 = *a2;
  *this = *a2;
  *(this + 2) = *(a2 + 2);
  *(this + 6) = *(a2 + 6);
  v5 = *(a3 + 4);
  if (!v5)
  {
    RB::Heap::make_object_table(a3);
    v5 = *(a3 + 4);
  }

  RB::ObjectTable::retain(v5, v4);
  return this;
}

void *RB::Heap::make_object_table(RB::Heap *this)
{
  v2 = *(this + 3);
  result = ((*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  if ((result + 2) > v2)
  {
    result = RB::Heap::alloc_slow(this, 0x10uLL, 7);
  }

  else
  {
    *(this + 2) = result + 2;
  }

  *result = 0;
  result[1] = 0;
  *(this + 4) = result;
  return result;
}

unsigned int *RB::ObjectTable::retain(unsigned int *this, CFTypeRef cf)
{
  if (cf)
  {
    v2 = this;
    v3 = this[2];
    v4 = v3 - 16;
    if (v3 < 0x10)
    {
      v4 = 0;
    }

    v5 = -v4;
    if (v3 <= v5)
    {
LABEL_8:
      this = CFRetain(cf);
      v9 = this;
      v10 = *(v2 + 8);
      v11 = v10 + 1;
      if (*(v2 + 12) < v10 + 1)
      {
        this = RB::vector<RB::objc_ptr<void({block_pointer})(RBFill *,CGRect)>,0ul,unsigned int>::reserve_slow(v2, v11);
        v10 = *(v2 + 8);
        v11 = v10 + 1;
      }

      *(*v2 + 8 * v10) = v9;
      *(v2 + 8) = v11;
    }

    else
    {
      v6 = v3 - v5;
      v7 = (*this + 8 * v5);
      while (1)
      {
        v8 = *v7++;
        if (v8 == cf)
        {
          break;
        }

        if (!--v6)
        {
          goto LABEL_8;
        }
      }
    }
  }

  return this;
}

void *RB::details::realloc_vector<unsigned int,8ul>(void *a1, _DWORD *a2, unsigned int a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = malloc_good_size(8 * a3);
    v6 = v5 >> 3;
    if (*a2 != (v5 >> 3))
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

void *RB::vector<RB::objc_ptr<void({block_pointer})(RBFill *,CGRect)>,0ul,unsigned int>::reserve_slow(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 12) + (*(a1 + 12) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 12) + (*(a1 + 12) >> 1);
  }

  result = RB::details::realloc_vector<unsigned int,8ul>(*a1, (a1 + 12), v3);
  *a1 = result;
  return result;
}

uint64_t RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::Image<RB::ImageTexture>>::GenericItem(uint64_t a1, RB::Heap *a2, __int128 *a3, RB::ImageTexture *a4, uint64_t a5, char a6, __int16 a7, float _S0)
{
  __asm { FCVT            H0, S0 }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = _H0;
  *(a1 + 46) = a6 & 0x3F;
  *a1 = &unk_1F0A3A650;
  *(a1 + 48) = a5;
  v16 = *a3;
  v17 = a3[1];
  *(a1 + 95) = *(a3 + 31);
  *(a1 + 64) = v16;
  *(a1 + 80) = v17;
  RB::ImageTexture::ImageTexture((a1 + 112), a4, a2);
  v18 = *(a4 + 3);
  v19 = *(a4 + 4);
  v20 = *(a4 + 5);
  v21 = *(a4 + 12);
  *(a1 + 208) = v21;
  v22 = *(a4 + 2);
  *(a1 + 128) = *(a4 + 1);
  *(a1 + 144) = v22;
  *(a1 + 176) = v19;
  *(a1 + 192) = v20;
  *(a1 + 160) = v18;
  if ((v21 & 0x100) == 0)
  {
    *(a1 + 208) = a7;
  }

  *a1 = &unk_1F0A3BD18;
  return a1;
}

unsigned __int8 *RB::DisplayList::Builder::append(RB::DisplayList::Builder *this, RB::DisplayList::Layer *a2, RB::DisplayList::Item *a3)
{
  v5 = *(a3 + 23);
  if ((v5 & 0x700) != 0)
  {
    if (((*(a3 + 22) != COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0))) & (v5 >> 8)) != 0)
    {
      v6 = 1;
    }

    else
    {
      v7 = v5 & 0x3F;
      v8 = v7 != 2;
      if (v7 == 24)
      {
        v8 = 0;
      }

      v9 = v7 == 2 || v7 == 24;
      v6 = (v5 >> 9) & 1;
      if (v9)
      {
        v6 = v8;
      }
    }

    v10 = *(a3 + 3);
    if (!v10 || (*(v10 + 8) & 1) != 0)
    {
      if (!v6)
      {
        goto LABEL_17;
      }
    }

    else if (((v6 | ((v5 & 0x400) >> 10)) & 1) == 0)
    {
      goto LABEL_17;
    }

    a3 = RB::DisplayList::Builder::ensure_layer(this, a3, 260, 0.0);
  }

LABEL_17:

  return RB::DisplayList::Layer::append(a2, this, a3);
}

unsigned __int8 *RB::DisplayList::Layer::append_item(RB::DisplayList::Layer *this, RB::DisplayList::Item *a2)
{
  *(a2 + 1) = 0;
  v4 = *(this + 3);
  if (v4)
  {
    v5 = (v4 + 8);
  }

  else
  {
    v5 = (this + 16);
  }

  *v5 = a2;
  *(this + 3) = a2;
  v6 = *(a2 + 23);
  if ((v6 & 0x800) != 0)
  {
    v7 = *(this + 19);
    if ((v7 & 0x80) != 0)
    {
      v8 = 4096;
    }

    else
    {
      v8 = 2048;
    }

    *(this + 19) = v8 | v7;
    v6 = *(a2 + 23);
  }

  if ((v6 & 0xC0) == 0x80)
  {
    *(this + 19) |= 0x2000u;
    v6 = *(a2 + 23);
  }

  v9 = v6 & 0x3F;
  if (v9 != 2 && v9 != 24)
  {
    *(this + 19) |= 0x4000u;
    v13 = RB::pdf_blend(*(a2 + 23) & 0x3F);
    if ((v13 & 1) == 0)
    {
      *(this + 19) |= 0x8000u;
      if (RB::ignore_alpha_blend(*(a2 + 23) & 0x3F))
      {
        *(this + 19) |= 0x10000u;
      }
    }
  }

  v11 = (*(*a2 + 128))(a2);

  return RB::ColorInfo::operator+=(this + 80, v11 & 0xFFFFFFFFFFFFLL);
}

unsigned __int8 *RB::ColorInfo::operator+=(unsigned __int8 *result, unint64_t a2)
{
  v2 = a2;
  v3 = a2 >> 16;
  v4 = *result;
  if (v4 > a2)
  {
    v2 = *result;
  }

  if (((v4 | a2) & 0xFC) == 0)
  {
    v2 = v4 | a2;
  }

  *result = v2;
  if (*(result + 1) >= *(&a2 + 1))
  {
    LOWORD(v3) = *(result + 1);
  }

  *(result + 1) = v3;
  v5 = *(result + 2);
  if (v5 < *(&a2 + 2))
  {
    v5 = *(&a2 + 2);
  }

  *(result + 2) = v5;
  return result;
}

uint64_t RB::UntypedTable::UntypedTable(uint64_t this, unint64_t (*a2)(RB *this, const void *a2), BOOL (*a3)(RB *this, RB *a2, const void *a3), void (*a4)(void *), void (*a5)(void *))
{
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = RB::pointer_hash;
  }

  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = RB::pointer_compare;
  }

  *this = v5;
  *(this + 8) = v6;
  *(this + 16) = a4;
  *(this + 24) = a5;
  v7 = a3 == 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  if (a3 == RB::pointer_compare)
  {
    v7 = 1;
  }

  *(this + 56) = 0;
  *(this + 60) = v7;
  return this;
}

unsigned __int8 *RB::DisplayList::Layer::append_layer_items(unsigned __int8 *this, RB::DisplayList::Layer *a2)
{
  v2 = *(a2 + 2);
  if (v2)
  {
    v4 = *(this + 3);
    if (v4)
    {
      v5 = (v4 + 8);
    }

    else
    {
      v5 = this + 16;
    }

    *v5 = v2;
    *(this + 3) = *(a2 + 3);
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    v6 = *(a2 + 19);
    *(a2 + 19) = v6 & 0xFFFE07FF;
    if (~v6 & 0x1080 | *(this + 19) & 0x80)
    {
      v7 = 129024;
    }

    else
    {
      v7 = 124928;
    }

    *(this + 19) |= v6 & v7;
    this = RB::ColorInfo::operator+=(this + 80, *(a2 + 20) | (*(a2 + 42) << 32));
    *(a2 + 80) = 0;
    *(a2 + 82) = 0;
  }

  return this;
}

unsigned __int8 *RB::DisplayList::Layer::append(RB::DisplayList::Layer *this, RB::DisplayList::Builder *a2, RB::DisplayList::Item *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  if (*(a2 + 288) != 1)
  {
    return RB::DisplayList::Layer::append_item(this, a3);
  }

  if (*(this + 3) || ((v6 = *(a3 + 23) & 0x3F, v6 != 2) ? (v7 = v6 == 24) : (v7 = 1), v7 || (*(this + 38) & 0x101) != 0))
  {
LABEL_8:
    if (*(a3 + 3))
    {
      (*(*a3 + 136))(a3, 0);
      v33 = 0;
      v34 = 0;
      v35 = 16;
      v10 = *(a3 + 3);
      if (v10)
      {
        v11 = v8;
        v12 = v9;
        v13 = 1;
        do
        {
          while (((*(*(v10[1] & 0xFFFFFFFFFFFFFFFELL) + 32))(v10[1] & 0xFFFFFFFFFFFFFFFELL, v11, v12) & 1) == 0)
          {
            v14 = v10[1];
            v15 = v34;
            v16 = v34 + 1;
            if (v35 < v34 + 1)
            {
              _ZN2RB6vectorIDv4_DF16_Lm16EmE12reserve_slowEm(v32, v16);
              v15 = v34;
              v16 = v34 + 1;
            }

            v17 = v33;
            if (!v33)
            {
              v17 = v32;
            }

            *&v17[8 * v15] = v14 & 0xFFFFFFFFFFFFFFFELL;
            v34 = v16;
            v10 = *v10;
            if (!v10)
            {
              if (v13)
              {
                goto LABEL_52;
              }

              if (v16)
              {
                goto LABEL_22;
              }

LABEL_50:
              v19 = 0;
              goto LABEL_51;
            }
          }

          v13 = 0;
          v10 = *v10;
        }

        while (v10);
        v16 = v34;
        if (!v34)
        {
          goto LABEL_50;
        }

LABEL_22:
        v18 = *(this + 3);
        if (!v18)
        {
          goto LABEL_33;
        }

        v19 = *(v18 + 24);
        if (!v19)
        {
          goto LABEL_33;
        }

        v20 = v33;
        if (!v33)
        {
          v20 = v32;
        }

        v21 = 8 * v16;
        v22 = 1;
        v23 = v19;
        do
        {
          if (v23 && *v20 == (*(v23 + 1) & 0xFFFFFFFFFFFFFFFELL))
          {
            v23 = *v23;
          }

          else
          {
            v22 = 0;
          }

          ++v20;
          v21 -= 8;
        }

        while (v21);
        if ((v22 & (v23 == 0)) == 0)
        {
LABEL_33:
          v19 = 0;
          for (i = v16 - 1; i != -1; --i)
          {
            v25 = *(a2 + 1);
            if (v33)
            {
              v26 = v33;
            }

            else
            {
              v26 = v32;
            }

            v27 = ((v25[4] + 7) & 0xFFFFFFFFFFFFFFF8);
            if (v27 + 32 > v25[5])
            {
              v27 = RB::Heap::alloc_slow(v25 + 2, 0x20uLL, 7);
            }

            else
            {
              v25[4] = v27 + 32;
            }

            v28 = *&v26[8 * i];
            v19 = RB::DisplayList::ClipNode::ClipNode(v27, v28, v19);
          }
        }

LABEL_51:
        *(a3 + 3) = v19;
LABEL_52:
        if (v33)
        {
          free(v33);
        }
      }
    }

    return RB::DisplayList::Layer::append_item(this, a3);
  }

  v29 = RB::blend_into_zero(v6);
  *(a3 + 23) = *(a3 + 23) & 0xFFC0 | v29 & 0x3F;
  if ((v29 & 0x3F) != 1)
  {
    if (*(a2 + 288))
    {
      goto LABEL_8;
    }

    return RB::DisplayList::Layer::append_item(this, a3);
  }

  v30 = **a3;

  return v30(a3);
}

void sub_195CFF224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  if (a25)
  {
    free(a25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RB::DisplayList::Builder::end_layer(RB::DisplayList::Builder *this, const RB::DisplayList::State *a2)
{
  v2 = *(this + 4);
  if (!v2 || (v3 = *v2, *(*v2 + 72) != *(a2 + 36)))
  {
    RB::DisplayList::Builder::begin_layer(this, a2);
  }

  v4 = v2[1];
  v2[1] = *(this + 3);
  *(this + 3) = v2;
  *(this + 4) = v4;
  return v3;
}

uint64_t RB::DisplayList::Builder::restore(RB::DisplayList::Builder *this, const char *a2)
{
  v2 = *(this + 35);
  v3 = *v2;
  if (!*v2)
  {
    RB::DisplayList::Builder::restore(this, a2);
  }

  if ((a2 & 1) == 0 && *(v2 + 36) != *(v3 + 144))
  {
    RB::DisplayList::Builder::restore(this, a2);
  }

  *(this + 35) = v3;
  result = v2[11];
  if (result && atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    result = RB::Refcount<RB::Transition,std::atomic<unsigned int>>::release();
  }

  *v2 = *(this + 2);
  *(this + 2) = v2;
  return result;
}

unsigned __int8 *RB::DisplayList::Builder::draw_layer(uint64_t a1, uint64_t a2, int8x16_t *a3, unsigned int a4, float a5)
{
  v17 = a2;
  v16 = a5;
  v15 = a4;
  if (a5 == 0.0 && (*(a1 + 288) & 1) != 0 && RB::may_discard_alpha(a4))
  {
    v8 = **a2;

    return v8(a2);
  }

  v10 = *(a2 + 76);
  if ((v10 & 0x20) == 0)
  {
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    *(a2 + 88) = a3[11].i16[0];
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_10;
    }

LABEL_13:
    v11 = a3[5].i64[1];
    a3[5].i64[1] = 0;
    v12 = a3[7].i64[1];
    a3[7].i64[1] = 0;
    goto LABEL_14;
  }

  v15 = 24;
  if ((v10 & 0x40) != 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  if ((v10 & 0x10) != 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v11 = 0;
  v12 = 0;
LABEL_14:
  RB::Heap::emplace<RB::DisplayList::LayerItem,float &,RB::BlendMode &,RB::DisplayList::Layer *&>((*(a1 + 8) + 16), &v16, &v15, &v17);
  result = RB::DisplayList::Builder::draw(a1, v13, a3);
  if ((*(v17 + 76) & 0x10) != 0)
  {
    v14 = a3[5].i64[1];
    a3[5].i64[1] = v11;
    a3[7].i64[1] = v12;
    v11 = v14;
  }

  if (v11 && atomic_fetch_add_explicit((v11 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    return RB::DisplayList::decode_metadata();
  }

  return result;
}

void sub_195CFF460(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    RB::DisplayList::Builder::draw_layer(v1);
  }

  _Unwind_Resume(exception_object);
}

double RB::Heap::emplace<RB::DisplayList::LayerItem,float &,RB::BlendMode &,RB::DisplayList::Layer *&>(size_t *a1, float *a2, int *a3, uint64_t *a4)
{
  v7 = (a1[2] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v7 + 64 > a1[3])
  {
    v7 = RB::Heap::alloc_slow(a1, 0x40uLL, 7);
  }

  else
  {
    a1[2] = v7 + 64;
  }

  v8 = *a2;
  v9 = *a3;
  v10 = *a4;

  *&result = RB::DisplayList::LayerItem::LayerItem(v7, v9, v10, v8);
  return result;
}

__int16 RB::DisplayList::LayerItem::LayerItem@<H0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, float _S0@<S0>)
{
  v4 = 64;
  if (a3)
  {
    if ((*(a3 + 76) & 0x1001) != 0)
    {
      v4 = 2112;
    }

    else
    {
      v4 = 64;
    }
  }

  __asm { FCVT            H0, S0 }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = result;
  *(a1 + 46) = v4 | a2 & 0x3F;
  *a1 = &unk_1F0A390E0;
  *(a1 + 48) = a3;
  *(a1 + 56) = 0;
  return result;
}

uint64_t RB::DisplayList::LayerItem::color_info(RB::DisplayList::Layer **this, __n128 a2)
{
  result = RB::DisplayList::Layer::color_info(this[6], a2);
  v4 = result;
  v5 = WORD2(result);
  if ((this[7] & 3) == 2)
  {
    (*(*(this[7] & 0xFFFFFFFFFFFFFFFCLL) + 88))(this[7] & 0xFFFFFFFFFFFFFFFCLL, &v4);
    return v4 | (v5 << 32);
  }

  return result;
}

void RB::UntypedTable::~UntypedTable(RB::UntypedTable *this)
{
  if (*(this + 5))
  {
    v2 = 0;
    v3 = *(this + 14);
    do
    {
      v4 = *(*(this + 4) + 8 * v2);
      if (v4)
      {
        do
        {
          v5 = *v4;
          v6 = *(this + 2);
          if (v6)
          {
            v6(v4[1]);
          }

          v7 = *(this + 3);
          if (v7)
          {
            v7(v4[2]);
          }

          MEMORY[0x19A8C09E0](v4, 0x10A0C405421CD5ELL);
          v4 = v5;
        }

        while (v5);
      }

      ++v2;
    }

    while (!(v2 >> v3));
  }

  v8 = *(this + 4);
  if (v8)
  {
    free(v8);
  }
}

double _ZN2RB4Heap7emplaceINS_11DisplayList9LayerItemEJRDF16_NS_9BlendModeERPNS2_5LayerEEEEPT_DpOT0_(size_t *a1, __int16 *a2, int *a3, uint64_t *a4)
{
  v7 = (a1[2] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v7 + 64 > a1[3])
  {
    v7 = RB::Heap::alloc_slow(a1, 0x40uLL, 7);
  }

  else
  {
    a1[2] = v7 + 64;
  }

  _H0 = *a2;
  __asm { FCVT            S0, H0 }

  v14 = *a3;
  v15 = *a4;

  *&result = RB::DisplayList::LayerItem::LayerItem(v7, v14, v15, _S0);
  return result;
}

unint64_t RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Gradient>::color_info(uint64_t a1, float a2, float a3)
{
  LOWORD(a2) = *(a1 + 160);
  LOWORD(a3) = *(a1 + 162);
  if (*&a3 >= *&a2 || *&a3 == COERCE_SHORT_FLOAT(0))
  {
    LOWORD(a3) = *(a1 + 160);
  }

  return (LODWORD(a2) << 16) | (LODWORD(a3) << 32) | *(a1 + 172);
}

double RB::Filter::GaussianBlur::dod(float32x2_t *this, float32x2_t *a2, int32x4_t a3, int8x16_t a4, double a5, int8x16_t a6, int8x16_t a7)
{
  *a4.i8 = a2[1];
  v9 = vmvn_s8(vceqz_f32(*a4.i8));
  *a3.i8 = vpmin_u32(v9, v9);
  if (a3.i32[0] < 0)
  {
    *a3.i8 = vneg_f32(0x80000000800000);
    v10 = vcge_f32(vabs_f32(*a4.i8), *a3.i8);
    if ((vpmax_u32(v10, v10).u32[0] & 0x80000000) == 0)
    {
      v20 = v7;
      v21 = v8;
      v12 = vrndp_f32(vmul_f32(*this, vdup_n_s32(0x40333333u)));
      *a3.i8 = vcgt_f32(*a3.i8, *a4.i8);
      *a6.i8 = *a2;
      *a7.i8 = vsub_f32(*a2, v12);
      v13 = vcltzq_s32(a3);
      a3.i64[0] = vbslq_s8(v13, a7, a6).u64[0];
      *a7.i8 = vmla_f32(*a4.i8, 0x4000000040000000, v12);
      v14 = vbslq_s8(v13, a7, a4).u64[0];
      *a2 = *a3.i8;
      a2[1] = v14;
      if (this[3].i8[1])
      {
        v15 = this[2];
        v18 = this[1];
        v19 = v15;
        RB::Rect::intersect(&v18, *a3.i64, v14);
        *a3.i8 = v18;
        v16 = v19;
        *a2 = v18;
        a2[1] = v16;
      }
    }
  }

  return *a3.i64;
}

uint32x2_t RB::DisplayList::State::add_filter_style<RB::Filter::GaussianBlur>(__n128 *this, RB::DisplayList::Builder *a2, __int128 *a3)
{
  if (*(a2 + 288) != 1 || (v6 = vclez_f32(*a3), result = vpmin_u32(v6, v6), (result.i32[0] & 0x80000000) == 0))
  {
    v8 = *(a2 + 1);
    v9 = (v8[4] + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v9 + 96 > v8[5])
    {
      v9 = RB::Heap::alloc_slow(v8 + 2, 0x60uLL, 7);
    }

    else
    {
      v8[4] = v9 + 96;
    }

    *(v9 + 48) = 0;
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0u;
    *v9 = &unk_1F0A3D440;
    v10 = *a3;
    *(v9 + 68) = *(a3 + 12);
    *(v9 + 56) = v10;
    v11 = *(a3 + 4);
    *(a3 + 4) = 0;
    *(v9 + 88) = v11;

    return RB::DisplayList::State::add_style(this, a2, v9).n128_u64[0];
  }

  return result;
}

int32x2_t *RB::Filter::GaussianBlur::GaussianBlur(int32x2_t *this, int32x2_t a2, RB::DisplayList::Item *a3, const RB::Rect *a4, int a5)
{
  *this = vdup_lane_s32(a2, 0);
  v5 = this + 1;
  if (a4)
  {
    *v5->i8 = *a4;
    v6 = 256;
  }

  else
  {
    v6 = 0;
    *v5 = 0;
    this[2] = 0;
  }

  this[3].i32[0] = v6 | a5;
  this[4] = a3;
  return this;
}

void *RB::Heap::emplace<RB::DisplayList::GenericFilter<RB::Filter::GaussianBlur>,RB::Filter::GaussianBlur const&,RB::DisplayList::Builder &>(size_t *a1, RB::Filter::GaussianBlur *a2, RB::DisplayList::Builder *a3)
{
  v5 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  if ((v5 + 9) > a1[3])
  {
    v5 = RB::Heap::alloc_slow(a1, 0x48uLL, 7);
  }

  else
  {
    a1[2] = (v5 + 9);
  }

  v5[2] = 0;
  v5[3] = 0;
  *v5 = &unk_1F0A3A0E8;
  RB::Filter::GaussianBlur::GaussianBlur((v5 + 4), a2, a3);
  return v5;
}

RB::Filter::GaussianBlur *RB::Filter::GaussianBlur::GaussianBlur(RB::Filter::GaussianBlur *this, const RB::Filter::GaussianBlur *a2, RB::DisplayList::Builder *a3)
{
  *this = *a2;
  v4 = *(a2 + 8);
  *(this + 4) = 0;
  v5 = (this + 32);
  *(this + 8) = v4;
  *(this + 6) = *(a2 + 6);
  v6 = *(a2 + 4);
  if (v6)
  {
    v8 = (*(*v6 + 24))(v6, a3, 0);
    v9 = *v5;
    *v5 = v8;
    if (v9)
    {
      (**v9)(v9);
      v8 = *v5;
    }

    if (v8 && *(a3 + 288) == 1)
    {
      RB::DisplayList::Builder::simplify_item(a3, v5, 1);
    }
  }

  return this;
}

void sub_195CFFACC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    RB::Filter::GaussianBlur::GaussianBlur(v3);
  }

  _Unwind_Resume(exception_object);
}

void RB::DisplayList::Builder::clip_layer(size_t **this, RB::DisplayList::Layer *a2, __n128 *a3, uint64_t a4, float a5)
{
  v8 = a2;
  v20 = *MEMORY[0x1E69E9840];
  if (*(this + 288) == 1)
  {
    if (a5 == 0.0)
    {
      (**a2)(a2);
      goto LABEL_23;
    }

    v8 = RB::DisplayList::Builder::simplify_clip_layer(this, a2, 0, a4);
    v10 = v11;
  }

  else
  {
    v10 = 0;
  }

  if (!(v8 | v10))
  {
LABEL_23:
    if (a4 != 1)
    {
      memset(v17, 0, sizeof(v17));
      LODWORD(v18) = 1065353216;
      *(&v18 + 4) = 0;
      *(&v18 + 11) = 0;
      RB::DisplayList::State::clip<RB::Coverage::Primitive>(a3, this, v17, a4, 1.0);
    }

    return;
  }

  if (v10)
  {
    RB::DisplayList::State::append(a3, this, *(v10 + 24), a4 == 1);
    *(v10 + 24) = 0;
    v18 = 0uLL;
    v19 = 4;
    (*(*v10 + 88))(v10, this, a4, v17, a5);
    v12 = v18;
    if (v18)
    {
      v13 = v18;
    }

    else
    {
      v13 = v17;
    }

    if (*(&v18 + 1))
    {
      v14 = 8 * *(&v18 + 1);
      do
      {
        RB::DisplayList::State::push(a3, this, *v13++);
        v14 -= 8;
      }

      while (v14);
      v12 = v18;
    }

    if (v12)
    {
      free(v12);
    }
  }

  if (v8)
  {
    if (*(this + 288) == 1)
    {
      RB::DisplayList::Layer::discard_color(v8, 0);
    }

    v15 = this[1];
    v16 = ((v15[4] + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v16 + 72 > v15[5])
    {
      v16 = RB::Heap::alloc_slow(v15 + 2, 0x48uLL, 7);
    }

    else
    {
      v15[4] = v16 + 72;
    }

    RB::DisplayList::LayerClip::LayerClip(v16, v8, 0, a4, a5);
    RB::DisplayList::State::push(a3, this, v16);
  }
}

void sub_195CFFD40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a13)
  {
    free(a13);
  }

  _Unwind_Resume(exception_object);
}

RB::DisplayList::Layer *RB::DisplayList::Builder::simplify_clip_layer(RB::DisplayList::Builder *this, RB::DisplayList::Layer *a2, uint64_t a3, int a4)
{
  v4 = a2;
  v17 = a3;
  if (a2)
  {
    if (!*(a2 + 2) && (*(a2 + 38) & 0x1001) == 0)
    {
      v11 = RB::DisplayList::Layer::Effect::needs_zero_alpha(&v17);
      if ((v11 & 1) != 0 || (v12 = *(v4 + 4)) == 0)
      {
LABEL_13:
        if ((v11 & 1) == 0)
        {
          (**v4)(v4);
          return 0;
        }
      }

      else
      {
        while (1)
        {
          v15 = 0;
          v16 = 0;
          (*(*v12 + 56))(v12, &v15);
          v13 = vmvn_s8(vceqz_f32(v16));
          if ((vpmin_u32(v13, v13).u32[0] & 0x80000000) != 0)
          {
            break;
          }

          v12 = v12[1];
          if (!v12)
          {
            goto LABEL_13;
          }
        }
      }
    }

    RB::DisplayList::Builder::lower_color_filters(this, v4, 0);
    if (a4 == 1)
    {
      v8 = 14;
    }

    else
    {
      v8 = 10;
    }

    v9 = RB::DisplayList::Builder::merge_layer_item(this, v4, v17, v8, v7);
    if (v10)
    {
      (**v4)(v4, v9);
      return 0;
    }
  }

  return v4;
}

uint64_t RB::DisplayList::ItemClip::ItemClip(uint64_t a1, RB::DisplayList::Item *this, int a3, float a4)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = a3;
  *(a1 + 45) = 0;
  *a1 = &unk_1F0A39288;
  *(a1 + 48) = this;
  if (this)
  {
    RB::DisplayList::Item::apply_alpha(this, a4);
    v7 = *(a1 + 45) & 0xFE;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 45) = v7;
  if (a3 == 1)
  {
    v9 = vneg_f32(0x80000000800000);
    v8 = 0x100000001000000;
LABEL_10:
    *(a1 + 16) = v8;
    *(a1 + 24) = v9;
    return a1;
  }

  if (!a3)
  {
    if (this)
    {
      (*(*this + 136))(this, 0);
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    goto LABEL_10;
  }

  return a1;
}

void sub_195CFFFB4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  *(v1 + 48) = 0;
  if (v3)
  {
    (**v3)(v3);
  }

  _Unwind_Resume(exception_object);
}

double RB::DisplayList::FilterStyle<RB::Filter::GaussianBlur>::map_roi(float32x2_t *a1, float32x2_t *this, float64x2_t *a3)
{
  v5 = RB::Rect::move(this, a3, *&a1[2]);

  return RB::Filter::GaussianBlur::dod(a1 + 7, this, v5, v6, v7, v8, v9);
}

float RB::DisplayList::Builder::merge_layer_item(uint64_t a1, uint64_t a2, uint64_t a3, char a4, float result)
{
  v29[179] = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 16);
  if (!v5)
  {
    return result;
  }

  if (*(v5 + 8))
  {
    return result;
  }

  v6 = *(v5 + 46);
  if ((v6 & 0x700) != 0 || !RB::may_discard_dest(v6 & 0x3F))
  {
    return result;
  }

  if (!*(v5 + 24))
  {
    goto LABEL_12;
  }

  if ((a4 & 4) != 0 || (a3 & 3) != 0)
  {
    return result;
  }

  v8 = *(a2 + 32);
  if (!v8)
  {
LABEL_12:
    if ((a4 & 8) != 0 && !(*(*v5 + 80))(v5))
    {
      return result;
    }

    if ((a4 & 1) != 0 || (a3 & 3) != 0 || *(a2 + 32) || (result = *(a2 + 64), result != 0.0) || (v9 = *(a2 + 76), (v9 & 0x144D) != 0) || (a4 & 2) == 0 && (v9 & 2) != 0)
    {
      v10 = *(v5 + 46) & 0xC0;
      if (v10 == 192)
      {
        if (*(a2 + 32))
        {
          return result;
        }

        result = *(a2 + 64);
        if (result != 0.0)
        {
          return result;
        }

        v21 = *(a2 + 76);
        if ((v21 & 0x1440) != 0)
        {
          return result;
        }

        v22 = *(*(v5 + 48) + 76);
        if ((v21 & ~v22) != 0 || (*(v5 + 72) & 3) != 0 && (a3 & 3) != 0)
        {
          return result;
        }

        if (((v22 ^ v21) & 0xC & (((v22 ^ v21) & 0xC) - 1)) != 0)
        {
          return result;
        }

        *(v5 + 72) = a3;
      }

      else
      {
        if (v10 != 64)
        {
          return result;
        }

        v11 = *(v5 + 48);
        if ((*(v5 + 56) & 3) != 0 && ((a3 & 3) != 0 || *(a2 + 32)))
        {
          return result;
        }

        v12 = *(a2 + 76);
        if (*(v11 + 32))
        {
          if (v12)
          {
            return result;
          }
        }

        v13 = (v12 ^ *(v11 + 76)) & 0xC;
        if ((v13 & (v13 - 1)) != 0)
        {
          return result;
        }

        RB::DisplayList::Layer::move_filters(*(v5 + 48), a2);
        if ((*(a2 + 77) & 4) != 0)
        {
          *(v11 + 76) |= 0x400u;
        }

        v14 = *(v11 + 64);
        result = *(a2 + 64);
        if (v14 != 0.0 || result != 0.0)
        {
          if (result != 0.0 && *(v5 + 24))
          {
            v15 = *(a2 + 64);
            v16 = vrecpe_f32(LODWORD(result));
            v17 = vmul_f32(vrecps_f32(v15, v16), v16);
            *&v18 = vmul_f32(v17, vrecps_f32(v15, v17)).f32[0];
            *&v19 = 0;
            *(&v19 + 1) = v18;
            v26[0] = v18;
            v26[1] = v19;
            v27 = 0;
            v28 = 0;
            RB::DisplayList::CachedTransform::CachedTransform(v29, a1, v26, 0, 0);
            *(v5 + 24) = RB::DisplayList::CachedTransform::transform_clip(v29, *(v5 + 24), 0);
            RB::DisplayList::CachedTransform::~CachedTransform(v29);
            v14 = *(v11 + 64);
            result = *(a2 + 64);
          }

          if (v14 == 0.0)
          {
            v14 = 1.0;
          }

          if (result == 0.0)
          {
            result = 1.0;
          }

          result = result * v14;
          *(v11 + 64) = result;
        }

        if ((a3 & 3) != 0)
        {
          *(v5 + 56) = a3;
        }

        *(v11 + 76) |= *(a2 + 76) & 0xFFFFEFFF;
        v20 = *(a2 + 86);
        if (v20 < *(v11 + 86))
        {
          v20 = *(v11 + 86);
        }

        *(v11 + 86) = v20;
        LOWORD(result) = *(a2 + 88);
        *(v11 + 88) = LOWORD(result);
      }
    }

    *(a2 + 16) = 0;
    return result;
  }

  while (((*(*v8 + 64))(v8) & 1) != 0)
  {
    v8 = v8[1];
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  return result;
}

void sub_195D00448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  RB::DisplayList::CachedTransform::~CachedTransform(va);
  _Unwind_Resume(a1);
}

float RB::AffineTransform::scale(float64x2_t *this)
{
  v1 = *this;
  v2 = this[1];
  v3 = this[1].f64[1];
  v4 = this->f64[1];
  if (this->f64[0] == v3 && v4 == 0.0 && v2.f64[0] == 0.0 || v3 == 0.0 && (v1.f64[0] == 0.0 ? (v5 = v4 == v2.f64[0]) : (v5 = 0), v5))
  {
    v6 = fabs(v1.f64[0]);
    v7 = fabs(v4);
    if (v4 != 0.0)
    {
      return v7;
    }

    return v6;
  }

  else
  {
    v9 = vcvt_f32_f64(vpaddq_f64(vmulq_f64(v2, v2), vmulq_f64(v1, v1)));
    result = 1.0;
    if (v9.f32[1] != 1.0 || v9.f32[0] != 1.0)
    {
      return vaddv_f32(vsqrt_f32(v9)) * 0.5;
    }
  }

  return result;
}

int32x2_t RB::AffineTransform::scale2(float64x2_t *this)
{
  v1 = *this;
  v2 = this[1];
  v3 = this[1].f64[1];
  v4 = this->f64[1];
  if (this->f64[0] == v3 && v4 == 0.0 && v2.f64[0] == 0.0 || v3 == 0.0 && (v1.f64[0] == 0.0 ? (_ZF = v4 == v2.f64[0]) : (_ZF = 0), _ZF))
  {
    v6 = fabs(v1.f64[0]);
    v7 = fabs(v4);
    if (v4 != 0.0)
    {
      v6 = v7;
    }

    *&v6 = v6;
    return vdup_lane_s32(*&v6, 0);
  }

  else
  {
    v9 = vcvt_f32_f64(vpaddq_f64(vmulq_f64(v1, v1), vmulq_f64(v2, v2)));
    v10 = v9.f32[1] == 1.0 && v9.f32[0] == 1.0;
    v11 = vsqrt_f32(v9);
    if (v10)
    {
      v12 = -1;
    }

    else
    {
      v12 = 0;
    }

    __asm { FMOV            V2.2S, #1.0 }

    return vbsl_s8(vdup_n_s32(v12), _D2, v11);
  }
}

const RB::DisplayList::ClipNode *RB::DisplayList::Builder::join_clip_lists(uint64_t a1, void *a2, const RB::DisplayList::ClipNode *a3)
{
  v3 = a3;
  if (!a2)
  {
    return a3;
  }

  v4 = a2;
  if (!a3)
  {
    return a2;
  }

  do
  {
    v6 = *(a1 + 8);
    v7 = v4[1];
    v8 = ((v6[4] + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v8 + 32 > v6[5])
    {
      v8 = RB::Heap::alloc_slow(v6 + 2, 0x20uLL, 7);
    }

    else
    {
      v6[4] = v8 + 32;
    }

    result = RB::DisplayList::ClipNode::ClipNode(v8, (v7 & 0xFFFFFFFFFFFFFFFELL), v3);
    v4 = *v4;
    v3 = result;
  }

  while (v4);
  return result;
}

float RB::Filter::GaussianBlur::layer_scale(RB::Filter::GaussianBlur *this, float a2)
{
  v2 = 1.0;
  if (!*(this + 4))
  {
    v3 = (*(this + 6) >> 4) & 3;
    v4 = 5.25;
    if (v3 == 3)
    {
      v4 = 7.0;
    }

    if (v3 == 1)
    {
      v4 = 3.5;
    }

    return fminf(v4 / (fmaxf(COERCE_FLOAT(*this), COERCE_FLOAT(HIDWORD(*this))) * a2), 1.0);
  }

  return v2;
}

float RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Gradient>::min_scale(uint64_t a1)
{
  result = 0.0;
  if (*(a1 + 108) >= 2u && *(a1 + 109) == 1)
  {
    return 1.0;
  }

  return result;
}

uint64_t RB::Filter::GaussianBlur::apply_transform(float32x2_t *this, float64x2_t *a2)
{
  *this = vmul_f32(*this, RB::AffineTransform::scale2(a2 + 68));
  if (this[3].i8[1])
  {
    this[1] = RB::operator*(a2 + 68, this[1], this[2]);
    this[2] = v4;
  }

  result = this[4];
  if (result)
  {
    v6 = *(*result + 32);

    return v6();
  }

  return result;
}

void RB::Filter::GaussianBlur::color_info(uint64_t a1, char *a2)
{
  v2 = *a2;
  if (v2 == 1)
  {
    v3 = 0;
  }

  else
  {
    if (v2 != 3)
    {
      return;
    }

    v3 = 2;
  }

  *a2 = v3;
}

uint64_t RB::interpolation_mode_without_mipmaps(int a1)
{
  if (a1 == 3)
  {
    v1 = 2;
  }

  else
  {
    v1 = a1;
  }

  if (a1 == 6)
  {
    v2 = 5;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 9)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t RBDrawingStateDrawLayerByReference(unint64_t result, void *a2, unsigned int a3, float a4)
{
  if (a2)
  {
    v7 = result;
    v8 = *(result + 8);
    if (!*(v8 + 24))
    {
      make_contents(*(result + 8));
    }

    result = [a2 _rb_contents];
    if (result)
    {
      v9 = result;
      v10 = rb_blend_mode(a3);
      result = RB::DisplayList::Builder::draw_by_reference(v8 + 16, v9, v7, a4, v10);
    }

    if (*(v8 + 320))
    {
      result = [a2 _rb_xml_document];
      if (result)
      {
        v11 = result;
        v12 = *(v8 + 320);

        RB::XML::DisplayList::draw_by_reference(v12, v7, v11);
      }
    }
  }

  return result;
}

unint64_t RB::DisplayList::Builder::draw_by_reference(uint64_t a1, int a2, __n128 *this, float a4, unsigned int a5)
{
  if (a4 != 0.0 || (*(a1 + 288) & 1) == 0 || (result = RB::may_discard_alpha(a5), (result & 1) == 0))
  {
    v9 = *(a1 + 8);
    v10 = RB::DisplayList::State::copy_ctm(this, (v9 + 2));
    v11 = ((v9[4] + 7) & 0xFFFFFFFFFFFFFFF8);
    if (&v11[5].u64[1] > v9[5])
    {
      v11 = RB::Heap::alloc_slow(v9 + 2, 0x58uLL, 7);
    }

    else
    {
      v9[4] = v11 + 88;
    }

    v10.n128_f32[0] = a4;
    RB::DisplayList::DetachedLayerItem::DetachedLayerItem(v10);

    return RB::DisplayList::Builder::draw(a1, v11, this);
  }

  return result;
}

uint64_t RB::DisplayList::DetachedLayerItem::DetachedLayerItem(uint64_t result, char a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, float _S0)
{
  v7 = 192;
  if (a3)
  {
    if ((*(a3 + 76) & 0x1001) != 0)
    {
      v7 = 2240;
    }

    else
    {
      v7 = 192;
    }
  }

  __asm { FCVT            H0, S0 }

  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 40) = 0;
  *(result + 32) = 0;
  *(result + 44) = _H0;
  *(result + 46) = v7 | a2 & 0x3F;
  *result = &unk_1F0A3EB60;
  *(result + 48) = a3;
  if (a4)
  {
    atomic_fetch_add_explicit((a4 + 8), 1u, memory_order_relaxed);
  }

  *(result + 56) = a4;
  *(result + 64) = a5;
  *(result + 72) = 0;
  *(result + 80) = a6;
  return result;
}

void RB::CustomShader::Library::intern_function(os_unfair_lock_s *this@<X0>, NSString *a2@<X1>, uint64_t *a3@<X8>)
{
  os_unfair_lock_lock(this + 12);
  v6 = RB::UntypedTable::lookup(&this[14], a2, 0);
  if (!v6)
  {
    operator new();
  }

  if ((*(v6 + 37) & 1) == 0)
  {
    atomic_fetch_add_explicit((*(v6 + 16) + 8), 1u, memory_order_relaxed);
    *(v6 + 37) = 1;
  }

  atomic_fetch_add_explicit((v6 + 8), 1u, memory_order_relaxed);
  *a3 = v6;

  os_unfair_lock_unlock(this + 12);
}

void sub_195D00B44(_Unwind_Exception *a1)
{
  if (atomic_fetch_add_explicit((v2 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    RB::CustomShader::Library::intern_function(v2);
  }

  os_unfair_lock_unlock(v1 + 12);
  _Unwind_Resume(a1);
}

uint64_t RB::DisplayList::DetachedLayerItem::color_info(RB::DisplayList::Layer **this, __n128 a2)
{
  result = RB::DisplayList::Layer::color_info(this[6], a2);
  v4 = result;
  v5 = WORD2(result);
  if ((this[9] & 3) == 2)
  {
    (*(*(this[9] & 0xFFFFFFFFFFFFFFFCLL) + 88))(this[9] & 0xFFFFFFFFFFFFFFFCLL, &v4);
    return v4 | (v5 << 32);
  }

  return result;
}

void RB::DisplayList::State::append(uint64_t a1, uint64_t a2, const RB::DisplayList::ClipNode *a3, char a4)
{
  v16[12] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a3;
    if (a4)
    {
      v10[0] = xmmword_195E42760;
      v10[1] = xmmword_195E42770;
      v11 = 0;
      v12 = 0;
      RB::DisplayList::CachedTransform::CachedTransform(v13, a2, v10, 0, 0);
      do
      {
        for (i = (*(*(*(v4 + 1) & 0xFFFFFFFFFFFFFFFELL) + 24))(*(v4 + 1) & 0xFFFFFFFFFFFFFFFELL, v13, 0, 1); i; i = *i)
        {
          v8 = *(a2 + 8);
          v9 = *(i + 8);
          *(v9 + 8) = *(v8 + 312);
          *(v8 + 312) = v9;
          *(a1 + 96) = RB::Heap::emplace<RB::DisplayList::ClipNode,RB::DisplayList::Clip const*&,RB::DisplayList::ClipNode*&>((v8 + 16), (i + 8), (a1 + 96));
        }

        v4 = *v4;
      }

      while (v4);
      RB::UntypedTable::~UntypedTable(v16);
      RB::UntypedTable::~UntypedTable(&v15);
      RB::Heap::~Heap(&v14);
    }

    else
    {
      *(a1 + 96) = RB::DisplayList::Builder::join_clip_lists(a2, *(a1 + 96), a3);
    }

    *(a1 + 148) = -1;
  }
}

uint64_t RB::headroom_color_depth(RB *this, float a2)
{
  if (a2 <= 1.6689)
  {
    v2 = 2;
  }

  else
  {
    v2 = 5;
  }

  if (a2 <= 1.0)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

double RB::DisplayList::DetachedLayerItem::bounds(RB::DisplayList::DetachedLayerItem *this)
{
  if (!RB::may_discard_alpha(*(this + 23) & 0x3F))
  {
    return 7.29112205e-304;
  }

  v2 = RB::DisplayList::Layer::bounds(*(this + 6));
  v7 = v2;
  v8 = v3;
  v4 = *(this + 8);
  if (v4)
  {
    v7 = RB::operator*(v4, v2, v3);
    v8 = v5;
  }

  RB::DisplayList::Layer::Effect::apply_to_bounds((this + 72), &v7);
  return *&v7;
}

uint64_t RB::DisplayList::GenericClip<RB::Coverage::Primitive>::contains@<X0>(uint64_t a1@<X0>, char a2@<W8>, int8x16_t a3@<Q0>, int8x16_t a4@<Q1>, int8x16_t a5@<Q2>, int32x4_t a6@<Q3>, int8x16_t a7@<Q4>, int8x16_t a8@<Q5>)
{
  v8 = *a4.i8;
  v9 = *a3.i8;
  if (*(a1 + 44) == 1)
  {
    a3.i32[0] = *(a1 + 112);
    if (*a3.i32 == 0.0)
    {
      a2 = 1;
    }

    else
    {
      v14[0] = RB::Coverage::Primitive::bounds((a1 + 64), *(a1 + 48), a3, a4, a5, a6, a7, a8);
      v14[1] = v13;
      a2 = RB::Rect::intersects(v14, v9, v8) ^ 1;
    }

    return a2 & 1;
  }

  if (*(a1 + 44))
  {
    return a2 & 1;
  }

  if (*(a1 + 112) != 1.0)
  {
    a2 = 0;
    return a2 & 1;
  }

  v10 = *(a1 + 48);
  v11 = (a1 + 64);

  return RB::Coverage::Primitive::contains(v11, v10, *a3.i8, *a4.i8);
}

BOOL RB::Rect::inset(float32x2_t *this, float32x2_t a2, float32_t a3)
{
  v3 = this[1];
  v4 = vceq_f32(v3, vneg_f32(0x80000000800000));
  v5 = vpmax_u32(v4, v4);
  if (v5.i32[0] < 0)
  {
    return 1;
  }

  a2.f32[1] = a3;
  v6 = vmla_f32(v3, 0xC0000000C0000000, a2);
  v7 = vcltz_f32(v6);
  v8 = vpmax_u32(v7, v7);
  v5.i32[0] = -1;
  v9 = v8.i32[0];
  v10 = vdup_lane_s32(vcgt_s32(v8, v5), 0);
  v11 = v9 >= 0;
  *this = vadd_f32(*this, vbsl_s8(v10, a2, vmul_f32(v6, 0x3F0000003F000000)));
  this[1] = vand_s8(v6, v10);
  return v11;
}

void *RB::details::realloc_vector<unsigned long,24ul>(void *__src, void *__dst, unint64_t a3, unint64_t *a4, unint64_t a5)
{
  v7 = __src;
  if (a5 <= a3)
  {
    if (__src)
    {
      v9 = a3;
      memcpy(__dst, __src, 24 * a5);
      free(v7);
      v12 = 0;
LABEL_8:
      *a4 = v9;
      return v12;
    }
  }

  else
  {
    v8 = malloc_good_size(24 * a5);
    v9 = v8 / 0x18;
    if (v8 / 0x18 != *a4)
    {
      v10 = malloc_type_realloc(v7, v8, 0x58CA92B9uLL);
      if (!v10)
      {
        RB::precondition_failure("allocation failure", v11);
      }

      v12 = v10;
      if (!v7)
      {
        memcpy(v10, __dst, 24 * *a4);
      }

      goto LABEL_8;
    }
  }

  return v7;
}

void *RB::vector<RB::Path::Buffer,4ul,unsigned long>::reserve_slow(void *__dst, size_t a2)
{
  if (*(__dst + 18) + (*(__dst + 18) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 18) + (*(__dst + 18) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,32ul>(*(__dst + 16), __dst, 4uLL, __dst + 18, v3);
  *(__dst + 16) = result;
  return result;
}

void RB::CustomShader::Closure::ensure_arg(RB::CustomShader::Closure *this, unint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(this + 18);
  if (v2 <= a2)
  {
    v5 = this + 8;
    v6 = a2 + 1;
    v14 = 0;
    v15 = 0;
    v16 = 67178752;
    if (v2 >= a2 + 1)
    {
      v10 = *(this + 17);
      if (!v10)
      {
        v10 = v5;
      }

      if (v6 < v2)
      {
        v11 = &v10[32 * a2 + 32];
        v12 = a2 + 1;
        do
        {
          RB::CustomShader::Value::reset_data(v11);
          ++v12;
          v11 += 4;
        }

        while (v12 < *(this + 18));
      }
    }

    else
    {
      if (*(this + 19) < v6)
      {
        v13 = v5;
        RB::vector<RB::Path::Buffer,4ul,unsigned long>::reserve_slow(v5, a2 + 1);
        v2 = *(this + 18);
        v5 = v13;
      }

      v7 = *(this + 17);
      if (!v7)
      {
        v7 = v5;
      }

      if (v2 < v6)
      {
        v8 = a2 - v2 + 1;
        v9 = &v7[32 * v2];
        do
        {
          v9 = (RB::CustomShader::Value::Value(v9, &v14) + 32);
          --v8;
        }

        while (v8);
      }
    }

    *(this + 18) = v6;
    RB::CustomShader::Value::reset_data(&v14);
  }
}

void sub_195D012F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  RB::CustomShader::Value::reset_data(va);
  _Unwind_Resume(a1);
}

RB::CustomShader::Value *RB::CustomShader::Value::Value(RB::CustomShader::Value *this, const RB::CustomShader::Value *a2)
{
  *this = *a2;
  *(this + 2) = *(a2 + 2);
  v3 = *(a2 + 6);
  *(this + 6) = v3;
  *(this + 7) = *(a2 + 7);
  v4 = *(this + 9) & 0xFE | *(a2 + 9) & 1;
  *(this + 9) = v4;
  v5 = v4 & 0xFD | *(a2 + 9) & 2;
  *(this + 9) = v5;
  v6 = *(a2 + 9) & 4;
  *(this + 9) = v5 & 0xFB | v6;
  if ((v3 - 7) > 1)
  {
    if (v6)
    {
      *(this + 1) = *(a2 + 1);
    }

    else
    {
      *(this + 2) = CFRetain(*(a2 + 2));
    }
  }

  else
  {
    RB::RetainedImageTexture::RetainedImageTexture((this + 16), (a2 + 16));
  }

  return this;
}

void RB::CustomShader::Value::reset_data(const void **this)
{
  if ((*(this + 9) & 4) != 0)
  {
    if (*(this + 6) - 7 <= 1)
    {
      RB::RetainedImageTexture::~RetainedImageTexture(this + 2);
    }
  }

  else
  {
    CFRelease(this[2]);
    *(this + 9) |= 4u;
  }

  *this = 0;
  *(this + 6) = 0;
}

void RB::CustomShader::Value::set_bytes(uint64_t a1, unsigned int a2, unint64_t a3, const UInt8 *a4)
{
  RB::CustomShader::Value::reset_data(a1);
  if (!HIDWORD(a3))
  {
    *a1 = a3;
    *(a1 + 6) = a2;
    if (a2 - 7 > 1)
    {
      v10 = *(&RB::CustomShader::Value::bytes_per_element + a2) * a3;
      if (v10 > 0x10)
      {
        *(a1 + 9) &= ~4u;
        *(a1 + 16) = CFDataCreate(0, a4, v10);
      }

      else
      {

        memcpy((a1 + 16), a4, v10);
      }
    }

    else
    {
      v8 = *(a4 + 1);
      if (v8)
      {
        CFRetain(v8);
        v9 = *(a4 + 1);
      }

      else
      {
        v9 = 0;
      }

      v11 = *a4;

      RB::ImageTexture::ImageTexture((a1 + 16), v11, v9);
    }
  }
}

RB::CustomShader::Closure *RB::CustomShader::Closure::Closure(RB::CustomShader::Closure *this, const RB::CustomShader::Closure *a2)
{
  v4 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
  }

  *this = v4;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 19) = 4;
  v5 = *(a2 + 18);
  if (*(a2 + 17))
  {
    v6 = *(a2 + 17);
  }

  else
  {
    v6 = (a2 + 8);
  }

  if (v5 >= 5)
  {
    RB::vector<RB::Path::Buffer,4ul,unsigned long>::reserve_slow(this + 8, *(a2 + 18));
    v7 = *(this + 17);
    v8 = *(this + 18);
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  if (!v7)
  {
    v7 = this + 8;
  }

  v10 = &v7[32 * v8];
  v11 = v5;
  do
  {
    v12 = RB::CustomShader::Value::Value(v10, v6);
    v6 = (v6 + 32);
    v10 = (v12 + 32);
    --v11;
  }

  while (v11);
  v9 = *(this + 18);
LABEL_13:
  *(this + 18) = v9 + v5;
  *(this + 20) = *(a2 + 20);
  return this;
}

void sub_195D01600(_Unwind_Exception *a1)
{
  RB::vector<RB::CustomShader::Value,4ul,unsigned long>::~vector(v2);
  if (*v1)
  {
    if (atomic_fetch_add_explicit((*v1 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      RB::CustomShader::Closure::operator=();
    }
  }

  _Unwind_Resume(a1);
}

uint64_t RB::DisplayList::ItemClip::contains(uint64_t a1, float32x2_t a2, float32x2_t a3)
{
  if (*(a1 + 44) != 1)
  {
    return 0;
  }

  v11[2] = v6;
  v11[3] = v5;
  v11[4] = v3;
  v11[5] = v4;
  v11[0] = COERCE_FLOAT32X2_T((*(**(a1 + 48) + 136))(*(a1 + 48), 0));
  v11[1] = v9;
  return RB::Rect::intersects(v11, a2, a3) ^ 1;
}

unint64_t RB::DisplayList::ItemFactory::Inner<RB::Coverage::Primitive>::operator()<RB::Fill::Custom>(__int128 **a1, uint64_t a2)
{
  v3 = *a1;
  result = *(*a1 + 7);
  if (result)
  {
    if (*(v3 + 48) != 1)
    {
      return result;
    }
  }

  else
  {
    result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::Custom>,RB::Heap&,RB::Coverage::Primitive const&,RB::Fill::Custom const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(*v3, *v3, a1[1], a2, v3 + 1, v3 + 4, v3 + 10);
    v5 = *a1;
    *(v5 + 7) = result;
    if ((v5[3] & 1) == 0)
    {
      return result;
    }
  }

  *(result + 46) |= 0x2000u;
  return result;
}

void RB::RetainedImageTexture::~RetainedImageTexture(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t RB::pixel_format_required_depth(RB *this, MTLPixelFormat a2)
{
  v2 = *(RB::pixel_format_traits(this, a2) + 4);
  if ((v2 & 2) != 0)
  {
    return 5;
  }

  else
  {
    return (v2 >> 2) & 3;
  }
}

__n128 RB::Fill::Custom::Custom(RB::Fill::Custom *this, const RB::CustomShader::Closure *a2, __n128 *a3, int a4)
{
  v6 = RB::CustomShader::Closure::Closure(this, a2);
  *(v6 + 11) = xmmword_195E42760;
  *(v6 + 12) = xmmword_195E42770;
  *(v6 + 26) = 0;
  *(v6 + 27) = 0;
  result = *a3;
  *(v6 + 14) = *a3;
  *(v6 + 60) = a4;
  return result;
}

RB::RetainedImageTexture *RB::RetainedImageTexture::RetainedImageTexture(RB::RetainedImageTexture *this, const RB::RetainedImageTexture *a2)
{
  *(this + 6) = 0;
  *this = 0;
  v4 = *a2;
  if (*a2)
  {
    v4 = CFRetain(v4);
  }

  *this = v4;
  *(this + 2) = *(a2 + 2);
  *(this + 6) = *(a2 + 6);
  return this;
}

unint64_t RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::Custom>,RB::Heap&,RB::Coverage::Primitive const&,RB::Fill::Custom const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(size_t *a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t *a5, int *a6, _WORD *a7)
{
  v12 = (a1[2] + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v12 + 368 > a1[3])
  {
    v12 = RB::Heap::alloc_slow(a1, 0x170uLL, 15);
  }

  else
  {
    a1[2] = v12 + 368;
  }

  v13 = *a5;
  _S0 = *a6;
  v15 = *a7;
  __asm { FCVT            H0, S0 }

  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 40) = 0;
  *(v12 + 32) = 0;
  *(v12 + 44) = _S0;
  *(v12 + 46) = v15 & 0x3F;
  *v12 = &unk_1F0A3A540;
  *(v12 + 48) = v13;
  v20 = *a3;
  v21 = a3[1];
  *(v12 + 95) = *(a3 + 31);
  *(v12 + 64) = v20;
  *(v12 + 80) = v21;
  RB::Fill::Custom::Custom((v12 + 112), a4);
  *v12 = &unk_1F0A3BC08;
  return v12;
}

__n128 RB::Fill::Custom::Custom(RB::CustomShader::Closure *a1, uint64_t a2)
{
  v3 = RB::CustomShader::Closure::Closure(a1, a2);
  v4 = *(a2 + 176);
  v5 = *(a2 + 208);
  *(v3 + 12) = *(a2 + 192);
  *(v3 + 13) = v5;
  *(v3 + 11) = v4;
  result = *(a2 + 224);
  *(v3 + 14) = result;
  *(v3 + 60) = *(a2 + 240);
  return result;
}

BOOL RB::Symbol::Animator::set_anchor_point(uint64_t a1, float32x2_t a2)
{
  os_unfair_lock_lock(a1);
  v4 = vceq_f32(*(*(a1 + 8) + 56), a2);
  v5 = vpmin_u32(v4, v4).u32[0];
  if ((v5 & 0x80000000) == 0)
  {
    RB::Symbol::Model::copy_on_write(a1 + 8);
    *(*(a1 + 8) + 56) = *&a2;
    ++*(a1 + 60);
  }

  os_unfair_lock_unlock(a1);
  return v5 >= 0;
}

uint64_t RB::Symbol::Model::copy_on_write(uint64_t result)
{
  if (*(*result + 8) != 1)
  {
    operator new();
  }

  __dmb(9u);
  return result;
}

void sub_195D01E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = RB::vector<std::pair<RB::objc_ptr<RBSymbolAnimator *>,RB::objc_ptr<objc_object  {objcproto24RBSymbolAnimatorObserver}*>>,4ul,unsigned long>::~vector(v9);
  MEMORY[0x19A8C09E0](v11, 0x1020C40894D135BLL);
  RB::vector<std::pair<RB::objc_ptr<RBSymbolAnimator *>,RB::objc_ptr<objc_object  {objcproto24RBSymbolAnimatorObserver}*>>,4ul,unsigned long>::~vector(&a9);
  _Unwind_Resume(a1);
}

void RB::Symbol::Model::set_glyph(RB::Symbol::Model *this, CUINamedVectorGlyph *a2, float a3)
{
  v4 = *(this + 2);
  if (v4 != a2)
  {

    *(this + 2) = a2;
    ++*(this + 25);
    std::unique_ptr<RB::Symbol::Glyph const,RB::Symbol::GlyphCache::Unref>::reset[abi:nn200100]((this + 112), 0);
    *(this + 24) = RB::Symbol::Model::glyph_value_index(this, a3);
  }
}

float RB::Symbol::Model::glyph_value_index(RB::Symbol::Model *this, float a2)
{
  v2 = a2;
  if ((LODWORD(a2) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    return NAN;
  }

  v4 = RB::Symbol::Model::glyph_info(this);
  if ((*(v4 + 480) & 4) == 0 || (*(this + 105) & 0x20) == 0)
  {
    if (*(v4 + 448))
    {
      v5 = *(v4 + 448);
    }

    else
    {
      v5 = v4 + 112;
    }

    v6 = *(v4 + 456);
    if (v6)
    {
      v7 = 0;
      v8 = (v5 + 88);
      v9 = 112 * v6;
      v10 = (v5 + 88);
      do
      {
        v12 = *v10;
        v10 += 28;
        v11 = v12;
        if (v12 != -1 && v11 > v7)
        {
          v14 = *(v8 - 5);
          if ((LODWORD(v14) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
          {
            v15 = v14 <= v2;
            if (v14 <= 0.0)
            {
              v15 = v14 < v2;
            }

            if (v15)
            {
              v7 = v11;
            }
          }
        }

        v8 = v10;
        v9 -= 112;
      }

      while (v9);
      return v7;
    }

    else
    {
      return 0.0;
    }
  }

  return v2;
}

uint64_t RB::Symbol::Animator::set_variable_value(os_unfair_lock_s *this, float a2)
{
  os_unfair_lock_lock(this);
  if (*&this[14]._os_unfair_lock_opaque == a2 || (v5 = *&this[2]._os_unfair_lock_opaque, *&this[14]._os_unfair_lock_opaque = a2, v6 = RB::Symbol::Model::glyph_value_index(v5, a2), *(*&this[2]._os_unfair_lock_opaque + 96) == v6))
  {
    v4 = 0;
  }

  else
  {
    RB::Symbol::Model::copy_on_write(&this[2]);
    *(*&this[2]._os_unfair_lock_opaque + 96) = v6;
    ++this[15]._os_unfair_lock_opaque;
    v4 = 1;
  }

  os_unfair_lock_unlock(this);
  return v4;
}

BOOL RB::Symbol::Animator::set_glyph(RB::Symbol::Animator *this, CUINamedVectorGlyph *a2)
{
  os_unfair_lock_lock(this);
  v4 = *(*(this + 1) + 16);
  if (v4 != a2)
  {
    RB::Symbol::Model::copy_on_write(this + 8);
    RB::Symbol::Model::set_glyph(*(this + 1), a2, *(this + 14));
    ++*(this + 15);
  }

  os_unfair_lock_unlock(this);
  return v4 != a2;
}

void std::unique_ptr<RB::Symbol::Glyph const,RB::Symbol::GlyphCache::Unref>::reset[abi:nn200100](RB::Symbol::GlyphCache *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = RB::Symbol::GlyphCache::shared(a1);

    RB::Symbol::GlyphCache::unref(v3, v2);
  }
}

RB::Symbol::GlyphCache *RB::Symbol::GlyphCache::GlyphCache(RB::Symbol::GlyphCache *this)
{
  *this = 0;
  v2 = (this + 72);
  RB::UntypedTable::UntypedTable(this + 8, RB::Symbol::GlyphCache::GlyphCache(void)::$_0::__invoke, RB::Symbol::GlyphCache::GlyphCache(void)::$_1::__invoke, 0, 0);
  RB::UntypedTable::UntypedTable(v2, RB::Symbol::GlyphCache::GlyphCache(void)::$_2::__invoke, RB::Symbol::GlyphCache::GlyphCache(void)::$_3::__invoke, RB::Symbol::GlyphCache::GlyphCache(void)::$_4::__invoke, 0);
  *(this + 34) = 32;
  RB::UntypedTable::insert(v2, @"_slash", 1);
  RB::UntypedTable::insert(v2, @"_badge", 2);
  RB::UntypedTable::insert(v2, @"_enclosure.stroke", 3);
  RB::UntypedTable::insert(v2, @"_enclosure.fill", 4);
  return this;
}

void sub_195D022A4(_Unwind_Exception *a1)
{
  RB::UntypedTable::~UntypedTable(v2);
  RB::UntypedTable::~UntypedTable((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t RB::Symbol::Animator::set_flips_rtl(RB::Symbol::Animator *this, int a2)
{
  os_unfair_lock_lock(this);
  v4 = ((*(*(this + 1) + 107) & 2) == 0) ^ a2;
  if ((v4 & 1) == 0)
  {
    RB::Symbol::Model::copy_on_write(this + 8);
    RB::Symbol::Model::set_flips_rtl(*(this + 1), a2);
    ++*(this + 15);
  }

  os_unfair_lock_unlock(this);
  return v4 ^ 1u;
}

BOOL RB::Symbol::Animator::set_rendering_mode(uint64_t a1, int a2)
{
  os_unfair_lock_lock(a1);
  v4 = *(*(a1 + 8) + 104);
  if (v4 != a2)
  {
    RB::Symbol::Model::copy_on_write(a1 + 8);
    RB::Symbol::Model::set_rendering_mode(*(a1 + 8), a2, *(a1 + 56));
    ++*(a1 + 60);
  }

  os_unfair_lock_unlock(a1);
  return v4 != a2;
}

BOOL RB::Symbol::Animator::set_rendering_options(RB::Symbol::Animator *this, int a2)
{
  os_unfair_lock_lock(this);
  v4 = *(*(this + 1) + 105);
  if (v4 != a2)
  {
    RB::Symbol::Model::copy_on_write(this + 8);
    RB::Symbol::Model::set_rendering_options(*(this + 1), a2, *(this + 14));
    ++*(this + 15);
  }

  os_unfair_lock_unlock(this);
  return v4 != a2;
}

uint64_t RB::Symbol::Model::glyph_info(RB::Symbol::Model *this)
{
  v3 = (this + 112);
  result = *(this + 14);
  if (!result)
  {
    v4 = RB::Symbol::GlyphCache::shared(0);
    v5 = RB::Symbol::GlyphCache::ref(v4, *(this + 2), *(this + 26), (*(this + 26) & 0x2000000) != 0);
    std::unique_ptr<RB::Symbol::Glyph const,RB::Symbol::GlyphCache::Unref>::reset[abi:nn200100](v3, v5);
    return *(this + 14);
  }

  return result;
}

uint64_t RB::Symbol::GlyphCache::shared(RB::Symbol::GlyphCache *this)
{
  {
    operator new();
  }

  return RB::Symbol::GlyphCache::shared(void)::shared_cache;
}

void sub_195D025B0(_Unwind_Exception *a1)
{
  MEMORY[0x19A8C09E0](v1, 0x1080C40F2B71587);
  _Unwind_Resume(a1);
}

uint64_t RB::Symbol::GlyphCache::ref(os_unfair_lock_s *a1, void *a2, unsigned int a3, unsigned __int8 a4)
{
  v9[0] = a2;
  v9[1] = (33 * [a2 hash]) ^ a3;
  v10 = a3;
  v11 = a4;
  os_unfair_lock_lock(a1);
  v7 = RB::UntypedTable::lookup(&a1[2], v9, 0);
  if (!v7)
  {
    operator new();
  }

  ++*(v7 + 28);
  os_unfair_lock_unlock(a1);
  return v7;
}

void sub_195D026B4(_Unwind_Exception *a1)
{
  MEMORY[0x19A8C09E0](v2, 0x10A0C40ADE1BF11);
  os_unfair_lock_unlock(v1);
  _Unwind_Resume(a1);
}

unsigned int *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,RB::SharedSurfaceGroup::allocate_updates(void)::$_0 &,unsigned int *,0>(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *a2;
  v7 = *result;
  v8 = *(*a5 + 32);
  v9 = *(v8 + 112 * *a2 + 24);
  v10 = (v8 + 112 * *result);
  v12 = v10[3];
  v11 = v10 + 3;
  v13 = v12;
  v14 = v12.i32[1];
  if (v9.i32[1] > v12.i32[1] || v9.i32[1] == v14 && (vcgt_s32(v9, v13).u8[0] & 1) != 0)
  {
    v15 = *(v8 + 112 * *a3 + 24);
    if (v15.i32[1] > v9.i32[1] || v15.i32[1] == v9.i32[1] && (vcgt_s32(v15, v9).u8[0] & 1) != 0)
    {
      *result = *a3;
LABEL_8:
      *a3 = v7;
LABEL_9:
      v5 = v7;
      v6 = v7;
      goto LABEL_10;
    }

    *result = v6;
    *a2 = v7;
    v5 = *a3;
    v28 = *(v8 + 112 * *a3 + 24);
    v29 = *v11;
    v30 = HIDWORD(*v11);
    if (v28.i32[1] > v30 || v28.i32[1] == v30 && (vcgt_s32(v28, v29).u8[0] & 1) != 0)
    {
      *a2 = v5;
      goto LABEL_8;
    }
  }

  else
  {
    v7 = *a3;
    v24 = *(v8 + 112 * *a3 + 24);
    if (v24.i32[1] <= v9.i32[1] && (v24.i32[1] != v9.i32[1] || (vcgt_s32(v24, v9).u8[0] & 1) == 0))
    {
      goto LABEL_9;
    }

    *a2 = v7;
    *a3 = v5;
    v25 = *(v8 + 112 * *a2 + 24);
    v26 = *result;
    v27 = *(v8 + 112 * *result + 24);
    if (v25.i32[1] <= v27.i32[1] && (v25.i32[1] != v27.i32[1] || (vcgt_s32(v25, v27).u8[0] & 1) == 0))
    {
      goto LABEL_10;
    }

    *result = *a2;
    *a2 = v26;
    v5 = *a3;
  }

  v6 = v5;
LABEL_10:
  v16 = *(v8 + 112 * *a4 + 24);
  v17 = *(v8 + 112 * v5 + 24);
  if (v16.i32[1] > v17.i32[1] || v16.i32[1] == v17.i32[1] && (vcgt_s32(v16, v17).u32[0] & 1) != 0)
  {
    *a3 = *a4;
    *a4 = v6;
    v18 = *(v8 + 112 * *a3 + 24);
    v19 = *a2;
    v20 = *(v8 + 112 * *a2 + 24);
    if (v18.i32[1] > v20.i32[1] || v18.i32[1] == v20.i32[1] && (vcgt_s32(v18, v20).u32[0] & 1) != 0)
    {
      *a2 = *a3;
      *a3 = v19;
      v21 = *(v8 + 112 * *a2 + 24);
      v22 = *result;
      v23 = *(v8 + 112 * *result + 24);
      if (v21.i32[1] > v23.i32[1] || v21.i32[1] == v23.i32[1] && (vcgt_s32(v21, v23).u32[0] & 1) != 0)
      {
        *result = *a2;
        *a2 = v22;
      }
    }
  }

  return result;
}

BOOL RB::SharedSurface::is_idle(os_unfair_lock_s *this, int a2)
{
  os_unfair_lock_lock(this + 29);
  v4 = (this[43]._os_unfair_lock_opaque & 1) == 0 && !this[32]._os_unfair_lock_opaque && !this[36]._os_unfair_lock_opaque && !this[40]._os_unfair_lock_opaque && !this[26]._os_unfair_lock_opaque && this[42]._os_unfair_lock_opaque < a2 - 12;
  os_unfair_lock_unlock(this + 29);
  return v4;
}

void RB::DisplayList::CachedTransform::~CachedTransform(RB::DisplayList::CachedTransform *this)
{
  RB::UntypedTable::~UntypedTable((this + 1336));
  RB::UntypedTable::~UntypedTable((this + 1272));
  RB::Heap::~Heap((this + 8));
}

uint64_t RB::Symbol::Glyph::Glyph(uint64_t a1, __int128 *a2)
{
  v168[16] = *MEMORY[0x1E69E9840];
  v3 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v3;
  *(a1 + 24) = *(a2 + 4);
  *(a1 + 28) = 0;
  *(a1 + 32) = xmmword_195E443C0;
  *(a1 + 48) = 0;
  *(a1 + 448) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 456) = 0x300000000;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = *(a1 + 480) & 0xF0 | 3;
  *(a1 + 484) = 0;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  if (!*a1)
  {
    return a1;
  }

  v5 = (a1 + 112);
  v6 = *a1;
  if (!*(a1 + 24))
  {
    *(a1 + 24) = [*a2 preferredRenderingMode];
  }

  [*a1 pointSize];
  *&v7 = v7;
  *(a1 + 32) = LODWORD(v7);
  if (objc_opt_respondsToSelector())
  {
    [*a1 glyphContinuousSize];
    *&v8 = v8;
    *(a1 + 36) = LODWORD(v8);
    [*a1 glyphContinuousWeight];
    *&v9 = v9;
    *(a1 + 40) = LODWORD(v9);
  }

  [*a1 scale];
  *&v10 = v10;
  *(a1 + 44) = LODWORD(v10);
  [*a1 alignmentRectUnrounded];
  v12.f64[1] = v11;
  v14.f64[1] = v13;
  *(a1 + 56) = vcvt_f32_f64(v12);
  *(a1 + 64) = vcvt_f32_f64(v14);
  if (*(a1 + 20) == 1)
  {
    [*a1 contentBoundsUnrounded];
    v16 = v15 - (COERCE_FLOAT(*(a1 + 64)) + COERCE_FLOAT(*(a1 + 56)));
    *(a1 + 56) = v16;
  }

  [*a1 pointSize];
  v18 = v17;
  [*a1 referencePointSize];
  v20 = v19;
  [*a1 fontMatchingScaleFactor];
  v22 = 1.0;
  v23 = v20 < 1.0 || v18 < 1.0;
  if (!v23)
  {
    v22 = v18 / v20;
  }

  v24 = v21 * v22;
  *&v24 = v24;
  *(a1 + 48) = LODWORD(v24);
  LODWORD(v24) = *(a1 + 44);
  v25 = vmul_n_f32(*(a1 + 56), *&v24);
  __asm { FMOV            V2.2S, #1.0 }

  v30 = vdiv_f32(_D2, vdup_lane_s32(*&v24, 0));
  v31 = vmul_f32(vrndp_f32(vmul_n_f32(*(a1 + 64), *&v24)), v30);
  *(a1 + 72) = vmul_f32(vrnda_f32(v25), v30);
  *(a1 + 80) = v31;
  v32 = objc_opt_respondsToSelector();
  v33 = *a1;
  if (v32)
  {
    [v33 metricCenter];
    v35.f64[1] = v34;
    v36 = vcvt_f32_f64(v35);
  }

  else
  {
    [v33 contentBoundsUnrounded];
    v38 = v37;
    [*a1 capHeightUnrounded];
    v40 = v39;
    [*a1 baselineOffsetUnrounded];
    v41.f64[0] = -(COERCE_FLOAT(*(a1 + 56)) - v38 * 0.5);
    v41.f64[1] = v42 + v40 * 0.5;
    v36 = vcvt_f32_f64(v41);
  }

  if (*(a1 + 20))
  {
    v43.i32[0] = vsub_f32(*(a1 + 64), v36).u32[0];
    v43.i32[1] = v36.i32[1];
    LODWORD(v44) = HIDWORD(*(a1 + 64));
    v36 = v43;
  }

  else
  {
    v44 = *(a1 + 68);
  }

  v36.f32[1] = v44 - v36.f32[1];
  *(a1 + 88) = v36;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v51 = *(a1 + 20);
    *(a1 + 104) = *(a1 + 88);
    v149 = 0.0;
    if ((v51 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  [*a1 rotationAnchor];
  v46.f64[1] = v45;
  v47 = vcvt_f32_f64(v46);
  v48 = *(a1 + 20);
  if (v48)
  {
    v49.i32[0] = vsub_f32(*(a1 + 64), v47).u32[0];
    v49.i32[1] = v47.i32[1];
    LODWORD(v50) = HIDWORD(*(a1 + 64));
    v47 = v49;
  }

  else
  {
    v50 = *(a1 + 68);
  }

  v47.f32[1] = v50 - v47.f32[1];
  *(a1 + 104) = v47;
  v149 = 0.0;
  if (v48)
  {
LABEL_23:
    LODWORD(v149) = *(a1 + 80);
  }

LABEL_24:
  v52 = 0;
  v53 = 0;
  v54 = *(a1 + 24);
  if (v54 > 3)
  {
    if ((v54 - 128) >= 2)
    {
      if (v54 != 4 && v54 != 130)
      {
LABEL_66:
        if (![(NSArray *)v52 count])
        {
          v52 = [*a1 monochromeLayers];
          *(a1 + 24) = 1;
        }

        goto LABEL_68;
      }

      v55 = [*a1 paletteLayers];
      v52 = v55;
      v57 = *(a1 + 24);
      if (v57 != 130)
      {
        goto LABEL_58;
      }

      *(a1 + 24) = 4;
LABEL_62:
      v53 = v58;
      goto LABEL_64;
    }

LABEL_34:
    v59 = [*a1 hierarchicalLayers];
    v52 = v59;
    v57 = *(a1 + 24);
    if (v57 != 129)
    {
      if (v57 == 128)
      {
        v159 = 0u;
        v160 = 0u;
        v161 = 0u;
        v162 = 0u;
        v61 = [(NSArray *)v59 countByEnumeratingWithState:&v159 objects:__dst count:16];
        if (v61)
        {
          v62 = *v160;
          v145 = *v160;
          do
          {
            for (i = 0; i != v61; ++i)
            {
              if (*v160 != v62)
              {
                objc_enumerationMutation(v52);
              }

              v64 = *(*(&v159 + 1) + 8 * i);
              if (objc_opt_respondsToSelector())
              {
                v65 = [v64 tags];
                v66 = v65;
                if (v65)
                {
                  v157 = 0u;
                  v158 = 0u;
                  v155 = 0u;
                  v156 = 0u;
                  v67 = [v65 countByEnumeratingWithState:&v155 objects:v168 count:16];
                  if (v67)
                  {
                    v68 = *v156;
                    while (2)
                    {
                      for (j = 0; j != v67; ++j)
                      {
                        if (*v156 != v68)
                        {
                          objc_enumerationMutation(v66);
                        }

                        if ([*(*(&v155 + 1) + 8 * j) isEqualToString:@"_slash"])
                        {
                          v52 = 0;
                          v53 = 0;
                          v5 = (a1 + 112);
                          goto LABEL_64;
                        }
                      }

                      v67 = [v66 countByEnumeratingWithState:&v155 objects:v168 count:16];
                      v62 = v145;
                      if (v67)
                      {
                        continue;
                      }

                      break;
                    }
                  }
                }
              }
            }

            v61 = [(NSArray *)v52 countByEnumeratingWithState:&v159 objects:__dst count:16];
            v5 = (a1 + 112);
          }

          while (v61);
        }

        v53 = 0;
        *(a1 + 24) = 3;
        goto LABEL_66;
      }

LABEL_58:
      v53 = 0;
      goto LABEL_65;
    }

    *(a1 + 24) = 3;
    goto LABEL_62;
  }

  if (v54 < 2)
  {
    v70 = [*a1 monochromeLayers];
  }

  else
  {
    if (v54 != 2)
    {
      if (v54 != 3)
      {
        goto LABEL_66;
      }

      goto LABEL_34;
    }

    v70 = [*a1 multicolorLayers];
  }

  v52 = v70;
  v53 = 0;
LABEL_64:
  v57 = *(a1 + 24);
LABEL_65:
  if (v57 != 1)
  {
    goto LABEL_66;
  }

LABEL_68:
  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  v71 = [(NSArray *)v52 countByEnumeratingWithState:&v151 objects:v167 count:16];
  v146 = v53;
  LOBYTE(v72) = 0;
  if (v71)
  {
    v73 = *v152;
    while (2)
    {
      for (k = 0; k != v71; ++k)
      {
        if (*v152 != v73)
        {
          objc_enumerationMutation(v52);
        }

        v75 = *(*(&v151 + 1) + 8 * k);
        v76 = *(a1 + 456);
        if (*(a1 + 460) < v76 + 1)
        {
          RB::vector<RB::Symbol::Glyph::Layer,3ul,unsigned int>::reserve_slow(v5, v76 + 1);
          v76 = *(a1 + 456);
        }

        v77 = *(a1 + 448);
        if (!v77)
        {
          v77 = v5;
        }

        RB::Symbol::Glyph::Layer::Layer(v77 + 112 * v76, *a1, v75, *(a1 + 24));
        v78 = *(a1 + 456);
        v79 = v78 + 1;
        *(a1 + 456) = v79;
        if (*(a1 + 448))
        {
          v80 = *(a1 + 448);
        }

        else
        {
          v80 = v5;
        }

        v81 = v80 + 112 * v78;
        if ((v81[107] & 0x30) == 0)
        {
          if (v79)
          {
            v82 = 112 * v79;
            do
            {
              RB::Symbol::Glyph::Layer::~Layer(v80);
              v80 = (v83 + 112);
              v82 -= 112;
            }

            while (v82);
          }

          *(a1 + 456) = 0;
          goto LABEL_92;
        }

        if (v72)
        {
          LOBYTE(v72) = 1;
        }

        else
        {
          v72 = (v81[108] >> 1) & 1;
        }
      }

      v71 = [(NSArray *)v52 countByEnumeratingWithState:&v151 objects:v167 count:16];
      if (v71)
      {
        continue;
      }

      break;
    }
  }

  if (!*(a1 + 456))
  {
LABEL_92:
    *(a1 + 24) = *(a2 + 4);
    RB::Symbol::Glyph::make_legacy_layers(a1, v149);
  }

  if (v72)
  {
    RB::Symbol::Glyph::resolve_draw_attachments(a1, v52);
  }

  v147 = (a1 + 464);
  v164 = 0;
  v165 = 0;
  v166 = 32;
  v159 = 0uLL;
  v84 = 1;
  v85 = *(a1 + 456);
  if (v85)
  {
    v148 = v5;
    v86 = 0;
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v150 = 112 * v85;
    do
    {
      if (*(a1 + 448))
      {
        v90 = *(a1 + 448);
      }

      else
      {
        v90 = v148;
      }

      v91 = &v90[v86];
      v92 = *&v90[v86 + 104];
      if ((v92 & 0x3C0000) == 0x240000)
      {
        v93 = [*(v91 + 1) isEqualToString:@"tintColor"];
        v92 = *(v91 + 26);
        if (v93)
        {
          v92 &= 0xFFC3FFFF;
          *(v91 + 26) = v92;
        }
      }

      v94 = (v92 >> 18) & 0xF;
      if (v94 != 10)
      {
        *v147 |= 1 << v94;
        v92 = *(v91 + 26);
      }

      v95 = *(a1 + 480);
      if ((v92 & 0x40) != 0)
      {
        v96 = -2;
      }

      else
      {
        v96 = -1;
      }

      v97 = v95 & v96;
      *(a1 + 480) = v97;
      LODWORD(v98) = v97 & 0xFFFFFFFD | (2 * (((v95 & ~(v91[104] >> 6)) >> 1) & 1));
      *(a1 + 480) = v98;
      v99 = *&v90[v86 + 72];
      v100 = *(v91 + 26);
      v101 = *&v90[v86 + 68];
      if ((v101 & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        v102 = v165;
        v103 = v165 + 1;
        if (v166 < v165 + 1)
        {
          RB::vector<RB::DisplayList::Item const*,32ul,unsigned long>::reserve_slow(__dst, v103);
          v102 = v165;
          v101 = *&v90[v86 + 68];
          v103 = v165 + 1;
        }

        v104 = v164;
        if (!v164)
        {
          v104 = __dst;
        }

        v98 = &v104[8 * v102];
        *v98 = v101;
        v98[1] = v87;
        v165 = v103;
        LOBYTE(v98) = *(a1 + 480);
      }

      if ((v98 & 4) != 0)
      {
        v105 = 4;
      }

      else if (vcgt_f32(vdup_lane_s32(*&v90[v86 + 96], 1), *&v90[v86 + 96]).u8[0])
      {
        v105 = 4;
      }

      else
      {
        v105 = 0;
      }

      *(a1 + 480) = v105 | v98 & 0xFB;
      *(a1 + 476) |= *(v91 + 26) & 0x3FF;
      if ((v91[104] & 4) != 0)
      {
        v168[0] = 0x3F80000000000000;
        v168[1] = 0;
        v168[2] = 1065353216;
        *&v106 = RB::Symbol::Glyph::Layer::content_bounds(&v90[v86], v168);
        RB::Rect::Union(&v159, v106, v107);
      }

      v88 |= 1 << v99;
      v89 |= 1 << (v100 >> 10);
      ++v87;
      v86 += 112;
    }

    while (v150 != v86);
    v108 = *(&v159 + 8);
    v84 = (v89 & 2) == 0;
    v5 = v148;
  }

  else
  {
    v88 = 0;
    v108 = 0;
  }

  v109 = vmvn_s8(vceqz_f32(v108));
  if ((vpmin_u32(v109, v109).u32[0] & 0x80000000) != 0)
  {
    v110 = vmla_f32(*&v159, 0x3F0000003F000000, v108);
  }

  else
  {
    v110 = *(a1 + 88);
  }

  *(a1 + 96) = v110;
  v108.i32[0] = v88;
  v111 = vcnt_s8(v108);
  v111.i16[0] = vaddlv_u8(v111);
  *(a1 + 472) = v111.i32[0];
  if (((-1 << v111.i8[0]) ^ v88) != 0xFFFFFFFF && v88 != 0)
  {
    v113 = 0;
    v114 = 0;
    do
    {
      if (v88)
      {
        if (v113 != v114)
        {
          v115 = *(a1 + 448);
          if (!v115)
          {
            v115 = v5;
          }

          v116 = *(a1 + 456);
          if (v116)
          {
            v117 = v115 + 72;
            v118 = 112 * v116;
            do
            {
              if (*v117 == v113)
              {
                *v117 = v114;
              }

              v117 += 28;
              v118 -= 112;
            }

            while (v118);
          }
        }

        ++v114;
      }

      ++v113;
      v23 = v88 > 1;
      v88 >>= 1;
    }

    while (v23);
  }

  if (objc_opt_respondsToSelector())
  {
    v119 = [objc_msgSend(*a1 "symbolDefaults")];
    if (v119)
    {
      if ([v119 BOOLValue])
      {
        v120 = 8;
      }

      else
      {
        v120 = 0;
      }

      *(a1 + 480) = *(a1 + 480) & 0xF7 | v120;
    }
  }

  if (v165)
  {
    if (v164)
    {
      v121 = v164;
    }

    else
    {
      v121 = __dst;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned int> *,false>(v121, &v121[8 * v165], v168, 126 - 2 * __clz(v165), 1);
    v122 = v164;
    if (!v164)
    {
      v122 = __dst;
    }

    if (v165)
    {
      v123 = &v122[8 * v165];
      v124 = INFINITY;
      do
      {
        v125 = v124;
        v124 = *v122;
        v126 = *(v122 + 1);
        v127 = *(a1 + 468);
        if (*v122 != v125)
        {
          *(a1 + 468) = ++v127;
        }

        v128 = *(a1 + 448);
        if (!v128)
        {
          v128 = v5;
        }

        v129 = &v128[112 * v126];
        *(v129 + 22) = v127;
        *(v129 + 26) |= 0x20u;
        v122 += 8;
      }

      while (v122 != v123);
    }
  }

  if (v146)
  {
    v130 = *(a1 + 24);
    if (v130 != 4)
    {
      if (v130 == 3 && !v84)
      {
        v131 = *(a1 + 448);
        if (!v131)
        {
          v131 = v5;
        }

        v132 = *(a1 + 456);
        if (v132)
        {
          v133 = (v131 + 104);
          v134 = 112 * v132;
          while (1)
          {
            v135 = *v133;
            if ((*v133 & 0x3C0000) == 0)
            {
              if ((v135 >> 10) == 1)
              {
                v136 = v135 & 0xFFC003FF;
                goto LABEL_175;
              }

              if (!(v135 >> 10))
              {
                v136 = v135 & 0xFFC003FF | 0x400;
LABEL_175:
                *v133 = v136;
              }
            }

            v133 += 28;
            v134 -= 112;
            if (!v134)
            {
              goto LABEL_191;
            }
          }
        }
      }

      goto LABEL_191;
    }

    if ((*v147 & 0x1E0) != 0)
    {
      *(a1 + 464) = 0;
      v137 = *(a1 + 448);
      if (!v137)
      {
        v137 = v5;
      }

      v138 = *(a1 + 456);
      if (v138)
      {
        v139 = (v137 + 104);
        v140 = 112 * v138;
        while (1)
        {
          v141 = *v139;
          v142 = (*v139 >> 18) & 0xF;
          if ((v142 - 5) < 4)
          {
            break;
          }

          if (!v142)
          {
            v141 = v141 & 0xFFC3FFFF | 0x140000;
            goto LABEL_187;
          }

LABEL_188:
          v143 = (v141 >> 18) & 0xF;
          if (v143 != 10)
          {
            *v147 |= 1 << v143;
          }

          v139 += 28;
          v140 -= 112;
          if (!v140)
          {
            goto LABEL_191;
          }
        }

        v141 &= 0xFFC3FFFF;
LABEL_187:
        *v139 = v141;
        goto LABEL_188;
      }
    }
  }

LABEL_191:
  if (v164)
  {
    free(v164);
  }

  return a1;
}