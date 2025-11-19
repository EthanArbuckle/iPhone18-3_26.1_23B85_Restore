uint64_t RB::TextureCache::prepare_from_iosurface(int32x2_t *a1, uint64_t *a2, __IOSurface *a3, unsigned __int8 *a4, RB *a5, uint64_t a6)
{
  v59 = *MEMORY[0x1E69E9840];
  if (a1[1].i8[2] == 1)
  {
    v12 = a1[1].u8[1];
  }

  else
  {
    v12 = 17;
  }

  v48 = v12;
  v13 = CGColorSpaceCopyFromIOSurface();
  v15 = v13;
  if (v13)
  {
    v16 = RB::color_space_from_cg(v13, v14);
    if ((v16 & 0x100) != 0)
    {
      LOBYTE(v18) = 0;
      v12 = v16;
      v48 = v16;
      LODWORD(a5) = 6;
      goto LABEL_37;
    }
  }

  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  *buf = 132;
  v18 = IOSurfaceGetBulkAttachments() == 0;
  if (!v18 || BYTE11(v52) == 0 || BYTE12(v52) == 0)
  {
    if (!a5)
    {
      goto LABEL_36;
    }

    v21 = RB::color_space_from_cg(a5, v17);
    if ((v21 & 0x100) != 0)
    {
      v12 = v21;
      v48 = v21;
      goto LABEL_79;
    }

    LODWORD(a5) = 1;
    if (!v15)
    {
      goto LABEL_38;
    }

LABEL_37:
    CFRelease(v15);
    goto LABEL_38;
  }

  v22 = 0;
  v23 = 1;
  if (BYTE11(v52) > 8u)
  {
    switch(BYTE11(v52))
    {
      case 9u:
        v23 = 0;
        v22 = 3;
        break;
      case 0xBu:
        v23 = 0;
        v22 = 6;
        break;
      case 0xCu:
        v23 = 0;
        v22 = 2;
        break;
    }
  }

  else if (BYTE11(v52) - 1 < 2)
  {
    v23 = 0;
    v22 = 1;
  }

  else if (BYTE11(v52) == 5)
  {
    v23 = 0;
    v22 = 4;
  }

  else if (BYTE11(v52) == 6)
  {
    v23 = 0;
    v22 = 5;
  }

  if (BYTE12(v52) > 0x12u || v23 & 1 | (((0x3F083u >> (BYTE12(v52) - 1)) & 1) == 0))
  {
    LODWORD(a5) = a5 != 0;
LABEL_36:
    if (!v15)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v42 = byte_195E45230[(BYTE12(v52) - 1)];
  v12 = v42 | v22;
  v48 = v42 | v22;
LABEL_79:
  LODWORD(a5) = 6;
  if (v15)
  {
    goto LABEL_37;
  }

LABEL_38:
  if (a5 == 6 || !a5)
  {
    if ((v12 & 0xF) == 0)
    {
      v12 |= 1u;
      v48 = v12;
    }

    v24 = 0;
    v25 = a1[4].i32[0] & 1;
    if (!v25 && (v12 & 0xF0) == 0x10)
    {
      v24 = (a4[3] & 1) != 0 || a4[1] != 1 || v12 != *a4;
    }

    v26 = *(*a2 + 331);
    v27 = v24 | 2;
    if (v26 <= 2)
    {
      v27 = v24;
    }

    if (v26 > 5)
    {
      v27 |= 0x80u;
    }

    if (v26 > 6)
    {
      v27 |= 0x100u;
    }

    v28 = v27 | 4;
    if (v26 <= 2)
    {
      v28 = v24;
    }

    v29 = v28 | 0x40;
    if (v26 > 1)
    {
      v24 = v29;
    }

    if (*(*a2 + 334))
    {
      v24 |= 8u;
    }

    v30 = v24 | (16 * v25);
    v31 = v30 | 0x20;
    if (((1 << (a6 & 0x1F)) & 0x61) == 0)
    {
      v31 = v30;
    }

    v32 = (a6 & 0x1Fu) <= 6 ? v31 : v30;
    v33 = (a6 & 0x100000000) != 0 ? v32 : v30;
    v47 = 0;
    v45 = 0;
    PixelFormat = IOSurfaceGetPixelFormat(a3);
    v35 = RB::pixel_format_from_four_cc(PixelFormat, v33, &v47, &v46, &v45);
    if (v35)
    {
      if (v46 <= 0xFu)
      {
        v48 = v12 & 0xF;
      }

      if ((v47 & 1) == 0 && !v18)
      {
        v57 = 0;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        *buf = 132;
        IOSurfaceGetBulkAttachments();
      }

      v36 = *a2;
      v37 = a1[3];
      if ((v35 & 0x80000000) != 0)
      {
        if (!RB::Device::valid_texture_size_nonnative(v36, v35, v37))
        {
          return 0;
        }
      }

      else
      {
        v38 = (v36 + 336);
        v39 = vld1_dup_f32(v38);
        v40 = vand_s8(vcge_s32(v39, v37), vcgtz_s32(v37));
        if ((vpmin_u32(v40, v40).u32[0] & 0x80000000) == 0)
        {
          return 0;
        }
      }

      v43 = objc_opt_new();
      [v43 setPixelFormat:v35];
      [v43 setWidth:*&a1[3]];
      [v43 setHeight:a1[3].i32[1]];
      [v43 setUsage:1];
      if (v45)
      {
        RB::Texture::set_swizzle(v43, v45);
      }

      v44 = [*(*a2 + 24) newTextureWithDescriptor:v43 iosurface:a3 plane:0];
      if (v44)
      {
        RB::Resource::set_label(v44, "image-texture", &RB::TextureCache::prepare_from_iosurface(RB::RenderFrame &,__IOSurface *,RB::TextureCache::Params const&,CGColorSpace *,std::optional<unsigned int>)::counter);
        operator new();
      }
    }
  }

  return 0;
}

uint64_t RB::Texture::set_swizzle(void *a1, const char *a2)
{
  if ((a2 - 1) > 3u)
  {
    v2 = 84148994;
  }

  else
  {
    v2 = qword_195E485F0[(a2 - 1)];
  }

  return [a1 setSwizzle:v2];
}

uint64_t RB::TextureCache::prepare_from_base_level(int32x2_t *a1, uint64_t *a2, int *a3, uint64_t a4, unsigned int a5)
{
  v7 = a4;
  v103 = *MEMORY[0x1E69E9840];
  v9 = *a3;
  v10 = *(a4 + 79);
  v11 = HIWORD(*a3);
  v12 = *(a4 + 56);
  v13 = RB::pixel_format_traits(v12, a2);
  v14 = 8;
  if (!v10)
  {
    v14 = 6;
  }

  v15 = HIDWORD(*&v13[v14]);
  if (!v15)
  {
    v15 = v12;
  }

  v70 = v15;
  v61 = 1;
  if (a5 < v11)
  {
    v65 = v9 & 0xBD000000;
    if ((v9 & 0x100) != 0)
    {
      v16 = v9;
    }

    else
    {
      v16 = 17;
    }

    v18 = (v7[10].i16[0] & 0x100) == 0 || v16 != v7[10].i16[0];
    __dst = a1 + 6;
    if ((*&v18 & ((v9 & 0x100) >> 8)) != 0)
    {
      v19 = 0;
    }

    else
    {
      v19 = v9 & 0xFF00;
    }

    __asm
    {
      FMOV            V9.2S, #-1.0
      FMOV            V11.2S, #1.0
      FMOV            V0.4S, #0.25
    }

    v62 = _Q0;
    __asm { FMOV            V13.2S, #4.0 }

    v64 = v19 | v9;
    v66 = a1;
    while (1)
    {
      v27 = a5 + 1;
      if (v27 >= v11)
      {
        v28 = 1;
      }

      else
      {
        v28 = 2;
      }

      LOBYTE(a5) = v28 + a5;
      _Q0.n128_u64[0] = vmax_s32(vshl_s32(a1[3], vneg_s32(vdup_n_s32(a5))), 0x100000001);
      v29 = v7[10].u16[0];
      v5 = v5 & 0xFFFFFFFFFFFF0000 | v29;
      v71 = _Q0;
      RB::TextureCache::take_available(a1, v70, 1, v5, 1, 0, 0, &v78, _Q0);
      v31 = v78;
      if (!*&v78)
      {
        v63 = v63 & 0xFFFFFFFFFFFF0000 | v29;
        RB::Texture::alloc(*a2, v70, 1u, 1, 0, buf, v71);
        v31 = *buf;
        v78 = *buf;
        if (!*buf)
        {
          return 0;
        }

        RB::Resource::set_label(*(*buf + 16), "image-level-texture", RB::TextureCache::prepare_from_base_level(RB::RenderFrame &,RB::TextureCache::Params const&,RB::Texture *,unsigned char)::counter);
      }

      v32 = *(*&v31 + 56);
      v33 = RB::pixel_format_required_component(v32, v30);
      v35 = (RB::pixel_format_traits(*(*&v31 + 56), v34)[1] & 0xA) != 0;
      if ((v29 & 0x100) != 0)
      {
        v36 = v29;
      }

      else
      {
        v36 = 17;
      }

      RB::RenderParams::RenderParams(v77, a2, v32, v36, v36, v33, v35, v71.n128_f64[0]);
      *&v37 = RB::RenderPass::RenderPass(buf, v77, *&v31, 0, 0, 8, 0);
      RB::Coverage::set_plane(&v72, buf, v37);
      if (v27 >= v11)
      {
        v38 = 0x4000000040000000;
        v39 = 251658240;
      }

      else
      {
        *&v73[44] = -_D9;
        *&v73[52] = _D11;
        *&v73[60] = _D9;
        *&v73[68] = -_D11;
        v38 = _D13;
        v39 = 251920384;
        *&v75[12] = v62;
      }

      *&v73[12] = v38;
      if (v96 == 2)
      {
        v40 = 131102;
      }

      else
      {
        v40 = 30;
      }

      *&v73[28] = 0;
      *&v73[20] = 0;
      *&v73[36] = vcvt_f32_s32(v7[8]);
      RB::RenderFrame::alloc_buffer_region(*(*buf + 16), 0xA0, 4uLL, 0, &v79);
      v41 = v79;
      if (v79)
      {
        v42 = (*(v79 + 7) + v80.i64[0]);
        v43 = v72;
        v42[1] = *v73;
        v44 = *&v73[64];
        v46 = *&v73[16];
        v45 = *&v73[32];
        v42[4] = *&v73[48];
        v42[5] = v44;
        v42[2] = v46;
        v42[3] = v45;
        v47 = v76;
        v49 = v74;
        v48 = *v75;
        v42[8] = *&v75[16];
        v42[9] = v47;
        v42[6] = v49;
        v42[7] = v48;
        *v42 = v43;
      }

      else
      {
        v79 = 0;
        v80 = 0uLL;
      }

      v99 = RB::RenderFrame::buffer_id(*(*buf + 16), v41);
      v100 = vmovn_s64(v80);
      RB::RenderPass::set_texture(buf, 0, v7, 2uLL);
      RB::RenderPass::draw_indexed_primitives(buf, (v40 | v39), 4, **(*buf + 16) + 136, 4uLL, 1uLL, v97, v98);
      v101 = 0;
      v102 = 0;
      RB::RenderPass::~RenderPass(buf);
      v50 = RB::verbose_mode(0x80);
      a1 = v66;
      if (v50)
      {
        v56 = RB::misc_log(v50);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          LOWORD(v72) = *(*&v31 + 80);
          v58 = "deviceRGB";
          if ((v72 & 0x100) != 0)
          {
            v58 = RB::ColorSpace::name(&v72);
          }

          v59 = RB::pixel_format_name(*(*&v31 + 56), v57);
          *buf = 134219778;
          *&buf[4] = v66;
          v82 = 2048;
          v83 = v7;
          v84 = 2048;
          v85 = v31;
          v86 = 1024;
          v87 = a5;
          v88 = 1024;
          v89 = v71.n128_u32[0];
          v90 = 1024;
          v91 = v71.n128_u32[1];
          v92 = 2080;
          v93 = v58;
          v94 = 2080;
          v95 = v59;
          _os_log_impl(&dword_195CE8000, v56, OS_LOG_TYPE_INFO, "%p: downsampled %p -> %p, level %d [%d, %d] %s %s\n", buf, 0x46u);
        }
      }

      v51 = v66[9].u32[0];
      if (v66[9].i32[1] < v51 + 1)
      {
        RB::vector<std::pair<RB::cf_ptr<CGContext *>,RB::ContextDelegate *>,1ul,unsigned int>::reserve_slow(__dst, v51 + 1);
        a1 = v66;
        v51 = v66[9].u32[0];
      }

      v52 = a1[8];
      if (!v52)
      {
        v52 = __dst;
      }

      v53 = &v52[2 * v51];
      v53->i32[0] = v65 | (a5 << 16) | v64;
      v53[1] = v31;
      v54 = a1[9].u32[0];
      a1[9].i32[0] = v54 + 1;
      v55 = a1[8];
      if (!v55)
      {
        v55 = __dst;
      }

      v7 = v55[2 * v54 + 1];
      v11 = *(a3 + 2);
      if (v11 <= a5)
      {
        return 1;
      }
    }
  }

  return v61;
}

void sub_195D2B4A8(_Unwind_Exception *a1)
{
  v3 = v1[2] - 1;
  v1[2] = v3;
  if (!v3)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t RB::ImageProvider::copy_image_block_set(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [a5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      v10 = *MEMORY[0x1E695F288];
      v11 = *MEMORY[0x1E695F2A0];
      v12 = *MEMORY[0x1E695F278];
LABEL_4:
      v13 = 0;
      while (1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(a5);
        }

        v14 = *(*(&v21 + 1) + 8 * v13);
        if ([v14 isEqualToString:v10])
        {
          return 0;
        }

        if ([v14 isEqualToString:v11])
        {
          return 0;
        }

        if ([v14 isEqualToString:v11])
        {
          return 0;
        }

        if ([v14 isEqualToString:v12])
        {
          CFDictionaryGetValue(a5, v12);
          RB::ImageProvider::cg_color_space(a1, v15);
          if (!CGColorSpaceEqualToColorSpace())
          {
            return 0;
          }
        }

        if (v8 == ++v13)
        {
          v8 = [a5 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  v20 = *(&xmmword_1F0A3EA30 + 1);
  RB::ImageProvider::wait_phase(a1, 6);
  v16 = *(a1 + 232);
  if (v16)
  {
    v17 = *(v16 + 48);
    if (IOSurfaceLock(v17, 1u, 0))
    {
      return 0;
    }

    BaseAddress = IOSurfaceGetBaseAddress(v17);
    IOSurfaceGetBytesPerRow(v17);
    if (!BaseAddress)
    {
      return 0;
    }
  }

  else if (!*(a1 + 240))
  {
    return 0;
  }

  atomic_fetch_add_explicit((a1 + 8), 1u, memory_order_relaxed);
  if (CGImageBlockCreate())
  {
    result = CGImageBlockSetCreate();
    if (result)
    {
      return result;
    }

    CGImageBlockRelease();
  }

  else
  {
    v20(a1, 0);
  }

  return 0;
}

void RB::ImageProvider::wait_phase(uint64_t a1, int a2)
{
  v9.__m_ = (a1 + 112);
  v9.__owns_ = 1;
  std::mutex::lock((a1 + 112));
  v4 = *(a1 + 224);
  if (v4 > 2 && a2 == 2)
  {
    v6 = 5;
  }

  else
  {
    v6 = a2;
  }

  if (v4 >= v6)
  {
    goto LABEL_20;
  }

  do
  {
    if (v4 <= 0)
    {
      RB::ImageProvider::start_rendering_locked(a1, 1, &v9);
      if (!v9.__owns_)
      {
        std::unique_lock<std::mutex>::lock[abi:nn200100](&v9);
      }
    }

    else
    {
      std::condition_variable::wait((a1 + 176), &v9);
    }

    v4 = *(a1 + 224);
    if (v4 > 2 && a2 == 2)
    {
      v8 = 5;
    }

    else
    {
      v8 = a2;
    }
  }

  while (v4 < v8);
  if (v9.__owns_)
  {
LABEL_20:
    std::mutex::unlock(v9.__m_);
  }
}

void sub_195D2B880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  if (a10 == 1)
  {
    std::mutex::unlock(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RB::ImageProvider::copy_image_block_set(CGImageProvider *,CGRect const&,CGSize const&,__CFDictionary const*)::$_0::__invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 232);
  if (v2)
  {
    result = IOSurfaceUnlock(*(v2 + 48), 1u, 0);
  }

  if (atomic_fetch_add_explicit((v1 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    return RB::ImageProvider::submit_all();
  }

  return result;
}

uint64_t RB::ImageTexture::cg_image(RB::ImageTexture *this)
{
  result = *this;
  if (result)
  {
    v3 = *(this + 8);
    if ((v3 - 1) < 2 || v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t RB::ImageProvider::copy_iosurface(RB::ImageProvider *this, const __CFDictionary *a2)
{
  RB::ImageProvider::wait_phase(this, 2);
  v3 = *(this + 29);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 48);
  if (v4)
  {
    CFRetain(*(v3 + 48));
  }

  return v4;
}

uint64_t RB::DisplayList::LayerClip::LayerClip(uint64_t a1, float32x2_t *this, uint64_t a3, int a4, float a5)
{
  *(a1 + 16) = 0;
  v6 = (a1 + 16);
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = a4;
  *a1 = &unk_1F0A391F0;
  *(a1 + 48) = this;
  *(a1 + 56) = a3;
  v7 = (a1 + 56);
  *(a1 + 64) = a5;
  *(a1 + 45) = 2;
  if (a4 == 1)
  {
    *(a1 + 16) = 0x100000001000000;
    *(a1 + 24) = vneg_f32(0x80000000800000);
  }

  else if (!a4)
  {
    if (this)
    {
      *(a1 + 16) = RB::DisplayList::Layer::bounds(this);
      *(a1 + 24) = v8;
      RB::DisplayList::Layer::Effect::apply_to_bounds(v7, v6);
    }

    else
    {
      *v6 = 0;
      *(a1 + 24) = 0;
    }
  }

  return a1;
}

void sub_195D2BA38(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  *(v1 + 48) = 0;
  if (v3)
  {
    (**v3)(v3);
  }

  _Unwind_Resume(exception_object);
}

RB::Drawable *RB::Drawable::Drawable(RB::Drawable *this, intptr_t value)
{
  *(this + 2) = 1;
  *(this + 3) = value;
  *this = &unk_1F0A38358;
  *(this + 2) = 0;
  if (value)
  {
    v3 = dispatch_semaphore_create(value);
  }

  else
  {
    v3 = 0;
  }

  *(this + 3) = v3;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  return this;
}

void *RB::DisplayList::LayerClip::copy(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = *a2;
  v9 = *(*a2 + 288);
  if (v9 == 1 && *(a1 + 64) == 0.0)
  {
    return a3;
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    v10 = RB::DisplayList::Layer::copy(v10, *a2, 0);
    v11 = v10;
    if (a4)
    {
      v12 = *(a1 + 44) == 0;
    }

    else
    {
      v12 = *(a1 + 44);
    }

    if ((*(v8 + 288) & 1) == 0)
    {
LABEL_31:
      v21 = *(v8 + 8);
      v22 = v21 + 2;
      if (v11)
      {
        v23 = RB::DisplayList::Layer::Effect::copy((a1 + 56), v8);
        v24 = (v21[4] + 7) & 0xFFFFFFFFFFFFFFF8;
        if (v24 + 72 > v21[5])
        {
          v37 = v23;
          v38 = RB::Heap::alloc_slow(v21 + 2, 0x48uLL, 7);
          v23 = v37;
          v24 = v38;
        }

        else
        {
          v21[4] = v24 + 72;
        }

        RB::DisplayList::LayerClip::LayerClip(v24, v11, v23, v12, *(a1 + 64));
        *(v24 + 32) = RB::DisplayList::CachedTransform::transform_metadata(a2, *(a1 + 32), *(a1 + 40));
        *(v24 + 40) = v25;
        RB::DisplayList::Layer::apply_transform(*(v24 + 48), a2);
        RB::DisplayList::Layer::Effect::apply_transform(v24 + 56, a2);
        if (*(v8 + 288) == 1)
        {
          RB::DisplayList::Layer::discard_color(*(v24 + 48), *(v24 + 56));
        }

        if (v12 == 1)
        {
          *(v24 + 16) = 0x100000001000000;
          *(v24 + 24) = vneg_f32(0x80000000800000);
        }

        else if (!v12)
        {
          v26 = *(v24 + 48);
          if (v26)
          {
            *(v24 + 16) = RB::DisplayList::Layer::bounds(v26);
            *(v24 + 24) = v27;
            RB::DisplayList::Layer::Effect::apply_to_bounds((v24 + 56), (v24 + 16));
          }

          else
          {
            *(v24 + 16) = 0;
            *(v24 + 24) = 0;
          }
        }

        v35 = ((a2[3] + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((v35 + 2) > a2[4])
        {
          v35 = RB::Heap::alloc_slow(a2 + 1, 0x10uLL, 7);
        }

        else
        {
          a2[3] = (v35 + 2);
        }

        *v35 = a3;
        v35[1] = v24;
        return v35;
      }

      goto LABEL_40;
    }

LABEL_14:
    v10 = RB::DisplayList::Builder::simplify_clip_layer(v8, v11, *(a1 + 56), v12);
    if (v13)
    {
      v14 = v13;
      for (i = v13[3]; i; i = *i)
      {
        a3 = (*(*(i[1] & 0xFFFFFFFFFFFFFFFELL) + 24))(i[1] & 0xFFFFFFFFFFFFFFFELL, a2, a3, a4);
      }

      v14[3] = 0;
      (*(*v14 + 32))(v14, a2, 0);
      v40 = 0;
      v41 = 0;
      v42 = 4;
      (*(*v14 + 88))(v14, v8, v12, v39, *(a1 + 64));
      v16 = v40;
      if (v40)
      {
        v17 = v40;
      }

      else
      {
        v17 = v39;
      }

      if (v41)
      {
        v18 = 8 * v41;
        do
        {
          v19 = *v17;
          v20 = ((a2[3] + 7) & 0xFFFFFFFFFFFFFFF8);
          if ((v20 + 2) > a2[4])
          {
            v20 = RB::Heap::alloc_slow(a2 + 1, 0x10uLL, 7);
          }

          else
          {
            a2[3] = (v20 + 2);
          }

          *v20 = a3;
          v20[1] = v19;
          ++v17;
          a3 = v20;
          v18 -= 8;
        }

        while (v18);
        v16 = v40;
        a3 = v20;
      }

      if (v16)
      {
        free(v16);
      }

      return a3;
    }

    v11 = v10;
    goto LABEL_31;
  }

  if (a4)
  {
    v12 = *(a1 + 44) == 0;
  }

  else
  {
    v12 = *(a1 + 44);
  }

  if (v9)
  {
    v11 = 0;
    goto LABEL_14;
  }

  v21 = *(v8 + 8);
  v22 = v21 + 2;
LABEL_40:
  if (!v12)
  {
    v28 = RB::AffineTransform::identity(v10);
    v34 = (v21[4] + 15) & 0xFFFFFFFFFFFFFFF0;
    if (v34 + 128 > v21[5])
    {
      v34 = RB::Heap::alloc_slow(v22, 0x80uLL, 15);
    }

    else
    {
      v21[4] = v34 + 128;
    }

    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    *(v34 + 38) = 0;
    *(v34 + 32) = 0;
    *v34 = &unk_1F0A3D038;
    *(v34 + 48) = v28;
    *(v34 + 64) = 0u;
    *(v34 + 80) = 0u;
    *(v34 + 96) = 1065353216;
    *(v34 + 100) = 0;
    *(v34 + 107) = 0;
    *(v34 + 112) = 1065353216;
    RB::DisplayList::GenericClip<RB::Coverage::Primitive>::update_bounds(v34, 0, v29, v30, v31, v32, v33);
    v35 = ((a2[3] + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v35 + 2) > a2[4])
    {
      v35 = RB::Heap::alloc_slow(a2 + 1, 0x10uLL, 7);
    }

    else
    {
      a2[3] = (v35 + 2);
    }

    *v35 = a3;
    v35[1] = v34;
    return v35;
  }

  return a3;
}

void sub_195D2BF54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a13)
  {
    free(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RB::DisplayList::LayerClip::contains(uint64_t a1, float32x2_t a2, float32x2_t a3)
{
  if (*(a1 + 44) != 1)
  {
    return 0;
  }

  v13[2] = v6;
  v13[3] = v5;
  v13[6] = v3;
  v13[7] = v4;
  if (*(a1 + 64) == 0.0)
  {
    return 1;
  }

  v10 = *(a1 + 48);
  if (!v10)
  {
    return 1;
  }

  v13[0] = RB::DisplayList::Layer::bounds(v10);
  v13[1] = v12;
  RB::DisplayList::Layer::Effect::apply_to_bounds((a1 + 56), v13);
  return RB::Rect::intersects(v13, a2, a3) ^ 1;
}

RB::XML::DisplayList *RBDrawingStateAddDistanceFilter2(__n128 *this, _RBDrawingState *a2, float64x2_t a3, float64_t a4, double a5)
{
  v8 = this->n128_u64[1];
  v11 = *&a3.f64[0];
  v12 = a4;
  if (!v8[3])
  {
    make_contents(v8);
    *&a3.f64[0] = v11;
    a4 = v12;
  }

  a3.f64[1] = a4;
  *&v13 = vcvt_f32_f64(a3);
  *&v9 = a5;
  *(&v13 + 1) = __PAIR64__(a2, v9);
  RB::DisplayList::State::add_filter_style<RB::Filter::Distance>(this, (v8 + 2), &v13);
  result = v8[40];
  if (result)
  {
    RB::XML::DisplayList::add_distance_filter(result, this, a2, *&v11, v12, a5);
  }

  return result;
}

double RB::DisplayList::State::add_filter_style<RB::Filter::Distance>(__n128 *this, RB::DisplayList::Builder *a2, _OWORD *a3)
{
  v6 = *(a2 + 1);
  v7 = (v6[4] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v7 + 72 > v6[5])
  {
    v7 = RB::Heap::alloc_slow(v6 + 2, 0x48uLL, 7);
  }

  else
  {
    v6[4] = v7 + 72;
  }

  *(v7 + 48) = 0;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *v7 = &unk_1F0A3E6B8;
  *(v7 + 56) = *a3;

  *&result = RB::DisplayList::State::add_style(this, a2, v7).n128_u64[0];
  return result;
}

int32x2_t RB::DisplayList::FilterStyle<RB::Filter::Distance>::map_roi(float32x2_t *a1, float32x2_t *this, float64x2_t *a3)
{
  v5 = *&RB::Rect::move(this, a3, *&a1[2]);

  return RB::Filter::Distance::roi(a1 + 7, this, v5, v6, v7, v8, v9, v10);
}

int32x2_t RB::Filter::Distance::roi(float32x2_t *this, float32x2_t *a2, int32x2_t result, int32x4_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8)
{
  if ((this[1].i32[1] & 0x1E00) != 0x800)
  {
    result = vabs_f32(*this);
    *result.i32 = fmaxf(*result.i32, *&result.i32[1]);
    if (*result.i32 > 0.0)
    {
      *a6.i8 = *a2;
      *a5.i8 = a2[1];
      *a4.i8 = vcgt_f32(vneg_f32(0x80000000800000), *a5.i8);
      *a7.i8 = vsub_f32(*a2, vdup_lane_s32(result, 0));
      v8 = vcltzq_s32(a4);
      *&v9 = vbslq_s8(v8, a7, a6).u64[0];
      *a8.i8 = vmla_n_f32(*a5.i8, 0x4000000040000000, *result.i32);
      result = vbslq_s8(v8, a8, a5).u64[0];
      *(&v9 + 1) = result;
      *a2->f32 = v9;
    }
  }

  return result;
}

float RB::Heap::emplace<RB::DisplayList::FilterStyle<RB::Filter::Distance>,RB::Filter::Distance const&,RB::DisplayList::Builder &>(RB::Heap *this, uint64_t a2)
{
  v4 = *(this + 3);
  v5 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v5 + 72 > v4)
  {
    v5 = RB::Heap::alloc_slow(this, 0x48uLL, 7);
  }

  else
  {
    *(this + 2) = v5 + 72;
  }

  *(v5 + 48) = 0;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *v5 = &unk_1F0A3E6B8;
  *(v5 + 56) = *a2;
  result = *(a2 + 8);
  *(v5 + 64) = result;
  *(v5 + 68) = *(a2 + 12);
  return result;
}

unsigned __int8 *RB::DisplayList::FilterStyle<RB::Filter::Distance>::draw(void *a1, RB::DisplayList::Builder *a2, RB::DisplayList::Layer *a3, RB::DisplayList::Item *a4, char a5)
{
  v10 = a1[2];
  v11 = a1[3];
  RB::Heap::emplace<RB::DisplayList::GenericFilter<RB::Filter::Distance>,RB::Filter::Distance const&,RB::DisplayList::Builder &>((*(a2 + 1) + 16), (a1 + 7));
  result = RB::DisplayList::Builder::apply_filter_(a2, a4, v12, v10, v11);
  if (result)
  {
    *(result + 2) = a1[4];

    return RB::DisplayList::Builder::draw(a2, result, a3, a5);
  }

  return result;
}

float RB::Heap::emplace<RB::DisplayList::GenericFilter<RB::Filter::Distance>,RB::Filter::Distance const&,RB::DisplayList::Builder &>(RB::Heap *this, uint64_t a2)
{
  v4 = *(this + 3);
  v5 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v5 + 48 > v4)
  {
    v5 = RB::Heap::alloc_slow(this, 0x30uLL, 7);
  }

  else
  {
    *(this + 2) = v5 + 48;
  }

  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *v5 = &unk_1F0A3E740;
  *(v5 + 32) = *a2;
  result = *(a2 + 8);
  *(v5 + 40) = result;
  *(v5 + 44) = *(a2 + 12);
  return result;
}

void RB::Device::make_render_pipeline_descriptor(RB::FormattedRenderState,objc_object  {objcproto10MTLLibrary}*,objc_object  {objcproto16MTLBinaryArchive}*,MTLRenderPipelineDescriptor *,RB::JSONPipelineData *,RB::objc_ptr<MTLFunctionConstantValues *> *)::$_0::operator()<RB::anonymous namespace::shader_description::Fn,MTLFunctionDescriptor *>(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  [a4 setName:*a3];
  if (*(a3 + 8) == 1)
  {
    v11 = *(*a1 + 2);
    v18 = **a1;
    v19 = v11;
    RB::FormattedRenderState::ID::formatted(&v18, v10, v20);
    snprintf(__str, 0x100uLL, "%c%s", a2, v20);
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:__str];
    [a4 setSpecializedName:v12];
    [a4 setConstantValues:a1[1]];
  }

  if (a1[2])
  {
    v17 = a1[2];
    [a4 setBinaryArchives:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v17, 1)}];
  }

  v13 = 0;
  *__str = 0;
  do
  {
    v14 = [a1[3] newFunctionWithDescriptor:a4 error:__str];

    if (v14)
    {
      v15 = 1;
    }

    else
    {
      v15 = v13 >= 2;
    }

    ++v13;
  }

  while (!v15);
  [v14 setLabel:{objc_msgSend(a4, "specializedName")}];
  if (a2 == 118)
  {
    v16 = "vertex function";
  }

  else
  {
    v16 = "fragment function";
  }

  *a5 = v14;
}

void RB::anonymous namespace::check_error(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v31 = *MEMORY[0x1E69E9840];
  v17 = a4;
  v18 = a5;
  if (a1)
  {
    v7 = RB::verbose_mode(2);
    if (a2 && v7)
    {
      v8 = RB::error_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = RB::RenderState::name(&v17);
        v19 = v17;
        v20 = v18;
        RB::FormattedRenderState::ID::formatted(&v19, v10, &v21);
        v11 = [a2 localizedDescription];
        *buf = 136315906;
        v24 = a3;
        v25 = 2080;
        v26 = v9;
        v27 = 2080;
        v28 = &v21;
        v29 = 2112;
        v30 = v11;
        _os_log_error_impl(&dword_195CE8000, v8, OS_LOG_TYPE_ERROR, "shader warning: %s, %s-%s: %@", buf, 0x2Au);
      }
    }
  }

  else
  {
    v12 = RB::RenderState::name(&v17);
    v21 = v17;
    v22 = v18;
    RB::FormattedRenderState::ID::formatted(&v21, v13, buf);
    if (a2)
    {
      v16 = [objc_msgSend(a2 "localizedDescription")];
      RB::non_fatal_precondition_failure("%s error: %s-%s: %s", v15, a3, v12, buf, v16);
    }

    else
    {
      RB::non_fatal_precondition_failure("%s error: %s-%s: nil", v14, a3, v12, buf);
    }
  }
}

uint64_t RB::FormattedRenderState::ID::formatted@<X0>(uint64_t this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = a3 + 2;
  do
  {
    v8 = *(this + v3);
    if (v6 == (v8 & 0xF))
    {
      v9 = v5 + 1;
    }

    else if (v5)
    {
      a2 = v4 + 1;
      v4[a3] = v6 + 97;
      if (v5 == 1)
      {
        v9 = 1;
        v6 = v8 & 0xF;
        ++v4;
      }

      else
      {
        v10 = &v4[a3];
        v11 = -1;
        do
        {
          v12 = v5;
          *++v10 = (v5 % 0xAu) | 0x30;
          --v11;
          LOBYTE(v5) = v5 / 0xAu;
        }

        while (v12 > 9);
        v13 = &v4[-v11];
        v9 = 1;
        if (v11 != -1)
        {
          a2 += a3;
          if (v10 > a2)
          {
            v14 = &v4[v7];
            do
            {
              v15 = *(v14 - 1);
              a2 = *v10;
              *(v14 - 1) = a2;
              *v10-- = v15;
              v16 = v14++ >= v10;
            }

            while (!v16);
            v9 = 1;
          }
        }

        v6 = v8 & 0xF;
        v4 = v13;
      }
    }

    else
    {
      v9 = 1;
      v6 = v8 & 0xF;
    }

    if (v6 == v8 >> 4)
    {
      v5 = v9 + 1;
    }

    else
    {
      v17 = v8 >> 4;
      if (v9)
      {
        v4[a3] = v6 + 97;
        if (v9 == 1)
        {
          v5 = 1;
          v6 = v17;
          ++v4;
        }

        else
        {
          v18 = &v4[a3];
          v19 = -1;
          do
          {
            v20 = v9;
            *++v18 = (v9 % 0xAu) | 0x30;
            --v19;
            LOBYTE(v9) = v9 / 0xAu;
          }

          while (v20 > 9);
          a2 = &v4[-v19];
          v5 = 1;
          if (v19 != -1 && v18 > &v4[a3 + 1])
          {
            v21 = &v4[v7];
            do
            {
              v22 = *(v21 - 1);
              *(v21 - 1) = *v18;
              *v18-- = v22;
              v16 = v21++ >= v18;
            }

            while (!v16);
            v5 = 1;
          }

          v6 = v17;
          v4 = a2;
        }
      }

      else
      {
        v5 = 1;
        v6 = v17;
      }
    }

    ++v3;
  }

  while (v3 != 12);
  if (v5)
  {
    v23 = v4 + 1;
    v4[a3] = v6 + 97;
    v24 = v4 + 1;
    if (v5 != 1)
    {
      v25 = 0;
      v26 = &v4[a3];
      do
      {
        v27 = v5;
        *++v26 = (v5 % 0xAu) | 0x30;
        --v25;
        LOBYTE(v5) = v5 / 0xAu;
      }

      while (v27 > 9);
      v24 = &v23[-v25];
      if (v25)
      {
        if (v26 > &v23[a3])
        {
          v28 = &v4[a3 + 2];
          do
          {
            v29 = *(v28 - 1);
            *(v28 - 1) = *v26;
            *v26-- = v29;
            v16 = v28++ >= v26;
          }

          while (!v16);
        }
      }
    }
  }

  else
  {
    v24 = v4;
  }

  v24[a3] = 0;
  if ((v24 + 1) >= 0x1A)
  {
    RB::FormattedRenderState::ID::formatted(this, a2);
  }

  return this;
}

uint64_t RB::Device::RenderPipelineEntry::RenderPipelineEntry(uint64_t a1, uint64_t a2, int a3, id *a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  v5 = *a4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = v5;
  *(a1 + 46) = 0;
  return a1;
}

float RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Color>::min_scale(uint64_t a1)
{
  result = 0.0;
  if (*(a1 + 108) >= 2u && *(a1 + 109) == 1)
  {
    return 1.0;
  }

  return result;
}

float32x2_t RB::Filter::Distance::apply_transform(float32x2_t *a1, float64x2_t *a2)
{
  result = vmul_n_f32(*a1, RB::AffineTransform::scale(a2 + 68));
  *a1 = result;
  return result;
}

void RB::DisplayList::LayerClip::~LayerClip(RB::DisplayList::LayerClip *this)
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

uint64_t RB::srgb_colorspace(RB *this)
{
  if ((atomic_load_explicit(&qword_1ED6D54A0, memory_order_acquire) & 1) == 0)
  {
    RB::srgb_colorspace();
  }

  return qword_1ED6D5498;
}

__n128 __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  result = *(a2 + 56);
  *(a1 + 56) = result;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  return result;
}

__n128 __Block_byref_object_copy__0(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  result = *(a2 + 72);
  *(a1 + 72) = result;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  return result;
}

id __copy_helper_block_e8_56c66_ZTSN2RB8objc_ptrIPU29objcproto18RBDrawableDelegate11objc_objectEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 56);
  *(a1 + 56) = result;
  return result;
}

double RB::Filter::Distance::dod(RB::Filter::Distance *this, float32x2_t *a2, double result, int32x4_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8)
{
  if ((*(this + 3) & 0x1E00) != 0x800)
  {
    result = *this;
    LODWORD(v8) = HIDWORD(*this);
    if (COERCE_FLOAT(*this) >= v8)
    {
      *&result = fmaxf(*&result, v8);
      if (*&result > 0.0)
      {
        *a6.i8 = *a2;
        *a5.i8 = a2[1];
        *a4.i8 = vcgt_f32(vneg_f32(0x80000000800000), *a5.i8);
        *a7.i8 = vsub_f32(*a2, vdup_lane_s32(*&result, 0));
        v9 = vcltzq_s32(a4);
        *&v10 = vbslq_s8(v9, a7, a6).u64[0];
        *a8.i8 = vmla_n_f32(*a5.i8, 0x4000000040000000, *&result);
        *&result = vbslq_s8(v9, a8, a5).u64[0];
        *(&v10 + 1) = result;
        *a2->f32 = v10;
      }
    }

    else
    {
      result = 7.29112205e-304;
      *a2 = 0x100000001000000;
      a2[1] = vneg_f32(0x80000000800000);
    }
  }

  return result;
}

float32x2_t *RB::Filter::Distance::render(float32x2_t *result, uint64_t a2, uint64_t a3)
{
  v4 = vceqz_f32(*result);
  v5 = vpmin_u32(v4, v4);
  v6 = result[1].i32[1];
  if ((v6 & 0x1E00) != 0x800 && v5.i32[0] >= 0 || (v6 & 0x1E) != 0)
  {
    v9 = result;
    if ((v6 & 0x1E00) != 0x200)
    {
      RB::Coverage::set_plane_tri(&v34, a3, v5);
      v10.i32[0] = 0;
      memset(&v35[12], 0, 36);
      v11 = 31;
      if (*(a3 + 132) == 2)
      {
        v11 = 131103;
      }

      v12 = (v11 | (((v9[1].i32[1] & 0x1E00) == 2048) << 18));
      v13 = *(a3 + 176);
      v14 = vceq_s32(v13, 0x8000000080000000);
      v15 = vdup_lane_s32(vcgt_s32(v10, vpmin_u32(v14, v14)), 0);
      v16 = vbsl_s8(v15, vneg_f32(0x80000000800000), vcvt_f32_s32(v13));
      v17 = vbsl_s8(v15, 0x100000001000000, vcvt_f32_s32(*(a3 + 168)));
      __asm { FMOV            V1.2S, #1.0 }

      v21 = vadd_f32(v17, _D1);
      __asm { FMOV            V1.2S, #-1.0 }

      *&v35[20] = v21;
      *&v35[28] = vadd_f32(vadd_f32(v17, _D1), v16);
      RB::RenderFrame::alloc_buffer_region(*(*a3 + 16), 0x40, 4uLL, 0, &v37);
      v23 = v37;
      if (v37)
      {
        v24 = (*(v37 + 7) + v38.i64[0]);
        v25 = v34;
        v26 = *v35;
        v27 = *&v35[32];
        v24[2] = *&v35[16];
        v24[3] = v27;
        *v24 = v25;
        v24[1] = v26;
      }

      else
      {
        v37 = 0;
        v38 = 0uLL;
      }

      *(a3 + 192) = RB::RenderFrame::buffer_id(*(*a3 + 16), v23);
      *(a3 + 196) = vmovn_s64(v38);
      RB::RenderPass::draw_indexed_primitives(a3, v12, 4, **(*a3 + 16) + 136, 3uLL, 1uLL, 0xC0000001C0000001, 0x7FFFFFFF7FFFFFFFLL);
    }

    operator new();
  }

  if ((*(*a3 + 11) & 8) == 0)
  {
    RB::Coverage::set_plane(&v34, a3, v5);
    *&v35[12] = 0x3C003C003C003C00;
    if (*(a3 + 132) == 2)
    {
      v28 = 8519708;
    }

    else
    {
      v28 = 8388636;
    }

    RB::RenderFrame::alloc_buffer_region(*(*a3 + 16), 0x44, 4uLL, 0, &v37);
    v29 = v37;
    if (v37)
    {
      v30 = *(v37 + 7) + v38.i64[0];
      v31 = *&v35[32];
      v32 = *&v35[16];
      v33 = *v35;
      *(v30 + 64) = v36;
      *(v30 + 32) = v32;
      *(v30 + 48) = v31;
      *(v30 + 16) = v33;
      *v30 = v34;
    }

    else
    {
      v37 = 0;
      v38 = 0uLL;
    }

    *(a3 + 192) = RB::RenderFrame::buffer_id(*(*a3 + 16), v29);
    *(a3 + 196) = vmovn_s64(v38);
    return RB::RenderPass::draw_indexed_primitives(a3, v28, 4, **(*a3 + 16) + 136, 4uLL, 1uLL, 0xC0000001C0000001, 0x7FFFFFFF7FFFFFFFLL);
  }

  return result;
}

void RB::Filter::RenderGroup::resolve_binary_subgroup(uint64_t a1, int32x2_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  v54 = *MEMORY[0x1E69E9840];
  i = *(a3 + 64);
  v9 = *(a3 + 76);
  v10 = vmax_s32(a2[13], 0x40000000400);
  RB::BinPacker::BinPacker(v52, v10.i32[0], v10.i32[1]);
  do
  {
    RB::BinPacker::add(v52, v6[7], HIDWORD(v6[7]), v6, 0);
    v6 = *v6;
  }

  while (v6);
  RB::BinPacker::pack(v52);
  v11 = *(*a2 + 16);
  v51[0] = **a2;
  v51[1] = v11;
  BYTE11(v51[0]) = BYTE11(v51[0]) & 0xF0 | ((RB::pixel_format_traits(i, v12)[1] & 2) != 0);
  v13 = a2[21];
  v14 = a2[22];
  v15 = v53;
  if (v53)
  {
    v16 = a2[1];
    v42 = v9;
    v43 = i;
    while (1)
    {
      RB::RenderFrame::flush_pass(*(*a2 + 16), a2, 1);
      v17 = *v15;
      v18.n128_u64[0] = *v15;
      RB::RenderFrame::alloc_texture(*(*a2 + 16), i, 1u, v9, 1, 0, &v50, v18);
      v19.n128_u64[0] = v17;
      RB::RenderFrame::alloc_texture(*(*a2 + 16), i, 1u, v9, 1, 0, &v49, v19);
      v20 = v50;
      if (!v50)
      {
        goto LABEL_35;
      }

      v21 = v49;
      if (v49)
      {
        break;
      }

LABEL_39:
      v41 = *(v20 + 2) - 1;
      *(v20 + 2) = v41;
      if (!v41)
      {
        (*(*v20 + 8))(v20);
      }

LABEL_41:
      v15 = v15[3];
      if (!v15)
      {
        goto LABEL_42;
      }
    }

    if ((BYTE11(v51[0]) & 8) != 0)
    {
      *(v50 + 77) |= 8u;
      *(v21 + 77) |= 8u;
    }

    v22 = 0;
    v44 = v4 & 0xFFFFFFF0;
    while (1)
    {
      v23 = v50;
      if (v22)
      {
        v24 = v49;
      }

      else
      {
        v24 = v50;
      }

      if ((v22 & 1) == 0)
      {
        v23 = v49;
      }

      v25 = v22 ? v23 : v16;
      v26.n128_f64[0] = RB::RenderPass::RenderPass(v45, v51, v24, 0, 1, 3, 0);
      RB::RenderPass::set_extra_attachments(v45, (v4 & 0xF0), v26);
      v29 = v15[2];
      if (!v29)
      {
        break;
      }

      v30 = 0;
      do
      {
        v31 = v29[2];
        if ((*(v31 + 78) & 1) == 0)
        {
          v32 = *v29;
          v47 = v29[4];
          v48 = v32;
          v28.n128_u64[0] = v29[4];
          if (!v22)
          {
            v28.n128_u64[0] = *(v31 + 32);
          }

          v27.n128_u64[0] = v29[4];
          v33 = (*(**(v31 + 16) + 16))(*(v31 + 16), a4, v45, v22, v25, v27, v28);
          *(v31 + 78) = v33 & 1;
          *(v31 + 72) = v22;
          v46 = v46 + 1.0;
          v30 |= v33 ^ 1;
        }

        v29 = v29[5];
      }

      while (v29);
      RB::RenderPass::~RenderPass(v45);
      v22 = (v22 + 1);
      if ((v30 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    RB::RenderPass::~RenderPass(v45);
LABEL_30:
    v34 = v15[2];
    v9 = v42;
    for (i = v43; v34; v34 = *(v34 + 40))
    {
      v35 = *(v34 + 16);
      v36 = *(v35 + 48);
      a2[21] = *(v35 + 40);
      a2[22] = v36;
      v37 = (*(v35 + 72) + 1);
      v38 = &v50;
      if (*(v35 + 72))
      {
        v38 = &v49;
      }

      (*(**(v35 + 16) + 16))(*(v35 + 16), a4, a2, v37, *v38, *(v35 + 32), *(v34 + 32));
      *(v35 + 72) = v37;
      *a2[15].i32 = *a2[15].i32 + 1.0;
    }

    RB::Texture::make_aliasable(v50);
    v4 = v44;
    RB::Texture::make_aliasable(v49);
LABEL_35:
    v39 = v49;
    if (v49)
    {
      v40 = *(v49 + 2) - 1;
      *(v49 + 2) = v40;
      if (!v40)
      {
        (*(*v39 + 8))(v39);
      }
    }

    v20 = v50;
    if (!v50)
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

LABEL_42:
  a2[21] = v13;
  a2[22] = v14;
  RB::Heap::~Heap(v52);
}

BOOL RB::Filter::anonymous namespace::DistanceRenderer::render(uint64_t a1, int32x2_t a2, int32x2_t a3, uint64_t a4, uint64_t a5, uint64_t a6, RB::Texture *a7)
{
  v8 = *(a1 + 52);
  if (v8 > 0xA)
  {
    goto LABEL_81;
  }

  v13 = 1 << v8;
  if ((v13 & 0x66C) != 0)
  {
    RB::Coverage::set_plane(&v77, a5, a2);
    v14 = 0;
    v15 = 0;
    *&v78[44] = 0;
    *&v78[12] = vcvt_f32_s32(vsub_s32(a3, a2));
    *&v78[20] = vcvt_f32_s32(a3);
    *&v78[28] = vcvt_f32_s32(vadd_s32(*(a1 + 32), a3));
    v16 = *(a1 + 52);
    v17 = v16 & 0xF;
    if (v16 <= 3)
    {
      if (v16 == 2)
      {
        *&v78[44] = 1065353216;
        *(a1 + 52) = 3;
        v15 = RB::Device::distance_texture(**(*a5 + 16));
        v14 = 0;
        v17 = 2;
        goto LABEL_65;
      }

      if (v16 == 3)
      {
        *&v78[44] = *(a1 + 44);
        v20 = *&v78[44] * 0.5;
        *(a1 + 44) = *&v78[44] * 0.5;
        if (v20 <= 0.75)
        {
          v53 = *(*(a1 + 8) + 12);
          if ((v53 & 0x1Eu) > 8 || ((1 << (v53 & 0x1E)) & 0x154) == 0)
          {
            v15 = 0;
            v14 = 0;
            *(a1 + 52) = 5;
          }

          else
          {
            if (*(a1 + 48) < 1)
            {
              v15 = 0;
              if ((v53 & 0x1E00) == 0x800)
              {
                v55 = 10;
              }

              else
              {
                v55 = 9;
              }
            }

            else
            {
              v15 = 0;
              v55 = 7;
            }

            *(a1 + 52) = v55;
            v14 = 1;
          }

          v17 = 4;
        }

        else
        {
          v15 = 0;
          v14 = 0;
          v17 = 3;
        }

        goto LABEL_65;
      }

      if (v16 >= 2)
      {
LABEL_65:
        if (*(a5 + 132) == 2)
        {
          v56 = 131103;
        }

        else
        {
          v56 = 31;
        }

        RB::RenderFrame::alloc_buffer_region(*(*a5 + 16), 0x40, 4uLL, 0, &v85);
        v57 = v85;
        if (v85)
        {
          v58 = (*(v85 + 7) + v86.i64[0]);
          v59 = v77;
          v60 = *v78;
          v61 = *&v78[32];
          v58[2] = *&v78[16];
          v58[3] = v61;
          *v58 = v59;
          v58[1] = v60;
        }

        else
        {
          v85 = 0;
          v86 = 0uLL;
        }

        *(a5 + 192) = RB::RenderFrame::buffer_id(*(*a5 + 16), v57);
        *(a5 + 196) = vmovn_s64(v86);
        RB::RenderPass::set_texture(a5, 0, a7, MTLPixelFormatInvalid);
        RB::RenderPass::set_texture(a5, 1, v15, MTLPixelFormatInvalid);
        RB::RenderPass::draw_indexed_primitives(a5, (v56 | (v17 << 18)), 4, **(*a5 + 16) + 136, 4uLL, 1uLL, 0xC0000001C0000001, 0x7FFFFFFF7FFFFFFFLL);
        if (v14)
        {
          v62 = *(a1 + 24);
          v63 = *(a1 + 32);
          *&v78[12] = vcvt_f32_s32(vsub_s32(v62, a2));
          *&v78[20] = vadd_f32(vcvt_f32_s32(v62), 0x3F0000003F000000);
          *&v78[28] = vadd_f32(vcvt_f32_s32(vadd_s32(v63, v62)), 0xBF000000BF000000);
          v64 = *(a1 + 8);
          LODWORD(v65) = HIDWORD(*v64);
          if (COERCE_FLOAT(*v64) == v65)
          {
            v66 = 0x3F0000003F800000;
          }

          else
          {
            *&v66 = 1.0 / (COERCE_FLOAT(*v64) - v65);
            *&v78[36] = v66;
            *(&v66 + 1) = *&v66 * COERCE_FLOAT(*v64);
          }

          *&v78[36] = v66;
          RB::RenderFrame::alloc_buffer_region(*(*a5 + 16), 0x40, 4uLL, 0, &v85);
          v67 = v85;
          if (v85)
          {
            v68 = (*(v85 + 7) + v86.i64[0]);
            v69 = v77;
            v70 = *v78;
            v71 = *&v78[32];
            v68[2] = *&v78[16];
            v68[3] = v71;
            *v68 = v69;
            v68[1] = v70;
          }

          else
          {
            v85 = 0;
            v86 = 0uLL;
          }

          *(a5 + 192) = RB::RenderFrame::buffer_id(*(*a5 + 16), v67);
          *(a5 + 196) = vmovn_s64(v86);
          RB::RenderPass::set_texture(a5, 0, *(a1 + 16), MTLPixelFormatInvalid);
          RB::RenderPass::draw_indexed_primitives(a5, (v56 | 0x180000u), 4, **(*a5 + 16) + 136, 4uLL, 1uLL, 0xC0000001C0000001, 0x7FFFFFFF7FFFFFFFLL);
          *(a5 + 240) = 0;
          *(a5 + 244) = 0;
        }

        *(a5 + 248) = 0;
        *(a5 + 252) = 0;
        goto LABEL_80;
      }
    }

    else
    {
      if (v16 > 0xA)
      {
        goto LABEL_65;
      }

      if (((1 << v16) & 0x600) != 0)
      {
        v14 = 0;
        v15 = 0;
        *&v78[44] = 1065353216;
        v18 = *(*(a1 + 8) + 12) & 0x1E;
        if (v18 > 5)
        {
          if (v18 == 6)
          {
            v15 = 0;
            v14 = 0;
            v19 = 1065353216;
            goto LABEL_54;
          }

          if (v18 == 8)
          {
            v15 = 0;
            v14 = 0;
            v19 = 3212836864;
            goto LABEL_54;
          }
        }

        else
        {
          if (v18 == 2)
          {
            v15 = 0;
            v14 = 0;
            *&v19 = 0.0000305175853;
            goto LABEL_54;
          }

          if (v18 == 4)
          {
            v15 = 0;
            v14 = 0;
            *&v19 = --0.0000305175998;
LABEL_54:
            *&v78[36] = v19;
            goto LABEL_65;
          }
        }

        goto LABEL_65;
      }

      if (v16 == 5)
      {
        v48 = *(a1 + 8);
        LODWORD(v49) = HIDWORD(*v48);
        v15 = 0;
        v14 = 0;
        if (COERCE_FLOAT(*v48) == v49)
        {
          *&v78[36] = 0x3F0000003F800000;
        }

        else
        {
          *&v50 = 1.0 / (COERCE_FLOAT(*v48) - v49);
          *&v78[36] = v50;
          *(&v50 + 1) = *&v50 * COERCE_FLOAT(*v48);
          *&v78[36] = v50;
        }

        v17 = 5;
        goto LABEL_65;
      }

      if (((1 << v16) & 0x1D0) == 0)
      {
        goto LABEL_65;
      }
    }

LABEL_58:
    abort();
  }

  if ((v13 & 0x180) == 0)
  {
    goto LABEL_58;
  }

  RB::Coverage::set_plane(&v77, a5, a2);
  __asm { FMOV            V0.2S, #1.0 }

  *&v78[12] = _D0;
  *&v78[20] = vcvt_f32_s32(vsub_s32(a3, a2));
  *&v78[28] = vadd_f32(vcvt_f32_s32(a3), 0x3F0000003F000000);
  *&v78[36] = vadd_f32(vcvt_f32_s32(vadd_s32(*(a1 + 32), a3)), 0xBF000000BF000000);
  v25 = *(a1 + 52);
  v27 = RB::Filter::NarrowBlurKernel::max_kernel_15(v26);
  v28 = 0;
  v29 = (v27 + 36);
  v30 = 60;
  v31 = 124;
  do
  {
    if (v25 == 7)
    {
      v32 = &v78[8 * v28 + 44];
      LODWORD(v33) = *v29;
      *&v78[v30 - 16] = *v29;
      v34 = 0;
    }

    else
    {
      v32 = &v78[v30 - 16];
      LODWORD(v33) = 0;
      *&v78[v30 - 16] = 0;
      v34 = *v29;
    }

    HIDWORD(v33) = v34;
    *v32 = v33;
    *&v78[v31 - 16] = *(v29 - 8);
    ++v28;
    ++v29;
    v30 += 8;
    v31 += 4;
  }

  while (v30 != 124);
  if ((*(*(a1 + 8) + 12) & 0x1E00) == 0x800)
  {
    v35 = 960;
  }

  else
  {
    v35 = 512;
  }

  v36 = v35 & 0xFFFFFFF0 | *(v27 + 72) & 0xF;
  if (*(a5 + 132) == 2)
  {
    v37 = 131102;
  }

  else
  {
    v37 = 30;
  }

  v38 = (v37 | (v36 << 18));
  RB::RenderFrame::alloc_buffer_region(*(*a5 + 16), 0xA0, 4uLL, 0, &v85);
  v39 = v85;
  if (v85)
  {
    v40 = (*(v85 + 7) + v86.i64[0]);
    v41 = v77;
    v40[1] = *v78;
    v42 = v80;
    v43 = *&v78[32];
    v44 = *&v78[16];
    v40[4] = v79;
    v40[5] = v42;
    v40[2] = v44;
    v40[3] = v43;
    v45 = v84;
    v46 = v82;
    v47 = v81;
    v40[8] = v83;
    v40[9] = v45;
    v40[6] = v47;
    v40[7] = v46;
    *v40 = v41;
  }

  else
  {
    v85 = 0;
    v86 = 0uLL;
  }

  *(a5 + 192) = RB::RenderFrame::buffer_id(*(*a5 + 16), v39);
  *(a5 + 196) = vmovn_s64(v86);
  RB::RenderPass::set_texture(a5, 0, a7, MTLPixelFormatInvalid);
  RB::RenderPass::draw_indexed_primitives(a5, v38, 4, **(*a5 + 16) + 136, 4uLL, 1uLL, 0xC0000001C0000001, 0x7FFFFFFF7FFFFFFFLL);
  if (v25 == 7)
  {
    v51 = 8;
  }

  else
  {
    v52 = *(a1 + 48);
    _VF = __OFSUB__(v52--, 1);
    *(a1 + 48) = v52;
    if ((v52 < 0) ^ _VF | (v52 == 0))
    {
      if ((*(*(a1 + 8) + 12) & 0x1E00) == 0x800)
      {
        v51 = 10;
      }

      else
      {
        v51 = 9;
      }
    }

    else
    {
      v51 = 7;
    }
  }

  *(a1 + 52) = v51;
LABEL_80:
  *(a5 + 240) = 0;
  *(a5 + 244) = 0;
LABEL_81:
  v72 = *(*(a1 + 8) + 12) & 0x1E;
  v73 = v72 > 8;
  v74 = (1 << v72) & 0x154;
  if (v73 || v74 == 0)
  {
    return *(a1 + 52) == 5;
  }

  else
  {
    return (*(a1 + 52) - 9) < 2;
  }
}

void sub_195D2DF5C(_Unwind_Exception *a1)
{
  *(v1 + 240) = 0;
  *(v1 + 244) = 0;
  _Unwind_Resume(a1);
}

void __Block_byref_object_dispose_(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 56);
}

void __Block_byref_object_dispose__0(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 56);
}

_DWORD *__Block_byref_object_dispose__3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    v2 = result[2] - 1;
    result[2] = v2;
    if (!v2)
    {
      return (*(*result + 8))();
    }
  }

  return result;
}

void RB::Drawable::finish(RB::Drawable *this)
{
  if (*(this + 3))
  {
    os_unfair_lock_lock(this + 4);
    if (*(this + 3))
    {
      v2 = 0;
      do
      {
        dispatch_semaphore_wait(*(this + 3), 0xFFFFFFFFFFFFFFFFLL);
        ++v2;
        v3 = *(this + 3);
      }

      while (v2 < v3);
      if (v3)
      {
        v4 = 0;
        do
        {
          dispatch_semaphore_signal(*(this + 3));
          ++v4;
        }

        while (v4 < *(this + 3));
      }
    }

    os_unfair_lock_unlock(this + 4);
  }
}

uint64_t RB::Refcount<RB::Drawable,std::atomic<unsigned int>>::finalize(uint64_t result)
{
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void RB::Drawable::~Drawable(RB::Drawable *this)
{
  *this = &unk_1F0A38358;
  v2 = *(this + 6);
  if (v2 && atomic_fetch_add_explicit((v2 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    RB::Drawable::end_frame(v2);
  }

  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    MEMORY[0x19A8C09E0](v3, 0x1000C40B2834900);
  }

  JUMPOUT(0x19A8C09E0);
}

{
  *this = &unk_1F0A38358;
  v2 = *(this + 6);
  if (v2 && atomic_fetch_add_explicit((v2 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    RB::Drawable::end_frame(v2);
  }

  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    MEMORY[0x19A8C09E0](v3, 0x1000C40B2834900);
  }
}

RB::XML::DisplayList *RBDrawingStateAddShaderFilter(__n128 *a1, char *a2, float64x2_t *a3, const CGRect *a4, CGFloat a5, CGFloat a6)
{
  v36 = *MEMORY[0x1E69E9840];
  v10 = a1->n128_u64[1];
  if (!v10[3])
  {
    make_contents(a1->n128_i64[1]);
  }

  v24 = 0uLL;
  if (a3)
  {
    v11 = vcvt_f32_f64(a3[1]);
    *&v24 = vcvt_f32_f64(*a3);
    *(&v24 + 1) = v11;
  }

  v12 = a4 & 0xF;
  if ((a4 & 0xF) == 0 || v12 == 2)
  {
    v17 = (a4 >> 2) & 0x40;
    if ((a4 & 0x80) != 0)
    {
      v17 = 16;
    }

    v18 = (a4 >> 3) & 8 | (a4 >> 2) & 4 | v17;
    v19 = [(RBShader *)a2 rb_closure];
    v20.f64[0] = a5;
    v20.f64[1] = a6;
    RB::DisplayList::State::add_custom_effect(a1, (v10 + 2), v19, 0, &v24, v18 | v12, COERCE_DOUBLE(vcvt_f32_f64(v20)), 0.0);
  }

  else
  {
    if (v12 != 1)
    {
      RB::precondition_failure("invalid shader filter type", a2);
    }

    v13 = [(RBShader *)a2 rb_closure];
    v25 = (a4 >> 1) & 8 | (a4 >> 5) & 1;
    RB::CustomShader::Closure::Closure(&v26, v13);
    v31 = xmmword_195E42760;
    v32 = xmmword_195E42770;
    v33 = 0;
    v34 = 0;
    v35 = v24;
    RB::DisplayList::State::add_filter_style<RB::Filter::Custom>(a1, (v10 + 2), &v25);

    v14 = v28;
    if (v28)
    {
      v15 = v28;
    }

    else
    {
      v15 = &v27;
    }

    if (v29)
    {
      for (i = 0; i < v29; ++i)
      {
        RB::CustomShader::Value::reset_data(v15);
        v15 += 4;
      }

      v14 = v28;
    }

    if (v14)
    {
      free(v14);
    }

    if (v26 && atomic_fetch_add_explicit((v26 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      RBDrawingStateAddShaderFilter_cold_1();
    }
  }

  result = v10[40];
  if (result)
  {
    v37.width = a5;
    v37.height = a6;
    RB::XML::DisplayList::add_shader_filter(result, a1, a2, 0, v37, a3, a4);
  }

  return result;
}

void sub_195D2E4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  RB::Filter::Custom::~Custom(va);
  _Unwind_Resume(a1);
}

double RB::DisplayList::State::add_filter_style<RB::Filter::Custom>(__n128 *a1, RB::DisplayList::Builder *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  v7 = ((v6[4] + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7 + 304 > v6[5])
  {
    v7 = RB::Heap::alloc_slow(v6 + 2, 0x130uLL, 15);
  }

  else
  {
    v6[4] = v7 + 304;
  }

  RB::DisplayList::FilterStyle<RB::Filter::Custom>::FilterStyle<RB::Filter::Custom>(v7, a3);

  *&result = RB::DisplayList::State::add_style(a1, a2, v7).n128_u64[0];
  return result;
}

uint64_t RB::DisplayList::FilterStyle<RB::Filter::Custom>::FilterStyle<RB::Filter::Custom>(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = &unk_1F0A3D330;
  *(a1 + 64) = *a2;
  *(a1 + 72) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 4;
  v4 = *(a2 + 152);
  *(a1 + 208) = *(a2 + 144);
  *(a1 + 216) = v4;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  v5 = *(a1 + 224);
  *(a1 + 224) = *(a2 + 160);
  *(a2 + 160) = v5;
  RB::vector<RB::CustomShader::Value,4ul,unsigned long>::swap_inline((a1 + 80), (a2 + 16));
  *(a1 + 232) = *(a2 + 168);
  *(a2 + 168) = 0;
  v6 = *(a2 + 176);
  v7 = *(a2 + 192);
  v8 = *(a2 + 224);
  *(a1 + 272) = *(a2 + 208);
  *(a1 + 288) = v8;
  *(a1 + 240) = v6;
  *(a1 + 256) = v7;
  return a1;
}

void sub_195D2E648(_Unwind_Exception *a1)
{
  RB::vector<RB::CustomShader::Value,4ul,unsigned long>::~vector(v1 + 80);
  v3 = *(v1 + 72);
  if (v3)
  {
    RB::DisplayList::FilterStyle<RB::Filter::Custom>::FilterStyle<RB::Filter::Custom>(v3);
  }

  _Unwind_Resume(a1);
}

__int128 *RB::vector<RB::CustomShader::Value,4ul,unsigned long>::swap_inline(__int128 *result, __int128 *a2)
{
  v2 = *(a2 + 16);
  v3 = *(result + 16);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v15 = a2[4];
    v16 = a2[5];
    v17 = a2[6];
    v18 = a2[7];
    v11 = *a2;
    v12 = a2[1];
    v13 = a2[2];
    v14 = a2[3];
    v5 = result[4];
    v6 = result[5];
    v7 = result[7];
    a2[6] = result[6];
    a2[7] = v7;
    a2[4] = v5;
    a2[5] = v6;
    v8 = *result;
    v9 = result[1];
    v10 = result[3];
    a2[2] = result[2];
    a2[3] = v10;
    *a2 = v8;
    a2[1] = v9;
    result[2] = v13;
    result[3] = v14;
    *result = v11;
    result[1] = v12;
    result[6] = v17;
    result[7] = v18;
    result[4] = v15;
    result[5] = v16;
    if (v3)
    {
      if (v2)
      {
        return result;
      }
    }

    else
    {
      *(result + 16) = 0;
      if (v2)
      {
        return result;
      }
    }

    *(a2 + 16) = 0;
  }

  return result;
}

uint64_t RBShapeData::set_rendering_mode(uint64_t result, char a2)
{
  v2 = result;
  v3 = *result;
  if (*result > 2)
  {
    if (v3 == 3)
    {
      result = rb_clip_mode(a2);
      *(v2 + 92) = result;
    }

    else if (v3 == 5)
    {
      result = rb_clip_mode(a2);
      *(v2 + 52) = result;
    }
  }

  else if (v3 == 1)
  {
    v4 = result + 16;

    return RB::Coverage::Primitive::set_rendering_mode(v4, a2);
  }

  else if (v3 == 2)
  {
    *(result + 45) = a2;
  }

  return result;
}

uint64_t RB::Coverage::Primitive::set_rendering_mode(uint64_t result, int a2)
{
  *(result + 45) = a2;
  if ((a2 - 2) <= 2)
  {
    *(result + 46) &= ~4u;
  }

  return result;
}

double RB::DisplayList::FilterStyle<RB::Filter::Custom>::bounds(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v11[0] = RB::DisplayList::Style::next_bounds(a1, a2, a3, a4);
  v11[1] = v5;
  v8[0] = xmmword_195E42760;
  v8[1] = xmmword_195E42770;
  v9 = 0;
  v10 = 0;
  RB::Rect::move_identity(v11, v8);
  v6 = *(a1 + 24);
  if (v6)
  {
    RB::Rect::intersect(v11, *(v6 + 16), *(v6 + 24));
  }

  return *v11;
}

float32x2_t RB::DisplayList::Style::next_bounds(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    (*(**(a2 + 8) + 48))(*(a2 + 8), *a2, a3);
  }

  else
  {
    *&result = (*(*a3 + 136))(a3, a4);
    v8[0] = result;
    v8[1] = v6;
    v7 = a3[3];
    if (v7)
    {
      RB::Rect::intersect(v8, *(v7 + 16), *(v7 + 24));
      return v8[0];
    }
  }

  return result;
}

uint64_t *RBDrawingStateAddAlphaThresholdFilter2(uint64_t *a1, int a2, float a3, float a4, float a5, float a6, float a7, float a8)
{
  if (a4 >= 1.0)
  {
    a4 = INFINITY;
  }

  v9[0] = 3;
  *&v9[1] = a3;
  *&v9[2] = a4;
  *&v9[3] = a5;
  *&v9[4] = a6;
  *&v9[5] = a7;
  *&v9[6] = a8;
  v9[7] = a2;
  v9[8] = 0;
  return add_style(a1, v9);
}

RB::XML::DisplayList *RBDrawingStateAddColorMatrixFilter(__n128 *a1, float *a2, const float *a3)
{
  v6 = a1->n128_u64[1];
  if (!v6[3])
  {
    make_contents(a1->n128_i64[1]);
  }

  RB::ColorMatrix::set_color_matrix(v8, a2);
  RB::DisplayList::State::add_color_matrix_style(a1, (v6 + 2), v8, a3);
  result = v6[40];
  if (result)
  {
    RB::XML::DisplayList::add_color_matrix_filter(result, a1, a2, a3);
  }

  return result;
}

float16x4_t RB::ColorMatrix::set_color_matrix(float16x4_t *this, float32_t *a2)
{
  v2.f32[0] = *a2;
  v2.f32[1] = a2[5];
  v2.f32[2] = a2[10];
  v2.f32[3] = a2[15];
  *this = vcvt_f16_f32(v2);
  v2.f32[0] = a2[1];
  v2.f32[1] = a2[6];
  v2.f32[2] = a2[11];
  v2.f32[3] = a2[16];
  this[1] = vcvt_f16_f32(v2);
  v2.f32[0] = a2[2];
  v2.f32[1] = a2[7];
  v2.f32[2] = a2[12];
  v2.f32[3] = a2[17];
  this[2] = vcvt_f16_f32(v2);
  v2.f32[0] = a2[3];
  v2.f32[1] = a2[8];
  v2.f32[2] = a2[13];
  v2.f32[3] = a2[18];
  this[3] = vcvt_f16_f32(v2);
  v2.f32[0] = a2[4];
  v2.f32[1] = a2[9];
  v2.f32[2] = a2[14];
  v2.f32[3] = a2[19];
  result = vcvt_f16_f32(v2);
  this[4] = result;
  return result;
}

RB::DisplayList::Item *RB::DisplayList::FilterStyle<RB::Filter::ColorMatrix>::draw(void *a1, RB::DisplayList::Builder *this, RB::DisplayList::Layer *a3, RB::DisplayList::Item *a4, char a5)
{
  if (!a1[8] || (v10 = a1[2], v11 = a1[3], v12 = RB::Heap::emplace<RB::DisplayList::GenericFilter<RB::Filter::ColorMatrix>,RB::Filter::ColorMatrix const&,RB::DisplayList::Builder &>((*(this + 1) + 16), (a1 + 7), this), result = RB::DisplayList::Builder::apply_filter_(this, a4, v12, v10, v11), (a4 = result) != 0))
  {
    *(a4 + 2) = a1[4];

    return RB::DisplayList::Builder::draw(this, a4, a3, a5);
  }

  return result;
}

uint64_t RB::DisplayList::FilterStyle<RB::Filter::Custom>::~FilterStyle(uint64_t a1)
{
  v2 = *(a1 + 208);
  if (v2)
  {
    v3 = *(a1 + 208);
  }

  else
  {
    v3 = (a1 + 80);
  }

  if (*(a1 + 216))
  {
    v4 = 0;
    do
    {
      RB::CustomShader::Value::reset_data(v3);
      ++v4;
      v3 += 4;
    }

    while (v4 < *(a1 + 216));
    v2 = *(a1 + 208);
  }

  if (v2)
  {
    free(v2);
  }

  v5 = *(a1 + 72);
  if (v5 && atomic_fetch_add_explicit((v5 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    RB::CustomShader::Closure::operator=();
  }

  return a1;
}

uint64_t RB::DisplayList::LayerClip::prepare(uint64_t result)
{
  if ((*(result + 56) & 3) == 2)
  {
    return (*(*(*(result + 56) & 0xFFFFFFFFFFFFFFFCLL) + 112))();
  }

  return result;
}

BOOL RB::ColorMatrix::is_alpha_multiply(float16x4_t *this, char a2)
{
  if ((vminv_u16(vceqz_f16(*this)) & 0x8000) == 0 || (vminv_u16(vceqz_f16(this[1])) & 0x8000) == 0 || (vminv_u16(vceqz_f16(this[2])) & 0x8000) == 0)
  {
    return 0;
  }

  if (a2)
  {
    v4 = vceqz_f16(this[4]);
    v4.i16[0] = vminv_u16(v4);
    return (v4.i32[0] >> 15) & 1;
  }

  else
  {
    v2 = 0;
    __asm { FCMP            H0, #0 }

    if (_ZF)
    {
      __asm { FCMP            H1, #0 }

      if (_ZF)
      {
        __asm { FCMP            H0, #0 }

        if (_ZF)
        {
          __asm { FCMP            H0, #0 }

          return _ZF != 0;
        }
      }
    }
  }

  return v2;
}

unsigned __int8 *RB::DisplayList::AlphaThresholdStyle::draw(RB::DisplayList::AlphaThresholdStyle *this, size_t **a2, RB::DisplayList::Layer *a3, RB::DisplayList::Item *a4, char a5)
{
  if (*(this + 78) == 3)
  {
    v9 = 416;
  }

  else
  {
    v9 = 384;
  }

  v10 = RB::DisplayList::Builder::ensure_layer(a2, a4, v9, 0.0);
  v11 = *(this + 3);
  *(v10 + 2) = *(this + 4);
  *(v10 + 3) = RB::DisplayList::Builder::join_clip_lists(a2, *(v10 + 3), v11);
  v12 = a2[1];
  v13 = (v12[4] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v13 + 48 > v12[5])
  {
    v13 = RB::Heap::alloc_slow(v12 + 2, 0x30uLL, 7);
  }

  else
  {
    v12[4] = v13 + 48;
  }

  *v13 = &unk_1F0A3A208;
  v14 = *(this + 56);
  *(v13 + 32) = *(this + 9);
  *(v13 + 16) = v14;
  *(v13 + 40) = 1;
  v15 = 72;
  if ((*(v10 + 23) & 0xC0) == 0x40)
  {
    v15 = 56;
  }

  *(v10 + v15) = v13 | 2;

  return RB::DisplayList::Builder::draw(a2, v10, a3, a5);
}

uint64_t RB::Filter::ColorMatrix::can_discard_color(RB::Filter::ColorMatrix *this, BOOL *a2)
{
  v4 = *(this + 1);
  if (v4)
  {
    v5 = 1;
    v6 = (*(*v4 + 24))(v4, 1, *this);
    *a2 = v6;
    if ((v6 & 1) == 0)
    {
      v7 = *(this + 1);
      if (v7)
      {
        return (*(*v7 + 24))(v7, 5, *this) ^ 1;
      }
    }
  }

  else
  {
    v5 = 1;
    *a2 = 1;
  }

  return v5;
}

BOOL RB::ColorMatrix::is_alpha_identity(RB::ColorMatrix *this)
{
  __asm { FCMP            H0, #0 }

  if (!_ZF)
  {
    return 0;
  }

  __asm { FCMP            H0, #0 }

  if (!_ZF)
  {
    return 0;
  }

  __asm { FCMP            H0, #0 }

  if (!_ZF || *(this + 15) != COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
  {
    return 0;
  }

  __asm { FCMP            H0, #0 }

  return _ZF != 0;
}

BOOL RB::ColorMatrix::is_alpha_color_dependent(RB::ColorMatrix *this)
{
  __asm { FCMP            H0, #0 }

  if (!_ZF)
  {
    return 1;
  }

  __asm { FCMP            H0, #0 }

  if (!_ZF)
  {
    return 1;
  }

  __asm { FCMP            H0, #0 }

  return !_ZF;
}

unint64_t RB::DisplayList::GenericEffect<RB::AlphaThresholdEffect>::color_info(float16x4_t *a1, uint64_t a2)
{
  result = RB::Fill::Color::color_info(a1 + 3);
  *a2 = result;
  *(a2 + 4) = WORD2(result);
  return result;
}

void *RB::DisplayList::LayerItem::make_clip(void *result, uint64_t a2, uint64_t a3, void *a4, float a5)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = result[6];
  if (!v5)
  {
    return result;
  }

  v10 = result;
  if (*(a2 + 288) == 1 && (result[7] & 3) == 0 && !*(v5 + 32))
  {
    v11 = *(v5 + 76);
    if ((v11 & 0x1001) == 0 && (v11 & 0xC) == 0 && *(v5 + 64) == 0.0)
    {
      v23 = *(v5 + 16);
      if (v23)
      {
        if (!v23[1])
        {
          v24 = (*(*v23 + 80))(v23);
          v5 = v10[6];
          if (v24)
          {
            v25 = *(v5 + 16);
            v26 = *(v25 + 46);
            _ZF = (v26 & 0x3F) == 0x18 || (v26 & 0x3F) == 2;
            if (_ZF && (a5 == 1.0 || !*(v25 + 24)))
            {
              v28 = v26 & 0xC0;
              if (a3)
              {
                if (v28 == 128 || *(v25 + 24))
                {
                  goto LABEL_6;
                }

LABEL_46:
                result = (*(*v25 + 88))(v25, a2, a3, a4, a5);
                *(v10[6] + 16) = 0;
                return result;
              }

              if (v28 != 128)
              {
                if (*(v25 + 24))
                {
                  v34[0] = xmmword_195E42760;
                  v34[1] = xmmword_195E42770;
                  v35 = 0;
                  v36 = 0;
                  RB::DisplayList::CachedTransform::CachedTransform(v37, a2, v34, 0, 0);
                  for (i = *(*(v10[6] + 16) + 24); i; i = *i)
                  {
                    v30 = (*(*(i[1] & 0xFFFFFFFFFFFFFFFELL) + 24))(i[1] & 0xFFFFFFFFFFFFFFFELL, v37, 0, 0);
                    if (v30)
                    {
                      v31 = a4[5];
                      do
                      {
                        v32 = v31 + 1;
                        if (a4[6] < v31 + 1)
                        {
                          RB::vector<RB::DisplayList::Clip *,4ul,unsigned long>::reserve_slow(a4, v32);
                          v31 = a4[5];
                          v32 = v31 + 1;
                        }

                        v33 = a4[4];
                        if (!v33)
                        {
                          v33 = a4;
                        }

                        v33[v31] = v30[1];
                        a4[5] = v32;
                        v30 = *v30;
                        v31 = v32;
                      }

                      while (v30);
                    }
                  }

                  RB::DisplayList::CachedTransform::~CachedTransform(v37);
                  v25 = *(v10[6] + 16);
                }

                goto LABEL_46;
              }
            }
          }
        }
      }
    }
  }

LABEL_6:
  v12 = *(a2 + 8);
  if (*(a2 + 288) == 1)
  {
    RB::DisplayList::Layer::discard_color(v5, v10[7]);
    v5 = v10[6];
  }

  v10[6] = 0;
  _H0 = *(v10 + 22);
  __asm { FCVT            S0, H0 }

  v18 = _S0 * a5;
  v19 = (v12[4] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v19 + 72 > v12[5])
  {
    v19 = RB::Heap::alloc_slow(v12 + 2, 0x48uLL, 7);
  }

  else
  {
    v12[4] = v19 + 72;
  }

  result = RB::DisplayList::LayerClip::LayerClip(v19, v5, v10[7], a3, v18);
  v20 = a4[5];
  v21 = v20 + 1;
  if (a4[6] < (v20 + 1))
  {
    result = RB::vector<RB::DisplayList::Clip *,4ul,unsigned long>::reserve_slow(a4, v21);
    v20 = a4[5];
    v21 = v20 + 1;
  }

  v22 = a4[4];
  if (!v22)
  {
    v22 = a4;
  }

  v22[v20] = v19;
  a4[5] = v21;
  return result;
}

void sub_195D2F2A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  RB::DisplayList::CachedTransform::~CachedTransform(va);
  _Unwind_Resume(a1);
}

float32x2_t *RB::AlphaThresholdEffect::dod(float32x2_t *this, float32x2_t *a2)
{
  if (vmvn_s8(vcge_f32(*this, vdup_lane_s32(*this, 1))).u8[0])
  {
    if (COERCE_FLOAT(*this) < 0.0)
    {
      *a2 = 0x100000001000000;
      a2[1] = vneg_f32(0x80000000800000);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return this;
}

uint64_t std::operator<=>[abi:nn200100]<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *,std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *>(void *a1, void *a2)
{
  v3 = *a1 == *a2;
  if (*a1 < *a2)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 1;
  }

  if (v3)
  {
    v5 = a1[1];
    v6 = a2[1];
    result = v5 < v6 ? 0xFFFFFFFFLL : 1;
    if (v5 == v6)
    {
      v7 = a1[2];
      v8 = a2[2];
      v9 = v7 == v8;
      if (v7 < v8)
      {
        v10 = -1;
      }

      else
      {
        v10 = 1;
      }

      if (v9)
      {
        return 0;
      }

      else
      {
        return v10;
      }
    }
  }

  return result;
}

BOOL RB::ColorMatrix::has_alpha(float16x4_t *this)
{
  if ((vmaxv_u16(vmvn_s8(vceq_f16(this[3], 0x3C00000000000000))) & 0x8000) != 0)
  {
    return 1;
  }

  __asm { FCMP            H0, #0 }

  if (!_ZF)
  {
    return 1;
  }

  __asm { FCMP            H0, #0 }

  if (!_ZF)
  {
    return 1;
  }

  __asm { FCMP            H0, #0 }

  if (!_ZF)
  {
    return 1;
  }

  __asm { FCMP            H0, #0 }

  return !_ZF;
}

int32x2_t *RB::AlphaThresholdEffect::render(int32x2_t *result, double a2, float a3, uint64_t a4, uint64_t a5, float32x2_t *a6, RB::Texture *a7, int a8, float64x2_t *a9, float32x2_t *a10, char a11, unsigned int a12)
{
  if (a7)
  {
    _S8 = a3;
    v18 = result;
    if (COERCE_FLOAT(*result) > 0.0 && RB::may_discard_alpha(a12))
    {
      RB::Bounds::Bounds(&v52, *a6, a6[1], v20, v21);
    }

    else
    {
      v22 = *(a5 + 168);
      v23 = *(a5 + 176);
      v52 = v22;
      v53 = v23;
    }

    if (*&v18->i32[1] == INFINITY)
    {
      *&v50[4] = 1065353216;
      *_Q0.f32 = *v18;
    }

    else
    {
      *_Q0.f32 = *v18;
      v25.i32[0] = 1.0;
      *&v50[4] = 1.0 / (fmaxf(COERCE_FLOAT(*v18), COERCE_FLOAT(HIDWORD(*v18))) - COERCE_FLOAT(*v18));
    }

    v26 = *&v50[4];
    *&v50[8] = -_Q0.f32[0] * *&v50[4];
    __asm { FCVT            H0, S8 }

    v44 = v18[1].i16[0];
    v45 = *(v18[1].i32 + 2);
    LOWORD(v26) = v18[1].i16[3];
    v46 = *&v26 * *_Q0.i16;
    v47 = v18[2].i32[0];
    v48 = v18[2].i16[2];
    _Q0.i32[0] = *(a5 + 124);
    RB::Fill::Color::prepare(&v44, *(a5 + 128), _Q0, v26, v25);
    *&v50[12] = v31;
    RB::RenderFrame::alloc_buffer_region(*(*a5 + 16), 0x64, 4uLL, 0, &v54);
    v32 = v54;
    if (v54)
    {
      v33 = *(v54 + 7) + v55.i64[0];
      v34 = v49[2];
      v35 = v49[0];
      *(v33 + 16) = v49[1];
      *(v33 + 32) = v34;
      v36 = *&v50[16];
      v37 = *v50;
      v38 = v49[3];
      *(v33 + 96) = v51;
      *(v33 + 64) = v37;
      *(v33 + 80) = v36;
      *(v33 + 48) = v38;
      *v33 = v35;
    }

    else
    {
      v54 = 0;
      v55 = 0uLL;
    }

    *(a5 + 192) = RB::RenderFrame::buffer_id(*(*a5 + 16), v32);
    *(a5 + 196) = vmovn_s64(v55);
    v39 = v18[2].i8[6] & 3;
    if ((*(a7 + 77) & 8) != 0)
    {
      v39 = 0;
    }

    v40 = 36;
    if (*(a5 + 132) == 2)
    {
      v40 = 131108;
    }

    v41 = 0x10000;
    if (!a11)
    {
      v41 = 0;
    }

    v42 = (v39 << 6) | ((*&v18->i32[1] == INFINITY) << 8) | v41 | v40;
    if (a8)
    {
      v43 = 2;
    }

    else
    {
      v43 = MTLPixelFormatA8Unorm;
    }

    RB::RenderPass::set_texture(a5, 0, a7, v43);
    result = RB::RenderPass::draw_indexed_primitives(a5, (v42 | ((a12 & 0x3F) << 32)), 4, **(*a5 + 16) + 136, 4uLL, 1uLL, v52, v53);
    *(a5 + 240) = 0;
    *(a5 + 244) = 0;
  }

  return result;
}

void sub_195D2F67C(_Unwind_Exception *a1)
{
  *(v1 + 240) = 0;
  *(v1 + 244) = 0;
  _Unwind_Resume(a1);
}

uint64_t RB::Refcount<RB::Resource,unsigned int>::finalize(uint64_t result)
{
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void RB::DisplayList::Builder::restore(uint64_t a1, const char *a2)
{
  RB::precondition_failure("too many gstate restores", a2);
}

{
  RB::precondition_failure("restoring out of layer", a2);
}

void RB::precondition_failure(RB *this, const char *a2, ...)
{
  va_start(va, a2);
  va_copy(&v5[1], va);
  v5[0] = 0;
  v2 = vasprintf(v5, this, va);
  if (v5[0])
  {
    v3 = RB::error_log(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = v5[0];
      _os_log_error_impl(&dword_195CE8000, v3, OS_LOG_TYPE_ERROR, "precondition failure: %s", buf, 0xCu);
    }

    if (!qword_1EAEEA5C8)
    {
      *buf = 0;
      asprintf(buf, "RenderBox precondition failure: %s.\n", v5[0]);
      qword_1EAEEA5C8 = *buf;
    }

    free(v5[0]);
  }

  abort();
}

uint64_t RB::Filter::NarrowBlurKernel::max_kernel_31(RB::Filter::NarrowBlurKernel *this)
{
  {
    RB::Filter::NarrowBlurKernel::max_kernel_31(void)::$_0::operator()();
  }

  return RB::Filter::NarrowBlurKernel::max_kernel_31(void)::kernel;
}

uint64_t RB::DisplayList::Layer::discard_color(uint64_t this, uint64_t a2)
{
  if ((*(this + 76) & 2) == 0)
  {
    v2 = this;
    if ((a2 & 3) != 2 || (this = (*(*(a2 & 0xFFFFFFFFFFFFFFFCLL) + 48))(), this))
    {
      v3 = *(v2 + 32);
      if (!v3)
      {
        goto LABEL_14;
      }

      v4 = 0;
      do
      {
        v5 = v4;
        v4 = v3;
        v3 = v3[1];
        v4[1] = v5;
      }

      while (v3);
      *(v2 + 32) = 0;
      LOBYTE(v6) = 1;
      do
      {
        v7 = v6;
        v8 = v4[1];
        v11 = 0;
        v6 = 0;
        if (v7 & 1) != 0 && (this = (*(*v4 + 80))(v4, &v11), v6 = this, (v11))
        {
          this = (**v4)(v4);
        }

        else
        {
          v4[1] = *(v2 + 32);
          *(v2 + 32) = v4;
        }

        v4 = v8;
      }

      while (v8);
      if (v6)
      {
LABEL_14:
        *(v2 + 76) |= 2u;
        for (i = *(v2 + 16); i; i = *(i + 8))
        {
          if ((*(i + 46) & 0xC0) == 0x40)
          {
            v10 = *(i + 56);
            this = RB::DisplayList::Layer::discard_color(*(i + 48), v10);
          }
        }
      }
    }
  }

  return this;
}

float32x2_t RB::anonymous namespace::set_alpha_effect(float32x2_t *a1, uint64_t a2, int32x2_t *a3, float64x2_t *a4, float32x2_t *a5, int32x2_t a6)
{
  a6.i32[0] = 0;
  v10 = a3[1];
  v11 = vceq_s32(v10, 0x8000000080000000);
  v12 = vdup_lane_s32(vcgt_s32(a6, vpmin_u32(v11, v11)), 0);
  RB::Coverage::set_plane(a2, a1, vbsl_s8(v12, 0x100000001000000, vcvt_f32_s32(*a3)), COERCE_DOUBLE(vbsl_s8(v12, vneg_f32(0x80000000800000), vcvt_f32_s32(v10))));
  v13 = a4[1];
  v27[0] = *a4;
  v27[1] = v13;
  v27[2] = a4[2];
  if (RB::AffineTransform::invert(v27))
  {
    v14 = v27;
  }

  else
  {
    v14 = a4;
  }

  v15 = v14[1];
  v16 = a1[13];
  v17.i64[0] = v16.i32[0];
  v17.i64[1] = v16.i32[1];
  __asm { FMOV            V4.2D, #0.5 }

  v23 = vmulq_f64(vcvtq_f64_s64(v17), _Q4);
  v24 = vmulq_n_f64(*v14, v23.f64[0]);
  v25 = vmlaq_laneq_f64(vaddq_f64(v24, v14[2]), v15, v23, 1);
  *(a2 + 28) = vcvt_f32_f64(v24);
  *(a2 + 36) = vcvt_f32_f64(vmulq_n_f64(v15, -v23.f64[1]));
  *(a2 + 44) = vcvt_f32_f64(v25);
  *(a2 + 52) = *a5;
  result = vadd_f32(a5[1], *a5);
  *(a2 + 60) = result;
  return result;
}

void RB::Buffer::~Buffer(RB::Buffer *this)
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
}

void *RB::details::realloc_vector<unsigned long,8ul>(void *a1, size_t *a2, uint64_t a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = malloc_good_size(8 * a3);
    v6 = v5 >> 3;
    if (v5 >> 3 != *a2)
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

void *RB::vector<unsigned long,0ul,unsigned long>::reserve_slow(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) + (*(a1 + 16) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 16) + (*(a1 + 16) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,8ul>(*a1, (a1 + 16), v3);
  *a1 = result;
  return result;
}

void *RB::details::realloc_vector<unsigned int,40ul>(void *__src, void *__dst, unsigned int a3, _DWORD *a4, unsigned int a5)
{
  v7 = __src;
  if (a5 <= a3)
  {
    if (__src)
    {
      LODWORD(v9) = a3;
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
    if (*a4 != (v8 / 0x28))
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

void *RB::vector<RB::SharedSurfaceGroup::allocate_updates(void)::SurfaceType,4ul,unsigned int>::reserve_slow(void *__dst, unsigned int a2)
{
  if (*(__dst + 43) + (*(__dst + 43) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 43) + (*(__dst + 43) >> 1);
  }

  result = RB::details::realloc_vector<unsigned int,40ul>(*(__dst + 20), __dst, 4u, __dst + 43, v3);
  *(__dst + 20) = result;
  return result;
}

unint64_t *_ZNSt3__17__sort5B8nn200100INS_17_ClassicAlgPolicyERZNK2RB11DisplayList5Layer9make_taskERNS3_11RenderStateENS2_6BoundsERKS7_PS8_jfPKNS3_4ItemEPKDv4_fE3__0PNS_4pairISD_jEELi0EEEvT1_SM_SM_SM_SM_T0_(unint64_t *result, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *a3;
  if (*a2 >= *result)
  {
    if (v7 >= v5)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v7;
      *a3 = v5;
      v9 = *(a2 + 2);
      *(a2 + 2) = *(a3 + 2);
      *(a3 + 2) = v9;
      v10 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        *a2 = v10;
        v11 = *(result + 2);
        *(result + 2) = *(a2 + 2);
        *(a2 + 2) = v11;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v7 < v5)
    {
      *result = v7;
      *a3 = v6;
      v8 = *(result + 2);
      *(result + 2) = *(a3 + 2);
      *(a3 + 2) = v8;
LABEL_9:
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v6;
    v12 = *(result + 2);
    *(result + 2) = *(a2 + 2);
    *(a2 + 2) = v12;
    v5 = *a3;
    if (*a3 < v6)
    {
      *a2 = v5;
      *a3 = v6;
      *(a2 + 2) = *(a3 + 2);
      *(a3 + 2) = v12;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*a4 < v5)
  {
    *a3 = *a4;
    *a4 = v5;
    v13 = *(a3 + 2);
    *(a3 + 2) = *(a4 + 2);
    *(a4 + 2) = v13;
    v14 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      *a3 = v14;
      v15 = *(a2 + 2);
      *(a2 + 2) = *(a3 + 2);
      *(a3 + 2) = v15;
      v16 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        *a2 = v16;
        v17 = *(result + 2);
        *(result + 2) = *(a2 + 2);
        *(a2 + 2) = v17;
      }
    }
  }

  v18 = *a4;
  if (*a5 < *a4)
  {
    *a4 = *a5;
    *a5 = v18;
    v19 = *(a4 + 2);
    *(a4 + 2) = *(a5 + 2);
    *(a5 + 2) = v19;
    v20 = *a3;
    if (*a4 < *a3)
    {
      *a3 = *a4;
      *a4 = v20;
      v21 = *(a3 + 2);
      *(a3 + 2) = *(a4 + 2);
      *(a4 + 2) = v21;
      v22 = *a2;
      if (*a3 < *a2)
      {
        *a2 = *a3;
        *a3 = v22;
        v23 = *(a2 + 2);
        *(a2 + 2) = *(a3 + 2);
        *(a3 + 2) = v23;
        v24 = *result;
        if (*a2 < *result)
        {
          *result = *a2;
          *a2 = v24;
          v25 = *(result + 2);
          *(result + 2) = *(a2 + 2);
          *(a2 + 2) = v25;
        }
      }
    }
  }

  return result;
}

void RB::Symbol::Model::set_rendering_mode(uint64_t a1, int a2, float a3)
{
  v3 = *(a1 + 104);
  if (a2 != v3)
  {
    ++*(a1 + 100);
    *(a1 + 104) = v3 & 0xFFFFFF00 | a2;
    std::unique_ptr<RB::Symbol::Glyph const,RB::Symbol::GlyphCache::Unref>::reset[abi:nn200100]((a1 + 112), 0);
    *(a1 + 96) = RB::Symbol::Model::glyph_value_index(a1, a3);
  }
}

void RB::CommitMarker::Observer::record_commit(RB::CommitMarker::Observer *this)
{
  v16 = *MEMORY[0x1E69E9840];
  {
    v8 = RB::debug_float("RB_COMMIT_DEADLINE", v7);
    v9 = *&v8;
    if ((v8 & 0x100000000) == 0)
    {
      v9 = *L"";
    }

    RB::CommitMarker::Observer::record_commit(void)::commit_delay = *&v9;
  }

  v2 = [*(this + 2) commitId];
  v3 = *&RB::CommitMarker::Observer::record_commit(void)::commit_delay + CACurrentMediaTime();
  os_unfair_lock_lock(this + 8);
  *(this + 9) = v2;
  *(this + 3) = v3;
  os_unfair_lock_unlock(this + 8);
  v5 = RB::shared_surface_log(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(this + 2);
    v10 = 134218496;
    v11 = v6;
    v12 = 1024;
    v13 = v2;
    v14 = 2048;
    v15 = v3;
    _os_log_impl(&dword_195CE8000, v5, OS_LOG_TYPE_DEFAULT, "%p: marked %u (%f)\n", &v10, 0x1Cu);
  }
}

uint64_t __destroy_helper_block_e8_32c54_ZTSN2RB14refcounted_ptrINS_12CommitMarker8ObserverEEE(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      return [(RBCommitObserverArray *)result .cxx_destruct];
    }
  }

  return result;
}

void RB::SharedSurfaceGroup::remove_subsurface(os_unfair_lock_s *this, RB::SharedSubsurface *a2, int a3)
{
  v36 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    if (a3)
    {
      RB::SharedSubsurface::mark_commit(a2);
    }

    os_unfair_lock_lock(this + 2);
    v7 = *a2;
    *a2 = 0;
    if (v7)
    {
      v8 = RB::shared_surface_log(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = *(a2 + 10);
        v11 = *(a2 + 1);
        v12 = *(a2 + 2);
        v13 = " unused";
        if (a3)
        {
          v13 = "";
        }

        *v30 = 134219522;
        *&v30[4] = v7;
        *&v30[12] = 1024;
        *&v30[14] = v10;
        *&v30[18] = 1024;
        *&v30[20] = v11;
        *&v30[24] = 1024;
        *&v30[26] = HIDWORD(v11);
        *&v30[30] = 1024;
        v31 = v12;
        v32 = 1024;
        v33 = HIDWORD(v12);
        v34 = 2080;
        v35 = v13;
        _os_log_impl(&dword_195CE8000, v8, OS_LOG_TYPE_INFO, "%p: remove_subsurface %08x [%d, %d; %d, %d]%s\n", v30, 0x34u);
      }

      v14 = *(v7 + 88);
      if (v14)
      {
        v15 = 0;
        v16 = *(v7 + 80);
        v17 = *(v7 + 88);
        while (*(v16 + v15 + 24) != *(a2 + 10))
        {
          v15 += 40;
          if (!--v17)
          {
            goto LABEL_13;
          }
        }

        v18 = *(v16 + v15);
        *(v16 + v15) = 0;
        v19 = *(v7 + 80);
        v20 = (v19 + v15);
        v21 = (v19 + 40 * (v14 - 1));
        v22 = *v20;
        *v20 = 0;
        *v30 = *(v20 + 1);
        *&v30[10] = *(v20 + 18);
        *v20 = *v21;
        v23 = *(v21 + 1);
        v9 = *(v21 + 18);
        *(v20 + 18) = v9;
        *(v20 + 1) = v23;
        *v21 = v22;
        *(v21 + 18) = *&v30[10];
        *(v21 + 1) = *v30;
        LODWORD(v21) = *(v7 + 88) - 1;
        *(v7 + 88) = v21;
        v24 = *(*(v7 + 80) + 40 * v21);
        if (v24 && atomic_fetch_add_explicit((v24 + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          [RBLayer displayWithBounds:callback:];
        }
      }

      else
      {
LABEL_13:
        v18 = 0;
      }

      atomic_fetch_add_explicit(v18 + 6, 0xFFFFFFFF, memory_order_relaxed);
      if (a3)
      {
        atomic_fetch_add_explicit(v18 + 7, 1u, memory_order_relaxed);
        v25 = *(a2 + 4);
        *v30 = v18;
        *&v30[8] = v25;
        *(a2 + 4) = 0;
        v26 = *(a2 + 2);
        *&v30[16] = *(a2 + 1);
        *&v30[24] = v26;
        v31 = *(a2 + 10);
        v27 = *(v7 + 104);
        if (*(v7 + 108) < v27 + 1)
        {
          RB::vector<RB::DisplayList::Interpolator::Contents::AnimationTableItem,0ul,unsigned int>::reserve_slow(v7 + 96, v27 + 1);
          v27 = *(v7 + 104);
        }

        v28 = *(v7 + 96) + 40 * v27;
        *v28 = v18;
        *(v28 + 8) = v25;
        *v30 = 0uLL;
        v29 = *&v30[16];
        *(v28 + 32) = v31;
        *(v28 + 16) = v29;
        ++*(v7 + 104);
        v18 = 0;
      }

      else
      {
        v9.n128_u64[0] = *(a2 + 2);
        RB::BinAllocator::dealloc(v7 + 32, *(a2 + 1), v9);
        --*(v7 + 112);
      }

      LOBYTE(this[15]._os_unfair_lock_opaque) = 1;
      [*(*&this->_os_unfair_lock_opaque + 16) collectResources];
      if (v18)
      {
        if (atomic_fetch_add_explicit(v18 + 2, 0xFFFFFFFF, memory_order_release) == 1)
        {
          [RBLayer displayWithBounds:callback:];
        }
      }
    }

    os_unfair_lock_unlock(this + 2);
  }
}

void sub_195D306D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  RB::SharedSurface::Remove::~Remove(&a9);
  os_unfair_lock_unlock(v9 + 2);
  _Unwind_Resume(a1);
}

uint64_t RB::SharedSubsurface::mark_commit(RB::SharedSubsurface *this)
{
  v2 = RB::CommitMarker::Observer::get(*(this + 3));
  result = *(this + 4);
  if (result != v2)
  {
    if (result && atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      result = RB::SharedSubsurface::~SharedSubsurface();
      if (!v2)
      {
        goto LABEL_6;
      }
    }

    else if (!v2)
    {
LABEL_6:
      *(this + 4) = v2;
      return result;
    }

    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
    goto LABEL_6;
  }

  return result;
}

uint64_t RB::CommitMarker::Observer::get(uint64_t a1)
{
  v2 = [MEMORY[0x1E6979518] valueForKey:@"com.apple.RenderBox.RBCommitMarkers"];
  if (!v2)
  {
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    v2 = objc_opt_new();
    [MEMORY[0x1E6979518] setValue:v2 forKey:@"com.apple.RenderBox.RBCommitMarkers"];
  }

  return [(RBCommitObserverArray *)v2 get:a1];
}

uint64_t RB::CommitMarker::Observer::Observer(uint64_t a1, id a2)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F0A3E938;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xFFFFFFFF00000000;
  *(a1 + 40) = 0;
  if (RBTransactionPhaseLessThan([MEMORY[0x1E6979518] currentPhase], 2))
  {
    atomic_fetch_add_explicit((a1 + 8), 1u, memory_order_relaxed);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3321888768;
    v5[2] = ___ZN2RB12CommitMarker8ObserverC2EP9CAContext_block_invoke;
    v5[3] = &__block_descriptor_40_e8_32c54_ZTSN2RB14refcounted_ptrINS_12CommitMarker8ObserverEEE_e5_v8__0l;
    atomic_fetch_add_explicit((a1 + 8), 1u, memory_order_relaxed);
    v6 = a1;
    [MEMORY[0x1E6979518] addCommitHandler:v5 forPhase:2];
    v3 = v6;
    if (v6 && atomic_fetch_add_explicit((v6 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      RB::CommitMarker::Observer::Observer(v3);
    }

    if (atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      RB::CommitMarker::Observer::Observer(a1);
    }
  }

  else
  {
    RB::CommitMarker::Observer::record_commit(a1);
  }

  return a1;
}

void sub_195D30994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, atomic_uint *a14)
{
  if (a14)
  {
    RB::CommitMarker::Observer::Observer(a14);
  }

  if (atomic_fetch_add_explicit((v14 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    (*(*v14 + 8))(v14);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c54_ZTSN2RB14refcounted_ptrINS_12CommitMarker8ObserverEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  *(result + 32) = v2;
  return result;
}

uint64_t RB::Path::Storage::MapCache::shared(RB::Path::Storage::MapCache *this)
{
  if ((atomic_load_explicit(&qword_1ED6D55A0, memory_order_acquire) & 1) == 0)
  {
    RB::Path::Storage::MapCache::shared();
  }

  return _MergedGlobals_11;
}

uint64_t RB::Path::Storage::MapCache::shared()
{
  result = __cxa_guard_acquire(&qword_1ED6D55A0);
  if (result)
  {
    operator new();
  }

  return result;
}

void RB::Path::Storage::MapCache::remove(os_unfair_lock_s *this, const RB::Path::Storage *a2)
{
  os_unfair_lock_lock(this);
  RB::UntypedTable::remove(&this[2], *(a2 + 3));

  os_unfair_lock_unlock(this);
}

uint64_t RB::UntypedTable::remove(RB::UntypedTable *this, void *a2)
{
  if (!*(this + 5))
  {
    return 0;
  }

  if (*(this + 60) == 1)
  {

    return RB::UntypedTable::remove_ptr(this, a2);
  }

  v5 = (*this)(a2);
  v6 = (*(this + 4) + 8 * (*(this + 6) & v5));
  v7 = *v6;
  if (!*v6)
  {
    return 0;
  }

  v8 = v5;
  while (1)
  {
    v9 = v7;
    if (v7[3] == v8)
    {
      if ((*(this + 1))(v7[1], a2))
      {
        break;
      }
    }

    v7 = *v9;
    v6 = v9;
    if (!*v9)
    {
      return 0;
    }
  }

  *v6 = *v9;
  v10 = *(this + 2);
  if (v10)
  {
    v10(v9[1]);
  }

  v11 = *(this + 3);
  if (v11)
  {
    v11(v9[2]);
  }

  MEMORY[0x19A8C09E0](v9, 0x10A0C405421CD5ELL);
  --*(this + 5);
  return 1;
}

uint64_t RBPathApply($_13 *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    a1 = MEMORY[0x1EEE9AC00](a1, a2);
    v5 = v10;
    v7 = v6[1];
    v8 = v6[2];
    v10[0] = *v6;
    v10[1] = v7;
    v10[2] = v8;
  }

  else
  {
    v5 = 0;
  }

  *&v11.f64[0] = &unk_1F0A37C20;
  *&v11.f64[1] = a4;
  v12 = a5;
  v13 = 1;
  RBPathMap(a1, a2, &v11, v5);
  return v13;
}

uint64_t RB::Path::Storage::MapCache::apply(os_unfair_lock_s *a1, uint64_t a2, RB::Path::Storage *a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(a1);
  v9 = RB::UntypedTable::lookup(&a1[2], *(a2 + 12), 0);
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (!v10)
  {
    v10 = v9;
  }

  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = (v10 + 8);
  v13 = 16 * v11;
  while (*(v12 - 1) != a5)
  {
    v12 += 2;
    v13 -= 16;
    if (!v13)
    {
      goto LABEL_11;
    }
  }

  v14 = *v12;
  if (!*v12)
  {
LABEL_11:
    os_unfair_lock_unlock(a1);
    operator new();
  }

  atomic_fetch_add_explicit((v14 + 8), 1u, memory_order_relaxed);
  os_unfair_lock_unlock(a1);
  v15 = RB::Path::Storage::apply_elements((v14 + 16), a3);
  if (atomic_fetch_add_explicit((v14 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    RBPathMix(v14);
  }

  return v15;
}

RB::Path::Storage *RB::Path::Storage::Storage(RB::Path::Storage *this, const char *a2, const RB::Path::Storage *a3)
{
  *this = 0;
  if (a2 <= 0x3F)
  {
    RB::Path::Storage::Storage(this, a2);
  }

  v4 = (a2 - 16);
  if ((a2 - 16) >= 0xFFF)
  {
    v4 = 4095;
  }

  add_explicit = atomic_fetch_add_explicit(&RB::Path::Storage::_last_identifier, 1u, memory_order_relaxed);
  *(this + 2) = v4 << 20;
  *(this + 3) = add_explicit + 1;
  *(this + 2) = *(a3 + 2) & 0x3E | (v4 << 20);
  v6 = *(a3 + 2);
  v8 = *(a3 + 2);
  v9 = *(a3 + 3);
  v7 = a3 + 16;
  if (v6)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  if (v6)
  {
    v11 = v9;
  }

  else
  {
    v11 = (v6 >> 8) & 0xFFF;
  }

  if (v4 < v11)
  {
    RB::Path::Storage::reserve_slow(this, v11);
    v12 = (this + 16);
    if (*(this + 8))
    {
      v12 = *v12;
    }
  }

  else
  {
    v12 = (this + 16);
  }

  memcpy(v12, v10, v11);
  v13 = *(this + 2);
  if (v13)
  {
    *(this + 3) = v11;
  }

  else
  {
    *(this + 2) = v13 & 0xFFF000FE | ((v11 & 0xFFF) << 8);
  }

  return this;
}

void *RB::Path::BufferedTransform::moveto(void *result, __n128 a2)
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

  *(v6 + v4) = 0;
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

void *RB::Path::BufferedTransform::cubeto(void *result, __n128 a2, __n128 a3, __n128 a4)
{
  v4 = result;
  v5 = result + 1;
  v6 = result[18];
  v7 = v6 + 1;
  if (result[19] < (v6 + 1))
  {
    v15 = a3;
    v17 = a4;
    v13 = a2;
    result = RB::vector<unsigned char,128ul,unsigned long>::reserve_slow(result + 1, v7);
    a2 = v13;
    a3 = v15;
    a4 = v17;
    v6 = v4[18];
    v7 = v6 + 1;
  }

  v8 = v4[17];
  if (!v8)
  {
    v8 = v5;
  }

  *(v8 + v6) = 3;
  v4[18] = v7;
  v9 = v4[533];
  v10 = v9 + 6;
  if (v9 <= 0xFFFFFFFFFFFFFFF9 && v4[534] < v10)
  {
    v16 = a3;
    v18 = a4;
    v14 = a2;
    result = RB::vector<double,512ul,unsigned long>::reserve_slow(v4 + 20, v9 + 6);
    a2 = v14;
    a3 = v16;
    a4 = v18;
  }

  v4[533] = v10;
  v11 = v4[532];
  if (!v11)
  {
    v11 = v4 + 20;
  }

  v12 = &v11[v9];
  *v12 = a2;
  v12[1] = a3;
  v12[2] = a4;
  return result;
}

__n128 *RB::Path::BufferedTransform::apply(__n128 *result, uint64_t a2)
{
  v2 = result[9].n128_i64[0];
  if (result[8].n128_u64[1])
  {
    v3 = result[8].n128_u64[1];
  }

  else
  {
    v3 = &result->n128_u8[8];
  }

  if (v2)
  {
    if (result[266].n128_u64[0])
    {
      v5 = result[266].n128_u64[0];
    }

    else
    {
      v5 = result + 10;
    }

    do
    {
      v6 = *v3;
      if (v6 <= 1)
      {
        if (*v3)
        {
          if (v6 == 1)
          {
            v7 = *v5++;
            result = (*(*a2 + 24))(a2, v7);
          }
        }

        else
        {
          v10 = *v5++;
          result = (*(*a2 + 16))(a2, v10);
        }
      }

      else
      {
        switch(v6)
        {
          case 2u:
            v8 = *v5;
            v9 = v5[1];
            v5 += 2;
            result = (*(*a2 + 32))(a2, v8, v9);
            break;
          case 3u:
            result = (*(*a2 + 40))(a2, *v5, v5[1], v5[2]);
            v5 += 3;
            break;
          case 4u:
            result = (*(*a2 + 8))(a2);
            break;
        }
      }

      ++v3;
      --v2;
    }

    while (v2);
  }

  return result;
}

void RB::Path::Cutter::endpath(__n128 *this)
{
  v83 = *MEMORY[0x1E69E9840];
  if (this[268].n128_f32[0] <= 0.0 && this[268].n128_f32[1] >= 1.0)
  {
    v43 = this[267].n128_i64[1];

    RB::Path::BufferedTransform::apply(this, v43);
  }

  else
  {
    v80 = 0u;
    v78 = &unk_1F0A3F0E8;
    v81 = 128;
    v82 = 0.0;
    RB::Path::BufferedTransform::apply(this, &v78);
    v3 = this[268].n128_f32[0];
    v4 = this[268].n128_f32[1];
    v48 = this[267].n128_u64[1];
    v49 = 0u;
    v50 = 0u;
    v5 = this[9].n128_u64[0];
    if (this[8].n128_u64[1])
    {
      v6 = this[8].n128_u64[1];
    }

    else
    {
      v6 = &this->n128_u8[8];
    }

    v51 = 257;
    v52 = 0;
    if (v5)
    {
      v7 = 0;
      v8 = v82 * v3;
      v9 = v82 * v4;
      v10 = this[266].n128_u64[0];
      if (!v10)
      {
        v10 = &this[10];
      }

      v11 = 0.0;
      v12 = 1.0;
      v13 = vdupq_n_s64(0x3FD5555555555555uLL);
      v44 = v13;
      v45 = v82 * v4;
      while (1)
      {
        v14 = *v6;
        if (v14 > 1)
        {
          break;
        }

        if (*v6)
        {
          v15 = v14 != 1;
          v16 = v14 == 1;
          goto LABEL_21;
        }

        v36 = *v10++;
        v49 = v36;
        v13.i64[1] = *&v36.f64[1];
        v50 = v36;
        v51 = 257;
LABEL_63:
        ++v6;
        if (!--v5)
        {
          goto LABEL_64;
        }
      }

      if (v14 == 3)
      {
        v17 = 3;
      }

      else
      {
        v17 = 0;
      }

      v18 = v14 == 2;
      v15 = v14 != 2 && v14 != 3;
      v16 = 2;
      if (!v18)
      {
        v16 = v17;
      }

LABEL_21:
      v19 = v80;
      if (!v80)
      {
        v19 = &v79;
      }

      v20 = *&v19[v7];
      v21 = v11;
      v22 = 0.0;
      if (v8 > v21)
      {
        v22 = fmax((v8 - v21) / v20, 0.0);
      }

      v23 = v20 + v21;
      v24 = 1.0;
      if (v9 < v20 + v21)
      {
        v24 = fmin((v9 - v21) / v20, v12);
      }

      if (v51 == 1)
      {
        v52 = v22 == 0.0;
        LOBYTE(v51) = 0;
      }

      v25 = &v10[v16];
      if (v22 >= v24)
      {
        if (!v15)
        {
          v2 = *(v25 - 1);
          v50 = v2;
LABEL_62:
          v11 = v23;
          ++v7;
          v10 = v25;
          goto LABEL_63;
        }

        v2 = v49;
      }

      else
      {
        if (v16 < 2)
        {
          v26 = v8;
          v27 = &v10->f64[1];
          if (v15)
          {
            v10 = &v49;
            v27 = &v49.n128_f64[1];
          }

          v28 = v50;
          v29 = v10->f64[0] - v50.f64[0];
          v30 = *v27 - v50.f64[1];
          v31 = v48;
          if (HIBYTE(v51) == 1)
          {
            v32.n128_f64[0] = v50.f64[0] + v29 * v22;
            HIBYTE(v51) = 0;
            v32.n128_f64[1] = v50.f64[1] + v30 * v22;
            (*(*v48 + 16))(v48, v32);
            v31 = v48;
          }

          v2.n128_f64[0] = v28.f64[0] + v29 * v24;
          *v13.i64 = v28.f64[1] + v30 * v24;
          v46 = v2;
          v47 = v13;
          v2.n128_f64[1] = *v13.i64;
          (*(*v31 + 24))(v31, v2);
          v13.i64[1] = v46.n128_i64[1];
          v2.n128_u64[1] = v47.u64[1];
          *&v50.f64[0] = v46.n128_u64[0];
          *&v50.f64[1] = v47.i64[0];
          v12 = 1.0;
          v33 = !v15;
          if (v24 != 1.0)
          {
            v33 = 1;
          }

          v8 = v26;
          v9 = v45;
          if ((v33 & 1) == 0 && v52)
          {
            v52 = 0;
            (*(*v48 + 8))(v48);
          }

          goto LABEL_62;
        }

        if (v16 == 2)
        {
          v34 = *v10;
          v35 = v10[1];
          *&v67[0].v = vmlaq_f64(*v10, v44, vsubq_f64(v50, *v10));
          *&v76[0].v = v35;
          *&v77[0].v = vmlaq_f64(v34, v44, vsubq_f64(v35, v34));
          CG::Cubic::Cubic(&v53, &v50, v67, v77, v76);
          v37 = v54;
          v38 = v55;
          v39 = v56;
        }

        else
        {
          v37 = *v10;
          v38 = v10[1];
          v39 = v10[2];
        }

        *&v76[0].v = v37;
        *&v77[0].v = v50;
        *&v74[0].v = v39;
        *&v75[0].v = v38;
        if (v22 > 0.0 || v24 < v12)
        {
          CG::Cubic::Cubic(v67, v77, v76, v75, v74);
          if (v22 > 0.00100000005)
          {
            CG::Cubic::index(v67, v22 * v20, 0.5);
            v22 = v40;
          }

          if (v24 < 0.999000013)
          {
            CG::Cubic::index(v67, v24 * v20, 0.5);
            v24 = v41;
          }

          if (v22 > 0.00100000005)
          {
            CG::Cubic::split(v67, v22, &v53);
            v71 = v64;
            v72 = v65;
            v73 = v66;
            *&v67[0].v = v60;
            v68 = v61;
            v69 = v62;
            v70 = v63;
            v24 = (v24 - v22) / (v12 - v22);
          }

          if (v24 < 0.999000013)
          {
            CG::Cubic::split(v67, v24, &v53);
            v71 = v57;
            v72 = v58;
            v73 = v59;
            *&v67[0].v = v53;
            v68 = v54;
            v69 = v55;
            v70 = v56;
          }

          *&v76[0].v = v68;
          *&v77[0].v = *&v67[0].v;
          *&v74[0].v = v70;
          *&v75[0].v = v69;
        }

        v42 = v48;
        if (HIBYTE(v51) == 1)
        {
          HIBYTE(v51) = 0;
          (*(*v48 + 16))(v48, *&v77[0].v);
          v42 = v48;
        }

        (*(*v42 + 40))(v42, *&v76[0].v, *&v75[0].v, *&v74[0].v);
        v2 = *&v74[0].v;
      }

      v50 = v2;
      goto LABEL_62;
    }

LABEL_64:
    if (v80)
    {
      free(v80);
    }
  }
}

__n128 *RB::Path::anonymous namespace::Lengths::moveto(__n128 *result, __n128 a2)
{
  result[67] = a2;
  result[68] = a2;
  return result;
}

double RB::cubic_length<double>(float64x2_t a1, float64x2_t a2, float64x2_t a3, float64x2_t a4, double a5)
{
  v5 = _ZN2RB13CubicIteratorIDv2_dE13segment_countIdEEiS1_S1_S1_S1_T_(a1, a2, a3, a4, a5);
  v6 = v5;
  _ZN2RB13CubicIteratorIDv2_dEC1ES1_S1_S1_S1_i(v11, v5);
  if (v6 < 1)
  {
    return 0.0;
  }

  v7 = v13;
  result = 0.0;
  v9 = v12;
  do
  {
    v10 = vmulq_f64(v9, v9);
    v9 = vaddq_f64(v7, v9);
    v7 = vaddq_f64(v14, v7);
    result = sqrt(vaddvq_f64(v10)) + result;
    --v6;
  }

  while (v6);
  return result;
}

__n128 RB::Path::anonymous namespace::Lengths::cubeto(uint64_t a1, float64x2_t a2, float64x2_t a3, float64x2_t a4)
{
  v5 = RB::cubic_length<double>(*(a1 + 1072), a2, a3, a4, 0.5);
  v6 = *(a1 + 1040);
  v7 = v6 + 1;
  if (*(a1 + 1048) < (v6 + 1))
  {
    RB::vector<double,128ul,unsigned long>::reserve_slow((a1 + 8), v7);
    v6 = *(a1 + 1040);
    v7 = v6 + 1;
  }

  v8 = *(a1 + 1032);
  if (!v8)
  {
    v8 = a1 + 8;
  }

  *(v8 + 8 * v6) = v5;
  *(a1 + 1040) = v7;
  *(a1 + 1056) = *(a1 + 1056) + v5;
  result = a4;
  *(a1 + 1072) = a4;
  return result;
}

uint64_t _ZN2RB13CubicIteratorIDv2_dE13segment_countIdEEiS1_S1_S1_S1_T_(float64x2_t a1, float64x2_t a2, float64x2_t a3, float64x2_t a4, double a5)
{
  v5 = vmaxnmq_f64(vabsq_f64(vaddq_f64(vsubq_f64(a1, vaddq_f64(a2, a2)), a3)), vabsq_f64(vaddq_f64(vsubq_f64(a2, vaddq_f64(a3, a3)), a4)));
  v6 = ceil(sqrt(sqrt(vaddvq_f64(vmulq_f64(v5, v5))) * 0.75 / a5));
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  if (v6 >= 1.0)
  {
    v9 = 1024.0;
    if (v6 <= 1024.0)
    {
      v9 = v6;
    }

    return v9;
  }

  else
  {
    v8 = vceqq_f64(a1, a4);
    return (vandq_s8(vdupq_laneq_s64(v8, 1), v8).u64[0] & 0x8000000000000000) == 0;
  }
}

float64x2_t *_ZN2RB13CubicIteratorIDv2_dEC2ES1_S1_S1_S1_i(float64x2_t *result, int a2, float64x2_t a3, float64x2_t a4, float64x2_t a5, float64x2_t a6)
{
  __asm { FMOV            V5.2D, #3.0 }

  v11 = vmulq_f64(vsubq_f64(a4, a3), _Q5);
  v12 = vmlaq_f64(vnegq_f64(v11), _Q5, vsubq_f64(a5, a4));
  v13 = vsubq_f64(a6, vaddq_f64(vaddq_f64(v11, a3), v12));
  v14 = 1.0 / a2;
  __asm { FMOV            V7.2D, #6.0 }

  v16 = ((v14 * v14) * v14);
  v17 = vmulq_n_f64(vmulq_f64(v13, _Q7), v16);
  result[3] = v17;
  v18 = vmulq_n_f64(v12, (v14 * v14));
  __asm { FMOV            V5.2D, #2.0 }

  *result = a3;
  result[1] = vmlaq_n_f64(vmlaq_n_f64(v18, v11, v14), v13, v16);
  result[2] = vmlaq_f64(v17, _Q5, v18);
  return result;
}

_DWORD *RB::Path::Storage::MapCache::Destination::moveto(uint64_t a1, __n128 a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a2;
  return RB::Path::Storage::append_element((*(a1 + 8) + 16), 0, v3.n128_f64, 0);
}

_DWORD *RB::Path::Storage::MapCache::Destination::cubeto(uint64_t a1, __n128 a2, __n128 a3, __n128 a4)
{
  v6 = *MEMORY[0x1E69E9840];
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = a4;
  return RB::Path::Storage::append_element((*(a1 + 8) + 16), 3, v5, 0);
}

void RB::Path::Mapper::~Mapper(RB::Path::Mapper *this)
{
  while (*(this + 3))
  {
    RB::Path::Mapper::pop(this);
  }
}

uint64_t RBPathApply::Context::moveto(uint64_t result, __n128 a2)
{
  if (*(result + 24) == 1)
  {
    v7 = v2;
    v8 = v3;
    v4 = result;
    v6 = a2;
    v5[0] = 0;
    v5[1] = &v6;
    result = (*(result + 16))(*(result + 8), v5);
    *(v4 + 24) = result;
  }

  return result;
}

uint64_t RBPathApply::Context::cubeto(uint64_t result, __n128 a2, __n128 a3, __n128 a4)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(result + 24) == 1)
  {
    v4 = result;
    v6[0] = a2;
    v6[1] = a3;
    v6[2] = a4;
    v5[1] = v6;
    v5[0] = 3;
    result = (*(result + 16))(*(result + 8), v5);
    *(v4 + 24) = result;
  }

  return result;
}

uint64_t RB::Refcount<RB::Path::Object,std::atomic<unsigned int>>::finalize(uint64_t result)
{
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

char *RB::Path::Storage::MapCache::MapCache(void)::$_0::__invoke(char *result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 2);
    if (v2)
    {
      v3 = v2;
    }

    else
    {
      v3 = v1;
    }

    if (*(v1 + 3))
    {
      v4 = 0;
      v5 = (v3 + 8);
      do
      {
        v6 = *v5;
        if (*v5 && atomic_fetch_add_explicit((v6 + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          RB::Refcount<RB::Path::Object,std::atomic<unsigned int>>::release(v6);
        }

        ++v4;
        v5 += 2;
      }

      while (v4 < *(v1 + 3));
      v2 = *(v1 + 2);
    }

    if (v2)
    {
      free(v2);
    }

    JUMPOUT(0x19A8C09E0);
  }

  return result;
}

void RB::Path::Object::~Object(RB::Path::Object *this)
{
  *this = &unk_1F0A38690;
  RB::Path::Storage::~Storage((this + 16));

  JUMPOUT(0x19A8C09E0);
}

{
  *this = &unk_1F0A38690;
  RB::Path::Storage::~Storage((this + 16));
}

uint64_t RB::UntypedTable::remove_ptr(RB::UntypedTable *this, void *a2)
{
  if (!*(this + 5))
  {
    return 0;
  }

  v4 = *(this + 4) + 8 * (*(this + 6) & (*this)(a2));
  do
  {
    v5 = v4;
    v4 = *v4;
    if (!v4)
    {
      return 0;
    }
  }

  while (*(v4 + 8) != a2);
  *v5 = *v4;
  v6 = *(this + 2);
  if (v6)
  {
    v6(*(v4 + 8));
  }

  v7 = *(this + 3);
  if (v7)
  {
    v7(*(v4 + 16));
  }

  MEMORY[0x19A8C09E0](v4, 0x10A0C405421CD5ELL);
  --*(this + 5);
  return 1;
}

void RB::Symbol::Glyph::~Glyph(id *this)
{
  v2 = this[56];
  if (v2)
  {
    v3 = this[56];
  }

  else
  {
    v3 = (this + 14);
  }

  if (*(this + 114))
  {
    v4 = 0;
    do
    {
      RB::Symbol::Glyph::Layer::~Layer(v3);
      ++v4;
      v3 = (v5 + 112);
    }

    while (v4 < *(this + 114));
    v2 = this[56];
  }

  if (v2)
  {
    free(v2);
  }
}

void RB::Symbol::Glyph::Layer::~Layer(RB::Symbol::Glyph::Layer *this)
{
  v2 = (*(this + 26) >> 28) & 3;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v4 = *this;
      *this = 0;
      if (v4)
      {
        std::default_delete<RB::Symbol::Glyph::Sublayers>::operator()[abi:nn200100](this, v4);
      }
    }

    else
    {
    }
  }

  else if (v2)
  {
    v3 = *this;
    if (*this)
    {
      if (atomic_fetch_add_explicit((v3 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RB::Symbol::Glyph::Layer::~Layer();
      }
    }
  }

  v5 = *(this + 5);
  if (v5)
  {
    free(v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t RB::Refcount<RB::Symbol::Glyph::Shape,std::atomic<unsigned int>>::finalize(uint64_t result)
{
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void RB::Symbol::Glyph::Shape::~Shape(RB::Symbol::Glyph::Shape *this)
{
  *this = &unk_1F0A3DA30;
  v2 = *(this + 8);
  if (*(this + 18))
  {
    v3 = 0;
    v4 = v2 + 8;
    do
    {
      if (*v4 && atomic_fetch_add_explicit((*v4 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RB::Symbol::Glyph::Layer::~Layer();
      }

      ++v3;
      v4 += 64;
    }

    while (v3 < *(this + 18));
    v2 = *(this + 8);
  }

  if (v2)
  {
    free(v2);
  }

  v5 = *(this + 6);
  if (v5)
  {
    free(v5);
  }

  RBPathRelease(*(this + 4), *(this + 5));
  RBPathRelease(*(this + 2), *(this + 3));

  JUMPOUT(0x19A8C09E0);
}

{
  *this = &unk_1F0A3DA30;
  v2 = *(this + 8);
  if (*(this + 18))
  {
    v3 = 0;
    v4 = v2 + 8;
    do
    {
      if (*v4 && atomic_fetch_add_explicit((*v4 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RB::Symbol::Glyph::Layer::~Layer();
      }

      ++v3;
      v4 += 64;
    }

    while (v3 < *(this + 18));
    v2 = *(this + 8);
  }

  if (v2)
  {
    free(v2);
  }

  v5 = *(this + 6);
  if (v5)
  {
    free(v5);
  }

  RBPathRelease(*(this + 4), *(this + 5));
  RBPathRelease(*(this + 2), *(this + 3));
}

uint64_t RB::Refcount<anonymous namespace::CachedCGPathInfo,std::atomic<unsigned int>>::finalize(uint64_t result)
{
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void anonymous namespace::CachedCGPathInfo::~CachedCGPathInfo(_anonymous_namespace_::CachedCGPathInfo *this)
{
  *this = &unk_1F0A3F7A0;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x19A8C09E0);
}

{
  *this = &unk_1F0A3F7A0;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

float32x2_t RB::Symbol::Glyph::Layer::content_bounds(float *a1, float32x2_t *a2)
{
  v3 = (*(a1 + 26) >> 28) & 3;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4.f64[0] = *(*a1 + 352);
      v5.i64[0] = *(*a1 + 360);
    }

    else
    {
      [*a1 boundingRect];
      *&v4.f64[1] = v5.i64[0];
      *&v4.f64[0] = vcvt_f32_f64(v4);
      v12.f64[1] = v11;
      *v5.i8 = vcvt_f32_f64(v12);
    }
  }

  else
  {
    v4.f64[0] = 0.0;
    v5.i64[0] = 0;
    if (v3)
    {
      v6 = a1[20] > 0.0 || *&a2[1] == 0;
      if (!v6 && (a1[27] & 2) != 0)
      {
        RB::Symbol::Glyph::Layer::copy_path(a1, a2, 0, &v32);
        var0 = v32.var0;
        var1 = v32.var1;
        v15.f64[0] = RBPathGetBoundingRect(v32);
        v15.f64[1] = v16;
        v18.f64[1] = v17;
        v30 = v18;
        v31 = v15;
        RBPathRelease(var0, var1);
        v10 = v30;
        v4 = v31;
      }

      else
      {
        v33.var0 = *(*a1 + 16);
        v33.var1 = *(*a1 + 24);
        v4.f64[0] = RBPathGetBoundingRect(v33);
        *&v4.f64[1] = v5.i64[0];
        *&v10.f64[1] = v7.i64[0];
      }

      *v5.i8 = vcvt_f32_f64(v10);
      *&v4.f64[0] = vcvt_f32_f64(v4);
      v19 = a1[20];
      if (v19 > 0.0)
      {
        v20 = v19 * 0.70711;
        *v10.f64 = v19 * 5.0;
        if ((*(a1 + 107) & 0xC) != 0 || v20 >= *v10.f64)
        {
          *v10.f64 = v20;
        }

        *v10.f64 = *v10.f64 / a1[15];
        *v7.i8 = vcgt_f32(vneg_f32(0x80000000800000), *v5.i8);
        *v8.i8 = vsub_f32(*&v4.f64[0], vdup_lane_s32(*&v10.f64[0], 0));
        v22 = vcltzq_s32(v7);
        *&v4.f64[0] = vbslq_s8(v22, v8, v4).u64[0];
        *v9.i8 = vmla_n_f32(*v5.i8, 0x4000000040000000, *v10.f64);
        v5.i64[0] = vbslq_s8(v22, v9, v5).u64[0];
      }
    }
  }

  v24 = a1[15];
  v23 = a1[16];
  v6 = v23 == 0.0;
  v25.f32[0] = -v24;
  v25.f32[1] = v24;
  v26 = vmul_f32(v25, *&v4.f64[0]);
  v27 = vmul_f32(v25, *v5.i8);
  v26.f32[0] = v26.f32[0] + v23;
  v28 = COERCE_DOUBLE(vbsl_s8(vcltz_f32(v27), vadd_f32(v26, v27), v26));
  result = vmul_n_f32(*&v4.f64[0], v24);
  if (!v6)
  {
    *&result = v28;
  }

  return result;
}

double RBDrawingStateSetCTM(RB::DisplayList::State *this, float64x2_t *a2)
{
  v4 = *(*(this + 1) + 320);
  v5 = *a2;
  if (v4)
  {
    v9 = *(this + 2);
    v22 = *(this + 1);
    v23 = v9;
    v24 = *(this + 3);
    v10 = a2[1];
    v11 = a2[2];
    v12 = vandq_s8(vandq_s8(vceqq_f64(v23, v10), vceqq_f64(v22, v5)), vceqq_f64(v24, v11));
    if ((vandq_s8(vdupq_laneq_s64(v12, 1), v12).u64[0] & 0x8000000000000000) == 0)
    {
      v20[0] = v5;
      v20[1] = v10;
      v20[2] = v11;
      v19[0] = RB::AffineTransform::inverse(&v22);
      v19[1] = v13;
      v19[2] = v14;
      v15.f64[0] = RB::operator*(v20, v19);
      v21[0] = v15;
      v21[1] = v16;
      v21[2] = v17;
      RB::XML::DisplayList::concat_ctm(v4, this, v21, v18);
      v5 = *a2;
    }
  }

  v6 = a2[1];
  v7 = a2[2];
  v22 = v5;
  v23 = v6;
  v24 = v7;
  *&result = RB::DisplayList::State::set_ctm(this, &v22).n128_u64[0];
  return result;
}

__n128 RB::DisplayList::State::set_ctm(RB::DisplayList::State *this, const RB::AffineTransform *a2)
{
  result = *a2;
  v3 = *(a2 + 2);
  *(this + 2) = *(a2 + 1);
  *(this + 3) = v3;
  *(this + 1) = result;
  *(this + 14) = 0;
  *(this + 37) = -1;
  return result;
}

double RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Color>::bounds(uint64_t a1)
{
  v2.var1 = *(a1 + 48);
  v2.var0 = (a1 + 56);
  return RB::Coverage::Path::bounds(v2);
}

void RBDrawingStateSetIdentifier(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    uuid_clear(&v11);
    v10 = a2;
    [a3 getUUIDBytes:&v11];
LABEL_3:
    return;
  }

  v9 = *(a1 + 8);
  if (!*(v9 + 24))
  {
    make_contents(*(a1 + 8));
  }

  if (*(v9 + 320))
  {
    uuid_clear(&v11);
    v10 = a2;
    v11 = *(a1 + 68);
    goto LABEL_3;
  }

  *(a1 + 64) = a2;
}

uint64_t RB::DisplayList::Builder::delete_state(RB::DisplayList::Builder *this, const RB::DisplayList::State *a2)
{
  result = *(a2 + 11);
  if (result && atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    result = RB::Refcount<RB::Transition,std::atomic<unsigned int>>::release();
  }

  *a2 = *(this + 2);
  *(this + 2) = a2;
  return result;
}

double RB::Coverage::Path::bounds(RBPath this)
{
  var1 = this.var1;
  this.var1 = *(this.var0 + 1);
  if (this.var1 == &empty_path_callbacks)
  {
    v7.i64[0] = 0;
  }

  else
  {
    var0 = this.var0;
    v3 = *(this.var0 + 2);
    if (v3)
    {
      v4.f64[0] = RB::operator*(v3, var1);
      v23 = v4;
      v24 = v5;
      v25 = v6;
      this.var1 = *(var0 + 1);
    }

    else
    {
      v8 = *(var1 + 1);
      v23 = *var1;
      v24 = v8;
      v25 = *(var1 + 2);
    }

    this.var0 = *var0;
    *&v26.origin.x = *&RBPathBoundingRect(this, &v23);
    y = v26.origin.y;
    x = v26.origin.x;
    height = v26.size.height;
    width = v26.size.width;
    IsNull = CGRectIsNull(v26);
    v7.i64[0] = 0;
    if (!IsNull)
    {
      v10.f64[0] = x;
      v10.f64[1] = y;
      *v7.i8 = vcvt_f32_f64(v10);
      v10.f64[0] = width;
      v10.f64[1] = height;
      v11 = vcvt_f32_f64(v10);
      if (var0[29] >= 3u)
      {
        if (*(var0 + 6) >= 0.0)
        {
          v12 = *(var0 + 6);
        }

        else
        {
          v12 = 0.0;
        }

        v20 = v11;
        v22 = v7;
        *v13.i32 = v12 * RB::AffineTransform::scale(var1);
        *v14.i8 = vcgt_f32(vneg_f32(0x80000000800000), v20);
        *v15.i8 = vsub_f32(*v22.i8, vdup_lane_s32(v13, 0));
        v7.i64[0] = vbslq_s8(vcltzq_s32(v14), v15, v22).u64[0];
      }
    }
  }

  return *v7.i64;
}

uint64_t RBDrawingStateDestroy(RB::XML::Document *a1, const char *a2, _RBDrawingState *a3)
{
  v3 = *(a1 + 1);
  if (!*(v3 + 368))
  {
    RBDrawingStateDestroy_cold_1(a1, a2);
  }

  v5 = *(v3 + 320);
  if (v5)
  {
    RB::XML::DisplayList::destroy_state(v5, a1, a3);
  }

  result = RB::DisplayList::Builder::delete_state((v3 + 16), a1);
  --*(v3 + 368);
  return result;
}

uint64_t RB::DisplayList::ItemFactory::operator()<RB::Coverage::Path>(uint64_t a1, RB::Coverage::Path *this)
{
  v4 = *(a1 + 40);
  if (!v4 || (v8[0] = xmmword_195E42760, v8[1] = xmmword_195E42770, v9 = 0, v10 = 0, v11.var1 = v8, v11.var0 = this, v5 = RB::Coverage::Path::bounds(v11), result = RB::Rect::intersects(v4, *&v5, v6), (result & 1) != 0))
  {
    *&v8[0] = a1;
    *(&v8[0] + 1) = this;
    return RBFillData::apply<RB::DisplayList::ItemFactory::Inner<RB::Coverage::Path>>(*(a1 + 32), v8);
  }

  return result;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Color>::GenericItem1(uint64_t a1, size_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, __int16 a7, float _S0)
{
  __asm { FCVT            H0, S0 }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = _H0;
  *(a1 + 46) = a6 & 0x3F;
  *a1 = &unk_1F0A3B860;
  *(a1 + 48) = a5;
  *(a1 + 56) = RBPathRetain(*a3, *(a3 + 8));
  *(a1 + 64) = v18;
  v19 = *(a3 + 16);
  if (v19)
  {
    v20 = ((a2[2] + 15) & 0xFFFFFFFFFFFFFFF0);
    if ((v20 + 3) > a2[3])
    {
      v20 = RB::Heap::alloc_slow(a2, 0x30uLL, 15);
    }

    else
    {
      a2[2] = (v20 + 3);
    }

    v21 = *v19;
    v22 = v19[2];
    v20[1] = v19[1];
    v20[2] = v22;
    *v20 = v21;
  }

  else
  {
    v20 = 0;
  }

  *(a1 + 72) = v20;
  *(a1 + 80) = *(a3 + 24);
  *(a1 + 84) = *(a3 + 28);
  *(a1 + 88) = *a4;
  *(a1 + 96) = *(a4 + 8);
  if (*(a4 + 13))
  {
    v23 = *(a4 + 12);
  }

  else
  {
    v23 = a7;
  }

  *(a1 + 100) = v23;
  return a1;
}

uint64_t RB::ContextDelegate::draw_glyphs(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, unsigned __int16 *a5, _OWORD *a6, unint64_t a7)
{
  v7 = a7;
  v8 = a5;
  v79 = a2;
  v90 = *MEMORY[0x1E69E9840];
  v11 = a5;
  if (a7)
  {
    v12 = 2 * a7;
    v11 = a5;
    while (*v11 != -1)
    {
      ++v11;
      v12 -= 2;
      if (!v12)
      {
        goto LABEL_8;
      }
    }
  }

  if (v11 != &a5[a7])
  {
    RB::ContextDelegate::draw_glyphs_removing_invalid(a1, v79, a3, a4, a5, a6, a7);
    return 0;
  }

LABEL_8:
  *&v81.f64[0] = a6;
  TextDrawingMode = CGGStateGetTextDrawingMode();
  if ((TextDrawingMode & 0xFFFFFFFB) != 3)
  {
    v14 = TextDrawingMode;
    Info = CGContextDelegateGetInfo();
    RB::ContextDelegate::update(Info, a3, v79, 1);
    v16 = *(a4 + 16);
    v17 = *(a4 + 32);
    v84 = *a4;
    v85 = v16;
    v86 = v17;
    CTM = CGGStateGetCTM();
    v19 = *(CTM + 16);
    v20 = *(CTM + 32);
    v83[0] = *CTM;
    v83[1] = v19;
    v83[2] = v20;
    v21.f64[0] = RB::operator*(&v84, v83);
    v87 = v21;
    v88 = v22;
    v89 = v23;
    v24.f64[0] = RB::operator*(&v87, (Info + 448));
    v78 = v24;
    v77 = v25;
    v76 = v26;
    Font = CGGStateGetFont();
    CGGStateGetFontSize();
    v80 = v28;
    if (v14 <= 5)
    {
      v29 = 1 << v14;
      if (((1 << v14) & 0x15) == 0)
      {
        v42 = 34;
        goto LABEL_28;
      }

      FontRenderingStyle = CGGStateGetFontRenderingStyle();
      v31 = CGRenderingStateGetFontRenderingStyle();
      CGGStateGetFontDilation();
      v33 = v32;
      v35 = v34;
      ShouldDrawBitmapRuns = CGGStateGetShouldDrawBitmapRuns();
      if ((*(Info + 524) & 4) != 0)
      {
        v38 = v31 & FontRenderingStyle & 0xFFFFFFF7;
      }

      else
      {
        v38 = v31 & FontRenderingStyle;
      }

      if (v7 >> 60)
      {
LABEL_27:
        v29 = 1 << v14;
        v42 = 38;
LABEL_28:
        if ((v29 & v42) != 0)
        {
          v56 = *(Info + 504);
          v57 = *(MEMORY[0x1E695EFD0] + 16);
          v87 = *MEMORY[0x1E695EFD0];
          v88 = v57;
          v89 = *(MEMORY[0x1E695EFD0] + 32);
          [*(Info + 8) setEOFill:{0, RBDrawingStateSetCTM(v56, &v87)}];
          if ([*(Info + 8) renderingMode] >= 2)
          {
            [*(Info + 8) setRenderingModeArgument:*(Info + 620)];
          }

          v87 = v78;
          v88 = v77;
          v89 = v76;
          CGGStateGetAdjustedLineWidth();
          v59 = v58;
          LineCap = CGGStateGetLineCap();
          LineJoin = CGGStateGetLineJoin();
          CGGStateGetMiterLimit();
          v63 = v62;
          v84.f64[0] = 0.0;
          v83[0].f64[0] = 0.0;
          if (CGGStateGetLineDash())
          {
            Pattern = CGDashGetPattern();
          }

          else
          {
            Pattern = 0;
          }

          UnitsPerEm = CGFontGetUnitsPerEm(Font);
          if ((*(Info + 524) & 8) != 0)
          {
            path_cache_for_stroking = 0;
            if (!v7)
            {
              return 0;
            }
          }

          else
          {
            path_cache_for_stroking = RB::cg_font_get_path_cache_for_stroking(Font, v65);
            if (!v7)
            {
              return 0;
            }
          }

          v68 = v80.f64[0] / UnitsPerEm;
          v75 = vmulq_n_f64(v77, v68);
          v69 = vmulq_n_f64(v78, v68);
          v74 = v69;
          v70 = (*&v81.f64[0] + 8);
          do
          {
            v69.f64[0] = *(v70 - 1);
            v80 = v69;
            v69.f64[0] = *v70;
            v81 = v69;
            RB::cg_font_get_glyph_path(Font, *v8, path_cache_for_stroking, &v82);
            if (v82)
            {
              v71 = *(Info + 8);
              v87 = v74;
              v88 = v75;
              v89 = vmlaq_n_f64(vmlaq_n_f64(v76, v78, v80.f64[0]), v77, v81.f64[0]);
              [v71 setStrokedPath:v82 transform:&v87 lineWidth:LineCap lineCap:LineJoin lineJoin:Pattern miterLimit:*&v84.f64[0] dashPhase:v59 dashPattern:v63 dashCount:v83[0].f64[0]];
              StrokeColor = CGGStateGetStrokeColor();
              RB::ContextDelegate::set_color_in_shape(Info, StrokeColor, a3, v79, 1);
              if (v82)
              {
                CFRelease(v82);
              }
            }

            ++v8;
            v70 += 2;
            --v7;
          }

          while (v7);
        }

        return 0;
      }

      v39 = ShouldDrawBitmapRuns;
      v40 = 16 * v7;
      if (16 * v7 <= 0x1000)
      {
        MEMORY[0x1EEE9AC00](ShouldDrawBitmapRuns, v37);
        v41 = (&v74 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
        bzero(v41, 16 * v7);
      }

      else
      {
        v41 = malloc_type_malloc(16 * v7, 0x1000040451B5BE8uLL);
        if (!v41)
        {
LABEL_26:
          free(v41);
          goto LABEL_27;
        }
      }

      v87 = vmulq_n_f64(v78, v80.f64[0]);
      v88 = vmulq_n_f64(v77, v80.f64[0]);
      v89 = v76;
      v43 = *(Info + 504);
      v84 = v87;
      v85 = v88;
      v86 = v76;
      if ([*(Info + 8) renderingMode] >= 2)
      {
        v46 = *(Info + 620);
        v47 = RB::AffineTransform::scale(&v87);
        v48 = vrecpe_f32(LODWORD(v47));
        v49 = vmul_f32(vrecps_f32(LODWORD(v47), v48), v48);
        [*(Info + 8) setRenderingModeArgument:{(v46 * vmul_f32(v49, vrecps_f32(LODWORD(v47), v49)).f32[0])}];
      }

      if (v7)
      {
        v50 = v41;
        v51 = *&v81.f64[0];
        v52 = v7;
        v53 = 1.0 / v80.f64[0];
        do
        {
          v54 = *v51++;
          v45 = vmulq_n_f64(v54, v53);
          *v50++ = v45;
          --v52;
        }

        while (v52);
      }

      v44.n128_u64[0] = v33;
      v45.n128_u64[0] = v35;
      [(RBShape *)*(Info + 8) setGlyphs:v8 positions:v41 count:v7 font:Font renderingStyle:v38 dilation:v39 shouldDrawBitmapRuns:v44, v45];
      [*(Info + 8) setEOFill:0];
      FillColor = CGGStateGetFillColor();
      RB::ContextDelegate::set_color_in_shape(Info, FillColor, a3, v79, 1);
      if (v40 <= 0x1000)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  return 0;
}

void sub_195D331DC(_Unwind_Exception *exception_object)
{
  if (v1 > 0x1000)
  {
    free(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RB::Coverage::Glyphs::Glyphs(uint64_t a1, RB::Heap *this, CFTypeRef cf, unsigned int a4, const void *a5, const void *a6, int a7, char a8, double a9, float a10, char a11)
{
  return RB::Coverage::Glyphs::Glyphs(a1, this, cf, a4, a5, a6, a7, a8, a9, a10, a11);
}

{
  *a1 = cf;
  v20 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = v20 + 10 * a4;
  if (v21 > *(this + 3))
  {
    v20 = RB::Heap::alloc_slow(this, 10 * a4, 7);
    v22 = *a1;
  }

  else
  {
    v22 = cf;
    *(this + 2) = v21;
  }

  *(a1 + 8) = v20;
  *(a1 + 16) = a4;
  *(a1 + 20) = a7;
  *(a1 + 24) = a9;
  *(a1 + 32) = 0x100000001000000;
  *(a1 + 40) = vneg_f32(0x80000000800000);
  *(a1 + 48) = a10;
  *(a1 + 52) = a8;
  *(a1 + 53) = a11;
  v23 = *(this + 4);
  if (!v23)
  {
    RB::Heap::make_object_table(this);
    v23 = *(this + 4);
  }

  RB::ObjectTable::retain(v23, v22);
  if (a4)
  {
    memmove((*(a1 + 8) + 8 * *(a1 + 16)), a5, 2 * a4);
    memmove(*(a1 + 8), a6, 8 * a4);
  }

  return a1;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Color>::GenericItem1(uint64_t a1, RB::Heap *a2, RB::Coverage::Glyphs *a3, uint64_t a4, uint64_t a5, char a6, __int16 a7, float _S0)
{
  __asm { FCVT            H0, S0 }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = _H0;
  *(a1 + 46) = a6 & 0x3F;
  *a1 = &unk_1F0A3B420;
  *(a1 + 48) = a5;
  RB::Coverage::Glyphs::Glyphs((a1 + 56), a3, a2);
  *(a1 + 112) = *a4;
  *(a1 + 120) = *(a4 + 8);
  *(a1 + 122) = *(a4 + 10);
  if (*(a4 + 13))
  {
    v16 = *(a4 + 12);
  }

  else
  {
    v16 = a7;
  }

  *(a1 + 124) = v16;
  return a1;
}

void std::__list_imp<RB::refcounted_ptr<RB::Texture>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        std::__list_imp<RB::refcounted_ptr<RB::Texture>>::__delete_node[abi:nn200100](a1, v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

double $_12::__invoke(os_unfair_lock_s *this, const void *a2)
{
  os_unfair_lock_lock(this + 6);
  if (LOBYTE(this[7]._os_unfair_lock_opaque) == 1)
  {
    x = *&this[8]._os_unfair_lock_opaque;
  }

  else
  {
    PathBoundingBox = CGPathGetPathBoundingBox(*&this[4]._os_unfair_lock_opaque);
    x = PathBoundingBox.origin.x;
    *&this[8]._os_unfair_lock_opaque = PathBoundingBox;
    LOBYTE(this[7]._os_unfair_lock_opaque) = 1;
  }

  os_unfair_lock_unlock(this + 6);
  return x;
}

uint64_t RB::misc_log(RB *this)
{
  if ((atomic_load_explicit(&qword_1ED6D5560, memory_order_acquire) & 1) == 0)
  {
    RB::misc_log();
  }

  return qword_1ED6D5558;
}

void RB::Device::Device(uint64_t a1, uint64_t a2, void *a3)
{
  *a1 = &unk_1F0A385B0;
  add_explicit = atomic_fetch_add_explicit(RB::Device::_last_unique_id, 1u, memory_order_relaxed);
  *(a1 + 8) = 1;
  *(a1 + 12) = add_explicit + 1;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  *(a1 + 32) = dispatch_queue_create("com.apple.RenderBox.Device", v5);
  v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  *(a1 + 40) = dispatch_queue_create("com.apple.RenderBox.Encoder", v6);
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 312) = 2;
  *(a1 + 320) = RB::debug_byte_size("RB_BUFFER_SIZE", 0x10000, 0x4000uLL, 0x400000uLL);
  *(a1 + 328) = 256;
  *(a1 + 330) = 1;
  v7 = (a1 + 331);
  *(a1 + 335) = 0;
  *(a1 + 331) = 0;
  *(a1 + 336) = 0x2000;
  *(a1 + 344) = 0;
  *(a1 + 352) = a1 + 352;
  *(a1 + 360) = a1 + 352;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = a1 + 384;
  *(a1 + 392) = a1 + 384;
  *(a1 + 400) = 0;
  *(a1 + 408) = a1 + 408;
  *(a1 + 416) = a1 + 408;
  *(a1 + 424) = 0;
  *(a1 + 432) = a1 + 432;
  *(a1 + 440) = a1 + 432;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  RB::UntypedTable::UntypedTable(a1 + 472, RB::Device::Device(RBDevice *,objc_object  {objcproto9MTLDevice}*)::$_0::__invoke<RB::FormattedRenderState const*>, RB::Device::Device(RBDevice *,objc_object  {objcproto9MTLDevice}*)::$_1::__invoke<RB::FormattedRenderState const*,RB::FormattedRenderState const>, 0, RB::Device::Device(RBDevice *,objc_object  {objcproto9MTLDevice}*)::$_2::__invoke<RB::Device::RenderPipelineEntry *>);
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 1065353216;
  *(a1 + 576) = 0;
  *(a1 + 832) = 0u;
  *(a1 + 824) = 0;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  RB::UntypedTable::UntypedTable(a1 + 848, RB::Device::Device(RBDevice *,objc_object  {objcproto9MTLDevice}*)::$_3::__invoke<RB::TextureCacheKey const*>, RB::Device::Device(RBDevice *,objc_object  {objcproto9MTLDevice}*)::$_4::__invoke<RB::TextureCacheKey const*,RB::TextureCacheKey const>, 0, RB::Device::Device(RBDevice *,objc_object  {objcproto9MTLDevice}*)::$_5::__invoke<RB::TextureCache *>);
  RB::UntypedTable::UntypedTable(a1 + 912, 0, 0, 0, RB::Device::Device(RBDevice *,objc_object  {objcproto9MTLDevice}*)::$_6::__invoke);
  *(a1 + 1032) = 0;
  *(a1 + 1040) = 0;
  *(a1 + 976) = 0;
  *(a1 + 992) = 0;
  v8 = 1001;
  *(a1 + 984) = 0;
  do
  {
    if (([*(a1 + 24) supportsFamily:v8] & 1) == 0)
    {
      break;
    }

    *v7 = v8++ + 24;
  }

  while (v8 != 1008);
  v10 = RB::debug_BOOL("RB_USE_BINARY_ARCHIVE", v9);
  if ((v10 & 0x100) == 0)
  {
    LOBYTE(v10) = [objc_msgSend(MEMORY[0x1E6974000] "sharedCaptureManager")] ^ 1;
  }

  *(a1 + 330) = v10 & 1;
  v12 = RB::debug_BOOL("RB_STENCIL_BUFFER", v11);
  *(a1 + 329) = ((v12 & 0x100) == 0) | v12 & 1;
  v14 = RB::debug_BOOL("RB_DEPTH_BUFFER", v13);
  v16 = *(a1 + 331);
  v17 = *(a1 + 331) != 0;
  if ((v14 & 0x100) != 0)
  {
    v17 = v14;
  }

  *(a1 + 328) = v17;
  if (v16)
  {
    *(a1 + 332) = 1;
    MTLPixelFormatGetInfoForDevice();
    *(a1 + 332) = 0;
  }

  v18 = RB::debug_BOOL("RB_FRAGMENT_WRITES", v15);
  if ((v18 & 0x100) == 0)
  {
    if (*v7 <= 3u)
    {
      LOBYTE(v18) = [*(a1 + 24) supportsFamily:3003];
    }

    else
    {
      LOBYTE(v18) = 1;
    }
  }

  *(a1 + 333) = v18 & 1;
  v20 = RB::debug_BOOL("RB_TEXTURE_SWIZZLE", v19);
  if ((v20 & 0x100) == 0)
  {
    *(a1 + 334) = *(a1 + 331) > 2u;
    v22 = RB::disable_workaround("vm-swizzle", v21);
    if (v22)
    {
      goto LABEL_20;
    }

    if (*(a1 + 334) == 1)
    {
      LOBYTE(v20) = RB::running_in_vm(v22) ^ 1;
    }

    else
    {
      LOBYTE(v20) = 0;
    }
  }

  *(a1 + 334) = v20;
LABEL_20:
  v23 = RB::debug_int("RB_MAX_TEXTURE_SIZE", v21);
  if ((v23 & 0x100000000) == 0)
  {
    if (*v7 <= 2u)
    {
      LODWORD(v23) = 0x2000;
    }

    else
    {
      LODWORD(v23) = 0x4000;
    }
  }

  *(a1 + 336) = v23;
  v25 = RB::debug_BOOL("RB_FUNCTION_POINTERS", v24);
  if ((v25 & 0x100) == 0)
  {
    if (*v7 < 6u)
    {
      LOBYTE(v25) = 0;
    }

    else
    {
      LOBYTE(v25) = [a3 supportsFunctionPointersFromRender];
    }
  }

  *(a1 + 335) = v25 & 1;
  *(a1 + 1024) = 1;
  *(a1 + 1016) = 3;
  operator new();
}

void sub_195D33B90(_Unwind_Exception *a1)
{
  std::unique_ptr<RB::SharedSurfaceGroup>::reset[abi:nn200100]((v1 + 992), 0);
  std::unique_ptr<RB::GlyphPathCache>::reset[abi:nn200100]((v1 + 976), 0);
  RB::UntypedTable::~UntypedTable((v1 + 912));
  RB::UntypedTable::~UntypedTable((v1 + 848));
  v8 = *(v1 + 832);
  if (v8)
  {
    free(v8);
  }

  for (i = 0; i != -192; i -= 8)
  {
  }

  for (j = 0; j != -48; j -= 8)
  {
  }

  std::__hash_table<RB::FormattedRenderState,std::hash<RB::FormattedRenderState>,std::equal_to<RB::FormattedRenderState>,std::allocator<RB::FormattedRenderState>>::~__hash_table(v6);
  RB::UntypedTable::~UntypedTable((v1 + 472));
  std::__list_imp<RB::refcounted_ptr<RB::Texture>>::clear(v5);
  std::__list_imp<RB::refcounted_ptr<RB::Texture>>::clear(v4);
  std::__list_imp<RB::refcounted_ptr<RB::Texture>>::clear(v3);
  std::__list_imp<RB::refcounted_ptr<RB::Texture>>::clear(v2);
  RB::vector<RB::Device::FrameContinuation,2ul,unsigned long>::~vector((v1 + 264));
  v11 = *(v1 + 240);
  if (v11)
  {
    v12 = v11[2] - 1;
    v11[2] = v12;
    if (!v12)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v13 = *(v1 + 232);
  if (v13)
  {
    v14 = v13[2] - 1;
    v13[2] = v14;
    if (!v14)
    {
      (*(*v13 + 8))(v13);
    }
  }

  v15 = *(v1 + 224);
  if (v15)
  {
    v16 = v15[2] - 1;
    v15[2] = v16;
    if (!v16)
    {
      (*(*v15 + 8))(v15);
    }
  }

  v17 = *(v1 + 216);
  if (v17)
  {
    v18 = v17[2] - 1;
    v17[2] = v18;
    if (!v18)
    {
      (*(*v17 + 8))(v17);
    }
  }

  v19 = *(v1 + 80);
  if (v19)
  {
    v20 = v19[2] - 1;
    v19[2] = v20;
    if (!v20)
    {
      (*(*v19 + 8))(v19);
    }
  }

  _Unwind_Resume(a1);
}

const char *RB::debug_byte_size(RB *this, const char *a2, unint64_t a3, unint64_t a4)
{
  RB::Config::debug_value(this, &v10);
  v7 = v10;
  v8 = RB::Config::byte_size_value(v10, a2, a3, a4);
  if (v7)
  {
    CFRelease(v7);
  }

  return v8;
}

const char *RB::Config::byte_size_value(const __CFString *this, const char *a2, unint64_t a3, unint64_t a4)
{
  valuePtr[32] = *MEMORY[0x1E69E9840];
  if (this)
  {
    v8 = CFGetTypeID(this);
    if (v8 == CFNumberGetTypeID())
    {
      valuePtr[0] = 0;
      if (CFNumberGetValue(this, kCFNumberLongType, valuePtr))
      {
        return valuePtr[0];
      }
    }

    else if (v8 == CFStringGetTypeID() && CFStringGetCString(this, valuePtr, 256, 0x8000100u))
    {
      return RB::parse_byte_size(valuePtr, a2, a3, a4);
    }
  }

  return a2;
}

uint64_t RB::debug_BOOL(RB *this, const char *a2)
{
  RB::Config::debug_value(this, &v6);
  v2 = v6;
  v4 = RB::Config::int_value(v6, v3);
  if (v2)
  {
    CFRelease(v2);
  }

  return BYTE4(v4) & (v4 != 0) | ((v4 & 0x100000000uLL) >> 24);
}

uint64_t RB::Buffer::alloc(id *this, RB::Device *a2, uint64_t a3, const void *a4)
{
  v9 = *MEMORY[0x1E69E9840];
  if ([this[3] newBufferWithBytes:a3 length:a2 options:0])
  {
    v5 = RB::verbose_mode(0x100);
    if (v5)
    {
      v6 = RB::misc_log(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8[0] = 67109120;
        v8[1] = (a2 + 512) >> 10;
        _os_log_impl(&dword_195CE8000, v6, OS_LOG_TYPE_INFO, "allocated %d KB read-only buffer", v8, 8u);
      }
    }

    operator new();
  }

  return 0;
}

uint64_t RB::disable_workaround(RB *this, const char *a2)
{
  if ((atomic_load_explicit(&qword_1ED6D5470, memory_order_acquire) & 1) == 0)
  {
    RB::disable_workaround();
  }

  if (!qword_1ED6D5468)
  {
    return 0;
  }

  v3 = *(qword_1ED6D5468 + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = *qword_1ED6D5468;
  v5 = 8 * v3;
  while (1)
  {
    v6 = *v4;
    if (**v4 == 10 && !v6[1])
    {
      break;
    }

    if (!strcasecmp(v6, this))
    {
      break;
    }

    ++v4;
    v5 -= 8;
    if (!v5)
    {
      return 0;
    }
  }

  return 1;
}

void RB::disable_workaround()
{
  if (__cxa_guard_acquire(&qword_1ED6D5470))
  {
    v0 = RB::disable_workaround(char const*)::$_0::operator()();
    v1 = OUTLINED_FUNCTION_0_8(v0, &qword_1ED6D5468);

    __cxa_guard_release(v1);
  }
}

uint64_t RB::disable_workaround(char const*)::$_0::operator()()
{
  v6[1] = *MEMORY[0x1E69E9840];
  RB::Config::debug_value("RB_DISABLE_WORKAROUNDS", v6);
  if (v6[0])
  {
    v1 = RB::Config::BOOL_value(v6[0], v0);
    if ((v1 & 0x100) != 0)
    {
      if (v1)
      {
        operator new();
      }
    }

    else
    {
      v2 = CFGetTypeID(v6[0]);
      if (v2 == CFStringGetTypeID())
      {
        v3 = v6[0];
        MEMORY[0x1EEE9AC00]();
        bzero(v5, 0x1000uLL);
        if (CFStringGetCString(v3, v5, 4096, 0x8000100u))
        {
          operator new();
        }
      }
    }

    if (v6[0])
    {
      CFRelease(v6[0]);
    }
  }

  return 0;
}

uint64_t RB::running_in_vm(RB *this)
{
  if ((atomic_load_explicit(&qword_1ED6D5438, memory_order_acquire) & 1) == 0)
  {
    RB::running_in_vm();
  }

  return _MergedGlobals_8;
}

void RB::running_in_vm()
{
  if (__cxa_guard_acquire(&qword_1ED6D5438))
  {
    _MergedGlobals_8 = RB::running_in_vm(void)::$_0::operator()();

    __cxa_guard_release(&qword_1ED6D5438);
  }
}

BOOL RB::running_in_vm(void)::$_0::operator()()
{
  v3 = 0;
  v2 = 4;
  if (sysctlbyname("kern.hv_vmm_present", &v3, &v2, 0, 0))
  {
    v0 = 1;
  }

  else
  {
    v0 = v3 == 0;
  }

  return !v0;
}

double RB::SharedSurfaceGroup::SharedSurfaceGroup(RB::SharedSurfaceGroup *this, RB::Device *a2)
{
  *this = a2;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 45) = 0u;
  return result;
}

RB::SharedSurfaceGroup *std::unique_ptr<RB::SharedSurfaceGroup>::reset[abi:nn200100](RB::SharedSurfaceGroup **a1, RB::SharedSurfaceGroup *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    RB::SharedSurfaceGroup::~SharedSurfaceGroup(result);

    JUMPOUT(0x19A8C09E0);
  }

  return result;
}

void RB::verbose_mode()
{
  if (__cxa_guard_acquire(&qword_1ED6D5448))
  {
    v0 = RB::debug_flags("RB_VERBOSE");
    if (v1)
    {
      v2 = v0;
    }

    else
    {
      v2 = 0;
    }

    qword_1ED6D5440 = v2;

    __cxa_guard_release(&qword_1ED6D5448);
  }
}

void RB::misc_log()
{
  if (__cxa_guard_acquire(&qword_1ED6D5560))
  {
    v0 = os_log_create("com.apple.renderbox", "misc");
    v1 = OUTLINED_FUNCTION_0_8(v0, &qword_1ED6D5558);

    __cxa_guard_release(v1);
  }
}

double RBColorFromCGColor(CGColor *a1, int a2)
{
  ColorSpace = CGColorGetColorSpace(a1);
  Components = CGColorGetComponents(a1);
  if (a2)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  *&result = RBColorFromComponents2(ColorSpace, Components, v6).n128_u64[0];
  return result;
}

__n128 RBColorFromComponents2(RB *a1, double *a2, int a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = RB::color_space_from_cg(a1, a2);
  if ((v6 & 0x100) != 0)
  {
    v10 = v6;
    v7.f32[0] = *a2;
    if ((v6 & 0xF) != 0)
    {
      v11 = a2[1];
      v12 = a2[2];
      v7.f32[1] = v11;
      v7.f32[2] = v12;
      v25 = v7;
    }

    else
    {
      v25 = v7.u32[0];
    }
  }

  else
  {
    {
      if (v23)
      {
        v24 = RB::extended_linear_srgb_colorspace(v23);
        RBColorFromComponents2::transform = MEMORY[0x19A8BF4E0](v24, 0);
      }
    }

    if (CGColorTransformConvertColorComponents())
    {
      *v8.f32 = vcvt_f32_f64(v26);
      v9 = v27;
      v8.f32[2] = v9;
      v25 = v8;
    }

    else
    {
      __asm { FMOV            V0.4S, #1.0 }

      v25 = _Q0;
    }

    CGColorSpaceGetNumberOfComponents(a1);
    v10 = 1;
  }

  v18 = rb_color_space(a3);
  if ((v18 & 0x100) != 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = 17;
  }

  if (v20 != v10)
  {
    v19.i64[0] = 0;
    RB::ColorSpace::Conversion::Conversion(&v26, v10, v20, v19, 0.0);
    v21.n128_f64[0] = RB::ColorSpace::Conversion::operator()(&v26, v25);
    return v21;
  }

  return v25;
}

uint64_t begin_cgcontext(_RBDrawingState *a1, float a2, double a3, int a4)
{
  v8 = *(a1 + 1);
  v9 = *(v8 + 360);
  if (*(v8 + 364) < v9 + 1)
  {
    RB::vector<std::pair<RB::cf_ptr<CGContext *>,RB::ContextDelegate *>,1ul,unsigned int>::reserve_slow((v8 + 336), v9 + 1);
    v9 = *(v8 + 360);
  }

  v10 = *(v8 + 352);
  if (!v10)
  {
    v10 = v8 + 336;
  }

  v11 = (v10 + 16 * v9);
  *v11 = 0;
  v11[1] = 0;
  v12 = *(v8 + 360);
  *(v8 + 360) = v12 + 1;
  v13 = *(v8 + 352);
  if (!v13)
  {
    v13 = v8 + 336;
  }

  v14 = v13 + 16 * v12;
  RB::ContextDelegate::borrow_context(v14);
  RB::ContextDelegate::begin(*(v14 + 8), a1, a2, a3, a4);
  return *v14;
}

void RB::ContextDelegate::borrow_context(uint64_t *a1)
{
  os_unfair_lock_lock(&RB::ContextDelegate::_contexts_lock);
  v2 = RB::ContextDelegate::_contexts;
  if (!RB::ContextDelegate::_contexts || (v3 = *(RB::ContextDelegate::_contexts + 136)) == 0)
  {
    os_unfair_lock_unlock(&RB::ContextDelegate::_contexts_lock);
    operator new();
  }

  if (*(RB::ContextDelegate::_contexts + 128))
  {
    v2 = *(RB::ContextDelegate::_contexts + 128);
  }

  v4 = v2 + 16 * v3;
  v5 = *a1;
  *a1 = *(v4 - 16);
  *(v4 - 16) = v5;
  v6 = a1[1];
  a1[1] = *(v4 - 8);
  *(v4 - 8) = v6;
  v7 = RB::ContextDelegate::_contexts;
  v8 = *(RB::ContextDelegate::_contexts + 128);
  v9 = *(RB::ContextDelegate::_contexts + 136) - 1;
  *(RB::ContextDelegate::_contexts + 136) = v9;
  if (v8)
  {
    v7 = v8;
  }

  v10 = *(v7 + 16 * v9);
  if (v10)
  {
    CFRelease(v10);
  }

  CGContextResetState();

  os_unfair_lock_unlock(&RB::ContextDelegate::_contexts_lock);
}

uint64_t RB::ContextDelegate::begin(RB::ContextDelegate *this, _RBDrawingState *a2, float a3, double a4, int a5)
{
  RBDrawingStateGetCTM(a2, v13);
  v10 = v13[1];
  v11 = v13[2];
  *(this + 28) = v13[0];
  *(this + 29) = v10;
  *(this + 30) = v11;
  *(this + 62) = a2;
  *(this + 63) = 0;
  *(this + 130) = a3;
  *(this + 64) = a4;
  *(this + 131) = a5;
  *(this + 132) = 0;
  *(this + 532) = 0;
  *(this + 67) = 0;
  result = RBDrawingStateGetDefaultColorSpace(a2);
  *(this + 148) = result;
  return result;
}

__n128 RBDrawingStateGetCTM@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  *a2 = *(a1 + 16);
  *(a2 + 16) = v2;
  result = *(a1 + 48);
  *(a2 + 32) = result;
  return result;
}

void RB::ContextDelegate::update(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  if (!*(a1 + 496))
  {
    RB::ContextDelegate::update(a1, a2);
  }

  ClipStack = CGGStateGetClipStack();
  SoftMask = CGGStateGetSoftMask();
  Style = CGGStateGetStyle();
  Identifier = CGClipStackGetIdentifier();
  v80 = SoftMask;
  if (SoftMask)
  {
    v11 = CGSoftMaskGetIdentifier();
    if (Style)
    {
      goto LABEL_4;
    }

LABEL_7:
    AllowsAntialiasing = CGRenderingStateGetAllowsAntialiasing();
    v12 = 0;
    goto LABEL_8;
  }

  v11 = 0;
  if (!Style)
  {
    goto LABEL_7;
  }

LABEL_4:
  v12 = CGStyleGetIdentifier();
  AllowsAntialiasing = CGRenderingStateGetAllowsAntialiasing();
  BaseCTM = CGRenderingStateGetBaseCTM();
  v15 = vandq_s8(vandq_s8(vceqq_f64(*(a1 + 560), BaseCTM[1]), vceqq_f64(*(a1 + 544), *BaseCTM)), vceqq_f64(*(a1 + 576), BaseCTM[2]));
  if ((vandq_s8(vdupq_laneq_s64(v15, 1), v15).u64[0] & 0x8000000000000000) == 0)
  {
    *(a1 + 540) = 0;
  }

LABEL_8:
  if (*(a1 + 528) == Identifier && (!ClipStack || *(a1 + 532) == AllowsAntialiasing) && *(a1 + 536) == v11 && *(a1 + 540) == v12)
  {
    if (!*(a1 + 504))
    {
      v16 = RBDrawingStateInit(*(a1 + 496));
      *(a1 + 504) = v16;
      if (!*(a1 + 592))
      {
        v17 = 1;
        RBDrawingStateSetDefaultColorSpace(v16, 1);
        if ((AllowsAntialiasing & 1) == 0)
        {
          goto LABEL_70;
        }

        goto LABEL_67;
      }
    }

    goto LABEL_62;
  }

  v19 = *(a1 + 496);
  v18 = *(a1 + 504);
  v79 = Style;
  if (v18)
  {
    RBDrawingStateAssign(v18, v19);
  }

  else
  {
    *(a1 + 504) = RBDrawingStateInit(v19);
  }

  v78 = a3;
  if (!*(a1 + 592))
  {
    RBDrawingStateSetDefaultColorSpace(*(a1 + 504), 1);
  }

  *(a1 + 528) = Identifier;
  *(a1 + 532) = AllowsAntialiasing;
  *(a1 + 536) = v11;
  *(a1 + 540) = v12;
  if ((CGClipStackIsInfinite() & 1) == 0)
  {
    CGClipStackGetRect();
    x = v92.origin.x;
    y = v92.origin.y;
    width = v92.size.width;
    height = v92.size.height;
    if (!CGRectIsInfinite(v92))
    {
      [*(a1 + 8) setRect:{x, y, width, height}];
      [*(a1 + 8) setAntialiased:AllowsAntialiasing];
      RBDrawingStateClipShape(*(a1 + 504), *(a1 + 8), 0);
    }

    Count = CGClipStackGetCount();
    if (Count)
    {
      v25 = Count;
      v26 = 0;
      while (1)
      {
        CGClipStackGetClipAtIndex();
        if (AllowsAntialiasing)
        {
          ShouldAntialias = CGClipGetShouldAntialias();
        }

        else
        {
          ShouldAntialias = 0;
        }

        Mode = CGClipGetMode();
        Type = CGClipGetType();
        if (Type > 2)
        {
          if (Type == 3)
          {
            CGClipGetMask();
            Image = CGClipMaskGetImage();
            if (Image)
            {
              v35 = Image;
              CGClipMaskGetRect();
              *&v36 = v36;
              *&v37 = v37;
              v38.f32[0] = *&v38;
              *&v39 = v39;
              v82 = __PAIR64__(LODWORD(v37), LODWORD(v36));
              *&v40 = v38.f32[0];
              v38.i32[1] = LODWORD(v39);
              v81 = v38;
              v41 = -*&v39;
              *(&v36 + 1) = *&v37 + *&v39;
              *&v42 = 0;
              *(&v42 + 1) = v41;
              v89 = v40;
              v90 = v42;
              v91 = vcvtq_f64_f32(*&v36);
              CGClipMaskGetMatrix();
              v86 = v83;
              v87 = v84;
              v88 = v85;
              v43 = *(a1 + 16);
              v44.f64[0] = RB::operator*(&v89, &v86);
              v83 = v44;
              v84 = v45;
              v85 = v46;
              LODWORD(v44.f64[0]) = 1065353216;
              LODWORD(v45) = 1065353216;
              LODWORD(v46.f64[0]) = 1065353216;
              LODWORD(v47) = 1065353216;
              [v43 setImage:v35 transform:&v83 interpolation:1 tintColor:0 flags:{v44.f64[0], *&v45, v46.f64[0], v47}];
              v48 = *(a1 + 8);
              v49 = RB::operator*(&v86, v82, v81);
              [v48 setRect:{v49.f32[0], v49.f32[1], v50, v51}];
              [*(a1 + 8) setAntialiased:ShouldAntialias];
              v52 = RBDrawingStateBeginLayer(*(a1 + 504), 0);
              RBDrawingStateDrawShape(v52, *(a1 + 8), *(a1 + 16), 0, 1.0);
              RBDrawingStateClipLayer(*(a1 + 504), v52, 0, 1.0);
            }
          }

          else if (Type == 4)
          {
            CGClipGetTextClipping();
            Path = CGTextClippingCreatePath();
            if (Path)
            {
              v32 = Path;
              if (Mode > 1)
              {
                if (Mode == 2)
                {
                  CGClipGetStroke();
                  RB::ContextDelegate::set_stroked_clip(a1, v32);
                }
              }

              else
              {
                [*(a1 + 8) setPath:Path];
                [*(a1 + 8) setEOFill:Mode == 1];
              }

              [*(a1 + 8) setAntialiased:{ShouldAntialias, v78}];
              RBDrawingStateClipShape(*(a1 + 504), *(a1 + 8), 0);
              CFRelease(v32);
            }
          }

          goto LABEL_53;
        }

        if (!Type)
        {
          break;
        }

        if (Type == 2)
        {
          v30 = CGClipGetPath();
          if (Mode > 1)
          {
            if (Mode == 2)
            {
              CGClipGetStroke();
              RB::ContextDelegate::set_stroked_clip(a1, v30);
            }
          }

          else
          {
            [*(a1 + 8) setPath:{v30, v78}];
            [*(a1 + 8) setEOFill:Mode == 1];
          }

LABEL_49:
          [*(a1 + 8) setAntialiased:{ShouldAntialias, v78}];
          RBDrawingStateClipShape(*(a1 + 504), *(a1 + 8), 0);
        }

LABEL_53:
        if (v25 == ++v26)
        {
          goto LABEL_54;
        }
      }

      if (Mode > 1)
      {
        if (Mode == 2)
        {
          CGClipGetRect();
          v53 = CGPathCreateWithRect(v93, 0);
          CGClipGetStroke();
          RB::ContextDelegate::set_stroked_clip(a1, v53);
          if (v53)
          {
            CFRelease(v53);
          }
        }
      }

      else
      {
        v33 = *(a1 + 8);
        CGClipGetRect();
        [v33 setRect:?];
      }

      goto LABEL_49;
    }
  }

LABEL_54:
  if (v80)
  {
    RB::ContextDelegate::clip_soft_mask(a1);
  }

  if (!v79)
  {
LABEL_62:
    if (!AllowsAntialiasing)
    {
      goto LABEL_69;
    }

    goto LABEL_67;
  }

  v54 = CGRenderingStateGetBaseCTM();
  v55 = v54[1];
  v56 = v54[2];
  *(a1 + 544) = *v54;
  *(a1 + 560) = v55;
  *(a1 + 576) = v56;
  v57 = *(a1 + 504);
  v58.f64[0] = RB::operator*((a1 + 544), (a1 + 448));
  v89 = v58;
  v90 = v59;
  v91 = v60;
  RBDrawingStateSetCTM(v57, &v89);
  v61 = CGStyleGetType();
  switch(v61)
  {
    case 4:
      RB::ContextDelegate::add_color_matrix_style(a1);
      if ((AllowsAntialiasing & 1) == 0)
      {
LABEL_69:
        v17 = 1;
        goto LABEL_70;
      }

      break;
    case 3:
      RB::ContextDelegate::add_gaussian_blur_style(a1);
      if ((AllowsAntialiasing & 1) == 0)
      {
        goto LABEL_69;
      }

      break;
    case 1:
      RB::ContextDelegate::add_shadow_style(a1);
      if ((AllowsAntialiasing & 1) == 0)
      {
        goto LABEL_69;
      }

      break;
    default:
      goto LABEL_62;
  }

LABEL_67:
  if (!CGGStateGetShouldAntialias())
  {
    goto LABEL_69;
  }

  v17 = *(a1 + 616);
LABEL_70:
  [*(a1 + 8) setRenderingMode:{v17, v78}];
  v62 = *(a1 + 504);
  CGGStateGetEDRTargetHeadroom();
  RBDrawingStateSetTargetHeadroom(v62, v65, v63, v64);
  if ((a4 & 1) == 0)
  {
    CTM = CGGStateGetCTM();
    v67 = *(CTM + 16);
    v68 = *(CTM + 32);
    v86 = *CTM;
    v87 = v67;
    v88 = v68;
    v69.f64[0] = RB::operator*(&v86, (a1 + 448));
    v89 = v69;
    v90 = v70;
    v91 = v71;
    v72 = *(a1 + 504);
    v86 = v69;
    v87 = v70;
    v88 = v71;
    RBDrawingStateSetCTM(v72, &v86);
    if (v17 >= 2)
    {
      v73 = *(a1 + 620);
      v74 = RB::AffineTransform::scale(&v89);
      v75 = vrecpe_f32(LODWORD(v74));
      v76 = vmul_f32(vrecps_f32(LODWORD(v74), v75), v75);
      [*(a1 + 8) setRenderingModeArgument:{(v73 * vmul_f32(v76, vrecps_f32(LODWORD(v74), v76)).f32[0])}];
    }
  }

  v77 = *(a1 + 608);
  if (v77)
  {
    RBDrawingStateSetAttribute(*(a1 + 504), v77, 1);
  }
}

void sub_195D35220(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RBDrawingStateSetTargetHeadroom(uint64_t result, float _S0, uint64_t a3, _RBDrawingState *a4)
{
  _H1 = *(result + 176);
  __asm { FCVT            S1, H1 }

  if (_S1 != _S0)
  {
    v10 = result;
    __asm { FCVT            H1, S0 }

    *(result + 176) = _H1;
    result = *(*(result + 8) + 320);
    if (result)
    {
      RB::XML::DisplayList::set_target_headroom(result, v10, a4, _S0);
    }
  }

  return result;
}

void RB::ContextDelegate::set_color_in_shape(uint64_t a1, CGColorRef color, int a3, uint64_t a4, int a5)
{
  Pattern = CGColorGetPattern(color);
  if (Pattern)
  {
    v9 = Pattern;
    CTM = CGGStateGetCTM();
    v11 = *(CTM + 16);
    v12 = *(CTM + 32);
    v170 = *CTM;
    v171 = v11;
    v172[0] = v12;
    v13.f64[0] = RB::operator*(&v170, (a1 + 448));
    v167 = v13;
    v168 = v14;
    v169 = v15;
    BaseCTM = CGRenderingStateGetBaseCTM();
    v17 = *(BaseCTM + 16);
    v18 = *(BaseCTM + 32);
    v170 = *BaseCTM;
    v171 = v17;
    v172[0] = v18;
    v19.f64[0] = RB::operator*(&v170, (a1 + 448));
    v164 = v19;
    v165 = v20;
    v166 = v21;
    Shading = CGPatternGetShading();
    if (Shading)
    {
      v23 = Shading;
      CGPatternGetMatrix();
      v161 = v170;
      v162 = v171;
      v163 = v172[0];
      v24 = vandq_s8(vandq_s8(vceqq_f64(v165, v168), vceqq_f64(v164, v167)), vceqq_f64(v166, v169));
      if ((vandq_s8(vdupq_laneq_s64(v24, 1), v24).u64[0] & 0x8000000000000000) == 0)
      {
        v25.f64[0] = RB::operator*(&v161, &v164);
        v158 = v25;
        v159 = v26;
        v160 = v27;
        v170 = v167;
        v171 = v168;
        v172[0] = v169;
        v28 = RB::AffineTransform::invert(&v170);
        v29 = &v170;
        if (!v28)
        {
          v29 = &v167;
        }

        v30 = *v29;
        if (v28)
        {
          v31 = &v171;
        }

        else
        {
          v31 = &v168;
        }

        v32 = *v31;
        if (v28)
        {
          v33 = v172;
        }

        else
        {
          v33 = &v169;
        }

        v34 = *v33;
        v170 = v30;
        v171 = v32;
        v172[0] = v34;
        v35.f64[0] = RB::operator*(&v158, &v170);
        v161 = v35;
        v162 = v36;
        v163 = v37;
      }

      if (a5)
      {
        if (RB::ContextDelegate::draw_shading_in_shape(a1, a3, v23, &v161))
        {
          return;
        }
      }

      else
      {
        CGShadingGetBounds();
        if (CGRectIsInfinite(v175) && (RB::ContextDelegate::set_shading(a1, v23, &v161) & 1) != 0)
        {
          return;
        }
      }
    }

    IsColored = CGPatternIsColored();
    v46 = 1065353216;
    v47 = 1065353216;
    v48 = 1065353216;
    v49 = 1.0;
    if ((IsColored & 1) == 0)
    {
      PatternBaseColor = CGColorGetPatternBaseColor();
      if (PatternBaseColor)
      {
        v51 = RBColorFromCGColor2(PatternBaseColor, *(a1 + 592));
        v46 = LODWORD(v51);
        v47 = v52;
        v48 = v53;
        v49 = v54;
      }
    }

    v55 = CGColorGetAlpha(color) * v49;
    CGGStateGetPatternPhase();
    v57 = v56;
    v59 = v58;
    Image = CGPatternGetImage();
    if (Image)
    {
      v62 = Image;
      *&v61 = v57;
      v153 = v61;
      Width = CGImageGetWidth(Image);
      Height = CGImageGetHeight(v62);
      CGPatternGetMatrix();
      v161 = v170;
      v162 = v171;
      v163 = v172[0];
      v66.i32[0] = v153;
      v63 = v59;
      v66.f32[1] = Height + v63;
      v67.f64[0] = 0.0;
      v67.f64[1] = -Height;
      v170 = COERCE_UNSIGNED_INT64(Width);
      v171 = v67;
      v172[0] = vcvtq_f64_f32(v66);
      v68.f64[0] = RB::operator*(&v170, &v161);
      HIDWORD(v72) = HIDWORD(v168.f64[0]);
      v158 = v68;
      v159 = v69;
      v160 = v70;
      HIDWORD(v73) = HIDWORD(v169.f64[0]);
      v74 = vandq_s8(vandq_s8(vceqq_f64(v165, v168), vceqq_f64(v164, v167)), vceqq_f64(v166, v169));
      v75 = vdupq_laneq_s64(v74, 1);
      if ((vandq_s8(v75, v74).u64[0] & 0x8000000000000000) == 0)
      {
        v76.f64[0] = RB::operator*(&v158, &v164);
        v157[0] = v76;
        v157[1] = v77;
        v157[2] = v78;
        v170 = v167;
        v171 = v168;
        v172[0] = v169;
        v79 = RB::AffineTransform::invert(&v170);
        if (v79)
        {
          v80 = &v170;
        }

        else
        {
          v80 = &v167;
        }

        v81 = *v80;
        if (v79)
        {
          v82 = &v171;
        }

        else
        {
          v82 = &v168;
        }

        v83 = *v82;
        if (v79)
        {
          v84 = v172;
        }

        else
        {
          v84 = &v169;
        }

        v85 = *v84;
        v170 = v81;
        v171 = v83;
        v172[0] = v85;
        v68.f64[0] = RB::operator*(v157, &v170);
        v158 = v68;
        v159 = v69;
        v160 = v70;
      }

      v86 = *(a1 + 16);
      v170 = v68;
      v171 = v69;
      v172[0] = v70;
      v75.i32[0] = v46;
      LODWORD(v73) = v47;
      LODWORD(v72) = v48;
      *&v71 = v55;
      [v86 setTiledImage:v62 transform:&v170 sourceRect:1 interpolation:IsColored ^ 1u tintColor:0.0 flags:{0.0, 1.0, 1.0, *v75.i64, v73, v72, v71, v153}];
      if (a5)
      {
        v87 = *(a1 + 504);
        v88 = *(a1 + 8);
        v89 = *(a1 + 16);
        CGGStateGetAlpha();
        v91 = v90;
        if (!*(a1 + 424))
        {
          v91 = *(a1 + 520) * v91;
        }

        CompositeOperation = CGGStateGetCompositeOperation();
        if (CompositeOperation > 0x1B)
        {
          v93 = 0;
        }

        else
        {
        }

        RBDrawingStateDrawShape(v87, v88, v89, v93, v91);
      }
    }

    else
    {
      [*(a1 + 8) boundingRect];
      v95.f64[1] = v94;
      v97.f64[1] = v96;
      *&v157[0].f64[0] = RB::operator*(&v167, vcvt_f32_f64(v95), vcvt_f32_f64(v97));
      v157[0].f64[1] = v98;
      RBDrawingStateGetDeviceClipBoundingBox(*(a1 + 504));
      v100.f64[1] = v99;
      v102.f64[1] = v101;
      RB::Rect::intersect(v157, COERCE_DOUBLE(vcvt_f32_f64(v100)), vcvt_f32_f64(v102));
      v105 = RB::Bounds::Bounds(&v155, *&v157[0].f64[0], *&v157[0].f64[1], v103, v104);
      v106 = v156.i32[0];
      v107 = v156.i32[1];
      if (IsColored)
      {
        v108 = 8194;
        v109 = RB::srgb_colorspace(v105);
      }

      else
      {
        v109 = 0;
        v108 = 7;
      }

      v110 = CGBitmapContextCreate(0, v106, v107, 8uLL, 0, v109, v108);
      if (v110)
      {
        v111 = v110;
        CGContextTranslateCTM(v110, -v155.i32[0], -v155.i32[1]);
        v112 = vneg_s32(v155);
        v113.i64[0] = v112.i32[0];
        v113.i64[1] = v112.i32[1];
        v170 = v164;
        v171 = v165;
        v172[0] = vaddq_f64(v166, vcvtq_f64_s64(v113));
        CGContextSetBaseCTM();
        v174.width = v57;
        v174.height = v59;
        CGContextSetPatternPhase(v111, v174);
        v114 = CGContextSetCompositeOperation();
        if (IsColored)
        {
          v115 = 0;
        }

        else
        {
          v115 = RB::srgb_colorspace(v114);
        }

        v116 = CGColorSpaceCreatePattern(v115);
        v117 = CGColorCreateWithPattern(v116, v9, RB::ContextDelegate::set_color_in_shape(CGColor *,CGGState *,CGRenderingState *,BOOL)::components);
        CGContextSetFillColorWithColor(v111, v117);
        v118.i32[0] = 0;
        v119 = vceq_s32(v156, 0x8000000080000000);
        v120 = vdup_lane_s32(vcgt_s32(v118, vpmin_u32(v119, v119)), 0);
        v121 = vneg_f32(0x80000000800000);
        v122 = vbsl_s8(v120, v121, vcvt_f32_s32(v156));
        v123 = vbsl_s8(v120, 0x100000001000000, vcvt_f32_s32(v155));
        v176.origin.x = *v123.i32;
        v176.origin.y = *&v123.i32[1];
        v176.size.width = *v122.i32;
        v176.size.height = *&v122.i32[1];
        CGContextFillRect(v111, v176);
        v124.i32[0] = 0;
        v125 = vceq_s32(v156, 0x8000000080000000);
        v126 = vdup_lane_s32(vcgt_s32(v124, vpmin_u32(v125, v125)), 0);
        v127 = vbsl_s8(v126, 0x100000001000000, vcvt_f32_s32(v155));
        v128 = vbsl_s8(v126, v121, vcvt_f32_s32(v156));
        v129 = -v128.f32[1];
        v127.i32[1] = vadd_f32(v127, v128).i32[1];
        *&v130 = v128.f32[0];
        v131.f64[0] = 0.0;
        v131.f64[1] = v129;
        v161 = v130;
        v162 = v131;
        v163 = vcvtq_f64_f32(v127);
        v170 = v167;
        v171 = v168;
        v172[0] = v169;
        v132 = RB::AffineTransform::invert(&v170);
        if (v132)
        {
          v133 = &v170;
        }

        else
        {
          v133 = &v167;
        }

        v134 = *v133;
        v135 = &v171;
        if (!v132)
        {
          v135 = &v168;
        }

        v136 = *v135;
        v137 = &v169;
        if (v132)
        {
          v137 = v172;
        }

        v138 = *v137;
        v158 = v134;
        v159 = v136;
        v160 = v138;
        v139.f64[0] = RB::operator*(&v161, &v158);
        v161 = v139;
        v162 = v140;
        v163 = v141;
        v142 = CGBitmapContextCreateImage(v111);
        v143 = *(a1 + 16);
        v170 = v161;
        v171 = v162;
        v172[0] = v163;
        LODWORD(v144) = v48;
        *&v145 = v55;
        [v143 setImage:v142 transform:&v170 interpolation:1 tintColor:IsColored ^ 1u flags:{COERCE_DOUBLE(__PAIR64__(HIDWORD(v163.f64[0]), v46)), COERCE_DOUBLE(__PAIR64__(HIDWORD(v162.f64[0]), v47)), v144, v145}];
        if (a5)
        {
          v146 = *(a1 + 504);
          v147 = *(a1 + 8);
          v148 = *(a1 + 16);
          CGGStateGetAlpha();
          v150 = v149;
          if (!*(a1 + 424))
          {
            v150 = *(a1 + 520) * v150;
          }

          v151 = CGGStateGetCompositeOperation();
          if (v151 > 0x1B)
          {
            v152 = 0;
          }

          else
          {
          }

          RBDrawingStateDrawShape(v146, v147, v148, v152, v150);
        }

        if (v142)
        {
          CFRelease(v142);
        }

        if (v117)
        {
          CFRelease(v117);
        }

        if (v116)
        {
          CFRelease(v116);
        }

        CFRelease(v111);
      }
    }
  }

  else
  {
    [*(a1 + 16) setCGColor:color];
    if (a5)
    {
      v38 = *(a1 + 504);
      v39 = *(a1 + 8);
      v40 = *(a1 + 16);
      CGGStateGetAlpha();
      v42 = v41;
      if (!*(a1 + 424))
      {
        v42 = *(a1 + 520) * v42;
      }

      v43 = CGGStateGetCompositeOperation();
      if (v43 > 0x1B)
      {
        v44 = 0;
      }

      else
      {
      }

      RBDrawingStateDrawShape(v38, v39, v40, v44, v42);
    }
  }
}

void sub_195D35AC4(_Unwind_Exception *a1)
{
  if (v1)
  {
    CFRelease(v1);
    if (!v3)
    {
      goto LABEL_6;
    }
  }

  else if (!v3)
  {
LABEL_6:
    CFRelease(v2);
    _Unwind_Resume(a1);
  }

  CFRelease(v3);
  goto LABEL_6;
}

RB::ContextDelegate *RB::ContextDelegate::ContextDelegate(RB::ContextDelegate *this)
{
  *this = &unk_1F0A38F70;
  *(this + 1) = objc_opt_new();
  *(this + 2) = objc_opt_new();
  *(this + 52) = 0;
  *(this + 53) = 0;
  *(this + 54) = 4;
  *(this + 28) = xmmword_195E42760;
  *(this + 29) = xmmword_195E42770;
  *(this + 30) = 0u;
  *(this + 34) = xmmword_195E42760;
  *(this + 35) = xmmword_195E42770;
  *(this + 36) = 0u;
  *(this + 75) = 0;
  *(this + 77) = 0;
  *(this + 76) = 0;
  return this;
}

uint64_t RB::ContextDelegate::get_bounds()
{
  Info = CGContextDelegateGetInfo();
  DisplayList = RBDrawingStateGetDisplayList(*(Info + 496));

  return [DisplayList contentRect];
}

uint64_t RB::ContextDelegate::begin_transparency_layer(uint64_t a1, uint64_t a2, const char *a3)
{
  Info = CGContextDelegateGetInfo();
  RB::ContextDelegate::update(Info, a3, a2, 0);
  v7 = RBDrawingStateBeginLayer(*(Info + 504), 0);
  v8 = *(Info + 464);
  v18[0] = *(Info + 448);
  v18[1] = v8;
  v18[2] = *(Info + 480);
  RBDrawingStateSetCTM(v7, v18);
  v9 = *(Info + 424);
  if (*(Info + 432) < (v9 + 1))
  {
    RB::vector<RB::ContextDelegate::Layer,4ul,unsigned long>::reserve_slow((Info + 32), v9 + 1);
    v9 = *(Info + 424);
  }

  v10 = *(Info + 416);
  if (!v10)
  {
    v10 = Info + 32;
  }

  v11 = v10 + 96 * v9;
  v12 = *(Info + 528);
  v13 = *(Info + 532);
  *v11 = *(Info + 496);
  v14 = *(Info + 536);
  *(v11 + 16) = v12;
  *(v11 + 20) = v14;
  v15 = *(Info + 544);
  v16 = *(Info + 576);
  *(v11 + 48) = *(Info + 560);
  *(v11 + 64) = v16;
  *(v11 + 32) = v15;
  *(v11 + 80) = v13;
  ++*(Info + 424);
  *(Info + 496) = v7;
  *(Info + 504) = 0;
  *(Info + 528) = 0;
  *(Info + 532) = 0;
  *(Info + 536) = 0;
  return a1;
}

uint64_t RB::ContextDelegate::draw_path_(uint64_t a1, uint64_t a2, const char *a3, int a4, uint64_t a5, char a6)
{
  Info = CGContextDelegateGetInfo();
  RB::ContextDelegate::update(Info, a3, a2, 0);
  if (a6)
  {
    v33 = xmmword_195E42770;
    v32 = xmmword_195E42760;
    v12 = 0uLL;
  }

  else
  {
    CTM = CGGStateGetCTM();
    v34 = *CTM;
    v29 = CTM[1];
    v30 = CTM[2];
    v35 = *CTM;
    v36 = v29;
    v37 = v30;
    if (RB::AffineTransform::invert(&v35))
    {
      v14 = -1;
    }

    else
    {
      v14 = 0;
    }

    v15 = vdupq_n_s64(v14);
    v32 = vbslq_s8(v15, v35, v34);
    v33 = vbslq_s8(v15, v36, v29);
    v12 = vbslq_s8(v15, v37, v30);
  }

  v31 = v12;
  if (a4 == 2 || ((v16 = *(Info + 8), v35 = v32, v36 = v33, v37 = v12, [v16 setPath:a5 transform:&v35], a4 != 1) ? (v17 = a4 == 4) : (v17 = 1), !v17 ? (v18 = 0) : (v18 = 1), objc_msgSend(*(Info + 8), "setEOFill:", v18, *&v29), FillColor = CGGStateGetFillColor(), RB::ContextDelegate::set_color_in_shape(Info, FillColor, a3, a2, 1), a4 >= 2))
  {
    if (CGGStateGetLineDash())
    {
      Pattern = CGDashGetPattern();
    }

    else
    {
      Pattern = 0;
    }

    RBDrawingStateGetCTM(*(Info + 504), &v35);
    CGGStateGetAdjustedLineWidth();
    v22 = v21;
    v23 = *(Info + 8);
    v35 = v32;
    v36 = v33;
    v37 = v31;
    LineCap = CGGStateGetLineCap();
    LineJoin = CGGStateGetLineJoin();
    CGGStateGetMiterLimit();
    [v23 setStrokedPath:a5 transform:&v35 lineWidth:LineCap lineCap:LineJoin lineJoin:Pattern miterLimit:0 dashPhase:v22 dashPattern:v26 dashCount:0.0];
    [*(Info + 8) setEOFill:0];
    StrokeColor = CGGStateGetStrokeColor();
    RB::ContextDelegate::set_color_in_shape(Info, StrokeColor, a3, a2, 1);
  }

  return 0;
}

RB::DisplayList::State *RBDrawingStateBeginLayer(RB::DisplayList::State *a1, _RBDrawingState *a2)
{
  v4 = *(a1 + 1);
  if (!v4[3])
  {
    make_contents(*(a1 + 1));
  }

  if ((a2 & 4) != 0)
  {
    v5 = 119;
  }

  else
  {
    v5 = 123;
  }

  v6 = v5 & a2;
  if ((a2 & 0xA0) != 0)
  {
    v7 = v6 | 0x80;
  }

  else
  {
    v7 = v6;
  }

  v8 = RB::DisplayList::Builder::begin_layer((v4 + 2), a1, v7);
  v9 = RB::DisplayList::Builder::copy_state((v4 + 2), v8, a1);
  v10 = v4[40];
  if (v10)
  {
    RB::XML::DisplayList::begin_layer(v10, a1, a2);
  }

  return v9;
}

RB::DisplayList::State *RB::DisplayList::Builder::copy_state(RB::DisplayList::Builder *this, LayerState *a2, RB::DisplayList::State *a3)
{
  v5 = *(this + 2);
  if (v5)
  {
    *(this + 2) = *v5;
  }

  else
  {
    v5 = malloc_type_malloc(0xC0uLL, 0x10E0040FB4F2F54uLL);
  }

  RB::DisplayList::State::State(v5, *(*a2 + 72), a3);
  if ((*(*a2 + 76) & 0x10) != 0)
  {
    v6 = *(v5 + 11);
    v7 = *(a3 + 11);
    if (v6 != v7)
    {
      if (v6)
      {
        if (atomic_fetch_add_explicit((v6 + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          RB::Refcount<RB::Transition,std::atomic<unsigned int>>::release();
        }

        v7 = *(a3 + 11);
      }

      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1u, memory_order_relaxed);
      }

      *(v5 + 11) = v7;
    }
  }

  return v5;
}

RB::XML::Document *RBDrawingStateDrawLayer(uint64_t contents, RB::DisplayList::State *a2, unsigned int a3, float a4)
{
  v7 = contents;
  v8 = *(contents + 8);
  if (!v8[3])
  {
    contents = make_contents(*(contents + 8));
  }

  if (v8 != *(a2 + 1))
  {
    RBDrawingStateAssign_cold_1(contents, a2);
  }

  v9 = RB::DisplayList::Builder::end_layer((v8 + 2), a2);
  RB::DisplayList::Builder::delete_state((v8 + 2), a2);
  v10 = rb_blend_mode(a3);
  RB::DisplayList::Builder::draw_layer((v8 + 2), v9, v7, v10, a4);
  result = v8[40];
  if (result)
  {

    return RB::XML::DisplayList::draw_layer(result, a3, a4);
  }

  return result;
}

uint64_t RB::ContextDelegate::end_transparency_layer(uint64_t a1)
{
  Info = CGContextDelegateGetInfo();
  v3 = Info;
  v4 = Info + 4;
  v5 = Info[52];
  if (!v5)
  {
    v5 = Info + 4;
  }

  v6 = v5[12 * Info[53] - 11];
  v7 = Info[62];
  CGGStateGetAlpha();
  v9 = v8;
  if (!*(v3 + 53))
  {
    v9 = v3[130] * v9;
  }

  CompositeOperation = CGGStateGetCompositeOperation();
  if (CompositeOperation > 0x1B)
  {
    v11 = 0;
  }

  else
  {
  }

  RBDrawingStateDrawLayer(v6, v7, v11, v9);
  v14 = *(v3 + 63);
  if (v14)
  {
    RBDrawingStateDestroy(v14, v12, v13);
  }

  v15 = *(v3 + 52);
  v16 = *(v3 + 53);
  if (!v15)
  {
    v15 = v4;
  }

  v17 = &v15[12 * v16];
  v3[132] = *(v17 - 20);
  *(v3 + 532) = *(v17 - 16);
  *(v3 + 67) = *(v17 - 19);
  v19 = *(v17 - 3);
  v18 = *(v17 - 2);
  *(v3 + 34) = *(v17 - 4);
  *(v3 + 35) = v19;
  *(v3 + 36) = v18;
  *(v3 + 31) = *(v17 - 6);
  *(v3 + 53) = v16 - 1;
  return a1;
}

unint64_t RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Color>::has_no_effect(uint64_t a1)
{
  __asm { FCMP            H0, #0 }

  if (_ZF)
  {
    return RB::may_discard_alpha(*(a1 + 46) & 0x3F);
  }

  __asm { FCMP            H0, #0 }

  if (_NF ^ _VF | _ZF)
  {
    return RB::may_discard_alpha(*(a1 + 46) & 0x3F);
  }

  else
  {
    return 0;
  }
}

void *RB::DisplayList::GenericItem<RB::Coverage::Path,RB::Fill::Color>::copy(uint64_t a1, uint64_t a2, char a3)
{
  v4 = (*(a2 + 8) + 16);
  v5 = *(a1 + 46);
  if (a3 & 2 | v5 & 0x2000 || *(a2 + 288) != 1)
  {
    v8 = 0;
LABEL_6:
    LODWORD(v9[0]) = v5 & 0x3F;
    result = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage4PathENS_4Fill5ColorEEEJRS0_RKS5_RKS7_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(v4, v4, a1 + 56, a1 + 88, (a1 + 48), (a1 + 44), v9);
    *(result + 1) = *(a1 + 16);
    result[4] = *(a1 + 32);
    *(result + 10) = *(a1 + 40);
    v7 = *(result + 23) | *(a1 + 46) & 0x7000;
    *(result + 23) = v7;
    goto LABEL_7;
  }

  v9[0] = &unk_1F0A3D7A0;
  v9[1] = v4;
  v9[2] = a1;
  v9[3] = a1 + 88;
  v9[4] = *(a1 + 48);
  v10 = 0;
  RB::Coverage::Path::simplify(a1 + 56, v9);
  result = v10;
  if (!v10)
  {
    v5 = *(a1 + 46);
    v8 = 0x2000;
    goto LABEL_6;
  }

  v7 = *(v10 + 46);
  v8 = 0x2000;
LABEL_7:
  *(result + 23) = v7 | v8;
  return result;
}

uint64_t RB::Coverage::anonymous namespace::enable_path_primitives(RB::Coverage::_anonymous_namespace_ *this)
{
  {
    v3 = RB::debug_BOOL("RB_PATH_PRIMITIVES", v2);
  }
}

uint64_t RB::Coverage::Path::simplify(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 29);
    v7 = *(a1 + 24);
    v10 = a2;
    if (v5)
    {
      v8 = *v5;
      v9 = v5[2];
      v12 = v5[1];
      v13 = v9;
      v11 = v8;
    }

    else
    {
      v11 = xmmword_195E42760;
      v12 = xmmword_195E42770;
      v13 = 0uLL;
    }

    v14 = v6;
    v15 = v7;
    v17 = 0;
    v18 = 0;
    v16 = 0;
    v19 = 0;
  }

  return result;
}

void *_ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6GlyphsENS_4Fill5ColorEEEJRS0_RKS5_RKS7_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(RB::Heap *this, RB::Heap *a2, RB::Coverage::Glyphs *a3, uint64_t a4, uint64_t *a5, __int16 *a6, _DWORD *a7)
{
  v14 = *(this + 3);
  v15 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v15 + 128 > v14)
  {
    v15 = RB::Heap::alloc_slow(this, 0x80uLL, 7);
  }

  else
  {
    *(this + 2) = v15 + 128;
  }

  _H0 = *a6;
  __asm { FCVT            S0, H0 }

  result = RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Color>::GenericItem1(v15, a2, a3, a4, *a5, *a7, 0, _S0);
  *result = &unk_1F0A3CAE8;
  return result;
}

__n128 RB::DisplayList::GenericItem<RB::Coverage::Glyphs,RB::Fill::Color>::copy(__n128 *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v6 = a1[2].n128_u16[7] & 0x3F;
  v4 = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6GlyphsENS_4Fill5ColorEEEJRS0_RKS5_RKS7_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_((v3 + 16), (v3 + 16), &a1[3].n128_i8[8], &a1[7], &a1[3], &a1[2].n128_i16[6], &v6);
  result = a1[1];
  v4[1] = result;
  v4[2].n128_u64[0] = a1[2].n128_u64[0];
  v4[2].n128_u32[2] = a1[2].n128_u32[2];
  v4[2].n128_u16[7] |= a1[2].n128_u16[7] & 0x7000;
  return result;
}

__n128 RB::Coverage::Glyphs::Glyphs(RB::Coverage::Glyphs *this, const RB::Coverage::Glyphs *a2, RB::Heap *a3)
{
  v4 = RB::Coverage::Glyphs::Glyphs(this, a3, *a2, *(a2 + 4), (*(a2 + 1) + 8 * *(a2 + 4)), *(a2 + 1), *(a2 + 5), *(a2 + 52), *(a2 + 3), *(a2 + 12), *(a2 + 53));
  result = *(a2 + 2);
  v4[2] = result;
  return result;
}

float64x2_t *RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Color>::apply_transform(float64x2_t **a1, const RB::DisplayList::CachedTransform *a2, uint64_t a3)
{
  RB::DisplayList::Item::apply_transform(a1, a2, a3);
  result = RB::DisplayList::CachedTransform::transform_ctm(a2, a1[6]);
  a1[6] = result;
  return result;
}

void *_ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage4PathENS_4Fill5ColorEEEJRS0_RKS5_RKS7_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(RB::Heap *this, size_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, __int16 *a6, _DWORD *a7)
{
  v14 = *(this + 3);
  v15 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v15 + 104 > v14)
  {
    v15 = RB::Heap::alloc_slow(this, 0x68uLL, 7);
  }

  else
  {
    *(this + 2) = v15 + 104;
  }

  _H0 = *a6;
  __asm { FCVT            S0, H0 }

  result = RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Color>::GenericItem1(v15, a2, a3, a4, *a5, *a7, 0, _S0);
  *result = &unk_1F0A3CF28;
  return result;
}

float64x2_t *RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Color>::apply_transform(float64x2_t **a1, const RB::DisplayList::CachedTransform *a2, uint64_t a3)
{
  RB::DisplayList::Item::apply_transform(a1, a2, a3);
  result = RB::DisplayList::CachedTransform::transform_ctm(a2, a1[6]);
  a1[6] = result;
  return result;
}

void *RB::DisplayList::GenericItem<RB::Coverage::Path,RB::Fill::Color>::~GenericItem(void *a1)
{
  *a1 = &unk_1F0A3B860;
  RBPathRelease(a1[7], a1[8]);
  return a1;
}

RB::Shader::Tables *RB::Shader::Tables::shared(void)::$_0::operator()()
{
  v0 = mmap(0, 0x4000uLL, 3, 4098, -1, 0);
  if (v0 == -1)
  {
    RB::Shader::Tables::shared(void)::$_0::operator()(-1, v1);
  }

  return RB::Shader::Tables::Tables(v0);
}

double RBDrawingStateSetIdentifier2(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  *uu = a3;
  v13 = a4;
  uuid_clear(&v11);
  v10 = a2;
  if (uuid_is_null(uu))
  {
    v11 = *(a1 + 68);
  }

  else
  {
    uuid_copy(&v11, uu);
  }
}

double anonymous namespace::set_identity(_anonymous_namespace_ *this, _RBDrawingState *a2, const RB::Identity *a3, uint64_t a4, const RB::Identity *a5)
{
  v7 = (this + 64);
  if (*(this + 16) != *a2 || (*(this + 68) == *(a2 + 4) ? (v8 = *(this + 76) == *(a2 + 12)) : (v8 = 0), !v8))
  {
    v9 = *(this + 1);
    if (!*(v9 + 24))
    {
      make_contents(*(this + 1));
    }

    v10 = *(v9 + 320);
    if (v10)
    {
      RB::XML::DisplayList::set_identity(v10, this, v7, a2, a5);
    }

    *&result = RB::DisplayList::State::set_identity(this, a2).n128_u64[0];
  }

  return result;
}

__n128 RB::DisplayList::State::set_identity(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 68);
  *(a1 + 64) = *a2;
  v4 = *(a2 + 4);
  v3 = (a2 + 4);
  if (v2 != v4 || *(a1 + 76) != v3->n128_u64[1])
  {
    result = *v3;
    *(a1 + 68) = *v3;
    *(a1 + 120) = 0;
  }

  return result;
}

void RBDrawingStateEndCGContext(uint64_t a1, const char *a2, _RBDrawingState *a3)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 360);
  if (!v4)
  {
    RBDrawingStateEndCGContext_cold_1(a1, a2);
  }

  v5 = *(v3 + 352);
  if (!v5)
  {
    v5 = v3 + 336;
  }

  v6 = v5 + 16 * (v4 - 1);
  RB::ContextDelegate::end(*(v6 + 8), a2, a3);
  RB::ContextDelegate::release_context(v6);
  v7 = *(v3 + 360) - 1;
  *(v3 + 360) = v7;
  v8 = *(v3 + 352);
  if (!v8)
  {
    v8 = v3 + 336;
  }

  v9 = *(v8 + 16 * v7);
  if (v9)
  {

    CFRelease(v9);
  }
}

void RB::srgb_colorspace()
{
  if (__cxa_guard_acquire(&qword_1ED6D54A0))
  {
    v0 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    v1 = OUTLINED_FUNCTION_0_8(v0, &qword_1ED6D5498);

    __cxa_guard_release(v1);
  }
}

RB::Shader::Tables *RB::Shader::Tables::Tables(float16x4_t *this)
{
  v2 = this + 1024;
  v3 = -4;
  v21 = vdupq_n_s32(0x414EB852u);
  v19 = vdupq_n_s32(0x3F870A3Du);
  v20 = vdupq_n_s32(0x3ED555C5u);
  v17 = vdupq_n_s32(0x3B4D2E1Cu);
  v18 = vdupq_n_s32(0xBD6147AE);
  v15 = vdupq_n_s32(0x3F72A76Eu);
  v16 = vdupq_n_s32(0x3D9E8391u);
  v13 = vdupq_n_s32(0x4019999Au);
  v14 = vdupq_n_s32(0x3D558919u);
  v12 = vdupq_n_s32(0x3D25AEE6u);
  v4 = this;
  do
  {
    v3 += 4;
    v5 = vorr_s8(vdup_n_s32(v3), 0x300000002);
    v6.i16[0] = v3;
    v6.i16[1] = v3 | 1;
    v6.i16[2] = v5.i16[0];
    v6.i16[3] = v5.i16[2];
    v7 = vcvtq_f32_f16((*&vshl_n_s16(v6, 3uLL) | 0x4000400040004));
    v22 = vmulq_f32(v7, v21);
    v24 = v7;
    v8 = _simd_log2_f4(v7);
    v23 = vbslq_s8(vcgeq_f32(v17, v24), v22, vmlaq_f32(v18, v19, _simd_exp2_f4(vmulq_f32(v8, v20))));
    v9 = _simd_log2_f4(vmlaq_f32(v14, v15, v24));
    v10 = _simd_exp2_f4(vmulq_f32(v9, v13));
    *v4 = vcvt_f16_f32(v23);
    v4[1024] = vcvt_f16_f32(vbslq_s8(vcgeq_f32(v12, v24), vmulq_f32(v24, v16), v10));
    ++v4;
  }

  while (v3 < 0xFFC);
  this->i16[0] = 0;
  this[480].i16[0] = COERCE_UNSIGNED_INT(1.0);
  v2->i16[0] = 0;
  v2[480].i16[0] = COERCE_UNSIGNED_INT(1.0);
  return this;
}

double RB::Fill::Color::convert_to_oklab(RB::Fill::Color *this)
{
  _H0 = *this;
  __asm { FCVT            S0, H0 }

  _H2 = *(this + 1);
  __asm { FCVT            S2, H2 }

  _H3 = *(this + 2);
  __asm { FCVT            S3, H3 }

  _S9 = ((_S0 * 0.41222) + (_S2 * 0.53633)) + (_S3 * 0.051446);
  _S10 = ((_S0 * 0.2119) + (_S2 * 0.6807)) + (_S3 * 0.1074);
  _S11 = ((_S0 * 0.088302) + (_S2 * 0.28172)) + (_S3 * 0.62998);
  *_Q0.i32 = powf(fabsf(_S9), 0.33333);
  __asm
  {
    FCVT            H0, S0
    FCVT            H1, S9
  }

  v17.i64[0] = 0x8000800080008000;
  v17.i64[1] = 0x8000800080008000;
  *this = vbslq_s8(v17, _Q0, _Q1).u16[0];
  *_Q0.i32 = powf(fabsf(_S10), 0.33333);
  __asm
  {
    FCVT            H0, S0
    FCVT            H1, S10
  }

  v20.i64[0] = 0x8000800080008000;
  v20.i64[1] = 0x8000800080008000;
  *(this + 1) = vbslq_s8(v20, _Q0, _Q1).u16[0];
  *_Q0.i32 = powf(fabsf(_S11), 0.33333);
  __asm
  {
    FCVT            H0, S0
    FCVT            H1, S11
  }

  v23.i64[0] = 0x8000800080008000;
  v23.i64[1] = 0x8000800080008000;
  *&result = vbslq_s8(v23, _Q0, _Q1).u64[0];
  *(this + 2) = LOWORD(result);
  return result;
}

void RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Color>::render(uint64_t a1, int a2, RB::RenderPass *a3, double a4, char a5, unsigned int a6)
{
  v22[5] = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 48);
  v10.i64[0] = SLODWORD(a4);
  v10.i64[1] = SHIDWORD(a4);
  v11 = *(v9 + 16);
  v12 = vaddq_f64(*(v9 + 32), vcvtq_f64_s64(v10));
  v14[0] = *v9;
  v14[1] = v11;
  v14[2] = v12;
  v13 = *(a1 + 44);
  RB::Path::ImmediateRenderer::ImmediateRenderer(v18, a3, v14, (a1 + 56));
  LOWORD(v15) = *(a1 + 88);
  *(&v15 + 2) = *(a1 + 90);
  *(&v15 + 3) = *(a1 + 94) * v13;
  v16 = *(a1 + 96);
  v17 = *(a1 + 100);
  RB::Path::Renderer::render(v22, &v15, a5, a6);
  if (v21 == 1)
  {
    RB::Path::Accumulator::commit_buffer(&v19);
  }

  if (v20)
  {
    free(v20);
  }
}

void sub_195D37004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49)
{
  if (a49)
  {
    free(a49);
  }

  _Unwind_Resume(exception_object);
}

float32x2_t *RB::Path::ImmediateRenderer::ImmediateRenderer(float32x2_t *this, int32x2_t *a2, float64x2_t *a3, const RB::Coverage::Path *a4)
{
  v8 = *(*a2 + 16);
  v9 = RB::bezier_flatness(*(a4 + 29));
  v10.i32[0] = 0;
  *v13.i8 = a2[22];
  v11 = vceq_s32(*v13.i8, 0x8000000080000000);
  v12 = vdup_lane_s32(vcgt_s32(v10, vpmin_u32(v11, v11)), 0);
  *v13.i8 = vbsl_s8(v12, vneg_f32(0x80000000800000), vcvt_f32_s32(*v13.i8));
  *v14.i8 = vbsl_s8(v12, 0x100000001000000, vcvt_f32_s32(a2[21]));
  if (*(a4 + 29) >= 2u)
  {
    v15 = vmvn_s8(vceqz_f32(*v13.i8));
    if ((vpmin_u32(v15, v15).u32[0] & 0x80000000) != 0)
    {
      if (*(a4 + 6) >= 0.0)
      {
        v16 = *(a4 + 6);
      }

      else
      {
        v16 = 0.0;
      }

      v31 = v14;
      v32 = v13;
      *v17.i32 = v16 * RB::AffineTransform::scale(a3);
      *v18.i8 = vcgt_f32(vneg_f32(0x80000000800000), *v32.i8);
      *v19.i8 = vsub_f32(*v31.i8, vdup_lane_s32(v17, 0));
      v20 = vcltzq_s32(v18);
      v14.i64[0] = vbslq_s8(v20, v19, v31).u64[0];
      *v19.i8 = vmla_n_f32(*v32.i8, 0x4000000040000000, *v17.i32);
      v13.i64[0] = vbslq_s8(v20, v19, v32).u64[0];
    }
  }

  RB::Path::Accumulator::Accumulator(&this[1], v8, a4, a3, v9, *v14.i8, *v13.i8);
  if (this[36].i8[0] == 1)
  {
    RB::Path::Accumulator::commit_buffer(&this[1]);
  }

  v21 = this[33];
  this[40] = v21;
  if (v21)
  {
    if (this[36].i8[0] == 1)
    {
      RB::Path::Accumulator::commit_buffer(&this[1]);
    }

    v21 = this + 16;
    if (this[32])
    {
      v21 = this[32];
    }
  }

  this[41] = v21;
  v22 = vcgt_f32(this[9], this[8]);
  v23 = vpmin_u32(v22, v22).u32[0];
  v24 = 0;
  v25 = 0.0;
  if ((v23 & 0x80000000) != 0)
  {
    v25 = RB::Rect::from_bounds(this[8], this[9]);
  }

  *&this[42] = v25;
  this[43] = v24;
  *this[44].f32 = xmmword_195E42760;
  *this[46].f32 = xmmword_195E42770;
  this[48] = 0;
  this[49] = 0;
  v26 = *(a4 + 28);
  v27 = *(a4 + 29);
  v28 = 0.0;
  if ((v27 - 2) <= 2)
  {
    v29 = *(a4 + 6);
    v28 = RB::AffineTransform::scale(a3) * v29;
  }

  this[50] = a2;
  this[51].i8[0] = v26;
  this[51].i8[1] = v27;
  this[51].f32[1] = v28;
  this[52] = 1;
  this[53] = &this[40];
  return this;
}

float RB::bezier_flatness(RB *this)
{
  if ((atomic_load_explicit(&qword_1ED6D5480, memory_order_acquire) & 1) == 0)
  {
    RB::bezier_flatness();
  }

  result = *&dword_1ED6D5478;
  if (*&dword_1ED6D5478 < 0.01)
  {
    result = 0.01;
  }

  if (!byte_1ED6D547C)
  {
    return 0.25;
  }

  return result;
}

float RB::bezier_flatness(RB *a1)
{
  v1 = a1;
  result = RB::bezier_flatness(a1);
  if ((v1 - 2) < 3)
  {
    return result * 0.5;
  }

  return result;
}

void RB::bezier_flatness()
{
  if (__cxa_guard_acquire(&qword_1ED6D5480))
  {
    v1 = RB::debug_float("RB_FLATNESS", v0);
    dword_1ED6D5478 = v1;
    byte_1ED6D547C = BYTE4(v1);

    __cxa_guard_release(&qword_1ED6D5480);
  }
}

uint64_t RB::debug_float(RB *this, const char *a2)
{
  RB::Config::debug_value(this, &v6);
  v2 = v6;
  v4 = RB::Config::float_value(v6, v3);
  if (v2)
  {
    CFRelease(v2);
  }

  return v4 & 0xFFFFFFFFFFLL;
}

double RB::pixel_format_traits(MTLPixelFormat)::$_0::__invoke()
{
  v0 = malloc_type_malloc(0x1428uLL, 0x1000040A92913C0uLL);
  RB::pixel_format_traits(MTLPixelFormat)::sorted_traits = v0;

  *&result = _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZZN2RB19pixel_format_traitsE14MTLPixelFormatENK3__0clEPvEUlRKT_RKT0_E_PNS2_17PixelFormatTraitsELb0EEEvT1_SG_S9_NS_15iterator_traitsISG_E15difference_typeEb(v0, v0 + 5160, 14, 1, v1).n128_u64[0];
  return result;
}

RB::SurfacePool *RB::SurfacePool::SurfacePool(RB::SurfacePool *this)
{
  *this = 0;
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  *(this + 1) = dispatch_queue_create("com.apple.RenderBox.SurfacePool", v2);
  v3 = IOSurfaceNotifierCreate();
  *(this + 3) = 0;
  *(this + 2) = v3;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 2;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0x7FF0000000000000;
  *(this + 136) = 0;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  if (v3)
  {
    IOSurfaceNotifierSetDispatchQueue();
  }

  return this;
}

void sub_195D37514(_Unwind_Exception *a1)
{
  v4 = v3;
  if (*v4)
  {
    free(*v4);
  }

  RB::vector<std::pair<RB::cf_ptr<_CAImageQueue *>,double>,2ul,unsigned long>::~vector(v2 + 24);
  RB::vector<RB::refcounted_ptr<RB::Surface>,0ul,unsigned long>::~vector(v2);
  v6 = *(v1 + 16);
  if (v6)
  {
    CFRelease(v6);
  }

  _Unwind_Resume(a1);
}

__n128 _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZZN2RB19pixel_format_traitsE14MTLPixelFormatENK3__0clEPvEUlRKT_RKT0_E_PNS2_17PixelFormatTraitsELb0EEEvT1_SG_S9_NS_15iterator_traitsISG_E15difference_typeEb(uint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 40);
  v10 = (a2 - 80);
  v11 = (a2 - 120);
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v12) >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        v122 = *(a2 - 40);
        v121 = a2 - 40;
        if (v122 >= *v12)
        {
          return result;
        }

LABEL_106:
        v295 = *(v12 + 32);
        v231 = *v12;
        v264 = *(v12 + 16);
        v127 = *v121;
        v128 = *(v121 + 16);
        *(v12 + 32) = *(v121 + 32);
        *v12 = v127;
        *(v12 + 16) = v128;
        result = v231;
        v129 = v264;
        *(v121 + 32) = v295;
LABEL_107:
        *v121 = result;
        *(v121 + 16) = v129;
        return result;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v123 = v12 + 40;
      v130 = *(v12 + 40);
      v131 = (v12 + 80);
      v132 = *(v12 + 80);
      if (v130 >= *v12)
      {
        if (v132 < v130)
        {
          v183 = *(v12 + 72);
          v184 = *v123;
          result = *(v12 + 56);
          v185 = *(v12 + 96);
          *v123 = *v131;
          *(v12 + 56) = v185;
          *(v12 + 72) = *(v12 + 112);
          *v131 = v184;
          *(v12 + 96) = result;
          *(v12 + 112) = v183;
          if (*(v12 + 40) < *v12)
          {
            v301 = *(v12 + 32);
            v236 = *v12;
            v270 = *(v12 + 16);
            v186 = *(v12 + 56);
            *v12 = *v123;
            *(v12 + 16) = v186;
            *(v12 + 32) = *(v12 + 72);
            result = v236;
            *v123 = v236;
            *(v12 + 56) = v270;
            *(v12 + 72) = v301;
          }
        }
      }

      else
      {
        if (v132 < v130)
        {
          v296 = *(v12 + 32);
          v232 = *v12;
          v265 = *(v12 + 16);
          v133 = *(v12 + 96);
          *v12 = *v131;
          *(v12 + 16) = v133;
          *(v12 + 32) = *(v12 + 112);
          result = v232;
          *v131 = v232;
          *(v12 + 96) = v265;
          v134 = v296;
          goto LABEL_187;
        }

        v305 = *(v12 + 32);
        v239 = *v12;
        v273 = *(v12 + 16);
        v194 = *(v12 + 56);
        *v12 = *v123;
        *(v12 + 16) = v194;
        *(v12 + 32) = *(v12 + 72);
        result = v239;
        *v123 = v239;
        *(v12 + 56) = v273;
        *(v12 + 72) = v305;
        if (v132 < *(v12 + 40))
        {
          v134 = *(v12 + 72);
          v195 = *v123;
          result = *(v12 + 56);
          v196 = *(v12 + 96);
          *v123 = *v131;
          *(v12 + 56) = v196;
          *(v12 + 72) = *(v12 + 112);
          *v131 = v195;
          *(v12 + 96) = result;
LABEL_187:
          *(v12 + 112) = v134;
        }
      }

      if (v9->n128_u32[0] >= v131->n128_u32[0])
      {
        return result;
      }

      result = *v131;
      v274 = *(v12 + 96);
      v306 = *(v12 + 112);
      v198 = *v9;
      v197 = *(a2 - 24);
      *(v12 + 112) = *(a2 - 8);
      *v131 = v198;
      *(v12 + 96) = v197;
      *(a2 - 8) = v306;
      *v9 = result;
      *(a2 - 24) = v274;
      if (v131->n128_u32[0] >= *v123)
      {
        return result;
      }

      v199 = *(v12 + 72);
      v200 = *v123;
      result = *(v12 + 56);
      v201 = *(v12 + 96);
      *v123 = *v131;
      *(v12 + 56) = v201;
      *(v12 + 72) = *(v12 + 112);
      *v131 = v200;
      *(v12 + 96) = result;
      *(v12 + 112) = v199;
LABEL_191:
      if (*(v12 + 40) < *v12)
      {
        v307 = *(v12 + 32);
        v240 = *v12;
        v275 = *(v12 + 16);
        v202 = *(v123 + 16);
        *v12 = *v123;
        *(v12 + 16) = v202;
        *(v12 + 32) = *(v123 + 32);
        result = v240;
        *v123 = v240;
        *(v123 + 16) = v275;
        *(v123 + 32) = v307;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = _ZNSt3__17__sort5B8nn200100INS_17_ClassicAlgPolicyERZZN2RB19pixel_format_traitsE14MTLPixelFormatENK3__0clEPvEUlRKT_RKT0_E_PNS2_17PixelFormatTraitsELi0EEEvT1_SG_SG_SG_SG_S9_(v12, (v12 + 40), (v12 + 80), v12 + 120, a2 - 40, result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 959)
    {
      v135 = v12 + 40;
      v137 = v12 == a2 || v135 == a2;
      if (a4)
      {
        if (!v137)
        {
          v138 = 0;
          v139 = v12;
          do
          {
            v140 = v135;
            v141 = *(v139 + 40);
            if (v141 < *v139)
            {
              v233 = *(v139 + 44);
              v266 = *(v139 + 60);
              v297 = *(v139 + 76);
              v142 = v138;
              while (1)
              {
                v143 = v12 + v142;
                v144 = *(v12 + v142 + 16);
                *(v143 + 40) = *(v12 + v142);
                *(v143 + 56) = v144;
                *(v143 + 72) = *(v12 + v142 + 32);
                if (!v142)
                {
                  break;
                }

                v142 -= 40;
                if (v141 >= *(v143 - 40))
                {
                  v145 = v12 + v142 + 40;
                  goto LABEL_126;
                }
              }

              v145 = v12;
LABEL_126:
              *v145 = v141;
              result = v233;
              *(v145 + 36) = v297;
              *(v145 + 20) = v266;
              *(v145 + 4) = v233;
            }

            v135 = v140 + 40;
            v138 += 40;
            v139 = v140;
          }

          while (v140 + 40 != a2);
        }
      }

      else if (!v137)
      {
        do
        {
          v187 = v135;
          v188 = *(a1 + 40);
          if (v188 < *a1)
          {
            v237 = *(a1 + 44);
            v271 = *(a1 + 60);
            v302 = *(a1 + 76);
            do
            {
              v189 = *(v135 - 24);
              *v135 = *(v135 - 40);
              *(v135 + 16) = v189;
              *(v135 + 32) = *(v135 - 8);
              v190 = *(v135 - 80);
              v135 -= 40;
            }

            while (v188 < v190);
            *v135 = v188;
            result = v237;
            *(v135 + 36) = v302;
            *(v135 + 20) = v271;
            *(v135 + 4) = v237;
          }

          v135 = v187 + 40;
          a1 = v187;
        }

        while (v187 + 40 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v146 = (v14 - 2) >> 1;
        v147 = v146;
        do
        {
          v148 = v147;
          if (v146 >= v147)
          {
            v149 = (2 * v147) | 1;
            v150 = v12 + 40 * v149;
            if (2 * v148 + 2 >= v14)
            {
              v151 = *v150;
            }

            else
            {
              v151 = *(v150 + 40);
              v152 = *v150 >= v151;
              if (*v150 > v151)
              {
                v151 = *v150;
              }

              if (!v152)
              {
                v150 += 40;
                v149 = 2 * v148 + 2;
              }
            }

            v153 = v12 + 40 * v148;
            v154 = *v153;
            if (v151 >= *v153)
            {
              v298 = *(v153 + 36);
              v234 = *(v153 + 4);
              v267 = *(v153 + 20);
              do
              {
                v155 = v153;
                v153 = v150;
                v156 = *v150;
                v157 = *(v150 + 16);
                *(v155 + 32) = *(v150 + 32);
                *v155 = v156;
                *(v155 + 16) = v157;
                if (v146 < v149)
                {
                  break;
                }

                v158 = (2 * v149) | 1;
                v150 = v12 + 40 * v158;
                v149 = 2 * v149 + 2;
                if (v149 >= v14)
                {
                  v159 = *v150;
                  v149 = v158;
                }

                else
                {
                  v159 = *v150;
                  v160 = *(v150 + 40);
                  if (*v150 <= v160)
                  {
                    v159 = *(v150 + 40);
                  }

                  if (*v150 >= v160)
                  {
                    v149 = v158;
                  }

                  else
                  {
                    v150 += 40;
                  }
                }
              }

              while (v159 >= v154);
              *v153 = v154;
              *(v153 + 36) = v298;
              *(v153 + 20) = v267;
              *(v153 + 4) = v234;
            }
          }

          v147 = v148 - 1;
        }

        while (v148);
        v161 = 0xCCCCCCCCCCCCCCCDLL * (v13 >> 3);
        do
        {
          v162 = 0;
          v299 = *(v12 + 32);
          v235 = *v12;
          v268 = *(v12 + 16);
          v163 = v12;
          do
          {
            v164 = v163 + 40 * v162;
            v165 = v164 + 40;
            v166 = (2 * v162) | 1;
            v162 = 2 * v162 + 2;
            if (v162 >= v161)
            {
              v162 = v166;
            }

            else
            {
              v168 = *(v164 + 80);
              v167 = v164 + 80;
              if (*(v167 - 40) >= v168)
              {
                v162 = v166;
              }

              else
              {
                v165 = v167;
              }
            }

            v169 = *v165;
            v170 = *(v165 + 16);
            *(v163 + 32) = *(v165 + 32);
            *v163 = v169;
            *(v163 + 16) = v170;
            v163 = v165;
          }

          while (v162 <= ((v161 - 2) >> 1));
          a2 -= 40;
          if (v165 == a2)
          {
            result = v235;
            *(v165 + 32) = v299;
            *v165 = v235;
            *(v165 + 16) = v268;
          }

          else
          {
            v171 = *a2;
            v172 = *(a2 + 16);
            *(v165 + 32) = *(a2 + 32);
            *v165 = v171;
            *(v165 + 16) = v172;
            result = v235;
            *(a2 + 32) = v299;
            *a2 = v235;
            *(a2 + 16) = v268;
            v173 = v165 - v12 + 40;
            if (v173 >= 41)
            {
              v174 = (-2 - 0x3333333333333333 * (v173 >> 3)) >> 1;
              v175 = v12 + 40 * v174;
              v176 = *v165;
              if (*v175 < *v165)
              {
                v211 = *(v165 + 36);
                v205 = *(v165 + 4);
                v208 = *(v165 + 20);
                do
                {
                  v177 = v165;
                  v165 = v175;
                  v178 = *v175;
                  v179 = *(v175 + 16);
                  *(v177 + 32) = *(v175 + 32);
                  *v177 = v178;
                  *(v177 + 16) = v179;
                  if (!v174)
                  {
                    break;
                  }

                  v174 = (v174 - 1) >> 1;
                  v175 = v12 + 40 * v174;
                }

                while (*v175 < v176);
                *v165 = v176;
                result = v205;
                *(v165 + 36) = v211;
                *(v165 + 20) = v208;
                *(v165 + 4) = v205;
              }
            }
          }
        }

        while (v161-- > 2);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = v12 + 40 * (v14 >> 1);
    v17 = v9->n128_u32[0];
    if (v13 >= 0x1401)
    {
      v18 = *v16;
      if (*v16 >= *v12)
      {
        if (v17 < v18)
        {
          v278 = *(v16 + 32);
          v214 = *v16;
          v243 = *(v16 + 16);
          v24 = *v9;
          v25 = *(a2 - 24);
          *(v16 + 32) = *(a2 - 8);
          *v16 = v24;
          *(v16 + 16) = v25;
          *(a2 - 8) = v278;
          *v9 = v214;
          *(a2 - 24) = v243;
          if (*v16 < *v12)
          {
            v279 = *(v12 + 32);
            v215 = *v12;
            v244 = *(v12 + 16);
            v26 = *v16;
            v27 = *(v16 + 16);
            *(v12 + 32) = *(v16 + 32);
            *v12 = v26;
            *(v12 + 16) = v27;
            *(v16 + 32) = v279;
            *v16 = v215;
            *(v16 + 16) = v244;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v276 = *(v12 + 32);
          v212 = *v12;
          v241 = *(v12 + 16);
          v19 = *v9;
          v20 = *(a2 - 24);
          *(v12 + 32) = *(a2 - 8);
          *v12 = v19;
          *(v12 + 16) = v20;
          goto LABEL_26;
        }

        v282 = *(v12 + 32);
        v218 = *v12;
        v247 = *(v12 + 16);
        v32 = *v16;
        v33 = *(v16 + 16);
        *(v12 + 32) = *(v16 + 32);
        *v12 = v32;
        *(v12 + 16) = v33;
        *(v16 + 32) = v282;
        *v16 = v218;
        *(v16 + 16) = v247;
        if (v9->n128_u32[0] < *v16)
        {
          v276 = *(v16 + 32);
          v212 = *v16;
          v241 = *(v16 + 16);
          v34 = *v9;
          v35 = *(a2 - 24);
          *(v16 + 32) = *(a2 - 8);
          *v16 = v34;
          *(v16 + 16) = v35;
LABEL_26:
          *(a2 - 8) = v276;
          *v9 = v212;
          *(a2 - 24) = v241;
        }
      }

      v36 = (v12 + 40);
      v37 = v12 + 40 * v15;
      v40 = *(v37 - 40);
      v38 = v37 - 40;
      v39 = v40;
      v41 = *v10;
      if (v40 >= *(v12 + 40))
      {
        if (v41 < v39)
        {
          v283 = *(v38 + 32);
          v219 = *v38;
          v248 = *(v38 + 16);
          v47 = *v10;
          v48 = *(a2 - 64);
          *(v38 + 32) = *(a2 - 48);
          *v38 = v47;
          *(v38 + 16) = v48;
          *(a2 - 48) = v283;
          *v10 = v219;
          *(a2 - 64) = v248;
          if (*v38 < *v36)
          {
            v49 = *v36;
            v249 = *(v12 + 56);
            v50 = *(v12 + 72);
            v52 = *v38;
            v51 = *(v38 + 16);
            *(v12 + 72) = *(v38 + 32);
            *v36 = v52;
            *(v12 + 56) = v51;
            *(v38 + 32) = v50;
            *v38 = v49;
            *(v38 + 16) = v249;
          }
        }
      }

      else
      {
        if (v41 < v39)
        {
          v42 = *v36;
          v43 = *(v12 + 56);
          v44 = *(v12 + 72);
          v46 = *v10;
          v45 = *(a2 - 64);
          *(v12 + 72) = *(a2 - 48);
          *v36 = v46;
          *(v12 + 56) = v45;
          *(a2 - 48) = v44;
          goto LABEL_38;
        }

        v57 = *v36;
        v251 = *(v12 + 56);
        v58 = *(v12 + 72);
        v60 = *v38;
        v59 = *(v38 + 16);
        *(v12 + 72) = *(v38 + 32);
        *v36 = v60;
        *(v12 + 56) = v59;
        *(v38 + 32) = v58;
        *v38 = v57;
        *(v38 + 16) = v251;
        if (*v10 < *v38)
        {
          v285 = *(v38 + 32);
          v221 = *v38;
          v252 = *(v38 + 16);
          v61 = *v10;
          v62 = *(a2 - 64);
          *(v38 + 32) = *(a2 - 48);
          *v38 = v61;
          *(v38 + 16) = v62;
          v42 = v221;
          v43 = v252;
          *(a2 - 48) = v285;
LABEL_38:
          *v10 = v42;
          *(a2 - 64) = v43;
        }
      }

      v63 = (v12 + 80);
      v64 = v12 + 40 * v15;
      v67 = *(v64 + 40);
      v65 = v64 + 40;
      v66 = v67;
      v68 = *v11;
      if (v67 >= *(v12 + 80))
      {
        if (v68 < v66)
        {
          v286 = *(v65 + 32);
          v222 = *v65;
          v253 = *(v65 + 16);
          v74 = *v11;
          v75 = *(a2 - 104);
          *(v65 + 32) = *(a2 - 88);
          *v65 = v74;
          *(v65 + 16) = v75;
          *(a2 - 88) = v286;
          *v11 = v222;
          *(a2 - 104) = v253;
          if (*v65 < *v63)
          {
            v76 = *v63;
            v254 = *(v12 + 96);
            v77 = *(v12 + 112);
            v79 = *v65;
            v78 = *(v65 + 16);
            *(v12 + 112) = *(v65 + 32);
            *v63 = v79;
            *(v12 + 96) = v78;
            *(v65 + 32) = v77;
            *v65 = v76;
            *(v65 + 16) = v254;
          }
        }
      }

      else
      {
        if (v68 < v66)
        {
          v69 = *v63;
          v70 = *(v12 + 96);
          v71 = *(v12 + 112);
          v73 = *v11;
          v72 = *(a2 - 104);
          *(v12 + 112) = *(a2 - 88);
          *v63 = v73;
          *(v12 + 96) = v72;
          *(a2 - 88) = v71;
          goto LABEL_47;
        }

        v80 = *v63;
        v255 = *(v12 + 96);
        v81 = *(v12 + 112);
        v83 = *v65;
        v82 = *(v65 + 16);
        *(v12 + 112) = *(v65 + 32);
        *v63 = v83;
        *(v12 + 96) = v82;
        *(v65 + 32) = v81;
        *v65 = v80;
        *(v65 + 16) = v255;
        if (*v11 < *v65)
        {
          v287 = *(v65 + 32);
          v223 = *v65;
          v256 = *(v65 + 16);
          v84 = *v11;
          v85 = *(a2 - 104);
          *(v65 + 32) = *(a2 - 88);
          *v65 = v84;
          *(v65 + 16) = v85;
          v69 = v223;
          v70 = v256;
          *(a2 - 88) = v287;
LABEL_47:
          *v11 = v69;
          *(a2 - 104) = v70;
        }
      }

      v86 = *v16;
      v87 = *v65;
      if (*v16 >= *v38)
      {
        if (v87 < v86)
        {
          v289 = *(v16 + 32);
          v225 = *v16;
          v258 = *(v16 + 16);
          v89 = *(v65 + 16);
          *v16 = *v65;
          *(v16 + 16) = v89;
          *(v16 + 32) = *(v65 + 32);
          *(v65 + 32) = v289;
          *v65 = v225;
          *(v65 + 16) = v258;
          if (*v16 < *v38)
          {
            v290 = *(v38 + 32);
            v226 = *v38;
            v259 = *(v38 + 16);
            v90 = *(v16 + 16);
            *v38 = *v16;
            *(v38 + 16) = v90;
            *(v38 + 32) = *(v16 + 32);
            *(v16 + 32) = v290;
            *v16 = v226;
            *(v16 + 16) = v259;
          }
        }
      }

      else
      {
        if (v87 < v86)
        {
          v288 = *(v38 + 32);
          v224 = *v38;
          v257 = *(v38 + 16);
          v88 = *(v65 + 16);
          *v38 = *v65;
          *(v38 + 16) = v88;
          *(v38 + 32) = *(v65 + 32);
          goto LABEL_56;
        }

        v291 = *(v38 + 32);
        v227 = *v38;
        v260 = *(v38 + 16);
        v91 = *(v16 + 16);
        *v38 = *v16;
        *(v38 + 16) = v91;
        *(v38 + 32) = *(v16 + 32);
        *(v16 + 32) = v291;
        *v16 = v227;
        *(v16 + 16) = v260;
        if (*v65 < *v16)
        {
          v288 = *(v16 + 32);
          v224 = *v16;
          v257 = *(v16 + 16);
          v92 = *(v65 + 16);
          *v16 = *v65;
          *(v16 + 16) = v92;
          *(v16 + 32) = *(v65 + 32);
LABEL_56:
          *(v65 + 32) = v288;
          *v65 = v224;
          *(v65 + 16) = v257;
        }
      }

      v292 = *(v12 + 32);
      v228 = *v12;
      v261 = *(v12 + 16);
      v93 = *v16;
      v94 = *(v16 + 16);
      *(v12 + 32) = *(v16 + 32);
      *v12 = v93;
      *(v12 + 16) = v94;
      *(v16 + 32) = v292;
      *v16 = v228;
      *(v16 + 16) = v261;
      goto LABEL_58;
    }

    v21 = *v12;
    if (*v12 >= *v16)
    {
      if (v17 < v21)
      {
        v280 = *(v12 + 32);
        v216 = *v12;
        v245 = *(v12 + 16);
        v28 = *v9;
        v29 = *(a2 - 24);
        *(v12 + 32) = *(a2 - 8);
        *v12 = v28;
        *(v12 + 16) = v29;
        *(a2 - 8) = v280;
        *v9 = v216;
        *(a2 - 24) = v245;
        if (*v12 < *v16)
        {
          v281 = *(v16 + 32);
          v217 = *v16;
          v246 = *(v16 + 16);
          v30 = *v12;
          v31 = *(v12 + 16);
          *(v16 + 32) = *(v12 + 32);
          *v16 = v30;
          *(v16 + 16) = v31;
          *(v12 + 32) = v281;
          *v12 = v217;
          *(v12 + 16) = v246;
        }
      }

      goto LABEL_58;
    }

    if (v17 >= v21)
    {
      v284 = *(v16 + 32);
      v220 = *v16;
      v250 = *(v16 + 16);
      v53 = *v12;
      v54 = *(v12 + 16);
      *(v16 + 32) = *(v12 + 32);
      *v16 = v53;
      *(v16 + 16) = v54;
      *(v12 + 32) = v284;
      *v12 = v220;
      *(v12 + 16) = v250;
      if (v9->n128_u32[0] >= *v12)
      {
        goto LABEL_58;
      }

      v277 = *(v12 + 32);
      v213 = *v12;
      v242 = *(v12 + 16);
      v55 = *v9;
      v56 = *(a2 - 24);
      *(v12 + 32) = *(a2 - 8);
      *v12 = v55;
      *(v12 + 16) = v56;
    }

    else
    {
      v277 = *(v16 + 32);
      v213 = *v16;
      v242 = *(v16 + 16);
      v22 = *v9;
      v23 = *(a2 - 24);
      *(v16 + 32) = *(a2 - 8);
      *v16 = v22;
      *(v16 + 16) = v23;
    }

    *(a2 - 8) = v277;
    *v9 = v213;
    *(a2 - 24) = v242;
LABEL_58:
    --a3;
    v95 = *v12;
    if ((a4 & 1) != 0 || *(v12 - 40) < v95)
    {
      v96 = 0;
      v209 = *(v12 + 36);
      v203 = *(v12 + 4);
      v206 = *(v12 + 20);
      do
      {
        v97 = *(v12 + v96 + 40);
        v96 += 40;
      }

      while (v97 < v95);
      v98 = v12 + v96;
      v99 = a2;
      if (v96 == 40)
      {
        v99 = a2;
        do
        {
          if (v98 >= v99)
          {
            break;
          }

          v101 = *(v99 - 40);
          v99 -= 40;
        }

        while (v101 >= v95);
      }

      else
      {
        do
        {
          v100 = *(v99 - 40);
          v99 -= 40;
        }

        while (v100 >= v95);
      }

      v12 += v96;
      if (v98 < v99)
      {
        v102 = v99;
        do
        {
          v293 = *(v12 + 32);
          v229 = *v12;
          v262 = *(v12 + 16);
          v103 = *v102;
          v104 = *(v102 + 16);
          *(v12 + 32) = *(v102 + 32);
          *v12 = v103;
          *(v12 + 16) = v104;
          *(v102 + 32) = v293;
          *v102 = v229;
          *(v102 + 16) = v262;
          do
          {
            v105 = *(v12 + 40);
            v12 += 40;
          }

          while (v105 < v95);
          do
          {
            v106 = *(v102 - 40);
            v102 -= 40;
          }

          while (v106 >= v95);
        }

        while (v12 < v102);
      }

      if (v12 - 40 != a1)
      {
        v107 = *(v12 - 40);
        v108 = *(v12 - 24);
        *(a1 + 32) = *(v12 - 8);
        *a1 = v107;
        *(a1 + 16) = v108;
      }

      *(v12 - 40) = v95;
      *(v12 - 4) = v209;
      *(v12 - 20) = v206;
      *(v12 - 36) = v203;
      if (v98 < v99)
      {
        goto LABEL_79;
      }

      v109 = _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZZN2RB19pixel_format_traitsE14MTLPixelFormatENK3__0clEPvEUlRKT_RKT0_E_PNS2_17PixelFormatTraitsEEEbT1_SG_S9_(a1, v12 - 40, v203);
      if (_ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZZN2RB19pixel_format_traitsE14MTLPixelFormatENK3__0clEPvEUlRKT_RKT0_E_PNS2_17PixelFormatTraitsEEEbT1_SG_S9_(v12, a2, v110))
      {
        a2 = v12 - 40;
        if (!v109)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v109)
      {
LABEL_79:
        _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZZN2RB19pixel_format_traitsE14MTLPixelFormatENK3__0clEPvEUlRKT_RKT0_E_PNS2_17PixelFormatTraitsELb0EEEvT1_SG_S9_NS_15iterator_traitsISG_E15difference_typeEb(a1, v12 - 40, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v210 = *(v12 + 36);
      v204 = *(v12 + 4);
      v207 = *(v12 + 20);
      if (v95 >= v9->n128_u32[0])
      {
        v112 = v12 + 40;
        do
        {
          v12 = v112;
          if (v112 >= a2)
          {
            break;
          }

          v112 += 40;
        }

        while (v95 >= *v12);
      }

      else
      {
        do
        {
          v111 = *(v12 + 40);
          v12 += 40;
        }

        while (v95 >= v111);
      }

      v113 = a2;
      if (v12 < a2)
      {
        v113 = a2;
        do
        {
          v114 = *(v113 - 40);
          v113 -= 40;
        }

        while (v95 < v114);
      }

      while (v12 < v113)
      {
        v294 = *(v12 + 32);
        v230 = *v12;
        v263 = *(v12 + 16);
        v115 = *v113;
        v116 = *(v113 + 16);
        *(v12 + 32) = *(v113 + 32);
        *v12 = v115;
        *(v12 + 16) = v116;
        *(v113 + 32) = v294;
        *v113 = v230;
        *(v113 + 16) = v263;
        do
        {
          v117 = *(v12 + 40);
          v12 += 40;
        }

        while (v95 >= v117);
        do
        {
          v118 = *(v113 - 40);
          v113 -= 40;
        }

        while (v95 < v118);
      }

      if (v12 - 40 != a1)
      {
        v119 = *(v12 - 40);
        v120 = *(v12 - 24);
        *(a1 + 32) = *(v12 - 8);
        *a1 = v119;
        *(a1 + 16) = v120;
      }

      a4 = 0;
      *(v12 - 40) = v95;
      result = v204;
      *(v12 - 4) = v210;
      *(v12 - 20) = v207;
      *(v12 - 36) = v204;
    }
  }

  v123 = v12 + 40;
  v124 = *(v12 + 40);
  v126 = *(a2 - 40);
  v121 = a2 - 40;
  v125 = v126;
  if (v124 >= *v12)
  {
    if (v125 >= v124)
    {
      return result;
    }

    result = *v123;
    v269 = *(v12 + 56);
    v300 = *(v12 + 72);
    v182 = *v121;
    v181 = *(v121 + 16);
    *(v12 + 72) = *(v121 + 32);
    *v123 = v182;
    *(v12 + 56) = v181;
    *(v121 + 32) = v300;
    *v121 = result;
    *(v121 + 16) = v269;
    goto LABEL_191;
  }

  if (v125 < v124)
  {
    goto LABEL_106;
  }

  v303 = *(v12 + 32);
  v238 = *v12;
  v272 = *(v12 + 16);
  v191 = *(v12 + 56);
  *v12 = *v123;
  *(v12 + 16) = v191;
  *(v12 + 32) = *(v12 + 72);
  result = v238;
  *v123 = v238;
  *(v12 + 56) = v272;
  *(v12 + 72) = v303;
  if (*v121 < *(v12 + 40))
  {
    result = *v123;
    v129 = *(v12 + 56);
    v304 = *(v12 + 72);
    v193 = *v121;
    v192 = *(v121 + 16);
    *(v12 + 72) = *(v121 + 32);
    *v123 = v193;
    *(v12 + 56) = v192;
    *(v121 + 32) = v304;
    goto LABEL_107;
  }

  return result;
}