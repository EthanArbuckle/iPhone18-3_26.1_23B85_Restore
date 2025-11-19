void sub_195DCFBA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a29)
  {
    free(a29);
  }

  if (a40)
  {
    free(a40);
  }

  if (a51)
  {
    free(a51);
  }

  if (a70)
  {
    free(a70);
  }

  _Unwind_Resume(a1);
}

void RB::Fill::Gradient::attributes(float32x2_t *this, RB::XML::Element *a2)
{
  v2 = this[7].u8[0];
  if (v2 <= 1)
  {
    if (!this[7].i8[0])
    {
      v6 = this[3];
      v22 = &unk_1F0A38BF0;
      *v23 = vcvtq_f64_f32(v6);
      RB::XML::Element::set<RB::XML::Value::Vec2>();
    }

    if (v2 == 1)
    {
      v4 = this[3];
      v22 = &unk_1F0A38BF0;
      *v23 = vcvtq_f64_f32(v4);
      RB::XML::Element::set<RB::XML::Value::Vec2>();
    }
  }

  else
  {
    if (v2 == 2)
    {
      v5 = this[3];
      v22 = &unk_1F0A38BF0;
      *v23 = vcvtq_f64_f32(v5);
      RB::XML::Element::set<RB::XML::Value::Vec2>();
    }

    if (v2 == 4)
    {
      v3 = this[3];
      v22 = &unk_1F0A38BF0;
      *v23 = vcvtq_f64_f32(v3);
      RB::XML::Element::set<RB::XML::Value::Vec2>();
    }
  }

  v7 = this[2];
  if (v7)
  {
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[2];
    v11 = vandq_s8(vandq_s8(vceqq_f64(v9, xmmword_195E42770), vceqq_f64(*v7, xmmword_195E42760)), vceqzq_f64(v10));
    if ((vandq_s8(vdupq_laneq_s64(v11, 1), v11).u64[0] & 0x8000000000000000) == 0)
    {
      v22 = &unk_1F0A38DA8;
      *v23 = v8;
      v24 = v9;
      v25 = v10;
      RB::XML::Element::set<RB::XML::Value::AffineMatrix>();
    }
  }

  v12 = this[6].i32[1];
  v13 = (v12 & 7) - 1;
  if (v13 <= 2)
  {
    v14 = off_1E744CD70[v13];
    v22 = &unk_1F0A38D58;
    v23[0] = v14;
    RB::XML::Element::set<RB::XML::Value::ConstantString>();
  }

  if ((v12 & 0xF00) == 0x400)
  {
    v22 = &unk_1F0A38D58;
    v23[0] = "smooth";
    RB::XML::Element::set<RB::XML::Value::ConstantString>();
  }

  if (this[7].i8[2] == 1)
  {
    v15 = rb_color_space(this[7].u8[1] | 0x100u);
    v22 = &unk_1F0A3F9D8;
    LODWORD(v23[0]) = v15;
    RB::XML::Element::set<RB::XML::Value::ColorSpace>();
  }

  __asm { FCMP            H0, #0 }

  if (!_ZF)
  {
    __asm { FCVT            D0, H0 }

    v22 = &unk_1F0A38B28;
    v23[0] = _D0;
    RB::XML::Element::set<RB::XML::Value::Float>();
  }

  RB::XML::Value::Gradient::Gradient(&v22, this);
  RB::XML::Element::set<RB::XML::Value::Gradient>();
}

void sub_195DD015C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a11)
  {
    free(a11);
  }

  _Unwind_Resume(exception_object);
}

double RB::Fill::anonymous namespace::smooth_color_coefficients(double a1, float16x4_t a2)
{
  __asm { FMOV            V18.4S, #3.0 }

  *&result = vcvtq_f32_f16(a2).u64[0];
  return result;
}

float16x4_t _ZNSt3__127__memberwise_forward_assignB8nn200100INS_5tupleIJRN2RB12packed_half4ES4_S4_S4_EEENS1_IJDv4_fS6_S6_S6_EEEJS6_S6_S6_S6_EJLm0ELm1ELm2ELm3EEEEvRT_OT0_NS_13__tuple_typesIJDpT1_EEENS_15__tuple_indicesIJXspT2_EEEE(float16x4_t **a1, float32x4_t *a2)
{
  v2 = a1[1];
  **a1 = vcvt_f16_f32(*a2);
  *v2 = vcvt_f16_f32(a2[1]);
  v3 = a1[3];
  *a1[2] = vcvt_f16_f32(a2[2]);
  result = vcvt_f16_f32(a2[3]);
  *v3 = result;
  return result;
}

void *RB::vector<RB::Fill::Gradient::Stop,16ul,unsigned long>::reserve_slow(void *__dst, size_t a2)
{
  if (*(__dst + 34) + (*(__dst + 34) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 34) + (*(__dst + 34) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,16ul>(*(__dst + 32), __dst, 0x10uLL, __dst + 34, v3);
  *(__dst + 32) = result;
  return result;
}

void *_ZN2RB6vectorIDv4_DF16_Lm16EmE12reserve_slowEm(void *__dst, size_t a2)
{
  if (*(__dst + 18) + (*(__dst + 18) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 18) + (*(__dst + 18) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,8ul>(*(__dst + 16), __dst, 0x10uLL, __dst + 18, v3);
  *(__dst + 16) = result;
  return result;
}

void sub_195DD050C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<RB::XML::Value::Base>::shared_ptr[abi:nn200100]<RB::XML::Value::Font,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<RB::XML::Value::AffineMatrix *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::AffineMatrix>,std::allocator<RB::XML::Value::AffineMatrix>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19A8C09E0);
}

uint64_t std::__shared_ptr_pointer<RB::XML::Value::AffineMatrix *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::AffineMatrix>,std::allocator<RB::XML::Value::AffineMatrix>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_195DD05FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<RB::XML::Value::Base>::shared_ptr[abi:nn200100]<RB::XML::Value::Font,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<RB::XML::Value::ColorSpace *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::ColorSpace>,std::allocator<RB::XML::Value::ColorSpace>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19A8C09E0);
}

uint64_t std::__shared_ptr_pointer<RB::XML::Value::ColorSpace *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::ColorSpace>,std::allocator<RB::XML::Value::ColorSpace>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t RB::TextureCache::use_entry(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if ((*(a3 + 3) & 0x20) != 0)
  {
    v5 = a2;
  }

  else
  {
    v4 = a1 + 48;
    if (*(a1 + 64))
    {
      v4 = *(a1 + 64);
    }

    v5 = a2;
    *(v4 + 16 * a2 + 3) &= ~0x20u;
  }

  v6 = *(a1 + 64);
  if (!v6)
  {
    v6 = a1 + 48;
  }

  v7 = v6 + 16 * v5;
  v8 = *(v7 + 8);
  if (*(v8 + 77))
  {
    v17 = *(v8 + 24);
    if ((*(v17 + 77) & 2) != 0)
    {
      v17 = *(v17 + 24);
    }

    if (*(v17 + 44))
    {
      goto LABEL_34;
    }
  }

  else
  {
    v9 = *(v7 + 8);
    if ((*(v8 + 77) & 2) != 0)
    {
      v9 = *(v8 + 24);
    }

    if (*(v9 + 44) == 1 && RB::verbose_mode(0x80))
    {
      RB::TextureCache::use_entry(a1);
    }

    v10 = v8;
    if ((*(v8 + 77) & 2) != 0)
    {
      v10 = *(v8 + 24);
    }

    v11 = RB::Resource::set_volatile(v10, 0);
    if (v11)
    {
      if (v11 == 2)
      {
        if (RB::verbose_mode(0x80))
        {
          RB::TextureCache::use_entry(a1);
        }
      }

      else if (v11 == 1)
      {
        if (RB::verbose_mode(0x80))
        {
          RB::TextureCache::use_entry(a1);
        }

        v12 = *(a1 + 64);
        if (!v12)
        {
          v12 = a1 + 48;
        }

        v13 = v12 + 16 * v5;
        v14 = *(a1 + 96);
        v15 = v14 + 1;
        if (*(a1 + 100) < v14 + 1)
        {
          v28 = v13;
          RB::vector<RB::refcounted_ptr<RB::Texture>,1ul,unsigned int>::reserve_slow((a1 + 80), v15);
          v13 = v28;
          v14 = *(a1 + 96);
          v15 = v14 + 1;
        }

        v16 = *(a1 + 88);
        if (!v16)
        {
          v16 = a1 + 80;
        }

        *(v16 + 8 * v14) = *(v13 + 8);
        *(v13 + 8) = 0;
        *(a1 + 96) = v15;
      }

LABEL_34:
      v18 = *(a1 + 64);
      if (!v18)
      {
        v18 = a1 + 48;
      }

      v19 = (v18 + 16 * v5);
      v20 = (v18 + 16 * (*(a1 + 72) - 1));
      v21 = *v19;
      *v19 = *v20;
      *v20 = v21;
      v22 = *(v19 + 1);
      *(v19 + 1) = *(v20 + 1);
      *(v20 + 1) = v22;
      v23 = *(a1 + 72) - 1;
      *(a1 + 72) = v23;
      v24 = *(a1 + 64);
      if (!v24)
      {
        v24 = a1 + 48;
      }

      v25 = *(v24 + 16 * v23 + 8);
      if (v25)
      {
        v26 = v25[2] - 1;
        v25[2] = v26;
        if (!v26)
        {
          (*(*v25 + 8))(v25);
        }
      }

      return 0;
    }
  }

  return v8;
}

_DWORD **RB::refcounted_ptr<RB::Buffer>::operator=(_DWORD **a1, _DWORD *a2)
{
  v3 = *a1;
  if (v3 != a2)
  {
    if (v3)
    {
      v5 = v3[2] - 1;
      v3[2] = v5;
      if (!v5)
      {
        (*(*v3 + 8))(v3);
      }
    }

    if (a2)
    {
      ++a2[2];
    }

    *a1 = a2;
  }

  return a1;
}

uint64_t RB::TextureCache::prepare(int32x2_t *a1, uint64_t *a2, __IOSurface *a3, unsigned __int8 *a4)
{
  if (RB::TextureCache::prepare_from_cache(a1, a2, a4))
  {
    return 1;
  }

  return RB::TextureCache::prepare_from_iosurface(a1, a2, a3, a4, 0, 0);
}

void RB::TextureCache::invalidate_contents(RB::TextureCache *this)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = *(this + 18);
  if (v1)
  {
    v3 = 0;
    v4 = this + 48;
    do
    {
      if (*(this + 8))
      {
        v5 = *(this + 8);
      }

      else
      {
        v5 = v4;
      }

      v6 = &v5[16 * v3];
      if ((v6[3] & 0x40) != 0)
      {
        ++v3;
      }

      else
      {
        v7 = *(v6 + 1);
        v8 = &v5[16 * v1 - 16];
        v9 = *v6;
        *v6 = *v8;
        *v8 = v9;
        *(v6 + 1) = *(v8 + 1);
        *(v8 + 1) = v7;
        v10 = *(this + 18) - 1;
        *(this + 18) = v10;
        v11 = *(this + 8);
        if (!v11)
        {
          v11 = v4;
        }

        v12 = *&v11[16 * v10 + 8];
        if (v12)
        {
          v13 = v12[2] - 1;
          v12[2] = v13;
          if (!v13)
          {
            (*(*v12 + 8))(v12);
          }
        }

        v14 = RB::verbose_mode(0x80);
        if (v14)
        {
          v15 = RB::misc_log(v14);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = 134218240;
            v17 = this;
            v18 = 2048;
            v19 = v7;
            _os_log_impl(&dword_195CE8000, v15, OS_LOG_TYPE_INFO, "%p: deleted %p\n", buf, 0x16u);
          }
        }
      }

      v1 = *(this + 18);
    }

    while (v3 < v1);
  }
}

void *RB::vector<RB::refcounted_ptr<RB::Texture>,1ul,unsigned int>::reserve_slow(void *__dst, unsigned int a2)
{
  if (*(__dst + 5) + (*(__dst + 5) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 5) + (*(__dst + 5) >> 1);
  }

  result = RB::details::realloc_vector<unsigned int,8ul>(*(__dst + 1), __dst, 1u, __dst + 5, v3);
  *(__dst + 1) = result;
  return result;
}

BOOL OUTLINED_FUNCTION_2_2(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

RB::Symbol::Animation::Timing *RB::Symbol::Animation::Timing::Timing(RB::Symbol::Animation::Timing *this, const RB::Animation *a2)
{
  *(this + 3) = 0;
  *(this + 4) = 0x600000000;
  if (*(a2 + 3))
  {
    v3 = *(a2 + 3);
  }

  else
  {
    v3 = a2;
  }

  v4 = *(a2 + 8);
  v5 = v4;
  if (v4 >= 7)
  {
    RB::vector<RB::Animation::TermOrArg,6ul,unsigned int>::reserve_slow(this, v4);
    v6 = *(this + 3);
    v7 = *(this + 8);
  }

  else
  {
    v6 = 0;
    if (!v4)
    {
      v10 = 0;
      goto LABEL_13;
    }

    v7 = 0;
  }

  if (!v6)
  {
    v6 = this;
  }

  v8 = (v6 + 4 * v7);
  do
  {
    v9 = *v3;
    v3 = (v3 + 4);
    *v8++ = v9;
    --v5;
  }

  while (v5);
  v10 = *(this + 8);
  v6 = *(this + 3);
LABEL_13:
  v11 = v10 + v4;
  *(this + 8) = v11;
  if (v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = this;
  }

  *(this + 10) = RB::Animation::active_duration(v12, v11);
  if (*(this + 3))
  {
    v13 = *(this + 3);
  }

  else
  {
    v13 = this;
  }

  RB::Animation::prepare(v13, *(this + 8), this + 11);
  return this;
}

void sub_195DD0C84(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    free(v3);
  }

  _Unwind_Resume(exception_object);
}

void RB::Symbol::Animation::cancel(RB::Symbol::Animation *this, float32x2_t a2, const RB::Symbol::Model *a3)
{
  v3 = *(this + 3);
  if ((v3 & 0x1000) == 0)
  {
    if ((v3 & 0xC00) != 0)
    {
      v5 = *&a2;
      a2.i32[0] = *(this + 6);
      v6 = vrecpe_f32(a2);
      v7 = vmul_f32(vrecps_f32(a2, v6), v6);
      v21 = vmul_f32(v7, vrecps_f32(a2, v7)).f32[0];
      RB::Symbol::Animation::local_duration(this, a3);
      v10 = v9 * v21;
      v11 = 0.0;
      if (*(this + 7) > 1.0)
      {
        v11 = *(this + 8);
      }

      v12 = v11 + v10;
      v13 = v5 - *(this + 6);
      v3 = *(this + 3);
      if ((v3 & 0x200) != 0)
      {
        v20 = v12;
        v14 = RB::Symbol::Animation::intro_duration(this, v8);
        v12 = v20;
        v13 = v13 - (v14 * v21);
      }

      v15 = 0.0;
      if (v12 > 0.0)
      {
        v16 = v12;
        v17 = vrecpe_f32(LODWORD(v12));
        v18 = vmul_f32(vrecps_f32(LODWORD(v16), v17), v17);
        v15 = v13 * vmul_f32(v18, vrecps_f32(LODWORD(v16), v18)).f32[0];
      }

      v19 = ceil(v15);
      *(this + 7) = v19;
    }

    *(this + 3) = v3 | 0x1000;
  }
}

float RB::Symbol::Animation::intro_duration(RB::Symbol::Animation *this, const RB::Symbol::Model *a2)
{
  v2 = *(this + 1);
  if (v2 <= 9)
  {
    if (v2 == 1)
    {
      return 0.33333;
    }

    if (v2 == 3)
    {
      v3 = (*(this + 12) & 0x20) == 0;
      result = 0.43333;
      goto LABEL_11;
    }

    return 0.0;
  }

  if (v2 == 10)
  {
    v3 = (*(this + 12) & 0x20) == 0;
    result = 0.33333;
  }

  else
  {
    if (v2 != 11)
    {
      return 0.0;
    }

    v3 = (*(this + 12) & 0x20) == 0;
    result = 2.5;
  }

LABEL_11:
  if (v3)
  {
    return 0.0;
  }

  return result;
}

