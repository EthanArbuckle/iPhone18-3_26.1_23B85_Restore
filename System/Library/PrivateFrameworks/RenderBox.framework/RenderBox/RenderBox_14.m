void RB::ImageProvider::submit_all(RB::ImageProvider *this)
{
  os_unfair_lock_lock(&RB::ImageProvider::_pending_image_providers_lock);
  v1 = RB::ImageProvider::_pending_image_providers;
  if (RB::ImageProvider::_pending_image_providers)
  {
    v2 = *RB::ImageProvider::_pending_image_providers;
    v3 = *(RB::ImageProvider::_pending_image_providers + 8);
    v7 = *RB::ImageProvider::_pending_image_providers;
    v8 = v3;
    *RB::ImageProvider::_pending_image_providers = 0;
    *(v1 + 8) = 0;
    *(v1 + 16) = 0;
    os_unfair_lock_unlock(&RB::ImageProvider::_pending_image_providers_lock);
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        RB::ImageProvider::wait_phase(v2[i], 2);
      }

      v5 = 0;
      do
      {
        v6 = v2[v5];
        if (v6 && atomic_fetch_add_explicit((v6 + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          RB::ImageProvider::submit_all();
        }

        ++v5;
      }

      while (v5 < v8);
      v2 = v7;
    }

    if (v2)
    {

      free(v2);
    }
  }

  else
  {

    os_unfair_lock_unlock(&RB::ImageProvider::_pending_image_providers_lock);
  }
}

void sub_195DAF1D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  RB::vector<RB::refcounted_ptr<RB::ImageProvider>,0ul,unsigned long>::~vector(va);
  _Unwind_Resume(a1);
}

uint64_t RB::ImageProvider::ImageProvider(uint64_t a1, id a2, void *a3, uint64_t a4, char a5, char a6, char a7, __int16 a8, float a9, double a10, float a11, float a12, float a13, float a14, float a15, uint64_t a16, void *a17, int a18)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F0A38FC0;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a10;
  *(a1 + 64) = a12;
  *(a1 + 68) = a13;
  *(a1 + 72) = a14;
  *(a1 + 76) = a15;
  *(a1 + 80) = a4;
  *(a1 + 88) = 0;
  *(a1 + 92) = a9;
  *(a1 + 96) = a11;
  *(a1 + 100) = a18;
  *(a1 + 104) = a5;
  *(a1 + 105) = a6;
  *(a1 + 106) = a7;
  *(a1 + 107) = a8;
  *(a1 + 109) = a16;
  *(a1 + 112) = 850045863;
  *(a1 + 176) = 1018212795;
  *(a1 + 111) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 212) = 0u;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0;
  *(a1 + 256) = [a17 copy];
  if ((*(a1 + 100) & 8) != 0)
  {
    v35 = 10;
LABEL_10:
    *(a1 + 80) = v35;
    goto LABEL_11;
  }

  v33 = *(a1 + 80);
  if (v33 > 2147483652)
  {
    if (v33 <= 2147483665)
    {
      if ((v33 - 2147483662) < 4)
      {
        goto LABEL_11;
      }

      if (v33 != 2147483653)
      {
        if (v33 == 2147483661)
        {
          v49 = 2;
LABEL_47:
          *(a1 + 88) = v49;
LABEL_11:
          if (a2)
          {
            return a1;
          }

          goto LABEL_12;
        }

        goto LABEL_45;
      }

      goto LABEL_42;
    }

    if ((v33 - 2147483666) <= 1)
    {
LABEL_46:
      v49 = 3;
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  if (v33 > 627)
  {
    switch(v33)
    {
      case 628:
        goto LABEL_48;
      case 2147483649:
        goto LABEL_43;
      case 2147483650:
        goto LABEL_42;
    }

LABEL_45:
    *(a1 + 80) = 115;
    goto LABEL_46;
  }

  v34 = v33 - 43;
  if (v34 > 0x33)
  {
    goto LABEL_45;
  }

  if (((1 << v34) & 0x2008000001) != 0)
  {
LABEL_43:
    v35 = 70;
    goto LABEL_10;
  }

  if (((1 << v34) & 0x4010000000) != 0)
  {
LABEL_42:
    v35 = 71;
    goto LABEL_10;
  }

  if (v34 != 51)
  {
    goto LABEL_45;
  }

LABEL_48:
  if (a2)
  {
    *(a1 + 88) = 1;
    return a1;
  }

  *(a1 + 80) = 115;
  *(a1 + 88) = 3;
LABEL_12:
  v50 = *(a1 + 56);
  v36 = RB::ImageProvider::bytes_per_pixel(a1);
  v37 = v50 < 0;
  if (v50 >= 0)
  {
    v38 = v50;
  }

  else
  {
    v38 = -v50;
  }

  v39 = (v38 * v36) >> 64;
  v40 = v38 * v36;
  if (v50 >= 0)
  {
    v41 = v38 * v36;
  }

  else
  {
    v41 = -v40;
  }

  v42 = v39 != 0;
  if (!v40)
  {
    v37 = 0;
  }

  *(a1 + 252) = v41;
  if (HIDWORD(v40) || v42 || v37)
  {
    goto LABEL_32;
  }

  v43 = HIDWORD(v50);
  v44 = (v41 & 0xFFFFFFC0) + 64;
  v45 = v50 < 0;
  if (v50 < 0)
  {
    v43 = -HIDWORD(v50);
  }

  v46 = v43 * v44;
  v47 = v50 >= 0 ? v46 : -v46;
  if (!v46)
  {
    v45 = 0;
  }

  *(a1 + 248) = v47;
  *(a1 + 252) = v44;
  if ((v46 & 0xFFFFFFFF00000000) != 0 || v45)
  {
LABEL_32:
    *(a1 + 248) = 0;
  }

  return a1;
}

void sub_195DAF548(_Unwind_Exception *a1)
{
  std::condition_variable::~condition_variable(v5);
  std::mutex::~mutex(v4);
  v7 = *(v1 + 48);
  if (v7)
  {
    CFRelease(v7);
  }

  RB::ImageProvider::ImageProvider(v3, v2, (v1 + 24));

  _Unwind_Resume(a1);
}

uint64_t RB::ImageProvider::bytes_per_pixel(RB::ImageProvider *this)
{
  v1 = *(this + 25);
  if ((v1 & 8) != 0)
  {
    return 1;
  }

  v2 = *(this + 22);
  if ((*(this + 104) & 0xF) != 0)
  {
    v3 = v2 - 2;
    if (v3 > 2)
    {
      return 4;
    }

    else
    {
      return qword_195E44550[v3];
    }
  }

  else
  {
    v5 = 4;
    if ((v1 & 1) == 0)
    {
      v5 = 8;
    }

    v6 = 2;
    if ((v1 & 1) == 0)
    {
      v6 = 4;
    }

    v7 = 1;
    if ((*(this + 25) & 1) == 0)
    {
      v7 = 2;
    }

    if (v2)
    {
      v7 = 0;
    }

    if (v2 == 3)
    {
      v7 = v6;
    }

    if (v2 == 4)
    {
      return v5;
    }

    else
    {
      return v7;
    }
  }
}

uint64_t RB::ImageProvider::cg_color_space(RB::ImageProvider *this, MTLPixelFormat a2)
{
  if ((*(this + 100) & 8) != 0)
  {
    return 0;
  }

  v3 = (RB::pixel_format_traits(*(this + 10), a2)[1] & 0xA) != 0;

  return RB::ColorSpace::cg_color_space((this + 104), v3);
}

uint64_t RB::ImageProvider::bitmap_info(RB::ImageProvider *this)
{
  v1 = *(this + 25);
  if ((v1 & 8) != 0)
  {
    return 7;
  }

  v2 = *(this + 22);
  if ((*(this + 104) & 0xF) == 0)
  {
    if (v2 > 4)
    {
      return 0;
    }

    v5 = (*(this + 25) & 1) == 0;
    v3 = v5 | 0x2100;
    v8 = v5 | 0x1100;
    if (v2 == 2)
    {
      v5 |= 0x1000u;
    }

    if (v2 == 3)
    {
      v5 = v8;
    }

    v6 = v2 == 4;
    goto LABEL_25;
  }

  if (v2 > 1)
  {
    if (v1)
    {
      v3 = 4101;
    }

    else
    {
      v3 = 4097;
    }

    if (v1)
    {
      v4 = 4357;
    }

    else
    {
      v4 = 4353;
    }

    if (v1)
    {
      v5 = 8453;
    }

    else
    {
      v5 = 8449;
    }

    if (v2 != 4)
    {
      v5 = 0;
    }

    if (v2 == 3)
    {
      v5 = v4;
    }

    v6 = v2 == 2;
LABEL_25:
    if (v6)
    {
      return v3;
    }

    else
    {
      return v5;
    }
  }

  if (v2)
  {
    if (v2 == 1)
    {
      return 204806;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (v1)
    {
      v9 = 8198;
    }

    else
    {
      v9 = 8194;
    }

    if (*(this + 25))
    {
      v10 = 5;
    }

    else
    {
      v10 = 1;
    }

    if (*(this + 2))
    {
      return v10;
    }

    else
    {
      return v9;
    }
  }
}

uint64_t RB::ImageProvider::make_cgimage(void)::$_4::__invoke(uint64_t result)
{
  v1 = *(result + 232);
  if (v1)
  {
    return IOSurfaceUnlock(*(v1 + 48), 0, 0);
  }

  return result;
}

uint64_t RB::ImageProvider::make_cgimage(void)::$_5::__invoke(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    return RB::ImageProvider::submit_all();
  }

  return result;
}

CGColorSpace *RB::ImageProvider::compatible_cgimage(RB::ImageProvider *this, CGImageRef image)
{
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  v6.i64[0] = Width;
  v6.i64[1] = Height;
  v7 = *(this + 7);
  v8.i64[0] = v7;
  v8.i64[1] = SHIDWORD(v7);
  v9 = vceqq_s64(v6, v8);
  if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v9), 1), v9).u64[0] & 0x8000000000000000) != 0)
  {
    return 0;
  }

  result = CGImageGetColorSpace(image);
  if (!result)
  {
    return result;
  }

  return ((*(this + 104) & 0xF) != 0 || CGColorSpaceGetModel(result) == kCGColorSpaceModelMonochrome);
}

void RB::ImageProvider::start_rendering(RB::ImageProvider *this, uint64_t a2)
{
  v4 = (this + 112);
  v5 = 1;
  std::mutex::lock((this + 112));
  RB::ImageProvider::start_rendering_locked(this, a2, &v4);
  if (v5 == 1)
  {
    std::mutex::unlock(v4);
  }
}

void sub_195DAF8E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  if (a10 == 1)
  {
    std::mutex::unlock(a9);
  }

  _Unwind_Resume(exception_object);
}

void RB::ImageProvider::start_rendering_locked(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 224) < 3)
  {
    v6 = 1;
  }

  else
  {
    v6 = 4;
  }

  if (RB::ImageProvider::set_phase(a1, v6))
  {
    if (*(a1 + 100) & 8) == 0 && (!*(a1 + 106) || (vminv_u16(vmovn_s32(vceqq_f32(*(a1 + 64), RBColorClear)))))
    {
      v7 = [*(a1 + 24) _rb_contents];
      if (v7)
      {
        RB::DisplayList::Contents::get_cgimage(v7, *(a1 + 105), (a1 + 48), *(a1 + 56));
        v8 = *(a1 + 48);
        if (v8)
        {
          if (RB::ImageProvider::compatible_cgimage(a1, v8))
          {
            RB::ImageProvider::set_phase(a1, 6);

            *(a1 + 24) = 0;
            return;
          }

          v9 = *(a1 + 48);
          if (v9)
          {
            CFRelease(v9);
          }

          *(a1 + 48) = 0;
        }
      }
    }

    std::unique_lock<std::mutex>::unlock[abi:nn200100](a3);
    RB::ImageProvider::add_to_pending(a1);
    atomic_fetch_add_explicit((a1 + 8), 1u, memory_order_relaxed);
    v10 = *(a1 + 16);
    if (a2)
    {
      if (v10)
      {
        v11 = [v10 queue];
      }

      else
      {
      }

      dispatch_async_f(v11, a1, RB::ImageProvider::start_rendering_locked(BOOL,std::unique_lock<std::mutex> &)::$_0::__invoke);
    }

    else if (v10)
    {
      v12 = [v10 queue];

      dispatch_sync_f(v12, a1, RB::ImageProvider::start_rendering_locked(BOOL,std::unique_lock<std::mutex> &)::$_0::__invoke);
    }

    else
    {
      RB::ImageProvider::render_bitmap(a1);
      if (atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RB::ImageProvider::submit_all();
      }
    }
  }
}

void sub_195DAFAA4(_Unwind_Exception *exception_object)
{
  if (atomic_fetch_add_explicit((v1 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    RB::ImageProvider::submit_all();
  }

  _Unwind_Resume(exception_object);
}

void std::unique_lock<std::mutex>::unlock[abi:nn200100](uint64_t a1)
{
  if (*(a1 + 8))
  {
    std::mutex::unlock(*a1);
    *(a1 + 8) = 0;
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::unlock: not locked");
  }
}

uint64_t RB::anonymous namespace::image_provider_queue(RB::_anonymous_namespace_ *this)
{
  if ((atomic_load_explicit(&qword_1ED6D5398, memory_order_acquire) & 1) == 0)
  {
  }

  return _MergedGlobals_2;
}

void RB::ImageProvider::frame_scheduled(RB::ImageProvider *this)
{
  std::mutex::lock((this + 112));
  if (*(this + 56) >= 2)
  {
    v2 = 5;
  }

  else
  {
    v2 = 2;
  }

  RB::ImageProvider::set_phase(this, v2);

  std::mutex::unlock((this + 112));
}

void RB::ImageProvider::frame_completed(RB::ImageProvider *this, NSError *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  std::mutex::lock((this + 112));
  if (!a2 || !*(this + 29))
  {
    goto LABEL_17;
  }

  if (*(this + 56) > 2 || (v4 = [(NSError *)a2 domain], ![(NSString *)v4 isEqual:*MEMORY[0x1E6973F68]]) || (v5 = [(NSError *)a2 code], v5 - 1 >= 2))
  {
    *(this + 111) = 1;
LABEL_17:
    RB::ImageProvider::set_phase(this, 6);
    std::mutex::unlock((this + 112));
    RB::ImageProvider::remove_from_pending(this);

    *(this + 3) = 0;
    return;
  }

  v6 = RB::misc_log(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    *buf = 134217984;
    v12 = this;
    _os_log_impl(&dword_195CE8000, v6, OS_LOG_TYPE_DEFAULT, "ImageProvider %p received error, retrying once", buf, 0xCu);
  }

  if (*(this + 56) <= 2)
  {
    *(this + 56) = 3;
    std::condition_variable::notify_all((this + 176));
  }

  atomic_fetch_add_explicit(this + 2, 1u, memory_order_relaxed);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN2RB13ImageProvider15frame_completedEP7NSError_block_invoke;
  block[3] = &__block_descriptor_40_e8_32c46_ZTSN2RB14refcounted_ptrINS_13ImageProviderEEE_e5_v8__0l;
  atomic_fetch_add_explicit(this + 2, 1u, memory_order_relaxed);
  v10 = this;
  dispatch_async(v8, block);
  if (v10 && atomic_fetch_add_explicit(v10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    render_image();
  }

  if (atomic_fetch_add_explicit(this + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    render_image();
  }

  std::mutex::unlock((this + 112));
}

void RB::ImageProvider::render_bitmap(RB::ImageProvider *this)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = mmap(0, *(this + 62), 3, 4098, -1, 0);
  if (v2 != -1)
  {
    v4 = v2;
    v5 = *(this + 105);
    *(this + 30) = v2;
    v6 = *(this + 104);
    _ZF = (v6 & 0xF) != 0 && v5 == v6;
    v8 = !_ZF;
    if (_ZF)
    {
      v13 = *(this + 7);
      v14 = v13;
      v15 = SHIDWORD(v13);
      v16 = *(this + 22) - 1;
      if (v16 > 3)
      {
        v17 = 8;
      }

      else
      {
        v17 = qword_195E44568[v16];
      }

      v18 = *(this + 63);
      v19 = RB::ImageProvider::cg_color_space(this, v3);
      v20 = RB::ImageProvider::bitmap_info(this);
      a = COERCE_DOUBLE(CGBitmapContextCreate(v4, v14, v15, v17, v18, v19, v20));
      v10 = 0;
      if (a == 0.0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v9 = *(this + 22);
      v10 = v9 > 0;
      if (v9 <= 0)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      RB::CGContext::create_bitmap(v11, v5 | 0x100, c, *(this + 7), 0.0);
      a = c[0].a;
      if (!*&c[0].a)
      {
        goto LABEL_36;
      }
    }

    v21 = *(this + 15);
    c[0].b = 0.0;
    c[0].c = 0.0;
    c[0].a = 1.0;
    *&c[0].d = xmmword_195E444C0;
    c[0].ty = v21;
    CGContextConcatCTM(*&a, c);
    if (v8)
    {
      v22 = this + 105;
    }

    else
    {
      v22 = this + 104;
    }

    __asm { FMOV            V0.2S, #1.0 }

    RB::CGContext::CGContext(c, *&a, *v22, _D0);
    if (*(this + 24) != 0.0 && (RB::pixel_format_traits(*(this + 10), v27)[1] & 0xA) != 0)
    {
      CGContextSetEDRTargetHeadroom();
    }

    if (*(this + 106) == 2)
    {
      _S2 = *(this + 16);
      _Q0.i32[0] = *(this + 19);
      __asm { FCVT            H0, S0 }

      v29.i64[0] = *(this + 68);
      *v29.f32 = vcvt_f16_f32(v29);
      __asm { FCVT            H2, S2 }

      v32 = *(this + 105);
      v33 = *(this + 105) | 0x100;
      v37 = _H2;
      v38 = v29.i32[0];
      v39 = _Q0.i16[0];
      v40 = 0;
      v41 = v33;
      if (v32 != v45 && (v46 & 1) != 0)
      {
        goto LABEL_29;
      }

      if (v43 != _H2)
      {
        goto LABEL_29;
      }

      v29.i32[0] = vzip1_s32(*v29.f32, *_Q0.f32).u32[0];
      v29.i32[1] = _Q0.u16[0];
      *_Q0.f32 = vceq_f16(v44, *v29.f32);
      _Q0.i16[0] = vminv_u16(*_Q0.f32);
      if ((_Q0.i8[0] & 1) == 0)
      {
        goto LABEL_29;
      }

      __asm { FCMP            H0, #0 }

      if (!_ZF)
      {
LABEL_29:
        RB::CGContext::set_fill_color_slow(c, &v37, _Q0, *v29.f32);
      }

      CGContextFillRect(*&c[0].a, *MEMORY[0x1E695F040]);
    }

    v34 = [*(this + 3) _rb_contents];
    if (v34)
    {
      RB::DisplayList::render(v34, c, 0, v35);
    }

    if (v8)
    {
      RB::ImageProvider::convert_bitmap(this, c, v10);
    }

    mprotect(v4, *(this + 62), 1);
    RB::CGContext::~CGContext(c);
    CFRelease(*&a);
  }

LABEL_36:
  std::mutex::lock((this + 112));
  RB::ImageProvider::set_phase(this, 6);
  std::mutex::unlock((this + 112));
  v36 = *(this + 2);
  if (!v36)
  {
    v36 = +[RBNullDevice sharedDevice];
  }

  RBXMLRecorderMarkFrame(v36, *(this + 3), *(this + 104), *(this + 7), HIDWORD(*(this + 7)));
  RB::ImageProvider::remove_from_pending(this);

  *(this + 3) = 0;
}

void sub_195DB014C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  RB::CGContext::~CGContext(va);
  CFRelease(v3);
  _Unwind_Resume(a1);
}

void RB::ImageProvider::convert_bitmap(RB::ImageProvider *this, CGContext **a2, int a3)
{
  v6 = *(this + 105);
  v27 = *(this + 105);
  if (!RB::ColorSpace::supports_vimage_conversion((this + 104)))
  {
    v7.i64[0] = 0;
    RB::ColorSpace::Conversion::Conversion(&dest, *(this + 105), *(this + 104), v7, 0.0);
    RB::CGContext::apply_color_conversion(a2, &dest);
    v6 = *(this + 104);
    v27 = *(this + 104);
  }

  v26 = 0;
  dest.data = *(this + 30);
  v8 = *(this + 7);
  v9.i64[0] = v8;
  v9.i64[1] = SHIDWORD(v8);
  *&dest.height = vextq_s8(v9, v9, 8uLL);
  dest.rowBytes = *(this + 63);
  RB::vImageBuffer::vImageBuffer(&src, *a2);
  if (v6 == *(this + 104))
  {
    v10 = *(this + 10);
    if ((v10 - 80) >= 2)
    {
      if (v10 == 115 && a3)
      {
        v11 = 8;
        goto LABEL_10;
      }
    }

    else if ((a3 & 1) == 0)
    {
      v11 = 4;
LABEL_10:
      vImageCopyBuffer(&src, &dest, v11, 0);
      goto LABEL_31;
    }
  }

  srcFormat.colorSpace = RB::ColorSpace::cg_color_space(&v27, a3);
  if (*(this + 25))
  {
    v12 = 4357;
  }

  else
  {
    v12 = 4353;
  }

  if (*(this + 25))
  {
    v13 = 8198;
  }

  else
  {
    v13 = 8194;
  }

  v14 = 8;
  if (a3)
  {
    v15 = 16;
  }

  else
  {
    v15 = 8;
  }

  if (a3)
  {
    v16 = 64;
  }

  else
  {
    v16 = 32;
  }

  if (!a3)
  {
    v12 = v13;
  }

  srcFormat.bitsPerComponent = v15;
  srcFormat.bitsPerPixel = v16;
  srcFormat.bitmapInfo = v12;
  *&srcFormat.version = 0uLL;
  v17 = *(this + 22) - 1;
  if (v17 < 4)
  {
    v14 = dword_195E44540[v17];
  }

  destFormat.bitsPerComponent = v14;
  destFormat.bitsPerPixel = 8 * RB::ImageProvider::bytes_per_pixel(this);
  destFormat.bitmapInfo = RB::ImageProvider::bitmap_info(this);
  destFormat.colorSpace = RB::ImageProvider::cg_color_space(this, v18);
  *&destFormat.version = 0uLL;
  v19 = vImageConverter_CreateWithCGImageFormat(&srcFormat, &destFormat, 0, 0, 0);
  v20 = v19;
  if (v19)
  {
    vImageConvert_AnyToAny(v19, &src, &dest, 0, 0);
    vImageConverter_Release(v20);
  }

  else
  {
    v21 = RB::error_log(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      RB::ImageProvider::convert_bitmap(this + 22, this, v21);
    }
  }

LABEL_31:
  RB::vImageBuffer::~vImageBuffer(&src.data);
  RB::vImageBuffer::~vImageBuffer(&dest.data);
}

void sub_195DB03C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v13 = va_arg(va1, void *);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  RB::vImageBuffer::~vImageBuffer(va);
  RB::vImageBuffer::~vImageBuffer(va1);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c46_ZTSN2RB14refcounted_ptrINS_13ImageProviderEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  *(result + 40) = v2;
  return result;
}

uint64_t __destroy_helper_block_e8_40c46_ZTSN2RB14refcounted_ptrINS_13ImageProviderEEE(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      return RB::ImageProvider::submit_all();
    }
  }

  return result;
}

void std::unique_lock<std::mutex>::lock[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8) != 1)
    {
      std::mutex::lock(v2);
      *(a1 + 8) = 1;
      return;
    }
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::lock: references null mutex");
  }

  std::__throw_system_error(11, "unique_lock::lock: already locked");
  RB::ImageProvider::get_bitmap_data(v3);
}

void *RB::ImageProvider::get_bitmap_data(RB::ImageProvider *this)
{
  RB::ImageProvider::wait_phase(this, 6);
  v2 = *(this + 29);
  if (!v2)
  {
    return *(this + 30);
  }

  IOSurfaceLock(*(v2 + 48), 0, 0);
  v3 = *(*(this + 29) + 48);

  return IOSurfaceGetBaseAddress(v3);
}

uint64_t RB::Refcount<RB::ImageProvider,std::atomic<unsigned int>>::release(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    return RB::ImageProvider::submit_all();
  }

  return result;
}

void RB::ImageProvider::start_rendering_locked(BOOL,std::unique_lock<std::mutex> &)::$_0::__invoke(atomic_uint *this)
{
  if (*(this + 2))
  {
    RB::ImageProvider::render_device(this);
  }

  else
  {
    RB::ImageProvider::render_bitmap(this);
  }

  if (atomic_fetch_add_explicit(this + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    RB::ImageProvider::submit_all();
  }
}

void sub_195DB05C4(_Unwind_Exception *exception_object)
{
  if (atomic_fetch_add_explicit((v1 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    RB::ImageProvider::submit_all();
  }

  _Unwind_Resume(exception_object);
}

uint64_t RB::vector<RB::refcounted_ptr<RB::ImageProvider>,0ul,unsigned long>::~vector(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v3 = 0;
    do
    {
      v4 = v2[v3];
      if (v4 && atomic_fetch_add_explicit((v4 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RB::ImageProvider::submit_all();
      }

      ++v3;
    }

    while (v3 < *(a1 + 8));
    v2 = *a1;
  }

  if (v2)
  {
    free(v2);
  }

  return a1;
}

RB::DisplayList::Transform::Term *RB::DisplayList::Transform::Term::Term(RB::DisplayList::Transform::Term *this, const RB::DisplayList::Transform::Term *a2)
{
  v4 = *a2;
  *this = *a2;
  v5 = (this + 8);
  switch(v4)
  {
    case 3:
      v8 = *(a2 + 1);
      if (v8)
      {
        v8 = CFRetain(v8);
      }

      *(this + 1) = v8;
      *(this + 2) = *(a2 + 2);
      break;
    case 2:
      v7 = *(a2 + 8);
      *(this + 20) = *(a2 + 20);
      *v5 = v7;
      break;
    case 1:
      v6 = *(a2 + 1);
      *(this + 14) = *(a2 + 14);
      *v5 = v6;
      break;
  }

  return this;
}

_DWORD *RB::DisplayList::Transform::add_color_to(_DWORD *this, const RB::Fill::Color *a2)
{
  v3 = this;
  v4 = this[12];
  if (this[13] < (v4 + 1))
  {
    this = RB::vector<RB::DisplayList::Transform::Term,1ul,unsigned int>::reserve_slow(this, v4 + 1);
    v4 = v3[12];
  }

  v5 = *(v3 + 5);
  if (!v5)
  {
    v5 = v3;
  }

  v6 = &v5[10 * v4];
  *v6 = 1;
  v7 = *a2;
  *(v6 + 14) = *(a2 + 6);
  *(v6 + 1) = v7;
  ++v3[12];
  return this;
}

_DWORD *RB::DisplayList::Transform::add_font_mix_to(_DWORD *this, CFTypeRef cf, float a3, int a4)
{
  v7 = this;
  v8 = this[12];
  if (this[13] < (v8 + 1))
  {
    this = RB::vector<RB::DisplayList::Transform::Term,1ul,unsigned int>::reserve_slow(this, v8 + 1);
    v8 = v7[12];
  }

  v9 = *(v7 + 5);
  if (!v9)
  {
    v9 = v7;
  }

  v10 = &v9[10 * v8];
  *v10 = 3;
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  if (cf)
  {
    this = CFRetain(cf);
    *(v10 + 1) = this;
  }

  *(v10 + 4) = a3;
  v10[5] = a4;
  ++v7[12];
  return this;
}

uint64_t RB::DisplayList::Transform::Term::can_mix(CGFont **this, CGFont **a2)
{
  v2 = *this;
  if (*this != *a2)
  {
    return 0;
  }

  switch(v2)
  {
    case 3:
      if (*(this + 5) == *(a2 + 5))
      {
        v10 = RB::FontMixer::shared(this);
        return RB::FontMixer::can_mix(v10, this[1], a2[1], 0);
      }

      return 0;
    case 2:
      can_mix = RB::Fill::Color::can_mix((this + 1), (a2 + 1));
      v9 = RB::Fill::Color::can_mix((this + 22), (a2 + 22));
      if (v9 >= can_mix)
      {
        return can_mix;
      }

      else
      {
        return v9;
      }

    case 1:
      v5 = (this + 1);
      v6 = (a2 + 1);

      return RB::Fill::Color::can_mix(v5, v6);
    default:
      return 4;
  }
}

void RB::DisplayList::Transform::Term::mix(CGFont **this, CGFont **a2, float32x4_t a3)
{
  v3 = a3.f32[0];
  v6 = *this;
  if (*this == 3)
  {
    v9 = RB::FontMixer::shared(this);
    RB::FontMixer::mix(v9, this[1], a2[1], LODWORD(v3), &v11);
    v10 = this[1];
    this[1] = v11;
    v11 = v10;
    if (v10)
    {
      CFRelease(v10);
    }

    *(this + 4) = *(this + 4) + ((*(a2 + 4) - *(this + 4)) * v3);
  }

  else
  {
    if (v6 == 2)
    {
      RB::Fill::Color::mix((this + 1), (a2 + 1), 0, a3);
      v7 = this + 22;
      v8 = a2 + 22;
    }

    else
    {
      if (v6 != 1)
      {
        return;
      }

      v7 = (this + 1);
      v8 = (a2 + 1);
    }

    a3.f32[0] = v3;

    RB::Fill::Color::mix(v7, v8, 0, a3);
  }
}

uint64_t RB::DisplayList::Transform::can_mix(RB::DisplayList::Transform *this, const RB::DisplayList::Transform *a2)
{
  v2 = *(this + 12);
  if (v2 == *(a2 + 12))
  {
    if (!v2)
    {
      return 4;
    }

    v5 = 0;
    v6 = 40 * v2;
    LOBYTE(v7) = 4;
    while (1)
    {
      v8 = *(this + 5);
      if (!v8)
      {
        v8 = this;
      }

      v9 = *(a2 + 5);
      if (!v9)
      {
        v9 = a2;
      }

      can_mix = RB::DisplayList::Transform::Term::can_mix((v8 + v5), (v9 + v5));
      if (!can_mix)
      {
        break;
      }

      if (can_mix >= v7)
      {
        v7 = v7;
      }

      else
      {
        v7 = can_mix;
      }

      v5 += 40;
      if (v6 == v5)
      {
        return v7;
      }
    }
  }

  return 0;
}

void RB::DisplayList::Transform::mix(RB::DisplayList::Transform *this, const RB::DisplayList::Transform *a2, float32x4_t a3)
{
  v3 = *(this + 12);
  if (v3)
  {
    v4 = a3.i32[0];
    v7 = 0;
    v8 = 40 * v3;
    do
    {
      v9 = *(this + 5);
      if (!v9)
      {
        v9 = this;
      }

      v10 = *(a2 + 5);
      if (!v10)
      {
        v10 = a2;
      }

      a3.i32[0] = v4;
      RB::DisplayList::Transform::Term::mix((v9 + v7), (v10 + v7), a3);
      v7 += 40;
    }

    while (v8 != v7);
  }
}

uint64_t RB::DisplayList::Transform::xml_elements(uint64_t this, RB::XML::Document *a2)
{
  v2 = *(this + 40);
  if (!v2)
  {
    v2 = this;
  }

  v3 = *(this + 48);
  if (v3)
  {
    v4 = v2 + 22;
    v5 = 40 * v3;
    do
    {
      v6 = *(v4 - 22);
      switch(v6)
      {
        case 3:
          RB::XML::Document::push(a2, "mix-fonts");
        case 2:
          RB::XML::Document::push(a2, "color");
        case 1:
          RB::XML::Document::push(a2, "color");
      }

      v4 += 40;
      v5 -= 40;
    }

    while (v5);
  }

  return this;
}

void sub_195DB0E28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RB::DisplayList::LayerItem::apply_transform(uint64_t this, const RB::DisplayList::Transform *a2, RB::DisplayList::Contents *a3)
{
  v5 = this;
  for (i = *(*(this + 48) + 16); i; i = i[1])
  {
    this = (*(*i + 192))(i, a2, a3);
  }

  if ((*(v5 + 56) & 3) == 2)
  {
    this = (*(*(*(v5 + 56) & 0xFFFFFFFFFFFFFFFCLL) + 80))(*(v5 + 56) & 0xFFFFFFFFFFFFFFFCLL, a3, a2);
    *(v5 + 56) = this | 2;
  }

  return this;
}

uint64_t RB::DisplayList::DetachedLayerItem::apply_transform(uint64_t this, const RB::DisplayList::Transform *a2, RB::DisplayList::Contents *a3)
{
  if ((*(this + 72) & 3) == 2)
  {
    v3 = this;
    this = (*(*(*(this + 72) & 0xFFFFFFFFFFFFFFFCLL) + 80))(*(this + 72) & 0xFFFFFFFFFFFFFFFCLL, a3, a2);
    *(v3 + 72) = this | 2;
  }

  return this;
}

int *RB::DisplayList::Transform::encode(int *this, RB::Encoder *a2)
{
  if (*(this + 5))
  {
    v2 = *(this + 5);
  }

  else
  {
    v2 = this;
  }

  v3 = this[12];
  if (v3)
  {
    v5 = 40 * v3;
    do
    {
      RB::ProtobufEncoder::encode_varint(a2, 0xAuLL);
      RB::ProtobufEncoder::begin_length_delimited(a2);
      RB::DisplayList::Transform::Term::encode(v2, a2);
      this = RB::ProtobufEncoder::end_length_delimited(a2);
      v2 += 10;
      v5 -= 40;
    }

    while (v5);
  }

  return this;
}

uint64_t RB::DisplayList::Transform::decode(RB::DisplayList::Transform *this, RB::Decoder *a2)
{
  if (*(this + 5))
  {
    v4 = *(this + 5);
  }

  else
  {
    v4 = this;
  }

  v5 = *(this + 12);
  if (v5)
  {
    v6 = (v4 + 8);
    v7 = 40 * v5;
    do
    {
      if (*(v6 - 2) == 3 && *v6)
      {
        CFRelease(*v6);
      }

      v6 += 5;
      v7 -= 40;
    }

    while (v7);
  }

  *(this + 12) = 0;
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v9 = result;
    do
    {
      if ((v9 & 0x7FFFFFFF8) == 8)
      {
        v10 = *(this + 12);
        v11 = v10 + 1;
        if (*(this + 13) < v10 + 1)
        {
          RB::vector<RB::DisplayList::Transform::Term,1ul,unsigned int>::reserve_slow(this, v11);
          v10 = *(this + 12);
          v11 = v10 + 1;
        }

        v12 = *(this + 5);
        if (!v12)
        {
          v12 = this;
        }

        v13 = (v12 + 40 * v10);
        *v13 = 0;
        *(this + 12) = v11;
        if ((v9 & 7) == 2)
        {
          RB::ProtobufDecoder::begin_message(a2);
          RB::DisplayList::Transform::Term::decode(v13, a2);
          RB::ProtobufDecoder::end_message(a2);
        }

        else
        {
          *(a2 + 56) = 1;
          *a2 = *(a2 + 1);
        }
      }

      else
      {
        RB::ProtobufDecoder::skip_field(a2, v9);
      }

      result = RB::ProtobufDecoder::next_field(a2);
      v9 = result;
    }

    while (result);
  }

  return result;
}

int *RB::DisplayList::Transform::Term::encode(int *this, RB::Encoder *a2)
{
  v3 = this;
  v4 = *this;
  if (*this == 3)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x22uLL);
    RB::ProtobufEncoder::begin_length_delimited(a2);
    RB::Encoder::cgfont_field(a2, 1, *(v3 + 1));
    v5 = v3[4];
    if (*&v5 != 0.0)
    {
      RB::ProtobufEncoder::encode_varint(a2, 0x15uLL);
      RB::ProtobufEncoder::encode_fixed32(a2, v5);
    }

    v6 = v3[5];
    if (v6)
    {
      RB::ProtobufEncoder::encode_varint(a2, 0x18uLL);
      RB::ProtobufEncoder::encode_varint(a2, v6);
    }
  }

  else if (v4 == 2)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x12uLL);
    RB::ProtobufEncoder::begin_length_delimited(a2);
    RB::ProtobufEncoder::encode_varint(a2, 0xAuLL);
    RB::ProtobufEncoder::begin_length_delimited(a2);
    RB::Fill::Color::encode((v3 + 2), a2);
    RB::ProtobufEncoder::end_length_delimited(a2);
    RB::ProtobufEncoder::encode_varint(a2, 0x12uLL);
    RB::ProtobufEncoder::begin_length_delimited(a2);
    RB::Fill::Color::encode((v3 + 22), a2);
    RB::ProtobufEncoder::end_length_delimited(a2);
  }

  else
  {
    if (v4 != 1)
    {
      return this;
    }

    RB::ProtobufEncoder::encode_varint(a2, 0xAuLL);
    RB::ProtobufEncoder::begin_length_delimited(a2);
    RB::Fill::Color::encode((v3 + 2), a2);
  }

  return RB::ProtobufEncoder::end_length_delimited(a2);
}