void RB::Symbol::Animation::send_completion(RB::Symbol::Animation *this, char a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    *(this + 8) = 0;
    v4 = *this;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3321888768;
    v5[2] = ___ZN2RB6Symbol9Animation15send_completionEb_block_invoke;
    v5[3] = &__block_descriptor_45_e8_32c41_ZTSN2RB8objc_ptrIU13block_pointerFvbjEEE_e5_v8__0l;
    v6 = v2;
    v8 = a2;
    v7 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

id __copy_helper_block_e8_32c41_ZTSN2RB8objc_ptrIU13block_pointerFvbjEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

double RB::Symbol::Animation::begin_time_after(RB::Symbol::Animation *this, double a2, const RB::Symbol::Model *a3, double a4, double a5)
{
  if ((*(this + 6) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return INFINITY;
  }

  LODWORD(a5) = *(this + 6);
  v8 = vrecpe_f32(*&a5);
  v9 = vmul_f32(vrecps_f32(*&a5, v8), v8);
  LODWORD(a5) = vmul_f32(v9, vrecps_f32(*&a5, v9)).u32[0];
  v10 = a2 - *(this + 6);
  v16 = *&a5;
  if ((*(this + 13) & 2) != 0)
  {
    v10 = v10 - (RB::Symbol::Animation::intro_duration(this, a3) * *&a5);
  }

  RB::Symbol::Animation::local_duration(this, a3);
  v13 = v12 * v16;
  v14 = 0.0;
  if (*(this + 7) > 1.0)
  {
    v14 = *(this + 8);
  }

  v5 = *(this + 6) + ceil(v10 / (v14 + v13)) * (v14 + v13);
  if ((*(this + 13) & 4) != 0)
  {
    return v5 + (RB::Symbol::Animation::outro_duration(this, v11) * v16);
  }

  return v5;
}

float RB::Symbol::Animation::outro_duration(RB::Symbol::Animation *this, const RB::Symbol::Model *a2)
{
  v2 = *(this + 1);
  if (v2 <= 9)
  {
    if (v2 == 1)
    {
      return 0.33333;
    }

    if (v2 == 3)
    {
      v3 = (*(this + 12) & 0x20) == 0;
      result = 0.26667;
      goto LABEL_11;
    }

    return 0.0;
  }

  if (v2 == 10)
  {
    v3 = (*(this + 12) & 0x20) == 0;
    result = 0.41667;
  }

  else
  {
    if (v2 != 11)
    {
      return 0.0;
    }

    v3 = (*(this + 12) & 0x20) == 0;
    result = 2.5;
  }

LABEL_11:
  if (v3)
  {
    return 0.0;
  }

  return result;
}

float RB::Symbol::Animation::layer_delay(RB::Symbol::Animation *this, const RB::Symbol::Model *a2, const RB::Symbol::Glyph::Layer *a3)
{
  v4 = *(this + 1);
  if (v4 == 10 || v4 == 3)
  {
    v7 = *(RB::Symbol::Model::glyph_info(a2) + 472);
    if (v7 >= 5)
    {
      *&v12 = v7 + -1.0;
      v13 = vrecpe_f32(v12);
      v14 = vmul_f32(vrecps_f32(v12, v13), v13);
      v8 = 0.15 * vmul_f32(v14, vrecps_f32(v12, v14)).f32[0];
    }

    else
    {
      v8 = 0.05;
    }

    v15 = *(a3 + 18);
    if (*(this + 1) == 3)
    {
      v16 = v7 + ~v15;
      if (*(this + 3) < 0)
      {
        v15 = v16;
      }
    }

    v11 = v15;
    return v8 * v11;
  }

  result = 0.0;
  if (v4 == 1 && *(a3 + 22) != -1)
  {
    v10 = *(RB::Symbol::Model::glyph_info(a2) + 468);
    if (v10 > 3)
    {
      *&v17 = ((v10 * 0.083333) + 0.33333) + ((2 * v10 - 8) * 0.016667);
      v18 = vrecpe_f32(v17);
      v19 = vmul_f32(vrecps_f32(v17, v18), v18);
      return (0.11111 * *(a3 + 22)) * vmul_f32(v19, vrecps_f32(v17, v19)).f32[0];
    }

    v8 = *(a3 + 22);
    v11 = 0.33333;
    return v8 * v11;
  }

  return result;
}

void RB::Symbol::Animation::infer_replace_subtype(RB::Symbol::Animation *this, const RB::Symbol::Model *a2, const RB::Symbol::Model *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  *(this + 3) &= 0xF87FFFFF;
  v5 = RB::Symbol::Model::glyph_info(a2);
  v6 = RB::Symbol::Model::glyph_info(a3);
  if (*(v5 + 32) != *(v6 + 32))
  {
    return;
  }

  v7 = v6;
  if (*(v5 + 36) != *(v6 + 36))
  {
    return;
  }

  if (*(v5 + 24) == *(v6 + 24) && *(v5 + 40) == *(v6 + 40))
  {
    v8 = *(v6 + 476) | *(v5 + 476);
    v9 = (v8 >> 1) & 3;
    if (v9)
    {
      v10 = *(this + 3);
      if ((v8 & 2) != 0 && (v10 & 0x20000000) != 0)
      {
        v44 = 0;
        v45 = 0x400000000;
        v41 = 0;
        v42 = 0x400000000;
        v38 = 0;
        v39 = 0x400000000;
        v35 = 0;
        v36 = 0x400000000;
        RB::Symbol::Animation::infer_replace_subtype(RB::Symbol::Model const&,RB::Symbol::Model const&)::$_1::operator()(v5, 2, v40, __dst);
        RB::Symbol::Animation::infer_replace_subtype(RB::Symbol::Model const&,RB::Symbol::Model const&)::$_1::operator()(v7, 2, v34, v37);
        if (v41)
        {
          v11 = v41;
        }

        else
        {
          v11 = v40;
        }

        RB::Symbol::tags_subtract(__dst, v11, v42);
        if (v35)
        {
          v12 = v35;
        }

        else
        {
          v12 = v34;
        }

        RB::Symbol::tags_subtract(v37, v12, v36);
        if (v45 && RB::vector<RB::Symbol::Tag,4ul,unsigned int>::operator==(__dst, v37))
        {
          if (v42)
          {
            if (!v36)
            {
              v13 = 0x1000000;
LABEL_100:
              *(this + 3) |= v13;
              if (v35)
              {
                free(v35);
              }

              if (v38)
              {
                free(v38);
              }

              if (v41)
              {
                free(v41);
              }

              if (v44)
              {
                free(v44);
              }

              return;
            }
          }

          else if (v36)
          {
            v13 = 0x800000;
            goto LABEL_100;
          }
        }

        if (v35)
        {
          free(v35);
        }

        if (v38)
        {
          free(v38);
        }

        if (v41)
        {
          free(v41);
        }

        if (v44)
        {
          free(v44);
        }

        v10 = *(this + 3);
      }

      if (v9 != 1 && (v10 & 0x10000000) != 0)
      {
        v44 = 0;
        v45 = 0x400000000;
        v41 = 0;
        v42 = 0x400000000;
        v38 = 0;
        v39 = 0x400000000;
        v35 = 0;
        v36 = 0x400000000;
        RB::Symbol::Animation::infer_replace_subtype(RB::Symbol::Model const&,RB::Symbol::Model const&)::$_1::operator()(v5, 4, v40, __dst);
        RB::Symbol::Animation::infer_replace_subtype(RB::Symbol::Model const&,RB::Symbol::Model const&)::$_1::operator()(v7, 4, v34, v37);
        if (v41)
        {
          v14 = v41;
        }

        else
        {
          v14 = v40;
        }

        RB::Symbol::tags_subtract(__dst, v14, v42);
        if (v35)
        {
          v15 = v35;
        }

        else
        {
          v15 = v34;
        }

        RB::Symbol::tags_subtract(v37, v15, v36);
        if (v45 && RB::vector<RB::Symbol::Tag,4ul,unsigned int>::operator==(__dst, v37))
        {
          if (v42)
          {
            if (!v36)
            {
              v13 = 0x2000000;
              goto LABEL_100;
            }

            if (!RB::vector<RB::Symbol::Tag,4ul,unsigned int>::operator==(v40, v34))
            {
              v13 = 41943040;
              goto LABEL_100;
            }
          }

          else if (v36)
          {
            v13 = 25165824;
            goto LABEL_100;
          }
        }

        if (v35)
        {
          free(v35);
        }

        if (v38)
        {
          free(v38);
        }

        if (v41)
        {
          free(v41);
        }

        if (v44)
        {
          free(v44);
        }
      }
    }
  }

  if ((*(this + 15) & 8) == 0)
  {
    return;
  }

  v16 = *(v5 + 476);
  if ((v16 & 0x18) == 0 && (*(v7 + 476) & 0x18) == 0)
  {
    return;
  }

  if ((v16 & 8) == 0 || (*(v7 + 476) & 8) == 0)
  {
    goto LABEL_94;
  }

  if (*(v5 + 448))
  {
    v17 = *(v5 + 448);
  }

  else
  {
    v17 = v5 + 112;
  }

  v18 = *(v5 + 456);
  if (!v18)
  {
    goto LABEL_93;
  }

  v19 = 0;
  v20 = 0;
  v33 = v17 + 112 * v18;
  do
  {
    if ((*(v17 + 104) & 8) != 0)
    {
      v21 = *(v7 + 448);
      if (!v21)
      {
        v21 = v7 + 112;
      }

      v22 = *(v7 + 456);
      if (v22)
      {
        v23 = (v21 + 104);
        v24 = 112 * v22;
        v25 = v23;
        while (1)
        {
          v26 = *v25;
          v25 += 112;
          if ((v26 & 8) != 0)
          {
            break;
          }

LABEL_87:
          v23 = v25;
          v24 -= 112;
          if (!v24)
          {
            goto LABEL_88;
          }
        }

        v44 = 0;
        v45 = 0x400000000;
        if (*(v17 + 40))
        {
          v27 = *(v17 + 40);
        }

        else
        {
          v27 = v17 + 24;
        }

        if (*(v23 - 8))
        {
          v28 = *(v23 - 8);
        }

        else
        {
          v28 = (v23 - 80);
        }

        RB::Symbol::tags_intersect(__dst, v27, *(v17 + 48), v28, *(v23 - 14));
        v29 = v45 > 1;
        if (v20)
        {
          v20 = 1;
          v30 = v44;
          if (!v44)
          {
            goto LABEL_86;
          }
        }

        else
        {
          v30 = v44;
          if (v45 == 1)
          {
            v31 = __dst;
            if (v44)
            {
              v31 = v44;
            }

            v20 = *v31 - 5 < 0xFFFFFFFE;
            if (!v44)
            {
              goto LABEL_86;
            }
          }

          else
          {
            v20 = 0;
            if (!v44)
            {
LABEL_86:
              v19 |= v29;
              goto LABEL_87;
            }
          }
        }

        free(v30);
        goto LABEL_86;
      }
    }

LABEL_88:
    v17 += 112;
  }

  while (v17 != v33);
  if (v19)
  {
    v32 = *(this + 3) | 0x4000000;
    goto LABEL_97;
  }

  if (v20)
  {
    v32 = *(this + 3) | 0x3800000;
    goto LABEL_97;
  }

LABEL_93:
  v16 = *(v5 + 476);
LABEL_94:
  if ((v16 & 0x10) != 0 || (*(v7 + 476) & 0x10) != 0)
  {
    v32 = *(this + 3) | 0x3000000;
LABEL_97:
    *(this + 3) = v32;
  }
}

void sub_195DD16F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  if (a13)
  {
    free(a13);
  }

  if (a17)
  {
    free(a17);
  }

  if (a21)
  {
    free(a21);
  }

  if (a25)
  {
    free(a25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RB::Heap::emplace<RB::Symbol::Presentation::Interpolant>(RB::Heap *this)
{
  v2 = *(this + 3);
  result = (*(this + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (result + 20 > v2)
  {
    result = RB::Heap::alloc_slow(this, 0x14uLL, 3);
  }

  else
  {
    *(this + 2) = result + 20;
  }

  *result = 0;
  *(result + 8) = 0;
  *(result + 4) = 1065353216;
  *(result + 8) = 1;
  *(result + 16) = 0;
  return result;
}

void RB::Symbol::Animation::draw_timing_groups(_DWORD *a1, RB::Symbol::Glyph *this, int a3, int a4, __int16 a5, int a6, double a7)
{
  v8 = *&a7;
  v12 = *(this + 118);
  if (v12)
  {
    v13 = a1;
    do
    {
      *(v13 + 7) = 0;
      *v13 = 0;
      v13 += 3;
      --v12;
    }

    while (v12);
  }

  if (*(this + 56))
  {
    v14 = *(this + 56);
  }

  else
  {
    v14 = this + 112;
  }

  v15 = *(this + 114);
  if (v15)
  {
    v16 = a5 & 0x3FF;
    v17 = 112 * v15;
    do
    {
      v18 = *(v14 + 26);
      if ((v16 & v18) == a6)
      {
        v19 = &a1[3 * *(v14 + 18)];
        if ((v18 & 0x10) != 0)
        {
          *&a7 = RB::Symbol::Glyph::layer_draw_duration(this, v14, *&a7);
          if (v19[1] >= *&a7)
          {
            *&a7 = v19[1];
          }

          v19[1] = *&a7;
          *(v19 + 8) = 1;
        }

        else
        {
          *&a7 = v19[1];
          if (*&a7 < v8)
          {
            *&a7 = v8;
          }

          v19[1] = *&a7;
          *(v19 + 9) = 1;
        }

        if (*(v19 + 10))
        {
          LOBYTE(v20) = 1;
        }

        else
        {
          v20 = (v14[108] >> 1) & 1;
        }

        *(v19 + 10) = v20;
      }

      v14 += 112;
      v17 -= 112;
    }

    while (v17);
  }

  if ((a4 & 0x10) != 0)
  {
    v21 = 0.38;
    if (a3)
    {
      v21 = 0.18;
    }

    if (a4 < 0)
    {
      v21 = 1.0;
    }

    v22 = *(this + 118);
    if (((a3 ^ 1) & (a4 >> 30)) == (*(this + 480) & 8) >> 3)
    {
      if (v22 >= 2)
      {
        v27 = *a1;
        v26 = (a1 + 3);
        v28 = v27;
        v29 = v22 - 1;
        do
        {
          v28 = v28 + (*(v26 - 2) * v21);
          *v26 = v28;
          v26 += 3;
          --v29;
        }

        while (v29);
      }
    }

    else
    {
      v23 = (v22 - 2);
      if (v22 - 2 >= 0)
      {
        v24 = v23 + 1;
        v25 = &a1[3 * v23 + 4];
        do
        {
          *(v25 - 4) = *(v25 - 1) + (*v25 * v21);
          v25 -= 3;
          --v24;
        }

        while (v24);
      }
    }
  }
}

uint64_t RB::Symbol::Animation::pulse_keyframes(uint64_t a1, uint64_t a2, RB::Symbol::KeyframeStorage *this)
{
  v5 = 2097164;
  if (*(a2 + 24) == 1)
  {
    RB::Symbol::KeyframeStorage::clear(this);
  }

  else
  {
    v6 = *(a1 + 12);
    RB::Symbol::KeyframeStorage::clear(this);
    if ((v6 & 0x10) != 0)
    {
      v5 = 2099244;
    }

    else
    {
      v5 = 2097164;
    }
  }

  v9 = v5;
  v10 = 0;
  v11 = (2 * *(this + 194)) | 1;
  RB::Symbol::KeyframeStorage::push_keyframes(this, &v9);
  if (*(a1 + 12) < 0)
  {
    v7 = 0.5;
  }

  else
  {
    v7 = 1.0;
  }

  RB::Symbol::KeyframeStorage::push_value(this, 1, 1.0, v7);
  RB::Symbol::KeyframeStorage::push_value(this, 1, 0.0, v7);
  RB::Symbol::KeyframeStorage::push_value(this, 1.0);
  return RB::Symbol::KeyframeStorage::commit(this);
}

uint64_t RB::Symbol::Animation::breathe_keyframes(uint64_t a1, uint64_t a2, RB::Symbol::KeyframeStorage *this)
{
  RB::Symbol::KeyframeStorage::clear(this);
  v6 = *(a1 + 12) & 0x10;
  v7 = *(a2 + 8);
  if (!v6)
  {
    v7 = 1;
  }

  if (v7 >= 2)
  {
    if ((0.25 / (v7 - 1)) <= 0.16667)
    {
      v8 = 0.25 / (v7 - 1);
    }

    else
    {
      v8 = 0.16667;
    }
  }

  else
  {
    v8 = 0.0;
    if (!v7)
    {
      return RB::Symbol::KeyframeStorage::commit(this);
    }
  }

  v9 = 0;
  v10 = -v7;
  v11 = v7 - 1;
  do
  {
    v12 = 3.0 - ((v8 * v9) + (v8 * v11));
    if ((*(a1 + 12) & 0x80000000) != 0)
    {
      v14 = v12 * 0.5;
    }

    else
    {
      if ((v6 == 0) | *(a2 + 24) & 1)
      {
        v13 = 12;
      }

      else
      {
        v13 = 2092;
      }

      v16 = v13 | (v6 << 21) | 0x200000;
      v17 = v9;
      v18 = v8 * v9;
      v19 = (2 * *(this + 194)) | 1;
      RB::Symbol::KeyframeStorage::push_keyframes(this, &v16);
      v14 = v12 * 0.5;
      RB::Symbol::KeyframeStorage::push_value(this, 1, 1.0, v14);
      RB::Symbol::KeyframeStorage::push_value(this, 1, 0.0, v14);
      RB::Symbol::KeyframeStorage::push_value(this, 1.0);
    }

    v16 = ((v6 & 0x3FF) << 21) | 2;
    v17 = v9;
    v18 = v8 * v9;
    v19 = (2 * *(this + 194)) | 1;
    RB::Symbol::KeyframeStorage::push_keyframes(this, &v16);
    RB::Symbol::KeyframeStorage::push_value(this, 2, 1.0, v14);
    RB::Symbol::KeyframeStorage::push_value(this, 2, 1.2, v14);
    RB::Symbol::KeyframeStorage::push_value(this, 1.0);
    --v11;
    ++v9;
  }

  while (v10 + v9);
  return RB::Symbol::KeyframeStorage::commit(this);
}

uint64_t RB::Symbol::Animation::variable_value_keyframes(int a1, uint64_t a2, RB::Symbol::KeyframeStorage *this)
{
  if (*(a2 + 26))
  {
    v4 = 16;
  }

  else
  {
    v4 = 32;
  }

  RB::Symbol::KeyframeStorage::clear(this);
  v6 = (v4 << 15) | (((v4 >> 4) & 3) << 9) | 0xB;
  v7 = 0;
  v8 = &RB::Symbol::Animation::variable_value_keyframes(RB::Symbol::Animation::KeyframesArgs const&,RB::Symbol::KeyframeStorage &)const::alpha_values;
  RB::Symbol::KeyframeStorage::push_keyframes(this, &v6);
  return RB::Symbol::KeyframeStorage::commit(this);
}

uint64_t RB::Symbol::Animation::vc_intro_outro_keyframes(int a1, int a2, RB::Symbol::KeyframeStorage *this, int a4)
{
  RB::Symbol::KeyframeStorage::clear(this);
  v9 = 1049610;
  v10 = 0;
  v11 = (2 * *(this + 194)) | 1;
  RB::Symbol::KeyframeStorage::push_keyframes(this, &v9);
  if (a4)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  if (a4)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 1.0;
  }

  RB::Symbol::KeyframeStorage::push_value(this, 1, v6, 0.33333);
  RB::Symbol::KeyframeStorage::push_value(this, v7);
  return RB::Symbol::KeyframeStorage::commit(this);
}

uint64_t RB::Symbol::Animation::vc_cumulative_keyframes(uint64_t a1, _DWORD *a2, RB::Symbol::KeyframeStorage *this, RB::Symbol::Model *a4, float a5)
{
  v6 = a2[5];
  v7 = 0.0;
  if ((*(a1 + 15) & 0x20) == 0)
  {
    if (*a2 == 3)
    {
      v7 = RB::Symbol::Model::alpha(a4, 2uLL, a5);
    }

    else
    {
      v7 = 0.3;
    }
  }

  RB::Symbol::KeyframeStorage::clear(this);
  v8 = v6 - 1;
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v10 = 0.66667;
    }

    else
    {
      v10 = 1.0;
    }

    v11 = 0.33333;
    if (v6 >= 4)
    {
      v12 = vrecpe_f32(COERCE_UNSIGNED_INT(v8));
      v13 = vmul_f32(vrecps_f32(COERCE_UNSIGNED_INT(v8), v12), v12);
      v11 = 0.66667 * vmul_f32(v13, vrecps_f32(COERCE_UNSIGNED_INT(v8), v13)).f32[0];
    }

    v14 = 0;
    do
    {
      v15 = v11 * v14;
      v16 = v10 - v15;
      ++v14;
      v18 = 100663304;
      v19 = v14;
      v20 = v15;
      v21 = (2 * *(this + 194)) | 1;
      RB::Symbol::KeyframeStorage::push_keyframes(this, &v18);
      RB::Symbol::KeyframeStorage::push_value(this, 1, v7, 0.33333);
      RB::Symbol::KeyframeStorage::push_value(this, 0, 1.0, v16);
      RB::Symbol::KeyframeStorage::push_value(this, 1, 1.0, 0.33333);
      RB::Symbol::KeyframeStorage::push_value(this, v7);
    }

    while (v6 != v14);
  }

  else
  {
    if (v6)
    {
      v9 = 100663304;
    }

    else
    {
      v9 = 1;
    }

    v18 = v9;
    v19 = v6;
    v20 = 0.0;
    v21 = (2 * *(this + 194)) | 1;
    RB::Symbol::KeyframeStorage::push_keyframes(this, &v18);
    RB::Symbol::KeyframeStorage::push_value(this, 1, v7, 0.33333);
    RB::Symbol::KeyframeStorage::push_value(this, 0, 1.0, 0.33333);
    RB::Symbol::KeyframeStorage::push_value(this, 1, 1.0, 0.33333);
    RB::Symbol::KeyframeStorage::push_value(this, v7);
  }

  return RB::Symbol::KeyframeStorage::commit(this);
}

uint64_t RB::Symbol::Animation::vc_cumulative_bounce_keyframes(uint64_t a1, _DWORD *a2, RB::Symbol::KeyframeStorage *this, RB::Symbol::Model *a4, float a5)
{
  v6 = a2[5];
  v7 = 0.0;
  if ((*(a1 + 15) & 0x20) == 0)
  {
    if (*a2 == 3)
    {
      v7 = RB::Symbol::Model::alpha(a4, 2uLL, a5);
    }

    else
    {
      v7 = 0.3;
    }
  }

  RB::Symbol::KeyframeStorage::clear(this);
  v8 = v6 - 1;
  if (v6 > 1)
  {
    v10 = 0.33333;
    if (v6 >= 4)
    {
      v11 = vrecpe_f32(COERCE_UNSIGNED_INT(v8));
      v12 = vmul_f32(vrecps_f32(COERCE_UNSIGNED_INT(v8), v11), v11);
      v10 = 0.66667 * vmul_f32(v12, vrecps_f32(COERCE_UNSIGNED_INT(v8), v12)).f32[0];
    }

    v13 = 0;
    v14 = -v6;
    do
    {
      v15 = v13 + 1;
      v17 = 100663304;
      v18 = v13 + 1;
      v19 = v10 * v13;
      v20 = (2 * *(this + 194)) | 1;
      RB::Symbol::KeyframeStorage::push_keyframes(this, &v17);
      RB::Symbol::KeyframeStorage::push_value(this, 1, v7, 0.33333);
      RB::Symbol::KeyframeStorage::push_value(this, 0, 1.0, ((v10 + v10) * v8) + 0.33333);
      RB::Symbol::KeyframeStorage::push_value(this, 1, 1.0, 0.33333);
      RB::Symbol::KeyframeStorage::push_value(this, v7);
      --v8;
      v13 = v15;
    }

    while (v14 + v15);
  }

  else
  {
    if (v6)
    {
      v9 = 100663304;
    }

    else
    {
      v9 = 1;
    }

    v17 = v9;
    v18 = v6;
    v19 = 0.0;
    v20 = (2 * *(this + 194)) | 1;
    RB::Symbol::KeyframeStorage::push_keyframes(this, &v17);
    RB::Symbol::KeyframeStorage::push_value(this, 1, v7, 0.33333);
    RB::Symbol::KeyframeStorage::push_value(this, 0, 1.0, 0.33333);
    RB::Symbol::KeyframeStorage::push_value(this, 1, 1.0, 0.33333);
    RB::Symbol::KeyframeStorage::push_value(this, v7);
  }

  return RB::Symbol::KeyframeStorage::commit(this);
}

uint64_t RB::Symbol::Animation::vc_sequential_keyframes(uint64_t a1, _DWORD *a2, RB::Symbol::KeyframeStorage *this, RB::Symbol::Model *a4, float a5)
{
  v8 = *(a1 + 12);
  v9 = 0.0;
  if ((v8 & 0x20000000) == 0)
  {
    if (*a2 == 3)
    {
      v9 = RB::Symbol::Model::alpha(a4, 2uLL, a5);
      v8 = *(a1 + 12);
    }

    else
    {
      v9 = 0.3;
    }
  }

  v10 = v8 & 0x10000040;
  if ((v8 & 0x10000040) == 0x10000000)
  {
    v11 = a2[5] + 1;
  }

  else
  {
    v11 = a2[5];
  }

  RB::Symbol::KeyframeStorage::clear(this);
  if (v11 > 3)
  {
    v24 = ((2 * v11 - 8) * 0.016667) + 0.33333;
    *&v25 = v24 + (v11 * 0.083333);
    v26 = vrecpe_f32(v25);
    v27 = vmul_f32(vrecps_f32(v25, v26), v26);
    v27.f32[0] = vmul_f32(v27, vrecps_f32(v25, v27)).f32[0];
    v15 = 0.11111 * v27.f32[0];
    v28 = (v24 * 1.3333) * v27.f32[0];
    if ((*(a1 + 12) & 0x40) != 0)
    {
      *v37 = 1049608;
      *&v37[8] = 0;
      v38 = (2 * *(this + 194)) | 1;
      RB::Symbol::KeyframeStorage::push_keyframes(this, v37);
    }

    else
    {
      v29 = 0;
      v30 = v11 - 1;
      do
      {
        if (v30 == v29)
        {
          v31 = 100663305;
        }

        else
        {
          v31 = 100663304;
        }

        if (v30 == v29)
        {
          v32 = 1;
        }

        else
        {
          v32 = v29 + 1;
        }

        v33 = v29 + 1;
        if (v10 == 0x10000000)
        {
          v34 = v32;
        }

        else
        {
          v31 = 100663304;
          v34 = v29 + 1;
        }

        *v37 = v31;
        *&v37[4] = v34;
        *&v37[8] = v15 * v29;
        v38 = (2 * *(this + 194)) | 1;
        RB::Symbol::KeyframeStorage::push_keyframes(this, v37);
        v29 = v33;
      }

      while (v33 != v11);
    }
  }

  else
  {
    if ((*(a1 + 12) & 0x40) != 0)
    {
      if (v11)
      {
        v35 = 1049608;
      }

      else
      {
        v35 = 1048584;
      }

      *v37 = v35;
      *&v37[4] = 0;
      v38 = (2 * *(this + 194)) | 1;
      RB::Symbol::KeyframeStorage::push_keyframes(this, v37);
      v15 = 0.33333;
    }

    else
    {
      v12 = 0;
      v13 = v11 - 1;
      if (v11 <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = v11;
      }

      v15 = 0.33333;
      do
      {
        v16 = v10 == 0x10000000;
        v17 = v13 == 0;
        v18 = !v16 || !v17;
        if (v16 && v17)
        {
          v19 = 100663305;
        }

        else
        {
          v19 = 100663304;
        }

        if (v18)
        {
          v20 = v12 + 1;
        }

        else
        {
          v20 = 1;
        }

        if (!v11)
        {
          v19 = 1;
        }

        v21 = v12;
        v22 = v12 + 1;
        if (v11)
        {
          v23 = v20;
        }

        else
        {
          v23 = 0;
        }

        *v37 = v19;
        *&v37[4] = v23;
        *&v37[8] = v21 * 0.33333;
        v38 = (2 * *(this + 194)) | 1;
        RB::Symbol::KeyframeStorage::push_keyframes(this, v37);
        --v13;
        v12 = v22;
      }

      while (v22 != v14);
    }

    v28 = 0.33333;
  }

  RB::Symbol::KeyframeStorage::push_value(this, 1, v9, v15);
  RB::Symbol::KeyframeStorage::push_value(this, 1, 1.0, v28);
  RB::Symbol::KeyframeStorage::push_value(this, v9);
  return RB::Symbol::KeyframeStorage::commit(this);
}

uint64_t RB::Symbol::Animation::vc_sequential_bounce_keyframes(uint64_t a1, _DWORD *a2, RB::Symbol::KeyframeStorage *this, RB::Symbol::Model *a4, float a5)
{
  v7 = *(a1 + 12);
  v8 = 0.0;
  if ((v7 & 0x20000000) == 0)
  {
    if (*a2 == 3)
    {
      v8 = RB::Symbol::Model::alpha(a4, 2uLL, a5);
      v7 = *(a1 + 12);
    }

    else
    {
      v8 = 0.3;
    }
  }

  v10 = a2[5];
  v11 = v7 & 0x10000000;
  v12 = v10 + ((v7 & 0x10000000u) >> 28);
  RB::Symbol::KeyframeStorage::clear(this);
  v13 = v12 - 2;
  if (v12 <= 2)
  {
    v14 = 0;
    v15 = v12 - 1;
    do
    {
      v16 = v14;
      if (v15)
      {
        v17 = 100663304;
      }

      else
      {
        v17 = 100663305;
      }

      if (v15)
      {
        v18 = v16 + 1;
      }

      else
      {
        v18 = 1;
      }

      if (!v11)
      {
        v17 = 100663304;
        v18 = v16 + 1;
      }

      if (!v12)
      {
        v17 = 1;
        v18 = 0;
      }

      v46 = v17;
      v47 = v18;
      v48 = 0.0;
      v49 = (2 * *(this + 194)) | 1;
      RB::Symbol::KeyframeStorage::push_keyframes(this, &v46);
      if (v16)
      {
        v19 = v8;
      }

      else
      {
        v19 = 1.0;
      }

      if (v16)
      {
        v20 = 1.0;
      }

      else
      {
        v20 = v8;
      }

      RB::Symbol::KeyframeStorage::push_value(this, 1, v19, 0.33333);
      RB::Symbol::KeyframeStorage::push_value(this, 1, v20, 0.33333);
      RB::Symbol::KeyframeStorage::push_value(this, v19);
      if (!v12)
      {
        break;
      }

      v14 = v16 + 1;
      --v15;
    }

    while (!v16);
    return RB::Symbol::KeyframeStorage::commit(this);
  }

  if (v12 == 3)
  {
    v21 = 0;
    while (1)
    {
      if (v11)
      {
        v23 = v21 == 2 ? 100663305 : 100663304;
        v22 = v21 == 2 ? 1 : v21 + 1;
      }

      else
      {
        v22 = v21 + 1;
        v23 = 100663304;
      }

      v46 = v23;
      v47 = v22;
      v24 = v21 == 2 ? 0.33333 : 0.0;
      v48 = v24;
      v49 = (2 * *(this + 194)) | 1;
      RB::Symbol::KeyframeStorage::push_keyframes(this, &v46);
      if (v21 == 1)
      {
        break;
      }

      if (v21)
      {
        RB::Symbol::KeyframeStorage::push_value(this, 1, v8, 0.33333);
        v26 = 1.0;
        goto LABEL_44;
      }

      v25 = 1.0;
      RB::Symbol::KeyframeStorage::push_value(this, 1, 1.0, 0.33333);
      RB::Symbol::KeyframeStorage::push_value(this, 0, v8, 0.66667);
      v26 = v8;
LABEL_45:
      RB::Symbol::KeyframeStorage::push_value(this, 1, v26, 0.33333);
      RB::Symbol::KeyframeStorage::push_value(this, v25);
      if (++v21 == 3)
      {
        return RB::Symbol::KeyframeStorage::commit(this);
      }
    }

    RB::Symbol::KeyframeStorage::push_value(this, 1, v8, 0.33333);
    v26 = 1.0;
    RB::Symbol::KeyframeStorage::push_value(this, 1, 1.0, 0.33333);
    RB::Symbol::KeyframeStorage::push_value(this, 1, v8, 0.33333);
LABEL_44:
    v25 = v8;
    goto LABEL_45;
  }

  v27 = 0;
  v28 = ((2 * v12 - 8) * 0.016667) + 0.33333;
  *&v29 = (v28 + (v13 * 0.083333)) + (v28 + (v13 * 0.083333));
  v30 = vrecpe_f32(v29);
  v31 = vmul_f32(vrecps_f32(v29, v30), v30);
  v31.f32[0] = vmul_f32(v31, vrecps_f32(v29, v31)).f32[0];
  v32 = 0.20833 * v31.f32[0];
  v33 = (v28 * 2.5) * v31.f32[0];
  v34 = v12 - 1;
  v35 = 0.41667 * v31.f32[0];
  v45 = v33 - (0.20833 * v31.f32[0]);
  do
  {
    if (v11)
    {
      if (v13 == -1)
      {
        v37 = 100663305;
      }

      else
      {
        v37 = 100663304;
      }

      if (v13 == -1)
      {
        v36 = 1;
      }

      else
      {
        v36 = v27 + 1;
      }
    }

    else
    {
      v36 = v27 + 1;
      v37 = 100663304;
    }

    v46 = v37;
    v47 = v36;
    v38 = v27 + -1.0;
    if (v38 < 0.0)
    {
      v38 = 0.0;
    }

    v48 = v38 * v32;
    v49 = (2 * *(this + 194)) | 1;
    RB::Symbol::KeyframeStorage::push_keyframes(this, &v46);
    if (v27)
    {
      RB::Symbol::KeyframeStorage::push_value(this, 1, v8, v32);
      v39 = 1.0;
      v40 = this;
      if (v27 >= v34)
      {
        v41 = v45;
        v42 = 0;
      }

      else
      {
        RB::Symbol::KeyframeStorage::push_value(this, 1, 1.0, v33);
        RB::Symbol::KeyframeStorage::push_value(this, 0, v8, v35 * v13);
        v40 = this;
        v39 = v8;
        v41 = v32;
        v42 = 1;
      }

      RB::Symbol::KeyframeStorage::push_value(v40, v42, v39, v41);
      RB::Symbol::KeyframeStorage::push_value(this, 1, 1.0, v33);
      v43 = v8;
    }

    else
    {
      v43 = 1.0;
      RB::Symbol::KeyframeStorage::push_value(this, 1, 1.0, v33);
      RB::Symbol::KeyframeStorage::push_value(this, 0, v8, v35 * v13);
      RB::Symbol::KeyframeStorage::push_value(this, 1, v8, v32);
    }

    RB::Symbol::KeyframeStorage::push_value(this, v43);
    ++v27;
    --v13;
  }

  while (v13 != -2);
  return RB::Symbol::KeyframeStorage::commit(this);
}

uint64_t RB::Symbol::Animation::bounce_keyframes(uint64_t a1, uint64_t a2, RB::Symbol::KeyframeStorage *this, int a4)
{
  v8 = *(a1 + 12);
  RB::Symbol::KeyframeStorage::clear(this);
  if ((v8 & 0x20) != 0)
  {
    v24 = 2;
    v25 = 0.0;
    v26 = (2 * *(this + 194)) | 1;
    RB::Symbol::KeyframeStorage::push_keyframes(this, &v24);
    v19 = flt_195E452A8[v8 >= 0];
    if (a4 == 2)
    {
      RB::Symbol::KeyframeStorage::push_value(this, 5, v19, 0.26667);
      v19 = 1.0;
    }

    else
    {
      v20 = flt_195E452A0[v8 >= 0];
      if (a4 == 1)
      {
        v22 = this;
        v21 = flt_195E452A8[v8 >= 0];
      }

      else
      {
        if (a4)
        {
          return RB::Symbol::KeyframeStorage::commit(this);
        }

        v21 = 1.0;
        v22 = this;
      }

      RB::Symbol::KeyframeStorage::push_value(v22, 3, v21, 0.21667);
      RB::Symbol::KeyframeStorage::push_value(this, 4, v20, 0.21667);
    }

    RB::Symbol::KeyframeStorage::push_value(this, v19);
    return RB::Symbol::KeyframeStorage::commit(this);
  }

  if ((*(a1 + 12) & 0x10) != 0)
  {
    v9 = *(a2 + 8);
  }

  else
  {
    v9 = 1;
  }

  v10 = (v9 - 1);
  v11 = 0.0;
  if (v9 >= 2)
  {
    v11 = 0.15 / v10;
    if ((0.15 / v10) > 0.05)
    {
      v11 = 0.05;
    }
  }

  v12 = v11 * v10;
  if (v8 < 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0.0;
  }

  if (v8 < 0)
  {
    v14 = -v11;
  }

  else
  {
    v14 = v11;
  }

  if (v8 < 0)
  {
    v15 = 0.75;
  }

  else
  {
    v15 = 1.25;
  }

  if (v9)
  {
    v16 = 0;
    v17 = flt_195E452B0[v8 >= 0];
    v18 = ((*(a1 + 12) & 0x10) << 21) | 2;
    do
    {
      v24 = __PAIR64__(v16, v18);
      v25 = v13 + (v14 * v16);
      v26 = (2 * *(this + 194)) | 1;
      RB::Symbol::KeyframeStorage::push_keyframes(this, &v24);
      RB::Symbol::KeyframeStorage::push_value(this, 3, 1.0, 0.21667);
      RB::Symbol::KeyframeStorage::push_value(this, 4, v15, 0.21667);
      RB::Symbol::KeyframeStorage::push_value(this, 5, v17, 0.26667 - (v13 + (v14 * v16)));
      RB::Symbol::KeyframeStorage::push_value(this, 1.0);
      ++v16;
    }

    while (v9 != v16);
  }

  return RB::Symbol::KeyframeStorage::commit(this);
}

uint64_t RB::Symbol::Animation::wiggle_keyframes(uint64_t a1, uint64_t a2, RB::Symbol::KeyframeStorage *this, int a4, RB::Symbol::Model *a5)
{
  v8 = *(a1 + 12);
  if ((v8 & 0x10) != 0)
  {
    v9 = *(a2 + 8);
  }

  else
  {
    v9 = 1;
  }

  if ((v8 & 0x10) != 0)
  {
    v10 = 7;
  }

  else
  {
    v10 = 6;
  }

  if (v8 < 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 5;
  }

  RB::Symbol::KeyframeStorage::clear(this);
  if ((v8 & 0x20) != 0)
  {
    v35 = v11;
    v36 = 0;
    v37 = (2 * *(this + 194)) | 1;
    RB::Symbol::KeyframeStorage::push_keyframes(this, &v35);
    if (v8 < 0)
    {
      v19 = 0.087266;
      v18 = -0.087266;
    }

    else
    {
      v17 = *(RB::Symbol::Model::glyph_info(a5) + 32);
      v18 = v17 * -0.025;
      v19 = v17 * 0.025;
    }

    if ((v8 & 0x40000000) != 0)
    {
      v25 = -v18;
    }

    else
    {
      v25 = v18;
    }

    if ((v8 & 0x40000000) != 0)
    {
      v26 = -v19;
    }

    else
    {
      v26 = v19;
    }

    if (a4 == 2)
    {
      RB::Symbol::KeyframeStorage::push_value(this, 8, 0.0, 0.083333);
      RB::Symbol::KeyframeStorage::push_value(this, 7, v26, 0.16667);
      v29 = this;
      v30 = v25;
      v31 = 0.16667;
      v32 = 7;
    }

    else
    {
      if (a4 == 1)
      {
        v27 = this;
        v28 = 8;
      }

      else
      {
        if (a4)
        {
          return RB::Symbol::KeyframeStorage::commit(this);
        }

        v27 = this;
        v28 = 7;
      }

      RB::Symbol::KeyframeStorage::push_value(v27, v28, 0.0, 0.083333);
      RB::Symbol::KeyframeStorage::push_value(this, 7, v26, 0.16667);
      v29 = this;
      v30 = v25;
      v31 = 0.083333;
      v32 = 9;
    }

    RB::Symbol::KeyframeStorage::push_value(v29, v32, v30, v31);
    RB::Symbol::KeyframeStorage::push_value(this, 0.0);
    return RB::Symbol::KeyframeStorage::commit(this);
  }

  v14 = 0.0;
  if (v9 >= 2)
  {
    if ((0.15 / (v9 - 1)) <= 0.05)
    {
      v14 = 0.15 / (v9 - 1);
    }

    else
    {
      v14 = 0.05;
    }
  }

  if (v8 < 0)
  {
    v16 = xmmword_195E45360;
    if (!v9)
    {
      return RB::Symbol::KeyframeStorage::commit(this);
    }
  }

  else
  {
    v15 = RB::Symbol::Model::glyph_info(a5);
    v12 = xmmword_195E45370;
    v16 = vmulq_n_f32(xmmword_195E45370, COERCE_FLOAT(*(v15 + 32)));
    if (!v9)
    {
      return RB::Symbol::KeyframeStorage::commit(this);
    }
  }

  v12.i32[0] = 0;
  v20 = 0;
  v13.i32[0] = v8 & 0x40000000;
  v21 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v13, v12), 0), v16, vnegq_f32(v16));
  v22 = *&v21.i32[1];
  v23 = *&v21.i32[2];
  v34 = *v21.i32;
  v24 = *&v21.i32[3];
  do
  {
    v35 = v11 | ((v8 & 0x10) << 21);
    LODWORD(v36) = v20;
    *(&v36 + 1) = v14 * v20;
    v37 = (2 * *(this + 194)) | 1;
    RB::Symbol::KeyframeStorage::push_keyframes(this, &v35);
    RB::Symbol::KeyframeStorage::push_value(this, 6, 0.0, 0.167);
    RB::Symbol::KeyframeStorage::push_value(this, 7, v24, 0.167);
    RB::Symbol::KeyframeStorage::push_value(this, 7, v23, 0.167);
    RB::Symbol::KeyframeStorage::push_value(this, 7, v22, 0.167);
    RB::Symbol::KeyframeStorage::push_value(this, 7, v34, 0.267 - (v14 * v20));
    RB::Symbol::KeyframeStorage::push_value(this, 0.0);
    ++v20;
  }

  while (v9 != v20);
  return RB::Symbol::KeyframeStorage::commit(this);
}

uint64_t RB::Symbol::Animation::rotate_keyframes(uint64_t a1, uint64_t a2, RB::Symbol::KeyframeStorage *this, int a4)
{
  v6 = *(a1 + 12);
  v7 = 6;
  if (*(a2 + 25))
  {
    LOBYTE(v8) = 0;
    v9 = 1;
  }

  else
  {
    v8 = (*(a1 + 12) & 0x10u) >> 4;
    if ((v6 & 0x10) != 0)
    {
      v7 = 7;
    }

    else
    {
      v7 = 6;
    }

    if ((v6 & 0x10) != 0)
    {
      v9 = *(a2 + 8);
    }

    else
    {
      v9 = 1;
    }
  }

  RB::Symbol::KeyframeStorage::clear(this);
  if (v6 >= 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = -2;
  }

  v11 = v10 * 3.1416;
  if ((v6 & 0x20) != 0)
  {
    if (!a4 && v9 >= 2)
    {
      v14 = 0;
      if ((0.25 / (v9 - 1)) <= 0.083333)
      {
        v15 = 0.25 / (v9 - 1);
      }

      else
      {
        v15 = 0.083333;
      }

      v16 = v10 * 0.52971;
      if (v8)
      {
        v17 = 33558528;
      }

      else
      {
        v17 = 0;
      }

      v18 = v17 | v7 | 0x400000;
      do
      {
        v27 = v18;
        LODWORD(v28) = v14;
        *(&v28 + 1) = v15 * v14;
        v29 = (2 * *(this + 194)) | 1;
        RB::Symbol::KeyframeStorage::push_keyframes(this, &v27);
        RB::Symbol::KeyframeStorage::push_value(this, 11, 0.0, 0.66667);
        RB::Symbol::KeyframeStorage::push_value(this, 12, v16, 1.8333 - (v15 * v14));
        RB::Symbol::KeyframeStorage::push_value(this, v11);
        ++v14;
      }

      while (v9 != v14);
      return RB::Symbol::KeyframeStorage::commit(this);
    }

    if (v8)
    {
      v19 = 4096;
    }

    else
    {
      v19 = 0;
    }

    v27 = v19 | v7 | 0x400000;
    v28 = 0;
    v29 = (2 * *(this + 194)) | 1;
    RB::Symbol::KeyframeStorage::push_keyframes(this, &v27);
    if (a4 == 2)
    {
      v20 = 2.5;
      v21 = this;
      v22 = 13;
    }

    else if (a4 == 1)
    {
      v20 = 2.0;
      v21 = this;
      v22 = 12;
    }

    else
    {
      if (a4)
      {
LABEL_49:
        RB::Symbol::KeyframeStorage::push_value(this, v11);
        return RB::Symbol::KeyframeStorage::commit(this);
      }

      v20 = 2.5;
      v21 = this;
      v22 = 11;
    }

    RB::Symbol::KeyframeStorage::push_value(v21, v22, 0.0, v20);
    goto LABEL_49;
  }

  if (v9 >= 2)
  {
    if (v9 == 2)
    {
      v12 = 1.8667;
      v13 = 0.13333;
    }

    else
    {
      if ((0.26667 / (v9 - 1)) <= 0.13333)
      {
        v13 = 0.26667 / (v9 - 1);
      }

      else
      {
        v13 = 0.13333;
      }

      v12 = 1.7333;
    }
  }

  else
  {
    if (!v9)
    {
      return RB::Symbol::KeyframeStorage::commit(this);
    }

    v12 = 2.0;
    v13 = 0.0;
  }

  v23 = 0;
  if (v8)
  {
    v24 = 33558528;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24 | v7 | 0x400000;
  do
  {
    v27 = v25;
    LODWORD(v28) = v23;
    *(&v28 + 1) = v13 * v23;
    v29 = (2 * *(this + 194)) | 1;
    RB::Symbol::KeyframeStorage::push_keyframes(this, &v27);
    RB::Symbol::KeyframeStorage::push_value(this, 10, 0.0, v12);
    RB::Symbol::KeyframeStorage::push_value(this, v11);
    ++v23;
  }

  while (v9 != v23);
  return RB::Symbol::KeyframeStorage::commit(this);
}

uint64_t RB::Symbol::Animation::scale_keyframes(uint64_t a1, _DWORD *a2, RB::Symbol::KeyframeStorage *this)
{
  v4 = a2[7];
  v5 = a2[8];
  if (v4 >= v5)
  {
    if (v4 <= v5)
    {
      return 0;
    }

    if (v4 > 0)
    {
      v6 = 2;
    }

    else
    {
      v6 = 3;
    }
  }

  else
  {
    v6 = v5 > 0;
  }

  v7 = *(a1 + 12) & 0x10;
  if (v7)
  {
    v8 = a2[2];
  }

  else
  {
    v8 = 1;
  }

  v9 = 0.0;
  if (v8 >= 2)
  {
    v9 = 0.15 / (v8 - 1);
    if (v9 > 0.05)
    {
      v9 = 0.05;
    }
  }

  if (v6 <= 1)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = -v9;
  }

  if (v6 <= 1)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v9 * (v8 - 1);
  }

  if (v6 <= 1)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0.0;
  }

  if (v6 <= 1)
  {
    v13 = -((v9 * (v8 - 1)) + -0.25);
  }

  else
  {
    v13 = 0.25;
  }

  if (v6 == 3)
  {
    v14 = 41;
  }

  else
  {
    v14 = 1;
  }

  if (v6)
  {
    v15 = v14;
  }

  else
  {
    v15 = 40;
  }

  RB::Symbol::KeyframeStorage::clear(this);
  if (v8)
  {
    v16 = 0;
    v17 = (v7 << 21) | 3;
    do
    {
      v19[0] = v17;
      v19[1] = v16;
      *&v19[2] = v11 + (v10 * v16);
      v20 = (2 * *(this + 194)) | 1;
      RB::Symbol::KeyframeStorage::push_keyframes(this, v19);
      RB::Symbol::KeyframeStorage::push_value(this, v15, 0.0, (v13 + (v12 * v16)) - (v11 + (v10 * v16)));
      RB::Symbol::KeyframeStorage::push_value(this, 1.0);
      ++v16;
    }

    while (v8 != v16);
  }

  return RB::Symbol::KeyframeStorage::commit(this);
}

uint64_t RB::Symbol::Animation::appear_disappear_keyframes(uint64_t a1, _DWORD *a2, uint64_t a3, RB::Symbol::KeyframeStorage *this)
{
  RB::Symbol::KeyframeStorage::clear(this);
  RB::Symbol::Animation::make_appear_disappear_keyframes(a2, *(a1 + 12), a3, 0, this, 0, 0);

  return RB::Symbol::KeyframeStorage::commit(this);
}

uint64_t RB::Symbol::Animation::replace_draw_keyframes(uint64_t a1, uint64_t a2, RB::Symbol::KeyframeStorage *this, RB::Symbol::Model *a4)
{
  RB::Symbol::KeyframeStorage::clear(this);
  v8 = *(a1 + 12);
  v9 = v8 & 0x7800000;
  v10 = RB::Symbol::Model::glyph_info(*(a2 + 40));
  v11 = RB::Symbol::Model::glyph_info(a4);
  v13 = *(v10 + 119);
  v14 = *(v11 + 476);
  if ((v8 & 0x7800000) != 0x4000000 && v9 != 58720256)
  {
    v17 = (v13 >> 4) & 1;
    v30 = (v14 >> 4) & 1;
    v18 = 0;
    goto LABEL_11;
  }

  v16 = v11;
  if ((v13 & 0x10) != 0)
  {
    v17 = (RB::Symbol::Glyph::layer_flags(v10, 8, 0) >> 4) & 1;
    if ((v14 & 0x10) == 0)
    {
LABEL_8:
      v30 = 0;
      v18 = 8;
      goto LABEL_11;
    }
  }

  else
  {
    v17 = 0;
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_8;
    }
  }

  v18 = 8;
  v30 = (RB::Symbol::Glyph::layer_flags(v16, 8, 0) >> 4) & 1;
LABEL_11:
  v19 = (*(a2 + 5) >> 1) & 1;
  if (v9 == 58720256)
  {
    v19 = 1;
  }

  v20 = 0.0;
  if (v19 != 1 || v8 >> 30 == 3)
  {
    v22 = 0.0;
  }

  else if ((v9 == 0x4000000 || v9 == 58720256) && (RB::Symbol::Glyph::intersect_layer_flags(v10, 0, 0) & 8) != 0)
  {
    v22 = 0.0;
    if (v9 == 0x4000000)
    {
      v20 = 0.0;
    }

    else
    {
      v20 = 0.083;
    }
  }

  else
  {
    v23 = RB::Symbol::Animation::draw_duration(*(a1 + 80), 0, 0, v18, 0.25, 0);
    v20 = v23;
    if ((v9 == 0x4000000 || v9 == 58720256) && v9 != 0x4000000)
    {
      if (v23 >= 0.083)
      {
        v22 = v23;
      }

      else
      {
        v22 = 0.083;
      }
    }

    else
    {
      v22 = v23;
    }
  }

  if (*(a2 + 5))
  {
    if (v8 >> 30 == 3)
    {
      if ((v9 - 58720256) >> 24)
      {
        v24 = 8413197;
      }

      else
      {
        v24 = 8413453;
      }

      *v31 = v24;
      *&v31[4] = 0;
      v32 = (2 * *(this + 194)) | 1;
      RB::Symbol::KeyframeStorage::push_keyframes(this, v31);
      RB::Symbol::KeyframeStorage::push_value(this, 1, 1.0, 0.083);
      RB::Symbol::KeyframeStorage::push_value(this, 0.0);
LABEL_46:
      if ((v9 == 0x4000000 || v9 == 58720256) && v9 != 0x4000000)
      {
        *v31 = 8659213;
        *&v31[8] = v22;
        v32 = (2 * *(this + 194)) | 1;
        RB::Symbol::KeyframeStorage::push_keyframes(this, v31);
        RB::Symbol::KeyframeStorage::push_value(this, 1, 1.0, 0.083);
        RB::Symbol::KeyframeStorage::push_value(this, 0.0);
      }

      goto LABEL_50;
    }

    if (v17)
    {
      if ((RB::Symbol::Animation::make_draw_on_off_keyframes(0, 1610612736, *(a2 + 40), 0.0, v12, this, v18, 0) & 1) == 0)
      {
        goto LABEL_46;
      }

      v25 = *(a1 + 12) & 0x7FFFFFF;
      v26 = 17;
      if (v9 == 58720256 || v9 == 0x4000000)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v25 = *(a1 + 12) & 0x7FFFFFF;
    }

    v26 = 0;
    v25 |= 0x40000000u;
LABEL_45:
    RB::Symbol::Animation::make_replace_from_keyframes(v25, a2, this, v26 | v18, 0);
    goto LABEL_46;
  }

LABEL_50:
  if ((*(a2 + 5) & 2) == 0)
  {
    return RB::Symbol::KeyframeStorage::commit(this);
  }

  if (!v30)
  {
    v27 = *(a1 + 12) & 0x7FFFFFF;
    goto LABEL_57;
  }

  if (RB::Symbol::Animation::make_draw_on_off_keyframes(1u, 1610612736, a4, v20, v12, this, v18, 0))
  {
    v27 = *(a1 + 12) & 0x7FFFFFF;
    v28 = 17;
    if (v9 == 58720256 || v9 == 0x4000000)
    {
LABEL_61:
      RB::Symbol::Animation::make_replace_to_keyframes(v27, a2, this, v28 | v18, 0, v20);
      goto LABEL_62;
    }

LABEL_57:
    if (v8 >> 30 == 3)
    {
      v27 |= 0xC0000000;
    }

    else
    {
      v27 |= 0x40000000u;
    }

    v28 = 0;
    goto LABEL_61;
  }

LABEL_62:
  if ((v9 == 0x4000000 || v9 == 58720256) && v9 != 0x4000000)
  {
    *v31 = 17056013;
    *&v31[8] = fmaxf(v20 + -0.083, 0.0);
    v32 = (2 * *(this + 194)) | 1;
    RB::Symbol::KeyframeStorage::push_keyframes(this, v31);
    RB::Symbol::KeyframeStorage::push_value(this, 0, 0.0, 0.0);
    RB::Symbol::KeyframeStorage::push_value(this, 1, 0.0, 0.083);
    RB::Symbol::KeyframeStorage::push_value(this, 1.0);
  }

  return RB::Symbol::KeyframeStorage::commit(this);
}

uint64_t RB::Symbol::Animation::replace_keyframes(uint64_t a1, uint64_t a2, RB::Symbol::KeyframeStorage *this)
{
  RB::Symbol::KeyframeStorage::clear(this);
  RB::Symbol::Animation::make_replace_keyframes(*(a1 + 12), a2, this);

  return RB::Symbol::KeyframeStorage::commit(this);
}

_DWORD *RB::Symbol::Animation::make_appear_disappear_keyframes(_DWORD *result, int a2, uint64_t a3, float *a4, RB::Symbol::KeyframeStorage *this, __int16 a6, __int16 a7)
{
  v8 = a4;
  v9 = a2 & 0xC0000000;
  if ((a2 & 0x10) != 0)
  {
    v10 = *(a3 + 8);
  }

  else
  {
    v10 = 1;
  }

  if (result)
  {
    v11 = 0.25;
  }

  else
  {
    v11 = 0.16667;
  }

  v12 = v10 - 1;
  if (v10 > 1)
  {
    v14 = 0.05;
    if (!result)
    {
      v14 = 0.033333;
    }

    v15 = 0.15;
    if (!result)
    {
      v15 = 0.1;
    }

    v13 = v12;
    v16 = v15 / v12;
    if (v14 >= v16)
    {
      v14 = v16;
    }
  }

  else
  {
    v13 = v12;
    v14 = 0.0;
  }

  v17 = (v9 == 0x80000000) ^ result;
  v18 = v14 * v13;
  if (v17)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = v18;
  }

  if (v17)
  {
    v20 = v14;
  }

  else
  {
    v20 = -v14;
  }

  if (v10)
  {
    v21 = 0;
    v22 = 1.25;
    if (v9 != 0x80000000)
    {
      v22 = 1.0;
    }

    if (v9 == 0x40000000)
    {
      v23 = 0.75;
    }

    else
    {
      v23 = v22;
    }

    v24 = (a2 & 0x10) == 0 || a4 == 0;
    v25 = (result ^ 1);
    v26 = !v24;
    v27 = result;
    if (result)
    {
      v28 = v23;
    }

    else
    {
      v28 = 1.0;
    }

    if (result)
    {
      v29 = 15;
    }

    else
    {
      v29 = 16;
    }

    if (result)
    {
      v30 = 1.0;
    }

    else
    {
      v30 = v23;
    }

    v36 = v30;
    v37 = v28;
    v31 = (32 * (a6 & 0x3FF)) | ((a2 & 0x10) << 21) | ((a7 & 0x3FF) << 15);
    v32 = v31 | 0xD;
    v33 = v31 | 2;
    do
    {
      v34 = v19 + (v20 * v21);
      if (v26)
      {
        v34 = *v8;
      }

      v35 = v11 - (v19 + (v20 * v21));
      v38 = v32;
      v39 = v21;
      v40 = v34;
      v41 = (2 * *(this + 194)) | 1;
      RB::Symbol::KeyframeStorage::push_keyframes(this, &v38);
      RB::Symbol::KeyframeStorage::push_value(this, 14, v25, v35);
      result = RB::Symbol::KeyframeStorage::push_value(this, v27);
      if (v23 != 1.0)
      {
        v38 = v33;
        v39 = v21;
        v40 = v34;
        v41 = (2 * *(this + 194)) | 1;
        RB::Symbol::KeyframeStorage::push_keyframes(this, &v38);
        RB::Symbol::KeyframeStorage::push_value(this, v29, v37, v35);
        result = RB::Symbol::KeyframeStorage::push_value(this, v36);
      }

      ++v21;
      v8 += 3;
    }

    while (v10 != v21);
  }

  return result;
}

uint64_t RB::Symbol::Animation::make_draw_on_off_keyframes_(unsigned int a1, int a2, RB::Symbol::Model *this, int a4, int a5, uint64_t a6, unsigned int *a7, __int16 a8, float a9, int a10)
{
  v15 = RB::Symbol::Model::glyph_info(this);
  if (a1)
  {
    v17 = 17;
  }

  else
  {
    v17 = 18;
  }

  if ((~a2 & 0x80000010) == 0)
  {
    v17 = 0;
  }

  v42 = v17;
  v18 = *(v15 + 456);
  if (v18)
  {
    v19 = v15;
    v20 = 0;
    v21 = 0;
    v44 = 0;
    v22 = a1 | ((a2 & 0x40000000u) >> 30);
    v23 = (v22 ^ 1);
    v24 = v22;
    v25 = v15 + 112;
    v26 = a8 & 0x3FF;
    if (a1)
    {
      v27 = (v22 ^ 1);
    }

    else
    {
      v27 = v22;
    }

    v28 = v22 == 0;
    if (v22)
    {
      v29 = 67108879;
    }

    else
    {
      v29 = 67108878;
    }

    v40 = v29;
    v41 = a2;
    v30 = -0.0001;
    if (!v28)
    {
      v30 = 0.0001;
    }

    v39 = v30 + v23;
    v31 = 112 * v18;
    v38 = v27;
    while (1)
    {
      v32 = *(v19 + 56);
      if (!v32)
      {
        v32 = v25;
      }

      v33 = *(v32 + v20 + 104);
      if ((v26 & v33) != a10)
      {
        goto LABEL_33;
      }

      if ((v33 & 0x10) != 0)
      {
        v34 = v32 + v20;
        v16.i32[0] = *(a6 + 12 * *(v32 + v20 + 72));
        v35 = v16.f32[0] + a9;
        v36 = RB::Symbol::Glyph::layer_draw_duration(v19, (v32 + v20), v16);
        v45 = v40;
        v46 = v21;
        v47 = v35;
        v48 = (2 * a7[194]) | 1;
        RB::Symbol::KeyframeStorage::push_keyframes(a7, &v45);
        RB::Symbol::KeyframeStorage::push_value(a7, v42, v27, v36);
        if (a1)
        {
          RB::Symbol::KeyframeStorage::push_value(a7, v24);
          if ((v41 & 0x20000000) == 0)
          {
            goto LABEL_33;
          }
        }

        else
        {
          if ((*(v34 + 108) & 2) != 0)
          {
            RB::Symbol::KeyframeStorage::push_value(a7, 0, v39, 0.033333);
            v27 = v38;
            RB::Symbol::KeyframeStorage::push_value(a7, 0, v39, 0.0);
          }

          RB::Symbol::KeyframeStorage::push_value(a7, v23);
          if ((*(v34 + 108) & 2) != 0)
          {
            v45 = 67108880;
            v46 = v21;
            v47 = v35 + v36;
            v48 = (2 * a7[194]) | 1;
            RB::Symbol::KeyframeStorage::push_keyframes(a7, &v45);
            RB::Symbol::KeyframeStorage::push_value(a7, 0, 1.0, 0.033333);
            RB::Symbol::KeyframeStorage::push_value(a7, 0, 0.5, 0.0);
            RB::Symbol::KeyframeStorage::push_value(a7, 0.0);
          }

          if ((v41 & 0x20000000) == 0)
          {
            goto LABEL_33;
          }

          if ((*(v34 + 108) & 2) != 0)
          {
            v35 = (v35 + v36) + 0.033333;
          }

          else
          {
            v35 = v35 + v36;
          }
        }

        v45 = 67108877;
        v46 = v21;
        v47 = v35;
        v48 = (2 * a7[194]) | 1;
        RB::Symbol::KeyframeStorage::push_keyframes(a7, &v45);
        RB::Symbol::KeyframeStorage::push_value(a7, 0, (a1 ^ 1), 0.0);
        RB::Symbol::KeyframeStorage::push_value(a7, a1);
      }

      else
      {
        v44 = 1;
      }

LABEL_33:
      ++v21;
      v20 += 112;
      if (v31 == v20)
      {
        return v44 & 1;
      }
    }
  }

  v44 = 0;
  return v44 & 1;
}

uint64_t RB::Symbol::Animation::make_draw_on_off_keyframes(unsigned int a1, int a2, RB::Symbol::Model *this, float a4, uint64_t a5, unsigned int *a6, __int16 a7, int a8)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v15 = RB::Symbol::Model::glyph_info(this);
  v17 = v15;
  v18 = *(v15 + 472);
  if (v18 <= 0x155)
  {
    MEMORY[0x1EEE9AC00](v15, v16);
    v19 = v26 - ((v22 + 15) & 0x1FFFFFFFF0);
    bzero(v19, v22);
  }

  else
  {
    v19 = malloc_type_malloc(12 * v18, 0x1000040FD6F1FF4uLL);
    if (!v19)
    {
      draw_on_off_keyframes = 0;
LABEL_8:
      free(v19);
      return draw_on_off_keyframes;
    }
  }

  LODWORD(v20) = 1042983595;
  if (a1)
  {
    *&v20 = 0.25;
  }

  RB::Symbol::Animation::draw_timing_groups(v19, v17, a1, a2, a7, a8, v20);
  draw_on_off_keyframes = RB::Symbol::Animation::make_draw_on_off_keyframes_(a1, a2, this, v23, v24, v19, a6, a7, a4, a8);
  if (v18 >= 0x156)
  {
    goto LABEL_8;
  }

  return draw_on_off_keyframes;
}

void *RB::Symbol::Animation::infer_replace_subtype(RB::Symbol::Model const&,RB::Symbol::Model const&)::$_1::operator()(void *result, __int16 a2, uint64_t a3, uint64_t a4)
{
  if (result[56])
  {
    v4 = result[56];
  }

  else
  {
    v4 = (result + 14);
  }

  v5 = *(result + 114);
  if (v5)
  {
    v8 = &v4[112 * v5];
    v9 = a2 & 0x3FF;
    v10 = 1;
    v11 = 1;
    v26 = v9;
    while (1)
    {
      v12 = *(v4 + 26);
      v13 = v9 & v12;
      if ((v9 & v12) != 0)
      {
        v14 = a3;
      }

      else
      {
        v14 = a4;
      }

      if ((v9 & v12) != 0)
      {
        v15 = v10;
      }

      else
      {
        v15 = v11;
      }

      if ((v15 & 1) == 0)
      {
        if (*(v4 + 5))
        {
          v25 = *(v4 + 5);
        }

        else
        {
          v25 = (v4 + 24);
        }

        result = RB::Symbol::tags_intersect(v14, v25, *(v4 + 12));
        goto LABEL_30;
      }

      v16 = a4;
      *(v14 + 24) = 0;
      v17 = *(v4 + 5) ? *(v4 + 5) : v4 + 24;
      v18 = *(v4 + 12);
      if (*(v14 + 28) < v18)
      {
        break;
      }

      if (v18)
      {
        v19 = 0;
LABEL_19:
        v20 = *(v14 + 16);
        if (!v20)
        {
          v20 = v14;
        }

        v21 = (v20 + 4 * v19);
        v22 = v18;
        do
        {
          v23 = *v17;
          v17 += 4;
          *v21++ = v23;
          --v22;
        }

        while (v22);
        v24 = *(v14 + 24);
        goto LABEL_29;
      }

      v24 = 0;
LABEL_29:
      *(v14 + 24) = v24 + v18;
      v11 &= v13 != 0;
      v10 &= v13 == 0;
      a4 = v16;
      v9 = v26;
LABEL_30:
      v4 += 112;
      if (v4 == v8)
      {
        return result;
      }
    }

    result = RB::vector<RB::Symbol::Tag,4ul,unsigned int>::reserve_slow(v14, *(v4 + 12));
    v19 = *(v14 + 24);
    goto LABEL_19;
  }

  return result;
}

BOOL RB::vector<RB::Symbol::Tag,4ul,unsigned int>::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2 != *(a2 + 24))
  {
    return 0;
  }

  if (*(a1 + 16))
  {
    a1 = *(a1 + 16);
  }

  if (*(a2 + 16))
  {
    a2 = *(a2 + 16);
  }

  return memcmp(a1, a2, 4 * v2) == 0;
}

void RB::Symbol::Animation::make_replace_from_keyframes(unsigned int a1, uint64_t a2, RB::Symbol::KeyframeStorage *this, unsigned __int8 a4, int a5)
{
  v7 = a1 & 0xC0000000;
  if ((a1 & 0xC0000000) == 0)
  {
    v25 = (a5 << 15) & 0x17F8000 | (32 * a4) | 0x80600D;
    v26 = 0;
    v27 = ((2 * *(this + 194)) | 1);
    RB::Symbol::KeyframeStorage::push_keyframes(this, &v25);
    RB::Symbol::KeyframeStorage::push_value(this, 1, 1.0, 0.25);
    RB::Symbol::KeyframeStorage::push_value(this, 0, 0.2, 0.0);
    goto LABEL_5;
  }

  if (a1 >> 30 == 3)
  {
    v25 = (a5 << 15) & 0x17F8000 | (32 * a4) | 0x80600D;
    v26 = 0;
    v27 = ((2 * *(this + 194)) | 1);
    RB::Symbol::KeyframeStorage::push_keyframes(this, &v25);
LABEL_5:
    RB::Symbol::KeyframeStorage::push_value(this, 0.0);
    return;
  }

  if ((a1 & 0x10) != 0)
  {
    v8 = *(a2 + 12);
  }

  else
  {
    v8 = 1;
  }

  v9 = 0.0;
  if (v8 >= 2)
  {
    v9 = 0.15 / (v8 - 1);
    if (v9 > 0.05)
    {
      v9 = 0.05;
    }
  }

  v10 = (v8 - 1);
  v11 = -((v9 * v10) + -0.25);
  v12 = v9 * v10;
  if (v7 == 0x40000000)
  {
    v13 = 19;
  }

  else
  {
    v13 = 21;
  }

  if (v7 == 0x40000000)
  {
    v14 = 0.5;
  }

  else
  {
    v14 = 1.25;
  }

  if (v7 == 0x40000000)
  {
    v15 = 0.25;
  }

  else
  {
    v15 = v11;
  }

  if (v7 == 0x40000000)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v9;
  }

  if (v7 == 0x40000000)
  {
    v17 = v12;
  }

  else
  {
    v17 = 0.0;
  }

  if (v7 == 0x40000000)
  {
    v18 = -v9;
  }

  else
  {
    v18 = 0.0;
  }

  v24 = (a5 << 15) & 0x17F8000;
  if (v8)
  {
    v19 = 0;
    v20 = ((a1 & 0x10) << 21) | (32 * a4) | v24;
    v21 = v20 | 0x806002;
    v22 = v20 | 0x80600D;
    do
    {
      v23 = (v15 + (v16 * v19)) - (v17 + (v18 * v19));
      v25 = v21;
      LODWORD(v26) = v19;
      *(&v26 + 1) = v17 + (v18 * v19);
      v27 = ((2 * *(this + 194)) | 1);
      RB::Symbol::KeyframeStorage::push_keyframes(this, &v25);
      RB::Symbol::KeyframeStorage::push_value(this, v13, 1.0, v23);
      RB::Symbol::KeyframeStorage::push_value(this, v14);
      if (v7 == 0x80000000)
      {
        v25 = v22;
        LODWORD(v26) = v19;
        *(&v26 + 1) = v17 + (v18 * v19);
        v27 = ((2 * *(this + 194)) | 1);
        RB::Symbol::KeyframeStorage::push_keyframes(this, &v25);
        RB::Symbol::KeyframeStorage::push_value(this, 21, 1.0, v23);
        RB::Symbol::KeyframeStorage::push_value(this, 0.0);
      }

      ++v19;
    }

    while (v8 != v19);
  }

  if (v7 == 0x40000000)
  {
    v25 = v24 & 0xFFFFE01F | (32 * a4) | 0x80600D;
    v26 = 0x3E80000000000000;
    v27 = &RB::Symbol::Animation::make_replace_from_keyframes(unsigned int,RB::Symbol::Animation::KeyframesArgs const&,RB::Symbol::KeyframeStorage &,unsigned int,unsigned int)::alpha_values;
    RB::Symbol::KeyframeStorage::push_keyframes(this, &v25);
  }
}

void RB::Symbol::Animation::make_replace_to_keyframes(unsigned int a1, uint64_t a2, RB::Symbol::KeyframeStorage *this, unsigned __int8 a4, __int16 a5, float a6)
{
  v9 = a1 & 0xC0000000;
  if ((a1 & 0xC0000000) != 0)
  {
    v10 = a1 & 0x10;
    if (a1 >> 30 == 3)
    {
      if ((a1 & 0x10) != 0)
      {
        v11 = *(a2 + 16);
      }

      else
      {
        v11 = 1;
      }

      if (v11 >= 2)
      {
        v20 = (v11 - 1);
        if ((0.15 / v20) <= 0.05)
        {
          v12 = 0.15 / v20;
        }

        else
        {
          v12 = 0.05;
        }

        v13 = -((v12 * v20) + -0.25);
      }

      else
      {
        if (!v11)
        {
          return;
        }

        v12 = 0.0;
        v13 = 0.25;
      }

      v21 = 0;
      v22 = (v10 << 21) | (32 * a4) | ((a5 & 0x1FF) << 15);
      v23 = v22 | 0x1006002;
      v24 = v22 | 0x100600D;
      do
      {
        v33 = v23;
        v34 = v21;
        v35 = a6;
        v36 = ((2 * *(this + 194)) | 1);
        RB::Symbol::KeyframeStorage::push_keyframes(this, &v33);
        RB::Symbol::KeyframeStorage::push_value(this, 23, 0.5, v13 + (v12 * v21));
        RB::Symbol::KeyframeStorage::push_value(this, 1.0);
        v33 = v24;
        v34 = v21;
        v35 = a6;
        v36 = ((2 * *(this + 194)) | 1);
        RB::Symbol::KeyframeStorage::push_keyframes(this, &v33);
        RB::Symbol::KeyframeStorage::push_value(this, 24, 0.0, v13 + (v12 * v21));
        RB::Symbol::KeyframeStorage::push_value(this, 1.0);
        ++v21;
      }

      while (v11 != v21);
    }

    else
    {
      if ((a1 & 0x10) != 0)
      {
        v14 = *(a2 + 16);
      }

      else
      {
        v14 = 1;
      }

      v15 = 0.0;
      v16 = 0.0;
      if (v14 >= 2)
      {
        if ((0.15 / (v14 - 1)) <= 0.05)
        {
          v16 = 0.15 / (v14 - 1);
        }

        else
        {
          v16 = 0.05;
        }
      }

      if (v9 == 0x40000000)
      {
        v17 = -((v16 * (v14 - 1)) + -0.25);
        v18 = 0.5;
        v19 = 20;
        v15 = v16;
        v16 = 0.0;
      }

      else
      {
        v19 = 22;
        v17 = 0.333;
        v18 = 0.4;
      }

      v32 = (a5 & 0x1FF) << 15;
      if (v14)
      {
        v25 = 0;
        v26 = (v10 << 21) | (32 * a4) | v32;
        v27 = v26 | 0x1006002;
        v28 = v26 | 0x100600D;
        do
        {
          v29 = v16 * v25;
          v30 = (v17 + (v15 * v25)) - v29;
          v33 = v27;
          v34 = v25;
          v31 = v29 + a6;
          v35 = v29 + a6;
          v36 = ((2 * *(this + 194)) | 1);
          RB::Symbol::KeyframeStorage::push_keyframes(this, &v33);
          RB::Symbol::KeyframeStorage::push_value(this, v19, v18, v30);
          RB::Symbol::KeyframeStorage::push_value(this, 1.0);
          if (v9 == 0x80000000)
          {
            v33 = v28;
            v34 = v25;
            v35 = v31;
            v36 = ((2 * *(this + 194)) | 1);
            RB::Symbol::KeyframeStorage::push_keyframes(this, &v33);
            RB::Symbol::KeyframeStorage::push_value(this, 22, 0.0, v30);
            RB::Symbol::KeyframeStorage::push_value(this, 1.0);
          }

          ++v25;
        }

        while (v14 != v25);
      }

      if (v9 == 0x40000000)
      {
        v33 = v32 & 0xFFFFE01F | (32 * a4) | 0x100600D;
        v34 = 0;
        v35 = a6;
        v36 = &RB::Symbol::Animation::make_replace_to_keyframes(float,unsigned int,RB::Symbol::Animation::KeyframesArgs const&,RB::Symbol::KeyframeStorage &,unsigned int,unsigned int)::alpha_values;
        RB::Symbol::KeyframeStorage::push_keyframes(this, &v33);
      }
    }
  }

  else
  {
    v33 = ((a5 & 0x1FF) << 15) | (32 * a4) | 0x100600D;
    v34 = 0;
    v35 = a6;
    v36 = ((2 * *(this + 194)) | 1);
    RB::Symbol::KeyframeStorage::push_keyframes(this, &v33);
    RB::Symbol::KeyframeStorage::push_value(this, 0, 0.0, 0.0);
    RB::Symbol::KeyframeStorage::push_value(this, 1, 0.2, 0.25);
    RB::Symbol::KeyframeStorage::push_value(this, 1.0);
  }
}

void RB::Symbol::Animation::make_replace_keyframes(unsigned int a1, uint64_t a2, RB::Symbol::KeyframeStorage *this)
{
  v6 = *(a2 + 4);
  if ((v6 & 0x100) != 0)
  {
    RB::Symbol::Animation::make_replace_from_keyframes(a1, a2, this, 0, 0);
    v6 = *(a2 + 4);
  }

  if ((v6 & 0x200) != 0)
  {
    if ((a1 & 0xC0000000) != 0)
    {
      v7 = 0.0;
      if (a1 >> 30 != 3)
      {
        v7 = 0.16667;
        if ((a1 & 0xC0000000) == 0x40000000)
        {
          v7 = 0.25;
        }
      }
    }

    else
    {
      v7 = 0.25;
    }

    RB::Symbol::Animation::make_replace_to_keyframes(a1, a2, this, 0, 0, v7);
  }
}