unint64_t RB::DisplayList::Transform::Term::decode(RB::DisplayList::Transform::Term *this, RB::Decoder *a2)
{
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v5 = result;
    v6 = (this + 16);
    while (1)
    {
      v7 = v5 >> 3;
      if ((v5 >> 3) == 4)
      {
        if (*this == 3)
        {
          v13 = *(this + 1);
          if (v13)
          {
            CFRelease(v13);
          }
        }

        *this = 3;
        *(this + 1) = 0;
        *(this + 2) = 0;
        if ((v5 & 7) != 2)
        {
LABEL_52:
          *(a2 + 56) = 1;
          *a2 = *(a2 + 1);
          goto LABEL_50;
        }

        RB::ProtobufDecoder::begin_message(a2);
        field = RB::ProtobufDecoder::next_field(a2);
        if (field)
        {
          v15 = field;
          do
          {
            v16 = v15 >> 3;
            if ((v15 >> 3) == 3)
            {
              *(this + 5) = RB::ProtobufDecoder::uint_field(a2, v15);
            }

            else if (v16 == 2)
            {
              *v6 = RB::ProtobufDecoder::float_field(a2, v15);
            }

            else if (v16 == 1)
            {
              v17 = RB::Decoder::cgfont_field(a2, v15);
              v18 = *(this + 1);
              if (v18 != v17)
              {
                if (v18)
                {
                  CFRelease(v18);
                }

                if (v17)
                {
                  v19 = CFRetain(v17);
                }

                else
                {
                  v19 = 0;
                }

                *(this + 1) = v19;
              }
            }

            else
            {
              RB::ProtobufDecoder::skip_field(a2, v15);
            }

            v15 = RB::ProtobufDecoder::next_field(a2);
          }

          while (v15);
        }

        goto LABEL_48;
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1)
      {
        RB::ProtobufDecoder::skip_field(a2, v5);
        goto LABEL_50;
      }

      if (*this == 3)
      {
        v8 = *(this + 1);
        if (v8)
        {
          CFRelease(v8);
        }
      }

      *this = 1;
      *(this + 1) = 0x3C00000000000000;
      *v6 = 0.0;
      *(this + 10) = 0;
      if ((v5 & 7) != 2)
      {
        goto LABEL_52;
      }

      RB::ProtobufDecoder::begin_message(a2);
      RB::Fill::Color::decode((this + 8), a2);
LABEL_48:
      RB::ProtobufDecoder::end_message(a2);
LABEL_50:
      result = RB::ProtobufDecoder::next_field(a2);
      v5 = result;
      if (!result)
      {
        return result;
      }
    }

    if (*this == 3)
    {
      v9 = *(this + 1);
      if (v9)
      {
        CFRelease(v9);
      }
    }

    *this = 2;
    if ((v5 & 7) != 2)
    {
      goto LABEL_52;
    }

    RB::ProtobufDecoder::begin_message(a2);
    *(this + 1) = 0x3C00000000000000;
    *(this + 10) = 0;
    *(this + 4) = 0;
    *(this + 22) = 0x3C00000000000000;
    *(this + 17) = 0;
    *(this + 30) = 0;
    v10 = RB::ProtobufDecoder::next_field(a2);
    if (!v10)
    {
      goto LABEL_48;
    }

    v11 = v10;
    while (1)
    {
      if ((v11 >> 3) == 2)
      {
        if ((v11 & 7) != 2)
        {
LABEL_27:
          *(a2 + 56) = 1;
          *a2 = *(a2 + 1);
          goto LABEL_25;
        }

        RB::ProtobufDecoder::begin_message(a2);
        v12 = (this + 22);
      }

      else
      {
        if ((v11 >> 3) != 1)
        {
          RB::ProtobufDecoder::skip_field(a2, v11);
          goto LABEL_25;
        }

        if ((v11 & 7) != 2)
        {
          goto LABEL_27;
        }

        RB::ProtobufDecoder::begin_message(a2);
        v12 = (this + 8);
      }

      RB::Fill::Color::decode(v12, a2);
      RB::ProtobufDecoder::end_message(a2);
LABEL_25:
      v11 = RB::ProtobufDecoder::next_field(a2);
      if (!v11)
      {
        goto LABEL_48;
      }
    }
  }

  return result;
}

void sub_195DB1710(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<RB::XML::Value::Base>::shared_ptr[abi:nn200100]<RB::XML::Value::Font,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<RB::XML::Value::Color *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::Color>,std::allocator<RB::XML::Value::Color>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19A8C09E0);
}

uint64_t std::__shared_ptr_pointer<RB::XML::Value::Color *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::Color>,std::allocator<RB::XML::Value::Color>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_195DB1800(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<RB::XML::Value::Base>::shared_ptr[abi:nn200100]<RB::XML::Value::Font,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<RB::XML::Value::ConstantString *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::ConstantString>,std::allocator<RB::XML::Value::ConstantString>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19A8C09E0);
}

uint64_t std::__shared_ptr_pointer<RB::XML::Value::ConstantString *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::ConstantString>,std::allocator<RB::XML::Value::ConstantString>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t RB::Stroke::stroke_points(void *a1, uint64_t (***a2)(void), float64x2_t a3)
{
  v5[0] = a2;
  v5[1] = vcvt_f32_f64(a3);
  v5[2] = 0x3F80000000000000;
  [a1 applyFunction:_ZZN2RB6Stroke13stroke_pointsEPU18objcproto8RBStroke11objc_objectDv2_dRNS0_12PathConsumerINS0_5PointEEEEN3__08__invokeEmPK15RBStrokeElementPKfPv info:v5];
  return (**a2)(a2);
}

uint64_t RB::Stroke::stroke_particles(void *a1, uint64_t (***a2)(void), float64x2_t a3)
{
  v10[0] = a2;
  __asm { FMOV            V1.2S, #1.0 }

  v10[1] = vcvt_f32_f64(a3);
  v10[2] = _D1;
  v10[3] = 1065353216;
  v10[4] = 0;
  v10[5] = 0;
  v10[6] = 1065353216;
  [a1 applyFunction:_ZZN2RB6Stroke16stroke_particlesEPU18objcproto8RBStroke11objc_objectDv2_dRNS0_12PathConsumerINS0_8ParticleEEEEN3__08__invokeEmPK15RBStrokeElementPKfPv info:v10];
  return (**a2)(a2);
}

uint64_t _ZZN2RB6Stroke13stroke_pointsEPU18objcproto8RBStroke11objc_objectDv2_dRNS0_12PathConsumerINS0_5PointEEEEN3__08__invokeEmPK15RBStrokeElementPKfPv(uint64_t result, unsigned __int8 *a2, float32x2_t *a3, float32x2_t *a4)
{
  if (result)
  {
    v7 = result;
    v8 = &a4[2];
    do
    {
      v10 = *a2++;
      v9 = v10;
      if (v10 > 0xF)
      {
        v11 = 0;
      }

      else
      {
        v11 = RB::Stroke::element_args(RBStrokeElement)::elts[v9];
      }

      if (v9 <= 2)
      {
        if (v9)
        {
          if (v9 == 1)
          {
            result = (*(**a4 + 24))(*a4, v8, COERCE_DOUBLE(vadd_f32(*a3, a4[1])));
          }

          else if (v9 == 2)
          {
            result = (*(**a4 + 32))(*a4, v8, COERCE_DOUBLE(vadd_f32(*a3, a4[1])), COERCE_DOUBLE(vadd_f32(a3[1], a4[1])));
          }
        }

        else
        {
          result = (*(**a4 + 16))(*a4, v8, COERCE_DOUBLE(vadd_f32(*a3, a4[1])));
        }
      }

      else if (v9 > 4)
      {
        if (v9 == 5)
        {
          *v8 = fmaxf(a3->f32[0] * 0.5, 0.0);
        }

        else if (v9 == 14)
        {
          a4[2].i32[1] = a3->i32[0];
        }
      }

      else if (v9 == 3)
      {
        result = (*(**a4 + 40))(*a4, v8, COERCE_DOUBLE(vadd_f32(*a3, a4[1])), COERCE_DOUBLE(vadd_f32(a3[1], a4[1])), COERCE_DOUBLE(vadd_f32(a3[2], a4[1])));
      }

      else
      {
        result = (*(**a4 + 8))();
      }

      a3 = (a3 + 4 * v11);
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t _ZZN2RB6Stroke16stroke_particlesEPU18objcproto8RBStroke11objc_objectDv2_dRNS0_12PathConsumerINS0_8ParticleEEEEN3__08__invokeEmPK15RBStrokeElementPKfPv(uint64_t result, unsigned __int8 *a2, float32x2_t *a3, float32x2_t *a4)
{
  if (result)
  {
    v7 = result;
    v8 = a4 + 2;
    do
    {
      v10 = *a2++;
      v9 = v10;
      if (v10 > 0xF)
      {
        v11 = 0;
      }

      else
      {
        v11 = RB::Stroke::element_args(RBStrokeElement)::elts[v9];
      }

      switch(v9)
      {
        case 0:
          result = (*(**a4 + 16))(*a4, v8, COERCE_DOUBLE(vadd_f32(*a3, a4[1])));
          break;
        case 1:
          result = (*(**a4 + 24))(*a4, v8, COERCE_DOUBLE(vadd_f32(*a3, a4[1])));
          break;
        case 2:
          result = (*(**a4 + 32))(*a4, v8, COERCE_DOUBLE(vadd_f32(*a3, a4[1])), COERCE_DOUBLE(vadd_f32(a3[1], a4[1])));
          break;
        case 3:
          result = (*(**a4 + 40))(*a4, v8, COERCE_DOUBLE(vadd_f32(*a3, a4[1])), COERCE_DOUBLE(vadd_f32(a3[1], a4[1])), COERCE_DOUBLE(vadd_f32(a3[2], a4[1])));
          break;
        case 4:
          result = (*(**a4 + 8))();
          break;
        case 6:
          v8->i32[0] = a3->i32[0];
          break;
        case 7:
          a4[2].i32[1] = a3->i32[0];
          break;
        case 8:
          a4[3].i32[0] = a3->i32[0];
          break;
        case 9:
          a4[3].i32[1] = a3->i32[0];
          break;
        case 10:
          a4[4].i32[0] = a3->i32[0];
          break;
        case 11:
          a4[4].i32[1] = a3->i32[0];
          break;
        case 12:
          a4[5].i32[0] = a3->i32[0];
          break;
        case 13:
          a4[5].i32[1] = a3->i32[0];
          break;
        case 14:
          a4[6].i32[0] = a3->i32[0];
          break;
        case 15:
          a4[6].i32[1] = a3->i32[0];
          break;
        default:
          break;
      }

      a3 = (a3 + 4 * v11);
      --v7;
    }

    while (v7);
  }

  return result;
}

void sub_195DB23CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  RB::DisplayList::Builder::~Builder(va);
  _Unwind_Resume(a1);
}

void sub_195DB27E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, id a11, id a12, id a13, uint64_t a14, id a15, id a16, id a17, id a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25, id a26, id a27, uint64_t a28, id a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34, id a35, id a36, id a37)
{
  if (a28 && atomic_fetch_add_explicit((a28 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    [RBDrawable initWithDevice:];
  }

  if (v37)
  {
    if (atomic_fetch_add_explicit((v37 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      [RBDrawable initWithDevice:];
    }
  }

  _Unwind_Resume(a1);
}

void sub_195DB2DBC(_Unwind_Exception *a1)
{
  v5 = v1[11];
  if (v5)
  {
    [RBDrawable renderDisplayList:v5 sourceRect:? destinationOffset:? flags:?];
    a1 = v1[24];
  }

  RB::DisplayList::Builder::~Builder((v1 + 26));
  RB::vector<RB::refcounted_ptr<RB::DisplayList::Contents>,8ul,unsigned int>::~vector(v3 - 208);
  if (v1[3] > 0x1000uLL)
  {
    free(v2);
  }

  _Unwind_Resume(a1);
}

void sub_195DB320C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id a13, id a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  RB::RenderFrame::~RenderFrame(&a39);

  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

id __copy_helper_block_e8_32c48_ZTSN2RB8objc_ptrIU13block_pointerFvP7NSErrorEEE40c40_ZTSN2RB8objc_ptrIU13block_pointerFvvEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_32c48_ZTSN2RB8objc_ptrIU13block_pointerFvP7NSErrorEEE40c40_ZTSN2RB8objc_ptrIU13block_pointerFvvEEE(uint64_t a1)
{
  v2 = *(a1 + 32);
}

id __copy_helper_block_e8_48c58_ZTSN2RB8objc_ptrIPU21objcproto10MTLTexture11objc_objectEE56c66_ZTSN2RB8objc_ptrIPU29objcproto18RBDrawableDelegate11objc_objectEE64c30_ZTSN2RB8objc_ptrIP8RBDeviceEE72c40_ZTSN2RB14refcounted_ptrINS_8DrawableEEE80c30_ZTSN2RB8objc_ptrIP8NSStringEE120c40_ZTSN2RB8objc_ptrIU13block_pointerFvvEEE128c40_ZTSN2RB8objc_ptrIU13block_pointerFvvEEE136c48_ZTSN2RB8objc_ptrIU13block_pointerFvP7NSErrorEEE144c55_ZTSN2RB8objc_ptrIPU18objcproto8MTLEvent11objc_objectEE(void *a1, uint64_t a2)
{
  a1[6] = *(a2 + 48);
  a1[7] = *(a2 + 56);
  a1[8] = *(a2 + 64);
  v4 = *(a2 + 72);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
  }

  a1[9] = v4;
  a1[10] = *(a2 + 80);
  a1[15] = *(a2 + 120);
  a1[16] = *(a2 + 128);
  a1[17] = *(a2 + 136);
  result = *(a2 + 144);
  a1[18] = result;
  return result;
}

void sub_195DB347C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 72);
  if (v3)
  {
    if (atomic_fetch_add_explicit((v3 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __copy_helper_block_e8_48c58_ZTSN2RB8objc_ptrIPU21objcproto10MTLTexture11objc_objectEE56c66_ZTSN2RB8objc_ptrIPU29objcproto18RBDrawableDelegate11objc_objectEE64c30_ZTSN2RB8objc_ptrIP8RBDeviceEE72c40_ZTSN2RB14refcounted_ptrINS_8DrawableEEE80c30_ZTSN2RB8objc_ptrIP8NSStringEE120c40_ZTSN2RB8objc_ptrIU13block_pointerFvvEEE128c40_ZTSN2RB8objc_ptrIU13block_pointerFvvEEE136c48_ZTSN2RB8objc_ptrIU13block_pointerFvP7NSErrorEEE144c55_ZTSN2RB8objc_ptrIPU18objcproto8MTLEvent11objc_objectEE_cold_1();
    }
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_48c58_ZTSN2RB8objc_ptrIPU21objcproto10MTLTexture11objc_objectEE56c66_ZTSN2RB8objc_ptrIPU29objcproto18RBDrawableDelegate11objc_objectEE64c30_ZTSN2RB8objc_ptrIP8RBDeviceEE72c40_ZTSN2RB14refcounted_ptrINS_8DrawableEEE80c30_ZTSN2RB8objc_ptrIP8NSStringEE120c40_ZTSN2RB8objc_ptrIU13block_pointerFvvEEE128c40_ZTSN2RB8objc_ptrIU13block_pointerFvvEEE136c48_ZTSN2RB8objc_ptrIU13block_pointerFvP7NSErrorEEE144c55_ZTSN2RB8objc_ptrIPU18objcproto8MTLEvent11objc_objectEE(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add_explicit((v2 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __copy_helper_block_e8_48c58_ZTSN2RB8objc_ptrIPU21objcproto10MTLTexture11objc_objectEE56c66_ZTSN2RB8objc_ptrIPU29objcproto18RBDrawableDelegate11objc_objectEE64c30_ZTSN2RB8objc_ptrIP8RBDeviceEE72c40_ZTSN2RB14refcounted_ptrINS_8DrawableEEE80c30_ZTSN2RB8objc_ptrIP8NSStringEE120c40_ZTSN2RB8objc_ptrIU13block_pointerFvvEEE128c40_ZTSN2RB8objc_ptrIU13block_pointerFvvEEE136c48_ZTSN2RB8objc_ptrIU13block_pointerFvP7NSErrorEEE144c55_ZTSN2RB8objc_ptrIPU18objcproto8MTLEvent11objc_objectEE_cold_1();
  }

  v3 = *(a1 + 48);
}

void sub_195DB37C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    [(RBDrawable *)a10 statisticsHandler];
  }

  _Unwind_Resume(exception_object);
}

void sub_195DB388C(_Unwind_Exception *exception_object)
{
  if (atomic_fetch_add_explicit((v1 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    [RBDrawable setStatisticsHandler:];
  }

  _Unwind_Resume(exception_object);
}

uint64_t RB::Drawable::StatisticsHandler::StatisticsHandler(uint64_t a1, void *a2, void *a3)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F0A3EAF0;
  *(a1 + 16) = [a2 copy];
  objc_initWeakOrNil((a1 + 24), a3);
  return a1;
}

uint64_t RB::Refcount<RB::Drawable::StatisticsHandler,std::atomic<unsigned int>>::release(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    return [RBDrawable setStatisticsHandler:];
  }

  return result;
}

uint64_t RB::Refcount<RB::Drawable::StatisticsHandler,std::atomic<unsigned int>>::finalize(uint64_t result)
{
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void RB::Drawable::StatisticsHandler::~StatisticsHandler(id *this)
{
  *this = &unk_1F0A3EAF0;
  objc_destroyWeak(this + 3);
}

{
  *this = &unk_1F0A3EAF0;
  objc_destroyWeak(this + 3);

  JUMPOUT(0x19A8C09E0);
}

uint64_t RB::vector<RB::refcounted_ptr<RB::DisplayList::Contents>,8ul,unsigned int>::~vector(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = a1;
  }

  if (*(a1 + 72))
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5 && atomic_fetch_add_explicit((v5 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        [RBMovedDisplayListContents .cxx_destruct];
      }

      ++v4;
    }

    while (v4 < *(a1 + 72));
    v2 = *(a1 + 64);
  }

  if (v2)
  {
    free(v2);
  }

  return a1;
}

uint64_t RB::Function::Function(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 4) = a2;
  *(a1 + 8) = 0u;
  v7 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = *a4;
  *a4 = 0;
  v8 = *(a4 + 8);
  *(a1 + 88) = 0;
  *(a1 + 48) = v8;
  *(a1 + 96) = 0;
  *(a1 + 104) = 8;
  v9 = *(a4 + 56);
  *(a1 + 88) = *(a4 + 48);
  *(a1 + 96) = v9;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  v10 = *(a1 + 104);
  *(a1 + 104) = *(a4 + 64);
  *(a4 + 64) = v10;
  RB::vector<RB::Rect,2ul,unsigned int>::swap_inline((a1 + 56), (a4 + 16));
  v11 = *(a4 + 88);
  *(a1 + 112) = *(a4 + 72);
  *(a1 + 128) = v11;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v12 = *(a1 + 8);
  if (v12 != a3)
  {

    *v7 = a3;
  }

  return a1;
}

void sub_195DB3D5C(_Unwind_Exception *a1)
{
  if (*v3)
  {
    free(*v3);
  }

  _Unwind_Resume(a1);
}

void RB::Function::Info::~Info(RB::Function::Info *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    free(v2);
  }
}

uint64_t RB::Function::load_function(RB::Function *this, RB::Device *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this);
  v5 = *(this + 3);
  if (!v5)
  {
    if (!*(this + 1))
    {
      goto LABEL_39;
    }

    v7 = RB::current_time_seconds(v4);
    v8 = objc_opt_new();
    [v8 setName:*(this + 1)];
    [v8 setSpecializedName:@"custom_fn"];
    v9 = *(this + 2);
    if (v9)
    {
      v10 = *(v9 + 8);
    }

    else
    {
      v10 = RB::Device::library(a2);
    }

    *buf = 0;
    v11 = [v10 newFunctionWithDescriptor:v8 error:buf];

    *(this + 3) = v11;
    if (v11)
    {
      [v11 setLabel:*(this + 1)];
    }

    if (RB::verbose_mode(2))
    {
      v24 = CACurrentMediaTime();
      if (*(this + 3))
      {
        v25 = v24;
        v26 = RB::misc_log(v23);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = *(this + 1);
          *v40 = 138412546;
          v41 = v27;
          v42 = 2048;
          v43 = (v25 - v7) * 1000.0;
          _os_log_impl(&dword_195CE8000, v26, OS_LOG_TYPE_INFO, "loaded function %@ (%.2f ms)\n", v40, 0x16u);
        }
      }

      else
      {
        v32 = RB::error_log(v23);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = *(this + 1);
          if (*buf)
          {
            v34 = [*buf localizedDescription];
          }

          else
          {
            v34 = @"unknown error";
          }

          RB::Function::load_function(v34, v40, v33);
        }
      }
    }

    v5 = *(this + 3);
    if (!v5)
    {
LABEL_39:
      if (*(this + 2))
      {
        v12 = RB::signposts_log(v4);
        v13 = v12;
        if (v12)
        {
          v12 = os_signpost_id_generate(v12);
          v14 = v12;
          if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v12 = os_signpost_enabled(v13);
            if (v12)
            {
              v15 = *(this + 5);
              *buf = 138412290;
              *&buf[4] = v15;
              _os_signpost_emit_with_name_impl(&dword_195CE8000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v14, "StitchShader", "shader=%@", buf, 0xCu);
            }
          }
        }

        else
        {
          v14 = 0;
        }

        v16 = RB::current_time_seconds(v12);
        v36 = 0;
        v17 = *(a2 + 3);
        v18 = *(*(this + 2) + 8);
        v19 = RB::Device::library(a2);
        RB::Function::Info::make_stitched_library(this + 5, v17, v18, v19, &v36, &v35);
        v20 = v35;
        v21 = [v35 newFunctionWithName:@"custom_fn"];

        *(this + 3) = v21;
        if (v21)
        {
          v22 = RB::verbose_mode(2);
          if (v22)
          {
            v28 = RB::current_time_seconds(v22);
            v30 = RB::misc_log(v29);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              v31 = *(this + 5);
              *buf = 138412546;
              *&buf[4] = v31;
              v38 = 2048;
              v39 = (v28 - v16) * 1000.0;
              _os_log_impl(&dword_195CE8000, v30, OS_LOG_TYPE_INFO, "built stitched function %@ (%.2f ms)\n", buf, 0x16u);
            }
          }
        }

        if (!*(this + 3) && v36)
        {
          RB::Device::function_library_error(a2, *(this + 2), v36);
        }

        if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_195CE8000, v13, OS_SIGNPOST_INTERVAL_END, v14, "StitchShader", &unk_195E56109, buf, 2u);
        }

        v5 = *(this + 3);
      }

      else
      {
        v5 = 0;
      }
    }
  }

  os_unfair_lock_unlock(this);
  return v5;
}

void RB::Function::Info::make_stitched_library(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v9 = a1;
  v118 = *MEMORY[0x1E69E9840];
  v11 = [a3 newFunctionWithName:*a1];
  if (v11)
  {
    v89 = v11;
    v100 = objc_opt_new();
    v96 = objc_opt_new();
    v83 = a5;
    v85 = a6;
    v102 = objc_opt_new();
    v12 = objc_opt_new();
    v98 = v12;
    v13 = [objc_alloc(MEMORY[0x1E69740D0]) initWithArgumentIndex:0];
    v88 = v13;
    v90 = [objc_alloc(MEMORY[0x1E69740D0]) initWithArgumentIndex:1];
    v99 = [objc_alloc(MEMORY[0x1E69740D0]) initWithArgumentIndex:2];
    v97 = [objc_alloc(MEMORY[0x1E69740D0]) initWithArgumentIndex:3];
    v14 = [objc_alloc(MEMORY[0x1E69740D0]) initWithArgumentIndex:4];
    v91 = v14;
    v95 = [objc_alloc(MEMORY[0x1E69740D0]) initWithArgumentIndex:5];
    v92 = [objc_alloc(MEMORY[0x1E69740D0]) initWithArgumentIndex:6];
    v105 = v14;
    v86 = a2;
    v106 = v95;
    v107 = v92;
    if ((RB::disable_workaround("stitched-inputs", v15) & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E69740A0]);
      v112[0] = v13;
      v112[1] = v90;
      v112[2] = v99;
      v112[3] = v97;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v112 count:4];
      v18 = [v16 initWithName:@"__RB::XXX" arguments:v17 controlDependencies:MEMORY[0x1E695E0F0]];
      [v96 addObject:v18];
      [v102 addObject:v18];
    }

    [v100 addObject:v13];
    v19 = *(v9 + 2);
    if (v19 == 4 || v19 == 2)
    {
      v21 = v116;
      [v100 addObject:v116];
      if (*(v9 + 2) == 4)
      {
        v22 = v115[0];
        [v100 addObject:v115[0]];
      }
    }

    else if (v19 == 1)
    {
      [v100 addObject:v90];
    }

    v23 = (v9 + 2);
    v24 = v9[7];
    v101 = v9;
    if (v24)
    {
      v25 = 0;
      v26 = v9 + 76;
      while (1)
      {
        if (v9[6])
        {
          v27 = v9[6];
        }

        else
        {
          v27 = v23;
        }

        v28 = v27[v25];
        v29 = v28 & 0x3F;
        if (v29 != 4)
        {
          v31 = v28 >> 8;
          if ((v28 & 0x40) != 0)
          {
            v39 = objc_alloc(MEMORY[0x1E69740A0]);
            v40 = v108;
            v116 = v99;
            v117 = v108;
            v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v116 count:2];
            v42 = [v39 initWithName:fn arguments:v41 controlDependencies:MEMORY[0x1E695E0F0]];
            [v102 addObject:v42];
            v43 = @"__RB::Ainvalid";
            if (v29 != 3)
            {
              v43 = @"__RB::Avoid";
            }

            v44 = objc_alloc(MEMORY[0x1E69740A0]);
            v115[0] = v97;
            v115[1] = v42;
            v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:2];
            v36 = [v44 initWithName:v43 arguments:v45 controlDependencies:MEMORY[0x1E695E0F0]];
            [v102 addObject:v36];

            v12 = v98;
            [v100 addObject:v36];
            v46 = v27[v25];
            if ((v46 & 0x80) != 0)
            {
              v48 = objc_alloc(MEMORY[0x1E69740A0]);
              v49 = v115[0];
              v116 = v99;
              v117 = v115[0];
              v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v116 count:2];
              v51 = [v48 initWithName:v47 arguments:v50 controlDependencies:MEMORY[0x1E695E0F0]];
              [v102 addObject:v51];

              v12 = v98;
              [v100 addObject:v51];
            }
          }

          else
          {
            v33 = objc_alloc(MEMORY[0x1E69740A0]);
            v34 = v115[0];
            v116 = v99;
            v117 = v115[0];
            v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v116 count:2];
            v36 = [v33 initWithName:v32 arguments:v35 controlDependencies:MEMORY[0x1E695E0F0]];
            [v102 addObject:v36];

            v12 = v98;
            [v100 addObject:v36];
          }

          v9 = v101;
          goto LABEL_35;
        }

        v30 = 0;
        v9 = v101;
        while (*&v26[4 * v30] != v25)
        {
          if (++v30 == 3)
          {
            goto LABEL_35;
          }
        }

        if (!v30)
        {
          break;
        }

        if (v30 == 2)
        {
          v37 = &v107;
          goto LABEL_39;
        }

        v37 = &v106;
        if (v30 == 1)
        {
          goto LABEL_39;
        }

LABEL_35:
        if (++v25 == v24)
        {
          goto LABEL_41;
        }
      }

      v37 = &v105;
LABEL_39:
      if (*v37)
      {
        [v100 addObject:?];
      }

      goto LABEL_35;
    }