float RB::Symbol::Animation::eval_appear_disappear(RB::Symbol::Animation *this, float a2, int a3, int *a4, const RB::AnimationLayer *a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v20 = 255;
  v21 = a4[1];
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v22[0] = 0;
  *(v22 + 7) = 0;
  v27 = 0;
  v28 = 0x4000000000;
  v29 = 0;
  v30 = 0x4000000000;
  v31 = 0;
  RB::Symbol::Animation::make_appear_disappear_keyframes(this, a3, &v20, 0, v26, 0, 0);
  v7 = RB::Symbol::KeyframeStorage::commit(v26);
  v8 = v7;
  if (a2 >= 0.0001)
  {
    v9 = a2;
  }

  else
  {
    v9 = 0.0001;
  }

  v10 = *v7;
  if ((*v7 & 0x1F) != 0)
  {
    v11 = 1.0;
    v12 = 1.0;
    while (1)
    {
      if (*(v8 + 2))
      {
        v13 = ((v10 >> 5) & (v10 >> 15) & 0x3FF) == 0;
      }

      else
      {
        v13 = 0;
      }

      if (!v13)
      {
        goto LABEL_10;
      }

      v15 = (v10 >> 25) & 3;
      if ((v15 - 1) >= 2)
      {
        if (!v15)
        {
          goto LABEL_17;
        }

        v16 = -1;
      }

      else
      {
        v16 = *a4;
      }

      if (v8[1] == v16)
      {
LABEL_17:
        v17 = RB::Symbol::Keyframes::eval(v8, v9, v26);
        if ((*v8 & 0x1F) == 0xD)
        {
          v18 = v17;
        }

        else
        {
          v18 = v12;
        }

        if ((*v8 & 0x1F) == 2)
        {
          v11 = v17;
        }

        else
        {
          v12 = v18;
        }
      }

LABEL_10:
      v14 = v8[6];
      v8 += 6;
      v10 = v14;
      if ((v14 & 0x1F) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  v11 = 1.0;
LABEL_24:
  if (v29)
  {
    free(v29);
  }

  if (v27)
  {
    free(v27);
  }

  return v11;
}

void sub_195DD4A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  RB::Symbol::KeyframeStorage::~KeyframeStorage(va);
  _Unwind_Resume(a1);
}

float RB::Symbol::Animation::eval_replace(RB::Symbol::Animation *this, float a2, unsigned int a3, int *a4, const RB::AnimationLayer *a5)
{
  v31 = *MEMORY[0x1E69E9840];
  if (this)
  {
    v7 = 512;
  }

  else
  {
    v7 = 256;
  }

  v22[0] = 255;
  v22[1] = v7;
  v8 = a4[1];
  v22[2] = 1;
  v22[3] = v8;
  v23[2] = 0;
  v23[3] = 0;
  v24 = 0;
  v22[4] = v8;
  v23[0] = 0;
  *(v23 + 3) = 0;
  v26 = 0;
  v27 = 0x4000000000;
  v28 = 0;
  v29 = 0x4000000000;
  v30 = 0;
  RB::Symbol::Animation::make_replace_keyframes(a3, v22, v25);
  v9 = RB::Symbol::KeyframeStorage::commit(v25);
  v10 = v9;
  if (a2 >= 0.0001)
  {
    v11 = a2;
  }

  else
  {
    v11 = 0.0001;
  }

  v12 = *v9;
  if ((*v9 & 0x1F) != 0)
  {
    v13 = 1.0;
    v14 = 1.0;
    while (1)
    {
      if (*(v10 + 2))
      {
        v15 = ((v7 ^ (v12 >> 15)) & (v12 >> 5) & 0x3FF) == 0;
      }

      else
      {
        v15 = 0;
      }

      if (!v15)
      {
        goto LABEL_13;
      }

      v17 = (v12 >> 25) & 3;
      if ((v17 - 1) >= 2)
      {
        if (!v17)
        {
          goto LABEL_20;
        }

        v18 = -1;
      }

      else
      {
        v18 = *a4;
      }

      if (v10[1] == v18)
      {
LABEL_20:
        v19 = RB::Symbol::Keyframes::eval(v10, v11, v25);
        if ((*v10 & 0x1F) == 0xD)
        {
          v20 = v19;
        }

        else
        {
          v20 = v14;
        }

        if ((*v10 & 0x1F) == 2)
        {
          v13 = v19;
        }

        else
        {
          v14 = v20;
        }
      }

LABEL_13:
      v16 = v10[6];
      v10 += 6;
      v12 = v16;
      if ((v16 & 0x1F) == 0)
      {
        goto LABEL_27;
      }
    }
  }

  v13 = 1.0;
LABEL_27:
  if (v28)
  {
    free(v28);
  }

  if (v26)
  {
    free(v26);
  }

  return v13;
}

void sub_195DD4BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  RB::Symbol::KeyframeStorage::~KeyframeStorage(va);
  _Unwind_Resume(a1);
}

void RB::anonymous namespace::defaults_key(RB::_anonymous_namespace_ *this@<X0>, CFStringRef *a2@<X8>)
{
  v3 = this;
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = strlen(this);
  v6 = v5;
  if (v5 <= 0x1000)
  {
    MEMORY[0x1EEE9AC00]();
    v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v7, v6);
  }

  else
  {
    v7 = malloc_type_malloc(v5, 0x100004077774924uLL);
    if (!v7)
    {
      *a2 = 0;
      goto LABEL_18;
    }
  }

  v8 = 1;
  v9 = v7;
  while (1)
  {
    v10 = *v3;
    if ((v10 - 65) < 0x1A)
    {
      if ((v8 & 1) == 0)
      {
        if (*(v3 - 1) != 95)
        {
          LOBYTE(v10) = v10 + 32;
        }

        v8 &= *(v3 - 1) == 95;
      }

      goto LABEL_11;
    }

    if (v10 != 95)
    {
      break;
    }

    v8 = 0;
LABEL_12:
    v3 = (v3 + 1);
  }

  if (*v3)
  {
LABEL_11:
    *v9++ = v10;
    goto LABEL_12;
  }

  *a2 = CFStringCreateWithBytes(0, v7, v9 - v7, 0x8000100u, 1u);
  if (v6 > 0x1000)
  {
LABEL_18:
    free(v7);
  }
}

char *RB::Config::string_value(RB::Config *this, const void *a2)
{
  result = MEMORY[0x1EEE9AC00](this, a2);
  v6 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 != CFStringGetTypeID())
    {
      return 0;
    }

    result = CFStringGetCStringPtr(v3, 0x8000100u);
    if (result)
    {
      return result;
    }

    if (CFStringGetCString(v3, buffer, 4096, 0x8000100u))
    {
      return strdup(buffer);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t RB::anonymous namespace::parse_flags(char *__str, uint64_t a2, uint64_t a3)
{
  if (*__str - 48 >= 0xA)
  {
    v6 = &__str[strspn(__str, " \t\n,;")];
    if (!*v6)
    {
      return 0;
    }

    v7 = 0;
    do
    {
      v8 = strcspn(v6, " \t\n,;");
      if (!v8)
      {
        break;
      }

      v9 = v8;
      if (a3)
      {
        v10 = 16 * a3;
        v11 = (a2 + 8);
        while (strncasecmp_l(*v11, v6, v9, 0) || (*v11)[v9])
        {
          v11 += 2;
          v10 -= 16;
          if (!v10)
          {
            goto LABEL_13;
          }
        }

        v7 |= *(v11 - 1);
      }

      else
      {
LABEL_13:
        if (v9 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        if (v9 >= 0x17)
        {
          operator new();
        }

        v14 = v9;
        memcpy(&__dst, v6, v9);
        *(&__dst + v9) = 0;
        p_dst = &__dst;
        if (v14 < 0)
        {
          p_dst = __dst;
        }

        if (v14 < 0)
        {
          operator delete(__dst);
        }
      }

      v6 += v9 + strspn(&v6[v9], " \t\n,;");
    }

    while (*v6);
    return v7;
  }

  else
  {

    return strtoul(__str, 0, 0);
  }
}

char *RB::debug_string(RB *this, const char *a2)
{
  RB::Config::debug_value(this, &v6);
  v2 = v6;
  v4 = RB::Config::string_value(v6, v3);
  if (v2)
  {
    CFRelease(v2);
  }

  return v4;
}

void RB::render_stroke_coverage(int32x2_t *a1, _OWORD *a2, uint64_t a3, uint64_t a4, int a5, float a6)
{
  v10 = 17;
  if (a1[16].i32[1] == 2)
  {
    v10 = 131089;
  }

  v12[0] = &unk_1F0A37828;
  v12[1] = (v10 | ((a5 & 0x3F) << 32));
  v13 = a6;
  may_discard_shape = RB::may_discard_shape(a5);
}

void RB::render_stroke(int32x2_t *a1, uint64_t (**a2)(void, int32x2_t *, __n128, __n128), uint64_t a3, uint64_t a4, RB::Fill::Gradient *this, int a6, int a7, float a8)
{
  if (a1[16].i32[1] == 2)
  {
    v16 = 131091;
  }

  else
  {
    v16 = 19;
  }

  v21 = v16;
  RB::Fill::Gradient::set_fill_state(this, &v21, a1, a8);
  if (a6)
  {
    v17 = 0x10000;
  }

  else
  {
    v17 = 0;
  }

  LODWORD(v21) = v21 & 0xFFFEFFFF | v17;
  HIDWORD(v21) = HIDWORD(v21) & 0xFFFFFFC0 | a7 & 0x3F;
  v19[0] = &unk_1F0A37888;
  v19[1] = v21;
  v19[2] = a2;
  v19[3] = this;
  v20 = a8;
  may_discard_shape = RB::may_discard_shape(a7);
  a1[29] = 0;
  a1[28].i32[1] = 0;
}

void RB::render_stroke(int32x2_t *a1, uint64_t (**a2)(void, int32x2_t *, __n128, __n128), uint64_t a3, uint64_t a4, uint64_t (**a5)(void, int32x2_t *, __n128, __n128), char a6, int a7, float a8)
{
  v8[0] = &unk_1F0A3ED80;
  v8[1] = a2;
  v8[2] = a5;
  v9 = a6;
  v10 = a8;
  v11 = a7;
}

void RB::render_stroke(int32x2_t *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t (**a5)(void, int32x2_t *, __n128, __n128), uint64_t a6, int a7, int a8)
{
  if (a1[16].i32[1] == 2)
  {
    v15 = 131093;
  }

  else
  {
    v15 = 21;
  }

  v19 = v15;
  RB::RenderState::set_image(&v19, a5 + 44, a1[16].i8[0]);
  if (a7)
  {
    v16 = 0x10000;
  }

  else
  {
    v16 = 0;
  }

  LODWORD(v19) = v19 & 0xFFFEFFFF | v16;
  HIDWORD(v19) = HIDWORD(v19) & 0xFFFFFFC0 | a8 & 0x3F;
  v18[0] = &unk_1F0A37870;
  v18[1] = v19;
  v18[2] = a5;
  may_discard_shape = RB::may_discard_shape(a8);
}

void RB::render_stroke(RB::RenderPass *a1, uint64_t (**a2)(void, int32x2_t *, __n128, __n128), uint64_t a3, uint64_t a4, RB::Fill::Custom *this, int a6, int a7, float a8)
{
  v16 = RB::Fill::Custom::function(this, a1);
  if (v16)
  {
    v17 = v16;
    if (*(a1 + 33) == 2)
    {
      v18 = 131094;
    }

    else
    {
      v18 = 22;
    }

    v23 = v18;
    RB::Fill::Custom::set_fill_state(this, &v23, v16, a1);
    if (a6)
    {
      v19 = 0x10000;
    }

    else
    {
      v19 = 0;
    }

    LODWORD(v23) = v23 & 0xFFFEFFFF | v19;
    HIDWORD(v23) = HIDWORD(v23) & 0xFFFFFFC0 | a7 & 0x3F;
    v21[0] = &unk_1F0A378A0;
    v21[1] = v23;
    v21[2] = a2;
    v21[3] = this;
    v21[4] = v17;
    v22 = a8;
    may_discard_shape = RB::may_discard_shape(a7);
    RB::Fill::Custom::reset_custom(this, a1);
  }
}

void RB::anonymous namespace::StrokeLines::~StrokeLines(RB::_anonymous_namespace_::StrokeLines *this)
{
  if (*(this + 15))
  {
    RB::RenderFrame::commit_buffer_region_size(*(**(this + 2) + 16), this + 120, *(this + 18));
    v2 = *(this + 14);
    if (v2)
    {
      *(this + 14) = 0;
      *(this + 288) = 0;
    }

    *(this + 120) = 0u;
    *(this + 136) = 0u;
  }
}

uint64_t RB::anonymous namespace::StrokeLines::skipto(uint64_t result, void *a2, double a3)
{
  *(result + 176) = 0;
  *(result + 249) = 1;
  *(result + 256) = a3;
  *(result + 264) = *a2;
  return result;
}

__n128 RB::anonymous namespace::StrokeLines::push_back(uint64_t a1, __n128 *a2)
{
  if ((*(a1 + 288) & 1) == 0)
  {
    v2 = a2->n128_u16[7];
    if (a2->n128_u16[7])
    {
      v3 = v2 == 65534;
    }

    else
    {
      v3 = 1;
    }

    if (v3 || v2 == 2)
    {
      *(a1 + 288) = 1;
    }
  }

  result = *a2;
  *(*(*(a1 + 120) + 56) + *(a1 + 128) + *(a1 + 144)) = *a2;
  *(a1 + 144) += 16;
  return result;
}

float *RB::anonymous namespace::StrokeParticles::add_particle(float *this, unint64_t a2, float32x2_t a3, float32x2_t a4, float a5, float a6)
{
  v8 = this;
  v9 = *(this + 15);
  if (!v9 || (v10 = *(this + 18), (v10 + 20) > *(this + 17)))
  {
    v23 = a6;
    v24 = a5;
    v22 = a4;
    a4 = v22;
    a6 = v23;
    a5 = v24;
    v10 = *(v8 + 18);
    v9 = *(v8 + 15);
  }

  *v11.f32 = a4;
  v11.i64[1] = __PAIR64__(LODWORD(a5), LODWORD(a6));
  v12 = *(v9 + 56) + *(v8 + 16) + v10;
  *v12 = *&a3;
  *(v12 + 8) = vcvt_f16_f32(v11);
  *(v12 + 16) = a2;
  *(v8 + 18) += 20;
  ++*(v8 + 14);
  v13 = vmul_f32(a4, a4);
  v13.i32[0] = vadd_f32(v13, vdup_lane_s32(v13, 1)).u32[0];
  v14 = vrsqrte_f32(v13.u32[0]);
  v13.i32[0] = vmul_f32(vrsqrts_f32(v13.u32[0], vmul_f32(v14, v14)), v14).u32[0];
  v15 = vrecpe_f32(v13.u32[0]);
  LODWORD(v16) = vmul_f32(vrecps_f32(v13.u32[0], v15), v15).u32[0];
  if (a6 >= 1.0)
  {
    v17 = a6;
  }

  else
  {
    v17 = 1.0;
  }

  v18 = vmul_n_f32(*(v8 + 20), (v8[38] * v17) * v16);
  v19 = vcvtq_f64_f32(a3);
  *&v19.f64[0] = vcvt_f32_f64(vmlaq_laneq_f64(vmlaq_n_f64(*(v8 + 16), *(v8 + 8), v19.f64[0]), *(v8 + 12), v19, 1));
  v20 = vminnm_f32(*(v8 + 24), vsub_f32(*&v19.f64[0], v18));
  v21 = vmaxnm_f32(*(v8 + 26), vadd_f32(v18, *&v19.f64[0]));
  *(v8 + 12) = v20;
  *(v8 + 13) = v21;
  *(v8 + 88) |= a5 != 1.0;
  return this;
}

uint64_t RB::anonymous namespace::StrokeParticles::flush(uint64_t this, int a2)
{
  v3 = this;
  if (*(this + 120))
  {
    this = RB::RenderFrame::commit_buffer_region_size(*(**(this + 16) + 16), this + 120, *(this + 144));
    if (*(v3 + 112))
    {
      v4 = *(v3 + 24);
      v5 = *(v3 + 28);
      if (*(v3 + 88))
      {
        v6 = v4 | 0x1000;
      }

      else
      {
        v6 = v4;
      }

      v7 = *(v3 + 16);
      v7[25].i32[1] = RB::RenderFrame::buffer_id(*(*v7 + 16), *(v3 + 120));
      v7[26] = vmovn_s64(*(v3 + 128));
      v8 = *(v3 + 16);
      v10 = *(v3 + 96);
      v9 = *(v3 + 104);
      v11 = vcgt_f32(*&v9, v10);
      v12 = vpmin_u32(v11, v11).u32[0];
      v13 = 0;
      v14 = 0.0;
      if ((v12 & 0x80000000) != 0)
      {
        v14 = RB::Rect::from_bounds(*(v3 + 96), *(v3 + 104));
      }

      RB::Bounds::Bounds(&v17, *&v14, v13, v9, v10);
      this = RB::RenderPass::draw_indexed_primitives(v8, (v6 | (v5 << 32)), 4, **(*v8 + 16) + 136, 4uLL, *(v3 + 112), v17, *&v18);
      *(v3 + 112) = 0;
      v7[26] = 0;
      v7[25].i32[1] = 0;
    }
  }

  if (a2)
  {
    this = RB::RenderFrame::alloc_buffer_region(*(**(v3 + 16) + 16), 0xA00, 4uLL, 1, &v17);
    v15 = v17;
    v16 = v18;
  }

  else
  {
    v15 = 0;
    v16 = 0uLL;
  }

  *(v3 + 120) = v15;
  *(v3 + 128) = v16;
  *(v3 + 144) = 0;
  return this;
}

void sub_195DD585C(_Unwind_Exception *a1)
{
  *(v1 + 208) = 0;
  *(v1 + 204) = 0;
  _Unwind_Resume(a1);
}

uint64_t RB::render_stroke_coverage(RB::RenderPass &,RB::AffineTransform const&,RB::Coverage::StrokeGenerator const&,RB::Coverage::StrokeInfo const&,float,RB::BlendMode)::Renderer::operator()(uint64_t a1, uint64_t a2, int32x2_t a3, int32x2_t a4, int32x2_t a5)
{
  a5.i32[0] = 0;
  v7 = vceq_s32(a4, 0x8000000080000000);
  v8 = vdup_lane_s32(vcgt_s32(a5, vpmin_u32(v7, v7)), 0);
  RB::Coverage::set_plane(&v18, a2, vbsl_s8(v8, 0x100000001000000, vcvt_f32_s32(a3)), COERCE_DOUBLE(vbsl_s8(v8, vneg_f32(0x80000000800000), vcvt_f32_s32(a4))));
  _S0 = *(a1 + 16);
  __asm { FCVT            H0, S0 }

  WORD6(v19) = _S0;
  RB::RenderFrame::alloc_buffer_region(*(*a2 + 16), 0x20, 4uLL, 0, &v20);
  v14 = v20;
  if (v20)
  {
    v15 = (*(v20 + 7) + v21.i64[0]);
    v16 = v19;
    *v15 = v18;
    v15[1] = v16;
  }

  else
  {
    v20 = 0;
    v21 = 0uLL;
  }

  *(a2 + 192) = RB::RenderFrame::buffer_id(*(*a2 + 16), v14);
  *(a2 + 196) = vmovn_s64(v21);
  return *(a1 + 8);
}

uint64_t RB::render_stroke(RB::RenderPass &,RB::AffineTransform const&,RB::Coverage::StrokeGenerator const&,RB::Coverage::StrokeInfo const&,RB::Fill::Gradient const&,BOOL,float,RB::BlendMode)::Renderer::operator()(uint64_t a1, uint64_t a2, int32x2_t a3, int32x2_t a4, int32x2_t a5)
{
  a5.i32[0] = 0;
  v7 = vceq_s32(a4, 0x8000000080000000);
  v8 = vdup_lane_s32(vcgt_s32(a5, vpmin_u32(v7, v7)), 0);
  RB::Coverage::set_plane(&v17, a2, vbsl_s8(v8, 0x100000001000000, vcvt_f32_s32(a3)), COERCE_DOUBLE(vbsl_s8(v8, vneg_f32(0x80000000800000), vcvt_f32_s32(a4))));
  v9.i32[0] = *(a1 + 32);
  RB::Fill::Gradient::set_gradient(*(a1 + 24), (v18 + 12), a2, *(a1 + 16), v9);
  RB::RenderFrame::alloc_buffer_region(*(*a2 + 16), 0x54, 4uLL, 0, &v20);
  v10 = v20;
  if (v20)
  {
    v11 = *(v20 + 7) + v21.i64[0];
    v12 = v17;
    *(v11 + 16) = v18[0];
    v13 = v18[3];
    v14 = v18[2];
    v15 = v18[1];
    *(v11 + 80) = v19;
    *(v11 + 48) = v14;
    *(v11 + 64) = v13;
    *(v11 + 32) = v15;
    *v11 = v12;
  }

  else
  {
    v20 = 0;
    v21 = 0uLL;
  }

  *(a2 + 192) = RB::RenderFrame::buffer_id(*(*a2 + 16), v10);
  *(a2 + 196) = vmovn_s64(v21);
  return *(a1 + 8);
}

uint64_t RB::render_stroke(RB::RenderPass &,RB::AffineTransform const&,RB::Coverage::StrokeGenerator const&,RB::Coverage::StrokeInfo const&,RB::Fill::MeshGradient const&,BOOL,float,RB::BlendMode)::Renderer::operator()(uint64_t a1, RB::RenderPass *a2, int32x2_t a3, int32x2_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  RB::render_mesh_gradient(a2, *(a1 + 8), *(a1 + 16), 0, *(a1 + 24), *(a1 + 32), v6, *(a1 + 28));
  if (*(a2 + 33) == 2)
  {
    return 131110;
  }

  else
  {
    return 38;
  }
}

uint64_t RB::render_stroke(RB::RenderPass &,RB::AffineTransform const&,RB::Coverage::StrokeGenerator const&,RB::Coverage::StrokeInfo const&,RB::Shader::Globals<RB::Shader::StrokeGlobals,RB::Shader::ImageGlobals> &,RB::Fill::ImageData const&,BOOL,RB::BlendMode)::Renderer::operator()(uint64_t a1, float32x2_t *a2, int32x2_t a3, int32x2_t a4, int32x2_t a5)
{
  a5.i32[0] = 0;
  v7 = vceq_s32(a4, 0x8000000080000000);
  v8 = vdup_lane_s32(vcgt_s32(a5, vpmin_u32(v7, v7)), 0);
  RB::Coverage::set_plane(v19, a2, vbsl_s8(v8, 0x100000001000000, vcvt_f32_s32(a3)), COERCE_DOUBLE(vbsl_s8(v8, vneg_f32(0x80000000800000), vcvt_f32_s32(a4))));
  v9 = *(a1 + 16);
  v10 = *(v9 + 44);
  v11 = *(v9 + 60);
  v12 = *(v9 + 76);
  v13 = *(v9 + 108);
  v23 = *(v9 + 92);
  v24 = v13;
  v14 = *(v9 + 124);
  v15 = *(v9 + 140);
  v16 = *(v9 + 156);
  v28 = *(v9 + 172);
  v27 = v16;
  v29 = *(v9 + 188);
  v25 = v14;
  v26 = v15;
  v21 = v11;
  v22 = v12;
  v20 = v10;
  RB::Fill::set_image_globals(a2, v19, 0xBC, 4uLL, (a1 + 8), v17);
  return *(a1 + 8);
}

unint64_t RB::render_stroke(RB::RenderPass &,RB::AffineTransform const&,RB::Coverage::StrokeGenerator const&,RB::Coverage::StrokeInfo const&,RB::Fill::Custom const&,BOOL,float,RB::BlendMode)::Renderer::operator()(uint64_t a1, uint64_t a2, int32x2_t a3, int32x2_t a4)
{
  RB::RenderFrame::alloc_buffer_region(*(*a2 + 16), (*(*(a1 + 32) + 112) + 56), 4uLL, 0, &v15);
  v9 = v15;
  if (v15)
  {
    v8.i32[0] = 0;
    v10 = *(v15 + 7) + v16.i64[0];
    v11 = vceq_s32(a4, 0x8000000080000000);
    v12 = vdup_lane_s32(vcgt_s32(v8, vpmin_u32(v11, v11)), 0);
    RB::Coverage::set_plane(v10, a2, vbsl_s8(v12, 0x100000001000000, vcvt_f32_s32(a3)), COERCE_DOUBLE(vbsl_s8(v12, vneg_f32(0x80000000800000), vcvt_f32_s32(a4))));
    if (RB::Fill::Custom::set_custom(*(a1 + 24), (v10 + 28), *(a1 + 32), v10 + 56, a2, *(a1 + 16), *(a1 + 40)))
    {
      *(a2 + 192) = RB::RenderFrame::buffer_id(*(*a2 + 16), v15);
      *(a2 + 196) = vmovn_s64(v16);
      v13 = *(a1 + 8);
      v9 = v13 & 0xFFFFFFFF00000000;
      v13 = v13;
      return v13 | v9;
    }

    v9 = 0;
  }

  v13 = 38;
  if (*(a2 + 132) == 2)
  {
    v13 = 131110;
  }

  return v13 | v9;
}

BOOL RB::DisplayList::State::set_numeric_value(uint64_t a1, float a2)
{
  v2 = *(a1 + 152) == a2;
  if (*(a1 + 152) != a2)
  {
    *(a1 + 152) = a2;
    *(a1 + 120) = 0;
  }

  return !v2;
}

double RB::DisplayList::State::clip_bounds(RB::DisplayList::State *this)
{
  v1 = *(this + 12);
  if (v1)
  {
    return *(v1 + 16);
  }

  else
  {
    return -5.48612406e303;
  }
}

void sub_195DD6FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35, id a36, uint64_t a37, id a38, id a39, uint64_t a40, id a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, id a50, uint64_t a51, id a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, id a59)
{

  _Unwind_Resume(a1);
}

void sub_195DD72E0(_Unwind_Exception *exception_object)
{
  if (atomic_fetch_add_explicit(v1, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __copy_helper_block_e8_48c58_ZTSN2RB8objc_ptrIPU21objcproto10MTLTexture11objc_objectEE56c66_ZTSN2RB8objc_ptrIPU29objcproto18RBDrawableDelegate11objc_objectEE64c30_ZTSN2RB8objc_ptrIP8RBDeviceEE72c40_ZTSN2RB14refcounted_ptrINS_8DrawableEEE80c30_ZTSN2RB8objc_ptrIP8NSStringEE120c40_ZTSN2RB8objc_ptrIU13block_pointerFvvEEE128c40_ZTSN2RB8objc_ptrIU13block_pointerFvvEEE136c48_ZTSN2RB8objc_ptrIU13block_pointerFvP7NSErrorEEE144c55_ZTSN2RB8objc_ptrIPU18objcproto8MTLEvent11objc_objectEE_cold_1();
  }

  _Unwind_Resume(exception_object);
}

uint64_t *RB::refcounted_ptr<RB::SharedSurfaceClient>::operator=(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 != *a2)
  {
    if (v3)
    {
      if (atomic_fetch_add_explicit((v3 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RB::refcounted_ptr<RB::SharedSurfaceClient>::operator=();
      }

      v4 = *a2;
    }

    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
    }

    *a1 = v4;
  }

  return a1;
}

void sub_195DD7738(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    os_unfair_lock_unlock(v2);
  }

  _Unwind_Resume(exception_object);
}

id __copy_helper_block_e8_40c30_ZTSN2RB8objc_ptrIP8RBDeviceEE48c40_ZTSN2RB8objc_ptrIP17RBImageQueueLayerEE72c29_ZTSN2RB8objc_ptrIP7RBLayerEE(void *a1, id *a2)
{
  a1[5] = a2[5];
  a1[6] = a2[6];
  result = a2[9];
  a1[9] = result;
  return result;
}

void __destroy_helper_block_e8_40c30_ZTSN2RB8objc_ptrIP8RBDeviceEE48c40_ZTSN2RB8objc_ptrIP17RBImageQueueLayerEE72c29_ZTSN2RB8objc_ptrIP7RBLayerEE(uint64_t a1)
{
  v2 = *(a1 + 40);
}

uint64_t anonymous namespace::rblayer_async_queue(_anonymous_namespace_ *this)
{
  if ((atomic_load_explicit(&qword_1ED6D5408, memory_order_acquire) & 1) == 0)
  {
  }

  return qword_1ED6D5400;
}

id __copy_helper_block_e8_32c35_ZTSN2RB8objc_ptrIP12RBLayerGroupEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

id __copy_helper_block_e8_32c29_ZTSN2RB8objc_ptrIP7RBLayerEE40c29_ZTSN2RB8objc_ptrIP7NSErrorEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_32c29_ZTSN2RB8objc_ptrIP7RBLayerEE40c29_ZTSN2RB8objc_ptrIP7NSErrorEE(uint64_t a1)
{
  v2 = *(a1 + 32);
}

id __copy_helper_block_e16_64c30_ZTSN2RB8objc_ptrIP8RBDeviceEE72c40_ZTSN2RB8objc_ptrIP17RBImageQueueLayerEE88c29_ZTSN2RB8objc_ptrIP7RBLayerEE96c35_ZTSN2RB8objc_ptrIP12RBLayerGroupEE104c40_ZTSN2RB14refcounted_ptrINS_8DrawableEEE112c36_ZTSN2RB8objc_ptrIP13RBDisplayListEE(void *a1, uint64_t a2)
{
  a1[8] = *(a2 + 64);
  a1[9] = *(a2 + 72);
  a1[11] = *(a2 + 88);
  a1[12] = *(a2 + 96);
  v4 = *(a2 + 104);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
  }

  a1[13] = v4;
  result = *(a2 + 112);
  a1[14] = result;
  return result;
}