LABEL_41:
    v52 = [objc_alloc(MEMORY[0x1E69740A0]) initWithName:*v9 arguments:v100 controlDependencies:v96];
    v53 = v52;
    v11 = v89;
    if (*(v9 + 2) == 3)
    {
      v93 = v52;
      [v102 addObject:v93];
      v54 = objc_alloc(MEMORY[0x1E69740A0]);
      v55 = v116;
      v111[0] = v116;
      v111[1] = v93;
      v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v111 count:2];
      v57 = [v54 initWithName:@"__RB::Slayer" arguments:v56 controlDependencies:MEMORY[0x1E695E0F0]];

      v53 = v57;
    }

    v58 = objc_opt_new();
    v59 = objc_alloc(MEMORY[0x1E69740B0]);
    v110 = v58;
    v60 = [v59 initWithFunctionName:@"custom_fn" nodes:v102 outputNode:v53 attributes:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v110, 1)}];
    v61 = objc_opt_new();
    [v61 addObject:v89];
    v103[0] = MEMORY[0x1E69E9820];
    v103[1] = 3321888768;
    v103[2] = ___ZNK2RB8Function4Info21make_stitched_libraryEPU19objcproto9MTLDevice11objc_objectPU21objcproto10MTLLibrary11objc_objectS5_PP7NSError_block_invoke;
    v103[3] = &__block_descriptor_40_e8_32c37_ZTSN2RB8objc_ptrIP14NSMutableArrayEE_e15_v32__0_8_16_B24l;
    v104 = v61;
    [v12 enumerateKeysAndObjectsUsingBlock:v103];
    v62 = objc_opt_new();
    v109 = v60;
    [v62 setFunctionGraphs:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v109, 1)}];
    [v62 setFunctions:v61];
    v116 = 0;
    v63 = [v86 newLibraryWithStitchedDescriptor:v62 error:&v116];
    if (v63)
    {
      goto LABEL_78;
    }

    if (!v83)
    {
      v63 = 0;
LABEL_78:
      *v85 = v63;

      goto LABEL_79;
    }

    v82 = v61;
    v84 = v60;
    v87 = v58;
    v94 = v53;
    v64 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v65 = *(v101 + 2);
    v66 = [v89 returnType];
    v67 = v66;
    if (v66)
    {
      if (v65 < 3)
      {
LABEL_49:
        if ([v66 dataType] == 19)
        {
          goto LABEL_52;
        }

        v68 = @"Expected half4 result, has %@.\n";
        goto LABEL_51;
      }

      if (v65 != 3)
      {
        if (v65 != 4)
        {
          goto LABEL_52;
        }

        goto LABEL_49;
      }

      if ([v66 dataType] != 4)
      {
        v68 = @"Expected float2 result, has %@.\n";
LABEL_51:
        [v64 appendFormat:v68, objc_msgSend(v67, "description")];
      }
    }

LABEL_52:
    v69 = [v89 arguments];
    v70 = v69;
    if (!v69)
    {
LABEL_70:
      if (v116 && ![v64 length])
      {
        [v64 appendString:{objc_msgSend(v116, "localizedDescription")}];
      }

      else if (![v64 length])
      {
        [v64 appendString:@"unknown error"];
      }

      v79 = objc_opt_new();
      v11 = v89;
      v80 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Function stitching failed: %@.\n%@", *v101, v64];
      [v79 setObject:v80 forKey:*MEMORY[0x1E696A578]];
      if (v116)
      {
        [v79 setObject:v116 forKey:*MEMORY[0x1E696AA08]];
      }

      *v83 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.RenderBox.RBShaderError" code:2 userInfo:v79];

      v63 = 0;
      v53 = v94;
      v58 = v87;
      v60 = v84;
      v61 = v82;
      goto LABEL_78;
    }

    v81 = [(NSMutableString *)v69 count];
    LODWORD(v115[0]) = 6;
    if (v65 == 4)
    {
      LODWORD(v115[0]) = 3;
      v73 = 2;
    }

    else
    {
      v73 = 1;
      if (v65 != 2)
      {
        if (v65 == 1)
        {
          LODWORD(v115[0]) = 2;
          v73 = 2;
        }

        goto LABEL_60;
      }
    }

    LODWORD(v115[0]) = 3;
LABEL_60:
    v74 = v101[7];
    if (v101[6])
    {
      v75 = v101[6];
    }

    else
    {
      v75 = v23;
    }

    v76 = v73;
    v77 = v73;
    if (v74)
    {
      v78 = 4 * v74;
      do
      {
        v77 = (v73 + 1);
        if ((~*v75 & 0xC0) == 0)
        {
          LODWORD(v115[0]) = 1;
          v77 = (v73 + 2);
        }

        ++v75;
        v73 = v77;
        v78 -= 4;
      }

      while (v78);
    }

    if (v77 < v81)
    {
      [v64 appendFormat:@"Too few function arguments: expected %d, received %d.\n", v81 - v76, v101[7]];
    }

    goto LABEL_70;
  }

  if (a5)
  {
    v20 = MEMORY[0x1E696ABC0];
    v113 = *MEMORY[0x1E696A578];
    v114 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown Metal function: %@", *v9];
    *a5 = [v20 errorWithDomain:@"com.apple.RenderBox.RBShaderError" code:1 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v114, &v113, 1)}];
  }

  *a6 = 0;
LABEL_79:
}

void sub_195DB4E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id a13, uint64_t a14, id a15, uint64_t a16, id a17, id a18, id a19, id a20, id a21, id a22, id a23, id a24, id a25, id a26, id a27, id a28, id a29, uint64_t a30, id a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36, id a37)
{
  RB::JSONPipelineData::~JSONPipelineData(&a37);

  _Unwind_Resume(a1);
}

uint64_t RB::Function::Info::Info(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 3)
  {
    v4 = 6;
  }

  else
  {
    v4 = 2;
  }

  *a1 = 0;
  *(a1 + 8) = a3;
  *(a1 + 12) = v4;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 8;
  *(a1 + 72) = xmmword_195E445D0;
  *(a1 + 88) = 0;
  v5 = *(a2 + 24);
  if (v5)
  {

    *a1 = v5;
  }

  return a1;
}

void sub_195DB51C0(_Unwind_Exception *a1)
{
  if (*v2)
  {
    free(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t RB::Function::Info::make_params(uint64_t a1, void *a2, uint64_t *a3)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v5 = v4 - 2;
  if ((v4 - 2) <= 2)
  {
    *(a1 + 76) = 0x7FFFFFFF;
    if (v4 == 4)
    {
      *(a1 + 80) = 0x7FFFFFFF;
    }
  }

  v6 = a2[1];
  if (v6)
  {
    v7 = (a1 + 76);
    v8 = (*a2 + 9);
    v9 = 32 * v6;
    while (1)
    {
      v10 = *(v8 - 3);
      if (v10 > 5)
      {
        if (v10 - 7 < 2)
        {
          v12 = 4u;
          v11 = 1;
          goto LABEL_24;
        }

        if (v10 == 6)
        {
LABEL_21:
          v11 = 0;
          v12 = 8u;
          goto LABEL_24;
        }

        v11 = 0;
        v12 = 0;
        if (v10 == 9)
        {
          v11 = 0;
          v12 = 1u;
        }
      }

      else
      {
        if (*(v8 - 3) <= 2u)
        {
          if (v10 == 1)
          {
            v11 = 0;
            v12 = 5u;
          }

          else
          {
            v11 = 0;
            if (v10 == 2)
            {
              v12 = 6;
            }

            else
            {
              v12 = 0;
            }
          }

          goto LABEL_24;
        }

        if (v10 == 3)
        {
          v11 = 0;
          v12 = 7u;
        }

        else
        {
          if (v10 == 4)
          {
            goto LABEL_21;
          }

          v11 = 0;
          v12 = 0u;
          if (v10 == 5)
          {
            v11 = 0;
            v12 = 2u;
          }
        }
      }

LABEL_24:
      v13 = *(a1 + 72) + 3;
      *(a1 + 72) = v13 & 0xFFFFFFFC;
      v14 = *v8 << 6;
      if (*v8)
      {
        v15 = v14 & 0x80;
      }

      else
      {
        v15 = 0;
      }

      v16 = *(a1 + 56);
      if (*(a1 + 64) < (v16 + 1))
      {
        v29 = a3;
        RB::vector<unsigned int,8ul,unsigned long>::reserve_slow((a1 + 16), v16 + 1);
        a3 = v29;
        v16 = *(a1 + 56);
      }

      v17 = *(a1 + 48);
      if (!v17)
      {
        v17 = a1 + 16;
      }

      *(v17 + 4 * v16) = v14 & 0x40 | (v13 >> 2 << 8) | v15 | v12;
      v18 = *(a1 + 56) + 1;
      *(a1 + 56) = v18;
      if (*v8)
      {
        v19 = *(a1 + 72);
        *(a1 + 72) = v19 + 4;
        if ((*v8 & 2) == 0)
        {
          goto LABEL_36;
        }

        v20 = v19 + 8;
      }

      else
      {
        v20 = *(a1 + 72) + RB::Function::Param::size_values[v12];
      }

      *(a1 + 72) = v20;
LABEL_36:
      if (v11)
      {
        v21 = (a1 + 76);
        if ((*v7 & 0x80000000) == 0)
        {
          if ((*(a1 + 80) & 0x80000000) != 0)
          {
            v22 = 1;
          }

          else
          {
            if ((*(a1 + 84) & 0x80000000) == 0)
            {
              if (!a3)
              {
                return 0;
              }

              v26 = MEMORY[0x1E696ABC0];
              v30 = *MEMORY[0x1E696A578];
              v27 = a3;
              v31[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Too many texture arguments: %@", *a1];
              v28 = [v26 errorWithDomain:@"com.apple.RenderBox.RBShaderError" code:3 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v31, &v30, 1)}];
              result = 0;
              *v27 = v28;
              return result;
            }

            v22 = 2;
          }

          v21 = &v7[v22];
        }

        *v21 = v18 - 1;
      }

      v8 += 32;
      v9 -= 32;
      if (!v9)
      {
        v4 = *(a1 + 8);
        v5 = v4 - 2;
        break;
      }
    }
  }

  if (v5 <= 2)
  {
    v23 = *(a1 + 72) + 3;
    v24 = v23 & 0xFFFFFFFC;
    *(a1 + 88) = v23 >> 2;
    *(a1 + 72) = (v23 & 0xFFFFFFFC) + 40;
    if (v4 == 4)
    {
      *(a1 + 92) = (v24 + 43) >> 2;
      *(a1 + 72) = ((v24 + 43) & 0xFFFFFFFC) + 40;
    }
  }

  return 1;
}

void RB::anonymous namespace::custom_function(void *a1, void *a2, void *a3)
{
  if (![a3 objectForKeyedSubscript:a2])
  {
    v6 = [a1 newFunctionWithName:a2];
    if (!v6)
    {
      v7 = [a2 UTF8String];
      RB::precondition_failure("invalid custom function: %s", v8, v7);
    }

    [a3 setObject:v6 forKeyedSubscript:a2];
  }
}

void RB::anonymous namespace::param_load_layer(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, unsigned int a5@<W4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v20[3] = *MEMORY[0x1E69E9840];
  v14 = objc_opt_new();
  v15 = objc_alloc(MEMORY[0x1E69740A0]);
  v16 = v19;
  v20[0] = a4;
  v20[1] = v19;
  v20[2] = a6;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
  v18 = [v15 initWithName:fn arguments:v17 controlDependencies:MEMORY[0x1E695E0F0]];
  *a7 = v18;
  [a2 addObject:v18];
}

uint64_t RB::Function::Info::texture_index(RB::Function::Info *this, int a2)
{
  result = 0;
  v4 = this + 76;
  while (*&v4[4 * result] != a2)
  {
    if (++result == 3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

id __copy_helper_block_e8_32c37_ZTSN2RB8objc_ptrIP14NSMutableArrayEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

uint64_t RB::Function::Info::texture_count(RB::Function::Info *this)
{
  result = 0;
  v3 = this + 76;
  do
  {
    if ((*&v3[4 * result] & 0x80000000) != 0)
    {
      break;
    }

    ++result;
  }

  while (result != 3);
  return result;
}

uint64_t RB::Function::Param::description(RB::Function::Param *this)
{
  v3 = *this;
  if ((*this & 0x3Fu) > 8)
  {
    v4 = "unknown";
  }

  else
  {
  }

  if ((v3 & 0x40) != 0)
  {
    v5 = " pointer";
  }

  else
  {
    v5 = "";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%s%s", v4, v5, v1, v2];
}

uint64_t RB::FunctionLibrary::compile_shader(uint64_t a1, uint64_t *a2, int a3, uint64_t *a4)
{
  v60[1] = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (*a2)
  {
    if (*(*(v5 + 16) + 24) == 5)
    {
      return 1;
    }

    else
    {
      v10 = a3 | (8 * *(v5 + 32));
      v44 = 0;
      v45 = &v44;
      v46 = 0x3812000000;
      v47 = __Block_byref_object_copy__2;
      v48 = __Block_byref_object_dispose__2;
      v50 = 0;
      v37 = 0;
      v38 = &v37;
      v39 = 0x3812000000;
      v40 = __Block_byref_object_copy__2;
      v41 = __Block_byref_object_dispose__2;
      v43 = 0;
      v30 = 0;
      v31 = &v30;
      v32 = 0x3812000000;
      v33 = __Block_byref_object_copy__52;
      v34 = __Block_byref_object_dispose__53;
      v36 = 0;
      v26 = 0;
      v27 = &v26;
      v28 = 0x2020000000;
      v29 = 0;
      v11 = *(a1 + 32);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___ZN2RB15FunctionLibrary14compile_shaderERNS_6DeviceERKNS_12CustomShader7ClosureENS3_4TypeEPP7NSError_block_invoke;
      block[3] = &unk_1E744CC08;
      block[8] = a1;
      block[9] = v5;
      block[4] = &v26;
      block[5] = &v44;
      v25 = v10;
      block[6] = &v37;
      block[7] = &v30;
      dispatch_sync(v11, block);
      if (v31[6])
      {
        v6 = 1;
      }

      else
      {
        v51 = 0;
        v52 = &v51;
        v53 = 0x9012000000;
        v54 = __Block_byref_object_copy__55;
        v55 = __Block_byref_object_dispose__56;
        v56 = 256;
        RB::Function::Info::Info(v57, v5, a3);
        v12 = (a2 + 1);
        v13 = a2[18];
        if (a2[17])
        {
          v12 = a2[17];
        }

        v23[0] = v12;
        v23[1] = v13;
        if (RB::Function::Info::make_params((v52 + 6), v23, a4))
        {
          RB::Function::Info::make_stitched_library(v52 + 6, *(a1 + 24), v45[6], v38[6], a4, v23);
          v14 = v23[0];
          if (v23[0])
          {
            v15 = objc_opt_new();
            [v15 setName:@"custom_fn"];
            if (*(v27 + 24) == 1)
            {
              [v15 setOptions:{objc_msgSend(v15, "options") | 1}];
            }

            v16 = v31;
            v17 = [v14 newFunctionWithDescriptor:v15 error:a4];

            v16[6] = v17;
            v18 = v31[6];
            v6 = v18 != 0;
            if (v18)
            {
              [v18 setLabel:*(*a2 + 24)];
              v19 = *(a1 + 32);
              v21[0] = MEMORY[0x1E69E9820];
              v21[1] = 3221225472;
              v21[2] = ___ZN2RB15FunctionLibrary14compile_shaderERNS_6DeviceERKNS_12CustomShader7ClosureENS3_4TypeEPP7NSError_block_invoke_57;
              v21[3] = &unk_1E744CC30;
              v21[7] = a1;
              v21[8] = v5;
              v22 = v10;
              v21[4] = &v51;
              v21[5] = &v30;
              v21[6] = &v26;
              dispatch_sync(v19, v21);
            }
          }

          else
          {
            v6 = 0;
          }
        }

        else
        {
          v6 = 0;
        }

        _Block_object_dispose(&v51, 8);
        if (v58)
        {
          free(v58);
        }
      }

      _Block_object_dispose(&v26, 8);
      _Block_object_dispose(&v30, 8);

      _Block_object_dispose(&v37, 8);
      _Block_object_dispose(&v44, 8);
    }
  }

  else if (a4)
  {
    v59 = *MEMORY[0x1E696A578];
    v60[0] = @"No function name";
    v6 = 0;
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.RenderBox.RBShaderError" code:1 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v60, &v59, 1)}];
  }

  else
  {
    return 0;
  }

  return v6;
}

void sub_195DB5CEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, id a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, id a57, char a58)
{
  _Block_object_dispose(&a58, 8);
  RB::Function::Info::~Info((v59 + 48));
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);

  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a51, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__52(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  return result;
}

_BYTE *___ZN2RB15FunctionLibrary14compile_shaderERNS_6DeviceERKNS_12CustomShader7ClosureENS3_4TypeEPP7NSError_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = RB::Device::should_compile_binary_functions(*(a1 + 64));
  result = RB::Device::function_library(*(a1 + 64), *(*(a1 + 72) + 16));
  if (result)
  {
    v3 = result;
    result[104] = 1;
    v4 = *(*(a1 + 40) + 8);
    v5 = *(result + 1);
    v6 = *(v4 + 48);
    if (v6 != v5)
    {

      *(v4 + 48) = v5;
    }

    v7 = RB::Device::library(*(a1 + 64));
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 48);
    if (v9 != v7)
    {

      *(v8 + 48) = v7;
    }

    result = RB::UntypedTable::lookup((v3 + 40), *(a1 + 80), 0);
    if (result)
    {
      v10 = result;
      v11 = *(*(*(a1 + 32) + 8) + 24);
      os_unfair_lock_lock(result);
      if (v11)
      {
        v12 = *(v10 + 4);
      }

      else
      {
        v12 = *(v10 + 3);
      }

      os_unfair_lock_unlock(v10);
      v13 = *(*(a1 + 56) + 8);
      v15 = *(v13 + 48);
      v14 = (v13 + 48);
      result = v15;
      if (v15 != v12)
      {

        result = v12;
        *v14 = result;
      }

      v10[144] = 1;
    }
  }

  return result;
}

__n128 __Block_byref_object_copy__55(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  v4 = *(a2 + 56);
  *(a1 + 96) = 0;
  *(a1 + 56) = v4;
  *(a1 + 104) = 0;
  *(a1 + 112) = 8;
  v5 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v5;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  v6 = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = v6;
  RB::vector<RB::Rect,2ul,unsigned int>::swap_inline((a1 + 64), (a2 + 64));
  result = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = result;
  return result;
}

void sub_195DB5F44(_Unwind_Exception *a1)
{
  if (*v2)
  {
    free(*v2);
  }

  _Unwind_Resume(a1);
}

void __Block_byref_object_dispose__56(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    free(v2);
  }

  v3 = *(a1 + 48);
}

void ___ZN2RB15FunctionLibrary14compile_shaderERNS_6DeviceERKNS_12CustomShader7ClosureENS3_4TypeEPP7NSError_block_invoke_57(uint64_t a1)
{
  v2 = RB::Device::function_library(*(a1 + 56), *(*(a1 + 64) + 16));
  if (v2)
  {
    v3 = v2;
    v4 = RB::UntypedTable::lookup((v2 + 40), *(a1 + 72), 0);
    if (!v4)
    {
      operator new();
    }

    v5 = v4;
    os_unfair_lock_lock(v4);
    v6 = *(*(a1 + 40) + 8);
    v7 = *&v5[6]._os_unfair_lock_opaque;
    *&v5[6]._os_unfair_lock_opaque = *(v6 + 48);
    *(v6 + 48) = v7;
    if (*(*(*(a1 + 48) + 8) + 24) == 1 && !*&v5[8]._os_unfair_lock_opaque)
    {
      v8 = *&v5[6]._os_unfair_lock_opaque;
      if (v8)
      {

        *&v5[8]._os_unfair_lock_opaque = v8;
      }
    }

    os_unfair_lock_unlock(v5);
    *(v3 + 104) = 1;
    LOBYTE(v5[36]._os_unfair_lock_opaque) = 1;
  }
}

uint64_t RB::FunctionLibrary::FunctionLibrary(RB::Device &,RB::CustomShader::Library const&)::$_0::__invoke(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 88);
    if (v2)
    {
      free(v2);
    }

    JUMPOUT(0x19A8C09E0);
  }

  return result;
}

void RB::anonymous namespace::constant_node(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, unsigned int a4@<W3>, uint64_t *a5@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  {
  }

  v28 = 0;
  v29 = 0;
  v30 = 8;
  if (!a4)
  {
    v15 = 0;
    v9 = 0;
LABEL_16:
    if (!v9)
    {
      v9 = __dst;
    }

    *&v9[4 * v15] = 0;
    v14 = v15 + 1;
    v29 = v15 + 1;
    goto LABEL_20;
  }

  v9 = 0;
  v10 = 0;
  do
  {
    v11 = v10 + 1;
    if (v30 < v10 + 1)
    {
      RB::vector<unsigned int,8ul,unsigned long>::reserve_slow(__dst, v11);
      v9 = v28;
      v10 = v29;
      v11 = v29 + 1;
    }

    if (v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = __dst;
    }

    *&v12[4 * v10] = a4 & 7;
    v29 = v11;
    v10 = v11;
    v13 = a4 >= 8;
    a4 >>= 3;
  }

  while (v13);
  if (!v11)
  {
    if (v30)
    {
      v15 = 0;
    }

    else
    {
      RB::vector<unsigned int,8ul,unsigned long>::reserve_slow(__dst, 1uLL);
      v9 = v28;
      v15 = v29;
    }

    goto LABEL_16;
  }

  if (v11 == 1)
  {
    *a5 = 0;
    v14 = 1;
    goto LABEL_21;
  }

  v14 = v29;
LABEL_20:
  *a5 = 0;
  if (!v14)
  {
    v24 = 0;
    goto LABEL_30;
  }

LABEL_21:
  v16 = 0;
  v17 = v14 - 1;
  v18 = MEMORY[0x1E695E0F0];
  do
  {
    v19 = v28;
    if (!v28)
    {
      v19 = __dst;
    }

    v20 = *&v19[4 * v17];
    v21 = objc_alloc(MEMORY[0x1E69740A0]);
    [a2 addObject:v22];
    if (v16)
    {
      v23 = objc_alloc(MEMORY[0x1E69740A0]);
      v26[0] = v16;
      v26[1] = v22;
      v24 = [v23 initWithName:@"__RB::Cx" arguments:objc_msgSend(MEMORY[0x1E695DEC8] controlDependencies:{"arrayWithObjects:count:", v26, 2), v18}];

      [a2 addObject:v24];
    }

    else
    {

      v24 = v22;
      v22 = 0;
    }

    --v17;
    v16 = v24;
  }

  while (v17 != -1);
LABEL_30:
  *a5 = v24;
  if (v28)
  {
    free(v28);
  }
}

void *RB::anonymous namespace::param_load_fn(void *a1, void *a2, unsigned int a3)
{
  {
    v8 = a3;
    a3 = v8;
    if (v7)
    {
      a3 = v8;
    }
  }

  return v5;
}

void RB::anonymous namespace::diagnose_parameter_error(RB::_anonymous_namespace_ *this, NSMutableString *a2, NSArray *a3, int *a4, const RB::Function::Param *a5)
{
  v54 = this;
  if ([(NSMutableString *)a2 count:a3]<= a3)
  {
    v28 = *a4;
    if ((*a4 & 0x3Fu) > 8)
    {
      v29 = "unknown";
    }

    else
    {
    }

    if ((v28 & 0x40) != 0)
    {
      v30 = " pointer";
    }

    else
    {
      v30 = "";
    }

    -[RB::_anonymous_namespace_ appendFormat:](this, "appendFormat:", @"Extra function argument at index %d: %@.\n", a3, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s%s", v29, v30]);
  }

  else
  {
    v9 = [-[NSMutableString objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{a3), "dataTypeDescription"}];
    if (!v9)
    {
      return;
    }

    v10 = v9;
    v11 = [v9 dataType];
    v53[0] = &v54;
    v53[1] = a3;
    if (v11 == 1)
    {
      if ((*a4 & 0x40) != 0)
      {
      }

      v31 = [v10 members];
      if ([v31 count] != 2 || (v38 = objc_msgSend(v31, "objectAtIndexedSubscript:", 0), v39 = objc_msgSend(v31, "objectAtIndexedSubscript:", 1), objc_msgSend(v38, "dataType") != 58) || objc_msgSend(v39, "dataType") != 2 || (v40 = objc_msgSend(v38, "textureReferenceType"), v41 = objc_msgSend(v39, "arrayType"), objc_msgSend(v40, "textureDataType") != 16) || objc_msgSend(v40, "textureType") != 2 || objc_msgSend(v40, "access") || (objc_msgSend(v40, "isDepthTexture") & 1) != 0 || objc_msgSend(v41, "elementType") != 137 || objc_msgSend(v41, "arrayLength") != 5 || (*a4 & 0x3F) == 3)
      {
        v42 = "unsupported struct type";
LABEL_44:
        return;
      }

      if ((*a4 & 0x3Fu) > 8)
      {
        v51 = "unknown";
      }

      else
      {
      }
    }

    else
    {
      v18 = v11;
      if (v11 == 60)
      {
        if ((*a4 & 0x40) == 0)
        {
        }

        if ((v19 & 0x100000000) != 0)
        {
          v26 = v19;
          if ((*a4 & 0x3F) != v19)
          {
            if (v19 > 8)
            {
              v27 = "unknown";
            }

            else
            {
            }
          }

          if ([v10 alignment] > RB::Function::Param::alignment_values[v26])
          {
          }

          if ([v10 access])
          {
            v42 = "pointer access must be read-only";
            goto LABEL_44;
          }
        }
      }

      else
      {
        if ((v43 & 0x100000000) == 0)
        {
          return;
        }

        if ((*a4 & 0x3F) != v43)
        {
          if (v43 > 8)
          {
            v44 = "unknown";
          }

          else
          {
          }

          v52 = v44;
          v42 = "invalid type, %s, expected %s";
          goto LABEL_44;
        }
      }
    }
  }
}

void RB::anonymous namespace::diagnose_parameter_error(NSMutableString *,NSArray *,unsigned long,RB::Function::Param const&)::$_0::operator()(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10[0] = 0;
  v10[1] = &a9;
  vasprintf(v10, a2, &a9);
  if (v10[0])
  {
    [**a1 appendFormat:@"Parameter at index %d: %s.\n", *(a1 + 8), v10[0]];
    free(v10[0]);
  }
}

uint64_t RB::anonymous namespace::param_type(RB::_anonymous_namespace_ *this, MTLDataType a2)
{
  if (this <= 18)
  {
    if (this > 4)
    {
      if (this == 5)
      {
        v2 = 0x100000000;
        v3 = 7;
        return v3 | v2;
      }

      if (this == 6)
      {
        v2 = 0x100000000;
        v3 = 8;
        return v3 | v2;
      }
    }

    else
    {
      if (this == 3)
      {
        v2 = 0x100000000;
        v3 = 5;
        return v3 | v2;
      }

      if (this == 4)
      {
        v2 = 0x100000000;
        v3 = 6;
        return v3 | v2;
      }
    }

LABEL_22:
    v2 = 0;
    v3 = 0;
    return v3 | v2;
  }

  if (this <= 57)
  {
    if (this == 19)
    {
      v2 = 0x100000000;
      v3 = 2;
      return v3 | v2;
    }

    if (this == 29)
    {
      v2 = 0x100000000;
      v3 = 1;
      return v3 | v2;
    }

    goto LABEL_22;
  }

  if (this == 58)
  {
    v2 = 0x100000000;
    v3 = 4;
    return v3 | v2;
  }

  if (this != 61)
  {
    goto LABEL_22;
  }

  v3 = 0;
  v2 = 0x100000000;
  if (!a2)
  {
    v2 = 0;
  }

  return v3 | v2;
}

uint64_t RB::Coverage::Path::can_mix(float64x2_t **this, const RB::DisplayList::Interpolator::Op *a2, float64x2_t **a3)
{
  if (*(this + 28) != *(a3 + 28) || *(this + 29) != *(a3 + 29))
  {
    return 0;
  }

  can_mix = RB::can_mix(this[2], a3[2], a3);
  if (can_mix)
  {
    v6 = can_mix;
    CanMix = RBPathCanMix(*this, *a3);
    if (CanMix >= v6)
    {
      result = v6;
    }

    else
    {
      result = CanMix;
    }
  }

  else
  {
    result = 0;
  }

  if (*(this + 6) != *(a3 + 6))
  {
    if (result >= 2)
    {
      return 2;
    }

    else
    {
      return result;
    }
  }

  return result;
}

float RB::Coverage::Path::mix(RBPath *this, const RB::DisplayList::Interpolator::State *a2, RBPath *a3, float64x2_t *a4, float64x2_t *a5, float64x2_t *a6, RB::Heap *a7)
{
  v14 = &this[1];
  var0 = this[1].var0;
  if (var0)
  {
    v15.f64[0] = RB::operator*(a4, var0);
    v39 = v15;
    v40 = v16;
    v41 = v17;
  }

  else
  {
    v18 = a4[1];
    v39 = *a4;
    v40 = v18;
    v41 = a4[2];
  }

  v19 = a3[1].var0;
  if (v19)
  {
    v20.f64[0] = RB::operator*(a5, v19);
    v36 = v20;
    v37 = v21;
    v38 = v22;
    v23 = a3[1].var0;
  }

  else
  {
    v23 = 0;
    v24 = a5[1];
    v36 = *a5;
    v37 = v24;
    v20 = a5[2];
    v38 = v20;
  }

  LODWORD(v20.f64[0]) = *(a2 + 4);
  RB::mix(a7, v14, v23, a4, v20.f64[0]);
  if (*v14)
  {
    v25.f64[0] = RB::operator*(a6, *v14);
    v33 = v25;
    v34 = v26;
    v35 = v27;
  }

  else
  {
    v28 = a6[1];
    v33 = *a6;
    v34 = v28;
    v35 = a6[2];
  }

  RBPathMix(*this, *a3, *(a2 + 4), &v39, &v36, &v33, &v32);
  v29 = this->var0;
  var1 = this->var1;
  *this = v32;
  v32.var0 = v29;
  v32.var1 = var1;
  RBPathRelease(v29, var1);
  result = *&this[1].var1 + ((*&a3[1].var1 - *&this[1].var1) * *(a2 + 4));
  *&this[1].var1 = result;
  return result;
}

void RB::Coverage::Path::clip(RB::Coverage::Path *this, CGContextRef *a2)
{
  v4 = *(this + 29);
  if (v4 < 2)
  {
    v19 = 0;
    v6 = 0uLL;
    memset(&mask, 0, sizeof(mask));
    v7 = *(this + 2);
    v8 = xmmword_195E42770;
    v9 = xmmword_195E42760;
    if (v7)
    {
      v9 = *v7;
      v8 = v7[1];
      v6 = v7[2];
    }

    v10 = vandq_s8(vandq_s8(vceqq_f64(v9, xmmword_195E42760), vceqq_f64(v8, xmmword_195E42770)), vceqzq_f64(v6));
    v11 = vandq_s8(vdupq_laneq_s64(v10, 1), v10).u64[0];
    LOBYTE(v19) = v11 >= 0;
    if ((v11 & 0x8000000000000000) == 0)
    {
      *&v17.c = v8;
      *&v17.tx = v6;
      *&v17.a = v9;
      CGContextGetCTM(&mask, *a2);
      v12 = *a2;
      transform = v17;
      CGContextConcatCTM(v12, &transform);
      v4 = *(this + 29);
    }

    v13 = rb_clip_mode(v4);
    if (*(a2 + 148) != v13)
    {
      RB::CGContext::set_aliasing_mode_slow(a2, v13);
    }

    CGContextBeginPath(*a2);
    v14 = RBPathCopyCGPath(*this, *(this + 1));
    if (v14)
    {
      v15 = v14;
      CGContextAddPath(*a2, v14);
      CFRelease(v15);
    }

    v16 = *a2;
    if (*(this + 28))
    {
      CGContextEOClip(v16);
    }

    else
    {
      CGContextClip(v16);
    }

    if (v19 == 1)
    {
      transform = mask;
      CGContextSetCTM();
    }
  }

  else
  {
    RB::Coverage::Path::make_image_mask(this, a2, &mask);
    a = mask.a;
    if (*&mask.a)
    {
      v21.origin.x = *&mask.b;
      v21.origin.y = *(&mask.b + 1);
      v21.size.width = *&mask.c;
      v21.size.height = *(&mask.c + 1);
      CGContextClipToMask(*a2, v21, *&mask.a);
      CFRelease(*&a);
    }

    else
    {
      CGContextClipToRect(*a2, *MEMORY[0x1E695F058]);
    }
  }
}

void RB::Coverage::Path::make_image_mask(RB::Coverage::Path *this@<X0>, RB::CGContext *a2@<X1>, CGImageRef *a3@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  *(&v9 - 8) = CGContextGetClipBoundingBox(*a2);
  *&v10.f64[1] = v9.i64[0];
  v8.f64[1] = v39.size.height;
  *v9.i8 = vcvt_f32_f64(v10);
  *&v10.f64[0] = vcvt_f32_f64(v8);
  *&v32 = v9.i64[0];
  *(&v32 + 1) = *&v10.f64[0];
  if (*(this + 29) >= 2u)
  {
    LODWORD(v8.f64[0]) = *(this + 6);
    *&v39.size.height = vcgt_f32(vneg_f32(0x80000000800000), *&v10.f64[0]);
    *v6.i8 = vsub_f32(*v9.i8, vdup_lane_s32(*&v8.f64[0], 0));
    v11 = vcltzq_s32(*&v39.size.height);
    *&v12 = vbslq_s8(v11, v6, v9).u64[0];
    *v7.i8 = vmla_n_f32(*&v10.f64[0], 0x4000000040000000, *v8.f64);
    *(&v12 + 1) = vbslq_s8(v11, v7, v10).u64[0];
    v32 = v12;
  }

  *v33 = xmmword_195E42760;
  v34 = xmmword_195E42770;
  v35 = 0uLL;
  v38.var1 = v33;
  v38.var0 = this;
  v13 = RB::Coverage::Path::bounds(v38);
  RB::Rect::intersect(&v32, v13, v14);
  v15 = vceqz_f32(*(&v32 + 8));
  if ((vpmax_u32(v15, v15).u32[0] & 0x80000000) != 0 || ((v16 = *(a2 + 10)) == 0 ? (v17 = *(a2 + 2), v18 = *(a2 + 3), v19 = *(a2 + 4)) : (*&v17 = RB::operator*(v16, a2 + 2)), *v33 = v17, v34 = v18, v35 = v19, v20 = RB::AffineTransform::scale(v33), *&v32 = vmul_n_f32(*&v32, v20), *(&v32 + 1) = vmul_n_f32(*(&v32 + 8), v20), v29 = v20, RB::CGContext::begin_bitmap(a2, &v32, 0x100000000, 0, &c, v21), !c))
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    CGContextScaleCTM(c, v29, v29);
    RB::CGContext::CGContext(v33, c, *(a2 + 8), *(a2 + 2));
    v22 = rb_clip_mode(*(this + 29));
    if (v36 != v22)
    {
      RB::CGContext::set_aliasing_mode_slow(v33, v22);
    }

    v23 = *(this + 2);
    if (v23)
    {
      v24 = v23[1];
      *&transform.a = *v23;
      *&transform.c = v24;
      *&transform.tx = v23[2];
      CGContextConcatCTM(v33[0], &transform);
    }

    v25 = RBPathCopyCGPath(*this, *(this + 1));
    if (v25)
    {
      CGContextDrawPathDirect();
      CFRelease(v25);
    }

    v27 = *(this + 6) * v29;
    v28 = *(this + 2);
    if (v28)
    {
      v27 = RB::AffineTransform::scale(v28) * v27;
    }

    *&v26 = v27;
    RB::CGContext::apply_distance_rendering(v33, *(this + 29), v26);
    *&v32 = vmul_n_f32(*&v32, 1.0 / v29);
    *(&v32 + 1) = vmul_n_f32(*(&v32 + 8), 1.0 / v29);
    *a3 = CGBitmapContextCreateImage(c);
    *(a3 + 1) = v32;
    RB::CGContext::~CGContext(v33);
    if (c)
    {
      CFRelease(c);
    }
  }
}

void sub_195DB718C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, CFTypeRef cf, uint64_t a19, uint64_t a20, char a21)
{
  CFRelease(v21);
  RB::CGContext::~CGContext(&a21);
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(a1);
}

void *RB::Coverage::Path::encode(RBPath *this, RB::Encoder *a2)
{
  RB::ProtobufEncoder::encode_varint(a2, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RBPathEncode(*this, a2);
  RB::ProtobufEncoder::end_length_delimited(a2);
  var0 = this[1].var0;
  if (var0)
  {
    v5 = vandq_s8(vandq_s8(vceqq_f64(var0[1], xmmword_195E42770), vceqq_f64(*var0, xmmword_195E42760)), vceqzq_f64(var0[2]));
    if ((vandq_s8(vdupq_laneq_s64(v5, 1), v5).u64[0] & 0x8000000000000000) == 0)
    {
      RB::ProtobufEncoder::encode_varint(a2, 0x12uLL);
      RB::ProtobufEncoder::begin_length_delimited(a2);
      RB::AffineTransform::encode(var0->f64, a2);
      RB::ProtobufEncoder::end_length_delimited(a2);
    }
  }

  if (BYTE4(this[1].var1) == 1)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x18uLL);
    RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  }

  v6 = BYTE5(this[1].var1);
  RB::ProtobufEncoder::encode_varint(a2, 0x20uLL);
  result = RB::ProtobufEncoder::encode_varint(a2, v6);
  var1 = this[1].var1;
  if (*&var1 != 0.0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x2DuLL);

    return RB::ProtobufEncoder::encode_fixed32(a2, var1);
  }

  return result;
}

RB::ColorSpace::ToneMap *RB::ColorSpace::ToneMap::ToneMap(RB::ColorSpace::ToneMap *this, float a2, float a3)
{
  if (a2 >= 1.0)
  {
    v4 = a2;
  }

  else
  {
    v4 = 1.0;
  }

  if (a3 < 1.0)
  {
    a3 = 1.0;
  }

  if (a3 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = a3;
  }

  *this = v4;
  *(this + 1) = v5;
  v6 = log2f(v4) * 0.33333;
  if (v6 > 1.0)
  {
    v6 = 1.0;
  }

  v7 = ((v5 * 0.39) + 0.61) + (v6 * -0.65);
  if (v7 > 1.0)
  {
    v7 = 1.0;
  }

  v8 = (v7 * 1.5385) + -0.53846;
  if (v8 > 1.0)
  {
    v8 = 1.0;
  }

  if (v8 < 0.0)
  {
    v8 = 0.0;
  }

  if (v8 <= 0.0)
  {
    *(this + 5) = 1063675494;
    v9 = 0.9;
LABEL_22:
    v7 = powf(v7 / v5, 1.0 / v9) * v5;
    goto LABEL_24;
  }

  if (v8 < 1.0)
  {
    v9 = (v8 * 0.1) + 0.9;
    *(this + 5) = v9;
    if (v9 == 1.0)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  *(this + 5) = 1065353216;
LABEL_24:
  v10 = (v5 - v7) * 0.35;
  v11 = v5 - v10;
  *(this + 6) = 1065353216;
  v12 = (v5 - v10) / v7;
  v13 = (v4 + 1.0) + (v12 * -2.0);
  v14 = ((v5 * 0.00033333) + v4) - v13;
  if (fabsf(v13) >= (v5 * 0.00033333))
  {
    v15 = v4;
  }

  else
  {
    v13 = ((v12 * -2.0) + 1.0) + v14;
    v15 = v14;
  }

  *(this + 11) = -(v15 - (v12 * v12));
  *(this + 12) = (1.0 - v12) / v13;
  *(this + 7) = (v7 + v5) - (v11 + v11);
  *(this + 8) = (v11 + v11) + (v7 * -2.0);
  *(this + 9) = v7;
  *(this + 10) = v13;
  v16 = v10 / (v15 - v12);
  if ((v15 - v12) <= 0.000001)
  {
    v16 = 1.0;
  }

  *(this + 4) = v16;
  *(this + 2) = v7;
  *(this + 3) = v11 - (v16 * v12);
  return this;
}

uint64_t RB::ColorSpace::transfer_type(RB::ColorSpace *this)
{
  if ((*this >> 4) - 1 >= 8u)
  {
    v1 = 0;
  }

  else
  {
    v1 = 0x202020202040301uLL >> (8 * ((*this >> 4) - 1));
  }

  return v1 & 7;
}

double RB::unapply_pq<float,3>(float32x4_t a1)
{
  v1 = vabsq_f32(a1);
  v1.i32[3] = 0;
  v2 = vmulq_f32(_simd_log2_f4(v1), vdupq_n_s32(0x3C4FCD9Eu));
  v2.i32[3] = 0;
  v3 = _simd_exp2_f4(v2);
  v4 = vdivq_f32(vaddq_f32(v3, vdupq_n_s32(0xBF560008)), vmlaq_f32(vdupq_n_s32(0x4196D014u), vdupq_n_s32(0xC1958000), v3));
  v4.i32[3] = 0;
  v5 = vmulq_f32(_simd_log2_f4(v4), vdupq_n_s32(0x40C8E061u));
  v5.i32[3] = 0;
  v6 = vmulq_f32(_simd_exp2_f4(v5), vdupq_n_s32(0x42450B5Au));
  v7 = vcltzq_f32(a1);
  v7.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v7), vnegq_f32(v6), v6).u64[0];
  return result;
}

double RB::unapply_hlg<float>(float32x4_t a1)
{
  v22 = vmulq_f32(a1, a1);
  v1 = vmlaq_f32(vdupq_n_s32(0xC03628F2), vdupq_n_s32(0x40B2F029u), a1);
  v1.i32[3] = 0;
  v2 = _simd_exp_f4(v1);
  __asm { FMOV            V1.4S, #4.0 }

  v8.i64[0] = 0x3F0000003F000000;
  v8.i64[1] = 0x3F0000003F000000;
  v9 = vcgtq_f32(a1, v8);
  v9.i32[3] = 0;
  v10 = vbslq_s8(vcltzq_s32(v9), v2, vmulq_f32(v22, _Q1));
  v23 = v10;
  v11 = *&v10.i32[1];
  if (*v10.i32 >= *&v10.i32[1])
  {
    v11 = *v10.i32;
  }

  if (v11 < *&v10.i32[2])
  {
    v11 = *&v10.i32[2];
  }

  v12 = v10;
  v12.f32[3] = v11;
  v13 = vmulq_f32(v12, xmmword_195E44AB0);
  v14 = vpaddq_f32(v13, v13);
  v14.f32[0] = vaddv_f32(*v14.f32);
  v21 = v14;
  v15 = fabsf(v14.f32[0]);
  if (v15 < 0.0001)
  {
    v15 = 0.0001;
  }

  v16 = log2f(v15);
  *v17.i32 = exp2f(v16 * 0.2) * 0.083333;
  v18.i64[0] = 0x8000000080000000;
  v18.i64[1] = 0x8000000080000000;
  *&result = vmulq_n_f32(v23, *vbslq_s8(v18, v17, v21).i32 * 4.9261).u64[0];
  return result;
}

double RB::ColorSpace::ToneMapParams<float>::operator()(float *a1, float32x4_t a2)
{
  v2 = a2.f32[2];
  v19 = a2;
  if (a2.f32[0] < a2.f32[1])
  {
    a2.f32[0] = a2.f32[1];
  }

  if (a2.f32[2] < 0.001)
  {
    v2 = 0.001;
  }

  if (a2.f32[0] >= v2)
  {
    v3 = a2.f32[0];
  }

  else
  {
    v3 = v2;
  }

  v18 = v3;
  if (v3 >= a1[6])
  {
    if (v3 <= *a1)
    {
      v5 = a1[11] + (a1[10] * v3);
      v6 = *(a1 + 10);
      if (v5 < 0.0)
      {
        v5 = 0.0;
      }

      v7 = vrecpe_f32(v6);
      v8 = vmul_f32(vrecps_f32(v6, v7), v7);
      v8.f32[0] = vmul_f32(v8, vrecps_f32(v6, v8)).f32[0];
      v9 = sqrtf(v5);
      v4 = a1[9] + ((a1[8] + ((a1[12] + (v8.f32[0] * v9)) * a1[7])) * (a1[12] + (v8.f32[0] * v9)));
    }

    else
    {
      v4 = a1[3] + (a1[4] * v3);
    }
  }

  else
  {
    v4 = a1[2] * v3;
  }

  v17 = a1[1];
  v10 = vrecpe_f32(LODWORD(v17));
  v11 = vmul_f32(vrecps_f32(LODWORD(v17), v10), v10);
  v12 = powf(v4 * vmul_f32(v11, vrecps_f32(LODWORD(v17), v11)).f32[0], a1[5]);
  v13 = vrecpe_f32(LODWORD(v18));
  v14 = vmul_f32(vrecps_f32(LODWORD(v18), v13), v13);
  v15 = (v12 * v17) * vmul_f32(v14, vrecps_f32(LODWORD(v18), v14)).f32[0];
  if (v15 < 0.0)
  {
    v15 = 0.0;
  }

  if (v15 > 1.0)
  {
    v15 = 1.0;
  }

  *&result = vmulq_n_f32(v19, v15).u64[0];
  return result;
}

double RB::apply_pq<float,3>(float32x4_t a1)
{
  v1 = vmulq_f32(vabsq_f32(a1), vdupq_n_s32(0x3CA64C30u));
  v1.i32[3] = 0;
  v2 = vmulq_f32(_simd_log2_f4(v1), vdupq_n_s32(0x3E232010u));
  v2.i32[3] = 0;
  v3 = _simd_exp2_f4(v2);
  __asm { FMOV            V1.4S, #1.0 }

  v9 = vdivq_f32(vmlaq_f32(vdupq_n_s32(0x3F560008u), vdupq_n_s32(0x4196D014u), v3), vmlaq_f32(_Q1, vdupq_n_s32(0x41958000u), v3));
  v9.i32[3] = 0;
  v10 = vmulq_f32(_simd_log2_f4(v9), vdupq_n_s32(0x429DB007u));
  v10.i32[3] = 0;
  v11 = _simd_exp2_f4(v10);
  v12 = vcltzq_f32(a1);
  v12.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v12), vnegq_f32(v11), v11).u64[0];
  return result;
}

double RB::apply_hlg<float>(float32x4_t a1)
{
  v1 = a1.f32[1];
  if (a1.f32[0] >= a1.f32[1])
  {
    v1 = a1.f32[0];
  }

  if (v1 < a1.f32[2])
  {
    v1 = a1.f32[2];
  }

  v2 = a1;
  v2.f32[3] = v1;
  v3 = vmulq_f32(v2, xmmword_195E44AC0);
  v4 = vpaddq_f32(v3, v3);
  v4.f32[0] = vaddv_f32(*v4.f32);
  v24 = v4;
  v5 = fabsf(v4.f32[0]);
  if (v5 < 0.0001)
  {
    v5 = 0.0001;
  }

  v6 = log2f(v5);
  *v7.i32 = exp2f(v6 * -0.16667) * 0.2648;
  v8.i64[0] = 0x8000000080000000;
  v8.i64[1] = 0x8000000080000000;
  v27 = vmulq_n_f32(a1, *vbslq_s8(v8, v7, v24).i32);
  v9 = vabsq_f32(v27);
  __asm { FMOV            V0.4S, #3.0 }

  v15 = vmulq_f32(v9, _Q0);
  v15.i32[3] = 0;
  v23 = v9;
  v25 = vsqrtq_f32(v15);
  __asm { FMOV            V1.4S, #12.0 }

  v17 = vmlaq_f32(vdupq_n_s32(0xBE91C020), _Q1, v9);
  v17.i32[3] = 0;
  v18 = _simd_log_f4(v17);
  v19 = vcgtq_f32(v23, vdupq_n_s32(0x3DAAAAA6u));
  v19.i32[3] = 0;
  v20 = vbslq_s8(vcltzq_s32(v19), vmlaq_f32(vdupq_n_s32(0x3F0F564Fu), vdupq_n_s32(0x3E371FF0u), v18), v25);
  v21 = vcltzq_f32(v27);
  v21.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v21), vnegq_f32(v20), v20).u64[0];
  return result;
}

const char *RB::ColorSpace::name(RB::ColorSpace *this)
{
  v1 = *this;
  if (v1 > 0x32)
  {
    if (*this <= 0x52u)
    {
      switch(v1)
      {
        case '3':
          return "Rec. 2100 HLG";
        case 'A':
          return "CoreMedia709";
        case 'Q':
          return "Rec. 709";
      }
    }

    else if (*this > 0x76u)
    {
      if (v1 == 119)
      {
        return "AdobeRGB";
      }

      if (v1 == 136)
      {
        return "ROMMRGB";
      }
    }

    else
    {
      if (v1 == 83)
      {
        return "Rec. 2020";
      }

      if (v1 == 102)
      {
        return "DCIP3";
      }
    }

    return "Custom";
  }

  if (*this <= 0xFu)
  {
    if (!*this)
    {
      return "Gray Linear";
    }

    if (v1 == 1)
    {
      return "sRGB Linear";
    }

    if (v1 == 2)
    {
      return "DisplayP3 Linear";
    }

    return "Custom";
  }

  if (*this > 0x11u)
  {
    if (v1 == 18)
    {
      return "DisplayP3";
    }

    if (v1 == 35)
    {
      return "Rec. 2100 PQ";
    }

    return "Custom";
  }

  if (v1 == 16)
  {
    return "Gray";
  }

  else
  {
    return "sRGB";
  }
}

void *RB::DisplayList::Layer::prepare_encode(void *result, RB::Encoder *a2, uint64_t a3)
{
  v5 = result;
  for (i = result[2]; i; i = i[1])
  {
    result = (*(*i + 232))(i, a2);
  }

  for (j = v5[4]; j; j = *(j + 1))
  {
    result = RB::DisplayList::LayerFilter::prepare_encode(j, a2);
  }

  if ((a3 & 3) == 2)
  {
    v8 = *(*(a3 & 0xFFFFFFFFFFFFFFFCLL) + 152);

    return v8();
  }

  return result;
}

void RB::DisplayList::Contents::encode(RB::DisplayList::Contents *this, void (****a2)(CFDataRef *__return_ptr))
{
  v4 = RB::Encoder::local_namespace(this);
  RB::ProtobufEncoder::uuid_field(a2, 4, v4);
  RB::ProtobufEncoder::encode_varint(a2, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::DisplayList::Layer::encode(this + 80, a2, 0);
  RB::ProtobufEncoder::end_length_delimited(a2);
  v5 = a2[7];
  if (v5)
  {
    (**v5)(&theData);
    if (theData)
    {
      BytePtr = CFDataGetBytePtr(theData);
      Length = CFDataGetLength(theData);
      if (Length)
      {
        RB::ProtobufEncoder::encode_varint(a2, 0x1AuLL);
        RB::ProtobufEncoder::encode_data(a2, BytePtr, Length);
      }

      if (theData)
      {
        CFRelease(theData);
      }
    }
  }

  if ((*(this + 424) & 1) == 0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x28uLL);
    RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  }
}

void sub_195DB7EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void *RB::DisplayList::LayerFilter::prepare_encode(RB::DisplayList::LayerFilter *this, RB::Encoder *a2)
{
  result = (*(*this + 40))(this);
  if (result == 4)
  {

    return RB::Filter::Custom::prepare_encode(v4, a2);
  }

  else if (result == 5)
  {

    return RB::Filter::GaussianBlur::prepare_encode(v4);
  }

  return result;
}