void sub_195DD83AC(_Unwind_Exception *a1)
{
  v3 = *(v1 + 104);
  if (v3)
  {
    __copy_helper_block_e16_64c30_ZTSN2RB8objc_ptrIP8RBDeviceEE72c40_ZTSN2RB8objc_ptrIP17RBImageQueueLayerEE88c29_ZTSN2RB8objc_ptrIP7RBLayerEE96c35_ZTSN2RB8objc_ptrIP12RBLayerGroupEE104c40_ZTSN2RB14refcounted_ptrINS_8DrawableEEE112c36_ZTSN2RB8objc_ptrIP13RBDisplayListEE_cold_1(v3);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_e16_64c30_ZTSN2RB8objc_ptrIP8RBDeviceEE72c40_ZTSN2RB8objc_ptrIP17RBImageQueueLayerEE88c29_ZTSN2RB8objc_ptrIP7RBLayerEE96c35_ZTSN2RB8objc_ptrIP12RBLayerGroupEE104c40_ZTSN2RB14refcounted_ptrINS_8DrawableEEE112c36_ZTSN2RB8objc_ptrIP13RBDisplayListEE(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2 && atomic_fetch_add_explicit((v2 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __copy_helper_block_e8_48c58_ZTSN2RB8objc_ptrIPU21objcproto10MTLTexture11objc_objectEE56c66_ZTSN2RB8objc_ptrIPU29objcproto18RBDrawableDelegate11objc_objectEE64c30_ZTSN2RB8objc_ptrIP8RBDeviceEE72c40_ZTSN2RB14refcounted_ptrINS_8DrawableEEE80c30_ZTSN2RB8objc_ptrIP8NSStringEE120c40_ZTSN2RB8objc_ptrIU13block_pointerFvvEEE128c40_ZTSN2RB8objc_ptrIU13block_pointerFvvEEE136c48_ZTSN2RB8objc_ptrIU13block_pointerFvP7NSErrorEEE144c55_ZTSN2RB8objc_ptrIPU18objcproto8MTLEvent11objc_objectEE_cold_1();
  }

  v3 = *(a1 + 64);
}

void sub_195DD8798(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_195DD88B4(_Unwind_Exception *a1)
{
  if (v2)
  {
    __copy_helper_block_e16_64c30_ZTSN2RB8objc_ptrIP8RBDeviceEE72c40_ZTSN2RB8objc_ptrIP17RBImageQueueLayerEE88c29_ZTSN2RB8objc_ptrIP7RBLayerEE96c35_ZTSN2RB8objc_ptrIP12RBLayerGroupEE104c40_ZTSN2RB14refcounted_ptrINS_8DrawableEEE112c36_ZTSN2RB8objc_ptrIP13RBDisplayListEE_cold_1(v2);
  }

  [(RBLayer *)v1 waitUntilAsyncRenderingCompleted];
  _Unwind_Resume(a1);
}

void sub_195DD8A9C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_195DD8DE8(_Unwind_Exception *exception_object)
{
  if (atomic_fetch_add_explicit(v1, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __copy_helper_block_e8_48c58_ZTSN2RB8objc_ptrIPU21objcproto10MTLTexture11objc_objectEE56c66_ZTSN2RB8objc_ptrIPU29objcproto18RBDrawableDelegate11objc_objectEE64c30_ZTSN2RB8objc_ptrIP8RBDeviceEE72c40_ZTSN2RB14refcounted_ptrINS_8DrawableEEE80c30_ZTSN2RB8objc_ptrIP8NSStringEE120c40_ZTSN2RB8objc_ptrIU13block_pointerFvvEEE128c40_ZTSN2RB8objc_ptrIU13block_pointerFvvEEE136c48_ZTSN2RB8objc_ptrIU13block_pointerFvP7NSErrorEEE144c55_ZTSN2RB8objc_ptrIPU18objcproto8MTLEvent11objc_objectEE_cold_1();
  }

  _Unwind_Resume(exception_object);
}

void sub_195DD8EB4(_Unwind_Exception *exception_object)
{
  if (atomic_fetch_add_explicit(v1, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __copy_helper_block_e8_48c58_ZTSN2RB8objc_ptrIPU21objcproto10MTLTexture11objc_objectEE56c66_ZTSN2RB8objc_ptrIPU29objcproto18RBDrawableDelegate11objc_objectEE64c30_ZTSN2RB8objc_ptrIP8RBDeviceEE72c40_ZTSN2RB14refcounted_ptrINS_8DrawableEEE80c30_ZTSN2RB8objc_ptrIP8NSStringEE120c40_ZTSN2RB8objc_ptrIU13block_pointerFvvEEE128c40_ZTSN2RB8objc_ptrIU13block_pointerFvvEEE136c48_ZTSN2RB8objc_ptrIU13block_pointerFvP7NSErrorEEE144c55_ZTSN2RB8objc_ptrIPU18objcproto8MTLEvent11objc_objectEE_cold_1();
  }

  _Unwind_Resume(exception_object);
}

void sub_195DD8FF0(_Unwind_Exception *exception_object)
{
  if (atomic_fetch_add_explicit((v1 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __copy_helper_block_e8_48c58_ZTSN2RB8objc_ptrIPU21objcproto10MTLTexture11objc_objectEE56c66_ZTSN2RB8objc_ptrIPU29objcproto18RBDrawableDelegate11objc_objectEE64c30_ZTSN2RB8objc_ptrIP8RBDeviceEE72c40_ZTSN2RB14refcounted_ptrINS_8DrawableEEE80c30_ZTSN2RB8objc_ptrIP8NSStringEE120c40_ZTSN2RB8objc_ptrIU13block_pointerFvvEEE128c40_ZTSN2RB8objc_ptrIU13block_pointerFvvEEE136c48_ZTSN2RB8objc_ptrIU13block_pointerFvP7NSErrorEEE144c55_ZTSN2RB8objc_ptrIPU18objcproto8MTLEvent11objc_objectEE_cold_1();
  }

  _Unwind_Resume(exception_object);
}

void sub_195DD967C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21, uint64_t a22, uint64_t a23, id a24, id a25, uint64_t a26, id a27, id a28)
{
  if (a14)
  {
    if (atomic_fetch_add_explicit((a14 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      [RBDrawable initWithDevice:];
    }
  }

  _Unwind_Resume(a1);
}

void sub_195DD9C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id a19, id a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33, id a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, id a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  RB::RenderFrame::~RenderFrame(&a61);

  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

id __copy_helper_block_e8_32c48_ZTSN2RB8objc_ptrIU13block_pointerFvP7CGImageEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

void sub_195DDA170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id a17)
{
  CFRelease(v18);
  if (v17)
  {
    CFRelease(v17);
  }

  _Unwind_Resume(a1);
}

CFTypeRef __copy_helper_block_e8_32c48_ZTSN2RB8objc_ptrIU13block_pointerFvP7CGImageEEE40c27_ZTSN2RB6cf_ptrIP7CGImageEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  if (result)
  {
    result = CFRetain(result);
  }

  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_32c48_ZTSN2RB8objc_ptrIU13block_pointerFvP7CGImageEEE40c27_ZTSN2RB6cf_ptrIP7CGImageEE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
}

id __copy_helper_block_e8_64c61_ZTSN2RB8objc_ptrIPU28objcproto17OS_dispatch_queue8NSObjectEE72c48_ZTSN2RB8objc_ptrIU13block_pointerFvP7CGImageEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 64) = *(a2 + 64);
  result = *(a2 + 72);
  *(a1 + 72) = result;
  return result;
}

void __destroy_helper_block_e8_64c61_ZTSN2RB8objc_ptrIPU28objcproto17OS_dispatch_queue8NSObjectEE72c48_ZTSN2RB8objc_ptrIU13block_pointerFvP7CGImageEEE(uint64_t a1)
{
  v2 = *(a1 + 64);
}

id __copy_helper_block_e8_40c61_ZTSN2RB8objc_ptrIPU28objcproto17OS_dispatch_queue8NSObjectEE48c48_ZTSN2RB8objc_ptrIU13block_pointerFvP7CGImageEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  result = *(a2 + 48);
  *(a1 + 48) = result;
  return result;
}

void __destroy_helper_block_e8_40c61_ZTSN2RB8objc_ptrIPU28objcproto17OS_dispatch_queue8NSObjectEE48c48_ZTSN2RB8objc_ptrIU13block_pointerFvP7CGImageEEE(uint64_t a1)
{
  v2 = *(a1 + 40);
}

id __copy_helper_block_e16_48c30_ZTSN2RB8objc_ptrIP8RBDeviceEE72c61_ZTSN2RB8objc_ptrIPU28objcproto17OS_dispatch_queue8NSObjectEE80c48_ZTSN2RB8objc_ptrIU13block_pointerFvP7CGImageEEE88c40_ZTSN2RB14refcounted_ptrINS_8DrawableEEE96c30_ZTSN2RB8objc_ptrIP8NSStringEE104c36_ZTSN2RB8objc_ptrIP13RBDisplayListEE(void *a1, uint64_t a2)
{
  a1[6] = *(a2 + 48);
  a1[9] = *(a2 + 72);
  a1[10] = *(a2 + 80);
  v4 = *(a2 + 88);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
  }

  a1[11] = v4;
  a1[12] = *(a2 + 96);
  result = *(a2 + 104);
  a1[13] = result;
  return result;
}

void sub_195DDA4CC(_Unwind_Exception *a1)
{
  v3 = *(v1 + 88);
  if (v3)
  {
    if (atomic_fetch_add_explicit((v3 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __copy_helper_block_e8_48c58_ZTSN2RB8objc_ptrIPU21objcproto10MTLTexture11objc_objectEE56c66_ZTSN2RB8objc_ptrIPU29objcproto18RBDrawableDelegate11objc_objectEE64c30_ZTSN2RB8objc_ptrIP8RBDeviceEE72c40_ZTSN2RB14refcounted_ptrINS_8DrawableEEE80c30_ZTSN2RB8objc_ptrIP8NSStringEE120c40_ZTSN2RB8objc_ptrIU13block_pointerFvvEEE128c40_ZTSN2RB8objc_ptrIU13block_pointerFvvEEE136c48_ZTSN2RB8objc_ptrIU13block_pointerFvP7NSErrorEEE144c55_ZTSN2RB8objc_ptrIPU18objcproto8MTLEvent11objc_objectEE_cold_1();
    }
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_e16_48c30_ZTSN2RB8objc_ptrIP8RBDeviceEE72c61_ZTSN2RB8objc_ptrIPU28objcproto17OS_dispatch_queue8NSObjectEE80c48_ZTSN2RB8objc_ptrIU13block_pointerFvP7CGImageEEE88c40_ZTSN2RB14refcounted_ptrINS_8DrawableEEE96c30_ZTSN2RB8objc_ptrIP8NSStringEE104c36_ZTSN2RB8objc_ptrIP13RBDisplayListEE(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2 && atomic_fetch_add_explicit((v2 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __copy_helper_block_e8_48c58_ZTSN2RB8objc_ptrIPU21objcproto10MTLTexture11objc_objectEE56c66_ZTSN2RB8objc_ptrIPU29objcproto18RBDrawableDelegate11objc_objectEE64c30_ZTSN2RB8objc_ptrIP8RBDeviceEE72c40_ZTSN2RB14refcounted_ptrINS_8DrawableEEE80c30_ZTSN2RB8objc_ptrIP8NSStringEE120c40_ZTSN2RB8objc_ptrIU13block_pointerFvvEEE128c40_ZTSN2RB8objc_ptrIU13block_pointerFvvEEE136c48_ZTSN2RB8objc_ptrIU13block_pointerFvP7NSErrorEEE144c55_ZTSN2RB8objc_ptrIPU18objcproto8MTLEvent11objc_objectEE_cold_1();
  }

  v3 = *(a1 + 48);
}

uint64_t RB::Refcount<RB::SharedSurfaceClient,std::atomic<unsigned int>>::release(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    return RB::refcounted_ptr<RB::SharedSurfaceClient>::operator=();
  }

  return result;
}

void _ZZZ38__RBLayer_displayWithBounds_callback__EUb_EN3__08__invokeIPvEEDajyT_(uint64_t ReleasedImageInfo, uint64_t a2, uint64_t a3)
{
  v5 = ReleasedImageInfo;
  if ((atomic_load_explicit(&_ZGVZZZ38__RBLayer_displayWithBounds_callback__EUb_ENK3__0clIPvEEDajyT_E9log_stats, memory_order_acquire) & 1) == 0)
  {
    ReleasedImageInfo = __cxa_guard_acquire(&_ZGVZZZ38__RBLayer_displayWithBounds_callback__EUb_ENK3__0clIPvEEDajyT_E9log_stats);
    if (ReleasedImageInfo)
    {
      v10 = RB::debug_BOOL("RB_PRINT_FRAME_STATS", v9);
      _ZZZZ38__RBLayer_displayWithBounds_callback__EUb_ENK3__0clIPvEEDajyT_E9log_stats = v10 & ((v10 & 0x100) >> 8);
      __cxa_guard_release(&_ZGVZZZ38__RBLayer_displayWithBounds_callback__EUb_ENK3__0clIPvEEDajyT_E9log_stats);
    }
  }

  if (v5)
  {
    if (_ZZZZ38__RBLayer_displayWithBounds_callback__EUb_ENK3__0clIPvEEDajyT_E9log_stats == 1)
    {
      ReleasedImageInfo = CAImageQueueGetReleasedImageInfo();
      if (ReleasedImageInfo)
      {
        v6 = "";
        if (*(ReleasedImageInfo + 16))
        {
          v7 = ", flushed";
        }

        else
        {
          v7 = "";
        }

        if (*(ReleasedImageInfo + 17))
        {
          v6 = ", consumed";
        }

        ReleasedImageInfo = printf("RBLayer frame: count %u (%.1f F), id %llx%s%s\n", *ReleasedImageInfo, *ReleasedImageInfo * (60.0 * *(ReleasedImageInfo + 32)), a2, v7, v6);
      }
    }
  }

  v8 = RB::SurfacePool::shared(ReleasedImageInfo);
  RB::SurfacePool::dealloc(v8, *a3, *(a3 + 8));

  JUMPOUT(0x19A8C09E0);
}

uint64_t RB::vector<RB::objc_ptr<RBLayer *>,0ul,unsigned long>::~vector(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v3 = 0;
    do
    {
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

uint64_t RB::DisplayList::Interpolator::Op::get_type(RB::DisplayList::Interpolator::Op *this)
{
  if ((*this & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (0x201040302010000uLL >> (8 * (*this & 0xFu)));
  }
}

void RB::DisplayList::Interpolator::Layer::print(RB::DisplayList::Interpolator::Layer *this, std::string *a2)
{
  if (*(this + 248))
  {
    if (*(this + 250) == 1)
    {
      RB::SexpString::print(a2, 0, "#:non-fade");
    }

    if (*(this + 251) == 1)
    {
      RB::SexpString::print(a2, 0, "#:has-animations");
    }

    RB::SexpString::printf(a2, 0, "#:active-duration %g", *(this + 2));
    v4 = this + 16;
    if (*(this + 22))
    {
      v4 = *(this + 22);
    }

    v5 = *(this + 46);
    if (v5)
    {
      v6 = v4 + 20;
      v7 = 40 * v5;
      v8 = -1;
      while (1)
      {
        v9 = *(v6 - 20);
        if (v8 != v9 >> 4)
        {
          if ((v8 & 0x80000000) == 0)
          {
            RB::SexpString::pop(a2);
          }

          RB::SexpString::push(a2, "group");
          RB::SexpString::printf(a2, 0, "#:id %u", *(v6 - 5) >> 4);
          v9 = *(v6 - 20);
          v8 = v9 >> 4;
        }

        *&v10 = RB::SexpString::push(a2, (&RB::DisplayList::Interpolator::Layer::print(RB::SexpString &)const::types)[v9 & 0xF]).u64[0];
        v11 = *(v6 - 20) & 0xFLL;
        if ((*(v6 - 5) & 0xFu) <= 7)
        {
          break;
        }

        if (v11 == 8)
        {
          goto LABEL_21;
        }

        if (v11 != 9)
        {
          goto LABEL_22;
        }

        RB::SexpString::printf(a2, 0, "#:from %u #:from-count %u #:to %u #:to-count %u", v10);
LABEL_24:
        if (*(v6 + 3))
        {
          RB::SexpString::printf(a2, 0, "#:animation %d", *(v6 + 3));
        }

        v12 = *(v6 + 4);
        if (v12 != 0.0)
        {
          RB::SexpString::printf(a2, 0, "#:begin %g", v12);
        }

        if (*(v6 + 4) != 0x100000000)
        {
          RB::SexpString::printf(a2, 0, "#:rects (%u . %u)", *(v6 + 1), *(v6 + 2));
        }

        if ((*(v6 - 16) & 8) != 0)
        {
          RB::SexpString::print(a2, 0, "#:value-inverted");
        }

        RB::SexpString::pop(a2);
        v6 += 40;
        v7 -= 40;
        if (!v7)
        {
          RB::SexpString::pop(a2);
          goto LABEL_34;
        }
      }

      if (!v11)
      {
        RB::SexpString::printf(a2, 0, "#:count %u #:from (%u . %u)", v10);
        goto LABEL_24;
      }

      if (v11 != 1)
      {
LABEL_22:
        RB::SexpString::printf(a2, 0, "#:count %u #:from (%u . %u) #:to (%u . %u)", v10);
        goto LABEL_24;
      }

LABEL_21:
      RB::SexpString::printf(a2, 0, "#:count %u #:to (%u . %u)", v10);
      goto LABEL_24;
    }

LABEL_34:
    if (*(this + 60))
    {
      RB::SexpString::push(a2, "rects");
      v13 = *(this + 60);
      if (v13)
      {
        v14 = 0;
        v15 = 0;
        v16 = 16 * v13;
        do
        {
          v17 = *(this + 29);
          if (!v17)
          {
            v17 = this + 200;
          }

          RB::SexpString::printf(a2, 1, "#:%u [%g %g; %g %g]", v15++, COERCE_FLOAT(*&v17[v14]), COERCE_FLOAT(HIDWORD(*&v17[v14])), COERCE_FLOAT(*&v17[v14 + 8]), COERCE_FLOAT(HIDWORD(*&v17[v14 + 8])));
          v14 += 16;
        }

        while (v16 != v14);
      }

      RB::SexpString::pop(a2);
    }
  }

  else
  {

    RB::SexpString::print(a2, 0, "#:invalid");
  }
}

uint64_t RB::DisplayList::Interpolator::Layer::failed(uint64_t this)
{
  *(this + 184) = 0;
  *(this + 192) = 0;
  if (*(this + 240) >= 3u)
  {
    *(this + 240) = 2;
  }

  *(this + 249) = 0;
  v1 = *(*this + 16);
  if (v1)
  {
    v2 = 0.0;
    if (v1 <= 0xFFFFFFFD)
    {
      v2 = *(*(*this + 104) + 40 * (v1 - 1) + 12);
    }
  }

  else
  {
    v2 = 1.0;
  }

  *(this + 8) = v2;
  *(this + 248) = 0;
  return this;
}

void *RB::vector<RB::Animation::TermOrArg,128ul,unsigned long>::reserve_slow(void *__dst, size_t a2)
{
  if (*(__dst + 66) + (*(__dst + 66) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 66) + (*(__dst + 66) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,4ul>(*(__dst + 64), __dst, 0x80uLL, __dst + 66, v3);
  *(__dst + 64) = result;
  return result;
}

float64x2_t *CG::intersection@<X0>(float64x2_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = vextq_s8(*(a2 + 16), *(a2 + 16), 8uLL);
  v4 = result[1];
  v5 = vmulq_f64(v4, v3);
  v6 = vsubq_f64(vdupq_laneq_s64(v5, 1), v5);
  if (fabs(v6.f64[0]) >= 0.0001)
  {
    v8 = vmulq_f64(vsubq_f64(*a2, *result), v3);
    *(a3 + 8) = vmlaq_n_f64(*result, v4, vdivq_f64(vsubq_f64(vdupq_laneq_s64(v8, 1), v8), v6).f64[0]);
    v7 = 1;
  }

  else
  {
    v7 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  *a3 = v7;
  return result;
}

uint64_t *RB::DisplayList::Metadata::identity_ns(uint64_t *this)
{
  if (this)
  {
    while (1)
    {
      v1 = *this;
      if ((*this & 7) == 0)
      {
        break;
      }

      this = (v1 & 0xFFFFFFFFFFFFFFF8);
      if ((v1 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        return this;
      }
    }

    return this[1];
  }

  return this;
}

uint64_t *RB::DisplayList::Metadata::numeric_value(uint64_t *this)
{
  if (this)
  {
    while (1)
    {
      v1 = *this;
      if ((*this & 7) == 2)
      {
        break;
      }

      this = (v1 & 0xFFFFFFFFFFFFFFF8);
      if ((v1 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        return this;
      }
    }

    ++this;
  }

  return this;
}

uint64_t *RB::DisplayList::Metadata::text_identity(uint64_t *this)
{
  if (this)
  {
    while (1)
    {
      v1 = *this;
      if ((*this & 7) == 3)
      {
        break;
      }

      this = (v1 & 0xFFFFFFFFFFFFFFF8);
      if ((v1 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        return this;
      }
    }

    return this[1];
  }

  return this;
}

uint64_t *RB::DisplayList::Metadata::animation_layer(uint64_t *this)
{
  if (this)
  {
    while (1)
    {
      v1 = *this;
      if ((*this & 7) == 4)
      {
        break;
      }

      this = (v1 & 0xFFFFFFFFFFFFFFF8);
      if ((v1 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        return this;
      }
    }

    ++this;
  }

  return this;
}

uint64_t anonymous namespace::AnimationTimer::shared(_anonymous_namespace_::AnimationTimer *this)
{
  {
    operator new();
  }
}

void anonymous namespace::AnimationTimer::set_handler(uint64_t a1, void *a2, void *a3, double a4, float a5)
{
  os_unfair_lock_lock(a1);
  v10 = *(a1 + 272);
  if (v10)
  {
    v11 = -v10;
    v12 = 32 * v10;
    do
    {
      if (*(a1 + 264))
      {
        v13 = *(a1 + 264);
      }

      else
      {
        v13 = a1 + 8;
      }

      v14 = *(v13 + v12 - 16);
      if (v14 == a3)
      {

        v15 = *(a1 + 272);
        *(a1 + 272) = v15 - 1;
        if (v10 != v15)
        {
          memmove((v13 + v12 - 32), (v13 + v12), 32 * (v11 + v15));
        }
      }

      v12 -= 32;
      --v10;
    }

    while (!__CFADD__(v11++, 1));
  }

  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_12:
    os_unfair_lock_unlock(a1);
    v17 = 0;
    goto LABEL_45;
  }

  v18 = *(a1 + 272);
  if (*(a1 + 280) < (v18 + 1))
  {
    v18 = *(a1 + 272);
  }

  v19 = *(a1 + 264);
  if (!v19)
  {
    v19 = a1 + 8;
  }

  v20 = (v19 + 32 * v18);
  *v20 = 0u;
  v20[1] = 0u;
  v21 = *(a1 + 264);
  v22 = *(a1 + 272) + 1;
  *(a1 + 272) = v22;
  if (!v21)
  {
    v21 = a1 + 8;
  }

  v23 = v21 + 32 * v22;
  *(v23 - 32) = a2;
  *(v23 - 24) = a4;
  v24 = *(v23 - 16);
  if (v24 != a3)
  {

    *(v23 - 16) = a3;
  }

  *(v23 - 8) = a5;
  v25 = *(a1 + 320);
  v26 = *(a1 + 328);
  if (!v25)
  {
    v25 = a1 + 288;
  }

  if (v26)
  {
    v27 = (v25 + 8);
    v28 = 16 * v26;
    while (!*(v27 - 1) || *v27 != a2)
    {
      v27 += 2;
      v28 -= 16;
      if (!v28)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_12;
  }

LABEL_28:
  v17 = [[RBAnimationThread alloc] initWithScreen:a2];

  if (v17)
  {
    v29 = *(a1 + 328);
    if (*(a1 + 336) < (v29 + 1))
    {
      v29 = *(a1 + 328);
    }

    v30 = *(a1 + 320);
    if (!v30)
    {
      v30 = a1 + 288;
    }

    v31 = (v30 + 16 * v29);
    *v31 = 0;
    v31[1] = 0;
    v32 = *(a1 + 320);
    v33 = *(a1 + 328) + 1;
    *(a1 + 328) = v33;
    if (!v32)
    {
      v32 = a1 + 288;
    }

    v34 = v32 + 16 * v33;
    v35 = *(v34 - 16);
    if (v35 != v17)
    {

      *(v34 - 16) = v17;
    }

    *(v34 - 8) = a2;
  }

  else if (*(a1 + 344) - a4 >= 0.0166666667)
  {
    *(a1 + 344) = a4;
    v36 = a4 - CACurrentMediaTime();
    if (v36 > 0.0166666667)
    {
      v36 = 0.0166666667;
    }

    v37 = dispatch_time(0, (v36 * 1000000000.0));
    if ((atomic_load_explicit(&qword_1ED6D5418, memory_order_acquire) & 1) == 0)
    {
    }
  }

  os_unfair_lock_unlock(a1);
  [(RBAnimationThread *)v17 startThread];
LABEL_45:
}

void sub_195DDB7A4(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1);

  _Unwind_Resume(a1);
}

void sub_195DDBAC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, os_unfair_lock_t lock, char a10)
{
  if (a10 == 1)
  {
    os_unfair_lock_unlock(lock);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::AnimationTimer::dispatch_handlers(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v35 = 0;
  v36 = 8;
  v4 = *(a1 + 272);
  if (!v4)
  {
    goto LABEL_36;
  }

  v8 = 0;
  v9 = 0;
  v10 = a1 + 8;
  v11 = a4 * 0.5;
  do
  {
    v12 = *(a1 + 264);
    if (v12)
    {
      v13 = *(a1 + 264);
    }

    else
    {
      v13 = v10;
    }

    v14 = (v13 + v8);
    if (*(v13 + v8 + 8) - a3 < v11)
    {
      v15 = v35;
      v16 = v35 + 1;
      if (v36 < v35 + 1)
      {
        RB::vector<RBDevice *,8ul,unsigned long>::reserve_slow(__dst, v16);
        v15 = v35;
        v12 = *(a1 + 264);
        v4 = *(a1 + 272);
        v16 = v35 + 1;
      }

      v17 = v34;
      if (!v34)
      {
        v17 = __dst;
      }

      *&v17[8 * v15] = *(v14 + 2);
      v35 = v16;
      if (!v12)
      {
        v12 = v10;
      }

      v18 = v12 + 32 * v4;
      v32 = *v14;
      v19 = *v14;
      *(v14 + 2) = 0;
      v20 = *(v13 + v8 + 24);
      *v14 = *(v18 - 32);
      *(v14 + 2) = *(v18 - 16);
      *(v18 - 16) = 0;
      *(v13 + v8 + 24) = *(v18 - 8);
      *(v18 - 32) = v19;
      v21 = *(v18 - 16);
      *(v18 - 16) = 0;
      *(v18 - 8) = v20;

      v22 = *(a1 + 264);
      v23 = *(a1 + 272) - 1;
      *(a1 + 272) = v23;
      if (!v22)
      {
        v22 = v10;
      }

      v4 = *(a1 + 272);
    }

    ++v9;
    v8 += 32;
  }

  while (v9 < v4);
  if (!v35)
  {
    goto LABEL_36;
  }

  std::unique_lock<RB::spin_lock>::unlock[abi:nn200100](a2);
  [MEMORY[0x1E6979518] activateBackground:1];
  if (v34)
  {
    v24 = v34;
  }

  else
  {
    v24 = __dst;
  }

  if (v35)
  {
    v25 = 8 * v35;
    do
    {
      [*v24++ runAnimationAtTime:{a3, v32}];
      v25 -= 8;
    }

    while (v25);
    v26 = (v34 ? v34 : __dst);
    if (v35)
    {
      v27 = 8 * v35;
      do
      {
        v28 = *v26++;

        v27 -= 8;
      }

      while (v27);
    }
  }

  v35 = 0;
  [MEMORY[0x1E6979518] flush];
  std::unique_lock<RB::spin_lock>::lock[abi:nn200100](a2);
  v29 = v34;
  if (v34)
  {
    v30 = v34;
  }

  else
  {
    v30 = __dst;
  }

  if (v35)
  {
    for (i = 0; i < v35; ++i)
    {
    }

LABEL_36:
    v29 = v34;
  }

  if (v29)
  {
    free(v29);
  }
}

void sub_195DDBD4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  RB::vector<RB::objc_ptr<objc_object  {objcproto18RBAnimationHandler}*>,8ul,unsigned long>::~vector(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::AnimationTimer::remove_thread_locked(_anonymous_namespace_::AnimationTimer *this, RBAnimationThread *a2)
{
  v2 = *(this + 41);
  if (v2)
  {
    v5 = 0;
    v6 = this + 288;
    do
    {
      if (*(this + 40))
      {
        v7 = *(this + 40);
      }

      else
      {
        v7 = v6;
      }

      v8 = &v7[16 * v5];
      v9 = *v8;
      if (*v8 == a2)
      {
        v10 = &v7[16 * v2];
        *v8 = 0;
        v11 = v8[1];
        *v8 = *(v10 - 1);
        *(v10 - 2) = v9;
        *(v10 - 1) = v11;

        v12 = *(this + 40);
        v13 = *(this + 41) - 1;
        *(this + 41) = v13;
        if (!v12)
        {
          v12 = v6;
        }

        v2 = *(this + 41);
      }

      else
      {
        ++v5;
      }
    }

    while (v5 < v2);
  }
}

void *RB::vector<anonymous namespace::AnimationTimer::Handler,8ul,unsigned long>::reserve_slow(void *__dst, size_t a2)
{
  if (*(__dst + 34) + (*(__dst + 34) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 34) + (*(__dst + 34) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,32ul>(*(__dst + 32), __dst, 8uLL, __dst + 34, v3);
  *(__dst + 32) = result;
  return result;
}

void anonymous namespace::AnimationTimer::schedule_fallback_locked(double)::$_0::__invoke(uint64_t a1)
{
  lock = a1;
  v4 = 1;
  os_unfair_lock_lock(a1);
  *(a1 + 344) = 0x7FF0000000000000;
  v2 = CACurrentMediaTime();
  if (v4 == 1)
  {
    os_unfair_lock_unlock(lock);
  }
}

void sub_195DDBF10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, os_unfair_lock_t lock, char a10)
{
  if (a10 == 1)
  {
    os_unfair_lock_unlock(lock);
  }

  _Unwind_Resume(exception_object);
}

id *RB::vector<RB::objc_ptr<objc_object  {objcproto18RBAnimationHandler}*>,8ul,unsigned long>::~vector(id *a1)
{
  v2 = a1[8];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = a1;
  }

  if (a1[9])
  {
    v4 = 0;
    do
    {
    }

    while (v4 < a1[9]);
    v2 = a1[8];
  }

  if (v2)
  {
    free(v2);
  }

  return a1;
}

uint64_t RB::ContextDelegate::finalize()
{
  result = CGContextDelegateGetInfo();
  if (result)
  {
    v1 = *(*result + 8);

    return v1();
  }

  return result;
}

uint64_t RB::ContextDelegate::draw_image_from_rect(uint64_t a1, uint64_t a2, const char *a3, CGImage *a4, double a5, double a6, double a7, double a8, float64_t a9, float64_t a10, double a11, double a12)
{
  v13.f64[0] = a9;
  v13.f64[1] = a10;
  v14 = a11;
  v15 = a12;
  RB::ContextDelegate::draw_image_(a5, a6, a7, a8, a1, a2, a3, a4, &v13, 0);
  return 0;
}

uint64_t RB::ContextDelegate::draw_images(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, CGImageRef *a5, uint64_t a6, uint64_t a7)
{
  Info = CGContextDelegateGetInfo();
  v53 = a2;
  RB::ContextDelegate::update(Info, a3, a2, 0);
  if (!a6)
  {
    [*(Info + 8) setInfinite];
  }

  v14 = CGGStateGetInterpolationQuality() - 1;
  if (v14 > 3)
  {
    v15 = 7;
  }

  else
  {
    v15 = dword_195E455F0[v14];
  }

  v56 = v15;
  CGGStateGetAlpha();
  v17 = v16;
  if (!*(Info + 424))
  {
    v17 = *(Info + 520) * v17;
  }

  CompositeOperation = CGGStateGetCompositeOperation();
  v54 = a3;
  if (CompositeOperation <= 0x1B)
  {
    if (!a7)
    {
      return 0;
    }

    goto LABEL_12;
  }

  v19 = 0;
  if (a7)
  {
LABEL_12:
    v20 = (a6 + 16);
    v21 = (a4 + 16);
    v55 = v17;
    while (1)
    {
      if (a6)
      {
        [*(Info + 8) setRect:{*(v20 - 2), *(v20 - 1), *v20, v20[1]}];
      }

      v22 = *(v21 - 2);
      v23 = *(v21 - 1);
      v24 = *v21;
      v25 = v21[1];
      v26 = v24;
      v27 = -v25;
      v28 = v22;
      v29 = (v25 + v23);
      v30 = 1065353216;
      v31 = 1065353216;
      v32 = 1065353216;
      v33 = 1065353216;
      if (!CGImageIsMask(*a5))
      {
        break;
      }

      FillColor = CGGStateGetFillColor();
      if (!CGColorGetPattern(FillColor))
      {
        v46 = RBColorFromCGColor2(FillColor, *(Info + 592));
        v30 = LODWORD(v46);
        v31 = v47;
        v32 = v48;
        v33 = v49;
        v45 = 1;
        goto LABEL_20;
      }

      v43 = *(Info + 16);
      v44 = *a5;
      v58 = 0;
      v59 = 0;
      v57 = v26;
      v60 = v27;
      v61 = v28;
      v62 = v29;
      LODWORD(v39) = 1065353216;
      LODWORD(v40) = 1065353216;
      LODWORD(v41) = 1065353216;
      LODWORD(v42) = 1065353216;
      [v43 setTiledImage:v44 transform:&v57 sourceRect:v56 interpolation:0 tintColor:0.0 flags:{0.0, 1.0, 1.0, v39, v40, v41, v42}];
      RB::ContextDelegate::mask_color_in_shape(Info, FillColor, v54, v53, v19, v55);
LABEL_21:
      ++a5;
      v20 += 4;
      v21 += 4;
      if (!--a7)
      {
        return 0;
      }
    }

    v45 = 0;
LABEL_20:
    v50 = *(Info + 16);
    v51 = *a5;
    v58 = 0;
    v59 = 0;
    v57 = v26;
    v60 = v27;
    v61 = v28;
    v62 = v29;
    LODWORD(v34) = v30;
    LODWORD(v35) = v31;
    LODWORD(v36) = v32;
    LODWORD(v37) = v33;
    [v50 setTiledImage:v51 transform:&v57 sourceRect:v56 interpolation:v45 tintColor:0.0 flags:{0.0, 1.0, 1.0, v34, v35, v36, v37, v53}];
    RBDrawingStateDrawShape(*(Info + 504), *(Info + 8), *(Info + 16), v19, v55);
    goto LABEL_21;
  }

  return 0;
}

uint64_t RB::ContextDelegate::draw_shading(uint64_t a1, uint64_t a2, const char *a3, CGShading *a4)
{
  Info = CGContextDelegateGetInfo();
  RB::ContextDelegate::update(Info, a3, a2, 0);
  [*(Info + 8) setInfinite];
  v8 = RB::ContextDelegate::draw_shading_in_shape(Info, a3, a4, 0);
  result = 0;
  if ((v8 & 1) == 0)
  {
    RBDrawingStateGetDeviceClipBoundingBox(*(Info + 504));
    v11.f64[1] = v10;
    v13.f64[1] = v12;
    v14 = vcvt_f32_f64(v13);
    v82 = vcvt_f32_f64(v11);
    v83 = v14;
    Background = CGShadingGetBackground();
    if (Background)
    {
      v16 = Background;
      ColorSpace = CGShadingGetColorSpace();
      if (*(v16 + 8 * CGColorSpaceGetNumberOfComponents(ColorSpace)) == 0.0)
      {
        CGShadingGetBounds();
        v19.f64[1] = v18;
        v21.f64[1] = v20;
        RB::Rect::intersect(&v82, COERCE_DOUBLE(vcvt_f32_f64(v19)), vcvt_f32_f64(v21));
        v14 = v83;
      }
    }

    v22 = vceqz_f32(v14);
    if ((vpmax_u32(v22, v22).u32[0] & 0x80000000) == 0)
    {
      v23 = RB::operator*((Info + 448), v82, v14);
      v27 = RB::Bounds::Bounds(&v80, v23, v24, v25, v26);
      v28 = v81.i32[0];
      v29 = v81.i32[1];
      v30 = RB::srgb_colorspace(v27);
      v31 = CGBitmapContextCreate(0, v28, v29, 8uLL, 0, v30, 0x2002u);
      if (!v31)
      {
        return 1000;
      }

      v32 = v31;
      CTM = CGGStateGetCTM();
      v34 = *(CTM + 16);
      v35 = *(CTM + 32);
      v77 = *CTM;
      v78 = v34;
      v79 = v35;
      v36.f64[0] = RB::operator*(&v77, (Info + 448));
      v77 = v36;
      v78 = v37;
      v79 = v38;
      CGContextTranslateCTM(v32, -v80.i32[0], -v80.i32[1]);
      *&transform.a = v77;
      *&transform.c = v78;
      *&transform.tx = v79;
      CGContextConcatCTM(v32, &transform);
      if (CGShadingGetType())
      {
        CGContextSetCompositeOperation();
      }

      else
      {
        CGContextSetCompositeOperation();
        CGContextClear();
      }

      CGContextDrawShading(v32, a4);
      Image = CGBitmapContextCreateImage(v32);
      v40.i32[0] = 0;
      v41 = vceq_s32(v81, 0x8000000080000000);
      v42 = vdup_lane_s32(vcgt_s32(v40, vpmin_u32(v41, v41)), 0);
      v43 = vbsl_s8(v42, vneg_f32(0x80000000800000), vcvt_f32_s32(v81));
      v44 = vbsl_s8(v42, 0x100000001000000, vcvt_f32_s32(v80));
      v45.f64[0] = *&v43.i32[1];
      RBImageSimpleTransform(&transform, *v44.i32, *&v44.i32[1], *v43.i32, v45);
      v74 = *&transform.a;
      v75 = *&transform.c;
      v76 = *&transform.tx;
      v46 = *(Info + 464);
      *&transform.a = *(Info + 448);
      *&transform.c = v46;
      *&transform.tx = *(Info + 480);
      v47 = RB::AffineTransform::invert(&transform);
      if (v47)
      {
        p_transform = &transform;
      }

      else
      {
        p_transform = (Info + 448);
      }

      v49 = *&p_transform->a;
      p_c = &transform.c;
      if (!v47)
      {
        p_c = (Info + 464);
      }

      v51 = *p_c;
      p_tx = &transform.tx;
      if (!v47)
      {
        p_tx = (Info + 480);
      }

      v53 = *p_tx;
      v73[0] = v49;
      v73[1] = v51;
      v73[2] = v53;
      v54.f64[0] = RB::operator*(&v74, v73);
      v74 = v54;
      v75 = v55;
      v76 = v56;
      v57 = *(Info + 16);
      *&transform.a = v54;
      *&transform.c = v55;
      *&transform.tx = v56;
      LODWORD(v54.f64[0]) = 1065353216;
      LODWORD(v55) = 1065353216;
      LODWORD(v56) = 1065353216;
      LODWORD(v58) = 1065353216;
      [v57 setImage:Image transform:&transform interpolation:1 tintColor:0 flags:{v54.f64[0], *&v55, *&v56, v58}];
      v59.i32[0] = 0;
      v60 = vceq_s32(v81, 0x8000000080000000);
      v61 = vdup_lane_s32(vcgt_s32(v59, vpmin_u32(v60, v60)), 0);
      v62 = vbsl_s8(v61, vneg_f32(0x80000000800000), vcvt_f32_s32(v81));
      v63 = vbsl_s8(v61, 0x100000001000000, vcvt_f32_s32(v80));
      [*(Info + 8) setRect:{*v63.i32, *&v63.i32[1], *v62.i32, *&v62.i32[1]}];
      [*(Info + 8) setAntialiased:0];
      v64 = *(Info + 504);
      v65 = *(Info + 464);
      *&transform.a = *(Info + 448);
      *&transform.c = v65;
      *&transform.tx = *(Info + 480);
      RBDrawingStateSetCTM(v64, &transform);
      v66 = *(Info + 504);
      v67 = *(Info + 8);
      v68 = *(Info + 16);
      CGGStateGetAlpha();
      v70 = v69;
      if (!*(Info + 424))
      {
        v70 = *(Info + 520) * v70;
      }

      CompositeOperation = CGGStateGetCompositeOperation();
      if (CompositeOperation > 0x1B)
      {
        v72 = 0;
      }

      else
      {
      }

      RBDrawingStateDrawShape(v66, v67, v68, v72, v70);
      if (Image)
      {
        CFRelease(Image);
      }

      CFRelease(v32);
    }

    return 0;
  }

  return result;
}

void sub_195DDC728(_Unwind_Exception *a1)
{
  if (v2)
  {
    CFRelease(v2);
  }

  CFRelease(v1);
  _Unwind_Resume(a1);
}

uint64_t RB::ContextDelegate::draw_linear_gradient(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, char a9)
{
  v41[1] = *MEMORY[0x1E69E9840];
  Info = CGContextDelegateGetInfo();
  RB::ContextDelegate::update(Info, a7, a6, 0);
  LocationCount = CGGradientGetLocationCount();
  v20 = LocationCount + 2;
  if ((LocationCount + 2) >> 60)
  {
    if (v20 >> 61)
    {
      return 1000;
    }

    v25 = 0;
    v22 = 0;
    v23 = 8 * v20;
  }

  else
  {
    v22 = 16 * v20 > 0x1000;
    if (16 * v20 > 0x1000)
    {
      v26 = malloc_type_malloc(16 * v20, 0x1000040451B5BE8uLL);
      v25 = v26;
    }

    else
    {
      MEMORY[0x1EEE9AC00](LocationCount, v19);
      v25 = v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v25, v24);
    }

    v23 = 8 * v20;
    if (v20 < 0x201)
    {
      MEMORY[0x1EEE9AC00](v26, v27);
      v28 = v41 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v28, v30);
      v29 = 0;
      if (!v25)
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }
  }

  v28 = malloc_type_malloc(v23, 0x100004000313F17uLL);
  v29 = 1;
  if (!v25)
  {
LABEL_17:
    v21 = 1000;
    if (!v29)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_12:
  if (!v28)
  {
    goto LABEL_17;
  }

  gradient = RB::make_gradient(a8, v25, v28, *(Info + 592), a9);
  [*(Info + 16) setAxialGradientStartPoint:gradient endPoint:v25 stopCount:v28 colors:v32 locations:a1 flags:{a2, a3, a4}];
  [*(Info + 8) setInfinite];
  v33 = *(Info + 504);
  v34 = *(Info + 8);
  v35 = *(Info + 16);
  CGGStateGetAlpha();
  v37 = v36;
  if (!*(Info + 424))
  {
    v37 = *(Info + 520) * v37;
  }

  CompositeOperation = CGGStateGetCompositeOperation();
  if (CompositeOperation > 0x1B)
  {
    v39 = 0;
  }

  else
  {
  }

  RBDrawingStateDrawShape(v33, v34, v35, v39, v37);
  v21 = 0;
  if (!v29)
  {
    goto LABEL_19;
  }

LABEL_18:
  free(v28);
LABEL_19:
  if (v22)
  {
    free(v25);
  }

  return v21;
}

void sub_195DDC9F8(_Unwind_Exception *a1)
{
  if (v4)
  {
    free(v2);
    if ((v3 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v3)
  {
    goto LABEL_6;
  }

  free(v1);
  goto LABEL_6;
}

uint64_t RB::ContextDelegate::draw_radial_gradient(double a1, double a2, double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, const char *a9, uint64_t a10, char a11)
{
  v45[1] = *MEMORY[0x1E69E9840];
  Info = CGContextDelegateGetInfo();
  RB::ContextDelegate::update(Info, a9, a8, 0);
  LocationCount = CGGradientGetLocationCount();
  v24 = LocationCount + 2;
  if ((LocationCount + 2) >> 60)
  {
    if (v24 >> 61)
    {
      return 1000;
    }

    v29 = 0;
    v26 = 0;
    v27 = 8 * v24;
  }

  else
  {
    v26 = 16 * v24 > 0x1000;
    if (16 * v24 > 0x1000)
    {
      v30 = malloc_type_malloc(16 * v24, 0x1000040451B5BE8uLL);
      v29 = v30;
    }

    else
    {
      MEMORY[0x1EEE9AC00](LocationCount, v23);
      v29 = v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v29, v28);
    }

    v27 = 8 * v24;
    if (v24 < 0x201)
    {
      MEMORY[0x1EEE9AC00](v30, v31);
      v32 = v45 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v32, v34);
      v33 = 0;
      if (!v29)
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }
  }

  v32 = malloc_type_malloc(v27, 0x100004000313F17uLL);
  v33 = 1;
  if (!v29)
  {
LABEL_17:
    v25 = 1000;
    if (!v33)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_12:
  if (!v32)
  {
    goto LABEL_17;
  }

  gradient = RB::make_gradient(a10, v29, v32, *(Info + 592), a11);
  [*(Info + 16) setRadialGradientStartCenter:gradient startRadius:v29 endCenter:v32 endRadius:v36 stopCount:a1 colors:a2 locations:a3 flags:{a4, a5, a6}];
  [*(Info + 8) setInfinite];
  v37 = *(Info + 504);
  v38 = *(Info + 8);
  v39 = *(Info + 16);
  CGGStateGetAlpha();
  v41 = v40;
  if (!*(Info + 424))
  {
    v41 = *(Info + 520) * v41;
  }

  CompositeOperation = CGGStateGetCompositeOperation();
  if (CompositeOperation > 0x1B)
  {
    v43 = 0;
  }

  else
  {
  }

  RBDrawingStateDrawShape(v37, v38, v39, v43, v41);
  v25 = 0;
  if (!v33)
  {
    goto LABEL_19;
  }

LABEL_18:
  free(v32);
LABEL_19:
  if (v26)
  {
    free(v29);
  }

  return v25;
}

void sub_195DDCCE0(_Unwind_Exception *a1)
{
  if (v4)
  {
    free(v2);
    if ((v3 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v3)
  {
    goto LABEL_6;
  }

  free(v1);
  goto LABEL_6;
}

uint64_t RB::ContextDelegate::draw_conic_gradient(double a1, double a2, double a3, uint64_t a4, uint64_t a5, const char *a6, uint64_t a7)
{
  v37[1] = *MEMORY[0x1E69E9840];
  Info = CGContextDelegateGetInfo();
  RB::ContextDelegate::update(Info, a6, a5, 0);
  LocationCount = CGGradientGetLocationCount();
  v16 = LocationCount + 2;
  if ((LocationCount + 2) >> 60)
  {
    if (v16 >> 61)
    {
      return 1000;
    }

    v21 = 0;
    v18 = 0;
    v19 = 8 * v16;
  }

  else
  {
    v18 = 16 * v16 > 0x1000;
    if (16 * v16 > 0x1000)
    {
      v22 = malloc_type_malloc(16 * v16, 0x1000040451B5BE8uLL);
      v21 = v22;
    }

    else
    {
      MEMORY[0x1EEE9AC00](LocationCount, v15);
      v21 = v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v21, v20);
    }

    v19 = 8 * v16;
    if (v16 < 0x201)
    {
      MEMORY[0x1EEE9AC00](v22, v23);
      v24 = v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v24, v26);
      v25 = 0;
      if (!v21)
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }
  }

  v24 = malloc_type_malloc(v19, 0x100004000313F17uLL);
  v25 = 1;
  if (!v21)
  {
LABEL_17:
    v17 = 1000;
    if (!v25)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_12:
  if (!v24)
  {
    goto LABEL_17;
  }

  gradient = RB::make_gradient(a7, v21, v24, *(Info + 592), 3);
  [*(Info + 16) setConicGradientCenter:gradient angle:v21 stopCount:v24 colors:v28 locations:a1 flags:{a2, a3}];
  [*(Info + 8) setInfinite];
  v29 = *(Info + 504);
  v30 = *(Info + 8);
  v31 = *(Info + 16);
  CGGStateGetAlpha();
  v33 = v32;
  if (!*(Info + 424))
  {
    v33 = *(Info + 520) * v33;
  }

  CompositeOperation = CGGStateGetCompositeOperation();
  if (CompositeOperation > 0x1B)
  {
    v35 = 0;
  }

  else
  {
  }

  RBDrawingStateDrawShape(v29, v30, v31, v35, v33);
  v17 = 0;
  if (!v25)
  {
    goto LABEL_19;
  }

LABEL_18:
  free(v24);
LABEL_19:
  if (v18)
  {
    free(v21);
  }

  return v17;
}

void sub_195DDCFA4(_Unwind_Exception *a1)
{
  if (v4)
  {
    free(v2);
    if ((v3 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v3)
  {
    goto LABEL_6;
  }

  free(v1);
  goto LABEL_6;
}

void RB::ContextDelegate::create_layer(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v14.origin.x = a1;
  v14.origin.y = a2;
  v14.size.width = a3;
  v14.size.height = a4;
  Info = CGContextDelegateGetInfo();
  CTM = CGGStateGetCTM();
  v6 = *(CTM + 16);
  v7 = *(CTM + 32);
  v11 = *CTM;
  v12 = v6;
  v13 = v7;
  v8.f64[0] = RB::operator*(&v11, Info + 28);
  v11 = v8;
  v12 = v9;
  v13 = v10;
  RB::AffineTransform::scale(&v11);
  operator new();
}

uint64_t RB::ContextDelegate::draw_layer(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6, const char *a7)
{
  Info = CGContextDelegateGetInfo();
  if (CGContextDelegateGetCallback() == RB::ContextDelegate::get_bounds)
  {
    v20 = CGContextDelegateGetInfo();
    RB::ContextDelegate::update(v20, a7, a6, 0);
    v21 = RBDrawingStateBeginLayer(*(v20 + 504), 0);
    v34.origin.x = a1;
    v34.origin.y = a2;
    v34.size.width = a3;
    v34.size.height = a4;
    if (!CGRectEqualToRect(v34, *(Info + 632)))
    {
      RBDrawingStateTranslateCTM(v21, a1, a2);
      v23.f64[0] = *(Info + 648) / a3;
      RBDrawingStateScaleCTM(v21, v23, *(Info + 656) / a4);
      RBDrawingStateTranslateCTM(v21, -*(Info + 632), -*(Info + 640));
    }

    RBDrawingStateDrawDisplayList(v21, *(Info + 624), v22);
    v24 = *(v20 + 504);
    CGGStateGetAlpha();
    v26 = v25;
    if (!*(v20 + 424))
    {
      v26 = *(v20 + 520) * v26;
    }

    CompositeOperation = CGGStateGetCompositeOperation();
    if (CompositeOperation > 0x1B)
    {
      v28 = 0;
    }

    else
    {
    }

    RBDrawingStateDrawLayer(v24, v21, v28, v26);
  }

  else
  {
    CTM = CGGStateGetCTM();
    v15 = *CTM;
    v16 = CTM[2];
    *&v32.c = CTM[1];
    *&v32.tx = v16;
    *&v32.a = v15;
    *&v31.a = v15;
    *&v31.c = *&v32.c;
    *&v31.tx = v16;
    CGAffineTransformTranslate(&v32, &v31, a1, a2);
    v30 = v32;
    CGAffineTransformScale(&v31, &v30, *(Info + 648) / a3, *(Info + 656) / a4);
    v32 = v31;
    *&v30.a = *&v31.a;
    *&v30.c = *&v31.c;
    v17 = -*(Info + 632);
    v18 = -*(Info + 640);
    *&v30.tx = *&v31.tx;
    CGAffineTransformTranslate(&v31, &v30, v17, v18);
    v32 = v31;
    CGGStateCreateCopy();
    CGGStateSetCTM();
    v19 = CGContextCreateWithDelegate();
    CGGStateRelease();
    v33.origin.x = a1;
    v33.origin.y = a2;
    v33.size.width = a3;
    v33.size.height = a4;
    CGContextBeginTransparencyLayerWithRect(v19, v33, 0);
    [*(Info + 624) renderInContext:v19 options:0];
    CGContextEndTransparencyLayer(v19);
    if (v19)
    {
      CFRelease(v19);
    }
  }

  return 0;
}

void sub_195DDD370(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

void RB::ContextDelegate::~ContextDelegate(RB::ContextDelegate *this)
{
  *this = &unk_1F0A38F70;
  v2 = *(this + 76);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 52);
  if (v3)
  {
    free(v3);
  }
}

{
  RB::ContextDelegate::~ContextDelegate(this);

  JUMPOUT(0x19A8C09E0);
}

uint64_t RB::ContextDelegate::set_stroked_clip(uint64_t a1, uint64_t a2)
{
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  CGClipStrokeGetMatrix();
  CGClipStrokeGetLineWidth();
  v5 = v4;
  LineCap = CGClipStrokeGetLineCap();
  LineJoin = CGClipStrokeGetLineJoin();
  CGClipStrokeGetMiterLimit();
  v9 = v8;
  v16 = 0.0;
  v17 = 0;
  if (CGClipStrokeGetDash())
  {
    Pattern = CGDashGetPattern();
    v11 = v16;
    v12 = v17;
  }

  else
  {
    v12 = 0;
    Pattern = 0;
    v11 = 0.0;
  }

  v13 = *(a1 + 8);
  v15[0] = v18;
  v15[1] = v19;
  v15[2] = v20;
  [v13 setStrokedPath:a2 transform:v15 lineWidth:LineCap lineCap:LineJoin lineJoin:Pattern miterLimit:v12 dashPhase:v5 dashPattern:v9 dashCount:v11];
  return [*(a1 + 8) setEOFill:0];
}

void RB::ContextDelegate::clip_soft_mask(uint64_t a1)
{
  CGSoftMaskGetMatrix();
  v58 = *&transform.a;
  v59 = *&transform.c;
  v60 = *&transform.tx;
  Background = CGSoftMaskGetBackground();
  Transfer = CGSoftMaskGetTransfer();
  if (Transfer && (v4 = Transfer, !CGFunctionIsIdentity()))
  {
    CGSoftMaskGetBounds();
    v15.f64[1] = v14;
    v17.f64[1] = v16;
    v18 = RB::operator*(&v58, vcvt_f32_f64(v15), vcvt_f32_f64(v17));
    RB::Bounds::Bounds(&v55, v18, v19, v20, v21);
    RBDrawingStateGetDeviceClipBoundingBox(*(a1 + 504));
    v23.f64[1] = v22;
    *&v25.f64[1] = v24;
    RB::Bounds::Bounds(&transform, vcvt_f32_f64(v23), vcvt_f32_f64(v25), v25.f64[0], v24);
    v26 = RB::Bounds::intersect(&v55, *&transform.a, *&transform.b);
    v27 = v56;
    v28 = vclez_s32(v56);
    if ((vpmax_u32(v28, v28).u32[0] & 0x80000000) == 0)
    {
      if (Background)
      {
        v29 = RB::gray_colorspace(v26);
        v30 = 0;
        v27 = v56;
      }

      else
      {
        v29 = 0;
        v30 = 7;
      }

      v31 = CGBitmapContextCreate(0, v27.i32[0], v27.i32[1], 8uLL, 0, v29, v30);
      if (v31)
      {
        v32 = v31;
        if (Background)
        {
          CGContextBeginTransparencyLayer(v31, 0);
          CGContextSetFillColorWithColor(v32, Background);
          CGContextFillRect(v32, *MEMORY[0x1E695F040]);
        }

        CGContextTranslateCTM(v32, -v55.i32[0], -v55.i32[1]);
        *&transform.a = v58;
        *&transform.c = v59;
        *&transform.tx = v60;
        CGContextConcatCTM(v32, &transform);
        CGContextGetCTM(&transform, v32);
        CGContextSetBaseCTM();
        CGContextGetDelegate();
        CGContextGetRenderingState();
        CGContextGetGState();
        CGSoftMaskDelegateDrawSoftMask();
        if (Background)
        {
          CGContextEndTransparencyLayer(v32);
        }

        RB::cg_mask_apply_transfer(v32, v4, v33);
        Image = CGBitmapContextCreateImage(v32);
        if (Image)
        {
          v35.i32[0] = 0;
          v36 = vceq_s32(v56, 0x8000000080000000);
          v37 = vdup_lane_s32(vcgt_s32(v35, vpmin_u32(v36, v36)), 0);
          v38 = *(a1 + 16);
          v39 = vbsl_s8(v37, 0x100000001000000, vcvt_f32_s32(v55));
          v40 = vcvt_f32_s32(v56);
          v41 = vneg_f32(0x80000000800000);
          v42 = vbsl_s8(v37, v41, v40);
          *v40.i32 = -v42.f32[1];
          v43 = COERCE_FLOAT(vadd_f32(v39, v42).i32[1]);
          transform.a = v42.f32[0];
          v44 = vdup_lane_s32(v39, 0);
          transform.b = 0.0;
          transform.c = 0.0;
          v44.i32[0] = v40.i32[0];
          v45 = vcvtq_f64_f32(v44);
          *&transform.d = v45;
          transform.ty = v43;
          LODWORD(v45.f64[0]) = 1065353216;
          v40.i32[0] = 1065353216;
          v39.i32[0] = 1065353216;
          LODWORD(v43) = 1065353216;
          [v38 setImage:Image transform:&transform interpolation:1 tintColor:0 flags:{v45.f64[0], *&v40, *&v39, v43}];
          v46.i32[0] = 0;
          v47 = vceq_s32(v56, 0x8000000080000000);
          v48 = vdup_lane_s32(vcgt_s32(v46, vpmin_u32(v47, v47)), 0);
          v49 = vbsl_s8(v48, v41, vcvt_f32_s32(v56));
          v50 = vbsl_s8(v48, 0x100000001000000, vcvt_f32_s32(v55));
          [*(a1 + 8) setRect:{*v50.i32, *&v50.i32[1], *v49.i32, *&v49.i32[1]}];
          [*(a1 + 8) setAntialiased:0];
          v51 = RBDrawingStateBeginLayer(*(a1 + 504), 0);
          v52 = v51;
          if (Background)
          {
            RBDrawingStateAddLuminanceToAlphaFilter(v51, 0);
          }

          v53 = *(a1 + 504);
          v54 = *(a1 + 464);
          *&transform.a = *(a1 + 448);
          *&transform.c = v54;
          *&transform.tx = *(a1 + 480);
          RBDrawingStateSetCTM(v53, &transform);
          RBDrawingStateDrawShape(v52, *(a1 + 8), *(a1 + 16), 0, 1.0);
          RBDrawingStateClipLayer(*(a1 + 504), v52, 0, 1.0);
          CFRelease(Image);
        }

        CFRelease(v32);
      }
    }
  }

  else
  {
    v5 = *(a1 + 504);
    *&v6 = RB::operator*(&v58, (a1 + 448));
    *&transform.a = v6;
    *&transform.c = v7;
    *&transform.tx = v8;
    RBDrawingStateSetCTM(v5, &transform);
    v9 = RBDrawingStateBeginLayer(*(a1 + 504), 0);
    v10 = v9;
    v11 = v9;
    if (Background)
    {
      RBDrawingStateAddLuminanceToAlphaFilter(v9, 0);
      v11 = RBDrawingStateBeginLayer(v10, 0);
      [*(a1 + 8) setInfinite];
      [*(a1 + 16) setCGColor:Background];
      RBDrawingStateDrawShape(v11, *(a1 + 8), *(a1 + 16), 0, 1.0);
    }

    if (RBDrawingStateBeginCGContext(v11, *(a1 + 524), 1.0))
    {
      CGContextGetDelegate();
      CGContextGetRenderingState();
      CGContextGetGState();
      CGSoftMaskDelegateDrawSoftMask();
      RBDrawingStateEndCGContext(v11, v12, v13);
    }

    if (Background)
    {
      RBDrawingStateDrawLayer(v10, v11, 0, 1.0);
    }

    RBDrawingStateClipLayer(*(a1 + 504), v10, 0, 1.0);
  }
}

void sub_195DDD9BC(_Unwind_Exception *a1)
{
  CFRelease(v2);
  CFRelease(v1);
  _Unwind_Resume(a1);
}

uint64_t *RB::ContextDelegate::add_shadow_style(uint64_t a1)
{
  Data = CGStyleGetData();
  Color = CGStyleGetColor();
  v4 = RBColorFromCGColor2(Color, *(a1 + 592));
  v6 = *&v4;
  v8 = v7;
  v10 = v9;
  v11 = fabsf(*&v4 + 1.0);
  v12 = fabsf(v8 + 1.0);
  if (v11 < v12)
  {
    v11 = v12;
  }

  v13 = fabsf(v10 + 1.0);
  if (v11 >= v13)
  {
    v13 = v11;
  }

  if (v13 >= 0.001)
  {
    v16 = v5;
    v17 = Data[5];
    v18 = 0.0;
    v19 = fmaxf(v17 * 0.5, 0.0);
    v20 = Data[2] * 0.0174532925;
    v21 = Data[1] * 0.0174532925;
    if (v21 <= 1.5691)
    {
      if (v21 >= 0.0017453)
      {
        v22 = Data[4];
        v18 = v22 / tanf(v21);
      }

      else
      {
        v18 = 3.4028e38;
      }
    }

    v23 = __sincosf_stret(v20);
    v24 = -(v18 * v23.__cosval);
    v25 = -(v18 * v23.__sinval);
    v26 = 2 * (CGStyleGetDrawOrdering() == 0);
    v27 = *(a1 + 504);

    return RBDrawingStateAddShadowStyle(v27, 0, v26, v19, v24, v25, v6, v8, v10, v16);
  }

  else
  {
    result = [RBDrawingStateGetDisplayList(*(a1 + 504)) CGStyleHandler];
    if (result)
    {
      v15 = result[2];

      return v15();
    }
  }

  return result;
}

RB::XML::DisplayList *RB::ContextDelegate::add_gaussian_blur_style(uint64_t a1)
{
  v2 = *(CGStyleGetData() + 8) * 0.5;
  v3 = *MEMORY[0x1E695F050];
  v4 = *(MEMORY[0x1E695F050] + 8);
  v5 = *(MEMORY[0x1E695F050] + 16);
  v6 = *(MEMORY[0x1E695F050] + 24);
  v7 = *(a1 + 504);

  return RBDrawingStateAddBlurFilter(v7, 0, v2, v3, v4, v5, v6);
}

RB::XML::DisplayList *RB::ContextDelegate::add_color_matrix_style(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  Data = CGStyleGetData();
  v3 = 0;
  v4 = (Data + 8);
  do
  {
    v6 = *v4;
    v5 = v4[1];
    v4 += 2;
    *&v8[v3] = vcvt_hight_f32_f64(vcvt_f32_f64(v6), v5);
    v3 += 4;
  }

  while (v3 != 20);
  return RBDrawingStateAddColorMatrixFilter(*(a1 + 504), v8, 0);
}

uint64_t RB::ContextDelegate::draw_shading_in_shape(uint64_t a1, int a2, CGShading *a3, float64x2_t *a4)
{
  v6 = RB::ContextDelegate::set_shading(a1, a3, a4);
  if (v6)
  {
    CGShadingGetBounds();
    x = v26.origin.x;
    y = v26.origin.y;
    width = v26.size.width;
    height = v26.size.height;
    IsInfinite = CGRectIsInfinite(v26);
    v12 = *(a1 + 504);
    v13 = (a1 + 8);
    if (!IsInfinite)
    {
      v12 = RBDrawingStateInit(*(a1 + 504));
      RBDrawingStateClipShape(v12, *v13, 0);
      if (a4)
      {
        v14 = a4[1];
        v25[0] = *a4;
        v25[1] = v14;
        v25[2] = a4[2];
        RBDrawingStateSetCTM(v12, v25);
      }

      v13 = (a1 + 600);
      v15 = *(a1 + 600);
      if (!v15)
      {
        v15 = objc_opt_new();

        *v13 = v15;
      }

      [v15 setRect:{x, y, width, height}];
      RBDrawingStateClipShape(v12, *v13, 0);
      [*v13 setInfinite];
    }

    v16 = *v13;
    v17 = *(a1 + 16);
    CGGStateGetAlpha();
    v19 = v18;
    if (!*(a1 + 424))
    {
      v19 = *(a1 + 520) * v19;
    }

    CompositeOperation = CGGStateGetCompositeOperation();
    if (CompositeOperation > 0x1B)
    {
      v21 = 0;
    }

    else
    {
    }

    RBDrawingStateDrawShape(v12, v16, v17, v21, v19);
    if (!IsInfinite)
    {
      RBDrawingStateDestroy(v12, v22, v23);
    }
  }

  return v6;
}

uint64_t RB::ContextDelegate::set_shading(RB::ContextDelegate *this, CGShading *a2, const RB::AffineTransform *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  Type = CGShadingGetType();
  Descriptor = CGShadingGetDescriptor();
  if (Type == 3)
  {
    v40 = 3;
    v38 = a3;
  }

  else
  {
    if (Type != 2)
    {
      if (Type == 1 && *(Descriptor + 16) == 1 && (Descriptor[5] & 1) != 0)
      {
        v40 = 1;
        v38 = a3;
        goto LABEL_12;
      }

      return 0;
    }

    if (*(Descriptor + 24) != 1 || *(Descriptor + 56) != 1)
    {
      return 0;
    }

    v40 = 2;
    v38 = a3;
  }

LABEL_12:
  v39 = Descriptor;
  MEMORY[0x1EEE9AC00](Descriptor, v7);
  v37 = 0u;
  v35 = 0u;
  memset(v36, 0, sizeof(v36));
  memset(v34, 0, sizeof(v34));
  v33 = 0u;
  v31 = 0u;
  memset(v32, 0, sizeof(v32));
  memset(v30, 0, sizeof(v30));
  v29 = 0u;
  memset(v28, 0, sizeof(v28));
  ColorSpace = CGShadingGetColorSpace();
  NumberOfComponents = CGColorSpaceGetNumberOfComponents(ColorSpace);
  v11 = NumberOfComponents + 1;
  RangeDimension = CGFunctionGetRangeDimension();
  v13 = RangeDimension;
  if (RangeDimension <= NumberOfComponents + 1)
  {
    v14 = NumberOfComponents + 1;
  }

  else
  {
    v14 = RangeDimension;
  }

  MEMORY[0x1EEE9AC00](RangeDimension, 8 * v14);
  v16 = (v28 - v15);
  bzero(v28 - v15, v17);
  Domain = CGFunctionGetDomain();
  if (Domain)
  {
    v19 = (Domain[1] - *Domain) * 0.0666666667;
    v20 = trunc(*Domain);
  }

  else
  {
    v20 = 0.0;
    v19 = 0.0666666667;
  }

  v21 = 0;
  v41 = v28;
  v22 = v28 + 2;
  do
  {
    *v42 = v20 + v19 * v21;
    CGFunctionEvaluate();
    if (v13 < v11)
    {
      v16[v11 - 1] = 1.0;
    }

    *(v22 - 2) = RBColorFromComponents2(ColorSpace, v16, *(this + 148)).n128_u32[0];
    *(v22 - 1) = v23;
    *v22 = v24;
    v22[1] = v25;
    v22 += 4;
    ++v21;
  }

  while (v21 != 16);
  switch(v40)
  {
    case 1:
      [*(this + 2) setAxialGradientStartPoint:16 endPoint:v41 stopCount:0 colors:0 locations:*v39 flags:{v39[1], v39[3], v39[4], v28[0], *&v28[1], *(&v28[1] + 8), *(&v28[2] + 1), v29, v30[0], *&v30[1], v30[3], v31, v32[0], *&v32[1], v32[3], v33, v34[0], *&v34[1], v34[3], v35, v36[0], *&v36[1], v36[3], v37}];
      break;
    case 2:
      [*(this + 2) setRadialGradientStartCenter:16 startRadius:v41 endCenter:0 endRadius:0 stopCount:*v39 colors:v39[1] locations:v39[2] flags:{v39[4], v39[5], v39[6], v28[0], *&v28[1], *(&v28[1] + 8), *(&v28[2] + 1), v29, v30[0], *&v30[1], v30[3], v31, v32[0], *&v32[1], v32[3], v33, v34[0], *&v34[1], v34[3], v35, v36[0], *&v36[1], v36[3], v37}];
      break;
    case 3:
      [*(this + 2) setConicGradientCenter:16 angle:v41 stopCount:0 colors:0 locations:*v39 flags:{v39[1], v39[2], v28[0], *&v28[1], *(&v28[1] + 8), *(&v28[2] + 1), v29, v30[0], *&v30[1], v30[3], v31, v32[0], *&v32[1], v32[3], v33, v34[0], *&v34[1], v34[3], v35, v36[0], *&v36[1], v36[3], v37}];
      break;
    default:
      abort();
  }

  if (v38)
  {
    v26 = *(this + 2);
    v27 = *(v38 + 1);
    v42[0] = *v38;
    v42[1] = v27;
    v42[2] = *(v38 + 2);
    [v26 concat:v42];
  }

  return 1;
}

uint64_t RB::ContextDelegate::mask_color_in_shape(uint64_t a1, CGColor *a2, int a3, uint64_t a4, unsigned int a5, float a6)
{
  v12 = RBDrawingStateInit(*(a1 + 504));
  v13 = RBDrawingStateBeginLayer(v12, 0);
  RBDrawingStateDrawShape(v13, *(a1 + 8), *(a1 + 16), 0, 1.0);
  RBDrawingStateClipLayer(v12, v13, 0, 1.0);
  RB::ContextDelegate::set_color_in_shape(a1, a2, a3, a4, 0);
  [*(a1 + 8) setInfinite];
  RBDrawingStateDrawShape(v12, *(a1 + 8), *(a1 + 16), a5, a6);

  return RBDrawingStateDestroy(v12, v14, v15);
}

uint64_t RB::ContextDelegate::check_type(RB::ContextDelegate *this, CGContext *a2)
{
  result = CGContextGetDelegate();
  if (result)
  {
    return CGContextDelegateGetCallback() == RB::ContextDelegate::get_bounds;
  }

  return result;
}

uint64_t RB::ContextDelegate::draw_glyphs_removing_invalid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, _OWORD *a6, unint64_t a7)
{
  v7 = a7;
  v25[0] = a4;
  v25[1] = *MEMORY[0x1E69E9840];
  if ((a7 & 0x8000000000000000) != 0)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v14 = 0;
LABEL_13:
    v21 = 0;
    do
    {
      v23 = *a5++;
      v22 = v23;
      if (v23 != 0xFFFF)
      {
        *&v17[2 * v21] = v22;
        *&v16[16 * v21++] = *a6;
      }

      ++a6;
      --v7;
    }

    while (v7);
    if (v21)
    {
      RB::ContextDelegate::draw_glyphs(a1, a2, a3, v25[0], v17, v16);
    }

    if (!v15)
    {
      if (!v14)
      {
        return 0;
      }

      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v13 = 2 * a7;
  v14 = 2 * a7 > 0x1000;
  if (2 * a7 > 0x1000)
  {
    v18 = malloc_type_malloc(2 * a7, 0x1000040BDFB0063uLL);
    v17 = v18;
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    v17 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v17, 2 * v7);
  }

  if (v7 >> 60)
  {
    v15 = 0;
    v16 = 0;
    goto LABEL_13;
  }

  if (16 * v7 <= 0x1000)
  {
    MEMORY[0x1EEE9AC00](v18, v19);
    v16 = v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v16, v20);
    if (!v7)
    {
      return 0;
    }

    v15 = 0;
    goto LABEL_13;
  }

  v16 = malloc_type_malloc(16 * v7, 0x1000040451B5BE8uLL);
  if (v7)
  {
    v15 = 1;
    goto LABEL_13;
  }

LABEL_20:
  free(v16);
  if (v14)
  {
LABEL_21:
    free(v17);
  }

  return 0;
}

BOOL RB::make_gradient(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = (a5 & 3) != 3;
  CGGradientGetColorSpace();
  CGGradientApply();
  return v6;
}

RB::LayerContextDelegate *RB::LayerContextDelegate::LayerContextDelegate(RB::LayerContextDelegate *this, const CGRect *a2, double a3)
{
  *RB::ContextDelegate::ContextDelegate(this) = &unk_1F0A38E70;
  v6 = objc_opt_new();
  *(this + 78) = v6;
  size = a2->size;
  *(this + 632) = a2->origin;
  *(this + 648) = size;
  [v6 setDefaultColorSpace:1];
  [*(this + 78) setContentRect:{*(this + 79), *(this + 80), *(this + 81), *(this + 82)}];
  State = RBDisplayListGetState(*(this + 78));
  RB::ContextDelegate::begin(this, State, 1.0, a3, 0);
  return this;
}

void RB::LayerContextDelegate::~LayerContextDelegate(id *this, const char *a2, _RBDrawingState *a3)
{
  *this = &unk_1F0A38E70;
  RB::ContextDelegate::end(this, a2, a3);

  RB::ContextDelegate::~ContextDelegate(this);
}

{
  RB::LayerContextDelegate::~LayerContextDelegate(this, a2, a3);

  JUMPOUT(0x19A8C09E0);
}

void RB::make_gradient(CGGradient *,RBColor *,double *,unsigned long,RBColorSpace,unsigned int)::$_1::__invoke(uint64_t **a1, double *a2, double a3)
{
  v5 = RBColorFromComponents2(a1[3], a2, *(a1 + 8)).n128_u32[0];
  v6 = *a1;
  v7 = **a1;
  v8 = &a1[1][2 * v7];
  *v8 = v5;
  v8[1] = v9;
  v8[2] = v10;
  v8[3] = v11;
  *&a1[2][v7] = a3;
  *v6 = v7 + 1;
}

void *RB::vector<RB::ContextDelegate::Layer,4ul,unsigned long>::reserve_slow(void *__dst, unint64_t a2)
{
  if (*(__dst + 50) + (*(__dst + 50) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 50) + (*(__dst + 50) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,96ul>(*(__dst + 48), __dst, 4uLL, __dst + 50, v3);
  *(__dst + 48) = result;
  return result;
}

void *RB::details::realloc_vector<unsigned long,96ul>(void *__src, void *__dst, unint64_t a3, unint64_t *a4, unint64_t a5)
{
  v7 = __src;
  if (a5 <= a3)
  {
    if (__src)
    {
      v9 = a3;
      memcpy(__dst, __src, 96 * a5);
      free(v7);
      v12 = 0;
LABEL_8:
      *a4 = v9;
      return v12;
    }
  }

  else
  {
    v8 = malloc_good_size(96 * a5);
    v9 = v8 / 0x60;
    if (v8 / 0x60 != *a4)
    {
      v10 = malloc_type_realloc(v7, v8, 0x58CA92B9uLL);
      if (!v10)
      {
        RB::precondition_failure("allocation failure", v11);
      }

      v12 = v10;
      if (!v7)
      {
        memcpy(v10, __dst, 96 * *a4);
      }

      goto LABEL_8;
    }
  }

  return v7;
}

_DWORD *RB::ObjectTable::adopt(_DWORD *result, unint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = a2 | 1;
    v4 = result[2];
    v5 = v4 - 16;
    if (v4 < 0x10)
    {
      v5 = 0;
    }

    v6 = -v5;
    if (v4 <= -v5)
    {
LABEL_8:
      v10 = v4 + 1;
      if (result[3] < (v4 + 1))
      {
        result = RB::vector<RB::objc_ptr<void({block_pointer})(RBFill *,CGRect)>,0ul,unsigned int>::reserve_slow(result, v10);
        LODWORD(v4) = v2[2];
        v10 = v4 + 1;
      }

      *(*v2 + 8 * v4) = v3;
      v2[2] = v10;
    }

    else
    {
      v7 = v4 - v6;
      v8 = (*result + 8 * v6);
      while (1)
      {
        v9 = *v8++;
        if (v9 == v3)
        {
          break;
        }

        if (!--v7)
        {
          goto LABEL_8;
        }
      }

      v11 = **a2;

      return v11(a2);
    }
  }

  return result;
}

double RB::Fill::ImageData::concat(RB::Fill::ImageData *this, float64x2_t *a2)
{
  RB::operator*(this + 8, a2, v5);
  result = *v5;
  v4 = v5[1];
  *(this + 2) = v5[0];
  *(this + 3) = v4;
  *(this + 16) = v6;
  return result;
}

uint64_t RB::Fill::ImageData::can_append_color_fn(RB::Fill::ImageData *this, const RB::ColorMatrixFn *a2, uint64_t a3)
{
  if ((RB::color_flags_space(a3, 0) & 0x100) != 0)
  {
    return 0;
  }

  if ((*(*a2 + 24))(a2, 4, a3))
  {
    return 1;
  }

  v6 = *(*a2 + 24);

  return v6(a2, 3, a3);
}

float RB::Fill::ImageData::append_color_fn(RB::Fill::ImageData *this, const RB::ColorMatrixFn *a2, uint64_t a3)
{
  v3 = a3;
  (*(*a2 + 8))(a2, &v35, *(this + 40), a3, 0.0);
  v6 = 1.0;
  if (v3 < 0)
  {
    v6 = RB::ColorMatrix::remove_alpha_factor(&v35, (v3 & 4) != 0);
  }

  if (RB::ColorMatrix::is_alpha_multiply(&v35, (v3 & 4) != 0))
  {
    v7.n64_u64[0] = RB::ColorMatrix::alpha_multiply_color(&v35, (v3 & 4) != 0).n64_u64[0];
    if ((v3 & 4) != 0)
    {
      __asm { FCMP            H1, #0 }

      if (_ZF)
      {
        LOWORD(_H1) = 0;
      }

      else
      {
        __asm { FCVT            S1, H1 }

        v15 = _S1;
        v16 = vrecpe_f32(_S1);
        _D1 = vmul_f32(vrecps_f32(v15, v16), v16);
        v8.n64_u64[0] = vrecps_f32(v15, _D1);
        _D1.i32[0] = vmul_f32(_D1, v8.n64_u64[0]).u32[0];
        __asm { FCVT            H1, S1 }
      }

      v26 = vmulh_lane_f16(_H1, v7.n64_u64[0], 2);
      LODWORD(v27) = vmul_n_f16(v7.n64_u64[0], _H1).u32[0];
      *(&v27 + 2) = v26;
      HIWORD(v27) = v7.n64_u16[3];
      v7.n64_u64[0] = v27;
    }

    *v8.n64_u16 = vmulh_lane_f16(*(this + 37), v7.n64_u64[0], 3);
    v28 = vdup_lane_s16(v8.n64_u64[0], 0);
    v28.i16[3] = *(this + 37);
    *(this + 68) = vmul_f16(v28, v7.n64_u64[0]);
    *(this + 19) = 0;
    *(this + 40) = 0;
    *(this + 41) |= 0x1000u;
  }

  else
  {
    v19 = v35;
    if ((v3 & 4) != 0)
    {
      __asm { FCMP            H4, #0 }

      if (_ZF)
      {
        LOWORD(_H4) = 0;
      }

      else
      {
        __asm { FCVT            S4, H4 }

        v22 = _S4;
        v23 = vrecpe_f32(_S4);
        _D4 = vmul_f32(vrecps_f32(v22, v23), v23);
        _D4.i32[0] = vmul_f32(_D4, vrecps_f32(v22, _D4)).u32[0];
        __asm { FCVT            H4, S4 }
      }

      v19.i16[1] = WORD1(v36);
      v19.i32[0] = vmul_n_f16(v19, _H4).u32[0];
      *&v19.i16[2] = _H4 * *(&v37 + 2);
    }

    else
    {
      v19.i16[1] = WORD1(v36);
      v19.i16[2] = WORD2(v37);
    }

    v19.i16[3] = HIWORD(v38);
    *(this + 68) = vmul_f16(*(this + 68), v19);
  }

  _S0 = RB::ColorMatrixFn::content_headroom(a2);
  if (_S0 > 1.0)
  {
    _H1 = *(this + 38);
    __asm
    {
      FCVT            S2, H1
      FCVT            H3, S0
    }

    if (_S0 >= _S2)
    {
      v33 = _H3;
    }

    else
    {
      v33 = *(this + 38);
    }

    *(this + 38) = v33;
  }

  return v6;
}

void RB::Fill::ImageData::mix(float32x4_t *this, const RB::DisplayList::Interpolator::Op *a2, float32x4_t *a3, float32x4_t a4)
{
  this[1] = vmlaq_n_f32(this[1], vsubq_f32(a3[1], this[1]), a4.f32[0]);
  RB::ProjectionMatrix::mix(this + 2, a3 + 2, a4.f32[0]);

  RB::Fill::Color::mix(this[4].i64 + 4, a3[4].i64 + 4, 0, a4);
}

void RB::Fill::ImageData::fill(void *a1, uint64_t a2, RB *a3, float32x4_t a4)
{
  v4 = a3;
  v78 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 41) & 0x1000) != 0)
  {
    v4 = RB::cg_image_alpha_mask(a3, a2);
    v23 = *(a2 + 125);
    v24 = *(a1 + 81);
    _ZF = v23 != v24 || v23 == 0;
    if (_ZF)
    {
      if (v23 == v24 || v23 == 0)
      {
        goto LABEL_28;
      }
    }

    else if (*(a2 + 124) == *(a1 + 80))
    {
      goto LABEL_28;
    }

    if (v24)
    {
LABEL_34:
      RB::CGContext::set_fill_color_slow(a2, (a1 + 68), v21, v22);
LABEL_35:
      v20 = 0;
      goto LABEL_36;
    }

LABEL_28:
    v21.i16[0] = *(a2 + 112);
    v22.i16[0] = *(a1 + 34);
    if (*v21.i16 == *v22.i16)
    {
      v21.i16[0] = *(a2 + 114);
      v22.i16[0] = *(a1 + 35);
      if (*v21.i16 == *v22.i16)
      {
        v21.i16[0] = *(a2 + 116);
        v22.i16[0] = *(a1 + 36);
        if (*v21.i16 == *v22.i16)
        {
          v21.i16[0] = *(a2 + 118);
          v22.i16[0] = *(a1 + 37);
          if (*v21.i16 == *v22.i16)
          {
            v21.i16[0] = *(a2 + 120);
            v22.i16[0] = *(a1 + 38);
            if (*v21.i16 == *v22.i16)
            {
              v21.i16[0] = *(a2 + 122);
              v22.i16[0] = *(a1 + 39);
              if (*v21.i16 == *v22.i16)
              {
                goto LABEL_35;
              }
            }
          }
        }
      }
    }

    goto LABEL_34;
  }

  v7 = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0));
  if (*(a1 + 34) == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) && *(a1 + 35) == v7 && *(a1 + 36) == v7 && *(a1 + 37) == v7)
  {
    __asm { FCMP            H0, #0 }

    if (_ZF)
    {
      __asm { FCMP            H0, #0 }

      if (_ZF)
      {
        goto LABEL_35;
      }
    }
  }

  v13 = *(a2 + 8);
  c.a = *(a1 + 68);
  *(&c.a + 6) = *(a1 + 74);
  a4.i64[0] = 0;
  RB::Fill::Color::convert(&c, v13, a4);
  v14 = vmovn_s64(vshlq_u64(vdupq_n_s64(*&c.a), xmmword_195E456A0));
  RB::ColorMatrix::set_color(&transform, COERCE_DOUBLE(vzip1_s32(*&c.a, vuzp1_s16(v14, v14))));
  if (RB::ColorMatrix::is_identity(&transform))
  {
    goto LABEL_35;
  }

  Width = CGImageGetWidth(v4);
  Height = CGImageGetHeight(v4);
  *&v17 = Width;
  *(&v17 + 1) = Height;
  v73 = 0;
  v74 = v17;
  RB::CGContext::begin_bitmap(a2, &v73, 0, 0, &cf, v18);
  if (!cf)
  {
    goto LABEL_35;
  }

  RB::CGContext::CGContext(&c, cf, *(a2 + 8), *(a2 + 16));
  v79.origin.x = v73.f32[0];
  v79.origin.y = v73.f32[1];
  v79.size.width = *&v74;
  v79.size.height = *(&v74 + 1);
  CGContextDrawImage(*&c.a, v79, v4);
  RB::CGContext::apply_color_matrix(&c, &transform, 0);
  Image = CGBitmapContextCreateImage(*&c.a);
  v20 = Image;
  if (Image)
  {
    v4 = Image;
  }

  RB::CGContext::~CGContext(&c);
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_36:
  v27 = *(a1 + 83);
  _ZF = (v27 & 0xF) == 0;
  v28 = 4 * ((v27 & 0xF) == 1);
  if (_ZF)
  {
    v29 = kCGInterpolationNone;
  }

  else
  {
    v29 = v28;
  }

  InterpolationQuality = CGContextGetInterpolationQuality(*a2);
  if (v29 != InterpolationQuality)
  {
    CGContextSetInterpolationQuality(*a2, v29);
  }

  if (*(a2 + 148) != 1)
  {
    RB::CGContext::set_aliasing_mode_slow(a2, 1);
  }

  v31 = *(a1 + 41);
  if (v31 <= 6u)
  {
    if (((1 << v31) & 0x13) != 0)
    {
      memset(&c, 0, sizeof(c));
      v38 = vcvtq_f64_f32(a1[4]);
      v39 = vcvtq_f64_f32(*(a1 + 44));
      v40 = vaddq_f64(vcvtq_f64_f32(a1[7]), v39);
      v41 = vandq_s8(vandq_s8(vceqq_f64(v39, xmmword_195E455A0), vceqq_f64(v38, xmmword_195E42760)), vceqzq_f64(v40));
      v42 = vandq_s8(vdupq_laneq_s64(v41, 1), v41).u64[0];
      v77 = v42 >= 0;
      if ((v42 & 0x8000000000000000) == 0)
      {
        v61 = v39;
        v65 = v40;
        v69 = v38;
        CGContextGetCTM(&c, *a2);
        v43 = *a2;
        *&transform.a = v69;
        *&transform.c = vnegq_f64(v61);
        *&transform.tx = v65;
        CGContextConcatCTM(v43, &transform);
      }

      v80.origin.x = 0.0;
      v80.origin.y = 0.0;
      v80.size.width = 1.0;
      v80.size.height = 1.0;
      CGContextDrawImage(*a2, v80, v4);
      if (v77)
      {
        goto LABEL_49;
      }
    }

    else if (((1 << v31) & 0x60) != 0)
    {
      v32 = vcvtq_f64_f32(a1[4]);
      v33 = vcvtq_f64_f32(*(a1 + 44));
      v34 = vmlaq_n_f64(vmlaq_f64(vcvtq_f64_f32(a1[7]), 0, v32), v33, *(a1 + 3) + *(a1 + 1) + *(a1 + 1));
      v35 = vandq_s8(vandq_s8(vceqq_f64(v33, xmmword_195E455A0), vceqq_f64(v32, xmmword_195E42760)), vceqzq_f64(v34));
      memset(&c, 0, sizeof(c));
      v36 = vandq_s8(vdupq_laneq_s64(v35, 1), v35).u64[0];
      v77 = v36 >= 0;
      if ((v36 & 0x8000000000000000) == 0)
      {
        v60 = v33;
        v64 = v34;
        v68 = v32;
        CGContextGetCTM(&c, *a2);
        v37 = *a2;
        *&transform.a = v68;
        *&transform.c = vnegq_f64(v60);
        *&transform.tx = v64;
        CGContextConcatCTM(v37, &transform);
        v31 = *(a1 + 41);
      }

      RB::cg_draw_9_slice_image(*a2, v4, a1 + 1, a1, v31 == 6, 1);
      if (v77)
      {
LABEL_49:
        transform = c;
        CGContextSetCTM();
      }
    }

    else if (v31 == 2)
    {
      v66 = vcvtq_f64_f32(a1[4]);
      v70 = vcvtq_f64_f32(*(a1 + 44));
      v62 = vcvtq_f64_f32(a1[7]);
      __asm { FMOV            V2.2S, #1.0 }

      v45 = vand_s8(vceq_f32(a1[1], _D2), vceqz_f32(*a1));
      if ((vpmin_u32(v45, v45).u32[0] & 0x80000000) != 0)
      {
        v51 = 0;
        v53 = v66;
        v54 = v70;
        v52 = v62;
      }

      else
      {
        v46 = CGImageGetWidth(v4);
        v47 = CGImageGetHeight(v4);
        v48.f32[0] = v46;
        v48.f32[1] = v47;
        v49 = vmul_f32(*a1, v48);
        v50 = vmul_f32(a1[1], v48);
        v81.origin.x = v49.f32[0];
        v81.origin.y = v49.f32[1];
        v81.size.width = v50.f32[0];
        v81.size.height = v50.f32[1];
        v51 = CGImageCreateWithImageInRect(v4, v81);
        v52 = vmlaq_n_f64(vmlaq_n_f64(v62, v66, COERCE_FLOAT(*a1)), v70, COERCE_FLOAT(HIDWORD(*a1)));
        v53 = vmulq_n_f64(v66, COERCE_FLOAT(a1[1]));
        v54 = vmulq_n_f64(v70, COERCE_FLOAT(HIDWORD(a1[1])));
      }

      memset(&c, 0, sizeof(c));
      v55 = vaddq_f64(v52, v54);
      v71 = v54;
      v56 = vandq_s8(vandq_s8(vceqq_f64(v54, xmmword_195E455A0), vceqq_f64(v53, xmmword_195E42760)), vceqzq_f64(v55));
      v57 = vandq_s8(vdupq_laneq_s64(v56, 1), v56).u64[0];
      v77 = v57 >= 0;
      if ((v57 & 0x8000000000000000) == 0)
      {
        v63 = v55;
        v67 = v53;
        CGContextGetCTM(&c, *a2);
        v58 = *a2;
        *&transform.a = v67;
        *&transform.c = vnegq_f64(v71);
        *&transform.tx = v63;
        CGContextConcatCTM(v58, &transform);
      }

      if (v51)
      {
        v59 = v51;
      }

      else
      {
        v59 = v4;
      }

      v82.origin.x = 0.0;
      v82.origin.y = 0.0;
      v82.size.width = 1.0;
      v82.size.height = 1.0;
      CGContextDrawTiledImage(*a2, v82, v59);
      if (v77)
      {
        transform = c;
        CGContextSetCTM();
      }

      if (v51)
      {
        CFRelease(v51);
      }
    }
  }

  if (v29 != InterpolationQuality)
  {
    CGContextSetInterpolationQuality(*a2, InterpolationQuality);
  }

  if (v20)
  {
    CFRelease(v20);
  }
}

void sub_195DDF3EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, CFTypeRef cf, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RB::Fill::ImageData::matches(RB::Fill::ImageData *this, const RB::DisplayList::Predicate *a2)
{
  if ((*(this + 41) & 0x1000) != 0)
  {
    return RB::DisplayList::Predicate::matches_color(a2, (this + 68));
  }

  else
  {
    return RB::DisplayList::Predicate::matches_non_color(a2);
  }
}

void RB::Fill::ImageData::apply_transform(RB::Fill::ImageData *this, const RB::DisplayList::Transform *a2, RB::Heap *a3, int32x4_t a4)
{
  if ((*(this + 41) & 0x1000) != 0)
  {
    RB::DisplayList::Transform::apply_to_color(a2, (this + 68), a4);
  }
}

unint64_t RB::Fill::ImageData::can_get_image(uint64_t a1, float64x2_t *a2, unsigned __int8 a3, float32x4_t a4)
{
  v6 = a4.i64[0];
  __asm { FMOV            V2.2S, #1.0 }

  v12 = vand_s8(vceq_f32(*(a1 + 8), _D2), vceqz_f32(*a1));
  *a4.f32 = vpmin_u32(v12, v12);
  if ((a4.i32[0] & 0x80000000) == 0)
  {
    return 0;
  }

  v25 = v4;
  v26 = v5;
  if (*(a1 + 16) != 0.0)
  {
    return 0;
  }

  if (*(a1 + 20) != 0.0)
  {
    return 0;
  }

  if (*(a1 + 24) != 0.0)
  {
    return 0;
  }

  if (*(a1 + 28) != 0.0)
  {
    return 0;
  }

  if ((*(a1 + 82) & 0x10FF) != 0)
  {
    return 0;
  }

  if (*(a1 + 40) != 0.0)
  {
    return 0;
  }

  if (*(a1 + 52) != 0.0)
  {
    return 0;
  }

  a4.i32[0] = *(a1 + 64);
  if (a4.f32[0] != 1.0)
  {
    return 0;
  }

  v23 = v6;
  result = RB::Fill::Color::is_white(a1 + 68, a3, a4);
  if (result)
  {
    v16 = vcvtq_f64_f32(*(a1 + 44));
    v17 = vcvtq_f64_f32(*(a1 + 56));
    v24[0] = vcvtq_f64_f32(*(a1 + 32));
    v24[1] = v16;
    v24[2] = v17;
    v18.f64[0] = RB::operator*(v24, a2);
    v19.f64[0] = 0.0;
    v19.f64[1] = SHIDWORD(v23);
    v22 = vandq_s8(vceqq_f64(v20, v19), vandq_s8(vceqq_f64(v18, COERCE_UNSIGNED_INT64(v23)), vceqzq_f64(v21)));
    return vandq_s8(vdupq_laneq_s64(v22, 1), v22).u64[0] >> 63;
  }

  return result;
}

void *RB::Fill::ImageData::encode(RB::Fill::ImageData *this, RB::Encoder *a2, int32x4_t a3, int32x4_t a4)
{
  v6 = *(this + 82);
  if (*(this + 82))
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x10uLL);
    RB::ProtobufEncoder::encode_varint(a2, v6);
  }

  v7 = *(this + 32);
  if (v7.f32[0] != 1.0 || v7.f32[1] != 0.0 || *(this + 10) != 0.0 || *(this + 11) != 0.0 || *(this + 12) != 1.0 || *(this + 13) != 0.0 || *(this + 14) != 0.0 || *(this + 15) != 0.0 || *(this + 16) != 1.0)
  {
    v8 = vcvtq_f64_f32(*(this + 44));
    v9 = vcvtq_f64_f32(*(this + 56));
    v24[0] = vcvtq_f64_f32(v7);
    v24[1] = v8;
    v24[2] = v9;
    RB::ProtobufEncoder::encode_varint(a2, 0x1AuLL);
    RB::ProtobufEncoder::begin_length_delimited(a2);
    RB::AffineTransform::encode(v24, a2);
    RB::ProtobufEncoder::end_length_delimited(a2);
  }

  v10 = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0));
  if (*(this + 34) != COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
  {
    goto LABEL_20;
  }

  if (*(this + 35) != v10)
  {
    goto LABEL_20;
  }

  if (*(this + 36) != v10)
  {
    goto LABEL_20;
  }

  if (*(this + 37) != v10)
  {
    goto LABEL_20;
  }

  __asm { FCMP            H0, #0 }

  if (!_ZF)
  {
    goto LABEL_20;
  }

  __asm { FCMP            H0, #0 }

  if (!_ZF)
  {
LABEL_20:
    RB::ProtobufEncoder::encode_varint(a2, 0x22uLL);
    RB::ProtobufEncoder::begin_length_delimited(a2);
    RB::Fill::Color::encode((this + 68), a2);
    RB::ProtobufEncoder::end_length_delimited(a2);
  }

  __asm { FMOV            V3.2S, #1.0 }

  v18 = vand_s8(vceq_f32(*(this + 8), _D3), vceqz_f32(*this));
  if ((vpmin_u32(v18, v18).u32[0] & 0x80000000) == 0)
  {
    RB::ProtobufEncoder::float4_field(a2, 5, *this);
  }

  a3.i64[0] = *(this + 2);
  *a4.i8 = vceqz_f32(*a3.i8);
  if ((a4.i32[0] & a4.i32[1] & 1) == 0 || *(this + 6) != 0.0 || *(this + 7) != 0.0)
  {
    a4.i32[0] = *(this + 6);
    v19 = vzip1q_s32(a4, a3);
    v19.i32[2] = *(this + 7);
    RB::ProtobufEncoder::float4_field(a2, 6, v19);
  }

  if (*(this + 41) == 4)
  {
    a3.i32[0] = *(this + 10);
    a3.i32[1] = *(this + 13);
    a3.i32[2] = *(this + 16);
    RB::ProtobufEncoder::float3_field(a2, 7, a3);
    LOBYTE(v20) = *(this + 83);
  }

  else
  {
    v20 = HIBYTE(*(this + 41));
  }

  result = rb_interpolation_mode(v20 & 0xF);
  if (result != 1)
  {
    v22 = result;
    RB::ProtobufEncoder::encode_varint(a2, 0x40uLL);
    result = RB::ProtobufEncoder::encode_varint(a2, v22);
  }

  v23 = *(this + 41);
  if ((v23 & 0x1000) != 0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x48uLL);
    result = RB::ProtobufEncoder::encode_varint(a2, 1uLL);
    v23 = *(this + 41);
    if ((v23 & 0x2000) == 0)
    {
LABEL_34:
      if ((v23 & 0x4000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_39;
    }
  }

  else if ((*(this + 41) & 0x2000) == 0)
  {
    goto LABEL_34;
  }

  RB::ProtobufEncoder::encode_varint(a2, 0x50uLL);
  result = RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  v23 = *(this + 41);
  if ((v23 & 0x4000) == 0)
  {
LABEL_35:
    if ((v23 & 0x8000) == 0)
    {
      return result;
    }

LABEL_40:
    RB::ProtobufEncoder::encode_varint(a2, 0x60uLL);
    return RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  }

LABEL_39:
  RB::ProtobufEncoder::encode_varint(a2, 0x58uLL);
  result = RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  if ((*(this + 41) & 0x8000) != 0)
  {
    goto LABEL_40;
  }

  return result;
}

unint64_t RB::Fill::ImageData::decode@<X0>(int32x4_t *this@<X0>, RB::Decoder *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a3;
  result = RB::ProtobufDecoder::next_field(a2);
  if (!result)
  {
    v9 = 0;
    goto LABEL_51;
  }

  v8 = result;
  v9 = 0;
  v10 = a3[1];
  do
  {
    v11 = v8 >> 3;
    if ((v8 >> 3) > 6)
    {
      if (v11 <= 9)
      {
        switch(v11)
        {
          case 7:
            v24 = RB::ProtobufDecoder::float3_field(a2, v8);
            this[2].i32[2] = v24.n128_u32[0];
            this[3].i32[1] = v24.n128_i32[1];
            this[4].i32[0] = v24.n128_i32[2];
            goto LABEL_45;
          case 8:
            v27 = RB::ProtobufDecoder::uint_field(a2, v8);
            v26 = this[5].i16[1] & 0xF0FF | ((rb_interpolation_mode(v27) & 0xF) << 8);
LABEL_44:
            this[5].i16[1] = v26;
            goto LABEL_45;
          case 9:
            v20 = RB::ProtobufDecoder::BOOL_field(a2, v8);
            v21 = this[5].i16[1];
            if (v20)
            {
              v22 = 4096;
            }

            else
            {
              v22 = 0;
            }

            goto LABEL_43;
        }

        goto LABEL_47;
      }

      switch(v11)
      {
        case 0xA:
          if (RB::ProtobufDecoder::BOOL_field(a2, v8))
          {
            v21 = 0x2000;
          }

          else
          {
            v21 = 0;
          }

          break;
        case 0xB:
          if (RB::ProtobufDecoder::BOOL_field(a2, v8))
          {
            v21 = 0x4000;
          }

          else
          {
            v21 = 0;
          }

          break;
        case 0xC:
          if (RB::ProtobufDecoder::BOOL_field(a2, v8))
          {
            v21 = 0x8000;
          }

          else
          {
            v21 = 0;
          }

          break;
        default:
          goto LABEL_47;
      }

      v22 = this[5].i16[1];
LABEL_43:
      v26 = v21 | v22;
      goto LABEL_44;
    }

    if (v11 > 3)
    {
      switch(v11)
      {
        case 4:
          if ((v8 & 7) == 2)
          {
            RB::ProtobufDecoder::begin_message(a2);
            RB::Fill::Color::decode((this[4].i64 + 4), a2);
            RB::ProtobufDecoder::end_message(a2);
          }

          else
          {
            *(a2 + 56) = 1;
            *a2 = *(a2 + 1);
          }

          goto LABEL_45;
        case 5:
          *this = RB::ProtobufDecoder::float4_field(a2, v8);
          goto LABEL_45;
        case 6:
          v23 = RB::ProtobufDecoder::float4_field(a2, v8);
          this[1] = vuzp2q_s32(v23, vrev64q_s32(v23));
          goto LABEL_45;
      }

LABEL_47:
      RB::ProtobufDecoder::skip_field(a2, v8);
      goto LABEL_45;
    }

    if (v11 == 1)
    {
      v6 = *a2;
      v10 = *(a2 + 1);
      RB::ProtobufDecoder::skip_field(a2, v8);
      v9 = v8;
      goto LABEL_45;
    }

    if (v11 == 2)
    {
      v25 = RB::ProtobufDecoder::uint_field(a2, v8);
      if (v25 > 6)
      {
        goto LABEL_45;
      }

      v26 = v25 | (this[5].u8[3] << 8);
      goto LABEL_44;
    }

    if (v11 != 3)
    {
      goto LABEL_47;
    }

    v28 = xmmword_195E42760;
    v29 = xmmword_195E42770;
    v30 = 0uLL;
    if ((v8 & 7) == 2)
    {
      RB::ProtobufDecoder::begin_message(a2);
      RB::AffineTransform::decode(&v28, a2);
      RB::ProtobufDecoder::end_message(a2);
      v13 = *&v28;
      v12 = *v29.i64;
      v14 = *v30.i64;
      v15 = *(&v28 + 1);
      v16 = vcvt_f32_f64(vzip2q_s64(v30, v29));
    }

    else
    {
      *(a2 + 56) = 1;
      *a2 = *(a2 + 1);
      v15 = 0.0;
      v14 = 0.0;
      v12 = 0.0;
      v13 = 1.0;
      v16 = 0x3F80000000000000;
    }

    v17 = v13;
    *this[2].i32 = v17;
    *&this[2].i32[1] = v15;
    *&v18 = v12;
    this[2].i32[3] = v18;
    this[3].i32[0] = v16.i32[1];
    *&v19 = v14;
    this[3].i32[2] = v19;
    this[3].i32[3] = v16.i32[0];
LABEL_45:
    result = RB::ProtobufDecoder::next_field(a2);
    v8 = result;
  }

  while (result);
  a3[1] = v10;
LABEL_51:
  *a3 = v6;
  a3[2] = v9;
  return result;
}

void RB::Fill::ImageData::attributes(RB::Fill::ImageData *this, RB::XML::Element *a2)
{
  v3 = &unk_1F0A38970;
  v2 = vcvtq_f64_f32(*(this + 44));
  v4 = vcvtq_f64_f32(*(this + 32));
  v5 = v2;
  v6 = vcvtq_f64_f32(*(this + 56));
  RB::XML::Element::set<RB::XML::Value::Transform>();
}

void sub_195DE011C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<RB::XML::Value::Base>::shared_ptr[abi:nn200100]<RB::XML::Value::Font,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<RB::XML::Value::InterpolationMode *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::InterpolationMode>,std::allocator<RB::XML::Value::InterpolationMode>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19A8C09E0);
}

uint64_t std::__shared_ptr_pointer<RB::XML::Value::InterpolationMode *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::InterpolationMode>,std::allocator<RB::XML::Value::InterpolationMode>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_195DE02A4(_Unwind_Exception *a1)
{
  v4 = RB::vector<RB::DisplayList::Predicate::Term,1ul,unsigned int>::~vector(v1);
  MEMORY[0x19A8C09E0](v4, v2);
  _Unwind_Resume(a1);
}

uint64_t RB::DisplayList::Predicate::Term::Term(uint64_t this, const RB::DisplayList::Predicate::Term *a2)
{
  v2 = *a2;
  *this = *a2;
  v3 = (this + 8);
  switch(v2)
  {
    case 3:
      operator new();
    case 2:
      v4 = *(a2 + 1);
      *(this + 14) = *(a2 + 14);
      *v3 = v4;
      break;
    case 1:
      *v3 = *(a2 + 2);
      break;
  }

  return this;
}

void sub_195DE0404(_Unwind_Exception *a1)
{
  v4 = RB::vector<RB::DisplayList::Predicate::Term,1ul,unsigned int>::~vector(v1);
  MEMORY[0x19A8C09E0](v4, v2);
  _Unwind_Resume(a1);
}

_DWORD *RB::DisplayList::Predicate::add(_DWORD *this, int a2)
{
  v3 = this;
  v4 = this[8];
  if (this[9] < (v4 + 1))
  {
    this = RB::vector<RB::DisplayList::Predicate::Term,1ul,unsigned int>::reserve_slow(this, v4 + 1);
    v4 = v3[8];
  }

  v5 = *(v3 + 3);
  if (!v5)
  {
    v5 = v3;
  }

  v6 = &v5[6 * v4];
  *v6 = 1;
  v6[2] = a2;
  ++v3[8];
  return this;
}

void RB::DisplayList::Predicate::add_predicate(RB::DisplayList::Predicate *this, const RB::DisplayList::Predicate *a2)
{
  v4 = *(this + 8);
  if (*(this + 9) < v4 + 1)
  {
    RB::vector<RB::DisplayList::Predicate::Term,1ul,unsigned int>::reserve_slow(this, v4 + 1);
    v4 = *(this + 8);
  }

  v5 = *(this + 3);
  if (!v5)
  {
    v5 = this;
  }

  RB::DisplayList::Predicate::Term::Term((v5 + 24 * v4), a2);
}

uint64_t RB::DisplayList::Predicate::matches_non_color(RB::DisplayList::Predicate *this)
{
  if (*(this + 3))
  {
    v1 = *(this + 3);
  }

  else
  {
    v1 = this;
  }

  v2 = *(this + 8);
  if (!v2)
  {
    return 1;
  }

  v3 = (v1 + 8);
  v4 = 24 * v2;
  while (1)
  {
    v5 = *(v3 - 2);
    if (v5 == 1)
    {
      break;
    }

    if (v5 == 3)
    {
      v6 = *v3;
      if (RB::DisplayList::Predicate::matches_non_color(*v3) == *(v6 + 40))
      {
        return 0;
      }
    }

    else if (v5 == 2)
    {
      return 0;
    }

LABEL_13:
    v3 += 3;
    v4 -= 24;
    if (!v4)
    {
      return 1;
    }
  }

  if (*v3)
  {
    goto LABEL_13;
  }

  return 0;
}

uint64_t RB::DisplayList::Predicate::Term::can_mix(RB::DisplayList::InvertiblePredicate **this, const InvertiblePredicate **a2)
{
  v2 = *this;
  if (*this != *a2)
  {
    return 0;
  }

  if (v2 == 3)
  {
    return RB::DisplayList::InvertiblePredicate::can_mix(this[1], a2[1]);
  }

  if (v2 != 2)
  {
    if (v2 != 1 || *(this + 2) == *(a2 + 2))
    {
      return 4;
    }

    return 0;
  }

  return RB::Fill::Color::can_mix((this + 1), (a2 + 1));
}

uint64_t RB::DisplayList::InvertiblePredicate::can_mix(RB::DisplayList::InvertiblePredicate *this, const InvertiblePredicate *a2)
{
  if (*(this + 40) == a2->inverts_result)
  {
    return RB::DisplayList::Predicate::can_mix(this, a2);
  }

  else
  {
    return 0;
  }
}

void RB::DisplayList::Predicate::Term::mix(RB::DisplayList::Predicate::Term *this, const RB::DisplayList::Predicate **a2, float32x4_t a3)
{
  if (*this == 3)
  {
    RB::DisplayList::Predicate::mix(*(this + 1), a2[1], a3.f32[0]);
  }

  else if (*this == 2)
  {
    RB::Fill::Color::mix(this + 8, (a2 + 1), 0, a3);
  }
}

uint64_t RB::DisplayList::Predicate::can_mix(RB::DisplayList::Predicate *this, const RB::DisplayList::Predicate *a2)
{
  v2 = *(this + 8);
  if (v2 == *(a2 + 8))
  {
    if (!v2)
    {
      return 4;
    }

    v5 = 0;
    v6 = 24 * v2;
    LOBYTE(v7) = 4;
    while (1)
    {
      v8 = *(this + 3);
      if (!v8)
      {
        v8 = this;
      }

      v9 = *(a2 + 3);
      if (!v9)
      {
        v9 = a2;
      }

      can_mix = RB::DisplayList::Predicate::Term::can_mix((v8 + v5), (v9 + v5));
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

      v5 += 24;
      if (v6 == v5)
      {
        return v7;
      }
    }
  }

  return 0;
}

uint64_t RB::DisplayList::Predicate::mix(uint64_t this, const RB::DisplayList::Predicate *a2, float a3)
{
  v3 = *(this + 32);
  if (v3)
  {
    v6 = this;
    v7 = 0;
    v8 = 24 * v3;
    do
    {
      v9 = *(v6 + 24);
      if (!v9)
      {
        v9 = v6;
      }

      v10 = *(a2 + 3);
      if (!v10)
      {
        v10 = a2;
      }

      this = RB::DisplayList::Predicate::Term::mix((v9 + v7), (v10 + v7), a3);
      v7 += 24;
    }

    while (v8 != v7);
  }

  return this;
}

uint64_t RB::DisplayList::Predicate::xml_elements(uint64_t this, RB::XML::Document *a2)
{
  v2 = *(this + 24);
  if (!v2)
  {
    v2 = this;
  }

  v3 = *(this + 32);
  if (v3)
  {
    v4 = (v2 + 8);
    v5 = 24 * v3;
    do
    {
      v6 = *(v4 - 2);
      if (v6 == 3)
      {
        RB::XML::Document::push(a2, "predicate");
      }

      if (v6 == 2)
      {
        RB::XML::Document::push(a2, "color");
      }

      if (v6 == 1 && !*v4)
      {
        RB::XML::Document::push(a2, "monochrome");
      }

      v4 += 6;
      v5 -= 24;
    }

    while (v5);
  }

  return this;
}

uint64_t RB::DisplayList::Layer::matches(RB::DisplayList::Layer *this, const RB::DisplayList::Predicate *a2)
{
  if ((*(this + 76) & 2) != 0)
  {
    v12 = 0x3C003C003C003C00;
    v14 = 0;
    v13 = 0;
    return RB::DisplayList::Predicate::matches_color(a2, &v12);
  }

  else
  {
    v4 = *(this + 4);
    if (v4)
    {
      while (1)
      {
        v5 = (*(*v4 + 40))(v4);
        if (v5 == 2)
        {
          break;
        }

        if (v5 == 1)
        {

          return RB::DisplayList::Predicate::matches_non_color(a2);
        }

        v4 = v4[1];
        if (!v4)
        {
          goto LABEL_6;
        }
      }

      v11 = (v6 + 32);

      return RB::DisplayList::Predicate::matches_color(a2, v11);
    }

    else
    {
LABEL_6:
      v7 = *(this + 2);
      if (v7)
      {
        while (1)
        {
          v8 = v7[2];
          if (v8)
          {
            break;
          }

LABEL_11:
          result = (*(*v7 + 184))(v7, a2);
          if (!result)
          {
            v7 = v7[1];
            if (v7)
            {
              continue;
            }
          }

          return result;
        }

        while (1)
        {
          v9 = (*(*v8 + 64))(v8, a2);
          if (v9 & 0x100) != 0 && (v9)
          {
            return 1;
          }

          v8 = v8[4];
          if (!v8)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        return 0;
      }
    }
  }
}

uint64_t RB::DisplayList::LayerItem::matches(RB::DisplayList::LayerItem *this, const RB::DisplayList::Predicate *a2)
{
  if ((*(this + 7) & 3) != 2 || (result = (*(*(*(this + 7) & 0xFFFFFFFFFFFFFFFCLL) + 72))(*(this + 7) & 0xFFFFFFFFFFFFFFFCLL, a2), result))
  {
    v5 = *(this + 6);

    return RB::DisplayList::Layer::matches(v5, a2);
  }

  return result;
}

uint64_t RB::DisplayList::DetachedLayerItem::matches(RB::DisplayList::DetachedLayerItem *this, const RB::DisplayList::Predicate *a2)
{
  if ((*(this + 9) & 3) != 2 || (result = (*(*(*(this + 9) & 0xFFFFFFFFFFFFFFFCLL) + 72))(*(this + 9) & 0xFFFFFFFFFFFFFFFCLL, a2), result))
  {
    v5 = *(this + 6);

    return RB::DisplayList::Layer::matches(v5, a2);
  }

  return result;
}

void *RB::DisplayList::Predicate::encode(void *this, RB::Encoder *a2)
{
  if (this[3])
  {
    v2 = this[3];
  }

  else
  {
    v2 = this;
  }

  v3 = *(this + 8);
  if (v3)
  {
    v5 = 24 * v3;
    do
    {
      RB::ProtobufEncoder::encode_varint(a2, 0xAuLL);
      RB::ProtobufEncoder::begin_length_delimited(a2);
      RB::DisplayList::Predicate::Term::encode(v2, a2);
      this = RB::ProtobufEncoder::end_length_delimited(a2);
      v2 += 3;
      v5 -= 24;
    }

    while (v5);
  }

  return this;
}

uint64_t RB::DisplayList::Predicate::decode(RB::DisplayList::Predicate *this, RB::Decoder *a2)
{
  v3 = this;
  if (*(this + 3))
  {
    this = *(this + 3);
  }

  v4 = *(v3 + 8);
  if (v4)
  {
    v5 = 24 * v4;
    do
    {
      RB::DisplayList::Predicate::Term::~Term(this);
      this = (v6 + 24);
      v5 -= 24;
    }

    while (v5);
  }

  *(v3 + 8) = 0;
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v8 = result;
    do
    {
      if ((v8 & 0x7FFFFFFF8) == 8)
      {
        v9 = *(v3 + 8);
        v10 = v9 + 1;
        if (*(v3 + 9) < v9 + 1)
        {
          RB::vector<RB::DisplayList::Predicate::Term,1ul,unsigned int>::reserve_slow(v3, v10);
          v9 = *(v3 + 8);
          v10 = v9 + 1;
        }

        v11 = *(v3 + 3);
        if (!v11)
        {
          v11 = v3;
        }

        v12 = (v11 + 24 * v9);
        *v12 = 0;
        *(v3 + 8) = v10;
        if ((v8 & 7) == 2)
        {
          RB::ProtobufDecoder::begin_message(a2);
          RB::DisplayList::Predicate::Term::decode(v12, a2);
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
        RB::ProtobufDecoder::skip_field(a2, v8);
      }

      result = RB::ProtobufDecoder::next_field(a2);
      v8 = result;
    }

    while (result);
  }

  return result;
}

void *RB::DisplayList::InvertiblePredicate::encode(RB::DisplayList::InvertiblePredicate *this, RB::Encoder *a2)
{
  RB::ProtobufEncoder::encode_varint(a2, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::DisplayList::Predicate::encode(this, a2);
  result = RB::ProtobufEncoder::end_length_delimited(a2);
  if (*(this + 40) == 1)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x10uLL);

    return RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  }

  return result;
}

unint64_t RB::DisplayList::InvertiblePredicate::decode(RB::DisplayList::InvertiblePredicate *this, RB::Decoder *a2)
{
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v5 = result;
    do
    {
      if ((v5 >> 3) == 2)
      {
        *(this + 40) = RB::ProtobufDecoder::BOOL_field(a2, v5);
      }

      else if ((v5 >> 3) == 1)
      {
        if ((v5 & 7) == 2)
        {
          RB::ProtobufDecoder::begin_message(a2);
          RB::DisplayList::Predicate::decode(this, a2);
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

      result = RB::ProtobufDecoder::next_field(a2);
      v5 = result;
    }

    while (result);
  }

  return result;
}

void *RB::DisplayList::Predicate::Term::encode(void *this, RB::Encoder *a2)
{
  v3 = this;
  v4 = *this;
  if (*this == 3)
  {
    v6 = this[1];
    if (!v6)
    {
      return this;
    }

    RB::ProtobufEncoder::encode_varint(a2, 0x1AuLL);
    RB::ProtobufEncoder::begin_length_delimited(a2);
    RB::ProtobufEncoder::encode_varint(a2, 0xAuLL);
    RB::ProtobufEncoder::begin_length_delimited(a2);
    RB::DisplayList::Predicate::encode(v6, a2);
    RB::ProtobufEncoder::end_length_delimited(a2);
    if (*(v6 + 40) == 1)
    {
      RB::ProtobufEncoder::encode_varint(a2, 0x10uLL);
      RB::ProtobufEncoder::encode_varint(a2, 1uLL);
    }
  }

  else
  {
    if (v4 != 2)
    {
      if (v4 == 1)
      {
        v5 = *(this + 2);
        if (v5 >= 1)
        {
          RB::ProtobufEncoder::encode_varint(a2, 8uLL);

          return RB::ProtobufEncoder::encode_varint(a2, v5);
        }
      }

      return this;
    }

    RB::ProtobufEncoder::encode_varint(a2, 0x12uLL);
    RB::ProtobufEncoder::begin_length_delimited(a2);
    RB::Fill::Color::encode((v3 + 1), a2);
  }

  return RB::ProtobufEncoder::end_length_delimited(a2);
}

unint64_t RB::DisplayList::Predicate::Term::decode(RB::DisplayList::Predicate::Term *this, RB::Decoder *a2)
{
  RB::DisplayList::Predicate::Term::~Term(this);
  *v4 = 0;
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v6 = result;
    do
    {
      v7 = v6 >> 3;
      if ((v6 >> 3) == 3)
      {
        RB::DisplayList::Predicate::Term::~Term(this);
        *this = 3;
        operator new();
      }

      if (v7 == 2)
      {
        RB::DisplayList::Predicate::Term::~Term(this);
        *this = 2;
        *(this + 1) = 0x3C00000000000000;
        *(this + 4) = 0;
        *(this + 10) = 0;
        if ((v6 & 7) == 2)
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
      }

      else if (v7 == 1)
      {
        RB::DisplayList::Predicate::Term::~Term(this);
        *this = 1;
        *(this + 2) = RB::ProtobufDecoder::uint_field(a2, v6);
      }

      else
      {
        RB::ProtobufDecoder::skip_field(a2, v6);
      }

      result = RB::ProtobufDecoder::next_field(a2);
      v6 = result;
    }

    while (result);
  }

  return result;
}

void *RB::vector<RB::DisplayList::Predicate::Term,1ul,unsigned int>::reserve_slow(void *__dst, unsigned int a2)
{
  if (*(__dst + 9) + (*(__dst + 9) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 9) + (*(__dst + 9) >> 1);
  }

  result = RB::details::realloc_vector<unsigned int,24ul>(*(__dst + 3), __dst, 1u, __dst + 9, v3);
  *(__dst + 3) = result;
  return result;
}

RB::DisplayList::Predicate::Term *RB::vector<RB::DisplayList::Predicate::Term,1ul,unsigned int>::~vector(RB::DisplayList::Predicate::Term *a1)
{
  v1 = a1;
  v2 = *(a1 + 3);
  if (v2)
  {
    a1 = *(a1 + 3);
  }

  if (*(v1 + 8))
  {
    v3 = 0;
    do
    {
      RB::DisplayList::Predicate::Term::~Term(a1);
      ++v3;
      a1 = (v4 + 24);
    }

    while (v3 < *(v1 + 8));
    v2 = *(v1 + 3);
  }

  if (v2)
  {
    free(v2);
  }

  return v1;
}

void RB::CGContext::reset(uint64_t a1, CGContextRef c, char a3, double a4)
{
  if (*(a1 + 149) == 1)
  {
    CGContextRestoreGState(*a1);
  }

  *a1 = c;
  *(a1 + 152) = -1;
  *(a1 + 168) = 0;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  CGContextGetCTM(&v10, c);
  v8 = *&v10.c;
  v9 = *&v10.tx;
  *(a1 + 32) = *&v10.a;
  *(a1 + 48) = v8;
  *(a1 + 64) = v9;
  *(a1 + 152) = 0xBF800000FFFFFFFFLL;

  *(a1 + 1008) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = vdup_n_s32(0xC0000001);
  *(a1 + 104) = 0x8000000080000000;
  *(a1 + 112) = 0x3C00000000000000;
  *(a1 + 124) = 0;
  *(a1 + 120) = 0;
  *(a1 + 126) = 0x3C00000000000000;
  *(a1 + 138) = 0;
  *(a1 + 134) = 0;
  *(a1 + 140) = 0x23F800000;
  *(a1 + 148) = 0;
  RB::CGContext::load_state(a1);
}

BOOL RB::CGContext::printing_context(RB::CGContext *this)
{
  Type = *(this + 38);
  if (Type < 0)
  {
    Type = CGContextGetType();
    *(this + 38) = Type;
  }

  return (Type - 1) < 2;
}

uint64_t RB::CGContext::display_list_context(RB::CGContext *this, CGContext *a2)
{
  v3 = *(this + 38);
  if (v3 < 0)
  {
    Type = CGContextGetType();
    *(this + 38) = Type;
    if (Type)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  v6 = *this;

  return RB::ContextDelegate::check_type(v6, a2);
}

uint64_t RB::CGContext::target_headroom(uint64_t this)
{
  if (*(this + 156) < 0.0)
  {
    v1 = this;
    this = CGContextGetEDRTargetHeadroom();
    *(v1 + 156) = v2;
  }

  return this;
}

void RB::CGContext::set_alpha(RB::CGContext *this, float a2)
{
  if (*(this + 35) != a2)
  {
    *(this + 35) = a2;
    CGContextSetAlpha(*this, a2);
  }
}

void RB::CGContext::set_stroke_color_slow(RB::CGContext *this, const RB::Fill::Color *a2, float32x4_t a3, float16x4_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if ((*(this + 149) & 1) == 0)
  {
    CGContextSaveGState(*this);
    *(this + 149) = 1;
  }

  v6 = *a2;
  *(this + 132) = *(a2 + 6);
  *(this + 126) = v6;
  a3.i16[0] = *a2;
  a4.i16[0] = *(a2 + 1);
  _ZF = *a2 == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0)) && *a4.i16 == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0));
  if (_ZF && (RB::CGContext::display_list_context(this, a2) & 1) == 0)
  {
    RB::Fill::Color::log_key_color(a2);
    *(this + 126) = 0x3C003C0000003C00;
    *(this + 69) = 0;
    *(this + 134) = 0;
  }

  if ((*(a2 + 4) & 0x7FFF) != 0)
  {
    RB::Fill::Color::create_cgcolor(a2, *(this + 8), components, *a3.f32, a4);
    CGContextSetStrokeColorWithColor(*this, *components);
    if (*components)
    {
      CFRelease(*components);
    }
  }

  else
  {
    v8 = *(this + 8);
    *components = *a2;
    *&components[6] = *(a2 + 6);
    a3.i64[0] = 0;
    RB::Fill::Color::convert(components, v8, a3);
    _Q0 = vdupq_n_s64(*components);
    _H1 = *components;
    _S2 = HIWORD(*components);
    __asm { FCVT            D1, H1 }

    *components = _D1;
    *_Q0.i8 = vmovn_s64(vshlq_u64(_Q0, xmmword_195E45740));
    *&components[8] = vcvtq_f64_f32(*&vcvtq_f32_f16(vuzp1_s16(*_Q0.i8, *_Q0.i8)));
    __asm { FCVT            D0, H2 }

    v17 = _Q0.i64[0];
    CGContextSetStrokeColor(*this, components);
  }
}

void sub_195DE155C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void RB::CGContext::set_aliasing_mode_slow(uint64_t a1, int a2)
{
  if ((*(a1 + 149) & 1) == 0)
  {
    CGContextSaveGState(*a1);
    *(a1 + 149) = 1;
  }

  *(a1 + 148) = a2;
  v4 = *a1;

  CGContextSetShouldAntialias(v4, a2 == 0);
}

void RB::CGContext::save(RB::CGContext *this)
{
  v2 = this + 176;
  v3 = *(this + 118);
  if (*(this + 119) < (v3 + 1))
  {
    RB::vector<RB::CGContext::GState,4ul,unsigned int>::reserve_slow(this + 176, v3 + 1);
    v3 = *(this + 118);
  }

  v4 = *(this + 58);
  if (!v4)
  {
    v4 = v2;
  }

  v5 = &v4[72 * v3];
  *v5 = *(this + 5);
  v6 = *(this + 6);
  v7 = *(this + 7);
  v8 = *(this + 8);
  *(v5 + 8) = *(this + 18);
  *(v5 + 2) = v7;
  *(v5 + 3) = v8;
  *(v5 + 1) = v6;
  ++*(this + 118);
  CGContextSaveGState(*this);
  *(this + 149) = 1;
}

__n128 RB::CGContext::restore(RB::CGContext *this)
{
  CGContextRestoreGState(*this);
  v2 = this + 176;
  if (*(this + 58))
  {
    v2 = *(this + 58);
  }

  v3 = *(this + 118) - 1;
  v4 = &v2[72 * v3];
  *(this + 5) = *v4;
  result = *(v4 + 1);
  v6 = *(v4 + 2);
  v7 = *(v4 + 3);
  *(this + 142) = *(v4 + 62);
  *(this + 7) = v6;
  *(this + 8) = v7;
  *(this + 6) = result;
  *(this + 118) = v3;
  return result;
}

void RB::CGContext::begin_layer(uint64_t a1, float a2, int32x2_t a3, int32x2_t a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 48);
  v9 = a1 + 480;
  v23 = *(a1 + 32);
  v24 = v8;
  v10 = *(a1 + 112);
  v27 = *(a1 + 96);
  v28 = v10;
  *v29 = *(a1 + 128);
  *&v29[14] = *(a1 + 142);
  v11 = *(a1 + 80);
  v25 = *(a1 + 64);
  v26 = v11;
  v12 = *(a1 + 1000);
  if (*(a1 + 1004) < v12 + 1)
  {
    RB::vector<RB::CGContext::LayerState,4ul,unsigned int>::reserve_slow((a1 + 480), v12 + 1);
    v12 = *(a1 + 1000);
  }

  v13 = *(a1 + 992);
  if (!v13)
  {
    v13 = v9;
  }

  v14 = (v13 + (v12 << 7));
  v14[4] = v27;
  v14[5] = v28;
  v14[6] = *v29;
  v14[7] = *&v29[16];
  *v14 = v23;
  v14[1] = v24;
  v14[2] = v25;
  v15 = v26;
  v14[3] = v26;
  ++*(a1 + 1000);
  *(a1 + 88) = 0;
  *(a1 + 140) = 0x23F800000;
  *(a1 + 149) = 0;
  v15.i32[0] = 1.0;
  if (a2 != 1.0)
  {
    v16 = vmulq_n_f64(*(a1 + 32), a2);
    v17 = vmulq_n_f64(*(a1 + 48), a2);
    v18 = *(a1 + 64);
    *(a1 + 32) = v16;
    *(a1 + 48) = v17;
    v23 = v16;
    v24 = v17;
    v25 = v18;
    CGContextSetCTM();
    *(a1 + 80) = 0;
  }

  v15.i16[0] = *(a1 + 118);
  if (*v15.i16 != COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
  {
    v23.f64[0] = 1.10008428e-19;
    WORD2(v23.f64[1]) = 0;
    LODWORD(v23.f64[1]) = 0;
    *v11.i16 = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0));
    RB::CGContext::set_fill_color_slow(a1, &v23, v15, *v11.f32);
  }

  v19 = vceq_s32(a4, 0x8000000080000000);
  v20 = *a1;
  if ((vpmin_u32(v19, v19).u32[0] & 0x80000000) != 0)
  {
    CGContextBeginTransparencyLayer(v20, 0);
  }

  else
  {
    v21 = vcvt_f32_s32(a3);
    v22 = vcvt_f32_s32(a4);
    v31.origin.x = v21.f32[0];
    v31.origin.y = v21.f32[1];
    v31.size.width = v22.f32[0];
    v31.size.height = v22.f32[1];
    CGContextBeginTransparencyLayerWithRect(v20, v31, 0);
  }
}

void RB::CGContext::end_layer(RB::CGContext *this)
{
  if (*(this + 149) == 1)
  {
    CGContextRestoreGState(*this);
  }

  CGContextEndTransparencyLayer(*this);
  v2 = this + 480;
  if (*(this + 124))
  {
    v2 = *(this + 124);
  }

  v3 = (*(this + 250) - 1);
  v4 = &v2[128 * v3];
  v5 = *(v4 + 2);
  v6 = *v4;
  *(this + 3) = *(v4 + 1);
  *(this + 4) = v5;
  *(this + 2) = v6;
  v7 = *(v4 + 110);
  v9 = *(v4 + 5);
  v8 = *(v4 + 6);
  *(this + 6) = *(v4 + 4);
  *(this + 7) = v9;
  *(this + 8) = v8;
  *(this + 142) = v7;
  v10 = *(v4 + 3);
  *(this + 5) = v10;
  *(this + 250) = v3;
  v10.i16[0] = *(this + 59);
  if (*v10.i16 != COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
  {
    v11[0] = *(this + 14);
    *(v11 + 6) = *(this + 118);
    *&v9 = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0));
    RB::CGContext::set_fill_color_slow(this, v11, v10, *&v9);
  }
}