int *RB::DisplayList::Layer::encode(int *result, RB::Encoder *a2, uint64_t a3)
{
  v3 = a3;
  v5 = result;
  v19 = a3;
  for (i = *(result + 2); i; i = i[1])
  {
    RB::ProtobufEncoder::encode_varint(a2, 0xAuLL);
    RB::ProtobufEncoder::begin_length_delimited(a2);
    (*(*i + 240))(i, a2);
    result = RB::ProtobufEncoder::end_length_delimited(a2);
  }

  for (j = *(v5 + 4); j; j = *(j + 1))
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x12uLL);
    RB::ProtobufEncoder::begin_length_delimited(a2);
    RB::DisplayList::LayerFilter::encode(j, a2);
    result = RB::ProtobufEncoder::end_length_delimited(a2);
  }

  if ((v3 & 3) != 0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x1AuLL);
    RB::ProtobufEncoder::begin_length_delimited(a2);
    RB::DisplayList::Layer::Effect::encode(&v19, a2);
    result = RB::ProtobufEncoder::end_length_delimited(a2);
  }

  v8 = v5[16];
  if (*&v8 != 0.0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x25uLL);
    result = RB::ProtobufEncoder::encode_fixed32(a2, v8);
  }

  v9 = v5[19];
  if (v9)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x28uLL);
    result = RB::ProtobufEncoder::encode_varint(a2, 1uLL);
    v9 = v5[19];
    if ((v9 & 4) == 0)
    {
LABEL_11:
      if ((v9 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_31;
    }
  }

  else if ((v9 & 4) == 0)
  {
    goto LABEL_11;
  }

  RB::ProtobufEncoder::encode_varint(a2, 0x30uLL);
  result = RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  v9 = v5[19];
  if ((v9 & 8) == 0)
  {
LABEL_12:
    if ((v9 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  RB::ProtobufEncoder::encode_varint(a2, 0x38uLL);
  result = RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  v9 = v5[19];
  if ((v9 & 2) == 0)
  {
LABEL_13:
    if ((v9 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  RB::ProtobufEncoder::encode_varint(a2, 0x40uLL);
  result = RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  v9 = v5[19];
  if ((v9 & 0x200) == 0)
  {
LABEL_14:
    if ((v9 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  RB::ProtobufEncoder::encode_varint(a2, 0x48uLL);
  result = RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  v9 = v5[19];
  if ((v9 & 0x400) == 0)
  {
LABEL_15:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_34:
  RB::ProtobufEncoder::encode_varint(a2, 0x50uLL);
  result = RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  if ((v5[19] & 0x20) != 0)
  {
LABEL_16:
    RB::ProtobufEncoder::encode_varint(a2, 0x58uLL);
    result = RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  }

LABEL_17:
  __asm { FCMP            H0, #0 }

  if (!_ZF)
  {
    __asm { FCVT            S8, H0 }

    RB::ProtobufEncoder::encode_varint(a2, 0x65uLL);
    result = RB::ProtobufEncoder::encode_fixed32(a2, _S8);
  }

  if ((v5[19] & 0x40) != 0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x68uLL);
    result = RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  }

  __asm { FCMP            H0, #0 }

  if (!_ZF)
  {
    __asm { FCVT            S8, H0 }

    RB::ProtobufEncoder::encode_varint(a2, 0x75uLL);
    result = RB::ProtobufEncoder::encode_fixed32(a2, _S8);
  }

  if ((v5[19] & 0x80) != 0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x78uLL);
    result = RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  }

  v18 = *(v5 + 5);
  if (v18)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x82uLL);
    RB::ProtobufEncoder::begin_length_delimited(a2);
    RB::AnimationSequencer::encode(v18, a2);

    return RB::ProtobufEncoder::end_length_delimited(a2);
  }

  return result;
}

void *RB::DisplayList::Layer::Effect::encode(void *this, RB::Encoder *a2)
{
  v3 = *this;
  v4 = *this & 3;
  if (v4 == 2)
  {
    v5 = this;
    v6 = (*(*(v3 & 0xFFFFFFFFFFFFFFFCLL) + 144))();
    v7 = *v5 & 0xFFFFFFFFFFFFFFFCLL;
    RB::ProtobufEncoder::encode_varint(a2, (8 * v6) | 2);
    RB::ProtobufEncoder::begin_length_delimited(a2);
    (*(*v7 + 160))(v7, a2);
  }

  else
  {
    if (v4 != 1)
    {
      return this;
    }

    RB::ProtobufEncoder::encode_varint(a2, 0xAuLL);
    RB::ProtobufEncoder::begin_length_delimited(a2);
    RB::ProjectionMatrix::encode((v3 & 0xFFFFFFFFFFFFFFFCLL), a2);
  }

  return RB::ProtobufEncoder::end_length_delimited(a2);
}

unint64_t RB::DisplayList::Layer::Effect::decode(RB::DisplayList::Layer::Effect *this, RB::Decoder *a2)
{
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v5 = result;
    do
    {
      v6 = v5 >> 3;
      if ((v5 >> 3) > 2)
      {
        if (v6 == 3)
        {
          RB::Decoder::emplace<RB::DisplayList::GenericEffect<RB::AlphaGradientEffect>>(a2);
          v8 = v16;
          if ((v5 & 7) == 2)
          {
            RB::ProtobufDecoder::begin_message(a2);
            RB::AlphaGradientEffect::decode((v8 + 16), a2);
LABEL_21:
            RB::ProtobufDecoder::end_message(a2);
LABEL_22:
            v15 = v8 | 2;
LABEL_23:
            *this = v15;
            goto LABEL_24;
          }

LABEL_26:
          *(a2 + 56) = 1;
          *a2 = *(a2 + 1);
          goto LABEL_22;
        }

        if (v6 == 4)
        {
          v9 = *(a2 + 9);
          if (v9)
          {
            v10 = (*(*v9 + 32))(v9);
            if (v10)
            {
              v11 = v10;
              RB::Decoder::emplace<RB::DisplayList::GenericEffect<RB::CustomEffect>>(a2);
              v13 = v12;
              if ((v5 & 7) == 2)
              {
                RB::ProtobufDecoder::begin_message(a2);
                RB::CustomEffect::decode(v13 + 1, a2);
                RB::ProtobufDecoder::end_message(a2);
              }

              else
              {
                *(a2 + 56) = 1;
                *a2 = *(a2 + 1);
              }

              *this = v13 | 2;
              v13->n128_u64[1] = *(v11 + 312);
              *(v11 + 312) = v13;
              goto LABEL_24;
            }
          }
        }
      }

      else
      {
        if (v6 == 1)
        {
          v14 = RB::Decoder::emplace<RB::ProjectionMatrix>(a2);
          if ((v5 & 7) == 2)
          {
            RB::ProtobufDecoder::begin_message(a2);
            RB::ProjectionMatrix::decode(v14, a2);
            RB::ProtobufDecoder::end_message(a2);
          }

          else
          {
            *(a2 + 56) = 1;
            *a2 = *(a2 + 1);
          }

          v15 = v14 | 1;
          goto LABEL_23;
        }

        if (v6 == 2)
        {
          RB::Decoder::emplace<RB::DisplayList::GenericEffect<RB::AlphaThresholdEffect>>(a2);
          v8 = v7;
          if ((v5 & 7) == 2)
          {
            RB::ProtobufDecoder::begin_message(a2);
            RB::AlphaThresholdEffect::decode((v8 + 16), a2);
            goto LABEL_21;
          }

          goto LABEL_26;
        }
      }

      RB::ProtobufDecoder::skip_field(a2, v5);
LABEL_24:
      result = RB::ProtobufDecoder::next_field(a2);
      v5 = result;
    }

    while (result);
  }

  return result;
}

unint64_t RB::Decoder::emplace<RB::ProjectionMatrix>(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = (v1[2] + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v2 + 36 > v1[3])
  {
    v2 = RB::Heap::alloc_slow(v1, 0x24uLL, 3);
  }

  else
  {
    v1[2] = v2 + 36;
  }

  *(v2 + 32) = 1065353216;
  *v2 = xmmword_195E428C0;
  *(v2 + 16) = xmmword_195E428C0;
  return v2;
}

double RB::Decoder::emplace<RB::DisplayList::GenericEffect<RB::AlphaThresholdEffect>>(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = (v1[2] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v2 + 48 > v1[3])
  {
    v2 = RB::Heap::alloc_slow(v1, 0x30uLL, 7);
  }

  else
  {
    v1[2] = v2 + 48;
  }

  *v2 = &unk_1F0A3A208;
  result = 1.40444776e306;
  *(v2 + 16) = 0x7F80000000000000;
  *(v2 + 24) = 0x3C00000000000000;
  *(v2 + 32) = 0;
  *(v2 + 36) = 0;
  *(v2 + 38) = 3;
  *(v2 + 40) = 1;
  return result;
}

double RB::Decoder::emplace<RB::DisplayList::GenericEffect<RB::AlphaGradientEffect>>(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = (v1[2] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v2 + 104 > v1[3])
  {
    v2 = RB::Heap::alloc_slow(v1, 0x68uLL, 7);
  }

  else
  {
    v1[2] = v2 + 104;
  }

  *v2 = &unk_1F0A3A2C0;
  *(v2 + 16) = 0x3F80000000000000;
  result = 0.0;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 67) = 0u;
  *(v2 + 83) = 1;
  *(v2 + 88) = 3;
  *(v2 + 96) = 1;
  return result;
}

double RB::Decoder::emplace<RB::DisplayList::GenericEffect<RB::CustomEffect>>(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = (v1[2] + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v2 + 304 > v1[3])
  {
    v2 = RB::Heap::alloc_slow(v1, 0x130uLL, 15);
  }

  else
  {
    v1[2] = v2 + 304;
  }

  *v2 = &unk_1F0A3A378;
  *(v2 + 16) = 0;
  *(v2 + 152) = 0;
  *(v2 + 160) = 0;
  *(v2 + 168) = 4;
  result = 0.0;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 208) = xmmword_195E42760;
  *(v2 + 224) = xmmword_195E42770;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0;
  *(v2 + 288) = 1;
  return result;
}

void *RB::DisplayList::Item::prepare_encode(void *this, RB::Encoder *a2)
{
  v3 = this;
  v4 = this[3];
  if (v4)
  {
    do
    {
      v5 = v4[1] & 0xFFFFFFFFFFFFFFFELL;
      if (v5)
      {
        (*(*v5 + 112))(v5, a2);
      }

      v4 = *v4;
    }

    while (v4);
    v9 = *(v3 + 24);
    v10 = v9;
    this = RB::Encoder::prepare_shared_f<void RB::Encoder::prepare_shared<RB::DisplayList::ClipNode>(RB::Encoder::SharedType,RB::DisplayList::ClipNode const&)::{lambda(RB::DisplayList::ClipNode&)#1},void RB::Encoder::prepare_shared<RB::DisplayList::ClipNode>(RB::Encoder::SharedType,RB::DisplayList::ClipNode const&)::{lambda(RB::DisplayList::ClipNode&)#2}>(a2, 4, v9, &v10, &v9);
  }

  v6 = *(v3 + 16);
  if (v6)
  {
    do
    {
      (*(*v6 + 96))(v6, a2);
      v6 = v6[4];
    }

    while (v6);
    v7 = *(v3 + 16);
    v10 = 0;
    this = RB::UntypedTable::lookup((a2 + 80), v7, &v10);
    if (v10 != v7)
    {
      v8 = *(a2 + 9);
      *(a2 + 9) = v8 + 1;
      this = RB::UntypedTable::insert((a2 + 80), v7, v8);
      if ((*(a2 + 148) & 1) == 0)
      {
        RB::ProtobufEncoder::encode_varint(a2, 0x7AuLL);
        RB::ProtobufEncoder::begin_length_delimited(a2);
        if (v8)
        {
          RB::ProtobufEncoder::encode_varint(a2, 8uLL);
          RB::ProtobufEncoder::encode_varint(a2, v8);
        }

        RB::ProtobufEncoder::encode_varint(a2, 0x2AuLL);
        RB::ProtobufEncoder::begin_length_delimited(a2);
        for (; v7; v7 = v7[4])
        {
          RB::ProtobufEncoder::encode_varint(a2, 0xAuLL);
          RB::ProtobufEncoder::begin_length_delimited(a2);
          (*(*v7 + 104))(v7, a2);
          RB::ProtobufEncoder::end_length_delimited(a2);
        }

        RB::ProtobufEncoder::end_length_delimited(a2);
        return RB::ProtobufEncoder::end_length_delimited(a2);
      }
    }
  }

  return this;
}

unint64_t RB::DisplayList::ClipNode::prepare_encode(unint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    do
    {
      result = v3[1] & 0xFFFFFFFFFFFFFFFELL;
      if (result)
      {
        result = (*(*result + 112))(result, a2);
      }

      v3 = *v3;
    }

    while (v3);
  }

  return result;
}

void *RB::DisplayList::Item::encode(RB::DisplayList::Item *this, RB::Encoder *a2)
{
  _H0 = *(this + 22);
  if (_H0 != COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
  {
    __asm { FCVT            S8, H0 }

    RB::ProtobufEncoder::encode_varint(a2, 0x25uLL);
    RB::ProtobufEncoder::encode_fixed32(a2, _S8);
  }

  result = rb_blend_mode(*(this + 23) & 0x3F);
  if (result)
  {
    v11 = result;
    RB::ProtobufEncoder::encode_varint(a2, 0x28uLL);
    result = RB::ProtobufEncoder::encode_varint(a2, v11);
  }

  v12 = *(this + 3);
  if (v12)
  {
    result = RB::Encoder::shared_field_f(a2, 6, v12);
  }

  if (*(this + 4) || *(this + 10))
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x3AuLL);
    RB::ProtobufEncoder::begin_length_delimited(a2);
    RB::DisplayList::encode_metadata(a2, *(this + 4), *(this + 10), 0);
    result = RB::ProtobufEncoder::end_length_delimited(a2);
  }

  v13 = *(this + 2);
  if (v13)
  {

    return RB::Encoder::shared_field_f(a2, 8, v13);
  }

  return result;
}

uint64_t RB::DisplayList::decode_style_list(RB::DisplayList *this, RB::Decoder *a2)
{
  result = *(this + 9);
  if (result)
  {
    result = (*(*result + 32))(result, a2);
    if (result)
    {
      v4 = result;
      v10 = 0;
      field = RB::ProtobufDecoder::next_field(this);
      if (field)
      {
        v6 = field;
        v7 = &v10;
        do
        {
          if ((v6 & 0x7FFFFFFF8) == 8)
          {
            if ((v6 & 7) == 2)
            {
              RB::ProtobufDecoder::begin_message(this);
              v9 = RB::DisplayList::Style::decode(this, v8);
              if (v9)
              {
                *(v9 + 8) = *(v4 + 312);
                *(v4 + 312) = v9;
                *v7 = v9;
                v7 = (v9 + 32);
              }

              RB::ProtobufDecoder::end_message(this);
            }

            else
            {
              *(this + 56) = 1;
              *this = *(this + 1);
            }
          }

          else
          {
            RB::ProtobufDecoder::skip_field(this, v6);
          }

          v6 = RB::ProtobufDecoder::next_field(this);
        }

        while (v6);
      }

      else
      {
        v7 = &v10;
      }

      *v7 = 0;
      return v10;
    }
  }

  return result;
}

void *RB::DisplayList::LayerItem::prepare_encode(RB::DisplayList::LayerItem *this, RB::Encoder *a2)
{
  RB::DisplayList::Item::prepare_encode(this, a2);
  result = *(this + 6);
  if (result)
  {
    v5 = *(this + 7);

    return RB::DisplayList::Layer::prepare_encode(result, a2, v5);
  }

  return result;
}

void *RB::DisplayList::LayerItem::encode(RB::DisplayList::LayerItem *this, RB::Encoder *a2)
{
  RB::ProtobufEncoder::encode_varint(a2, 0x12uLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::ProtobufEncoder::encode_varint(a2, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::DisplayList::Layer::encode(*(this + 6), a2, *(this + 7));
  RB::ProtobufEncoder::end_length_delimited(a2);
  RB::ProtobufEncoder::end_length_delimited(a2);

  return RB::DisplayList::Item::encode(this, a2);
}

uint64_t RB::DisplayList::LayerItem::decode(RB::DisplayList::LayerItem *this, size_t **a2)
{
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v5 = result;
    do
    {
      if ((v5 & 0x7FFFFFFF8) == 8)
      {
        v6 = *(a2 + 52) + 1;
        *(a2 + 52) = v6;
        v12 = 0;
        v13 = v6;
        v7 = RB::Heap::emplace<RB::DisplayList::Layer,unsigned int,int>(a2[8], &v13, &v12);
        v9 = v8;
        v10 = *(this + 6);
        *(this + 6) = v9;
        if (v10)
        {
          (**v10)(v10, v7);
        }

        if ((v5 & 7) == 2)
        {
          RB::ProtobufDecoder::begin_message(a2);
          RB::DisplayList::Layer::decode(*(this + 6), a2, (this + 56));
          RB::ProtobufDecoder::end_message(a2);
        }

        else
        {
          *(a2 + 56) = 1;
          *a2 = a2[1];
        }
      }

      else
      {
        RB::ProtobufDecoder::skip_field(a2, v5);
      }

      result = RB::ProtobufDecoder::next_field(a2);
      v5 = result;
    }

    while (result);
  }

  v11 = *(this + 6);
  if (v11)
  {
    if (*(v11 + 76))
    {
      *(this + 23) |= 0x800u;
    }
  }

  else
  {
    *(a2 + 56) = 1;
    *a2 = a2[1];
  }

  return result;
}

void *RB::DisplayList::DetachedLayerItem::prepare_encode(RB::DisplayList::DetachedLayerItem *this, RB::Encoder *a2)
{
  result = RB::DisplayList::Item::prepare_encode(this, a2);
  v5 = *(this + 6);
  if (v5)
  {
    v6 = *(this + 6);
    v7 = v5;
    result = RB::Encoder::prepare_shared_f<void RB::Encoder::prepare_shared<RB::DisplayList::Layer>(RB::Encoder::SharedType,RB::DisplayList::Layer const&)::{lambda(RB::DisplayList::Layer&)#1},void RB::Encoder::prepare_shared<RB::DisplayList::Layer>(RB::Encoder::SharedType,RB::DisplayList::Layer const&)::{lambda(RB::DisplayList::Layer&)#2}>(a2, 7, v5, &v7, &v6);
  }

  if ((*(this + 9) & 3) == 2)
  {
    return (*(*(*(this + 9) & 0xFFFFFFFFFFFFFFFCLL) + 152))(*(this + 9) & 0xFFFFFFFFFFFFFFFCLL, a2);
  }

  return result;
}

void *RB::DisplayList::DetachedLayerItem::encode(RB::DisplayList::DetachedLayerItem *this, RB::Encoder *a2)
{
  RB::ProtobufEncoder::encode_varint(a2, 0x4AuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  v4 = *(this + 6);
  if (v4)
  {
    RB::Encoder::shared_field_f(a2, 1, v4);
  }

  v5 = *(this + 8);
  v6 = vandq_s8(vandq_s8(vceqq_f64(v5[1], xmmword_195E42770), vceqq_f64(*v5, xmmword_195E42760)), vceqzq_f64(v5[2]));
  if ((vandq_s8(vdupq_laneq_s64(v6, 1), v6).u64[0] & 0x8000000000000000) == 0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x12uLL);
    RB::ProtobufEncoder::begin_length_delimited(a2);
    RB::AffineTransform::encode(v5->f64, a2);
    RB::ProtobufEncoder::end_length_delimited(a2);
  }

  if ((*(this + 72) & 3) != 0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x1AuLL);
    RB::ProtobufEncoder::begin_length_delimited(a2);
    RB::DisplayList::Layer::Effect::encode(this + 9, a2);
    RB::ProtobufEncoder::end_length_delimited(a2);
  }

  v7 = *(this + 20);
  if (v7)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x20uLL);
    RB::ProtobufEncoder::encode_varint(a2, v7);
  }

  RB::ProtobufEncoder::end_length_delimited(a2);

  return RB::DisplayList::Item::encode(this, a2);
}

unint64_t RB::DisplayList::DetachedLayerItem::decode(RB::DisplayList::DetachedLayerItem *this, size_t **a2)
{
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v5 = result;
    do
    {
      v6 = v5 >> 3;
      if ((v5 >> 3) > 2)
      {
        if (v6 == 3)
        {
          if ((v5 & 7) == 2)
          {
            RB::ProtobufDecoder::begin_message(a2);
            RB::DisplayList::Layer::Effect::decode((this + 72), a2);
            RB::ProtobufDecoder::end_message(a2);
            goto LABEL_37;
          }

          goto LABEL_24;
        }

        if (v6 != 4)
        {
          goto LABEL_10;
        }

        *(this + 20) = RB::ProtobufDecoder::uint_field(a2, v5);
      }

      else
      {
        if (v6 == 1)
        {
          v8 = a2[9];
          if (!v8)
          {
            goto LABEL_37;
          }

          v9 = (*(*v8 + 32))(v8);
          if (!v9)
          {
            goto LABEL_37;
          }

          if ((v5 & 7) != 2)
          {
            goto LABEL_24;
          }

          v10 = v9;
          RB::ProtobufDecoder::begin_message(a2);
          field = RB::ProtobufDecoder::next_field(a2);
          if (field)
          {
            v12 = field;
            v13 = 0;
            v14 = 0;
            do
            {
              if ((v12 >> 3) == 2)
              {
                v22 = *a2;
                RB::ProtobufDecoder::skip_field(a2, v12);
                v14 = v12;
              }

              else if ((v12 >> 3) == 1)
              {
                v13 = RB::ProtobufDecoder::uint_field(a2, v12);
              }

              else
              {
                RB::ProtobufDecoder::skip_field(a2, v12);
              }

              v12 = RB::ProtobufDecoder::next_field(a2);
            }

            while (v12);
            if (v13 >> 61)
            {
              RB::ProtobufDecoder::end_message(a2);
LABEL_24:
              *(a2 + 56) = 1;
              *a2 = a2[1];
              goto LABEL_37;
            }
          }

          else
          {
            v13 = 0;
            v14 = 0;
          }

          v23[0] = 0;
          v15 = RB::UntypedTable::lookup((a2 + 10), (v13 | 0xE000000000000000), v23);
          if ((v13 | 0xE000000000000000) != v23[0])
          {
            v16 = v22;
            if (v14 || (RB::Decoder::saved_shared_field(a2, 7, v13, v23, v22), v16 = *v23, LOBYTE(v14) = v24, v24))
            {
              v17 = *a2;
              v22 = v16;
              *a2 = v16;
              if ((v14 & 7) == 2)
              {
                v21 = v17;
                RB::ProtobufDecoder::begin_message(a2);
                v18 = *(a2 + 52) + 1;
                *(a2 + 52) = v18;
                LODWORD(v23[0]) = v18;
                v25 = 0;
                RB::Heap::emplace<RB::DisplayList::Layer,unsigned int,int>(a2[8], v23, &v25);
                v15 = v19;
                RB::DisplayList::Layer::decode(v19, a2, 0);
                *(v15 + 1) = *(v10 + 312);
                *(v10 + 312) = v15;
                RB::ProtobufDecoder::end_message(a2);
                v17 = v21;
              }

              else
              {
                *(a2 + 56) = 1;
              }

              *a2 = v17;
            }

            else
            {
              v22 = *v23;
            }

            RB::UntypedTable::insert((a2 + 10), (v13 | 0xE000000000000000), v15);
          }

          RB::ProtobufDecoder::end_message(a2);
          if (v15)
          {
            *(this + 6) = v15;
            goto LABEL_37;
          }

          goto LABEL_24;
        }

        if (v6 != 2)
        {
LABEL_10:
          RB::ProtobufDecoder::skip_field(a2, v5);
          goto LABEL_37;
        }

        RB::Decoder::affine_transform_field(a2, v5);
        *(this + 8) = v7;
      }

LABEL_37:
      result = RB::ProtobufDecoder::next_field(a2);
      v5 = result;
    }

    while (result);
  }

  v20 = *(this + 6);
  if (v20)
  {
    if (*(v20 + 76))
    {
      *(this + 23) |= 0x800u;
    }
  }

  else
  {
    *(a2 + 56) = 1;
    *a2 = a2[1];
  }

  return result;
}

void *RB::DisplayList::BackdropColorMatrixItem::encode(RB::DisplayList::BackdropColorMatrixItem *this, RB::Encoder *a2)
{
  RB::ProtobufEncoder::encode_varint(a2, 0x1AuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  v4 = *(this + 6);
  if (v4)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0xAuLL);
    RB::ProtobufEncoder::begin_length_delimited(a2);
    RB::Filter::ColorMatrix::encode(v4, a2);
    RB::ProtobufEncoder::end_length_delimited(a2);
  }

  RB::ProtobufEncoder::end_length_delimited(a2);

  return RB::DisplayList::Item::encode(this, a2);
}

uint64_t RB::DisplayList::BackdropColorMatrixItem::decode(RB::DisplayList::BackdropColorMatrixItem *this, size_t **a2)
{
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v5 = result;
    do
    {
      if ((v5 & 0x7FFFFFFF8) == 8)
      {
        v6 = RB::Heap::emplace<RB::Filter::ColorMatrix>(a2[8]);
        if ((v5 & 7) == 2)
        {
          RB::ProtobufDecoder::begin_message(a2);
          RB::Filter::ColorMatrix::decode(v6, a2);
          RB::ProtobufDecoder::end_message(a2);
        }

        else
        {
          *(a2 + 56) = 1;
          *a2 = a2[1];
        }

        *(this + 6) = v6;
      }

      else
      {
        RB::ProtobufDecoder::skip_field(a2, v5);
      }

      result = RB::ProtobufDecoder::next_field(a2);
      v5 = result;
    }

    while (result);
  }

  if (!*(this + 6))
  {
    *(a2 + 56) = 1;
    *a2 = a2[1];
  }

  return result;
}

void *RB::DisplayList::LayerFilter::encode(RB::DisplayList::LayerFilter *this, RB::Encoder *a2)
{
  result = (*(*this + 40))(this);
  v5 = v4;
  if (result > 3)
  {
    switch(result)
    {
      case 4:
        RB::ProtobufEncoder::encode_varint(a2, 0x22uLL);
        RB::ProtobufEncoder::begin_length_delimited(a2);
        RB::Filter::Custom::encode(v5, a2);
        break;
      case 5:
        RB::ProtobufEncoder::encode_varint(a2, 0x1AuLL);
        RB::ProtobufEncoder::begin_length_delimited(a2);
        RB::Filter::GaussianBlur::encode(v5, a2);
        break;
      case 6:
        RB::ProtobufEncoder::encode_varint(a2, 0x32uLL);
        RB::ProtobufEncoder::begin_length_delimited(a2);
        RB::Filter::Distance::encode(v5, a2);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(result)
    {
      case 1:
        RB::ProtobufEncoder::encode_varint(a2, 0xAuLL);
        RB::ProtobufEncoder::begin_length_delimited(a2);
        RB::Filter::ColorMatrix::encode(v5, a2);
        break;
      case 2:
        RB::ProtobufEncoder::encode_varint(a2, 0x12uLL);
        RB::ProtobufEncoder::begin_length_delimited(a2);
        RB::Filter::LuminanceCurve::encode(v5, a2);
        break;
      case 3:
        RB::ProtobufEncoder::encode_varint(a2, 0x2AuLL);
        RB::ProtobufEncoder::begin_length_delimited(a2);
        RB::Filter::RGBACurves::encode(v5, a2);
        break;
      default:
        return result;
    }
  }

  return RB::ProtobufEncoder::end_length_delimited(a2);
}

unint64_t RB::DisplayList::LayerFilter::decode(size_t **this, RB::Decoder *a2)
{
  field = RB::ProtobufDecoder::next_field(this);
  if (field)
  {
    v4 = field;
    v5 = 0;
    while (1)
    {
      v6 = v4 >> 3;
      if ((v4 >> 3) > 3)
      {
        switch(v6)
        {
          case 4:
            RB::Decoder::emplace<RB::DisplayList::GenericFilter<RB::Filter::Custom>>(this);
            v5 = v10;
            if ((v4 & 7) != 2)
            {
              goto LABEL_34;
            }

            RB::ProtobufDecoder::begin_message(this);
            RB::Filter::Custom::decode((v5 + 32), this);
LABEL_31:
            RB::ProtobufDecoder::end_message(this);
            goto LABEL_32;
          case 5:
            v12 = this[8];
            v5 = (v12[2] + 15) & 0xFFFFFFFFFFFFFFF0;
            if (v5 + 112 > v12[3])
            {
              v5 = RB::Heap::alloc_slow(v12, 0x70uLL, 15);
            }

            else
            {
              v12[2] = v5 + 112;
            }

            *(v5 + 16) = 0;
            *(v5 + 24) = 0;
            *v5 = &unk_1F0A37108;
            *(v5 + 32) = 0;
            *(v5 + 48) = 0u;
            *(v5 + 64) = 0u;
            *(v5 + 80) = 0u;
            *(v5 + 96) = 0u;
            if ((v4 & 7) != 2)
            {
LABEL_34:
              *(this + 56) = 1;
              *this = this[1];
              goto LABEL_32;
            }

            RB::ProtobufDecoder::begin_message(this);
            RB::Filter::RGBACurves::decode((v5 + 32), this);
            goto LABEL_31;
          case 6:
            v8 = this[8];
            v5 = (v8[2] + 7) & 0xFFFFFFFFFFFFFFF8;
            if (v5 + 48 > v8[3])
            {
              v5 = RB::Heap::alloc_slow(v8, 0x30uLL, 7);
            }

            else
            {
              v8[2] = v5 + 48;
            }

            *(v5 + 16) = 0;
            *(v5 + 24) = 0;
            *v5 = &unk_1F0A3E740;
            *(v5 + 32) = 0;
            *(v5 + 40) = 1065353216;
            if ((v4 & 7) != 2)
            {
              goto LABEL_34;
            }

            RB::ProtobufDecoder::begin_message(this);
            RB::Filter::Distance::decode((v5 + 32), this);
            goto LABEL_31;
        }
      }

      else
      {
        switch(v6)
        {
          case 1:
            v9 = this[8];
            v5 = (v9[2] + 7) & 0xFFFFFFFFFFFFFFF8;
            if (v5 + 48 > v9[3])
            {
              v5 = RB::Heap::alloc_slow(v9, 0x30uLL, 7);
            }

            else
            {
              v9[2] = v5 + 48;
            }

            *(v5 + 16) = 0;
            *(v5 + 24) = 0;
            *v5 = &unk_1F0A3A178;
            *(v5 + 32) = 0;
            *(v5 + 40) = 0;
            if ((v4 & 7) != 2)
            {
              goto LABEL_34;
            }

            RB::ProtobufDecoder::begin_message(this);
            RB::Filter::ColorMatrix::decode((v5 + 32), this);
            goto LABEL_31;
          case 2:
            RB::Decoder::emplace<RB::DisplayList::GenericFilter<RB::Filter::LuminanceCurve>>(this);
            v5 = v11;
            if ((v4 & 7) != 2)
            {
              goto LABEL_34;
            }

            RB::ProtobufDecoder::begin_message(this);
            RB::Filter::LuminanceCurve::decode((v5 + 32), this);
            goto LABEL_31;
          case 3:
            v7 = this[8];
            v5 = (v7[2] + 7) & 0xFFFFFFFFFFFFFFF8;
            if (v5 + 72 > v7[3])
            {
              v5 = RB::Heap::alloc_slow(v7, 0x48uLL, 7);
            }

            else
            {
              v7[2] = v5 + 72;
            }

            *(v5 + 16) = 0;
            *(v5 + 24) = 0;
            *v5 = &unk_1F0A3A0E8;
            *(v5 + 32) = 0;
            *(v5 + 64) = 0;
            *(v5 + 40) = 0;
            *(v5 + 48) = 0;
            *(v5 + 56) = 0;
            if ((v4 & 7) != 2)
            {
              goto LABEL_34;
            }

            RB::ProtobufDecoder::begin_message(this);
            RB::Filter::GaussianBlur::decode((v5 + 32), this);
            goto LABEL_31;
        }
      }

      RB::ProtobufDecoder::skip_field(this, v4);
LABEL_32:
      v4 = RB::ProtobufDecoder::next_field(this);
      if (!v4)
      {
        return v5;
      }
    }
  }

  return 0;
}

__int16 RB::Decoder::emplace<RB::DisplayList::GenericFilter<RB::Filter::LuminanceCurve>>@<H0>(uint64_t a1@<X0>)
{
  v1 = *(a1 + 64);
  v2 = (v1[2] + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v2 + 80 > v1[3])
  {
    v2 = RB::Heap::alloc_slow(v1, 0x50uLL, 15);
  }

  else
  {
    v1[2] = v2 + 80;
  }

  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F0A3A058;
  *(v2 + 32) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 62) = 0;
  result = COERCE_UNSIGNED_INT(1.0);
  *(v2 + 70) = COERCE_UNSIGNED_INT(1.0);
  *(v2 + 72) = 0;
  *(v2 + 76) = 0;
  return result;
}

double RB::Decoder::emplace<RB::DisplayList::GenericFilter<RB::Filter::Custom>>(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = (v1[2] + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v2 + 272 > v1[3])
  {
    v2 = RB::Heap::alloc_slow(v1, 0x110uLL, 15);
  }

  else
  {
    v1[2] = v2 + 272;
  }

  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F0A39FC8;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 176) = 0;
  *(v2 + 184) = 0;
  *(v2 + 192) = 4;
  *(v2 + 200) = 0;
  *(v2 + 208) = xmmword_195E42760;
  *(v2 + 224) = xmmword_195E42770;
  result = 0.0;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0u;
  return result;
}

void *RB::DisplayList::Clip::encode(void *this, RB::Encoder *a2)
{
  v3 = this;
  if (*(this + 44) == 1)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x20uLL);
    this = RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  }

  if (*(v3 + 32) || *(v3 + 40))
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x2AuLL);
    RB::ProtobufEncoder::begin_length_delimited(a2);
    RB::DisplayList::encode_metadata(a2, *(v3 + 32), *(v3 + 40), 0);

    return RB::ProtobufEncoder::end_length_delimited(a2);
  }

  return this;
}

float32x2_t *RB::DisplayList::Clip::decode(RB::Heap **this, RB::Decoder *a2)
{
  v3 = 0;
  v4 = 0;
  v32 = *MEMORY[0x1E69E9840];
  memset(v30, 0, sizeof(v30));
  while (1)
  {
    v5 = v3;
    field = RB::ProtobufDecoder::next_field(this);
    v7 = field;
    if (!field)
    {
      break;
    }

    v8 = field >> 3;
    if ((field >> 3) <= 2)
    {
      if (v8 == 1)
      {
        v12 = RB::AffineTransform::identity(field);
        v31.type = 0;
        if ((v7 & 7) == 2)
        {
          RB::ProtobufDecoder::begin_message(this);
          v19 = RB::ProtobufDecoder::next_field(this);
          for (i = 1.0; v19; v19 = RB::ProtobufDecoder::next_field(this))
          {
            v21 = v19 >> 3;
            if ((v19 >> 3) == 3)
            {
              i = RB::ProtobufDecoder::float_field(this, v19);
            }

            else if (v21 == 2)
            {
              RB::Decoder::affine_transform_field(this, v19);
              v12 = v22;
            }

            else if (v21 == 1)
            {
              if ((v19 & 7) == 2)
              {
                RB::ProtobufDecoder::begin_message(this);
                RBShapeData::decode(&v31, this);
                RB::ProtobufDecoder::end_message(this);
              }

              else
              {
                *(this + 56) = 1;
                *this = this[1];
              }
            }

            else
            {
              RB::ProtobufDecoder::skip_field(this, v19);
            }
          }

          RB::ProtobufDecoder::end_message(this);
        }

        else
        {
          *(this + 56) = 1;
          *this = this[1];
          i = 1.0;
        }

        v24 = this[8];
        v25 = i;
        v26 = 0;
        v27 = v12;
        v28 = 0;
        v29 = 0;
        RBShapeData::apply<RB::DisplayList::ClipFactory>(&v31, &v24, v13, v14, v15, v16, v17, v18);
        v3 = v29;
        if (v5)
        {
          (**v5)(v5);
        }

        RBShapeData::~RBShapeData(&v31);
      }

      else if (v8 == 2)
      {
        *&v31.type = 0;
        v24 = 0;
        v3 = RB::Heap::emplace<RB::DisplayList::LayerClip,decltype(nullptr),RB::DisplayList::Layer::Effect>(this[8], &v31, &v24);
        if ((v7 & 7) != 2)
        {
          goto LABEL_40;
        }

        RB::ProtobufDecoder::begin_message(this);
        RB::DisplayList::LayerClip::decode(v3, this);
        RB::ProtobufDecoder::end_message(this);
LABEL_18:
        if (v5)
        {
          goto LABEL_19;
        }
      }

      else
      {
LABEL_34:
        RB::ProtobufDecoder::skip_field(this, field);
      }
    }

    else
    {
      switch(v8)
      {
        case 3:
          *&v31.type = 0;
          v3 = RB::Heap::emplace<RB::DisplayList::ItemClip,decltype(nullptr)>(this[8]);
          if ((v7 & 7) == 2)
          {
            RB::ProtobufDecoder::begin_message(this);
            RB::DisplayList::ItemClip::decode(v3, this);
            RB::ProtobufDecoder::end_message(this);
            goto LABEL_18;
          }

LABEL_40:
          *(this + 56) = 1;
          *this = this[1];
          if (v5)
          {
LABEL_19:
            (**v5)(v5);
          }

          break;
        case 4:
          v4 = RB::ProtobufDecoder::BOOL_field(this, field);
          break;
        case 5:
          v9 = this[9];
          if (v9 && (v10 = (*(*v9 + 32))(v9)) != 0)
          {
            if ((v7 & 7) == 2)
            {
              RB::ProtobufDecoder::begin_message(this);
              RB::DisplayList::decode_metadata(this, v10, &v30[4], v30, v11);
              RB::ProtobufDecoder::end_message(this);
            }

            else
            {
              *(this + 56) = 1;
              *this = this[1];
            }

            v3 = v5;
          }

          else
          {
            RB::ProtobufDecoder::skip_field(this, v7);
            v3 = v5;
          }

          break;
        default:
          goto LABEL_34;
      }
    }
  }

  if (v3)
  {
    if (v4)
    {
      v3[5].i8[4] = 1;
      v3[2] = 0x100000001000000;
      v3[3] = vneg_f32(0x80000000800000);
      v3[4] = *&v30[4];
      v3[5].i32[0] = *v30;
    }
  }

  else
  {
    *(this + 56) = 1;
    *this = this[1];
  }

  return v3;
}

void sub_195DB9E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, RBShapeData *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  RBShapeData::~RBShapeData(&a17);
  if (v17)
  {
    (**v17)(v17);
  }

  _Unwind_Resume(a1);
}

void *RB::DisplayList::LayerClip::prepare_encode(RB::DisplayList::LayerClip *this, RB::Encoder *a2)
{
  result = *(this + 6);
  if (result)
  {
    return RB::DisplayList::Layer::prepare_encode(result, a2, *(this + 7));
  }

  return result;
}

void *RB::DisplayList::LayerClip::encode(RB::DisplayList::LayerClip *this, RB::Encoder *a2)
{
  RB::ProtobufEncoder::encode_varint(a2, 0x12uLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  if (*(this + 6))
  {
    RB::ProtobufEncoder::encode_varint(a2, 0xAuLL);
    RB::ProtobufEncoder::begin_length_delimited(a2);
    RB::DisplayList::Layer::encode(*(this + 6), a2, *(this + 7));
    RB::ProtobufEncoder::end_length_delimited(a2);
  }

  v4 = *(this + 16);
  if (*&v4 != 1.0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x15uLL);
    RB::ProtobufEncoder::encode_fixed32(a2, v4);
  }

  RB::ProtobufEncoder::end_length_delimited(a2);

  return RB::DisplayList::Clip::encode(this, a2);
}

void RB::DisplayList::LayerClip::decode(RB::DisplayList::LayerClip *this, size_t **a2)
{
  field = RB::ProtobufDecoder::next_field(a2);
  if (field)
  {
    v5 = field;
    do
    {
      if ((v5 >> 3) == 2)
      {
        *(this + 16) = RB::ProtobufDecoder::float_field(a2, v5);
      }

      else if ((v5 >> 3) == 1)
      {
        v6 = *(a2 + 52) + 1;
        *(a2 + 52) = v6;
        v13 = 0;
        v14 = v6;
        v7 = RB::Heap::emplace<RB::DisplayList::Layer,unsigned int,int>(a2[8], &v14, &v13);
        v9 = v8;
        v10 = *(this + 6);
        *(this + 6) = v9;
        if (v10)
        {
          (**v10)(v10, v7);
        }

        if ((v5 & 7) == 2)
        {
          RB::ProtobufDecoder::begin_message(a2);
          RB::DisplayList::Layer::decode(*(this + 6), a2, (this + 56));
          RB::ProtobufDecoder::end_message(a2);
        }

        else
        {
          *(a2 + 56) = 1;
          *a2 = a2[1];
        }
      }

      else
      {
        RB::ProtobufDecoder::skip_field(a2, v5);
      }

      v5 = RB::ProtobufDecoder::next_field(a2);
    }

    while (v5);
  }

  v11 = *(this + 6);
  if (v11)
  {
    *(this + 2) = RB::DisplayList::Layer::bounds(v11);
    *(this + 3) = v12;
    RB::DisplayList::Layer::Effect::apply_to_bounds((this + 56), (this + 16));
  }

  else
  {
    *(a2 + 56) = 1;
    *a2 = a2[1];
  }
}

uint64_t RB::DisplayList::ItemClip::prepare_encode(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(*result + 232))();
  }

  return result;
}

void *RB::DisplayList::ItemClip::encode(RB::DisplayList::ItemClip *this, RB::Encoder *a2)
{
  RB::ProtobufEncoder::encode_varint(a2, 0x1AuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  v4 = *(this + 6);
  if (v4)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0xAuLL);
    RB::ProtobufEncoder::begin_length_delimited(a2);
    (*(*v4 + 240))(v4, a2);
    RB::ProtobufEncoder::end_length_delimited(a2);
  }

  RB::ProtobufEncoder::end_length_delimited(a2);

  return RB::DisplayList::Clip::encode(this, a2);
}

void RB::DisplayList::ItemClip::decode(RB::DisplayList::ItemClip *this, RB::Decoder *a2)
{
  field = RB::ProtobufDecoder::next_field(a2);
  if (field)
  {
    v5 = field;
    do
    {
      if ((v5 & 0x7FFFFFFF8) == 8)
      {
        if ((v5 & 7) == 2)
        {
          RB::ProtobufDecoder::begin_message(a2);
          v7 = RB::DisplayList::Item::decode(a2, v6);
          v8 = *(this + 6);
          *(this + 6) = v7;
          if (v8)
          {
            (**v8)(v8);
          }

          RB::ProtobufDecoder::end_message(a2);
        }

        else
        {
          *(a2 + 56) = 1;
          *a2 = *(a2 + 1);
        }
      }

      else
      {
        RB::ProtobufDecoder::skip_field(a2, v5);
      }

      v5 = RB::ProtobufDecoder::next_field(a2);
    }

    while (v5);
  }

  v9 = *(this + 6);
  if (v9)
  {
    *(this + 2) = (*(*v9 + 136))(v9, 0);
    *(this + 3) = v10;
  }

  else
  {
    *(a2 + 56) = 1;
    *a2 = *(a2 + 1);
  }
}

void *RB::DisplayList::ClipNode::encode(void *this, RB::Encoder *a2)
{
  if (this)
  {
    v3 = this;
    do
    {
      v4 = v3[1] & 0xFFFFFFFFFFFFFFFELL;
      if (v4)
      {
        RB::ProtobufEncoder::encode_varint(a2, 0xAuLL);
        RB::ProtobufEncoder::begin_length_delimited(a2);
        (*(*v4 + 120))(v4, a2);
        this = RB::ProtobufEncoder::end_length_delimited(a2);
      }

      v3 = *v3;
    }

    while (v3);
  }

  return this;
}

void RB::DisplayList::ClipNode::decode(RB::DisplayList::ClipNode *this, size_t **a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = 0;
  v22 = 8;
  while (1)
  {
    field = RB::ProtobufDecoder::next_field(a2);
    if (!field)
    {
      break;
    }

    if ((field & 0x7FFFFFFF8) == 8 && (v5 = a2[9]) != 0 && (v6 = (*(*v5 + 32))(v5)) != 0)
    {
      if ((field & 7) == 2)
      {
        RB::ProtobufDecoder::begin_message(a2);
        v8 = RB::DisplayList::Clip::decode(a2, v7);
        if (v8)
        {
          v9 = v21;
          v10 = v21 + 1;
          if (v22 < v21 + 1)
          {
            RB::vector<RBDevice *,8ul,unsigned long>::reserve_slow(__dst, v10);
            v9 = v21;
            v10 = v21 + 1;
          }

          v11 = v20;
          if (!v20)
          {
            v11 = __dst;
          }

          *&v11[8 * v9] = v8;
          v21 = v10;
          v8[1] = *(v6 + 312);
          *(v6 + 312) = v8;
        }

        RB::ProtobufDecoder::end_message(a2);
      }

      else
      {
        *(a2 + 56) = 1;
        *a2 = a2[1];
      }
    }

    else
    {
      RB::ProtobufDecoder::skip_field(a2, field);
    }
  }

  *this = 0u;
  *(this + 1) = 0u;
  if (v21)
  {
    v18 = 0;
    v12 = v21 - 1;
    if (v21 != 1)
    {
      v13 = 8 * v21 - 8;
      do
      {
        v14 = v20;
        if (!v20)
        {
          v14 = __dst;
        }

        v18 = RB::Heap::emplace<RB::DisplayList::ClipNode,RB::DisplayList::Clip const*&,RB::DisplayList::ClipNode*&>(a2[8], &v14[v13], &v18);
        v13 -= 8;
        --v12;
      }

      while (v12);
    }

    v15 = v20;
    if (!v20)
    {
      v15 = __dst;
    }

    RB::DisplayList::ClipNode::ClipNode(v17, *v15, v18);
    v16 = v17[1];
    *this = v17[0];
    *(this + 1) = v16;
  }

  else
  {
    *(a2 + 56) = 1;
    *a2 = a2[1];
  }

  if (v20)
  {
    free(v20);
  }
}

void sub_195DBA594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (a23)
  {
    free(a23);
  }

  _Unwind_Resume(exception_object);
}

RB::Encoder *RB::DisplayList::encode_metadata(RB::Encoder *this, RB::Encoder *a2, const RB::DisplayList::Metadata *a3, char a4)
{
  v6 = this;
  v18 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = a3;
    uuid_clear(&v17);
    v16 = v7;
    if (a2)
    {
      v8 = RB::DisplayList::Metadata::identity_ns(a2);
      if (v8)
      {
        v17 = *v8;
      }
    }

    RB::ProtobufEncoder::encode_varint(v6, 0xAuLL);
    RB::ProtobufEncoder::begin_length_delimited(v6);
    RB::Identity::encode(&v16, v6);
    this = RB::ProtobufEncoder::end_length_delimited(v6);
  }

  if (a2 && (a4 & 1) == 0)
  {
    v9 = RB::DisplayList::Metadata::transition(a2);
    if (v9)
    {
      v10 = v9;
      RB::ProtobufEncoder::encode_varint(v6, 0x12uLL);
      RB::ProtobufEncoder::begin_length_delimited(v6);
      RB::Transition::encode(v10, v6);
      RB::ProtobufEncoder::end_length_delimited(v6);
    }

    v11 = RB::DisplayList::Metadata::numeric_value(a2);
    if (v11)
    {
      v12 = *v11;
      RB::ProtobufEncoder::encode_varint(v6, 0x1DuLL);
      RB::ProtobufEncoder::encode_fixed32(v6, v12);
    }

    v13 = RB::DisplayList::Metadata::text_identity(a2);
    if (v13)
    {
      v14 = v13;
      RB::ProtobufEncoder::encode_varint(v6, 0x22uLL);
      RB::ProtobufEncoder::begin_length_delimited(v6);
      RB::TextIdentity::encode(v14, v6);
      RB::ProtobufEncoder::end_length_delimited(v6);
    }

    this = RB::DisplayList::Metadata::animation_layer(a2);
    if (this)
    {
      v15 = this;
      RB::ProtobufEncoder::encode_varint(v6, 0x2AuLL);
      RB::ProtobufEncoder::begin_length_delimited(v6);
      RB::AnimationLayer::encode(v15, v6);
      return RB::ProtobufEncoder::end_length_delimited(v6);
    }
  }

  return this;
}

uint64_t RB::DisplayList::decode_metadata(RB::DisplayList *this, RB::Decoder *a2, RB::DisplayList::Contents *a3, const RB::DisplayList::Metadata **a4, unsigned int *a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v21 = 0;
  uuid_clear(v22);
  v8 = 0;
  LOBYTE(v19) = 0;
  v20 = 0;
  v9 = NAN;
  while (1)
  {
    field = RB::ProtobufDecoder::next_field(this);
    if (!field)
    {
      break;
    }

    v11 = field >> 3;
    if ((field >> 3) <= 2)
    {
      if (v11 == 1)
      {
        if ((field & 7) != 2)
        {
          goto LABEL_21;
        }

        RB::ProtobufDecoder::begin_message(this);
        RB::Identity::decode(&v21, this);
LABEL_12:
        RB::ProtobufDecoder::end_message(this);
      }

      else
      {
        if (v11 == 2)
        {
          operator new();
        }

LABEL_18:
        RB::ProtobufDecoder::skip_field(this, field);
      }
    }

    else
    {
      switch(v11)
      {
        case 5:
          if ((v20 & 1) == 0)
          {
            v20 = 1;
          }

          v19 = 0x100000000;
          if ((field & 7) == 2)
          {
            RB::ProtobufDecoder::begin_message(this);
            RB::AnimationLayer::decode(&v19, this);
            goto LABEL_12;
          }

LABEL_21:
          *(this + 56) = 1;
          *this = *(this + 1);
          break;
        case 3:
          v9 = RB::ProtobufDecoder::float_field(this, field);
          break;
        case 4:
          if ((field & 7) != 2)
          {
            goto LABEL_21;
          }

          RB::ProtobufDecoder::begin_message(this);
          v8 = RB::TextIdentity::decode(this, v12);
          RB::ProtobufDecoder::end_message(this);
          break;
        default:
          goto LABEL_18;
      }
    }
  }

  *a4 = v21;
  v13 = (*(a2 + 4) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v13 + 16 > *(a2 + 5))
  {
    v13 = RB::Heap::alloc_slow(a2 + 2, 0x10uLL, 7);
  }

  else
  {
    *(a2 + 4) = v13 + 16;
  }

  *v13 = *a3 | 2;
  *(v13 + 8) = v9;
  *a3 = v13;
  if (v8)
  {
    v14 = ((*(a2 + 4) + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v14 + 2) > *(a2 + 5))
    {
      v14 = RB::Heap::alloc_slow(a2 + 2, 0x10uLL, 7);
    }

    else
    {
      *(a2 + 4) = v14 + 2;
    }

    *v14 = *a3 | 3;
    v14[1] = v8;
    *a3 = v14;
  }

  if (v20 == 1)
  {
    v15 = ((*(a2 + 4) + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v15 + 2) > *(a2 + 5))
    {
      v15 = RB::Heap::alloc_slow(a2 + 2, 0x10uLL, 7);
    }

    else
    {
      *(a2 + 4) = v15 + 2;
    }

    *v15 = *a3 | 4;
    v15[1] = v19;
    *a3 = v15;
  }

  result = uuid_is_null(v22);
  if (!result)
  {
    v17 = ((*(a2 + 4) + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v17 + 2) > *(a2 + 5))
    {
      v17 = RB::Heap::alloc_slow(a2 + 2, 0x10uLL, 7);
    }

    else
    {
      *(a2 + 4) = v17 + 2;
    }

    *v17 = *a3;
    v17[1] = v22;
    result = RB::DisplayList::Contents::intern_uuid(a2, v22);
    v17[1] = result;
    *a3 = v17;
  }

  return result;
}

void sub_195DBAC08(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if (atomic_fetch_add_explicit((v1 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      RB::DisplayList::decode_metadata();
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t RB::DisplayList::GenericEffect<RB::AlphaThresholdEffect>::append_color_fn(uint64_t a1, RB::ColorMatrixFn *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  if (*(a1 + 40) == 1)
  {
    RB::Heap::emplace<RB::DisplayList::GenericEffect<RB::AlphaThresholdEffect>,RB::DisplayList::GenericEffect<RB::AlphaThresholdEffect> const&,RB::DisplayList::Contents &>((*(a4 + 8) + 16), a1);
    v6 = v7;
    *(v7 + 40) = 0;
  }

  RB::Fill::Color::append_color_fn((v6 + 24), a2, a3);
  return v6;
}

uint64_t RB::DisplayList::GenericEffect<RB::AlphaThresholdEffect>::apply_transform(uint64_t a1, RB::DisplayList::Contents *a2, RB::DisplayList::Transform *a3, __n128 a4)
{
  v6 = a1;
  if (*(a1 + 40) == 1)
  {
    a4 = RB::Heap::emplace<RB::DisplayList::GenericEffect<RB::AlphaThresholdEffect>,RB::DisplayList::GenericEffect<RB::AlphaThresholdEffect> const&,RB::DisplayList::Contents &>((a2 + 16), a1);
    v6 = v7;
    *(v7 + 40) = 0;
  }

  RB::AlphaThresholdEffect::apply_transform((v6 + 16), a2, a3, a4);
  return v6;
}

__n128 RB::Heap::emplace<RB::DisplayList::GenericEffect<RB::AlphaThresholdEffect>,RB::DisplayList::GenericEffect<RB::AlphaThresholdEffect> const&,RB::DisplayList::Contents &>(RB::Heap *this, uint64_t a2)
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

  *v5 = &unk_1F0A3A208;
  result = *(a2 + 16);
  *(v5 + 31) = *(a2 + 31);
  *(v5 + 16) = result;
  *(v5 + 40) = 1;
  return result;
}

unint64_t RB::DisplayList::GenericEffect<RB::AlphaGradientEffect>::copy(uint64_t a1, uint64_t a2)
{
  result = RB::Heap::emplace<RB::DisplayList::GenericEffect<RB::AlphaGradientEffect>,RB::DisplayList::GenericEffect<RB::AlphaGradientEffect> const&,RB::DisplayList::Contents &>((*(a2 + 8) + 16), a1, *(a2 + 8));
  *(result + 96) = 0;
  return result;
}

unint64_t RB::DisplayList::GenericEffect<RB::AlphaGradientEffect>::append_color_fn(uint64_t a1, RB::ColorMatrixFn *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  if (*(a1 + 96) == 1)
  {
    v6 = RB::Heap::emplace<RB::DisplayList::GenericEffect<RB::AlphaGradientEffect>,RB::DisplayList::GenericEffect<RB::AlphaGradientEffect> const&,RB::DisplayList::Contents &>((*(a4 + 8) + 16), a1, *(a4 + 8));
    *(v6 + 96) = 0;
  }

  RB::Fill::Gradient::append_color_fn((v6 + 24), a2, a3);
  return v6;
}

uint64_t RB::DisplayList::GenericEffect<RB::AlphaGradientEffect>::color_info(uint64_t result, uint64_t a2, float a3)
{
  LOWORD(a3) = *(result + 72);
  v3 = *(result + 74);
  if (v3 >= *&a3 || v3 == COERCE_SHORT_FLOAT(0))
  {
    v3 = *(result + 72);
  }

  *a2 = *(result + 84) | (LODWORD(a3) << 16);
  *(a2 + 4) = v3;
  return result;
}

unint64_t RB::Heap::emplace<RB::DisplayList::GenericEffect<RB::AlphaGradientEffect>,RB::DisplayList::GenericEffect<RB::AlphaGradientEffect> const&,RB::DisplayList::Contents &>(size_t *a1, uint64_t a2, RB::DisplayList::Contents *a3)
{
  v5 = (a1[2] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v5 + 104 > a1[3])
  {
    v5 = RB::Heap::alloc_slow(a1, 0x68uLL, 7);
  }

  else
  {
    a1[2] = v5 + 104;
  }

  *v5 = &unk_1F0A3A2C0;
  RB::AlphaGradientEffect::AlphaGradientEffect((v5 + 16), (a2 + 16), a3);
  *(v5 + 96) = 1;
  return v5;
}

uint64_t RB::DisplayList::GenericEffect<RB::CustomEffect>::~GenericEffect(uint64_t a1)
{
  v2 = *(a1 + 184);
  *(a1 + 184) = 0;
  if (v2)
  {
    (**v2)(v2);
  }

  v3 = *(a1 + 152);
  if (v3)
  {
    v4 = *(a1 + 152);
  }

  else
  {
    v4 = (a1 + 24);
  }

  if (*(a1 + 160))
  {
    v5 = 0;
    do
    {
      RB::CustomShader::Value::reset_data(v4);
      ++v5;
      v4 += 4;
    }

    while (v5 < *(a1 + 160));
    v3 = *(a1 + 152);
  }

  if (v3)
  {
    free(v3);
  }

  v6 = *(a1 + 16);
  if (v6 && atomic_fetch_add_explicit((v6 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    RB::CustomShader::Closure::operator=();
  }

  return a1;
}

void RB::DisplayList::GenericEffect<RB::CustomEffect>::~GenericEffect(uint64_t a1)
{
  v2 = *(a1 + 184);
  *(a1 + 184) = 0;
  if (v2)
  {
    (**v2)(v2);
  }

  v3 = *(a1 + 152);
  if (v3)
  {
    v4 = *(a1 + 152);
  }

  else
  {
    v4 = (a1 + 24);
  }

  if (*(a1 + 160))
  {
    v5 = 0;
    do
    {
      RB::CustomShader::Value::reset_data(v4);
      ++v5;
      v4 += 4;
    }

    while (v5 < *(a1 + 160));
    v3 = *(a1 + 152);
  }

  if (v3)
  {
    free(v3);
  }

  v6 = *(a1 + 16);
  if (v6 && atomic_fetch_add_explicit((v6 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    RB::CustomShader::Closure::operator=();
  }

  JUMPOUT(0x19A8C09E0);
}

unint64_t RB::DisplayList::GenericEffect<RB::CustomEffect>::copy(uint64_t a1, uint64_t a2)
{
  result = RB::Heap::emplace<RB::DisplayList::GenericEffect<RB::CustomEffect>,RB::DisplayList::GenericEffect<RB::CustomEffect> const&,RB::DisplayList::Contents &>((*(a2 + 8) + 16), a1, *(a2 + 8));
  *(result + 288) = 0;
  v4 = *(a2 + 8);
  *(result + 8) = *(v4 + 312);
  *(v4 + 312) = result;
  return result;
}

unint64_t RB::DisplayList::GenericEffect<RB::CustomEffect>::apply_transform(uint64_t a1, float64x2_t *a2)
{
  v3 = a1;
  if (*(a1 + 288) == 1)
  {
    v4 = *(*&a2->f64[0] + 8);
    v3 = RB::Heap::emplace<RB::DisplayList::GenericEffect<RB::CustomEffect>,RB::DisplayList::GenericEffect<RB::CustomEffect> const&,RB::DisplayList::Contents &>(v4 + 2, a1, v4);
    *(v3 + 288) = 0;
    *(v3 + 8) = v4[39];
    v4[39] = v3;
  }

  RB::CustomEffect::apply_transform((v3 + 16), a2);
  return v3;
}

unint64_t RB::Heap::emplace<RB::DisplayList::GenericEffect<RB::CustomEffect>,RB::DisplayList::GenericEffect<RB::CustomEffect> const&,RB::DisplayList::Contents &>(size_t *a1, uint64_t a2, RB::DisplayList::Contents *a3)
{
  v5 = (a1[2] + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v5 + 304 > a1[3])
  {
    v5 = RB::Heap::alloc_slow(a1, 0x130uLL, 15);
  }

  else
  {
    a1[2] = v5 + 304;
  }

  *v5 = &unk_1F0A3A378;
  RB::CustomEffect::CustomEffect((v5 + 16), (a2 + 16), a3);
  *(v5 + 288) = 1;
  return v5;
}

void *RB::Encoder::prepare_shared_f<void RB::Encoder::prepare_shared<RB::DisplayList::ClipNode>(RB::Encoder::SharedType,RB::DisplayList::ClipNode const&)::{lambda(RB::DisplayList::ClipNode&)#1},void RB::Encoder::prepare_shared<RB::DisplayList::ClipNode>(RB::Encoder::SharedType,RB::DisplayList::ClipNode const&)::{lambda(RB::DisplayList::ClipNode&)#2}>(uint64_t a1, uint64_t a2, void *a3, void *a4, void **a5)
{
  v12 = 0;
  result = RB::UntypedTable::lookup((a1 + 80), a3, &v12);
  if (v12 != a3)
  {
    v11 = *(a1 + 72);
    *(a1 + 72) = v11 + 1;
    result = RB::UntypedTable::insert((a1 + 80), a3, v11);
    while (1)
    {
      a4 = *a4;
      if (!a4)
      {
        break;
      }

      result = (a4[1] & 0xFFFFFFFFFFFFFFFELL);
      if (result)
      {
        result = (*(*result + 112))(result, a1);
      }
    }

    if ((*(a1 + 148) & 1) == 0)
    {
      RB::ProtobufEncoder::encode_varint(a1, 0x7AuLL);
      RB::ProtobufEncoder::begin_length_delimited(a1);
      if (v11)
      {
        RB::ProtobufEncoder::encode_varint(a1, 8uLL);
        RB::ProtobufEncoder::encode_varint(a1, v11);
      }

      RB::ProtobufEncoder::encode_varint(a1, (8 * a2) | 2);
      RB::ProtobufEncoder::begin_length_delimited(a1);
      RB::DisplayList::ClipNode::encode(*a5, a1);
      RB::ProtobufEncoder::end_length_delimited(a1);
      return RB::ProtobufEncoder::end_length_delimited(a1);
    }
  }

  return result;
}

double RB::Heap::emplace<RB::DisplayList::LayerItem,int,RB::BlendMode,decltype(nullptr)>(size_t *a1, int *a2, int *a3)
{
  v5 = (a1[2] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v5 + 64 > a1[3])
  {
    v5 = RB::Heap::alloc_slow(a1, 0x40uLL, 7);
  }

  else
  {
    a1[2] = v5 + 64;
  }

  v6 = *a2;
  v7 = *a3;

  *&result = RB::DisplayList::LayerItem::LayerItem(v5, v7, 0, v6);
  return result;
}

double RB::Heap::emplace<RB::DisplayList::BackdropColorMatrixItem>(size_t *a1)
{
  v2 = (a1[2] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v2 + 56 > a1[3])
  {
    v2 = RB::Heap::alloc_slow(a1, 0x38uLL, 7);
  }

  else
  {
    a1[2] = v2 + 56;
  }

  *&result = RB::DisplayList::BackdropColorMatrixItem::BackdropColorMatrixItem(v2, 0, 2, 1.0);
  return result;
}

uint64_t RB::Decoder::shared_field_f<RB::DisplayList::ClipNode,RB::DisplayList::ClipNode const* RB::Decoder::shared_field<RB::DisplayList::ClipNode>(RB::ProtobufDecoder::Field,RB::Encoder::SharedType)::{lambda(RB::DisplayList::ClipNode&)#1}>(RB::ProtobufDecoder *this, char a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v6[2] = &v7;
  v7 = 0;
  if ((a2 & 7) != 2 || (RB::ProtobufDecoder::begin_message(this), RB::Decoder::shared_field_f<RB::DisplayList::ClipNode,RB::DisplayList::ClipNode const* RB::Decoder::shared_field<RB::DisplayList::ClipNode>(RB::ProtobufDecoder::Field,RB::Encoder::SharedType)::{lambda(RB::DisplayList::ClipNode&)#1}>(RB::ProtobufDecoder::Field,RB::Encoder::SharedType,RB::DisplayList::ClipNode const* RB::Decoder::shared_field<RB::DisplayList::ClipNode>(RB::ProtobufDecoder::Field,RB::Encoder::SharedType)::{lambda(RB::DisplayList::ClipNode&)#1} const&)::{lambda(RB::DisplayList::ClipNode&)#1}::operator()<RB::Decoder>(v6, this), RB::ProtobufDecoder::end_message(this), (result = v7) == 0))
  {
    result = 0;
    *(this + 56) = 1;
    *this = *(this + 1);
  }

  return result;
}

unint64_t RB::Decoder::shared_field_f<RB::DisplayList::ClipNode,RB::DisplayList::ClipNode const* RB::Decoder::shared_field<RB::DisplayList::ClipNode>(RB::ProtobufDecoder::Field,RB::Encoder::SharedType)::{lambda(RB::DisplayList::ClipNode&)#1}>(RB::ProtobufDecoder::Field,RB::Encoder::SharedType,RB::DisplayList::ClipNode const* RB::Decoder::shared_field<RB::DisplayList::ClipNode>(RB::ProtobufDecoder::Field,RB::Encoder::SharedType)::{lambda(RB::DisplayList::ClipNode&)#1} const&)::{lambda(RB::DisplayList::ClipNode&)#1}::operator()<RB::Decoder>(uint64_t a1, RB::ProtobufDecoder *this)
{
  field = RB::ProtobufDecoder::next_field(this);
  if (!field)
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_12;
  }

  v5 = field;
  v6 = 0;
  v7 = 0;
  do
  {
    if ((v5 >> 3) == 2)
    {
      v15 = *this;
      RB::ProtobufDecoder::skip_field(this, v5);
      v7 = v5;
    }

    else if ((v5 >> 3) == 1)
    {
      v6 = RB::ProtobufDecoder::uint_field(this, v5);
    }

    else
    {
      RB::ProtobufDecoder::skip_field(this, v5);
    }

    result = RB::ProtobufDecoder::next_field(this);
    v5 = result;
  }

  while (result);
  if (!(v6 >> 61))
  {
LABEL_12:
    v9 = (v6 | (*a1 << 61));
    v17[0] = 0;
    result = RB::UntypedTable::lookup((this + 80), v9, v17);
    v10 = v17[0];
    **(a1 + 16) = result;
    if (v9 == v10)
    {
      return result;
    }

    v11 = v15;
    if (!v7)
    {
      RB::Decoder::saved_shared_field(this, *a1, v6, v17, v15);
      LOBYTE(v7) = v18;
      if (!v18)
      {
        return RB::UntypedTable::insert((this + 80), v9, **(a1 + 16));
      }

      v11 = *v17;
    }

    v12 = *(a1 + 16);
    v13 = *this;
    *this = v11;
    if ((v7 & 7) == 2)
    {
      v16 = v13;
      RB::ProtobufDecoder::begin_message(this);
      v14 = RB::Decoder::emplace<RB::DisplayList::ClipNode>(this);
      RB::DisplayList::ClipNode::decode(v14, this);
      *v12 = v14;
      RB::ProtobufDecoder::end_message(this);
      v13 = v16;
    }

    else
    {
      *(this + 56) = 1;
    }

    *this = v13;
    return RB::UntypedTable::insert((this + 80), v9, **(a1 + 16));
  }

  return result;
}

_OWORD *RB::Decoder::emplace<RB::DisplayList::ClipNode>(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = ((v1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  if ((v2 + 2) > v1[3])
  {
    v2 = RB::Heap::alloc_slow(v1, 0x20uLL, 7);
  }

  else
  {
    v1[2] = (v2 + 2);
  }

  *v2 = 0u;
  v2[1] = 0u;
  return v2;
}

uint64_t RB::Heap::emplace<RB::DisplayList::DetachedLayerItem,int,RB::BlendMode,decltype(nullptr),decltype(nullptr),RB::AffineTransform const*,int>(RB::Heap *this, int *a2, __n128 a3)
{
  v5 = *(this + 3);
  v6 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v6 + 88 > v5)
  {
    RB::Heap::alloc_slow(this, 0x58uLL, 7);
  }

  else
  {
    *(this + 2) = v6 + 88;
  }

  a3.n128_f32[0] = *a2;

  return RB::DisplayList::DetachedLayerItem::DetachedLayerItem(a3);
}

double RB::Heap::emplace<RB::DisplayList::Layer,unsigned int,int>(size_t *a1, int *a2, int *a3)
{
  v5 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v5 + 96 > a1[3])
  {
    v5 = RB::Heap::alloc_slow(a1, 0x60uLL, 7);
  }

  else
  {
    a1[2] = v5 + 96;
  }

  v6 = *a2;
  v7 = *a3;

  return RB::DisplayList::Layer::Layer(v5, v6, v7);
}

void *RB::Encoder::prepare_shared_f<void RB::Encoder::prepare_shared<RB::DisplayList::Layer>(RB::Encoder::SharedType,RB::DisplayList::Layer const&)::{lambda(RB::DisplayList::Layer&)#1},void RB::Encoder::prepare_shared<RB::DisplayList::Layer>(RB::Encoder::SharedType,RB::DisplayList::Layer const&)::{lambda(RB::DisplayList::Layer&)#2}>(uint64_t a1, uint64_t a2, void *a3, void **a4, int **a5)
{
  v12 = 0;
  result = RB::UntypedTable::lookup((a1 + 80), a3, &v12);
  if (v12 != a3)
  {
    v11 = *(a1 + 72);
    *(a1 + 72) = v11 + 1;
    RB::UntypedTable::insert((a1 + 80), a3, v11);
    result = RB::DisplayList::Layer::prepare_encode(*a4, a1, 0);
    if ((*(a1 + 148) & 1) == 0)
    {
      RB::ProtobufEncoder::encode_varint(a1, 0x7AuLL);
      RB::ProtobufEncoder::begin_length_delimited(a1);
      if (v11)
      {
        RB::ProtobufEncoder::encode_varint(a1, 8uLL);
        RB::ProtobufEncoder::encode_varint(a1, v11);
      }

      RB::ProtobufEncoder::encode_varint(a1, (8 * a2) | 2);
      RB::ProtobufEncoder::begin_length_delimited(a1);
      RB::DisplayList::Layer::encode(*a5, a1, 0);
      RB::ProtobufEncoder::end_length_delimited(a1);
      return RB::ProtobufEncoder::end_length_delimited(a1);
    }
  }

  return result;
}

unint64_t RB::Heap::emplace<RB::Filter::ColorMatrix>(size_t *a1)
{
  v1 = (a1[2] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v1 + 16 > a1[3])
  {
    v1 = RB::Heap::alloc_slow(a1, 0x10uLL, 7);
  }

  else
  {
    a1[2] = v1 + 16;
  }

  *v1 = 0;
  *(v1 + 8) = 0;
  return v1;
}

void *RB::DisplayList::GenericFilter<RB::Filter::ColorMatrix>::copy(uint64_t a1, RB::DisplayList::Builder *a2)
{
  v4 = *(a2 + 1);
  v5 = ((v4[4] + 7) & 0xFFFFFFFFFFFFFFF8);
  if ((v5 + 6) > v4[5])
  {
    v5 = RB::Heap::alloc_slow(v4 + 2, 0x30uLL, 7);
  }

  else
  {
    v4[4] = (v5 + 6);
  }

  v5[2] = 0;
  v5[3] = 0;
  *v5 = &unk_1F0A3A178;
  RB::Filter::ColorMatrix::ColorMatrix((v5 + 4), (a1 + 32), a2);
  return v5;
}

uint64_t RB::Heap::emplace<RB::DisplayList::LayerClip,decltype(nullptr),RB::DisplayList::Layer::Effect>(RB::Heap *this, uint64_t a2, uint64_t *a3)
{
  v5 = *(this + 3);
  v6 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v6 + 72 > v5)
  {
    v6 = RB::Heap::alloc_slow(this, 0x48uLL, 7);
  }

  else
  {
    *(this + 2) = v6 + 72;
  }

  v7 = *a3;

  return RB::DisplayList::LayerClip::LayerClip(v6, 0, v7, 0, 1.0);
}

uint64_t RB::Heap::emplace<RB::DisplayList::ItemClip,decltype(nullptr)>(size_t *a1)
{
  v2 = (a1[2] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v2 + 56 > a1[3])
  {
    v2 = RB::Heap::alloc_slow(a1, 0x38uLL, 7);
  }

  else
  {
    a1[2] = v2 + 56;
  }

  return RB::DisplayList::ItemClip::ItemClip(v2, 0, 0, 1.0);
}

uint64_t RB::Path::Mapper::StackItem::cubeto(uint64_t a1, double a2, double a3, __n128 a4)
{
  *(a1 + 32) = a4;
  *(a1 + 64) = 0;
  return (*(**(a1 + 16) + 40))();
}

uint64_t RB::Path::Mapper::add_rect(__n128 *this, CGRect a2, float64x2_t *a3, int a4)
{
  y = a2.origin.y;
  height = a2.size.height;
  v8 = vaddq_f64(a2.origin, a2.size);
  v9 = vminnmq_f64(a2.origin, v8);
  v10 = vmaxnmq_f64(a2.origin, v8);
  v16 = v9;
  v17 = v10;
  if (a4)
  {
    RB::Path::Mapper::elt_moveto(this, a3, v9);
    v11.f64[0] = v17.f64[0];
    v11.f64[1] = v16.f64[1];
    RB::Path::Mapper::elt_lineto(this, a3, v11);
    RB::Path::Mapper::elt_lineto(this, a3, v17);
    v12.f64[0] = v16.f64[0];
    v13 = v17.f64[1];
  }

  else
  {
    v10.f64[1] = vmuld_lane_f64(0.5, vaddq_f64(v10, v9), 1);
    RB::Path::Mapper::elt_moveto(this, a3, v10);
    RB::Path::Mapper::elt_lineto(this, a3, v17);
    v14.f64[0] = v16.f64[0];
    v14.f64[1] = v17.f64[1];
    RB::Path::Mapper::elt_lineto(this, a3, v14);
    RB::Path::Mapper::elt_lineto(this, a3, v16);
    v13 = v16.f64[1];
    v12.f64[0] = v17.f64[0];
  }

  v12.f64[1] = v13;
  RB::Path::Mapper::elt_lineto(this, a3, v12);

  return RB::Path::Mapper::elt_closepath(this);
}

uint64_t RB::Path::Mapper::add_relative_arc(__n128 *a1, float64x2_t *a2, float64x2_t a3, double a4, double a5, double a6)
{
  v8 = a5;
  v11 = __sincos_stret(a5);
  v10.f64[0] = v11.__cosval;
  v10.f64[1] = v11.__sinval;
  v12 = vmlaq_n_f64(a3, v10, a4);
  v13 = a1[1].n128_u64[1];
  if (!v13)
  {
    v13 = a1;
  }

  v42 = v12;
  if (v13[4].n128_u8[0] == 1)
  {
    result = RB::Path::Mapper::elt_moveto(a1, a2, v12);
  }

  else
  {
    result = RB::Path::Mapper::elt_lineto(a1, a2, v12);
  }

  v15 = v42;
  sinval = v11.__sinval;
  cosval = v11.__cosval;
  if ((*&a6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v36 = vdupq_lane_s64(*&a4, 0);
    v18 = dbl_195E44CB0[a6 < 0.0];
    if (a6 >= 0.0)
    {
      v19 = 1.0;
    }

    else
    {
      v19 = -1.0;
    }

    v35 = vdupq_lane_s64(COERCE__INT64(dbl_195E44CC0[a6 < 0.0] * a4), 0);
    v20 = 1023;
    while (a6 > 0.0 && a6 > v18 || a6 < 0.0 && a6 < v18)
    {
      if (!v20)
      {
        return result;
      }

      v43 = cosval * v19;
      v23.f64[0] = -sinval;
      v24.f64[0] = -(sinval * v19);
      v24.f64[1] = cosval * v19;
      v38 = vmlaq_f64(a3, v36, v24);
      v40 = v24.f64[0];
      v23.f64[1] = cosval;
      v25 = vmlaq_f64(v15, v35, v23);
      v23.f64[0] = -(cosval * v19);
      v23.f64[1] = v24.f64[0];
      result = RB::Path::Mapper::elt_cubeto(a1, a2, v25, vmlsq_f64(v38, v35, v23), v38);
      v8 = v8 + v18;
      a6 = a6 - v18;
      --v20;
      sinval = v43;
      v15 = v38;
      cosval = v40;
    }

    if (fabs(a6) > 0.00000999999975)
    {
      v44 = v15;
      v39 = sinval;
      v41 = cosval;
      v26 = __sincos_stret(a6 * 0.5);
      v28 = __sincos_stret(v8 + a6);
      v27.f64[0] = v28.__cosval;
      v29.f64[0] = -v28.__sinval;
      v29.f64[1] = v28.__cosval;
      v27.f64[1] = v28.__sinval;
      v30 = vmlaq_f64(a3, v36, v27);
      v31 = (4.0 - v26.__cosval * 4.0) * a4 / (v26.__sinval * 3.0);
      v27.f64[0] = -v39;
      v27.f64[1] = v41;
      v32 = vmlaq_n_f64(v44, v27, v31);
      v33 = vmlsq_lane_f64(v30, v29, v31, 0);

      return RB::Path::Mapper::elt_cubeto(a1, a2, v32, v33, v30);
    }
  }

  return result;
}

uint64_t RB::Path::Mapper::add_arc(__n128 *a1, int a2, CGAffineTransform *a3, float64x2_t a4, double a5, double a6, double a7)
{
  v7 = a1[1].n128_u64[1];
  if (!v7)
  {
    v7 = a1;
  }

  if (v7[4].n128_u8[0] == 1)
  {
    v8 = a7 + -6.28318531;
    if (a6 == 0.0 && a7 >= 6.28318531 && v8 < 0.00001 && a2 != 0)
    {
      v10 = a5 + a5;
      a4.f64[0] = a4.f64[0] - a5;
      v11 = a4.f64[1] - a5;
      v12 = v10;
      v13 = 1;
      return RB::Path::Mapper::add_ellipse(a1, *a4.f64, v13, a3);
    }

    if (a6 == 0.0 && fabs(v8) < 0.00000999999975 && a2 == 0)
    {
      v10 = a5 + a5;
      a4.f64[0] = a4.f64[0] - a5;
      v11 = a4.f64[1] - a5;
      v12 = v10;
      v13 = 0;
      return RB::Path::Mapper::add_ellipse(a1, *a4.f64, v13, a3);
    }
  }

  if (a2)
  {
    if (a6 < a7)
    {
      a6 = a6 + ceil((a7 - a6) * 0.159154943) * 6.28318531;
    }
  }

  else if (a7 < a6)
  {
    a7 = a7 + ceil((a6 - a7) * 0.159154943) * 6.28318531;
  }

  return RB::Path::Mapper::add_relative_arc(a1, a3, a4, a5, a6, a7 - a6);
}

uint64_t RB::Path::Mapper::add_arc_to_point(__n128 *a1, int8x16_t *a2, float64x2_t a3, float64x2_t a4, double a5)
{
  v6 = a4;
  v8 = a1[1].n128_u64[1];
  if (!v8)
  {
    v8 = a1;
  }

  v9 = v8[2];
  if (a2)
  {
    v31 = a2[1];
    v32 = *a2;
    v34 = a2[2];
    v45 = *a2;
    v46 = v31;
    v47 = v34;
    v43 = v9;
    v37 = a3;
    if (RB::AffineTransform::invert(&v45))
    {
      v10 = -1;
    }

    else
    {
      v10 = 0;
    }

    v11 = vdupq_n_s64(v10);
    v9 = vmlaq_laneq_f64(vmlaq_n_f64(vbslq_s8(v11, v47, v34), vbslq_s8(v11, v45, v32), v43.f64[0]), vbslq_s8(v11, v46, v31), v43, 1);
    a3 = v37;
    v6 = a4;
  }

  v12 = vsubq_f64(a3, v9);
  v44 = v9;
  v13 = vsubq_f64(v6, v9);
  v14 = vceqzq_f64(v12);
  cosval = 1.0;
  v15 = 0.0;
  if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v14), 1), v14).u64[0] & 0x8000000000000000) != 0)
  {
    v38 = v12;
    v41 = v13;
    v18 = atan2(v12.f64[1], v12.f64[0]);
    v17 = v18;
    if (v18 == 0.0)
    {
      v16 = 0;
      sinval = 0.0;
      v12 = v38;
      v13 = v41;
    }

    else
    {
      v19 = __sincos_stret(v18);
      v20.f64[0] = v19.__cosval;
      sinval = v19.__sinval;
      cosval = v19.__cosval;
      v20.f64[1] = -v19.__sinval;
      v16 = 1;
      v12 = vmlaq_n_f64(vmulq_laneq_f64(v19, v38, 1), v20, v38.f64[0]);
      v13 = vmlaq_n_f64(vmulq_laneq_f64(v19, v41, 1), v20, v41.f64[0]);
    }
  }

  else
  {
    v16 = 0;
    sinval = 0.0;
    a5 = 0.0;
    v17 = 0.0;
  }

  v39 = v12;
  v42 = v13;
  v21 = vceqq_f64(v12, v13);
  if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v21), 1), v21).u64[0] & 0x8000000000000000) != 0)
  {
    v22 = vsubq_f64(v13, v12);
    v15 = 3.14159265 - fabs(atan2(v22.f64[1], v22.f64[0]));
  }

  v23 = __sincos_stret(v15 * 0.5);
  v24 = 0.0;
  v25 = 0.0;
  v26 = 0.0;
  v27 = v39;
  if (v23.__sinval == 0.0)
  {
    if (v16)
    {
LABEL_17:
      v28.f64[0] = cosval;
      v28.f64[1] = sinval;
      v29.f64[0] = -sinval;
      v29.f64[1] = cosval;
      v25 = v25 + v17;
      v26 = v26 + v17;
      v27 = vmlaq_laneq_f64(vmulq_n_f64(v28, v27.f64[0]), v29, v27, 1);
    }
  }

  else
  {
    v24 = a5;
    v27.f64[0] = v39.f64[0] - fabs(v23.__cosval / v23.__sinval) * a5;
    if (vmovn_s64(vcgtq_f64(v42, v39)).i32[1])
    {
      v27.f64[1] = a5;
      v26 = 1.57079633 - v15;
      v25 = -1.57079633;
    }

    else
    {
      v27.f64[1] = -a5;
      v26 = v15 + -1.57079633;
      v25 = 1.57079633;
    }

    if (v16)
    {
      goto LABEL_17;
    }
  }

  return RB::Path::Mapper::add_arc(a1, vmovn_s64(vmvnq_s8(vcgtq_f64(v42, v39))).i32[1] & 1, a2, vaddq_f64(v27, v44), v24, v25, v26);
}

void RB::Path::Mapper::push_stroke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 8))
    {
      operator new();
    }
  }

  operator new();
}

void RB::Path::Mapper::push_clip_stroke(uint64_t a1, int *a2)
{
  if (a2)
  {
    v2 = *a2;
    rb_line_cap(a2[1]);
    if ((v2 & 0x80) != 0)
    {
      operator new();
    }
  }

  operator new();
}

void *RB::Path::DasherStroker::DasherStroker(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7, float a8, float a9)
{
  *a1 = &unk_1F0A3EB20;
  v13 = a1 + 1;
  v14 = MEMORY[0x1E695EFD0];
  CG::stroker::stroker(a1 + 1, MEMORY[0x1E695EFD0], a3, a4, a2, 0.0, a7, a8);
  CG::dasher::dasher(a1 + 32, v14, a6, a5, v13, a9);
  return a1;
}

void RB::RenderTaskTexture::~RenderTaskTexture(RB::RenderTaskTexture *this)
{
  *this = &unk_1F0A38F38;
  v2 = *(this + 2);
  if (v2)
  {
    RB::Texture::make_aliasable(v2);
    v3 = *(this + 2);
    if (v3)
    {
      v4 = v3[2] - 1;
      v3[2] = v4;
      if (!v4)
      {
        (*(*v3 + 8))(v3);
      }
    }
  }
}

void sub_195DBC948(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    RB::RenderTaskTexture::~RenderTaskTexture(v3);
  }

  _Unwind_Resume(exception_object);
}

void RB::RenderTask::print_(RB::RenderTask *this, std::string *a2, _BOOL4 a3, unsigned int a4)
{
  if (*(this + 21) == a4)
  {
    RB::SexpString::printf(a2, 1, "(task %p)", this);
  }

  else
  {
    *(this + 21) = a4;
    RB::SexpString::push(a2, "task");
    v8 = HIDWORD(*(this + 3));
    v9 = *(this + 3);
    v10 = *(this + 20);
    v12 = RB::pixel_format_name(*(this + 2), v11);
    v13 = RB::ColorSpace::name((this + 88));
    RB::SexpString::printf(a2, 0, "%p [%d %d] @%u %s %s", this, v9, v8, v10, v12, v13);
    if (*(this + 8))
    {
      RB::SexpString::push(a2, "texture");
      RB::SexpString::printf(a2, 0, "%p (offset %d %d)", *(this + 8), *(this + 4), HIDWORD(*(this + 4)));
      RB::SexpString::pop(a2);
    }

    if (*(this + 6))
    {
      RB::SexpString::push(a2, "children");
      for (i = *(this + 6); i; i = *i)
      {
        v15 = i[1];
        if ((*(v15 + 20) - *(this + 20)) < 2)
        {
          RB::RenderTask::print_(v15, a2, a3, a4);
        }

        else
        {
          RB::SexpString::printf(a2, 1, "(task %p)", i[1]);
        }
      }

      RB::SexpString::pop(a2);
    }

    if (a3)
    {
      (*(*this + 56))(this, a2);
    }

    if (*(this + 7))
    {
      RB::SexpString::push(a2, "continuation-of");
      RB::RenderTask::print_(*(this + 7), a2, a3, a4);
      RB::SexpString::pop(a2);
    }

    RB::SexpString::pop(a2);
  }
}

_DWORD *RB::Refcount<RB::RenderTaskTexture,unsigned int>::release(_DWORD *result)
{
  v1 = result[2] - 1;
  result[2] = v1;
  if (!v1)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t RB::Refcount<RB::RenderTaskTexture,unsigned int>::finalize(uint64_t result)
{
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void RB::Filter::RenderGroup::~RenderGroup(RB::Filter::RenderGroup *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  if (v3)
  {
    v4 = 0;
    v5 = v2 + 2;
    do
    {
      v6 = *v5;
      *v5 = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
        v3 = *(this + 2);
      }

      ++v4;
      v5 += 10;
    }

    while (v4 < v3);
    v2 = *(this + 1);
  }

  if (v2)
  {
    free(v2);
  }
}

void *RB::vector<RB::RenderTask *,32ul,unsigned int>::reserve_slow(void *__dst, unsigned int a2)
{
  if (*(__dst + 67) + (*(__dst + 67) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 67) + (*(__dst + 67) >> 1);
  }

  result = RB::details::realloc_vector<unsigned int,8ul>(*(__dst + 32), __dst, 0x20u, __dst + 67, v3);
  *(__dst + 32) = result;
  return result;
}

float OUTLINED_FUNCTION_2_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, float a25)
{
  *(v17 + 48) = v25;
  *(v17 + 56) = v19;
  *(v17 + 64) = v22;
  *(v17 + 68) = v20;
  result = a25;
  *(v17 + 72) = a24;
  *(v17 + 76) = a25;
  *(v17 + 80) = v24;
  *(v17 + 88) = 0;
  *(v17 + 92) = v23;
  *(v17 + 100) = 0;
  *(v17 + 104) = v21;
  *(v17 + 112) = 1065353216;
  *(v17 + 116) = v18;
  return result;
}

void sub_195DBD6FC(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v2 + v3));

  _Unwind_Resume(a1);
}

void sub_195DBE3B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  RB::Symbol::Presentation::~Presentation(va);
  os_unfair_lock_unlock((v3 + v4));
  _Unwind_Resume(a1);
}

__n128 anonymous namespace::Updater::drawing_transform(RB::Symbol::Model **this, CALayer *a2)
{
  RB::Symbol::Model::glyph_info(this[2]);
  if (a2 && ![(CALayer *)a2 contentsAreFlipped])
  {
    return *(this + 141);
  }

  else
  {
    return *(this + 141);
  }
}

void ___ZN12_GLOBAL__N_17Updater13update_mergedEv_block_invoke_2(void *a1, uint64_t a2)
{
  v3 = a1[6];
  State = RBDisplayListGetState(a2);
  v7[1] = v5;
  v7[2] = v6;
  RBDrawingStateConcatCTM(State, v7);
  RB::Symbol::Presentation::draw((v3 + 2), State, 0, a1[5], 1.0);
}

uint64_t color_symbols(void)
{
  {
    v2 = RB::debug_BOOL("RB_COLOR_SYMBOLS", v1);
    color_symbols(void)::flag = v2 & ((v2 & 0x100) >> 8);
  }

  return color_symbols(void)::flag;
}

RB::DisplayList::Item *RB::DisplayList::Item::project(RB::DisplayList::Item *this, RB::DisplayList::Builder *a2, const RB::Path::Projection *a3, float64x2_t *a4)
{
  v50[12] = *MEMORY[0x1E69E9840];
  v37 = a3;
  v38 = a2;
  v39 = a4;
  v8 = a4[1];
  v46 = *a4;
  v47 = v8;
  v48 = a4[2];
  if (RB::AffineTransform::invert(&v46))
  {
    v9 = &v46;
  }

  else
  {
    v9 = a4;
  }

  v10 = v9[1];
  v11 = v9[2];
  v40 = *v9;
  v41 = v10;
  v42 = v11;
  if ((*(a3 + 12) & 0x1E) == 2 || (v12 = (*(*this + 40))(this), (v12 + 1) <= 2))
  {
    *&v13 = (*(*this + 136))(this, 0);
    v15 = vcvtq_f64_f32(vmla_f32(v13, 0x3F0000003F000000, v14));
    v43 = xmmword_195E42760;
    v44 = xmmword_195E42770;
    v45 = 0uLL;
    if (RB::Path::Projection::project(v37, &v43, vcvtq_f64_f32(vcvt_f32_f64(vmlaq_laneq_f64(vmlaq_n_f64(v42, v40, v15.f64[0]), v41, v15, 1)))))
    {
      v16.f64[0] = RB::operator*(&v40, &v43);
      v46 = v16;
      v47 = v17;
      v48 = v18;
      *&v19 = RB::operator*(&v46, v39);
      v43 = v19;
      v44 = v20;
      v45 = v21;
      RB::DisplayList::CachedTransform::CachedTransform(&v46, v38, &v43, 0, 0);
      (*(*this + 32))(this, &v46, 1);
      RB::UntypedTable::~UntypedTable(v50);
      RB::UntypedTable::~UntypedTable(v49);
      RB::Heap::~Heap(&v46.f64[1]);
    }
  }

  else
  {
    v22 = 0;
    v36 = 0;
    v23 = &v36;
    do
    {
      v24 = (*(*this + 48))(this, a2, v22, 1, 0);
      v25 = v24;
      if (v24)
      {
        *&v26 = (*(*v24 + 136))(v24, 0);
        v28 = vcvtq_f64_f32(vmla_f32(v26, 0x3F0000003F000000, v27));
        v43 = xmmword_195E42760;
        v44 = xmmword_195E42770;
        v45 = 0uLL;
        if (RB::Path::Projection::project(v37, &v43, vcvtq_f64_f32(vcvt_f32_f64(vmlaq_laneq_f64(vmlaq_n_f64(v42, v40, v28.f64[0]), v41, v28, 1)))))
        {
          v29.f64[0] = RB::operator*(&v40, &v43);
          v46 = v29;
          v47 = v30;
          v48 = v31;
          *&v32 = RB::operator*(&v46, v39);
          v43 = v32;
          v44 = v33;
          v45 = v34;
          RB::DisplayList::CachedTransform::CachedTransform(&v46, v38, &v43, 0, 0);
          (*(*v25 + 32))(v25, &v46, 1);
          RB::UntypedTable::~UntypedTable(v50);
          RB::UntypedTable::~UntypedTable(v49);
          RB::Heap::~Heap(&v46.f64[1]);
        }

        *v23 = v25;
        v23 = v25 + 1;
      }

      v22 = (v22 + 1);
    }

    while (v12 != v22);
    *v23 = 0;
    (**this)(this);
    return v36;
  }

  return this;
}

void RB::DisplayList::Item::print(RB::DisplayList::Item *this, std::string *a2, uint64_t a3)
{
  v6 = *(this + 23);
  if ((v6 & 0x800) != 0)
  {
    RB::SexpString::print(a2, 0, "reads-bg");
    v6 = *(this + 23);
  }

  if ((v6 & 0x1000) != 0)
  {
    RB::SexpString::print(a2, 0, "disable-mix");
  }

  _H0 = *(this + 22);
  if (_H0 != COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
  {
    __asm { FCVT            D0, H0 }

    RB::SexpString::printf(a2, 0, "(alpha %g)", _D0);
  }

  v13 = *(this + 23) & 0x3F;
  if (v13 != 2)
  {
    v14 = RB::blend_name(v13);
    RB::SexpString::printf(a2, 0, "(blend %s)", v14);
  }

  if (*(this + 10))
  {
    RB::SexpString::printf(a2, 0, "(identifier %u)", *(this + 10));
  }

  v15 = *(this + 4);
  if (v15 && RB::DisplayList::Metadata::numeric_value(v15))
  {
    v16 = RB::DisplayList::Metadata::numeric_value(*(this + 4));
    RB::SexpString::printf(a2, 0, "(numeric-value %g)", *v16);
  }

  if (*(this + 2))
  {
    v17 = RB::SexpString::push(a2, "styles");
    for (i = *(this + 2); i; i = i[4])
    {
      (*(*i + 112))(i, a2, a3, v17);
    }

    RB::SexpString::pop(a2);
    a2[1].__r_.__value_.__s.__data_[16] = 1;
  }

  v19 = *(this + 3);
  if (v19)
  {
    do
    {
      (*(*(v19[1] & 0xFFFFFFFFFFFFFFFELL) + 128))(v19[1] & 0xFFFFFFFFFFFFFFFELL, a2, a3);
      v19 = *v19;
    }

    while (v19);
    a2[1].__r_.__value_.__s.__data_[16] = 1;
  }

  v20 = *(this + 4);
  if (v20)
  {
    if (RB::DisplayList::Metadata::transition(v20))
    {
      v21 = RB::DisplayList::Metadata::transition(*(this + 4));
      RB::Transition::print(v21, a2);
      a2[1].__r_.__value_.__s.__data_[16] = 1;
    }

    v22 = *(this + 4);
    if (v22)
    {
      if (RB::DisplayList::Metadata::text_identity(v22))
      {
        v23 = RB::DisplayList::Metadata::text_identity(*(this + 4));
        RB::TextIdentity::print(v23, a2);
        a2[1].__r_.__value_.__s.__data_[16] = 1;
      }
    }
  }
}

uint64_t RB::DisplayList::LayerItem::disable_subpixel_quantization(uint64_t this, float64x2_t *a2)
{
  v2 = a2[1];
  v7 = *a2;
  v8 = v2;
  v9 = a2[2];
  v3 = *(this + 48);
  v4 = *(v3 + 64);
  if (v4 != 0.0)
  {
    v5 = v4;
    v7 = vmulq_n_f64(v7, v5);
    v8 = vmulq_n_f64(v8, v5);
    v9 = vmulq_n_f64(v9, v5);
  }

  for (i = *(v3 + 16); i; i = i[1])
  {
    this = (*(*i + 120))(i, &v7);
  }

  return this;
}

uint64_t RB::DisplayList::LayerItem::can_append_color_fn(RB::DisplayList::LayerItem *this, const RB::ColorMatrixFn *a2, int a3)
{
  if ((*(this + 7) & 3) == 2)
  {
    v5 = *(*(*(this + 7) & 0xFFFFFFFFFFFFFFFCLL) + 56);

    return v5();
  }

  v8 = *(this + 6);
  v9 = *(v8 + 32);
  if (v9)
  {
    if (!v9[1] && (*(*v9 + 40))(v9) == 1)
    {
      return ((*v10 ^ a3) & 7) == 0;
    }

    return 0;
  }

  v11 = *(v8 + 76);
  if (v11)
  {
    return 0;
  }

  if ((a3 & 3) == 0 || (v11 & 0xC) == 0)
  {
    goto LABEL_21;
  }

  if ((v11 & 4) != 0)
  {
    v12 = 257;
  }

  else
  {
    v12 = (v11 << 28 >> 31) & 0x11 | ((((v11 & 8) >> 3) & 1) << 8);
  }

  v13 = v12 >> 8;
  v14 = RB::color_flags_space(a3, 0);
  if (v12 >> 8 != HIBYTE(v14) || v13 == 0)
  {
    if (v13 == HIBYTE(v14))
    {
      goto LABEL_21;
    }

    return 0;
  }

  if (v12 != v14)
  {
    return 0;
  }

LABEL_21:
  v16 = *(this + 6);

  return RB::DisplayList::Builder::can_lower_color_fn(v16, a2, a3 | 0x80000000);
}

float RB::DisplayList::LayerItem::append_color_fn(RB::DisplayList::LayerItem *this, const RB::ColorMatrixFn *a2, uint64_t a3, RB::DisplayList::Builder *a4)
{
  if ((*(this + 7) & 3) == 2)
  {
    v7 = (*(*(*(this + 7) & 0xFFFFFFFFFFFFFFFCLL) + 64))(*(this + 7) & 0xFFFFFFFFFFFFFFFCLL, a2, a3, a4);
    result = v8;
    *(this + 7) = v7 | 2;
    return result;
  }

  v10 = *(this + 6);
  v11 = *(v10 + 32);
  if (v11)
  {
    v12 = (**a2)(a2, *(a4 + 1) + 16);
    *(v11 + 40) = RB::ColorMatrixFn::append(v12, *(v11 + 40));
  }

  else
  {
    result = RB::DisplayList::Builder::lower_color_fn(a4, v10, a2, a3 | 0x80000000);
    if ((a3 & 0x80000000) != 0)
    {
      return result;
    }

    _H1 = *(this + 22);
    __asm { FCVT            S1, H1 }

    _S0 = result * _S1;
    __asm { FCVT            H0, S0 }

    *(this + 22) = LOWORD(_S0);
  }

  return 1.0;
}

uint64_t RB::DisplayList::LayerItem::project(uint64_t a1, uint64_t a2, uint64_t a3, float64x2_t *a4)
{
  v5 = *(a1 + 48);
  v6 = *(v5 + 64);
  if (v6 == 0.0)
  {
    v6 = 1.0;
  }

  v7 = v6;
  v8 = vmulq_n_f64(*a4, v7);
  v9 = vmulq_n_f64(a4[1], v7);
  v10 = vmulq_n_f64(a4[2], v7);
  v21[0] = v8;
  v21[1] = v9;
  v21[2] = v10;
  v13 = *(v5 + 16);
  v11 = (v5 + 16);
  for (i = v13; i; v11 = (v19 + 8))
  {
    v16 = i;
    i = i[1];
    v17 = *v16;
    v16[1] = 0;
    v18 = (*(v17 + 224))(v16, a2, a3, v21);
    *v11 = v18;
    do
    {
      v19 = v18;
      v18 = *(v18 + 8);
    }

    while (v18);
  }

  *v11 = 0;
  return a1;
}

void RB::DisplayList::LayerItem::print(RB::DisplayList::Layer **this, RB::SexpString *a2, uint64_t a3)
{
  RB::SexpString::push(a2, "draw-layer");
  RB::DisplayList::Item::print(this, a2, a3);
  RB::DisplayList::Layer::Effect::print((this + 7), a2);
  if ((a3 & 1) == 0)
  {
    v6 = this[6];
    if (v6)
    {
      RB::DisplayList::Layer::print(v6, a2, a3);
    }
  }

  RB::SexpString::pop(a2);
}

uint64_t RB::DisplayList::DetachedLayerItem::copy(RB::DisplayList::DetachedLayerItem *this, RB::DisplayList::Builder *a2)
{
  v4 = *(a2 + 1);
  v8 = *(this + 23) & 0x3F;
  v7 = *(this + 7);
  v5 = _ZN2RB4Heap7emplaceINS_11DisplayList17DetachedLayerItemEJRKDF16_RKNS_9BlendModeERKPKNS2_5LayerEPKNS2_8ContentsERKPKNS_15AffineTransformERKjEEEPT_DpOT0_((v4 + 16), this + 22, &v8, this + 6, &v7, this + 8, this + 20);
  *(v5 + 72) = RB::DisplayList::Layer::Effect::copy((this + 72), a2);
  *(v5 + 16) = *(this + 1);
  *(v5 + 32) = *(this + 4);
  *(v5 + 40) = *(this + 10);
  return v5;
}

uint64_t _ZN2RB4Heap7emplaceINS_11DisplayList17DetachedLayerItemEJRKDF16_RKNS_9BlendModeERKPKNS2_5LayerEPKNS2_8ContentsERKPKNS_15AffineTransformERKjEEEPT_DpOT0_(RB::Heap *this, __int16 *a2, int *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, int *a7)
{
  v14 = *(this + 3);
  v15 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v15 + 88 > v14)
  {
    v15 = RB::Heap::alloc_slow(this, 0x58uLL, 7);
  }

  else
  {
    *(this + 2) = v15 + 88;
  }

  _H0 = *a2;
  __asm { FCVT            S0, H0 }

  v22 = *a3;
  v23 = *a4;
  v24 = *a5;
  v25 = *a6;
  v26 = *a7;

  return RB::DisplayList::DetachedLayerItem::DetachedLayerItem(v15, v22, v23, v24, v25, v26, _S0);
}

uint64_t RB::DisplayList::DetachedLayerItem::apply_transform(float64x2_t **this, const RB::DisplayList::CachedTransform *a2, uint64_t a3)
{
  RB::DisplayList::Item::apply_transform(this, a2, a3);
  this[8] = RB::DisplayList::CachedTransform::transform_ctm(a2, this[8]);

  return RB::DisplayList::Layer::Effect::apply_transform((this + 9), a2);
}

void RB::DisplayList::DetachedLayerItem::min_scale(RB::DisplayList::DetachedLayerItem *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    RB::DisplayList::Layer::min_scale(v2);
    RB::AffineTransform::scale(*(this + 8));
  }
}

BOOL RB::DisplayList::DetachedLayerItem::raster_matches(RB::DisplayList::DetachedLayerItem *this, float64x2_t *a2, unsigned __int8 a3, char a4)
{
  v4 = *(this + 20);
  if (((v4 ^ a3) & 0xF0) != 0)
  {
    return 0;
  }

  v6 = *(this + 8);
  v7 = vceqq_f64(*v6, *a2);
  if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v7), 1), v7).u64[0] & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v8 = vceqq_f64(v6[1], a2[1]);
  v8.i64[0] = vornq_s8(vdupq_laneq_s64(vmvnq_s8(v8), 1), v8).u64[0];
  result = v8.i64[0] >= 0;
  if ((v8.i64[0] & 0x8000000000000000) == 0 && (a4 & 1) == 0)
  {
    v9 = v4 & 0xF;
    if (v9 == 1)
    {
      __asm
      {
        FMOV            V1.2D, #2.0
        FMOV            V2.2D, #0.5
      }

      v10 = vmulq_f64(vrndmq_f64(vmlaq_f64(_Q2, _Q1, v6[2])), _Q2);
      v11 = 0.0001;
      goto LABEL_11;
    }

    if (!v9)
    {
      v10 = v6[2];
      v11 = 0.03125;
LABEL_11:
      v18 = vdupq_n_s64(0x3FEFFFFFFFFFFFFFuLL);
      return vpmaxq_f64(vabdq_f64(vminnmq_f64(vsubq_f64(v10, vrndmq_f64(v10)), v18), vminnmq_f64(vsubq_f64(a2[2], vrndmq_f64(a2[2])), v18))) < v11;
    }

    return 1;
  }

  return result;
}

void RB::DisplayList::DetachedLayerItem::print(const RB::AffineTransform **this, RB::SexpString *a2, uint64_t a3)
{
  RB::SexpString::push(a2, "draw-layer/detached");
  RB::DisplayList::Item::print(this, a2, a3);
  RB::SexpString::print_ctm(a2, this[8]);
  RB::DisplayList::Layer::Effect::print((this + 9), a2);
  if ((a3 & 1) == 0)
  {
    v6 = this[6];
    if (v6)
    {
      RB::DisplayList::Layer::print(v6, a2, a3);
    }
  }

  RB::SexpString::pop(a2);
}

__int16 RB::DisplayList::BackdropColorMatrixItem::BackdropColorMatrixItem@<H0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, float _S0@<S0>)
{
  __asm { FCVT            H0, S0 }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = result;
  *(a1 + 46) = a3 & 0x3F | 0x800;
  *a1 = &unk_1F0A39350;
  *(a1 + 48) = a2;
  return result;
}

__n128 RB::DisplayList::BackdropColorMatrixItem::copy(__n128 *this, RB::DisplayList::Builder *a2)
{
  v3 = *(a2 + 1);
  v6 = this[2].n128_u16[7] & 0x3F;
  _ZN2RB4Heap7emplaceINS_11DisplayList23BackdropColorMatrixItemEJRKPKNS_6Filter11ColorMatrixERKDF16_RKNS_9BlendModeEEEEPT_DpOT0_((v3 + 16), &this[3], &this[2].n128_i16[6], &v6);
  result = this[1];
  v5[1] = result;
  v5[2].n128_u64[0] = this[2].n128_u64[0];
  v5[2].n128_u32[2] = this[2].n128_u32[2];
  return result;
}

__int16 _ZN2RB4Heap7emplaceINS_11DisplayList23BackdropColorMatrixItemEJRKPKNS_6Filter11ColorMatrixERKDF16_RKNS_9BlendModeEEEEPT_DpOT0_@<H0>(RB::Heap *this@<X0>, uint64_t *a2@<X1>, __int16 *a3@<X2>, __int16 *a4@<X3>)
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
  result = *a3;
  v12 = *a4;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 40) = 0;
  *(v9 + 32) = 0;
  *(v9 + 44) = result;
  *(v9 + 46) = v12 & 0x3F | 0x800;
  *v9 = &unk_1F0A39350;
  *(v9 + 48) = v10;
  return result;
}

void RB::DisplayList::BackdropColorMatrixItem::print(RB::Filter::ColorMatrix **this, RB::SexpString *a2, uint64_t a3)
{
  RB::SexpString::push(a2, "backdrop-color-matrix");
  RB::DisplayList::Item::print(this, a2, a3);
  v6 = this[6];
  if (v6)
  {
    RB::Filter::ColorMatrix::print(v6, a2);
  }

  RB::SexpString::pop(a2);
}

uint64_t RB::DisplayList::CustomItem::CustomItem(uint64_t a1, void *a2, int a3, uint64_t a4, _OWORD *a5, char a6, float _S0)
{
  __asm { FCVT            H0, S0 }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = _H0;
  *(a1 + 46) = a6 & 0x3F | 0x80;
  *a1 = &unk_1F0A3D590;
  *(a1 + 48) = [a2 copy];
  *(a1 + 56) = a4;
  *(a1 + 64) = *a5;
  *(a1 + 80) = a3;
  return a1;
}

__n128 RB::DisplayList::CustomItem::copy(__n128 *this, RB::DisplayList::Builder *a2)
{
  v3 = *(a2 + 1);
  v7 = this[3].n128_u64[0];
  v6 = this[2].n128_u16[7] & 0x3F;
  v4 = _ZN2RB4Heap7emplaceINS_11DisplayList10CustomItemEJU13block_pointerFvP18RBMetalRenderStateERKjRKPKNS_15AffineTransformERKNS_4RectERKDF16_RKNS_9BlendModeEEEEPT_DpOT0_((v3 + 16), &v7, &this[5], &this[3].n128_i64[1], this[4].n128_u64, &this[2].n128_i16[6], &v6);
  result = this[1];
  v4[1] = result;
  v4[2].n128_u64[0] = this[2].n128_u64[0];
  v4[2].n128_u32[2] = this[2].n128_u32[2];
  v4[2].n128_u16[7] |= this[2].n128_u16[7] & 0x7000;
  return result;
}

unint64_t _ZN2RB4Heap7emplaceINS_11DisplayList10CustomItemEJU13block_pointerFvP18RBMetalRenderStateERKjRKPKNS_15AffineTransformERKNS_4RectERKDF16_RKNS_9BlendModeEEEEPT_DpOT0_(size_t *a1, void **a2, int *a3, uint64_t *a4, _OWORD *a5, __int16 *a6, __int16 *a7)
{
  v13 = (a1[2] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v13 + 88 > a1[3])
  {
    v13 = RB::Heap::alloc_slow(a1, 0x58uLL, 7);
  }

  else
  {
    a1[2] = v13 + 88;
  }

  v14 = *a2;
  v15 = *a3;
  v16 = *a4;
  v17 = *a6;
  v18 = *a7;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 40) = 0;
  *(v13 + 32) = 0;
  *(v13 + 44) = v17;
  *(v13 + 46) = v18 & 0x3F | 0x80;
  *v13 = &unk_1F0A3D590;
  *(v13 + 48) = [v14 copy];
  *(v13 + 56) = v16;
  *(v13 + 64) = *a5;
  *(v13 + 80) = v15;
  return v13;
}

float64x2_t *RB::DisplayList::CustomItem::apply_transform(float64x2_t **this, const RB::DisplayList::CachedTransform *a2, uint64_t a3)
{
  RB::DisplayList::Item::apply_transform(this, a2, a3);
  result = RB::DisplayList::CachedTransform::transform_ctm(a2, this[7]);
  this[7] = result;
  return result;
}

void RB::DisplayList::CustomItem::print(const RB::AffineTransform **this, RB::SexpString *a2, uint64_t a3)
{
  RB::SexpString::push(a2, "draw-custom");
  RB::DisplayList::Item::print(this, a2, a3);
  RB::SexpString::printf(a2, 0, "(rect %g %g %g %g)", COERCE_FLOAT(this[8]), COERCE_FLOAT(this[8] >> 32), COERCE_FLOAT(this[9]), COERCE_FLOAT(this[9] >> 32));
  RB::SexpString::print_ctm(a2, this[7]);

  RB::SexpString::pop(a2);
}

void RB::DisplayList::CustomItem::~CustomItem(id *this)
{
}

{

  JUMPOUT(0x19A8C09E0);
}

void RB::Resource::set_label(void *a1, const char *a2, atomic_uint *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x100uLL, "rb:%s.%d", a2, atomic_fetch_add_explicit(a3, 1u, memory_order_relaxed));
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:__str];
  [a1 setLabel:v4];
}

void RB::render_glyphs_coverage(uint64_t a1, float64x2_t *a2, float32x2_t *a3, unsigned int a4, float a5)
{
  v9 = &unk_1F0A37840;
  v10 = a5;
  v11 = a4;
  may_discard_shape = RB::may_discard_shape(a4, a3[6].u8[4]);
}

void RB::render_glyphs(uint64_t a1, float64x2_t *a2, float32x2_t *a3, float32x2_t *this, char a5, unsigned int a6, float a7)
{
  v16[0] = &unk_1F0A37900;
  v16[1] = this;
  v16[2] = a2;
  v17 = a5;
  v18 = a7;
  v19 = a6;
  if (a7 == 1.0)
  {
    is_opaque = RB::Fill::Gradient::is_opaque(this);
  }

  else
  {
    is_opaque = 0;
  }

  if (a3[2].i32[0] < 2u)
  {
    v14 = 0;
  }

  else
  {
    v13 = a6 != 2 && a6 != 24;
    if (a3[6].i8[5] & 1 | ((is_opaque & 1) == 0))
    {
      v14 = 1;
    }

    else
    {
      v14 = v13;
    }
  }

  may_discard_shape = RB::may_discard_shape(a6, a3[6].u8[4]);
}

void RB::render_glyphs(uint64_t a1, float64x2_t *a2, float32x2_t *this, uint64_t a4, char a5, int a6, float a7)
{
  v7[0] = &unk_1F0A3EC70;
  v7[1] = a4;
  v7[2] = a2;
  v8 = a5;
  v9 = a7;
  v10 = a6;
}

void RB::render_glyphs(uint64_t a1, float64x2_t *a2, float32x2_t *a3, uint64_t a4, uint64_t a5, char a6, unsigned int a7)
{
  v15[0] = &unk_1F0A378D0;
  v15[1] = a4;
  v15[2] = a5;
  v16 = a6;
  v17 = a7;
  if (a3[2].i32[0] < 2u)
  {
    v13 = 0;
  }

  else
  {
    v11 = a7 != 2 && a7 != 24;
    v12 = (a3[6].i8[5] & 1) != 0 || v11;
    if ((*(a4 + 81) & 0x10) != 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 1;
    }
  }

  may_discard_shape = RB::may_discard_shape(a7, a3[6].u8[4]);
}

void RB::render_glyphs(uint64_t a1, float64x2_t *a2, float32x2_t *a3, uint64_t a4, char a5, unsigned int a6, float a7)
{
  v12[0] = &unk_1F0A37930;
  v12[1] = a4;
  v12[2] = a2;
  v13 = a5;
  v14 = a7;
  v15 = a6;
  v10 = a3[2].i32[0] > 1u;
  may_discard_shape = RB::may_discard_shape(a6, a3[6].u8[4]);
}

int32x2_t *RB::render_glyphs_coverage(RB::RenderPass &,RB::AffineTransform const&,RB::Coverage::Glyphs const&,float,RB::BlendMode)::Renderer::draw_masks(uint64_t a1, int32x2_t *a2, unint64_t a3, uint64_t a4, RB::Buffer *a5, int32x2_t a6, int32x2_t a7)
{
  v8[0] = a6;
  v8[1] = a7;
  return RB::render_masks_coverage(a2, v8, a3, a4, a5, *(a1 + 12), *(a1 + 8));
}

int32x2_t *RB::render_glyphs_coverage(RB::RenderPass &,RB::AffineTransform const&,RB::Coverage::Glyphs const&,float,RB::BlendMode)::Renderer::draw_mask(uint64_t a1, uint64_t a2, float32x2_t a3, double a4)
{
  RB::Coverage::set_plane(&v21, a2, a3, a4);
  _S0 = *(a1 + 8);
  __asm { FCVT            H0, S0 }

  WORD6(v22) = _S0;
  RB::RenderFrame::alloc_buffer_region(*(*a2 + 16), 0x20, 4uLL, 0, &v23);
  v13 = v23;
  if (v23)
  {
    v14 = (*(v23 + 7) + v24.i64[0]);
    v15 = v22;
    *v14 = v21;
    v14[1] = v15;
  }

  else
  {
    v23 = 0;
    v24 = 0uLL;
  }

  *(a2 + 192) = RB::RenderFrame::buffer_id(*(*a2 + 16), v13);
  *(a2 + 196) = vmovn_s64(v24);
  v18 = 17;
  if (*(a2 + 132) == 2)
  {
    v18 = 131089;
  }

  v19 = (v18 | ((*(a1 + 12) & 0x3F) << 32));
  RB::Bounds::Bounds(&v23, a3, *&a4, v16, v17);
  return RB::RenderPass::draw_indexed_primitives(a2, v19, 4, **(*a2 + 16) + 136, 4uLL, 1uLL, v23, *v24.i8);
}

int32x2_t *RB::render_glyphs(RB::RenderPass &,RB::AffineTransform const&,RB::Coverage::Glyphs const&,RB::Fill::Gradient const&,BOOL,float,RB::BlendMode)::Renderer::draw_masks(uint64_t a1, int32x2_t *a2, unint64_t a3, uint64_t a4, RB::Buffer *a5, float32x4_t a6, int32x2_t a7)
{
  v8[0] = *a6.f32;
  v8[1] = a7;
  a6.i32[0] = *(a1 + 28);
  return RB::render_masks(a2, v8, a3, a4, a5, *(a1 + 16), *(a1 + 8), *(a1 + 24), a6, *(a1 + 32));
}

int32x2_t *RB::render_glyphs(RB::RenderPass &,RB::AffineTransform const&,RB::Coverage::Glyphs const&,RB::Fill::Gradient const&,BOOL,float,RB::BlendMode)::Renderer::draw_mask(uint64_t a1, uint64_t a2, float32x2_t a3, double a4)
{
  RB::Coverage::set_plane(&v22, a2, a3, a4);
  v8.i32[0] = *(a1 + 28);
  RB::Fill::Gradient::set_gradient(*(a1 + 8), (v23 + 12), a2, *(a1 + 16), v8);
  RB::RenderFrame::alloc_buffer_region(*(*a2 + 16), 0x54, 4uLL, 0, &v25);
  v9 = v25;
  if (v25)
  {
    v10 = *(v25 + 7) + v26.i64[0];
    v11 = v22;
    *(v10 + 16) = v23[0];
    v12 = v23[3];
    v13 = v23[2];
    v14 = v23[1];
    *(v10 + 80) = v24;
    *(v10 + 48) = v13;
    *(v10 + 64) = v12;
    *(v10 + 32) = v14;
    *v10 = v11;
  }

  else
  {
    v25 = 0;
    v26 = 0uLL;
  }

  *(a2 + 192) = RB::RenderFrame::buffer_id(*(*a2 + 16), v9);
  *(a2 + 196) = vmovn_s64(v26);
  if (*(a2 + 132) == 2)
  {
    v15 = 131091;
  }

  else
  {
    v15 = 19;
  }

  v21 = v15;
  RB::Fill::Gradient::set_fill_state(*(a1 + 8), &v21, a2, *(a1 + 28));
  v16 = HIDWORD(v21) & 0xFFFFFFC0 | *(a1 + 32) & 0x3F;
  LODWORD(v21) = v21 & 0xFFFEFFFF | ((*(a1 + 24) & 1) << 16);
  HIDWORD(v21) = v16;
  v17 = v21;
  RB::Bounds::Bounds(&v25, a3, *&a4, v18, v19);
  result = RB::RenderPass::draw_indexed_primitives(a2, v17, 4, **(*a2 + 16) + 136, 4uLL, 1uLL, v25, *v26.i8);
  *(a2 + 232) = 0;
  *(a2 + 228) = 0;
  return result;
}

void RB::render_glyphs(RB::RenderPass &,RB::AffineTransform const&,RB::Coverage::Glyphs const&,RB::Fill::MeshGradient const&,BOOL,float,RB::BlendMode)::Renderer::draw_mask(uint64_t a1, RB::RenderPass *a2, float32x2_t a3, float32x2_t a4, double a5, int32x2_t a6)
{
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 28);
  v11 = *(a1 + 32);
  RB::Bounds::Bounds(v12, a3, a4, a5, a6);
  RB::render_mesh_gradient(a2, v7, v8, 0, v9, v11, v12, v10);
}

int32x2_t *RB::render_glyphs(RB::RenderPass &,RB::AffineTransform const&,RB::Coverage::Glyphs const&,RB::Shader::ImageGlobals &,RB::Fill::ImageData const&,BOOL,RB::BlendMode)::Renderer::draw_masks(uint64_t a1, int32x2_t *a2, unint64_t a3, uint64_t a4, RB::Buffer *a5, int32x2_t a6, int32x2_t a7)
{
  v28[0] = a6;
  v28[1] = a7;
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = v8[1];
  v18 = *v8;
  v19 = v9;
  v10 = v8[4];
  v11 = v8[5];
  v12 = v8[3];
  v20 = v8[2];
  v21 = v12;
  v22 = v10;
  v23 = v11;
  v13 = v8[8];
  v14 = v8[9];
  v15 = v8[7];
  v24 = v8[6];
  v27 = v14;
  v26 = v13;
  v25 = v15;
  return RB::render_masks(a2, v28, a3, a4, a5, v17, v7, *(a1 + 24), *(a1 + 28));
}

int32x2_t *RB::render_glyphs(RB::RenderPass &,RB::AffineTransform const&,RB::Coverage::Glyphs const&,RB::Shader::ImageGlobals &,RB::Fill::ImageData const&,BOOL,RB::BlendMode)::Renderer::draw_mask(uint64_t a1, float32x2_t *a2, float32x2_t a3, double a4)
{
  v8 = *(a1 + 8);
  v9 = v8[1];
  v26[0] = *v8;
  v26[1] = v9;
  v10 = v8[4];
  v11 = v8[5];
  v12 = v8[3];
  v26[2] = v8[2];
  v26[3] = v12;
  v26[5] = v11;
  v26[4] = v10;
  v13 = v8[8];
  v14 = v8[9];
  v15 = v8[7];
  v26[6] = v8[6];
  v26[9] = v14;
  v26[8] = v13;
  v26[7] = v15;
  RB::Coverage::set_plane(v25, a2, a3, a4);
  if (a2[16].i32[1] == 2)
  {
    v16 = 131093;
  }

  else
  {
    v16 = 21;
  }

  v24 = v16;
  RB::RenderState::set_image(&v24, v26, a2[16].i8[0]);
  v17 = HIDWORD(v24) & 0xFFFFFFC0 | *(a1 + 28) & 0x3F;
  LODWORD(v24) = v24 & 0xFFFEFFFF | ((*(a1 + 24) & 1) << 16);
  HIDWORD(v24) = v17;
  RB::Fill::set_image_globals(a2, v25, 0xBC, 4uLL, &v24, v18);
  v19 = v24;
  RB::Bounds::Bounds(v23, a3, *&a4, v20, v21);
  return RB::RenderPass::draw_indexed_primitives(a2, v19, 4, **(*a2 + 16) + 136, 4uLL, 1uLL, v23[0], v23[1]);
}

__n128 RB::render_glyphs(RB::RenderPass &,RB::AffineTransform const&,RB::Coverage::Glyphs const&,RB::Shader::ImageGlobals &,RB::Fill::ImageData const&,BOOL,RB::BlendMode)::Renderer::draw_path(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = v2[1];
  v12 = *v2;
  v13 = v3;
  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[3];
  v14 = v2[2];
  v15 = v6;
  v16 = v4;
  v17 = v5;
  v7 = v2[8];
  v8 = v2[9];
  v9 = v2[7];
  v18 = v2[6];
  v21 = v8;
  v20 = v7;
  v19 = v9;
  RB::Path::Renderer::render(a2, &v11, *(a1 + 24), *(a1 + 28));
  return result;
}

void RB::render_glyphs(RB::RenderPass &,RB::AffineTransform const&,RB::Coverage::Glyphs const&,RB::Fill::Custom const&,BOOL,float,RB::BlendMode)::Renderer::draw_mask(uint64_t a1, uint64_t a2, float32x2_t a3, double a4)
{
  v8 = RB::Fill::Custom::function(*(a1 + 8), a2);
  if (v8)
  {
    v9 = v8;
    RB::RenderFrame::alloc_buffer_region(*(*a2 + 16), (*(v8 + 28) + 56), 4uLL, 0, &v18);
    if (v18)
    {
      v10 = *(v18 + 7) + v19.i64[0];
      RB::Coverage::set_plane(v10, a2, a3, a4);
      if (RB::Fill::Custom::set_custom(*(a1 + 8), (v10 + 28), v9, v10 + 56, a2, *(a1 + 16), *(a1 + 28)))
      {
        *(a2 + 192) = RB::RenderFrame::buffer_id(*(*a2 + 16), v18);
        *(a2 + 196) = vmovn_s64(v19);
        if (*(a2 + 132) == 2)
        {
          v11 = 131094;
        }

        else
        {
          v11 = 22;
        }

        v17 = v11;
        RB::Fill::Custom::set_fill_state(*(a1 + 8), &v17, v9, a2);
        v12 = HIDWORD(v17) & 0xFFFFFFC0 | *(a1 + 32) & 0x3F;
        LODWORD(v17) = v17 & 0xFFFEFFFF | ((*(a1 + 24) & 1) << 16);
        HIDWORD(v17) = v12;
        v13 = v17;
        RB::Bounds::Bounds(v16, a3, *&a4, v14, v15);
        RB::RenderPass::draw_indexed_primitives(a2, v13, 4, **(*a2 + 16) + 136, 4uLL, 1uLL, v16[0], v16[1]);
        RB::Fill::Custom::reset_custom(*(a1 + 8), a2);
      }
    }
  }
}

uint64_t RB::AlphaThresholdEffect::can_mix(float32x2_t *this, float32x2_t *a2)
{
  if (this[2].u8[6] != a2[2].u8[6])
  {
    return 0;
  }

  v4 = this->f32[1];
  v5 = v4 < INFINITY;
  if (v4 > INFINITY)
  {
    v5 = 1;
  }

  v6 = a2->f32[1];
  v7 = v6 < INFINITY;
  if (v6 > INFINITY)
  {
    v7 = 1;
  }

  if ((v5 ^ v7))
  {
    return 0;
  }

  LODWORD(result) = RB::Fill::Color::can_mix(&this[1], &a2[1]);
  v9 = result;
  v10 = vmvn_s8(vceq_f32(*this, *a2));
  v11 = vpmax_u32(v10, v10).u32[0];
  if ((result & 0xFE) != 0)
  {
    v9 = 2;
  }

  if (v11 >= 0)
  {
    return result;
  }

  else
  {
    return v9;
  }
}

void *RB::AlphaThresholdEffect::encode(RB::AlphaThresholdEffect *this, RB::Encoder *a2)
{
  if (COERCE_FLOAT(*this) == 0.0)
  {
    v4 = HIDWORD(*this);
  }

  else
  {
    v7 = *this;
    RB::ProtobufEncoder::encode_varint(a2, 0xDuLL);
    RB::ProtobufEncoder::encode_fixed32(a2, v7);
    v4 = *(this + 1);
  }

  if (*&v4 != INFINITY)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x15uLL);
    RB::ProtobufEncoder::encode_fixed32(a2, v4);
  }

  RB::ProtobufEncoder::encode_varint(a2, 0x1AuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::Fill::Color::encode((this + 8), a2);
  result = RB::ProtobufEncoder::end_length_delimited(a2);
  v6 = *(this + 22);
  if (v6 != 3)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x20uLL);

    return RB::ProtobufEncoder::encode_varint(a2, v6);
  }

  return result;
}

unint64_t RB::AlphaThresholdEffect::decode(RB::AlphaThresholdEffect *this, RB::Decoder *a2)
{
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v5 = result;
    do
    {
      v6 = v5 >> 3;
      if ((v5 >> 3) > 2)
      {
        if (v6 == 3)
        {
          if ((v5 & 7) == 2)
          {
            RB::ProtobufDecoder::begin_message(a2);
            RB::Fill::Color::decode((this + 8), a2);
            RB::ProtobufDecoder::end_message(a2);
          }

          else
          {
            *(a2 + 56) = 1;
            *a2 = *(a2 + 1);
          }

          goto LABEL_14;
        }

        if (v6 != 4)
        {
          goto LABEL_10;
        }

        *(this + 22) = RB::ProtobufDecoder::uint_field(a2, v5);
      }

      else
      {
        if (v6 == 1)
        {
          *this = RB::ProtobufDecoder::float_field(a2, v5);
          goto LABEL_14;
        }

        if (v6 != 2)
        {
LABEL_10:
          RB::ProtobufDecoder::skip_field(a2, v5);
          goto LABEL_14;
        }

        *(this + 1) = RB::ProtobufDecoder::float_field(a2, v5);
      }

LABEL_14:
      result = RB::ProtobufDecoder::next_field(a2);
      v5 = result;
    }

    while (result);
  }

  return result;
}

void RB::AlphaThresholdEffect::print(RB::AlphaThresholdEffect *this, RB::SexpString *a2)
{
  RB::SexpString::push(a2, "threshold-effect");
  if (*(this + 22) != 3)
  {
    RB::SexpString::printf(a2, 0, "#:component %d", *(this + 22));
  }

  v4 = COERCE_FLOAT(*this);
  if (*(this + 1) == INFINITY)
  {
    RB::SexpString::printf(a2, 1, "(alpha %g)", v4);
  }

  else
  {
    RB::SexpString::printf(a2, 1, "(alpha [%g %g])", v4);
  }

  RB::Fill::Color::print((this + 8), a2);

  RB::SexpString::pop(a2);
}

RB::AlphaGradientEffect *RB::AlphaGradientEffect::AlphaGradientEffect(RB::AlphaGradientEffect *this, const RB::AlphaGradientEffect *a2, RB::DisplayList::Contents *a3)
{
  *this = *a2;
  RB::Fill::Gradient::Gradient(this + 1, a2 + 1, 0, (a3 + 16));
  *(this + 72) = *(a2 + 72);
  return this;
}

double RB::AlphaGradientEffect::dod(RB::AlphaGradientEffect *this, float32x2_t *a2, double a3, double a4, double a5, double a6, float a7)
{
  *&result = RB::Fill::Gradient::sample_alpha((this + 8), COERCE_FLOAT(*this), a4, a5, a6, a7);
  if (*&result > 0.0)
  {
    result = 7.29112205e-304;
    *a2 = 0x100000001000000;
    a2[1] = vneg_f32(0x80000000800000);
  }

  return result;
}

uint64_t RB::AlphaGradientEffect::can_mix(RB::AlphaGradientEffect *this, const RB::AlphaGradientEffect *a2, const RB::AffineTransform *a3)
{
  if (*(this + 72) == *(a2 + 72))
  {
    return RB::Fill::Gradient::can_mix((this + 8), (a2 + 8), a3);
  }

  else
  {
    return 0;
  }
}

int32x2_t *RB::AlphaGradientEffect::render(int32x2_t *this, int a2, uint64_t a3, float32x2_t *a4, RB::Texture *a5, int a6, float64x2_t *a7, float32x2_t *a8, double a9, double a10, double a11, double a12, float a13, char a14, unsigned int a15)
{
  if (a5)
  {
    v15 = *&a10;
    v22 = this;
    v23 = &this[1];
    if (RB::Fill::Gradient::sample_alpha(&this[1], COERCE_FLOAT(*this), a10, a11, a12, a13) <= 0.0 && RB::may_discard_alpha(a15))
    {
      RB::Bounds::Bounds(&v46, *a4, a4[1], v24, v25);
    }

    else
    {
      v26 = *(a3 + 168);
      v27 = *(a3 + 176);
      v46 = v26;
      v47 = v27;
    }

    *v28.f32 = *v22;
    *&v31 = vsub_f32(vdup_lane_s32(*v22, 1), *v22).f32[0];
    v29 = 1.0 / *&v31;
    v30 = *&v31 == 0.0;
    LODWORD(v31) = 1232348160;
    if (!v30)
    {
      *&v31 = v29;
    }

    *(&v31 + 1) = -(v28.f32[0] * *&v31);
    *(v44 + 4) = v31;
    v28.f32[0] = v15;
    RB::Fill::Gradient::set_gradient_color(v23, v44 + 12, a3, v28);
    RB::RenderFrame::alloc_buffer_region(*(*a3 + 16), 0x64, 4uLL, 0, &v48);
    v32 = v48;
    if (v48)
    {
      v33 = *(v48 + 7) + v49.i64[0];
      v34 = v43[2];
      v35 = v43[0];
      *(v33 + 16) = v43[1];
      *(v33 + 32) = v34;
      v36 = v44[1];
      v37 = v44[0];
      v38 = v43[3];
      *(v33 + 96) = v45;
      *(v33 + 64) = v37;
      *(v33 + 80) = v36;
      *(v33 + 48) = v38;
      *v33 = v35;
    }

    else
    {
      v48 = 0;
      v49 = 0uLL;
    }

    *(a3 + 192) = RB::RenderFrame::buffer_id(*(*a3 + 16), v32);
    *(a3 + 196) = vmovn_s64(v49);
    if ((*(a5 + 77) & 8) != 0)
    {
      v39 = 8;
    }

    else
    {
      v39 = v22[9].i8[0] & 3 | 8;
    }

    if (*(a3 + 132) == 2)
    {
      v40 = 131108;
    }

    else
    {
      v40 = 36;
    }

    if (a14)
    {
      v41 = 0x10000;
    }

    else
    {
      v41 = 0;
    }

    LODWORD(v48) = v41 | (v39 << 6) | v40;
    HIDWORD(v48) = a15 & 0x3F;
    RB::Fill::Gradient::set_fill_state(v23, &v48, a3, v15);
    if (a6)
    {
      v42 = 2;
    }

    else
    {
      v42 = MTLPixelFormatA8Unorm;
    }

    RB::RenderPass::set_texture(a3, 0, a5, v42);
    this = RB::RenderPass::draw_indexed_primitives(a3, v48, 4, **(*a3 + 16) + 136, 4uLL, 1uLL, v46, v47);
    *(a3 + 236) = 0;
    *(a3 + 228) = 0;
    *(a3 + 244) = 0;
  }

  return this;
}

void sub_195DC12F8(_Unwind_Exception *a1)
{
  *(v1 + 240) = 0;
  *(v1 + 244) = 0;
  _Unwind_Resume(a1);
}

void *RB::AlphaGradientEffect::encode(RB::AlphaGradientEffect *this, RB::Encoder *a2)
{
  RB::ProtobufEncoder::encode_varint(a2, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::Fill::Gradient::encode((this + 8), a2);
  result = RB::ProtobufEncoder::end_length_delimited(a2);
  if (COERCE_FLOAT(*this) == 0.0)
  {
    v5 = HIDWORD(*this);
  }

  else
  {
    v7 = *this;
    RB::ProtobufEncoder::encode_varint(a2, 0x15uLL);
    result = RB::ProtobufEncoder::encode_fixed32(a2, v7);
    v5 = *(this + 1);
  }

  if (*&v5 != 1.0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x1DuLL);
    result = RB::ProtobufEncoder::encode_fixed32(a2, v5);
  }

  v6 = *(this + 72);
  if (v6 != 3)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x20uLL);

    return RB::ProtobufEncoder::encode_varint(a2, v6);
  }

  return result;
}

unint64_t RB::AlphaGradientEffect::decode(RB::AlphaGradientEffect *this, RB::Decoder *a2)
{
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v5 = result;
    do
    {
      v6 = v5 >> 3;
      if ((v5 >> 3) > 2)
      {
        if (v6 == 3)
        {
          *(this + 1) = RB::ProtobufDecoder::float_field(a2, v5);
          goto LABEL_14;
        }

        if (v6 != 4)
        {
LABEL_10:
          RB::ProtobufDecoder::skip_field(a2, v5);
          goto LABEL_14;
        }

        *(this + 72) = RB::ProtobufDecoder::uint_field(a2, v5);
      }

      else
      {
        if (v6 == 1)
        {
          if ((v5 & 7) == 2)
          {
            RB::ProtobufDecoder::begin_message(a2);
            RB::Fill::Gradient::decode((this + 8), a2);
            RB::ProtobufDecoder::end_message(a2);
          }

          else
          {
            *(a2 + 56) = 1;
            *a2 = *(a2 + 1);
          }

          goto LABEL_14;
        }

        if (v6 != 2)
        {
          goto LABEL_10;
        }

        *this = RB::ProtobufDecoder::float_field(a2, v5);
      }

LABEL_14:
      result = RB::ProtobufDecoder::next_field(a2);
      v5 = result;
    }

    while (result);
  }

  return result;
}

void RB::AlphaGradientEffect::print(RB::AlphaGradientEffect *this, RB::SexpString *a2)
{
  RB::SexpString::push(a2, "gradient-effect");
  if (*(this + 72) != 3)
  {
    RB::SexpString::printf(a2, 0, "#:component %d", *(this + 72));
  }

  RB::SexpString::printf(a2, 1, "(alpha [%g %g])", COERCE_FLOAT(*this), COERCE_FLOAT(HIDWORD(*this)));
  operator new();
}

void sub_195DC1684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a13)
  {
    free(a13);
  }

  v15 = v13[2] - 1;
  v13[2] = v15;
  if (!v15)
  {
    (*(*v13 + 8))(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_195DC1818(_Unwind_Exception *a1)
{
  if (*v3)
  {
    free(*v3);
  }

  MEMORY[0x19A8C09E0](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t RB::GlassHighlightEffect::can_mix(float32x2_t *this, float32x2_t *a2)
{
  if (this[6].u8[0] != a2[6].u8[0] || this[6].u8[1] != a2[6].u8[1])
  {
    return 0;
  }

  result = RB::Fill::Color::can_mix(this, a2);
  v5 = vmvn_s8(vceq_f32(this[2], a2[2]));
  if ((vpmax_u32(v5, v5).u32[0] & 0x80000000) != 0 || this[3].f32[0] != a2[3].f32[0] || this[3].f32[1] != a2[3].f32[1] || this[4].f32[0] != a2[4].f32[0] || this[4].f32[1] != a2[4].f32[1] || this[5].f32[0] != a2[5].f32[0] || this[5].f32[1] != a2[5].f32[1])
  {
    if ((result & 0xFE) != 0)
    {
      return 2;
    }

    else
    {
      return result;
    }
  }

  return result;
}

void RB::GlassHighlightEffect::mix(RB::GlassHighlightEffect *this, const RB::GlassHighlightEffect *a2, float32x4_t a3)
{
  v3 = vdupq_lane_s32(*a3.f32, 0).u64[0];
  *(this + 2) = vmla_f32(*(this + 16), v3, vsub_f32(*(a2 + 16), *(this + 16)));
  *(this + 24) = vmlaq_n_f32(*(this + 24), vsubq_f32(*(a2 + 24), *(this + 24)), a3.f32[0]);
  *(this + 5) = vmla_f32(*(this + 40), v3, vsub_f32(*(a2 + 40), *(this + 40)));
  RB::Fill::Color::mix(this, a2, 0, a3);
}

int32x2_t *RB::GlassHighlightEffect::render(int32x2_t *result, double a2, float a3, uint64_t a4, uint64_t a5, float32x2_t *a6, RB::Texture *a7, int a8, float64x2_t *a9, float32x2_t *a10, char a11, unsigned int a12)
{
  if (a7)
  {
    _S8 = a3;
    v19 = result;
    if (RB::may_discard_alpha(a12))
    {
      RB::Bounds::Bounds(&v67, *a6, a6[1], v20, v21);
    }

    else
    {
      v22 = *(a5 + 168);
      v23 = *(a5 + 176);
      v67 = v22;
      v68 = v23;
    }

    v24 = v19[2];
    v25 = vdup_lane_s32(v24, 0);
    v25.i32[0] = v19[3].i32[0];
    *_Q0.f32 = vrev64_s32(vsub_f32(v25, v24));
    *&v65[4] = _Q0.i64[0];
    __asm { FCVT            H0, S8 }

    v59 = v19->i16[0];
    v60 = *(v19->i32 + 2);
    v25.i16[0] = v19->i16[3];
    v61 = *v25.i16 * *_Q0.i16;
    v62 = v19[1].i32[0];
    v63 = v19[1].i16[2];
    _Q0.i32[0] = *(a5 + 124);
    RB::Fill::Color::prepare(&v59, *(a5 + 128), _Q0, *&v25, v30);
    *&v65[12] = v31;
    LODWORD(v31) = v19[4].i32[0];
    *&v65[20] = v19[3].i32[1];
    _S1 = v19[5].i32[1];
    __asm { FCVT            H1, S1 }

    *&v65[28] = _S1;
    v35 = __sincosf_stret(*&v31);
    _S1 = v35.__cosval;
    _S0 = v35.__sinval;
    __asm { FCVT            H0, S0 }

    *&v65[24] = -*&_S0;
    __asm { FCVT            H0, S1 }

    *&v65[26] = LOWORD(_S0);
    _S0 = cosf(*&v19[4].i32[1]);
    v37 = *v19[5].i32;
    if (_S0 == -1.0 && v37 == 1.0)
    {
      _S0 = _S0 + -0.01;
    }

    __asm { FCVT            H0, S0 }

    *&v65[30] = _H0;
    _S0 = (1.0 / v37) + -2.0;
    __asm { FCVT            H0, S0 }

    LOWORD(v66) = LOWORD(_S0);
    RB::RenderFrame::alloc_buffer_region(*(*a5 + 16), 0x64, 4uLL, 0, &v69);
    v41 = v69;
    if (v69)
    {
      v42 = *(v69 + 7) + v70.i64[0];
      v43 = v64[2];
      v44 = v64[0];
      *(v42 + 16) = v64[1];
      *(v42 + 32) = v43;
      v45 = *&v65[16];
      v46 = *v65;
      v47 = v64[3];
      *(v42 + 96) = v66;
      *(v42 + 64) = v46;
      *(v42 + 80) = v45;
      *(v42 + 48) = v47;
      *v42 = v44;
    }

    else
    {
      v69 = 0;
      v70 = 0uLL;
    }

    *(a5 + 192) = RB::RenderFrame::buffer_id(*(*a5 + 16), v41);
    *(a5 + 196) = vmovn_s64(v70);
    v48 = v19[6].i8[0] & 3;
    if ((*(a7 + 77) & 8) != 0)
    {
      v48 = 0;
    }

    v49 = v19[6].u8[1];
    v50 = v48 | (32 * (v19[6].i8[1] != 0));
    if (v19[6].i8[1])
    {
      v51 = v49 < 3;
      if (v49 == 4 || v49 == 2)
      {
        v53 = 128;
      }

      else
      {
        v53 = 0;
      }

      v50 |= v53 | (v51 << 6);
    }

    if (*(a5 + 132) == 2)
    {
      v54 = 131108;
    }

    else
    {
      v54 = 36;
    }

    v55 = (v50 << 6) & 0xFFFFF8FF;
    if (a11)
    {
      v56 = 66304;
    }

    else
    {
      v56 = 768;
    }

    v57 = v56 | v54 | v55;
    if (a8)
    {
      v58 = 2;
    }

    else
    {
      v58 = MTLPixelFormatA8Unorm;
    }

    RB::RenderPass::set_texture(a5, 0, a7, v58);
    result = RB::RenderPass::draw_indexed_primitives(a5, (v57 | ((a12 & 0x3F) << 32)), 4, **(*a5 + 16) + 136, 4uLL, 1uLL, v67, v68);
    *(a5 + 240) = 0;
    *(a5 + 244) = 0;
  }

  return result;
}